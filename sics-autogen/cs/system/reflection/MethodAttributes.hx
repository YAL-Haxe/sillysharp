package cs.system.reflection;

@:nativeGen @:native("System.Reflection.MethodAttributes") @:csNative extern enum MethodAttributes {
	PrivateScope;
	ReuseSlot;
	Private;
	FamANDAssem;
	Assembly;
	Family;
	FamORAssem;
	Public;
	MemberAccessMask;
	UnmanagedExport;
	Static;
	Final;
	Virtual;
	HideBySig;
	VtableLayoutMask;
	NewSlot;
	CheckAccessOnOverride;
	Abstract;
	SpecialName;
	RTSpecialName;
	PinvokeImpl;
	HasSecurity;
	RequireSecObject;
	ReservedMask;
}
