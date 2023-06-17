package cs.system.reflection.emit;

@:nativeGen @:libType @:csNative @:native("System.Reflection.Emit.PropertyBuilder") extern final class PropertyBuilder extends cs.system.reflection.PropertyInfo implements cs.system.runtime.interopservices._PropertyBuilder {
	var Attributes(get,never) : cs.system.reflection.PropertyAttributes;
	var CanRead(get,never) : Bool;
	var CanWrite(get,never) : Bool;
	var DeclaringType(get,never) : cs.system.Type;
	var Module(get,never) : cs.system.reflection.Module;
	var Name(get,never) : String;
	var PropertyToken(get,never) : PropertyToken;
	var PropertyType(get,never) : cs.system.Type;
	var ReflectedType(get,never) : cs.system.Type;
	function AddOtherMethod(mdBuilder : MethodBuilder) : Void;
	function GetAccessors(nonPublic : Bool) : cs.NativeArray<cs.system.reflection.MethodInfo>;
	@:overload(function(inherit : Bool) : cs.NativeArray<Dynamic> {})
	function GetCustomAttributes(attributeType : cs.system.Type, inherit : Bool) : cs.NativeArray<Dynamic>;
	function GetGetMethod(nonPublic : Bool) : cs.system.reflection.MethodInfo;
	function GetIndexParameters() : cs.NativeArray<cs.system.reflection.ParameterInfo>;
	function GetSetMethod(nonPublic : Bool) : cs.system.reflection.MethodInfo;
	@:overload(function(obj : Dynamic, index : cs.NativeArray<Dynamic>) : Dynamic {})
	function GetValue(obj : Dynamic, invokeAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, index : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo) : Dynamic;
	function IsDefined(attributeType : cs.system.Type, inherit : Bool) : Bool;
	function SetConstant(defaultValue : Dynamic) : Void;
	@:overload(function(customBuilder : CustomAttributeBuilder) : Void {})
	function SetCustomAttribute(con : cs.system.reflection.ConstructorInfo, binaryAttribute : cs.NativeArray<cs.types.UInt8>) : Void;
	function SetGetMethod(mdBuilder : MethodBuilder) : Void;
	function SetSetMethod(mdBuilder : MethodBuilder) : Void;
	@:overload(function(obj : Dynamic, value : Dynamic, index : cs.NativeArray<Dynamic>) : Void {})
	function SetValue(obj : Dynamic, value : Dynamic, invokeAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, index : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo) : Void;
	function get_Attributes() : cs.system.reflection.PropertyAttributes;
	function get_CanRead() : Bool;
	function get_CanWrite() : Bool;
	function get_DeclaringType() : cs.system.Type;
	function get_Module() : cs.system.reflection.Module;
	function get_Name() : String;
	function get_PropertyToken() : PropertyToken;
	function get_PropertyType() : cs.system.Type;
	function get_ReflectedType() : cs.system.Type;
}
