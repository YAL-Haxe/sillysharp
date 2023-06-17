package cs.system.security;

@:nativeGen @:libType @:csNative @:native("System.Security.NamedPermissionSet") extern final class NamedPermissionSet extends PermissionSet {
	var Description(get,set) : String;
	var Name(get,set) : String;
	@:overload(function(name : String, permSet : PermissionSet) : Void {})
	@:overload(function(name : String) : Void {})
	@:overload(function(permSet : NamedPermissionSet) : Void {})
	function new(name : String, state : cs.system.security.permissions.PermissionState) : Void;
	@:overload(function() : PermissionSet {})
	function Copy(name : String) : NamedPermissionSet;
	function FromXml(et : SecurityElement) : Void;
	function ToXml() : SecurityElement;
	function get_Description() : String;
	function get_Name() : String;
	function set_Description(value : String) : String;
	function set_Name(value : String) : String;
}
