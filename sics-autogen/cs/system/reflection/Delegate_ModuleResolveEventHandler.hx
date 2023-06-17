package cs.system.reflection;

@:nativeGen @:libType @:csNative @:native("System.Reflection.ModuleResolveEventHandler") extern final class Delegate_ModuleResolveEventHandler extends cs.system.MulticastDelegate {
	function new(object : Dynamic, method : cs.system.IntPtr) : Void;
	function BeginInvoke(sender : Dynamic, e : cs.system.ResolveEventArgs, callback : cs.system.AsyncCallback, object : Dynamic) : cs.system.IAsyncResult;
	function EndInvoke(result : cs.system.IAsyncResult) : Module;
	function Invoke(sender : Dynamic, e : cs.system.ResolveEventArgs) : Module;
	static function op_Addition(arg1 : ModuleResolveEventHandler, arg2 : ModuleResolveEventHandler) : ModuleResolveEventHandler;
	static function op_Subtraction(arg1 : ModuleResolveEventHandler, arg2 : ModuleResolveEventHandler) : ModuleResolveEventHandler;
}
