/*  ----------------------------------------------------------------------------
 *  SQL Installer.NET
 *  Microsoft Public License (http://www.microsoft.com/opensource/licenses.mspx#Ms-PL)
 *  ----------------------------------------------------------------------------
 *  File:       SqlServerClient.cs
 *  Author:     Brian Schloz
 *  ----------------------------------------------------------------------------
 */
namespace SQLInstaller.Core
{
	using System.Data.SqlClient;

	using Microsoft.SqlServer.Management.Common;
	using Microsoft.SqlServer.Management.Smo;

	/// <summary>
	/// Microsoft SQL Server client class. Use SMO for user scripts.
	/// </summary>
	public sealed class SqlServerClient : BaseClient
	{
		public SqlServerClient()
		{
		}

		public override void Execute(string script, bool changeDatabase)
		{
			using (SqlConnection conn = new SqlConnection(this.ConnectionString))
			{
				conn.Open();
				if (changeDatabase)
					conn.ChangeDatabase(this.Database);
				Server server = new Server(new ServerConnection(conn));
				server.ConnectionContext.StatementTimeout = 0;
				server.ConnectionContext.ExecuteNonQuery(script);
			}
		}
	}
}