package cs.system.security.policy;

@:nativeGen @:libType @:csNative @:native("System.Security.Policy.StrongNameMembershipCondition") extern final class StrongNameMembershipCondition implements IMembershipCondition implements IConstantMembershipCondition implements cs.system.security.ISecurityEncodable implements cs.system.security.ISecurityPolicyEncodable {
	var Name(get,set) : String;
	var PublicKey(get,set) : cs.system.security.permissions.StrongNamePublicKeyBlob;
	var Version(get,set) : cs.system.Version;
	function new(blob : cs.system.security.permissions.StrongNamePublicKeyBlob, name : String, version : cs.system.Version) : Void;
	function Check(evidence : Evidence) : Bool;
	function Copy() : IMembershipCondition;
	@:overload(function(e : cs.system.security.SecurityElement) : Void {})
	function FromXml(e : cs.system.security.SecurityElement, level : PolicyLevel) : Void;
	function ToString() : String;
	@:overload(function() : cs.system.security.SecurityElement {})
	function ToXml(level : PolicyLevel) : cs.system.security.SecurityElement;
	function get_Name() : String;
	function get_PublicKey() : cs.system.security.permissions.StrongNamePublicKeyBlob;
	function get_Version() : cs.system.Version;
	function set_Name(value : String) : String;
	function set_PublicKey(value : cs.system.security.permissions.StrongNamePublicKeyBlob) : cs.system.security.permissions.StrongNamePublicKeyBlob;
	function set_Version(value : cs.system.Version) : cs.system.Version;
}
