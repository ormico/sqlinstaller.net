/*  ----------------------------------------------------------------------------
 *  SQL Installer.NET
 *  Microsoft Public License (http://www.microsoft.com/opensource/licenses.mspx#Ms-PL)
 *  ----------------------------------------------------------------------------
 *  File:       ScriptCollection.cs
 *  Author:     Brian Schloz
 *  ----------------------------------------------------------------------------
 */
namespace SQLInstaller.Core
{
	using System;
	using System.Collections.ObjectModel;
	using System.ComponentModel;

	[Serializable]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public sealed class ScriptCollection : KeyedCollection<ScriptType, Script>
	{
		#region Constructors

		public ScriptCollection()
		{
		}

		#endregion

		#region Methods

		protected override ScriptType GetKeyForItem(Script item)
		{
			return item.Type;
		}

		#endregion
	}
}