package cs.system.runtime.interopservices;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Runtime.InteropServices._Assembly") extern interface _Assembly {
	var CodeBase(get,never) : String;
	var EntryPoint(get,never) : cs.system.reflection.MethodInfo;
	var EscapedCodeBase(get,never) : String;
	var Evidence(get,never) : cs.system.security.policy.Evidence;
	var FullName(get,never) : String;
	var GlobalAssemblyCache(get,never) : Bool;
	var Location(get,never) : String;
	@:event @:keep @:skipReflection private var ModuleResolve : cs.system.reflection.ModuleResolveEventHandler;
	@:overload(function(typeName : String) : Dynamic {})
	@:overload(function(typeName : String, ignoreCase : Bool, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, args : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo, activationAttributes : cs.NativeArray<Dynamic>) : Dynamic {})
	function CreateInstance(typeName : String, ignoreCase : Bool) : Dynamic;
	@:overload(function(attributeType : cs.system.Type, inherit : Bool) : cs.NativeArray<Dynamic> {})
	function GetCustomAttributes(inherit : Bool) : cs.NativeArray<Dynamic>;
	function GetExportedTypes() : cs.NativeArray<cs.system.Type>;
	function GetFile(name : String) : cs.system.io.FileStream;
	@:overload(function() : cs.NativeArray<cs.system.io.FileStream> {})
	function GetFiles(getResourceModules : Bool) : cs.NativeArray<cs.system.io.FileStream>;
	@:overload(function() : cs.NativeArray<cs.system.reflection.Module> {})
	function GetLoadedModules(getResourceModules : Bool) : cs.NativeArray<cs.system.reflection.Module>;
	function GetManifestResourceInfo(resourceName : String) : cs.system.reflection.ManifestResourceInfo;
	function GetManifestResourceNames() : cs.NativeArray<String>;
	@:overload(function(type : cs.system.Type, name : String) : cs.system.io.Stream {})
	function GetManifestResourceStream(name : String) : cs.system.io.Stream;
	function GetModule(name : String) : cs.system.reflection.Module;
	@:overload(function() : cs.NativeArray<cs.system.reflection.Module> {})
	function GetModules(getResourceModules : Bool) : cs.NativeArray<cs.system.reflection.Module>;
	@:overload(function() : cs.system.reflection.AssemblyName {})
	function GetName(copiedName : Bool) : cs.system.reflection.AssemblyName;
	function GetObjectData(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void;
	function GetReferencedAssemblies() : cs.NativeArray<cs.system.reflection.AssemblyName>;
	@:overload(function(culture : cs.system.globalization.CultureInfo) : cs.system.reflection.Assembly {})
	function GetSatelliteAssembly(culture : cs.system.globalization.CultureInfo, version : cs.system.Version) : cs.system.reflection.Assembly;
	@:overload(function() : cs.system.Type {})
	@:overload(function(name : String, throwOnError : Bool, ignoreCase : Bool) : cs.system.Type {})
	@:overload(function(name : String, throwOnError : Bool) : cs.system.Type {})
	function GetType(name : String) : cs.system.Type;
	function GetTypes() : cs.NativeArray<cs.system.Type>;
	function IsDefined(attributeType : cs.system.Type, inherit : Bool) : Bool;
	@:overload(function(moduleName : String, rawModule : cs.NativeArray<cs.types.UInt8>) : cs.system.reflection.Module {})
	function LoadModule(moduleName : String, rawModule : cs.NativeArray<cs.types.UInt8>, rawSymbolStore : cs.NativeArray<cs.types.UInt8>) : cs.system.reflection.Module;
	function ToString() : String;
	function add_ModuleResolve(value : cs.system.reflection.ModuleResolveEventHandler) : Void;
	function get_CodeBase() : String;
	function get_EntryPoint() : cs.system.reflection.MethodInfo;
	function get_EscapedCodeBase() : String;
	function get_Evidence() : cs.system.security.policy.Evidence;
	function get_FullName() : String;
	function get_GlobalAssemblyCache() : Bool;
	function get_Location() : String;
	function remove_ModuleResolve(value : cs.system.reflection.ModuleResolveEventHandler) : Void;
}
