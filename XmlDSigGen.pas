unit XmlDSigGen;

interface

type

HCkBinData = Pointer;
HCkPrivateKey = Pointer;
HCkHttp = Pointer;
HCkXml = Pointer;
HCkString = Pointer;
HCkXmlDSigGen = Pointer;
HCkCert = Pointer;
HCkStringBuilder = Pointer;
HCkTask = Pointer;
HCkJsonObject = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TXmlDSigGenAbortCheck = function(): Integer; cdecl;
TXmlDSigGenProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TXmlDSigGenPercentDone = function(pctDone: Integer): Integer; cdecl;
TXmlDSigGenTaskCompleted = procedure(task: HCkTask); cdecl;


function CkXmlDSigGen_Create: HCkXmlDSigGen; stdcall;
procedure CkXmlDSigGen_Dispose(handle: HCkXmlDSigGen); stdcall;

procedure CkXmlDSigGen_SetAbortCheck(objHandle: HCkXmlDSigGen; fn: TXmlDSigGenAbortCheck) stdcall;
procedure CkXmlDSigGen_SetProgressInfo(objHandle: HCkXmlDSigGen; fn: TXmlDSigGenProgressInfo) stdcall;
procedure CkXmlDSigGen_SetPercentDone(objHandle: HCkXmlDSigGen; fn: TXmlDSigGenPercentDone) stdcall;
procedure CkXmlDSigGen_SetTaskCompleted(objHandle: HCkXmlDSigGen; fn: TXmlDSigGenTaskCompleted) stdcall;
procedure CkXmlDSigGen_getBehaviors(objHandle: HCkXmlDSigGen; outPropVal: HCkString); stdcall;

procedure CkXmlDSigGen_putBehaviors(objHandle: HCkXmlDSigGen; newPropVal: PWideChar); stdcall;

function CkXmlDSigGen__behaviors(objHandle: HCkXmlDSigGen): PWideChar; stdcall;

procedure CkXmlDSigGen_getCustomKeyInfoXml(objHandle: HCkXmlDSigGen; outPropVal: HCkString); stdcall;

procedure CkXmlDSigGen_putCustomKeyInfoXml(objHandle: HCkXmlDSigGen; newPropVal: PWideChar); stdcall;

function CkXmlDSigGen__customKeyInfoXml(objHandle: HCkXmlDSigGen): PWideChar; stdcall;

procedure CkXmlDSigGen_getDebugLogFilePath(objHandle: HCkXmlDSigGen; outPropVal: HCkString); stdcall;

procedure CkXmlDSigGen_putDebugLogFilePath(objHandle: HCkXmlDSigGen; newPropVal: PWideChar); stdcall;

function CkXmlDSigGen__debugLogFilePath(objHandle: HCkXmlDSigGen): PWideChar; stdcall;

procedure CkXmlDSigGen_getIncNamespacePrefix(objHandle: HCkXmlDSigGen; outPropVal: HCkString); stdcall;

procedure CkXmlDSigGen_putIncNamespacePrefix(objHandle: HCkXmlDSigGen; newPropVal: PWideChar); stdcall;

function CkXmlDSigGen__incNamespacePrefix(objHandle: HCkXmlDSigGen): PWideChar; stdcall;

procedure CkXmlDSigGen_getIncNamespaceUri(objHandle: HCkXmlDSigGen; outPropVal: HCkString); stdcall;

procedure CkXmlDSigGen_putIncNamespaceUri(objHandle: HCkXmlDSigGen; newPropVal: PWideChar); stdcall;

function CkXmlDSigGen__incNamespaceUri(objHandle: HCkXmlDSigGen): PWideChar; stdcall;

procedure CkXmlDSigGen_getKeyInfoId(objHandle: HCkXmlDSigGen; outPropVal: HCkString); stdcall;

procedure CkXmlDSigGen_putKeyInfoId(objHandle: HCkXmlDSigGen; newPropVal: PWideChar); stdcall;

function CkXmlDSigGen__keyInfoId(objHandle: HCkXmlDSigGen): PWideChar; stdcall;

