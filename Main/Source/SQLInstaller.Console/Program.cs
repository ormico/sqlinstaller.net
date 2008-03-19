using System;
using System.Collections.Generic;
using System.Threading;

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
			Spinner spin = new Spinner();
			try
			{
				cl.Required.Add("database", "SQL Database name (required).");
				cl.Optional.Add("server", "SQL Server name (defaults to localhost).");
				cl.Optional.Add("path", "Path to the scripts directory (defaults to current directory).");
				cl.Optional.Add("user", "SQL Server User (if not using integrated security).");
				cl.Optional.Add("password", "SQL Server User password.");
				cl.Optional.Add("create", "Create database if it does not exist (default).");
				cl.Optional.Add("drop", "Drop database if it exists.");
				cl.Optional.Add("retry", "Recovers from installation failure.");
				cl.Optional.Add("verbose", "Show everything.");
				cl.Optional.Add("noprompt", "Do not prompt.");
				cl.Optional.Add("?", "Help.");
				cl.Parse(args);

				if (cl.Parameters.ContainsKey("?"))
				{
					System.Console.WriteLine(cl.ShowUsage());
					System.Console.WriteLine("E.g. SqlInstaller.exe /database=MyDatabase /server=MyServer /path=\"C:\\SQL Scripts\\MyDatabase\" /create /verbose");
				}
				else
				{
					foreach (string key in cl.Required.Keys)
					{
						if (!cl.Parameters.ContainsKey(key))
							throw new ArgumentException("Missing required parameter: /" + key);
					}

					RuntimeFlag flags = RuntimeFlag.None;

					string server = "localhost";
					string path = string.Empty;
					string database = cl.Parameters["database"];
					string user = string.Empty;
					string password = string.Empty;

					if (cl.Parameters.ContainsKey("server") && cl.Parameters["server"].Length > 0)
						server = cl.Parameters["server"];
					if (cl.Parameters.ContainsKey("path"))
						path = cl.Parameters["path"];
					if (cl.Parameters.ContainsKey("user"))
						user = cl.Parameters["user"];
					if (cl.Parameters.ContainsKey("password"))
						password = cl.Parameters["password"];

					if (!cl.Parameters.ContainsKey("create") || string.Compare(cl.Parameters["create"], "true", true) == 0)
						flags |= RuntimeFlag.Create;
					if (cl.Parameters.ContainsKey("drop") && string.Compare(cl.Parameters["drop"], "true", true) == 0)
						flags |= RuntimeFlag.Drop;
					if (cl.Parameters.ContainsKey("retry") && string.Compare(cl.Parameters["retry"], "true", true) == 0)
						flags |= RuntimeFlag.Retry;
					if (cl.Parameters.ContainsKey("verbose") && string.Compare(cl.Parameters["verbose"], "true", true) == 0)
						flags |= RuntimeFlag.Verbose;

					spin.Start(250);
					System.Console.Write("Connecting to " + server + "...");

					installer = new Runtime(path, flags);
					Schema schema = installer.Prepare(server, database, user, password);
					spin.Stop();
					System.Console.WriteLine("Done.");

					if (schema.Exists && (flags & RuntimeFlag.Drop) != RuntimeFlag.Drop)
					{
						if (schema.ScriptsTotal == 0)
						{
							System.Console.WriteLine(schema.Database + " has already been upgraded to " + schema.Version + " by " + schema.UpgradeBy);
							return 0;
						}
						else
						{
							if (!cl.Parameters.ContainsKey("noprompt") || cl.Parameters["noprompt"].ToLower().StartsWith("f"))
							{
								ConsoleKey key = ConsoleKey.NoName;
								while (key != ConsoleKey.N && key != ConsoleKey.Y)
								{
									System.Console.Write("\rUpgrade " + schema.Database + " to Version " + schema.Upgrade + " (Y/N)? ");
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
				if ( spin != null )
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
