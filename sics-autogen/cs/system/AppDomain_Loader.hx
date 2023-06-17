package cs.system;

@:nativeGen @:libType @:csNative @:native("System.AppDomain.Loader") extern class AppDomain_Loader {
	function new(assembly : String) : Void;
	function Load() : Void;
}
