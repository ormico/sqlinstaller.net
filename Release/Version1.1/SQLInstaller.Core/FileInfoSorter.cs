using System;
using System.Collections.Generic;
using System.Text;
using System.IO;

namespace SQLInstaller.Core
{
	public class FileInfoSorter : System.Collections.IComparer
	{
		#region IComparer Members

		public int Compare(object x, object y)
		{
			return string.Compare(((FileInfo)x).FullName, ((FileInfo)y).FullName, true);
		}

		#endregion
	}
}
