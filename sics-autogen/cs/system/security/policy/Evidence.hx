package cs.system.security.policy;

@:nativeGen @:libType @:csNative @:native("System.Security.Policy.Evidence") extern final class Evidence implements cs.system.collections.ICollection implements cs.system.collections.IEnumerable {
	var Count(get,never) : Int;
	var IsReadOnly(get,never) : Bool;
	var IsSynchronized(get,never) : Bool;
	var Locked(get,set) : Bool;
	var SyncRoot(get,never) : Dynamic;
	@:overload(function() : Void {})
	@:overload(function(hostEvidence : cs.NativeArray<Dynamic>, assemblyEvidence : cs.NativeArray<Dynamic>) : Void {})
	function new(evidence : Evidence) : Void;
	function AddAssembly(id : Dynamic) : Void;
	function AddHost(id : Dynamic) : Void;
	function Clear() : Void;
	function CopyTo(array : cs.system.Array, index : Int) : Void;
	function GetAssemblyEnumerator() : cs.system.collections.IEnumerator;
	function GetEnumerator() : cs.system.collections.IEnumerator;
	function GetHostEnumerator() : cs.system.collections.IEnumerator;
	function Merge(evidence : Evidence) : Void;
	function RemoveType(t : cs.system.Type) : Void;
	function get_Count() : Int;
	function get_IsReadOnly() : Bool;
	function get_IsSynchronized() : Bool;
	function get_Locked() : Bool;
	function get_SyncRoot() : Dynamic;
	function set_Locked(value : Bool) : Bool;
}
