package cs.system;

@:nativeGen @:libType @:csNative @:native("System.CharEnumerator") extern final class CharEnumerator implements cs.system.collections.IEnumerator implements ICloneable implements cs.system.collections.generic.IEnumerator_1<cs.types.Char16> implements IDisposable {
	@:noCompletion @:skipReflection var Current(get,never) : cs.types.Char16;
	function Clone() : Dynamic;
	function Dispose() : Void;
	function MoveNext() : Bool;
	function Reset() : Void;
	@:noCompletion @:skipReflection function get_Current() : cs.types.Char16;
}
