package cs.system.text.regularexpressions;

@:nativeGen @:libType @:csNative @:native("System.Text.RegularExpressions.Regex.Adapter") extern class Regex_Adapter {
	function new(ev : MatchEvaluator) : Void;
	function Evaluate(m : Match, sb : cs.system.text.StringBuilder) : Void;
}
