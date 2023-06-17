package cs.system.reflection.emit;

@:nativeGen @:libType @:csNative @:native("System.Reflection.Emit.FieldBuilder") extern final class FieldBuilder extends cs.system.reflection.FieldInfo implements cs.system.runtime.interopservices._FieldBuilder {
	var Attributes(get,never) : cs.system.reflection.FieldAttributes;
	var DeclaringType(get,never) : cs.system.Type;
	var FieldHandle(get,never) : cs.system.RuntimeFieldHandle;
	var FieldType(get,never) : cs.system.Type;
	var Module(get,never) : cs.system.reflection.Module;
	var Name(get,never) : String;
	var ReflectedType(get,never) : cs.system.Type;
	@:overload(function(inherit : Bool) : cs.NativeArray<Dynamic> {})
	function GetCustomAttributes(attributeType : cs.system.Type, inherit : Bool) : cs.NativeArray<Dynamic>;
	function GetToken() : FieldToken;
	function GetValue(obj : Dynamic) : Dynamic;
	function IsDefined(attributeType : cs.system.Type, inherit : Bool) : Bool;
	function SetConstant(defaultValue : Dynamic) : Void;
	@:overload(function(customBuilder : CustomAttributeBuilder) : Void {})
	function SetCustomAttribute(con : cs.system.reflection.ConstructorInfo, binaryAttribute : cs.NativeArray<cs.types.UInt8>) : Void;
	function SetMarshal(unmanagedMarshal : UnmanagedMarshal) : Void;
	function SetOffset(iOffset : Int) : Void;
	function SetValue(obj : Dynamic, val : Dynamic, invokeAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, culture : cs.system.globalization.CultureInfo) : Void;
	function get_Attributes() : cs.system.reflection.FieldAttributes;
	function get_DeclaringType() : cs.system.Type;
	function get_FieldHandle() : cs.system.RuntimeFieldHandle;
	function get_FieldType() : cs.system.Type;
	function get_Module() : cs.system.reflection.Module;
	function get_Name() : String;
	function get_ReflectedType() : cs.system.Type;
}
