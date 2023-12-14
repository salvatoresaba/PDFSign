unit WebSocket;

interface

type

HCkBinData = Pointer;
HCkRest = Pointer;
HCkString = Pointer;
HCkStringBuilder = Pointer;
HCkWebSocket = Pointer;
HCkTask = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TWebSocketAbortCheck = function(): Integer; cdecl;
TWebSocketProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TWebSocketPercentDone = function(pctDone: Integer): Integer; cdecl;
TWebSocketTaskCompleted = procedure(task: HCkTask); cdecl;


function CkWebSocket_Create: HCkWebSocket; stdcall;
procedure CkWebSocket_Dispose(handle: HCkWebSocket); stdcall;

procedure CkWebSocket_SetAbortCheck(objHandle: HCkWebSocket; fn: TWebSocketAbortCheck) stdcall;
procedure CkWebSocket_SetProgressInfo(objHandle: HCkWebSocket; fn: TWebSocketProgressInfo) stdcall;
procedure CkWebSocket_SetPercentDone(objHandle: HCkWebSocket; fn: TWebSocketPercentDone) stdcall;
procedure CkWebSocket_SetTaskCompleted(objHandle: HCkWebSocket; fn: TWebSocketTaskCompleted) stdcall;
function CkWebSocket_getCloseAutoRespond(objHandle: HCkWebSocket): wordbool; stdcall;

procedure CkWebSocket_putCloseAutoRespond(objHandle: HCkWebSocket; newPropVal: wordbool); stdcall;

procedure CkWebSocket_getCloseReason(objHandle: HCkWebSocket; outPropVal: HCkString); stdcall;

function CkWebSocket__closeReason(objHandle: HCkWebSocket): PWideChar; stdcall;

function CkWebSocket_getCloseReceived(objHandle: HCkWebSocket): wordbool; stdcall;

function CkWebSocket_getCloseStatusCode(objHandle: HCkWebSocket): Integer; stdcall;

procedure CkWebSocket_getDebugLogFilePath(objHandle: HCkWebSocket; outPropVal: HCkString); stdcall;

procedure CkWebSocket_putDebugLogFilePath(objHandle: HCkWebSocket; newPropVal: PWideChar); stdcall;

function CkWebSocket__debugLogFilePath(objHandle: HCkWebSocket): PWideChar; stdcall;

function CkWebSocket_getFinalFrame(objHandle: HCkWebSocket): wordbool; stdcall;

function CkWebSocket_getFrameDataLen(objHandle: HCkWebSocket): Integer; stdcall;

procedure CkWebSocket_getFrameOpcode(objHandle: HCkWebSocket; outPropVal: HCkString); stdcall;

function CkWebSocket__frameOpcode(objHandle: HCkWebSocket): PWideChar; stdcall;

function CkWebSocket_getFrameOpcodeInt(objHandle: HCkWebSocket): Integer; stdcall;

function CkWebSocket_getIdleTimeoutMs(objHandle: HCkWebSocket): Integer; stdcall;

procedure CkWebSocket_putIdleTimeoutMs(objHandle: HCkWebSocket; newPropVal: Integer); stdcall;

function CkWebSocket_getIsConnected(objHandle: HCkWebSocket): wordbool; stdcall;

procedure CkWebSocket_getLastErrorHtml(objHandle: HCkWebSocket; outPropVal: HCkString); stdcall;

function CkWebSocket__lastErrorHtml(objHandle: HCkWebSocket): PWideChar; stdcall;

procedure CkWebSocket_getLastErrorText(objHandle: HCkWebSocket; outPropVal: HCkString); stdcall;

function CkWebSocket__lastErrorText(objHandle: HCkWebSocket): PWideChar; stdcall;

procedure CkWebSocket_getLastErrorXml(objHandle: HCkWebSocket; outPropVal: HCkString); stdcall;

function CkWebSocket__lastErrorXml(objHandle: HCkWebSocket): PWideChar; stdcall;

function CkWebSocket_getLastMethodSuccess(objHandle: HCkWebSocket): wordbool; stdcall;

procedure CkWebSocket_putLastMethodSuccess(objHandle: HCkWebSocket; newPropVal: wordbool); stdcall;

function CkWebSocket_getNeedSendPong(objHandle: HCkWebSocket): wordbool; stdcall;

function CkWebSocket_getPingAutoRespond(objHandle: HCkWebSocket): wordbool; stdcall;

