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
		public const string Teradata = "Teradata";
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
		public const string CrLf = "\r\n";
		public const string Tab = "\t";
		public const string CurrentDir = @".\";
		public const string XmlExt = ".xml";
		public const string OpenBracket = "[";
		public const string Dot = ".";
		public const string Asterisk = "*";
		public const string CloseBracketHyphen = "] - ";

		public const string DefaultInstallPath = "Install";
		public const string DefaultUpgradePath = "Upgrade";
		public const string DefaultScriptExtension = ".sql";

		public const string Begin = "BEGIN";
		public const string OracleAlterSession = "ALTER SESSION SET CURRENT_SCHEMA=";

		public const string DB2AlterSession = "SET SCHEMA ";
		public const string TeradataAlterSession = "DATABASE ";

		public const string FbScript = "FirebirdSql.Data.Isql.FbScript";
		public const string FbBatchExecution = "FirebirdSql.Data.Isql.FbBatchExecution";
		public const string Parse = "Parse";
		public const string Execute = "Execute";
	
		private Constants()
		{
		}
	}
}