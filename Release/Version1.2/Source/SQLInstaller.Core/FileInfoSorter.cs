//-----------------------------------------------------------------------
// <copyright file="FileInfoSorter.cs" company="JHOB Technologies, LLC">
//     Copyright © JHOB Technologies, LLC. All rights reserved.
// </copyright>
// <license>Microsoft Public License</license>
// <author>Brian Schloz</author>
//-----------------------------------------------------------------------
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

        /// <summary>
        /// Compares two objects.
        /// </summary>
        /// <param name="x">First object to compare.</param>
        /// <param name="y">Second object to compare.</param>
        /// <returns>The relative position in sort order of the two objects.</returns>
        public int Compare(object x, object y)
		{
			return string.Compare(((FileInfo)x).FullName, ((FileInfo)y).FullName, true);
		}

		#endregion
	}
}