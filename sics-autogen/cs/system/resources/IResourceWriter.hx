package cs.system.resources;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Resources.IResourceWriter") extern interface IResourceWriter extends cs.system.IDisposable {
	@:overload(function(name : String, value : cs.NativeArray<cs.types.UInt8>) : Void {})
	@:overload(function(name : String, value : String) : Void {})
	function AddResource(name : String, value : Dynamic) : Void;
	function Close() : Void;
	function Generate() : Void;
}
