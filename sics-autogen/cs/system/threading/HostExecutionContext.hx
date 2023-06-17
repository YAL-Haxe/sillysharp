package cs.system.threading;

@:nativeGen @:libType @:csNative @:native("System.Threading.HostExecutionContext") extern class HostExecutionContext {
	private var State(null,never) : Dynamic;
	@:overload(function() : Void {})
	function new(state : Dynamic) : Void;
	function CreateCopy() : HostExecutionContext;
	@:protected private function get_State() : Dynamic;
	@:protected private function set_State(value : Dynamic) : Dynamic;
}
