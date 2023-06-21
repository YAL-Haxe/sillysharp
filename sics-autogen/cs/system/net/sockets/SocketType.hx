package cs.system.net.sockets;

@:nativeGen @:native("System.Net.Sockets.SocketType") @:csNative extern enum SocketType {
	Unknown;
	Stream;
	Dgram;
	Raw;
	Rdm;
	Seqpacket;
}
