package cs.system.reflection.emit;

@:nativeGen @:libType @:csNative @:native("System.Reflection.Emit.ModuleBuilder") extern class ModuleBuilder extends cs.system.reflection.Module implements cs.system.runtime.interopservices._ModuleBuilder {
	var Assembly(get,never) : cs.system.reflection.Assembly;
	var FullyQualifiedName(get,never) : String;
	var MetadataToken(get,never) : Int;
	var ModuleVersionId(get,never) : cs.system.Guid;
	var Name(get,never) : String;
	var ScopeName(get,never) : String;
	function CreateGlobalFunctions() : Void;
	function DefineDocument(url : String, language : cs.system.Guid, languageVendor : cs.system.Guid, documentType : cs.system.Guid) : cs.system.diagnostics.symbolstore.ISymbolDocumentWriter;
	function DefineEnum(name : String, visibility : cs.system.reflection.TypeAttributes, underlyingType : cs.system.Type) : EnumBuilder;
	@:overload(function(name : String, attributes : cs.system.reflection.MethodAttributes, returnType : cs.system.Type, parameterTypes : cs.NativeArray<cs.system.Type>) : MethodBuilder {})
	@:overload(function(name : String, attributes : cs.system.reflection.MethodAttributes, callingConvention : cs.system.reflection.CallingConventions, returnType : cs.system.Type, requiredReturnTypeCustomModifiers : cs.NativeArray<cs.system.Type>, optionalReturnTypeCustomModifiers : cs.NativeArray<cs.system.Type>, parameterTypes : cs.NativeArray<cs.system.Type>, requiredParameterTypeCustomModifiers : cs.NativeArray<cs.NativeArray<cs.system.Type>>, optionalParameterTypeCustomModifiers : cs.NativeArray<cs.NativeArray<cs.system.Type>>) : MethodBuilder {})
	function DefineGlobalMethod(name : String, attributes : cs.system.reflection.MethodAttributes, callingConvention : cs.system.reflection.CallingConventions, returnType : cs.system.Type, parameterTypes : cs.NativeArray<cs.system.Type>) : MethodBuilder;
	function DefineInitializedData(name : String, data : cs.NativeArray<cs.types.UInt8>, attributes : cs.system.reflection.FieldAttributes) : FieldBuilder;
	function DefineManifestResource(name : String, stream : cs.system.io.Stream, attribute : cs.system.reflection.ResourceAttributes) : Void;
	@:overload(function(name : String, dllName : String, attributes : cs.system.reflection.MethodAttributes, callingConvention : cs.system.reflection.CallingConventions, returnType : cs.system.Type, parameterTypes : cs.NativeArray<cs.system.Type>, nativeCallConv : cs.system.runtime.interopservices.CallingConvention, nativeCharSet : cs.system.runtime.interopservices.CharSet) : MethodBuilder {})
	function DefinePInvokeMethod(name : String, dllName : String, entryName : String, attributes : cs.system.reflection.MethodAttributes, callingConvention : cs.system.reflection.CallingConventions, returnType : cs.system.Type, parameterTypes : cs.NativeArray<cs.system.Type>, nativeCallConv : cs.system.runtime.interopservices.CallingConvention, nativeCharSet : cs.system.runtime.interopservices.CharSet) : MethodBuilder;
	@:overload(function(name : String, description : String, attribute : cs.system.reflection.ResourceAttributes) : cs.system.resources.IResourceWriter {})
	function DefineResource(name : String, description : String) : cs.system.resources.IResourceWriter;
	@:overload(function(name : String) : TypeBuilder {})
	@:overload(function(name : String, attr : cs.system.reflection.TypeAttributes, parent : cs.system.Type, packingSize : PackingSize, typesize : Int) : TypeBuilder {})
	@:overload(function(name : String, attr : cs.system.reflection.TypeAttributes, parent : cs.system.Type, packsize : PackingSize) : TypeBuilder {})
	@:overload(function(name : String, attr : cs.system.reflection.TypeAttributes, parent : cs.system.Type, typesize : Int) : TypeBuilder {})
	@:overload(function(name : String, attr : cs.system.reflection.TypeAttributes, parent : cs.system.Type, interfaces : cs.NativeArray<cs.system.Type>) : TypeBuilder {})
	@:overload(function(name : String, attr : cs.system.reflection.TypeAttributes, parent : cs.system.Type) : TypeBuilder {})
	function DefineType(name : String, attr : cs.system.reflection.TypeAttributes) : TypeBuilder;
	function DefineUninitializedData(name : String, size : Int, attributes : cs.system.reflection.FieldAttributes) : FieldBuilder;
	@:overload(function(resource : cs.NativeArray<cs.types.UInt8>) : Void {})
	function DefineUnmanagedResource(resourceFileName : String) : Void;
	function GetArrayMethod(arrayClass : cs.system.Type, methodName : String, callingConvention : cs.system.reflection.CallingConventions, returnType : cs.system.Type, parameterTypes : cs.NativeArray<cs.system.Type>) : cs.system.reflection.MethodInfo;
	function GetArrayMethodToken(arrayClass : cs.system.Type, methodName : String, callingConvention : cs.system.reflection.CallingConventions, returnType : cs.system.Type, parameterTypes : cs.NativeArray<cs.system.Type>) : MethodToken;
	function GetConstructorToken(con : cs.system.reflection.ConstructorInfo) : MethodToken;
	@:overload(function(inherit : Bool) : cs.NativeArray<Dynamic> {})
	function GetCustomAttributes(attributeType : cs.system.Type, inherit : Bool) : cs.NativeArray<Dynamic>;
	function GetField(name : String, bindingAttr : cs.system.reflection.BindingFlags) : cs.system.reflection.FieldInfo;
	function GetFieldToken(field : cs.system.reflection.FieldInfo) : FieldToken;
	function GetFields(bindingFlags : cs.system.reflection.BindingFlags) : cs.NativeArray<cs.system.reflection.FieldInfo>;
	@:protected private function GetMethodImpl(name : String, bindingAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, callConvention : cs.system.reflection.CallingConventions, types : cs.NativeArray<cs.system.Type>, modifiers : cs.NativeArray<cs.system.reflection.ParameterModifier>) : cs.system.reflection.MethodInfo;
	function GetMethodToken(method : cs.system.reflection.MethodInfo) : MethodToken;
	function GetMethods(bindingFlags : cs.system.reflection.BindingFlags) : cs.NativeArray<cs.system.reflection.MethodInfo>;
	@:overload(function(sigBytes : cs.NativeArray<cs.types.UInt8>, sigLength : Int) : SignatureToken {})
	function GetSignatureToken(sigHelper : SignatureHelper) : SignatureToken;
	function GetStringConstant(str : String) : StringToken;
	function GetSymWriter() : cs.system.diagnostics.symbolstore.ISymbolWriter;
	@:overload(function(className : String) : cs.system.Type {})
	@:overload(function(className : String, throwOnError : Bool, ignoreCase : Bool) : cs.system.Type {})
	function GetType(className : String, ignoreCase : Bool) : cs.system.Type;
	@:overload(function(type : cs.system.Type) : TypeToken {})
	function GetTypeToken(name : String) : TypeToken;
	function GetTypes() : cs.NativeArray<cs.system.Type>;
	function IsDefined(attributeType : cs.system.Type, inherit : Bool) : Bool;
	function IsResource() : Bool;
	function IsTransient() : Bool;
	function ResolveField(metadataToken : Int, genericTypeArguments : cs.NativeArray<cs.system.Type>, genericMethodArguments : cs.NativeArray<cs.system.Type>) : cs.system.reflection.FieldInfo;
	function ResolveMember(metadataToken : Int, genericTypeArguments : cs.NativeArray<cs.system.Type>, genericMethodArguments : cs.NativeArray<cs.system.Type>) : cs.system.reflection.MemberInfo;
	function ResolveMethod(metadataToken : Int, genericTypeArguments : cs.NativeArray<cs.system.Type>, genericMethodArguments : cs.NativeArray<cs.system.Type>) : cs.system.reflection.MethodBase;
	function ResolveSignature(metadataToken : Int) : cs.NativeArray<cs.types.UInt8>;
	function ResolveString(metadataToken : Int) : String;
	function ResolveType(metadataToken : Int, genericTypeArguments : cs.NativeArray<cs.system.Type>, genericMethodArguments : cs.NativeArray<cs.system.Type>) : cs.system.Type;
	@:overload(function(customBuilder : CustomAttributeBuilder) : Void {})
	function SetCustomAttribute(con : cs.system.reflection.ConstructorInfo, binaryAttribute : cs.NativeArray<cs.types.UInt8>) : Void;
	function SetSymCustomAttribute(name : String, data : cs.NativeArray<cs.types.UInt8>) : Void;
	function SetUserEntryPoint(entryPoint : cs.system.reflection.MethodInfo) : Void;
	function get_Assembly() : cs.system.reflection.Assembly;
	function get_FullyQualifiedName() : String;
	function get_MetadataToken() : Int;
	function get_ModuleVersionId() : cs.system.Guid;
	function get_Name() : String;
	function get_ScopeName() : String;
}
