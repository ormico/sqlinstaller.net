/*  ----------------------------------------------------------------------------
 *  SQL Installer.NET
 *  Microsoft Public License (http://www.microsoft.com/opensource/licenses.mspx#Ms-PL)
 *  ----------------------------------------------------------------------------
 *  File:       Script.cs
 *  Author:     Brian Schloz
 *  ----------------------------------------------------------------------------
 */
namespace SQLInstaller.Core
{
	using System;
	using System.Xml.Serialization;

	/// <summary>
	/// SQL Script.
	/// </summary>
	[Serializable]
	public sealed class Script
	{
		[XmlAttribute]
		public ScriptType Type { get; set; }

		[XmlText]
		public string CommandText { get; set; }
	}
}