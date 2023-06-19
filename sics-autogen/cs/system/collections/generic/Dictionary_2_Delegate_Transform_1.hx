package cs.system.collections.generic;

@:nativeGen @:libType @:csNative @:native("System.Collections.Generic.Dictionary`2.Transform") extern final class Dictionary_2_Delegate_Transform_1<T0,T1,T2> extends cs.system.MulticastDelegate {
	function new(object : Dynamic, method : cs.system.IntPtr) : Void;
	function BeginInvoke(key : T0, value : T1, callback : cs.system.AsyncCallback, object : Dynamic) : cs.system.IAsyncResult;
	function EndInvoke(result : cs.system.IAsyncResult) : T2;
	function Invoke(key : T0, value : T1) : T2;
	static function op_Addition<T0,T1,T2>(arg1 : Dictionary_2_Transform_1<T0,T1,T2>, arg2 : Dictionary_2_Transform_1<T0,T1,T2>) : Dictionary_2_Transform_1<T0,T1,T2>;
	static function op_Subtraction<T0,T1,T2>(arg1 : Dictionary_2_Transform_1<T0,T1,T2>, arg2 : Dictionary_2_Transform_1<T0,T1,T2>) : Dictionary_2_Transform_1<T0,T1,T2>;
}
