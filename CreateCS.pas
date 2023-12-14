unit CreateCS;

interface

type

HCkCertStore = Pointer;
HCkCreateCS = Pointer;
HCkString = Pointer;


function CkCreateCS_Create: HCkCreateCS; stdcall;
procedure CkCreateCS_Dispose(handle: HCkCreateCS); stdcall;
procedure CkCreateCS_getDebugLogFilePath(objHandle: HCkCreateCS; outPropVal: HCkString); stdcall;

procedure CkCreateCS_putDebugLogFilePath(objHandle: HCkCreateCS; newPropVal: PWideChar); stdcall;

function CkCreateCS__debugLogFilePath(objHandle: HCkCreateCS): PWideChar; stdcall;

procedure CkCreateCS_getLastErrorHtml(objHandle: HCkCreateCS; outPropVal: HCkString); stdcall;

function CkCreateCS__lastErrorHtml(objHandle: HCkCreateCS): PWideChar; stdcall;

procedure CkCreateCS_getLastErrorText(objHandle: HCkCreateCS; outPropVal: HCkString); stdcall;

function CkCreateCS__lastErrorText(objHandle: HCkCreateCS): PWideChar; stdcall;

procedure CkCreateCS_getLastErrorXml(objHandle: HCkCreateCS; outPropVal: HCkString); stdcall;

function CkCreateCS__lastErrorXml(objHandle: HCkCreateCS): PWideChar; stdcall;

function CkCreateCS_getLastMethodSuccess(objHandle: HCkCreateCS): wordbool; stdcall;

procedure CkCreateCS_putLastMethodSuccess(objHandle: HCkCreateCS; newPropVal: wordbool); stdcall;

function CkCreateCS_getReadOnly(objHandle: HCkCreateCS): wordbool; stdcall;

procedure CkCreateCS_putReadOnly(objHandle: HCkCreateCS; newPropVal: wordbool); stdcall;

function CkCreateCS_getVerboseLogging(objHandle: HCkCreateCS): wordbool; stdcall;

procedure CkCreateCS_putVerboseLogging(objHandle: HCkCreateCS; newPropVal: wordbool); stdcall;

procedure CkCreateCS_getVersion(objHandle: HCkCreateCS; outPropVal: HCkString); stdcall;

function CkCreateCS__version(objHandle: HCkCreateCS): PWideChar; stdcall;

function CkCreateCS_CreateFileStore(objHandle: HCkCreateCS; path: PWideChar): HCkCertStore; stdcall;

function CkCreateCS_CreateMemoryStore(objHandle: HCkCreateCS): HCkCertStore; stdcall;

function CkCreateCS_CreateRegistryStore(objHandle: HCkCreateCS; regRoot: PWideChar; regPath: PWideChar): HCkCertStore; stdcall;

function CkCreateCS_OpenChilkatStore(objHandle: HCkCreateCS): HCkCertStore; stdcall;

function CkCreateCS_OpenCurrentUserStore(objHandle: HCkCreateCS): HCkCertStore; stdcall;

function CkCreateCS_OpenFileStore(objHandle: HCkCreateCS; path: PWideChar): HCkCertStore; stdcall;

function CkCreateCS_OpenLocalSystemStore(objHandle: HCkCreateCS): HCkCertStore; stdcall;

function CkCreateCS_OpenOutlookStore(objHandle: HCkCreateCS): HCkCertStore; stdcall;

function CkCreateCS_OpenRegistryStore(objHandle: HCkCreateCS; regRoot: PWideChar; regPath: PWideChar): HCkCertStore; stdcall;

function CkCreateCS_SaveLastError(objHandle: HCkCreateCS; path: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkCreateCS_Create; external DLLName;
procedure CkCreateCS_Dispose; external DLLName;
procedure CkCreateCS_getDebugLogFilePath; external DLLName;
procedure CkCreateCS_putDebugLogFilePath; external DLLName;
function CkCreateCS__debugLogFilePath; external DLLName;
procedure CkCreateCS_getLastErrorHtml; external DLLName;
function CkCreateCS__lastErrorHtml; external DLLName;
procedure CkCreateCS_getLastErrorText; external DLLName;
function CkCreateCS__lastErrorText; external DLLName;
procedure CkCreateCS_getLastErrorXml; external DLLName;
function CkCreateCS__lastErrorXml; external DLLName;
function CkCreateCS_getLastMethodSuccess; external DLLName;
procedure CkCreateCS_putLastMethodSuccess; external DLLName;
function CkCreateCS_getReadOnly; external DLLName;
procedure CkCreateCS_putReadOnly; external DLLName;
function CkCreateCS_getVerboseLogging; external DLLName;
procedure CkCreateCS_putVerboseLogging; external DLLName;
procedure CkCreateCS_getVersion; external DLLName;
function CkCreateCS__version; external DLLName;
function CkCreateCS_CreateFileStore; external DLLName;
function CkCreateCS_CreateMemoryStore; external DLLName;
function CkCreateCS_CreateRegistryStore; external DLLName;
function CkCreateCS_OpenChilkatStore; external DLLName;
function CkCreateCS_OpenCurrentUserStore; external DLLName;
function CkCreateCS_OpenFileStore; external DLLName;
function CkCreateCS_OpenLocalSystemStore; external DLLName;
function CkCreateCS_OpenOutlookStore; external DLLName;
function CkCreateCS_OpenRegistryStore; external DLLName;
function CkCreateCS_SaveLastError; external DLLName;



end.
