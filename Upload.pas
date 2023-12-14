unit Upload;

interface

type

HCkUpload = Pointer;
HCkTask = Pointer;
HCkByteData = Pointer;
HCkString = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TUploadAbortCheck = function(): Integer; cdecl;
TUploadProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TUploadPercentDone = function(pctDone: Integer): Integer; cdecl;
TUploadTaskCompleted = procedure(task: HCkTask); cdecl;


function CkUpload_Create: HCkUpload; stdcall;
procedure CkUpload_Dispose(handle: HCkUpload); stdcall;

procedure CkUpload_SetAbortCheck(objHandle: HCkUpload; fn: TUploadAbortCheck) stdcall;
procedure CkUpload_SetProgressInfo(objHandle: HCkUpload; fn: TUploadProgressInfo) stdcall;
procedure CkUpload_SetPercentDone(objHandle: HCkUpload; fn: TUploadPercentDone) stdcall;
procedure CkUpload_SetTaskCompleted(objHandle: HCkUpload; fn: TUploadTaskCompleted) stdcall;
function CkUpload_getAbortCurrent(objHandle: HCkUpload): wordbool; stdcall;

procedure CkUpload_putAbortCurrent(objHandle: HCkUpload; newPropVal: wordbool); stdcall;

function CkUpload_getBandwidthThrottleUp(objHandle: HCkUpload): Integer; stdcall;

procedure CkUpload_putBandwidthThrottleUp(objHandle: HCkUpload; newPropVal: Integer); stdcall;

function CkUpload_getChunkSize(objHandle: HCkUpload): Integer; stdcall;

procedure CkUpload_putChunkSize(objHandle: HCkUpload; newPropVal: Integer); stdcall;

procedure CkUpload_getClientIpAddress(objHandle: HCkUpload; outPropVal: HCkString); stdcall;

procedure CkUpload_putClientIpAddress(objHandle: HCkUpload; newPropVal: PWideChar); stdcall;

function CkUpload__clientIpAddress(objHandle: HCkUpload): PWideChar; stdcall;

procedure CkUpload_getCurrentFilename(objHandle: HCkUpload; outPropVal: HCkString); stdcall;

function CkUpload__currentFilename(objHandle: HCkUpload): PWideChar; stdcall;

procedure CkUpload_getDebugLogFilePath(objHandle: HCkUpload; outPropVal: HCkString); stdcall;

procedure CkUpload_putDebugLogFilePath(objHandle: HCkUpload; newPropVal: PWideChar); stdcall;

function CkUpload__debugLogFilePath(objHandle: HCkUpload): PWideChar; stdcall;

function CkUpload_getExpect100Continue(objHandle: HCkUpload): wordbool; stdcall;

procedure CkUpload_putExpect100Continue(objHandle: HCkUpload; newPropVal: wordbool); stdcall;

function CkUpload_getHeartbeatMs(objHandle: HCkUpload): Integer; stdcall;

procedure CkUpload_putHeartbeatMs(objHandle: HCkUpload; newPropVal: Integer); stdcall;

procedure CkUpload_getHostname(objHandle: HCkUpload; outPropVal: HCkString); stdcall;

procedure CkUpload_putHostname(objHandle: HCkUpload; newPropVal: PWideChar); stdcall;

function CkUpload__hostname(objHandle: HCkUpload): PWideChar; stdcall;

function CkUpload_getIdleTimeoutMs(objHandle: HCkUpload): Integer; stdcall;

procedure CkUpload_putIdleTimeoutMs(objHandle: HCkUpload; newPropVal: Integer); stdcall;

procedure CkUpload_getLastErrorHtml(objHandle: HCkUpload; outPropVal: HCkString); stdcall;

function CkUpload__lastErrorHtml(objHandle: HCkUpload): PWideChar; stdcall;

procedure CkUpload_getLastErrorText(objHandle: HCkUpload; outPropVal: HCkString); stdcall;

function CkUpload__lastErrorText(objHandle: HCkUpload): PWideChar; stdcall;

procedure CkUpload_getLastErrorXml(objHandle: HCkUpload; outPropVal: HCkString); stdcall;

function CkUpload__lastErrorXml(objHandle: HCkUpload): PWideChar; stdcall;

function CkUpload_getLastMethodSuccess(objHandle: HCkUpload): wordbool; stdcall;

