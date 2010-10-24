/*  ----------------------------------------------------------------------------
 *  SQL Installer.NET
 *  Microsoft Public License (http://www.microsoft.com/opensource/licenses.mspx#Ms-PL)
 *  ----------------------------------------------------------------------------
 *  File:       SQLiteClient.cs
 *  Author:     Brian Schloz
 *  ----------------------------------------------------------------------------
 */
namespace SQLInstaller.Core
{
	using System;
	using System.Data.Common;
	using System.IO;
	using System.Reflection;

	/// <summary>
	/// SQLite client class.
	/// </summary>
	public sealed class SQLiteClient : BaseClient
	{
		public SQLiteClient()
		{
		}

		public override bool CheckExists()
		{
			return File.Exists(this.GetFilePath());
		}

		public override void CreateDatabase()
		{
			return;
		}

		public override void Execute(string script, bool changeDatabase)
		{
			base.Execute(script, false);
		}

		public override object ExecuteScalar(string script, bool changeDatabase)
		{
			return base.ExecuteScalar(script, false);
		}

		public override void DropDatabase()
		{
			string filePath = this.GetFilePath();

			if (File.Exists(filePath))
				File.Delete(filePath);
		}

		private string GetFilePath()
		{
			DbConnectionStringBuilder csb = new DbConnectionStringBuilder();
			csb.ConnectionString = this.ConnectionString;
			object dataSource;

			if (csb.TryGetValue(Constants.DataSource, out dataSource))
				return dataSource as string;
			else
				throw new ArgumentException(Resources.ErrorMissingDataSource);
		}
	}
}