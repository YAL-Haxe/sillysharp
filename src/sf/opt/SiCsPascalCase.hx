package sf.opt;
import sf.opt.SfOptImpl;
import sf.SfCore.*;
import sf.type.SfClass;
import sf.type.SfStruct;
import sf.type.SfType;

/**
 * ...
 * @author YellowAfterlife
 */
class SiCsPascalCase extends SfOptImpl {
	public static function toPascalCase(s:String):String {
		return s.charAt(0).toUpperCase() + s.substring(1);
	}
	
	static function checkType(t:SfType) {
		if (t.pack[0] == "cs" && t.pack[1] == "system") {
			t.pack.splice(0, 1);
			return true;
		}
		return t.meta.has(":pascalCase");
	}
	
	static inline function isRenamed(q:SfStruct) {
		return q.meta.has(":native") || q.meta.has(":expose");
	}
	
	static function applyToType(t:SfType) {
		if (isRenamed(t)) return;
		var tp = t.pack;
		for (i in 0 ... tp.length) tp[i] = toPascalCase(tp[i]);
		t.name = toPascalCase(t.name);
	}
	
	static function procClass(c:SfClass) {
		var apply = checkType(c);
		if (!apply && c.meta.has(":enum")) do {
			// Abstracts are named like com.pkg.Some,
			// and their implementation classes are named like com.pkg._Outer.Thing_Impl_
			// but most of metadata doesn't transfer to impl-class,
			// so we need to parse the realPath and resolve the abstract
			var path = c.realPath;
			if (!StringTools.endsWith(path, "_Impl_")) break;
			var dot = path.lastIndexOf(".");
			if (dot < 0) break;
			var dot2 = path.lastIndexOf(".", dot - 1);
			path = path.substring(0, dot2 + 1) + path.substring(dot + 1, path.length - 6);
			//
			var sfa = sfGenerator.realMap[path];
			if (sfa == null) break;
			apply = checkType(sfa);
		} while (false);
		if (!apply) return;
		applyToType(c);
		for (f in c.fieldList) {
			if (isRenamed(f)) continue;
			c.renameField(f, toPascalCase(f.name));
		}
	}
	
	override public function apply():Void {
		for (c in sfGenerator.classList) procClass(c);
	}
}