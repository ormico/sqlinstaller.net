/*  ----------------------------------------------------------------------------
 *  SQL Installer.NET
 *  Microsoft Public License (http://www.microsoft.com/opensource/licenses.mspx#Ms-PL)
 *  ----------------------------------------------------------------------------
 *  File:       SqlBuild.cs
 *  Author:     Brian Schloz
 *  ----------------------------------------------------------------------------
 */
namespace SQLInstaller.Core
{
	using System;

	using Microsoft.Build.Framework;
	using Microsoft.Build.Utilities;

	/// <summary>
	/// <Project DefaultTargets="Build" xmlns="http://schemas.microsoft.com/developer/msbuild/2003">
	///   <UsingTask TaskName="SQLInstaller.Core.SqlBuild" AssemblyFile="C:\Program Files\SQLInstaller\SQLInstaller.Core.dll" />
	///   ...
	///   <Target Name="AfterBuild">
	///      <SqlBuild Database="mytestdb" ConnectionString="Data Source=localhost;Integrated Security=SSPI;" Path="$(SolutionRoot)\Scripts" Drop="true" />
	///   </Target>
	/// </Project>
	/// </summary>
	public class SqlBuild : Task
	{
		public SqlBuild()
		{
			this.Create = true;
		}

		[Required]
		public string Database { get; set; }

		public string Provider { get; set; }

		[Required]
		public string ConnectionString { get; set; }

		public string Path { get; set; }

		public bool Create { get; set; }

		public bool Drop { get; set; }

		public bool Retry { get; set; }

		public override bool Execute()
		{
			Options options = Options.Verbose;
			if (this.Create)
				options |= Options.Create;
			if (this.Drop)
				options |= Options.Drop;
			if (this.Retry)
				options |= Options.Retry;

			try
			{
				Parameters p = new Parameters();
				p.ConfigPath = this.Path;
				p.Options = options;
				p.Database = this.Database;
				p.ConnectionString = this.ConnectionString;
				p.Provider.Name = this.Provider;

				Installer installer = new Installer(p);
				Log.LogMessage(Resources.StatusConnecting);

				installer.Prepare();

				if (installer.Exists && (options & Options.Drop) != Options.Drop)
				{
					if (installer.ScriptsTotal == 0)
					{
                        Log.LogWarning(this.Database + Resources.StatusAlreadyUpgraded + installer.Version + Resources.StatusBy + installer.UpgradeBy);
						return true;
					}
				}

				installer.Create();
				Progress prog = new Progress(StatusMessage.Running);
				while (prog.Status != StatusMessage.Exit)
				{
					prog = installer.GetProgress(false);
					switch (prog.Status)
					{
						case StatusMessage.Start:
						case StatusMessage.Detail:
							if (prog.Message.Length > 0)
								Log.LogMessage(prog.Message + ".");
							break;
						case StatusMessage.Exit:
							if (prog.Percent == 0)
								Log.LogMessage(Resources.StatusSuccess);
							else
								Log.LogError(Resources.StatusErrorComp + prog.Percent + Resources.StatusErrorWith);
							break;
						case StatusMessage.Complete:
						case StatusMessage.Running:
						case StatusMessage.Progress:
						default:
							break;
					}
				}
			}
			catch (Exception ex)
			{
				Log.LogError(ex.Message);
			}

			return !Log.HasLoggedErrors;
		}
	}
}