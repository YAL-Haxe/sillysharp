package cs.system.reflection;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Reflection.Module") extern class Module implements cs.system.runtime.serialization.ISerializable implements ICustomAttributeProvider implements cs.system.runtime.interopservices._Module {
	var Assembly(get,never) : Assembly;
	var CustomAttributes(get,never) : cs.system.collections.generic.IEnumerable_1<CustomAttributeData>;
	var FullyQualifiedName(get,never) : String;
	var MDStreamVersion(get,never) : Int;
	var MetadataToken(get,never) : Int;
	var ModuleHandle(get,never) : cs.system.ModuleHandle;
	var ModuleVersionId(get,never) : cs.system.Guid;
	var Name(get,never) : String;
	var ScopeName(get,never) : String;
	@:protected private function new() : Void;
	function FindTypes(filter : TypeFilter, filterCriteria : Dynamic) : cs.NativeArray<cs.system.Type>;
	@:overload(function(inherit : Bool) : cs.NativeArray<Dynamic> {})
	function GetCustomAttributes(attributeType : cs.system.Type, inherit : Bool) : cs.NativeArray<Dynamic>;
	function GetCustomAttributesData() : cs.system.collections.generic.IList_1<CustomAttributeData>;
	@:overload(function(name : String) : FieldInfo {})
	function GetField(name : String, bindingAttr : BindingFlags) : FieldInfo;
	@:overload(function() : cs.NativeArray<FieldInfo> {})
	function GetFields(bindingFlags : BindingFlags) : cs.NativeArray<FieldInfo>;
	@:overload(function(name : String) : MethodInfo {})
	@:overload(function(name : String, bindingAttr : BindingFlags, binder : Binder, callConvention : CallingConventions, types : cs.NativeArray<cs.system.Type>, modifiers : cs.NativeArray<ParameterModifier>) : MethodInfo {})
	function GetMethod(name : String, types : cs.NativeArray<cs.system.Type>) : MethodInfo;
	@:protected private function GetMethodImpl(name : String, bindingAttr : BindingFlags, binder : Binder, callConvention : CallingConventions, types : cs.NativeArray<cs.system.Type>, modifiers : cs.NativeArray<ParameterModifier>) : MethodInfo;
	@:overload(function() : cs.NativeArray<MethodInfo> {})
	function GetMethods(bindingFlags : BindingFlags) : cs.NativeArray<MethodInfo>;
	function GetObjectData(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void;
	function GetPEKind(peKind : cs.Out<PortableExecutableKinds>, machine : cs.Out<ImageFileMachine>) : Void;
	function GetSignerCertificate() : cs.system.security.cryptography.x509certificates.X509Certificate;
	@:overload(function(className : String) : cs.system.Type {})
	@:overload(function(className : String, throwOnError : Bool, ignoreCase : Bool) : cs.system.Type {})
	function GetType(className : String, ignoreCase : Bool) : cs.system.Type;
	function GetTypes() : cs.NativeArray<cs.system.Type>;
	function IsDefined(attributeType : cs.system.Type, inherit : Bool) : Bool;
	function IsResource() : Bool;
	@:overload(function(metadataToken : Int) : FieldInfo {})
	function ResolveField(metadataToken : Int, genericTypeArguments : cs.NativeArray<cs.system.Type>, genericMethodArguments : cs.NativeArray<cs.system.Type>) : FieldInfo;
	@:overload(function(metadataToken : Int) : MemberInfo {})
	function ResolveMember(metadataToken : Int, genericTypeArguments : cs.NativeArray<cs.system.Type>, genericMethodArguments : cs.NativeArray<cs.system.Type>) : MemberInfo;
	@:overload(function(metadataToken : Int) : MethodBase {})
	function ResolveMethod(metadataToken : Int, genericTypeArguments : cs.NativeArray<cs.system.Type>, genericMethodArguments : cs.NativeArray<cs.system.Type>) : MethodBase;
	function ResolveSignature(metadataToken : Int) : cs.NativeArray<cs.types.UInt8>;
	function ResolveString(metadataToken : Int) : String;
	@:overload(function(metadataToken : Int) : cs.system.Type {})
	function ResolveType(metadataToken : Int, genericTypeArguments : cs.NativeArray<cs.system.Type>, genericMethodArguments : cs.NativeArray<cs.system.Type>) : cs.system.Type;
	function ToString() : String;
	function get_Assembly() : Assembly;
	function get_CustomAttributes() : cs.system.collections.generic.IEnumerable_1<CustomAttributeData>;
	function get_FullyQualifiedName() : String;
	function get_MDStreamVersion() : Int;
	function get_MetadataToken() : Int;
	function get_ModuleHandle() : cs.system.ModuleHandle;
	function get_ModuleVersionId() : cs.system.Guid;
	function get_Name() : String;
	function get_ScopeName() : String;
	@:readOnly static var FilterTypeName(default,never) : TypeFilter;
	@:readOnly static var FilterTypeNameIgnoreCase(default,never) : TypeFilter;
	static function op_Equality(left : Module, right : Module) : Bool;
	static function op_Inequality(left : Module, right : Module) : Bool;
}
