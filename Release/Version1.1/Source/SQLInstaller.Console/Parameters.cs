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
	using System.Security.Principal;
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
		private string connectionString;
		private string database;
		private ProviderType providerType;
		private Options options;
		private string cipherData;
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
			database = Constants.DefaultDbName;
			connectionString = Constants.DefaultConnString;
			providerType = ProviderType.SqlServer;
			options = options.Add(Options.Create | Options.Drop | Options.Verbose);

			CspParameters csp = new CspParameters();
			csp.Flags = CspProviderFlags.UseMachineKeyStore;
			csp.KeyContainerName = Path.GetFileNameWithoutExtension(configPath) + WindowsIdentity.GetCurrent().Name;
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
		public string CipherData
		{
			get { return cipherData; }
			set { cipherData = value; }
		}

		[XmlElement]
		public string ConnectionString
		{
			get { return connectionString; }
			set { connectionString = value; }
		}

		[XmlIgnore]
		public string ScriptPath
		{
			get { return Path.GetDirectoryName(this.configPath); }
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
			cipherData = System.Convert.ToBase64String(rsa.Encrypt(aes.IV, true)) 
				+ Constants.Pipe + System.Convert.ToBase64String(rsa.Encrypt(aes.Key, true));

			ICryptoTransform transform = aes.CreateEncryptor();
			byte[] connectionStringBytes = Encoding.UTF8.GetBytes(connectionString);
			byte[] cipherText = transform.TransformFinalBlock(connectionStringBytes, 0, connectionStringBytes.Length);
			connectionString = System.Convert.ToBase64String(cipherText);

			isProtected = true;
			Write();
			connectionString = saveString;
		}

		private void RevealConnectionString()
		{
			if (cipherData != null && cipherData.Length > 0)
			{
				string[] cipherInit = cipherData.Split(new char[] { Constants.Pipe });
				if (cipherInit.Length == 2)
				{
					aes.IV = rsa.Decrypt(System.Convert.FromBase64String(cipherInit[0]), true);
					aes.Key = rsa.Decrypt(System.Convert.FromBase64String(cipherInit[1]), true);
				}
				else
					throw new ArgumentException(Resources.InvalidCipherData);

				ICryptoTransform transform = aes.CreateDecryptor();
				byte[] connectionStringBytes = System.Convert.FromBase64String(connectionString);
				byte[] plainText = transform.TransformFinalBlock(connectionStringBytes, 0, connectionStringBytes.Length);
				connectionString = Encoding.UTF8.GetString(plainText);

				isProtected = false;
				cipherData = null;
			}
		}

		#endregion
	}
}