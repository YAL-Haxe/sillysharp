package cs.system;

@:nativeGen @:libType @:csNative @:native("System.Activator") extern final class Activator implements cs.system.runtime.interopservices._Activator {
	@:overload(function(assemblyName : String, typeName : String) : cs.system.runtime.remoting.ObjectHandle {})
	static function CreateComInstanceFrom(assemblyName : String, typeName : String, hashValue : cs.NativeArray<cs.types.UInt8>, hashAlgorithm : cs.system.configuration.assemblies.AssemblyHashAlgorithm) : cs.system.runtime.remoting.ObjectHandle;
	@:overload(function(assemblyName : String, typeName : String) : cs.system.runtime.remoting.ObjectHandle {})
	@:overload(function(domain : AppDomain, assemblyName : String, typeName : String, ignoreCase : Bool, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, args : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo, activationAttributes : cs.NativeArray<Dynamic>) : cs.system.runtime.remoting.ObjectHandle {})
	@:overload(function(assemblyName : String, typeName : String, ignoreCase : Bool, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, args : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo, activationAttributes : cs.NativeArray<Dynamic>) : cs.system.runtime.remoting.ObjectHandle {})
	@:overload(function(type : Type, nonPublic : Bool) : Dynamic {})
	@:overload(function(type : Type, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, args : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo, activationAttributes : cs.NativeArray<Dynamic>) : Dynamic {})
	@:overload(function(type : Type, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, args : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo) : Dynamic {})
	@:overload(function(type : Type, args : cs.NativeArray<Dynamic>, activationAttributes : cs.NativeArray<Dynamic>) : Dynamic {})
	@:overload(function(type : Type, args : cs.NativeArray<Dynamic>) : Dynamic {})
	@:overload(function(type : Type) : Dynamic {})
	@:overload(function<M0>() : M0 {})
	@:overload(function(domain : AppDomain, assemblyName : String, typeName : String, ignoreCase : Bool, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, args : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo, activationAttributes : cs.NativeArray<Dynamic>, securityAttributes : cs.system.security.policy.Evidence) : cs.system.runtime.remoting.ObjectHandle {})
	@:overload(function(domain : AppDomain, assemblyName : String, typeName : String) : cs.system.runtime.remoting.ObjectHandle {})
	@:overload(function(activationContext : ActivationContext, activationCustomData : cs.NativeArray<String>) : cs.system.runtime.remoting.ObjectHandle {})
	@:overload(function(activationContext : ActivationContext) : cs.system.runtime.remoting.ObjectHandle {})
	@:overload(function(assemblyName : String, typeName : String, ignoreCase : Bool, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, args : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo, activationAttributes : cs.NativeArray<Dynamic>, securityInfo : cs.system.security.policy.Evidence) : cs.system.runtime.remoting.ObjectHandle {})
	static function CreateInstance(assemblyName : String, typeName : String, activationAttributes : cs.NativeArray<Dynamic>) : cs.system.runtime.remoting.ObjectHandle;
	@:overload(function(assemblyFile : String, typeName : String) : cs.system.runtime.remoting.ObjectHandle {})
	@:overload(function(domain : AppDomain, assemblyFile : String, typeName : String, ignoreCase : Bool, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, args : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo, activationAttributes : cs.NativeArray<Dynamic>) : cs.system.runtime.remoting.ObjectHandle {})
	@:overload(function(assemblyFile : String, typeName : String, ignoreCase : Bool, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, args : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo, activationAttributes : cs.NativeArray<Dynamic>) : cs.system.runtime.remoting.ObjectHandle {})
	@:overload(function(domain : AppDomain, assemblyFile : String, typeName : String, ignoreCase : Bool, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, args : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo, activationAttributes : cs.NativeArray<Dynamic>, securityAttributes : cs.system.security.policy.Evidence) : cs.system.runtime.remoting.ObjectHandle {})
	@:overload(function(domain : AppDomain, assemblyFile : String, typeName : String) : cs.system.runtime.remoting.ObjectHandle {})
	@:overload(function(assemblyFile : String, typeName : String, ignoreCase : Bool, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, args : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo, activationAttributes : cs.NativeArray<Dynamic>, securityInfo : cs.system.security.policy.Evidence) : cs.system.runtime.remoting.ObjectHandle {})
	static function CreateInstanceFrom(assemblyFile : String, typeName : String, activationAttributes : cs.NativeArray<Dynamic>) : cs.system.runtime.remoting.ObjectHandle;
	@:overload(function(type : Type, url : String) : Dynamic {})
	static function GetObject(type : Type, url : String, state : Dynamic) : Dynamic;
}
