package cs.system.runtime.serialization;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Runtime.Serialization.IObjectReference") extern interface IObjectReference {
	function GetRealObject(context : StreamingContext) : Dynamic;
}
