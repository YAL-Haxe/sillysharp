package cs.system.security;

@:nativeGen @:libType @:csNative @:native("System.Security.SecureString") extern final class SecureString implements cs.system.IDisposable {
	var Length(get,never) : Int;
	function new() : Void;
	function AppendChar(c : cs.types.Char16) : Void;
	function Clear() : Void;
	function Copy() : SecureString;
	function Dispose() : Void;
	function InsertAt(index : Int, c : cs.types.Char16) : Void;
	function IsReadOnly() : Bool;
	function MakeReadOnly() : Void;
	function RemoveAt(index : Int) : Void;
	function SetAt(index : Int, c : cs.types.Char16) : Void;
	function get_Length() : Int;
}
