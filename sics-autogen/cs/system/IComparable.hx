package cs.system;

@:nativeGen @:abstract @:libType @:csNative @:native("System.IComparable") extern interface IComparable {
	function CompareTo(obj : Dynamic) : Int;
}
