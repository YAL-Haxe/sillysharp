package cs.system.security.policy;

@:nativeGen @:libType @:csNative @:native("System.Security.Policy.StrongName") extern final class StrongName extends EvidenceBase implements IIdentityPermissionFactory implements IBuiltInEvidence {
	var Name(get,never) : String;
	var PublicKey(get,never) : cs.system.security.permissions.StrongNamePublicKeyBlob;
	var Version(get,never) : cs.system.Version;
	function new(blob : cs.system.security.permissions.StrongNamePublicKeyBlob, name : String, version : cs.system.Version) : Void;
	function Copy() : Dynamic;
	function CreateIdentityPermission(evidence : Evidence) : cs.system.security.IPermission;
	function ToString() : String;
	function get_Name() : String;
	function get_PublicKey() : cs.system.security.permissions.StrongNamePublicKeyBlob;
	function get_Version() : cs.system.Version;
}
