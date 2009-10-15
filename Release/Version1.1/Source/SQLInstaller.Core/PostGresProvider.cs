/*  ----------------------------------------------------------------------------
 *  SQL Installer.NET
 *  Microsoft Public License (http://www.microsoft.com/opensource/licenses.mspx#Ms-PL)
 *  ----------------------------------------------------------------------------
 *  File:       PostGresProvider.cs
 *  Author:     Brian Schloz
 *  ----------------------------------------------------------------------------
 */
namespace SQLInstaller.Core
{
	using System;

	using Npgsql;

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
				cmd.CommandText = Constants.PostGresSelectExists;
				cmd.Parameters.Add(new NpgsqlParameter(Constants.PostGresParmDatabaseName, Database.ToLower()));
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
					NpgsqlCommand cmd = new NpgsqlCommand(Constants.PostGresSelectVersion, conn);
					version = cmd.ExecuteScalar() as string;
				}
			}
			catch (Exception) { }

			return version;
		}

		public override void SetVersion(string version, string upgradeBy)
		{
			using (NpgsqlConnection conn = new NpgsqlConnection(ConnectionString))
			{
				conn.Open();
				conn.ChangeDatabase(Database.ToLower());
				NpgsqlCommand cmd = new NpgsqlCommand(string.Format(Constants.PostGresCreateVersionView, version, upgradeBy.Replace(Constants.BackSlash, Constants.ForwardSlash)), conn);
				cmd.ExecuteNonQuery();
			}
		}

		public override void DropDatabase()
		{
			using (NpgsqlConnection conn = new NpgsqlConnection(ConnectionString))
			{
				conn.Open();
				NpgsqlCommand cmd = new NpgsqlCommand(Constants.PostGresDropDatabase + Database.ToLower(), conn);
				cmd.ExecuteNonQuery();
			}
		}

		public override void CreateDatabase()
		{
			using (NpgsqlConnection conn = new NpgsqlConnection(ConnectionString))
			{
				conn.Open();
				NpgsqlCommand cmd = new NpgsqlCommand(Constants.PostGresCreateDatabase + Database.ToLower(), conn);
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