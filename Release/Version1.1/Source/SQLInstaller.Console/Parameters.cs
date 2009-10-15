/*  ----------------------------------------------------------------------------
 *  SQL Installer.NET
 *  Microsoft Public License (http://www.microsoft.com/opensource/licenses.mspx#Ms-PL)
 *  ----------------------------------------------------------------------------
 *  File:       Parameters.cs
 *  Author:     Brian Schloz
 *  ----------------------------------------------------------------------------
 */
namespace SQLInstaller.Console
{
	using System;
	using System.IO;
	using System.Security.Cryptography;
	using System.Text;
	using System.Xml;
	using System.Xml.Serialization;

	using SQLInstaller.Core;

	/// <summary>
	/// Parameters class.
	/// </summary>
	[Serializable]
	public sealed class Parameters : IDisposable
	{
		#region Fields

		private bool isDisposed;
		private string configPath;
		private string scriptPath;
		private string connectionString;
		private string database;
		private ProviderType providerType;
		private Options options;
		private string cipherInit;
		private string cipherKey;
		private bool isProtected;
		private bool noPrompt;
		private bool noPromptSpecified;

		[NonSerializedAttribute]
		private RSACryptoServiceProvider rsa;
		[NonSerializedAttribute]
		private RijndaelManaged aes;

		#endregion

		#region Constructors

		public Parameters()
		{
			configPath = Constants.DefaultConfigFile;
			scriptPath = Constants.CurrentDir;
			database = Constants.DefaultDbName;
			connectionString = Constants.DefaultConnString;
			providerType = ProviderType.SqlServer;
			options = options.Add(Options.Create | Options.Drop | Options.Verbose);

			CspParameters csp = new CspParameters();
			csp.Flags = CspProviderFlags.UseMachineKeyStore;
			csp.KeyContainerName = AppDomain.CurrentDomain.FriendlyName;
			rsa = new RSACryptoServiceProvider(csp);
			aes = new RijndaelManaged();
		}

		#endregion

		#region Properties

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
		public string CipherInit
		{
			get { return cipherInit; }
			set { cipherInit = value; }
		}

		[XmlElement]
		public string CipherKey
		{
			get { return cipherKey; }
			set { cipherKey = value; }
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
			get { return scriptPath != null && scriptPath != Constants.CurrentDir; }
		}

		[XmlAttribute]
		public Options Options
		{
			get { return options; }
			set { options = value; }
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

		#endregion

		#region Public Methods

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

		#endregion

		#region IDisposable Members

		public void Dispose()
		{
			if (!isDisposed)
			{
				rsa.Clear();
				aes.Clear();
				GC.SuppressFinalize(this);
				isDisposed = true;
			}
		}

		#endregion

		#region Private Methods

		private void WriteXml(Stream stream)
		{
			XmlSerializerNamespaces ns = new XmlSerializerNamespaces();
			ns.Add(string.Empty, string.Empty);
			XmlSerializer s = new XmlSerializer(this.GetType());
			XmlWriterSettings settings = new XmlWriterSettings();
			settings.OmitXmlDeclaration = true;
			settings.Encoding = Encoding.UTF8;
			settings.IndentChars = Constants.Tab;
			settings.Indent = true;
			XmlWriter w = XmlWriter.Create(stream, settings);
			s.Serialize(w, this, ns);
		}

		private void ProtectConnectionString()
		{
			string saveString = connectionString;
			cipherInit = System.Convert.ToBase64String(rsa.Encrypt(aes.IV, false));
			cipherKey = System.Convert.ToBase64String(rsa.Encrypt(aes.Key, false));
			using (MemoryStream memoryStream = new MemoryStream())
			{
				using (CryptoStream cryptoStream = new CryptoStream(memoryStream, aes.CreateEncryptor(), CryptoStreamMode.Write))
				{
					byte[] connectionStringBytes = Encoding.UTF8.GetBytes(connectionString);
					cryptoStream.Write(connectionStringBytes, 0, connectionStringBytes.Length);
					cryptoStream.FlushFinalBlock();
					connectionString = System.Convert.ToBase64String(memoryStream.ToArray());
				}
			}

			isProtected = true;
			Write();
			connectionString = saveString;
		}

		private void RevealConnectionString()
		{
			aes.IV = rsa.Decrypt(System.Convert.FromBase64String(cipherInit), false);
			aes.Key = rsa.Decrypt(System.Convert.FromBase64String(cipherKey), false);

			using (MemoryStream memoryStream = new MemoryStream())
			{
				using (CryptoStream cryptoStream = new CryptoStream(memoryStream, aes.CreateDecryptor(), CryptoStreamMode.Write))
				{
					byte[] connectionStringBytes = System.Convert.FromBase64String(connectionString);
					cryptoStream.Write(connectionStringBytes, 0, connectionStringBytes.Length);
					cryptoStream.FlushFinalBlock();
					connectionString = Encoding.UTF8.GetString(memoryStream.ToArray());
				}
			}

			isProtected = false;
			cipherInit = null;
			cipherKey = null;
		}

		#endregion
	}
}