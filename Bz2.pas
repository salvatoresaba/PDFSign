unit Bz2;

interface

type

HCkTask = Pointer;
HCkBz2 = Pointer;
HCkByteData = Pointer;
HCkString = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TBz2AbortCheck = function(): Integer; cdecl;
TBz2ProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TBz2PercentDone = function(pctDone: Integer): Integer; cdecl;
TBz2TaskCompleted = procedure(task: HCkTask); cdecl;


function CkBz2_Create: HCkBz2; stdcall;
procedure CkBz2_Dispose(handle: HCkBz2); stdcall;

procedure CkBz2_SetAbortCheck(objHandle: HCkBz2; fn: TBz2AbortCheck) stdcall;
procedure CkBz2_SetProgressInfo(objHandle: HCkBz2; fn: TBz2ProgressInfo) stdcall;
procedure CkBz2_SetPercentDone(objHandle: HCkBz2; fn: TBz2PercentDone) stdcall;
procedure CkBz2_SetTaskCompleted(objHandle: HCkBz2; fn: TBz2TaskCompleted) stdcall;
function CkBz2_getAbortCurrent(objHandle: HCkBz2): wordbool; stdcall;

procedure CkBz2_putAbortCurrent(objHandle: HCkBz2; newPropVal: wordbool); stdcall;

procedure CkBz2_getDebugLogFilePath(objHandle: HCkBz2; outPropVal: HCkString); stdcall;

procedure CkBz2_putDebugLogFilePath(objHandle: HCkBz2; newPropVal: PWideChar); stdcall;

function CkBz2__debugLogFilePath(objHandle: HCkBz2): PWideChar; stdcall;

function CkBz2_getHeartbeatMs(objHandle: HCkBz2): Integer; stdcall;

procedure CkBz2_putHeartbeatMs(objHandle: HCkBz2; newPropVal: Integer); stdcall;

procedure CkBz2_getLastErrorHtml(objHandle: HCkBz2; outPropVal: HCkString); stdcall;

function CkBz2__lastErrorHtml(objHandle: HCkBz2): PWideChar; stdcall;

procedure CkBz2_getLastErrorText(objHandle: HCkBz2; outPropVal: HCkString); stdcall;

function CkBz2__lastErrorText(objHandle: HCkBz2): PWideChar; stdcall;

procedure CkBz2_getLastErrorXml(objHandle: HCkBz2; outPropVal: HCkString); stdcall;

function CkBz2__lastErrorXml(objHandle: HCkBz2): PWideChar; stdcall;

function CkBz2_getLastMethodSuccess(objHandle: HCkBz2): wordbool; stdcall;

procedure CkBz2_putLastMethodSuccess(objHandle: HCkBz2; newPropVal: wordbool); stdcall;

function CkBz2_getVerboseLogging(objHandle: HCkBz2): wordbool; stdcall;

procedure CkBz2_putVerboseLogging(objHandle: HCkBz2; newPropVal: wordbool); stdcall;

procedure CkBz2_getVersion(objHandle: HCkBz2; outPropVal: HCkString); stdcall;

function CkBz2__version(objHandle: HCkBz2): PWideChar; stdcall;

function CkBz2_CompressFile(objHandle: HCkBz2; inFilename: PWideChar; toPath: PWideChar): wordbool; stdcall;

function CkBz2_CompressFileAsync(objHandle: HCkBz2; inFilename: PWideChar; toPath: PWideChar): HCkTask; stdcall;

