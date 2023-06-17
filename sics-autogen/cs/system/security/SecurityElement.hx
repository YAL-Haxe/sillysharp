package cs.system.security;

@:nativeGen @:libType @:csNative @:native("System.Security.SecurityElement") extern final class SecurityElement {
	var Attributes(get,set) : cs.system.collections.Hashtable;
	var Children(get,set) : cs.system.collections.ArrayList;
	var Tag(get,set) : String;
	var Text(get,set) : String;
	@:overload(function(tag : String) : Void {})
	function new(tag : String, text : String) : Void;
	function AddAttribute(name : String, value : String) : Void;
	function AddChild(child : SecurityElement) : Void;
	function Attribute(name : String) : String;
	function Copy() : SecurityElement;
	function Equal(other : SecurityElement) : Bool;
	function SearchForChildByTag(tag : String) : SecurityElement;
	function SearchForTextOfTag(tag : String) : String;
	function ToString() : String;
	function get_Attributes() : cs.system.collections.Hashtable;
	function get_Children() : cs.system.collections.ArrayList;
	function get_Tag() : String;
	function get_Text() : String;
	function set_Attributes(value : cs.system.collections.Hashtable) : cs.system.collections.Hashtable;
	function set_Children(value : cs.system.collections.ArrayList) : cs.system.collections.ArrayList;
	function set_Tag(value : String) : String;
	function set_Text(value : String) : String;
	static function Escape(str : String) : String;
	static function FromString(xml : String) : SecurityElement;
	static function IsValidAttributeName(name : String) : Bool;
	static function IsValidAttributeValue(value : String) : Bool;
	static function IsValidTag(tag : String) : Bool;
	static function IsValidText(text : String) : Bool;
}
