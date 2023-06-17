package cs.system.reflection;

@:nativeGen @:native("System.Reflection.CallingConventions") @:csNative extern enum CallingConventions {
	Standard;
	VarArgs;
	Any;
	HasThis;
	ExplicitThis;
}
