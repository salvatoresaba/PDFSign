unit ZipCrc;

interface

type

HCkBinData = Pointer;
HCkByteData = Pointer;
HCkString = Pointer;
HCkStringBuilder = Pointer;
HCkTask = Pointer;
HCkZipCrc = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TZipCrcAbortCheck = function(): Integer; cdecl;
TZipCrcProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TZipCrcPercentDone = function(pctDone: Integer): Integer; cdecl;
TZipCrcTaskCompleted = procedure(task: HCkTask); cdecl;


function CkZipCrc_Create: HCkZipCrc; stdcall;
procedure CkZipCrc_Dispose(handle: HCkZipCrc); stdcall;

procedure CkZipCrc_SetAbortCheck(objHandle: HCkZipCrc; fn: TZipCrcAbortCheck) stdcall;
procedure CkZipCrc_SetProgressInfo(objHandle: HCkZipCrc; fn: TZipCrcProgressInfo) stdcall;
procedure CkZipCrc_SetPercentDone(objHandle: HCkZipCrc; fn: TZipCrcPercentDone) stdcall;
procedure CkZipCrc_SetTaskCompleted(objHandle: HCkZipCrc; fn: TZipCrcTaskCompleted) stdcall;
procedure CkZipCrc_getDebugLogFilePath(objHandle: HCkZipCrc; outPropVal: HCkString); stdcall;

procedure CkZipCrc_putDebugLogFilePath(objHandle: HCkZipCrc; newPropVal: PWideChar); stdcall;

function CkZipCrc__debugLogFilePath(objHandle: HCkZipCrc): PWideChar; stdcall;

procedure CkZipCrc_getLastErrorHtml(objHandle: HCkZipCrc; outPropVal: HCkString); stdcall;

function CkZipCrc__lastErrorHtml(objHandle: HCkZipCrc): PWideChar; stdcall;

procedure CkZipCrc_getLastErrorText(objHandle: HCkZipCrc; outPropVal: HCkString); stdcall;

function CkZipCrc__lastErrorText(objHandle: HCkZipCrc): PWideChar; stdcall;

procedure CkZipCrc_getLastErrorXml(objHandle: HCkZipCrc; outPropVal: HCkString); stdcall;

function CkZipCrc__lastErrorXml(objHandle: HCkZipCrc): PWideChar; stdcall;

function CkZipCrc_getLastMethodSuccess(objHandle: HCkZipCrc): wordbool; stdcall;

procedure CkZipCrc_putLastMethodSuccess(objHandle: HCkZipCrc; newPropVal: wordbool); stdcall;

function CkZipCrc_getVerboseLogging(objHandle: HCkZipCrc): wordbool; stdcall;

procedure CkZipCrc_putVerboseLogging(objHandle: HCkZipCrc; newPropVal: wordbool); stdcall;

procedure CkZipCrc_getVersion(objHandle: HCkZipCrc; outPropVal: HCkString); stdcall;

function CkZipCrc__version(objHandle: HCkZipCrc): PWideChar; stdcall;

procedure CkZipCrc_BeginStream(objHandle: HCkZipCrc); stdcall;

function CkZipCrc_CalculateCrc(objHandle: HCkZipCrc; data: HCkByteData): LongWord; stdcall;

function CkZipCrc_CrcBd(objHandle: HCkZipCrc; bd: HCkBinData): LongWord; stdcall;

function CkZipCrc_CrcSb(objHandle: HCkZipCrc; sb: HCkStringBuilder; charset: PWideChar): LongWord; stdcall;

function CkZipCrc_CrcString(objHandle: HCkZipCrc; str: PWideChar; charset: PWideChar): LongWord; stdcall;

function CkZipCrc_EndStream(objHandle: HCkZipCrc): LongWord; stdcall;

function CkZipCrc_FileCrc(objHandle: HCkZipCrc; path: PWideChar): LongWord; stdcall;

function CkZipCrc_FileCrcAsync(objHandle: HCkZipCrc; path: PWideChar): HCkTask; stdcall;

function CkZipCrc_LoadTaskCaller(objHandle: HCkZipCrc; task: HCkTask): wordbool; stdcall;

procedure CkZipCrc_MoreData(objHandle: HCkZipCrc; data: HCkByteData); stdcall;

function CkZipCrc_SaveLastError(objHandle: HCkZipCrc; path: PWideChar): wordbool; stdcall;

function CkZipCrc_ToHex(objHandle: HCkZipCrc; crc: LongWord; outStr: HCkString): wordbool; stdcall;

function CkZipCrc__toHex(objHandle: HCkZipCrc; crc: LongWord): PWideChar; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkZipCrc_Create; external DLLName;
procedure CkZipCrc_Dispose; external DLLName;

procedure CkZipCrc_SetAbortCheck; external DLLName;
procedure CkZipCrc_SetProgressInfo; external DLLName;
procedure CkZipCrc_SetPercentDone; external DLLName;
procedure CkZipCrc_SetTaskCompleted; external DLLName;
procedure CkZipCrc_getDebugLogFilePath; external DLLName;
procedure CkZipCrc_putDebugLogFilePath; external DLLName;
function CkZipCrc__debugLogFilePath; external DLLName;
procedure CkZipCrc_getLastErrorHtml; external DLLName;
function CkZipCrc__lastErrorHtml; external DLLName;
procedure CkZipCrc_getLastErrorText; external DLLName;
function CkZipCrc__lastErrorText; external DLLName;
procedure CkZipCrc_getLastErrorXml; external DLLName;
function CkZipCrc__lastErrorXml; external DLLName;
function CkZipCrc_getLastMethodSuccess; external DLLName;
procedure CkZipCrc_putLastMethodSuccess; external DLLName;
function CkZipCrc_getVerboseLogging; external DLLName;
procedure CkZipCrc_putVerboseLogging; external DLLName;
procedure CkZipCrc_getVersion; external DLLName;
function CkZipCrc__version; external DLLName;
procedure CkZipCrc_BeginStream; external DLLName;
function CkZipCrc_CalculateCrc; external DLLName;
function CkZipCrc_CrcBd; external DLLName;
function CkZipCrc_CrcSb; external DLLName;
function CkZipCrc_CrcString; external DLLName;
function CkZipCrc_EndStream; external DLLName;
function CkZipCrc_FileCrc; external DLLName;
function CkZipCrc_FileCrcAsync; external DLLName;
function CkZipCrc_LoadTaskCaller; external DLLName;
procedure CkZipCrc_MoreData; external DLLName;
function CkZipCrc_SaveLastError; external DLLName;
function CkZipCrc_ToHex; external DLLName;
function CkZipCrc__toHex; external DLLName;



end.
