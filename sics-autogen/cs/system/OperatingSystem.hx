package cs.system;

@:nativeGen @:libType @:csNative @:native("System.OperatingSystem") extern final class OperatingSystem implements ICloneable implements cs.system.runtime.serialization.ISerializable {
	var Platform(get,never) : PlatformID;
	var ServicePack(get,never) : String;
	var Version(get,never) : Version;
	var VersionString(get,never) : String;
	function new(platform : PlatformID, version : Version) : Void;
	function Clone() : Dynamic;
	function GetObjectData(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void;
	function ToString() : String;
	function get_Platform() : PlatformID;
	function get_ServicePack() : String;
	function get_Version() : Version;
	function get_VersionString() : String;
}
