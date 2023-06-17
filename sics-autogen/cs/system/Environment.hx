package cs.system;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Environment") extern final class Environment {
	static var CommandLine(get,never) : String;
	static var CurrentDirectory(get,set) : String;
	static var CurrentManagedThreadId(get,never) : Int;
	static var ExitCode(get,set) : Int;
	static var HasShutdownStarted(get,never) : Bool;
	static var Is64BitOperatingSystem(get,never) : Bool;
	static var Is64BitProcess(get,never) : Bool;
	static var MachineName(get,never) : String;
	static var NewLine(get,never) : String;
	static var OSVersion(get,never) : OperatingSystem;
	static var ProcessorCount(get,never) : Int;
	static var StackTrace(get,never) : String;
	static var SystemDirectory(get,never) : String;
	static var SystemPageSize(get,never) : Int;
	static var TickCount(get,never) : Int;
	static var UserDomainName(get,never) : String;
	static var UserInteractive(get,never) : Bool;
	static var UserName(get,never) : String;
	static var Version(get,never) : Version;
	static var WorkingSet(get,never) : haxe.Int64;
	static function Exit(exitCode : Int) : Void;
	static function ExpandEnvironmentVariables(name : String) : String;
	@:overload(function(message : String) : Void {})
	static function FailFast(message : String, exception : Exception) : Void;
	static function GetCommandLineArgs() : cs.NativeArray<String>;
	@:overload(function(variable : String) : String {})
	static function GetEnvironmentVariable(variable : String, target : EnvironmentVariableTarget) : String;
	@:overload(function() : cs.system.collections.IDictionary {})
	static function GetEnvironmentVariables(target : EnvironmentVariableTarget) : cs.system.collections.IDictionary;
	@:overload(function(folder : Environment_SpecialFolder) : String {})
	static function GetFolderPath(folder : Environment_SpecialFolder, option : Environment_SpecialFolderOption) : String;
	static function GetLogicalDrives() : cs.NativeArray<String>;
	@:overload(function(variable : String, value : String) : Void {})
	static function SetEnvironmentVariable(variable : String, value : String, target : EnvironmentVariableTarget) : Void;
	static function get_CommandLine() : String;
	static function get_CurrentDirectory() : String;
	static function get_CurrentManagedThreadId() : Int;
	static function get_ExitCode() : Int;
	static function get_HasShutdownStarted() : Bool;
	static function get_Is64BitOperatingSystem() : Bool;
	static function get_Is64BitProcess() : Bool;
	static function get_MachineName() : String;
	static function get_NewLine() : String;
	static function get_OSVersion() : OperatingSystem;
	static function get_ProcessorCount() : Int;
	static function get_StackTrace() : String;
	static function get_SystemDirectory() : String;
	static function get_SystemPageSize() : Int;
	static function get_TickCount() : Int;
	static function get_UserDomainName() : String;
	static function get_UserInteractive() : Bool;
	static function get_UserName() : String;
	static function get_Version() : Version;
	static function get_WorkingSet() : haxe.Int64;
	static function set_CurrentDirectory(value : String) : String;
	static function set_ExitCode(value : Int) : Int;
}
