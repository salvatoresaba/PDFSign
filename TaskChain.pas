unit TaskChain;

interface

type

HCkTask = Pointer;
HCkTaskChain = Pointer;
HCkString = Pointer;


function CkTaskChain_Create: HCkTaskChain; stdcall;
procedure CkTaskChain_Dispose(handle: HCkTaskChain); stdcall;
procedure CkTaskChain_getDebugLogFilePath(objHandle: HCkTaskChain; outPropVal: HCkString); stdcall;

procedure CkTaskChain_putDebugLogFilePath(objHandle: HCkTaskChain; newPropVal: PWideChar); stdcall;

function CkTaskChain__debugLogFilePath(objHandle: HCkTaskChain): PWideChar; stdcall;

function CkTaskChain_getFinished(objHandle: HCkTaskChain): wordbool; stdcall;

function CkTaskChain_getHeartbeatMs(objHandle: HCkTaskChain): Integer; stdcall;

procedure CkTaskChain_putHeartbeatMs(objHandle: HCkTaskChain; newPropVal: Integer); stdcall;

function CkTaskChain_getInert(objHandle: HCkTaskChain): wordbool; stdcall;

procedure CkTaskChain_getLastErrorHtml(objHandle: HCkTaskChain; outPropVal: HCkString); stdcall;

function CkTaskChain__lastErrorHtml(objHandle: HCkTaskChain): PWideChar; stdcall;

procedure CkTaskChain_getLastErrorText(objHandle: HCkTaskChain; outPropVal: HCkString); stdcall;

function CkTaskChain__lastErrorText(objHandle: HCkTaskChain): PWideChar; stdcall;

procedure CkTaskChain_getLastErrorXml(objHandle: HCkTaskChain; outPropVal: HCkString); stdcall;

function CkTaskChain__lastErrorXml(objHandle: HCkTaskChain): PWideChar; stdcall;

function CkTaskChain_getLastMethodSuccess(objHandle: HCkTaskChain): wordbool; stdcall;

procedure CkTaskChain_putLastMethodSuccess(objHandle: HCkTaskChain; newPropVal: wordbool); stdcall;

function CkTaskChain_getLive(objHandle: HCkTaskChain): wordbool; stdcall;

function CkTaskChain_getNumTasks(objHandle: HCkTaskChain): Integer; stdcall;

procedure CkTaskChain_getStatus(objHandle: HCkTaskChain; outPropVal: HCkString); stdcall;

function CkTaskChain__status(objHandle: HCkTaskChain): PWideChar; stdcall;

function CkTaskChain_getStatusInt(objHandle: HCkTaskChain): Integer; stdcall;

function CkTaskChain_getStopOnFailedTask(objHandle: HCkTaskChain): wordbool; stdcall;

procedure CkTaskChain_putStopOnFailedTask(objHandle: HCkTaskChain; newPropVal: wordbool); stdcall;

function CkTaskChain_getVerboseLogging(objHandle: HCkTaskChain): wordbool; stdcall;

procedure CkTaskChain_putVerboseLogging(objHandle: HCkTaskChain; newPropVal: wordbool); stdcall;

procedure CkTaskChain_getVersion(objHandle: HCkTaskChain; outPropVal: HCkString); stdcall;

function CkTaskChain__version(objHandle: HCkTaskChain): PWideChar; stdcall;

function CkTaskChain_Append(objHandle: HCkTaskChain; task: HCkTask): wordbool; stdcall;

function CkTaskChain_Cancel(objHandle: HCkTaskChain): wordbool; stdcall;

function CkTaskChain_GetTask(objHandle: HCkTaskChain; index: Integer): HCkTask; stdcall;

function CkTaskChain_Run(objHandle: HCkTaskChain): wordbool; stdcall;

function CkTaskChain_RunSynchronously(objHandle: HCkTaskChain): wordbool; stdcall;

function CkTaskChain_SaveLastError(objHandle: HCkTaskChain; path: PWideChar): wordbool; stdcall;

procedure CkTaskChain_SleepMs(objHandle: HCkTaskChain; numMs: Integer); stdcall;

function CkTaskChain_Wait(objHandle: HCkTaskChain; maxWaitMs: Integer): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkTaskChain_Create; external DLLName;
procedure CkTaskChain_Dispose; external DLLName;
procedure CkTaskChain_getDebugLogFilePath; external DLLName;
procedure CkTaskChain_putDebugLogFilePath; external DLLName;
function CkTaskChain__debugLogFilePath; external DLLName;
function CkTaskChain_getFinished; external DLLName;
function CkTaskChain_getHeartbeatMs; external DLLName;
procedure CkTaskChain_putHeartbeatMs; external DLLName;
function CkTaskChain_getInert; external DLLName;
procedure CkTaskChain_getLastErrorHtml; external DLLName;
function CkTaskChain__lastErrorHtml; external DLLName;
procedure CkTaskChain_getLastErrorText; external DLLName;
function CkTaskChain__lastErrorText; external DLLName;
procedure CkTaskChain_getLastErrorXml; external DLLName;
function CkTaskChain__lastErrorXml; external DLLName;
function CkTaskChain_getLastMethodSuccess; external DLLName;
procedure CkTaskChain_putLastMethodSuccess; external DLLName;
function CkTaskChain_getLive; external DLLName;
function CkTaskChain_getNumTasks; external DLLName;
procedure CkTaskChain_getStatus; external DLLName;
function CkTaskChain__status; external DLLName;
function CkTaskChain_getStatusInt; external DLLName;
function CkTaskChain_getStopOnFailedTask; external DLLName;
procedure CkTaskChain_putStopOnFailedTask; external DLLName;
function CkTaskChain_getVerboseLogging; external DLLName;
procedure CkTaskChain_putVerboseLogging; external DLLName;
procedure CkTaskChain_getVersion; external DLLName;
function CkTaskChain__version; external DLLName;
function CkTaskChain_Append; external DLLName;
function CkTaskChain_Cancel; external DLLName;
function CkTaskChain_GetTask; external DLLName;
function CkTaskChain_Run; external DLLName;
function CkTaskChain_RunSynchronously; external DLLName;
function CkTaskChain_SaveLastError; external DLLName;
procedure CkTaskChain_SleepMs; external DLLName;
function CkTaskChain_Wait; external DLLName;



end.
