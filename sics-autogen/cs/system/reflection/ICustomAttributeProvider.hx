package cs.system.reflection;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Reflection.ICustomAttributeProvider") extern interface ICustomAttributeProvider {
	@:overload(function(inherit : Bool) : cs.NativeArray<Dynamic> {})
	function GetCustomAttributes(attributeType : cs.system.Type, inherit : Bool) : cs.NativeArray<Dynamic>;
	function IsDefined(attributeType : cs.system.Type, inherit : Bool) : Bool;
}
