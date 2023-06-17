package cs.system.security;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Security.SecurityState") extern class SecurityState {
	@:protected private function new() : Void;
	function EnsureState() : Void;
	function IsStateAvailable() : Bool;
}
