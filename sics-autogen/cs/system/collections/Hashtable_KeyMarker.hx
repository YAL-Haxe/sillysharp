package cs.system.collections;

@:nativeGen @:libType @:csNative @:native("System.Collections.Hashtable.KeyMarker") extern class Hashtable_KeyMarker implements cs.system.runtime.serialization.IObjectReference {
	function new() : Void;
	function GetRealObject(context : cs.system.runtime.serialization.StreamingContext) : Dynamic;
	@:readOnly static var Removed(default,never) : Hashtable_KeyMarker;
}
