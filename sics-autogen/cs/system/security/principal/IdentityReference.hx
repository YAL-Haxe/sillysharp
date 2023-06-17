package cs.system.security.principal;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Security.Principal.IdentityReference") extern class IdentityReference {
	var Value(get,never) : String;
	function IsValidTargetType(targetType : cs.system.Type) : Bool;
	function ToString() : String;
	function Translate(targetType : cs.system.Type) : IdentityReference;
	function get_Value() : String;
	static function op_Equality(left : IdentityReference, right : IdentityReference) : Bool;
	static function op_Inequality(left : IdentityReference, right : IdentityReference) : Bool;
}
