package cs.system.text.regularexpressions;

@:nativeGen @:libType @:csNative @:native("System.Text.RegularExpressions.Match") extern class Match extends Group {
	var Groups(get,never) : GroupCollection;
	function NextMatch() : Match;
	function Result(replacement : String) : String;
	function get_Groups() : GroupCollection;
	static var Empty(get,never) : Match;
	static function Synchronized(inner : Match) : Match;
	static function get_Empty() : Match;
}
