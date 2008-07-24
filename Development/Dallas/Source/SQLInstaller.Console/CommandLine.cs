using System;
using System.Collections.Generic;
using System.Text;
using System.Text.RegularExpressions;

namespace SQLInstaller.Console
{
	/// <summary>
	/// CommandLine class
	/// </summary>
	public class CommandLine
	{
		// Variables
		private Dictionary<string, string> parameters;
		private Dictionary<string, string> required;
		private Dictionary<string, string> optional;

		public Dictionary<string, string> Parameters
		{
			get { return parameters; }
		}

		public Dictionary<string, string> Required
		{
			get { return required; }
		}

		public Dictionary<string, string> Optional
		{
			get { return optional; }
		}

		// Constructor
		public CommandLine()
		{
			parameters = new Dictionary<string, string>(StringComparer.InvariantCultureIgnoreCase);
			required = new Dictionary<string, string>(StringComparer.InvariantCultureIgnoreCase);
			optional = new Dictionary<string, string>(StringComparer.InvariantCultureIgnoreCase);
		}

		public void Parse(string[] args)
		{
			Regex Spliter = new Regex(@"^-{1,2}|^/|=|:",
				RegexOptions.IgnoreCase | RegexOptions.Compiled);

			Regex Remover = new Regex(@"^['""]?(.*?)['""]?$",
				RegexOptions.IgnoreCase | RegexOptions.Compiled);

			string Parameter = null;
			string[] Parts;

			// Valid parameters forms:
			// {-,/,--}param{ ,=,:}((",')value(",'))
			// Examples: 
			// -param1 value1 --param2 /param3:"Test-:-work" 
			//   /param4=happy -param5 '--=nice=--'
			foreach (string Txt in args)
			{
				// Look for new parameters (-,/ or --) and a
				// possible enclosed value (=,:)
				Parts = Spliter.Split(Txt, 3);

				switch (Parts.Length)
				{
					// Found a value (for the last parameter 
					// found (space separator))
					case 1:
						if (Parameter != null)
						{
							if (!Parameters.ContainsKey(Parameter))
							{
								Parts[0] =
									Remover.Replace(Parts[0], "$1");

								if ( required.ContainsKey(Parameter) || optional.ContainsKey(Parameter) )
									Parameters.Add(Parameter, Parts[0]);
							}
							Parameter = null;
						}
						// else Error: no parameter waiting for a value (skipped)
						break;

					// Found just a parameter
					case 2:
						// The last parameter is still waiting. 
						// With no value, set it to true.
						if (Parameter != null)
						{
							if (!Parameters.ContainsKey(Parameter))
							{
								if (required.ContainsKey(Parameter) || optional.ContainsKey(Parameter))
									Parameters.Add(Parameter, "true");
							}
						}
						Parameter = Parts[1];
						break;

					// Parameter with enclosed value
					case 3:
						// The last parameter is still waiting. 
						// With no value, set it to true.
						if (Parameter != null)
						{
							if (!Parameters.ContainsKey(Parameter))
							{
								if (required.ContainsKey(Parameter) || optional.ContainsKey(Parameter))
									Parameters.Add(Parameter, "true");
							}
						}

						Parameter = Parts[1];

						// Remove possible enclosing characters (",')
						if (!Parameters.ContainsKey(Parameter))
						{
							Parts[2] = Remover.Replace(Parts[2], "$1");
							if (required.ContainsKey(Parameter) || optional.ContainsKey(Parameter))
								Parameters.Add(Parameter, Parts[2]);
						}

						Parameter = null;
						break;
				}
			}
			// In case a parameter is still waiting
			if (Parameter != null)
			{
				if (!Parameters.ContainsKey(Parameter))
				{
					if (required.ContainsKey(Parameter) || optional.ContainsKey(Parameter))
						Parameters.Add(Parameter, "true");
				}
			}
		}

		public string ShowUsage()
		{
			StringBuilder sb = new StringBuilder();
			sb.AppendLine("SQL Installation/Upgrade Utility");
			sb.AppendLine(string.Empty);
			sb.AppendLine(string.Empty);
			sb.Append("SQLInstaller ");

			foreach (string key in required.Keys)
			{
				sb.Append("/" + key + " ");
			}

			foreach (string key in optional.Keys)
			{
				sb.Append("[/" + key + "] ");
			}

			sb.AppendLine();
			sb.AppendLine();

			foreach (string key in required.Keys)
			{
				sb.AppendFormat("  /{0,-10}\t{1}\r\n", key, required[key]);
			}
			foreach (string key in optional.Keys)
			{
				sb.AppendFormat("  /{0,-10}\t{1}\r\n", key, optional[key]);
			}

			return sb.ToString();
		}

		public override string ToString()
		{
			StringBuilder sb = new StringBuilder();
			foreach (string key in parameters.Keys)
			{
				sb.Append(key + ": " + parameters[key] + "\n");
			}
			return sb.ToString();
		}
	}
}

