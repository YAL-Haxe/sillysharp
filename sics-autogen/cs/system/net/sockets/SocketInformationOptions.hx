package cs.system.net.sockets;

@:nativeGen @:native("System.Net.Sockets.SocketInformationOptions") @:csNative extern enum SocketInformationOptions {
	NonBlocking;
	Connected;
	Listening;
	UseOnlyOverlappedIO;
}
