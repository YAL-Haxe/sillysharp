package cs.system.net.sockets;

@:nativeGen @:native("System.Net.Sockets.SocketShutdown") @:csNative extern enum SocketShutdown {
	Receive;
	Send;
	Both;
}
