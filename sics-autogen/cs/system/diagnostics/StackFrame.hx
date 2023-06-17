package cs.system.diagnostics;

@:nativeGen @:libType @:csNative @:native("System.Diagnostics.StackFrame") extern class StackFrame {
	@:overload(function() : Void {})
	@:overload(function(fileName : String, lineNumber : Int, colNumber : Int) : Void {})
	@:overload(function(fileName : String, lineNumber : Int) : Void {})
	@:overload(function(skipFrames : Int, fNeedFileInfo : Bool) : Void {})
	@:overload(function(skipFrames : Int) : Void {})
	function new(fNeedFileInfo : Bool) : Void;
	function GetFileColumnNumber() : Int;
	function GetFileLineNumber() : Int;
	function GetFileName() : String;
	function GetILOffset() : Int;
	function GetMethod() : cs.system.reflection.MethodBase;
	function GetNativeOffset() : Int;
	function ToString() : String;
	@:readOnly static var OFFSET_UNKNOWN(default,never) : Int;
}
