package cs.system;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Nullable") extern final class Nullable {
	static function Compare<M0>(n1 : Nullable_1<M0>, n2 : Nullable_1<M0>) : Int;
	@:native("Equals") static function _Equals<M0>(n1 : Nullable_1<M0>, n2 : Nullable_1<M0>) : Bool;
	static function GetUnderlyingType(nullableType : Type) : Type;
}
