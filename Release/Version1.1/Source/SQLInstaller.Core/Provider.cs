/*  ----------------------------------------------------------------------------
 *  SQL Installer.NET
 *  Microsoft Public License (http://www.microsoft.com/opensource/licenses.mspx#Ms-PL)
 *  ----------------------------------------------------------------------------
 *  File:       Provider.cs
 *  Author:     Brian Schloz
 *  ----------------------------------------------------------------------------
 */
namespace SQLInstaller.Core
{
	/// <summary>
	/// Provider base class.
	/// </summary>
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