package cs.system.reflection;

@:nativeGen @:libType @:csNative @:native("System.Reflection.ManifestResourceInfo") extern class ManifestResourceInfo {
	var FileName(get,never) : String;
	var ReferencedAssembly(get,never) : Assembly;
	var ResourceLocation(get,never) : ResourceLocation;
	function new(containingAssembly : Assembly, containingFileName : String, resourceLocation : ResourceLocation) : Void;
	function get_FileName() : String;
	function get_ReferencedAssembly() : Assembly;
	function get_ResourceLocation() : ResourceLocation;
}
