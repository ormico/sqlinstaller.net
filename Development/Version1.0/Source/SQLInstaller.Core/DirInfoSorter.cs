using System;
using System.Collections.Generic;
using System.Text;
using System.IO;

namespace SQLInstaller.Core
{
	public class DirInfoSorter : System.Collections.IComparer
	{
		#region IComparer Members

		public int Compare(object x, object y)
		{
			return string.Compare(((DirectoryInfo)x).Name, ((DirectoryInfo)y).Name);
		}

		#endregion
	}
}
