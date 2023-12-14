unit Cert;

interface

type

HCkPublicKey = Pointer;
HCkBinData = Pointer;
HCkDateTime = Pointer;
HCkPrivateKey = Pointer;
HCkTask = Pointer;
HCkByteData = Pointer;
HCkString = Pointer;
HCkXmlCertVault = Pointer;
HCkJsonObject = Pointer;
HCkCertChain = Pointer;
HCkCert = Pointer;
HCkPkcs11 = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TCertAbortCheck = function(): Integer; cdecl;
TCertProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TCertPercentDone = function(pctDone: Integer): Integer; cdecl;
TCertTaskCompleted = procedure(task: HCkTask); cdecl;


function CkCert_Create: HCkCert; stdcall;
procedure CkCert_Dispose(handle: HCkCert); stdcall;

procedure CkCert_SetAbortCheck(objHandle: HCkCert; fn: TCertAbortCheck) stdcall;
procedure CkCert_SetProgressInfo(objHandle: HCkCert; fn: TCertProgressInfo) stdcall;
procedure CkCert_SetPercentDone(objHandle: HCkCert; fn: TCertPercentDone) stdcall;
procedure CkCert_SetTaskCompleted(objHandle: HCkCert; fn: TCertTaskCompleted) stdcall;
procedure CkCert_getAuthorityKeyId(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__authorityKeyId(objHandle: HCkCert): PWideChar; stdcall;

function CkCert_getAvoidWindowsPkAccess(objHandle: HCkCert): wordbool; stdcall;

procedure CkCert_putAvoidWindowsPkAccess(objHandle: HCkCert; newPropVal: wordbool); stdcall;

function CkCert_getCertVersion(objHandle: HCkCert): Integer; stdcall;

procedure CkCert_getCspName(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__cspName(objHandle: HCkCert): PWideChar; stdcall;

procedure CkCert_getDebugLogFilePath(objHandle: HCkCert; outPropVal: HCkString); stdcall;

procedure CkCert_putDebugLogFilePath(objHandle: HCkCert; newPropVal: PWideChar); stdcall;

function CkCert__debugLogFilePath(objHandle: HCkCert): PWideChar; stdcall;

function CkCert_getExpired(objHandle: HCkCert): wordbool; stdcall;

procedure CkCert_getExtendedKeyUsage(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__extendedKeyUsage(objHandle: HCkCert): PWideChar; stdcall;

function CkCert_getForClientAuthentication(objHandle: HCkCert): wordbool; stdcall;

function CkCert_getForCodeSigning(objHandle: HCkCert): wordbool; stdcall;

function CkCert_getForSecureEmail(objHandle: HCkCert): wordbool; stdcall;

function CkCert_getForServerAuthentication(objHandle: HCkCert): wordbool; stdcall;

function CkCert_getForTimeStamping(objHandle: HCkCert): wordbool; stdcall;

function CkCert_getHasKeyContainer(objHandle: HCkCert): wordbool; stdcall;

function CkCert_getIntendedKeyUsage(objHandle: HCkCert): LongWord; stdcall;

function CkCert_getIsRoot(objHandle: HCkCert): wordbool; stdcall;

procedure CkCert_getIssuerC(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__issuerC(objHandle: HCkCert): PWideChar; stdcall;

procedure CkCert_getIssuerCN(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__issuerCN(objHandle: HCkCert): PWideChar; stdcall;

procedure CkCert_getIssuerDN(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__issuerDN(objHandle: HCkCert): PWideChar; stdcall;

procedure CkCert_getIssuerE(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__issuerE(objHandle: HCkCert): PWideChar; stdcall;

procedure CkCert_getIssuerL(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__issuerL(objHandle: HCkCert): PWideChar; stdcall;

procedure CkCert_getIssuerO(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__issuerO(objHandle: HCkCert): PWideChar; stdcall;

procedure CkCert_getIssuerOU(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__issuerOU(objHandle: HCkCert): PWideChar; stdcall;

procedure CkCert_getIssuerS(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__issuerS(objHandle: HCkCert): PWideChar; stdcall;

procedure CkCert_getKeyContainerName(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__keyContainerName(objHandle: HCkCert): PWideChar; stdcall;

procedure CkCert_getLastErrorHtml(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__lastErrorHtml(objHandle: HCkCert): PWideChar; stdcall;

procedure CkCert_getLastErrorText(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__lastErrorText(objHandle: HCkCert): PWideChar; stdcall;

procedure CkCert_getLastErrorXml(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__lastErrorXml(objHandle: HCkCert): PWideChar; stdcall;

function CkCert_getLastMethodSuccess(objHandle: HCkCert): wordbool; stdcall;

procedure CkCert_putLastMethodSuccess(objHandle: HCkCert; newPropVal: wordbool); stdcall;

function CkCert_getMachineKeyset(objHandle: HCkCert): wordbool; stdcall;

procedure CkCert_getOcspUrl(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__ocspUrl(objHandle: HCkCert): PWideChar; stdcall;

function CkCert_getPrivateKeyExportable(objHandle: HCkCert): wordbool; stdcall;

function CkCert_getRevoked(objHandle: HCkCert): wordbool; stdcall;

procedure CkCert_getRfc822Name(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__rfc822Name(objHandle: HCkCert): PWideChar; stdcall;

function CkCert_getSelfSigned(objHandle: HCkCert): wordbool; stdcall;

procedure CkCert_getSerialDecimal(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__serialDecimal(objHandle: HCkCert): PWideChar; stdcall;

procedure CkCert_getSerialNumber(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__serialNumber(objHandle: HCkCert): PWideChar; stdcall;

procedure CkCert_getSha1Thumbprint(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__sha1Thumbprint(objHandle: HCkCert): PWideChar; stdcall;

function CkCert_getSignatureVerified(objHandle: HCkCert): wordbool; stdcall;

function CkCert_getSilent(objHandle: HCkCert): wordbool; stdcall;

function CkCert_getSmartCardNoDialog(objHandle: HCkCert): wordbool; stdcall;

procedure CkCert_putSmartCardNoDialog(objHandle: HCkCert; newPropVal: wordbool); stdcall;

procedure CkCert_getSmartCardPin(objHandle: HCkCert; outPropVal: HCkString); stdcall;

procedure CkCert_putSmartCardPin(objHandle: HCkCert; newPropVal: PWideChar); stdcall;

function CkCert__smartCardPin(objHandle: HCkCert): PWideChar; stdcall;

procedure CkCert_getSubjectAlternativeName(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__subjectAlternativeName(objHandle: HCkCert): PWideChar; stdcall;

procedure CkCert_getSubjectC(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__subjectC(objHandle: HCkCert): PWideChar; stdcall;

procedure CkCert_getSubjectCN(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__subjectCN(objHandle: HCkCert): PWideChar; stdcall;

procedure CkCert_getSubjectDN(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__subjectDN(objHandle: HCkCert): PWideChar; stdcall;

procedure CkCert_getSubjectE(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__subjectE(objHandle: HCkCert): PWideChar; stdcall;

procedure CkCert_getSubjectKeyId(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__subjectKeyId(objHandle: HCkCert): PWideChar; stdcall;

procedure CkCert_getSubjectL(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__subjectL(objHandle: HCkCert): PWideChar; stdcall;

procedure CkCert_getSubjectO(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__subjectO(objHandle: HCkCert): PWideChar; stdcall;

procedure CkCert_getSubjectOU(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__subjectOU(objHandle: HCkCert): PWideChar; stdcall;

procedure CkCert_getSubjectS(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__subjectS(objHandle: HCkCert): PWideChar; stdcall;

function CkCert_getTrustedRoot(objHandle: HCkCert): wordbool; stdcall;

procedure CkCert_getUncommonOptions(objHandle: HCkCert; outPropVal: HCkString); stdcall;

procedure CkCert_putUncommonOptions(objHandle: HCkCert; newPropVal: PWideChar); stdcall;

function CkCert__uncommonOptions(objHandle: HCkCert): PWideChar; stdcall;

procedure CkCert_getValidFromStr(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__validFromStr(objHandle: HCkCert): PWideChar; stdcall;

procedure CkCert_getValidToStr(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__validToStr(objHandle: HCkCert): PWideChar; stdcall;

function CkCert_getVerboseLogging(objHandle: HCkCert): wordbool; stdcall;

procedure CkCert_putVerboseLogging(objHandle: HCkCert; newPropVal: wordbool); stdcall;

procedure CkCert_getVersion(objHandle: HCkCert; outPropVal: HCkString); stdcall;

function CkCert__version(objHandle: HCkCert): PWideChar; stdcall;

function CkCert_CheckRevoked(objHandle: HCkCert): Integer; stdcall;

function CkCert_CheckSmartCardPin(objHandle: HCkCert): Integer; stdcall;

function CkCert_ExportCertDer(objHandle: HCkCert; outData: HCkByteData): wordbool; stdcall;

function CkCert_ExportCertDerBd(objHandle: HCkCert; cerData: HCkBinData): wordbool; stdcall;

function CkCert_ExportCertDerFile(objHandle: HCkCert; path: PWideChar): wordbool; stdcall;

function CkCert_ExportCertPem(objHandle: HCkCert; outStr: HCkString): wordbool; stdcall;

function CkCert__exportCertPem(objHandle: HCkCert): PWideChar; stdcall;

function CkCert_ExportCertPemFile(objHandle: HCkCert; path: PWideChar): wordbool; stdcall;

function CkCert_ExportCertXml(objHandle: HCkCert; outStr: HCkString): wordbool; stdcall;

function CkCert__exportCertXml(objHandle: HCkCert): PWideChar; stdcall;

function CkCert_ExportPrivateKey(objHandle: HCkCert): HCkPrivateKey; stdcall;

function CkCert_ExportPublicKey(objHandle: HCkCert): HCkPublicKey; stdcall;

function CkCert_ExportToPfxBd(objHandle: HCkCert; password: PWideChar; includeCertChain: wordbool; pfxData: HCkBinData): wordbool; stdcall;

function CkCert_ExportToPfxData(objHandle: HCkCert; password: PWideChar; includeCertChain: wordbool; outData: HCkByteData): wordbool; stdcall;

function CkCert_ExportToPfxFile(objHandle: HCkCert; pfxFilename: PWideChar; pfxPassword: PWideChar; bIncludeCertChain: wordbool): wordbool; stdcall;

function CkCert_FindIssuer(objHandle: HCkCert): HCkCert; stdcall;

function CkCert_GetCertChain(objHandle: HCkCert): HCkCertChain; stdcall;

function CkCert_GetEncoded(objHandle: HCkCert; outStr: HCkString): wordbool; stdcall;

function CkCert__getEncoded(objHandle: HCkCert): PWideChar; stdcall;

function CkCert_GetExtensionAsText(objHandle: HCkCert; oid: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkCert__getExtensionAsText(objHandle: HCkCert; oid: PWideChar): PWideChar; stdcall;

function CkCert_GetExtensionAsXml(objHandle: HCkCert; oid: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkCert__getExtensionAsXml(objHandle: HCkCert; oid: PWideChar): PWideChar; stdcall;

function CkCert_GetExtensionBd(objHandle: HCkCert; oid: PWideChar; bd: HCkBinData): wordbool; stdcall;

function CkCert_GetPrivateKeyPem(objHandle: HCkCert; outStr: HCkString): wordbool; stdcall;

function CkCert__getPrivateKeyPem(objHandle: HCkCert): PWideChar; stdcall;

function CkCert_GetPubKeyDer(objHandle: HCkCert; preferPkcs1: wordbool; bd: HCkBinData): wordbool; stdcall;

function CkCert_GetSignature(objHandle: HCkCert; bd: HCkBinData): wordbool; stdcall;

function CkCert_GetSpkiFingerprint(objHandle: HCkCert; hashAlg: PWideChar; encoding: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkCert__getSpkiFingerprint(objHandle: HCkCert; hashAlg: PWideChar; encoding: PWideChar): PWideChar; stdcall;

function CkCert_GetSubjectPart(objHandle: HCkCert; partNameOrOid: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkCert__getSubjectPart(objHandle: HCkCert; partNameOrOid: PWideChar): PWideChar; stdcall;

function CkCert_GetValidFromDt(objHandle: HCkCert): HCkDateTime; stdcall;

function CkCert_GetValidToDt(objHandle: HCkCert): HCkDateTime; stdcall;

function CkCert_HashOf(objHandle: HCkCert; part: PWideChar; hashAlg: PWideChar; encoding: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkCert__hashOf(objHandle: HCkCert; part: PWideChar; hashAlg: PWideChar; encoding: PWideChar): PWideChar; stdcall;

function CkCert_HasPrivateKey(objHandle: HCkCert): wordbool; stdcall;

function CkCert_LinkPkcs11(objHandle: HCkCert; session: HCkPkcs11): wordbool; stdcall;

function CkCert_LoadByCommonName(objHandle: HCkCert; cn: PWideChar): wordbool; stdcall;

function CkCert_LoadByEmailAddress(objHandle: HCkCert; emailAddress: PWideChar): wordbool; stdcall;

function CkCert_LoadByIssuerAndSerialNumber(objHandle: HCkCert; issuerCN: PWideChar; serialNumber: PWideChar): wordbool; stdcall;

function CkCert_LoadBySubjectOid(objHandle: HCkCert; oid: PWideChar; value: PWideChar): wordbool; stdcall;

function CkCert_LoadByThumbprint(objHandle: HCkCert; thumbprint: PWideChar; encoding: PWideChar): wordbool; stdcall;

function CkCert_LoadFromBase64(objHandle: HCkCert; encodedCert: PWideChar): wordbool; stdcall;

function CkCert_LoadFromBd(objHandle: HCkCert; certBytes: HCkBinData): wordbool; stdcall;

function CkCert_LoadFromBinary(objHandle: HCkCert; data: HCkByteData): wordbool; stdcall;

function CkCert_LoadFromBinary2(objHandle: HCkCert; pByteData: pbyte; szByteData: LongWord): wordbool; stdcall;

function CkCert_LoadFromFile(objHandle: HCkCert; path: PWideChar): wordbool; stdcall;

function CkCert_LoadFromSmartcard(objHandle: HCkCert; csp: PWideChar): wordbool; stdcall;

function CkCert_LoadPem(objHandle: HCkCert; strPem: PWideChar): wordbool; stdcall;

function CkCert_LoadPfxBd(objHandle: HCkCert; pfxData: HCkBinData; password: PWideChar): wordbool; stdcall;

function CkCert_LoadPfxData(objHandle: HCkCert; pfxData: HCkByteData; password: PWideChar): wordbool; stdcall;

function CkCert_LoadPfxData2(objHandle: HCkCert; pByteData: pbyte; szByteData: LongWord; password: PWideChar): wordbool; stdcall;

function CkCert_LoadPfxFile(objHandle: HCkCert; pfxPath: PWideChar; password: PWideChar): wordbool; stdcall;

function CkCert_LoadTaskResult(objHandle: HCkCert; task: HCkTask): wordbool; stdcall;

function CkCert_PemFileToDerFile(objHandle: HCkCert; fromPath: PWideChar; toPath: PWideChar): wordbool; stdcall;

function CkCert_SaveLastError(objHandle: HCkCert; path: PWideChar): wordbool; stdcall;

function CkCert_SaveToFile(objHandle: HCkCert; path: PWideChar): wordbool; stdcall;

function CkCert_SetCloudSigner(objHandle: HCkCert; json: HCkJsonObject): wordbool; stdcall;

function CkCert_SetFromEncoded(objHandle: HCkCert; encodedCert: PWideChar): wordbool; stdcall;

function CkCert_SetPrivateKey(objHandle: HCkCert; privKey: HCkPrivateKey): wordbool; stdcall;

function CkCert_SetPrivateKeyPem(objHandle: HCkCert; privKeyPem: PWideChar): wordbool; stdcall;

function CkCert_UploadToCloud(objHandle: HCkCert; jsonIn: HCkJsonObject; jsonOut: HCkJsonObject): wordbool; stdcall;

function CkCert_UploadToCloudAsync(objHandle: HCkCert; jsonIn: HCkJsonObject; jsonOut: HCkJsonObject): HCkTask; stdcall;

function CkCert_UseCertVault(objHandle: HCkCert; vault: HCkXmlCertVault): wordbool; stdcall;

function CkCert_VerifySignature(objHandle: HCkCert): wordbool; stdcall;

function CkCert_X509PKIPathv1(objHandle: HCkCert; outStr: HCkString): wordbool; stdcall;

function CkCert__x509PKIPathv1(objHandle: HCkCert): PWideChar; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkCert_Create; external DLLName;
procedure CkCert_Dispose; external DLLName;

procedure CkCert_SetAbortCheck; external DLLName;
procedure CkCert_SetProgressInfo; external DLLName;
procedure CkCert_SetPercentDone; external DLLName;
procedure CkCert_SetTaskCompleted; external DLLName;
procedure CkCert_getAuthorityKeyId; external DLLName;
function CkCert__authorityKeyId; external DLLName;
function CkCert_getAvoidWindowsPkAccess; external DLLName;
procedure CkCert_putAvoidWindowsPkAccess; external DLLName;
function CkCert_getCertVersion; external DLLName;
procedure CkCert_getCspName; external DLLName;
function CkCert__cspName; external DLLName;
procedure CkCert_getDebugLogFilePath; external DLLName;
procedure CkCert_putDebugLogFilePath; external DLLName;
function CkCert__debugLogFilePath; external DLLName;
function CkCert_getExpired; external DLLName;
procedure CkCert_getExtendedKeyUsage; external DLLName;
function CkCert__extendedKeyUsage; external DLLName;
function CkCert_getForClientAuthentication; external DLLName;
function CkCert_getForCodeSigning; external DLLName;
function CkCert_getForSecureEmail; external DLLName;
function CkCert_getForServerAuthentication; external DLLName;
function CkCert_getForTimeStamping; external DLLName;
function CkCert_getHasKeyContainer; external DLLName;
function CkCert_getIntendedKeyUsage; external DLLName;
function CkCert_getIsRoot; external DLLName;
procedure CkCert_getIssuerC; external DLLName;
function CkCert__issuerC; external DLLName;
procedure CkCert_getIssuerCN; external DLLName;
function CkCert__issuerCN; external DLLName;
procedure CkCert_getIssuerDN; external DLLName;
function CkCert__issuerDN; external DLLName;
procedure CkCert_getIssuerE; external DLLName;
function CkCert__issuerE; external DLLName;
procedure CkCert_getIssuerL; external DLLName;
function CkCert__issuerL; external DLLName;
procedure CkCert_getIssuerO; external DLLName;
function CkCert__issuerO; external DLLName;
procedure CkCert_getIssuerOU; external DLLName;
function CkCert__issuerOU; external DLLName;
procedure CkCert_getIssuerS; external DLLName;
function CkCert__issuerS; external DLLName;
procedure CkCert_getKeyContainerName; external DLLName;
function CkCert__keyContainerName; external DLLName;
procedure CkCert_getLastErrorHtml; external DLLName;
function CkCert__lastErrorHtml; external DLLName;
procedure CkCert_getLastErrorText; external DLLName;
function CkCert__lastErrorText; external DLLName;
procedure CkCert_getLastErrorXml; external DLLName;
function CkCert__lastErrorXml; external DLLName;
function CkCert_getLastMethodSuccess; external DLLName;
procedure CkCert_putLastMethodSuccess; external DLLName;
function CkCert_getMachineKeyset; external DLLName;
procedure CkCert_getOcspUrl; external DLLName;
function CkCert__ocspUrl; external DLLName;
function CkCert_getPrivateKeyExportable; external DLLName;
function CkCert_getRevoked; external DLLName;
procedure CkCert_getRfc822Name; external DLLName;
function CkCert__rfc822Name; external DLLName;
function CkCert_getSelfSigned; external DLLName;
procedure CkCert_getSerialDecimal; external DLLName;
function CkCert__serialDecimal; external DLLName;
procedure CkCert_getSerialNumber; external DLLName;
function CkCert__serialNumber; external DLLName;
procedure CkCert_getSha1Thumbprint; external DLLName;
function CkCert__sha1Thumbprint; external DLLName;
function CkCert_getSignatureVerified; external DLLName;
function CkCert_getSilent; external DLLName;
function CkCert_getSmartCardNoDialog; external DLLName;
procedure CkCert_putSmartCardNoDialog; external DLLName;
procedure CkCert_getSmartCardPin; external DLLName;
procedure CkCert_putSmartCardPin; external DLLName;
function CkCert__smartCardPin; external DLLName;
procedure CkCert_getSubjectAlternativeName; external DLLName;
function CkCert__subjectAlternativeName; external DLLName;
procedure CkCert_getSubjectC; external DLLName;
function CkCert__subjectC; external DLLName;
procedure CkCert_getSubjectCN; external DLLName;
function CkCert__subjectCN; external DLLName;
procedure CkCert_getSubjectDN; external DLLName;
function CkCert__subjectDN; external DLLName;
procedure CkCert_getSubjectE; external DLLName;
function CkCert__subjectE; external DLLName;
procedure CkCert_getSubjectKeyId; external DLLName;
function CkCert__subjectKeyId; external DLLName;
procedure CkCert_getSubjectL; external DLLName;
function CkCert__subjectL; external DLLName;
procedure CkCert_getSubjectO; external DLLName;
function CkCert__subjectO; external DLLName;
procedure CkCert_getSubjectOU; external DLLName;
function CkCert__subjectOU; external DLLName;
procedure CkCert_getSubjectS; external DLLName;
function CkCert__subjectS; external DLLName;
function CkCert_getTrustedRoot; external DLLName;
procedure CkCert_getUncommonOptions; external DLLName;
procedure CkCert_putUncommonOptions; external DLLName;
function CkCert__uncommonOptions; external DLLName;
procedure CkCert_getValidFromStr; external DLLName;
function CkCert__validFromStr; external DLLName;
procedure CkCert_getValidToStr; external DLLName;
function CkCert__validToStr; external DLLName;
function CkCert_getVerboseLogging; external DLLName;
procedure CkCert_putVerboseLogging; external DLLName;
procedure CkCert_getVersion; external DLLName;
function CkCert__version; external DLLName;
function CkCert_CheckRevoked; external DLLName;
function CkCert_CheckSmartCardPin; external DLLName;
function CkCert_ExportCertDer; external DLLName;
function CkCert_ExportCertDerBd; external DLLName;
function CkCert_ExportCertDerFile; external DLLName;
function CkCert_ExportCertPem; external DLLName;
function CkCert__exportCertPem; external DLLName;
function CkCert_ExportCertPemFile; external DLLName;
function CkCert_ExportCertXml; external DLLName;
function CkCert__exportCertXml; external DLLName;
function CkCert_ExportPrivateKey; external DLLName;
function CkCert_ExportPublicKey; external DLLName;
function CkCert_ExportToPfxBd; external DLLName;
function CkCert_ExportToPfxData; external DLLName;
function CkCert_ExportToPfxFile; external DLLName;
function CkCert_FindIssuer; external DLLName;
function CkCert_GetCertChain; external DLLName;
function CkCert_GetEncoded; external DLLName;
function CkCert__getEncoded; external DLLName;
function CkCert_GetExtensionAsText; external DLLName;
function CkCert__getExtensionAsText; external DLLName;
function CkCert_GetExtensionAsXml; external DLLName;
function CkCert__getExtensionAsXml; external DLLName;
function CkCert_GetExtensionBd; external DLLName;
function CkCert_GetPrivateKeyPem; external DLLName;
function CkCert__getPrivateKeyPem; external DLLName;
function CkCert_GetPubKeyDer; external DLLName;
function CkCert_GetSignature; external DLLName;
function CkCert_GetSpkiFingerprint; external DLLName;
function CkCert__getSpkiFingerprint; external DLLName;
function CkCert_GetSubjectPart; external DLLName;
function CkCert__getSubjectPart; external DLLName;
function CkCert_GetValidFromDt; external DLLName;
function CkCert_GetValidToDt; external DLLName;
function CkCert_HashOf; external DLLName;
function CkCert__hashOf; external DLLName;
function CkCert_HasPrivateKey; external DLLName;
function CkCert_LinkPkcs11; external DLLName;
function CkCert_LoadByCommonName; external DLLName;
function CkCert_LoadByEmailAddress; external DLLName;
function CkCert_LoadByIssuerAndSerialNumber; external DLLName;
function CkCert_LoadBySubjectOid; external DLLName;
function CkCert_LoadByThumbprint; external DLLName;
function CkCert_LoadFromBase64; external DLLName;
function CkCert_LoadFromBd; external DLLName;
function CkCert_LoadFromBinary; external DLLName;
function CkCert_LoadFromBinary2; external DLLName;
function CkCert_LoadFromFile; external DLLName;
function CkCert_LoadFromSmartcard; external DLLName;
function CkCert_LoadPem; external DLLName;
function CkCert_LoadPfxBd; external DLLName;
function CkCert_LoadPfxData; external DLLName;
function CkCert_LoadPfxData2; external DLLName;
function CkCert_LoadPfxFile; external DLLName;
function CkCert_LoadTaskResult; external DLLName;
function CkCert_PemFileToDerFile; external DLLName;
function CkCert_SaveLastError; external DLLName;
function CkCert_SaveToFile; external DLLName;
function CkCert_SetCloudSigner; external DLLName;
function CkCert_SetFromEncoded; external DLLName;
function CkCert_SetPrivateKey; external DLLName;
function CkCert_SetPrivateKeyPem; external DLLName;
function CkCert_UploadToCloud; external DLLName;
function CkCert_UploadToCloudAsync; external DLLName;
function CkCert_UseCertVault; external DLLName;
function CkCert_VerifySignature; external DLLName;
function CkCert_X509PKIPathv1; external DLLName;
function CkCert__x509PKIPathv1; external DLLName;



end.