procedure CkUpload_putLastMethodSuccess(objHandle: HCkUpload; newPropVal: wordbool); stdcall;

procedure CkUpload_getLogin(objHandle: HCkUpload; outPropVal: HCkString); stdcall;

procedure CkUpload_putLogin(objHandle: HCkUpload; newPropVal: PWideChar); stdcall;

function CkUpload__login(objHandle: HCkUpload): PWideChar; stdcall;

function CkUpload_getNumBytesSent(objHandle: HCkUpload): LongWord; stdcall;

procedure CkUpload_getPassword(objHandle: HCkUpload; outPropVal: HCkString); stdcall;

procedure CkUpload_putPassword(objHandle: HCkUpload; newPropVal: PWideChar); stdcall;

function CkUpload__password(objHandle: HCkUpload): PWideChar; stdcall;

procedure CkUpload_getPath(objHandle: HCkUpload; outPropVal: HCkString); stdcall;

procedure CkUpload_putPath(objHandle: HCkUpload; newPropVal: PWideChar); stdcall;

function CkUpload__path(objHandle: HCkUpload): PWideChar; stdcall;

function CkUpload_getPercentDoneScale(objHandle: HCkUpload): Integer; stdcall;

procedure CkUpload_putPercentDoneScale(objHandle: HCkUpload; newPropVal: Integer); stdcall;

function CkUpload_getPercentUploaded(objHandle: HCkUpload): LongWord; stdcall;

function CkUpload_getPort(objHandle: HCkUpload): Integer; stdcall;

procedure CkUpload_putPort(objHandle: HCkUpload; newPropVal: Integer); stdcall;

function CkUpload_getPreferIpv6(objHandle: HCkUpload): wordbool; stdcall;

procedure CkUpload_putPreferIpv6(objHandle: HCkUpload; newPropVal: wordbool); stdcall;

procedure CkUpload_getProxyDomain(objHandle: HCkUpload; outPropVal: HCkString); stdcall;

procedure CkUpload_putProxyDomain(objHandle: HCkUpload; newPropVal: PWideChar); stdcall;

function CkUpload__proxyDomain(objHandle: HCkUpload): PWideChar; stdcall;

procedure CkUpload_getProxyLogin(objHandle: HCkUpload; outPropVal: HCkString); stdcall;

procedure CkUpload_putProxyLogin(objHandle: HCkUpload; newPropVal: PWideChar); stdcall;

function CkUpload__proxyLogin(objHandle: HCkUpload): PWideChar; stdcall;

procedure CkUpload_getProxyPassword(objHandle: HCkUpload; outPropVal: HCkString); stdcall;

procedure CkUpload_putProxyPassword(objHandle: HCkUpload; newPropVal: PWideChar); stdcall;

function CkUpload__proxyPassword(objHandle: HCkUpload): PWideChar; stdcall;

function CkUpload_getProxyPort(objHandle: HCkUpload): Integer; stdcall;

procedure CkUpload_putProxyPort(objHandle: HCkUpload; newPropVal: Integer); stdcall;

procedure CkUpload_getResponseBody(objHandle: HCkUpload; outPropVal: HCkByteData); stdcall;

procedure CkUpload_getResponseBodyStr(objHandle: HCkUpload; outPropVal: HCkString); stdcall;

function CkUpload__responseBodyStr(objHandle: HCkUpload): PWideChar; stdcall;

procedure CkUpload_getResponseHeader(objHandle: HCkUpload; outPropVal: HCkString); stdcall;

function CkUpload__responseHeader(objHandle: HCkUpload): PWideChar; stdcall;

function CkUpload_getResponseStatus(objHandle: HCkUpload): Integer; stdcall;

function CkUpload_getSsl(objHandle: HCkUpload): wordbool; stdcall;

procedure CkUpload_putSsl(objHandle: HCkUpload; newPropVal: wordbool); stdcall;

procedure CkUpload_getSslAllowedCiphers(objHandle: HCkUpload; outPropVal: HCkString); stdcall;

procedure CkUpload_putSslAllowedCiphers(objHandle: HCkUpload; newPropVal: PWideChar); stdcall;

function CkUpload__sslAllowedCiphers(objHandle: HCkUpload): PWideChar; stdcall;

