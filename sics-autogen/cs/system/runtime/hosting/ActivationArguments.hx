package cs.system.runtime.hosting;

@:nativeGen @:libType @:csNative @:native("System.Runtime.Hosting.ActivationArguments") extern final class ActivationArguments extends cs.system.security.policy.EvidenceBase {
	var ActivationContext(get,never) : cs.system.ActivationContext;
	var ActivationData(get,never) : cs.NativeArray<String>;
	var ApplicationIdentity(get,never) : cs.system.ApplicationIdentity;
	@:overload(function(activationData : cs.system.ActivationContext) : Void {})
	@:overload(function(applicationIdentity : cs.system.ApplicationIdentity, activationData : cs.NativeArray<String>) : Void {})
	@:overload(function(activationContext : cs.system.ActivationContext, activationData : cs.NativeArray<String>) : Void {})
	function new(applicationIdentity : cs.system.ApplicationIdentity) : Void;
	function get_ActivationContext() : cs.system.ActivationContext;
	function get_ActivationData() : cs.NativeArray<String>;
	function get_ApplicationIdentity() : cs.system.ApplicationIdentity;
}
