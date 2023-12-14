unit XmlDSig;

interface

type

HCkPublicKey = Pointer;
HCkJsonObject = Pointer;
HCkHttp = Pointer;
HCkXmlDSig = Pointer;
HCkXml = Pointer;
HCkString = Pointer;
HCkStringArray = Pointer;
HCkStringBuilder = Pointer;
HCkXmlCertVault = Pointer;
HCkBinData = Pointer;


function CkXmlDSig_Create: HCkXmlDSig; stdcall;
procedure CkXmlDSig_Dispose(handle: HCkXmlDSig); stdcall;
procedure CkXmlDSig_getDebugLogFilePath(objHandle: HCkXmlDSig; outPropVal: HCkString); stdcall;

procedure CkXmlDSig_putDebugLogFilePath(objHandle: HCkXmlDSig; newPropVal: PWideChar); stdcall;

function CkXmlDSig__debugLogFilePath(objHandle: HCkXmlDSig): PWideChar; stdcall;

procedure CkXmlDSig_getExternalRefDirs(objHandle: HCkXmlDSig; outPropVal: HCkString); stdcall;

procedure CkXmlDSig_putExternalRefDirs(objHandle: HCkXmlDSig; newPropVal: PWideChar); stdcall;

function CkXmlDSig__externalRefDirs(objHandle: HCkXmlDSig): PWideChar; stdcall;

function CkXmlDSig_getIgnoreExternalRefs(objHandle: HCkXmlDSig): wordbool; stdcall;

procedure CkXmlDSig_putIgnoreExternalRefs(objHandle: HCkXmlDSig; newPropVal: wordbool); stdcall;

procedure CkXmlDSig_getLastErrorHtml(objHandle: HCkXmlDSig; outPropVal: HCkString); stdcall;

function CkXmlDSig__lastErrorHtml(objHandle: HCkXmlDSig): PWideChar; stdcall;

procedure CkXmlDSig_getLastErrorText(objHandle: HCkXmlDSig; outPropVal: HCkString); stdcall;

function CkXmlDSig__lastErrorText(objHandle: HCkXmlDSig): PWideChar; stdcall;

procedure CkXmlDSig_getLastErrorXml(objHandle: HCkXmlDSig; outPropVal: HCkString); stdcall;

function CkXmlDSig__lastErrorXml(objHandle: HCkXmlDSig): PWideChar; stdcall;

function CkXmlDSig_getLastMethodSuccess(objHandle: HCkXmlDSig): wordbool; stdcall;

procedure CkXmlDSig_putLastMethodSuccess(objHandle: HCkXmlDSig; newPropVal: wordbool); stdcall;

function CkXmlDSig_getNumReferences(objHandle: HCkXmlDSig): Integer; stdcall;

function CkXmlDSig_getNumSignatures(objHandle: HCkXmlDSig): Integer; stdcall;

function CkXmlDSig_getRefFailReason(objHandle: HCkXmlDSig): Integer; stdcall;

function CkXmlDSig_getSelector(objHandle: HCkXmlDSig): Integer; stdcall;

procedure CkXmlDSig_putSelector(objHandle: HCkXmlDSig; newPropVal: Integer); stdcall;

procedure CkXmlDSig_getUncommonOptions(objHandle: HCkXmlDSig; outPropVal: HCkString); stdcall;

procedure CkXmlDSig_putUncommonOptions(objHandle: HCkXmlDSig; newPropVal: PWideChar); stdcall;

function CkXmlDSig__uncommonOptions(objHandle: HCkXmlDSig): PWideChar; stdcall;

function CkXmlDSig_getVerboseLogging(objHandle: HCkXmlDSig): wordbool; stdcall;

procedure CkXmlDSig_putVerboseLogging(objHandle: HCkXmlDSig; newPropVal: wordbool); stdcall;

procedure CkXmlDSig_getVersion(objHandle: HCkXmlDSig; outPropVal: HCkString); stdcall;

