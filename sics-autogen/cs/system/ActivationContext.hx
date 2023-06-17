package cs.system;

@:nativeGen @:libType @:csNative @:native("System.ActivationContext") extern final class ActivationContext implements IDisposable implements cs.system.runtime.serialization.ISerializable {
	var Form(get,never) : ActivationContext_ContextForm;
	var Identity(get,never) : ApplicationIdentity;
	function Dispose() : Void;
	function get_Form() : ActivationContext_ContextForm;
	function get_Identity() : ApplicationIdentity;
	@:overload(function(identity : ApplicationIdentity) : ActivationContext {})
	static function CreatePartialActivationContext(identity : ApplicationIdentity, manifestPaths : cs.NativeArray<String>) : ActivationContext;
}
