package cs.system;

@:nativeGen @:struct @:libType @:csNative @:native("System.TypedReference") extern final class TypedReference extends ValueType {
	static function GetTargetType(value : TypedReference) : Type;
	static function MakeTypedReference(target : Dynamic, flds : cs.NativeArray<cs.system.reflection.FieldInfo>) : TypedReference;
	static function SetTypedReference(target : TypedReference, value : Dynamic) : Void;
	static function TargetTypeToken(value : TypedReference) : RuntimeTypeHandle;
	static function ToObject(value : TypedReference) : Dynamic;
}
