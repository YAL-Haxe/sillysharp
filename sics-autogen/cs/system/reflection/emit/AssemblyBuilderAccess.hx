package cs.system.reflection.emit;

@:nativeGen @:native("System.Reflection.Emit.AssemblyBuilderAccess") @:csNative extern enum AssemblyBuilderAccess {
	Run;
	Save;
	RunAndSave;
	ReflectionOnly;
	RunAndCollect;
}
