unit Dns;

interface

type

HCkTask = Pointer;
HCkJsonObject = Pointer;
HCkDns = Pointer;
HCkString = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TDnsAbortCheck = function(): Integer; cdecl;
TDnsProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TDnsPercentDone = function(pctDone: Integer): Integer; cdecl;
TDnsTaskCompleted = procedure(task: HCkTask); cdecl;


function CkDns_Create: HCkDns; stdcall;
procedure CkDns_Dispose(handle: HCkDns); stdcall;

procedure CkDns_SetAbortCheck(objHandle: HCkDns; fn: TDnsAbortCheck) stdcall;
procedure CkDns_SetProgressInfo(objHandle: HCkDns; fn: TDnsProgressInfo) stdcall;
procedure CkDns_SetPercentDone(objHandle: HCkDns; fn: TDnsPercentDone) stdcall;
procedure CkDns_SetTaskCompleted(objHandle: HCkDns; fn: TDnsTaskCompleted) stdcall;
procedure CkDns_getDebugLogFilePath(objHandle: HCkDns; outPropVal: HCkString); stdcall;

procedure CkDns_putDebugLogFilePath(objHandle: HCkDns; newPropVal: PWideChar); stdcall;

function CkDns__debugLogFilePath(objHandle: HCkDns): PWideChar; stdcall;

function CkDns_getHeartbeatMs(objHandle: HCkDns): Integer; stdcall;

procedure CkDns_putHeartbeatMs(objHandle: HCkDns; newPropVal: Integer); stdcall;

procedure CkDns_getLastErrorHtml(objHandle: HCkDns; outPropVal: HCkString); stdcall;

function CkDns__lastErrorHtml(objHandle: HCkDns): PWideChar; stdcall;

procedure CkDns_getLastErrorText(objHandle: HCkDns; outPropVal: HCkString); stdcall;

function CkDns__lastErrorText(objHandle: HCkDns): PWideChar; stdcall;

procedure CkDns_getLastErrorXml(objHandle: HCkDns; outPropVal: HCkString); stdcall;

function CkDns__lastErrorXml(objHandle: HCkDns): PWideChar; stdcall;

function CkDns_getLastMethodSuccess(objHandle: HCkDns): wordbool; stdcall;

procedure CkDns_putLastMethodSuccess(objHandle: HCkDns; newPropVal: wordbool); stdcall;

function CkDns_getMaxWaitMs(objHandle: HCkDns): Integer; stdcall;

procedure CkDns_putMaxWaitMs(objHandle: HCkDns; newPropVal: Integer); stdcall;

function CkDns_getNumNameservers(objHandle: HCkDns): Integer; stdcall;

function CkDns_getTlsPref(objHandle: HCkDns): Integer; stdcall;

procedure CkDns_putTlsPref(objHandle: HCkDns; newPropVal: Integer); stdcall;

function CkDns_getVerboseLogging(objHandle: HCkDns): wordbool; stdcall;

procedure CkDns_putVerboseLogging(objHandle: HCkDns; newPropVal: wordbool); stdcall;

procedure CkDns_getVersion(objHandle: HCkDns; outPropVal: HCkString); stdcall;

function CkDns__version(objHandle: HCkDns): PWideChar; stdcall;

procedure CkDns_AddDefaultNameservers(objHandle: HCkDns); stdcall;

procedure CkDns_AddNameserver(objHandle: HCkDns; ipAddr: PWideChar; supportsTls: wordbool); stdcall;

function CkDns_GetNameserver(objHandle: HCkDns; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkDns__getNameserver(objHandle: HCkDns; index: Integer): PWideChar; stdcall;

function CkDns_Query(objHandle: HCkDns; recordType: PWideChar; domain: PWideChar; answer: HCkJsonObject): wordbool; stdcall;

function CkDns_QueryAsync(objHandle: HCkDns; recordType: PWideChar; domain: PWideChar; answer: HCkJsonObject): HCkTask; stdcall;

procedure CkDns_RemoveAllNameservers(objHandle: HCkDns); stdcall;

procedure CkDns_RemoveNameserver(objHandle: HCkDns; ipAddr: PWideChar); stdcall;

function CkDns_SaveLastError(objHandle: HCkDns; path: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkDns_Create; external DLLName;
procedure CkDns_Dispose; external DLLName;

procedure CkDns_SetAbortCheck; external DLLName;
procedure CkDns_SetProgressInfo; external DLLName;
procedure CkDns_SetPercentDone; external DLLName;
procedure CkDns_SetTaskCompleted; external DLLName;
procedure CkDns_getDebugLogFilePath; external DLLName;
procedure CkDns_putDebugLogFilePath; external DLLName;
function CkDns__debugLogFilePath; external DLLName;
function CkDns_getHeartbeatMs; external DLLName;
procedure CkDns_putHeartbeatMs; external DLLName;
procedure CkDns_getLastErrorHtml; external DLLName;
function CkDns__lastErrorHtml; external DLLName;
procedure CkDns_getLastErrorText; external DLLName;
function CkDns__lastErrorText; external DLLName;
procedure CkDns_getLastErrorXml; external DLLName;
function CkDns__lastErrorXml; external DLLName;
function CkDns_getLastMethodSuccess; external DLLName;
procedure CkDns_putLastMethodSuccess; external DLLName;
function CkDns_getMaxWaitMs; external DLLName;
procedure CkDns_putMaxWaitMs; external DLLName;
function CkDns_getNumNameservers; external DLLName;
function CkDns_getTlsPref; external DLLName;
procedure CkDns_putTlsPref; external DLLName;
function CkDns_getVerboseLogging; external DLLName;
procedure CkDns_putVerboseLogging; external DLLName;
procedure CkDns_getVersion; external DLLName;
function CkDns__version; external DLLName;
procedure CkDns_AddDefaultNameservers; external DLLName;
procedure CkDns_AddNameserver; external DLLName;
function CkDns_GetNameserver; external DLLName;
function CkDns__getNameserver; external DLLName;
function CkDns_Query; external DLLName;
function CkDns_QueryAsync; external DLLName;
procedure CkDns_RemoveAllNameservers; external DLLName;
procedure CkDns_RemoveNameserver; external DLLName;
function CkDns_SaveLastError; external DLLName;



end.
