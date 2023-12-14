unit Tar;

interface

type

HCkTask = Pointer;
HCkBinData = Pointer;
HCkByteData = Pointer;
HCkTar = Pointer;
HCkString = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TTarAbortCheck = function(): Integer; cdecl;
TTarProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TTarPercentDone = function(pctDone: Integer): Integer; cdecl;
TTarTaskCompleted = procedure(task: HCkTask); cdecl;


function CkTar_Create: HCkTar; stdcall;
procedure CkTar_Dispose(handle: HCkTar); stdcall;

procedure CkTar_SetAbortCheck(objHandle: HCkTar; fn: TTarAbortCheck) stdcall;
procedure CkTar_SetProgressInfo(objHandle: HCkTar; fn: TTarProgressInfo) stdcall;
procedure CkTar_SetPercentDone(objHandle: HCkTar; fn: TTarPercentDone) stdcall;
procedure CkTar_SetTaskCompleted(objHandle: HCkTar; fn: TTarTaskCompleted) stdcall;
function CkTar_getCaptureXmlListing(objHandle: HCkTar): wordbool; stdcall;

procedure CkTar_putCaptureXmlListing(objHandle: HCkTar; newPropVal: wordbool); stdcall;

procedure CkTar_getCharset(objHandle: HCkTar; outPropVal: HCkString); stdcall;

procedure CkTar_putCharset(objHandle: HCkTar; newPropVal: PWideChar); stdcall;

function CkTar__charset(objHandle: HCkTar): PWideChar; stdcall;

procedure CkTar_getDebugLogFilePath(objHandle: HCkTar; outPropVal: HCkString); stdcall;

procedure CkTar_putDebugLogFilePath(objHandle: HCkTar; newPropVal: PWideChar); stdcall;

function CkTar__debugLogFilePath(objHandle: HCkTar): PWideChar; stdcall;

function CkTar_getDirMode(objHandle: HCkTar): Integer; stdcall;

procedure CkTar_putDirMode(objHandle: HCkTar; newPropVal: Integer); stdcall;

procedure CkTar_getDirPrefix(objHandle: HCkTar; outPropVal: HCkString); stdcall;

procedure CkTar_putDirPrefix(objHandle: HCkTar; newPropVal: PWideChar); stdcall;

function CkTar__dirPrefix(objHandle: HCkTar): PWideChar; stdcall;

function CkTar_getFileMode(objHandle: HCkTar): Integer; stdcall;

procedure CkTar_putFileMode(objHandle: HCkTar; newPropVal: Integer); stdcall;

function CkTar_getGroupId(objHandle: HCkTar): Integer; stdcall;

procedure CkTar_putGroupId(objHandle: HCkTar; newPropVal: Integer); stdcall;

procedure CkTar_getGroupName(objHandle: HCkTar; outPropVal: HCkString); stdcall;

procedure CkTar_putGroupName(objHandle: HCkTar; newPropVal: PWideChar); stdcall;

function CkTar__groupName(objHandle: HCkTar): PWideChar; stdcall;

function CkTar_getHeartbeatMs(objHandle: HCkTar): Integer; stdcall;

procedure CkTar_putHeartbeatMs(objHandle: HCkTar; newPropVal: Integer); stdcall;

procedure CkTar_getLastErrorHtml(objHandle: HCkTar; outPropVal: HCkString); stdcall;

function CkTar__lastErrorHtml(objHandle: HCkTar): PWideChar; stdcall;

procedure CkTar_getLastErrorText(objHandle: HCkTar; outPropVal: HCkString); stdcall;

function CkTar__lastErrorText(objHandle: HCkTar): PWideChar; stdcall;

procedure CkTar_getLastErrorXml(objHandle: HCkTar; outPropVal: HCkString); stdcall;

function CkTar__lastErrorXml(objHandle: HCkTar): PWideChar; stdcall;

