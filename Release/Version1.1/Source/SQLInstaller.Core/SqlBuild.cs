using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Build.Framework;
using Microsoft.Build.Utilities;

namespace SQLInstaller.Core
{
	/// <summary>
	/// <Project DefaultTargets="Build" xmlns="http://schemas.microsoft.com/developer/msbuild/2003">
	///   <UsingTask TaskName="SQLInstaller.Core.SqlBuild" AssemblyFile="C:\Program Files\SQLInstaller\SQLInstaller.Core.dll" />
	///   ...
	///   <Target Name="AfterBuild">
	///      <SqlBuild Database="mytestdb" ConnectionString="Data Source=localhost;Integrated Security=SSPI;" Path="$(SolutionRoot)\Scripts" Drop="true" />
	///   </Target>
	/// </summary>
	public class SqlBuild : Task
	{
		private ProviderType provType;
		private string connectionString;
		private string database;
		private string path;
		private bool create;
		private bool drop;
		private bool retry;

		[Required]
		public string Database
		{
			get { return database; }
			set { database = value; }
		}

		public ProviderType Provider
		{
			get { return provType; }
			set { provType = value; }
		}

		public string ConnectionString
		{
			get { return connectionString; }
			set { connectionString = value; }
		}

		public string Path
		{
			get { return path; }
			set { path = value; }
		}

		public bool Create
		{
			get { return create; }
			set { create = value; }
		}

		public bool Drop
		{
			get { return drop; }
			set { drop = value; }
		}

		public bool Retry
		{
			get { return retry; }
			set { retry = value; }
		}

		public SqlBuild()
		{
			path = string.Empty;
			connectionString = string.Empty;
			create = true;
		}

		public override bool Execute()
		{
			Options options = Options.Verbose;
			if (create)
				options |= Options.Create;
			if (drop)
				options |= Options.Drop;
			if (retry)
				options |= Options.Retry;

			try
			{
				Installer installer = new Installer(path, options);
				Log.LogMessage(Resources.StatusConnecting);

				SchemaInfo schema = installer.Prepare(provType, connectionString, database);

				if (schema.Exists && (options & Options.Drop) != Options.Drop)
				{
					if (schema.ScriptsTotal == 0)
					{
						Log.LogWarning(schema.Provider.Database + Resources.StatusAlreadyUpgraded + schema.Version + Resources.StatusBy + schema.UpgradeBy);
						return true;
					}
				}

				installer.Create(schema);
				Progress prog = new Progress(StatusMessage.Running);
				while (prog.Status != StatusMessage.Exit)
				{
					prog = installer.GetProgress(false);
					switch (prog.Status)
					{
						case StatusMessage.Start:
						case StatusMessage.Detail:
							if ( prog.Message.Length > 0 )
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