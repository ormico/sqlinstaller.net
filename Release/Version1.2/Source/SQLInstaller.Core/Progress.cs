/*  ----------------------------------------------------------------------------
 *  SQL Installer.NET
 *  Microsoft Public License (http://www.microsoft.com/opensource/licenses.mspx#Ms-PL)
 *  ----------------------------------------------------------------------------
 *  File:       Progress.cs
 *  Author:     Brian Schloz
 *  ----------------------------------------------------------------------------
 */
namespace SQLInstaller.Core
{
	/// <summary>
	/// Progress class.
	/// </summary>
	public sealed class Progress
	{
		private StatusMessage status;
		private string message;
		private int percent;

		public Progress(StatusMessage status)
		{
			this.status = status;
		}

		public Progress(StatusMessage status, int percent)
			: this(status)
		{
			this.percent = percent;
		}

		public Progress(StatusMessage status, int percent, string message)
			: this(status, percent)
		{
			this.message = message;
		}

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
	}
}