function CkTar_getLastMethodSuccess(objHandle: HCkTar): wordbool; stdcall;

procedure CkTar_putLastMethodSuccess(objHandle: HCkTar; newPropVal: wordbool); stdcall;

function CkTar_getMatchCaseSensitive(objHandle: HCkTar): wordbool; stdcall;

procedure CkTar_putMatchCaseSensitive(objHandle: HCkTar; newPropVal: wordbool); stdcall;

procedure CkTar_getMustMatch(objHandle: HCkTar; outPropVal: HCkString); stdcall;

procedure CkTar_putMustMatch(objHandle: HCkTar; newPropVal: PWideChar); stdcall;

function CkTar__mustMatch(objHandle: HCkTar): PWideChar; stdcall;

procedure CkTar_getMustNotMatch(objHandle: HCkTar; outPropVal: HCkString); stdcall;

procedure CkTar_putMustNotMatch(objHandle: HCkTar; newPropVal: PWideChar); stdcall;

function CkTar__mustNotMatch(objHandle: HCkTar): PWideChar; stdcall;

function CkTar_getNoAbsolutePaths(objHandle: HCkTar): wordbool; stdcall;

procedure CkTar_putNoAbsolutePaths(objHandle: HCkTar; newPropVal: wordbool); stdcall;

function CkTar_getNumDirRoots(objHandle: HCkTar): Integer; stdcall;

function CkTar_getPercentDoneScale(objHandle: HCkTar): Integer; stdcall;

procedure CkTar_putPercentDoneScale(objHandle: HCkTar; newPropVal: Integer); stdcall;

function CkTar_getScriptFileMode(objHandle: HCkTar): Integer; stdcall;

procedure CkTar_putScriptFileMode(objHandle: HCkTar; newPropVal: Integer); stdcall;

function CkTar_getSuppressOutput(objHandle: HCkTar): wordbool; stdcall;

procedure CkTar_putSuppressOutput(objHandle: HCkTar; newPropVal: wordbool); stdcall;

function CkTar_getUntarCaseSensitive(objHandle: HCkTar): wordbool; stdcall;

procedure CkTar_putUntarCaseSensitive(objHandle: HCkTar; newPropVal: wordbool); stdcall;

function CkTar_getUntarDebugLog(objHandle: HCkTar): wordbool; stdcall;

procedure CkTar_putUntarDebugLog(objHandle: HCkTar; newPropVal: wordbool); stdcall;

function CkTar_getUntarDiscardPaths(objHandle: HCkTar): wordbool; stdcall;

procedure CkTar_putUntarDiscardPaths(objHandle: HCkTar; newPropVal: wordbool); stdcall;

procedure CkTar_getUntarFromDir(objHandle: HCkTar; outPropVal: HCkString); stdcall;

procedure CkTar_putUntarFromDir(objHandle: HCkTar; newPropVal: PWideChar); stdcall;

function CkTar__untarFromDir(objHandle: HCkTar): PWideChar; stdcall;

procedure CkTar_getUntarMatchPattern(objHandle: HCkTar; outPropVal: HCkString); stdcall;

procedure CkTar_putUntarMatchPattern(objHandle: HCkTar; newPropVal: PWideChar); stdcall;

function CkTar__untarMatchPattern(objHandle: HCkTar): PWideChar; stdcall;

function CkTar_getUntarMaxCount(objHandle: HCkTar): Integer; stdcall;

procedure CkTar_putUntarMaxCount(objHandle: HCkTar; newPropVal: Integer); stdcall;

function CkTar_getUserId(objHandle: HCkTar): Integer; stdcall;

procedure CkTar_putUserId(objHandle: HCkTar; newPropVal: Integer); stdcall;

procedure CkTar_getUserName(objHandle: HCkTar; outPropVal: HCkString); stdcall;

procedure CkTar_putUserName(objHandle: HCkTar; newPropVal: PWideChar); stdcall;

