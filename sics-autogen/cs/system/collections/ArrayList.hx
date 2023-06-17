package cs.system.collections;

@:nativeGen @:libType @:csNative @:native("System.Collections.ArrayList") extern class ArrayList implements IList implements cs.system.ICloneable implements ICollection implements IEnumerable {
	var Capacity(get,set) : Int;
	var Count(get,never) : Int;
	var IsFixedSize(get,never) : Bool;
	var IsReadOnly(get,never) : Bool;
	var IsSynchronized(get,never) : Bool;
	var SyncRoot(get,never) : Dynamic;
	@:overload(function() : Void {})
	@:overload(function(capacity : Int) : Void {})
	function new(c : ICollection) : Void;
	function Add(value : Dynamic) : Int;
	function AddRange(c : ICollection) : Void;
	@:overload(function(value : Dynamic) : Int {})
	@:overload(function(index : Int, count : Int, value : Dynamic, comparer : IComparer) : Int {})
	function BinarySearch(value : Dynamic, comparer : IComparer) : Int;
	function Clear() : Void;
	function Clone() : Dynamic;
	function Contains(item : Dynamic) : Bool;
	@:overload(function(array : cs.system.Array) : Void {})
	@:overload(function(index : Int, array : cs.system.Array, arrayIndex : Int, count : Int) : Void {})
	function CopyTo(array : cs.system.Array, arrayIndex : Int) : Void;
	@:overload(function() : IEnumerator {})
	function GetEnumerator(index : Int, count : Int) : IEnumerator;
	function GetRange(index : Int, count : Int) : ArrayList;
	@:overload(function(value : Dynamic) : Int {})
	@:overload(function(value : Dynamic, startIndex : Int, count : Int) : Int {})
	function IndexOf(value : Dynamic, startIndex : Int) : Int;
	function Insert(index : Int, value : Dynamic) : Void;
	function InsertRange(index : Int, c : ICollection) : Void;
	@:overload(function(value : Dynamic) : Int {})
	@:overload(function(value : Dynamic, startIndex : Int, count : Int) : Int {})
	function LastIndexOf(value : Dynamic, startIndex : Int) : Int;
	function Remove(obj : Dynamic) : Void;
	function RemoveAt(index : Int) : Void;
	function RemoveRange(index : Int, count : Int) : Void;
	@:overload(function() : Void {})
	function Reverse(index : Int, count : Int) : Void;
	function SetRange(index : Int, c : ICollection) : Void;
	@:overload(function() : Void {})
	@:overload(function(index : Int, count : Int, comparer : IComparer) : Void {})
	function Sort(comparer : IComparer) : Void;
	@:overload(function() : cs.NativeArray<Dynamic> {})
	function ToArray(type : cs.system.Type) : cs.system.Array;
	function TrimToSize() : Void;
	function get_Capacity() : Int;
	function get_Count() : Int;
	function get_IsFixedSize() : Bool;
	function get_IsReadOnly() : Bool;
	function get_IsSynchronized() : Bool;
	function get_Item(index : Int) : Dynamic;
	function get_SyncRoot() : Dynamic;
	function set_Capacity(value : Int) : Int;
	function set_Item(index : Int, value : Dynamic) : Void;
	static function Adapter(list : IList) : ArrayList;
	@:overload(function(list : ArrayList) : ArrayList {})
	static function FixedSize(list : IList) : IList;
	@:overload(function(list : ArrayList) : ArrayList {})
	static function ReadOnly(list : IList) : IList;
	static function Repeat(value : Dynamic, count : Int) : ArrayList;
	@:overload(function(list : ArrayList) : ArrayList {})
	static function Synchronized(list : IList) : IList;
}
