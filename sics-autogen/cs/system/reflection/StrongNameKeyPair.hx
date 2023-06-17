package cs.system.reflection;

@:nativeGen @:libType @:csNative @:native("System.Reflection.StrongNameKeyPair") extern class StrongNameKeyPair implements cs.system.runtime.serialization.ISerializable implements cs.system.runtime.serialization.IDeserializationCallback {
	var PublicKey(get,never) : cs.NativeArray<cs.types.UInt8>;
	@:overload(function(keyPairArray : cs.NativeArray<cs.types.UInt8>) : Void {})
	@:overload(function(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void {})
	@:overload(function(keyPairContainer : String) : Void {})
	function new(keyPairFile : cs.system.io.FileStream) : Void;
	function get_PublicKey() : cs.NativeArray<cs.types.UInt8>;
}
