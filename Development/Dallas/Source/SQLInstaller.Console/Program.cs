using System;
using System.Collections.Generic;
using System.Threading;
using System.IO;
using Microsoft.Win32;

using SQLInstaller.Core;

namespace SQLInstaller.Console
{
	class Program
	{
		public delegate void InstallMethod(Schema schema);

		static int Main(string[] args)
		{
			int returnCode = 0;
			CommandLine cl = new CommandLine();
			Runtime installer;
			ProviderType provType = ProviderType.SqlServer;
			Spinner spin = new Spinner();
			try
			{
				cl.Required.Add("database", "Database name (required).");
				cl.Optional.Add("server", "Database server name (default last used).");
				cl.Optional.Add("drop", "Drop database if it exists.");
				cl.Optional.Add("verbose", "Show everything.");
				cl.Optional.Add("path", "Path to the scripts directory (default last used).");
				cl.Optional.Add("type", "Database type [SqlServer|Oracle|PostGres].");
				cl.Optional.Add("user", "Database user (if not using integrated security).");
				cl.Optional.Add("password", "Database user Password.");
				cl.Optional.Add("noprompt", "Do not prompt for upgrade.");
				cl.Optional.Add("retry", "Retry last upgrade (for development only).");
				cl.Optional.Add("?", "Help.");
				cl.Parse(args);

				if (cl.Parameters.ContainsKey("?"))
				{
					System.Console.WriteLine(cl.ShowUsage());
					System.Console.WriteLine("E.g. SqlInstaller.exe /database=MyDatabase /server=MyServer /path=\"C:\\SQL Scripts\\MyDatabase\" /verbose");
				}
				else
				{
					string database = string.Empty;
					string server = string.Empty;
					string path = string.Empty;
					try
					{
						using (RegistryKey installerKey = Registry.LocalMachine.OpenSubKey(@"SOFTWARE\JHOB Technologies\SQLInstaller"))
						{
							if (cl.Parameters.ContainsKey("type") )
							{
								if (string.Compare(cl.Parameters["type"], "PostGres", true) == 0)
									provType = ProviderType.PostGres;
								else if (string.Compare(cl.Parameters["type"], "Oracle", true) == 0)
									provType = ProviderType.Oracle;
							}
							if (cl.Parameters.ContainsKey("path"))
							{
								path = cl.Parameters["path"];
								if (path.Length == 0 || string.Compare(path, "true", true) == 0)
									path = ".";
							}
							else
								path = installerKey.GetValue("Scripts", ".") as string;
							if (cl.Parameters.ContainsKey("server"))
								server = cl.Parameters["server"];
							if (server.Length == 0 || string.Compare(server, "true", true) == 0)
								server = installerKey.GetValue("Server", "localhost") as string;
							if (cl.Parameters.ContainsKey("database"))
								database = cl.Parameters["database"];
							installerKey.Close();
						}
					}
					catch (Exception) { }

					if (database.Length == 0 || string.Compare(database, "true", true) == 0)
						throw new ArgumentException("Missing required parameter: /database");

					RuntimeFlag flags = RuntimeFlag.Create;

					string user = string.Empty;
					string password = string.Empty;

					if (cl.Parameters.ContainsKey("user"))
						user = cl.Parameters["user"];
					if (cl.Parameters.ContainsKey("password"))
						password = cl.Parameters["password"];

					if (cl.Parameters.ContainsKey("drop") && string.Compare(cl.Parameters["drop"], "true", true) == 0)
						flags |= RuntimeFlag.Drop;
					if (cl.Parameters.ContainsKey("retry") && string.Compare(cl.Parameters["retry"], "true", true) == 0)
						flags |= RuntimeFlag.Retry;
					if (cl.Parameters.ContainsKey("verbose") && string.Compare(cl.Parameters["verbose"], "true", true) == 0)
						flags |= RuntimeFlag.Verbose;

					spin.Start(250);
					System.Console.Write("Connecting to " + server + "...");

					installer = new Runtime(path, flags);
					Schema schema = installer.Prepare(provType, server, database, user, password);
					spin.Stop();
					System.Console.WriteLine("Done.");

					try
					{
						using (RegistryKey installerKey = Registry.LocalMachine.OpenSubKey(@"SOFTWARE\JHOB Technologies\SQLInstaller", true))
						{
							DirectoryInfo di = new DirectoryInfo(path);
							installerKey.SetValue("Scripts", path, RegistryValueKind.String);
							installerKey.SetValue("Server", server, RegistryValueKind.String);
							installerKey.SetValue("Database", database, RegistryValueKind.String);
							installerKey.Close();
						}
					}
					catch (Exception) { }

					if (schema.Exists && (flags & RuntimeFlag.Drop) != RuntimeFlag.Drop)
					{
						if (schema.IsCurrent)
						{
							System.Console.WriteLine(schema.Provider.Database + " has already been upgraded to " + schema.Version + " by " + schema.UpgradeBy);
							return 0;
						}
						else
						{
							if (!cl.Parameters.ContainsKey("noprompt") || cl.Parameters["noprompt"].ToLower().StartsWith("f"))
							{
								ConsoleKey key = ConsoleKey.NoName;
								while (key != ConsoleKey.N && key != ConsoleKey.Y)
								{
									System.Console.Write("\rUpgrade " + schema.Provider.Database + " to Version " + schema.Upgrade + " (Y/N)? ");
									key = System.Console.ReadKey(true).Key;
								}
								System.Console.WriteLine(key);
								if (key == ConsoleKey.N)
									return 0;
							}
						}
					}

					spin.Start(250);
					InstallMethod im = new InstallMethod(installer.Create);
					AsyncCallback cb = new AsyncCallback(InstallCallback);

					IAsyncResult asyncResult = im.BeginInvoke(schema, cb, im);

					WaitHandle[] bg = new WaitHandle[] { asyncResult.AsyncWaitHandle };
					Progress prog = new Progress(StatusMessage.Running);
					while (prog.Status != StatusMessage.Exit)
					{
						prog = installer.GetProgress(!WaitHandle.WaitAll(bg, 100, true));
						switch (prog.Status)
						{
							case StatusMessage.Start:
								System.Console.Write("\r" + prog.Message + "...");
								break;
							case StatusMessage.Complete:
							case StatusMessage.Detail:
								System.Console.WriteLine(prog.Message);
								break;
							case StatusMessage.Exit:
								System.Console.WriteLine("Completed with " + prog.Percent + " errors.");
								returnCode = prog.Percent;
								break;
							case StatusMessage.Running:
							case StatusMessage.Progress:
							default:
								break;
						}
					}

				}
			}
			catch (Exception ex)
			{
				returnCode = -1;
				System.Console.WriteLine();
				System.Console.WriteLine(cl.ShowUsage());
				System.Console.WriteLine(ex.Message);
			}
			finally
			{
				if (spin != null)
					spin.Stop();
			}

			return returnCode;
		}

		static void InstallCallback(IAsyncResult iar)
		{
			InstallMethod im = (InstallMethod)iar.AsyncState;
			im.EndInvoke(iar);
		}

	}

}
