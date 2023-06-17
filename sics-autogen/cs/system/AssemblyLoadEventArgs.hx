package cs.system;

@:nativeGen @:libType @:csNative @:native("System.AssemblyLoadEventArgs") extern class AssemblyLoadEventArgs extends EventArgs {
	var LoadedAssembly(get,never) : cs.system.reflection.Assembly;
	function new(loadedAssembly : cs.system.reflection.Assembly) : Void;
	function get_LoadedAssembly() : cs.system.reflection.Assembly;
}
