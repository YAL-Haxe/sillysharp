package cs.system.security.policy;

@:nativeGen @:libType @:csNative @:native("System.Security.Policy.PolicyLevel") extern final class PolicyLevel {
	var FullTrustAssemblies(get,never) : cs.system.collections.IList;
	var Label(get,never) : String;
	var NamedPermissionSets(get,never) : cs.system.collections.IList;
	var RootCodeGroup(get,set) : CodeGroup;
	var StoreLocation(get,never) : String;
	var Type(get,never) : cs.system.security.PolicyLevelType;
	@:overload(function(sn : StrongName) : Void {})
	function AddFullTrustAssembly(snMC : StrongNameMembershipCondition) : Void;
	function AddNamedPermissionSet(permSet : cs.system.security.NamedPermissionSet) : Void;
	function ChangeNamedPermissionSet(name : String, pSet : cs.system.security.PermissionSet) : cs.system.security.NamedPermissionSet;
	function FromXml(e : cs.system.security.SecurityElement) : Void;
	function GetNamedPermissionSet(name : String) : cs.system.security.NamedPermissionSet;
	function Recover() : Void;
	@:overload(function(sn : StrongName) : Void {})
	function RemoveFullTrustAssembly(snMC : StrongNameMembershipCondition) : Void;
	@:overload(function(permSet : cs.system.security.NamedPermissionSet) : cs.system.security.NamedPermissionSet {})
	function RemoveNamedPermissionSet(name : String) : cs.system.security.NamedPermissionSet;
	function Reset() : Void;
	function Resolve(evidence : Evidence) : PolicyStatement;
	function ResolveMatchingCodeGroups(evidence : Evidence) : CodeGroup;
	function ToXml() : cs.system.security.SecurityElement;
	function get_FullTrustAssemblies() : cs.system.collections.IList;
	function get_Label() : String;
	function get_NamedPermissionSets() : cs.system.collections.IList;
	function get_RootCodeGroup() : CodeGroup;
	function get_StoreLocation() : String;
	function get_Type() : cs.system.security.PolicyLevelType;
	function set_RootCodeGroup(value : CodeGroup) : CodeGroup;
	static function CreateAppDomainLevel() : PolicyLevel;
}
