package cs.system.net.sockets;

@:nativeGen @:libType @:csNative @:native("System.Net.Sockets.Socket.SocketAsyncCall") extern final class Socket_Delegate_SocketAsyncCall extends cs.system.MulticastDelegate {
	function new(object : Dynamic, method : cs.system.IntPtr) : Void;
	function BeginInvoke(sar : Socket_SocketAsyncResult, callback : cs.system.AsyncCallback, object : Dynamic) : cs.system.IAsyncResult;
	function EndInvoke(result : cs.system.IAsyncResult) : Void;
	function Invoke(sar : Socket_SocketAsyncResult) : Void;
	static function op_Addition(arg1 : Socket_SocketAsyncCall, arg2 : Socket_SocketAsyncCall) : Socket_SocketAsyncCall;
	static function op_Subtraction(arg1 : Socket_SocketAsyncCall, arg2 : Socket_SocketAsyncCall) : Socket_SocketAsyncCall;
}
