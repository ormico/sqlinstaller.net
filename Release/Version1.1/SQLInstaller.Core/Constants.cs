using System;
using System.Collections.Generic;
using System.Text;

namespace SQLInstaller.Core
{
	internal sealed class Constants
	{
		public const string PreInstallFilter = "*.PreInstall.sql";
		public const string TableFilter = "*.Table.sql";
		public const string FunctionFilter = "*.UserDefinedFunction.sql";
		public const string ViewFilter = "*.View.sql";
		public const string StoredProcedureFilter = "*.StoredProcedure.sql";
		public const string TriggerFilter = "*.Trigger.sql";
		public const string PostInstallFilter = "*.PostInstall.sql";
		public const string ForeignKeyFilter = "*.ForeignKey.sql";
	}
}
