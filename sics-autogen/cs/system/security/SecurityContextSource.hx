package cs.system.security;

@:nativeGen @:native("System.Security.SecurityContextSource") @:csNative extern enum SecurityContextSource {
	CurrentAppDomain;
	CurrentAssembly;
}
