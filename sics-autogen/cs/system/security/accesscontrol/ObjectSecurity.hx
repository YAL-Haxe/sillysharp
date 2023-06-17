package cs.system.security.accesscontrol;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Security.AccessControl.ObjectSecurity") extern class ObjectSecurity {
	var AccessRightType(get,never) : cs.system.Type;
	var AccessRuleType(get,never) : cs.system.Type;
	private var AccessRulesModified(null,never) : Bool;
	var AreAccessRulesCanonical(get,never) : Bool;
	var AreAccessRulesProtected(get,never) : Bool;
	var AreAuditRulesCanonical(get,never) : Bool;
	var AreAuditRulesProtected(get,never) : Bool;
	var AuditRuleType(get,never) : cs.system.Type;
	private var AuditRulesModified(null,never) : Bool;
	private var GroupModified(null,never) : Bool;
	private var IsContainer(null,never) : Bool;
	private var IsDS(null,never) : Bool;
	private var OwnerModified(null,never) : Bool;
	@:protected private function new(isContainer : Bool, isDS : Bool) : Void;
	function AccessRuleFactory(identityReference : cs.system.security.principal.IdentityReference, accessMask : Int, isInherited : Bool, inheritanceFlags : InheritanceFlags, propagationFlags : PropagationFlags, type : AccessControlType) : AccessRule;
	function AuditRuleFactory(identityReference : cs.system.security.principal.IdentityReference, accessMask : Int, isInherited : Bool, inheritanceFlags : InheritanceFlags, propagationFlags : PropagationFlags, flags : AuditFlags) : AuditRule;
	function GetGroup(targetType : cs.system.Type) : cs.system.security.principal.IdentityReference;
	function GetOwner(targetType : cs.system.Type) : cs.system.security.principal.IdentityReference;
	function GetSecurityDescriptorBinaryForm() : cs.NativeArray<cs.types.UInt8>;
	function GetSecurityDescriptorSddlForm(includeSections : AccessControlSections) : String;
	@:protected private function ModifyAccess(modification : AccessControlModification, rule : AccessRule, modified : cs.Out<Bool>) : Bool;
	function ModifyAccessRule(modification : AccessControlModification, rule : AccessRule, modified : cs.Out<Bool>) : Bool;
	@:protected private function ModifyAudit(modification : AccessControlModification, rule : AuditRule, modified : cs.Out<Bool>) : Bool;
	function ModifyAuditRule(modification : AccessControlModification, rule : AuditRule, modified : cs.Out<Bool>) : Bool;
	@:overload(function(handle : cs.system.runtime.interopservices.SafeHandle, includeSections : AccessControlSections) : Void {})
	@:overload(function(enableOwnershipPrivilege : Bool, name : String, includeSections : AccessControlSections) : Void {})
	@:protected private function Persist(name : String, includeSections : AccessControlSections) : Void;
	function PurgeAccessRules(identity : cs.system.security.principal.IdentityReference) : Void;
	function PurgeAuditRules(identity : cs.system.security.principal.IdentityReference) : Void;
	@:protected private function ReadLock() : Void;
	@:protected private function ReadUnlock() : Void;
	function SetAccessRuleProtection(isProtected : Bool, preserveInheritance : Bool) : Void;
	function SetAuditRuleProtection(isProtected : Bool, preserveInheritance : Bool) : Void;
	function SetGroup(identity : cs.system.security.principal.IdentityReference) : Void;
	function SetOwner(identity : cs.system.security.principal.IdentityReference) : Void;
	@:overload(function(binaryForm : cs.NativeArray<cs.types.UInt8>) : Void {})
	function SetSecurityDescriptorBinaryForm(binaryForm : cs.NativeArray<cs.types.UInt8>, includeSections : AccessControlSections) : Void;
	@:overload(function(sddlForm : String) : Void {})
	function SetSecurityDescriptorSddlForm(sddlForm : String, includeSections : AccessControlSections) : Void;
	@:protected private function WriteLock() : Void;
	@:protected private function WriteUnlock() : Void;
	function get_AccessRightType() : cs.system.Type;
	function get_AccessRuleType() : cs.system.Type;
	@:protected private function get_AccessRulesModified() : Bool;
	function get_AreAccessRulesCanonical() : Bool;
	function get_AreAccessRulesProtected() : Bool;
	function get_AreAuditRulesCanonical() : Bool;
	function get_AreAuditRulesProtected() : Bool;
	function get_AuditRuleType() : cs.system.Type;
	@:protected private function get_AuditRulesModified() : Bool;
	@:protected private function get_GroupModified() : Bool;
	@:protected private function get_IsContainer() : Bool;
	@:protected private function get_IsDS() : Bool;
	@:protected private function get_OwnerModified() : Bool;
	@:protected private function set_AccessRulesModified(value : Bool) : Bool;
	@:protected private function set_AuditRulesModified(value : Bool) : Bool;
	@:protected private function set_GroupModified(value : Bool) : Bool;
	@:protected private function set_OwnerModified(value : Bool) : Bool;
	static function IsSddlConversionSupported() : Bool;
}
