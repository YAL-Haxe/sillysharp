package cs.system.reflection;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Reflection.TypeInfo") extern class TypeInfo extends cs.system.Type implements IReflectableType {
	var DeclaredConstructors(get,never) : cs.system.collections.generic.IEnumerable_1<ConstructorInfo>;
	var DeclaredEvents(get,never) : cs.system.collections.generic.IEnumerable_1<EventInfo>;
	var DeclaredFields(get,never) : cs.system.collections.generic.IEnumerable_1<FieldInfo>;
	var DeclaredMembers(get,never) : cs.system.collections.generic.IEnumerable_1<MemberInfo>;
	var DeclaredMethods(get,never) : cs.system.collections.generic.IEnumerable_1<MethodInfo>;
	var DeclaredNestedTypes(get,never) : cs.system.collections.generic.IEnumerable_1<TypeInfo>;
	var DeclaredProperties(get,never) : cs.system.collections.generic.IEnumerable_1<PropertyInfo>;
	var GenericTypeParameters(get,never) : cs.NativeArray<cs.system.Type>;
	var ImplementedInterfaces(get,never) : cs.system.collections.generic.IEnumerable_1<cs.system.Type>;
	function AsType() : cs.system.Type;
	function GetDeclaredEvent(name : String) : EventInfo;
	function GetDeclaredField(name : String) : FieldInfo;
	function GetDeclaredMethod(name : String) : MethodInfo;
	function GetDeclaredMethods(name : String) : cs.system.collections.generic.IEnumerable_1<MethodInfo>;
	function GetDeclaredNestedType(name : String) : TypeInfo;
	function GetDeclaredProperty(name : String) : PropertyInfo;
	function IsAssignableFrom(typeInfo : TypeInfo) : Bool;
	function get_DeclaredConstructors() : cs.system.collections.generic.IEnumerable_1<ConstructorInfo>;
	function get_DeclaredEvents() : cs.system.collections.generic.IEnumerable_1<EventInfo>;
	function get_DeclaredFields() : cs.system.collections.generic.IEnumerable_1<FieldInfo>;
	function get_DeclaredMembers() : cs.system.collections.generic.IEnumerable_1<MemberInfo>;
	function get_DeclaredMethods() : cs.system.collections.generic.IEnumerable_1<MethodInfo>;
	function get_DeclaredNestedTypes() : cs.system.collections.generic.IEnumerable_1<TypeInfo>;
	function get_DeclaredProperties() : cs.system.collections.generic.IEnumerable_1<PropertyInfo>;
	function get_GenericTypeParameters() : cs.NativeArray<cs.system.Type>;
	function get_ImplementedInterfaces() : cs.system.collections.generic.IEnumerable_1<cs.system.Type>;
}
