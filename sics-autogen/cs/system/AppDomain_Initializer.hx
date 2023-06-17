package cs.system;

@:nativeGen @:libType @:csNative @:native("System.AppDomain.Initializer") extern class AppDomain_Initializer {
	function new(initializer : AppDomainInitializer, arguments : cs.NativeArray<String>) : Void;
	function Initialize() : Void;
}
