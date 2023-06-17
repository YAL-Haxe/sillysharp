package cs.system.reflection.emit;

@:nativeGen @:libType @:csNative @:native("System.Reflection.Emit.EventBuilder") extern final class EventBuilder implements cs.system.runtime.interopservices._EventBuilder {
	function AddOtherMethod(mdBuilder : MethodBuilder) : Void;
	function GetEventToken() : EventToken;
	function SetAddOnMethod(mdBuilder : MethodBuilder) : Void;
	@:overload(function(customBuilder : CustomAttributeBuilder) : Void {})
	function SetCustomAttribute(con : cs.system.reflection.ConstructorInfo, binaryAttribute : cs.NativeArray<cs.types.UInt8>) : Void;
	function SetRaiseMethod(mdBuilder : MethodBuilder) : Void;
	function SetRemoveOnMethod(mdBuilder : MethodBuilder) : Void;
}