function CkTar__userName(objHandle: HCkTar): PWideChar; stdcall;

function CkTar_getVerboseLogging(objHandle: HCkTar): wordbool; stdcall;

procedure CkTar_putVerboseLogging(objHandle: HCkTar; newPropVal: wordbool); stdcall;

procedure CkTar_getVersion(objHandle: HCkTar; outPropVal: HCkString); stdcall;

function CkTar__version(objHandle: HCkTar): PWideChar; stdcall;

procedure CkTar_getWriteFormat(objHandle: HCkTar; outPropVal: HCkString); stdcall;

procedure CkTar_putWriteFormat(objHandle: HCkTar; newPropVal: PWideChar); stdcall;

function CkTar__writeFormat(objHandle: HCkTar): PWideChar; stdcall;

procedure CkTar_getXmlListing(objHandle: HCkTar; outPropVal: HCkString); stdcall;

procedure CkTar_putXmlListing(objHandle: HCkTar; newPropVal: PWideChar); stdcall;

function CkTar__xmlListing(objHandle: HCkTar): PWideChar; stdcall;

function CkTar_AddDirRoot(objHandle: HCkTar; dirPath: PWideChar): wordbool; stdcall;

function CkTar_AddDirRoot2(objHandle: HCkTar; rootPrefix: PWideChar; rootPath: PWideChar): wordbool; stdcall;

function CkTar_AddFile(objHandle: HCkTar; path: PWideChar): wordbool; stdcall;

function CkTar_AddFile2(objHandle: HCkTar; filePath: PWideChar; pathWithinTar: PWideChar): wordbool; stdcall;

function CkTar_ClearDirRootsAndFiles(objHandle: HCkTar): wordbool; stdcall;

function CkTar_CreateDeb(objHandle: HCkTar; controlPath: PWideChar; dataPath: PWideChar; debPath: PWideChar): wordbool; stdcall;

