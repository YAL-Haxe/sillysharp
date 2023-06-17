package cs.system;

@:nativeGen @:libType @:csNative @:native("System.UnhandledExceptionEventArgs") extern class UnhandledExceptionEventArgs extends EventArgs {
	var ExceptionObject(get,never) : Dynamic;
	var IsTerminating(get,never) : Bool;
	function new(exception : Dynamic, isTerminating : Bool) : Void;
	function get_ExceptionObject() : Dynamic;
	function get_IsTerminating() : Bool;
}
