using System;
using System.Collections.Generic;
using System.Text;

namespace SQLInstaller.Core
{
	[Flags]
	public enum Options
	{
		None = 0x00,
		Create = 0x01,
		Drop = 0x02,
		Retry = 0x04,
		Verbose = 0x08,
	}
}
