package sf.gen;
import haxe.macro.Context;
import sf.type.expr.SfExpr;
import sf.type.expr.SfExprCase;
import sf.type.SfBuffer;
import sf.type.SfPrintFlags;
import sf.SfCore.*;
using sf.type.expr.SfExprTools;

/**
 * ...
 * @author YellowAfterlife
 */
class SicsPrintBranching {
	public static function printIf(r:SfBuffer, c:SfExpr, t:SfExpr, x:SfExpr, small:Bool):Void {
		#if sics.verbose_brackets
		small = false;
		#end
		printf(r, "if`%x`", c);
		if (small && t.unpack().def.match(SfIf(_, _, _, _))) small = false;
		if (small && x != null) switch (x.def) {
			case SfIf(_, _, _): small = false;
			default: if (!x.isSmall()) small = false;
		}
		if (small) r.addExpr(t, SfPrintFlags.Stat); else r.addBlockExpr(t);
		if (x != null) {
			printf(r, "; else ");
			switch (x.def) {
				case SfIf(c, t, z, x): printIf(r, c, t, x, false);
				default: r.addExpr(x, SfPrintFlags.Stat);
			}
		}
	}
	
	public static var isInSwitchBlock:Bool = false;
	public static function printSwitch(r:SfBuffer, expr:SfExpr, cases:Array<SfExprCase>, cd:SfExpr) {
		var z:Bool;
		// enum data (if sf-hint is set):
		var expru = expr.unpack();
		//
		var hint = sfConfig.hint;
		printf(r, "switch`(%x)`{%(+\n)", expru);
		//
		var trail = false;
		var _isInSwitchBlock = isInSwitchBlock;
		isInSwitchBlock = true;
		// why does Haxe compiler shuffle the cases occasionally? I do not know.
		var caseSort = cases.map((c) -> { cc: c, pos: Context.getPosInfos(c.expr.getPos()).min });
		var hasDiff = false;
		caseSort.sort(function(a, b) {
			var d = a.pos - b.pos;
			if (d != 0) hasDiff = true;
			return d;
		});
		if (hasDiff) cases = caseSort.map((casePair) -> casePair.cc);
		//
		for (cc in cases) {
			if (trail) r.addLine(); else trail = true;
			// "case v1: case v2:"
			var cv = cc.values;
			for (k in 0 ... cv.length) {
				if (k > 0) r.addSep();
				printf(r, "case %w:", cv[k]);
			};
			// "$expr;"
			var x = cc.expr;
			z = x.isEmpty() ? null : !x.isSmall();
			if (z != null) {
				if (z) r.addLine(1); else r.addSep();
				r.addExpr(x, SfPrintFlags.StatWrap);
				r.addSemico();
			}
			if (!x.endsWithExits()) {
				if (z) r.addLine(0); else r.addSep();
				r.addString("break");
				r.addSemico();
			}
			if (z) r.indent--;
		} // for cases
		if (cd != null) {
			if (!cd.isEmpty()) {
				printf(r, "\ndefault:");
				z = !cd.isSmall();
				if (z) r.addLine(1); else r.addSep();
				r.addExpr(cd, SfPrintFlags.StatWrap);
				r.addSemico();
				if (z) r.indent -= 1;
			}
		}
		r.addLine(-1);
		r.addBlockClose();
		isInSwitchBlock = _isInSwitchBlock;
	}
}