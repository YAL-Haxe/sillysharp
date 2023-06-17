package cs.system.collections.generic;
import cs.Syntax;

/**
 * ...
 * @author YellowAfterlife
 */
@:forward
abstract Dictionary<K,V>(Dictionary_2<K,V>)
from Dictionary_2<K,V>
to Dictionary_2<K,V> {
	@:arrayAccess inline function aget(k:K):V {
		return this.get_Item(k);
	}
}
/*@:native("System.Collections.Generic.Dictionary")
extern class Dictionary<K,V> {
	function new();
	
	function Clear():Void;
	function ContainsKey(key:K):Bool;
	function Remove(key:K):Void;
	
	inline function get_Item(k:K):V {
		return untyped this[k];
	}
	inline function set_Item(k:K, v:V):Void {
		untyped this[k] = v;
	}
}*/