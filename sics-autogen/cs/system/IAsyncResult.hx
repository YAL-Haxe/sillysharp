package cs.system;

@:nativeGen @:abstract @:libType @:csNative @:native("System.IAsyncResult") extern interface IAsyncResult {
	var AsyncState(get,never) : Dynamic;
	var AsyncWaitHandle(get,never) : cs.system.threading.WaitHandle;
	var CompletedSynchronously(get,never) : Bool;
	var IsCompleted(get,never) : Bool;
	function get_AsyncState() : Dynamic;
	function get_AsyncWaitHandle() : cs.system.threading.WaitHandle;
	function get_CompletedSynchronously() : Bool;
	function get_IsCompleted() : Bool;
}
