package cs.system.net.sockets;

@:nativeGen @:libType @:csNative @:native("System.Net.Sockets.Socket.Worker") extern final class Socket_Worker {
	var result : Socket_SocketAsyncResult;
	@:overload(function(args : SocketAsyncEventArgs) : Void {})
	function new(ares : Socket_SocketAsyncResult) : Void;
	function Accept() : Void;
	function AcceptReceive() : Void;
	function Connect() : Void;
	function Disconnect() : Void;
	function Dispose() : Void;
	function Init(sock : Socket, args : SocketAsyncEventArgs, op : Socket_SocketOperation) : Void;
	function Receive() : Void;
	function ReceiveFrom() : Void;
	function ReceiveGeneric() : Void;
	function Send() : Void;
	function SendGeneric() : Void;
	function SendTo() : Void;
	static var Dispatcher : Socket_SocketAsyncCall;
}
