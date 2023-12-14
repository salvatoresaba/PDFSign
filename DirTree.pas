unit DirTree;

interface

type

HCkDirTree = Pointer;
HCkString = Pointer;


function CkDirTree_Create: HCkDirTree; stdcall;
procedure CkDirTree_Dispose(handle: HCkDirTree); stdcall;
procedure CkDirTree_getBaseDir(objHandle: HCkDirTree; outPropVal: HCkString); stdcall;

procedure CkDirTree_putBaseDir(objHandle: HCkDirTree; newPropVal: PWideChar); stdcall;

function CkDirTree__baseDir(objHandle: HCkDirTree): PWideChar; stdcall;

procedure CkDirTree_getDebugLogFilePath(objHandle: HCkDirTree; outPropVal: HCkString); stdcall;

procedure CkDirTree_putDebugLogFilePath(objHandle: HCkDirTree; newPropVal: PWideChar); stdcall;

function CkDirTree__debugLogFilePath(objHandle: HCkDirTree): PWideChar; stdcall;

function CkDirTree_getDoneIterating(objHandle: HCkDirTree): wordbool; stdcall;

function CkDirTree_getFileSize32(objHandle: HCkDirTree): Integer; stdcall;

function CkDirTree_getFileSize64(objHandle: HCkDirTree): Int64; stdcall;

procedure CkDirTree_getFileSizeStr(objHandle: HCkDirTree; outPropVal: HCkString); stdcall;

function CkDirTree__fileSizeStr(objHandle: HCkDirTree): PWideChar; stdcall;

procedure CkDirTree_getFullPath(objHandle: HCkDirTree; outPropVal: HCkString); stdcall;

function CkDirTree__fullPath(objHandle: HCkDirTree): PWideChar; stdcall;

procedure CkDirTree_getFullUncPath(objHandle: HCkDirTree; outPropVal: HCkString); stdcall;

function CkDirTree__fullUncPath(objHandle: HCkDirTree): PWideChar; stdcall;

function CkDirTree_getIsDirectory(objHandle: HCkDirTree): wordbool; stdcall;

procedure CkDirTree_getLastErrorHtml(objHandle: HCkDirTree; outPropVal: HCkString); stdcall;

function CkDirTree__lastErrorHtml(objHandle: HCkDirTree): PWideChar; stdcall;

procedure CkDirTree_getLastErrorText(objHandle: HCkDirTree; outPropVal: HCkString); stdcall;

function CkDirTree__lastErrorText(objHandle: HCkDirTree): PWideChar; stdcall;

procedure CkDirTree_getLastErrorXml(objHandle: HCkDirTree; outPropVal: HCkString); stdcall;

function CkDirTree__lastErrorXml(objHandle: HCkDirTree): PWideChar; stdcall;

function CkDirTree_getLastMethodSuccess(objHandle: HCkDirTree): wordbool; stdcall;

procedure CkDirTree_putLastMethodSuccess(objHandle: HCkDirTree; newPropVal: wordbool); stdcall;

function CkDirTree_getRecurse(objHandle: HCkDirTree): wordbool; stdcall;

procedure CkDirTree_putRecurse(objHandle: HCkDirTree; newPropVal: wordbool); stdcall;

procedure CkDirTree_getRelativePath(objHandle: HCkDirTree; outPropVal: HCkString); stdcall;

function CkDirTree__relativePath(objHandle: HCkDirTree): PWideChar; stdcall;

function CkDirTree_getVerboseLogging(objHandle: HCkDirTree): wordbool; stdcall;

procedure CkDirTree_putVerboseLogging(objHandle: HCkDirTree; newPropVal: wordbool); stdcall;

procedure CkDirTree_getVersion(objHandle: HCkDirTree; outPropVal: HCkString); stdcall;

function CkDirTree__version(objHandle: HCkDirTree): PWideChar; stdcall;

function CkDirTree_AdvancePosition(objHandle: HCkDirTree): wordbool; stdcall;

function CkDirTree_BeginIterate(objHandle: HCkDirTree): wordbool; stdcall;

function CkDirTree_SaveLastError(objHandle: HCkDirTree; path: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkDirTree_Create; external DLLName;
procedure CkDirTree_Dispose; external DLLName;
procedure CkDirTree_getBaseDir; external DLLName;
procedure CkDirTree_putBaseDir; external DLLName;
function CkDirTree__baseDir; external DLLName;
procedure CkDirTree_getDebugLogFilePath; external DLLName;
procedure CkDirTree_putDebugLogFilePath; external DLLName;
function CkDirTree__debugLogFilePath; external DLLName;
function CkDirTree_getDoneIterating; external DLLName;
function CkDirTree_getFileSize32; external DLLName;
function CkDirTree_getFileSize64; external DLLName;
procedure CkDirTree_getFileSizeStr; external DLLName;
function CkDirTree__fileSizeStr; external DLLName;
procedure CkDirTree_getFullPath; external DLLName;
function CkDirTree__fullPath; external DLLName;
procedure CkDirTree_getFullUncPath; external DLLName;
function CkDirTree__fullUncPath; external DLLName;
function CkDirTree_getIsDirectory; external DLLName;
procedure CkDirTree_getLastErrorHtml; external DLLName;
function CkDirTree__lastErrorHtml; external DLLName;
procedure CkDirTree_getLastErrorText; external DLLName;
function CkDirTree__lastErrorText; external DLLName;
procedure CkDirTree_getLastErrorXml; external DLLName;
function CkDirTree__lastErrorXml; external DLLName;
function CkDirTree_getLastMethodSuccess; external DLLName;
procedure CkDirTree_putLastMethodSuccess; external DLLName;
function CkDirTree_getRecurse; external DLLName;
procedure CkDirTree_putRecurse; external DLLName;
procedure CkDirTree_getRelativePath; external DLLName;
function CkDirTree__relativePath; external DLLName;
function CkDirTree_getVerboseLogging; external DLLName;
procedure CkDirTree_putVerboseLogging; external DLLName;
procedure CkDirTree_getVersion; external DLLName;
function CkDirTree__version; external DLLName;
function CkDirTree_AdvancePosition; external DLLName;
function CkDirTree_BeginIterate; external DLLName;
function CkDirTree_SaveLastError; external DLLName;



end.
