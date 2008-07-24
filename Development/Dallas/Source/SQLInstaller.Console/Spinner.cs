using System;
using System.Timers;

namespace SQLInstaller.Console
{
	public class Spinner
	{
		int counter;
		Timer timer;
		private string[] frame = { "|", "/", "-", "\\" };

		public Spinner()
		{
			counter = 0;
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
	}
}
