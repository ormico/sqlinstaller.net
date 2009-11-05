/*  ----------------------------------------------------------------------------
 *  SQL Installer.NET
 *  Microsoft Public License (http://www.microsoft.com/opensource/licenses.mspx#Ms-PL)
 *  ----------------------------------------------------------------------------
 *  File:       Program.cs
 *  Author:     Brian Schloz
 *  ----------------------------------------------------------------------------
 */
namespace SQLInstaller.Console
{
	using System;
	using System.Collections.Generic;
	using System.IO;
	using System.Threading;

	using SQLInstaller.Core;

	/// <summary>
	/// Program entry point.
	/// </summary>
	public class Program
	{
		public delegate void InstallMethod(SchemaInfo schema);

		public static int Main(string[] args)
		{
			int returnCode = 0;
			double spinCycle = Constants.MinSpinTimeout;

			Installer installer;
			Spinner spin = new Spinner();

			try
			{
				string configPath = Constants.DefaultConfigFile;

				if (args.Length > 0)
					configPath = args[0];
				Parameters p = Parameters.Load(configPath);
				if (p == null)
				{
					p = new Parameters();
					p.ConfigPath = configPath;
					p.Write();
					throw new ArgumentException(Resources.MissingParmFile + configPath + Resources.ExitingWithNewTemplate);
				}

				if (p.NoPrompt)
					spinCycle = double.MinValue;

				spin.Start(spinCycle);
				System.Console.Write(Resources.StatusConnecting);

				installer = new Installer(p.ScriptPath, p.Options);
				SchemaInfo schema = installer.Prepare(p.ProviderType, p.ConnectionString, p.Database);
				spin.Stop();
				System.Console.WriteLine(Resources.StatusDone);

				if (schema.Exists && !p.Options.Has(Options.Drop))
				{
					if (schema.IsCurrent && !p.Options.Has(Options.Retry))
					{
						System.Console.WriteLine(schema.Provider.Database + Resources.StatusAlreadyUpgraded + schema.Version + Resources.StatusBy + schema.UpgradeBy);
						return 0;
					}
					else
					{
						if (!p.NoPrompt)
						{
							ConsoleKey key = ConsoleKey.NoName;
							while (key != ConsoleKey.N && key != ConsoleKey.Y)
							{
								System.Console.WriteLine();
								System.Console.Write(Resources.AskUpgrade + schema.Provider.Database + Resources.AskToVersion + schema.Upgrade + Resources.AskYesNo);
								key = System.Console.ReadKey(true).Key;
							}

							System.Console.WriteLine(key);
							if (key == ConsoleKey.N)
								return 0;
						}
					}
				}

				spin.Start(spinCycle);
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
							System.Console.Write(Constants.CarriageReturn + prog.Message + Constants.Wait);
							break;
						case StatusMessage.Complete:
						case StatusMessage.Detail:
							System.Console.WriteLine(prog.Message);
							break;
						case StatusMessage.Exit:
							System.Console.WriteLine(Resources.StatusCompletedWith + prog.Percent + Resources.StatusErrorCount);
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

		public static void InstallCallback(IAsyncResult iar)
		{
			InstallMethod im = (InstallMethod)iar.AsyncState;
			im.EndInvoke(iar);
		}
	}
}