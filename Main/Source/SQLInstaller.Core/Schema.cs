using System;
using System.Collections.Generic;
using System.Text;

namespace SQLInstaller.Core
{
	public sealed class Schema
	{
		private bool exists;
		private string database;
		private string server;
		private string version;
		private string upgrade;
		private string upgradeBy;
		private int errors;
		private int scriptsTotal;
		private int scriptsRun;

		public bool Exists
		{
			get { return exists; }
			set { exists = value; }
		}

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

		public string Version
		{
			get { return version; }
			set { version = value; }
		}

		public string Upgrade
		{
			get { return upgrade; }
			set { upgrade = value; }
		}

		public string UpgradeBy
		{
			get { return upgradeBy; }
			set { upgradeBy = value; }
		}

		public int Errors
		{
			get { return errors; }
			set { errors = value; }
		}

		public int ScriptsTotal
		{
			get { return scriptsTotal; }
			set { scriptsTotal = value; }
		}

		public int ScriptsRun
		{
			get { return scriptsRun; }
			set { scriptsRun = value; }
		}

		public Schema(string server, string database)
		{
			this.server = server;
			this.database = database;
			this.version = string.Empty;
			this.upgrade = string.Empty;
			this.upgradeBy = string.Empty;
		}

		public Schema Clone()
		{
			Schema schema = new Schema(this.server, this.database);
			schema.Exists = this.exists;
			schema.Version = this.version;
			schema.Upgrade = this.upgrade;
			schema.UpgradeBy = this.upgradeBy;
			schema.ScriptsTotal = this.scriptsTotal;
			return schema;
		}
	}
}
