package cs.system.runtime.interopservices;

@:nativeGen @:native("System.Runtime.InteropServices.CharSet") @:csNative extern enum CharSet {
	None;
	Ansi;
	Unicode;
	Auto;
}
