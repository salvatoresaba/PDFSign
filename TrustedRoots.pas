unit TrustedRoots;

interface

type

HCkTrustedRoots = Pointer;
HCkCert = Pointer;
HCkTask = Pointer;
HCkJavaKeyStore = Pointer;
HCkString = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TTrustedRootsAbortCheck = function(): Integer; cdecl;
TTrustedRootsProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TTrustedRootsPercentDone = function(pctDone: Integer): Integer; cdecl;
TTrustedRootsTaskCompleted = procedure(task: HCkTask); cdecl;


function CkTrustedRoots_Create: HCkTrustedRoots; stdcall;
procedure CkTrustedRoots_Dispose(handle: HCkTrustedRoots); stdcall;

procedure CkTrustedRoots_SetAbortCheck(objHandle: HCkTrustedRoots; fn: TTrustedRootsAbortCheck) stdcall;
procedure CkTrustedRoots_SetProgressInfo(objHandle: HCkTrustedRoots; fn: TTrustedRootsProgressInfo) stdcall;
procedure CkTrustedRoots_SetPercentDone(objHandle: HCkTrustedRoots; fn: TTrustedRootsPercentDone) stdcall;
procedure CkTrustedRoots_SetTaskCompleted(objHandle: HCkTrustedRoots; fn: TTrustedRootsTaskCompleted) stdcall;
procedure CkTrustedRoots_getDebugLogFilePath(objHandle: HCkTrustedRoots; outPropVal: HCkString); stdcall;

procedure CkTrustedRoots_putDebugLogFilePath(objHandle: HCkTrustedRoots; newPropVal: PWideChar); stdcall;

function CkTrustedRoots__debugLogFilePath(objHandle: HCkTrustedRoots): PWideChar; stdcall;

procedure CkTrustedRoots_getLastErrorHtml(objHandle: HCkTrustedRoots; outPropVal: HCkString); stdcall;

function CkTrustedRoots__lastErrorHtml(objHandle: HCkTrustedRoots): PWideChar; stdcall;

procedure CkTrustedRoots_getLastErrorText(objHandle: HCkTrustedRoots; outPropVal: HCkString); stdcall;

function CkTrustedRoots__lastErrorText(objHandle: HCkTrustedRoots): PWideChar; stdcall;

procedure CkTrustedRoots_getLastErrorXml(objHandle: HCkTrustedRoots; outPropVal: HCkString); stdcall;

function CkTrustedRoots__lastErrorXml(objHandle: HCkTrustedRoots): PWideChar; stdcall;

function CkTrustedRoots_getLastMethodSuccess(objHandle: HCkTrustedRoots): wordbool; stdcall;

procedure CkTrustedRoots_putLastMethodSuccess(objHandle: HCkTrustedRoots; newPropVal: wordbool); stdcall;

function CkTrustedRoots_getNumCerts(objHandle: HCkTrustedRoots): Integer; stdcall;

function CkTrustedRoots_getRejectSelfSignedCerts(objHandle: HCkTrustedRoots): wordbool; stdcall;

procedure CkTrustedRoots_putRejectSelfSignedCerts(objHandle: HCkTrustedRoots; newPropVal: wordbool); stdcall;

function CkTrustedRoots_getTrustSystemCaRoots(objHandle: HCkTrustedRoots): wordbool; stdcall;

procedure CkTrustedRoots_putTrustSystemCaRoots(objHandle: HCkTrustedRoots; newPropVal: wordbool); stdcall;

function CkTrustedRoots_getVerboseLogging(objHandle: HCkTrustedRoots): wordbool; stdcall;

procedure CkTrustedRoots_putVerboseLogging(objHandle: HCkTrustedRoots; newPropVal: wordbool); stdcall;

procedure CkTrustedRoots_getVersion(objHandle: HCkTrustedRoots; outPropVal: HCkString); stdcall;

function CkTrustedRoots__version(objHandle: HCkTrustedRoots): PWideChar; stdcall;

