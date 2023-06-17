package cs.system.text.regularexpressions;

@:nativeGen @:libType @:csNative @:native("System.Text.RegularExpressions.MatchEvaluator") extern final class Delegate_MatchEvaluator extends cs.system.MulticastDelegate {
	function new(object : Dynamic, method : cs.system.IntPtr) : Void;
	function BeginInvoke(match : Match, callback : cs.system.AsyncCallback, object : Dynamic) : cs.system.IAsyncResult;
	function EndInvoke(result : cs.system.IAsyncResult) : String;
	function Invoke(match : Match) : String;
	static function op_Addition(arg1 : MatchEvaluator, arg2 : MatchEvaluator) : MatchEvaluator;
	static function op_Subtraction(arg1 : MatchEvaluator, arg2 : MatchEvaluator) : MatchEvaluator;
}
