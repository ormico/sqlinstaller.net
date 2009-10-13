using System;
using System.Collections.Generic;
using System.Threading;
using System.IO;

using SQLInstaller.Core;

namespace SQLInstaller.Console
{
	class Program
	{
		public delegate void InstallMethod(Schema schema);

		static int Main(string[] args)
		{
			int returnCode = 0;

			Runtime installer;
			Spinner spin = new Spinner();

			try
			{
				string configPath = Path.Combine(Directory.GetCurrentDirectory(), "SQLInstaller.xml");

				if (args.Length > 0)
					configPath = args[0];
				Parameters p = Parameters.Load(configPath);
				if (p == null)
				{
					p = new Parameters();
					p.ConfigPath = configPath;
					p.Write();
					throw new ApplicationException("Missing parameters xml file (SQLInstaller.xml). Creating a new template. Please edit as appropriate. Exiting.");
				}

				spin.Start(250);
				System.Console.Write("Connecting to database...");

				installer = new Runtime(p.ScriptPath, p.Flags);
				Schema schema = installer.Prepare(p.ProviderType, p.ConnectionString, p.Database);
				spin.Stop();
				System.Console.WriteLine("Done.");

				if (schema.Exists && !p.Flags.Has(RuntimeFlag.Drop))
				{
					if (schema.IsCurrent && !p.Flags.Has(RuntimeFlag.Retry))
					{
						System.Console.WriteLine(schema.Provider.Database + " has already been upgraded to " + schema.Version + " by " + schema.UpgradeBy);
						return 0;
					}
					else
					{
						if (!p.NoPrompt)
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
			catch (Exception ex)
			{
				returnCode = -1;
				System.Console.WriteLine();
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
