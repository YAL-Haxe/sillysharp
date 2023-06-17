package cs.system.runtime.serialization;

@:nativeGen @:libType @:csNative @:native("System.Runtime.Serialization.SafeSerializationEventArgs") extern final class SafeSerializationEventArgs extends cs.system.EventArgs {
	var StreamingContext(get,never) : StreamingContext;
	function AddSerializedState(serializedState : ISafeSerializationData) : Void;
	function get_StreamingContext() : StreamingContext;
}
