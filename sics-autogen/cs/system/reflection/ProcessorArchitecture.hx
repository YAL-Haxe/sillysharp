package cs.system.reflection;

@:nativeGen @:native("System.Reflection.ProcessorArchitecture") @:csNative extern enum ProcessorArchitecture {
	None;
	MSIL;
	X86;
	IA64;
	Amd64;
	Arm;
}
