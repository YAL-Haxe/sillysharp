package cs.system.reflection;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Reflection.IReflect") extern interface IReflect {
	var UnderlyingSystemType(get,never) : cs.system.Type;
	function GetField(name : String, bindingAttr : BindingFlags) : FieldInfo;
	function GetFields(bindingAttr : BindingFlags) : cs.NativeArray<FieldInfo>;
	function GetMember(name : String, bindingAttr : BindingFlags) : cs.NativeArray<MemberInfo>;
	function GetMembers(bindingAttr : BindingFlags) : cs.NativeArray<MemberInfo>;
	@:overload(function(name : String, bindingAttr : BindingFlags) : MethodInfo {})
	function GetMethod(name : String, bindingAttr : BindingFlags, binder : Binder, types : cs.NativeArray<cs.system.Type>, modifiers : cs.NativeArray<ParameterModifier>) : MethodInfo;
	function GetMethods(bindingAttr : BindingFlags) : cs.NativeArray<MethodInfo>;
	function GetProperties(bindingAttr : BindingFlags) : cs.NativeArray<PropertyInfo>;
	@:overload(function(name : String, bindingAttr : BindingFlags) : PropertyInfo {})
	function GetProperty(name : String, bindingAttr : BindingFlags, binder : Binder, returnType : cs.system.Type, types : cs.NativeArray<cs.system.Type>, modifiers : cs.NativeArray<ParameterModifier>) : PropertyInfo;
	function InvokeMember(name : String, invokeAttr : BindingFlags, binder : Binder, target : Dynamic, args : cs.NativeArray<Dynamic>, modifiers : cs.NativeArray<ParameterModifier>, culture : cs.system.globalization.CultureInfo, namedParameters : cs.NativeArray<String>) : Dynamic;
	function get_UnderlyingSystemType() : cs.system.Type;
}
