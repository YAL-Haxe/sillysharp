package sf.type;
import sf.type.SfBuffer;
import sf.SfCore.*;

class SfEnum extends SfEnumImpl {
	override public function printTo(out:SfBuffer, init:SfBuffer):Void {
		if (isHidden) return;
		if (pack.length > 0) {
			var _pack = pack.map(sfGenerator.getVarName);
			printf(out, "namespace %s;\n", _pack.join("."));
		}
		printf(out, "enum %s {%(+\n)", name);
		var sep = false;
		for (ctr in ctrList) {
			inline function addSep() {
				if (sep) {
					printf(out, "\n\n");
				} else {
					sep = true;
				}
				out.addSummaryComment(ctr.doc);
			}
			addSep();
			printf(out, "%s,", ctr.name);
		}
		printf(out, "%(-\n)}\n");
	}
}
