using System;
using System.Timers;

namespace SQLInstaller.Console
{
	internal sealed class Spinner : IDisposable
	{
		private bool isDisposed;
		int counter;
		Timer timer;
		private string[] frame = { "|", "/", "-", "\\" };

		public Spinner()
		{
			timer = new Timer(250);
			timer.Elapsed += new ElapsedEventHandler(timer_Elapsed);
			timer.Enabled = false;
			timer.AutoReset = true;
		}

		public void Start(double timeout)
		{
			timer.Interval = timeout;
			timer.Enabled = true;
		}

		public void Stop()
		{
			timer.Enabled = false;
		}

		private void timer_Elapsed(object sender, ElapsedEventArgs e)
		{
			counter++;
			System.Console.Write(frame[counter % frame.Length]);
			System.Console.SetCursorPosition(System.Console.CursorLeft - frame[counter % frame.Length].Length, System.Console.CursorTop);
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
	}
}
