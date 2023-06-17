package cs.system.runtime.interopservices;

@:nativeGen @:native("System.Runtime.InteropServices.CallingConvention") @:csNative extern enum CallingConvention {
	Winapi;
	Cdecl;
	StdCall;
	ThisCall;
	FastCall;
}