function CkTrustedRoots_Activate(objHandle: HCkTrustedRoots): wordbool; stdcall;

function CkTrustedRoots_AddCert(objHandle: HCkTrustedRoots; cert: HCkCert): wordbool; stdcall;

function CkTrustedRoots_AddJavaKeyStore(objHandle: HCkTrustedRoots; keystore: HCkJavaKeyStore): wordbool; stdcall;

function CkTrustedRoots_AddJavaKeyStoreAsync(objHandle: HCkTrustedRoots; keystore: HCkJavaKeyStore): HCkTask; stdcall;

function CkTrustedRoots_Deactivate(objHandle: HCkTrustedRoots): wordbool; stdcall;

function CkTrustedRoots_GetCert(objHandle: HCkTrustedRoots; index: Integer): HCkCert; stdcall;

function CkTrustedRoots_LoadCaCertsPem(objHandle: HCkTrustedRoots; path: PWideChar): wordbool; stdcall;

function CkTrustedRoots_LoadCaCertsPemAsync(objHandle: HCkTrustedRoots; path: PWideChar): HCkTask; stdcall;

function CkTrustedRoots_LoadTaskCaller(objHandle: HCkTrustedRoots; task: HCkTask): wordbool; stdcall;

function CkTrustedRoots_SaveLastError(objHandle: HCkTrustedRoots; path: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkTrustedRoots_Create; external DLLName;
procedure CkTrustedRoots_Dispose; external DLLName;

procedure CkTrustedRoots_SetAbortCheck; external DLLName;
procedure CkTrustedRoots_SetProgressInfo; external DLLName;
procedure CkTrustedRoots_SetPercentDone; external DLLName;
procedure CkTrustedRoots_SetTaskCompleted; external DLLName;
procedure CkTrustedRoots_getDebugLogFilePath; external DLLName;
procedure CkTrustedRoots_putDebugLogFilePath; external DLLName;
function CkTrustedRoots__debugLogFilePath; external DLLName;
procedure CkTrustedRoots_getLastErrorHtml; external DLLName;
function CkTrustedRoots__lastErrorHtml; external DLLName;
procedure CkTrustedRoots_getLastErrorText; external DLLName;
function CkTrustedRoots__lastErrorText; external DLLName;
procedure CkTrustedRoots_getLastErrorXml; external DLLName;
function CkTrustedRoots__lastErrorXml; external DLLName;
function CkTrustedRoots_getLastMethodSuccess; external DLLName;
procedure CkTrustedRoots_putLastMethodSuccess; external DLLName;
function CkTrustedRoots_getNumCerts; external DLLName;
function CkTrustedRoots_getRejectSelfSignedCerts; external DLLName;
procedure CkTrustedRoots_putRejectSelfSignedCerts; external DLLName;
function CkTrustedRoots_getTrustSystemCaRoots; external DLLName;
procedure CkTrustedRoots_putTrustSystemCaRoots; external DLLName;
function CkTrustedRoots_getVerboseLogging; external DLLName;
procedure CkTrustedRoots_putVerboseLogging; external DLLName;
procedure CkTrustedRoots_getVersion; external DLLName;
function CkTrustedRoots__version; external DLLName;
function CkTrustedRoots_Activate; external DLLName;
function CkTrustedRoots_AddCert; external DLLName;
function CkTrustedRoots_AddJavaKeyStore; external DLLName;
function CkTrustedRoots_AddJavaKeyStoreAsync; external DLLName;
function CkTrustedRoots_Deactivate; external DLLName;
function CkTrustedRoots_GetCert; external DLLName;
function CkTrustedRoots_LoadCaCertsPem; external DLLName;
function CkTrustedRoots_LoadCaCertsPemAsync; external DLLName;
function CkTrustedRoots_LoadTaskCaller; external DLLName;
function CkTrustedRoots_SaveLastError; external DLLName;



end.
