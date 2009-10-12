using System.ComponentModel;

namespace SQLInstaller.Core.Wizard
{
    public delegate void GenericCancelEventHandler<T>(object sender, GenericCancelEventArgs<T> tArgs);

	/// <summary>
	/// 
	/// Source code derived from CodeProject (http://www.codeproject.com/KB/cs/WizardDemo.aspx).
	/// 02/07/2008 - Changed namespace from WizardBase to SQLInstaller.Core.Wizard).
	/// 
	/// </summary>
	public class GenericCancelEventArgs<T> : CancelEventArgs
    {
        private T value;

        public GenericCancelEventArgs(T value) : base(false)
        {
            this.value = value;
        }

        public GenericCancelEventArgs(T value, bool cancel) : base(cancel)
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