procedure CkWebSocket_putPingAutoRespond(objHandle: HCkWebSocket; newPropVal: wordbool); stdcall;

function CkWebSocket_getPongAutoConsume(objHandle: HCkWebSocket): wordbool; stdcall;

procedure CkWebSocket_putPongAutoConsume(objHandle: HCkWebSocket; newPropVal: wordbool); stdcall;

function CkWebSocket_getPongConsumed(objHandle: HCkWebSocket): wordbool; stdcall;

function CkWebSocket_getReadFrameFailReason(objHandle: HCkWebSocket): Integer; stdcall;

procedure CkWebSocket_getUncommonOptions(objHandle: HCkWebSocket; outPropVal: HCkString); stdcall;

function CkWebSocket__uncommonOptions(objHandle: HCkWebSocket): PWideChar; stdcall;

function CkWebSocket_getVerboseLogging(objHandle: HCkWebSocket): wordbool; stdcall;

procedure CkWebSocket_putVerboseLogging(objHandle: HCkWebSocket; newPropVal: wordbool); stdcall;

procedure CkWebSocket_getVersion(objHandle: HCkWebSocket; outPropVal: HCkString); stdcall;

function CkWebSocket__version(objHandle: HCkWebSocket): PWideChar; stdcall;

function CkWebSocket_AddClientHeaders(objHandle: HCkWebSocket): wordbool; stdcall;

function CkWebSocket_CloseConnection(objHandle: HCkWebSocket): wordbool; stdcall;

function CkWebSocket_GetFrameData(objHandle: HCkWebSocket; outStr: HCkString): wordbool; stdcall;

function CkWebSocket__getFrameData(objHandle: HCkWebSocket): PWideChar; stdcall;

function CkWebSocket_GetFrameDataBd(objHandle: HCkWebSocket; binData: HCkBinData): wordbool; stdcall;

function CkWebSocket_GetFrameDataSb(objHandle: HCkWebSocket; sb: HCkStringBuilder): wordbool; stdcall;

function CkWebSocket_LoadTaskCaller(objHandle: HCkWebSocket; task: HCkTask): wordbool; stdcall;

function CkWebSocket_PollDataAvailable(objHandle: HCkWebSocket): wordbool; stdcall;

function CkWebSocket_ReadFrame(objHandle: HCkWebSocket): wordbool; stdcall;

function CkWebSocket_ReadFrameAsync(objHandle: HCkWebSocket): HCkTask; stdcall;

function CkWebSocket_SaveLastError(objHandle: HCkWebSocket; path: PWideChar): wordbool; stdcall;

function CkWebSocket_SendClose(objHandle: HCkWebSocket; includeStatus: wordbool; statusCode: Integer; reason: PWideChar): wordbool; stdcall;

function CkWebSocket_SendCloseAsync(objHandle: HCkWebSocket; includeStatus: wordbool; statusCode: Integer; reason: PWideChar): HCkTask; stdcall;

function CkWebSocket_SendFrame(objHandle: HCkWebSocket; stringToSend: PWideChar; finalFrame: wordbool): wordbool; stdcall;

function CkWebSocket_SendFrameAsync(objHandle: HCkWebSocket; stringToSend: PWideChar; finalFrame: wordbool): HCkTask; stdcall;

function CkWebSocket_SendFrameBd(objHandle: HCkWebSocket; bdToSend: HCkBinData; finalFrame: wordbool): wordbool; stdcall;

function CkWebSocket_SendFrameBdAsync(objHandle: HCkWebSocket; bdToSend: HCkBinData; finalFrame: wordbool): HCkTask; stdcall;

function CkWebSocket_SendFrameSb(objHandle: HCkWebSocket; sbToSend: HCkStringBuilder; finalFrame: wordbool): wordbool; stdcall;

function CkWebSocket_SendFrameSbAsync(objHandle: HCkWebSocket; sbToSend: HCkStringBuilder; finalFrame: wordbool): HCkTask; stdcall;

function CkWebSocket_SendPing(objHandle: HCkWebSocket; pingData: PWideChar): wordbool; stdcall;

function CkWebSocket_SendPingAsync(objHandle: HCkWebSocket; pingData: PWideChar): HCkTask; stdcall;

function CkWebSocket_SendPong(objHandle: HCkWebSocket): wordbool; stdcall;

function CkWebSocket_SendPongAsync(objHandle: HCkWebSocket): HCkTask; stdcall;

function CkWebSocket_UseConnection(objHandle: HCkWebSocket; connection: HCkRest): wordbool; stdcall;

