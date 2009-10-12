using System;

namespace SQLInstaller.Core.Wizard
{
    public delegate void GenericEventHandler<T>(object sender, GenericEventArgs<T> tArgs);

	/// <summary>
	/// 
	/// Derived from CodeProject (http://www.codeproject.com/KB/cs/WizardDemo.aspx).
	/// 02/07/2008 - Changed namespace from WizardBase to SQLInstaller.Core.Wizard.
	/// 
	/// </summary>
	public class GenericEventArgs<T> : EventArgs
    {
        private T value;

        public GenericEventArgs()
        {
            value = default(T);
        }

        public GenericEventArgs(T value)
        {
            this.value = value;
        }

        public T Value
        {
            get { return value; }
            set { this.value = value; }
        }
    }
}