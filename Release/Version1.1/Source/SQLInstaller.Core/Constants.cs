/*  ----------------------------------------------------------------------------
 *  SQL Installer.NET
 *  Microsoft Public License (http://www.microsoft.com/opensource/licenses.mspx#Ms-PL)
 *  ----------------------------------------------------------------------------
 *  File:       Constants.cs
 *  Author:     Brian Schloz
 *  ----------------------------------------------------------------------------
 */
namespace SQLInstaller.Core
{
	internal sealed class Constants
	{
        public const string RTM = "RTM";
        public const string SqlServer = "SqlServer";
		public const string SQLite = "SQLite";
		public const string Oracle = "Oracle";
        public const string PostGres = "PostGres";
		public const string Firebird = "Firebird";
		public const string DB2 = "DB2";
		public const string CreateDatabase = "CreateDatabase";
		public const string DropDatabase = "DropDatabase";
		public const string DataSource = "Data Source";

		public const string DefaultConfigFile = @".\SQLInstaller.xml";
		public const string DefaultDbName = "DbName";
		public const string DefaultProvider = "SqlServer";
		public const string DefaultConnString = "Data Source=localhost;Integrated Security=SSPI;";
		public const string CipherFile = "SQLInstaller.aes";
		public const string ProviderFactory = "ProviderFactory";

		public const char Pipe = '|';
		public const char SplitChar = ';';
		public const char CarriageReturn = '\r';
		public const char NewLine = '\n';
		public const char Space = ' ';
		public const char BackSlash = '\\';
		public const char ForwardSlash = '/';
		public const string Tab = "\t";
		public const string CurrentDir = @".\";
		public const string SqlPattern = "*.sql";
		public const string XmlExt = ".xml";
		public const string OpenBracket = "[";
		public const string CloseBracketHyphen = "] - ";

		public const string InstallDirectory = "Install";
		public const string UpgradeDirectory = "Upgrade";
		public const string PreInstallFilter = "*.PreInstall.sql";
		public const string TableFilter = "*.Table.sql";
		public const string FunctionFilter = "*.UserDefinedFunction.sql";
		public const string ViewFilter = "*.View.sql";
		public const string StoredProcedureFilter = "*.StoredProcedure.sql";
		public const string TriggerFilter = "*.Trigger.sql";
		public const string PostInstallFilter = "*.PostInstall.sql";
		public const string ForeignKeyFilter = "*.ForeignKey.sql";

		public const string Begin = "BEGIN";
		public const string OracleAlterSession = "ALTER SESSION SET CURRENT_SCHEMA=";

		public const string DB2AlterSession = "SET SCHEMA ";

		public const string FbScript = "FirebirdSql.Data.Isql.FbScript";
		public const string FbBatchExecution = "FirebirdSql.Data.Isql.FbBatchExecution";
		public const string Parse = "Parse";
		public const string Execute = "Execute";
	
		private Constants()
		{
		}
	}
}