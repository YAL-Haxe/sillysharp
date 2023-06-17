package cs.system;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Array") extern class Array implements ICloneable implements cs.system.collections.ICollection implements cs.system.collections.IList implements cs.system.collections.IEnumerable implements cs.system.collections.IStructuralComparable implements cs.system.collections.IStructuralEquatable {
	var IsFixedSize(get,never) : Bool;
	var IsReadOnly(get,never) : Bool;
	var IsSynchronized(get,never) : Bool;
	var Length(get,never) : Int;
	var LongLength(get,never) : haxe.Int64;
	var Rank(get,never) : Int;
	var SyncRoot(get,never) : Dynamic;
	function Clone() : Dynamic;
	@:overload(function(array : Array, index : Int) : Void {})
	function CopyTo(array : Array, index : haxe.Int64) : Void;
	function GetEnumerator() : cs.system.collections.IEnumerator;
	function GetLength(dimension : Int) : Int;
	function GetLongLength(dimension : Int) : haxe.Int64;
	function GetLowerBound(dimension : Int) : Int;
	function GetUpperBound(dimension : Int) : Int;
	@:overload(function(indices : cs.NativeArray<Int>) : Dynamic {})
	@:overload(function(indices : cs.NativeArray<haxe.Int64>) : Dynamic {})
	@:overload(function(index1 : haxe.Int64, index2 : haxe.Int64, index3 : haxe.Int64) : Dynamic {})
	@:overload(function(index1 : haxe.Int64, index2 : haxe.Int64) : Dynamic {})
	@:overload(function(index : haxe.Int64) : Dynamic {})
	@:overload(function(index1 : Int, index2 : Int, index3 : Int) : Dynamic {})
	@:overload(function(index1 : Int, index2 : Int) : Dynamic {})
	function GetValue(index : Int) : Dynamic;
	function Initialize() : Void;
	@:overload(function(value : Dynamic, indices : cs.NativeArray<Int>) : Void {})
	@:overload(function(value : Dynamic, indices : cs.NativeArray<haxe.Int64>) : Void {})
	@:overload(function(value : Dynamic, index1 : Int, index2 : Int, index3 : Int) : Void {})
	@:overload(function(value : Dynamic, index1 : Int, index2 : Int) : Void {})
	@:overload(function(value : Dynamic, index : Int) : Void {})
	@:overload(function(value : Dynamic, index1 : haxe.Int64, index2 : haxe.Int64, index3 : haxe.Int64) : Void {})
	@:overload(function(value : Dynamic, index1 : haxe.Int64, index2 : haxe.Int64) : Void {})
	function SetValue(value : Dynamic, index : haxe.Int64) : Void;
	function get_IsFixedSize() : Bool;
	function get_IsReadOnly() : Bool;
	function get_IsSynchronized() : Bool;
	function get_Length() : Int;
	function get_LongLength() : haxe.Int64;
	function get_Rank() : Int;
	function get_SyncRoot() : Dynamic;
	static function AsReadOnly<M0>(array : cs.NativeArray<M0>) : cs.system.collections.objectmodel.ReadOnlyCollection_1<M0>;
	@:overload(function(array : Array, value : Dynamic) : Int {})
	@:overload(function<M0>(array : cs.NativeArray<M0>, index : Int, length : Int, value : M0, comparer : cs.system.collections.generic.IComparer_1<M0>) : Int {})
	@:overload(function<M0>(array : cs.NativeArray<M0>, index : Int, length : Int, value : M0) : Int {})
	@:overload(function<M0>(array : cs.NativeArray<M0>, value : M0, comparer : cs.system.collections.generic.IComparer_1<M0>) : Int {})
	@:overload(function<M0>(array : cs.NativeArray<M0>, value : M0) : Int {})
	@:overload(function(array : Array, index : Int, length : Int, value : Dynamic, comparer : cs.system.collections.IComparer) : Int {})
	@:overload(function(array : Array, index : Int, length : Int, value : Dynamic) : Int {})
	static function BinarySearch(array : Array, value : Dynamic, comparer : cs.system.collections.IComparer) : Int;
	@:noCompletion @:skipReflection static function Clear(array : Array, index : Int, length : Int) : Void;
	static function ConstrainedCopy(sourceArray : Array, sourceIndex : Int, destinationArray : Array, destinationIndex : Int, length : Int) : Void;
	static function ConvertAll<M0,M1>(array : cs.NativeArray<M0>, converter : Converter_2<M0,M1>) : cs.NativeArray<M1>;
	@:overload(function(sourceArray : Array, destinationArray : Array, length : Int) : Void {})
	@:overload(function(sourceArray : Array, destinationArray : Array, length : haxe.Int64) : Void {})
	@:overload(function(sourceArray : Array, sourceIndex : haxe.Int64, destinationArray : Array, destinationIndex : haxe.Int64, length : haxe.Int64) : Void {})
	static function Copy(sourceArray : Array, sourceIndex : Int, destinationArray : Array, destinationIndex : Int, length : Int) : Void;
	@:overload(function(elementType : Type, length : Int) : Array {})
	@:overload(function(elementType : Type, lengths : cs.NativeArray<haxe.Int64>) : Array {})
	@:overload(function(elementType : Type, lengths : cs.NativeArray<Int>, lowerBounds : cs.NativeArray<Int>) : Array {})
	@:overload(function(elementType : Type, lengths : cs.NativeArray<Int>) : Array {})
	@:overload(function(elementType : Type, length1 : Int, length2 : Int, length3 : Int) : Array {})
	static function CreateInstance(elementType : Type, length1 : Int, length2 : Int) : Array;
	static function Exists<M0>(array : cs.NativeArray<M0>, match : Predicate_1<M0>) : Bool;
	static function Find<M0>(array : cs.NativeArray<M0>, match : Predicate_1<M0>) : M0;
	static function FindAll<M0>(array : cs.NativeArray<M0>, match : Predicate_1<M0>) : cs.NativeArray<M0>;
	@:overload(function<M0>(array : cs.NativeArray<M0>, match : Predicate_1<M0>) : Int {})
	@:overload(function<M0>(array : cs.NativeArray<M0>, startIndex : Int, count : Int, match : Predicate_1<M0>) : Int {})
	static function FindIndex<M0>(array : cs.NativeArray<M0>, startIndex : Int, match : Predicate_1<M0>) : Int;
	static function FindLast<M0>(array : cs.NativeArray<M0>, match : Predicate_1<M0>) : M0;
	@:overload(function<M0>(array : cs.NativeArray<M0>, match : Predicate_1<M0>) : Int {})
	@:overload(function<M0>(array : cs.NativeArray<M0>, startIndex : Int, count : Int, match : Predicate_1<M0>) : Int {})
	static function FindLastIndex<M0>(array : cs.NativeArray<M0>, startIndex : Int, match : Predicate_1<M0>) : Int;
	static function ForEach<M0>(array : cs.NativeArray<M0>, action : Action_1<M0>) : Void;
	@:overload(function(array : Array, value : Dynamic) : Int {})
	@:overload(function<M0>(array : cs.NativeArray<M0>, value : M0, startIndex : Int, count : Int) : Int {})
	@:overload(function<M0>(array : cs.NativeArray<M0>, value : M0, startIndex : Int) : Int {})
	@:overload(function<M0>(array : cs.NativeArray<M0>, value : M0) : Int {})
	@:overload(function(array : Array, value : Dynamic, startIndex : Int, count : Int) : Int {})
	@:noCompletion @:skipReflection static function IndexOf(array : Array, value : Dynamic, startIndex : Int) : Int;
	@:overload(function(array : Array, value : Dynamic) : Int {})
	@:overload(function<M0>(array : cs.NativeArray<M0>, value : M0, startIndex : Int, count : Int) : Int {})
	@:overload(function<M0>(array : cs.NativeArray<M0>, value : M0, startIndex : Int) : Int {})
	@:overload(function<M0>(array : cs.NativeArray<M0>, value : M0) : Int {})
	@:overload(function(array : Array, value : Dynamic, startIndex : Int, count : Int) : Int {})
	static function LastIndexOf(array : Array, value : Dynamic, startIndex : Int) : Int;
	static function Resize<M0>(array : cs.Ref<cs.NativeArray<M0>>, newSize : Int) : Void;
	@:overload(function(array : Array) : Void {})
	static function Reverse(array : Array, index : Int, length : Int) : Void;
	@:overload(function(array : Array) : Void {})
	@:overload(function<M0>(array : cs.NativeArray<M0>, comparison : Comparison_1<M0>) : Void {})
	@:overload(function<M0,M1>(keys : cs.NativeArray<M0>, items : cs.NativeArray<M1>, index : Int, length : Int, comparer : cs.system.collections.generic.IComparer_1<M0>) : Void {})
	@:overload(function<M0>(array : cs.NativeArray<M0>, index : Int, length : Int, comparer : cs.system.collections.generic.IComparer_1<M0>) : Void {})
	@:overload(function<M0,M1>(keys : cs.NativeArray<M0>, items : cs.NativeArray<M1>, index : Int, length : Int) : Void {})
	@:overload(function<M0>(array : cs.NativeArray<M0>, index : Int, length : Int) : Void {})
	@:overload(function<M0,M1>(keys : cs.NativeArray<M0>, items : cs.NativeArray<M1>, comparer : cs.system.collections.generic.IComparer_1<M0>) : Void {})
	@:overload(function<M0>(array : cs.NativeArray<M0>, comparer : cs.system.collections.generic.IComparer_1<M0>) : Void {})
	@:overload(function<M0,M1>(keys : cs.NativeArray<M0>, items : cs.NativeArray<M1>) : Void {})
	@:overload(function<M0>(array : cs.NativeArray<M0>) : Void {})
	@:overload(function(keys : Array, items : Array, index : Int, length : Int, comparer : cs.system.collections.IComparer) : Void {})
	@:overload(function(array : Array, index : Int, length : Int, comparer : cs.system.collections.IComparer) : Void {})
	@:overload(function(keys : Array, items : Array, index : Int, length : Int) : Void {})
	@:overload(function(keys : Array, items : Array, comparer : cs.system.collections.IComparer) : Void {})
	@:overload(function(array : Array, index : Int, length : Int) : Void {})
	@:overload(function(array : Array, comparer : cs.system.collections.IComparer) : Void {})
	static function Sort(keys : Array, items : Array) : Void;
	static function TrueForAll<M0>(array : cs.NativeArray<M0>, match : Predicate_1<M0>) : Bool;
}
