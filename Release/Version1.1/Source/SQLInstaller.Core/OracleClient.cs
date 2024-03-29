/*  ----------------------------------------------------------------------------
 *  SQL Installer.NET
 *  Microsoft Public License (http://www.microsoft.com/opensource/licenses.mspx#Ms-PL)
 *  ----------------------------------------------------------------------------
 *  File:       OracleClient.cs
 *  Author:     Brian Schloz
 *  ----------------------------------------------------------------------------
 */
namespace SQLInstaller.Core
{
	using System;
	using System.Data.Common;

	/// <summary>
	/// Oracle client class.
	/// </summary>
	public sealed class OracleClient : BaseClient
	{
		public OracleClient()
		{
		}

		public override void Execute(string script, bool changeDatabase)
		{
			// The .NET provider for Oracle does not support everthing you can do
			// in SQL*PLUS when executing DDL. We provide for two variants which
			// should cover all DDL types but there is little tolerance for variation.
			using (DbConnection connection = this.DbProviderFactory.CreateConnection())
			{
				connection.ConnectionString = this.ConnectionString;
				connection.Open();
				DbCommand cmd = this.DbProviderFactory.CreateCommand();
				cmd.Connection = connection;
				cmd.CommandText = Constants.OracleAlterSession + this.Database.ToUpper();
				cmd.ExecuteNonQuery();

				// If the script has a begin/end block, then assume it is a sproc, trigger or
				// anonymous/adhoc. These can have multiple statements terminated by semi-colons.
				string[] scripts = null;
				int begin = script.IndexOf(Constants.Begin, StringComparison.OrdinalIgnoreCase);
				if (begin >= 0)
				{
					// Treat script starting with BEGIN special case for data loading/inserts.
					// Otherwise, split statement on special delimiter for these types (/).
					if (begin == 0)
					{
						scripts = new string[1];
						scripts[0] = script;
					}
					else
						scripts = script.Split(new char[] { Constants.ForwardSlash }, StringSplitOptions.RemoveEmptyEntries);
				}
				else // Should handle all other types of create/alter DDL
					scripts = script.Split(new char[] { Constants.SplitChar }, StringSplitOptions.RemoveEmptyEntries);

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