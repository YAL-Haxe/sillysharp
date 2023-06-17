package cs.system.security.accesscontrol;

@:nativeGen @:libType @:csNative @:native("System.Security.AccessControl.FileSystemAuditRule") extern final class FileSystemAuditRule extends AuditRule {
	var FileSystemRights(get,never) : FileSystemRights;
	@:overload(function(identity : cs.system.security.principal.IdentityReference, fileSystemRights : FileSystemRights, flags : AuditFlags) : Void {})
	@:overload(function(identity : String, fileSystemRights : FileSystemRights, inheritanceFlags : InheritanceFlags, propagationFlags : PropagationFlags, flags : AuditFlags) : Void {})
	@:overload(function(identity : cs.system.security.principal.IdentityReference, fileSystemRights : FileSystemRights, inheritanceFlags : InheritanceFlags, propagationFlags : PropagationFlags, flags : AuditFlags) : Void {})
	function new(identity : String, fileSystemRights : FileSystemRights, flags : AuditFlags) : Void;
	function get_FileSystemRights() : FileSystemRights;
}
