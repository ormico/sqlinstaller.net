using System;
using System.Collections.Generic;
using System.Text;

namespace SQLInstaller.Console
{
	internal sealed class Constants
	{
		public const string DefaultConfigFile = @".\SQLInstaller.xml";
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
