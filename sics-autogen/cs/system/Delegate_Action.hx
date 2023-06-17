package cs.system;

@:nativeGen @:libType @:csNative @:native("System.Action") extern final class Delegate_Action extends MulticastDelegate {
	function new(object : Dynamic, method : IntPtr) : Void;
	function BeginInvoke(callback : AsyncCallback, object : Dynamic) : IAsyncResult;
	function EndInvoke(result : IAsyncResult) : Void;
	function Invoke() : Void;
	static function op_Addition(arg1 : Action, arg2 : Action) : Action;
	static function op_Subtraction(arg1 : Action, arg2 : Action) : Action;
}
