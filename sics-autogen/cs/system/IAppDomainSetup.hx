package cs.system;

@:nativeGen @:abstract @:libType @:csNative @:native("System.IAppDomainSetup") extern interface IAppDomainSetup {
	var ApplicationBase(get,set) : String;
	var ApplicationName(get,set) : String;
	var CachePath(get,set) : String;
	var ConfigurationFile(get,set) : String;
	var DynamicBase(get,set) : String;
	var LicenseFile(get,set) : String;
	var PrivateBinPath(get,set) : String;
	var PrivateBinPathProbe(get,set) : String;
	var ShadowCopyDirectories(get,set) : String;
	var ShadowCopyFiles(get,set) : String;
	function get_ApplicationBase() : String;
	function get_ApplicationName() : String;
	function get_CachePath() : String;
	function get_ConfigurationFile() : String;
	function get_DynamicBase() : String;
	function get_LicenseFile() : String;
	function get_PrivateBinPath() : String;
	function get_PrivateBinPathProbe() : String;
	function get_ShadowCopyDirectories() : String;
	function get_ShadowCopyFiles() : String;
	function set_ApplicationBase(value : String) : String;
	function set_ApplicationName(value : String) : String;
	function set_CachePath(value : String) : String;
	function set_ConfigurationFile(value : String) : String;
	function set_DynamicBase(value : String) : String;
	function set_LicenseFile(value : String) : String;
	function set_PrivateBinPath(value : String) : String;
	function set_PrivateBinPathProbe(value : String) : String;
	function set_ShadowCopyDirectories(value : String) : String;
	function set_ShadowCopyFiles(value : String) : String;
}
