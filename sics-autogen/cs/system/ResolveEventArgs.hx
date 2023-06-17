package cs.system;

@:nativeGen @:libType @:csNative @:native("System.ResolveEventArgs") extern class ResolveEventArgs extends EventArgs {
	var Name(get,never) : String;
	var RequestingAssembly(get,never) : cs.system.reflection.Assembly;
	@:overload(function(name : String) : Void {})
	function new(name : String, requestingAssembly : cs.system.reflection.Assembly) : Void;
	function get_Name() : String;
	function get_RequestingAssembly() : cs.system.reflection.Assembly;
}
