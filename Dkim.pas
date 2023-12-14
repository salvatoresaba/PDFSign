unit Dkim;

interface

type

HCkBinData = Pointer;
HCkPrivateKey = Pointer;
HCkByteData = Pointer;
HCkString = Pointer;
HCkDkim = Pointer;
HCkTask = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TDkimAbortCheck = function(): Integer; cdecl;
TDkimProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TDkimPercentDone = function(pctDone: Integer): Integer; cdecl;
TDkimTaskCompleted = procedure(task: HCkTask); cdecl;


function CkDkim_Create: HCkDkim; stdcall;
procedure CkDkim_Dispose(handle: HCkDkim); stdcall;

procedure CkDkim_SetAbortCheck(objHandle: HCkDkim; fn: TDkimAbortCheck) stdcall;
procedure CkDkim_SetProgressInfo(objHandle: HCkDkim; fn: TDkimProgressInfo) stdcall;
procedure CkDkim_SetPercentDone(objHandle: HCkDkim; fn: TDkimPercentDone) stdcall;
procedure CkDkim_SetTaskCompleted(objHandle: HCkDkim; fn: TDkimTaskCompleted) stdcall;
function CkDkim_getAbortCurrent(objHandle: HCkDkim): wordbool; stdcall;

procedure CkDkim_putAbortCurrent(objHandle: HCkDkim; newPropVal: wordbool); stdcall;

procedure CkDkim_getDebugLogFilePath(objHandle: HCkDkim; outPropVal: HCkString); stdcall;

procedure CkDkim_putDebugLogFilePath(objHandle: HCkDkim; newPropVal: PWideChar); stdcall;

function CkDkim__debugLogFilePath(objHandle: HCkDkim): PWideChar; stdcall;

procedure CkDkim_getDkimAlg(objHandle: HCkDkim; outPropVal: HCkString); stdcall;

procedure CkDkim_putDkimAlg(objHandle: HCkDkim; newPropVal: PWideChar); stdcall;

function CkDkim__dkimAlg(objHandle: HCkDkim): PWideChar; stdcall;

function CkDkim_getDkimBodyLengthCount(objHandle: HCkDkim): Integer; stdcall;

procedure CkDkim_putDkimBodyLengthCount(objHandle: HCkDkim; newPropVal: Integer); stdcall;

procedure CkDkim_getDkimCanon(objHandle: HCkDkim; outPropVal: HCkString); stdcall;

procedure CkDkim_putDkimCanon(objHandle: HCkDkim; newPropVal: PWideChar); stdcall;

function CkDkim__dkimCanon(objHandle: HCkDkim): PWideChar; stdcall;

procedure CkDkim_getDkimDomain(objHandle: HCkDkim; outPropVal: HCkString); stdcall;

procedure CkDkim_putDkimDomain(objHandle: HCkDkim; newPropVal: PWideChar); stdcall;

function CkDkim__dkimDomain(objHandle: HCkDkim): PWideChar; stdcall;

procedure CkDkim_getDkimHeaders(objHandle: HCkDkim; outPropVal: HCkString); stdcall;

procedure CkDkim_putDkimHeaders(objHandle: HCkDkim; newPropVal: PWideChar); stdcall;

function CkDkim__dkimHeaders(objHandle: HCkDkim): PWideChar; stdcall;

procedure CkDkim_getDkimSelector(objHandle: HCkDkim; outPropVal: HCkString); stdcall;

procedure CkDkim_putDkimSelector(objHandle: HCkDkim; newPropVal: PWideChar); stdcall;

function CkDkim__dkimSelector(objHandle: HCkDkim): PWideChar; stdcall;

procedure CkDkim_getDomainKeyAlg(objHandle: HCkDkim; outPropVal: HCkString); stdcall;

procedure CkDkim_putDomainKeyAlg(objHandle: HCkDkim; newPropVal: PWideChar); stdcall;

function CkDkim__domainKeyAlg(objHandle: HCkDkim): PWideChar; stdcall;

procedure CkDkim_getDomainKeyCanon(objHandle: HCkDkim; outPropVal: HCkString); stdcall;

procedure CkDkim_putDomainKeyCanon(objHandle: HCkDkim; newPropVal: PWideChar); stdcall;

