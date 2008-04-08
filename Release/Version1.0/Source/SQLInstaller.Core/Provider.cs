using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Configuration;
using System.Collections.Generic;
using System.Text;
using System.Diagnostics;
using System.IO;

namespace SQLInstaller.Core
{
	public abstract class Provider
	{
		private string connectionString;
		private string server;
		private string database;
		private string user;
		private string password;

		protected virtual string ConnectionString
		{
			get
			{
				if (connectionString == null)
				{
					string cred = "Trusted_Connection=yes";
					if (user != null && user.Length > 0)
						cred = "Uid=" + user + ";" + "Pwd=" + password;

					connectionString = string.Format("Server={0};{1};", server, cred);
				}
				return connectionString;
			}
		}
		public string Server
		{
			get { return server; }
			set { server = value; }
		}
		public string Database
		{
			get { return database; }
			set { database = value; }
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
		public abstract bool Exists();
		public abstract string GetVersion();
		public abstract void SetVersion(string version, string upgradeBy);
		public abstract void DropDatabase();
		public abstract void CreateDatabase();
		public abstract void ExecuteScript(string script);
		
	}
}
