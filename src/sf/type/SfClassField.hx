package sf.type;
import haxe.macro.Type;

class SfClassField extends SfClassFieldImpl {
	public var isGetterOf:SfClassField = null;
	public var isSetterOf:SfClassField = null;
	public var isOverride:Bool = false;
	//public function new(parent:SfType, field:ClassField, inst:Bool){
	//	super(parent, field, inst);
	//}
	//
}
