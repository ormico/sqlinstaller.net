/*  ----------------------------------------------------------------------------
 *  SQL Installer.NET
 *  Microsoft Public License (http://www.microsoft.com/opensource/licenses.mspx#Ms-PL)
 *  ----------------------------------------------------------------------------
 *  File:       Constants.cs
 *  Author:     Brian Schloz
 *  ----------------------------------------------------------------------------
 */
namespace SQLInstaller.Console
{
	/// <summary>
	/// Constants class.
	/// </summary>
	internal sealed class Constants
	{
		public const double MinSpinTimeout = 250;
		public const char Pipe = '|';
		public const string DefaultConfigFile = @".\SQLInstaller.xml";
		public const string CipherFile = "SQLInstaller.aes";
		public const string CarriageReturn = "\r";
		public const string Tab = "\t";
		public const string Wait = "...";
		public const string CurrentDir = ".";
		public const string DefaultDbName = "DbName";
		public const string DefaultConnString = "Data Source=localhost;Integrated Security=SSPI;";

		private Constants()
		{
		}
	}
}