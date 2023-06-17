package cs.system.security.cryptography.x509certificates;

@:nativeGen @:native("System.Security.Cryptography.X509Certificates.X509ContentType") @:csNative extern enum X509ContentType {
	Unknown;
	Cert;
	SerializedCert;
	Pfx;
	Pkcs12;
	SerializedStore;
	Pkcs7;
	Authenticode;
}
