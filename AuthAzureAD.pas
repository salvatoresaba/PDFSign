unit AuthAzureAD;

interface

type

HCkTask = Pointer;
HCkSocket = Pointer;
HCkAuthAzureAD = Pointer;
HCkString = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TAuthAzureADAbortCheck = function(): Integer; cdecl;
TAuthAzureADProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TAuthAzureADPercentDone = function(pctDone: Integer): Integer; cdecl;
TAuthAzureADTaskCompleted = procedure(task: HCkTask); cdecl;


function CkAuthAzureAD_Create: HCkAuthAzureAD; stdcall;
procedure CkAuthAzureAD_Dispose(handle: HCkAuthAzureAD); stdcall;

procedure CkAuthAzureAD_SetAbortCheck(objHandle: HCkAuthAzureAD; fn: TAuthAzureADAbortCheck) stdcall;
procedure CkAuthAzureAD_SetProgressInfo(objHandle: HCkAuthAzureAD; fn: TAuthAzureADProgressInfo) stdcall;
procedure CkAuthAzureAD_SetPercentDone(objHandle: HCkAuthAzureAD; fn: TAuthAzureADPercentDone) stdcall;
procedure CkAuthAzureAD_SetTaskCompleted(objHandle: HCkAuthAzureAD; fn: TAuthAzureADTaskCompleted) stdcall;
procedure CkAuthAzureAD_getAccessToken(objHandle: HCkAuthAzureAD; outPropVal: HCkString); stdcall;

procedure CkAuthAzureAD_putAccessToken(objHandle: HCkAuthAzureAD; newPropVal: PWideChar); stdcall;

function CkAuthAzureAD__accessToken(objHandle: HCkAuthAzureAD): PWideChar; stdcall;

procedure CkAuthAzureAD_getClientId(objHandle: HCkAuthAzureAD; outPropVal: HCkString); stdcall;

procedure CkAuthAzureAD_putClientId(objHandle: HCkAuthAzureAD; newPropVal: PWideChar); stdcall;

function CkAuthAzureAD__clientId(objHandle: HCkAuthAzureAD): PWideChar; stdcall;

procedure CkAuthAzureAD_getClientSecret(objHandle: HCkAuthAzureAD; outPropVal: HCkString); stdcall;

procedure CkAuthAzureAD_putClientSecret(objHandle: HCkAuthAzureAD; newPropVal: PWideChar); stdcall;

function CkAuthAzureAD__clientSecret(objHandle: HCkAuthAzureAD): PWideChar; stdcall;

procedure CkAuthAzureAD_getDebugLogFilePath(objHandle: HCkAuthAzureAD; outPropVal: HCkString); stdcall;

procedure CkAuthAzureAD_putDebugLogFilePath(objHandle: HCkAuthAzureAD; newPropVal: PWideChar); stdcall;

function CkAuthAzureAD__debugLogFilePath(objHandle: HCkAuthAzureAD): PWideChar; stdcall;

procedure CkAuthAzureAD_getLastErrorHtml(objHandle: HCkAuthAzureAD; outPropVal: HCkString); stdcall;

function CkAuthAzureAD__lastErrorHtml(objHandle: HCkAuthAzureAD): PWideChar; stdcall;

procedure CkAuthAzureAD_getLastErrorText(objHandle: HCkAuthAzureAD; outPropVal: HCkString); stdcall;

function CkAuthAzureAD__lastErrorText(objHandle: HCkAuthAzureAD): PWideChar; stdcall;

procedure CkAuthAzureAD_getLastErrorXml(objHandle: HCkAuthAzureAD; outPropVal: HCkString); stdcall;

function CkAuthAzureAD__lastErrorXml(objHandle: HCkAuthAzureAD): PWideChar; stdcall;

function CkAuthAzureAD_getLastMethodSuccess(objHandle: HCkAuthAzureAD): wordbool; stdcall;

procedure CkAuthAzureAD_putLastMethodSuccess(objHandle: HCkAuthAzureAD; newPropVal: wordbool); stdcall;

function CkAuthAzureAD_getNumSecondsRemaining(objHandle: HCkAuthAzureAD): Integer; stdcall;

procedure CkAuthAzureAD_getResource(objHandle: HCkAuthAzureAD; outPropVal: HCkString); stdcall;

procedure CkAuthAzureAD_putResource(objHandle: HCkAuthAzureAD; newPropVal: PWideChar); stdcall;

function CkAuthAzureAD__resource(objHandle: HCkAuthAzureAD): PWideChar; stdcall;

