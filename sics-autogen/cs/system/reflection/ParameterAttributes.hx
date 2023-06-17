package cs.system.reflection;

@:nativeGen @:native("System.Reflection.ParameterAttributes") @:csNative extern enum ParameterAttributes {
	None;
	In;
	Out;
	Lcid;
	Retval;
	Optional;
	HasDefault;
	HasFieldMarshal;
	Reserved3;
	Reserved4;
	ReservedMask;
}
