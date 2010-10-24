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
		public delegate void InstallMethod();

		public static int Main(string[] args)
		{
			int returnCode = 0;
			double spinCycle = Constants.MinSpinTimeout;

			Installer installer;
			Spinner spin = new Spinner();

			try
			{
				string configPath = string.Empty;

				if (args.Length > 0)
					configPath = args[0];

				if (string.IsNullOrEmpty(configPath))
					configPath = Path.Combine(Directory.GetCurrentDirectory(), Constants.SQLInstallerXml);

				Parameters p = Parameters.Load(configPath);

				spin.Start(spinCycle);
				Console.Write(Resources.StatusConnecting);

				installer = new Installer(p);
				installer.Prepare();
				spin.Stop();
				Console.WriteLine(Resources.StatusDone);

				if (installer.Exists && !p.Options.Has(Options.Drop))
				{
                    if (installer.IsCurrent && !p.Options.Has(Options.Retry))
					{
                        Console.WriteLine(p.Database + Resources.StatusAlreadyUpgraded + installer.Version + Resources.StatusBy + installer.UpgradeBy);
						return 0;
					}
					else
					{
						if (!p.NoPrompt)
						{
							ConsoleKey key = ConsoleKey.NoName;
							while (key != ConsoleKey.N && key != ConsoleKey.Y)
							{
								Console.WriteLine();
                                Console.Write(Resources.AskUpgrade + p.Database + Resources.AskToVersion + installer.Upgrade + Resources.AskYesNo);
								key = Console.ReadKey(true).Key;
							}

							Console.WriteLine(key);
							if (key == ConsoleKey.N)
								return 0;
						}
					}
				}

				InstallMethod im = new InstallMethod(installer.Create);
				AsyncCallback cb = new AsyncCallback(InstallCallback);

				IAsyncResult asyncResult = im.BeginInvoke(cb, im);

				WaitHandle[] bg = new WaitHandle[] { asyncResult.AsyncWaitHandle };
				Progress prog = new Progress(StatusMessage.Running);
				while (prog.Status != StatusMessage.Exit)
				{
					prog = installer.GetProgress(!WaitHandle.WaitAll(bg, 100, true));
					switch (prog.Status)
					{
						case StatusMessage.Start:
							Console.Write(Constants.CarriageReturn + prog.Message + Constants.Wait);
							spin.Start(spinCycle);
							break;
						case StatusMessage.Complete:
						case StatusMessage.Detail:
							spin.Stop();
							Console.WriteLine(prog.Message);
							spin.Start(spinCycle);
							break;
						case StatusMessage.Exit:
							spin.Stop();
							Console.WriteLine(Resources.StatusCompletedWith + prog.Percent + Resources.StatusErrorCount);
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
				Console.WriteLine();
				Console.WriteLine(ex.Message);
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