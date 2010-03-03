/*  ----------------------------------------------------------------------------
 *  SQL Installer.NET
 *  Microsoft Public License (http://www.microsoft.com/opensource/licenses.mspx#Ms-PL)
 *  ----------------------------------------------------------------------------
 *  File:       ProviderFactory.cs
 *  Author:     Brian Schloz
 *  ----------------------------------------------------------------------------
 */
namespace SQLInstaller.Core
{
	using System;
	using System.IO;
	using System.Xml.Serialization;

	/// <summary>
	/// Provider factory class.
	/// </summary>
	[Serializable]
	[XmlRoot(Constants.ProviderFactory, Namespace = Constants.ProviderFactory)]
	public sealed class ProviderFactory
	{
		private ProviderCollection providerCollection;

		private ProviderFactory()
		{
			this.providerCollection = new ProviderCollection();
		}

		public ProviderCollection Providers
		{
			get { return this.providerCollection; }
		}

		public static ProviderFactory Load(string factoryConfig)
		{
			ProviderFactory factory = null;

			using (StringReader r = new StringReader(factoryConfig))
			{
				XmlRootAttribute xra = new XmlRootAttribute(Constants.ProviderFactory);
				XmlSerializer s = new XmlSerializer(typeof(ProviderFactory), null, new Type[] { }, xra, Constants.ProviderFactory);
				factory = s.Deserialize(r) as ProviderFactory;
			}

			return factory;
		}
	}
}
