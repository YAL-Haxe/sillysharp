package cs.system.net.sockets;

@:nativeGen @:libType @:csNative @:native("System.Net.Sockets.Socket.SocketAsyncResult") extern final class Socket_SocketAsyncResult implements cs.system.IAsyncResult {
	var AcceptSocket : Socket;
	var Addresses : cs.NativeArray<cs.system.net.IPAddress>;
	var AsyncState(get,never) : Dynamic;
	var AsyncWaitHandle(get,set) : cs.system.threading.WaitHandle;
	var Buffer : cs.NativeArray<cs.types.UInt8>;
	var Buffers : cs.system.collections.generic.IList_1<cs.system.ArraySegment_1<cs.types.UInt8>>;
	var CompletedSynchronously(get,never) : Bool;
	var CurrentAddress : Int;
	var EndCalled : Int;
	var EndPoint : cs.system.net.EndPoint;
	var ErrorCode(get,never) : SocketError;
	var IsCompleted(get,set) : Bool;
	var Offset : Int;
	var Port : Int;
	var ReuseSocket : Bool;
	var Size : Int;
	var Sock : Socket;
	var SockFlags : SocketFlags;
	var Socket(get,never) : Socket;
	var Total(get,set) : Int;
	var Worker : Socket_Worker;
	var ares : Dynamic;
	var blocking : Bool;
	var handle : cs.system.IntPtr;
	var operation : Socket_SocketOperation;
	@:overload(function() : Void {})
	function new(sock : Socket, state : Dynamic, callback : cs.system.AsyncCallback, operation : Socket_SocketOperation) : Void;
	function CheckIfThrowDelayedException() : Void;
	@:overload(function() : Void {})
	@:overload(function(s : Socket, total : Int) : Void {})
	@:overload(function(s : Socket) : Void {})
	@:overload(function(e : cs.system.Exception) : Void {})
	@:overload(function(e : cs.system.Exception, synch : Bool) : Void {})
	@:overload(function(total : Int) : Void {})
	function Complete(synch : Bool) : Void;
	function Dispose() : Void;
	function DoMConnectCallback() : Void;
	function Init(sock : Socket, state : Dynamic, callback : cs.system.AsyncCallback, operation : Socket_SocketOperation) : Void;
	function get_AsyncState() : Dynamic;
	function get_AsyncWaitHandle() : cs.system.threading.WaitHandle;
	function get_CompletedSynchronously() : Bool;
	function get_ErrorCode() : SocketError;
	function get_IsCompleted() : Bool;
	function get_Socket() : Socket;
	function get_Total() : Int;
	function set_AsyncWaitHandle(value : cs.system.threading.WaitHandle) : cs.system.threading.WaitHandle;
	function set_IsCompleted(value : Bool) : Bool;
	function set_Total(value : Int) : Int;
}
