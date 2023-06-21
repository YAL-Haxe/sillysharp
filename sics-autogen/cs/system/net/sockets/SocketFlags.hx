package cs.system.net.sockets;

@:nativeGen @:native("System.Net.Sockets.SocketFlags") @:csNative extern enum SocketFlags {
	None;
	OutOfBand;
	Peek;
	DontRoute;
	MaxIOVectorLength;
	Truncated;
	ControlDataTruncated;
	Broadcast;
	Multicast;
	Partial;
}
