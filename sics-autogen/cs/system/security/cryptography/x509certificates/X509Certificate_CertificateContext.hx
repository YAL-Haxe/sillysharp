package cs.system.security.cryptography.x509certificates;

@:nativeGen @:struct @:libType @:csNative @:native("System.Security.Cryptography.X509Certificates.X509Certificate.CertificateContext") extern final class X509Certificate_CertificateContext extends cs.system.ValueType {
	var cbCertEncoded : UInt;
	var dwCertEncodingType : UInt;
	var hCertStore : cs.system.IntPtr;
	var pCertInfo : cs.system.IntPtr;
	var pbCertEncoded : cs.system.IntPtr;
}