procedure CkXmlDSigGen_getKeyInfoKeyName(objHandle: HCkXmlDSigGen; outPropVal: HCkString); stdcall;

procedure CkXmlDSigGen_putKeyInfoKeyName(objHandle: HCkXmlDSigGen; newPropVal: PWideChar); stdcall;

function CkXmlDSigGen__keyInfoKeyName(objHandle: HCkXmlDSigGen): PWideChar; stdcall;

procedure CkXmlDSigGen_getKeyInfoType(objHandle: HCkXmlDSigGen; outPropVal: HCkString); stdcall;

procedure CkXmlDSigGen_putKeyInfoType(objHandle: HCkXmlDSigGen; newPropVal: PWideChar); stdcall;

function CkXmlDSigGen__keyInfoType(objHandle: HCkXmlDSigGen): PWideChar; stdcall;

procedure CkXmlDSigGen_getLastErrorHtml(objHandle: HCkXmlDSigGen; outPropVal: HCkString); stdcall;

function CkXmlDSigGen__lastErrorHtml(objHandle: HCkXmlDSigGen): PWideChar; stdcall;

procedure CkXmlDSigGen_getLastErrorText(objHandle: HCkXmlDSigGen; outPropVal: HCkString); stdcall;

function CkXmlDSigGen__lastErrorText(objHandle: HCkXmlDSigGen): PWideChar; stdcall;

procedure CkXmlDSigGen_getLastErrorXml(objHandle: HCkXmlDSigGen; outPropVal: HCkString); stdcall;

function CkXmlDSigGen__lastErrorXml(objHandle: HCkXmlDSigGen): PWideChar; stdcall;

function CkXmlDSigGen_getLastMethodSuccess(objHandle: HCkXmlDSigGen): wordbool; stdcall;

procedure CkXmlDSigGen_putLastMethodSuccess(objHandle: HCkXmlDSigGen; newPropVal: wordbool); stdcall;

procedure CkXmlDSigGen_getSigId(objHandle: HCkXmlDSigGen; outPropVal: HCkString); stdcall;

procedure CkXmlDSigGen_putSigId(objHandle: HCkXmlDSigGen; newPropVal: PWideChar); stdcall;

function CkXmlDSigGen__sigId(objHandle: HCkXmlDSigGen): PWideChar; stdcall;

procedure CkXmlDSigGen_getSigLocation(objHandle: HCkXmlDSigGen; outPropVal: HCkString); stdcall;

procedure CkXmlDSigGen_putSigLocation(objHandle: HCkXmlDSigGen; newPropVal: PWideChar); stdcall;

function CkXmlDSigGen__sigLocation(objHandle: HCkXmlDSigGen): PWideChar; stdcall;

function CkXmlDSigGen_getSigLocationMod(objHandle: HCkXmlDSigGen): Integer; stdcall;

procedure CkXmlDSigGen_putSigLocationMod(objHandle: HCkXmlDSigGen; newPropVal: Integer); stdcall;

procedure CkXmlDSigGen_getSigNamespacePrefix(objHandle: HCkXmlDSigGen; outPropVal: HCkString); stdcall;

procedure CkXmlDSigGen_putSigNamespacePrefix(objHandle: HCkXmlDSigGen; newPropVal: PWideChar); stdcall;

function CkXmlDSigGen__sigNamespacePrefix(objHandle: HCkXmlDSigGen): PWideChar; stdcall;

procedure CkXmlDSigGen_getSigNamespaceUri(objHandle: HCkXmlDSigGen; outPropVal: HCkString); stdcall;

procedure CkXmlDSigGen_putSigNamespaceUri(objHandle: HCkXmlDSigGen; newPropVal: PWideChar); stdcall;

function CkXmlDSigGen__sigNamespaceUri(objHandle: HCkXmlDSigGen): PWideChar; stdcall;

procedure CkXmlDSigGen_getSignedInfoCanonAlg(objHandle: HCkXmlDSigGen; outPropVal: HCkString); stdcall;

