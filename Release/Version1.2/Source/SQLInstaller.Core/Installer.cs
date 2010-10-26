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
	using System.Reflection;
	using System.Security.Principal;
	using System.Threading;

	/// <summary>
	/// Install class.
	/// </summary>
	public sealed class Installer : IDisposable
	{
		private bool isDisposed;
		private Queue<Progress> messages;
		private Parameters parameters;
		private BaseClient client;

		public Installer(Parameters parameters)
		{
			this.Upgrade = Constants.RTM;
			this.messages = new Queue<Progress>();
			this.parameters = parameters;

			AppDomain.CurrentDomain.AssemblyResolve += new ResolveEventHandler(CurrentDomain_AssemblyResolve);
		}

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

		public Assembly CurrentDomain_AssemblyResolve(object sender, ResolveEventArgs args)
		{
			throw new FileLoadException(string.Format(Resources.ErrorAssembly, args.Name, Constants.CrLf));
		}

		public void Prepare()
        {
			if (this.parameters.Provider == null 
				|| string.IsNullOrEmpty(this.parameters.Provider.Name) 
				|| string.IsNullOrEmpty(this.parameters.ConnectionString) 
				|| string.IsNullOrEmpty(this.parameters.Database))
                throw new ArgumentException(Resources.MissingReq);

			if (this.parameters.FileTypes.Count == 0)
			{
				this.parameters.FileTypes.Add(new FileType() { Name = "PreInstall", HaltOnError = true });
				this.parameters.FileTypes.Add(new FileType() { Name = "Table" });
				this.parameters.FileTypes.Add(new FileType() { Name = "UserDefinedFunction" });
				this.parameters.FileTypes.Add(new FileType() { Name = "View" });
				this.parameters.FileTypes.Add(new FileType() { Name = "StoredProcedure" });
				this.parameters.FileTypes.Add(new FileType() { Name = "Trigger" });
				this.parameters.FileTypes.Add(new FileType() { Name = "PostInstall" });
				this.parameters.FileTypes.Add(new FileType() { Name = "ForeignKey" });
			}

			if (string.IsNullOrEmpty(this.parameters.InstallPath))
			{
				this.parameters.InstallPath = Constants.DefaultInstallPath;
			}

			if (string.IsNullOrEmpty(this.parameters.UpgradePath))
			{
				this.parameters.UpgradePath = Constants.DefaultUpgradePath;
			}

			if (string.IsNullOrEmpty(this.parameters.ScriptExtension))
			{
				this.parameters.ScriptExtension = Constants.DefaultScriptExtension;
			}
			else if (!this.parameters.ScriptExtension.StartsWith(Constants.Dot))
			{
				this.parameters.ScriptExtension = Constants.Dot + this.parameters.ScriptExtension;
			}

			this.client = BaseClient.Create(this.parameters);
			this.Exists = this.client.CheckExists();

            if (!Directory.Exists(this.parameters.ScriptPath))
                throw new ArgumentException(Resources.MissingScriptDir + this.parameters.ScriptPath);

            DirectoryInfo installScripts = new DirectoryInfo(Path.Combine(this.parameters.ScriptPath, this.parameters.InstallPath));
            DirectoryInfo upgradeScripts = new DirectoryInfo(Path.Combine(this.parameters.ScriptPath, this.parameters.UpgradePath));

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
				string[] version = this.client.GetVersion().Split(new char[] { Constants.SplitChar }, StringSplitOptions.RemoveEmptyEntries);

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
								this.ScriptsTotal += this.GetCandidateCount(di);
						}
					}
				}
				else if (installScripts.Exists)
					this.ScriptsTotal = this.GetCandidateCount(installScripts);
			}
			else if (installScripts.Exists)
				this.ScriptsTotal = this.GetCandidateCount(installScripts);
        }

		public void Create()
		{
			string errorMessage = string.Empty;

			try
			{
				if (this.Exists && (this.parameters.Options & Options.Drop) == Options.Drop)
				{
					SetProgress(StatusMessage.Start, Resources.StatusDroppingDatabase + this.parameters.Database);
					this.client.DropDatabase();
					SetProgress(StatusMessage.Complete, Resources.StatusDone);
					if ((this.parameters.Options & Options.Verbose) == Options.Verbose)
						SetProgress(StatusMessage.Progress, string.Empty, 50);
					this.Exists = false;
				}

				DirectoryInfo installScripts = new DirectoryInfo(Path.Combine(this.parameters.ScriptPath, this.parameters.InstallPath));
				DirectoryInfo upgradeScripts = new DirectoryInfo(Path.Combine(this.parameters.ScriptPath, this.parameters.UpgradePath));

				if (!this.Exists || !upgradeScripts.Exists)
				{
					if ((this.parameters.Options & Options.Create) == Options.Create)
					{
						SetProgress(StatusMessage.Start, Resources.StatusCreatingDatabase + this.parameters.Database);
						this.client.CreateDatabase();

						if ((this.parameters.Options & Options.Verbose) == Options.Verbose)
							SetProgress(StatusMessage.Progress, string.Empty, 100);
						SetProgress(StatusMessage.Complete, Resources.StatusDone);
					}

					if (installScripts.Exists)
					{
						SetProgress(StatusMessage.Start, Resources.StatusInstallingDatabase + this.parameters.Database);

						if ((this.parameters.Options & Options.Verbose) == Options.Verbose)
							SetProgress(StatusMessage.Detail, string.Empty);

						foreach (FileType fileType in this.parameters.FileTypes)
						{
							if (!fileType.IsDisabled)
							{
								if (!string.IsNullOrEmpty(fileType.Description))
								{
									SetProgress(StatusMessage.Detail, string.Empty);
									SetProgress(StatusMessage.Detail, fileType.Description);
								}

								string searchPattern = Constants.Asterisk + Constants.Dot + fileType.Name + this.parameters.ScriptExtension;
								ExecuteScripts(installScripts.GetFiles(searchPattern, SearchOption.AllDirectories), fileType.HaltOnError, fileType.IsGlobal);
							}
						}

						SetProgress(StatusMessage.Complete, Resources.StatusDone);
						if (this.ScriptsRun == 0)
							SetProgress(StatusMessage.Complete, Resources.WarnNoScripts);
					}
					else
						SetProgress(StatusMessage.Complete, Resources.WarnMissingInstall);

					this.client.SetVersion(this.Upgrade, WindowsIdentity.GetCurrent().Name.Replace(Constants.BackSlash, Constants.ForwardSlash) + Resources.StatusOnSeparator + DateTime.Now);
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

							foreach (FileType fileType in this.parameters.FileTypes)
							{
								if (!fileType.IsDisabled)
								{
									if (!string.IsNullOrEmpty(fileType.Description))
									{
										SetProgress(StatusMessage.Detail, string.Empty);
										SetProgress(StatusMessage.Detail, fileType.Description);
									}

                                    string searchPattern = Constants.Asterisk + Constants.Dot + fileType.Name + this.parameters.ScriptExtension;
                                    ExecuteScripts(upgradeDir.GetFiles(searchPattern, SearchOption.AllDirectories), fileType.HaltOnError, fileType.IsGlobal);
								}
							}

							SetProgress(StatusMessage.Complete, Resources.StatusDone);
							if (this.Errors > 0)
								break;

							this.client.SetVersion(upgradeDir.Name, WindowsIdentity.GetCurrent().Name.Replace(Constants.BackSlash, Constants.ForwardSlash) + Resources.StatusOnSeparator + DateTime.Now);
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

		private void ExecuteScripts(FileInfo[] files, bool throwOnError, bool isGlobal)
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
					string script = sr.ReadToEnd();
					sr.Close();
					this.client.Execute(script, !isGlobal);
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

		private int GetCandidateCount(DirectoryInfo di)
		{
			int count = 0;

			foreach (FileType fileType in this.parameters.FileTypes)
			{
				string searchPattern = Constants.Asterisk + Constants.Dot + fileType.Name + this.parameters.ScriptExtension;
				count += di.GetFiles(searchPattern, SearchOption.AllDirectories).Length;
			}

			return count;
		}
	}
}