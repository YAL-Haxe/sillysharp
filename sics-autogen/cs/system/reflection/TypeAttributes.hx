package cs.system.reflection;

@:nativeGen @:native("System.Reflection.TypeAttributes") @:csNative extern enum TypeAttributes {
	NotPublic;
	AutoLayout;
	Class;
	AnsiClass;
	Public;
	NestedPublic;
	NestedPrivate;
	NestedFamily;
	NestedAssembly;
	NestedFamANDAssem;
	VisibilityMask;
	NestedFamORAssem;
	SequentialLayout;
	ExplicitLayout;
	LayoutMask;
	ClassSemanticsMask;
	Interface;
	Abstract;
	Sealed;
	SpecialName;
	RTSpecialName;
	Import;
	Serializable;
	WindowsRuntime;
	UnicodeClass;
	AutoClass;
	StringFormatMask;
	CustomFormatClass;
	HasSecurity;
	ReservedMask;
	BeforeFieldInit;
	CustomFormatMask;
}
