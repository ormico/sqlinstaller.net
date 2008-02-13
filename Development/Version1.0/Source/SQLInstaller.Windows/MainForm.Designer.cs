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
			this.wizardControl1 = new SQLInstaller.Core.Wizard.WizardControl();
			this.startStep1 = new SQLInstaller.Core.Wizard.StartStep();
			this.intermediateStep2 = new SQLInstaller.Core.Wizard.IntermediateStep();
			this.textBox2 = new System.Windows.Forms.TextBox();
			this.textBox1 = new System.Windows.Forms.TextBox();
			this.label2 = new System.Windows.Forms.Label();
			this.label1 = new System.Windows.Forms.Label();
			this.intermediateStep1 = new SQLInstaller.Core.Wizard.IntermediateStep();
			this.label4 = new System.Windows.Forms.Label();
			this.label3 = new System.Windows.Forms.Label();
			this.progressBar1 = new System.Windows.Forms.ProgressBar();
			this.finishStep1 = new SQLInstaller.Core.Wizard.FinishStep();
			this.intermediateStep2.SuspendLayout();
			this.intermediateStep1.SuspendLayout();
			this.SuspendLayout();
			// 
			// backgroundWorker1
			// 
			this.backgroundWorker1.WorkerReportsProgress = true;
			this.backgroundWorker1.WorkerSupportsCancellation = true;
			this.backgroundWorker1.DoWork += new System.ComponentModel.DoWorkEventHandler(this.backgroundWorker1_DoWork);
			this.backgroundWorker1.ProgressChanged += new System.ComponentModel.ProgressChangedEventHandler(this.SqlProgressChanged);
			// 
			// wizardControl1
			// 
			this.wizardControl1.BackButtonEnabled = false;
			this.wizardControl1.BackButtonVisible = true;
			this.wizardControl1.CancelButtonEnabled = true;
			this.wizardControl1.CancelButtonVisible = true;
			this.wizardControl1.Dock = System.Windows.Forms.DockStyle.Fill;
			this.wizardControl1.EulaButtonEnabled = true;
			this.wizardControl1.EulaButtonText = "eula";
			this.wizardControl1.EulaButtonVisible = false;
			this.wizardControl1.HelpButtonEnabled = true;
			this.wizardControl1.HelpButtonVisible = false;
			this.wizardControl1.Location = new System.Drawing.Point(0, 0);
			this.wizardControl1.Name = "wizardControl1";
			this.wizardControl1.NextButtonEnabled = true;
			this.wizardControl1.NextButtonVisible = true;
			this.wizardControl1.Size = new System.Drawing.Size(533, 410);
			this.wizardControl1.WizardSteps.AddRange(new SQLInstaller.Core.Wizard.WizardStep[] {
            this.startStep1,
            this.intermediateStep2,
            this.intermediateStep1,
            this.finishStep1});
			this.wizardControl1.CurrentStepIndexChanged += new System.EventHandler(this.wizardControl1_CurrentStepIndexChanged);
			this.wizardControl1.FinishButtonClick += new System.EventHandler(this.wizardControl1_FinishButtonClick);
			this.wizardControl1.CancelButtonClick += new System.EventHandler(this.wizardControl1_CancelButtonClick);
			// 
			// startStep1
			// 
			this.startStep1.BindingImage = ((System.Drawing.Image)(resources.GetObject("startStep1.BindingImage")));
			this.startStep1.ForeColor = System.Drawing.SystemColors.ControlText;
			this.startStep1.Icon = ((System.Drawing.Image)(resources.GetObject("startStep1.Icon")));
			this.startStep1.Name = "startStep1";
			// 
			// intermediateStep2
			// 
			this.intermediateStep2.BindingImage = ((System.Drawing.Image)(resources.GetObject("intermediateStep2.BindingImage")));
			this.intermediateStep2.Controls.Add(this.textBox2);
			this.intermediateStep2.Controls.Add(this.textBox1);
			this.intermediateStep2.Controls.Add(this.label2);
			this.intermediateStep2.Controls.Add(this.label1);
			this.intermediateStep2.ForeColor = System.Drawing.SystemColors.ControlText;
			this.intermediateStep2.Name = "intermediateStep2";
			// 
			// textBox2
			// 
			this.textBox2.Location = new System.Drawing.Point(173, 123);
			this.textBox2.Name = "textBox2";
			this.textBox2.Size = new System.Drawing.Size(100, 20);
			this.textBox2.TabIndex = 3;
			this.textBox2.Text = "[DatabaseName]";
			// 
			// textBox1
			// 
			this.textBox1.Location = new System.Drawing.Point(173, 96);
			this.textBox1.Name = "textBox1";
			this.textBox1.Size = new System.Drawing.Size(100, 20);
			this.textBox1.TabIndex = 2;
			this.textBox1.Text = "localhost";
			// 
			// label2
			// 
			this.label2.AutoSize = true;
			this.label2.Location = new System.Drawing.Point(132, 126);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(35, 13);
			this.label2.TabIndex = 1;
			this.label2.Text = "label2";
			// 
			// label1
			// 
			this.label1.AutoSize = true;
			this.label1.Location = new System.Drawing.Point(132, 99);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(35, 13);
			this.label1.TabIndex = 0;
			this.label1.Text = "label1";
			// 
			// intermediateStep1
			// 
			this.intermediateStep1.BindingImage = ((System.Drawing.Image)(resources.GetObject("intermediateStep1.BindingImage")));
			this.intermediateStep1.Controls.Add(this.label4);
			this.intermediateStep1.Controls.Add(this.label3);
			this.intermediateStep1.Controls.Add(this.progressBar1);
			this.intermediateStep1.ForeColor = System.Drawing.SystemColors.ControlText;
			this.intermediateStep1.Name = "intermediateStep1";
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
			// finishStep1
			// 
			this.finishStep1.BindingImage = ((System.Drawing.Image)(resources.GetObject("finishStep1.BindingImage")));
			this.finishStep1.Name = "finishStep1";
			// 
			// MainForm
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(533, 410);
			this.Controls.Add(this.wizardControl1);
			this.Name = "MainForm";
			this.Text = "Form1";
			this.intermediateStep2.ResumeLayout(false);
			this.intermediateStep2.PerformLayout();
			this.intermediateStep1.ResumeLayout(false);
			this.intermediateStep1.PerformLayout();
			this.ResumeLayout(false);

		}

		#endregion

		private System.ComponentModel.BackgroundWorker backgroundWorker1;
		private SQLInstaller.Core.Wizard.WizardControl wizardControl1;
		private SQLInstaller.Core.Wizard.StartStep startStep1;
		private SQLInstaller.Core.Wizard.IntermediateStep intermediateStep1;
		private SQLInstaller.Core.Wizard.FinishStep finishStep1;
		private SQLInstaller.Core.Wizard.IntermediateStep intermediateStep2;
		private System.Windows.Forms.TextBox textBox2;
		private System.Windows.Forms.TextBox textBox1;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.ProgressBar progressBar1;
		private System.Windows.Forms.Label label4;

	}
}

