package cs.system;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Attribute") extern class Attribute implements cs.system.runtime.interopservices._Attribute {
	var TypeId(get,never) : Dynamic;
	@:protected private function new() : Void;
	function IsDefaultAttribute() : Bool;
	function Match(obj : Dynamic) : Bool;
	function get_TypeId() : Dynamic;
	@:overload(function(element : cs.system.reflection.ParameterInfo, attributeType : Type) : Attribute {})
	@:overload(function(element : cs.system.reflection.MemberInfo, attributeType : Type, inherit : Bool) : Attribute {})
	@:overload(function(element : cs.system.reflection.ParameterInfo, attributeType : Type, inherit : Bool) : Attribute {})
	@:overload(function(element : cs.system.reflection.Assembly, attributeType : Type, inherit : Bool) : Attribute {})
	@:overload(function(element : cs.system.reflection.Module, attributeType : Type, inherit : Bool) : Attribute {})
	@:overload(function(element : cs.system.reflection.Module, attributeType : Type) : Attribute {})
	@:overload(function(element : cs.system.reflection.Assembly, attributeType : Type) : Attribute {})
	static function GetCustomAttribute(element : cs.system.reflection.MemberInfo, attributeType : Type) : Attribute;
	@:overload(function(element : cs.system.reflection.Assembly) : cs.NativeArray<Attribute> {})
	@:overload(function(element : cs.system.reflection.ParameterInfo, inherit : Bool) : cs.NativeArray<Attribute> {})
	@:overload(function(element : cs.system.reflection.MemberInfo, inherit : Bool) : cs.NativeArray<Attribute> {})
	@:overload(function(element : cs.system.reflection.Assembly, inherit : Bool) : cs.NativeArray<Attribute> {})
	@:overload(function(element : cs.system.reflection.Module, inherit : Bool) : cs.NativeArray<Attribute> {})
	@:overload(function(element : cs.system.reflection.MemberInfo, type : Type, inherit : Bool) : cs.NativeArray<Attribute> {})
	@:overload(function(element : cs.system.reflection.Module, attributeType : Type, inherit : Bool) : cs.NativeArray<Attribute> {})
	@:overload(function(element : cs.system.reflection.ParameterInfo, attributeType : Type, inherit : Bool) : cs.NativeArray<Attribute> {})
	@:overload(function(element : cs.system.reflection.Assembly, attributeType : Type, inherit : Bool) : cs.NativeArray<Attribute> {})
	@:overload(function(element : cs.system.reflection.MemberInfo, type : Type) : cs.NativeArray<Attribute> {})
	@:overload(function(element : cs.system.reflection.ParameterInfo, attributeType : Type) : cs.NativeArray<Attribute> {})
	@:overload(function(element : cs.system.reflection.Module, attributeType : Type) : cs.NativeArray<Attribute> {})
	@:overload(function(element : cs.system.reflection.Assembly, attributeType : Type) : cs.NativeArray<Attribute> {})
	@:overload(function(element : cs.system.reflection.Module) : cs.NativeArray<Attribute> {})
	@:overload(function(element : cs.system.reflection.MemberInfo) : cs.NativeArray<Attribute> {})
	static function GetCustomAttributes(element : cs.system.reflection.ParameterInfo) : cs.NativeArray<Attribute>;
	@:overload(function(element : cs.system.reflection.Module, attributeType : Type) : Bool {})
	@:overload(function(element : cs.system.reflection.ParameterInfo, attributeType : Type, inherit : Bool) : Bool {})
	@:overload(function(element : cs.system.reflection.Module, attributeType : Type, inherit : Bool) : Bool {})
	@:overload(function(element : cs.system.reflection.Assembly, attributeType : Type, inherit : Bool) : Bool {})
	@:overload(function(element : cs.system.reflection.MemberInfo, attributeType : Type, inherit : Bool) : Bool {})
	@:overload(function(element : cs.system.reflection.Assembly, attributeType : Type) : Bool {})
	@:overload(function(element : cs.system.reflection.MemberInfo, attributeType : Type) : Bool {})
	static function IsDefined(element : cs.system.reflection.ParameterInfo, attributeType : Type) : Bool;
}
