package cs.system.security;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Security.ISecurityEncodable") extern interface ISecurityEncodable {
	function FromXml(e : SecurityElement) : Void;
	function ToXml() : SecurityElement;
}
