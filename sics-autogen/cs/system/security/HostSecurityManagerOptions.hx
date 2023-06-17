package cs.system.security;

@:nativeGen @:native("System.Security.HostSecurityManagerOptions") @:csNative extern enum HostSecurityManagerOptions {
	None;
	HostAppDomainEvidence;
	HostPolicyLevel;
	HostAssemblyEvidence;
	HostDetermineApplicationTrust;
	HostResolvePolicy;
	AllFlags;
}
