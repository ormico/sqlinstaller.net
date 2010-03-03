/*  ----------------------------------------------------------------------------
 *  SQL Installer.NET
 *  Microsoft Public License (http://www.microsoft.com/opensource/licenses.mspx#Ms-PL)
 *  ----------------------------------------------------------------------------
 *  File:       Parameters.cs
 *  Author:     Brian Schloz
 *  ----------------------------------------------------------------------------
 */
namespace SQLInstaller.Core
{
	using System;
	using System.ComponentModel;
	using System.IO;
	using System.IO.IsolatedStorage;
	using System.Security;
	using System.Security.Cryptography;
	using System.Security.Principal;
	using System.Text;
	using System.Xml;
	using System.Xml.Serialization;

	/// <summary>
	/// Parameters class.
	/// </summary>
	[Serializable]
	public sealed class Parameters : IDisposable
	{
		#region Fields

		private bool isDisposed;

		[NonSerializedAttribute]
		private RSACryptoServiceProvider rsa;

		#endregion

		#region Constructors

		public Parameters()
		{
			this.ConfigPath = Constants.DefaultConfigFile;
			this.Database = Constants.DefaultDbName;
			this.ConnectionString = Constants.DefaultConnString;
			this.Options = this.Options.Add(Options.Create | Options.Drop | Options.Verbose);
			this.Provider = new Provider();

			CspParameters csp = new CspParameters();
			csp.Flags = CspProviderFlags.UseMachineKeyStore;
			csp.KeyContainerName = Path.GetFileNameWithoutExtension(this.ConfigPath) + WindowsIdentity.GetCurrent().Name;
			rsa = new RSACryptoServiceProvider(csp);			
		}

		#endregion

		#region Properties

		[XmlIgnore]
		public string ConfigPath { get; set; }

		[XmlElement]
		public string Database { get; set; }

		public Provider Provider { get; set; }

		[Browsable(false)]
		[EditorBrowsable(EditorBrowsableState.Never)]
		[XmlIgnore]
		public bool ProviderSpecified
		{
			get { return !string.IsNullOrEmpty(this.Provider.Name); }
		}

		[XmlElement]
		public string ConnectionString { get; set; }

		[XmlIgnore]
		public string ScriptPath
		{
			get 
			{ 
				string scriptPath = Path.GetDirectoryName(this.ConfigPath);
				if (string.IsNullOrEmpty(scriptPath))
					scriptPath = Constants.CurrentDir;

				return scriptPath;
			}
		}

		[XmlAttribute]
		public Options Options { get; set; }

		[XmlAttribute]
		public bool IsProtected { get; set; }

		[XmlAttribute]
		public bool NoPrompt { get; set; }

		[Browsable(false)]
		[EditorBrowsable(EditorBrowsableState.Never)]
		[XmlIgnore]
		public bool NoPromptSpecified
		{
			get { return this.NoPrompt; }
		}

		#endregion

		#region Public Methods

		public static Parameters Load(string configPath)
		{
			Parameters p = null;
			if (string.IsNullOrEmpty(configPath))
				configPath = Constants.DefaultConfigFile;

			if (File.Exists(configPath))
			{
				XmlSerializer s = new XmlSerializer(typeof(Parameters));
				using (StreamReader r = new StreamReader(configPath))
				{
					p = s.Deserialize(r) as Parameters;
				}

				p.ConfigPath = configPath;
				if (!p.IsProtected)
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
				sw = new StreamWriter(this.ConfigPath);
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
			string saveString = this.ConnectionString;

			RijndaelManaged aes = this.CreateCipher();
			ICryptoTransform transform = aes.CreateEncryptor();
			byte[] connectionStringBytes = Encoding.UTF8.GetBytes(this.ConnectionString);
			byte[] cipherText = transform.TransformFinalBlock(connectionStringBytes, 0, connectionStringBytes.Length);
			this.ConnectionString = Convert.ToBase64String(cipherText);

			this.IsProtected = true;
			Write();
			this.ConnectionString = saveString;
		}

		private void RevealConnectionString()
		{
			RijndaelManaged aes = this.CreateCipher();

			try
			{
				ICryptoTransform transform = aes.CreateDecryptor();
				byte[] connectionStringBytes = Convert.FromBase64String(this.ConnectionString);
				byte[] plainText = transform.TransformFinalBlock(connectionStringBytes, 0, connectionStringBytes.Length);
				this.ConnectionString = Encoding.UTF8.GetString(plainText);
			}
			catch (FormatException) { }
			catch (CryptographicException) { }

			this.IsProtected = false;
		}

		private RijndaelManaged CreateCipher()
		{
			RijndaelManaged aes = new RijndaelManaged();
			IsolatedStorageFile isf = null;
			try
			{
				isf = IsolatedStorageFile.GetUserStoreForAssembly();
			}
			catch (SecurityException)
			{
				isf = IsolatedStorageFile.GetMachineStoreForAssembly();
			}

			using (IsolatedStorageFileStream ifs = new IsolatedStorageFileStream(Constants.CipherFile, FileMode.OpenOrCreate, FileAccess.ReadWrite, isf))
			{
				string cipherData = string.Empty;
				if (ifs.Length > 0)
				{
					using (StreamReader sr = new StreamReader(ifs))
					{
						cipherData = sr.ReadLine();
						string[] cipherInit = cipherData.Split(new char[] { Constants.Pipe });
						if (cipherInit.Length == 2)
						{
							aes.IV = rsa.Decrypt(Convert.FromBase64String(cipherInit[0]), true);
							aes.Key = rsa.Decrypt(Convert.FromBase64String(cipherInit[1]), true);
						}
						else
							throw new ArgumentException(Resources.ErrorInvalidCipherData);

						sr.Close();
					}
				}
				else
				{
					cipherData = Convert.ToBase64String(rsa.Encrypt(aes.IV, true))
						+ Constants.Pipe + Convert.ToBase64String(rsa.Encrypt(aes.Key, true));

					using (StreamWriter sw = new StreamWriter(ifs))
					{
						sw.WriteLine(cipherData);
						sw.Flush();
						sw.Close();
					}
				}
			}

			return aes;
		}

		#endregion
	}
}