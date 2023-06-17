package cs.system;

@:nativeGen @:libType @:csNative @:native("System.AppDomainManager") extern class AppDomainManager extends MarshalByRefObject {
	var ApplicationActivator(get,never) : cs.system.runtime.hosting.ApplicationActivator;
	var EntryAssembly(get,never) : cs.system.reflection.Assembly;
	var HostExecutionContextManager(get,never) : cs.system.threading.HostExecutionContextManager;
	var HostSecurityManager(get,never) : cs.system.security.HostSecurityManager;
	var InitializationFlags(get,set) : AppDomainManagerInitializationOptions;
	function new() : Void;
	function CheckSecuritySettings(state : cs.system.security.SecurityState) : Bool;
	function CreateDomain(friendlyName : String, securityInfo : cs.system.security.policy.Evidence, appDomainInfo : AppDomainSetup) : AppDomain;
	function InitializeNewDomain(appDomainInfo : AppDomainSetup) : Void;
	function get_ApplicationActivator() : cs.system.runtime.hosting.ApplicationActivator;
	function get_EntryAssembly() : cs.system.reflection.Assembly;
	function get_HostExecutionContextManager() : cs.system.threading.HostExecutionContextManager;
	function get_HostSecurityManager() : cs.system.security.HostSecurityManager;
	function get_InitializationFlags() : AppDomainManagerInitializationOptions;
	function set_InitializationFlags(value : AppDomainManagerInitializationOptions) : AppDomainManagerInitializationOptions;
	@:protected private static function CreateDomainHelper(friendlyName : String, securityInfo : cs.system.security.policy.Evidence, appDomainInfo : AppDomainSetup) : AppDomain;
}
