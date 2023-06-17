package cs.system.security.principal;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Security.Principal.IIdentity") extern interface IIdentity {
	var AuthenticationType(get,never) : String;
	var IsAuthenticated(get,never) : Bool;
	var Name(get,never) : String;
	function get_AuthenticationType() : String;
	function get_IsAuthenticated() : Bool;
	function get_Name() : String;
}
