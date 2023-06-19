package cs.system;

@:nativeGen @:libType @:csNative @:native("System.ConsoleCancelEventArgs") extern final class ConsoleCancelEventArgs extends EventArgs {
	var Cancel(get,set) : Bool;
	var SpecialKey(get,never) : ConsoleSpecialKey;
	function get_Cancel() : Bool;
	function get_SpecialKey() : ConsoleSpecialKey;
	function set_Cancel(value : Bool) : Bool;
}
