package sf.type;
import sf.type.SfBuffer;
import sf.type.SfType;

/**
 * ...
 * @author YellowAfterlife
 */
class SfBufferUses {
	public var generics = false;
	public var lines:Array<String> = [];
	public var fqToShort:Map<String, String> = new Map();
	public var shortCount:Map<String, Int> = new Map();
	public function new() {
		
	}
	public function shorten(t:SfType) {
		var fq = t.fqPath;
		if (fq == t.name) return fq;
		var short = fqToShort[fq];
		if (short == null) {
			short = t.name;
			var n = shortCount[short];
			if (n != null) {
				short += "_" + n++;
			} else n = 1;
			shortCount[short] = n;
			fqToShort[fq] = short;
			lines.push('using $short = $fq;');
		}
		return short;
	}
	public function printTo(init:SfBuffer) {
		if (generics) SfCore.printf(init, "using System.Collections.Generic;\n");
		for (line in lines) {
			init.add(line);
			init.addLine();
		}
	}
}