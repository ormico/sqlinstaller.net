/*  ----------------------------------------------------------------------------
 *  SQL Installer.NET
 *  Microsoft Public License (http://www.microsoft.com/opensource/licenses.mspx#Ms-PL)
 *  ----------------------------------------------------------------------------
 *  File:       DirInfoSorter.cs
 *  Author:     Brian Schloz
 *  ----------------------------------------------------------------------------
 */
namespace SQLInstaller.Core
{
	using System.Collections;
	using System.IO;

	/// <summary>
	/// Basic comparer for sorting directories.
	/// </summary>
	public class DirInfoSorter : IComparer
	{
		#region IComparer Members

		public int Compare(object x, object y)
		{
			return string.Compare(((DirectoryInfo)x).Name, ((DirectoryInfo)y).Name, true);
		}

		#endregion
	}
}