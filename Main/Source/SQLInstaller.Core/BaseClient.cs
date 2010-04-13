/*  ----------------------------------------------------------------------------
 *  SQL Installer.NET
 *  Microsoft Public License (http://www.microsoft.com/opensource/licenses.mspx#Ms-PL)
 *  ----------------------------------------------------------------------------
 *  File:       BaseClient.cs
 *  Author:     Brian Schloz
 *  ----------------------------------------------------------------------------
 */
namespace SQLInstaller.Core
{
	using System;
	using System.IO;
	using System.Data.Common;
	using System.Reflection;

	/// <summary>
	/// Base client class.
	/// </summary>
	public class BaseClient
	{
		public static BaseClient Create(Parameters parameters)
		{
			BaseClient client = null;

			switch (parameters.Provider.Name)
			{
				case Constants.Firebird:
					client = new FirebirdClient();
					break;
				case Constants.Oracle:
					client = new OracleClient();
					break;
				case Constants.DB2:
					client = new DB2Client();
					break;
				case Constants.SqlServer:
					client = new SqlServerClient();
					break;
				default:
					client = new BaseClient();
					break;
			}

			string provConfig = Resources.ProviderFactory;
			string provConfigPath = Path.Combine(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location), Constants.ProviderFactory + Constants.XmlExt);

			if (File.Exists(provConfigPath))
			{
				using (StreamReader r = new StreamReader(provConfigPath))
				{
					provConfig = r.ReadToEnd();
				}
			}

			ProviderFactory providerFactory = ProviderFactory.Load(provConfig);
			if (!providerFactory.Providers.Contains(parameters.Provider.Name))
				throw new ArgumentException(Resources.ErrorUnknownProvider + parameters.Provider.Name);

			client.Provider = providerFactory.Providers[parameters.Provider.Name];

			if (!string.IsNullOrEmpty(parameters.Provider.InvariantName))
				client.Provider.InvariantName = parameters.Provider.InvariantName;

			foreach (Script s in parameters.Provider.Scripts)
			{
				client.Provider.Scripts[s.Type].CommandText = s.CommandText;
			}

			client.DbProviderFactory = DbProviderFactories.GetFactory(client.Provider.InvariantName);
			client.ConnectionString = parameters.ConnectionString;
			client.Database = parameters.Database;

			return client;
		}

		protected BaseClient()
		{
		}

		public Provider Provider { get; private set; }

		public DbProviderFactory DbProviderFactory { get; private set; }

		public string ConnectionString { get; private set; }

		public string Database { get; private set; }

		public virtual bool CheckExists()
		{
			if (!this.Provider.Scripts.Contains(ScriptType.Exists))
				throw new ArgumentException(Resources.ErrorMissingStatement + ScriptType.Exists.ToString());

			string commandText = string.Format(this.Provider.Scripts[ScriptType.Exists].CommandText, this.Database);

			return Convert.ToInt32(this.ExecuteScalar(commandText, false)) > 0;
		}

		public virtual string GetVersion()
		{
			if (!this.Provider.Scripts.Contains(ScriptType.GetVersion))
				throw new ArgumentException(Resources.ErrorMissingStatement + ScriptType.GetVersion.ToString());

			string commandText = string.Format(this.Provider.Scripts[ScriptType.GetVersion].CommandText, this.Database);

			return this.ExecuteScalar(commandText, true) as string;
		}

		public virtual void SetVersion(string version, string details)
		{
			if (!this.Provider.Scripts.Contains(ScriptType.SetVersion))
				throw new ArgumentException(Resources.ErrorMissingStatement + ScriptType.SetVersion.ToString());

			string commandText = string.Format(this.Provider.Scripts[ScriptType.SetVersion].CommandText, this.Database, version, details);

			this.Execute(commandText, true);
		}

		public virtual void DropDatabase()
		{
			if (!this.Provider.Scripts.Contains(ScriptType.Drop))
				throw new ArgumentException(Resources.ErrorMissingStatement + ScriptType.Drop.ToString());

			string commandText = string.Format(this.Provider.Scripts[ScriptType.Drop].CommandText, this.Database);

			this.Execute(commandText, false);
		}

		public virtual void CreateDatabase()
		{
			if (!this.Provider.Scripts.Contains(ScriptType.Create))
				throw new ArgumentException(Resources.ErrorMissingStatement + ScriptType.Create.ToString());

			string commandText = string.Format(this.Provider.Scripts[ScriptType.Create].CommandText, this.Database);

			this.Execute(commandText, false);
		}

		public void Execute(string script)
		{
			this.Execute(script, true);
		}

		public virtual void Execute(string script, bool changeDatabase)
		{
			using (DbConnection connection = this.DbProviderFactory.CreateConnection())
			{
				connection.ConnectionString = this.ConnectionString;
				connection.Open();
				if (changeDatabase)
					connection.ChangeDatabase(this.Database);
				DbCommand cmd = this.DbProviderFactory.CreateCommand();
				cmd.Connection = connection;
				cmd.CommandText = script;
				cmd.ExecuteNonQuery();
			}
		}

		protected object ExecuteScalar(string script, bool changeDatabase)
		{
			object scalar = 0;

			using (DbConnection connection = this.DbProviderFactory.CreateConnection())
			{
				connection.ConnectionString = this.ConnectionString;
				connection.Open();
				if (changeDatabase)
					connection.ChangeDatabase(this.Database);
				DbCommand cmd = this.DbProviderFactory.CreateCommand();
				cmd.Connection = connection;
				cmd.CommandText = script;
				scalar = cmd.ExecuteScalar();
			}

			return scalar;
		}
	}
}