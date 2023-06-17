package cs.system;

@:nativeGen @:native("System.PlatformID") @:csNative extern enum PlatformID {
	Win32S;
	Win32Windows;
	Win32NT;
	WinCE;
	Unix;
	Xbox;
	MacOSX;
}
