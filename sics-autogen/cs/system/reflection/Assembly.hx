package cs.system.reflection;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Reflection.Assembly") extern class Assembly implements ICustomAttributeProvider implements cs.system.runtime.interopservices._Assembly implements cs.system.security.IEvidenceFactory implements cs.system.runtime.serialization.ISerializable {
	var CodeBase(get,never) : String;
	var CustomAttributes(get,never) : cs.system.collections.generic.IEnumerable_1<CustomAttributeData>;
	var DefinedTypes(get,never) : cs.system.collections.generic.IEnumerable_1<TypeInfo>;
	var EntryPoint(get,never) : MethodInfo;
	var EscapedCodeBase(get,never) : String;
	var Evidence(get,never) : cs.system.security.policy.Evidence;
	var ExportedTypes(get,never) : cs.system.collections.generic.IEnumerable_1<cs.system.Type>;
	var FullName(get,never) : String;
	var GlobalAssemblyCache(get,never) : Bool;
	var HostContext(get,never) : haxe.Int64;
	var ImageRuntimeVersion(get,never) : String;
	var IsDynamic(get,never) : Bool;
	var IsFullyTrusted(get,never) : Bool;
	var Location(get,never) : String;
	var ManifestModule(get,never) : Module;
	@:event @:keep @:skipReflection private var ModuleResolve : ModuleResolveEventHandler;
	var Modules(get,never) : cs.system.collections.generic.IEnumerable_1<Module>;
	var PermissionSet(get,never) : cs.system.security.PermissionSet;
	var ReflectionOnly(get,never) : Bool;
	var SecurityRuleSet(get,never) : cs.system.security.SecurityRuleSet;
	@:protected private function new() : Void;
	@:overload(function(typeName : String) : Dynamic {})
	@:overload(function(typeName : String, ignoreCase : Bool, bindingAttr : BindingFlags, binder : Binder, args : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo, activationAttributes : cs.NativeArray<Dynamic>) : Dynamic {})
	function CreateInstance(typeName : String, ignoreCase : Bool) : Dynamic;
	@:overload(function(inherit : Bool) : cs.NativeArray<Dynamic> {})
	function GetCustomAttributes(attributeType : cs.system.Type, inherit : Bool) : cs.NativeArray<Dynamic>;
	function GetCustomAttributesData() : cs.system.collections.generic.IList_1<CustomAttributeData>;
	function GetExportedTypes() : cs.NativeArray<cs.system.Type>;
	function GetFile(name : String) : cs.system.io.FileStream;
	@:overload(function() : cs.NativeArray<cs.system.io.FileStream> {})
	function GetFiles(getResourceModules : Bool) : cs.NativeArray<cs.system.io.FileStream>;
	@:overload(function() : cs.NativeArray<Module> {})
	function GetLoadedModules(getResourceModules : Bool) : cs.NativeArray<Module>;
	function GetManifestResourceInfo(resourceName : String) : ManifestResourceInfo;
	function GetManifestResourceNames() : cs.NativeArray<String>;
	@:overload(function(name : String) : cs.system.io.Stream {})
	function GetManifestResourceStream(type : cs.system.Type, name : String) : cs.system.io.Stream;
	function GetModule(name : String) : Module;
	@:overload(function() : cs.NativeArray<Module> {})
	function GetModules(getResourceModules : Bool) : cs.NativeArray<Module>;
	@:overload(function(copiedName : Bool) : AssemblyName {})
	function GetName() : AssemblyName;
	function GetObjectData(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void;
	function GetReferencedAssemblies() : cs.NativeArray<AssemblyName>;
	@:overload(function(culture : cs.system.globalization.CultureInfo) : Assembly {})
	function GetSatelliteAssembly(culture : cs.system.globalization.CultureInfo, version : cs.system.Version) : Assembly;
	@:overload(function(name : String, throwOnError : Bool) : cs.system.Type {})
	@:overload(function(name : String, throwOnError : Bool, ignoreCase : Bool) : cs.system.Type {})
	@:noCompletion @:skipReflection function GetType(name : String) : cs.system.Type;
	function GetTypes() : cs.NativeArray<cs.system.Type>;
	function IsDefined(attributeType : cs.system.Type, inherit : Bool) : Bool;
	@:overload(function(moduleName : String, rawModule : cs.NativeArray<cs.types.UInt8>) : Module {})
	function LoadModule(moduleName : String, rawModule : cs.NativeArray<cs.types.UInt8>, rawSymbolStore : cs.NativeArray<cs.types.UInt8>) : Module;
	function ToString() : String;
	function add_ModuleResolve(value : ModuleResolveEventHandler) : Void;
	function get_CodeBase() : String;
	function get_CustomAttributes() : cs.system.collections.generic.IEnumerable_1<CustomAttributeData>;
	function get_DefinedTypes() : cs.system.collections.generic.IEnumerable_1<TypeInfo>;
	function get_EntryPoint() : MethodInfo;
	function get_EscapedCodeBase() : String;
	function get_Evidence() : cs.system.security.policy.Evidence;
	function get_ExportedTypes() : cs.system.collections.generic.IEnumerable_1<cs.system.Type>;
	function get_FullName() : String;
	function get_GlobalAssemblyCache() : Bool;
	function get_HostContext() : haxe.Int64;
	function get_ImageRuntimeVersion() : String;
	function get_IsDynamic() : Bool;
	function get_IsFullyTrusted() : Bool;
	function get_Location() : String;
	function get_ManifestModule() : Module;
	function get_Modules() : cs.system.collections.generic.IEnumerable_1<Module>;
	function get_PermissionSet() : cs.system.security.PermissionSet;
	function get_ReflectionOnly() : Bool;
	function get_SecurityRuleSet() : cs.system.security.SecurityRuleSet;
	function remove_ModuleResolve(value : ModuleResolveEventHandler) : Void;
	static function CreateQualifiedName(assemblyName : String, typeName : String) : String;
	static function GetAssembly(type : cs.system.Type) : Assembly;
	static function GetCallingAssembly() : Assembly;
	static function GetEntryAssembly() : Assembly;
	static function GetExecutingAssembly() : Assembly;
	@:overload(function(assemblyString : String) : Assembly {})
	@:overload(function(rawAssembly : cs.NativeArray<cs.types.UInt8>, rawSymbolStore : cs.NativeArray<cs.types.UInt8>, securityContextSource : cs.system.security.SecurityContextSource) : Assembly {})
	@:overload(function(rawAssembly : cs.NativeArray<cs.types.UInt8>, rawSymbolStore : cs.NativeArray<cs.types.UInt8>, securityEvidence : cs.system.security.policy.Evidence) : Assembly {})
	@:overload(function(rawAssembly : cs.NativeArray<cs.types.UInt8>, rawSymbolStore : cs.NativeArray<cs.types.UInt8>) : Assembly {})
	@:overload(function(rawAssembly : cs.NativeArray<cs.types.UInt8>) : Assembly {})
	@:overload(function(assemblyRef : AssemblyName, assemblySecurity : cs.system.security.policy.Evidence) : Assembly {})
	@:overload(function(assemblyRef : AssemblyName) : Assembly {})
	static function Load(assemblyString : String, assemblySecurity : cs.system.security.policy.Evidence) : Assembly;
	@:overload(function(path : String, securityEvidence : cs.system.security.policy.Evidence) : Assembly {})
	static function LoadFile(path : String) : Assembly;
	@:overload(function(assemblyFile : String) : Assembly {})
	@:overload(function(assemblyFile : String, hashValue : cs.NativeArray<cs.types.UInt8>, hashAlgorithm : cs.system.configuration.assemblies.AssemblyHashAlgorithm) : Assembly {})
	@:overload(function(assemblyFile : String, securityEvidence : cs.system.security.policy.Evidence, hashValue : cs.NativeArray<cs.types.UInt8>, hashAlgorithm : cs.system.configuration.assemblies.AssemblyHashAlgorithm) : Assembly {})
	static function LoadFrom(assemblyFile : String, securityEvidence : cs.system.security.policy.Evidence) : Assembly;
	@:overload(function(partialName : String) : Assembly {})
	static function LoadWithPartialName(partialName : String, securityEvidence : cs.system.security.policy.Evidence) : Assembly;
	@:overload(function(rawAssembly : cs.NativeArray<cs.types.UInt8>) : Assembly {})
	static function ReflectionOnlyLoad(assemblyString : String) : Assembly;
	static function ReflectionOnlyLoadFrom(assemblyFile : String) : Assembly;
	static function UnsafeLoadFrom(assemblyFile : String) : Assembly;
	static function op_Equality(left : Assembly, right : Assembly) : Bool;
	static function op_Inequality(left : Assembly, right : Assembly) : Bool;
}