procedure CkAuthAzureAD_getTenantId(objHandle: HCkAuthAzureAD; outPropVal: HCkString); stdcall;

procedure CkAuthAzureAD_putTenantId(objHandle: HCkAuthAzureAD; newPropVal: PWideChar); stdcall;

function CkAuthAzureAD__tenantId(objHandle: HCkAuthAzureAD): PWideChar; stdcall;

function CkAuthAzureAD_getValid(objHandle: HCkAuthAzureAD): wordbool; stdcall;

function CkAuthAzureAD_getVerboseLogging(objHandle: HCkAuthAzureAD): wordbool; stdcall;

procedure CkAuthAzureAD_putVerboseLogging(objHandle: HCkAuthAzureAD; newPropVal: wordbool); stdcall;

procedure CkAuthAzureAD_getVersion(objHandle: HCkAuthAzureAD; outPropVal: HCkString); stdcall;

function CkAuthAzureAD__version(objHandle: HCkAuthAzureAD): PWideChar; stdcall;

function CkAuthAzureAD_LoadTaskCaller(objHandle: HCkAuthAzureAD; task: HCkTask): wordbool; stdcall;

function CkAuthAzureAD_ObtainAccessToken(objHandle: HCkAuthAzureAD; connection: HCkSocket): wordbool; stdcall;

function CkAuthAzureAD_ObtainAccessTokenAsync(objHandle: HCkAuthAzureAD; connection: HCkSocket): HCkTask; stdcall;

function CkAuthAzureAD_SaveLastError(objHandle: HCkAuthAzureAD; path: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkAuthAzureAD_Create; external DLLName;
procedure CkAuthAzureAD_Dispose; external DLLName;

procedure CkAuthAzureAD_SetAbortCheck; external DLLName;
procedure CkAuthAzureAD_SetProgressInfo; external DLLName;
procedure CkAuthAzureAD_SetPercentDone; external DLLName;
procedure CkAuthAzureAD_SetTaskCompleted; external DLLName;
procedure CkAuthAzureAD_getAccessToken; external DLLName;
procedure CkAuthAzureAD_putAccessToken; external DLLName;
function CkAuthAzureAD__accessToken; external DLLName;
procedure CkAuthAzureAD_getClientId; external DLLName;
procedure CkAuthAzureAD_putClientId; external DLLName;
function CkAuthAzureAD__clientId; external DLLName;
procedure CkAuthAzureAD_getClientSecret; external DLLName;
procedure CkAuthAzureAD_putClientSecret; external DLLName;
function CkAuthAzureAD__clientSecret; external DLLName;
procedure CkAuthAzureAD_getDebugLogFilePath; external DLLName;
procedure CkAuthAzureAD_putDebugLogFilePath; external DLLName;
function CkAuthAzureAD__debugLogFilePath; external DLLName;
procedure CkAuthAzureAD_getLastErrorHtml; external DLLName;
function CkAuthAzureAD__lastErrorHtml; external DLLName;
procedure CkAuthAzureAD_getLastErrorText; external DLLName;
function CkAuthAzureAD__lastErrorText; external DLLName;
procedure CkAuthAzureAD_getLastErrorXml; external DLLName;
function CkAuthAzureAD__lastErrorXml; external DLLName;
function CkAuthAzureAD_getLastMethodSuccess; external DLLName;
procedure CkAuthAzureAD_putLastMethodSuccess; external DLLName;
function CkAuthAzureAD_getNumSecondsRemaining; external DLLName;
procedure CkAuthAzureAD_getResource; external DLLName;
procedure CkAuthAzureAD_putResource; external DLLName;
function CkAuthAzureAD__resource; external DLLName;
procedure CkAuthAzureAD_getTenantId; external DLLName;
procedure CkAuthAzureAD_putTenantId; external DLLName;
function CkAuthAzureAD__tenantId; external DLLName;
function CkAuthAzureAD_getValid; external DLLName;
function CkAuthAzureAD_getVerboseLogging; external DLLName;
procedure CkAuthAzureAD_putVerboseLogging; external DLLName;
procedure CkAuthAzureAD_getVersion; external DLLName;
function CkAuthAzureAD__version; external DLLName;
function CkAuthAzureAD_LoadTaskCaller; external DLLName;
function CkAuthAzureAD_ObtainAccessToken; external DLLName;
function CkAuthAzureAD_ObtainAccessTokenAsync; external DLLName;
function CkAuthAzureAD_SaveLastError; external DLLName;



end.
