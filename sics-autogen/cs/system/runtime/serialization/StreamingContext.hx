package cs.system.runtime.serialization;

@:nativeGen @:struct @:libType @:csNative @:native("System.Runtime.Serialization.StreamingContext") extern final class StreamingContext extends cs.system.ValueType {
	var Context(get,never) : Dynamic;
	var State(get,never) : StreamingContextStates;
	@:overload(function(state : StreamingContextStates) : Void {})
	function new(state : StreamingContextStates, additional : Dynamic) : Void;
	function get_Context() : Dynamic;
	function get_State() : StreamingContextStates;
}
