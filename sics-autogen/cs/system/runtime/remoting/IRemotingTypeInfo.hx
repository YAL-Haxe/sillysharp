package cs.system.runtime.remoting;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Runtime.Remoting.IRemotingTypeInfo") extern interface IRemotingTypeInfo {
	var TypeName(get,set) : String;
	function CanCastTo(fromType : cs.system.Type, o : Dynamic) : Bool;
	function get_TypeName() : String;
	function set_TypeName(value : String) : String;
}
