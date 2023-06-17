package cs.system.security.accesscontrol;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Security.AccessControl.AuditRule") extern class AuditRule extends AuthorizationRule {
	var AuditFlags(get,never) : AuditFlags;
	@:protected private function new(identity : cs.system.security.principal.IdentityReference, accessMask : Int, isInherited : Bool, inheritanceFlags : InheritanceFlags, propagationFlags : PropagationFlags, auditFlags : AuditFlags) : Void;
	function get_AuditFlags() : AuditFlags;
}
