package cs.system.runtime.remoting.contexts;

@:nativeGen @:libType @:csNative @:native("System.Runtime.Remoting.Contexts.Context") extern class Context {
	var ContextID(get,never) : Int;
	var ContextProperties(get,never) : cs.NativeArray<IContextProperty>;
	function new() : Void;
	function DoCallBack(deleg : CrossContextDelegate) : Void;
	function Freeze() : Void;
	function GetProperty(name : String) : IContextProperty;
	function SetProperty(prop : IContextProperty) : Void;
	function ToString() : String;
	function get_ContextID() : Int;
	function get_ContextProperties() : cs.NativeArray<IContextProperty>;
	static var DefaultContext(get,never) : Context;
	static function AllocateDataSlot() : cs.system.LocalDataStoreSlot;
	static function AllocateNamedDataSlot(name : String) : cs.system.LocalDataStoreSlot;
	static function FreeNamedDataSlot(name : String) : Void;
	static function GetData(slot : cs.system.LocalDataStoreSlot) : Dynamic;
	static function GetNamedDataSlot(name : String) : cs.system.LocalDataStoreSlot;
	static function RegisterDynamicProperty(prop : IDynamicProperty, obj : cs.system.ContextBoundObject, ctx : Context) : Bool;
	static function SetData(slot : cs.system.LocalDataStoreSlot, data : Dynamic) : Void;
	static function UnregisterDynamicProperty(name : String, obj : cs.system.ContextBoundObject, ctx : Context) : Bool;
	static function get_DefaultContext() : Context;
}
