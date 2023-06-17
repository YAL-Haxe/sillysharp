package cs.system.reflection;

@:nativeGen @:native("System.Reflection.FieldAttributes") @:csNative extern enum FieldAttributes {
	PrivateScope;
	Private;
	FamANDAssem;
	Assembly;
	Family;
	FamORAssem;
	Public;
	FieldAccessMask;
	Static;
	InitOnly;
	Literal;
	NotSerialized;
	HasFieldRVA;
	SpecialName;
	RTSpecialName;
	HasFieldMarshal;
	PinvokeImpl;
	HasDefault;
	ReservedMask;
}
