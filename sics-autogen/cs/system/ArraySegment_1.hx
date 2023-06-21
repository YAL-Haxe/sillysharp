package cs.system;

@:nativeGen @:struct @:libType @:csNative @:native("System.ArraySegment") extern final class ArraySegment_1<T0> extends ValueType implements cs.system.collections.generic.IList_1<T0> implements cs.system.collections.generic.IReadOnlyList_1<T0> implements cs.system.collections.generic.ICollection_1<T0> implements cs.system.collections.generic.IEnumerable_1<T0> implements cs.system.collections.IEnumerable implements cs.system.collections.generic.IReadOnlyCollection_1<T0> {
	var Array(get,never) : cs.NativeArray<T0>;
	var Count(get,never) : Int;
	var Offset(get,never) : Int;
	@:overload(function(array : cs.NativeArray<T0>, offset : Int, count : Int) : Void {})
	function new(array : cs.NativeArray<T0>) : Void;
	function get_Array() : cs.NativeArray<T0>;
	function get_Count() : Int;
	function get_Offset() : Int;
	static function op_Equality(a : ArraySegment_1<Dynamic>, b : ArraySegment_1<Dynamic>) : Bool;
	static function op_Inequality(a : ArraySegment_1<Dynamic>, b : ArraySegment_1<Dynamic>) : Bool;
}
