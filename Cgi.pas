unit Cgi;

interface

type

HCkCgi = Pointer;
HCkByteData = Pointer;
HCkString = Pointer;


function CkCgi_Create: HCkCgi; stdcall;
procedure CkCgi_Dispose(handle: HCkCgi); stdcall;
function CkCgi_getAsyncBytesRead(objHandle: HCkCgi): Integer; stdcall;

function CkCgi_getAsyncInProgress(objHandle: HCkCgi): wordbool; stdcall;

function CkCgi_getAsyncPostSize(objHandle: HCkCgi): Integer; stdcall;

function CkCgi_getAsyncSuccess(objHandle: HCkCgi): wordbool; stdcall;

procedure CkCgi_getDebugLogFilePath(objHandle: HCkCgi; outPropVal: HCkString); stdcall;

procedure CkCgi_putDebugLogFilePath(objHandle: HCkCgi; newPropVal: PWideChar); stdcall;

function CkCgi__debugLogFilePath(objHandle: HCkCgi): PWideChar; stdcall;

function CkCgi_getHeartbeatMs(objHandle: HCkCgi): Integer; stdcall;

procedure CkCgi_putHeartbeatMs(objHandle: HCkCgi; newPropVal: Integer); stdcall;

function CkCgi_getIdleTimeoutMs(objHandle: HCkCgi): Integer; stdcall;

procedure CkCgi_putIdleTimeoutMs(objHandle: HCkCgi; newPropVal: Integer); stdcall;

procedure CkCgi_getLastErrorHtml(objHandle: HCkCgi; outPropVal: HCkString); stdcall;

function CkCgi__lastErrorHtml(objHandle: HCkCgi): PWideChar; stdcall;

procedure CkCgi_getLastErrorText(objHandle: HCkCgi; outPropVal: HCkString); stdcall;

function CkCgi__lastErrorText(objHandle: HCkCgi): PWideChar; stdcall;

procedure CkCgi_getLastErrorXml(objHandle: HCkCgi; outPropVal: HCkString); stdcall;

function CkCgi__lastErrorXml(objHandle: HCkCgi): PWideChar; stdcall;

function CkCgi_getLastMethodSuccess(objHandle: HCkCgi): wordbool; stdcall;

procedure CkCgi_putLastMethodSuccess(objHandle: HCkCgi; newPropVal: wordbool); stdcall;

function CkCgi_getNumParams(objHandle: HCkCgi): Integer; stdcall;

function CkCgi_getNumUploadFiles(objHandle: HCkCgi): Integer; stdcall;

function CkCgi_getReadChunkSize(objHandle: HCkCgi): Integer; stdcall;

procedure CkCgi_putReadChunkSize(objHandle: HCkCgi; newPropVal: Integer); stdcall;

function CkCgi_getSizeLimitKB(objHandle: HCkCgi): Integer; stdcall;

procedure CkCgi_putSizeLimitKB(objHandle: HCkCgi; newPropVal: Integer); stdcall;

function CkCgi_getStreamToUploadDir(objHandle: HCkCgi): wordbool; stdcall;

procedure CkCgi_putStreamToUploadDir(objHandle: HCkCgi; newPropVal: wordbool); stdcall;

procedure CkCgi_getUploadDir(objHandle: HCkCgi; outPropVal: HCkString); stdcall;

procedure CkCgi_putUploadDir(objHandle: HCkCgi; newPropVal: PWideChar); stdcall;

function CkCgi__uploadDir(objHandle: HCkCgi): PWideChar; stdcall;

function CkCgi_getVerboseLogging(objHandle: HCkCgi): wordbool; stdcall;

procedure CkCgi_putVerboseLogging(objHandle: HCkCgi; newPropVal: wordbool); stdcall;

procedure CkCgi_getVersion(objHandle: HCkCgi; outPropVal: HCkString); stdcall;

function CkCgi__version(objHandle: HCkCgi): PWideChar; stdcall;

procedure CkCgi_AbortAsync(objHandle: HCkCgi); stdcall;

