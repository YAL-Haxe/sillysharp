package cs.system.threading;

@:nativeGen @:native("System.Threading.ThreadPriority") @:csNative extern enum ThreadPriority {
	Lowest;
	BelowNormal;
	Normal;
	AboveNormal;
	Highest;
}