function CkXmlDSig__version(objHandle: HCkXmlDSig): PWideChar; stdcall;

function CkXmlDSig_getWithComments(objHandle: HCkXmlDSig): wordbool; stdcall;

procedure CkXmlDSig_putWithComments(objHandle: HCkXmlDSig; newPropVal: wordbool); stdcall;

function CkXmlDSig_AddEncapsulatedTimeStamp(objHandle: HCkXmlDSig; json: HCkJsonObject; sbOut: HCkStringBuilder): wordbool; stdcall;

function CkXmlDSig_CanonicalizeFragment(objHandle: HCkXmlDSig; xml: PWideChar; fragmentId: PWideChar; version: PWideChar; prefixList: PWideChar; withComments: wordbool; outStr: HCkString): wordbool; stdcall;

function CkXmlDSig__canonicalizeFragment(objHandle: HCkXmlDSig; xml: PWideChar; fragmentId: PWideChar; version: PWideChar; prefixList: PWideChar; withComments: wordbool): PWideChar; stdcall;

function CkXmlDSig_CanonicalizeXml(objHandle: HCkXmlDSig; xml: PWideChar; version: PWideChar; withComments: wordbool; outStr: HCkString): wordbool; stdcall;

function CkXmlDSig__canonicalizeXml(objHandle: HCkXmlDSig; xml: PWideChar; version: PWideChar; withComments: wordbool): PWideChar; stdcall;

function CkXmlDSig_GetCerts(objHandle: HCkXmlDSig; sa: HCkStringArray): wordbool; stdcall;

function CkXmlDSig_GetKeyInfo(objHandle: HCkXmlDSig): HCkXml; stdcall;

function CkXmlDSig_GetPublicKey(objHandle: HCkXmlDSig): HCkPublicKey; stdcall;

function CkXmlDSig_HasEncapsulatedTimeStamp(objHandle: HCkXmlDSig): wordbool; stdcall;

function CkXmlDSig_IsReferenceExternal(objHandle: HCkXmlDSig; index: Integer): wordbool; stdcall;

function CkXmlDSig_LoadSignature(objHandle: HCkXmlDSig; xmlSig: PWideChar): wordbool; stdcall;

function CkXmlDSig_LoadSignatureBd(objHandle: HCkXmlDSig; binData: HCkBinData): wordbool; stdcall;

function CkXmlDSig_LoadSignatureSb(objHandle: HCkXmlDSig; sbXmlSig: HCkStringBuilder): wordbool; stdcall;

