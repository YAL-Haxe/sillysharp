package cs.system.runtime.interopservices;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Runtime.InteropServices._Type") extern interface _Type {
	var Assembly(get,never) : cs.system.reflection.Assembly;
	var AssemblyQualifiedName(get,never) : String;
	var Attributes(get,never) : cs.system.reflection.TypeAttributes;
	var BaseType(get,never) : cs.system.Type;
	var DeclaringType(get,never) : cs.system.Type;
	var FullName(get,never) : String;
	var GUID(get,never) : cs.system.Guid;
	var HasElementType(get,never) : Bool;
	var IsAbstract(get,never) : Bool;
	var IsAnsiClass(get,never) : Bool;
	var IsArray(get,never) : Bool;
	var IsAutoClass(get,never) : Bool;
	var IsAutoLayout(get,never) : Bool;
	var IsByRef(get,never) : Bool;
	var IsCOMObject(get,never) : Bool;
	var IsClass(get,never) : Bool;
	var IsContextful(get,never) : Bool;
	var IsEnum(get,never) : Bool;
	var IsExplicitLayout(get,never) : Bool;
	var IsImport(get,never) : Bool;
	var IsInterface(get,never) : Bool;
	var IsLayoutSequential(get,never) : Bool;
	var IsMarshalByRef(get,never) : Bool;
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
	var IsSerializable(get,never) : Bool;
	var IsSpecialName(get,never) : Bool;
	var IsUnicodeClass(get,never) : Bool;
	var IsValueType(get,never) : Bool;
	var MemberType(get,never) : cs.system.reflection.MemberTypes;
	var Module(get,never) : cs.system.reflection.Module;
	var Name(get,never) : String;
	var Namespace(get,never) : String;
	var ReflectedType(get,never) : cs.system.Type;
	var TypeHandle(get,never) : cs.system.RuntimeTypeHandle;
	var TypeInitializer(get,never) : cs.system.reflection.ConstructorInfo;
	var UnderlyingSystemType(get,never) : cs.system.Type;
	function FindInterfaces(filter : cs.system.reflection.TypeFilter, filterCriteria : Dynamic) : cs.NativeArray<cs.system.Type>;
	function FindMembers(memberType : cs.system.reflection.MemberTypes, bindingAttr : cs.system.reflection.BindingFlags, filter : cs.system.reflection.MemberFilter, filterCriteria : Dynamic) : cs.NativeArray<cs.system.reflection.MemberInfo>;
	function GetArrayRank() : Int;
	@:overload(function(types : cs.NativeArray<cs.system.Type>) : cs.system.reflection.ConstructorInfo {})
	@:overload(function(bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, callConvention : cs.system.reflection.CallingConventions, types : cs.NativeArray<cs.system.Type>, modifiers : cs.NativeArray<cs.system.reflection.ParameterModifier>) : cs.system.reflection.ConstructorInfo {})
	function GetConstructor(bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, types : cs.NativeArray<cs.system.Type>, modifiers : cs.NativeArray<cs.system.reflection.ParameterModifier>) : cs.system.reflection.ConstructorInfo;
	@:overload(function() : cs.NativeArray<cs.system.reflection.ConstructorInfo> {})
	function GetConstructors(bindingAttr : cs.system.reflection.BindingFlags) : cs.NativeArray<cs.system.reflection.ConstructorInfo>;
	@:overload(function(inherit : Bool) : cs.NativeArray<Dynamic> {})
	function GetCustomAttributes(attributeType : cs.system.Type, inherit : Bool) : cs.NativeArray<Dynamic>;
	function GetDefaultMembers() : cs.NativeArray<cs.system.reflection.MemberInfo>;
	function GetElementType() : cs.system.Type;
	@:overload(function(name : String) : cs.system.reflection.EventInfo {})
	function GetEvent(name : String, bindingAttr : cs.system.reflection.BindingFlags) : cs.system.reflection.EventInfo;
	@:overload(function() : cs.NativeArray<cs.system.reflection.EventInfo> {})
	function GetEvents(bindingAttr : cs.system.reflection.BindingFlags) : cs.NativeArray<cs.system.reflection.EventInfo>;
	@:overload(function(name : String) : cs.system.reflection.FieldInfo {})
	function GetField(name : String, bindingAttr : cs.system.reflection.BindingFlags) : cs.system.reflection.FieldInfo;
	@:overload(function() : cs.NativeArray<cs.system.reflection.FieldInfo> {})
	function GetFields(bindingAttr : cs.system.reflection.BindingFlags) : cs.NativeArray<cs.system.reflection.FieldInfo>;
	function GetIDsOfNames(riid : cs.Ref<cs.system.Guid>, rgszNames : cs.system.IntPtr, cNames : UInt, lcid : UInt, rgDispId : cs.system.IntPtr) : Void;
	@:overload(function(name : String) : cs.system.Type {})
	function GetInterface(name : String, ignoreCase : Bool) : cs.system.Type;
	function GetInterfaceMap(interfaceType : cs.system.Type) : cs.system.reflection.InterfaceMapping;
	function GetInterfaces() : cs.NativeArray<cs.system.Type>;
	@:overload(function(name : String) : cs.NativeArray<cs.system.reflection.MemberInfo> {})
	@:overload(function(name : String, bindingAttr : cs.system.reflection.BindingFlags) : cs.NativeArray<cs.system.reflection.MemberInfo> {})
	function GetMember(name : String, type : cs.system.reflection.MemberTypes, bindingAttr : cs.system.reflection.BindingFlags) : cs.NativeArray<cs.system.reflection.MemberInfo>;
	@:overload(function() : cs.NativeArray<cs.system.reflection.MemberInfo> {})
	function GetMembers(bindingAttr : cs.system.reflection.BindingFlags) : cs.NativeArray<cs.system.reflection.MemberInfo>;
	@:overload(function(name : String) : cs.system.reflection.MethodInfo {})
	@:overload(function(name : String, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, callConvention : cs.system.reflection.CallingConventions, types : cs.NativeArray<cs.system.Type>, modifiers : cs.NativeArray<cs.system.reflection.ParameterModifier>) : cs.system.reflection.MethodInfo {})
	@:overload(function(name : String, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, types : cs.NativeArray<cs.system.Type>, modifiers : cs.NativeArray<cs.system.reflection.ParameterModifier>) : cs.system.reflection.MethodInfo {})
	@:overload(function(name : String, types : cs.NativeArray<cs.system.Type>, modifiers : cs.NativeArray<cs.system.reflection.ParameterModifier>) : cs.system.reflection.MethodInfo {})
	@:overload(function(name : String, types : cs.NativeArray<cs.system.Type>) : cs.system.reflection.MethodInfo {})
	function GetMethod(name : String, bindingAttr : cs.system.reflection.BindingFlags) : cs.system.reflection.MethodInfo;
	@:overload(function() : cs.NativeArray<cs.system.reflection.MethodInfo> {})
	function GetMethods(bindingAttr : cs.system.reflection.BindingFlags) : cs.NativeArray<cs.system.reflection.MethodInfo>;
	@:overload(function(name : String) : cs.system.Type {})
	function GetNestedType(name : String, bindingAttr : cs.system.reflection.BindingFlags) : cs.system.Type;
	@:overload(function() : cs.NativeArray<cs.system.Type> {})
	function GetNestedTypes(bindingAttr : cs.system.reflection.BindingFlags) : cs.NativeArray<cs.system.Type>;
	@:overload(function() : cs.NativeArray<cs.system.reflection.PropertyInfo> {})
	function GetProperties(bindingAttr : cs.system.reflection.BindingFlags) : cs.NativeArray<cs.system.reflection.PropertyInfo>;
	@:overload(function(name : String) : cs.system.reflection.PropertyInfo {})
	@:overload(function(name : String, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, returnType : cs.system.Type, types : cs.NativeArray<cs.system.Type>, modifiers : cs.NativeArray<cs.system.reflection.ParameterModifier>) : cs.system.reflection.PropertyInfo {})
	@:overload(function(name : String, returnType : cs.system.Type, types : cs.NativeArray<cs.system.Type>, modifiers : cs.NativeArray<cs.system.reflection.ParameterModifier>) : cs.system.reflection.PropertyInfo {})
	@:overload(function(name : String, returnType : cs.system.Type, types : cs.NativeArray<cs.system.Type>) : cs.system.reflection.PropertyInfo {})
	@:overload(function(name : String, types : cs.NativeArray<cs.system.Type>) : cs.system.reflection.PropertyInfo {})
	@:overload(function(name : String, returnType : cs.system.Type) : cs.system.reflection.PropertyInfo {})
	function GetProperty(name : String, bindingAttr : cs.system.reflection.BindingFlags) : cs.system.reflection.PropertyInfo;
	function GetType() : cs.system.Type;
	function GetTypeInfo(iTInfo : UInt, lcid : UInt, ppTInfo : cs.system.IntPtr) : Void;
	function GetTypeInfoCount(pcTInfo : cs.Out<UInt>) : Void;
	function Invoke(dispIdMember : UInt, riid : cs.Ref<cs.system.Guid>, lcid : UInt, wFlags : cs.types.Int16, pDispParams : cs.system.IntPtr, pVarResult : cs.system.IntPtr, pExcepInfo : cs.system.IntPtr, puArgErr : cs.system.IntPtr) : Void;
	@:overload(function(name : String, invokeAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, target : Dynamic, args : cs.NativeArray<Dynamic>) : Dynamic {})
	@:overload(function(name : String, invokeAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, target : Dynamic, args : cs.NativeArray<Dynamic>, modifiers : cs.NativeArray<cs.system.reflection.ParameterModifier>, culture : cs.system.globalization.CultureInfo, namedParameters : cs.NativeArray<String>) : Dynamic {})
	function InvokeMember(name : String, invokeAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, target : Dynamic, args : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo) : Dynamic;
	function IsAssignableFrom(c : cs.system.Type) : Bool;
	function IsDefined(attributeType : cs.system.Type, inherit : Bool) : Bool;
	function IsInstanceOfType(o : Dynamic) : Bool;
	function IsSubclassOf(c : cs.system.Type) : Bool;
	function ToString() : String;
	function get_Assembly() : cs.system.reflection.Assembly;
	function get_AssemblyQualifiedName() : String;
	function get_Attributes() : cs.system.reflection.TypeAttributes;
	function get_BaseType() : cs.system.Type;
	function get_DeclaringType() : cs.system.Type;
	function get_FullName() : String;
	function get_GUID() : cs.system.Guid;
	function get_HasElementType() : Bool;
	function get_IsAbstract() : Bool;
	function get_IsAnsiClass() : Bool;
	function get_IsArray() : Bool;
	function get_IsAutoClass() : Bool;
	function get_IsAutoLayout() : Bool;
	function get_IsByRef() : Bool;
	function get_IsCOMObject() : Bool;
	function get_IsClass() : Bool;
	function get_IsContextful() : Bool;
	function get_IsEnum() : Bool;
	function get_IsExplicitLayout() : Bool;
	function get_IsImport() : Bool;
	function get_IsInterface() : Bool;
	function get_IsLayoutSequential() : Bool;
	function get_IsMarshalByRef() : Bool;
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
	function get_IsSerializable() : Bool;
	function get_IsSpecialName() : Bool;
	function get_IsUnicodeClass() : Bool;
	function get_IsValueType() : Bool;
	function get_MemberType() : cs.system.reflection.MemberTypes;
	function get_Module() : cs.system.reflection.Module;
	function get_Name() : String;
	function get_Namespace() : String;
	function get_ReflectedType() : cs.system.Type;
	function get_TypeHandle() : cs.system.RuntimeTypeHandle;
	function get_TypeInitializer() : cs.system.reflection.ConstructorInfo;
	function get_UnderlyingSystemType() : cs.system.Type;
}
