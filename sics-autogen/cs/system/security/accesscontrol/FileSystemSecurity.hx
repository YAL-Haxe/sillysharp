package cs.system.security.accesscontrol;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Security.AccessControl.FileSystemSecurity") extern class FileSystemSecurity extends NativeObjectSecurity {
	var AccessRightType(get,never) : cs.system.Type;
	var AccessRuleType(get,never) : cs.system.Type;
	var AuditRuleType(get,never) : cs.system.Type;
	function AccessRuleFactory(identityReference : cs.system.security.principal.IdentityReference, accessMask : Int, isInherited : Bool, inheritanceFlags : InheritanceFlags, propagationFlags : PropagationFlags, type : AccessControlType) : AccessRule;
	function AddAccessRule(rule : FileSystemAccessRule) : Void;
	function AddAuditRule(rule : FileSystemAuditRule) : Void;
	function AuditRuleFactory(identityReference : cs.system.security.principal.IdentityReference, accessMask : Int, isInherited : Bool, inheritanceFlags : InheritanceFlags, propagationFlags : PropagationFlags, flags : AuditFlags) : AuditRule;
	function RemoveAccessRule(rule : FileSystemAccessRule) : Bool;
	function RemoveAccessRuleAll(rule : FileSystemAccessRule) : Void;
	function RemoveAccessRuleSpecific(rule : FileSystemAccessRule) : Void;
	function RemoveAuditRule(rule : FileSystemAuditRule) : Bool;
	function RemoveAuditRuleAll(rule : FileSystemAuditRule) : Void;
	function RemoveAuditRuleSpecific(rule : FileSystemAuditRule) : Void;
	function ResetAccessRule(rule : FileSystemAccessRule) : Void;
	function SetAccessRule(rule : FileSystemAccessRule) : Void;
	function SetAuditRule(rule : FileSystemAuditRule) : Void;
	function get_AccessRightType() : cs.system.Type;
	function get_AccessRuleType() : cs.system.Type;
	function get_AuditRuleType() : cs.system.Type;
}
