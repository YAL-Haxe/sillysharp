package cs.system;

@:nativeGen @:libType @:csNative @:native("System.Func`6") extern final class Delegate_Func_6<T0,T1,T2,T3,T4,T5> extends MulticastDelegate {
	function new(object : Dynamic, method : IntPtr) : Void;
	function BeginInvoke(arg1 : T0, arg2 : T1, arg3 : T2, arg4 : T3, arg5 : T4, callback : AsyncCallback, object : Dynamic) : IAsyncResult;
	function EndInvoke(result : IAsyncResult) : T5;
	function Invoke(arg1 : T0, arg2 : T1, arg3 : T2, arg4 : T3, arg5 : T4) : T5;
	static function op_Addition<T0,T1,T2,T3,T4,T5>(arg1 : Func_6<T0,T1,T2,T3,T4,T5>, arg2 : Func_6<T0,T1,T2,T3,T4,T5>) : Func_6<T0,T1,T2,T3,T4,T5>;
	static function op_Subtraction<T0,T1,T2,T3,T4,T5>(arg1 : Func_6<T0,T1,T2,T3,T4,T5>, arg2 : Func_6<T0,T1,T2,T3,T4,T5>) : Func_6<T0,T1,T2,T3,T4,T5>;
}
