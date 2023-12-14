unit Pem;

interface

type

HCkPem = Pointer;
HCkPrivateKey = Pointer;
HCkTask = Pointer;
HCkByteData = Pointer;
HCkString = Pointer;
HCkJavaKeyStore = Pointer;
HCkPublicKey = Pointer;
HCkCertChain = Pointer;
HCkCert = Pointer;
HCkPfx = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TPemAbortCheck = function(): Integer; cdecl;
TPemProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TPemPercentDone = function(pctDone: Integer): Integer; cdecl;
TPemTaskCompleted = procedure(task: HCkTask); cdecl;


function CkPem_Create: HCkPem; stdcall;
procedure CkPem_Dispose(handle: HCkPem); stdcall;

procedure CkPem_SetAbortCheck(objHandle: HCkPem; fn: TPemAbortCheck) stdcall;
procedure CkPem_SetProgressInfo(objHandle: HCkPem; fn: TPemProgressInfo) stdcall;
procedure CkPem_SetPercentDone(objHandle: HCkPem; fn: TPemPercentDone) stdcall;
procedure CkPem_SetTaskCompleted(objHandle: HCkPem; fn: TPemTaskCompleted) stdcall;
function CkPem_getAppendMode(objHandle: HCkPem): wordbool; stdcall;

procedure CkPem_putAppendMode(objHandle: HCkPem; newPropVal: wordbool); stdcall;

procedure CkPem_getDebugLogFilePath(objHandle: HCkPem; outPropVal: HCkString); stdcall;

procedure CkPem_putDebugLogFilePath(objHandle: HCkPem; newPropVal: PWideChar); stdcall;

function CkPem__debugLogFilePath(objHandle: HCkPem): PWideChar; stdcall;

function CkPem_getHeartbeatMs(objHandle: HCkPem): Integer; stdcall;

procedure CkPem_putHeartbeatMs(objHandle: HCkPem; newPropVal: Integer); stdcall;

procedure CkPem_getLastErrorHtml(objHandle: HCkPem; outPropVal: HCkString); stdcall;

function CkPem__lastErrorHtml(objHandle: HCkPem): PWideChar; stdcall;

procedure CkPem_getLastErrorText(objHandle: HCkPem; outPropVal: HCkString); stdcall;

function CkPem__lastErrorText(objHandle: HCkPem): PWideChar; stdcall;

procedure CkPem_getLastErrorXml(objHandle: HCkPem; outPropVal: HCkString); stdcall;

function CkPem__lastErrorXml(objHandle: HCkPem): PWideChar; stdcall;

function CkPem_getLastMethodSuccess(objHandle: HCkPem): wordbool; stdcall;

procedure CkPem_putLastMethodSuccess(objHandle: HCkPem; newPropVal: wordbool); stdcall;

function CkPem_getNumCerts(objHandle: HCkPem): Integer; stdcall;

function CkPem_getNumCrls(objHandle: HCkPem): Integer; stdcall;

function CkPem_getNumCsrs(objHandle: HCkPem): Integer; stdcall;

function CkPem_getNumPrivateKeys(objHandle: HCkPem): Integer; stdcall;

function CkPem_getNumPublicKeys(objHandle: HCkPem): Integer; stdcall;

procedure CkPem_getPrivateKeyFormat(objHandle: HCkPem; outPropVal: HCkString); stdcall;

procedure CkPem_putPrivateKeyFormat(objHandle: HCkPem; newPropVal: PWideChar); stdcall;

function CkPem__privateKeyFormat(objHandle: HCkPem): PWideChar; stdcall;

procedure CkPem_getPublicKeyFormat(objHandle: HCkPem; outPropVal: HCkString); stdcall;

procedure CkPem_putPublicKeyFormat(objHandle: HCkPem; newPropVal: PWideChar); stdcall;

function CkPem__publicKeyFormat(objHandle: HCkPem): PWideChar; stdcall;

