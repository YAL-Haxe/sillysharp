package cs.system.security;

@:nativeGen @:libType @:csNative @:native("System.Security.SecurityElement.SecurityAttribute") extern class SecurityElement_SecurityAttribute {
	var Name(get,never) : String;
	var Value(get,never) : String;
	function new(name : String, value : String) : Void;
	function get_Name() : String;
	function get_Value() : String;
}
