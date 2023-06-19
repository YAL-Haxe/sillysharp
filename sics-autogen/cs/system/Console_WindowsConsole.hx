package cs.system;

@:nativeGen @:libType @:csNative @:native("System.Console.WindowsConsole") extern class Console_WindowsConsole {
	function new() : Void;
	static var ctrlHandlerAdded : Bool;
	static function AddCtrlHandler() : Void;
	static function GetInputCodePage() : Int;
	static function GetOutputCodePage() : Int;
	static function RemoveCtrlHandler() : Void;
}
