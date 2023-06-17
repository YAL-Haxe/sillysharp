package cs.system;

@:nativeGen @:libType @:csNative @:native("System.ApplicationIdentity") extern final class ApplicationIdentity implements cs.system.runtime.serialization.ISerializable {
	var CodeBase(get,never) : String;
	var FullName(get,never) : String;
	function new(applicationIdentityFullName : String) : Void;
	function ToString() : String;
	function get_CodeBase() : String;
	function get_FullName() : String;
}
