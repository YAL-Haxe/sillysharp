package cs.system.threading;

@:nativeGen @:libType @:csNative @:native("System.Threading.CompressedStack") extern final class CompressedStack implements cs.system.runtime.serialization.ISerializable {
	function CreateCopy() : CompressedStack;
	function GetObjectData(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void;
	static function Capture() : CompressedStack;
	static function GetCompressedStack() : CompressedStack;
	static function Run(compressedStack : CompressedStack, callback : ContextCallback, state : Dynamic) : Void;
}
