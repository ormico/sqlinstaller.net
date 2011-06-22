//-----------------------------------------------------------------------
// <copyright file="Spinner.cs" company="JHOB Technologies, LLC">
//     Copyright © JHOB Technologies, LLC. All rights reserved.
// </copyright>
// <license>Microsoft Public License</license>
// <author>Brian Schloz</author>
//-----------------------------------------------------------------------
namespace SQLInstaller.Console
{
	using System;
	using System.Timers;

	/// <summary>
	/// Spinning/flaming logo.
	/// </summary>
	internal sealed class Spinner : IDisposable
	{
        /// <summary>
        /// A value indicating whether the object has been disposed.
        /// </summary>
		private bool isDisposed;

        /// <summary>
        /// The spin counter.
        /// </summary>
		private int counter;

        /// <summary>
        /// The spin timer.
        /// </summary>
		private Timer timer;

        /// <summary>
        /// The spin text sequence.
        /// </summary>
		private string[] frame = { "|", "/", "-", "\\" };

        /// <summary>
        /// Initializes a new instance of the Spinner class.
        /// </summary>
		public Spinner()
		{
			this.timer = new Timer(Constants.MinSpinTimeout);
            this.timer.Elapsed += new ElapsedEventHandler(this.Timer_Elapsed);
            this.timer.Enabled = false;
            this.timer.AutoReset = true;
		}

        /// <summary>
        /// Method to begin spinning.
        /// </summary>
        /// <param name="timeout">How often to refresh.</param>
		public void Start(double timeout)
		{
			if (timeout >= Constants.MinSpinTimeout)
			{
                this.timer.Interval = timeout;
                this.timer.Enabled = true;
			}
		}

        /// <summary>
        /// Method to stop spinning.
        /// </summary>
		public void Stop()
		{
            this.timer.Enabled = false;
		}

		#region IDisposable Members

        /// <summary>
        /// Method to dispose of the object.
        /// </summary>
		public void Dispose()
		{
            if (!this.isDisposed)
			{
                this.timer.Dispose();
				GC.SuppressFinalize(this);
                this.isDisposed = true;
			}
		}

		#endregion

        /// <summary>
        /// Method for timer callback.
        /// </summary>
        /// <param name="sender">The sender.</param>
        /// <param name="e">The elapsed event arguments.</param>
		private void Timer_Elapsed(object sender, ElapsedEventArgs e)
		{
            this.counter++;
            Console.Write(this.frame[this.counter % this.frame.Length]);
            Console.SetCursorPosition(Console.CursorLeft - this.frame[this.counter % this.frame.Length].Length, Console.CursorTop);
		}
	}
}