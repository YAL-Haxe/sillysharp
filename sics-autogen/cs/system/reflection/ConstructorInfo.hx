package cs.system.reflection;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Reflection.ConstructorInfo") extern class ConstructorInfo extends MethodBase implements cs.system.runtime.interopservices._ConstructorInfo {
	var MemberType(get,never) : MemberTypes;
	@:protected private function new() : Void;
	@:overload(function(parameters : cs.NativeArray<Dynamic>) : Dynamic {})
	@:noCompletion @:skipReflection function Invoke(invokeAttr : BindingFlags, binder : Binder, parameters : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo) : Dynamic;
	function get_MemberType() : MemberTypes;
	@:readOnly static var ConstructorName(default,never) : String;
	@:readOnly static var TypeConstructorName(default,never) : String;
	static function op_Equality(left : ConstructorInfo, right : ConstructorInfo) : Bool;
	static function op_Inequality(left : ConstructorInfo, right : ConstructorInfo) : Bool;
}
