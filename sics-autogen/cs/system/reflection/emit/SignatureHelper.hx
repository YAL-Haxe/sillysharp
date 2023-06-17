package cs.system.reflection.emit;

@:nativeGen @:libType @:csNative @:native("System.Reflection.Emit.SignatureHelper") extern final class SignatureHelper implements cs.system.runtime.interopservices._SignatureHelper {
	@:overload(function(argument : cs.system.Type, pinned : Bool) : Void {})
	@:overload(function(clsArgument : cs.system.Type) : Void {})
	function AddArgument(argument : cs.system.Type, requiredCustomModifiers : cs.NativeArray<cs.system.Type>, optionalCustomModifiers : cs.NativeArray<cs.system.Type>) : Void;
	function AddArguments(arguments : cs.NativeArray<cs.system.Type>, requiredCustomModifiers : cs.NativeArray<cs.NativeArray<cs.system.Type>>, optionalCustomModifiers : cs.NativeArray<cs.NativeArray<cs.system.Type>>) : Void;
	function AddSentinel() : Void;
	function GetSignature() : cs.NativeArray<cs.types.UInt8>;
	function ToString() : String;
	static function GetFieldSigHelper(mod : cs.system.reflection.Module) : SignatureHelper;
	@:overload(function(mod : cs.system.reflection.Module) : SignatureHelper {})
	static function GetLocalVarSigHelper() : SignatureHelper;
	@:overload(function(callingConvention : cs.system.reflection.CallingConventions, returnType : cs.system.Type) : SignatureHelper {})
	@:overload(function(mod : cs.system.reflection.Module, returnType : cs.system.Type, parameterTypes : cs.NativeArray<cs.system.Type>) : SignatureHelper {})
	@:overload(function(mod : cs.system.reflection.Module, unmanagedCallConv : cs.system.runtime.interopservices.CallingConvention, returnType : cs.system.Type) : SignatureHelper {})
	@:overload(function(mod : cs.system.reflection.Module, callingConvention : cs.system.reflection.CallingConventions, returnType : cs.system.Type) : SignatureHelper {})
	static function GetMethodSigHelper(unmanagedCallingConvention : cs.system.runtime.interopservices.CallingConvention, returnType : cs.system.Type) : SignatureHelper;
	@:overload(function(mod : cs.system.reflection.Module, returnType : cs.system.Type, parameterTypes : cs.NativeArray<cs.system.Type>) : SignatureHelper {})
	@:overload(function(mod : cs.system.reflection.Module, callingConvention : cs.system.reflection.CallingConventions, returnType : cs.system.Type, requiredReturnTypeCustomModifiers : cs.NativeArray<cs.system.Type>, optionalReturnTypeCustomModifiers : cs.NativeArray<cs.system.Type>, parameterTypes : cs.NativeArray<cs.system.Type>, requiredParameterTypeCustomModifiers : cs.NativeArray<cs.NativeArray<cs.system.Type>>, optionalParameterTypeCustomModifiers : cs.NativeArray<cs.NativeArray<cs.system.Type>>) : SignatureHelper {})
	static function GetPropertySigHelper(mod : cs.system.reflection.Module, returnType : cs.system.Type, requiredReturnTypeCustomModifiers : cs.NativeArray<cs.system.Type>, optionalReturnTypeCustomModifiers : cs.NativeArray<cs.system.Type>, parameterTypes : cs.NativeArray<cs.system.Type>, requiredParameterTypeCustomModifiers : cs.NativeArray<cs.NativeArray<cs.system.Type>>, optionalParameterTypeCustomModifiers : cs.NativeArray<cs.NativeArray<cs.system.Type>>) : SignatureHelper;
}
