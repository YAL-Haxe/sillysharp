package cs.system.security;

@:nativeGen @:native("System.Security.PolicyLevelType") @:csNative extern enum PolicyLevelType {
	User;
	Machine;
	Enterprise;
	AppDomain;
}
