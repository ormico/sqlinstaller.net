using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace SQLInstaller.Core.Wizard
{
	/// <summary>
	/// 
	/// Derived from CodeProject (http://www.codeproject.com/KB/cs/WizardDemo.aspx).
	/// 02/07/2008 - Changed namespace from WizardBase to SQLInstaller.Core.Wizard.
	/// 
	/// </summary>
	internal class CustomFileNameEditor : FileNameEditor
    {
        protected override void InitializeDialog(OpenFileDialog openFileDialog)
        {
            base.InitializeDialog(openFileDialog);
            openFileDialog.Filter = "Rich text format ( *.rtf )| *.rtf|Text documents ( *.txt )|*.txt|Word document ( *.doc ) |*.doc|All Files|*.*";
            openFileDialog.Multiselect = false;
            openFileDialog.RestoreDirectory = true;
        }
    }
}
