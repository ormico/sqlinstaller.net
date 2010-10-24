/*  ----------------------------------------------------------------------------
 *  SQL Installer.NET
 *  Microsoft Public License (http://www.microsoft.com/opensource/licenses.mspx#Ms-PL)
 *  ----------------------------------------------------------------------------
 *  File:       FileType.cs
 *  Author:     Brian Schloz
 *  ----------------------------------------------------------------------------
 */
namespace SQLInstaller.Core
{
	using System;
	using System.ComponentModel;
	using System.Xml.Serialization;

	/// <summary>
	/// FileType class.
	/// </summary>
	[Serializable]
	public sealed class FileType
	{
		public FileType()
		{
		}

		[XmlAttribute]
		public string Name { get; set; }

		[XmlAttribute]
		public string Description { get; set; }

		[XmlAttribute]
		public bool IsGlobal { get; set; }

		[Browsable(false)]
		[EditorBrowsable(EditorBrowsableState.Never)]
		[XmlIgnore]
		public bool IsGlobalSpecified
		{
			get { return IsGlobal; }
		}

		[XmlAttribute]
		public bool HaltOnError { get; set; }

		[Browsable(false)]
		[EditorBrowsable(EditorBrowsableState.Never)]
		[XmlIgnore]
		public bool HaltOnErrorSpecified
		{
			get { return HaltOnError; }
		}

		[XmlAttribute]
		public bool IsDisabled { get; set; }

		[Browsable(false)]
		[EditorBrowsable(EditorBrowsableState.Never)]
		[XmlIgnore]
		public bool IsDisabledSpecified
		{
			get { return IsDisabled; }
		}
	}
}