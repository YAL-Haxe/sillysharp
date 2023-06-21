package cs.system.net.sockets;

@:nativeGen @:libType @:csNative @:native("System.Net.Sockets.SendPacketsElement") extern class SendPacketsElement {
	var Buffer(get,never) : cs.NativeArray<cs.types.UInt8>;
	var Count(get,never) : Int;
	var EndOfPacket(get,never) : Bool;
	var FilePath(get,never) : String;
	var Offset(get,never) : Int;
	@:overload(function(buffer : cs.NativeArray<cs.types.UInt8>) : Void {})
	@:overload(function(filepath : String, offset : Int, count : Int, endOfPacket : Bool) : Void {})
	@:overload(function(filepath : String, offset : Int, count : Int) : Void {})
	@:overload(function(filepath : String) : Void {})
	@:overload(function(buffer : cs.NativeArray<cs.types.UInt8>, offset : Int, count : Int, endOfPacket : Bool) : Void {})
	function new(buffer : cs.NativeArray<cs.types.UInt8>, offset : Int, count : Int) : Void;
	function get_Buffer() : cs.NativeArray<cs.types.UInt8>;
	function get_Count() : Int;
	function get_EndOfPacket() : Bool;
	function get_FilePath() : String;
	function get_Offset() : Int;
}
