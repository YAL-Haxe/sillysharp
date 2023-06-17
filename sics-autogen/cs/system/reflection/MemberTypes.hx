package cs.system.reflection;

@:nativeGen @:native("System.Reflection.MemberTypes") @:csNative extern enum MemberTypes {
	Constructor;
	Event;
	Field;
	Method;
	Property;
	TypeInfo;
	Custom;
	NestedType;
	All;
}
