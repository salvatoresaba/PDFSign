unit UnixCompress;

interface

type

HCkTask = Pointer;
HCkUnixCompress = Pointer;
HCkByteData = Pointer;
HCkString = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TUnixCompressAbortCheck = function(): Integer; cdecl;
TUnixCompressProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TUnixCompressPercentDone = function(pctDone: Integer): Integer; cdecl;
TUnixCompressTaskCompleted = procedure(task: HCkTask); cdecl;


function CkUnixCompress_Create: HCkUnixCompress; stdcall;
procedure CkUnixCompress_Dispose(handle: HCkUnixCompress); stdcall;

procedure CkUnixCompress_SetAbortCheck(objHandle: HCkUnixCompress; fn: TUnixCompressAbortCheck) stdcall;
procedure CkUnixCompress_SetProgressInfo(objHandle: HCkUnixCompress; fn: TUnixCompressProgressInfo) stdcall;
procedure CkUnixCompress_SetPercentDone(objHandle: HCkUnixCompress; fn: TUnixCompressPercentDone) stdcall;
procedure CkUnixCompress_SetTaskCompleted(objHandle: HCkUnixCompress; fn: TUnixCompressTaskCompleted) stdcall;
function CkUnixCompress_getAbortCurrent(objHandle: HCkUnixCompress): wordbool; stdcall;

procedure CkUnixCompress_putAbortCurrent(objHandle: HCkUnixCompress; newPropVal: wordbool); stdcall;

procedure CkUnixCompress_getDebugLogFilePath(objHandle: HCkUnixCompress; outPropVal: HCkString); stdcall;

procedure CkUnixCompress_putDebugLogFilePath(objHandle: HCkUnixCompress; newPropVal: PWideChar); stdcall;

function CkUnixCompress__debugLogFilePath(objHandle: HCkUnixCompress): PWideChar; stdcall;

function CkUnixCompress_getHeartbeatMs(objHandle: HCkUnixCompress): Integer; stdcall;

procedure CkUnixCompress_putHeartbeatMs(objHandle: HCkUnixCompress; newPropVal: Integer); stdcall;

procedure CkUnixCompress_getLastErrorHtml(objHandle: HCkUnixCompress; outPropVal: HCkString); stdcall;

function CkUnixCompress__lastErrorHtml(objHandle: HCkUnixCompress): PWideChar; stdcall;

procedure CkUnixCompress_getLastErrorText(objHandle: HCkUnixCompress; outPropVal: HCkString); stdcall;

function CkUnixCompress__lastErrorText(objHandle: HCkUnixCompress): PWideChar; stdcall;

procedure CkUnixCompress_getLastErrorXml(objHandle: HCkUnixCompress; outPropVal: HCkString); stdcall;

function CkUnixCompress__lastErrorXml(objHandle: HCkUnixCompress): PWideChar; stdcall;

function CkUnixCompress_getLastMethodSuccess(objHandle: HCkUnixCompress): wordbool; stdcall;

procedure CkUnixCompress_putLastMethodSuccess(objHandle: HCkUnixCompress; newPropVal: wordbool); stdcall;

function CkUnixCompress_getVerboseLogging(objHandle: HCkUnixCompress): wordbool; stdcall;

procedure CkUnixCompress_putVerboseLogging(objHandle: HCkUnixCompress; newPropVal: wordbool); stdcall;

procedure CkUnixCompress_getVersion(objHandle: HCkUnixCompress; outPropVal: HCkString); stdcall;

function CkUnixCompress__version(objHandle: HCkUnixCompress): PWideChar; stdcall;

function CkUnixCompress_CompressFile(objHandle: HCkUnixCompress; inFilename: PWideChar; destPath: PWideChar): wordbool; stdcall;

function CkUnixCompress_CompressFileAsync(objHandle: HCkUnixCompress; inFilename: PWideChar; destPath: PWideChar): HCkTask; stdcall;

