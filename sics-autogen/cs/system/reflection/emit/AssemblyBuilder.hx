package cs.system.reflection.emit;

@:nativeGen @:libType @:csNative @:native("System.Reflection.Emit.AssemblyBuilder") extern final class AssemblyBuilder extends cs.system.reflection.Assembly implements cs.system.runtime.interopservices._AssemblyBuilder {
	var CodeBase(get,never) : String;
	var EntryPoint(get,never) : cs.system.reflection.MethodInfo;
	var FullName(get,never) : String;
	var GlobalAssemblyCache(get,never) : Bool;
	var ImageRuntimeVersion(get,never) : String;
	var IsDynamic(get,never) : Bool;
	var Location(get,never) : String;
	var ManifestModule(get,never) : cs.system.reflection.Module;
	var ReflectionOnly(get,never) : Bool;
	@:overload(function(name : String, fileName : String) : Void {})
	function AddResourceFile(name : String, fileName : String, attribute : cs.system.reflection.ResourceAttributes) : Void;
	@:overload(function(name : String) : ModuleBuilder {})
	@:overload(function(name : String, fileName : String, emitSymbolInfo : Bool) : ModuleBuilder {})
	@:overload(function(name : String, fileName : String) : ModuleBuilder {})
	function DefineDynamicModule(name : String, emitSymbolInfo : Bool) : ModuleBuilder;
	@:overload(function(name : String, description : String, fileName : String) : cs.system.resources.IResourceWriter {})
	function DefineResource(name : String, description : String, fileName : String, attribute : cs.system.reflection.ResourceAttributes) : cs.system.resources.IResourceWriter;
	@:overload(function(resource : cs.NativeArray<cs.types.UInt8>) : Void {})
	function DefineUnmanagedResource(resourceFileName : String) : Void;
	@:overload(function() : Void {})
	function DefineVersionInfoResource(product : String, productVersion : String, company : String, copyright : String, trademark : String) : Void;
	@:overload(function(inherit : Bool) : cs.NativeArray<Dynamic> {})
	function GetCustomAttributes(attributeType : cs.system.Type, inherit : Bool) : cs.NativeArray<Dynamic>;
	function GetDynamicModule(name : String) : ModuleBuilder;
	function GetExportedTypes() : cs.NativeArray<cs.system.Type>;
	function GetFile(name : String) : cs.system.io.FileStream;
	function GetFiles(getResourceModules : Bool) : cs.NativeArray<cs.system.io.FileStream>;
	function GetLoadedModules(getResourceModules : Bool) : cs.NativeArray<cs.system.reflection.Module>;
	function GetManifestResourceInfo(resourceName : String) : cs.system.reflection.ManifestResourceInfo;
	function GetManifestResourceNames() : cs.NativeArray<String>;
	@:overload(function(name : String) : cs.system.io.Stream {})
	function GetManifestResourceStream(type : cs.system.Type, name : String) : cs.system.io.Stream;
	function GetModule(name : String) : cs.system.reflection.Module;
	function GetModules(getResourceModules : Bool) : cs.NativeArray<cs.system.reflection.Module>;
	function GetName(copiedName : Bool) : cs.system.reflection.AssemblyName;
	function GetReferencedAssemblies() : cs.NativeArray<cs.system.reflection.AssemblyName>;
	@:overload(function(culture : cs.system.globalization.CultureInfo) : cs.system.reflection.Assembly {})
	function GetSatelliteAssembly(culture : cs.system.globalization.CultureInfo, version : cs.system.Version) : cs.system.reflection.Assembly;
	function GetType(name : String, throwOnError : Bool, ignoreCase : Bool) : cs.system.Type;
	function IsDefined(attributeType : cs.system.Type, inherit : Bool) : Bool;
	@:overload(function(assemblyFileName : String, portableExecutableKind : cs.system.reflection.PortableExecutableKinds, imageFileMachine : cs.system.reflection.ImageFileMachine) : Void {})
	function Save(assemblyFileName : String) : Void;
	@:overload(function(customBuilder : CustomAttributeBuilder) : Void {})
	function SetCustomAttribute(con : cs.system.reflection.ConstructorInfo, binaryAttribute : cs.NativeArray<cs.types.UInt8>) : Void;
	@:overload(function(entryMethod : cs.system.reflection.MethodInfo) : Void {})
	function SetEntryPoint(entryMethod : cs.system.reflection.MethodInfo, fileKind : PEFileKinds) : Void;
	function get_CodeBase() : String;
	function get_EntryPoint() : cs.system.reflection.MethodInfo;
	function get_FullName() : String;
	function get_GlobalAssemblyCache() : Bool;
	function get_ImageRuntimeVersion() : String;
	function get_IsDynamic() : Bool;
	function get_Location() : String;
	function get_ManifestModule() : cs.system.reflection.Module;
	function get_ReflectionOnly() : Bool;
}
