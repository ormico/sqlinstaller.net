using System;
using System.Collections.Generic;
using System.Text;

namespace SQLInstaller.Core.Zip
{
	// Credit this file to DotNetZip Project (http://www.codeplex.com/DotNetZip).
	class ZipConstants
    {
        public const UInt32 EndOfCentralDirectorySignature = 0x06054b50;
        public const int ZipEntrySignature = 0x04034b50;
        public const int ZipEntryDataDescriptorSignature = 0x08074b50;
        public const int ZipDirEntrySignature = 0x02014b50;
    }
}
