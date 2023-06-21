package sf.opt;

import sf.SfCore.*;
import sf.opt.SfOptImpl;
import sf.type.expr.SfExprDef.*;
import sf.type.*;
import sf.type.expr.*;
using sf.type.expr.SfExprTools;

/**
 * ...
 * @author YellowAfterlife
 */
class SicsOptString extends SfOptImpl {
	override public function apply():Void {
		var string:SfClass = cast sfGenerator.realMap["String"];
		if (string == null) return;
		var cf:SfClassField;
		inline function ren(name:String, newName:String) {
			cf = string.realMap[name];
			if (cf != null) string.renameField(cf, newName);
		}
		ren("length", "Length");
		ren("toLowerCase", "ToLower");
		ren("toUpperCase", "ToUpper");
		ren("substring", "Substring");
	}
}