procedure CkXmlDSigGen_putSignedInfoCanonAlg(objHandle: HCkXmlDSigGen; newPropVal: PWideChar); stdcall;

function CkXmlDSigGen__signedInfoCanonAlg(objHandle: HCkXmlDSigGen): PWideChar; stdcall;

procedure CkXmlDSigGen_getSignedInfoDigestMethod(objHandle: HCkXmlDSigGen; outPropVal: HCkString); stdcall;

procedure CkXmlDSigGen_putSignedInfoDigestMethod(objHandle: HCkXmlDSigGen; newPropVal: PWideChar); stdcall;

function CkXmlDSigGen__signedInfoDigestMethod(objHandle: HCkXmlDSigGen): PWideChar; stdcall;

procedure CkXmlDSigGen_getSignedInfoId(objHandle: HCkXmlDSigGen; outPropVal: HCkString); stdcall;

procedure CkXmlDSigGen_putSignedInfoId(objHandle: HCkXmlDSigGen; newPropVal: PWideChar); stdcall;

function CkXmlDSigGen__signedInfoId(objHandle: HCkXmlDSigGen): PWideChar; stdcall;

procedure CkXmlDSigGen_getSignedInfoPrefixList(objHandle: HCkXmlDSigGen; outPropVal: HCkString); stdcall;

procedure CkXmlDSigGen_putSignedInfoPrefixList(objHandle: HCkXmlDSigGen; newPropVal: PWideChar); stdcall;

function CkXmlDSigGen__signedInfoPrefixList(objHandle: HCkXmlDSigGen): PWideChar; stdcall;

procedure CkXmlDSigGen_getSigningAlg(objHandle: HCkXmlDSigGen; outPropVal: HCkString); stdcall;

procedure CkXmlDSigGen_putSigningAlg(objHandle: HCkXmlDSigGen; newPropVal: PWideChar); stdcall;

function CkXmlDSigGen__signingAlg(objHandle: HCkXmlDSigGen): PWideChar; stdcall;

procedure CkXmlDSigGen_getSigValueId(objHandle: HCkXmlDSigGen; outPropVal: HCkString); stdcall;

procedure CkXmlDSigGen_putSigValueId(objHandle: HCkXmlDSigGen; newPropVal: PWideChar); stdcall;

function CkXmlDSigGen__sigValueId(objHandle: HCkXmlDSigGen): PWideChar; stdcall;

procedure CkXmlDSigGen_getUncommonOptions(objHandle: HCkXmlDSigGen; outPropVal: HCkString); stdcall;

procedure CkXmlDSigGen_putUncommonOptions(objHandle: HCkXmlDSigGen; newPropVal: PWideChar); stdcall;

function CkXmlDSigGen__uncommonOptions(objHandle: HCkXmlDSigGen): PWideChar; stdcall;

function CkXmlDSigGen_getVerboseLogging(objHandle: HCkXmlDSigGen): wordbool; stdcall;

procedure CkXmlDSigGen_putVerboseLogging(objHandle: HCkXmlDSigGen; newPropVal: wordbool); stdcall;

procedure CkXmlDSigGen_getVersion(objHandle: HCkXmlDSigGen; outPropVal: HCkString); stdcall;

function CkXmlDSigGen__version(objHandle: HCkXmlDSigGen): PWideChar; stdcall;

procedure CkXmlDSigGen_getX509Type(objHandle: HCkXmlDSigGen; outPropVal: HCkString); stdcall;

procedure CkXmlDSigGen_putX509Type(objHandle: HCkXmlDSigGen; newPropVal: PWideChar); stdcall;

function CkXmlDSigGen__x509Type(objHandle: HCkXmlDSigGen): PWideChar; stdcall;

function CkXmlDSigGen_AddEnvelopedRef(objHandle: HCkXmlDSigGen; id: PWideChar; content: HCkStringBuilder; digestMethod: PWideChar; canonMethod: PWideChar; refType: PWideChar): wordbool; stdcall;

function CkXmlDSigGen_AddExternalBinaryRef(objHandle: HCkXmlDSigGen; uri: PWideChar; content: HCkBinData; digestMethod: PWideChar; refType: PWideChar): wordbool; stdcall;

