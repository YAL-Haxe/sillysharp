package cs.system.security;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Security.ISecurityPolicyEncodable") extern interface ISecurityPolicyEncodable {
	function FromXml(e : SecurityElement, level : cs.system.security.policy.PolicyLevel) : Void;
	function ToXml(level : cs.system.security.policy.PolicyLevel) : SecurityElement;
}