function CkDkim__domainKeyCanon(objHandle: HCkDkim): PWideChar; stdcall;

procedure CkDkim_getDomainKeyDomain(objHandle: HCkDkim; outPropVal: HCkString); stdcall;

procedure CkDkim_putDomainKeyDomain(objHandle: HCkDkim; newPropVal: PWideChar); stdcall;

function CkDkim__domainKeyDomain(objHandle: HCkDkim): PWideChar; stdcall;

procedure CkDkim_getDomainKeyHeaders(objHandle: HCkDkim; outPropVal: HCkString); stdcall;

procedure CkDkim_putDomainKeyHeaders(objHandle: HCkDkim; newPropVal: PWideChar); stdcall;

function CkDkim__domainKeyHeaders(objHandle: HCkDkim): PWideChar; stdcall;

procedure CkDkim_getDomainKeySelector(objHandle: HCkDkim; outPropVal: HCkString); stdcall;

procedure CkDkim_putDomainKeySelector(objHandle: HCkDkim; newPropVal: PWideChar); stdcall;

function CkDkim__domainKeySelector(objHandle: HCkDkim): PWideChar; stdcall;

function CkDkim_getHeartbeatMs(objHandle: HCkDkim): Integer; stdcall;

procedure CkDkim_putHeartbeatMs(objHandle: HCkDkim; newPropVal: Integer); stdcall;

procedure CkDkim_getLastErrorHtml(objHandle: HCkDkim; outPropVal: HCkString); stdcall;

function CkDkim__lastErrorHtml(objHandle: HCkDkim): PWideChar; stdcall;

procedure CkDkim_getLastErrorText(objHandle: HCkDkim; outPropVal: HCkString); stdcall;

function CkDkim__lastErrorText(objHandle: HCkDkim): PWideChar; stdcall;

procedure CkDkim_getLastErrorXml(objHandle: HCkDkim; outPropVal: HCkString); stdcall;

function CkDkim__lastErrorXml(objHandle: HCkDkim): PWideChar; stdcall;

function CkDkim_getLastMethodSuccess(objHandle: HCkDkim): wordbool; stdcall;

procedure CkDkim_putLastMethodSuccess(objHandle: HCkDkim; newPropVal: wordbool); stdcall;

function CkDkim_getVerboseLogging(objHandle: HCkDkim): wordbool; stdcall;

procedure CkDkim_putVerboseLogging(objHandle: HCkDkim; newPropVal: wordbool); stdcall;

procedure CkDkim_getVerifyInfo(objHandle: HCkDkim; outPropVal: HCkString); stdcall;

function CkDkim__verifyInfo(objHandle: HCkDkim): PWideChar; stdcall;

procedure CkDkim_getVersion(objHandle: HCkDkim; outPropVal: HCkString); stdcall;

function CkDkim__version(objHandle: HCkDkim): PWideChar; stdcall;

function CkDkim_AddDkimSignature(objHandle: HCkDkim; mimeIn: HCkByteData; outData: HCkByteData): wordbool; stdcall;

function CkDkim_AddDomainKeySignature(objHandle: HCkDkim; mimeIn: HCkByteData; outData: HCkByteData): wordbool; stdcall;

function CkDkim_DkimSign(objHandle: HCkDkim; mimeData: HCkBinData): wordbool; stdcall;

function CkDkim_DkimVerify(objHandle: HCkDkim; sigIndex: Integer; mimeData: HCkBinData): wordbool; stdcall;

function CkDkim_DomainKeySign(objHandle: HCkDkim; mimeData: HCkBinData): wordbool; stdcall;

function CkDkim_DomainKeyVerify(objHandle: HCkDkim; sigIndex: Integer; mimeData: HCkBinData): wordbool; stdcall;

function CkDkim_LoadDkimPk(objHandle: HCkDkim; privateKey: PWideChar; optionalPassword: PWideChar): wordbool; stdcall;

function CkDkim_LoadDkimPkBytes(objHandle: HCkDkim; privateKeyDer: HCkByteData; optionalPassword: PWideChar): wordbool; stdcall;

function CkDkim_LoadDkimPkFile(objHandle: HCkDkim; privateKeyFilePath: PWideChar; optionalPassword: PWideChar): wordbool; stdcall;

