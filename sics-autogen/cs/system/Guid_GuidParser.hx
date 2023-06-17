package cs.system;

@:nativeGen @:struct @:libType @:csNative @:native("System.Guid.GuidParser") extern final class Guid_GuidParser extends ValueType {
	function new(src : String) : Void;
	@:overload(function(format : Guid_Format, guid : cs.Out<Guid>) : Bool {})
	function Parse(guid : cs.Out<Guid>) : Bool;
	static function HasHyphen(format : Guid_Format) : Bool;
}
