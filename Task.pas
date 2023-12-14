unit Task;

interface

type

HCkTask = Pointer;
HCkByteData = Pointer;
HCkString = Pointer;


function CkTask_Create: HCkTask; stdcall;
procedure CkTask_Dispose(handle: HCkTask); stdcall;
procedure CkTask_getDebugLogFilePath(objHandle: HCkTask; outPropVal: HCkString); stdcall;

procedure CkTask_putDebugLogFilePath(objHandle: HCkTask; newPropVal: PWideChar); stdcall;

function CkTask__debugLogFilePath(objHandle: HCkTask): PWideChar; stdcall;

function CkTask_getFinished(objHandle: HCkTask): wordbool; stdcall;

function CkTask_getHeartbeatMs(objHandle: HCkTask): Integer; stdcall;

procedure CkTask_putHeartbeatMs(objHandle: HCkTask; newPropVal: Integer); stdcall;

function CkTask_getInert(objHandle: HCkTask): wordbool; stdcall;

function CkTask_getKeepProgressLog(objHandle: HCkTask): wordbool; stdcall;

procedure CkTask_putKeepProgressLog(objHandle: HCkTask; newPropVal: wordbool); stdcall;

procedure CkTask_getLastErrorHtml(objHandle: HCkTask; outPropVal: HCkString); stdcall;

function CkTask__lastErrorHtml(objHandle: HCkTask): PWideChar; stdcall;

procedure CkTask_getLastErrorText(objHandle: HCkTask; outPropVal: HCkString); stdcall;

function CkTask__lastErrorText(objHandle: HCkTask): PWideChar; stdcall;

procedure CkTask_getLastErrorXml(objHandle: HCkTask; outPropVal: HCkString); stdcall;

function CkTask__lastErrorXml(objHandle: HCkTask): PWideChar; stdcall;

function CkTask_getLastMethodSuccess(objHandle: HCkTask): wordbool; stdcall;

procedure CkTask_putLastMethodSuccess(objHandle: HCkTask; newPropVal: wordbool); stdcall;

function CkTask_getLive(objHandle: HCkTask): wordbool; stdcall;

function CkTask_getPercentDone(objHandle: HCkTask): Integer; stdcall;

function CkTask_getProgressLogSize(objHandle: HCkTask): Integer; stdcall;

procedure CkTask_getResultErrorText(objHandle: HCkTask; outPropVal: HCkString); stdcall;

function CkTask__resultErrorText(objHandle: HCkTask): PWideChar; stdcall;

procedure CkTask_getResultType(objHandle: HCkTask; outPropVal: HCkString); stdcall;

function CkTask__resultType(objHandle: HCkTask): PWideChar; stdcall;

procedure CkTask_getStatus(objHandle: HCkTask; outPropVal: HCkString); stdcall;

function CkTask__status(objHandle: HCkTask): PWideChar; stdcall;

function CkTask_getStatusInt(objHandle: HCkTask): Integer; stdcall;

function CkTask_getTaskId(objHandle: HCkTask): Integer; stdcall;

function CkTask_getTaskSuccess(objHandle: HCkTask): wordbool; stdcall;

procedure CkTask_getUserData(objHandle: HCkTask; outPropVal: HCkString); stdcall;

procedure CkTask_putUserData(objHandle: HCkTask; newPropVal: PWideChar); stdcall;

function CkTask__userData(objHandle: HCkTask): PWideChar; stdcall;

function CkTask_getVerboseLogging(objHandle: HCkTask): wordbool; stdcall;

procedure CkTask_putVerboseLogging(objHandle: HCkTask; newPropVal: wordbool); stdcall;

procedure CkTask_getVersion(objHandle: HCkTask; outPropVal: HCkString); stdcall;

function CkTask__version(objHandle: HCkTask): PWideChar; stdcall;

function CkTask_Cancel(objHandle: HCkTask): wordbool; stdcall;

procedure CkTask_ClearProgressLog(objHandle: HCkTask); stdcall;

function CkTask_CopyResultBytes(objHandle: HCkTask; outData: HCkByteData): wordbool; stdcall;

function CkTask_GetResultBool(objHandle: HCkTask): wordbool; stdcall;