function CkDkim_LoadDomainKeyPk(objHandle: HCkDkim; privateKey: PWideChar; optionalPassword: PWideChar): wordbool; stdcall;

function CkDkim_LoadDomainKeyPkBytes(objHandle: HCkDkim; privateKeyDer: HCkByteData; optionalPassword: PWideChar): wordbool; stdcall;

function CkDkim_LoadDomainKeyPkFile(objHandle: HCkDkim; privateKeyFilePath: PWideChar; optionalPassword: PWideChar): wordbool; stdcall;

function CkDkim_LoadPublicKey(objHandle: HCkDkim; selector: PWideChar; domain: PWideChar; publicKey: PWideChar): wordbool; stdcall;

function CkDkim_LoadPublicKeyFile(objHandle: HCkDkim; selector: PWideChar; domain: PWideChar; publicKeyFilepath: PWideChar): wordbool; stdcall;

function CkDkim_LoadTaskCaller(objHandle: HCkDkim; task: HCkTask): wordbool; stdcall;

function CkDkim_NumDkimSignatures(objHandle: HCkDkim; mimeData: HCkByteData): Integer; stdcall;

function CkDkim_NumDkimSigs(objHandle: HCkDkim; mimeData: HCkBinData): Integer; stdcall;

function CkDkim_NumDomainKeySignatures(objHandle: HCkDkim; mimeData: HCkByteData): Integer; stdcall;

function CkDkim_NumDomainKeySigs(objHandle: HCkDkim; mimeData: HCkBinData): Integer; stdcall;

function CkDkim_PrefetchPublicKey(objHandle: HCkDkim; selector: PWideChar; domain: PWideChar): wordbool; stdcall;

function CkDkim_PrefetchPublicKeyAsync(objHandle: HCkDkim; selector: PWideChar; domain: PWideChar): HCkTask; stdcall;

function CkDkim_SaveLastError(objHandle: HCkDkim; path: PWideChar): wordbool; stdcall;

function CkDkim_SetDkimPrivateKey(objHandle: HCkDkim; privateKey: HCkPrivateKey): wordbool; stdcall;

function CkDkim_SetDomainKeyPrivateKey(objHandle: HCkDkim; privateKey: HCkPrivateKey): wordbool; stdcall;

function CkDkim_UnlockComponent(objHandle: HCkDkim; unlockCode: PWideChar): wordbool; stdcall;

function CkDkim_VerifyDkimSignature(objHandle: HCkDkim; sigIndex: Integer; mimeData: HCkByteData): wordbool; stdcall;

function CkDkim_VerifyDkimSignatureAsync(objHandle: HCkDkim; sigIndex: Integer; mimeData: HCkByteData): HCkTask; stdcall;

function CkDkim_VerifyDomainKeySignature(objHandle: HCkDkim; sigIndex: Integer; mimeData: HCkByteData): wordbool; stdcall;

function CkDkim_VerifyDomainKeySignatureAsync(objHandle: HCkDkim; sigIndex: Integer; mimeData: HCkByteData): HCkTask; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkDkim_Create; external DLLName;
procedure CkDkim_Dispose; external DLLName;

