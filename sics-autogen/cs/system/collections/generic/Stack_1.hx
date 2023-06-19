package cs.system.collections.generic;

@:nativeGen @:libType @:csNative @:native("System.Collections.Generic.Stack") extern class Stack_1<T0> implements IEnumerable_1<T0> implements cs.system.collections.ICollection implements cs.system.collections.IEnumerable {
	var Count(get,never) : Int;
	@:overload(function() : Void {})
	@:overload(function(collection : IEnumerable_1<T0>) : Void {})
	function new(capacity : Int) : Void;
	function Clear() : Void;
	function Contains(item : T0) : Bool;
	@:noCompletion @:skipReflection function CopyTo(array : cs.NativeArray<T0>, arrayIndex : Int) : Void;
	@:noCompletion @:skipReflection function GetEnumerator() : Stack_1_Enumerator<T0>;
	function Peek() : T0;
	function Pop() : T0;
	function Push(item : T0) : Void;
	function ToArray() : cs.NativeArray<T0>;
	function TrimExcess() : Void;
	function get_Count() : Int;
}
