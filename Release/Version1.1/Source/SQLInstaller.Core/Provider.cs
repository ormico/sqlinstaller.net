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
		private string database;

		public string ConnectionString
		{
			get { return connectionString; }
			set { connectionString = value; }
		}

		public string Database
		{
			get { return database; }
			set { database = value; }
		}

		public abstract bool Exists();
		public abstract string GetVersion();
		public abstract void SetVersion(string version, string upgradeBy);
		public abstract void DropDatabase();
		public abstract void CreateDatabase();
		public abstract void ExecuteScript(string script);
		
	}
}
