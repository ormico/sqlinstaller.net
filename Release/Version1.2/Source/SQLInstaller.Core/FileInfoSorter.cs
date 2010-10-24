/*  ----------------------------------------------------------------------------
 *  SQL Installer.NET
 *  Microsoft Public License (http://www.microsoft.com/opensource/licenses.mspx#Ms-PL)
 *  ----------------------------------------------------------------------------
 *  File:       FileInfoSorter.cs
 *  Author:     Brian Schloz
 *  ----------------------------------------------------------------------------
 */
namespace SQLInstaller.Core
{
	using System;
	using System.Collections;
	using System.IO;

	/// <summary>
	/// Basic comparison for FileInfo
	/// </summary>
	public class FileInfoSorter : IComparer
	{
		#region IComparer Members

		public int Compare(object x, object y)
		{
			return string.Compare(((FileInfo)x).FullName, ((FileInfo)y).FullName, true);
		}

		#endregion
	}
}