function CkTar_GetDirRoot(objHandle: HCkTar; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkTar__getDirRoot(objHandle: HCkTar; index: Integer): PWideChar; stdcall;

function CkTar_ListXml(objHandle: HCkTar; tarPath: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkTar__listXml(objHandle: HCkTar; tarPath: PWideChar): PWideChar; stdcall;

function CkTar_ListXmlAsync(objHandle: HCkTar; tarPath: PWideChar): HCkTask; stdcall;

function CkTar_LoadTaskCaller(objHandle: HCkTar; task: HCkTask): wordbool; stdcall;

function CkTar_SaveLastError(objHandle: HCkTar; path: PWideChar): wordbool; stdcall;

function CkTar_UnlockComponent(objHandle: HCkTar; unlockCode: PWideChar): wordbool; stdcall;

function CkTar_Untar(objHandle: HCkTar; tarPath: PWideChar): Integer; stdcall;

function CkTar_UntarAsync(objHandle: HCkTar; tarPath: PWideChar): HCkTask; stdcall;

function CkTar_UntarBz2(objHandle: HCkTar; tarPath: PWideChar): wordbool; stdcall;

function CkTar_UntarBz2Async(objHandle: HCkTar; tarPath: PWideChar): HCkTask; stdcall;

function CkTar_UntarFirstMatchingToBd(objHandle: HCkTar; tarPath: PWideChar; matchPattern: PWideChar; bd: HCkBinData): wordbool; stdcall;

function CkTar_UntarFirstMatchingToMemory(objHandle: HCkTar; tarFileBytes: HCkByteData; matchPattern: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkTar_UntarFromMemory(objHandle: HCkTar; tarFileBytes: HCkByteData): Integer; stdcall;

function CkTar_UntarFromMemoryAsync(objHandle: HCkTar; tarFileBytes: HCkByteData): HCkTask; stdcall;

function CkTar_UntarGz(objHandle: HCkTar; tarPath: PWideChar): wordbool; stdcall;

function CkTar_UntarGzAsync(objHandle: HCkTar; tarPath: PWideChar): HCkTask; stdcall;

function CkTar_UntarZ(objHandle: HCkTar; tarPath: PWideChar): wordbool; stdcall;

function CkTar_UntarZAsync(objHandle: HCkTar; tarPath: PWideChar): HCkTask; stdcall;

function CkTar_VerifyTar(objHandle: HCkTar; tarPath: PWideChar): wordbool; stdcall;

function CkTar_VerifyTarAsync(objHandle: HCkTar; tarPath: PWideChar): HCkTask; stdcall;

function CkTar_WriteTar(objHandle: HCkTar; tarPath: PWideChar): wordbool; stdcall;

function CkTar_WriteTarAsync(objHandle: HCkTar; tarPath: PWideChar): HCkTask; stdcall;

function CkTar_WriteTarBz2(objHandle: HCkTar; bz2Path: PWideChar): wordbool; stdcall;

function CkTar_WriteTarBz2Async(objHandle: HCkTar; bz2Path: PWideChar): HCkTask; stdcall;

function CkTar_WriteTarGz(objHandle: HCkTar; gzPath: PWideChar): wordbool; stdcall;

function CkTar_WriteTarGzAsync(objHandle: HCkTar; gzPath: PWideChar): HCkTask; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkTar_Create; external DLLName;
procedure CkTar_Dispose; external DLLName;

procedure CkTar_SetAbortCheck; external DLLName;
procedure CkTar_SetProgressInfo; external DLLName;
procedure CkTar_SetPercentDone; external DLLName;
procedure CkTar_SetTaskCompleted; external DLLName;
function CkTar_getCaptureXmlListing; external DLLName;
procedure CkTar_putCaptureXmlListing; external DLLName;
procedure CkTar_getCharset; external DLLName;
procedure CkTar_putCharset; external DLLName;
function CkTar__charset; external DLLName;
procedure CkTar_getDebugLogFilePath; external DLLName;
procedure CkTar_putDebugLogFilePath; external DLLName;
function CkTar__debugLogFilePath; external DLLName;
function CkTar_getDirMode; external DLLName;
procedure CkTar_putDirMode; external DLLName;
procedure CkTar_getDirPrefix; external DLLName;
procedure CkTar_putDirPrefix; external DLLName;
function CkTar__dirPrefix; external DLLName;
function CkTar_getFileMode; external DLLName;
procedure CkTar_putFileMode; external DLLName;
function CkTar_getGroupId; external DLLName;
procedure CkTar_putGroupId; external DLLName;
procedure CkTar_getGroupName; external DLLName;
procedure CkTar_putGroupName; external DLLName;
function CkTar__groupName; external DLLName;
function CkTar_getHeartbeatMs; external DLLName;
procedure CkTar_putHeartbeatMs; external DLLName;
procedure CkTar_getLastErrorHtml; external DLLName;
function CkTar__lastErrorHtml; external DLLName;
procedure CkTar_getLastErrorText; external DLLName;
function CkTar__lastErrorText; external DLLName;
procedure CkTar_getLastErrorXml; external DLLName;
function CkTar__lastErrorXml; external DLLName;
function CkTar_getLastMethodSuccess; external DLLName;
procedure CkTar_putLastMethodSuccess; external DLLName;
function CkTar_getMatchCaseSensitive; external DLLName;
procedure CkTar_putMatchCaseSensitive; external DLLName;
procedure CkTar_getMustMatch; external DLLName;
procedure CkTar_putMustMatch; external DLLName;
function CkTar__mustMatch; external DLLName;
procedure CkTar_getMustNotMatch; external DLLName;
procedure CkTar_putMustNotMatch; external DLLName;
function CkTar__mustNotMatch; external DLLName;
function CkTar_getNoAbsolutePaths; external DLLName;
procedure CkTar_putNoAbsolutePaths; external DLLName;
function CkTar_getNumDirRoots; external DLLName;
function CkTar_getPercentDoneScale; external DLLName;
procedure CkTar_putPercentDoneScale; external DLLName;
function CkTar_getScriptFileMode; external DLLName;
procedure CkTar_putScriptFileMode; external DLLName;
function CkTar_getSuppressOutput; external DLLName;
procedure CkTar_putSuppressOutput; external DLLName;
function CkTar_getUntarCaseSensitive; external DLLName;
procedure CkTar_putUntarCaseSensitive; external DLLName;
function CkTar_getUntarDebugLog; external DLLName;
procedure CkTar_putUntarDebugLog; external DLLName;
function CkTar_getUntarDiscardPaths; external DLLName;
procedure CkTar_putUntarDiscardPaths; external DLLName;
procedure CkTar_getUntarFromDir; external DLLName;
procedure CkTar_putUntarFromDir; external DLLName;
function CkTar__untarFromDir; external DLLName;
procedure CkTar_getUntarMatchPattern; external DLLName;
procedure CkTar_putUntarMatchPattern; external DLLName;
function CkTar__untarMatchPattern; external DLLName;
function CkTar_getUntarMaxCount; external DLLName;
procedure CkTar_putUntarMaxCount; external DLLName;
function CkTar_getUserId; external DLLName;
procedure CkTar_putUserId; external DLLName;
procedure CkTar_getUserName; external DLLName;
procedure CkTar_putUserName; external DLLName;
function CkTar__userName; external DLLName;
function CkTar_getVerboseLogging; external DLLName;
procedure CkTar_putVerboseLogging; external DLLName;
procedure CkTar_getVersion; external DLLName;
function CkTar__version; external DLLName;
procedure CkTar_getWriteFormat; external DLLName;
procedure CkTar_putWriteFormat; external DLLName;
function CkTar__writeFormat; external DLLName;
procedure CkTar_getXmlListing; external DLLName;
procedure CkTar_putXmlListing; external DLLName;
function CkTar__xmlListing; external DLLName;
function CkTar_AddDirRoot; external DLLName;
function CkTar_AddDirRoot2; external DLLName;
function CkTar_AddFile; external DLLName;
function CkTar_AddFile2; external DLLName;
function CkTar_ClearDirRootsAndFiles; external DLLName;
function CkTar_CreateDeb; external DLLName;
function CkTar_GetDirRoot; external DLLName;
function CkTar__getDirRoot; external DLLName;
function CkTar_ListXml; external DLLName;
function CkTar__listXml; external DLLName;
function CkTar_ListXmlAsync; external DLLName;
function CkTar_LoadTaskCaller; external DLLName;
function CkTar_SaveLastError; external DLLName;
function CkTar_UnlockComponent; external DLLName;
function CkTar_Untar; external DLLName;
function CkTar_UntarAsync; external DLLName;
function CkTar_UntarBz2; external DLLName;
function CkTar_UntarBz2Async; external DLLName;
function CkTar_UntarFirstMatchingToBd; external DLLName;
function CkTar_UntarFirstMatchingToMemory; external DLLName;
function CkTar_UntarFromMemory; external DLLName;
function CkTar_UntarFromMemoryAsync; external DLLName;
function CkTar_UntarGz; external DLLName;
function CkTar_UntarGzAsync; external DLLName;
function CkTar_UntarZ; external DLLName;
function CkTar_UntarZAsync; external DLLName;
function CkTar_VerifyTar; external DLLName;
function CkTar_VerifyTarAsync; external DLLName;
function CkTar_WriteTar; external DLLName;
function CkTar_WriteTarAsync; external DLLName;
function CkTar_WriteTarBz2; external DLLName;
function CkTar_WriteTarBz2Async; external DLLName;
function CkTar_WriteTarGz; external DLLName;
function CkTar_WriteTarGzAsync; external DLLName;



end.
