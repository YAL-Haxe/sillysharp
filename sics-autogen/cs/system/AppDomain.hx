package cs.system;

@:nativeGen @:libType @:csNative @:native("System.AppDomain") extern final class AppDomain extends MarshalByRefObject implements _AppDomain implements cs.system.security.IEvidenceFactory {
	var ActivationContext(get,never) : ActivationContext;
	var ApplicationIdentity(get,never) : ApplicationIdentity;
	var ApplicationTrust(get,never) : cs.system.security.policy.ApplicationTrust;
	@:event @:keep @:skipReflection private var AssemblyLoad : AssemblyLoadEventHandler;
	@:event @:keep @:skipReflection private var AssemblyResolve : ResolveEventHandler;
	var BaseDirectory(get,never) : String;
	var DomainManager(get,never) : AppDomainManager;
	@:event @:keep @:skipReflection private var DomainUnload : EventHandler;
	var DynamicDirectory(get,never) : String;
	var Evidence(get,never) : cs.system.security.policy.Evidence;
	var FriendlyName(get,never) : String;
	var Id(get,never) : Int;
	var IsFullyTrusted(get,never) : Bool;
	var IsHomogenous(get,never) : Bool;
	var MonitoringSurvivedMemorySize(get,never) : haxe.Int64;
	var MonitoringTotalAllocatedMemorySize(get,never) : haxe.Int64;
	var MonitoringTotalProcessorTime(get,never) : TimeSpan;
	var PermissionSet(get,never) : cs.system.security.PermissionSet;
	@:event @:keep @:skipReflection private var ProcessExit : EventHandler;
	@:event @:keep @:skipReflection private var ReflectionOnlyAssemblyResolve : ResolveEventHandler;
	var RelativeSearchPath(get,never) : String;
	@:event @:keep @:skipReflection private var ResourceResolve : ResolveEventHandler;
	var SetupInformation(get,never) : AppDomainSetup;
	var ShadowCopyFiles(get,never) : Bool;
	@:event @:keep @:skipReflection private var TypeResolve : ResolveEventHandler;
	@:event @:keep @:skipReflection private var UnhandledException : UnhandledExceptionEventHandler;
	function AppendPrivatePath(path : String) : Void;
	function ApplyPolicy(assemblyName : String) : String;
	function ClearPrivatePath() : Void;
	function ClearShadowCopyPath() : Void;
	@:overload(function(assemblyName : String, typeName : String) : cs.system.runtime.remoting.ObjectHandle {})
	function CreateComInstanceFrom(assemblyFile : String, typeName : String, hashValue : cs.NativeArray<cs.types.UInt8>, hashAlgorithm : cs.system.configuration.assemblies.AssemblyHashAlgorithm) : cs.system.runtime.remoting.ObjectHandle;
	@:overload(function(assemblyName : String, typeName : String) : cs.system.runtime.remoting.ObjectHandle {})
	@:overload(function(assemblyName : String, typeName : String, ignoreCase : Bool, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, args : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo, activationAttributes : cs.NativeArray<Dynamic>) : cs.system.runtime.remoting.ObjectHandle {})
	@:overload(function(assemblyName : String, typeName : String, ignoreCase : Bool, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, args : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo, activationAttributes : cs.NativeArray<Dynamic>, securityAttributes : cs.system.security.policy.Evidence) : cs.system.runtime.remoting.ObjectHandle {})
	function CreateInstance(assemblyName : String, typeName : String, activationAttributes : cs.NativeArray<Dynamic>) : cs.system.runtime.remoting.ObjectHandle;
	@:overload(function(assemblyName : String, typeName : String) : Dynamic {})
	@:overload(function(assemblyName : String, typeName : String, ignoreCase : Bool, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, args : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo, activationAttributes : cs.NativeArray<Dynamic>) : Dynamic {})
	@:overload(function(assemblyName : String, typeName : String, ignoreCase : Bool, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, args : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo, activationAttributes : cs.NativeArray<Dynamic>, securityAttributes : cs.system.security.policy.Evidence) : Dynamic {})
	function CreateInstanceAndUnwrap(assemblyName : String, typeName : String, activationAttributes : cs.NativeArray<Dynamic>) : Dynamic;
	@:overload(function(assemblyFile : String, typeName : String, ignoreCase : Bool, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, args : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo, activationAttributes : cs.NativeArray<Dynamic>) : cs.system.runtime.remoting.ObjectHandle {})
	@:overload(function(assemblyFile : String, typeName : String, ignoreCase : Bool, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, args : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo, activationAttributes : cs.NativeArray<Dynamic>, securityAttributes : cs.system.security.policy.Evidence) : cs.system.runtime.remoting.ObjectHandle {})
	@:overload(function(assemblyFile : String, typeName : String, activationAttributes : cs.NativeArray<Dynamic>) : cs.system.runtime.remoting.ObjectHandle {})
	function CreateInstanceFrom(assemblyFile : String, typeName : String) : cs.system.runtime.remoting.ObjectHandle;
	@:overload(function(assemblyFile : String, typeName : String, ignoreCase : Bool, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, args : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo, activationAttributes : cs.NativeArray<Dynamic>) : Dynamic {})
	@:overload(function(assemblyName : String, typeName : String, ignoreCase : Bool, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, args : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo, activationAttributes : cs.NativeArray<Dynamic>, securityAttributes : cs.system.security.policy.Evidence) : Dynamic {})
	@:overload(function(assemblyName : String, typeName : String, activationAttributes : cs.NativeArray<Dynamic>) : Dynamic {})
	function CreateInstanceFromAndUnwrap(assemblyName : String, typeName : String) : Dynamic;
	@:overload(function(name : cs.system.reflection.AssemblyName, access : cs.system.reflection.emit.AssemblyBuilderAccess) : cs.system.reflection.emit.AssemblyBuilder {})
	@:overload(function(name : cs.system.reflection.AssemblyName, access : cs.system.reflection.emit.AssemblyBuilderAccess, assemblyAttributes : cs.system.collections.generic.IEnumerable_1<cs.system.reflection.emit.CustomAttributeBuilder>, securityContextSource : cs.system.security.SecurityContextSource) : cs.system.reflection.emit.AssemblyBuilder {})
	@:overload(function(name : cs.system.reflection.AssemblyName, access : cs.system.reflection.emit.AssemblyBuilderAccess, dir : String, isSynchronized : Bool, assemblyAttributes : cs.system.collections.generic.IEnumerable_1<cs.system.reflection.emit.CustomAttributeBuilder>) : cs.system.reflection.emit.AssemblyBuilder {})
	@:overload(function(name : cs.system.reflection.AssemblyName, access : cs.system.reflection.emit.AssemblyBuilderAccess, assemblyAttributes : cs.system.collections.generic.IEnumerable_1<cs.system.reflection.emit.CustomAttributeBuilder>) : cs.system.reflection.emit.AssemblyBuilder {})
	@:overload(function(name : cs.system.reflection.AssemblyName, access : cs.system.reflection.emit.AssemblyBuilderAccess, dir : String, evidence : cs.system.security.policy.Evidence, requiredPermissions : cs.system.security.PermissionSet, optionalPermissions : cs.system.security.PermissionSet, refusedPermissions : cs.system.security.PermissionSet, isSynchronized : Bool, assemblyAttributes : cs.system.collections.generic.IEnumerable_1<cs.system.reflection.emit.CustomAttributeBuilder>) : cs.system.reflection.emit.AssemblyBuilder {})
	@:overload(function(name : cs.system.reflection.AssemblyName, access : cs.system.reflection.emit.AssemblyBuilderAccess, dir : String, evidence : cs.system.security.policy.Evidence, requiredPermissions : cs.system.security.PermissionSet, optionalPermissions : cs.system.security.PermissionSet, refusedPermissions : cs.system.security.PermissionSet, isSynchronized : Bool) : cs.system.reflection.emit.AssemblyBuilder {})
	@:overload(function(name : cs.system.reflection.AssemblyName, access : cs.system.reflection.emit.AssemblyBuilderAccess, dir : String, evidence : cs.system.security.policy.Evidence, requiredPermissions : cs.system.security.PermissionSet, optionalPermissions : cs.system.security.PermissionSet, refusedPermissions : cs.system.security.PermissionSet) : cs.system.reflection.emit.AssemblyBuilder {})
	@:overload(function(name : cs.system.reflection.AssemblyName, access : cs.system.reflection.emit.AssemblyBuilderAccess, dir : String, requiredPermissions : cs.system.security.PermissionSet, optionalPermissions : cs.system.security.PermissionSet, refusedPermissions : cs.system.security.PermissionSet) : cs.system.reflection.emit.AssemblyBuilder {})
	@:overload(function(name : cs.system.reflection.AssemblyName, access : cs.system.reflection.emit.AssemblyBuilderAccess, evidence : cs.system.security.policy.Evidence, requiredPermissions : cs.system.security.PermissionSet, optionalPermissions : cs.system.security.PermissionSet, refusedPermissions : cs.system.security.PermissionSet) : cs.system.reflection.emit.AssemblyBuilder {})
	@:overload(function(name : cs.system.reflection.AssemblyName, access : cs.system.reflection.emit.AssemblyBuilderAccess, requiredPermissions : cs.system.security.PermissionSet, optionalPermissions : cs.system.security.PermissionSet, refusedPermissions : cs.system.security.PermissionSet) : cs.system.reflection.emit.AssemblyBuilder {})
	@:overload(function(name : cs.system.reflection.AssemblyName, access : cs.system.reflection.emit.AssemblyBuilderAccess, dir : String, evidence : cs.system.security.policy.Evidence) : cs.system.reflection.emit.AssemblyBuilder {})
	@:overload(function(name : cs.system.reflection.AssemblyName, access : cs.system.reflection.emit.AssemblyBuilderAccess, dir : String) : cs.system.reflection.emit.AssemblyBuilder {})
	function DefineDynamicAssembly(name : cs.system.reflection.AssemblyName, access : cs.system.reflection.emit.AssemblyBuilderAccess, evidence : cs.system.security.policy.Evidence) : cs.system.reflection.emit.AssemblyBuilder;
	function DoCallBack(callBackDelegate : CrossAppDomainDelegate) : Void;
	@:overload(function(assemblyFile : String) : Int {})
	@:overload(function(assemblyFile : String, args : cs.NativeArray<String>, hashValue : cs.NativeArray<cs.types.UInt8>, hashAlgorithm : cs.system.configuration.assemblies.AssemblyHashAlgorithm) : Int {})
	@:overload(function(assemblyFile : String, args : cs.NativeArray<String>) : Int {})
	@:overload(function(assemblyFile : String, assemblySecurity : cs.system.security.policy.Evidence, args : cs.NativeArray<String>, hashValue : cs.NativeArray<cs.types.UInt8>, hashAlgorithm : cs.system.configuration.assemblies.AssemblyHashAlgorithm) : Int {})
	@:overload(function(assemblyFile : String, assemblySecurity : cs.system.security.policy.Evidence, args : cs.NativeArray<String>) : Int {})
	function ExecuteAssembly(assemblyFile : String, assemblySecurity : cs.system.security.policy.Evidence) : Int;
	@:overload(function(assemblyName : String) : Int {})
	@:overload(function(assemblyName : cs.system.reflection.AssemblyName, args : cs.NativeArray<String>) : Int {})
	@:overload(function(assemblyName : String, args : cs.NativeArray<String>) : Int {})
	@:overload(function(assemblyName : cs.system.reflection.AssemblyName, assemblySecurity : cs.system.security.policy.Evidence, args : cs.NativeArray<String>) : Int {})
	@:overload(function(assemblyName : String, assemblySecurity : cs.system.security.policy.Evidence, args : cs.NativeArray<String>) : Int {})
	function ExecuteAssemblyByName(assemblyName : String, assemblySecurity : cs.system.security.policy.Evidence) : Int;
	function GetAssemblies() : cs.NativeArray<cs.system.reflection.Assembly>;
	function GetData(name : String) : Dynamic;
	function GetType() : Type;
	function InitializeLifetimeService() : Dynamic;
	function IsCompatibilitySwitchSet(value : String) : Nullable_1<Bool>;
	function IsDefaultAppDomain() : Bool;
	function IsFinalizingForUnload() : Bool;
	@:overload(function(assemblyRef : cs.system.reflection.AssemblyName) : cs.system.reflection.Assembly {})
	@:overload(function(rawAssembly : cs.NativeArray<cs.types.UInt8>, rawSymbolStore : cs.NativeArray<cs.types.UInt8>, securityEvidence : cs.system.security.policy.Evidence) : cs.system.reflection.Assembly {})
	@:overload(function(rawAssembly : cs.NativeArray<cs.types.UInt8>, rawSymbolStore : cs.NativeArray<cs.types.UInt8>) : cs.system.reflection.Assembly {})
	@:overload(function(rawAssembly : cs.NativeArray<cs.types.UInt8>) : cs.system.reflection.Assembly {})
	@:overload(function(assemblyString : String, assemblySecurity : cs.system.security.policy.Evidence) : cs.system.reflection.Assembly {})
	@:overload(function(assemblyString : String) : cs.system.reflection.Assembly {})
	function Load(assemblyRef : cs.system.reflection.AssemblyName, assemblySecurity : cs.system.security.policy.Evidence) : cs.system.reflection.Assembly;
	function ReflectionOnlyGetAssemblies() : cs.NativeArray<cs.system.reflection.Assembly>;
	function SetAppDomainPolicy(domainPolicy : cs.system.security.policy.PolicyLevel) : Void;
	function SetCachePath(path : String) : Void;
	@:overload(function(name : String, data : Dynamic) : Void {})
	function SetData(name : String, data : Dynamic, permission : cs.system.security.IPermission) : Void;
	function SetDynamicBase(path : String) : Void;
	function SetPrincipalPolicy(policy : cs.system.security.principal.PrincipalPolicy) : Void;
	function SetShadowCopyFiles() : Void;
	function SetShadowCopyPath(path : String) : Void;
	function SetThreadPrincipal(principal : cs.system.security.principal.IPrincipal) : Void;
	function ToString() : String;
	function add_AssemblyLoad(value : AssemblyLoadEventHandler) : Void;
	function add_AssemblyResolve(value : ResolveEventHandler) : Void;
	function add_DomainUnload(value : EventHandler) : Void;
	function add_ProcessExit(value : EventHandler) : Void;
	function add_ReflectionOnlyAssemblyResolve(value : ResolveEventHandler) : Void;
	function add_ResourceResolve(value : ResolveEventHandler) : Void;
	function add_TypeResolve(value : ResolveEventHandler) : Void;
	function add_UnhandledException(value : UnhandledExceptionEventHandler) : Void;
	function get_ActivationContext() : ActivationContext;
	function get_ApplicationIdentity() : ApplicationIdentity;
	function get_ApplicationTrust() : cs.system.security.policy.ApplicationTrust;
	function get_BaseDirectory() : String;
	function get_DomainManager() : AppDomainManager;
	function get_DynamicDirectory() : String;
	function get_Evidence() : cs.system.security.policy.Evidence;
	function get_FriendlyName() : String;
	function get_Id() : Int;
	function get_IsFullyTrusted() : Bool;
	function get_IsHomogenous() : Bool;
	function get_MonitoringSurvivedMemorySize() : haxe.Int64;
	function get_MonitoringTotalAllocatedMemorySize() : haxe.Int64;
	function get_MonitoringTotalProcessorTime() : TimeSpan;
	function get_PermissionSet() : cs.system.security.PermissionSet;
	function get_RelativeSearchPath() : String;
	function get_SetupInformation() : AppDomainSetup;
	function get_ShadowCopyFiles() : Bool;
	function remove_AssemblyLoad(value : AssemblyLoadEventHandler) : Void;
	function remove_AssemblyResolve(value : ResolveEventHandler) : Void;
	function remove_DomainUnload(value : EventHandler) : Void;
	function remove_ProcessExit(value : EventHandler) : Void;
	function remove_ReflectionOnlyAssemblyResolve(value : ResolveEventHandler) : Void;
	function remove_ResourceResolve(value : ResolveEventHandler) : Void;
	function remove_TypeResolve(value : ResolveEventHandler) : Void;
	function remove_UnhandledException(value : UnhandledExceptionEventHandler) : Void;
	static var CurrentDomain(get,never) : AppDomain;
	static var MonitoringIsEnabled(get,set) : Bool;
	static var MonitoringSurvivedProcessMemorySize(get,never) : haxe.Int64;
	@:overload(function(friendlyName : String) : AppDomain {})
	@:overload(function(friendlyName : String, securityInfo : cs.system.security.policy.Evidence, appBasePath : String, appRelativeSearchPath : String, shadowCopyFiles : Bool, adInit : AppDomainInitializer, adInitArgs : cs.NativeArray<String>) : AppDomain {})
	@:overload(function(friendlyName : String, securityInfo : cs.system.security.policy.Evidence, info : AppDomainSetup, grantSet : cs.system.security.PermissionSet, fullTrustAssemblies : cs.NativeArray<cs.system.security.policy.StrongName>) : AppDomain {})
	@:overload(function(friendlyName : String, securityInfo : cs.system.security.policy.Evidence, appBasePath : String, appRelativeSearchPath : String, shadowCopyFiles : Bool) : AppDomain {})
	@:overload(function(friendlyName : String, securityInfo : cs.system.security.policy.Evidence, info : AppDomainSetup) : AppDomain {})
	static function CreateDomain(friendlyName : String, securityInfo : cs.system.security.policy.Evidence) : AppDomain;
	static function GetCurrentThreadId() : Int;
	static function Unload(domain : AppDomain) : Void;
	static function get_CurrentDomain() : AppDomain;
	static function get_MonitoringIsEnabled() : Bool;
	static function get_MonitoringSurvivedProcessMemorySize() : haxe.Int64;
	static function set_MonitoringIsEnabled(value : Bool) : Bool;
}
