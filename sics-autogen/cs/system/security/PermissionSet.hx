package cs.system.security;

@:nativeGen @:libType @:csNative @:native("System.Security.PermissionSet") extern class PermissionSet implements ISecurityEncodable implements cs.system.collections.ICollection implements cs.system.collections.IEnumerable implements IStackWalk implements cs.system.runtime.serialization.IDeserializationCallback {
	var Count(get,never) : Int;
	var IsReadOnly(get,never) : Bool;
	var IsSynchronized(get,never) : Bool;
	var SyncRoot(get,never) : Dynamic;
	@:overload(function(state : cs.system.security.permissions.PermissionState) : Void {})
	function new(permSet : PermissionSet) : Void;
	function AddPermission(perm : IPermission) : IPermission;
	function Assert() : Void;
	function ContainsNonCodeAccessPermissions() : Bool;
	function Copy() : PermissionSet;
	function CopyTo(array : cs.system.Array, index : Int) : Void;
	function Demand() : Void;
	function Deny() : Void;
	function FromXml(et : SecurityElement) : Void;
	function GetEnumerator() : cs.system.collections.IEnumerator;
	function GetPermission(permClass : cs.system.Type) : IPermission;
	function Intersect(other : PermissionSet) : PermissionSet;
	function IsEmpty() : Bool;
	function IsSubsetOf(target : PermissionSet) : Bool;
	function IsUnrestricted() : Bool;
	function PermitOnly() : Void;
	function RemovePermission(permClass : cs.system.Type) : IPermission;
	function SetPermission(perm : IPermission) : IPermission;
	function ToString() : String;
	function ToXml() : SecurityElement;
	function Union(other : PermissionSet) : PermissionSet;
	function get_Count() : Int;
	function get_IsReadOnly() : Bool;
	function get_IsSynchronized() : Bool;
	function get_SyncRoot() : Dynamic;
	static function ConvertPermissionSet(inFormat : String, inData : cs.NativeArray<cs.types.UInt8>, outFormat : String) : cs.NativeArray<cs.types.UInt8>;
	static function RevertAssert() : Void;
}
