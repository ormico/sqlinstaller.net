using System;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Reflection;
using System.Threading;
using System.Security.Principal;

using Microsoft.SqlServer.Management.Smo;
using Microsoft.SqlServer.Management.Common;

namespace SQLInstaller.Core
{
	public sealed class Runtime : IDisposable
	{
		private bool isDisposed;

		private string targetDir;
		private RuntimeFlag flags;
		private Queue<Progress> messages;

		public Runtime(string targetDir, RuntimeFlag flags)
		{
			this.targetDir = targetDir;
			this.flags = flags;

			this.messages = new Queue<Progress>();
		}

		public Schema Prepare(string server, string database)
		{
			Schema schema = new Schema(server, database);
			SqlConnection conn = new SqlConnection("Server=" + server + ";Database=master;Trusted_Connection=yes;");

			try
			{
				conn.Open();

				SqlCommand cmd = new SqlCommand();
				cmd.Connection = conn;
				cmd.CommandText = "SELECT COUNT(*) FROM sysdatabases WHERE name = @database_name";
				cmd.Parameters.Add(new SqlParameter("@database_name", database));

				schema.Exists = ((int)cmd.ExecuteScalar()) > 0;

				DirectoryInfo installScripts = new DirectoryInfo(Path.Combine(targetDir, "Install"));
				DirectoryInfo upgradeScripts = new DirectoryInfo(Path.Combine(targetDir, "Upgrade"));
				DirectoryInfo[] candidates = null;

				if (upgradeScripts.Exists)
				{
					candidates = upgradeScripts.GetDirectories();
					Array.Sort(candidates, new DirInfoSorter());
					if (candidates.Length > 0)
						schema.Upgrade = candidates[candidates.Length - 1].Name;
				}

				if (schema.Exists && (flags & RuntimeFlag.Drop) != RuntimeFlag.Drop)
				{
					conn.ChangeDatabase(schema.Database);
					SqlParameter name = new SqlParameter("@name", "Version");
					cmd.Parameters.Add(name);
					cmd.CommandText = "SELECT ISNULL(value,'') FROM fn_listextendedproperty(@name, default, default, default, default, default, default)";
					schema.Version = cmd.ExecuteScalar() as string;
					name.Value = "UpdatedBy";
					schema.UpgradeBy = cmd.ExecuteScalar() as string;

					if (candidates != null)
					{
						foreach (DirectoryInfo di in candidates)
						{
							int comp = string.Compare(schema.Version, di.Name, true);
							bool retry = (flags & RuntimeFlag.Retry) == RuntimeFlag.Retry;
							if ((!retry && comp < 0) || (retry && comp <= 0))
								schema.ScriptsTotal += di.GetFiles("*.sql").Length + 1;
						}
					}
				}
				else if (installScripts.Exists)
					schema.ScriptsTotal = installScripts.GetFiles("*.sql").Length;

			}
			finally
			{
				if (conn != null)
				{
					if (conn.State != ConnectionState.Closed)
						conn.Close();
					conn.Dispose();
				}
			}
			return schema;
		}

