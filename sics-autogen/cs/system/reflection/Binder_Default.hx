package cs.system.reflection;

@:nativeGen @:libType @:csNative @:native("System.Reflection.Binder.Default") extern final class Binder_Default extends Binder {
	function new() : Void;
	function BindToField(bindingAttr : BindingFlags, match : cs.NativeArray<FieldInfo>, value : Dynamic, culture : cs.system.globalization.CultureInfo) : FieldInfo;
	function BindToMethod(bindingAttr : BindingFlags, match : cs.NativeArray<MethodBase>, args : cs.Ref<cs.NativeArray<Dynamic>>, modifiers : cs.NativeArray<ParameterModifier>, culture : cs.system.globalization.CultureInfo, names : cs.NativeArray<String>, state : cs.Out<Dynamic>) : MethodBase;
	function ChangeType(value : Dynamic, type : cs.system.Type, culture : cs.system.globalization.CultureInfo) : Dynamic;
	function ReorderArgumentArray(args : cs.Ref<cs.NativeArray<Dynamic>>, state : Dynamic) : Void;
	function SelectMethod(bindingAttr : BindingFlags, match : cs.NativeArray<MethodBase>, types : cs.NativeArray<cs.system.Type>, modifiers : cs.NativeArray<ParameterModifier>) : MethodBase;
	function SelectProperty(bindingAttr : BindingFlags, match : cs.NativeArray<PropertyInfo>, returnType : cs.system.Type, indexes : cs.NativeArray<cs.system.Type>, modifiers : cs.NativeArray<ParameterModifier>) : PropertyInfo;
}
