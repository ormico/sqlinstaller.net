/*  ----------------------------------------------------------------------------
 *  SQL Installer.NET
 *  Microsoft Public License (http://www.microsoft.com/opensource/licenses.mspx#Ms-PL)
 *  ----------------------------------------------------------------------------
 *  File:       ProviderType.cs
 *  Author:     Brian Schloz
 *  ----------------------------------------------------------------------------
 */
namespace SQLInstaller.Core
{
	/// <summary>
	/// Provider type enumeration.
	/// </summary>
	public enum ProviderType
	{
		/// <summary>
		/// Microsoft SQL Server (2005 or above).
		/// </summary>
		SqlServer,

		/// <summary>
		/// Oracle (9i or above)
		/// </summary>
		Oracle,

		/// <summary>
		/// PostGreSQL (8.0 or above)
		/// </summary>
		PostGres,
	}
}