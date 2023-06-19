package cs.system.collections.generic;

@:nativeGen @:libType @:csNative @:native("System.Collections.Generic.List") extern class List_1<T0> implements IList_1<T0> implements cs.system.collections.IList implements IReadOnlyList_1<T0> implements ICollection_1<T0> implements IEnumerable_1<T0> implements cs.system.collections.IEnumerable implements cs.system.collections.ICollection implements IReadOnlyCollection_1<T0> {
	var Capacity(get,set) : Int;
	var Count(get,never) : Int;
	@:overload(function() : Void {})
	@:overload(function(capacity : Int) : Void {})
	function new(collection : IEnumerable_1<T0>) : Void;
	@:noCompletion @:skipReflection function Add(item : T0) : Void;
	function AddRange(collection : IEnumerable_1<T0>) : Void;
	function AsReadOnly() : cs.system.collections.objectmodel.ReadOnlyCollection_1<T0>;
	@:overload(function(item : T0) : Int {})
	@:overload(function(index : Int, count : Int, item : T0, comparer : IComparer_1<T0>) : Int {})
	function BinarySearch(item : T0, comparer : IComparer_1<T0>) : Int;
	function Clear() : Void;
	@:noCompletion @:skipReflection function Contains(item : T0) : Bool;
	function ConvertAll<M0>(converter : cs.system.Converter_2<T0,M0>) : List_1<M0>;
	@:overload(function(array : cs.NativeArray<T0>) : Void {})
	@:overload(function(index : Int, array : cs.NativeArray<T0>, arrayIndex : Int, count : Int) : Void {})
	@:noCompletion @:skipReflection function CopyTo(array : cs.NativeArray<T0>, arrayIndex : Int) : Void;
	function Exists(match : cs.system.Predicate_1<T0>) : Bool;
	function Find(match : cs.system.Predicate_1<T0>) : T0;
	function FindAll(match : cs.system.Predicate_1<T0>) : List_1<T0>;
	@:overload(function(match : cs.system.Predicate_1<T0>) : Int {})
	@:overload(function(startIndex : Int, count : Int, match : cs.system.Predicate_1<T0>) : Int {})
	function FindIndex(startIndex : Int, match : cs.system.Predicate_1<T0>) : Int;
	function FindLast(match : cs.system.Predicate_1<T0>) : T0;
	@:overload(function(match : cs.system.Predicate_1<T0>) : Int {})
	@:overload(function(startIndex : Int, count : Int, match : cs.system.Predicate_1<T0>) : Int {})
	function FindLastIndex(startIndex : Int, match : cs.system.Predicate_1<T0>) : Int;
	function ForEach(action : cs.system.Action_1<T0>) : Void;
	@:noCompletion @:skipReflection function GetEnumerator() : List_1_Enumerator<T0>;
	function GetRange(index : Int, count : Int) : List_1<T0>;
	@:overload(function(item : T0) : Int {})
	@:overload(function(item : T0, index : Int, count : Int) : Int {})
	@:noCompletion @:skipReflection function IndexOf(item : T0, index : Int) : Int;
	@:noCompletion @:skipReflection function Insert(index : Int, item : T0) : Void;
	function InsertRange(index : Int, collection : IEnumerable_1<T0>) : Void;
	@:overload(function(item : T0) : Int {})
	@:overload(function(item : T0, index : Int, count : Int) : Int {})
	function LastIndexOf(item : T0, index : Int) : Int;
	@:noCompletion @:skipReflection function Remove(item : T0) : Bool;
	function RemoveAll(match : cs.system.Predicate_1<T0>) : Int;
	function RemoveAt(index : Int) : Void;
	function RemoveRange(index : Int, count : Int) : Void;
	@:overload(function() : Void {})
	function Reverse(index : Int, count : Int) : Void;
	@:overload(function() : Void {})
	@:overload(function(index : Int, count : Int, comparer : IComparer_1<T0>) : Void {})
	@:overload(function(comparison : cs.system.Comparison_1<T0>) : Void {})
	function Sort(comparer : IComparer_1<T0>) : Void;
	function ToArray() : cs.NativeArray<T0>;
	function TrimExcess() : Void;
	function TrueForAll(match : cs.system.Predicate_1<T0>) : Bool;
	function get_Capacity() : Int;
	function get_Count() : Int;
	@:noCompletion @:skipReflection function get_Item(index : Int) : T0;
	function set_Capacity(value : Int) : Int;
	@:noCompletion @:skipReflection function set_Item(index : Int, value : T0) : Void;
}
