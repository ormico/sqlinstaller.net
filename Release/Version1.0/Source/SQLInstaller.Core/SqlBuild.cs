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
	///      <SqlBuild Database="mytestdb" Server="myserver" Path="$(SolutionRoot)\Scripts" Drop="true" />
	///   </Target>
	/// </summary>
	public class SqlBuild : Task
	{
		private string database;
		private string server;
		private string path;
		private string user;
		private string password;
		private bool create;
		private bool drop;
		private bool retry;

		[Required]
		public string Database
		{
			get { return database; }
			set { database = value; }
		}

		public string Server
		{
			get { return server; }
			set { server = value; }
		}

		public string Path
		{
			get { return path; }
			set { path = value; }
		}

		public string User
		{
			get { return user; }
			set { user = value; }
		}

		public string Password
		{
			get { return password; }
			set { password = value; }
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
			server = "localhost";
			user = string.Empty;
			password = string.Empty;
			create = true;
		}

		public override bool Execute()
		{
			RuntimeFlag flags = RuntimeFlag.Verbose;
			if (create)
				flags |= RuntimeFlag.Create;
			if (drop)
				flags |= RuntimeFlag.Drop;
			if (retry)
				flags |= RuntimeFlag.Retry;

			try
			{
				Runtime installer = new Runtime(path, flags);
				Log.LogMessage("Processing: " + path + ".");
				Log.LogMessage("Connecting to " + server + ".");

				Schema schema = installer.Prepare(server, database, user, password);

				if (schema.Exists && (flags & RuntimeFlag.Drop) != RuntimeFlag.Drop)
				{
					if (schema.ScriptsTotal == 0)
					{
						Log.LogWarning(schema.Database + " has already been upgraded to " + schema.Version + " by " + schema.UpgradeBy);
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
								Log.LogMessage("Completed successfully.");
							else
								Log.LogError("Completed with " + prog.Percent + " errors.");
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