function CkPem_getVerboseLogging(objHandle: HCkPem): wordbool; stdcall;

procedure CkPem_putVerboseLogging(objHandle: HCkPem; newPropVal: wordbool); stdcall;

procedure CkPem_getVersion(objHandle: HCkPem; outPropVal: HCkString); stdcall;

function CkPem__version(objHandle: HCkPem): PWideChar; stdcall;

function CkPem_AddCert(objHandle: HCkPem; cert: HCkCert; includeChain: wordbool): wordbool; stdcall;

function CkPem_AddItem(objHandle: HCkPem; itemType: PWideChar; encoding: PWideChar; itemData: PWideChar): wordbool; stdcall;

function CkPem_AddPrivateKey(objHandle: HCkPem; privateKey: HCkPrivateKey): wordbool; stdcall;

function CkPem_AddPrivateKey2(objHandle: HCkPem; privKey: HCkPrivateKey; certChain: HCkCertChain): wordbool; stdcall;

function CkPem_AddPublicKey(objHandle: HCkPem; pubkey: HCkPublicKey): wordbool; stdcall;

function CkPem_Clear(objHandle: HCkPem): wordbool; stdcall;

function CkPem_GetCert(objHandle: HCkPem; index: Integer): HCkCert; stdcall;

function CkPem_GetEncodedItem(objHandle: HCkPem; itemType: PWideChar; itemSubType: PWideChar; encoding: PWideChar; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkPem__getEncodedItem(objHandle: HCkPem; itemType: PWideChar; itemSubType: PWideChar; encoding: PWideChar; index: Integer): PWideChar; stdcall;

function CkPem_GetPrivateKey(objHandle: HCkPem; index: Integer): HCkPrivateKey; stdcall;

function CkPem_GetPublicKey(objHandle: HCkPem; index: Integer): HCkPublicKey; stdcall;

function CkPem_LoadP7b(objHandle: HCkPem; p7bData: HCkByteData): wordbool; stdcall;

function CkPem_LoadP7bAsync(objHandle: HCkPem; p7bData: HCkByteData): HCkTask; stdcall;

function CkPem_LoadP7bFile(objHandle: HCkPem; path: PWideChar): wordbool; stdcall;

function CkPem_LoadP7bFileAsync(objHandle: HCkPem; path: PWideChar): HCkTask; stdcall;

function CkPem_LoadPem(objHandle: HCkPem; pemContent: PWideChar; password: PWideChar): wordbool; stdcall;

function CkPem_LoadPemAsync(objHandle: HCkPem; pemContent: PWideChar; password: PWideChar): HCkTask; stdcall;

function CkPem_LoadPemFile(objHandle: HCkPem; path: PWideChar; password: PWideChar): wordbool; stdcall;

function CkPem_LoadPemFileAsync(objHandle: HCkPem; path: PWideChar; password: PWideChar): HCkTask; stdcall;

function CkPem_LoadTaskCaller(objHandle: HCkPem; task: HCkTask): wordbool; stdcall;

function CkPem_RemoveCert(objHandle: HCkPem; index: Integer): wordbool; stdcall;

function CkPem_RemovePrivateKey(objHandle: HCkPem; index: Integer): wordbool; stdcall;

function CkPem_SaveLastError(objHandle: HCkPem; path: PWideChar): wordbool; stdcall;

function CkPem_ToJks(objHandle: HCkPem; alias: PWideChar; password: PWideChar): HCkJavaKeyStore; stdcall;

function CkPem_ToPem(objHandle: HCkPem; outStr: HCkString): wordbool; stdcall;

function CkPem__toPem(objHandle: HCkPem): PWideChar; stdcall;

function CkPem_ToPemEx(objHandle: HCkPem; extendedAttrs: wordbool; noKeys: wordbool; noCerts: wordbool; noCaCerts: wordbool; encryptAlg: PWideChar; password: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkPem__toPemEx(objHandle: HCkPem; extendedAttrs: wordbool; noKeys: wordbool; noCerts: wordbool; noCaCerts: wordbool; encryptAlg: PWideChar; password: PWideChar): PWideChar; stdcall;

function CkPem_ToPfx(objHandle: HCkPem): HCkPfx; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkPem_Create; external DLLName;
procedure CkPem_Dispose; external DLLName;

procedure CkPem_SetAbortCheck; external DLLName;
procedure CkPem_SetProgressInfo; external DLLName;
procedure CkPem_SetPercentDone; external DLLName;
procedure CkPem_SetTaskCompleted; external DLLName;
function CkPem_getAppendMode; external DLLName;
procedure CkPem_putAppendMode; external DLLName;
procedure CkPem_getDebugLogFilePath; external DLLName;
procedure CkPem_putDebugLogFilePath; external DLLName;
function CkPem__debugLogFilePath; external DLLName;
function CkPem_getHeartbeatMs; external DLLName;
procedure CkPem_putHeartbeatMs; external DLLName;
procedure CkPem_getLastErrorHtml; external DLLName;
function CkPem__lastErrorHtml; external DLLName;
procedure CkPem_getLastErrorText; external DLLName;
function CkPem__lastErrorText; external DLLName;
procedure CkPem_getLastErrorXml; external DLLName;
function CkPem__lastErrorXml; external DLLName;
function CkPem_getLastMethodSuccess; external DLLName;
procedure CkPem_putLastMethodSuccess; external DLLName;
function CkPem_getNumCerts; external DLLName;
function CkPem_getNumCrls; external DLLName;
function CkPem_getNumCsrs; external DLLName;
function CkPem_getNumPrivateKeys; external DLLName;
function CkPem_getNumPublicKeys; external DLLName;
procedure CkPem_getPrivateKeyFormat; external DLLName;
procedure CkPem_putPrivateKeyFormat; external DLLName;
function CkPem__privateKeyFormat; external DLLName;
procedure CkPem_getPublicKeyFormat; external DLLName;
procedure CkPem_putPublicKeyFormat; external DLLName;
function CkPem__publicKeyFormat; external DLLName;
function CkPem_getVerboseLogging; external DLLName;
procedure CkPem_putVerboseLogging; external DLLName;
procedure CkPem_getVersion; external DLLName;
function CkPem__version; external DLLName;
function CkPem_AddCert; external DLLName;
function CkPem_AddItem; external DLLName;
function CkPem_AddPrivateKey; external DLLName;
function CkPem_AddPrivateKey2; external DLLName;
function CkPem_AddPublicKey; external DLLName;
function CkPem_Clear; external DLLName;
function CkPem_GetCert; external DLLName;
function CkPem_GetEncodedItem; external DLLName;
function CkPem__getEncodedItem; external DLLName;
function CkPem_GetPrivateKey; external DLLName;
function CkPem_GetPublicKey; external DLLName;
function CkPem_LoadP7b; external DLLName;
function CkPem_LoadP7bAsync; external DLLName;
function CkPem_LoadP7bFile; external DLLName;
function CkPem_LoadP7bFileAsync; external DLLName;
function CkPem_LoadPem; external DLLName;
function CkPem_LoadPemAsync; external DLLName;
function CkPem_LoadPemFile; external DLLName;
function CkPem_LoadPemFileAsync; external DLLName;
function CkPem_LoadTaskCaller; external DLLName;
function CkPem_RemoveCert; external DLLName;
function CkPem_RemovePrivateKey; external DLLName;
function CkPem_SaveLastError; external DLLName;
function CkPem_ToJks; external DLLName;
function CkPem_ToPem; external DLLName;
function CkPem__toPem; external DLLName;
function CkPem_ToPemEx; external DLLName;
function CkPem__toPemEx; external DLLName;
function CkPem_ToPfx; external DLLName;



end.
