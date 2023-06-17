package cs.system.io;

@:nativeGen @:native("System.IO.FileMode") @:csNative extern enum FileMode {
	CreateNew;
	Create;
	Open;
	OpenOrCreate;
	Truncate;
	Append;
}
