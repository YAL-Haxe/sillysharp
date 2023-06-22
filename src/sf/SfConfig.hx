package sf;

/**
 * ...
 * @author YellowAfterlife
 */
class SfConfig extends SfConfigImpl {
	
	public function new() {
		super();
		blockScoping = true;
		pretty = SfConfigImpl.bool("sf-pretty", true);
	}
	
	public static function init() {
		//
	}
}