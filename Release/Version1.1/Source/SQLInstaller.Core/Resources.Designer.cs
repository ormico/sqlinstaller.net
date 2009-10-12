﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:2.0.50727.3082
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SQLInstaller.Core {
    using System;
    
    
    /// <summary>
    ///   A strongly-typed resource class, for looking up localized strings, etc.
    /// </summary>
    // This class was auto-generated by the StronglyTypedResourceBuilder
    // class via a tool like ResGen or Visual Studio.
    // To add or remove a member, edit your .ResX file then rerun ResGen
    // with the /str option, or rebuild your VS project.
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("System.Resources.Tools.StronglyTypedResourceBuilder", "2.0.0.0")]
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    internal class Resources {
        
        private static global::System.Resources.ResourceManager resourceMan;
        
        private static global::System.Globalization.CultureInfo resourceCulture;
        
        [global::System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")]
        internal Resources() {
        }
        
        /// <summary>
        ///   Returns the cached ResourceManager instance used by this class.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        internal static global::System.Resources.ResourceManager ResourceManager {
            get {
                if (object.ReferenceEquals(resourceMan, null)) {
                    global::System.Resources.ResourceManager temp = new global::System.Resources.ResourceManager("SQLInstaller.Core.Resources", typeof(Resources).Assembly);
                    resourceMan = temp;
                }
                return resourceMan;
            }
        }
        
        /// <summary>
        ///   Overrides the current thread's CurrentUICulture property for all
        ///   resource lookups using this strongly typed resource class.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        internal static global::System.Globalization.CultureInfo Culture {
            get {
                return resourceCulture;
            }
            set {
                resourceCulture = value;
            }
        }
        
        internal static System.Drawing.Bitmap back {
            get {
                object obj = ResourceManager.GetObject("back", resourceCulture);
                return ((System.Drawing.Bitmap)(obj));
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to /****** Object:  Database [{0}]    Script Date: 03/29/2007 12:50:49 ******/
        ///USE [master]
        ///GO
        ///-- Get default data path
        ///DECLARE @data_path nvarchar(512);
        ///SET @data_path = (SELECT SUBSTRING(physical_name, 1, CHARINDEX(N&apos;master.mdf&apos;, LOWER(physical_name)) - 1)
        ///                  FROM master.sys.master_files
        ///                  WHERE database_id = 1 AND file_id = 1);
        ///-- Create database                  
        ///EXECUTE( &apos;CREATE DATABASE [{0}] ON  PRIMARY 
        ///( NAME = {0}, FILENAME = &apos;&apos;&apos; + @data_path + &apos;{0}.mdf&apos;&apos; , SI [rest of string was truncated]&quot;;.
        /// </summary>
        internal static string DbCreate {
            get {
                return ResourceManager.GetString("DbCreate", resourceCulture);
            }
        }
        
        internal static System.Drawing.Bitmap icon {
            get {
                object obj = ResourceManager.GetObject("icon", resourceCulture);
                return ((System.Drawing.Bitmap)(obj));
            }
        }
        
        internal static System.Drawing.Bitmap left {
            get {
                object obj = ResourceManager.GetObject("left", resourceCulture);
                return ((System.Drawing.Bitmap)(obj));
            }
        }
        
        internal static System.Drawing.Bitmap Top {
            get {
                object obj = ResourceManager.GetObject("Top", resourceCulture);
                return ((System.Drawing.Bitmap)(obj));
            }
        }
    }
}
