package cs.system.security.accesscontrol;

@:nativeGen @:libType @:csNative @:native("System.Security.AccessControl.FileSystemAccessRule") extern final class FileSystemAccessRule extends AccessRule {
	var FileSystemRights(get,never) : FileSystemRights;
	@:overload(function(identity : cs.system.security.principal.IdentityReference, fileSystemRights : FileSystemRights, type : AccessControlType) : Void {})
	@:overload(function(identity : String, fileSystemRights : FileSystemRights, inheritanceFlags : InheritanceFlags, propagationFlags : PropagationFlags, type : AccessControlType) : Void {})
	@:overload(function(identity : cs.system.security.principal.IdentityReference, fileSystemRights : FileSystemRights, inheritanceFlags : InheritanceFlags, propagationFlags : PropagationFlags, type : AccessControlType) : Void {})
	function new(identity : String, fileSystemRights : FileSystemRights, type : AccessControlType) : Void;
	function get_FileSystemRights() : FileSystemRights;
}
