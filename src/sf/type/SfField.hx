package sf.type;

class SfField extends SfFieldImpl {
	public var fqPath(get, never):String;
	private var __fqPath:String = null;
	private function get_fqPath() {
		if (__fqPath != null) return __fqPath;
		if (exposePath != null) {
			__fqPath = exposePath;
			return __fqPath;
		}
		__fqPath = parentType.fqPath + "." + name;
		return __fqPath;
	}
	//
}
