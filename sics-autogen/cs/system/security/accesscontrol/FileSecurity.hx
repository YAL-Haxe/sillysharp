package cs.system.security.accesscontrol;

@:nativeGen @:libType @:csNative @:native("System.Security.AccessControl.FileSecurity") extern final class FileSecurity extends FileSystemSecurity {
	@:overload(function() : Void {})
	function new(fileName : String, includeSections : AccessControlSections) : Void;
}
