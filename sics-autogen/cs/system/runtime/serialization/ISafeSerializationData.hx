package cs.system.runtime.serialization;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Runtime.Serialization.ISafeSerializationData") extern interface ISafeSerializationData {
	function CompleteDeserialization(deserialized : Dynamic) : Void;
}
