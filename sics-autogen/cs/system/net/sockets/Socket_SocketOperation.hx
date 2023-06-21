package cs.system.net.sockets;

@:nativeGen @:native("System.Net.Sockets.Socket.SocketOperation") @:csNative extern enum Socket_SocketOperation {
	Accept;
	Connect;
	Receive;
	ReceiveFrom;
	Send;
	SendTo;
	RecvJustCallback;
	SendJustCallback;
	UsedInProcess;
	UsedInConsole2;
	Disconnect;
	AcceptReceive;
	ReceiveGeneric;
	SendGeneric;
}
