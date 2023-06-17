package cs.system.security;

@:nativeGen @:libType @:csNative @:native("System.Security.HostSecurityManager") extern class HostSecurityManager {
	var DomainPolicy(get,never) : cs.system.security.policy.PolicyLevel;
	var Flags(get,never) : HostSecurityManagerOptions;
	function new() : Void;
	function DetermineApplicationTrust(applicationEvidence : cs.system.security.policy.Evidence, activatorEvidence : cs.system.security.policy.Evidence, context : cs.system.security.policy.TrustManagerContext) : cs.system.security.policy.ApplicationTrust;
	function ProvideAppDomainEvidence(inputEvidence : cs.system.security.policy.Evidence) : cs.system.security.policy.Evidence;
	function ProvideAssemblyEvidence(loadedAssembly : cs.system.reflection.Assembly, inputEvidence : cs.system.security.policy.Evidence) : cs.system.security.policy.Evidence;
	function ResolvePolicy(evidence : cs.system.security.policy.Evidence) : PermissionSet;
	function get_DomainPolicy() : cs.system.security.policy.PolicyLevel;
	function get_Flags() : HostSecurityManagerOptions;
}
