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
				cmd.CommandText = Constants.OracleSelectExists;
				cmd.Parameters.Add(new OracleParameter(Constants.OracleParmDatabaseName, Database.ToUpper()));

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
					OracleCommand cmd = new OracleCommand(string.Format(Constants.OracleSelectVersion, Database.ToUpper()), conn);
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
				OracleCommand cmd = new OracleCommand(string.Format(Constants.OracleCreateVersionView, Database.ToUpper(), version, upgradeBy), conn);
				cmd.ExecuteNonQuery();
			}
		}

		public override void DropDatabase()
		{
			using (OracleConnection conn = new OracleConnection(ConnectionString))
			{
				conn.Open();
				OracleCommand cmd = new OracleCommand(string.Format(Constants.OracleDropUser, Database.ToUpper()), conn);
				cmd.ExecuteNonQuery();
			}
		}

		public override void CreateDatabase()
		{
			using (OracleConnection conn = new OracleConnection(ConnectionString))
			{
				conn.Open();
				OracleCommand cmd = new OracleCommand(string.Format(Constants.OracleCreateUser, Database.ToUpper()), conn);
				cmd.ExecuteNonQuery();
				cmd.CommandText = string.Format(Constants.OracleGrantUser, Database.ToUpper());
				cmd.ExecuteNonQuery();
			}
		}

		public override void ExecuteScript(string script)
		{
			// The .NET provider for Oracle does not support everthing you can do
			// in SQL*PLUS when executing DDL. We provide for two variants which
			// should cover all DDL types but there is little tolerance for variation.
			string sql = script.Replace(Constants.CarriageReturn, Constants.Space).Replace(Constants.NewLine, Constants.Space).Trim();
			using (OracleConnection conn = new OracleConnection(builderNewUser.ConnectionString))
			{
				conn.Open();
				OracleCommand cmd = new OracleCommand();
				cmd.Connection = conn;

				// If the script has a begin/end block, then assume it is a sproc, trigger or
				// anonymous/adhoc. These can have multiple statements terminated by semi-colons.
				string[] scripts = null;
				int begin = sql.IndexOf(Constants.OracleBegin, StringComparison.OrdinalIgnoreCase);
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
						scripts = sql.Split(new char[] { Constants.ForwardSlash }, StringSplitOptions.RemoveEmptyEntries);
				}
				else // Should handle all other types of create/alter DDL
					scripts = sql.Split(new char[] { Constants.SplitChar}, StringSplitOptions.RemoveEmptyEntries);

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
