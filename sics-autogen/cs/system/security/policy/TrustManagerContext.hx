package cs.system.security.policy;

@:nativeGen @:libType @:csNative @:native("System.Security.Policy.TrustManagerContext") extern class TrustManagerContext {
	var IgnorePersistedDecision(get,set) : Bool;
	var KeepAlive(get,set) : Bool;
	var NoPrompt(get,set) : Bool;
	var Persist(get,set) : Bool;
	var PreviousApplicationIdentity(get,set) : cs.system.ApplicationIdentity;
	var UIContext(get,set) : TrustManagerUIContext;
	@:overload(function() : Void {})
	function new(uiContext : TrustManagerUIContext) : Void;
	function get_IgnorePersistedDecision() : Bool;
	function get_KeepAlive() : Bool;
	function get_NoPrompt() : Bool;
	function get_Persist() : Bool;
	function get_PreviousApplicationIdentity() : cs.system.ApplicationIdentity;
	function get_UIContext() : TrustManagerUIContext;
	function set_IgnorePersistedDecision(value : Bool) : Bool;
	function set_KeepAlive(value : Bool) : Bool;
	function set_NoPrompt(value : Bool) : Bool;
	function set_Persist(value : Bool) : Bool;
	function set_PreviousApplicationIdentity(value : cs.system.ApplicationIdentity) : cs.system.ApplicationIdentity;
	function set_UIContext(value : TrustManagerUIContext) : TrustManagerUIContext;
}
