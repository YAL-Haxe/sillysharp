package cs.system.net.sockets;

@:nativeGen @:native("System.Net.Sockets.SelectMode") @:csNative extern enum SelectMode {
	SelectRead;
	SelectWrite;
	SelectError;
}
