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
		public const string CarriageReturn = "\r";
		public const string Wait = "...";

		private Constants()
		{
		}
	}
}