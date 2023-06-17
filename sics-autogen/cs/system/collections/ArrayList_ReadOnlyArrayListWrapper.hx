package cs.system.collections;

@:nativeGen @:libType @:csNative @:native("System.Collections.ArrayList.ReadOnlyArrayListWrapper") extern final class ArrayList_ReadOnlyArrayListWrapper extends ArrayList_FixedSizeArrayListWrapper {
	private var ErrorMessage(null,never) : String;
	var IsReadOnly(get,never) : Bool;
	function new(innerArrayList : ArrayList) : Void;
	@:overload(function() : Void {})
	function Reverse(index : Int, count : Int) : Void;
	function SetRange(index : Int, c : ICollection) : Void;
	@:overload(function() : Void {})
	@:overload(function(index : Int, count : Int, comparer : IComparer) : Void {})
	function Sort(comparer : IComparer) : Void;
	@:protected private function get_ErrorMessage() : String;
	function get_IsReadOnly() : Bool;
	function get_Item(index : Int) : Dynamic;
	function set_Item(index : Int, value : Dynamic) : Void;
}
