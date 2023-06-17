package cs.system;

@:nativeGen @:libType @:csNative @:native("System.EventHandler`1") extern final class Delegate_EventHandler_1<T0> extends MulticastDelegate {
	function new(object : Dynamic, method : IntPtr) : Void;
	function BeginInvoke(sender : Dynamic, e : T0, callback : AsyncCallback, object : Dynamic) : IAsyncResult;
	function EndInvoke(result : IAsyncResult) : Void;
	function Invoke(sender : Dynamic, e : T0) : Void;
	static function op_Addition<T0>(arg1 : EventHandler_1<T0>, arg2 : EventHandler_1<T0>) : EventHandler_1<T0>;
	static function op_Subtraction<T0>(arg1 : EventHandler_1<T0>, arg2 : EventHandler_1<T0>) : EventHandler_1<T0>;
}
