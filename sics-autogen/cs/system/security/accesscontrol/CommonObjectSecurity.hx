package cs.system.security.accesscontrol;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Security.AccessControl.CommonObjectSecurity") extern class CommonObjectSecurity extends ObjectSecurity {
	@:protected private function new(isContainer : Bool) : Void;
	@:protected private function AddAccessRule(rule : AccessRule) : Void;
	@:protected private function AddAuditRule(rule : AuditRule) : Void;
	function GetAccessRules(includeExplicit : Bool, includeInherited : Bool, targetType : cs.system.Type) : AuthorizationRuleCollection;
	function GetAuditRules(includeExplicit : Bool, includeInherited : Bool, targetType : cs.system.Type) : AuthorizationRuleCollection;
	@:protected private function ModifyAccess(modification : AccessControlModification, rule : AccessRule, modified : cs.Out<Bool>) : Bool;
	@:protected private function ModifyAudit(modification : AccessControlModification, rule : AuditRule, modified : cs.Out<Bool>) : Bool;
	@:protected private function RemoveAccessRule(rule : AccessRule) : Bool;
	@:protected private function RemoveAccessRuleAll(rule : AccessRule) : Void;
	@:protected private function RemoveAccessRuleSpecific(rule : AccessRule) : Void;
	@:protected private function RemoveAuditRule(rule : AuditRule) : Bool;
	@:protected private function RemoveAuditRuleAll(rule : AuditRule) : Void;
	@:protected private function RemoveAuditRuleSpecific(rule : AuditRule) : Void;
	@:protected private function ResetAccessRule(rule : AccessRule) : Void;
	@:protected private function SetAccessRule(rule : AccessRule) : Void;
	@:protected private function SetAuditRule(rule : AuditRule) : Void;
}
