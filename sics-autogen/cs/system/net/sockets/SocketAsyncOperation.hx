package cs.system.net.sockets;

@:nativeGen @:native("System.Net.Sockets.SocketAsyncOperation") @:csNative extern enum SocketAsyncOperation {
	None;
	Accept;
	Connect;
	Disconnect;
	Receive;
	ReceiveFrom;
	ReceiveMessageFrom;
	Send;
	SendPackets;
	SendTo;
}
