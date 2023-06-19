package cs.system;

@:nativeGen @:libType @:csNative @:native("System.Action") extern final class Delegate_Action_2<T0,T1> extends MulticastDelegate {
	function new(object : Dynamic, method : IntPtr) : Void;
	function BeginInvoke(arg1 : T0, arg2 : T1, callback : AsyncCallback, object : Dynamic) : IAsyncResult;
	function EndInvoke(result : IAsyncResult) : Void;
	function Invoke(arg1 : T0, arg2 : T1) : Void;
	static function op_Addition<T0,T1>(arg1 : Action_2<T0,T1>, arg2 : Action_2<T0,T1>) : Action_2<T0,T1>;
	static function op_Subtraction<T0,T1>(arg1 : Action_2<T0,T1>, arg2 : Action_2<T0,T1>) : Action_2<T0,T1>;
}
