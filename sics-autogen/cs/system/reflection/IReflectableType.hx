package cs.system.reflection;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Reflection.IReflectableType") extern interface IReflectableType {
	function GetTypeInfo() : TypeInfo;
}
