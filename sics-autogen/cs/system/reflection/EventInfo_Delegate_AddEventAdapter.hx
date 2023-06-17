package cs.system.reflection;

@:nativeGen @:libType @:csNative @:native("System.Reflection.EventInfo.AddEventAdapter") extern final class EventInfo_Delegate_AddEventAdapter extends cs.system.MulticastDelegate {
	function new(object : Dynamic, method : cs.system.IntPtr) : Void;
	function BeginInvoke(_this : Dynamic, dele : cs.system.Delegate, callback : cs.system.AsyncCallback, object : Dynamic) : cs.system.IAsyncResult;
	function EndInvoke(result : cs.system.IAsyncResult) : Void;
	function Invoke(_this : Dynamic, dele : cs.system.Delegate) : Void;
	static function op_Addition(arg1 : EventInfo_AddEventAdapter, arg2 : EventInfo_AddEventAdapter) : EventInfo_AddEventAdapter;
	static function op_Subtraction(arg1 : EventInfo_AddEventAdapter, arg2 : EventInfo_AddEventAdapter) : EventInfo_AddEventAdapter;
}
