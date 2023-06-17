package cs.system.collections.generic;

@:nativeGen @:libType @:csNative @:native("System.Collections.Generic.Queue`1") extern class Queue_1<T0> implements IEnumerable_1<T0> implements cs.system.collections.ICollection implements cs.system.collections.IEnumerable {
	var Count(get,never) : Int;
	@:overload(function() : Void {})
	@:overload(function(collection : IEnumerable_1<T0>) : Void {})
	function new(capacity : Int) : Void;
	function Clear() : Void;
	function Contains(item : T0) : Bool;
	@:noCompletion @:skipReflection function CopyTo(array : cs.NativeArray<T0>, arrayIndex : Int) : Void;
	function Dequeue() : T0;
	function Enqueue(item : T0) : Void;
	@:noCompletion @:skipReflection function GetEnumerator() : Queue_1_Enumerator<T0>;
	function Peek() : T0;
	function ToArray() : cs.NativeArray<T0>;
	function TrimExcess() : Void;
	function get_Count() : Int;
}
