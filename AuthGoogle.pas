unit AuthGoogle;

interface

type

HCkTask = Pointer;
HCkAuthGoogle = Pointer;
HCkSocket = Pointer;
HCkPfx = Pointer;
HCkString = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TAuthGoogleAbortCheck = function(): Integer; cdecl;
TAuthGoogleProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TAuthGooglePercentDone = function(pctDone: Integer): Integer; cdecl;
TAuthGoogleTaskCompleted = procedure(task: HCkTask); cdecl;


function CkAuthGoogle_Create: HCkAuthGoogle; stdcall;
procedure CkAuthGoogle_Dispose(handle: HCkAuthGoogle); stdcall;

procedure CkAuthGoogle_SetAbortCheck(objHandle: HCkAuthGoogle; fn: TAuthGoogleAbortCheck) stdcall;
procedure CkAuthGoogle_SetProgressInfo(objHandle: HCkAuthGoogle; fn: TAuthGoogleProgressInfo) stdcall;
procedure CkAuthGoogle_SetPercentDone(objHandle: HCkAuthGoogle; fn: TAuthGooglePercentDone) stdcall;
procedure CkAuthGoogle_SetTaskCompleted(objHandle: HCkAuthGoogle; fn: TAuthGoogleTaskCompleted) stdcall;
procedure CkAuthGoogle_getAccessToken(objHandle: HCkAuthGoogle; outPropVal: HCkString); stdcall;

procedure CkAuthGoogle_putAccessToken(objHandle: HCkAuthGoogle; newPropVal: PWideChar); stdcall;

function CkAuthGoogle__accessToken(objHandle: HCkAuthGoogle): PWideChar; stdcall;

procedure CkAuthGoogle_getDebugLogFilePath(objHandle: HCkAuthGoogle; outPropVal: HCkString); stdcall;

procedure CkAuthGoogle_putDebugLogFilePath(objHandle: HCkAuthGoogle; newPropVal: PWideChar); stdcall;

function CkAuthGoogle__debugLogFilePath(objHandle: HCkAuthGoogle): PWideChar; stdcall;

procedure CkAuthGoogle_getEmailAddress(objHandle: HCkAuthGoogle; outPropVal: HCkString); stdcall;

procedure CkAuthGoogle_putEmailAddress(objHandle: HCkAuthGoogle; newPropVal: PWideChar); stdcall;

function CkAuthGoogle__emailAddress(objHandle: HCkAuthGoogle): PWideChar; stdcall;

function CkAuthGoogle_getExpireNumSeconds(objHandle: HCkAuthGoogle): Integer; stdcall;

procedure CkAuthGoogle_putExpireNumSeconds(objHandle: HCkAuthGoogle; newPropVal: Integer); stdcall;

function CkAuthGoogle_getIat(objHandle: HCkAuthGoogle): Integer; stdcall;

procedure CkAuthGoogle_putIat(objHandle: HCkAuthGoogle; newPropVal: Integer); stdcall;

procedure CkAuthGoogle_getJsonKey(objHandle: HCkAuthGoogle; outPropVal: HCkString); stdcall;

procedure CkAuthGoogle_putJsonKey(objHandle: HCkAuthGoogle; newPropVal: PWideChar); stdcall;

function CkAuthGoogle__jsonKey(objHandle: HCkAuthGoogle): PWideChar; stdcall;

procedure CkAuthGoogle_getLastErrorHtml(objHandle: HCkAuthGoogle; outPropVal: HCkString); stdcall;

function CkAuthGoogle__lastErrorHtml(objHandle: HCkAuthGoogle): PWideChar; stdcall;

procedure CkAuthGoogle_getLastErrorText(objHandle: HCkAuthGoogle; outPropVal: HCkString); stdcall;

function CkAuthGoogle__lastErrorText(objHandle: HCkAuthGoogle): PWideChar; stdcall;

procedure CkAuthGoogle_getLastErrorXml(objHandle: HCkAuthGoogle; outPropVal: HCkString); stdcall;

function CkAuthGoogle__lastErrorXml(objHandle: HCkAuthGoogle): PWideChar; stdcall;

function CkAuthGoogle_getLastMethodSuccess(objHandle: HCkAuthGoogle): wordbool; stdcall;

procedure CkAuthGoogle_putLastMethodSuccess(objHandle: HCkAuthGoogle; newPropVal: wordbool); stdcall;

function CkAuthGoogle_getNumSecondsRemaining(objHandle: HCkAuthGoogle): Integer; stdcall;

procedure CkAuthGoogle_getScope(objHandle: HCkAuthGoogle; outPropVal: HCkString); stdcall;

procedure CkAuthGoogle_putScope(objHandle: HCkAuthGoogle; newPropVal: PWideChar); stdcall;

function CkAuthGoogle__scope(objHandle: HCkAuthGoogle): PWideChar; stdcall;

procedure CkAuthGoogle_getSubEmailAddress(objHandle: HCkAuthGoogle; outPropVal: HCkString); stdcall;

