package cs.system.net.sockets;

@:nativeGen @:struct @:libType @:csNative @:native("System.Net.Sockets.Socket.WSABUF") extern final class Socket_WSABUF extends cs.system.ValueType {
	var buf : cs.system.IntPtr;
	var len : Int;
}
