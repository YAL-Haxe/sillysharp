package cs.system;

@:nativeGen @:libType @:csNative @:native("System.Console.InternalCancelHandler") extern final class Console_Delegate_InternalCancelHandler extends MulticastDelegate {
	function new(object : Dynamic, method : IntPtr) : Void;
	function BeginInvoke(callback : AsyncCallback, object : Dynamic) : IAsyncResult;
	function EndInvoke(result : IAsyncResult) : Void;
	function Invoke() : Void;
	static function op_Addition(arg1 : Console_InternalCancelHandler, arg2 : Console_InternalCancelHandler) : Console_InternalCancelHandler;
	static function op_Subtraction(arg1 : Console_InternalCancelHandler, arg2 : Console_InternalCancelHandler) : Console_InternalCancelHandler;
}
