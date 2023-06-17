package cs.system;

@:nativeGen @:abstract @:libType @:csNative @:native("System._AppDomain") extern interface _AppDomain {
	@:event @:keep @:skipReflection private var AssemblyLoad : AssemblyLoadEventHandler;
	@:event @:keep @:skipReflection private var AssemblyResolve : ResolveEventHandler;
	var BaseDirectory(get,never) : String;
	@:event @:keep @:skipReflection private var DomainUnload : EventHandler;
	var DynamicDirectory(get,never) : String;
	var Evidence(get,never) : cs.system.security.policy.Evidence;
	var FriendlyName(get,never) : String;
	@:event @:keep @:skipReflection private var ProcessExit : EventHandler;
	var RelativeSearchPath(get,never) : String;
	@:event @:keep @:skipReflection private var ResourceResolve : ResolveEventHandler;
	var ShadowCopyFiles(get,never) : Bool;
	@:event @:keep @:skipReflection private var TypeResolve : ResolveEventHandler;
	@:event @:keep @:skipReflection private var UnhandledException : UnhandledExceptionEventHandler;
	function AppendPrivatePath(path : String) : Void;
	function ClearPrivatePath() : Void;
	function ClearShadowCopyPath() : Void;
	@:overload(function(assemblyName : String, typeName : String) : cs.system.runtime.remoting.ObjectHandle {})
	@:overload(function(assemblyName : String, typeName : String, ignoreCase : Bool, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, args : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo, activationAttributes : cs.NativeArray<Dynamic>, securityAttributes : cs.system.security.policy.Evidence) : cs.system.runtime.remoting.ObjectHandle {})
	function CreateInstance(assemblyName : String, typeName : String, activationAttributes : cs.NativeArray<Dynamic>) : cs.system.runtime.remoting.ObjectHandle;
	@:overload(function(assemblyFile : String, typeName : String) : cs.system.runtime.remoting.ObjectHandle {})
	@:overload(function(assemblyFile : String, typeName : String, ignoreCase : Bool, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, args : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo, activationAttributes : cs.NativeArray<Dynamic>, securityAttributes : cs.system.security.policy.Evidence) : cs.system.runtime.remoting.ObjectHandle {})
	function CreateInstanceFrom(assemblyFile : String, typeName : String, activationAttributes : cs.NativeArray<Dynamic>) : cs.system.runtime.remoting.ObjectHandle;
	@:overload(function(name : cs.system.reflection.AssemblyName, access : cs.system.reflection.emit.AssemblyBuilderAccess) : cs.system.reflection.emit.AssemblyBuilder {})
	@:overload(function(name : cs.system.reflection.AssemblyName, access : cs.system.reflection.emit.AssemblyBuilderAccess, dir : String, evidence : cs.system.security.policy.Evidence, requiredPermissions : cs.system.security.PermissionSet, optionalPermissions : cs.system.security.PermissionSet, refusedPermissions : cs.system.security.PermissionSet, isSynchronized : Bool) : cs.system.reflection.emit.AssemblyBuilder {})
	@:overload(function(name : cs.system.reflection.AssemblyName, access : cs.system.reflection.emit.AssemblyBuilderAccess, dir : String, evidence : cs.system.security.policy.Evidence, requiredPermissions : cs.system.security.PermissionSet, optionalPermissions : cs.system.security.PermissionSet, refusedPermissions : cs.system.security.PermissionSet) : cs.system.reflection.emit.AssemblyBuilder {})
	@:overload(function(name : cs.system.reflection.AssemblyName, access : cs.system.reflection.emit.AssemblyBuilderAccess, dir : String, requiredPermissions : cs.system.security.PermissionSet, optionalPermissions : cs.system.security.PermissionSet, refusedPermissions : cs.system.security.PermissionSet) : cs.system.reflection.emit.AssemblyBuilder {})
	@:overload(function(name : cs.system.reflection.AssemblyName, access : cs.system.reflection.emit.AssemblyBuilderAccess, evidence : cs.system.security.policy.Evidence, requiredPermissions : cs.system.security.PermissionSet, optionalPermissions : cs.system.security.PermissionSet, refusedPermissions : cs.system.security.PermissionSet) : cs.system.reflection.emit.AssemblyBuilder {})
	@:overload(function(name : cs.system.reflection.AssemblyName, access : cs.system.reflection.emit.AssemblyBuilderAccess, requiredPermissions : cs.system.security.PermissionSet, optionalPermissions : cs.system.security.PermissionSet, refusedPermissions : cs.system.security.PermissionSet) : cs.system.reflection.emit.AssemblyBuilder {})
	@:overload(function(name : cs.system.reflection.AssemblyName, access : cs.system.reflection.emit.AssemblyBuilderAccess, dir : String, evidence : cs.system.security.policy.Evidence) : cs.system.reflection.emit.AssemblyBuilder {})
	@:overload(function(name : cs.system.reflection.AssemblyName, access : cs.system.reflection.emit.AssemblyBuilderAccess, dir : String) : cs.system.reflection.emit.AssemblyBuilder {})
	function DefineDynamicAssembly(name : cs.system.reflection.AssemblyName, access : cs.system.reflection.emit.AssemblyBuilderAccess, evidence : cs.system.security.policy.Evidence) : cs.system.reflection.emit.AssemblyBuilder;
	function DoCallBack(theDelegate : CrossAppDomainDelegate) : Void;
	@:overload(function(assemblyFile : String) : Int {})
	@:overload(function(assemblyFile : String, assemblySecurity : cs.system.security.policy.Evidence, args : cs.NativeArray<String>) : Int {})
	function ExecuteAssembly(assemblyFile : String, assemblySecurity : cs.system.security.policy.Evidence) : Int;
	function GetAssemblies() : cs.NativeArray<cs.system.reflection.Assembly>;
	function GetData(name : String) : Dynamic;
	function GetIDsOfNames(riid : cs.Ref<Guid>, rgszNames : IntPtr, cNames : UInt, lcid : UInt, rgDispId : IntPtr) : Void;
	function GetLifetimeService() : Dynamic;
	function GetType() : Type;
	function GetTypeInfo(iTInfo : UInt, lcid : UInt, ppTInfo : IntPtr) : Void;
	function GetTypeInfoCount(pcTInfo : cs.Out<UInt>) : Void;
	function InitializeLifetimeService() : Dynamic;
	function Invoke(dispIdMember : UInt, riid : cs.Ref<Guid>, lcid : UInt, wFlags : cs.types.Int16, pDispParams : IntPtr, pVarResult : IntPtr, pExcepInfo : IntPtr, puArgErr : IntPtr) : Void;
	@:overload(function(assemblyRef : cs.system.reflection.AssemblyName) : cs.system.reflection.Assembly {})
	@:overload(function(rawAssembly : cs.NativeArray<cs.types.UInt8>, rawSymbolStore : cs.NativeArray<cs.types.UInt8>, securityEvidence : cs.system.security.policy.Evidence) : cs.system.reflection.Assembly {})
	@:overload(function(assemblyString : String, assemblySecurity : cs.system.security.policy.Evidence) : cs.system.reflection.Assembly {})
	@:overload(function(rawAssembly : cs.NativeArray<cs.types.UInt8>, rawSymbolStore : cs.NativeArray<cs.types.UInt8>) : cs.system.reflection.Assembly {})
	@:overload(function(assemblyRef : cs.system.reflection.AssemblyName, assemblySecurity : cs.system.security.policy.Evidence) : cs.system.reflection.Assembly {})
	@:overload(function(assemblyString : String) : cs.system.reflection.Assembly {})
	function Load(rawAssembly : cs.NativeArray<cs.types.UInt8>) : cs.system.reflection.Assembly;
	function SetAppDomainPolicy(domainPolicy : cs.system.security.policy.PolicyLevel) : Void;
	function SetCachePath(s : String) : Void;
	function SetData(name : String, data : Dynamic) : Void;
	function SetPrincipalPolicy(policy : cs.system.security.principal.PrincipalPolicy) : Void;
	function SetShadowCopyPath(s : String) : Void;
	function SetThreadPrincipal(principal : cs.system.security.principal.IPrincipal) : Void;
	function ToString() : String;
	function add_AssemblyLoad(value : AssemblyLoadEventHandler) : Void;
	function add_AssemblyResolve(value : ResolveEventHandler) : Void;
	function add_DomainUnload(value : EventHandler) : Void;
	function add_ProcessExit(value : EventHandler) : Void;
	function add_ResourceResolve(value : ResolveEventHandler) : Void;
	function add_TypeResolve(value : ResolveEventHandler) : Void;
	function add_UnhandledException(value : UnhandledExceptionEventHandler) : Void;
	function get_BaseDirectory() : String;
	function get_DynamicDirectory() : String;
	function get_Evidence() : cs.system.security.policy.Evidence;
	function get_FriendlyName() : String;
	function get_RelativeSearchPath() : String;
	function get_ShadowCopyFiles() : Bool;
	function remove_AssemblyLoad(value : AssemblyLoadEventHandler) : Void;
	function remove_AssemblyResolve(value : ResolveEventHandler) : Void;
	function remove_DomainUnload(value : EventHandler) : Void;
	function remove_ProcessExit(value : EventHandler) : Void;
	function remove_ResourceResolve(value : ResolveEventHandler) : Void;
	function remove_TypeResolve(value : ResolveEventHandler) : Void;
	function remove_UnhandledException(value : UnhandledExceptionEventHandler) : Void;
}
