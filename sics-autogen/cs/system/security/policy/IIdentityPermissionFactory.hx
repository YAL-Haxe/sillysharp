package cs.system.security.policy;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Security.Policy.IIdentityPermissionFactory") extern interface IIdentityPermissionFactory {
	function CreateIdentityPermission(evidence : Evidence) : cs.system.security.IPermission;
}