procedure CkDkim_SetAbortCheck; external DLLName;
procedure CkDkim_SetProgressInfo; external DLLName;
procedure CkDkim_SetPercentDone; external DLLName;
procedure CkDkim_SetTaskCompleted; external DLLName;
function CkDkim_getAbortCurrent; external DLLName;
procedure CkDkim_putAbortCurrent; external DLLName;
procedure CkDkim_getDebugLogFilePath; external DLLName;
procedure CkDkim_putDebugLogFilePath; external DLLName;
function CkDkim__debugLogFilePath; external DLLName;
procedure CkDkim_getDkimAlg; external DLLName;
procedure CkDkim_putDkimAlg; external DLLName;
function CkDkim__dkimAlg; external DLLName;
function CkDkim_getDkimBodyLengthCount; external DLLName;
procedure CkDkim_putDkimBodyLengthCount; external DLLName;
procedure CkDkim_getDkimCanon; external DLLName;
procedure CkDkim_putDkimCanon; external DLLName;
function CkDkim__dkimCanon; external DLLName;
procedure CkDkim_getDkimDomain; external DLLName;
procedure CkDkim_putDkimDomain; external DLLName;
function CkDkim__dkimDomain; external DLLName;
procedure CkDkim_getDkimHeaders; external DLLName;
procedure CkDkim_putDkimHeaders; external DLLName;
function CkDkim__dkimHeaders; external DLLName;
procedure CkDkim_getDkimSelector; external DLLName;
procedure CkDkim_putDkimSelector; external DLLName;
function CkDkim__dkimSelector; external DLLName;
procedure CkDkim_getDomainKeyAlg; external DLLName;
procedure CkDkim_putDomainKeyAlg; external DLLName;
function CkDkim__domainKeyAlg; external DLLName;
procedure CkDkim_getDomainKeyCanon; external DLLName;
procedure CkDkim_putDomainKeyCanon; external DLLName;
function CkDkim__domainKeyCanon; external DLLName;
procedure CkDkim_getDomainKeyDomain; external DLLName;
procedure CkDkim_putDomainKeyDomain; external DLLName;
function CkDkim__domainKeyDomain; external DLLName;
procedure CkDkim_getDomainKeyHeaders; external DLLName;
procedure CkDkim_putDomainKeyHeaders; external DLLName;
function CkDkim__domainKeyHeaders; external DLLName;
procedure CkDkim_getDomainKeySelector; external DLLName;
procedure CkDkim_putDomainKeySelector; external DLLName;
function CkDkim__domainKeySelector; external DLLName;
function CkDkim_getHeartbeatMs; external DLLName;
procedure CkDkim_putHeartbeatMs; external DLLName;
procedure CkDkim_getLastErrorHtml; external DLLName;
function CkDkim__lastErrorHtml; external DLLName;
procedure CkDkim_getLastErrorText; external DLLName;
function CkDkim__lastErrorText; external DLLName;
procedure CkDkim_getLastErrorXml; external DLLName;
function CkDkim__lastErrorXml; external DLLName;
function CkDkim_getLastMethodSuccess; external DLLName;
procedure CkDkim_putLastMethodSuccess; external DLLName;
function CkDkim_getVerboseLogging; external DLLName;
procedure CkDkim_putVerboseLogging; external DLLName;
procedure CkDkim_getVerifyInfo; external DLLName;
function CkDkim__verifyInfo; external DLLName;
procedure CkDkim_getVersion; external DLLName;
function CkDkim__version; external DLLName;
function CkDkim_AddDkimSignature; external DLLName;
function CkDkim_AddDomainKeySignature; external DLLName;
function CkDkim_DkimSign; external DLLName;
function CkDkim_DkimVerify; external DLLName;
function CkDkim_DomainKeySign; external DLLName;
function CkDkim_DomainKeyVerify; external DLLName;
function CkDkim_LoadDkimPk; external DLLName;
function CkDkim_LoadDkimPkBytes; external DLLName;
function CkDkim_LoadDkimPkFile; external DLLName;
function CkDkim_LoadDomainKeyPk; external DLLName;
function CkDkim_LoadDomainKeyPkBytes; external DLLName;
function CkDkim_LoadDomainKeyPkFile; external DLLName;
function CkDkim_LoadPublicKey; external DLLName;
function CkDkim_LoadPublicKeyFile; external DLLName;
function CkDkim_LoadTaskCaller; external DLLName;
function CkDkim_NumDkimSignatures; external DLLName;
function CkDkim_NumDkimSigs; external DLLName;
function CkDkim_NumDomainKeySignatures; external DLLName;
function CkDkim_NumDomainKeySigs; external DLLName;
function CkDkim_PrefetchPublicKey; external DLLName;
function CkDkim_PrefetchPublicKeyAsync; external DLLName;
function CkDkim_SaveLastError; external DLLName;
function CkDkim_SetDkimPrivateKey; external DLLName;
function CkDkim_SetDomainKeyPrivateKey; external DLLName;
function CkDkim_UnlockComponent; external DLLName;
function CkDkim_VerifyDkimSignature; external DLLName;
function CkDkim_VerifyDkimSignatureAsync; external DLLName;
function CkDkim_VerifyDomainKeySignature; external DLLName;
function CkDkim_VerifyDomainKeySignatureAsync; external DLLName;



end.
