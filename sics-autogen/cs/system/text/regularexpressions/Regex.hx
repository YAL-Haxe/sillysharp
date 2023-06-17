package cs.system.text.regularexpressions;

@:nativeGen @:libType @:csNative @:native("System.Text.RegularExpressions.Regex") extern class Regex implements cs.system.runtime.serialization.ISerializable {
	var MatchTimeout(get,never) : cs.system.TimeSpan;
	var Options(get,never) : RegexOptions;
	var RightToLeft(get,never) : Bool;
	private var capnames : cs.system.collections.Hashtable;
	private var caps : cs.system.collections.Hashtable;
	private var capsize : Int;
	private var capslist : cs.NativeArray<String>;
	private var factory : RegexRunnerFactory;
	private var pattern : String;
	private var roptions : RegexOptions;
	@:overload(function() : Void {})
	@:overload(function(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void {})
	@:overload(function(pattern : String, options : RegexOptions, matchTimeout : cs.system.TimeSpan) : Void {})
	@:overload(function(pattern : String, options : RegexOptions) : Void {})
	function new(pattern : String) : Void;
	function GetGroupNames() : cs.NativeArray<String>;
	function GetGroupNumbers() : cs.NativeArray<Int>;
	function GroupNameFromNumber(i : Int) : String;
	function GroupNumberFromName(name : String) : Int;
	@:protected private function InitializeReferences() : Void;
	@:overload(function(input : String) : Bool {})
	@:overload(function(input : String, startat : Int) : Bool {})
	@:overload(function(input : String) : Match {})
	@:overload(function(input : String, beginning : Int, length : Int) : Match {})
	@:overload(function(input : String, startat : Int) : Match {})
	@:overload(function(input : String) : MatchCollection {})
	@:overload(function(input : String, startat : Int) : MatchCollection {})
	@:overload(function(input : String, evaluator : MatchEvaluator) : String {})
	@:overload(function(input : String, replacement : String, count : Int, startat : Int) : String {})
	@:overload(function(input : String, replacement : String, count : Int) : String {})
	@:overload(function(input : String, replacement : String) : String {})
	@:overload(function(input : String, evaluator : MatchEvaluator, count : Int, startat : Int) : String {})
	@:overload(function(input : String, evaluator : MatchEvaluator, count : Int) : String {})
	@:overload(function(input : String) : cs.NativeArray<String> {})
	@:overload(function(input : String, count : Int, startat : Int) : cs.NativeArray<String> {})
	@:overload(function(input : String, count : Int) : cs.NativeArray<String> {})
	function ToString() : String;
	@:protected private function UseOptionC() : Bool;
	@:protected private function UseOptionR() : Bool;
	function get_MatchTimeout() : cs.system.TimeSpan;
	function get_Options() : RegexOptions;
	function get_RightToLeft() : Bool;
	static var CacheSize(get,set) : Int;
	@:readOnly static var InfiniteMatchTimeout(default,never) : cs.system.TimeSpan;
	@:overload(function(regexes : cs.NativeArray<RegexCompilationInfo>, aname : cs.system.reflection.AssemblyName) : Void {})
	@:overload(function(regexes : cs.NativeArray<RegexCompilationInfo>, aname : cs.system.reflection.AssemblyName, attribs : cs.NativeArray<cs.system.reflection.emit.CustomAttributeBuilder>, resourceFile : String) : Void {})
	static function CompileToAssembly(regexes : cs.NativeArray<RegexCompilationInfo>, aname : cs.system.reflection.AssemblyName, attribs : cs.NativeArray<cs.system.reflection.emit.CustomAttributeBuilder>) : Void;
	static function Escape(str : String) : String;
	@:overload(function(input : String, pattern : String) : Bool {})
	@:overload(function(input : String, pattern : String, options : RegexOptions, matchTimeout : cs.system.TimeSpan) : Bool {})
	@:overload(function(input : String, pattern : String, options : RegexOptions) : Bool {})
	@:native("IsMatch") static function _IsMatch(input : String, pattern : String) : Bool;
	@:overload(function(input : String, pattern : String, options : RegexOptions, matchTimeout : cs.system.TimeSpan) : Bool {})
	@:native("IsMatch") static function IsMatch(input : String, pattern : String, options : RegexOptions) : Bool;
	@:overload(function(input : String, pattern : String) : Match {})
	@:overload(function(input : String, pattern : String, options : RegexOptions, matchTimeout : cs.system.TimeSpan) : Match {})
	@:overload(function(input : String, pattern : String, options : RegexOptions) : Match {})
	@:native("Match") static function _Match(input : String, pattern : String) : Match;
	@:overload(function(input : String, pattern : String, options : RegexOptions, matchTimeout : cs.system.TimeSpan) : Match {})
	@:native("Match") static function Match(input : String, pattern : String, options : RegexOptions) : Match;
	@:overload(function(input : String, pattern : String) : MatchCollection {})
	@:overload(function(input : String, pattern : String, options : RegexOptions, matchTimeout : cs.system.TimeSpan) : MatchCollection {})
	@:overload(function(input : String, pattern : String, options : RegexOptions) : MatchCollection {})
	@:native("Matches") static function _Matches(input : String, pattern : String) : MatchCollection;
	@:overload(function(input : String, pattern : String, options : RegexOptions, matchTimeout : cs.system.TimeSpan) : MatchCollection {})
	@:native("Matches") static function Matches(input : String, pattern : String, options : RegexOptions) : MatchCollection;
	@:native("Replace") static function _Replace(input : String, pattern : String, evaluator : MatchEvaluator) : String;
	@:overload(function(input : String, pattern : String, evaluator : MatchEvaluator, options : RegexOptions, matchTimeout : cs.system.TimeSpan) : String {})
	@:overload(function(input : String, pattern : String, replacement : String, options : RegexOptions, matchTimeout : cs.system.TimeSpan) : String {})
	@:overload(function(input : String, pattern : String, replacement : String, options : RegexOptions) : String {})
	@:overload(function(input : String, pattern : String, replacement : String) : String {})
	@:overload(function(input : String, pattern : String, evaluator : MatchEvaluator, options : RegexOptions) : String {})
	@:overload(function(input : String, pattern : String, evaluator : MatchEvaluator) : String {})
	@:overload(function(input : String, pattern : String, evaluator : MatchEvaluator, options : RegexOptions, matchTimeout : cs.system.TimeSpan) : String {})
	@:overload(function(input : String, pattern : String, replacement : String, options : RegexOptions, matchTimeout : cs.system.TimeSpan) : String {})
	@:overload(function(input : String, pattern : String, replacement : String, options : RegexOptions) : String {})
	@:overload(function(input : String, pattern : String, replacement : String) : String {})
	static function Replace(input : String, pattern : String, evaluator : MatchEvaluator, options : RegexOptions) : String;
	@:native("Split") static function _Split(input : String, pattern : String) : cs.NativeArray<String>;
	@:overload(function(input : String, pattern : String, options : RegexOptions, matchTimeout : cs.system.TimeSpan) : cs.NativeArray<String> {})
	@:overload(function(input : String, pattern : String, options : RegexOptions) : cs.NativeArray<String> {})
	@:overload(function(input : String, pattern : String) : cs.NativeArray<String> {})
	@:overload(function(input : String, pattern : String, options : RegexOptions, matchTimeout : cs.system.TimeSpan) : cs.NativeArray<String> {})
	static function Split(input : String, pattern : String, options : RegexOptions) : cs.NativeArray<String>;
	static function Unescape(str : String) : String;
	static function get_CacheSize() : Int;
	static function set_CacheSize(value : Int) : Int;
}
