package cs.system.security.principal;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Security.Principal.IPrincipal") extern interface IPrincipal {
	var Identity(get,never) : IIdentity;
	function IsInRole(role : String) : Bool;
	function get_Identity() : IIdentity;
}
