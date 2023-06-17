package cs.system.security;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Security.IPermission") extern interface IPermission extends ISecurityEncodable {
	function Copy() : IPermission;
	function Demand() : Void;
	function Intersect(target : IPermission) : IPermission;
	function IsSubsetOf(target : IPermission) : Bool;
	function Union(target : IPermission) : IPermission;
}
