package cs.system;

@:nativeGen @:libType @:csNative @:native("System.Func") extern final class Delegate_Func_5<T0,T1,T2,T3,T4> extends MulticastDelegate {
	function new(object : Dynamic, method : IntPtr) : Void;
	function BeginInvoke(arg1 : T0, arg2 : T1, arg3 : T2, arg4 : T3, callback : AsyncCallback, object : Dynamic) : IAsyncResult;
	function EndInvoke(result : IAsyncResult) : T4;
	function Invoke(arg1 : T0, arg2 : T1, arg3 : T2, arg4 : T3) : T4;
	static function op_Addition<T0,T1,T2,T3,T4>(arg1 : Func_5<T0,T1,T2,T3,T4>, arg2 : Func_5<T0,T1,T2,T3,T4>) : Func_5<T0,T1,T2,T3,T4>;
	static function op_Subtraction<T0,T1,T2,T3,T4>(arg1 : Func_5<T0,T1,T2,T3,T4>, arg2 : Func_5<T0,T1,T2,T3,T4>) : Func_5<T0,T1,T2,T3,T4>;
}
