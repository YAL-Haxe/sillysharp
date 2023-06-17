package cs.system.security.policy;

@:nativeGen @:libType @:csNative @:native("System.Security.Policy.ApplicationTrust") extern final class ApplicationTrust extends EvidenceBase implements cs.system.security.ISecurityEncodable {
	var ApplicationIdentity(get,set) : cs.system.ApplicationIdentity;
	var DefaultGrantSet(get,set) : PolicyStatement;
	var ExtraInfo(get,set) : Dynamic;
	var FullTrustAssemblies(get,never) : cs.system.collections.generic.IList_1<StrongName>;
	var IsApplicationTrustedToRun(get,set) : Bool;
	var Persist(get,set) : Bool;
	@:overload(function() : Void {})
	@:overload(function(defaultGrantSet : cs.system.security.PermissionSet, fullTrustAssemblies : cs.system.collections.generic.IEnumerable_1<StrongName>) : Void {})
	function new(applicationIdentity : cs.system.ApplicationIdentity) : Void;
	function FromXml(element : cs.system.security.SecurityElement) : Void;
	function ToXml() : cs.system.security.SecurityElement;
	function get_ApplicationIdentity() : cs.system.ApplicationIdentity;
	function get_DefaultGrantSet() : PolicyStatement;
	function get_ExtraInfo() : Dynamic;
	function get_FullTrustAssemblies() : cs.system.collections.generic.IList_1<StrongName>;
	function get_IsApplicationTrustedToRun() : Bool;
	function get_Persist() : Bool;
	function set_ApplicationIdentity(value : cs.system.ApplicationIdentity) : cs.system.ApplicationIdentity;
	function set_DefaultGrantSet(value : PolicyStatement) : PolicyStatement;
	function set_ExtraInfo(value : Dynamic) : Dynamic;
	function set_IsApplicationTrustedToRun(value : Bool) : Bool;
	function set_Persist(value : Bool) : Bool;
}
