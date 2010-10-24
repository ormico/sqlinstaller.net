/*  ----------------------------------------------------------------------------
 *  SQL Installer.NET
 *  Microsoft Public License (http://www.microsoft.com/opensource/licenses.mspx#Ms-PL)
 *  ----------------------------------------------------------------------------
 *  File:       CommercialClient.cs
 *  Author:     Brian Schloz
 *  ----------------------------------------------------------------------------
 */
namespace SQLInstaller.Core
{
	using System;
	using System.Collections.Generic;
	using System.Data.Common;

	/// <summary>
	/// Commerical client class (Oracle and DB2).
	/// </summary>
	public sealed class CommercialClient : BaseClient
	{
		private string alterStatement;

		public CommercialClient(string alterStatement)
		{
			this.alterStatement = alterStatement;
		}

		public override void Execute(string script, bool changeDatabase)
		{
			using (DbConnection connection = this.DbProviderFactory.CreateConnection())
			{
				connection.ConnectionString = this.ConnectionString;
				connection.Open();
				DbCommand cmd = this.DbProviderFactory.CreateCommand();
				cmd.Connection = connection;
				cmd.CommandTimeout = 0;
				if (changeDatabase)
				{
					cmd.CommandText = this.alterStatement + this.Database.ToUpper();
					cmd.ExecuteNonQuery();
				}

				List<string> scripts = new List<string>();
				List<string> lines = new List<string>();

				// Iterate through script line-by-line looking for special terminator at EOL (/). If
				// this is found, then add all prior lines as a single command.
				foreach (string line in script.Split(new char[] { Constants.CarriageReturn, Constants.NewLine }, StringSplitOptions.RemoveEmptyEntries))
				{
					if (line.Trim().EndsWith(Constants.ForwardSlash.ToString(), StringComparison.OrdinalIgnoreCase))
					{
						lines.Add(line.TrimEnd(null).TrimEnd(new char[] { Constants.ForwardSlash }));
						scripts.Add(string.Join(Constants.NewLine.ToString(), lines.ToArray()));
						lines.Clear();
					}
					else
						lines.Add(line);
				}

				// Any remaining lines will be joined together then re-split on semi-colon
				if (lines.Count > 0)
					scripts.AddRange(string.Join(Constants.NewLine.ToString(), lines.ToArray()).Split(new char[] { Constants.SplitChar }, StringSplitOptions.RemoveEmptyEntries));

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