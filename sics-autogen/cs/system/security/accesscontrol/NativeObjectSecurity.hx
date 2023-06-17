package cs.system.security.accesscontrol;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Security.AccessControl.NativeObjectSecurity") extern class NativeObjectSecurity extends CommonObjectSecurity {
	@:overload(function(isContainer : Bool, resourceType : ResourceType) : Void {})
	@:overload(function(isContainer : Bool, resourceType : ResourceType, name : String, includeSections : AccessControlSections, exceptionFromErrorCode : NativeObjectSecurity_ExceptionFromErrorCode, exceptionContext : Dynamic) : Void {})
	@:overload(function(isContainer : Bool, resourceType : ResourceType, handle : cs.system.runtime.interopservices.SafeHandle, includeSections : AccessControlSections, exceptionFromErrorCode : NativeObjectSecurity_ExceptionFromErrorCode, exceptionContext : Dynamic) : Void {})
	@:overload(function(isContainer : Bool, resourceType : ResourceType, name : String, includeSections : AccessControlSections) : Void {})
	@:overload(function(isContainer : Bool, resourceType : ResourceType, handle : cs.system.runtime.interopservices.SafeHandle, includeSections : AccessControlSections) : Void {})
	@:protected private function new(isContainer : Bool, resourceType : ResourceType, exceptionFromErrorCode : NativeObjectSecurity_ExceptionFromErrorCode, exceptionContext : Dynamic) : Void;
	@:overload(function(handle : cs.system.runtime.interopservices.SafeHandle, includeSections : AccessControlSections) : Void {})
	@:overload(function(name : String, includeSections : AccessControlSections, exceptionContext : Dynamic) : Void {})
	@:overload(function(handle : cs.system.runtime.interopservices.SafeHandle, includeSections : AccessControlSections, exceptionContext : Dynamic) : Void {})
	@:protected private function Persist(name : String, includeSections : AccessControlSections) : Void;
}
