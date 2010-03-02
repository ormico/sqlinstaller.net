﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:2.0.50727.3607
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
        ///   Looks up a localized string similar to Could not append value from enumerated type &apos;{0}&apos;..
        /// </summary>
        internal static string ErrorEnumAppend {
            get {
                return ResourceManager.GetString("ErrorEnumAppend", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Could not remove value from enumerated type &apos;{0}&apos;..
        /// </summary>
        internal static string ErrorEnumRemove {
            get {
                return ResourceManager.GetString("ErrorEnumRemove", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to The cipher data is invalid. Cannot decrypt connection string..
        /// </summary>
        internal static string ErrorInvalidCipherData {
            get {
                return ResourceManager.GetString("ErrorInvalidCipherData", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to You must prepare the schema first..
        /// </summary>
        internal static string ErrorSchemaPrep {
            get {
                return ResourceManager.GetString("ErrorSchemaPrep", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to ERROR unknown data provider: .
        /// </summary>
        internal static string ErrorUnknownProvider {
            get {
                return ResourceManager.GetString("ErrorUnknownProvider", resourceCulture);
            }
        }
        
        internal static System.Drawing.Bitmap icon {
            get {
                object obj = ResourceManager.GetObject("icon", resourceCulture);
                return ((System.Drawing.Bitmap)(obj));
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to You cannot have an Upgrade directory with the reserved name:.
        /// </summary>
        internal static string InvalidReserved {
            get {
                return ResourceManager.GetString("InvalidReserved", resourceCulture);
            }
        }
        
        internal static System.Drawing.Bitmap left {
            get {
                object obj = ResourceManager.GetObject("left", resourceCulture);
                return ((System.Drawing.Bitmap)(obj));
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Missing required parameter..
        /// </summary>
        internal static string MissingReq {
            get {
                return ResourceManager.GetString("MissingReq", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Script directory is missing:.
        /// </summary>
        internal static string MissingScriptDir {
            get {
                return ResourceManager.GetString("MissingScriptDir", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to &lt;?xml version=&quot;1.0&quot; encoding=&quot;utf-8&quot;?&gt;
        ///&lt;ProviderFactory xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot; xmlns=&quot;ProviderFactory&quot;&gt;
        ///	&lt;Providers&gt;
        ///		&lt;Provider Name=&quot;Oracle&quot; InvariantName=&quot;System.Data.OracleClient&quot;&gt;
        ///			&lt;Scripts&gt;
        ///				&lt;Script Type=&quot;Exists&quot;&gt;SELECT COUNT(*) FROM all_users WHERE username = UPPER(&apos;{0}&apos;)&lt;/Script&gt;
        ///				&lt;Script Type=&quot;Drop&quot;&gt;DROP USER {0} CASCADE&lt;/Script&gt;
        ///				&lt;Script Type=&quot;Create&quot;&gt;BEGIN CREATE USER {0} IDENTIFIED EXTERNALLY; GRANT UNLIMITED TABLESPACE TO {0}; END;&lt;/Script&gt;
        ///				 [rest of string was truncated]&quot;;.
        /// </summary>
        internal static string ProviderFactory {
            get {
                return ResourceManager.GetString("ProviderFactory", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to  has already been upgraded to .
        /// </summary>
        internal static string StatusAlreadyUpgraded {
            get {
                return ResourceManager.GetString("StatusAlreadyUpgraded", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to  by .
        /// </summary>
        internal static string StatusBy {
            get {
                return ResourceManager.GetString("StatusBy", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Connecting to database..
        /// </summary>
        internal static string StatusConnecting {
            get {
                return ResourceManager.GetString("StatusConnecting", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Creating database .
        /// </summary>
        internal static string StatusCreatingDatabase {
            get {
                return ResourceManager.GetString("StatusCreatingDatabase", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Done..
        /// </summary>
        internal static string StatusDone {
            get {
                return ResourceManager.GetString("StatusDone", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Dropping database .
        /// </summary>
        internal static string StatusDroppingDatabase {
            get {
                return ResourceManager.GetString("StatusDroppingDatabase", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Error..
        /// </summary>
        internal static string StatusError {
            get {
                return ResourceManager.GetString("StatusError", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Completed with .
        /// </summary>
        internal static string StatusErrorComp {
            get {
                return ResourceManager.GetString("StatusErrorComp", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to  errors..
        /// </summary>
        internal static string StatusErrorWith {
            get {
                return ResourceManager.GetString("StatusErrorWith", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Executing script: .
        /// </summary>
        internal static string StatusExecutingScript {
            get {
                return ResourceManager.GetString("StatusExecutingScript", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Installing database .
        /// </summary>
        internal static string StatusInstallingDatabase {
            get {
                return ResourceManager.GetString("StatusInstallingDatabase", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to  on .
        /// </summary>
        internal static string StatusOnSeparator {
            get {
                return ResourceManager.GetString("StatusOnSeparator", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Completed successfully..
        /// </summary>
        internal static string StatusSuccess {
            get {
                return ResourceManager.GetString("StatusSuccess", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Upgrading Database to version .
        /// </summary>
        internal static string StatusUpgradingDatabase {
            get {
                return ResourceManager.GetString("StatusUpgradingDatabase", resourceCulture);
            }
        }
        
        internal static System.Drawing.Bitmap Top {
            get {
                object obj = ResourceManager.GetObject("Top", resourceCulture);
                return ((System.Drawing.Bitmap)(obj));
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to WARNING: missing Install directory. An empty database was created..
        /// </summary>
        internal static string WarnMissingInstall {
            get {
                return ResourceManager.GetString("WarnMissingInstall", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to WARNING: missing Upgrade directory. Nothing to do..
        /// </summary>
        internal static string WarnMissingUpgrade {
            get {
                return ResourceManager.GetString("WarnMissingUpgrade", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to WARNING: no version directories found. Nothing to do..
        /// </summary>
        internal static string WarnMissingVersions {
            get {
                return ResourceManager.GetString("WarnMissingVersions", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to WARNING: no new scripts found. Nothing to do..
        /// </summary>
        internal static string WarnNoNewScripts {
            get {
                return ResourceManager.GetString("WarnNoNewScripts", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to WARNING: no scripts found. An empty database was created..
        /// </summary>
        internal static string WarnNoScripts {
            get {
                return ResourceManager.GetString("WarnNoScripts", resourceCulture);
            }
        }
    }
}
