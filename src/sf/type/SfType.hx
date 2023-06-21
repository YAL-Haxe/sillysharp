package sf.type;
import haxe.macro.Type.BaseType;

class SfType extends SfTypeImpl {
	public var isCsNative:Bool;
	public var isSys:Bool;
	public var isSysGeneric:Bool;
	public function new(t:BaseType) {
		super(t);
		isCsNative = t.meta.has(":csNative");
		isSys = t.pack[0] == "cs" && t.pack[1] == "system" || t.pack[0] == "System";
		isSysGeneric = switch (t.pack) {
			case ["cs", "system", "collections", "generic"]: true;
			case ["System", "Collections", "Generic"]: true;
			default: false;
		}
	}
	
	public var fqPath(get, never):String;
	private var __fqPath:String = null;
	private function get_fqPath() {
		if (__fqPath != null) return __fqPath;
		if (exposePath != null) {
			__fqPath = exposePath;
			return __fqPath;
		}
		__fqPath = pack.concat([name]).join(".");
		return __fqPath;
	}
	//
}