function CkTask_GetResultBytes(objHandle: HCkTask; outData: HCkByteData): wordbool; stdcall;

function CkTask_GetResultInt(objHandle: HCkTask): Integer; stdcall;

function CkTask_GetResultString(objHandle: HCkTask; outStr: HCkString): wordbool; stdcall;

function CkTask__getResultString(objHandle: HCkTask): PWideChar; stdcall;

function CkTask_ProgressInfoName(objHandle: HCkTask; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkTask__progressInfoName(objHandle: HCkTask; index: Integer): PWideChar; stdcall;

function CkTask_ProgressInfoValue(objHandle: HCkTask; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkTask__progressInfoValue(objHandle: HCkTask; index: Integer): PWideChar; stdcall;

procedure CkTask_RemoveProgressInfo(objHandle: HCkTask; index: Integer); stdcall;

function CkTask_Run(objHandle: HCkTask): wordbool; stdcall;

function CkTask_RunSynchronously(objHandle: HCkTask): wordbool; stdcall;

function CkTask_SaveLastError(objHandle: HCkTask; path: PWideChar): wordbool; stdcall;

procedure CkTask_SleepMs(objHandle: HCkTask; numMs: Integer); stdcall;

function CkTask_Wait(objHandle: HCkTask; maxWaitMs: Integer): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkTask_Create; external DLLName;
procedure CkTask_Dispose; external DLLName;
procedure CkTask_getDebugLogFilePath; external DLLName;
procedure CkTask_putDebugLogFilePath; external DLLName;
function CkTask__debugLogFilePath; external DLLName;
function CkTask_getFinished; external DLLName;
function CkTask_getHeartbeatMs; external DLLName;
procedure CkTask_putHeartbeatMs; external DLLName;
function CkTask_getInert; external DLLName;
function CkTask_getKeepProgressLog; external DLLName;
procedure CkTask_putKeepProgressLog; external DLLName;
procedure CkTask_getLastErrorHtml; external DLLName;
function CkTask__lastErrorHtml; external DLLName;
procedure CkTask_getLastErrorText; external DLLName;
function CkTask__lastErrorText; external DLLName;
procedure CkTask_getLastErrorXml; external DLLName;
function CkTask__lastErrorXml; external DLLName;
function CkTask_getLastMethodSuccess; external DLLName;
procedure CkTask_putLastMethodSuccess; external DLLName;
function CkTask_getLive; external DLLName;
function CkTask_getPercentDone; external DLLName;
function CkTask_getProgressLogSize; external DLLName;
procedure CkTask_getResultErrorText; external DLLName;
function CkTask__resultErrorText; external DLLName;
procedure CkTask_getResultType; external DLLName;
function CkTask__resultType; external DLLName;
procedure CkTask_getStatus; external DLLName;
function CkTask__status; external DLLName;
function CkTask_getStatusInt; external DLLName;
function CkTask_getTaskId; external DLLName;
function CkTask_getTaskSuccess; external DLLName;
procedure CkTask_getUserData; external DLLName;
procedure CkTask_putUserData; external DLLName;
function CkTask__userData; external DLLName;
function CkTask_getVerboseLogging; external DLLName;
procedure CkTask_putVerboseLogging; external DLLName;
procedure CkTask_getVersion; external DLLName;
function CkTask__version; external DLLName;
function CkTask_Cancel; external DLLName;
procedure CkTask_ClearProgressLog; external DLLName;
function CkTask_CopyResultBytes; external DLLName;
function CkTask_GetResultBool; external DLLName;
function CkTask_GetResultBytes; external DLLName;
function CkTask_GetResultInt; external DLLName;
function CkTask_GetResultString; external DLLName;
function CkTask__getResultString; external DLLName;
function CkTask_ProgressInfoName; external DLLName;
function CkTask__progressInfoName; external DLLName;
function CkTask_ProgressInfoValue; external DLLName;
function CkTask__progressInfoValue; external DLLName;
procedure CkTask_RemoveProgressInfo; external DLLName;
function CkTask_Run; external DLLName;
function CkTask_RunSynchronously; external DLLName;
function CkTask_SaveLastError; external DLLName;
procedure CkTask_SleepMs; external DLLName;
function CkTask_Wait; external DLLName;



end.
