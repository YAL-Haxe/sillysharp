package cs.system.security.policy;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Security.Policy.IMembershipCondition") extern interface IMembershipCondition extends cs.system.security.ISecurityEncodable extends cs.system.security.ISecurityPolicyEncodable {
	function Check(evidence : Evidence) : Bool;
	function Copy() : IMembershipCondition;
	function ToString() : String;
}
