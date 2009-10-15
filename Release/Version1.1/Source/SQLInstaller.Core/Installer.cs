/*  ----------------------------------------------------------------------------
 *  SQL Installer.NET
 *  Microsoft Public License (http://www.microsoft.com/opensource/licenses.mspx#Ms-PL)
 *  ----------------------------------------------------------------------------
 *  File:       Installer.cs
 *  Author:     Brian Schloz
 *  ----------------------------------------------------------------------------
 */
namespace SQLInstaller.Core
{
	using System;
	using System.Collections.Generic;
	using System.IO;
	using System.Security.Principal;
	using System.Threading;

	/// <summary>
	/// Install class.
	/// </summary>
	public sealed class Installer : IDisposable
	{
		private bool isDisposed;
		private string targetDir;
		private Options options;
		private Queue<Progress> messages;

		public Installer(string targetDir, Options options)
		{
			this.targetDir = targetDir;
			this.options = options;

			this.messages = new Queue<Progress>();
		}

		public SchemaInfo Prepare(ProviderType providerType, string connectionString, string database)
		{
			if (connectionString == null || connectionString.Length == 0 || database == null || database.Length == 0)
				throw new ArgumentException(Resources.MissingReq);

			SchemaInfo schema = null;

			switch (providerType)
			{
				case ProviderType.PostGres:
					schema = new SchemaInfo(new PostGresProvider());
					break;
				case ProviderType.Oracle:
					schema = new SchemaInfo(new OracleProvider());
					break;
				case ProviderType.SqlServer:
				default:
					schema = new SchemaInfo(new SqlProvider());
					break;
			}

			schema.Provider.ConnectionString = connectionString;
			schema.Provider.Database = database;

			schema.Exists = schema.Provider.Exists();

			if (!Directory.Exists(targetDir))
				throw new ArgumentException(Resources.MissingScriptDir + targetDir);

			DirectoryInfo installScripts = new DirectoryInfo(Path.Combine(targetDir, Constants.InstallDirectory));
			DirectoryInfo upgradeScripts = new DirectoryInfo(Path.Combine(targetDir, Constants.UpgradeDirectory));

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
						if (string.Compare(di.Name, SchemaInfo.RTM, true) == 0)
							throw new ArgumentException(Resources.InvalidReserved + SchemaInfo.RTM);
					}
				}
			}

			if (schema.Exists && (options & Options.Drop) != Options.Drop)
			{
				string[] version = schema.Provider.GetVersion().Split(new char[] { Constants.SplitChar }, StringSplitOptions.RemoveEmptyEntries);
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
							bool retry = (options & Options.Retry) == Options.Retry;
							if ((!retry && comp < 0) || (retry && comp <= 0) || (string.Compare(schema.Version, SchemaInfo.RTM, true) == 0))
								schema.ScriptsTotal += di.GetFiles(Constants.SqlPattern, SearchOption.AllDirectories).Length;
						}
					}
				}
				else if (installScripts.Exists)
					schema.ScriptsTotal = installScripts.GetFiles(Constants.SqlPattern, SearchOption.AllDirectories).Length;
			}
			else if (installScripts.Exists)
				schema.ScriptsTotal = installScripts.GetFiles(Constants.SqlPattern, SearchOption.AllDirectories).Length;

			return schema;
		}

		public void Create(SchemaInfo schema)
		{
			string errorMessage = string.Empty;

			try
			{
				if (schema == null || schema.Provider == null)
					throw new ArgumentException(Resources.ErrorSchemaPrep);

				schema = schema.Clone();

				if (schema.Exists && (options & Options.Drop) == Options.Drop)
				{
					SetProgress(StatusMessage.Start, Resources.StatusDroppingDatabase + schema.Provider.Database);
					schema.Provider.DropDatabase();
					SetProgress(StatusMessage.Complete, Resources.StatusDone);
					if ((this.options & Options.Verbose) == Options.Verbose)
						SetProgress(StatusMessage.Progress, string.Empty, 50);
					schema.Exists = false;
				}

				DirectoryInfo installScripts = new DirectoryInfo(Path.Combine(targetDir, Constants.InstallDirectory));
				DirectoryInfo upgradeScripts = new DirectoryInfo(Path.Combine(targetDir, Constants.UpgradeDirectory));

				if (!schema.Exists || !upgradeScripts.Exists)
				{
					if ((options & Options.Create) == Options.Create)
					{
						SetProgress(StatusMessage.Start, Resources.StatusCreatingDatabase + schema.Provider.Database);
						schema.Provider.CreateDatabase();
						if ((this.options & Options.Verbose) == Options.Verbose)
							SetProgress(StatusMessage.Progress, string.Empty, 100);
						SetProgress(StatusMessage.Complete, Resources.StatusDone);
					}

					if (installScripts.Exists)
					{
						SetProgress(StatusMessage.Start, Resources.StatusInstallingDatabase + schema.Provider.Database);

						if ((this.options & Options.Verbose) == Options.Verbose)
							SetProgress(StatusMessage.Detail, string.Empty);
						ExecuteScripts(schema, installScripts.GetFiles(Constants.PreInstallFilter, SearchOption.AllDirectories), true);
						ExecuteScripts(schema, installScripts.GetFiles(Constants.TableFilter, SearchOption.AllDirectories));
						ExecuteScripts(schema, installScripts.GetFiles(Constants.FunctionFilter, SearchOption.AllDirectories));
						ExecuteScripts(schema, installScripts.GetFiles(Constants.ViewFilter, SearchOption.AllDirectories));
						ExecuteScripts(schema, installScripts.GetFiles(Constants.StoredProcedureFilter, SearchOption.AllDirectories));
						ExecuteScripts(schema, installScripts.GetFiles(Constants.TriggerFilter, SearchOption.AllDirectories));
						ExecuteScripts(schema, installScripts.GetFiles(Constants.PostInstallFilter, SearchOption.AllDirectories));
						ExecuteScripts(schema, installScripts.GetFiles(Constants.ForeignKeyFilter, SearchOption.AllDirectories));
						SetProgress(StatusMessage.Complete, Resources.StatusDone);
						if (schema.ScriptsRun == 0)
							SetProgress(StatusMessage.Complete, Resources.WarnNoScripts);
					}
					else
						SetProgress(StatusMessage.Complete, Resources.WarnMissingInstall);
					schema.Provider.SetVersion(schema.Upgrade, WindowsIdentity.GetCurrent().Name + Resources.StatusOnSeparator + DateTime.Now);
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
								SetProgress(StatusMessage.Complete, Resources.WarnNoNewScripts);
							Array.Sort(candidates, new DirInfoSorter());						
						}
						else
							SetProgress(StatusMessage.Complete, Resources.WarnMissingVersions);
					}
					else
						SetProgress(StatusMessage.Complete, Resources.WarnMissingUpgrade);

					foreach (DirectoryInfo upgradeDir in candidates)
					{
						int comp = string.Compare(schema.Version, upgradeDir.Name, true);
						bool retry = (options & Options.Retry) == Options.Retry;
						if ((!retry && comp < 0) || (retry && comp <= 0) || (string.Compare(schema.Version, SchemaInfo.RTM, true) == 0))
						{
							SetProgress(StatusMessage.Start, Resources.StatusUpgradingDatabase + upgradeDir.Name);
							if ((this.options & Options.Verbose) == Options.Verbose)
								SetProgress(StatusMessage.Detail, string.Empty);
							ExecuteScripts(schema, upgradeDir.GetFiles(Constants.PreInstallFilter, SearchOption.AllDirectories), true);
							ExecuteScripts(schema, upgradeDir.GetFiles(Constants.TableFilter, SearchOption.AllDirectories));
							ExecuteScripts(schema, upgradeDir.GetFiles(Constants.FunctionFilter, SearchOption.AllDirectories));
							ExecuteScripts(schema, upgradeDir.GetFiles(Constants.ViewFilter, SearchOption.AllDirectories));
							ExecuteScripts(schema, upgradeDir.GetFiles(Constants.StoredProcedureFilter, SearchOption.AllDirectories));
							ExecuteScripts(schema, upgradeDir.GetFiles(Constants.TriggerFilter, SearchOption.AllDirectories));
							ExecuteScripts(schema, upgradeDir.GetFiles(Constants.PostInstallFilter, SearchOption.AllDirectories));
							ExecuteScripts(schema, upgradeDir.GetFiles(Constants.ForeignKeyFilter, SearchOption.AllDirectories));
							SetProgress(StatusMessage.Complete, Resources.StatusDone);
							if (schema.Errors > 0)
								break;
							schema.Provider.SetVersion(upgradeDir.Name, WindowsIdentity.GetCurrent().Name + Resources.StatusOnSeparator + DateTime.Now);
						}
					}
				}
			}
			catch (Exception ex)
			{
				schema.Errors++;
				SetProgress(StatusMessage.Complete, Resources.StatusError);
				errorMessage = ex.InnerException != null ? ex.InnerException.Message : ex.Message;
				SetProgress(StatusMessage.Detail, errorMessage);
			}
			finally
			{
				SetProgress(StatusMessage.Exit, errorMessage, schema.Errors);
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

		private void ExecuteScripts(SchemaInfo schema, FileInfo[] files)
		{
			ExecuteScripts(schema, files, false);
		}

		private void ExecuteScripts(SchemaInfo schema, FileInfo[] files, bool throwOnError)
		{
			Array.Sort(files, new FileInfoSorter());

			foreach (FileInfo pre in files)
			{
				StreamReader sr = null;
				try
				{
					if ((this.options & Options.Verbose) == Options.Verbose)
						SetProgress(StatusMessage.Detail, Resources.StatusExecutingScript + pre.Name);
					sr = new StreamReader(pre.FullName);
					schema.Provider.ExecuteScript(sr.ReadToEnd());
					sr.Close();
				}
				catch (Exception ex)
				{
					schema.Errors++;
					SetProgress(StatusMessage.Complete, Resources.StatusError);
					SetProgress(StatusMessage.Detail, Constants.OpenBracket + pre.Name + Constants.CloseBracketHyphen + (ex.InnerException != null ? ex.InnerException.Message : ex.Message));
					if (throwOnError)
						throw;
					if ((this.options & Options.Verbose) == Options.Verbose)
						SetProgress(StatusMessage.Start, Resources.StatusCreatingDatabase);
				}
				finally
				{
					schema.ScriptsRun++;
					if ((this.options & Options.Verbose) == Options.Verbose && schema.ScriptsTotal > 0)
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
	}
}