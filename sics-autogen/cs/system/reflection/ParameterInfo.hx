package cs.system.reflection;

@:nativeGen @:libType @:csNative @:native("System.Reflection.ParameterInfo") extern class ParameterInfo implements ICustomAttributeProvider implements cs.system.runtime.interopservices._ParameterInfo {
	var Attributes(get,never) : ParameterAttributes;
	private var AttrsImpl : ParameterAttributes;
	private var ClassImpl : cs.system.Type;
	var CustomAttributes(get,never) : cs.system.collections.generic.IEnumerable_1<CustomAttributeData>;
	var DefaultValue(get,never) : Dynamic;
	private var DefaultValueImpl : Dynamic;
	var HasDefaultValue(get,never) : Bool;
	var IsIn(get,never) : Bool;
	var IsLcid(get,never) : Bool;
	var IsOptional(get,never) : Bool;
	var IsOut(get,never) : Bool;
	var IsRetval(get,never) : Bool;
	var Member(get,never) : MemberInfo;
	private var MemberImpl : MemberInfo;
	var MetadataToken(get,never) : Int;
	var Name(get,never) : String;
	private var NameImpl : String;
	var ParameterType(get,never) : cs.system.Type;
	var Position(get,never) : Int;
	private var PositionImpl : Int;
	var RawDefaultValue(get,never) : Dynamic;
	@:protected private function new() : Void;
	@:overload(function(inherit : Bool) : cs.NativeArray<Dynamic> {})
	function GetCustomAttributes(attributeType : cs.system.Type, inherit : Bool) : cs.NativeArray<Dynamic>;
	function GetCustomAttributesData() : cs.system.collections.generic.IList_1<CustomAttributeData>;
	function GetOptionalCustomModifiers() : cs.NativeArray<cs.system.Type>;
	function GetRequiredCustomModifiers() : cs.NativeArray<cs.system.Type>;
	function IsDefined(attributeType : cs.system.Type, inherit : Bool) : Bool;
	function ToString() : String;
	function get_Attributes() : ParameterAttributes;
	function get_CustomAttributes() : cs.system.collections.generic.IEnumerable_1<CustomAttributeData>;
	function get_DefaultValue() : Dynamic;
	function get_HasDefaultValue() : Bool;
	function get_IsIn() : Bool;
	function get_IsLcid() : Bool;
	function get_IsOptional() : Bool;
	function get_IsOut() : Bool;
	function get_IsRetval() : Bool;
	function get_Member() : MemberInfo;
	function get_MetadataToken() : Int;
	function get_Name() : String;
	function get_ParameterType() : cs.system.Type;
	function get_Position() : Int;
	function get_RawDefaultValue() : Dynamic;
}
