/*  ----------------------------------------------------------------------------
 *  SQL Installer.NET
 *  Microsoft Public License (http://www.microsoft.com/opensource/licenses.mspx#Ms-PL)
 *  ----------------------------------------------------------------------------
 *  File:       ScriptType.cs
 *  Author:     Brian Schloz
 *  ----------------------------------------------------------------------------
 */
namespace SQLInstaller.Core
{
	/// <summary>
	/// Script types.
	/// </summary>
	public enum ScriptType
	{
		/// <summary>
		/// Script to check if database exists.
		/// </summary>
		Exists,

		/// <summary>
		/// Script to drop database.
		/// </summary>
		Drop,

		/// <summary>
		/// Script to create database.
		/// </summary>
		Create,

		/// <summary>
		/// Script to get database version.
		/// </summary>
		GetVersion,

		/// <summary>
		/// Script to set database version.
		/// </summary>
		SetVersion,
	}
}