function CkXmlDSigGen_AddExternalFileRef(objHandle: HCkXmlDSigGen; uri: PWideChar; localFilePath: PWideChar; digestMethod: PWideChar; refType: PWideChar): wordbool; stdcall;

function CkXmlDSigGen_AddExternalTextRef(objHandle: HCkXmlDSigGen; uri: PWideChar; content: HCkStringBuilder; charset: PWideChar; includeBom: wordbool; digestMethod: PWideChar; refType: PWideChar): wordbool; stdcall;

function CkXmlDSigGen_AddExternalXmlRef(objHandle: HCkXmlDSigGen; uri: PWideChar; content: HCkStringBuilder; digestMethod: PWideChar; canonMethod: PWideChar; refType: PWideChar): wordbool; stdcall;

function CkXmlDSigGen_AddObject(objHandle: HCkXmlDSigGen; id: PWideChar; content: PWideChar; mimeType: PWideChar; encoding: PWideChar): wordbool; stdcall;

function CkXmlDSigGen_AddObjectRef(objHandle: HCkXmlDSigGen; id: PWideChar; digestMethod: PWideChar; canonMethod: PWideChar; prefixList: PWideChar; refType: PWideChar): wordbool; stdcall;

function CkXmlDSigGen_AddObjectRef2(objHandle: HCkXmlDSigGen; id: PWideChar; digestMethod: PWideChar; transforms: HCkXml; refType: PWideChar): wordbool; stdcall;

function CkXmlDSigGen_AddSameDocRef(objHandle: HCkXmlDSigGen; id: PWideChar; digestMethod: PWideChar; canonMethod: PWideChar; prefixList: PWideChar; refType: PWideChar): wordbool; stdcall;

function CkXmlDSigGen_AddSameDocRef2(objHandle: HCkXmlDSigGen; id: PWideChar; digestMethod: PWideChar; transforms: HCkXml; refType: PWideChar): wordbool; stdcall;

function CkXmlDSigGen_AddSignatureNamespace(objHandle: HCkXmlDSigGen; nsPrefix: PWideChar; nsUri: PWideChar): wordbool; stdcall;

function CkXmlDSigGen_ConstructSignedInfo(objHandle: HCkXmlDSigGen; sbXml: HCkStringBuilder; outStr: HCkString): wordbool; stdcall;

function CkXmlDSigGen__constructSignedInfo(objHandle: HCkXmlDSigGen; sbXml: HCkStringBuilder): PWideChar; stdcall;

