using System.ComponentModel;

namespace SQLInstaller.Core.Wizard
{
	/// <summary>
	/// 
	/// Derived from CodeProject (http://www.codeproject.com/KB/cs/WizardDemo.aspx).
	/// 02/07/2008 - Changed namespace from WizardBase to SQLInstaller.Core.Wizard.
	/// 
	/// </summary>
	public class GenericChangeEventArgs<T> : CancelEventArgs
    {
        private readonly T oldValue;
        private T newValue;

        public GenericChangeEventArgs(T oldValue, T newValue) : base(false)
        {
            this.oldValue = oldValue;
            this.newValue = newValue;
        }

        public GenericChangeEventArgs(T oldValue, T newValue, bool cancel) : base(cancel)
        {
            this.oldValue = oldValue;
            this.newValue = newValue;
        }

        public T OldValue
        {
            get { return oldValue; }
        }

        public T NewValue
        {
            get { return newValue; }
            set { newValue = value; }
        }
    }
}