package cs.system.reflection;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Reflection.MemberInfo") extern class MemberInfo implements ICustomAttributeProvider implements cs.system.runtime.interopservices._MemberInfo {
	var CustomAttributes(get,never) : cs.system.collections.generic.IEnumerable_1<CustomAttributeData>;
	var DeclaringType(get,never) : cs.system.Type;
	var MemberType(get,never) : MemberTypes;
	var MetadataToken(get,never) : Int;
	var Module(get,never) : Module;
	var Name(get,never) : String;
	var ReflectedType(get,never) : cs.system.Type;
	@:protected private function new() : Void;
	@:overload(function(inherit : Bool) : cs.NativeArray<Dynamic> {})
	function GetCustomAttributes(attributeType : cs.system.Type, inherit : Bool) : cs.NativeArray<Dynamic>;
	function GetCustomAttributesData() : cs.system.collections.generic.IList_1<CustomAttributeData>;
	function IsDefined(attributeType : cs.system.Type, inherit : Bool) : Bool;
	function get_CustomAttributes() : cs.system.collections.generic.IEnumerable_1<CustomAttributeData>;
	function get_DeclaringType() : cs.system.Type;
	function get_MemberType() : MemberTypes;
	function get_MetadataToken() : Int;
	function get_Module() : Module;
	function get_Name() : String;
	function get_ReflectedType() : cs.system.Type;
	static function op_Equality(left : MemberInfo, right : MemberInfo) : Bool;
	static function op_Inequality(left : MemberInfo, right : MemberInfo) : Bool;
}
