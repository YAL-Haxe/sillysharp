package cs.system.runtime.serialization;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Runtime.Serialization.ISerializable") extern interface ISerializable {
	function GetObjectData(info : SerializationInfo, context : StreamingContext) : Void;
}
