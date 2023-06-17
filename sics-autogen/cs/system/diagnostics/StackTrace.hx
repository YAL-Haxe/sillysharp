package cs.system.diagnostics;

@:nativeGen @:libType @:csNative @:native("System.Diagnostics.StackTrace") extern class StackTrace {
	var FrameCount(get,never) : Int;
	@:overload(function() : Void {})
	@:overload(function(targetThread : cs.system.threading.Thread, needFileInfo : Bool) : Void {})
	@:overload(function(frame : StackFrame) : Void {})
	@:overload(function(e : cs.system.Exception, skipFrames : Int, fNeedFileInfo : Bool) : Void {})
	@:overload(function(e : cs.system.Exception, skipFrames : Int) : Void {})
	@:overload(function(e : cs.system.Exception, fNeedFileInfo : Bool) : Void {})
	@:overload(function(e : cs.system.Exception) : Void {})
	@:overload(function(skipFrames : Int, fNeedFileInfo : Bool) : Void {})
	@:overload(function(skipFrames : Int) : Void {})
	function new(fNeedFileInfo : Bool) : Void;
	function GetFrame(index : Int) : StackFrame;
	function GetFrames() : cs.NativeArray<StackFrame>;
	function ToString() : String;
	function get_FrameCount() : Int;
	@:readOnly static var METHODS_TO_SKIP(default,never) : Int;
}
