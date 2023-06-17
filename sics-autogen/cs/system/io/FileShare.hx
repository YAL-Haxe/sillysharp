package cs.system.io;

@:nativeGen @:native("System.IO.FileShare") @:csNative extern enum FileShare {
	None;
	Read;
	Write;
	ReadWrite;
	Delete;
	Inheritable;
}
