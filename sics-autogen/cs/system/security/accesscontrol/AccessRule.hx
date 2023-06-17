package cs.system.security.accesscontrol;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Security.AccessControl.AccessRule") extern class AccessRule extends AuthorizationRule {
	var AccessControlType(get,never) : AccessControlType;
	@:protected private function new(identity : cs.system.security.principal.IdentityReference, accessMask : Int, isInherited : Bool, inheritanceFlags : InheritanceFlags, propagationFlags : PropagationFlags, type : AccessControlType) : Void;
	function get_AccessControlType() : AccessControlType;
}
