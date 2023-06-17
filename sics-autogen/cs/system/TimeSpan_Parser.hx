package cs.system;

@:nativeGen @:libType @:csNative @:native("System.TimeSpan.Parser") extern class TimeSpan_Parser {
	var AllMembersRequired : Bool;
	var AtEnd(get,never) : Bool;
	var CultureSensitive : Bool;
	var Exact : Bool;
	var UseColonAsDaySeparator : Bool;
	@:overload(function(src : String) : Void {})
	function new(src : String, formatProvider : IFormatProvider) : Void;
	function Execute(tryParse : Bool, result : cs.Out<TimeSpan>) : Bool;
	function ExecuteWithFormat(format : String, style : cs.system.globalization.TimeSpanStyles, tryParse : Bool, result : cs.Out<TimeSpan>) : Bool;
	function get_AtEnd() : Bool;
}
