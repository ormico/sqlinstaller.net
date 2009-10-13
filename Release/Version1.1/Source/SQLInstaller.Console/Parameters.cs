using System;
using System.IO;
using System.Xml;
using System.Xml.Serialization;
using System.Text;
using System.Security.Cryptography;

using SQLInstaller.Core;

namespace SQLInstaller.Console
{
	[Serializable]
	public sealed class Parameters
	{
		private string configPath;
		private string scriptPath;
		private string connectionString;
		private string database;
		private ProviderType providerType;
		private RuntimeFlag flags;
		private bool isProtected;
		private bool noPrompt;
		private bool noPromptSpecified;

		private RSACryptoServiceProvider rsa;

		[XmlIgnore]
		public string ConfigPath
		{
			get { return configPath; }
			set { configPath = value; }
		}

		[XmlElement]
		public string Database
		{
			get { return database; }
			set { database = value; }
		}

		[XmlElement]
		public ProviderType ProviderType
		{
			get { return providerType; }
			set { providerType = value; }
		}

		[XmlElement]
		public string ConnectionString
		{
			get { return connectionString; }
			set { connectionString = value; }
		}

		[XmlAttribute]
		public string ScriptPath
		{
			get { return scriptPath; }
			set { scriptPath = value; }
		}

		[XmlIgnore]
		public bool ScriptPathSpecified
		{
			get { return scriptPath != null && scriptPath != "."; }
		}

		[XmlAttribute]
		public RuntimeFlag Flags
		{
			get { return flags; }
			set { flags = value; }
		}

		[XmlAttribute]
		public bool IsProtected
		{
			get { return isProtected; }
			set { isProtected = value; }
		}

		[XmlAttribute]
		public bool NoPrompt
		{
			get { return noPrompt; }
			set { noPrompt = value; noPromptSpecified = true; }
		}

		[XmlIgnore]
		public bool NoPromptSpecified
		{
			get { return noPromptSpecified; }
		}

		public Parameters()
		{
			configPath = @".\SQLInstaller.xml";
			scriptPath = ".";
			database = "DatabaseName";
			connectionString = "Data Source=localhost;Integrated Security=SSPI;";
			providerType = ProviderType.SqlServer;
			flags = flags.Add(RuntimeFlag.Create | RuntimeFlag.Drop | RuntimeFlag.Verbose);

			CspParameters csp = new CspParameters();
			csp.Flags = CspProviderFlags.UseMachineKeyStore;
			csp.KeyContainerName = AppDomain.CurrentDomain.FriendlyName;
			rsa = new RSACryptoServiceProvider(csp);
		}

		public void Write()
		{
			StreamWriter sw = null;

			try
			{
				sw = new StreamWriter(configPath);
				WriteXml(sw.BaseStream);
			}
			finally
			{
				if (sw != null)
					sw.Close();
			}
		}

		private void WriteXml(Stream stream)
		{
			XmlSerializerNamespaces ns = new XmlSerializerNamespaces();
			ns.Add(string.Empty, string.Empty);
			XmlSerializer s = new XmlSerializer(this.GetType());
			XmlWriterSettings settings = new XmlWriterSettings();
			settings.OmitXmlDeclaration = true;
			settings.Encoding = Encoding.UTF8;
			settings.IndentChars = "\t";
			settings.Indent = true;
			XmlWriter w = XmlWriter.Create(stream, settings);
			s.Serialize(w, this, ns);
		}

		private void ProtectConnectionString()
		{
			string saveString = connectionString;
			UTF8Encoding utf8 = new UTF8Encoding();
			byte[] encrypted = rsa.Encrypt(utf8.GetBytes(connectionString), false);
			connectionString = System.Convert.ToBase64String(encrypted);
			isProtected = true;
			Write();
			connectionString = saveString;
		}

		private void RevealConnectionString()
		{
			UTF8Encoding utf8 = new UTF8Encoding();
			byte[] decrypted = rsa.Decrypt(System.Convert.FromBase64String(connectionString), false);
			connectionString = utf8.GetString(decrypted);
			isProtected = false;
		}

		public static Parameters Load(string configPath)
		{
			Parameters p = null;
			if (File.Exists(configPath))
			{
				XmlSerializer s = new XmlSerializer(typeof(Parameters));
				using (StreamReader r = new StreamReader(configPath))
				{
					p = s.Deserialize(r) as Parameters;
				}

				p.ConfigPath = configPath;
				if (!p.isProtected)
					p.ProtectConnectionString();
				else
					p.RevealConnectionString();
			}

			return p;
		}
	}
}
