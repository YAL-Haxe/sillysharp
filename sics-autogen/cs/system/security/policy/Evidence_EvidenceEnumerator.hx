package cs.system.security.policy;

@:nativeGen @:libType @:csNative @:native("System.Security.Policy.Evidence.EvidenceEnumerator") extern class Evidence_EvidenceEnumerator implements cs.system.collections.IEnumerator {
	var Current(get,never) : Dynamic;
	function new(hostenum : cs.system.collections.IEnumerator, assemblyenum : cs.system.collections.IEnumerator) : Void;
	function MoveNext() : Bool;
	function Reset() : Void;
	function get_Current() : Dynamic;
}
