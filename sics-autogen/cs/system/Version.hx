package cs.system;

@:nativeGen @:libType @:csNative @:native("System.Version") extern final class Version implements ICloneable implements IComparable implements IComparable_1<Version> implements IEquatable_1<Version> {
	var Build(get,never) : Int;
	var Major(get,never) : Int;
	var MajorRevision(get,never) : cs.types.Int16;
	var Minor(get,never) : Int;
	var MinorRevision(get,never) : cs.types.Int16;
	var Revision(get,never) : Int;
	@:overload(function() : Void {})
	@:overload(function(major : Int, minor : Int, build : Int, revision : Int) : Void {})
	@:overload(function(major : Int, minor : Int, build : Int) : Void {})
	@:overload(function(major : Int, minor : Int) : Void {})
	function new(version : String) : Void;
	function Clone() : Dynamic;
	@:overload(function(version : Dynamic) : Int {})
	function CompareTo(value : Version) : Int;
	@:overload(function() : String {})
	function ToString(fieldCount : Int) : String;
	function get_Build() : Int;
	function get_Major() : Int;
	function get_MajorRevision() : cs.types.Int16;
	function get_Minor() : Int;
	function get_MinorRevision() : cs.types.Int16;
	function get_Revision() : Int;
	static function Parse(input : String) : Version;
	static function TryParse(input : String, result : cs.Out<Version>) : Bool;
	static function op_Equality(v1 : Version, v2 : Version) : Bool;
	static function op_GreaterThan(v1 : Version, v2 : Version) : Bool;
	static function op_GreaterThanOrEqual(v1 : Version, v2 : Version) : Bool;
	static function op_Inequality(v1 : Version, v2 : Version) : Bool;
	static function op_LessThan(v1 : Version, v2 : Version) : Bool;
	static function op_LessThanOrEqual(v1 : Version, v2 : Version) : Bool;
}
