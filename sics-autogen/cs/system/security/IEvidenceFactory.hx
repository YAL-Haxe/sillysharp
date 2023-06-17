package cs.system.security;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Security.IEvidenceFactory") extern interface IEvidenceFactory {
	var Evidence(get,never) : cs.system.security.policy.Evidence;
	function get_Evidence() : cs.system.security.policy.Evidence;
}
