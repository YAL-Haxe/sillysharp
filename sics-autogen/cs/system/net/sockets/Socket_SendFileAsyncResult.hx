package cs.system.net.sockets;

@:nativeGen @:libType @:csNative @:native("System.Net.Sockets.Socket.SendFileAsyncResult") extern final class Socket_SendFileAsyncResult implements cs.system.IAsyncResult {
	var AsyncState(get,never) : Dynamic;
	var AsyncWaitHandle(get,never) : cs.system.threading.WaitHandle;
	var CompletedSynchronously(get,never) : Bool;
	var Delegate(get,never) : Socket_SendFileHandler;
	var IsCompleted(get,never) : Bool;
	var Original(get,never) : cs.system.IAsyncResult;
	function new(d : Socket_SendFileHandler, ares : cs.system.IAsyncResult) : Void;
	function get_AsyncState() : Dynamic;
	function get_AsyncWaitHandle() : cs.system.threading.WaitHandle;
	function get_CompletedSynchronously() : Bool;
	function get_Delegate() : Socket_SendFileHandler;
	function get_IsCompleted() : Bool;
	function get_Original() : cs.system.IAsyncResult;
}