procedure CkAuthGoogle_putSubEmailAddress(objHandle: HCkAuthGoogle; newPropVal: PWideChar); stdcall;

function CkAuthGoogle__subEmailAddress(objHandle: HCkAuthGoogle): PWideChar; stdcall;

function CkAuthGoogle_getValid(objHandle: HCkAuthGoogle): wordbool; stdcall;

function CkAuthGoogle_getVerboseLogging(objHandle: HCkAuthGoogle): wordbool; stdcall;

procedure CkAuthGoogle_putVerboseLogging(objHandle: HCkAuthGoogle; newPropVal: wordbool); stdcall;

procedure CkAuthGoogle_getVersion(objHandle: HCkAuthGoogle; outPropVal: HCkString); stdcall;

function CkAuthGoogle__version(objHandle: HCkAuthGoogle): PWideChar; stdcall;

function CkAuthGoogle_GetP12(objHandle: HCkAuthGoogle): HCkPfx; stdcall;

function CkAuthGoogle_LoadTaskCaller(objHandle: HCkAuthGoogle; task: HCkTask): wordbool; stdcall;

function CkAuthGoogle_ObtainAccessToken(objHandle: HCkAuthGoogle; connection: HCkSocket): wordbool; stdcall;

function CkAuthGoogle_ObtainAccessTokenAsync(objHandle: HCkAuthGoogle; connection: HCkSocket): HCkTask; stdcall;

function CkAuthGoogle_SaveLastError(objHandle: HCkAuthGoogle; path: PWideChar): wordbool; stdcall;

function CkAuthGoogle_SetP12(objHandle: HCkAuthGoogle; key: HCkPfx): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkAuthGoogle_Create; external DLLName;
procedure CkAuthGoogle_Dispose; external DLLName;

procedure CkAuthGoogle_SetAbortCheck; external DLLName;
procedure CkAuthGoogle_SetProgressInfo; external DLLName;
procedure CkAuthGoogle_SetPercentDone; external DLLName;
procedure CkAuthGoogle_SetTaskCompleted; external DLLName;
procedure CkAuthGoogle_getAccessToken; external DLLName;
procedure CkAuthGoogle_putAccessToken; external DLLName;
function CkAuthGoogle__accessToken; external DLLName;
procedure CkAuthGoogle_getDebugLogFilePath; external DLLName;
procedure CkAuthGoogle_putDebugLogFilePath; external DLLName;
function CkAuthGoogle__debugLogFilePath; external DLLName;
procedure CkAuthGoogle_getEmailAddress; external DLLName;
procedure CkAuthGoogle_putEmailAddress; external DLLName;
function CkAuthGoogle__emailAddress; external DLLName;
function CkAuthGoogle_getExpireNumSeconds; external DLLName;
procedure CkAuthGoogle_putExpireNumSeconds; external DLLName;
function CkAuthGoogle_getIat; external DLLName;
procedure CkAuthGoogle_putIat; external DLLName;
procedure CkAuthGoogle_getJsonKey; external DLLName;
procedure CkAuthGoogle_putJsonKey; external DLLName;
function CkAuthGoogle__jsonKey; external DLLName;
procedure CkAuthGoogle_getLastErrorHtml; external DLLName;
function CkAuthGoogle__lastErrorHtml; external DLLName;
procedure CkAuthGoogle_getLastErrorText; external DLLName;
function CkAuthGoogle__lastErrorText; external DLLName;
procedure CkAuthGoogle_getLastErrorXml; external DLLName;
function CkAuthGoogle__lastErrorXml; external DLLName;
function CkAuthGoogle_getLastMethodSuccess; external DLLName;
procedure CkAuthGoogle_putLastMethodSuccess; external DLLName;
function CkAuthGoogle_getNumSecondsRemaining; external DLLName;
procedure CkAuthGoogle_getScope; external DLLName;
procedure CkAuthGoogle_putScope; external DLLName;
function CkAuthGoogle__scope; external DLLName;
procedure CkAuthGoogle_getSubEmailAddress; external DLLName;
procedure CkAuthGoogle_putSubEmailAddress; external DLLName;
function CkAuthGoogle__subEmailAddress; external DLLName;
function CkAuthGoogle_getValid; external DLLName;
function CkAuthGoogle_getVerboseLogging; external DLLName;
procedure CkAuthGoogle_putVerboseLogging; external DLLName;
procedure CkAuthGoogle_getVersion; external DLLName;
function CkAuthGoogle__version; external DLLName;
function CkAuthGoogle_GetP12; external DLLName;
function CkAuthGoogle_LoadTaskCaller; external DLLName;
function CkAuthGoogle_ObtainAccessToken; external DLLName;
function CkAuthGoogle_ObtainAccessTokenAsync; external DLLName;
function CkAuthGoogle_SaveLastError; external DLLName;
function CkAuthGoogle_SetP12; external DLLName;



end.