procedure CkUpload_getSslProtocol(objHandle: HCkUpload; outPropVal: HCkString); stdcall;

procedure CkUpload_putSslProtocol(objHandle: HCkUpload; newPropVal: PWideChar); stdcall;

function CkUpload__sslProtocol(objHandle: HCkUpload): PWideChar; stdcall;

procedure CkUpload_getTlsPinSet(objHandle: HCkUpload; outPropVal: HCkString); stdcall;

procedure CkUpload_putTlsPinSet(objHandle: HCkUpload; newPropVal: PWideChar); stdcall;

function CkUpload__tlsPinSet(objHandle: HCkUpload): PWideChar; stdcall;

function CkUpload_getTotalUploadSize(objHandle: HCkUpload): LongWord; stdcall;

function CkUpload_getUploadInProgress(objHandle: HCkUpload): wordbool; stdcall;

function CkUpload_getUploadSuccess(objHandle: HCkUpload): wordbool; stdcall;

function CkUpload_getVerboseLogging(objHandle: HCkUpload): wordbool; stdcall;

procedure CkUpload_putVerboseLogging(objHandle: HCkUpload; newPropVal: wordbool); stdcall;

procedure CkUpload_getVersion(objHandle: HCkUpload; outPropVal: HCkString); stdcall;

function CkUpload__version(objHandle: HCkUpload): PWideChar; stdcall;

procedure CkUpload_AbortUpload(objHandle: HCkUpload); stdcall;

procedure CkUpload_AddCustomHeader(objHandle: HCkUpload; name: PWideChar; value: PWideChar); stdcall;

procedure CkUpload_AddFileReference(objHandle: HCkUpload; name: PWideChar; filename: PWideChar); stdcall;

procedure CkUpload_AddParam(objHandle: HCkUpload; name: PWideChar; value: PWideChar); stdcall;

function CkUpload_BeginUpload(objHandle: HCkUpload): wordbool; stdcall;

function CkUpload_BlockingUpload(objHandle: HCkUpload): wordbool; stdcall;

function CkUpload_BlockingUploadAsync(objHandle: HCkUpload): HCkTask; stdcall;

procedure CkUpload_ClearFileReferences(objHandle: HCkUpload); stdcall;

procedure CkUpload_ClearParams(objHandle: HCkUpload); stdcall;

function CkUpload_LoadTaskCaller(objHandle: HCkUpload; task: HCkTask): wordbool; stdcall;

function CkUpload_SaveLastError(objHandle: HCkUpload; path: PWideChar): wordbool; stdcall;

procedure CkUpload_SleepMs(objHandle: HCkUpload; millisec: Integer); stdcall;

function CkUpload_UploadToMemory(objHandle: HCkUpload; outData: HCkByteData): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkUpload_Create; external DLLName;
procedure CkUpload_Dispose; external DLLName;

