package cs.system.security.accesscontrol;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Security.AccessControl.AuthorizationRule") extern class AuthorizationRule {
	private var AccessMask(null,never) : Int;
	var IdentityReference(get,never) : cs.system.security.principal.IdentityReference;
	var InheritanceFlags(get,never) : InheritanceFlags;
	var IsInherited(get,never) : Bool;
	var PropagationFlags(get,never) : PropagationFlags;
	@:protected private function new(identity : cs.system.security.principal.IdentityReference, accessMask : Int, isInherited : Bool, inheritanceFlags : InheritanceFlags, propagationFlags : PropagationFlags) : Void;
	@:protected private function get_AccessMask() : Int;
	function get_IdentityReference() : cs.system.security.principal.IdentityReference;
	function get_InheritanceFlags() : InheritanceFlags;
	function get_IsInherited() : Bool;
	function get_PropagationFlags() : PropagationFlags;
}
