using System;
using System.Collections.Generic;
using System.Data;
using System.Text;

using Npgsql;

namespace SQLInstaller.Core
{
	/// <summary>
	/// The PostGres data provider is using Npgsql binaries (see http://pgfoundry.org/projects/npgsql/) 
	/// licensed under GNU LGPL (aka. Lesser GPL).
	/// You can find a copy of the LGPL license at: http://www.gnu.org/licenses/lgpl.html
	/// </summary>
	public sealed class PostGresProvider : Provider
	{
		public override bool Exists()
		{
			bool exists = false;
			using (NpgsqlConnection conn = new NpgsqlConnection(ConnectionString))
			{
				conn.Open();

				NpgsqlCommand cmd = new NpgsqlCommand();
				cmd.Connection = conn;
				cmd.CommandText = "SELECT COUNT(*) FROM pg_catalog.pg_database WHERE datname = :database_name";
				cmd.Parameters.Add(new NpgsqlParameter(":database_name", Database.ToLower()));
				exists = ((long)cmd.ExecuteScalar()) > 0;
			}

			return exists;
		}

		public override string GetVersion()
		{			
			string version = string.Empty;
			try
			{
				using (NpgsqlConnection conn = new NpgsqlConnection(ConnectionString))
				{
					conn.Open();
					conn.ChangeDatabase(Database.ToLower());
					NpgsqlCommand cmd = new NpgsqlCommand("SELECT version_info FROM db_version", conn);
					version = cmd.ExecuteScalar() as string;
				}
			}
			catch (Exception){}
			return version;
		}

		public override void SetVersion(string version, string upgradeBy)
		{
			using (NpgsqlConnection conn = new NpgsqlConnection(ConnectionString))
			{
				conn.Open();
				conn.ChangeDatabase(Database.ToLower());
				NpgsqlCommand cmd = new NpgsqlCommand("CREATE OR REPLACE VIEW db_version AS SELECT CAST('" + version + ";" + upgradeBy.Replace('\\','/') + "' AS VARCHAR(250)) AS version_info", conn);
				cmd.ExecuteNonQuery();
			}
		}

		public override void DropDatabase()
		{
			using (NpgsqlConnection conn = new NpgsqlConnection(ConnectionString))
			{
				conn.Open();
				NpgsqlCommand cmd = new NpgsqlCommand("DROP DATABASE " + Database.ToLower(), conn);
				cmd.ExecuteNonQuery();
			}
		}

		public override void CreateDatabase()
		{
			using (NpgsqlConnection conn = new NpgsqlConnection(ConnectionString))
			{
				conn.Open();
				NpgsqlCommand cmd = new NpgsqlCommand("CREATE DATABASE " + Database.ToLower(), conn);
				cmd.ExecuteNonQuery();
			}
		}

		public override void ExecuteScript(string script)
		{
			using (NpgsqlConnection conn = new NpgsqlConnection(ConnectionString))
			{
				conn.Open();
				conn.ChangeDatabase(Database.ToLower());
				NpgsqlCommand cmd = new NpgsqlCommand(script, conn);
				cmd.ExecuteNonQuery();
			}
		}
	}
}
