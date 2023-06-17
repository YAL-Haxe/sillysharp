package cs.system.reflection;

@:nativeGen @:libType @:csNative @:native("System.Reflection.CustomAttributeData") extern class CustomAttributeData {
	var AttributeType(get,never) : cs.system.Type;
	var Constructor(get,never) : ConstructorInfo;
	var ConstructorArguments(get,never) : cs.system.collections.generic.IList_1<CustomAttributeTypedArgument>;
	var NamedArguments(get,never) : cs.system.collections.generic.IList_1<CustomAttributeNamedArgument>;
	@:protected private function new() : Void;
	function ToString() : String;
	function get_AttributeType() : cs.system.Type;
	function get_Constructor() : ConstructorInfo;
	function get_ConstructorArguments() : cs.system.collections.generic.IList_1<CustomAttributeTypedArgument>;
	function get_NamedArguments() : cs.system.collections.generic.IList_1<CustomAttributeNamedArgument>;
	@:overload(function(target : Assembly) : cs.system.collections.generic.IList_1<CustomAttributeData> {})
	@:overload(function(target : ParameterInfo) : cs.system.collections.generic.IList_1<CustomAttributeData> {})
	@:overload(function(target : Module) : cs.system.collections.generic.IList_1<CustomAttributeData> {})
	static function GetCustomAttributes(target : MemberInfo) : cs.system.collections.generic.IList_1<CustomAttributeData>;
}
