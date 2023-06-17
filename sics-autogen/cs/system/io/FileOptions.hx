package cs.system.io;

@:nativeGen @:native("System.IO.FileOptions") @:csNative extern enum FileOptions {
	WriteThrough;
	None;
	Encrypted;
	DeleteOnClose;
	SequentialScan;
	RandomAccess;
	Asynchronous;
}
