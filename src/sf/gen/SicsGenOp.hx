package sf.gen;
import sf.type.SfBuffer;
import sf.type.expr.SfExpr;
import haxe.macro.Expr.Binop;
using sf.type.expr.SfExprTools;

/**
 * ...
 * @author YellowAfterlife
 */
class SicsGenOp {
	public static function printAssignOp(r:SfBuffer, op:Binop, ?ctx:SfExpr) {
		switch (op) {
			case OpAdd: r.addSepChar2("+".code, "=".code);
			case OpSub: r.addSepChar2("-".code, "=".code);
			case OpMult: r.addSepChar2("*".code, "=".code);
			case OpDiv: r.addSepChar2("/".code, "=".code);
			case OpMod: r.addSepChar2("%".code, "=".code);
			case OpAnd: r.addSepChar2("&".code, "=".code);
			case OpOr: r.addSepChar2("|".code, "=".code);
			case OpXor: r.addSepChar2("^".code, "=".code);
			default: {
				var et = "Assignment operator " + op + "is not supported.";
				if (ctx != null) {
					ctx.error(et);
				} else throw et;
			}
		}
	}
	
	public static function printBinOp(r:SfBuffer, op:Binop, ?ctx:SfExpr) {
		switch (op) {
			case OpAdd: r.addSepChar("+".code);
			case OpMult: r.addSepChar("*".code);
			case OpDiv: r.addSepChar("/".code);
			case OpAssign: r.addSepChar("=".code);
			case OpSub: r.addSepChar("-".code);
			case OpEq: r.addSepChar2("=".code, "=".code);
			case OpNotEq: r.addSepChar2("!".code, "=".code);
			case OpGt: r.addSepChar(">".code);
			case OpGte: r.addSepChar2(">".code, "=".code);
			case OpLt: r.addSepChar("<".code);
			case OpLte: r.addSepChar2("<".code, "=".code);
			case OpBoolAnd: r.addSepChar2("&".code, "&".code);
			case OpBoolOr: r.addSepChar2("|".code, "|".code);
			case OpMod: r.addSepChar("%".code);
			//
			case OpAnd: r.addSepChar("&".code);
			case OpOr: r.addSepChar("|".code);
			case OpXor: r.addSepChar("^".code);
			case OpShl: r.addSepChar2("<".code, "<".code);
			case OpShr: r.addSepChar2(">".code, ">".code);
			case OpUShr: r.addSepChar2(">".code, ">".code);
			//
			case OpAssignOp(o): printAssignOp(r, o, ctx);
			default: {
				var et = "Operator " + op + " is not supported.";
				if (ctx != null) {
					ctx.error(et);
				} else throw et;
			}
		}
	}
	
	public static function printSetOp(r:SfBuffer, op:Binop, ?ctx:SfExpr) {
		switch (op) {
			case OpAssignOp(o): printAssignOp(r, o, ctx);
			case OpAssign: r.addSepChar("=".code);
			default: {
				var et = "Expected an assignment operator.";
				if (ctx != null) {
					ctx.error(et);
				} else throw et;
			};
		}
	}
}