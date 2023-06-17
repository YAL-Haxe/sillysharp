package cs.system.reflection.emit;

@:nativeGen @:struct @:libType @:csNative @:native("System.Reflection.Emit.CustomAttributeBuilder.CustomAttributeInfo") extern final class CustomAttributeBuilder_CustomAttributeInfo extends cs.system.ValueType {
	var ctor : cs.system.reflection.ConstructorInfo;
	var ctorArgs : cs.NativeArray<Dynamic>;
	var namedParamNames : cs.NativeArray<String>;
	var namedParamValues : cs.NativeArray<Dynamic>;
}