function CkWebSocket_ValidateServerHandshake(objHandle: HCkWebSocket): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkWebSocket_Create; external DLLName;
procedure CkWebSocket_Dispose; external DLLName;

procedure CkWebSocket_SetAbortCheck; external DLLName;
procedure CkWebSocket_SetProgressInfo; external DLLName;
procedure CkWebSocket_SetPercentDone; external DLLName;
procedure CkWebSocket_SetTaskCompleted; external DLLName;
function CkWebSocket_getCloseAutoRespond; external DLLName;
procedure CkWebSocket_putCloseAutoRespond; external DLLName;
procedure CkWebSocket_getCloseReason; external DLLName;
function CkWebSocket__closeReason; external DLLName;
function CkWebSocket_getCloseReceived; external DLLName;
function CkWebSocket_getCloseStatusCode; external DLLName;
procedure CkWebSocket_getDebugLogFilePath; external DLLName;
procedure CkWebSocket_putDebugLogFilePath; external DLLName;
function CkWebSocket__debugLogFilePath; external DLLName;
function CkWebSocket_getFinalFrame; external DLLName;
function CkWebSocket_getFrameDataLen; external DLLName;
procedure CkWebSocket_getFrameOpcode; external DLLName;
function CkWebSocket__frameOpcode; external DLLName;
function CkWebSocket_getFrameOpcodeInt; external DLLName;
function CkWebSocket_getIdleTimeoutMs; external DLLName;
procedure CkWebSocket_putIdleTimeoutMs; external DLLName;
function CkWebSocket_getIsConnected; external DLLName;
procedure CkWebSocket_getLastErrorHtml; external DLLName;
function CkWebSocket__lastErrorHtml; external DLLName;
procedure CkWebSocket_getLastErrorText; external DLLName;
function CkWebSocket__lastErrorText; external DLLName;
procedure CkWebSocket_getLastErrorXml; external DLLName;
function CkWebSocket__lastErrorXml; external DLLName;
function CkWebSocket_getLastMethodSuccess; external DLLName;
procedure CkWebSocket_putLastMethodSuccess; external DLLName;
function CkWebSocket_getNeedSendPong; external DLLName;
function CkWebSocket_getPingAutoRespond; external DLLName;
procedure CkWebSocket_putPingAutoRespond; external DLLName;
function CkWebSocket_getPongAutoConsume; external DLLName;
procedure CkWebSocket_putPongAutoConsume; external DLLName;
function CkWebSocket_getPongConsumed; external DLLName;
function CkWebSocket_getReadFrameFailReason; external DLLName;
procedure CkWebSocket_getUncommonOptions; external DLLName;
function CkWebSocket__uncommonOptions; external DLLName;
function CkWebSocket_getVerboseLogging; external DLLName;
procedure CkWebSocket_putVerboseLogging; external DLLName;
procedure CkWebSocket_getVersion; external DLLName;
function CkWebSocket__version; external DLLName;
function CkWebSocket_AddClientHeaders; external DLLName;
function CkWebSocket_CloseConnection; external DLLName;
function CkWebSocket_GetFrameData; external DLLName;
function CkWebSocket__getFrameData; external DLLName;
function CkWebSocket_GetFrameDataBd; external DLLName;
function CkWebSocket_GetFrameDataSb; external DLLName;
function CkWebSocket_LoadTaskCaller; external DLLName;
function CkWebSocket_PollDataAvailable; external DLLName;
function CkWebSocket_ReadFrame; external DLLName;
function CkWebSocket_ReadFrameAsync; external DLLName;
function CkWebSocket_SaveLastError; external DLLName;
function CkWebSocket_SendClose; external DLLName;
function CkWebSocket_SendCloseAsync; external DLLName;
function CkWebSocket_SendFrame; external DLLName;
function CkWebSocket_SendFrameAsync; external DLLName;
function CkWebSocket_SendFrameBd; external DLLName;
function CkWebSocket_SendFrameBdAsync; external DLLName;
function CkWebSocket_SendFrameSb; external DLLName;
function CkWebSocket_SendFrameSbAsync; external DLLName;
function CkWebSocket_SendPing; external DLLName;
function CkWebSocket_SendPingAsync; external DLLName;
function CkWebSocket_SendPong; external DLLName;
function CkWebSocket_SendPongAsync; external DLLName;
function CkWebSocket_UseConnection; external DLLName;
function CkWebSocket_ValidateServerHandshake; external DLLName;



end.
