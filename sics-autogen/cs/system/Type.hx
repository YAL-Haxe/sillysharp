package cs.system;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Type") extern class Type extends cs.system.reflection.MemberInfo implements cs.system.reflection.IReflect implements cs.system.runtime.interopservices._Type {
	var Assembly(get,never) : cs.system.reflection.Assembly;
	var AssemblyQualifiedName(get,never) : String;
	var Attributes(get,never) : cs.system.reflection.TypeAttributes;
	var BaseType(get,never) : Type;
	var ContainsGenericParameters(get,never) : Bool;
	var DeclaringMethod(get,never) : cs.system.reflection.MethodBase;
	var DeclaringType(get,never) : Type;
	var FullName(get,never) : String;
	var GUID(get,never) : Guid;
	var GenericParameterAttributes(get,never) : cs.system.reflection.GenericParameterAttributes;
	var GenericParameterPosition(get,never) : Int;
	var GenericTypeArguments(get,never) : cs.NativeArray<Type>;
	var HasElementType(get,never) : Bool;
	var IsAbstract(get,never) : Bool;
	var IsAnsiClass(get,never) : Bool;
	var IsArray(get,never) : Bool;
	var IsAutoClass(get,never) : Bool;
	var IsAutoLayout(get,never) : Bool;
	var IsByRef(get,never) : Bool;
	var IsCOMObject(get,never) : Bool;
	var IsClass(get,never) : Bool;
	var IsConstructedGenericType(get,never) : Bool;
	var IsContextful(get,never) : Bool;
	var IsEnum(get,never) : Bool;
	var IsExplicitLayout(get,never) : Bool;
	var IsGenericParameter(get,never) : Bool;
	var IsGenericType(get,never) : Bool;
	var IsGenericTypeDefinition(get,never) : Bool;
	var IsImport(get,never) : Bool;
	var IsInterface(get,never) : Bool;
	var IsLayoutSequential(get,never) : Bool;
	var IsMarshalByRef(get,never) : Bool;
	var IsNested(get,never) : Bool;
	var IsNestedAssembly(get,never) : Bool;
	var IsNestedFamANDAssem(get,never) : Bool;
	var IsNestedFamORAssem(get,never) : Bool;
	var IsNestedFamily(get,never) : Bool;
	var IsNestedPrivate(get,never) : Bool;
	var IsNestedPublic(get,never) : Bool;
	var IsNotPublic(get,never) : Bool;
	var IsPointer(get,never) : Bool;
	var IsPrimitive(get,never) : Bool;
	var IsPublic(get,never) : Bool;
	var IsSealed(get,never) : Bool;
	var IsSecurityCritical(get,never) : Bool;
	var IsSecuritySafeCritical(get,never) : Bool;
	var IsSecurityTransparent(get,never) : Bool;
	var IsSerializable(get,never) : Bool;
	var IsSpecialName(get,never) : Bool;
	var IsUnicodeClass(get,never) : Bool;
	var IsValueType(get,never) : Bool;
	var IsVisible(get,never) : Bool;
	var MemberType(get,never) : cs.system.reflection.MemberTypes;
	var Module(get,never) : cs.system.reflection.Module;
	var Namespace(get,never) : String;
	var ReflectedType(get,never) : Type;
	var StructLayoutAttribute(get,never) : cs.system.runtime.interopservices.StructLayoutAttribute;
	var TypeHandle(get,never) : RuntimeTypeHandle;
	var TypeInitializer(get,never) : cs.system.reflection.ConstructorInfo;
	var UnderlyingSystemType(get,never) : Type;
	@:protected private function new() : Void;
	function FindInterfaces(filter : cs.system.reflection.TypeFilter, filterCriteria : Dynamic) : cs.NativeArray<Type>;
	function FindMembers(memberType : cs.system.reflection.MemberTypes, bindingAttr : cs.system.reflection.BindingFlags, filter : cs.system.reflection.MemberFilter, filterCriteria : Dynamic) : cs.NativeArray<cs.system.reflection.MemberInfo>;
	function GetArrayRank() : Int;
	@:protected private function GetAttributeFlagsImpl() : cs.system.reflection.TypeAttributes;
	@:overload(function(types : cs.NativeArray<Type>) : cs.system.reflection.ConstructorInfo {})
	@:overload(function(bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, callConvention : cs.system.reflection.CallingConventions, types : cs.NativeArray<Type>, modifiers : cs.NativeArray<cs.system.reflection.ParameterModifier>) : cs.system.reflection.ConstructorInfo {})
	function GetConstructor(bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, types : cs.NativeArray<Type>, modifiers : cs.NativeArray<cs.system.reflection.ParameterModifier>) : cs.system.reflection.ConstructorInfo;
	@:protected private function GetConstructorImpl(bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, callConvention : cs.system.reflection.CallingConventions, types : cs.NativeArray<Type>, modifiers : cs.NativeArray<cs.system.reflection.ParameterModifier>) : cs.system.reflection.ConstructorInfo;
	@:overload(function() : cs.NativeArray<cs.system.reflection.ConstructorInfo> {})
	function GetConstructors(bindingAttr : cs.system.reflection.BindingFlags) : cs.NativeArray<cs.system.reflection.ConstructorInfo>;
	function GetDefaultMembers() : cs.NativeArray<cs.system.reflection.MemberInfo>;
	function GetElementType() : Type;
	function GetEnumName(value : Dynamic) : String;
	function GetEnumNames() : cs.NativeArray<String>;
	function GetEnumUnderlyingType() : Type;
	function GetEnumValues() : Array;
	@:overload(function(name : String) : cs.system.reflection.EventInfo {})
	function GetEvent(name : String, bindingAttr : cs.system.reflection.BindingFlags) : cs.system.reflection.EventInfo;
	@:overload(function() : cs.NativeArray<cs.system.reflection.EventInfo> {})
	function GetEvents(bindingAttr : cs.system.reflection.BindingFlags) : cs.NativeArray<cs.system.reflection.EventInfo>;
	@:overload(function(name : String) : cs.system.reflection.FieldInfo {})
	function GetField(name : String, bindingAttr : cs.system.reflection.BindingFlags) : cs.system.reflection.FieldInfo;
	@:overload(function() : cs.NativeArray<cs.system.reflection.FieldInfo> {})
	function GetFields(bindingAttr : cs.system.reflection.BindingFlags) : cs.NativeArray<cs.system.reflection.FieldInfo>;
	function GetGenericArguments() : cs.NativeArray<Type>;
	function GetGenericParameterConstraints() : cs.NativeArray<Type>;
	function GetGenericTypeDefinition() : Type;
	@:overload(function(name : String) : Type {})
	function GetInterface(name : String, ignoreCase : Bool) : Type;
	function GetInterfaceMap(interfaceType : Type) : cs.system.reflection.InterfaceMapping;
	function GetInterfaces() : cs.NativeArray<Type>;
	@:overload(function(name : String) : cs.NativeArray<cs.system.reflection.MemberInfo> {})
	@:overload(function(name : String, type : cs.system.reflection.MemberTypes, bindingAttr : cs.system.reflection.BindingFlags) : cs.NativeArray<cs.system.reflection.MemberInfo> {})
	function GetMember(name : String, bindingAttr : cs.system.reflection.BindingFlags) : cs.NativeArray<cs.system.reflection.MemberInfo>;
	@:overload(function() : cs.NativeArray<cs.system.reflection.MemberInfo> {})
	function GetMembers(bindingAttr : cs.system.reflection.BindingFlags) : cs.NativeArray<cs.system.reflection.MemberInfo>;
	@:overload(function(name : String) : cs.system.reflection.MethodInfo {})
	@:overload(function(name : String, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, callConvention : cs.system.reflection.CallingConventions, types : cs.NativeArray<Type>, modifiers : cs.NativeArray<cs.system.reflection.ParameterModifier>) : cs.system.reflection.MethodInfo {})
	@:overload(function(name : String, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, types : cs.NativeArray<Type>, modifiers : cs.NativeArray<cs.system.reflection.ParameterModifier>) : cs.system.reflection.MethodInfo {})
	@:overload(function(name : String, types : cs.NativeArray<Type>, modifiers : cs.NativeArray<cs.system.reflection.ParameterModifier>) : cs.system.reflection.MethodInfo {})
	@:overload(function(name : String, types : cs.NativeArray<Type>) : cs.system.reflection.MethodInfo {})
	function GetMethod(name : String, bindingAttr : cs.system.reflection.BindingFlags) : cs.system.reflection.MethodInfo;
	@:protected private function GetMethodImpl(name : String, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, callConvention : cs.system.reflection.CallingConventions, types : cs.NativeArray<Type>, modifiers : cs.NativeArray<cs.system.reflection.ParameterModifier>) : cs.system.reflection.MethodInfo;
	@:overload(function() : cs.NativeArray<cs.system.reflection.MethodInfo> {})
	function GetMethods(bindingAttr : cs.system.reflection.BindingFlags) : cs.NativeArray<cs.system.reflection.MethodInfo>;
	@:overload(function(name : String) : Type {})
	function GetNestedType(name : String, bindingAttr : cs.system.reflection.BindingFlags) : Type;
	@:overload(function() : cs.NativeArray<Type> {})
	function GetNestedTypes(bindingAttr : cs.system.reflection.BindingFlags) : cs.NativeArray<Type>;
	@:overload(function() : cs.NativeArray<cs.system.reflection.PropertyInfo> {})
	function GetProperties(bindingAttr : cs.system.reflection.BindingFlags) : cs.NativeArray<cs.system.reflection.PropertyInfo>;
	@:overload(function(name : String) : cs.system.reflection.PropertyInfo {})
	@:overload(function(name : String, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, returnType : Type, types : cs.NativeArray<Type>, modifiers : cs.NativeArray<cs.system.reflection.ParameterModifier>) : cs.system.reflection.PropertyInfo {})
	@:overload(function(name : String, returnType : Type, types : cs.NativeArray<Type>, modifiers : cs.NativeArray<cs.system.reflection.ParameterModifier>) : cs.system.reflection.PropertyInfo {})
	@:overload(function(name : String, returnType : Type, types : cs.NativeArray<Type>) : cs.system.reflection.PropertyInfo {})
	@:overload(function(name : String, types : cs.NativeArray<Type>) : cs.system.reflection.PropertyInfo {})
	@:overload(function(name : String, returnType : Type) : cs.system.reflection.PropertyInfo {})
	function GetProperty(name : String, bindingAttr : cs.system.reflection.BindingFlags) : cs.system.reflection.PropertyInfo;
	@:protected private function GetPropertyImpl(name : String, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, returnType : Type, types : cs.NativeArray<Type>, modifiers : cs.NativeArray<cs.system.reflection.ParameterModifier>) : cs.system.reflection.PropertyInfo;
	@:overload(function() : Type {})
	@:protected private function GetTypeCodeImpl() : TypeCode;
	@:protected private function HasElementTypeImpl() : Bool;
	@:overload(function(name : String, invokeAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, target : Dynamic, args : cs.NativeArray<Dynamic>) : Dynamic {})
	@:overload(function(name : String, invokeAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, target : Dynamic, args : cs.NativeArray<Dynamic>, modifiers : cs.NativeArray<cs.system.reflection.ParameterModifier>, culture : cs.system.globalization.CultureInfo, namedParameters : cs.NativeArray<String>) : Dynamic {})
	function InvokeMember(name : String, invokeAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, target : Dynamic, args : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo) : Dynamic;
	@:protected private function IsArrayImpl() : Bool;
	function IsAssignableFrom(c : Type) : Bool;
	@:protected private function IsByRefImpl() : Bool;
	@:protected private function IsCOMObjectImpl() : Bool;
	@:protected private function IsContextfulImpl() : Bool;
	function IsEnumDefined(value : Dynamic) : Bool;
	function IsEquivalentTo(other : Type) : Bool;
	function IsInstanceOfType(o : Dynamic) : Bool;
	@:protected private function IsMarshalByRefImpl() : Bool;
	@:protected private function IsPointerImpl() : Bool;
	@:protected private function IsPrimitiveImpl() : Bool;
	function IsSubclassOf(c : Type) : Bool;
	@:protected private function IsValueTypeImpl() : Bool;
	@:overload(function() : Type {})
	function MakeArrayType(rank : Int) : Type;
	function MakeByRefType() : Type;
	function MakeGenericType(typeArguments : cs.NativeArray<Type>) : Type;
	function MakePointerType() : Type;
	function ToString() : String;
	function get_Assembly() : cs.system.reflection.Assembly;
	function get_AssemblyQualifiedName() : String;
	function get_Attributes() : cs.system.reflection.TypeAttributes;
	function get_BaseType() : Type;
	function get_ContainsGenericParameters() : Bool;
	function get_DeclaringMethod() : cs.system.reflection.MethodBase;
	function get_DeclaringType() : Type;
	function get_FullName() : String;
	function get_GUID() : Guid;
	function get_GenericParameterAttributes() : cs.system.reflection.GenericParameterAttributes;
	function get_GenericParameterPosition() : Int;
	function get_GenericTypeArguments() : cs.NativeArray<Type>;
	function get_HasElementType() : Bool;
	function get_IsAbstract() : Bool;
	function get_IsAnsiClass() : Bool;
	function get_IsArray() : Bool;
	function get_IsAutoClass() : Bool;
	function get_IsAutoLayout() : Bool;
	function get_IsByRef() : Bool;
	function get_IsCOMObject() : Bool;
	function get_IsClass() : Bool;
	function get_IsConstructedGenericType() : Bool;
	function get_IsContextful() : Bool;
	function get_IsEnum() : Bool;
	function get_IsExplicitLayout() : Bool;
	function get_IsGenericParameter() : Bool;
	function get_IsGenericType() : Bool;
	function get_IsGenericTypeDefinition() : Bool;
	function get_IsImport() : Bool;
	function get_IsInterface() : Bool;
	function get_IsLayoutSequential() : Bool;
	function get_IsMarshalByRef() : Bool;
	function get_IsNested() : Bool;
	function get_IsNestedAssembly() : Bool;
	function get_IsNestedFamANDAssem() : Bool;
	function get_IsNestedFamORAssem() : Bool;
	function get_IsNestedFamily() : Bool;
	function get_IsNestedPrivate() : Bool;
	function get_IsNestedPublic() : Bool;
	function get_IsNotPublic() : Bool;
	function get_IsPointer() : Bool;
	function get_IsPrimitive() : Bool;
	function get_IsPublic() : Bool;
	function get_IsSealed() : Bool;
	function get_IsSecurityCritical() : Bool;
	function get_IsSecuritySafeCritical() : Bool;
	function get_IsSecurityTransparent() : Bool;
	function get_IsSerializable() : Bool;
	function get_IsSpecialName() : Bool;
	function get_IsUnicodeClass() : Bool;
	function get_IsValueType() : Bool;
	function get_IsVisible() : Bool;
	function get_MemberType() : cs.system.reflection.MemberTypes;
	function get_Module() : cs.system.reflection.Module;
	function get_Namespace() : String;
	function get_ReflectedType() : Type;
	function get_StructLayoutAttribute() : cs.system.runtime.interopservices.StructLayoutAttribute;
	function get_TypeHandle() : RuntimeTypeHandle;
	function get_TypeInitializer() : cs.system.reflection.ConstructorInfo;
	function get_UnderlyingSystemType() : Type;
	static var DefaultBinder(get,never) : cs.system.reflection.Binder;
	@:readOnly static var Delimiter(default,never) : cs.types.Char16;
	@:readOnly static var EmptyTypes(default,never) : cs.NativeArray<Type>;
	@:readOnly static var FilterAttribute(default,never) : cs.system.reflection.MemberFilter;
	@:readOnly static var FilterName(default,never) : cs.system.reflection.MemberFilter;
	@:readOnly static var FilterNameIgnoreCase(default,never) : cs.system.reflection.MemberFilter;
	@:readOnly static var Missing(default,never) : Dynamic;
	@:overload(function(typeName : String, assemblyResolver : Func_2<cs.system.reflection.AssemblyName,cs.system.reflection.Assembly>, typeResolver : Func_4<cs.system.reflection.Assembly,String,Bool,Type>) : Type {})
	@:overload(function(typeName : String, throwOnError : Bool, ignoreCase : Bool) : Type {})
	@:overload(function(typeName : String, throwOnError : Bool) : Type {})
	@:overload(function(typeName : String) : Type {})
	@:overload(function(typeName : String, assemblyResolver : Func_2<cs.system.reflection.AssemblyName,cs.system.reflection.Assembly>, typeResolver : Func_4<cs.system.reflection.Assembly,String,Bool,Type>, throwOnError : Bool, ignoreCase : Bool) : Type {})
	@:overload(function(typeName : String, assemblyResolver : Func_2<cs.system.reflection.AssemblyName,cs.system.reflection.Assembly>, typeResolver : Func_4<cs.system.reflection.Assembly,String,Bool,Type>, throwOnError : Bool) : Type {})
	@:native("GetType") static function _GetType(typeName : String, assemblyResolver : Func_2<cs.system.reflection.AssemblyName,cs.system.reflection.Assembly>, typeResolver : Func_4<cs.system.reflection.Assembly,String,Bool,Type>) : Type;
	@:overload(function(typeName : String, throwOnError : Bool, ignoreCase : Bool) : Type {})
	@:overload(function(typeName : String, throwOnError : Bool) : Type {})
	@:overload(function(typeName : String) : Type {})
	@:overload(function(typeName : String, assemblyResolver : Func_2<cs.system.reflection.AssemblyName,cs.system.reflection.Assembly>, typeResolver : Func_4<cs.system.reflection.Assembly,String,Bool,Type>, throwOnError : Bool, ignoreCase : Bool) : Type {})
	@:native("GetType") static function GetType(typeName : String, assemblyResolver : Func_2<cs.system.reflection.AssemblyName,cs.system.reflection.Assembly>, typeResolver : Func_4<cs.system.reflection.Assembly,String,Bool,Type>, throwOnError : Bool) : Type;
	static function GetTypeArray(args : cs.NativeArray<Dynamic>) : cs.NativeArray<Type>;
	static function GetTypeCode(type : Type) : TypeCode;
	@:overload(function(clsid : Guid) : Type {})
	@:overload(function(clsid : Guid, server : String, throwOnError : Bool) : Type {})
	@:overload(function(clsid : Guid, server : String) : Type {})
	static function GetTypeFromCLSID(clsid : Guid, throwOnError : Bool) : Type;
	static function GetTypeFromHandle(handle : RuntimeTypeHandle) : Type;
	@:overload(function(progID : String) : Type {})
	@:overload(function(progID : String, server : String, throwOnError : Bool) : Type {})
	@:overload(function(progID : String, server : String) : Type {})
	static function GetTypeFromProgID(progID : String, throwOnError : Bool) : Type;
	static function GetTypeHandle(o : Dynamic) : RuntimeTypeHandle;
	static function ReflectionOnlyGetType(typeName : String, throwIfNotFound : Bool, ignoreCase : Bool) : Type;
	static function get_DefaultBinder() : cs.system.reflection.Binder;
	static function op_Equality(left : Type, right : Type) : Bool;
	static function op_Inequality(left : Type, right : Type) : Bool;
}