function CkBz2_CompressFileToMem(objHandle: HCkBz2; inFilename: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkBz2_CompressFileToMemAsync(objHandle: HCkBz2; inFilename: PWideChar): HCkTask; stdcall;

function CkBz2_CompressMemory(objHandle: HCkBz2; inData: HCkByteData; outData: HCkByteData): wordbool; stdcall;

function CkBz2_CompressMemoryAsync(objHandle: HCkBz2; inData: HCkByteData): HCkTask; stdcall;

function CkBz2_CompressMemToFile(objHandle: HCkBz2; inData: HCkByteData; toPath: PWideChar): wordbool; stdcall;

function CkBz2_CompressMemToFileAsync(objHandle: HCkBz2; inData: HCkByteData; toPath: PWideChar): HCkTask; stdcall;

function CkBz2_LoadTaskCaller(objHandle: HCkBz2; task: HCkTask): wordbool; stdcall;

function CkBz2_SaveLastError(objHandle: HCkBz2; path: PWideChar): wordbool; stdcall;

function CkBz2_UncompressFile(objHandle: HCkBz2; inFilename: PWideChar; toPath: PWideChar): wordbool; stdcall;

function CkBz2_UncompressFileAsync(objHandle: HCkBz2; inFilename: PWideChar; toPath: PWideChar): HCkTask; stdcall;

function CkBz2_UncompressFileToMem(objHandle: HCkBz2; inFilename: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkBz2_UncompressFileToMemAsync(objHandle: HCkBz2; inFilename: PWideChar): HCkTask; stdcall;

function CkBz2_UncompressMemory(objHandle: HCkBz2; inData: HCkByteData; outData: HCkByteData): wordbool; stdcall;

function CkBz2_UncompressMemoryAsync(objHandle: HCkBz2; inData: HCkByteData): HCkTask; stdcall;

function CkBz2_UncompressMemToFile(objHandle: HCkBz2; inData: HCkByteData; toPath: PWideChar): wordbool; stdcall;

function CkBz2_UncompressMemToFileAsync(objHandle: HCkBz2; inData: HCkByteData; toPath: PWideChar): HCkTask; stdcall;

function CkBz2_UnlockComponent(objHandle: HCkBz2; regCode: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkBz2_Create; external DLLName;
procedure CkBz2_Dispose; external DLLName;

procedure CkBz2_SetAbortCheck; external DLLName;
procedure CkBz2_SetProgressInfo; external DLLName;
procedure CkBz2_SetPercentDone; external DLLName;
procedure CkBz2_SetTaskCompleted; external DLLName;
function CkBz2_getAbortCurrent; external DLLName;
procedure CkBz2_putAbortCurrent; external DLLName;
procedure CkBz2_getDebugLogFilePath; external DLLName;
procedure CkBz2_putDebugLogFilePath; external DLLName;
function CkBz2__debugLogFilePath; external DLLName;
function CkBz2_getHeartbeatMs; external DLLName;
procedure CkBz2_putHeartbeatMs; external DLLName;
procedure CkBz2_getLastErrorHtml; external DLLName;
function CkBz2__lastErrorHtml; external DLLName;
procedure CkBz2_getLastErrorText; external DLLName;
function CkBz2__lastErrorText; external DLLName;
procedure CkBz2_getLastErrorXml; external DLLName;
function CkBz2__lastErrorXml; external DLLName;
function CkBz2_getLastMethodSuccess; external DLLName;
procedure CkBz2_putLastMethodSuccess; external DLLName;
function CkBz2_getVerboseLogging; external DLLName;
procedure CkBz2_putVerboseLogging; external DLLName;
procedure CkBz2_getVersion; external DLLName;
function CkBz2__version; external DLLName;
function CkBz2_CompressFile; external DLLName;
function CkBz2_CompressFileAsync; external DLLName;
function CkBz2_CompressFileToMem; external DLLName;
function CkBz2_CompressFileToMemAsync; external DLLName;
function CkBz2_CompressMemory; external DLLName;
function CkBz2_CompressMemoryAsync; external DLLName;
function CkBz2_CompressMemToFile; external DLLName;
function CkBz2_CompressMemToFileAsync; external DLLName;
function CkBz2_LoadTaskCaller; external DLLName;
function CkBz2_SaveLastError; external DLLName;
function CkBz2_UncompressFile; external DLLName;
function CkBz2_UncompressFileAsync; external DLLName;
function CkBz2_UncompressFileToMem; external DLLName;
function CkBz2_UncompressFileToMemAsync; external DLLName;
function CkBz2_UncompressMemory; external DLLName;
function CkBz2_UncompressMemoryAsync; external DLLName;
function CkBz2_UncompressMemToFile; external DLLName;
function CkBz2_UncompressMemToFileAsync; external DLLName;
function CkBz2_UnlockComponent; external DLLName;



end.
