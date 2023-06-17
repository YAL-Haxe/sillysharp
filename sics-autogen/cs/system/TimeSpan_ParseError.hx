package cs.system;

@:nativeGen @:native("System.TimeSpan.ParseError") @:csNative extern enum TimeSpan_ParseError {
	None;
	Format;
	Overflow;
}
