package cs.system;

@:nativeGen @:libType @:csNative @:native("System.Uri") extern class Uri implements cs.system.runtime.serialization.ISerializable {
	var AbsolutePath(get,never) : String;
	var AbsoluteUri(get,never) : String;
	var Authority(get,never) : String;
	var DnsSafeHost(get,never) : String;
	var Fragment(get,never) : String;
	var Host(get,never) : String;
	var HostNameType(get,never) : UriHostNameType;
	var IsAbsoluteUri(get,never) : Bool;
	var IsDefaultPort(get,never) : Bool;
	var IsFile(get,never) : Bool;
	var IsLoopback(get,never) : Bool;
	var IsUnc(get,never) : Bool;
	var LocalPath(get,never) : String;
	var OriginalString(get,never) : String;
	var PathAndQuery(get,never) : String;
	var Port(get,never) : Int;
	var Query(get,never) : String;
	var Scheme(get,never) : String;
	var Segments(get,never) : cs.NativeArray<String>;
	var UserEscaped(get,never) : Bool;
	var UserInfo(get,never) : String;
	@:overload(function(uriString : String) : Void {})
	@:overload(function(baseUri : Uri, relativeUri : String, dontEscape : Bool) : Void {})
	@:overload(function(baseUri : Uri, relativeUri : String) : Void {})
	@:overload(function(uriString : String, dontEscape : Bool) : Void {})
	@:overload(function(baseUri : Uri, relativeUri : Uri) : Void {})
	@:overload(function(uriString : String, uriKind : UriKind) : Void {})
	@:protected private function new(serializationInfo : cs.system.runtime.serialization.SerializationInfo, streamingContext : cs.system.runtime.serialization.StreamingContext) : Void;
	@:protected private function Canonicalize() : Void;
	@:protected private function CheckSecurity() : Void;
	@:protected private function Escape() : Void;
	function GetComponents(components : UriComponents, format : UriFormat) : String;
	function GetLeftPart(part : UriPartial) : String;
	@:noCompletion @:skipReflection function GetObjectData(serializationInfo : cs.system.runtime.serialization.SerializationInfo, streamingContext : cs.system.runtime.serialization.StreamingContext) : Void;
	@:protected private function IsBadFileSystemCharacter(character : cs.types.Char16) : Bool;
	function IsBaseOf(uri : Uri) : Bool;
	@:protected private function IsReservedCharacter(character : cs.types.Char16) : Bool;
	function IsWellFormedOriginalString() : Bool;
	function MakeRelative(toUri : Uri) : String;
	function MakeRelativeUri(uri : Uri) : Uri;
	@:protected private function Parse() : Void;
	function ToString() : String;
	@:protected private function Unescape(path : String) : String;
	function get_AbsolutePath() : String;
	function get_AbsoluteUri() : String;
	function get_Authority() : String;
	function get_DnsSafeHost() : String;
	function get_Fragment() : String;
	function get_Host() : String;
	function get_HostNameType() : UriHostNameType;
	function get_IsAbsoluteUri() : Bool;
	function get_IsDefaultPort() : Bool;
	function get_IsFile() : Bool;
	function get_IsLoopback() : Bool;
	function get_IsUnc() : Bool;
	function get_LocalPath() : String;
	function get_OriginalString() : String;
	function get_PathAndQuery() : String;
	function get_Port() : Int;
	function get_Query() : String;
	function get_Scheme() : String;
	function get_Segments() : cs.NativeArray<String>;
	function get_UserEscaped() : Bool;
	function get_UserInfo() : String;
	@:readOnly static var SchemeDelimiter(default,never) : String;
	@:readOnly static var UriSchemeFile(default,never) : String;
	@:readOnly static var UriSchemeFtp(default,never) : String;
	@:readOnly static var UriSchemeGopher(default,never) : String;
	@:readOnly static var UriSchemeHttp(default,never) : String;
	@:readOnly static var UriSchemeHttps(default,never) : String;
	@:readOnly static var UriSchemeMailto(default,never) : String;
	@:readOnly static var UriSchemeNetPipe(default,never) : String;
	@:readOnly static var UriSchemeNetTcp(default,never) : String;
	@:readOnly static var UriSchemeNews(default,never) : String;
	@:readOnly static var UriSchemeNntp(default,never) : String;
	static function CheckHostName(name : String) : UriHostNameType;
	static function CheckSchemeName(schemeName : String) : Bool;
	static function Compare(uri1 : Uri, uri2 : Uri, partsToCompare : UriComponents, compareFormat : UriFormat, comparisonType : StringComparison) : Int;
	static function EscapeDataString(stringToEscape : String) : String;
	@:protected private static function EscapeString(str : String) : String;
	static function EscapeUriString(stringToEscape : String) : String;
	static function FromHex(digit : cs.types.Char16) : Int;
	static function HexEscape(character : cs.types.Char16) : String;
	static function HexUnescape(pattern : String, index : cs.Ref<Int>) : cs.types.Char16;
	@:protected private static function IsExcludedCharacter(character : cs.types.Char16) : Bool;
	static function IsHexDigit(character : cs.types.Char16) : Bool;
	static function IsHexEncoding(pattern : String, index : Int) : Bool;
	static function IsWellFormedUriString(uriString : String, uriKind : UriKind) : Bool;
	@:overload(function(uriString : String, uriKind : UriKind, result : cs.Out<Uri>) : Bool {})
	@:overload(function(baseUri : Uri, relativeUri : Uri, result : cs.Out<Uri>) : Bool {})
	static function TryCreate(baseUri : Uri, relativeUri : String, result : cs.Out<Uri>) : Bool;
	static function UnescapeDataString(stringToUnescape : String) : String;
	static function op_Equality(uri1 : Uri, uri2 : Uri) : Bool;
	static function op_Inequality(uri1 : Uri, uri2 : Uri) : Bool;
}
