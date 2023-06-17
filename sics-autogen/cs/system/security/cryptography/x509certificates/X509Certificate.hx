package cs.system.security.cryptography.x509certificates;

@:nativeGen @:libType @:csNative @:native("System.Security.Cryptography.X509Certificates.X509Certificate") extern class X509Certificate implements cs.system.runtime.serialization.IDeserializationCallback implements cs.system.runtime.serialization.ISerializable {
	var Handle(get,never) : cs.system.IntPtr;
	var Issuer(get,never) : String;
	var Subject(get,never) : String;
	@:overload(function(data : cs.NativeArray<cs.types.UInt8>) : Void {})
	@:overload(function(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void {})
	@:overload(function(fileName : String, password : cs.system.security.SecureString, keyStorageFlags : X509KeyStorageFlags) : Void {})
	@:overload(function(fileName : String, password : String, keyStorageFlags : X509KeyStorageFlags) : Void {})
	@:overload(function(fileName : String, password : cs.system.security.SecureString) : Void {})
	@:overload(function(fileName : String, password : String) : Void {})
	@:overload(function(fileName : String) : Void {})
	@:overload(function(rawData : cs.NativeArray<cs.types.UInt8>, password : cs.system.security.SecureString, keyStorageFlags : X509KeyStorageFlags) : Void {})
	@:overload(function(rawData : cs.NativeArray<cs.types.UInt8>, password : String, keyStorageFlags : X509KeyStorageFlags) : Void {})
	@:overload(function(rawData : cs.NativeArray<cs.types.UInt8>, password : cs.system.security.SecureString) : Void {})
	@:overload(function(rawData : cs.NativeArray<cs.types.UInt8>, password : String) : Void {})
	@:overload(function() : Void {})
	@:overload(function(cert : X509Certificate) : Void {})
	function new(handle : cs.system.IntPtr) : Void;
	@:overload(function(contentType : X509ContentType) : cs.NativeArray<cs.types.UInt8> {})
	@:overload(function(contentType : X509ContentType, password : cs.system.security.SecureString) : cs.NativeArray<cs.types.UInt8> {})
	function Export(contentType : X509ContentType, password : String) : cs.NativeArray<cs.types.UInt8>;
	function GetCertHash() : cs.NativeArray<cs.types.UInt8>;
	function GetCertHashString() : String;
	function GetEffectiveDateString() : String;
	function GetExpirationDateString() : String;
	function GetFormat() : String;
	function GetIssuerName() : String;
	function GetKeyAlgorithm() : String;
	function GetKeyAlgorithmParameters() : cs.NativeArray<cs.types.UInt8>;
	function GetKeyAlgorithmParametersString() : String;
	function GetName() : String;
	function GetPublicKey() : cs.NativeArray<cs.types.UInt8>;
	function GetPublicKeyString() : String;
	function GetRawCertData() : cs.NativeArray<cs.types.UInt8>;
	function GetRawCertDataString() : String;
	function GetSerialNumber() : cs.NativeArray<cs.types.UInt8>;
	function GetSerialNumberString() : String;
	@:overload(function(rawData : cs.NativeArray<cs.types.UInt8>) : Void {})
	@:overload(function(fileName : String, password : cs.system.security.SecureString, keyStorageFlags : X509KeyStorageFlags) : Void {})
	@:overload(function(fileName : String, password : String, keyStorageFlags : X509KeyStorageFlags) : Void {})
	@:overload(function(fileName : String) : Void {})
	@:overload(function(rawData : cs.NativeArray<cs.types.UInt8>, password : cs.system.security.SecureString, keyStorageFlags : X509KeyStorageFlags) : Void {})
	function Import(rawData : cs.NativeArray<cs.types.UInt8>, password : String, keyStorageFlags : X509KeyStorageFlags) : Void;
	function Reset() : Void;
	@:overload(function() : String {})
	function ToString(fVerbose : Bool) : String;
	function get_Handle() : cs.system.IntPtr;
	function get_Issuer() : String;
	function get_Subject() : String;
	static function CreateFromCertFile(filename : String) : X509Certificate;
	static function CreateFromSignedFile(filename : String) : X509Certificate;
	@:protected private static function FormatDate(date : cs.system.DateTime) : String;
}