procedure CkUpload_SetAbortCheck; external DLLName;
procedure CkUpload_SetProgressInfo; external DLLName;
procedure CkUpload_SetPercentDone; external DLLName;
procedure CkUpload_SetTaskCompleted; external DLLName;
function CkUpload_getAbortCurrent; external DLLName;
procedure CkUpload_putAbortCurrent; external DLLName;
function CkUpload_getBandwidthThrottleUp; external DLLName;
procedure CkUpload_putBandwidthThrottleUp; external DLLName;
function CkUpload_getChunkSize; external DLLName;
procedure CkUpload_putChunkSize; external DLLName;
procedure CkUpload_getClientIpAddress; external DLLName;
procedure CkUpload_putClientIpAddress; external DLLName;
function CkUpload__clientIpAddress; external DLLName;
procedure CkUpload_getCurrentFilename; external DLLName;
function CkUpload__currentFilename; external DLLName;
procedure CkUpload_getDebugLogFilePath; external DLLName;
procedure CkUpload_putDebugLogFilePath; external DLLName;
function CkUpload__debugLogFilePath; external DLLName;
function CkUpload_getExpect100Continue; external DLLName;
procedure CkUpload_putExpect100Continue; external DLLName;
function CkUpload_getHeartbeatMs; external DLLName;
procedure CkUpload_putHeartbeatMs; external DLLName;
procedure CkUpload_getHostname; external DLLName;
procedure CkUpload_putHostname; external DLLName;
function CkUpload__hostname; external DLLName;
function CkUpload_getIdleTimeoutMs; external DLLName;
procedure CkUpload_putIdleTimeoutMs; external DLLName;
procedure CkUpload_getLastErrorHtml; external DLLName;
function CkUpload__lastErrorHtml; external DLLName;
procedure CkUpload_getLastErrorText; external DLLName;
function CkUpload__lastErrorText; external DLLName;
procedure CkUpload_getLastErrorXml; external DLLName;
function CkUpload__lastErrorXml; external DLLName;
function CkUpload_getLastMethodSuccess; external DLLName;
procedure CkUpload_putLastMethodSuccess; external DLLName;
procedure CkUpload_getLogin; external DLLName;
procedure CkUpload_putLogin; external DLLName;
function CkUpload__login; external DLLName;
function CkUpload_getNumBytesSent; external DLLName;
procedure CkUpload_getPassword; external DLLName;
procedure CkUpload_putPassword; external DLLName;
function CkUpload__password; external DLLName;
procedure CkUpload_getPath; external DLLName;
procedure CkUpload_putPath; external DLLName;
function CkUpload__path; external DLLName;
function CkUpload_getPercentDoneScale; external DLLName;
procedure CkUpload_putPercentDoneScale; external DLLName;
function CkUpload_getPercentUploaded; external DLLName;
function CkUpload_getPort; external DLLName;
procedure CkUpload_putPort; external DLLName;
function CkUpload_getPreferIpv6; external DLLName;
procedure CkUpload_putPreferIpv6; external DLLName;
procedure CkUpload_getProxyDomain; external DLLName;
procedure CkUpload_putProxyDomain; external DLLName;
function CkUpload__proxyDomain; external DLLName;
procedure CkUpload_getProxyLogin; external DLLName;
procedure CkUpload_putProxyLogin; external DLLName;
function CkUpload__proxyLogin; external DLLName;
procedure CkUpload_getProxyPassword; external DLLName;
procedure CkUpload_putProxyPassword; external DLLName;
function CkUpload__proxyPassword; external DLLName;
function CkUpload_getProxyPort; external DLLName;
procedure CkUpload_putProxyPort; external DLLName;
procedure CkUpload_getResponseBody; external DLLName;
procedure CkUpload_getResponseBodyStr; external DLLName;
function CkUpload__responseBodyStr; external DLLName;
procedure CkUpload_getResponseHeader; external DLLName;
function CkUpload__responseHeader; external DLLName;
function CkUpload_getResponseStatus; external DLLName;
function CkUpload_getSsl; external DLLName;
procedure CkUpload_putSsl; external DLLName;
procedure CkUpload_getSslAllowedCiphers; external DLLName;
procedure CkUpload_putSslAllowedCiphers; external DLLName;
function CkUpload__sslAllowedCiphers; external DLLName;
procedure CkUpload_getSslProtocol; external DLLName;
procedure CkUpload_putSslProtocol; external DLLName;
function CkUpload__sslProtocol; external DLLName;
procedure CkUpload_getTlsPinSet; external DLLName;
procedure CkUpload_putTlsPinSet; external DLLName;
function CkUpload__tlsPinSet; external DLLName;
function CkUpload_getTotalUploadSize; external DLLName;
function CkUpload_getUploadInProgress; external DLLName;
function CkUpload_getUploadSuccess; external DLLName;
function CkUpload_getVerboseLogging; external DLLName;
procedure CkUpload_putVerboseLogging; external DLLName;
procedure CkUpload_getVersion; external DLLName;
function CkUpload__version; external DLLName;
procedure CkUpload_AbortUpload; external DLLName;
procedure CkUpload_AddCustomHeader; external DLLName;
procedure CkUpload_AddFileReference; external DLLName;
procedure CkUpload_AddParam; external DLLName;
function CkUpload_BeginUpload; external DLLName;
function CkUpload_BlockingUpload; external DLLName;
function CkUpload_BlockingUploadAsync; external DLLName;
procedure CkUpload_ClearFileReferences; external DLLName;
procedure CkUpload_ClearParams; external DLLName;
function CkUpload_LoadTaskCaller; external DLLName;
function CkUpload_SaveLastError; external DLLName;
procedure CkUpload_SleepMs; external DLLName;
function CkUpload_UploadToMemory; external DLLName;



end.
