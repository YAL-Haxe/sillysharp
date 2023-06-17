package cs.system.reflection;

@:nativeGen @:struct @:libType @:csNative @:native("System.Reflection.InterfaceMapping") extern final class InterfaceMapping extends cs.system.ValueType {
	var InterfaceMethods : cs.NativeArray<MethodInfo>;
	var InterfaceType : cs.system.Type;
	var TargetMethods : cs.NativeArray<MethodInfo>;
	var TargetType : cs.system.Type;
}