		public void Create(Schema schema)
		{
			string errorMessage = string.Empty;
			SqlConnection conn = null;

			try
			{
				if (schema == null || schema.Database.Length == 0 || schema.Server.Length == 0)
					throw new ArgumentException("You must prepare the schema first.", "schema");

				conn = new SqlConnection("Server=" + schema.Server + ";Database=master;Trusted_Connection=yes;");
				schema = schema.Clone();

				SqlCommand cmd = new SqlCommand();
				conn.Open();
				cmd.Connection = conn;

				if (schema.Exists && (flags & RuntimeFlag.Drop) == RuntimeFlag.Drop)
				{
					SetProgress(StatusMessage.Start, "Dropping Database");
					cmd.CommandText = "DROP DATABASE " + schema.Database;
					cmd.ExecuteNonQuery();
					SetProgress(StatusMessage.Complete, "Done.");
					if ((this.flags & RuntimeFlag.Verbose) == RuntimeFlag.Verbose)
						SetProgress(StatusMessage.Progress, string.Empty, 50);
					schema.Exists = false;
				}

				if (!schema.Exists)
				{
					if ((flags & RuntimeFlag.Create) == RuntimeFlag.Create)
					{
						SetProgress(StatusMessage.Start, "Creating Database");
						Server server = new Server(new ServerConnection(conn));
						server.ConnectionContext.ExecuteNonQuery(string.Format(Resources.DbCreate, schema.Database));
						conn.ChangeDatabase(schema.Database);
						if ((this.flags & RuntimeFlag.Verbose) == RuntimeFlag.Verbose)
							SetProgress(StatusMessage.Progress, string.Empty, 100);
						SetProgress(StatusMessage.Complete, "Done.");
					}
					DirectoryInfo installScripts = new DirectoryInfo(Path.Combine(targetDir, "Install"));
					if (installScripts.Exists)
					{
						SetProgress(StatusMessage.Start, "Installing Database");

						if ((this.flags & RuntimeFlag.Verbose) == RuntimeFlag.Verbose)
							SetProgress(StatusMessage.Detail, string.Empty);
						ExecuteScripts(schema, installScripts.GetFiles(Constants.PreInstallFilter), conn, true);
						if (string.Compare(conn.Database, schema.Database, true) != 0)
							conn.ChangeDatabase(schema.Database);
						ExecuteScripts(schema, installScripts.GetFiles(Constants.TableFilter), conn);
						ExecuteScripts(schema, installScripts.GetFiles(Constants.FunctionFilter), conn);
						ExecuteScripts(schema, installScripts.GetFiles(Constants.ViewFilter), conn);
						ExecuteScripts(schema, installScripts.GetFiles(Constants.StoredProcedureFilter), conn);
						ExecuteScripts(schema, installScripts.GetFiles(Constants.TriggerFilter), conn);
						ExecuteScripts(schema, installScripts.GetFiles(Constants.PostInstallFilter), conn);
						ExecuteScripts(schema, installScripts.GetFiles(Constants.ForeignKeyFilter), conn);
						SetProgress(StatusMessage.Complete, "Done.");
					}
				}

				if (string.Compare(conn.Database, schema.Database, true) != 0)
					conn.ChangeDatabase(schema.Database);

				SqlParameter propName = new SqlParameter("@propname", SqlDbType.VarChar);
				SqlParameter propValue = new SqlParameter("@propvalue", SqlDbType.VarChar);
				cmd.Parameters.Add(propName);
				cmd.Parameters.Add(propValue);
				cmd.CommandText = "IF NOT EXISTS (SELECT value FROM fn_listextendedproperty(@propname, default, default, default, default, default, default)) EXEC sp_addextendedproperty @propname, @propvalue ELSE EXEC sp_updateextendedproperty @propname, @propvalue ";

				if (schema.Exists)
				{
					DirectoryInfo upgradeScripts = new DirectoryInfo(Path.Combine(targetDir, "Upgrade"));
					DirectoryInfo[] candidates = new DirectoryInfo[] { };

					if (upgradeScripts.Exists)
					{
						candidates = upgradeScripts.GetDirectories();
						Array.Sort(candidates, new DirInfoSorter());
					}
					foreach (DirectoryInfo upgradeDir in candidates)
					{
						int comp = string.Compare(schema.Version, upgradeDir.Name, true);
						bool retry = (flags & RuntimeFlag.Retry) == RuntimeFlag.Retry;
						if ((!retry && comp < 0) || (retry && comp <= 0))
						{
							SetProgress(StatusMessage.Start, "Upgrading Database to version " + upgradeDir.Name);
							if ((this.flags & RuntimeFlag.Verbose) == RuntimeFlag.Verbose)
								SetProgress(StatusMessage.Detail, string.Empty);
							ExecuteScripts(schema, upgradeDir.GetFiles(Constants.PreInstallFilter), conn, true);
							ExecuteScripts(schema, upgradeDir.GetFiles(Constants.TableFilter), conn);
							ExecuteScripts(schema, upgradeDir.GetFiles(Constants.FunctionFilter), conn);
							ExecuteScripts(schema, upgradeDir.GetFiles(Constants.ViewFilter), conn);
							ExecuteScripts(schema, upgradeDir.GetFiles(Constants.StoredProcedureFilter), conn);
							ExecuteScripts(schema, upgradeDir.GetFiles(Constants.TriggerFilter), conn);
							ExecuteScripts(schema, upgradeDir.GetFiles(Constants.PostInstallFilter), conn);
							ExecuteScripts(schema, upgradeDir.GetFiles(Constants.ForeignKeyFilter), conn);
							SetProgress(StatusMessage.Complete, "Done.");
							schema.ScriptsRun++;
							if (schema.Errors > 0)
								break;
							propName.Value = "Version";
							propValue.Value = upgradeDir.Name;
							cmd.ExecuteNonQuery();
							propName.Value = "UpdatedBy";
							propValue.Value = WindowsIdentity.GetCurrent().Name + " on " + DateTime.Now;
							cmd.ExecuteNonQuery();
						}
					}
				}
				else
				{
					propName.Value = "Version";
					propValue.Value = schema.Upgrade;
					cmd.ExecuteNonQuery();
					propName.Value = "UpdatedBy";
					propValue.Value = WindowsIdentity.GetCurrent().Name + " on " + DateTime.Now;
					cmd.ExecuteNonQuery();
				}
			}
			catch (Exception ex)
			{
				schema.Errors++;
				SetProgress(StatusMessage.Complete, "Error.");
				errorMessage = ex.InnerException != null ? ex.InnerException.Message : ex.Message;
				SetProgress(StatusMessage.Detail, errorMessage);
			}
			finally
			{
				if (conn != null && conn.State != ConnectionState.Closed)
					conn.Close();
				SetProgress(StatusMessage.Exit, errorMessage, schema.Errors);
			}
		}

