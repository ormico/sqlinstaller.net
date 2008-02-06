using System;
using System.Collections.Generic;
using System.Text;

namespace SQLInstaller.Core
{
	public class Progress
	{
		private StatusMessage status;
		private string message;
		private int percent;

		public StatusMessage Status
		{
			get { return status; }
		}

		public string Message
		{
			get { return message; }
		}

		public int Percent
		{
			get { return percent; }
		}

		public Progress(StatusMessage status)
		{
			this.status = status;
		}

		public Progress(StatusMessage status, int percent) : this(status)
		{
			this.percent = percent;
		}

		public Progress(StatusMessage status, int percent, string message) : this(status,percent)
		{
			this.message = message;
		}
	}
}
