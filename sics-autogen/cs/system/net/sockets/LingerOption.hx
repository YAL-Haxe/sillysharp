package cs.system.net.sockets;

@:nativeGen @:libType @:csNative @:native("System.Net.Sockets.LingerOption") extern class LingerOption {
	var Enabled(get,set) : Bool;
	var LingerTime(get,set) : Int;
	function new(enable : Bool, seconds : Int) : Void;
	function get_Enabled() : Bool;
	function get_LingerTime() : Int;
	function set_Enabled(value : Bool) : Bool;
	function set_LingerTime(value : Int) : Int;
}
