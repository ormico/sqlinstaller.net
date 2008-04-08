using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;

using Microsoft.SqlServer.Management.Smo;
using Microsoft.SqlServer.Management.Common;

namespace SQLInstaller.Core
{
	public sealed class SqlProvider : Provider
	{
		public override bool Exists()
		{
			bool exists = false;
			using (SqlConnection conn = new SqlConnection(ConnectionString))
			{
				conn.Open();

				SqlCommand cmd = new SqlCommand();
				cmd.Connection = conn;
				cmd.CommandText = "SELECT COUNT(*) FROM sysdatabases WHERE name = @database_name";
				cmd.Parameters.Add(new SqlParameter("@database_name", Database));

				exists = ((int)cmd.ExecuteScalar()) > 0;
			}

			return exists;
		}

		public override string GetVersion()
		{			
			string version = string.Empty;
			using (SqlConnection conn = new SqlConnection(ConnectionString))
			{
				conn.Open();
				conn.ChangeDatabase(Database);
				SqlCommand cmd = new SqlCommand("SELECT ISNULL(value,'') FROM fn_listextendedproperty(@name, default, default, default, default, default, default)", conn);
				SqlParameter name = new SqlParameter("@name", "Version");
				cmd.Parameters.Add(name);
				version = cmd.ExecuteScalar() as string;
				name.Value = "UpdatedBy";
				version += ";" + cmd.ExecuteScalar() as string;
			}
			return version;
		}

		public override void SetVersion(string version, string upgradeBy)
		{
			using (SqlConnection conn = new SqlConnection(ConnectionString))
			{
				conn.Open();
				conn.ChangeDatabase(Database);
				SqlCommand cmd = new SqlCommand("IF NOT EXISTS (SELECT value FROM fn_listextendedproperty(@propname, default, default, default, default, default, default)) EXEC sp_addextendedproperty @propname, @propvalue ELSE EXEC sp_updateextendedproperty @propname, @propvalue ", conn);
				SqlParameter propName = new SqlParameter("@propname", SqlDbType.VarChar);
				SqlParameter propValue = new SqlParameter("@propvalue", SqlDbType.VarChar);
				cmd.Parameters.Add(propName);
				cmd.Parameters.Add(propValue);
				propName.Value = "Version";
				propValue.Value = version;
				cmd.ExecuteNonQuery();
				propName.Value = "UpdatedBy";
				propValue.Value = upgradeBy;
				cmd.ExecuteNonQuery();
			}
		}

		public override void DropDatabase()
		{
			using (SqlConnection conn = new SqlConnection(ConnectionString))
			{
				conn.Open();
				SqlCommand cmd = new SqlCommand("DROP DATABASE " + Database, conn);
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
