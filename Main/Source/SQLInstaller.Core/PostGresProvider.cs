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
		protected override string ConnectionString
		{
			get { return base.ConnectionString + "Database=template1;"; }
		}

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
			using (NpgsqlConnection conn = new NpgsqlConnection(ConnectionString))
			{
				conn.Open();
				conn.ChangeDatabase(Database.ToLower());
				NpgsqlCommand cmd = new NpgsqlCommand("SELECT d.description FROM pg_shdescription d JOIN pg_database b ON b.oid = d.objoid WHERE datname = :database_name", conn);
				cmd.Parameters.Add(new NpgsqlParameter(":database_name", Database.ToLower()));
				version = cmd.ExecuteScalar() as string;
			}
			return version;
		}

		public override void SetVersion(string version, string upgradeBy)
		{
			using (NpgsqlConnection conn = new NpgsqlConnection(ConnectionString))
			{
				conn.Open();
				conn.ChangeDatabase(Database.ToLower());
				NpgsqlCommand cmd = new NpgsqlCommand("COMMENT ON DATABASE " + Database.ToLower() + " IS :version", conn);
				cmd.Parameters.Add(new NpgsqlParameter(":version", version + ";" + upgradeBy));
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
