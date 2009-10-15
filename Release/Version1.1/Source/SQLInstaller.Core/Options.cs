/*  ----------------------------------------------------------------------------
 *  SQL Installer.NET
 *  Microsoft Public License (http://www.microsoft.com/opensource/licenses.mspx#Ms-PL)
 *  ----------------------------------------------------------------------------
 *  File:       Options.cs
 *  Author:     Brian Schloz
 *  ----------------------------------------------------------------------------
 */
namespace SQLInstaller.Core
{
	using System;

	/// <summary>
	/// Options enumeration.
	/// </summary>
	[Flags]
	public enum Options
	{
		/// <summary>
		/// No options.
		/// </summary>
		None = 0x00,

		/// <summary>
		/// Create database (if it does not exist)
		/// </summary>
		Create = 0x01,

		/// <summary>
		/// Drop database (if it exists)
		/// </summary>
		Drop = 0x02,

		/// <summary>
		/// Retry the last upgrade/install operation.
		/// </summary>
		Retry = 0x04,

		/// <summary>
		/// Output all status messages.
		/// </summary>
		Verbose = 0x08,
	}
}