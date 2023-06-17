package cs.system.reflection.emit;

@:nativeGen @:libType @:csNative @:native("System.Reflection.Emit.TypeBuilder") extern final class TypeBuilder extends cs.system.reflection.TypeInfo implements cs.system.runtime.interopservices._TypeBuilder {
	var Assembly(get,never) : cs.system.reflection.Assembly;
	var AssemblyQualifiedName(get,never) : String;
	var BaseType(get,never) : cs.system.Type;
	var ContainsGenericParameters(get,never) : Bool;
	var DeclaringMethod(get,never) : cs.system.reflection.MethodBase;
	var DeclaringType(get,never) : cs.system.Type;
	var FullName(get,never) : String;
	var GUID(get,never) : cs.system.Guid;
	var GenericParameterAttributes(get,never) : cs.system.reflection.GenericParameterAttributes;
	var GenericParameterPosition(get,never) : Int;
	var IsConstructedGenericType(get,never) : Bool;
	var IsGenericParameter(get,never) : Bool;
	var IsGenericType(get,never) : Bool;
	var IsGenericTypeDefinition(get,never) : Bool;
	var Module(get,never) : cs.system.reflection.Module;
	var Name(get,never) : String;
	var Namespace(get,never) : String;
	var PackingSize(get,never) : PackingSize;
	var ReflectedType(get,never) : cs.system.Type;
	var Size(get,never) : Int;
	var TypeHandle(get,never) : cs.system.RuntimeTypeHandle;
	var TypeToken(get,never) : TypeToken;
	var UnderlyingSystemType(get,never) : cs.system.Type;
	function AddDeclarativeSecurity(action : cs.system.security.permissions.SecurityAction, pset : cs.system.security.PermissionSet) : Void;
	function AddInterfaceImplementation(interfaceType : cs.system.Type) : Void;
	function CreateType() : cs.system.Type;
	@:overload(function(attributes : cs.system.reflection.MethodAttributes, callingConvention : cs.system.reflection.CallingConventions, parameterTypes : cs.NativeArray<cs.system.Type>) : ConstructorBuilder {})
	function DefineConstructor(attributes : cs.system.reflection.MethodAttributes, callingConvention : cs.system.reflection.CallingConventions, parameterTypes : cs.NativeArray<cs.system.Type>, requiredCustomModifiers : cs.NativeArray<cs.NativeArray<cs.system.Type>>, optionalCustomModifiers : cs.NativeArray<cs.NativeArray<cs.system.Type>>) : ConstructorBuilder;
	function DefineDefaultConstructor(attributes : cs.system.reflection.MethodAttributes) : ConstructorBuilder;
	function DefineEvent(name : String, attributes : cs.system.reflection.EventAttributes, eventtype : cs.system.Type) : EventBuilder;
	@:overload(function(fieldName : String, type : cs.system.Type, attributes : cs.system.reflection.FieldAttributes) : FieldBuilder {})
	function DefineField(fieldName : String, type : cs.system.Type, requiredCustomModifiers : cs.NativeArray<cs.system.Type>, optionalCustomModifiers : cs.NativeArray<cs.system.Type>, attributes : cs.system.reflection.FieldAttributes) : FieldBuilder;
	function DefineGenericParameters(names : cs.NativeArray<String>) : cs.NativeArray<GenericTypeParameterBuilder>;
	function DefineInitializedData(name : String, data : cs.NativeArray<cs.types.UInt8>, attributes : cs.system.reflection.FieldAttributes) : FieldBuilder;
	@:overload(function(name : String, attributes : cs.system.reflection.MethodAttributes, returnType : cs.system.Type, parameterTypes : cs.NativeArray<cs.system.Type>) : MethodBuilder {})
	@:overload(function(name : String, attributes : cs.system.reflection.MethodAttributes, callingConvention : cs.system.reflection.CallingConventions) : MethodBuilder {})
	@:overload(function(name : String, attributes : cs.system.reflection.MethodAttributes) : MethodBuilder {})
	@:overload(function(name : String, attributes : cs.system.reflection.MethodAttributes, callingConvention : cs.system.reflection.CallingConventions, returnType : cs.system.Type, returnTypeRequiredCustomModifiers : cs.NativeArray<cs.system.Type>, returnTypeOptionalCustomModifiers : cs.NativeArray<cs.system.Type>, parameterTypes : cs.NativeArray<cs.system.Type>, parameterTypeRequiredCustomModifiers : cs.NativeArray<cs.NativeArray<cs.system.Type>>, parameterTypeOptionalCustomModifiers : cs.NativeArray<cs.NativeArray<cs.system.Type>>) : MethodBuilder {})
	function DefineMethod(name : String, attributes : cs.system.reflection.MethodAttributes, callingConvention : cs.system.reflection.CallingConventions, returnType : cs.system.Type, parameterTypes : cs.NativeArray<cs.system.Type>) : MethodBuilder;
	function DefineMethodOverride(methodInfoBody : cs.system.reflection.MethodInfo, methodInfoDeclaration : cs.system.reflection.MethodInfo) : Void;
	@:overload(function(name : String) : TypeBuilder {})
	@:overload(function(name : String, attr : cs.system.reflection.TypeAttributes, parent : cs.system.Type, packSize : PackingSize) : TypeBuilder {})
	@:overload(function(name : String, attr : cs.system.reflection.TypeAttributes, parent : cs.system.Type, typeSize : Int) : TypeBuilder {})
	@:overload(function(name : String, attr : cs.system.reflection.TypeAttributes, parent : cs.system.Type, interfaces : cs.NativeArray<cs.system.Type>) : TypeBuilder {})
	@:overload(function(name : String, attr : cs.system.reflection.TypeAttributes, parent : cs.system.Type) : TypeBuilder {})
	function DefineNestedType(name : String, attr : cs.system.reflection.TypeAttributes) : TypeBuilder;
	@:overload(function(name : String, dllName : String, entryName : String, attributes : cs.system.reflection.MethodAttributes, callingConvention : cs.system.reflection.CallingConventions, returnType : cs.system.Type, parameterTypes : cs.NativeArray<cs.system.Type>, nativeCallConv : cs.system.runtime.interopservices.CallingConvention, nativeCharSet : cs.system.runtime.interopservices.CharSet) : MethodBuilder {})
	@:overload(function(name : String, dllName : String, attributes : cs.system.reflection.MethodAttributes, callingConvention : cs.system.reflection.CallingConventions, returnType : cs.system.Type, parameterTypes : cs.NativeArray<cs.system.Type>, nativeCallConv : cs.system.runtime.interopservices.CallingConvention, nativeCharSet : cs.system.runtime.interopservices.CharSet) : MethodBuilder {})
	function DefinePInvokeMethod(name : String, dllName : String, entryName : String, attributes : cs.system.reflection.MethodAttributes, callingConvention : cs.system.reflection.CallingConventions, returnType : cs.system.Type, returnTypeRequiredCustomModifiers : cs.NativeArray<cs.system.Type>, returnTypeOptionalCustomModifiers : cs.NativeArray<cs.system.Type>, parameterTypes : cs.NativeArray<cs.system.Type>, parameterTypeRequiredCustomModifiers : cs.NativeArray<cs.NativeArray<cs.system.Type>>, parameterTypeOptionalCustomModifiers : cs.NativeArray<cs.NativeArray<cs.system.Type>>, nativeCallConv : cs.system.runtime.interopservices.CallingConvention, nativeCharSet : cs.system.runtime.interopservices.CharSet) : MethodBuilder;
	@:overload(function(name : String, attributes : cs.system.reflection.PropertyAttributes, returnType : cs.system.Type, parameterTypes : cs.NativeArray<cs.system.Type>) : PropertyBuilder {})
	@:overload(function(name : String, attributes : cs.system.reflection.PropertyAttributes, callingConvention : cs.system.reflection.CallingConventions, returnType : cs.system.Type, returnTypeRequiredCustomModifiers : cs.NativeArray<cs.system.Type>, returnTypeOptionalCustomModifiers : cs.NativeArray<cs.system.Type>, parameterTypes : cs.NativeArray<cs.system.Type>, parameterTypeRequiredCustomModifiers : cs.NativeArray<cs.NativeArray<cs.system.Type>>, parameterTypeOptionalCustomModifiers : cs.NativeArray<cs.NativeArray<cs.system.Type>>) : PropertyBuilder {})
	@:overload(function(name : String, attributes : cs.system.reflection.PropertyAttributes, returnType : cs.system.Type, returnTypeRequiredCustomModifiers : cs.NativeArray<cs.system.Type>, returnTypeOptionalCustomModifiers : cs.NativeArray<cs.system.Type>, parameterTypes : cs.NativeArray<cs.system.Type>, parameterTypeRequiredCustomModifiers : cs.NativeArray<cs.NativeArray<cs.system.Type>>, parameterTypeOptionalCustomModifiers : cs.NativeArray<cs.NativeArray<cs.system.Type>>) : PropertyBuilder {})
	function DefineProperty(name : String, attributes : cs.system.reflection.PropertyAttributes, callingConvention : cs.system.reflection.CallingConventions, returnType : cs.system.Type, parameterTypes : cs.NativeArray<cs.system.Type>) : PropertyBuilder;
	function DefineTypeInitializer() : ConstructorBuilder;
	function DefineUninitializedData(name : String, size : Int, attributes : cs.system.reflection.FieldAttributes) : FieldBuilder;
	@:protected private function GetAttributeFlagsImpl() : cs.system.reflection.TypeAttributes;
	@:protected private function GetConstructorImpl(bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, callConvention : cs.system.reflection.CallingConventions, types : cs.NativeArray<cs.system.Type>, modifiers : cs.NativeArray<cs.system.reflection.ParameterModifier>) : cs.system.reflection.ConstructorInfo;
	function GetConstructors(bindingAttr : cs.system.reflection.BindingFlags) : cs.NativeArray<cs.system.reflection.ConstructorInfo>;
	@:overload(function(inherit : Bool) : cs.NativeArray<Dynamic> {})
	function GetCustomAttributes(attributeType : cs.system.Type, inherit : Bool) : cs.NativeArray<Dynamic>;
	function GetElementType() : cs.system.Type;
	function GetEvent(name : String, bindingAttr : cs.system.reflection.BindingFlags) : cs.system.reflection.EventInfo;
	@:overload(function() : cs.NativeArray<cs.system.reflection.EventInfo> {})
	function GetEvents(bindingAttr : cs.system.reflection.BindingFlags) : cs.NativeArray<cs.system.reflection.EventInfo>;
	@:overload(function(name : String, bindingAttr : cs.system.reflection.BindingFlags) : cs.system.reflection.FieldInfo {})
	function GetFields(bindingAttr : cs.system.reflection.BindingFlags) : cs.NativeArray<cs.system.reflection.FieldInfo>;
	function GetGenericArguments() : cs.NativeArray<cs.system.Type>;
	function GetGenericTypeDefinition() : cs.system.Type;
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
	@:overload(function(c : cs.system.Type) : Bool {})
	function IsAssignableFrom(typeInfo : cs.system.reflection.TypeInfo) : Bool;
	@:protected private function IsByRefImpl() : Bool;
	@:protected private function IsCOMObjectImpl() : Bool;
	function IsCreated() : Bool;
	function IsDefined(attributeType : cs.system.Type, inherit : Bool) : Bool;
	@:protected private function IsPointerImpl() : Bool;
	@:protected private function IsPrimitiveImpl() : Bool;
	function IsSubclassOf(c : cs.system.Type) : Bool;
	@:protected private function IsValueTypeImpl() : Bool;
	@:overload(function() : cs.system.Type {})
	function MakeArrayType(rank : Int) : cs.system.Type;
	function MakeByRefType() : cs.system.Type;
	function MakeGenericType(typeArguments : cs.NativeArray<cs.system.Type>) : cs.system.Type;
	function MakePointerType() : cs.system.Type;
	@:overload(function(customBuilder : CustomAttributeBuilder) : Void {})
	function SetCustomAttribute(con : cs.system.reflection.ConstructorInfo, binaryAttribute : cs.NativeArray<cs.types.UInt8>) : Void;
	function SetParent(parent : cs.system.Type) : Void;
	function ToString() : String;
	function get_Assembly() : cs.system.reflection.Assembly;
	function get_AssemblyQualifiedName() : String;
	function get_BaseType() : cs.system.Type;
	function get_ContainsGenericParameters() : Bool;
	function get_DeclaringMethod() : cs.system.reflection.MethodBase;
	function get_DeclaringType() : cs.system.Type;
	function get_FullName() : String;
	function get_GUID() : cs.system.Guid;
	function get_GenericParameterAttributes() : cs.system.reflection.GenericParameterAttributes;
	function get_GenericParameterPosition() : Int;
	function get_IsConstructedGenericType() : Bool;
	function get_IsGenericParameter() : Bool;
	function get_IsGenericType() : Bool;
	function get_IsGenericTypeDefinition() : Bool;
	function get_Module() : cs.system.reflection.Module;
	function get_Name() : String;
	function get_Namespace() : String;
	function get_PackingSize() : PackingSize;
	function get_ReflectedType() : cs.system.Type;
	function get_Size() : Int;
	function get_TypeHandle() : cs.system.RuntimeTypeHandle;
	function get_TypeToken() : TypeToken;
	function get_UnderlyingSystemType() : cs.system.Type;
	@:readOnly static var UnspecifiedTypeSize(default,never) : Int;
	@:native("GetConstructor") static function _GetConstructor(type : cs.system.Type, constructor : cs.system.reflection.ConstructorInfo) : cs.system.reflection.ConstructorInfo;
	static function GetConstructor(type : cs.system.Type, constructor : cs.system.reflection.ConstructorInfo) : cs.system.reflection.ConstructorInfo;
	@:native("GetField") static function _GetField(type : cs.system.Type, field : cs.system.reflection.FieldInfo) : cs.system.reflection.FieldInfo;
	static function GetField(type : cs.system.Type, field : cs.system.reflection.FieldInfo) : cs.system.reflection.FieldInfo;
	static function GetMethod(type : cs.system.Type, method : cs.system.reflection.MethodInfo) : cs.system.reflection.MethodInfo;
	@:native("GetMethod") static function _GetMethod(type : cs.system.Type, method : cs.system.reflection.MethodInfo) : cs.system.reflection.MethodInfo;
}