function CkXmlDSig_ReferenceUri(objHandle: HCkXmlDSig; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkXmlDSig__referenceUri(objHandle: HCkXmlDSig; index: Integer): PWideChar; stdcall;

function CkXmlDSig_SaveLastError(objHandle: HCkXmlDSig; path: PWideChar): wordbool; stdcall;

function CkXmlDSig_SetHmacKey(objHandle: HCkXmlDSig; key: PWideChar; encoding: PWideChar): wordbool; stdcall;

procedure CkXmlDSig_SetHttpObj(objHandle: HCkXmlDSig; http: HCkHttp); stdcall;

function CkXmlDSig_SetPublicKey(objHandle: HCkXmlDSig; pubKey: HCkPublicKey): wordbool; stdcall;

function CkXmlDSig_SetRefDataBd(objHandle: HCkXmlDSig; index: Integer; binData: HCkBinData): wordbool; stdcall;

function CkXmlDSig_SetRefDataFile(objHandle: HCkXmlDSig; index: Integer; path: PWideChar): wordbool; stdcall;

function CkXmlDSig_SetRefDataSb(objHandle: HCkXmlDSig; index: Integer; sb: HCkStringBuilder; charset: PWideChar): wordbool; stdcall;

function CkXmlDSig_UseCertVault(objHandle: HCkXmlDSig; certVault: HCkXmlCertVault): wordbool; stdcall;

function CkXmlDSig_VerifyReferenceDigest(objHandle: HCkXmlDSig; index: Integer): wordbool; stdcall;

function CkXmlDSig_VerifySignature(objHandle: HCkXmlDSig; verifyReferenceDigests: wordbool): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkXmlDSig_Create; external DLLName;
procedure CkXmlDSig_Dispose; external DLLName;
procedure CkXmlDSig_getDebugLogFilePath; external DLLName;
procedure CkXmlDSig_putDebugLogFilePath; external DLLName;
function CkXmlDSig__debugLogFilePath; external DLLName;
procedure CkXmlDSig_getExternalRefDirs; external DLLName;
procedure CkXmlDSig_putExternalRefDirs; external DLLName;
function CkXmlDSig__externalRefDirs; external DLLName;
function CkXmlDSig_getIgnoreExternalRefs; external DLLName;
procedure CkXmlDSig_putIgnoreExternalRefs; external DLLName;
procedure CkXmlDSig_getLastErrorHtml; external DLLName;
function CkXmlDSig__lastErrorHtml; external DLLName;
procedure CkXmlDSig_getLastErrorText; external DLLName;
function CkXmlDSig__lastErrorText; external DLLName;
procedure CkXmlDSig_getLastErrorXml; external DLLName;
function CkXmlDSig__lastErrorXml; external DLLName;
function CkXmlDSig_getLastMethodSuccess; external DLLName;
procedure CkXmlDSig_putLastMethodSuccess; external DLLName;
function CkXmlDSig_getNumReferences; external DLLName;
function CkXmlDSig_getNumSignatures; external DLLName;
function CkXmlDSig_getRefFailReason; external DLLName;
function CkXmlDSig_getSelector; external DLLName;
procedure CkXmlDSig_putSelector; external DLLName;
procedure CkXmlDSig_getUncommonOptions; external DLLName;
procedure CkXmlDSig_putUncommonOptions; external DLLName;
function CkXmlDSig__uncommonOptions; external DLLName;
function CkXmlDSig_getVerboseLogging; external DLLName;
procedure CkXmlDSig_putVerboseLogging; external DLLName;
procedure CkXmlDSig_getVersion; external DLLName;
function CkXmlDSig__version; external DLLName;
function CkXmlDSig_getWithComments; external DLLName;
procedure CkXmlDSig_putWithComments; external DLLName;
function CkXmlDSig_AddEncapsulatedTimeStamp; external DLLName;
function CkXmlDSig_CanonicalizeFragment; external DLLName;
function CkXmlDSig__canonicalizeFragment; external DLLName;
function CkXmlDSig_CanonicalizeXml; external DLLName;
function CkXmlDSig__canonicalizeXml; external DLLName;
function CkXmlDSig_GetCerts; external DLLName;
function CkXmlDSig_GetKeyInfo; external DLLName;
function CkXmlDSig_GetPublicKey; external DLLName;
function CkXmlDSig_HasEncapsulatedTimeStamp; external DLLName;
function CkXmlDSig_IsReferenceExternal; external DLLName;
function CkXmlDSig_LoadSignature; external DLLName;
function CkXmlDSig_LoadSignatureBd; external DLLName;
function CkXmlDSig_LoadSignatureSb; external DLLName;
function CkXmlDSig_ReferenceUri; external DLLName;
function CkXmlDSig__referenceUri; external DLLName;
function CkXmlDSig_SaveLastError; external DLLName;
function CkXmlDSig_SetHmacKey; external DLLName;
procedure CkXmlDSig_SetHttpObj; external DLLName;
function CkXmlDSig_SetPublicKey; external DLLName;
function CkXmlDSig_SetRefDataBd; external DLLName;
function CkXmlDSig_SetRefDataFile; external DLLName;
function CkXmlDSig_SetRefDataSb; external DLLName;
function CkXmlDSig_UseCertVault; external DLLName;
function CkXmlDSig_VerifyReferenceDigest; external DLLName;
function CkXmlDSig_VerifySignature; external DLLName;



end.
