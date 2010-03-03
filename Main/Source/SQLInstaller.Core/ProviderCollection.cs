/*  ----------------------------------------------------------------------------
 *  SQL Installer.NET
 *  Microsoft Public License (http://www.microsoft.com/opensource/licenses.mspx#Ms-PL)
 *  ----------------------------------------------------------------------------
 *  File:       ProviderCollection.cs
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
	public sealed class ProviderCollection : KeyedCollection<string, Provider>
	{
		#region Constructors

		public ProviderCollection()
			: base(StringComparer.OrdinalIgnoreCase)
		{
		}

		#endregion

		#region Methods

		protected override string GetKeyForItem(Provider item)
		{
			return item.Name;
		}

		#endregion
	}
}