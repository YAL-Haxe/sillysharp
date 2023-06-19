package cs.system;

@:nativeGen @:libType @:csNative @:native("System.Action") extern final class Delegate_Action_1<T0> extends MulticastDelegate {
	function new(object : Dynamic, method : IntPtr) : Void;
	function BeginInvoke(obj : T0, callback : AsyncCallback, object : Dynamic) : IAsyncResult;
	function EndInvoke(result : IAsyncResult) : Void;
	function Invoke(obj : T0) : Void;
	static function op_Addition<T0>(arg1 : Action_1<T0>, arg2 : Action_1<T0>) : Action_1<T0>;
	static function op_Subtraction<T0>(arg1 : Action_1<T0>, arg2 : Action_1<T0>) : Action_1<T0>;
}
