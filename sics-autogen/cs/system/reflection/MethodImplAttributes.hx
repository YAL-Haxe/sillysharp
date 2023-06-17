package cs.system.reflection;

@:nativeGen @:native("System.Reflection.MethodImplAttributes") @:csNative extern enum MethodImplAttributes {
	IL;
	Managed;
	Native;
	OPTIL;
	CodeTypeMask;
	Runtime;
	ManagedMask;
	Unmanaged;
	NoInlining;
	ForwardRef;
	Synchronized;
	NoOptimization;
	PreserveSig;
	AggressiveInlining;
	InternalCall;
	MaxMethodImplVal;
}
