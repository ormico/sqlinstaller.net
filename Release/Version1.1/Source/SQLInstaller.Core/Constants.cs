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
		public const char SplitChar = ';';
		public const char CarriageReturn = '\r';
		public const char NewLine = '\n';
		public const char Space = ' ';
		public const char BackSlash = '\\';
		public const char ForwardSlash = '/';
		public const string SqlPattern = "*.sql";
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

		public const string SqlSelectExists = "SELECT COUNT(*) FROM sysdatabases WHERE name = @database_name";
		public const string SqlParmDatabaseName = "@database_name";
		public const string SqlSelectVersion = "SELECT ISNULL(value,'') FROM fn_listextendedproperty(@name, default, default, default, default, default, default)";
		public const string SqlParmName = "@name";
		public const string SqlValueVersion = "Version";
		public const string SqlValueUpdatedBy = "UpdatedBy";
		public const string SqlSetVersion = "IF NOT EXISTS (SELECT value FROM fn_listextendedproperty(@propname, default, default, default, default, default, default)) EXEC sp_addextendedproperty @propname, @propvalue ELSE EXEC sp_updateextendedproperty @propname, @propvalue";
		public const string SqlParmPropName = "@propname";
		public const string SqlParmPropValue = "@propvalue";
		public const string SqlSetSingleUser = "ALTER DATABASE {0} SET SINGLE_USER";
		public const string SqlWithRollback = " WITH ROLLBACK IMMEDIATE";
		public const string SqlDropDatabase = "DROP DATABASE ";

		public const string OracleSelectExists = "SELECT COUNT(*) FROM all_users WHERE username = UPPER(:database_name)";
		public const string OracleParmDatabaseName = ":database_name";
		public const string OracleSelectVersion = "SELECT VERSION_INFO || ';' || UPGRADEBY FROM {0}.DB_VERSION";
		public const string OracleCreateVersionView = "CREATE OR REPLACE VIEW {0}.DB_VERSION AS SELECT '{1}' AS VERSION_INFO, '{2}' AS UPGRADEBY FROM DUAL";
		public const string OracleDropUser = "DROP USER {0} CASCADE";
		public const string OracleCreateUser = "CREATE USER {0} IDENTIFIED BY {0}";
		public const string OracleGrantUser = "GRANT UNLIMITED TABLESPACE, CREATE SESSION, CREATE TABLE, CREATE VIEW, CREATE PROCEDURE, CREATE SEQUENCE, CREATE ROLE, CREATE SYNONYM, CREATE TRIGGER, CREATE TYPE, CREATE MATERIALIZED VIEW, CREATE OPERATOR, CREATE CLUSTER, CREATE INDEXTYPE TO {0}";
		public const string OracleBegin = "BEGIN";

		public const string PostGresSelectExists = "SELECT COUNT(*) FROM pg_catalog.pg_database WHERE datname = :database_name";
		public const string PostGresParmDatabaseName = ":database_name";
		public const string PostGresSelectVersion = "SELECT version_info FROM db_version";
		public const string PostGresCreateVersionView = "CREATE OR REPLACE VIEW db_version AS SELECT CAST('{0};{1}' AS VARCHAR(250)) AS version_info";
		public const string PostGresDropDatabase = "DROP DATABASE ";
		public const string PostGresCreateDatabase = "CREATE DATABASE ";
	
		private Constants()
		{
		}
	}
}