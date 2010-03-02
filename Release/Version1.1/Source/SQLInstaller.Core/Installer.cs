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
	using System.Data.Common;
	using System.Data.SqlClient;
	using System.IO;
	using System.Reflection;
	using System.Security.Principal;
	using System.Threading;

	using Microsoft.SqlServer.Management.Common;
	using Microsoft.SqlServer.Management.Smo;

	/// <summary>
	/// Install class.
	/// </summary>
	public sealed class Installer : IDisposable
	{
		private bool isDisposed;
		private Queue<Progress> messages;
		private Parameters parameters;
		private DbProviderFactory providerFactory;

		public Installer(Parameters parameters)
		{
			this.Upgrade = Constants.RTM;
			this.messages = new Queue<Progress>();
			this.parameters = parameters;
		}

		public Provider Provider { get; private set; }

		public bool Exists { get; private set; }

		public string Version { get; private set; }

		public string Upgrade { get; private set; }

		public string UpgradeBy { get; private set; }

		public int Errors { get; private set; }

		public int ScriptsTotal { get; private set; }

		public int ScriptsRun { get; private set; }

		public bool IsCurrent
		{
			get
			{
				if (string.Compare(this.Version, Constants.RTM, true) == 0)
					return string.Compare(this.Upgrade, Constants.RTM, true) == 0;
				else
					return string.Compare(this.Version, this.Upgrade, true) >= 0;
			}
		}

		public bool IsNotOracle
		{
			get { return string.CompareOrdinal(this.Provider.Name, Constants.Oracle) != 0; }
		}

		public void Prepare()
        {
			if (this.parameters.Provider == null 
				|| string.IsNullOrEmpty(this.parameters.Provider.Name) 
				|| string.IsNullOrEmpty(this.parameters.ConnectionString) 
				|| string.IsNullOrEmpty(this.parameters.Database))
                throw new ArgumentException(Resources.MissingReq);

			string provConfig = Resources.ProviderFactory;
			string provConfigPath = Path.Combine(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location), Constants.ProviderFactory + Constants.XmlExt);

			if (File.Exists(provConfigPath))
			{
				using (StreamReader r = new StreamReader(provConfigPath))
				{
					provConfig = r.ReadToEnd();
				}
			}

			ProviderFactory factory = ProviderFactory.Load(provConfig);
			if (!factory.Providers.Contains(this.parameters.Provider.Name))
				throw new ArgumentException(Resources.ErrorUnknownProvider + this.parameters.Provider.Name);

			this.Provider = factory.Providers[this.parameters.Provider.Name];
			this.providerFactory = DbProviderFactories.GetFactory(this.Provider.InvariantName);

			if (this.parameters.Provider != null && string.CompareOrdinal(this.Provider.Name, this.parameters.Provider.Name) == 0)
			{
				if (!string.IsNullOrEmpty(this.parameters.Provider.InvariantName))
					this.Provider.InvariantName = this.parameters.Provider.InvariantName;

				foreach (Script s in this.parameters.Provider.Scripts)
				{
					this.Provider.Scripts[s.Type].CommandText = s.CommandText;
				}
			}

			this.Exists = this.CheckExists(this.parameters.Database);

            if (!Directory.Exists(this.parameters.ScriptPath))
                throw new ArgumentException(Resources.MissingScriptDir + this.parameters.ScriptPath);

            DirectoryInfo installScripts = new DirectoryInfo(Path.Combine(this.parameters.ScriptPath, Constants.InstallDirectory));
            DirectoryInfo upgradeScripts = new DirectoryInfo(Path.Combine(this.parameters.ScriptPath, Constants.UpgradeDirectory));

            DirectoryInfo[] candidates = null;
            if (upgradeScripts.Exists)
            {
                candidates = upgradeScripts.GetDirectories();
                if (candidates.Length > 0)
                {
                    Array.Sort(candidates, new DirInfoSorter());
                    this.Upgrade = candidates[candidates.Length - 1].Name;
                    foreach (DirectoryInfo di in candidates)
                    {
                        if (string.Compare(di.Name, Constants.RTM, true) == 0)
                            throw new ArgumentException(Resources.InvalidReserved + Constants.RTM);
                    }
                }
            }

            if (this.Exists && (this.parameters.Options & Options.Drop) != Options.Drop)
            {
				string[] version = this.GetVersion().Split(new char[] { Constants.SplitChar }, StringSplitOptions.RemoveEmptyEntries);

                if (version.Length == 2)
                {
                    this.Version = version[0];
                    this.UpgradeBy = version[1];
                }

                if (upgradeScripts.Exists)
                {
                    if (candidates != null)
                    {
                        foreach (DirectoryInfo di in candidates)
                        {
                            int comp = string.Compare(this.Version, di.Name, true);
                            bool retry = (this.parameters.Options & Options.Retry) == Options.Retry;
                            if ((!retry && comp < 0) || (retry && comp <= 0) || (string.Compare(this.Version, Constants.RTM, true) == 0))
                                this.ScriptsTotal += di.GetFiles(Constants.SqlPattern, SearchOption.AllDirectories).Length;
                        }
                    }
                }
                else if (installScripts.Exists)
                    this.ScriptsTotal = installScripts.GetFiles(Constants.SqlPattern, SearchOption.AllDirectories).Length;
            }
            else if (installScripts.Exists)
                this.ScriptsTotal = installScripts.GetFiles(Constants.SqlPattern, SearchOption.AllDirectories).Length;
        }

		public void Create()
		{
			string errorMessage = string.Empty;

			try
			{
				if (this.Exists && (this.parameters.Options & Options.Drop) == Options.Drop)
				{
					SetProgress(StatusMessage.Start, Resources.StatusDroppingDatabase + this.parameters.Database);
					this.DropDatabase();
					SetProgress(StatusMessage.Complete, Resources.StatusDone);
					if ((this.parameters.Options & Options.Verbose) == Options.Verbose)
						SetProgress(StatusMessage.Progress, string.Empty, 50);
					this.Exists = false;
				}

				DirectoryInfo installScripts = new DirectoryInfo(Path.Combine(this.parameters.ScriptPath, Constants.InstallDirectory));
				DirectoryInfo upgradeScripts = new DirectoryInfo(Path.Combine(this.parameters.ScriptPath, Constants.UpgradeDirectory));

				if (!this.Exists || !upgradeScripts.Exists)
				{
					if ((this.parameters.Options & Options.Create) == Options.Create)
					{
						SetProgress(StatusMessage.Start, Resources.StatusCreatingDatabase + this.parameters.Database);
						this.CreateDatabase();

						if ((this.parameters.Options & Options.Verbose) == Options.Verbose)
							SetProgress(StatusMessage.Progress, string.Empty, 100);
						SetProgress(StatusMessage.Complete, Resources.StatusDone);
					}

					if (installScripts.Exists)
					{
						SetProgress(StatusMessage.Start, Resources.StatusInstallingDatabase + this.parameters.Database);

						if ((this.parameters.Options & Options.Verbose) == Options.Verbose)
							SetProgress(StatusMessage.Detail, string.Empty);
						ExecuteScripts(installScripts.GetFiles(Constants.PreInstallFilter, SearchOption.AllDirectories), true);
						ExecuteScripts(installScripts.GetFiles(Constants.TableFilter, SearchOption.AllDirectories));
						ExecuteScripts(installScripts.GetFiles(Constants.FunctionFilter, SearchOption.AllDirectories));
						ExecuteScripts(installScripts.GetFiles(Constants.ViewFilter, SearchOption.AllDirectories));
						ExecuteScripts(installScripts.GetFiles(Constants.StoredProcedureFilter, SearchOption.AllDirectories));
						ExecuteScripts(installScripts.GetFiles(Constants.TriggerFilter, SearchOption.AllDirectories));
						ExecuteScripts(installScripts.GetFiles(Constants.PostInstallFilter, SearchOption.AllDirectories));
						ExecuteScripts(installScripts.GetFiles(Constants.ForeignKeyFilter, SearchOption.AllDirectories));
						SetProgress(StatusMessage.Complete, Resources.StatusDone);
						if (this.ScriptsRun == 0)
							SetProgress(StatusMessage.Complete, Resources.WarnNoScripts);
					}
					else
						SetProgress(StatusMessage.Complete, Resources.WarnMissingInstall);

					this.SetVersion(this.Upgrade, WindowsIdentity.GetCurrent().Name.Replace(Constants.BackSlash, Constants.ForwardSlash) + Resources.StatusOnSeparator + DateTime.Now);
				}
				else
				{
					DirectoryInfo[] candidates = new DirectoryInfo[] { };

					if (upgradeScripts.Exists)
					{
						candidates = upgradeScripts.GetDirectories();
						if (candidates.Length > 0)
						{
							if (this.ScriptsTotal == 0)
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
						int comp = string.Compare(this.Version, upgradeDir.Name, true);
						bool retry = (this.parameters.Options & Options.Retry) == Options.Retry;
						if ((!retry && comp < 0) || (retry && comp <= 0) || (string.Compare(this.Version, Constants.RTM, true) == 0))
						{
							SetProgress(StatusMessage.Start, Resources.StatusUpgradingDatabase + upgradeDir.Name);
							if ((this.parameters.Options & Options.Verbose) == Options.Verbose)
								SetProgress(StatusMessage.Detail, string.Empty);
							ExecuteScripts(upgradeDir.GetFiles(Constants.PreInstallFilter, SearchOption.AllDirectories), true);
							ExecuteScripts(upgradeDir.GetFiles(Constants.TableFilter, SearchOption.AllDirectories));
							ExecuteScripts(upgradeDir.GetFiles(Constants.FunctionFilter, SearchOption.AllDirectories));
							ExecuteScripts(upgradeDir.GetFiles(Constants.ViewFilter, SearchOption.AllDirectories));
							ExecuteScripts(upgradeDir.GetFiles(Constants.StoredProcedureFilter, SearchOption.AllDirectories));
							ExecuteScripts(upgradeDir.GetFiles(Constants.TriggerFilter, SearchOption.AllDirectories));
							ExecuteScripts(upgradeDir.GetFiles(Constants.PostInstallFilter, SearchOption.AllDirectories));
							ExecuteScripts(upgradeDir.GetFiles(Constants.ForeignKeyFilter, SearchOption.AllDirectories));
							SetProgress(StatusMessage.Complete, Resources.StatusDone);
							if (this.Errors > 0)
								break;

							this.SetVersion(upgradeDir.Name, WindowsIdentity.GetCurrent().Name.Replace(Constants.BackSlash, Constants.ForwardSlash) + Resources.StatusOnSeparator + DateTime.Now);
						}
					}
				}
			}
			catch (Exception ex)
			{
				this.Errors++;
				SetProgress(StatusMessage.Complete, Resources.StatusError);
				errorMessage = ex.InnerException != null ? ex.InnerException.Message : ex.Message;
				SetProgress(StatusMessage.Detail, errorMessage);
			}
			finally
			{
				SetProgress(StatusMessage.Exit, errorMessage, this.Errors);
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

		private bool CheckExists(string databaseName)
		{
			return Convert.ToInt32(this.ExecuteScalar(string.Format(this.Provider.Scripts[ScriptType.Exists].CommandText, this.parameters.Database), false)) > 0;
		}

		private string GetVersion()
		{
			return this.ExecuteScalar(string.Format(this.Provider.Scripts[ScriptType.GetVersion].CommandText, this.parameters.Database), this.IsNotOracle) as string;
		}

		private void SetVersion(string version, string details)
		{
			this.Execute(string.Format(this.Provider.Scripts[ScriptType.SetVersion].CommandText, this.parameters.Database, version, details), this.IsNotOracle);
		}

		private void DropDatabase()
		{
			string script = string.Format(this.Provider.Scripts[ScriptType.Drop].CommandText, this.parameters.Database);
			if (string.CompareOrdinal(this.Provider.Name, Constants.SqlServer) == 0)
				this.ExecuteSMO(script, false);
			else
				this.Execute(script, false);
		}

		private void CreateDatabase()
		{
			string script = string.Format(this.Provider.Scripts[ScriptType.Create].CommandText, this.parameters.Database);
			if (string.CompareOrdinal(this.Provider.Name, Constants.SqlServer) == 0)
				this.ExecuteSMO(script, false);
			else
				this.Execute(script, false);
		}

		private void ExecuteScript(string script)
		{
			if (string.CompareOrdinal(this.Provider.Name, Constants.SqlServer) == 0)
				this.ExecuteSMO(script, true);
			else if (string.CompareOrdinal(this.Provider.Name, Constants.Oracle) == 0)
				this.ExecuteOra(script);
			else
				this.Execute(script, true);
		}

		private void ExecuteScripts(FileInfo[] files)
		{
			ExecuteScripts(files, false);
		}

		private void ExecuteScripts(FileInfo[] files, bool throwOnError)
		{
			Array.Sort(files, new FileInfoSorter());

			foreach (FileInfo pre in files)
			{
				StreamReader sr = null;
				try
				{
					if ((this.parameters.Options & Options.Verbose) == Options.Verbose)
						SetProgress(StatusMessage.Detail, Resources.StatusExecutingScript + pre.Name);
					sr = new StreamReader(pre.FullName);
					this.ExecuteScript(sr.ReadToEnd());
					sr.Close();
				}
				catch (Exception ex)
				{
					this.Errors++;
					SetProgress(StatusMessage.Complete, Resources.StatusError);
					SetProgress(StatusMessage.Detail, Constants.OpenBracket + pre.Name + Constants.CloseBracketHyphen + (ex.InnerException != null ? ex.InnerException.Message : ex.Message));
					if (throwOnError)
						throw;
					if ((this.parameters.Options & Options.Verbose) == Options.Verbose)
						SetProgress(StatusMessage.Start, Resources.StatusCreatingDatabase);
				}
				finally
				{
					this.ScriptsRun++;
					if ((this.parameters.Options & Options.Verbose) == Options.Verbose && this.ScriptsTotal > 0)
						SetProgress(StatusMessage.Progress, string.Empty, Convert.ToInt32(decimal.Divide((decimal)this.ScriptsRun, (decimal)this.ScriptsTotal) * 100));
					if (sr != null)
						sr.Close();
				}
			}
		}

		private object ExecuteScalar(string script, bool changeDb)
		{
			object scalar = null;

			using (DbConnection connection = this.providerFactory.CreateConnection())
			{
				connection.ConnectionString = this.parameters.ConnectionString;
				connection.Open();
				if (changeDb)
					connection.ChangeDatabase(this.parameters.Database);
				DbCommand cmd = this.providerFactory.CreateCommand();
				cmd.Connection = connection;
				cmd.CommandText = script;
				scalar = cmd.ExecuteScalar();
			}

			return scalar;
		}

		private void Execute(string commandText, bool changeDb)
		{
			using (DbConnection connection = this.providerFactory.CreateConnection())
			{
				connection.ConnectionString = this.parameters.ConnectionString;
				connection.Open();
				if (changeDb)
					connection.ChangeDatabase(this.parameters.Database);
				DbCommand cmd = this.providerFactory.CreateCommand();
				cmd.Connection = connection;
				cmd.CommandText = commandText;
				cmd.ExecuteNonQuery();
			}
		}

		private void ExecuteSMO(string script, bool changeDb)
		{
			using (SqlConnection conn = new SqlConnection(this.parameters.ConnectionString))
			{
				conn.Open();
				if (changeDb)
					conn.ChangeDatabase(this.parameters.Database);
				Server server = new Server(new ServerConnection(conn));
				server.ConnectionContext.ExecuteNonQuery(script);
			}
		}

		private void ExecuteOra(string script)
		{
			// The .NET provider for Oracle does not support everthing you can do
			// in SQL*PLUS when executing DDL. We provide for two variants which
			// should cover all DDL types but there is little tolerance for variation.
			using (DbConnection connection = this.providerFactory.CreateConnection())
			{
				connection.ConnectionString = this.parameters.ConnectionString;
				connection.Open();
				DbCommand cmd = this.providerFactory.CreateCommand();
				cmd.Connection = connection;
				cmd.CommandText = Constants.OracleAlterSession + this.parameters.Database.ToUpper();
				cmd.ExecuteNonQuery();

				// If the script has a begin/end block, then assume it is a sproc, trigger or
				// anonymous/adhoc. These can have multiple statements terminated by semi-colons.
				string[] scripts = null;
				int begin = script.IndexOf(Constants.OracleBegin, StringComparison.OrdinalIgnoreCase);
				if (begin >= 0)
				{
					// Treat script starting with BEGIN special case for data loading/inserts.
					// Otherwise, split statement on special delimiter for these types (/).
					if (begin == 0)
					{
						scripts = new string[1];
						scripts[0] = script;
					}
					else
						scripts = script.Split(new char[] { Constants.ForwardSlash }, StringSplitOptions.RemoveEmptyEntries);
				}
				else // Should handle all other types of create/alter DDL
					scripts = script.Split(new char[] { Constants.SplitChar }, StringSplitOptions.RemoveEmptyEntries);

				foreach (string sqlLine in scripts)
				{
					if (sqlLine.Trim().Length > 0)
					{
						cmd.CommandText = sqlLine;
						cmd.ExecuteNonQuery();
					}
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