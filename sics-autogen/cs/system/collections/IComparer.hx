package cs.system.collections;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Collections.IComparer") extern interface IComparer {
	function Compare(x : Dynamic, y : Dynamic) : Int;
}
