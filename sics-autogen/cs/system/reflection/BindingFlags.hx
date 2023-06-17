package cs.system.reflection;

@:nativeGen @:native("System.Reflection.BindingFlags") @:csNative extern enum BindingFlags {
	Default;
	IgnoreCase;
	DeclaredOnly;
	Instance;
	Static;
	Public;
	NonPublic;
	FlattenHierarchy;
	InvokeMethod;
	CreateInstance;
	GetField;
	SetField;
	GetProperty;
	SetProperty;
	PutDispProperty;
	PutRefDispProperty;
	ExactBinding;
	SuppressChangeType;
	OptionalParamBinding;
	IgnoreReturn;
}
