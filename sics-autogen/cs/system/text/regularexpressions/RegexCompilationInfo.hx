package cs.system.text.regularexpressions;

@:nativeGen @:libType @:csNative @:native("System.Text.RegularExpressions.RegexCompilationInfo") extern class RegexCompilationInfo {
	var IsPublic(get,set) : Bool;
	var Name(get,set) : String;
	var Namespace(get,set) : String;
	var Options(get,set) : RegexOptions;
	var Pattern(get,set) : String;
	function new(pattern : String, options : RegexOptions, name : String, fullnamespace : String, ispublic : Bool) : Void;
	function get_IsPublic() : Bool;
	function get_Name() : String;
	function get_Namespace() : String;
	function get_Options() : RegexOptions;
	function get_Pattern() : String;
	function set_IsPublic(value : Bool) : Bool;
	function set_Name(value : String) : String;
	function set_Namespace(value : String) : String;
	function set_Options(value : RegexOptions) : RegexOptions;
	function set_Pattern(value : String) : String;
}
