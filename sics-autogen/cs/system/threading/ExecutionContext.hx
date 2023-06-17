package cs.system.threading;

@:nativeGen @:libType @:csNative @:native("System.Threading.ExecutionContext") extern final class ExecutionContext implements cs.system.runtime.serialization.ISerializable implements cs.system.IDisposable {
	function CreateCopy() : ExecutionContext;
	function Dispose() : Void;
	function GetObjectData(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void;
	static function Capture() : ExecutionContext;
	static function IsFlowSuppressed() : Bool;
	static function RestoreFlow() : Void;
	static function Run(executionContext : ExecutionContext, callback : ContextCallback, state : Dynamic) : Void;
	static function SuppressFlow() : AsyncFlowControl;
}