function CkUnixCompress_CompressFileToMem(objHandle: HCkUnixCompress; inFilename: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkUnixCompress_CompressFileToMemAsync(objHandle: HCkUnixCompress; inFilename: PWideChar): HCkTask; stdcall;

function CkUnixCompress_CompressMemory(objHandle: HCkUnixCompress; inData: HCkByteData; outData: HCkByteData): wordbool; stdcall;

function CkUnixCompress_CompressMemToFile(objHandle: HCkUnixCompress; inData: HCkByteData; destPath: PWideChar): wordbool; stdcall;

function CkUnixCompress_CompressString(objHandle: HCkUnixCompress; inStr: PWideChar; charset: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkUnixCompress_CompressStringToFile(objHandle: HCkUnixCompress; inStr: PWideChar; charset: PWideChar; destPath: PWideChar): wordbool; stdcall;

function CkUnixCompress_LoadTaskCaller(objHandle: HCkUnixCompress; task: HCkTask): wordbool; stdcall;

function CkUnixCompress_SaveLastError(objHandle: HCkUnixCompress; path: PWideChar): wordbool; stdcall;

function CkUnixCompress_UncompressFile(objHandle: HCkUnixCompress; inFilename: PWideChar; destPath: PWideChar): wordbool; stdcall;

function CkUnixCompress_UncompressFileAsync(objHandle: HCkUnixCompress; inFilename: PWideChar; destPath: PWideChar): HCkTask; stdcall;

function CkUnixCompress_UncompressFileToMem(objHandle: HCkUnixCompress; inFilename: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkUnixCompress_UncompressFileToMemAsync(objHandle: HCkUnixCompress; inFilename: PWideChar): HCkTask; stdcall;

function CkUnixCompress_UncompressFileToString(objHandle: HCkUnixCompress; zFilename: PWideChar; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkUnixCompress__uncompressFileToString(objHandle: HCkUnixCompress; zFilename: PWideChar; charset: PWideChar): PWideChar; stdcall;

function CkUnixCompress_UncompressFileToStringAsync(objHandle: HCkUnixCompress; zFilename: PWideChar; charset: PWideChar): HCkTask; stdcall;

function CkUnixCompress_UncompressMemory(objHandle: HCkUnixCompress; inData: HCkByteData; outData: HCkByteData): wordbool; stdcall;

function CkUnixCompress_UncompressMemToFile(objHandle: HCkUnixCompress; inData: HCkByteData; destPath: PWideChar): wordbool; stdcall;

function CkUnixCompress_UncompressString(objHandle: HCkUnixCompress; inCompressedData: HCkByteData; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkUnixCompress__uncompressString(objHandle: HCkUnixCompress; inCompressedData: HCkByteData; charset: PWideChar): PWideChar; stdcall;

function CkUnixCompress_UnlockComponent(objHandle: HCkUnixCompress; unlockCode: PWideChar): wordbool; stdcall;

function CkUnixCompress_UnTarZ(objHandle: HCkUnixCompress; zFilename: PWideChar; destDir: PWideChar; bNoAbsolute: wordbool): wordbool; stdcall;

function CkUnixCompress_UnTarZAsync(objHandle: HCkUnixCompress; zFilename: PWideChar; destDir: PWideChar; bNoAbsolute: wordbool): HCkTask; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkUnixCompress_Create; external DLLName;
procedure CkUnixCompress_Dispose; external DLLName;

procedure CkUnixCompress_SetAbortCheck; external DLLName;
procedure CkUnixCompress_SetProgressInfo; external DLLName;
procedure CkUnixCompress_SetPercentDone; external DLLName;
procedure CkUnixCompress_SetTaskCompleted; external DLLName;
function CkUnixCompress_getAbortCurrent; external DLLName;
procedure CkUnixCompress_putAbortCurrent; external DLLName;
procedure CkUnixCompress_getDebugLogFilePath; external DLLName;
procedure CkUnixCompress_putDebugLogFilePath; external DLLName;
function CkUnixCompress__debugLogFilePath; external DLLName;
function CkUnixCompress_getHeartbeatMs; external DLLName;
procedure CkUnixCompress_putHeartbeatMs; external DLLName;
procedure CkUnixCompress_getLastErrorHtml; external DLLName;
function CkUnixCompress__lastErrorHtml; external DLLName;
procedure CkUnixCompress_getLastErrorText; external DLLName;
function CkUnixCompress__lastErrorText; external DLLName;
procedure CkUnixCompress_getLastErrorXml; external DLLName;
function CkUnixCompress__lastErrorXml; external DLLName;
function CkUnixCompress_getLastMethodSuccess; external DLLName;
procedure CkUnixCompress_putLastMethodSuccess; external DLLName;
function CkUnixCompress_getVerboseLogging; external DLLName;
procedure CkUnixCompress_putVerboseLogging; external DLLName;
procedure CkUnixCompress_getVersion; external DLLName;
function CkUnixCompress__version; external DLLName;
function CkUnixCompress_CompressFile; external DLLName;
function CkUnixCompress_CompressFileAsync; external DLLName;
function CkUnixCompress_CompressFileToMem; external DLLName;
function CkUnixCompress_CompressFileToMemAsync; external DLLName;
function CkUnixCompress_CompressMemory; external DLLName;
function CkUnixCompress_CompressMemToFile; external DLLName;
function CkUnixCompress_CompressString; external DLLName;
function CkUnixCompress_CompressStringToFile; external DLLName;
function CkUnixCompress_LoadTaskCaller; external DLLName;
function CkUnixCompress_SaveLastError; external DLLName;
function CkUnixCompress_UncompressFile; external DLLName;
function CkUnixCompress_UncompressFileAsync; external DLLName;
function CkUnixCompress_UncompressFileToMem; external DLLName;
function CkUnixCompress_UncompressFileToMemAsync; external DLLName;
function CkUnixCompress_UncompressFileToString; external DLLName;
function CkUnixCompress__uncompressFileToString; external DLLName;
function CkUnixCompress_UncompressFileToStringAsync; external DLLName;
function CkUnixCompress_UncompressMemory; external DLLName;
function CkUnixCompress_UncompressMemToFile; external DLLName;
function CkUnixCompress_UncompressString; external DLLName;
function CkUnixCompress__uncompressString; external DLLName;
function CkUnixCompress_UnlockComponent; external DLLName;
function CkUnixCompress_UnTarZ; external DLLName;
function CkUnixCompress_UnTarZAsync; external DLLName;



end.
