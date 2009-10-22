﻿/*  ----------------------------------------------------------------------------
 *  SQL Installer.NET
 *  Microsoft Public License (http://www.microsoft.com/opensource/licenses.mspx#Ms-PL)
 *  ----------------------------------------------------------------------------
 *  File:       EnumerationExtensions.cs
 *  Author:     Brian Schloz
 *  ----------------------------------------------------------------------------
 */
namespace SQLInstaller.Core
{
	using System;

	/// <summary>
	/// Extensions to Enum class providing some helper methods.
	/// </summary>
	public static class EnumerationExtensions
	{
		public static bool Has<T>(this Enum type, T value)
		{
			try
			{
				return ((int)(object)type & (int)(object)value) == (int)(object)value;
			}
			catch
			{
				return false;
			}
		}

		public static bool Is<T>(this Enum type, T value)
		{
			try
			{
				return (int)(object)type == (int)(object)value;
			}
			catch
			{
				return false;
			}
		}

		public static T Add<T>(this Enum type, T value)
		{
			try
			{
				return (T)(object)((int)(object)type | (int)(object)value);
			}
			catch (Exception ex)
			{
				throw new ArgumentException(string.Format(Resources.ErrorEnumAppend, typeof(T).Name), ex);
			}
		}

		public static T Remove<T>(this Enum type, T value)
		{
			try
			{
				return (T)(object)((int)(object)type & ~(int)(object)value);
			}
			catch (Exception ex)
			{
				throw new ArgumentException(string.Format(Resources.ErrorEnumRemove, typeof(T).Name), ex);
			}
		}

		public static T SetIf<T>(this Enum type, T value, bool doSet)
		{
			if (doSet)
				return Add(type, value);
			else
				return Remove(type, value);
		}
	}
}