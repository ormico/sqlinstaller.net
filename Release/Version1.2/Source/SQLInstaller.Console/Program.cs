//-----------------------------------------------------------------------
// <copyright file="Program.cs" company="JHOB Technologies, LLC">
//     Copyright © JHOB Technologies, LLC. All rights reserved.
// </copyright>
// <license>Microsoft Public License</license>
// <author>Brian Schloz</author>
//-----------------------------------------------------------------------
namespace SQLInstaller.Console
{
	using System;
    using System.Configuration;
    using System.IO;
	using System.Threading;

	using SQLInstaller.Core;

	/// <summary>
	/// Class containing the program entry point.
	/// </summary>
	public class Program
	{
        /// <summary>
        /// Delegate method for installer thread.
        /// </summary>
		public delegate void InstallMethod();

        /// <summary>
        /// Allow runtime usage data to be collected by external webservice. Set to false to disable.
        /// </summary>
        public static bool OptIn { get; private set; }

        /// <summary>
        /// Console application entry point.
        /// </summary>
        /// <param name="args">An array of arguments.</param>
        /// <returns>Zero (0) for success and non-zero for failure.</returns>
        public static int Main(string[] args)
		{
            double spinCycle = Constants.MinSpinTimeout;
            bool forceWrite = false;
			Installer installer;
			Spinner spin = new Spinner();
            Program.OptIn = Convert.ToBoolean(ConfigurationManager.AppSettings[Constants.OptIn]); 
            
			try
			{
				string configPath = string.Empty;

                // Retain backwards compatability with using just config file as a single parameter.
                if (args.Length > 0 && !args[0].StartsWith("/", StringComparison.OrdinalIgnoreCase))
                {
                    configPath = args[0];
                    if (!File.Exists(configPath))
                    {
                        forceWrite = true;
                    }
                }
                else
                {
                    configPath = Path.Combine(Directory.GetCurrentDirectory(), Constants.SQLInstallerXml);
                }

                // Allow parameter overrides and/or specifying all parameters from command line.
                Arguments<Parameters> parms = null;
                if (File.Exists(configPath))
                {
                    parms = new Arguments<Parameters>(args, Parameters.Load(configPath));
                }
                else
                {
                    parms = new Arguments<Parameters>(args, new Parameters(configPath));
                }

                if (!parms.IsValid)
                {
                    throw new ApplicationException(parms.ValidationErrors);
                }

                if (parms.Instance.WriteConfig || forceWrite)
                {
                    if (!parms.Instance.IsProtected)
                    {
                        parms.Instance.ProtectConnectionString();
                    }
                    else
                    {
                        parms.Instance.Write();
                    }
                }

				spin.Start(spinCycle);
				Console.WriteLine(Resources.StatusConnecting);

				installer = new Installer(parms.Instance);
				installer.Prepare();
				spin.Stop();

                if (installer.Exists && !parms.Instance.Options.Has(Options.Drop))
				{
                    if (installer.IsCurrent && !parms.Instance.Options.Has(Options.Retry))
					{
                        Console.WriteLine(parms.Instance.Database + Resources.StatusAlreadyUpgraded + installer.Version + Resources.StatusBy + installer.UpgradeBy);
						return 0;
					}
					else
					{
                        if (!parms.Instance.NoPrompt && !installer.CleanInstall)
						{
							ConsoleKey key = ConsoleKey.NoName;
							while (key != ConsoleKey.N && key != ConsoleKey.Y)
							{
								Console.WriteLine();
                                Console.Write(Resources.AskUpgrade + parms.Instance.Database + Resources.AskToVersion + installer.Upgrade + Resources.AskYesNo);
								key = Console.ReadKey(true).Key;
							}

							Console.WriteLine(key);
                            if (key == ConsoleKey.N)
                            {
                                return 0;
                            }
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
							Console.WriteLine(prog.Message + Constants.Wait);
							spin.Start(spinCycle);
							break;
                        case StatusMessage.Detail:
							spin.Stop();
							Console.WriteLine(prog.Message);
							spin.Start(spinCycle);
							break;
                        case StatusMessage.Exit:
							spin.Stop();
							Console.WriteLine(Resources.StatusCompletedWith + prog.Percent + Resources.StatusErrorCount);
							break;
                        case StatusMessage.Complete:
                        case StatusMessage.Running:
						case StatusMessage.Progress:
						default:
							break;
					}
				}
			}
			catch (Exception ex)
			{
				Console.WriteLine(string.Format(Resources.ErrorGeneric, ex.Message));
			}
			finally
			{
                if (spin != null)
                {
                    spin.Stop();
                }
			}

            return 0;
		}

        /// <summary>
        /// The callback method for the main installer thread.
        /// </summary>
        /// <param name="iar">The result from the called thread.</param>
		public static void InstallCallback(IAsyncResult iar)
		{
			InstallMethod im = (InstallMethod)iar.AsyncState;
			im.EndInvoke(iar);
		}
	}
}