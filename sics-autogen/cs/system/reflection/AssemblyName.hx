package cs.system.reflection;

@:nativeGen @:libType @:csNative @:native("System.Reflection.AssemblyName") extern final class AssemblyName implements cs.system.ICloneable implements cs.system.runtime.serialization.ISerializable implements cs.system.runtime.serialization.IDeserializationCallback implements cs.system.runtime.interopservices._AssemblyName {
	var CodeBase(get,set) : String;
	var ContentType(get,set) : AssemblyContentType;
	var CultureInfo(get,set) : cs.system.globalization.CultureInfo;
	var CultureName(get,never) : String;
	var EscapedCodeBase(get,never) : String;
	var Flags(get,set) : AssemblyNameFlags;
	var FullName(get,never) : String;
	var HashAlgorithm(get,set) : cs.system.configuration.assemblies.AssemblyHashAlgorithm;
	var KeyPair(get,set) : StrongNameKeyPair;
	var Name(get,set) : String;
	var ProcessorArchitecture(get,set) : ProcessorArchitecture;
	var Version(get,set) : cs.system.Version;
	var VersionCompatibility(get,set) : cs.system.configuration.assemblies.AssemblyVersionCompatibility;
	@:overload(function() : Void {})
	function new(assemblyName : String) : Void;
	function Clone() : Dynamic;
	function GetObjectData(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void;
	function GetPublicKey() : cs.NativeArray<cs.types.UInt8>;
	function GetPublicKeyToken() : cs.NativeArray<cs.types.UInt8>;
	function OnDeserialization(sender : Dynamic) : Void;
	function SetPublicKey(publicKey : cs.NativeArray<cs.types.UInt8>) : Void;
	function SetPublicKeyToken(publicKeyToken : cs.NativeArray<cs.types.UInt8>) : Void;
	function ToString() : String;
	function get_CodeBase() : String;
	function get_ContentType() : AssemblyContentType;
	function get_CultureInfo() : cs.system.globalization.CultureInfo;
	function get_CultureName() : String;
	function get_EscapedCodeBase() : String;
	function get_Flags() : AssemblyNameFlags;
	function get_FullName() : String;
	function get_HashAlgorithm() : cs.system.configuration.assemblies.AssemblyHashAlgorithm;
	function get_KeyPair() : StrongNameKeyPair;
	function get_Name() : String;
	function get_ProcessorArchitecture() : ProcessorArchitecture;
	function get_Version() : cs.system.Version;
	function get_VersionCompatibility() : cs.system.configuration.assemblies.AssemblyVersionCompatibility;
	function set_CodeBase(value : String) : String;
	function set_ContentType(value : AssemblyContentType) : AssemblyContentType;
	function set_CultureInfo(value : cs.system.globalization.CultureInfo) : cs.system.globalization.CultureInfo;
	function set_Flags(value : AssemblyNameFlags) : AssemblyNameFlags;
	function set_HashAlgorithm(value : cs.system.configuration.assemblies.AssemblyHashAlgorithm) : cs.system.configuration.assemblies.AssemblyHashAlgorithm;
	function set_KeyPair(value : StrongNameKeyPair) : StrongNameKeyPair;
	function set_Name(value : String) : String;
	function set_ProcessorArchitecture(value : ProcessorArchitecture) : ProcessorArchitecture;
	function set_Version(value : cs.system.Version) : cs.system.Version;
	function set_VersionCompatibility(value : cs.system.configuration.assemblies.AssemblyVersionCompatibility) : cs.system.configuration.assemblies.AssemblyVersionCompatibility;
	static function GetAssemblyName(assemblyFile : String) : AssemblyName;
	static function ReferenceMatchesDefinition(reference : AssemblyName, definition : AssemblyName) : Bool;
}
