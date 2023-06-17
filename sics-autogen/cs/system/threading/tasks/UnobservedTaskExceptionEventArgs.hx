package cs.system.threading.tasks;

@:nativeGen @:libType @:csNative @:native("System.Threading.Tasks.UnobservedTaskExceptionEventArgs") extern class UnobservedTaskExceptionEventArgs extends cs.system.EventArgs {
	var Exception(get,never) : cs.system.AggregateException;
	var Observed(get,never) : Bool;
	function new(exception : cs.system.AggregateException) : Void;
	function SetObserved() : Void;
	function get_Exception() : cs.system.AggregateException;
	function get_Observed() : Bool;
}