function CkCgi_GetEnv(objHandle: HCkCgi; varName: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkCgi__getEnv(objHandle: HCkCgi; varName: PWideChar): PWideChar; stdcall;

function CkCgi_GetParam(objHandle: HCkCgi; paramName: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkCgi__getParam(objHandle: HCkCgi; paramName: PWideChar): PWideChar; stdcall;

function CkCgi_GetParamName(objHandle: HCkCgi; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkCgi__getParamName(objHandle: HCkCgi; index: Integer): PWideChar; stdcall;

function CkCgi_GetParamValue(objHandle: HCkCgi; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkCgi__getParamValue(objHandle: HCkCgi; index: Integer): PWideChar; stdcall;

function CkCgi_GetRawPostData(objHandle: HCkCgi; outData: HCkByteData): wordbool; stdcall;

function CkCgi_GetUploadData(objHandle: HCkCgi; index: Integer; outData: HCkByteData): wordbool; stdcall;

function CkCgi_GetUploadFilename(objHandle: HCkCgi; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkCgi__getUploadFilename(objHandle: HCkCgi; index: Integer): PWideChar; stdcall;

function CkCgi_GetUploadSize(objHandle: HCkCgi; index: Integer): Integer; stdcall;

function CkCgi_IsGet(objHandle: HCkCgi): wordbool; stdcall;

function CkCgi_IsHead(objHandle: HCkCgi): wordbool; stdcall;

function CkCgi_IsPost(objHandle: HCkCgi): wordbool; stdcall;

function CkCgi_IsUpload(objHandle: HCkCgi): wordbool; stdcall;

function CkCgi_ReadRequest(objHandle: HCkCgi): wordbool; stdcall;

function CkCgi_SaveLastError(objHandle: HCkCgi; path: PWideChar): wordbool; stdcall;

function CkCgi_SaveNthToUploadDir(objHandle: HCkCgi; index: Integer): wordbool; stdcall;

procedure CkCgi_SleepMs(objHandle: HCkCgi; millisec: Integer); stdcall;

function CkCgi_TestConsumeAspUpload(objHandle: HCkCgi; path: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkCgi_Create; external DLLName;
procedure CkCgi_Dispose; external DLLName;
function CkCgi_getAsyncBytesRead; external DLLName;
function CkCgi_getAsyncInProgress; external DLLName;
function CkCgi_getAsyncPostSize; external DLLName;
function CkCgi_getAsyncSuccess; external DLLName;
procedure CkCgi_getDebugLogFilePath; external DLLName;
procedure CkCgi_putDebugLogFilePath; external DLLName;
function CkCgi__debugLogFilePath; external DLLName;
function CkCgi_getHeartbeatMs; external DLLName;
procedure CkCgi_putHeartbeatMs; external DLLName;
function CkCgi_getIdleTimeoutMs; external DLLName;
procedure CkCgi_putIdleTimeoutMs; external DLLName;
procedure CkCgi_getLastErrorHtml; external DLLName;
function CkCgi__lastErrorHtml; external DLLName;
procedure CkCgi_getLastErrorText; external DLLName;
function CkCgi__lastErrorText; external DLLName;
procedure CkCgi_getLastErrorXml; external DLLName;
function CkCgi__lastErrorXml; external DLLName;
function CkCgi_getLastMethodSuccess; external DLLName;
procedure CkCgi_putLastMethodSuccess; external DLLName;
function CkCgi_getNumParams; external DLLName;
function CkCgi_getNumUploadFiles; external DLLName;
function CkCgi_getReadChunkSize; external DLLName;
procedure CkCgi_putReadChunkSize; external DLLName;
function CkCgi_getSizeLimitKB; external DLLName;
procedure CkCgi_putSizeLimitKB; external DLLName;
function CkCgi_getStreamToUploadDir; external DLLName;
procedure CkCgi_putStreamToUploadDir; external DLLName;
procedure CkCgi_getUploadDir; external DLLName;
procedure CkCgi_putUploadDir; external DLLName;
function CkCgi__uploadDir; external DLLName;
function CkCgi_getVerboseLogging; external DLLName;
procedure CkCgi_putVerboseLogging; external DLLName;
procedure CkCgi_getVersion; external DLLName;
function CkCgi__version; external DLLName;
procedure CkCgi_AbortAsync; external DLLName;
function CkCgi_GetEnv; external DLLName;
function CkCgi__getEnv; external DLLName;
function CkCgi_GetParam; external DLLName;
function CkCgi__getParam; external DLLName;
function CkCgi_GetParamName; external DLLName;
function CkCgi__getParamName; external DLLName;
function CkCgi_GetParamValue; external DLLName;
function CkCgi__getParamValue; external DLLName;
function CkCgi_GetRawPostData; external DLLName;
function CkCgi_GetUploadData; external DLLName;
function CkCgi_GetUploadFilename; external DLLName;
function CkCgi__getUploadFilename; external DLLName;
function CkCgi_GetUploadSize; external DLLName;
function CkCgi_IsGet; external DLLName;
function CkCgi_IsHead; external DLLName;
function CkCgi_IsPost; external DLLName;
function CkCgi_IsUpload; external DLLName;
function CkCgi_ReadRequest; external DLLName;
function CkCgi_SaveLastError; external DLLName;
function CkCgi_SaveNthToUploadDir; external DLLName;
procedure CkCgi_SleepMs; external DLLName;
function CkCgi_TestConsumeAspUpload; external DLLName;



end.
