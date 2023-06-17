package cs.system.reflection.emit;

@:nativeGen @:libType @:csNative @:native("System.Reflection.Emit.ParameterBuilder") extern class ParameterBuilder implements cs.system.runtime.interopservices._ParameterBuilder {
	var Attributes(get,never) : Int;
	var IsIn(get,never) : Bool;
	var IsOptional(get,never) : Bool;
	var IsOut(get,never) : Bool;
	var Name(get,never) : String;
	var Position(get,never) : Int;
	function GetToken() : ParameterToken;
	function SetConstant(defaultValue : Dynamic) : Void;
	@:overload(function(customBuilder : CustomAttributeBuilder) : Void {})
	function SetCustomAttribute(con : cs.system.reflection.ConstructorInfo, binaryAttribute : cs.NativeArray<cs.types.UInt8>) : Void;
	function SetMarshal(unmanagedMarshal : UnmanagedMarshal) : Void;
	function get_Attributes() : Int;
	function get_IsIn() : Bool;
	function get_IsOptional() : Bool;
	function get_IsOut() : Bool;
	function get_Name() : String;
	function get_Position() : Int;
}
