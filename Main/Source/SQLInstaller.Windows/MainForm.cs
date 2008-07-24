using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.IO;
using System.Net;
using System.Threading;
using System.Diagnostics;
using System.Windows.Forms;
using Microsoft.Win32;

using SQLInstaller.Core;
using SQLInstaller.Core.Zip;

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
			Cursor.Current = Cursors.WaitCursor;
			try
			{
				switch (this.wizardUpgrade.CurrentStepIndex)
				{
					case 0: // Welcome Screen
						this.wizardUpgrade.BackButtonEnabled = false;
						this.wizardUpgrade.NextButtonEnabled = true;
						break;
					case 1: // Enter SQL details
						// get values from registry
						try
						{
							using (RegistryKey installerKey = Registry.LocalMachine.OpenSubKey(@"SOFTWARE\JHOB Technologies\SQLInstaller"))
							{
								this.textScripts.Text = installerKey.GetValue("Scripts", string.Empty) as string;
								this.txtServer.Text = installerKey.GetValue("Server", string.Empty) as string;
								this.txtDatabase.Text = installerKey.GetValue("Database", string.Empty) as string;
								installerKey.Close();
							}
						}
						catch (Exception) { }
						this.panelSummary.Visible = false;
						this.wizardUpgrade.BackButtonEnabled = true;
						this.wizardUpgrade.NextButtonEnabled = true;
						break;
					case 2: // Confirm
						this.wizardUpgrade.BackButtonEnabled = false;
						this.wizardUpgrade.NextButtonEnabled = false;
						this.wizardUpgrade.CancelButtonEnabled = false;

						string targetDir = this.textScripts.Text;
						if (targetDir.ToLower().EndsWith("zip"))
						{
							this.labelSummary.Text = "Downloading and extracting " + Path.GetFileName(targetDir) + "...";
							this.Refresh();
							if (targetDir.ToLower().StartsWith(Uri.UriSchemeHttp))
							{
								string tempFile = Path.Combine(Application.LocalUserAppDataPath, Path.GetFileName(targetDir));
								Download(targetDir, tempFile);
								targetDir = tempFile;
							}
							using (ZipFile zip = ZipFile.Read(targetDir))
							{
								string zipPath = Path.Combine(Application.LocalUserAppDataPath, this.txtDatabase.Text);
								if (Directory.Exists(zipPath))
									Directory.Delete(zipPath, true);

								zip.ExtractAll(zipPath, true);
								targetDir = zipPath;
							}

						}

						this.labelSummary.Text = "Connecting to " + this.txtServer.Text + "...";
						this.Refresh();
						installer = new Runtime(targetDir, RuntimeFlag.Create | RuntimeFlag.Verbose);

						schema = installer.Prepare(ProviderType.SqlServer, this.txtServer.Text, this.txtDatabase.Text, null, null);

						if (schema.IsCurrent)
						{
							// Set finish text to 'already at version'
							this.labelFinish.Text = schema.Provider.Database + " is already at version " + schema.Version + ".";
							this.wizardUpgrade.CurrentStepIndex = 4;
							return;
						}
						this.panelSummary.Visible = true;
						this.labelConfirmDatabase.Text = schema.Provider.Database;
						this.labelConfirmServer.Text = schema.Provider.Server;
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
						this.wizardUpgrade.CancelButtonEnabled = true;
						break;
					case 3: // Run
						try
						{
							using (RegistryKey installerKey = Registry.LocalMachine.OpenSubKey(@"SOFTWARE\JHOB Technologies\SQLInstaller", true))
							{
								installerKey.SetValue("Scripts", this.textScripts.Text, RegistryValueKind.String);
								installerKey.SetValue("Server", this.txtServer.Text, RegistryValueKind.String);
								installerKey.SetValue("Database", this.txtDatabase.Text, RegistryValueKind.String);
								installerKey.Close();
							}
						}
						catch (Exception) { }
						this.wizardUpgrade.BackButtonVisible = false;
						this.wizardUpgrade.NextButtonVisible = false;
						this.wizardUpgrade.CancelButtonVisible = false;
						this.label3.Text = "Connecting to " + this.txtServer.Text + "...";
						backgroundWorker1.RunWorkerAsync();
						break;
					case 4: // Finished
						this.wizardUpgrade.BackButtonEnabled = false;
						this.wizardUpgrade.BackButtonVisible = false;
						this.wizardUpgrade.CancelButtonEnabled = false;
						this.wizardUpgrade.CancelButtonVisible = false;
						this.wizardUpgrade.NextButtonVisible = true;
						this.wizardUpgrade.NextButtonEnabled = true;
						break;
				}
			}
			catch (Exception ex)
			{
				this.labelFinish.Text = ex.Message;
				this.linkLog.Visible = false;
				this.wizardUpgrade.CurrentStepIndex = 4;
			}
			finally
			{
				Cursor.Current = Cursors.Default;
			}
		}

		private static void Download(string serverPath, string tempPath)
		{
			HttpWebRequest wr = null;
			HttpWebResponse wp = null;
			BinaryReader br = null;
			BinaryWriter bw = null;
			FileStream fs = null;

			try
			{
				// Clean out temp folder if it exists from a previous install.
				if (Directory.Exists(Path.GetDirectoryName(tempPath)))
				{
					if (File.Exists(tempPath))
						File.Delete(tempPath);
					Directory.Delete(Path.GetDirectoryName(tempPath), true);
				}
				Directory.CreateDirectory(Path.GetDirectoryName(tempPath));

				fs = File.Create(tempPath);

				bw = new BinaryWriter(fs);

				wr = (HttpWebRequest)WebRequest.Create(new Uri(serverPath));
				wr.Credentials = CredentialCache.DefaultCredentials;
				if (wr.Proxy != null && wr.Proxy.Credentials == null)
					wr.Proxy.Credentials = CredentialCache.DefaultCredentials;

				wp = (HttpWebResponse)wr.GetResponse();
				Stream s = wp.GetResponseStream();
				if (s != null)
				{
					br = new BinaryReader(s);
					byte[] buffer = new byte[0x2000];
					int bytes = 0;
					while ((bytes = br.Read(buffer, 0, buffer.Length)) > 0)
					{
						bw.Write(buffer, 0, bytes);
					}
				}
			}
			catch (Exception)
			{
				if (wr != null)
					wr.Abort();
				throw;
			}
			finally
			{
				if (br != null)
					br.Close();
				if (bw != null)
					bw.Close();
				if (wp != null)
					wp.Close();
				if (fs != null)
					fs.Close();
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