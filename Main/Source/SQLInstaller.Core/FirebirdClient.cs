/*  ----------------------------------------------------------------------------
 *  SQL Installer.NET
 *  Microsoft Public License (http://www.microsoft.com/opensource/licenses.mspx#Ms-PL)
 *  ----------------------------------------------------------------------------
 *  File:       FirebirdClient.cs
 *  Author:     Brian Schloz
 *  ----------------------------------------------------------------------------
 */
namespace SQLInstaller.Core
{
	using System;
	using System.Data.Common;
	using System.IO;
	using System.Reflection;

	/// <summary>
	/// Firebird client class.
	/// </summary>
	public sealed class FirebirdClient : BaseClient
	{
		public FirebirdClient()
		{
		}

		public override bool CheckExists()
		{
			bool exists = false;

			try
			{
				using (DbConnection connection = this.DbProviderFactory.CreateConnection())
				{
					connection.ConnectionString = this.ConnectionString;
					connection.Open();
					exists = true;
				}
			}
			catch (Exception) { }

			return exists;
		}

		public override void CreateDatabase()
		{
			this.ExecuteConnectionMethod(Constants.CreateDatabase);
		}

		public override void DropDatabase()
		{
			this.ExecuteConnectionMethod(Constants.DropDatabase);
		}

		/// <devdoc>
		/// The Firebird .NET provider gives you some helper functions when dealing
		/// with batch scripts. We use reflection here to avoid having to reference
		/// the assemblies in the project. However, it is possible that future
		/// releases of the Firebird .NET data provider would break this code 
		/// (e.g. if the class names are changed).
		/// </devdoc>
		public override void Execute(string script, bool changeDatabase)
		{
			using (DbConnection connection = this.DbProviderFactory.CreateConnection())
			{
				connection.ConnectionString = this.ConnectionString;
				connection.Open();

				Assembly assembly = Assembly.GetAssembly(this.DbProviderFactory.GetType());
				object parser = assembly.CreateInstance(Constants.FbScript, true, BindingFlags.CreateInstance, null, new object[] { new StringReader(script) }, null, null);

				MethodInfo methodInfo = parser.GetType().GetMethod(Constants.Parse, Type.EmptyTypes);
				methodInfo.Invoke(parser, null);

				object batch = assembly.CreateInstance(Constants.FbBatchExecution, true, BindingFlags.CreateInstance, null, new object[] { connection, parser }, null, null);

				methodInfo = batch.GetType().GetMethod(Constants.Execute, Type.EmptyTypes);
				methodInfo.Invoke(batch, null);
			}
		}

		private void ExecuteConnectionMethod(string commandText)
		{
			Type connectionType = this.DbProviderFactory.CreateConnection().GetType();
			MethodInfo methodInfo = connectionType.GetMethod(commandText, new Type[] { typeof(string) });
			if (methodInfo == null)
				throw new ApplicationException(Resources.ErrorConnectionMethod + commandText);

			methodInfo.Invoke(null, new object[] { this.ConnectionString });
		}
	}
}