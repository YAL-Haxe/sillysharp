package cs.system.security.permissions;

@:nativeGen @:libType @:csNative @:native("System.Security.Permissions.StrongNamePublicKeyBlob") extern final class StrongNamePublicKeyBlob {
	function new(publicKey : cs.NativeArray<cs.types.UInt8>) : Void;
	function ToString() : String;
}
