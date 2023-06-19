package cs.system;

@:nativeGen @:libType @:csNative @:native("System.Console.WindowsConsole.WindowsCancelHandler") extern final class Console_WindowsConsole_Delegate_WindowsCancelHandler extends MulticastDelegate {
	function new(object : Dynamic, method : IntPtr) : Void;
	function BeginInvoke(keyCode : Int, callback : AsyncCallback, object : Dynamic) : IAsyncResult;
	function EndInvoke(result : IAsyncResult) : Bool;
	function Invoke(keyCode : Int) : Bool;
	static function op_Addition(arg1 : Console_WindowsConsole_WindowsCancelHandler, arg2 : Console_WindowsConsole_WindowsCancelHandler) : Console_WindowsConsole_WindowsCancelHandler;
	static function op_Subtraction(arg1 : Console_WindowsConsole_WindowsCancelHandler, arg2 : Console_WindowsConsole_WindowsCancelHandler) : Console_WindowsConsole_WindowsCancelHandler;
}
