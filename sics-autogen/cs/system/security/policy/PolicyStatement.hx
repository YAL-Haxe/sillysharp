package cs.system.security.policy;

@:nativeGen @:libType @:csNative @:native("System.Security.Policy.PolicyStatement") extern final class PolicyStatement implements cs.system.security.ISecurityEncodable implements cs.system.security.ISecurityPolicyEncodable {
	var AttributeString(get,never) : String;
	var Attributes(get,set) : PolicyStatementAttribute;
	var PermissionSet(get,set) : cs.system.security.PermissionSet;
	@:overload(function(permSet : cs.system.security.PermissionSet) : Void {})
	function new(permSet : cs.system.security.PermissionSet, attributes : PolicyStatementAttribute) : Void;
	function Copy() : PolicyStatement;
	@:overload(function(et : cs.system.security.SecurityElement) : Void {})
	function FromXml(et : cs.system.security.SecurityElement, level : PolicyLevel) : Void;
	@:overload(function() : cs.system.security.SecurityElement {})
	function ToXml(level : PolicyLevel) : cs.system.security.SecurityElement;
	function get_AttributeString() : String;
	function get_Attributes() : PolicyStatementAttribute;
	function get_PermissionSet() : cs.system.security.PermissionSet;
	function set_Attributes(value : PolicyStatementAttribute) : PolicyStatementAttribute;
	function set_PermissionSet(value : cs.system.security.PermissionSet) : cs.system.security.PermissionSet;
}
