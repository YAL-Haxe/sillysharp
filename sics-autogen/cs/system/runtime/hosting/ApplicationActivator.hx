package cs.system.runtime.hosting;

@:nativeGen @:libType @:csNative @:native("System.Runtime.Hosting.ApplicationActivator") extern class ApplicationActivator {
	function new() : Void;
	@:overload(function(activationContext : cs.system.ActivationContext) : cs.system.runtime.remoting.ObjectHandle {})
	function CreateInstance(activationContext : cs.system.ActivationContext, activationCustomData : cs.NativeArray<String>) : cs.system.runtime.remoting.ObjectHandle;
	@:protected private static function CreateInstanceHelper(adSetup : cs.system.AppDomainSetup) : cs.system.runtime.remoting.ObjectHandle;
}
