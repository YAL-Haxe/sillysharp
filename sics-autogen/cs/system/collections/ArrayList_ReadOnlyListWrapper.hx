package cs.system.collections;

@:nativeGen @:libType @:csNative @:native("System.Collections.ArrayList.ReadOnlyListWrapper") extern final class ArrayList_ReadOnlyListWrapper extends ArrayList_FixedSizeListWrapper {
	private var ErrorMessage(null,never) : String;
	var IsReadOnly(get,never) : Bool;
	function new(innerList : IList) : Void;
	@:protected private function get_ErrorMessage() : String;
	function get_IsReadOnly() : Bool;
	function get_Item(index : Int) : Dynamic;
	function set_Item(index : Int, value : Dynamic) : Void;
}
