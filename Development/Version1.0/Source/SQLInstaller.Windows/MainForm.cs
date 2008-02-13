using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Threading;
using System.Windows.Forms;

using SQLInstaller.Core;

namespace SQLInstaller.Windows
{
	public partial class MainForm : Form
	{
		public delegate void InstallMethod(Schema schema);

		static void InstallCallback(IAsyncResult iar)
		{
			InstallMethod im = (InstallMethod)iar.AsyncState;
			im.EndInvoke(iar);
		}

		public MainForm()
		{
			InitializeComponent();
		}

		private void backgroundWorker1_DoWork(object sender, DoWorkEventArgs e)
		{
			Runtime installer = null;
			try
			{
				installer = new Runtime(string.Empty, RuntimeFlag.Create | RuntimeFlag.Verbose);
				Schema schema = installer.Prepare(this.textBox1.Text, this.textBox2.Text);

				InstallMethod im = new InstallMethod(installer.Create);
				AsyncCallback cb = new AsyncCallback(InstallCallback);
				IAsyncResult asyncResult = im.BeginInvoke(schema, cb, im);

				WaitHandle[] bg = new WaitHandle[] { asyncResult.AsyncWaitHandle };
				Progress prog = new Progress(StatusMessage.Running);
				while (prog.Status != StatusMessage.Exit)
				{
					prog = installer.GetProgress(!WaitHandle.WaitAll(bg, 100, true));
					backgroundWorker1.ReportProgress(prog.Percent, prog);
				}
			}
			catch (Exception ex)
			{
				Progress prog = new Progress(StatusMessage.Exit, 100, ex.Message);
				backgroundWorker1.ReportProgress(prog.Percent, prog);
			}
		}

		private void SqlProgressChanged(object sender, ProgressChangedEventArgs e)
		{
			Progress prog = e.UserState as Progress;
			
			switch (prog.Status)
			{
				case StatusMessage.Start:
					this.label4.Text = prog.Message + "...";
					break;
				case StatusMessage.Complete:
				case StatusMessage.Detail:
					this.label3.Text = prog.Message;
					break;
				case StatusMessage.Exit:
					if (prog.Percent > 0 && prog.Message != null && prog.Message.Length > 0)
						this.label4.Text = prog.Message;
					else
						this.label4.Text = "Done.";
					this.progressBar1.Value = 100;
					this.label3.Text = "Completed with " + prog.Percent + " errors.";
					this.wizardControl1.CurrentStepIndex = 3;
					break;
				case StatusMessage.Progress:
					if ( prog.Percent <= 100 )
						this.progressBar1.Value = prog.Percent;
					break;
				case StatusMessage.Running:
				default:
					break;
			}
		}

		void wizardControl1_FinishButtonClick(object sender, System.EventArgs e)
		{
			Application.Exit();
		}

		void wizardControl1_CancelButtonClick(object sender, System.EventArgs e)
		{
			if (backgroundWorker1.IsBusy)
				backgroundWorker1.CancelAsync();
			Application.Exit();
		}


		void wizardControl1_CurrentStepIndexChanged(object sender, System.EventArgs e)
		{
			switch (this.wizardControl1.CurrentStepIndex)
			{
				case 0: // Welcome Screen
					this.wizardControl1.BackButtonEnabled = false;
					this.wizardControl1.NextButtonEnabled = true;
					break;
				case 1: // Enter SQL details
					this.wizardControl1.BackButtonEnabled = true;
					this.wizardControl1.NextButtonEnabled = true;
					break;
				case 2: // Run
					this.wizardControl1.BackButtonEnabled = false;
					this.wizardControl1.NextButtonEnabled = false;
					//this.wizardControl1.CurrentStepIndex = 3;
					this.label3.Text = "Connecting to " + this.textBox1.Text + "...";
					backgroundWorker1.RunWorkerAsync();
					break;
				case 3: // Finished
					this.wizardControl1.BackButtonVisible = false;
					this.wizardControl1.CancelButtonVisible = false;
					this.wizardControl1.NextButtonEnabled = true;
					break;
			}
		}
	}
}