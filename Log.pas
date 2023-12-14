unit Log;

interface

type

HCkLog = Pointer;
HCkByteData = Pointer;
HCkString = Pointer;


function CkLog_Create: HCkLog; stdcall;
procedure CkLog_Dispose(handle: HCkLog); stdcall;
procedure CkLog_getDebugLogFilePath(objHandle: HCkLog; outPropVal: HCkString); stdcall;

procedure CkLog_putDebugLogFilePath(objHandle: HCkLog; newPropVal: PWideChar); stdcall;

function CkLog__debugLogFilePath(objHandle: HCkLog): PWideChar; stdcall;

procedure CkLog_getLastErrorHtml(objHandle: HCkLog; outPropVal: HCkString); stdcall;

function CkLog__lastErrorHtml(objHandle: HCkLog): PWideChar; stdcall;

procedure CkLog_getLastErrorText(objHandle: HCkLog; outPropVal: HCkString); stdcall;

function CkLog__lastErrorText(objHandle: HCkLog): PWideChar; stdcall;

procedure CkLog_getLastErrorXml(objHandle: HCkLog; outPropVal: HCkString); stdcall;

function CkLog__lastErrorXml(objHandle: HCkLog): PWideChar; stdcall;

function CkLog_getLastMethodSuccess(objHandle: HCkLog): wordbool; stdcall;

procedure CkLog_putLastMethodSuccess(objHandle: HCkLog; newPropVal: wordbool); stdcall;

function CkLog_getVerboseLogging(objHandle: HCkLog): wordbool; stdcall;

procedure CkLog_putVerboseLogging(objHandle: HCkLog; newPropVal: wordbool); stdcall;

procedure CkLog_getVersion(objHandle: HCkLog; outPropVal: HCkString); stdcall;

function CkLog__version(objHandle: HCkLog): PWideChar; stdcall;

procedure CkLog_Clear(objHandle: HCkLog; initialTag: PWideChar); stdcall;

procedure CkLog_EnterContext(objHandle: HCkLog; tag: PWideChar); stdcall;

procedure CkLog_LeaveContext(objHandle: HCkLog); stdcall;

procedure CkLog_LogData(objHandle: HCkLog; tag: PWideChar; message: PWideChar); stdcall;

procedure CkLog_LogDataBase64(objHandle: HCkLog; tag: PWideChar; data: HCkByteData); stdcall;

procedure CkLog_LogDataBase64_2(objHandle: HCkLog; tag: PWideChar; pByteData: pbyte; szByteData: LongWord); stdcall;

procedure CkLog_LogDataHex(objHandle: HCkLog; tag: PWideChar; data: HCkByteData); stdcall;

procedure CkLog_LogDataHex2(objHandle: HCkLog; tag: PWideChar; pByteData: pbyte; szByteData: LongWord); stdcall;

procedure CkLog_LogDataMax(objHandle: HCkLog; tag: PWideChar; message: PWideChar; maxNumChars: Integer); stdcall;

procedure CkLog_LogDateTime(objHandle: HCkLog; tag: PWideChar; gmt: wordbool); stdcall;

procedure CkLog_LogError(objHandle: HCkLog; message: PWideChar); stdcall;

procedure CkLog_LogHash2(objHandle: HCkLog; tag: PWideChar; hashAlg: PWideChar; pByteData: pbyte; szByteData: LongWord); stdcall;

procedure CkLog_LogInfo(objHandle: HCkLog; message: PWideChar); stdcall;

procedure CkLog_LogInt(objHandle: HCkLog; tag: PWideChar; value: Integer); stdcall;

procedure CkLog_LogInt64(objHandle: HCkLog; tag: PWideChar; value: Int64); stdcall;

procedure CkLog_LogTimestamp(objHandle: HCkLog; tag: PWideChar); stdcall;

function CkLog_SaveLastError(objHandle: HCkLog; path: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkLog_Create; external DLLName;
procedure CkLog_Dispose; external DLLName;
procedure CkLog_getDebugLogFilePath; external DLLName;
procedure CkLog_putDebugLogFilePath; external DLLName;
function CkLog__debugLogFilePath; external DLLName;
procedure CkLog_getLastErrorHtml; external DLLName;
function CkLog__lastErrorHtml; external DLLName;
procedure CkLog_getLastErrorText; external DLLName;
function CkLog__lastErrorText; external DLLName;
procedure CkLog_getLastErrorXml; external DLLName;
function CkLog__lastErrorXml; external DLLName;
function CkLog_getLastMethodSuccess; external DLLName;
procedure CkLog_putLastMethodSuccess; external DLLName;
function CkLog_getVerboseLogging; external DLLName;
procedure CkLog_putVerboseLogging; external DLLName;
procedure CkLog_getVersion; external DLLName;
function CkLog__version; external DLLName;
procedure CkLog_Clear; external DLLName;
procedure CkLog_EnterContext; external DLLName;
procedure CkLog_LeaveContext; external DLLName;
procedure CkLog_LogData; external DLLName;
procedure CkLog_LogDataBase64; external DLLName;
procedure CkLog_LogDataBase64_2; external DLLName;
procedure CkLog_LogDataHex; external DLLName;
procedure CkLog_LogDataHex2; external DLLName;
procedure CkLog_LogDataMax; external DLLName;
procedure CkLog_LogDateTime; external DLLName;
procedure CkLog_LogError; external DLLName;
procedure CkLog_LogHash2; external DLLName;
procedure CkLog_LogInfo; external DLLName;
procedure CkLog_LogInt; external DLLName;
procedure CkLog_LogInt64; external DLLName;
procedure CkLog_LogTimestamp; external DLLName;
function CkLog_SaveLastError; external DLLName;



end.