function CkXmlDSigGen_CreateXmlDSig(objHandle: HCkXmlDSigGen; inXml: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkXmlDSigGen__createXmlDSig(objHandle: HCkXmlDSigGen; inXml: PWideChar): PWideChar; stdcall;

function CkXmlDSigGen_CreateXmlDSigAsync(objHandle: HCkXmlDSigGen; inXml: PWideChar): HCkTask; stdcall;

function CkXmlDSigGen_CreateXmlDSigSb(objHandle: HCkXmlDSigGen; sbXml: HCkStringBuilder): wordbool; stdcall;

function CkXmlDSigGen_CreateXmlDSigSbAsync(objHandle: HCkXmlDSigGen; sbXml: HCkStringBuilder): HCkTask; stdcall;

function CkXmlDSigGen_SaveLastError(objHandle: HCkXmlDSigGen; path: PWideChar): wordbool; stdcall;

function CkXmlDSigGen_SetHmacKey(objHandle: HCkXmlDSigGen; key: PWideChar; encoding: PWideChar): wordbool; stdcall;

procedure CkXmlDSigGen_SetHttpObj(objHandle: HCkXmlDSigGen; http: HCkHttp); stdcall;

function CkXmlDSigGen_SetPrivateKey(objHandle: HCkXmlDSigGen; privKey: HCkPrivateKey): wordbool; stdcall;

function CkXmlDSigGen_SetRefIdAttr(objHandle: HCkXmlDSigGen; uri_or_id: PWideChar; value: PWideChar): wordbool; stdcall;

function CkXmlDSigGen_SetTsa(objHandle: HCkXmlDSigGen; json: HCkJsonObject): wordbool; stdcall;

function CkXmlDSigGen_SetX509Cert(objHandle: HCkXmlDSigGen; cert: HCkCert; usePrivateKey: wordbool): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkXmlDSigGen_Create; external DLLName;
procedure CkXmlDSigGen_Dispose; external DLLName;

procedure CkXmlDSigGen_SetAbortCheck; external DLLName;
procedure CkXmlDSigGen_SetProgressInfo; external DLLName;
procedure CkXmlDSigGen_SetPercentDone; external DLLName;
procedure CkXmlDSigGen_SetTaskCompleted; external DLLName;
procedure CkXmlDSigGen_getBehaviors; external DLLName;
procedure CkXmlDSigGen_putBehaviors; external DLLName;
function CkXmlDSigGen__behaviors; external DLLName;
procedure CkXmlDSigGen_getCustomKeyInfoXml; external DLLName;
procedure CkXmlDSigGen_putCustomKeyInfoXml; external DLLName;
function CkXmlDSigGen__customKeyInfoXml; external DLLName;
procedure CkXmlDSigGen_getDebugLogFilePath; external DLLName;
procedure CkXmlDSigGen_putDebugLogFilePath; external DLLName;
function CkXmlDSigGen__debugLogFilePath; external DLLName;
procedure CkXmlDSigGen_getIncNamespacePrefix; external DLLName;
procedure CkXmlDSigGen_putIncNamespacePrefix; external DLLName;
function CkXmlDSigGen__incNamespacePrefix; external DLLName;
procedure CkXmlDSigGen_getIncNamespaceUri; external DLLName;
procedure CkXmlDSigGen_putIncNamespaceUri; external DLLName;
function CkXmlDSigGen__incNamespaceUri; external DLLName;
procedure CkXmlDSigGen_getKeyInfoId; external DLLName;
procedure CkXmlDSigGen_putKeyInfoId; external DLLName;
function CkXmlDSigGen__keyInfoId; external DLLName;
procedure CkXmlDSigGen_getKeyInfoKeyName; external DLLName;
procedure CkXmlDSigGen_putKeyInfoKeyName; external DLLName;
function CkXmlDSigGen__keyInfoKeyName; external DLLName;
procedure CkXmlDSigGen_getKeyInfoType; external DLLName;
procedure CkXmlDSigGen_putKeyInfoType; external DLLName;
function CkXmlDSigGen__keyInfoType; external DLLName;
procedure CkXmlDSigGen_getLastErrorHtml; external DLLName;
function CkXmlDSigGen__lastErrorHtml; external DLLName;
procedure CkXmlDSigGen_getLastErrorText; external DLLName;
function CkXmlDSigGen__lastErrorText; external DLLName;
procedure CkXmlDSigGen_getLastErrorXml; external DLLName;
function CkXmlDSigGen__lastErrorXml; external DLLName;
function CkXmlDSigGen_getLastMethodSuccess; external DLLName;
procedure CkXmlDSigGen_putLastMethodSuccess; external DLLName;
procedure CkXmlDSigGen_getSigId; external DLLName;
procedure CkXmlDSigGen_putSigId; external DLLName;
function CkXmlDSigGen__sigId; external DLLName;
procedure CkXmlDSigGen_getSigLocation; external DLLName;
procedure CkXmlDSigGen_putSigLocation; external DLLName;
function CkXmlDSigGen__sigLocation; external DLLName;
function CkXmlDSigGen_getSigLocationMod; external DLLName;
procedure CkXmlDSigGen_putSigLocationMod; external DLLName;
procedure CkXmlDSigGen_getSigNamespacePrefix; external DLLName;
procedure CkXmlDSigGen_putSigNamespacePrefix; external DLLName;
function CkXmlDSigGen__sigNamespacePrefix; external DLLName;
procedure CkXmlDSigGen_getSigNamespaceUri; external DLLName;
procedure CkXmlDSigGen_putSigNamespaceUri; external DLLName;
function CkXmlDSigGen__sigNamespaceUri; external DLLName;
procedure CkXmlDSigGen_getSignedInfoCanonAlg; external DLLName;
procedure CkXmlDSigGen_putSignedInfoCanonAlg; external DLLName;
function CkXmlDSigGen__signedInfoCanonAlg; external DLLName;
procedure CkXmlDSigGen_getSignedInfoDigestMethod; external DLLName;
procedure CkXmlDSigGen_putSignedInfoDigestMethod; external DLLName;
function CkXmlDSigGen__signedInfoDigestMethod; external DLLName;
procedure CkXmlDSigGen_getSignedInfoId; external DLLName;
procedure CkXmlDSigGen_putSignedInfoId; external DLLName;
function CkXmlDSigGen__signedInfoId; external DLLName;
procedure CkXmlDSigGen_getSignedInfoPrefixList; external DLLName;
procedure CkXmlDSigGen_putSignedInfoPrefixList; external DLLName;
function CkXmlDSigGen__signedInfoPrefixList; external DLLName;
procedure CkXmlDSigGen_getSigningAlg; external DLLName;
procedure CkXmlDSigGen_putSigningAlg; external DLLName;
function CkXmlDSigGen__signingAlg; external DLLName;
procedure CkXmlDSigGen_getSigValueId; external DLLName;
procedure CkXmlDSigGen_putSigValueId; external DLLName;
function CkXmlDSigGen__sigValueId; external DLLName;
procedure CkXmlDSigGen_getUncommonOptions; external DLLName;
procedure CkXmlDSigGen_putUncommonOptions; external DLLName;
function CkXmlDSigGen__uncommonOptions; external DLLName;
function CkXmlDSigGen_getVerboseLogging; external DLLName;
procedure CkXmlDSigGen_putVerboseLogging; external DLLName;
procedure CkXmlDSigGen_getVersion; external DLLName;
function CkXmlDSigGen__version; external DLLName;
procedure CkXmlDSigGen_getX509Type; external DLLName;
procedure CkXmlDSigGen_putX509Type; external DLLName;
function CkXmlDSigGen__x509Type; external DLLName;
function CkXmlDSigGen_AddEnvelopedRef; external DLLName;
function CkXmlDSigGen_AddExternalBinaryRef; external DLLName;
function CkXmlDSigGen_AddExternalFileRef; external DLLName;
function CkXmlDSigGen_AddExternalTextRef; external DLLName;
function CkXmlDSigGen_AddExternalXmlRef; external DLLName;
function CkXmlDSigGen_AddObject; external DLLName;
function CkXmlDSigGen_AddObjectRef; external DLLName;
function CkXmlDSigGen_AddObjectRef2; external DLLName;
function CkXmlDSigGen_AddSameDocRef; external DLLName;
function CkXmlDSigGen_AddSameDocRef2; external DLLName;
function CkXmlDSigGen_AddSignatureNamespace; external DLLName;
function CkXmlDSigGen_ConstructSignedInfo; external DLLName;
function CkXmlDSigGen__constructSignedInfo; external DLLName;
function CkXmlDSigGen_CreateXmlDSig; external DLLName;
function CkXmlDSigGen__createXmlDSig; external DLLName;
function CkXmlDSigGen_CreateXmlDSigAsync; external DLLName;
function CkXmlDSigGen_CreateXmlDSigSb; external DLLName;
function CkXmlDSigGen_CreateXmlDSigSbAsync; external DLLName;
function CkXmlDSigGen_SaveLastError; external DLLName;
function CkXmlDSigGen_SetHmacKey; external DLLName;
procedure CkXmlDSigGen_SetHttpObj; external DLLName;
function CkXmlDSigGen_SetPrivateKey; external DLLName;
function CkXmlDSigGen_SetRefIdAttr; external DLLName;
function CkXmlDSigGen_SetTsa; external DLLName;
function CkXmlDSigGen_SetX509Cert; external DLLName;



end.
