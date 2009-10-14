using System;
using System.Collections.Generic;
using System.Text;

namespace SQLInstaller.Core
{
	public sealed class SchemaInfo
	{
		internal const string RTM = "RTM";

		private Provider provider;
		private bool exists;
		private string version;
		private string upgrade;
		private string upgradeBy;
		private int errors;
		private int scriptsTotal;
		private int scriptsRun;

		public Provider Provider
		{
			get { return provider; }
			set { provider = value; }
		}

		public bool Exists
		{
			get { return exists; }
			set { exists = value; }
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

		public bool IsCurrent
		{
			get
			{
				if (string.Compare(this.Version, SchemaInfo.RTM, true) == 0)
					return string.Compare(this.Upgrade, SchemaInfo.RTM, true) == 0
						;
				else
					return string.Compare(this.Version, this.Upgrade, true) >= 0;
			}
		}

		public SchemaInfo(Provider provider)
		{
			this.provider = provider;
			this.version = string.Empty;
			this.upgrade = SchemaInfo.RTM;
			this.upgradeBy = string.Empty;
		}

		public SchemaInfo Clone()
		{
			SchemaInfo schema = new SchemaInfo(this.provider);
			schema.Exists = this.exists;
			schema.Version = this.version;
			schema.Upgrade = this.upgrade;
			schema.UpgradeBy = this.upgradeBy;
			schema.ScriptsTotal = this.scriptsTotal;
			return schema;
		}
	}
}
