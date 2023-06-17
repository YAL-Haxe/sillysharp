package cs.system.security.principal;

@:nativeGen @:native("System.Security.Principal.PrincipalPolicy") @:csNative extern enum PrincipalPolicy {
	UnauthenticatedPrincipal;
	NoPrincipal;
	WindowsPrincipal;
}
