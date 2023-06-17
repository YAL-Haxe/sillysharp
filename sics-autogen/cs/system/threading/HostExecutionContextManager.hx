package cs.system.threading;

@:nativeGen @:libType @:csNative @:native("System.Threading.HostExecutionContextManager") extern class HostExecutionContextManager {
	function new() : Void;
	function Capture() : HostExecutionContext;
	function Revert(previousState : Dynamic) : Void;
	function SetHostExecutionContext(hostExecutionContext : HostExecutionContext) : Dynamic;
}
