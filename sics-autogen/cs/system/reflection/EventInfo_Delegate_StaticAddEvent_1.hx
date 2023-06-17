package cs.system.reflection;

@:nativeGen @:libType @:csNative @:native("System.Reflection.EventInfo.StaticAddEvent`1") extern final class EventInfo_Delegate_StaticAddEvent_1<T0> extends cs.system.MulticastDelegate {
	function new(object : Dynamic, method : cs.system.IntPtr) : Void;
	function BeginInvoke(dele : T0, callback : cs.system.AsyncCallback, object : Dynamic) : cs.system.IAsyncResult;
	function EndInvoke(result : cs.system.IAsyncResult) : Void;
	function Invoke(dele : T0) : Void;
	static function op_Addition<T0>(arg1 : EventInfo_StaticAddEvent_1<T0>, arg2 : EventInfo_StaticAddEvent_1<T0>) : EventInfo_StaticAddEvent_1<T0>;
	static function op_Subtraction<T0>(arg1 : EventInfo_StaticAddEvent_1<T0>, arg2 : EventInfo_StaticAddEvent_1<T0>) : EventInfo_StaticAddEvent_1<T0>;
}
