package cs.system.collections;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Collections.IStructuralComparable") extern interface IStructuralComparable {
	function CompareTo(other : Dynamic, comparer : IComparer) : Int;
}
