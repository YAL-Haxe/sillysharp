package cs.system.reflection.emit;

@:nativeGen @:libType @:csNative @:native("System.Reflection.Emit.CustomAttributeBuilder") extern class CustomAttributeBuilder implements cs.system.runtime.interopservices._CustomAttributeBuilder {
	@:overload(function(con : cs.system.reflection.ConstructorInfo, constructorArgs : cs.NativeArray<Dynamic>) : Void {})
	@:overload(function(con : cs.system.reflection.ConstructorInfo, constructorArgs : cs.NativeArray<Dynamic>, namedProperties : cs.NativeArray<cs.system.reflection.PropertyInfo>, propertyValues : cs.NativeArray<Dynamic>, namedFields : cs.NativeArray<cs.system.reflection.FieldInfo>, fieldValues : cs.NativeArray<Dynamic>) : Void {})
	@:overload(function(con : cs.system.reflection.ConstructorInfo, constructorArgs : cs.NativeArray<Dynamic>, namedProperties : cs.NativeArray<cs.system.reflection.PropertyInfo>, propertyValues : cs.NativeArray<Dynamic>) : Void {})
	function new(con : cs.system.reflection.ConstructorInfo, constructorArgs : cs.NativeArray<Dynamic>, namedFields : cs.NativeArray<cs.system.reflection.FieldInfo>, fieldValues : cs.NativeArray<Dynamic>) : Void;
}
