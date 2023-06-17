package cs.system;

@:nativeGen @:libType @:csNative @:native("System.AppDomainInitializer") extern final class Delegate_AppDomainInitializer extends MulticastDelegate {
	function new(object : Dynamic, method : IntPtr) : Void;
	function BeginInvoke(args : cs.NativeArray<String>, callback : AsyncCallback, object : Dynamic) : IAsyncResult;
	function EndInvoke(result : IAsyncResult) : Void;
	function Invoke(args : cs.NativeArray<String>) : Void;
	static function op_Addition(arg1 : AppDomainInitializer, arg2 : AppDomainInitializer) : AppDomainInitializer;
	static function op_Subtraction(arg1 : AppDomainInitializer, arg2 : AppDomainInitializer) : AppDomainInitializer;
}
