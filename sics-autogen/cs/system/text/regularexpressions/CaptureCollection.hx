package cs.system.text.regularexpressions;

@:nativeGen @:libType @:csNative @:native("System.Text.RegularExpressions.CaptureCollection") extern class CaptureCollection implements cs.system.collections.ICollection implements cs.system.collections.IEnumerable {
	var Count(get,never) : Int;
	var IsReadOnly(get,never) : Bool;
	var IsSynchronized(get,never) : Bool;
	var SyncRoot(get,never) : Dynamic;
	function CopyTo(array : cs.system.Array, arrayIndex : Int) : Void;
	function GetEnumerator() : cs.system.collections.IEnumerator;
	function get_Count() : Int;
	function get_IsReadOnly() : Bool;
	function get_IsSynchronized() : Bool;
	function get_Item(i : Int) : Capture;
	function get_SyncRoot() : Dynamic;
}
