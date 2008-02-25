namespace SQLInstaller.Windows
{
	partial class MainForm
	{
		/// <summary>
		/// Required designer variable.
		/// </summary>
		private System.ComponentModel.IContainer components = null;

		/// <summary>
		/// Clean up any resources being used.
		/// </summary>
		/// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
		protected override void Dispose(bool disposing)
		{
			if (disposing && (components != null))
			{
				components.Dispose();
			}
			base.Dispose(disposing);
		}

		#region Windows Form Designer generated code

		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MainForm));
			this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
			this.folderBrowserDialog1 = new System.Windows.Forms.FolderBrowserDialog();
			this.wizardUpgrade = new SQLInstaller.Core.Wizard.WizardControl();
			this.startStep = new SQLInstaller.Core.Wizard.StartStep();
			this.stepSettings = new SQLInstaller.Core.Wizard.IntermediateStep();
			this.buttonScriptFolder = new System.Windows.Forms.Button();
			this.textScripts = new System.Windows.Forms.TextBox();
			this.label1 = new System.Windows.Forms.Label();
			this.txtDatabase = new System.Windows.Forms.TextBox();
			this.txtServer = new System.Windows.Forms.TextBox();
			this.lblDatabase = new System.Windows.Forms.Label();
			this.lblServer = new System.Windows.Forms.Label();
			this.stepConfirm = new SQLInstaller.Core.Wizard.IntermediateStep();
			this.panelSummary = new System.Windows.Forms.Panel();
			this.labelUpgradeBy = new System.Windows.Forms.Label();
			this.labelConfirmUpgradeBy = new System.Windows.Forms.Label();
			this.labelConfirmServer = new System.Windows.Forms.Label();
			this.labelConfirmDatabase = new System.Windows.Forms.Label();
			this.labelServer2 = new System.Windows.Forms.Label();
			this.labelDatabase2 = new System.Windows.Forms.Label();
			this.labelConfirmUpgrade = new System.Windows.Forms.Label();
			this.labelConfirmVersion = new System.Windows.Forms.Label();
			this.labelUpgrade = new System.Windows.Forms.Label();
			this.labelVersion = new System.Windows.Forms.Label();
			this.labelSummary = new System.Windows.Forms.Label();
			this.stepProgress = new SQLInstaller.Core.Wizard.IntermediateStep();
			this.label4 = new System.Windows.Forms.Label();
			this.label3 = new System.Windows.Forms.Label();
			this.progressBar1 = new System.Windows.Forms.ProgressBar();
			this.stepFinish = new SQLInstaller.Core.Wizard.FinishStep();
			this.linkLog = new System.Windows.Forms.LinkLabel();
			this.labelFinish = new System.Windows.Forms.Label();
			this.stepSettings.SuspendLayout();
			this.stepConfirm.SuspendLayout();
			this.panelSummary.SuspendLayout();
			this.stepProgress.SuspendLayout();
			this.stepFinish.SuspendLayout();
			this.SuspendLayout();
			// 
			// backgroundWorker1
			// 
			this.backgroundWorker1.WorkerReportsProgress = true;
			this.backgroundWorker1.WorkerSupportsCancellation = true;
			this.backgroundWorker1.DoWork += new System.ComponentModel.DoWorkEventHandler(this.backgroundWorker1_DoWork);
			this.backgroundWorker1.ProgressChanged += new System.ComponentModel.ProgressChangedEventHandler(this.SqlProgressChanged);
			// 
			// wizardUpgrade
			// 
			this.wizardUpgrade.BackButtonEnabled = false;
			this.wizardUpgrade.BackButtonVisible = true;
			this.wizardUpgrade.CancelButtonEnabled = true;
			this.wizardUpgrade.CancelButtonVisible = true;
			this.wizardUpgrade.Dock = System.Windows.Forms.DockStyle.Fill;
			this.wizardUpgrade.EulaButtonEnabled = true;
			this.wizardUpgrade.EulaButtonText = "eula";
			this.wizardUpgrade.EulaButtonVisible = false;
			this.wizardUpgrade.HelpButtonEnabled = true;
			this.wizardUpgrade.HelpButtonVisible = false;
			this.wizardUpgrade.Location = new System.Drawing.Point(0, 0);
			this.wizardUpgrade.Name = "wizardUpgrade";
			this.wizardUpgrade.NextButtonEnabled = true;
			this.wizardUpgrade.NextButtonVisible = true;
			this.wizardUpgrade.Size = new System.Drawing.Size(533, 410);
			this.wizardUpgrade.WizardSteps.AddRange(new SQLInstaller.Core.Wizard.WizardStep[] {
            this.startStep,
            this.stepSettings,
            this.stepConfirm,
            this.stepProgress,
            this.stepFinish});
			this.wizardUpgrade.CurrentStepIndexChanged += new System.EventHandler(this.wizardControl1_CurrentStepIndexChanged);
			this.wizardUpgrade.FinishButtonClick += new System.EventHandler(this.wizardControl1_FinishButtonClick);
			this.wizardUpgrade.CancelButtonClick += new System.EventHandler(this.wizardControl1_CancelButtonClick);
			// 
			// startStep
			// 
			this.startStep.BindingImage = null;
			this.startStep.ForeColor = System.Drawing.SystemColors.ControlText;
			this.startStep.Icon = ((System.Drawing.Image)(resources.GetObject("startStep.Icon")));
			this.startStep.LeftPair = ((SQLInstaller.Core.Wizard.ColorPair)(resources.GetObject("startStep.LeftPair")));
			this.startStep.Name = "startStep";
			this.startStep.Subtitle = "Click next to begin the installation.";
			this.startStep.Title = "Database Upgrade Wizard";
			// 
			// stepSettings
			// 
			this.stepSettings.BindingImage = ((System.Drawing.Image)(resources.GetObject("stepSettings.BindingImage")));
			this.stepSettings.Controls.Add(this.buttonScriptFolder);
			this.stepSettings.Controls.Add(this.textScripts);
			this.stepSettings.Controls.Add(this.label1);
			this.stepSettings.Controls.Add(this.txtDatabase);
			this.stepSettings.Controls.Add(this.txtServer);
			this.stepSettings.Controls.Add(this.lblDatabase);
			this.stepSettings.Controls.Add(this.lblServer);
			this.stepSettings.ForeColor = System.Drawing.SystemColors.ControlText;
			this.stepSettings.Name = "stepSettings";
			this.stepSettings.Subtitle = "Enter name of SQL Server and Database.";
			this.stepSettings.Title = "Database Settings";
			this.stepSettings.TitleAppearence = ((SQLInstaller.Core.Wizard.TextAppearence)(resources.GetObject("stepSettings.TitleAppearence")));
			// 
			// buttonScriptFolder
			// 
			this.buttonScriptFolder.Location = new System.Drawing.Point(470, 137);
			this.buttonScriptFolder.Name = "buttonScriptFolder";
			this.buttonScriptFolder.Size = new System.Drawing.Size(24, 21);
			this.buttonScriptFolder.TabIndex = 1;
			this.buttonScriptFolder.TabStop = false;
			this.buttonScriptFolder.Text = "...";
			this.buttonScriptFolder.UseVisualStyleBackColor = true;
			this.buttonScriptFolder.Click += new System.EventHandler(this.buttonScriptFolder_Click);
			// 
			// textScripts
			// 
			this.textScripts.Location = new System.Drawing.Point(167, 138);
			this.textScripts.Name = "textScripts";
			this.textScripts.Size = new System.Drawing.Size(297, 20);
			this.textScripts.TabIndex = 0;
			// 
			// label1
			// 
			this.label1.AutoSize = true;
			this.label1.Location = new System.Drawing.Point(83, 141);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(81, 13);
			this.label1.TabIndex = 4;
			this.label1.Text = "Script Location:";
			// 
			// txtDatabase
			// 
			this.txtDatabase.Location = new System.Drawing.Point(167, 193);
			this.txtDatabase.Name = "txtDatabase";
			this.txtDatabase.Size = new System.Drawing.Size(100, 20);
			this.txtDatabase.TabIndex = 2;
			this.txtDatabase.Text = "[DatabaseName]";
			// 
			// txtServer
			// 
			this.txtServer.Location = new System.Drawing.Point(167, 166);
			this.txtServer.Name = "txtServer";
			this.txtServer.Size = new System.Drawing.Size(100, 20);
			this.txtServer.TabIndex = 1;
			this.txtServer.Text = "localhost";
			// 
			// lblDatabase
			// 
			this.lblDatabase.AutoSize = true;
			this.lblDatabase.Location = new System.Drawing.Point(112, 196);
			this.lblDatabase.Name = "lblDatabase";
			this.lblDatabase.Size = new System.Drawing.Size(53, 13);
			this.lblDatabase.TabIndex = 1;
			this.lblDatabase.Text = "Database";
			// 
			// lblServer
			// 
			this.lblServer.AutoSize = true;
			this.lblServer.Location = new System.Drawing.Point(126, 169);
			this.lblServer.Name = "lblServer";
			this.lblServer.Size = new System.Drawing.Size(38, 13);
			this.lblServer.TabIndex = 0;
			this.lblServer.Text = "Server";
			// 
			// stepConfirm
			// 
			this.stepConfirm.BindingImage = ((System.Drawing.Image)(resources.GetObject("stepConfirm.BindingImage")));
			this.stepConfirm.Controls.Add(this.panelSummary);
			this.stepConfirm.Controls.Add(this.labelSummary);
			this.stepConfirm.ForeColor = System.Drawing.SystemColors.ControlText;
			this.stepConfirm.Name = "stepConfirm";
			this.stepConfirm.Subtitle = "Please confirm the following action.";
			this.stepConfirm.Title = "Database Install Summary";
			this.stepConfirm.TitleAppearence = ((SQLInstaller.Core.Wizard.TextAppearence)(resources.GetObject("stepConfirm.TitleAppearence")));
			// 
			// panelSummary
			// 
			this.panelSummary.Controls.Add(this.labelUpgradeBy);
			this.panelSummary.Controls.Add(this.labelConfirmUpgradeBy);
			this.panelSummary.Controls.Add(this.labelConfirmServer);
			this.panelSummary.Controls.Add(this.labelConfirmDatabase);
			this.panelSummary.Controls.Add(this.labelServer2);
			this.panelSummary.Controls.Add(this.labelDatabase2);
			this.panelSummary.Controls.Add(this.labelConfirmUpgrade);
			this.panelSummary.Controls.Add(this.labelConfirmVersion);
			this.panelSummary.Controls.Add(this.labelUpgrade);
			this.panelSummary.Controls.Add(this.labelVersion);
			this.panelSummary.Location = new System.Drawing.Point(0, 71);
			this.panelSummary.Name = "panelSummary";
			this.panelSummary.Size = new System.Drawing.Size(533, 219);
			this.panelSummary.TabIndex = 9;
			this.panelSummary.Visible = false;
			// 
			// labelUpgradeBy
			// 
			this.labelUpgradeBy.AutoSize = true;
			this.labelUpgradeBy.Location = new System.Drawing.Point(122, 125);
			this.labelUpgradeBy.Name = "labelUpgradeBy";
			this.labelUpgradeBy.Size = new System.Drawing.Size(64, 13);
			this.labelUpgradeBy.TabIndex = 20;
			this.labelUpgradeBy.Text = "Installed By:";
			this.labelUpgradeBy.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
			// 
			// labelConfirmUpgradeBy
			// 
			this.labelConfirmUpgradeBy.AutoEllipsis = true;
			this.labelConfirmUpgradeBy.ForeColor = System.Drawing.Color.Black;
			this.labelConfirmUpgradeBy.Location = new System.Drawing.Point(192, 125);
			this.labelConfirmUpgradeBy.Name = "labelConfirmUpgradeBy";
			this.labelConfirmUpgradeBy.Size = new System.Drawing.Size(338, 13);
			this.labelConfirmUpgradeBy.TabIndex = 19;
			this.labelConfirmUpgradeBy.Text = "DOMAIN\\user on 12/12/2000 15:00:00";
			this.labelConfirmUpgradeBy.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
			// 
			// labelConfirmServer
			// 
			this.labelConfirmServer.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.labelConfirmServer.ForeColor = System.Drawing.Color.Black;
			this.labelConfirmServer.Location = new System.Drawing.Point(192, 80);
			this.labelConfirmServer.Name = "labelConfirmServer";
			this.labelConfirmServer.Size = new System.Drawing.Size(204, 13);
			this.labelConfirmServer.TabIndex = 18;
			this.labelConfirmServer.Text = "localhost";
			this.labelConfirmServer.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
			// 
			// labelConfirmDatabase
			// 
			this.labelConfirmDatabase.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.labelConfirmDatabase.ForeColor = System.Drawing.Color.Black;
			this.labelConfirmDatabase.Location = new System.Drawing.Point(192, 58);
			this.labelConfirmDatabase.Name = "labelConfirmDatabase";
			this.labelConfirmDatabase.Size = new System.Drawing.Size(219, 13);
			this.labelConfirmDatabase.TabIndex = 17;
			this.labelConfirmDatabase.Text = "[Database Name]";
			this.labelConfirmDatabase.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
			// 
			// labelServer2
			// 
			this.labelServer2.AutoSize = true;
			this.labelServer2.Location = new System.Drawing.Point(145, 80);
			this.labelServer2.Name = "labelServer2";
			this.labelServer2.Size = new System.Drawing.Size(41, 13);
			this.labelServer2.TabIndex = 16;
			this.labelServer2.Text = "Server:";
			this.labelServer2.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
			// 
			// labelDatabase2
			// 
			this.labelDatabase2.AutoSize = true;
			this.labelDatabase2.Location = new System.Drawing.Point(130, 58);
			this.labelDatabase2.Name = "labelDatabase2";
			this.labelDatabase2.Size = new System.Drawing.Size(56, 13);
			this.labelDatabase2.TabIndex = 15;
			this.labelDatabase2.Text = "Database:";
			this.labelDatabase2.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
			// 
			// labelConfirmUpgrade
			// 
			this.labelConfirmUpgrade.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.labelConfirmUpgrade.ForeColor = System.Drawing.Color.DarkGreen;
			this.labelConfirmUpgrade.Location = new System.Drawing.Point(192, 160);
			this.labelConfirmUpgrade.Name = "labelConfirmUpgrade";
			this.labelConfirmUpgrade.Size = new System.Drawing.Size(196, 13);
			this.labelConfirmUpgrade.TabIndex = 14;
			this.labelConfirmUpgrade.Text = "1.0.1";
			this.labelConfirmUpgrade.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
			// 
			// labelConfirmVersion
			// 
			this.labelConfirmVersion.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.labelConfirmVersion.ForeColor = System.Drawing.Color.Black;
			this.labelConfirmVersion.Location = new System.Drawing.Point(192, 102);
			this.labelConfirmVersion.Name = "labelConfirmVersion";
			this.labelConfirmVersion.Size = new System.Drawing.Size(196, 13);
			this.labelConfirmVersion.TabIndex = 13;
			this.labelConfirmVersion.Text = "1.0.0";
			this.labelConfirmVersion.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
			// 
			// labelUpgrade
			// 
			this.labelUpgrade.AutoSize = true;
			this.labelUpgrade.Location = new System.Drawing.Point(85, 160);
			this.labelUpgrade.Name = "labelUpgrade";
			this.labelUpgrade.Size = new System.Drawing.Size(101, 13);
			this.labelUpgrade.TabIndex = 12;
			this.labelUpgrade.Text = "Upgrade to Version:";
			this.labelUpgrade.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
			// 
			// labelVersion
			// 
			this.labelVersion.AutoSize = true;
			this.labelVersion.Location = new System.Drawing.Point(104, 102);
			this.labelVersion.Name = "labelVersion";
			this.labelVersion.Size = new System.Drawing.Size(82, 13);
			this.labelVersion.TabIndex = 11;
			this.labelVersion.Text = "Current Version:";
			this.labelVersion.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
			// 
			// labelSummary
			// 
			this.labelSummary.Location = new System.Drawing.Point(123, 338);
			this.labelSummary.Name = "labelSummary";
			this.labelSummary.Size = new System.Drawing.Size(287, 13);
			this.labelSummary.TabIndex = 8;
			this.labelSummary.Text = "Connecting to localhost...";
			this.labelSummary.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
			// 
			// stepProgress
			// 
			this.stepProgress.BindingImage = ((System.Drawing.Image)(resources.GetObject("stepProgress.BindingImage")));
			this.stepProgress.Controls.Add(this.label4);
			this.stepProgress.Controls.Add(this.label3);
			this.stepProgress.Controls.Add(this.progressBar1);
			this.stepProgress.ForeColor = System.Drawing.SystemColors.ControlText;
			this.stepProgress.Name = "stepProgress";
			this.stepProgress.Subtitle = "Please wait while your database is being installed/upgraded.";
			this.stepProgress.Title = "Database Install Progress";
			this.stepProgress.TitleAppearence = ((SQLInstaller.Core.Wizard.TextAppearence)(resources.GetObject("stepProgress.TitleAppearence")));
			// 
			// label4
			// 
			this.label4.Location = new System.Drawing.Point(135, 184);
			this.label4.Name = "label4";
			this.label4.Size = new System.Drawing.Size(265, 82);
			this.label4.TabIndex = 2;
			// 
			// label3
			// 
			this.label3.AutoSize = true;
			this.label3.Location = new System.Drawing.Point(135, 142);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(0, 13);
			this.label3.TabIndex = 1;
			// 
			// progressBar1
			// 
			this.progressBar1.Location = new System.Drawing.Point(138, 158);
			this.progressBar1.Name = "progressBar1";
			this.progressBar1.Size = new System.Drawing.Size(262, 23);
			this.progressBar1.TabIndex = 0;
			// 
			// stepFinish
			// 
			this.stepFinish.BindingImage = ((System.Drawing.Image)(resources.GetObject("stepFinish.BindingImage")));
			this.stepFinish.Controls.Add(this.linkLog);
			this.stepFinish.Controls.Add(this.labelFinish);
			this.stepFinish.Name = "stepFinish";
			this.stepFinish.Pair = ((SQLInstaller.Core.Wizard.ColorPair)(resources.GetObject("stepFinish.Pair")));
			// 
			// linkLog
			// 
			this.linkLog.AutoSize = true;
			this.linkLog.BackColor = System.Drawing.SystemColors.Control;
			this.linkLog.Location = new System.Drawing.Point(231, 242);
			this.linkLog.Name = "linkLog";
			this.linkLog.Size = new System.Drawing.Size(78, 13);
			this.linkLog.TabIndex = 1;
			this.linkLog.TabStop = true;
			this.linkLog.Text = "Installation Log";
			this.linkLog.Visible = false;
			this.linkLog.VisitedLinkColor = System.Drawing.Color.Blue;
			this.linkLog.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.linkLog_LinkClicked);
			// 
			// labelFinish
			// 
			this.labelFinish.BackColor = System.Drawing.SystemColors.Control;
			this.labelFinish.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.labelFinish.Location = new System.Drawing.Point(31, 101);
			this.labelFinish.Name = "labelFinish";
			this.labelFinish.Size = new System.Drawing.Size(470, 120);
			this.labelFinish.TabIndex = 0;
			this.labelFinish.Text = "Congratulations! You have successfully installed/upgraded your database.";
			this.labelFinish.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
			// 
			// MainForm
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(533, 410);
			this.Controls.Add(this.wizardUpgrade);
			this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
			this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
			this.MaximizeBox = false;
			this.MinimizeBox = false;
			this.Name = "MainForm";
			this.SizeGripStyle = System.Windows.Forms.SizeGripStyle.Hide;
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "SQL Installer.NET";
			this.stepSettings.ResumeLayout(false);
			this.stepSettings.PerformLayout();
			this.stepConfirm.ResumeLayout(false);
			this.panelSummary.ResumeLayout(false);
			this.panelSummary.PerformLayout();
			this.stepProgress.ResumeLayout(false);
			this.stepProgress.PerformLayout();
			this.stepFinish.ResumeLayout(false);
			this.stepFinish.PerformLayout();
			this.ResumeLayout(false);

		}

		#endregion

		private System.ComponentModel.BackgroundWorker backgroundWorker1;
		private SQLInstaller.Core.Wizard.WizardControl wizardUpgrade;
		private SQLInstaller.Core.Wizard.StartStep startStep;
		private SQLInstaller.Core.Wizard.IntermediateStep stepProgress;
		private SQLInstaller.Core.Wizard.FinishStep stepFinish;
		private SQLInstaller.Core.Wizard.IntermediateStep stepSettings;
		private System.Windows.Forms.TextBox txtDatabase;
		private System.Windows.Forms.TextBox txtServer;
		private System.Windows.Forms.Label lblDatabase;
		private System.Windows.Forms.Label lblServer;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.ProgressBar progressBar1;
		private System.Windows.Forms.Label label4;
		private SQLInstaller.Core.Wizard.IntermediateStep stepConfirm;
		private System.Windows.Forms.Label labelSummary;
		private System.Windows.Forms.TextBox textScripts;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.FolderBrowserDialog folderBrowserDialog1;
		private System.Windows.Forms.Button buttonScriptFolder;
		private System.Windows.Forms.Panel panelSummary;
		private System.Windows.Forms.Label labelConfirmUpgradeBy;
		private System.Windows.Forms.Label labelConfirmServer;
		private System.Windows.Forms.Label labelConfirmDatabase;
		private System.Windows.Forms.Label labelServer2;
		private System.Windows.Forms.Label labelDatabase2;
		private System.Windows.Forms.Label labelConfirmUpgrade;
		private System.Windows.Forms.Label labelConfirmVersion;
		private System.Windows.Forms.Label labelUpgrade;
		private System.Windows.Forms.Label labelVersion;
		private System.Windows.Forms.Label labelUpgradeBy;
		private System.Windows.Forms.Label labelFinish;
		private System.Windows.Forms.LinkLabel linkLog;

	}
}

