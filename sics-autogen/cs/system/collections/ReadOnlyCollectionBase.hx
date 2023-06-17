package cs.system.collections;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Collections.ReadOnlyCollectionBase") extern class ReadOnlyCollectionBase implements ICollection implements IEnumerable {
	var Count(get,never) : Int;
	private var InnerList(null,never) : ArrayList;
	@:protected private function new() : Void;
	@:noCompletion @:skipReflection function GetEnumerator() : IEnumerator;
	function get_Count() : Int;
	@:protected private function get_InnerList() : ArrayList;
}
