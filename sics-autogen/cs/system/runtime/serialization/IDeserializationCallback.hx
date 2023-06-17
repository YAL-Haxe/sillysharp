package cs.system.runtime.serialization;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Runtime.Serialization.IDeserializationCallback") extern interface IDeserializationCallback {
	function OnDeserialization(sender : Dynamic) : Void;
}
