using System;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System.Globalization;
using System.Reflection;
using System.Threading;
using System.Security.Principal;

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

		public Schema Prepare(ProviderType providerType, string server, string database, string user, string password)
		{
			if (server == null || server.Length == 0 | database == null || database.Length == 0)
				throw new ArgumentException("Missing a required parameter.");

			Schema schema = null;

			switch (providerType)
			{
				case ProviderType.PostGres:
					schema = new Schema(new PostGresProvider());
					break;
				case ProviderType.Oracle:
					schema = new Schema(new OracleProvider());
					break;
				case ProviderType.SqlServer:
				default:
					schema = new Schema(new SqlProvider());
					break;
			}

			schema.Provider.Server = server;
			schema.Provider.Database = database;
			schema.Provider.User = user;
			schema.Provider.Password = password;

			schema.Exists = schema.Provider.Exists();

			if (!Directory.Exists(targetDir))
				throw new ArgumentException("Script directory missing: " + targetDir);

			DirectoryInfo installScripts = new DirectoryInfo(Path.Combine(targetDir, "Install"));
			DirectoryInfo upgradeScripts = new DirectoryInfo(Path.Combine(targetDir, "Upgrade"));

			DirectoryInfo[] candidates = null;
			if (upgradeScripts.Exists)
			{
				candidates = upgradeScripts.GetDirectories();
				if (candidates.Length > 0)
				{
					Array.Sort(candidates, new DirInfoSorter());
					schema.Upgrade = candidates[candidates.Length - 1].Name;
					foreach (DirectoryInfo di in candidates)
					{
						if (string.Compare(di.Name, Schema.RTM, true) == 0)
							throw new ArgumentException("You cannot have an Upgrade directory with the reserved name: " + Schema.RTM);
					}
				}
			}

			if (schema.Exists && (flags & RuntimeFlag.Drop) != RuntimeFlag.Drop)
			{
				string[] version = schema.Provider.GetVersion().Split(new char[] { ';' }, StringSplitOptions.RemoveEmptyEntries);
				if (version.Length == 2)
				{
					schema.Version = version[0];
					schema.UpgradeBy = version[1];
				}
				if (upgradeScripts.Exists)
				{
					if (candidates != null)
					{
						foreach (DirectoryInfo di in candidates)
						{
							int comp = string.Compare(schema.Version, di.Name, true);
							bool retry = (flags & RuntimeFlag.Retry) == RuntimeFlag.Retry;
							if ((!retry && comp < 0) || (retry && comp <= 0) || (string.Compare(schema.Version, Schema.RTM, true) == 0))
								schema.ScriptsTotal += di.GetFiles("*.sql", SearchOption.AllDirectories).Length;
						}
					}
				}
				else if (installScripts.Exists)
					schema.ScriptsTotal = installScripts.GetFiles("*.sql", SearchOption.AllDirectories).Length;
			}
			else if (installScripts.Exists)
				schema.ScriptsTotal = installScripts.GetFiles("*.sql", SearchOption.AllDirectories).Length;

			return schema;
		}

		public void Create(Schema schema)
		{
			string errorMessage = string.Empty;

			try
			{
				if (schema == null || schema.Provider == null)
					throw new ArgumentException("You must prepare the schema first.", "schema");

				schema = schema.Clone();

				if (schema.Exists && (flags & RuntimeFlag.Drop) == RuntimeFlag.Drop)
				{
					SetProgress(StatusMessage.Start, "Dropping Database " + schema.Provider.Database);
					schema.Provider.DropDatabase();
					SetProgress(StatusMessage.Complete, "Done.");
					if ((this.flags & RuntimeFlag.Verbose) == RuntimeFlag.Verbose)
						SetProgress(StatusMessage.Progress, string.Empty, 50);
					schema.Exists = false;
				}

				DirectoryInfo installScripts = new DirectoryInfo(Path.Combine(targetDir, "Install"));
				DirectoryInfo upgradeScripts = new DirectoryInfo(Path.Combine(targetDir, "Upgrade"));

				if (!schema.Exists || !upgradeScripts.Exists)
				{
					if ((flags & RuntimeFlag.Create) == RuntimeFlag.Create)
					{
						SetProgress(StatusMessage.Start, "Creating Database " + schema.Provider.Database);
						schema.Provider.CreateDatabase();
						if ((this.flags & RuntimeFlag.Verbose) == RuntimeFlag.Verbose)
							SetProgress(StatusMessage.Progress, string.Empty, 100);
						SetProgress(StatusMessage.Complete, "Done.");
					}
					if (installScripts.Exists)
					{
						SetProgress(StatusMessage.Start, "Installing Database " + schema.Provider.Database);

						if ((this.flags & RuntimeFlag.Verbose) == RuntimeFlag.Verbose)
							SetProgress(StatusMessage.Detail, string.Empty);
						ExecuteScripts(schema, installScripts.GetFiles(Constants.PreInstallFilter, SearchOption.AllDirectories), true);
						ExecuteScripts(schema, installScripts.GetFiles(Constants.TableFilter, SearchOption.AllDirectories));
						ExecuteScripts(schema, installScripts.GetFiles(Constants.FunctionFilter, SearchOption.AllDirectories));
						ExecuteScripts(schema, installScripts.GetFiles(Constants.ViewFilter, SearchOption.AllDirectories));
						ExecuteScripts(schema, installScripts.GetFiles(Constants.StoredProcedureFilter, SearchOption.AllDirectories));
						ExecuteScripts(schema, installScripts.GetFiles(Constants.TriggerFilter, SearchOption.AllDirectories));
						ExecuteScripts(schema, installScripts.GetFiles(Constants.PostInstallFilter, SearchOption.AllDirectories));
						ExecuteScripts(schema, installScripts.GetFiles(Constants.ForeignKeyFilter, SearchOption.AllDirectories));
						SetProgress(StatusMessage.Complete, "Done.");
						if (schema.ScriptsRun == 0)
							SetProgress(StatusMessage.Complete, "WARNING: no scripts found. An empty database was created.");
					}
					else
						SetProgress(StatusMessage.Complete, "WARNING: missing Install directory. An empty database was created.");
					schema.Provider.SetVersion(schema.Upgrade, WindowsIdentity.GetCurrent().Name + " on " + DateTime.Now);
				}
				else
				{
					DirectoryInfo[] candidates = new DirectoryInfo[] { };

					if (upgradeScripts.Exists)
					{
						candidates = upgradeScripts.GetDirectories();
						if (candidates.Length > 0)
						{
							if (schema.ScriptsTotal == 0)
								SetProgress(StatusMessage.Complete, "WARNING: no new scripts found. Nothing to do.");
							Array.Sort(candidates, new DirInfoSorter());						
						}
						else
							SetProgress(StatusMessage.Complete, "WARNING: no version directories found. Nothing to do.");
					}
					else
						SetProgress(StatusMessage.Complete, "WARNING: missing Upgrade directory. Nothing to do.");

					foreach (DirectoryInfo upgradeDir in candidates)
					{
						int comp = string.Compare(schema.Version, upgradeDir.Name, true);
						bool retry = (flags & RuntimeFlag.Retry) == RuntimeFlag.Retry;
						if ((!retry && comp < 0) || (retry && comp <= 0) || (string.Compare(schema.Version, Schema.RTM, true) == 0))
						{
							SetProgress(StatusMessage.Start, "Upgrading Database to version " + upgradeDir.Name);
							if ((this.flags & RuntimeFlag.Verbose) == RuntimeFlag.Verbose)
								SetProgress(StatusMessage.Detail, string.Empty);
							ExecuteScripts(schema, upgradeDir.GetFiles(Constants.PreInstallFilter, SearchOption.AllDirectories), true);
							ExecuteScripts(schema, upgradeDir.GetFiles(Constants.TableFilter, SearchOption.AllDirectories));
							ExecuteScripts(schema, upgradeDir.GetFiles(Constants.FunctionFilter, SearchOption.AllDirectories));
							ExecuteScripts(schema, upgradeDir.GetFiles(Constants.ViewFilter, SearchOption.AllDirectories));
							ExecuteScripts(schema, upgradeDir.GetFiles(Constants.StoredProcedureFilter, SearchOption.AllDirectories));
							ExecuteScripts(schema, upgradeDir.GetFiles(Constants.TriggerFilter, SearchOption.AllDirectories));
							ExecuteScripts(schema, upgradeDir.GetFiles(Constants.PostInstallFilter, SearchOption.AllDirectories));
							ExecuteScripts(schema, upgradeDir.GetFiles(Constants.ForeignKeyFilter, SearchOption.AllDirectories));
							SetProgress(StatusMessage.Complete, "Done.");
							if (schema.Errors > 0)
								break;
							schema.Provider.SetVersion(upgradeDir.Name, WindowsIdentity.GetCurrent().Name + " on " + DateTime.Now);
						}
					}
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
				SetProgress(StatusMessage.Exit, errorMessage, schema.Errors);
			}
		}

		private void ExecuteScripts(Schema schema, FileInfo[] files)
		{
			ExecuteScripts(schema, files, false);
		}

		private void ExecuteScripts(Schema schema, FileInfo[] files, bool throwOnError)
		{
			Array.Sort(files, new FileInfoSorter());

			foreach (FileInfo pre in files)
			{
				StreamReader sr = null;
				try
				{
					if ((this.flags & RuntimeFlag.Verbose) == RuntimeFlag.Verbose)
						SetProgress(StatusMessage.Detail, "Executing script: " + pre.Name);
					sr = new StreamReader(pre.FullName);
					schema.Provider.ExecuteScript(sr.ReadToEnd());
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
					schema.ScriptsRun++;
					if ((this.flags & RuntimeFlag.Verbose) == RuntimeFlag.Verbose)
						SetProgress(StatusMessage.Progress, string.Empty, Convert.ToInt32(decimal.Divide((decimal)schema.ScriptsRun, (decimal)schema.ScriptsTotal) * 100));
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
