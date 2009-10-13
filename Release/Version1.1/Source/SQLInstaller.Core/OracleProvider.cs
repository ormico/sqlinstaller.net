using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OracleClient;
using System.Text;

namespace SQLInstaller.Core
{
	public sealed class OracleProvider : Provider
	{
		private OracleConnectionStringBuilder builder;
		private OracleConnectionStringBuilder builderNewUser;

		public OracleConnectionStringBuilder Builder
		{
			get
			{
				if (builder == null)
					builder = new OracleConnectionStringBuilder(ConnectionString);
				return builder;
			}
		}

		public OracleConnectionStringBuilder BuilderNewUser
		{
			get
			{
				if (builderNewUser == null)
				{
					builderNewUser = new OracleConnectionStringBuilder(ConnectionString);
					builderNewUser.UserID = Database.ToUpper();
					builderNewUser.Password = builderNewUser.UserID;
				}
				return builder;
			}
		}

		public override bool Exists()
		{
			bool exists = false;
			using (OracleConnection conn = new OracleConnection(ConnectionString))
			{
				conn.Open();

				OracleCommand cmd = new OracleCommand();
				cmd.Connection = conn;
				cmd.CommandText = "SELECT COUNT(*) FROM all_users WHERE username = UPPER(:database_name)";
				cmd.Parameters.Add(new OracleParameter(":database_name", Database.ToUpper()));

				exists = ((decimal)cmd.ExecuteScalar()) > 0;
			}

			return exists;
		}

		public override string GetVersion()
		{
			string version = string.Empty;
			try
			{
				using (OracleConnection conn = new OracleConnection(ConnectionString))
				{
					conn.Open();
					OracleCommand cmd = new OracleCommand("SELECT version || ';' || upgradeby FROM " + Database.ToUpper() + ".VERSION", conn);
					version = cmd.ExecuteScalar() as string;
				}
			}
			catch (Exception) { }
			return version;
		}

		public override void SetVersion(string version, string upgradeBy)
		{
			using (OracleConnection conn = new OracleConnection(ConnectionString))
			{
				conn.Open();
				OracleCommand cmd = new OracleCommand("CREATE OR REPLACE VIEW " + Database.ToUpper() + ".VERSION AS SELECT '" + version + "' AS VERSION, '" + upgradeBy + "' AS UPGRADEBY FROM DUAL", conn);
				cmd.ExecuteNonQuery();
			}
		}

		public override void DropDatabase()
		{
			using (OracleConnection conn = new OracleConnection(ConnectionString))
			{
				conn.Open();
				OracleCommand cmd = new OracleCommand("DROP USER " + Database.ToUpper() + " CASCADE", conn);
				cmd.ExecuteNonQuery();
			}
		}

		public override void CreateDatabase()
		{
			using (OracleConnection conn = new OracleConnection(ConnectionString))
			{
				conn.Open();
				OracleCommand cmd = new OracleCommand("CREATE USER " + Database.ToUpper() + " IDENTIFIED BY " + Database.ToUpper(), conn);
				cmd.ExecuteNonQuery();
				cmd.CommandText = "GRANT UNLIMITED TABLESPACE, CREATE SESSION, CREATE TABLE, CREATE VIEW, CREATE PROCEDURE, CREATE SEQUENCE, CREATE ROLE, CREATE SYNONYM, CREATE TRIGGER, CREATE TYPE, CREATE MATERIALIZED VIEW, CREATE OPERATOR, CREATE CLUSTER, CREATE INDEXTYPE TO " + Database.ToUpper();
				cmd.ExecuteNonQuery();
			}
		}

		public override void ExecuteScript(string script)
		{
			// The .NET provider for Oracle does not support everthing you can do
			// in SQL*PLUS when executing DDL. We provide for two variants which
			// should cover all DDL types but there is little tolerance for variation.
			string sql = script.Replace('\r', ' ').Replace('\n', ' ').Trim();
			using (OracleConnection conn = new OracleConnection(builderNewUser.ConnectionString))
			{
				conn.Open();
				OracleCommand cmd = new OracleCommand();
				cmd.Connection = conn;

				// If the script has a begin/end block, then assume it is a sproc, trigger or
				// anonymous/adhoc. These can have multiple statements terminated by semi-colons.
				string[] scripts = null;
				int begin = sql.IndexOf("BEGIN", StringComparison.InvariantCultureIgnoreCase);
				if (begin >= 0)
				{
					// Treat script starting with BEGIN special case for data loading/inserts.
					// Otherwise, split statement on special delimiter for these types (/).
					if (begin == 0)
					{
						scripts = new string[1];
						scripts[0] = sql;
					}
					else
						scripts = sql.Split(new char[] { '/' }, StringSplitOptions.RemoveEmptyEntries);
				}
				else // Should handle all other types of create/alter DDL
					scripts = sql.Split(new char[] { ';' }, StringSplitOptions.RemoveEmptyEntries);

				foreach (string sqlLine in scripts)
				{
					if (sqlLine.Trim().Length > 0)
					{
						cmd.CommandText = sqlLine;
						cmd.ExecuteNonQuery();
					}
				}
			}
		}
	}
}