		private void ExecuteScripts(Schema schema, FileInfo[] files, SqlConnection conn)
		{
			ExecuteScripts(schema, files, conn, false);
		}

		private void ExecuteScripts(Schema schema, FileInfo[] files, SqlConnection conn, bool throwOnError)
		{
			foreach (FileInfo pre in files)
			{
				StreamReader sr = null;
				SqlCommand cmd = null;
				try
				{
					if ((this.flags & RuntimeFlag.Verbose) == RuntimeFlag.Verbose)
						SetProgress(StatusMessage.Detail, "Executing script: " + pre.Name);
					cmd = new SqlCommand(string.Empty, conn);
					sr = new StreamReader(pre.FullName);
					Server server = new Server(new ServerConnection(conn));
					server.ConnectionContext.ExecuteNonQuery(sr.ReadToEnd());
					sr.Close();
				}
				catch (Exception ex)
				{
					schema.Errors++;
					SetProgress(StatusMessage.Complete, "Error.");
					SetProgress(StatusMessage.Detail, "[" + pre.Name + "] - " + (ex.InnerException != null ? ex.InnerException.Message : ex.Message));
					if (throwOnError)
						throw;
					if ((this.flags & RuntimeFlag.Verbose) == RuntimeFlag.Verbose)
						SetProgress(StatusMessage.Start, "Creating Database");
				}
				finally
				{
					if ((this.flags & RuntimeFlag.Verbose) == RuntimeFlag.Verbose)
					{
						schema.ScriptsRun++;
						SetProgress(StatusMessage.Progress, string.Empty, Convert.ToInt32(decimal.Divide((decimal)schema.ScriptsRun, (decimal)schema.ScriptsTotal) * 100));
					}
					if (sr != null)
						sr.Close();
				}
			}
		}

		private void SetProgress(StatusMessage status, string message)
		{
			SetProgress(status, message, 0);
		}

		private void SetProgress(StatusMessage status, string message, int percent)
		{
			lock (messages)
			{
				messages.Enqueue(new Progress(status, percent, message));
				Monitor.Pulse(messages);
			}
		}

		public Progress GetProgress(bool isRunning)
		{
			Progress prog = null;
			lock (messages)
			{
				if (messages.Count == 0)
					Monitor.Wait(messages, 30000);

				if (messages.Count > 0)
					prog = messages.Dequeue();
			}
			if (prog == null)
				prog = new Progress(isRunning ? StatusMessage.Running : StatusMessage.Exit, 0);
			return prog;
		}

		#region IDisposable Members

		public void Dispose()
		{
			if (!isDisposed)
			{
				GC.SuppressFinalize(this);
				isDisposed = true;
			}
		}

		#endregion
	}
}
