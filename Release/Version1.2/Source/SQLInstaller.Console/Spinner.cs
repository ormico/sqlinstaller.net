/*  ----------------------------------------------------------------------------
 *  SQL Installer.NET
 *  Microsoft Public License (http://www.microsoft.com/opensource/licenses.mspx#Ms-PL)
 *  ----------------------------------------------------------------------------
 *  File:       Spinner.cs
 *  Author:     Brian Schloz
 *  ----------------------------------------------------------------------------
 */
namespace SQLInstaller.Console
{
	using System;
	using System.Timers;

	/// <summary>
	/// Spinning/flaming logo.
	/// </summary>
	internal sealed class Spinner : IDisposable
	{
		private bool isDisposed;
		private int counter;
		private Timer timer;
		private string[] frame = { "|", "/", "-", "\\" };

		public Spinner()
		{
			timer = new Timer(Constants.MinSpinTimeout);
			timer.Elapsed += new ElapsedEventHandler(Timer_Elapsed);
			timer.Enabled = false;
			timer.AutoReset = true;
		}

		public void Start(double timeout)
		{
			if (timeout >= Constants.MinSpinTimeout)
			{
				timer.Interval = timeout;
				timer.Enabled = true;
			}
		}

		public void Stop()
		{
			timer.Enabled = false;
		}

		#region IDisposable Members

		public void Dispose()
		{
			if (!isDisposed)
			{
				timer.Dispose();
				GC.SuppressFinalize(this);
				isDisposed = true;
			}
		}

		#endregion

		private void Timer_Elapsed(object sender, ElapsedEventArgs e)
		{
			counter++;
			Console.Write(frame[counter % frame.Length]);
			Console.SetCursorPosition(Console.CursorLeft - frame[counter % frame.Length].Length, Console.CursorTop);
		}
	}
}