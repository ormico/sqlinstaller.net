/*  ----------------------------------------------------------------------------
 *  SQL Installer.NET
 *  Microsoft Public License (http://www.microsoft.com/opensource/licenses.mspx#Ms-PL)
 *  ----------------------------------------------------------------------------
 *  File:       Provider.cs
 *  Author:     Brian Schloz
 *  ----------------------------------------------------------------------------
 */
namespace SQLInstaller.Core
{
	using System;
	using System.ComponentModel;
	using System.Xml.Serialization;

	/// <summary>
	/// Provider factory.
	/// </summary>
	[Serializable]
	public sealed class Provider
	{
		private ScriptCollection scripts;

		public Provider()
		{
			this.scripts = new ScriptCollection();
		}

		[XmlAttribute]
		public string Name { get; set; }

		[XmlAttribute]
		public string InvariantName { get; set; }

		[Browsable(false)]
		[EditorBrowsable(EditorBrowsableState.Never)]
		[XmlIgnore]
		public bool ScriptsSpecified
		{
			get { return this.Scripts.Count > 0; }
		}

		public ScriptCollection Scripts
		{
			get { return this.scripts; }
		}
	}
}