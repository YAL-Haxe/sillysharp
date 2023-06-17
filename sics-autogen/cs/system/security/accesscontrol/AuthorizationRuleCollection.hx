package cs.system.security.accesscontrol;

@:nativeGen @:libType @:csNative @:native("System.Security.AccessControl.AuthorizationRuleCollection") extern final class AuthorizationRuleCollection extends cs.system.collections.ReadOnlyCollectionBase {
	function CopyTo(rules : cs.NativeArray<AuthorizationRule>, index : Int) : Void;
	function get_Item(index : Int) : AuthorizationRule;
}
