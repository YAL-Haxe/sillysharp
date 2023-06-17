package cs.system.reflection.emit;

@:nativeGen @:libType @:csNative @:native("System.Reflection.Emit.EnumBuilder") extern final class EnumBuilder extends cs.system.reflection.TypeInfo implements cs.system.runtime.interopservices._EnumBuilder {
	var Assembly(get,never) : cs.system.reflection.Assembly;
	var AssemblyQualifiedName(get,never) : String;
	var BaseType(get,never) : cs.system.Type;
	var DeclaringType(get,never) : cs.system.Type;
	var FullName(get,never) : String;
	var GUID(get,never) : cs.system.Guid;
	var IsConstructedGenericType(get,never) : Bool;
	var Module(get,never) : cs.system.reflection.Module;
	var Name(get,never) : String;
	var Namespace(get,never) : String;
	var ReflectedType(get,never) : cs.system.Type;
	var TypeHandle(get,never) : cs.system.RuntimeTypeHandle;
	var TypeToken(get,never) : TypeToken;
	var UnderlyingField(get,never) : FieldBuilder;
	var UnderlyingSystemType(get,never) : cs.system.Type;
	function CreateType() : cs.system.Type;
	function DefineLiteral(literalName : String, literalValue : Dynamic) : FieldBuilder;
	@:protected private function GetAttributeFlagsImpl() : cs.system.reflection.TypeAttributes;
	@:protected private function GetConstructorImpl(bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, callConvention : cs.system.reflection.CallingConventions, types : cs.NativeArray<cs.system.Type>, modifiers : cs.NativeArray<cs.system.reflection.ParameterModifier>) : cs.system.reflection.ConstructorInfo;
	function GetConstructors(bindingAttr : cs.system.reflection.BindingFlags) : cs.NativeArray<cs.system.reflection.ConstructorInfo>;
	@:overload(function(inherit : Bool) : cs.NativeArray<Dynamic> {})
	function GetCustomAttributes(attributeType : cs.system.Type, inherit : Bool) : cs.NativeArray<Dynamic>;
	function GetElementType() : cs.system.Type;
	function GetEnumUnderlyingType() : cs.system.Type;
	function GetEvent(name : String, bindingAttr : cs.system.reflection.BindingFlags) : cs.system.reflection.EventInfo;
	@:overload(function() : cs.NativeArray<cs.system.reflection.EventInfo> {})
	function GetEvents(bindingAttr : cs.system.reflection.BindingFlags) : cs.NativeArray<cs.system.reflection.EventInfo>;
	function GetField(name : String, bindingAttr : cs.system.reflection.BindingFlags) : cs.system.reflection.FieldInfo;
	function GetFields(bindingAttr : cs.system.reflection.BindingFlags) : cs.NativeArray<cs.system.reflection.FieldInfo>;
	function GetInterface(name : String, ignoreCase : Bool) : cs.system.Type;
	function GetInterfaceMap(interfaceType : cs.system.Type) : cs.system.reflection.InterfaceMapping;
	function GetInterfaces() : cs.NativeArray<cs.system.Type>;
	function GetMember(name : String, type : cs.system.reflection.MemberTypes, bindingAttr : cs.system.reflection.BindingFlags) : cs.NativeArray<cs.system.reflection.MemberInfo>;
	function GetMembers(bindingAttr : cs.system.reflection.BindingFlags) : cs.NativeArray<cs.system.reflection.MemberInfo>;
	@:protected private function GetMethodImpl(name : String, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, callConvention : cs.system.reflection.CallingConventions, types : cs.NativeArray<cs.system.Type>, modifiers : cs.NativeArray<cs.system.reflection.ParameterModifier>) : cs.system.reflection.MethodInfo;
	function GetMethods(bindingAttr : cs.system.reflection.BindingFlags) : cs.NativeArray<cs.system.reflection.MethodInfo>;
	function GetNestedType(name : String, bindingAttr : cs.system.reflection.BindingFlags) : cs.system.Type;
	function GetNestedTypes(bindingAttr : cs.system.reflection.BindingFlags) : cs.NativeArray<cs.system.Type>;
	function GetProperties(bindingAttr : cs.system.reflection.BindingFlags) : cs.NativeArray<cs.system.reflection.PropertyInfo>;
	@:protected private function GetPropertyImpl(name : String, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, returnType : cs.system.Type, types : cs.NativeArray<cs.system.Type>, modifiers : cs.NativeArray<cs.system.reflection.ParameterModifier>) : cs.system.reflection.PropertyInfo;
	@:protected private function HasElementTypeImpl() : Bool;
	function InvokeMember(name : String, invokeAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, target : Dynamic, args : cs.NativeArray<Dynamic>, modifiers : cs.NativeArray<cs.system.reflection.ParameterModifier>, culture : cs.system.globalization.CultureInfo, namedParameters : cs.NativeArray<String>) : Dynamic;
	@:protected private function IsArrayImpl() : Bool;
	function IsAssignableFrom(typeInfo : cs.system.reflection.TypeInfo) : Bool;
	@:protected private function IsByRefImpl() : Bool;
	@:protected private function IsCOMObjectImpl() : Bool;
	function IsDefined(attributeType : cs.system.Type, inherit : Bool) : Bool;
	@:protected private function IsPointerImpl() : Bool;
	@:protected private function IsPrimitiveImpl() : Bool;
	@:protected private function IsValueTypeImpl() : Bool;
	@:overload(function() : cs.system.Type {})
	function MakeArrayType(rank : Int) : cs.system.Type;
	function MakeByRefType() : cs.system.Type;
	function MakePointerType() : cs.system.Type;
	@:overload(function(customBuilder : CustomAttributeBuilder) : Void {})
	function SetCustomAttribute(con : cs.system.reflection.ConstructorInfo, binaryAttribute : cs.NativeArray<cs.types.UInt8>) : Void;
	function get_Assembly() : cs.system.reflection.Assembly;
	function get_AssemblyQualifiedName() : String;
	function get_BaseType() : cs.system.Type;
	function get_DeclaringType() : cs.system.Type;
	function get_FullName() : String;
	function get_GUID() : cs.system.Guid;
	function get_IsConstructedGenericType() : Bool;
	function get_Module() : cs.system.reflection.Module;
	function get_Name() : String;
	function get_Namespace() : String;
	function get_ReflectedType() : cs.system.Type;
	function get_TypeHandle() : cs.system.RuntimeTypeHandle;
	function get_TypeToken() : TypeToken;
	function get_UnderlyingField() : FieldBuilder;
	function get_UnderlyingSystemType() : cs.system.Type;
}
