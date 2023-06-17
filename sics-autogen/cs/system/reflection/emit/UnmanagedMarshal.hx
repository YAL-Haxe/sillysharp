package cs.system.reflection.emit;

@:nativeGen @:libType @:csNative @:native("System.Reflection.Emit.UnmanagedMarshal") extern final class UnmanagedMarshal {
	var BaseType(get,never) : cs.system.runtime.interopservices.UnmanagedType;
	var ElementCount(get,never) : Int;
	var GetUnmanagedType(get,never) : cs.system.runtime.interopservices.UnmanagedType;
	var IIDGuid(get,never) : cs.system.Guid;
	function get_BaseType() : cs.system.runtime.interopservices.UnmanagedType;
	function get_ElementCount() : Int;
	function get_GetUnmanagedType() : cs.system.runtime.interopservices.UnmanagedType;
	function get_IIDGuid() : cs.system.Guid;
	static function DefineByValArray(elemCount : Int) : UnmanagedMarshal;
	static function DefineByValTStr(elemCount : Int) : UnmanagedMarshal;
	static function DefineLPArray(elemType : cs.system.runtime.interopservices.UnmanagedType) : UnmanagedMarshal;
	static function DefineSafeArray(elemType : cs.system.runtime.interopservices.UnmanagedType) : UnmanagedMarshal;
	static function DefineUnmanagedMarshal(unmanagedType : cs.system.runtime.interopservices.UnmanagedType) : UnmanagedMarshal;
}
