package cs.system.net.sockets;

@:nativeGen @:native("System.Net.Sockets.SocketOptionLevel") @:csNative extern enum SocketOptionLevel {
	IP;
	Tcp;
	Udp;
	IPv6;
	Socket;
}
