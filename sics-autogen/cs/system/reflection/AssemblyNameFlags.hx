package cs.system.reflection;

@:nativeGen @:native("System.Reflection.AssemblyNameFlags") @:csNative extern enum AssemblyNameFlags {
	None;
	PublicKey;
	Retargetable;
	EnableJITcompileOptimizer;
	EnableJITcompileTracking;
}
