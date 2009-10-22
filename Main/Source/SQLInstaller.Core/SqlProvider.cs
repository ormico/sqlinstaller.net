/*  ----------------------------------------------------------------------------
 *  SQL Installer.NET
 *  Microsoft Public License (http://www.microsoft.com/opensource/licenses.mspx#Ms-PL)
 *  ----------------------------------------------------------------------------
 *  File:       SqlProvider.cs
 *  Author:     Brian Schloz
 *  ----------------------------------------------------------------------------
 */
namespace SQLInstaller.Core
{
	using System;
	using System.Data;
	using System.Data.SqlClient;

	using Microsoft.SqlServer.Management.Common;
	using Microsoft.SqlServer.Management.Smo;

	/// <summary>
	/// Microsoft SQL Server provider.
	/// </summary>
	public sealed class SqlProvider : Provider
	{
		public override bool Exists()
		{
			bool exists = true;
			try
			{
				using (SqlConnection conn = new SqlConnection(ConnectionString))
				{
					conn.Open();

					SqlCommand cmd = new SqlCommand();
					cmd.Connection = conn;
					cmd.CommandText = Constants.SqlSelectExists;
					cmd.Parameters.Add(new SqlParameter(Constants.SqlParmDatabaseName, Database));

					exists = ((int)cmd.ExecuteScalar()) > 0;
				}
			}
			catch (Exception) { }

			return exists;
		}

		public override string GetVersion()
		{			
			string version = string.Empty;
			using (SqlConnection conn = new SqlConnection(ConnectionString))
			{
				conn.Open();
				conn.ChangeDatabase(Database);
				SqlCommand cmd = new SqlCommand(Constants.SqlSelectVersion, conn);
				SqlParameter name = new SqlParameter(Constants.SqlParmName, Constants.SqlValueVersion);
				cmd.Parameters.Add(name);
				version = cmd.ExecuteScalar() as string;
				name.Value = Constants.SqlValueUpdatedBy;
				version += Constants.SplitChar.ToString() + cmd.ExecuteScalar() as string;
			}

			return version;
		}

		public override void SetVersion(string version, string upgradeBy)
		{
			using (SqlConnection conn = new SqlConnection(ConnectionString))
			{
				conn.Open();
				conn.ChangeDatabase(Database);
				SqlCommand cmd = new SqlCommand(Constants.SqlSetVersion, conn);
				SqlParameter propName = new SqlParameter(Constants.SqlParmPropName, SqlDbType.VarChar);
				SqlParameter propValue = new SqlParameter(Constants.SqlParmPropValue, SqlDbType.VarChar);
				cmd.Parameters.Add(propName);
				cmd.Parameters.Add(propValue);
				propName.Value = Constants.SqlValueVersion;
				propValue.Value = version;
				cmd.ExecuteNonQuery();
				propName.Value = Constants.SqlValueUpdatedBy;
				propValue.Value = upgradeBy;
				cmd.ExecuteNonQuery();
			}
		}

		public override void DropDatabase()
		{
			using (SqlConnection conn = new SqlConnection(ConnectionString))
			{
				conn.Open();
				SqlCommand cmd = new SqlCommand(string.Format(Constants.SqlSetSingleUser + Constants.SqlWithRollback, Database), conn);
				cmd.ExecuteNonQuery();
				cmd.CommandText = string.Format(Constants.SqlSetSingleUser, Database);
				cmd.ExecuteNonQuery();
				cmd.CommandText = Constants.SqlDropDatabase + Database;
				cmd.ExecuteNonQuery();
			}
		}

		public override void CreateDatabase()
		{
			using (SqlConnection conn = new SqlConnection(ConnectionString))
			{
				conn.Open();
				Server server = new Server(new ServerConnection(conn));
				server.ConnectionContext.ExecuteNonQuery(string.Format(Resources.DbCreate, Database));
			}
		}

		public override void ExecuteScript(string script)
		{
			using (SqlConnection conn = new SqlConnection(ConnectionString))
			{
				conn.Open();
				conn.ChangeDatabase(Database);
				Server server = new Server(new ServerConnection(conn));
				server.ConnectionContext.ExecuteNonQuery(script);
			}
		}
	}
}