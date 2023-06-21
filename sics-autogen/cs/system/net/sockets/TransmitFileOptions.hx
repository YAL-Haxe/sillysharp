package cs.system.net.sockets;

@:nativeGen @:native("System.Net.Sockets.TransmitFileOptions") @:csNative extern enum TransmitFileOptions {
	UseDefaultWorkerThread;
	Disconnect;
	ReuseSocket;
	WriteBehind;
	UseSystemThread;
	UseKernelApc;
}
