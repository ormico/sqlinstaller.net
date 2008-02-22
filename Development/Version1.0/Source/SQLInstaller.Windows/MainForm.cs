using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.IO;
using System.Threading;
using System.Diagnostics;
using System.Windows.Forms;

using SQLInstaller.Core;

namespace SQLInstaller.Windows
{
	public partial class MainForm : Form
	{
		private Runtime installer;
		private Schema schema;
		private StringBuilder log;

		public delegate void InstallMethod(Schema schema);

		static void InstallCallback(IAsyncResult iar)
		{
			InstallMethod im = (InstallMethod)iar.AsyncState;
			im.EndInvoke(iar);
		}

		public MainForm()
		{
			InitializeComponent();
			log = new StringBuilder();
		}

		private void backgroundWorker1_DoWork(object sender, DoWorkEventArgs e)
		{
			try
			{
				log.Remove(0, log.Length);
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
					log.AppendLine(prog.Message);
					break;
				case StatusMessage.Complete:
				case StatusMessage.Detail:
					this.label3.Text = prog.Message;
					log.AppendLine(prog.Message);
					break;
				case StatusMessage.Exit:
					if (prog.Percent > 0 && prog.Message != null && prog.Message.Length > 0)
					{
						this.label4.Text = prog.Message;
						log.AppendLine(prog.Message);
					}
					else
						this.label4.Text = "Done.";
					this.progressBar1.Value = 100;
					if (prog.Percent > 0)
						this.labelFinish.Text = "Installation/Upgrade had errors. Please check the installation log.";
					this.linkLog.Visible = true;					
					this.wizardUpgrade.CurrentStepIndex = 4;
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
			switch (this.wizardUpgrade.CurrentStepIndex)
			{
				case 0: // Welcome Screen
					this.wizardUpgrade.BackButtonEnabled = false;
					this.wizardUpgrade.NextButtonEnabled = true;
					break;
				case 1: // Enter SQL details
					this.wizardUpgrade.BackButtonEnabled = true;
					this.wizardUpgrade.NextButtonEnabled = true;
					break;
				case 2: // Confirm
					this.labelSummary.Text = "Connecting to " + this.txtServer.Text + "...";
					this.Refresh();
					installer = new Runtime(this.textScripts.Text, RuntimeFlag.Create | RuntimeFlag.Verbose);
					schema = installer.Prepare(this.txtServer.Text, this.txtDatabase.Text);

					if (schema.Version.ToLower().Equals(schema.Upgrade.ToLower()))
					{
						// Set finish text to 'already at version'
						this.labelFinish.Text = schema.Database + " is already at version " + schema.Version + ".";
						this.wizardUpgrade.CurrentStepIndex = 4;
					}
					this.panelSummary.Visible = true;
					this.labelConfirmDatabase.Text = schema.Database;
					this.labelConfirmServer.Text = schema.Server;
					if (schema.Version.Length == 0)
					{
						this.labelConfirmVersion.Text = "*NEW INSTALL*";
						this.labelConfirmUpgradeBy.Text = "N/A";
					}
					else
					{
						this.labelConfirmVersion.Text = schema.Version;
						this.labelConfirmUpgradeBy.Text = schema.UpgradeBy;
					}
					this.labelConfirmUpgrade.Text = schema.Upgrade;
					this.labelSummary.Text = "If this is correct click next to complete the database installation/upgrade.";
					this.Refresh();
					this.wizardUpgrade.BackButtonEnabled = true;
					this.wizardUpgrade.NextButtonEnabled = true;
					break;
				case 3: // Run
					this.wizardUpgrade.BackButtonEnabled = false;
					this.wizardUpgrade.NextButtonEnabled = false;
					//this.wizardControl1.CurrentStepIndex = 3;
					this.label3.Text = "Connecting to " + this.txtServer.Text + "...";
					backgroundWorker1.RunWorkerAsync();
					break;
				case 4: // Finished
					this.wizardUpgrade.BackButtonVisible = false;
					this.wizardUpgrade.CancelButtonVisible = false;
					this.wizardUpgrade.NextButtonEnabled = true;
					break;
			}
		}

		private void buttonScriptFolder_Click(object sender, EventArgs e)
		{
			DialogResult rslt = folderBrowserDialog1.ShowDialog();
			if (rslt == DialogResult.OK)
			{
				textScripts.Text = folderBrowserDialog1.SelectedPath;
			}
		}

		private void linkLog_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
		{
			string tempFile = Path.Combine(Application.LocalUserAppDataPath, "log" + Guid.NewGuid().ToString());
			File.WriteAllText(tempFile, log.ToString());
			Process.Start("Notepad.exe", tempFile);
		}
	}
}