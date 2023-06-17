package cs.system.security.policy;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Security.Policy.CodeGroup") extern class CodeGroup {
	var AttributeString(get,never) : String;
	var Children(get,set) : cs.system.collections.IList;
	var Description(get,set) : String;
	var MembershipCondition(get,set) : IMembershipCondition;
	var MergeLogic(get,never) : String;
	var Name(get,set) : String;
	var PermissionSetName(get,never) : String;
	var PolicyStatement(get,set) : PolicyStatement;
	@:protected private function new(membershipCondition : IMembershipCondition, policy : PolicyStatement) : Void;
	function AddChild(group : CodeGroup) : Void;
	function Copy() : CodeGroup;
	@:protected private function CreateXml(element : cs.system.security.SecurityElement, level : PolicyLevel) : Void;
	@:overload(function(e : cs.system.security.SecurityElement) : Void {})
	function FromXml(e : cs.system.security.SecurityElement, level : PolicyLevel) : Void;
	@:protected private function ParseXml(e : cs.system.security.SecurityElement, level : PolicyLevel) : Void;
	function RemoveChild(group : CodeGroup) : Void;
	function Resolve(evidence : Evidence) : PolicyStatement;
	function ResolveMatchingCodeGroups(evidence : Evidence) : CodeGroup;
	@:overload(function() : cs.system.security.SecurityElement {})
	function ToXml(level : PolicyLevel) : cs.system.security.SecurityElement;
	function get_AttributeString() : String;
	function get_Children() : cs.system.collections.IList;
	function get_Description() : String;
	function get_MembershipCondition() : IMembershipCondition;
	function get_MergeLogic() : String;
	function get_Name() : String;
	function get_PermissionSetName() : String;
	function get_PolicyStatement() : PolicyStatement;
	function set_Children(value : cs.system.collections.IList) : cs.system.collections.IList;
	function set_Description(value : String) : String;
	function set_MembershipCondition(value : IMembershipCondition) : IMembershipCondition;
	function set_Name(value : String) : String;
	function set_PolicyStatement(value : PolicyStatement) : PolicyStatement;
}
