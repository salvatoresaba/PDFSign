unit AuthAzureStorage;

interface

type

HCkString = Pointer;
HCkAuthAzureStorage = Pointer;


function CkAuthAzureStorage_Create: HCkAuthAzureStorage; stdcall;
procedure CkAuthAzureStorage_Dispose(handle: HCkAuthAzureStorage); stdcall;
procedure CkAuthAzureStorage_getAccessKey(objHandle: HCkAuthAzureStorage; outPropVal: HCkString); stdcall;

procedure CkAuthAzureStorage_putAccessKey(objHandle: HCkAuthAzureStorage; newPropVal: PWideChar); stdcall;

function CkAuthAzureStorage__accessKey(objHandle: HCkAuthAzureStorage): PWideChar; stdcall;

procedure CkAuthAzureStorage_getAccount(objHandle: HCkAuthAzureStorage; outPropVal: HCkString); stdcall;

procedure CkAuthAzureStorage_putAccount(objHandle: HCkAuthAzureStorage; newPropVal: PWideChar); stdcall;

function CkAuthAzureStorage__account(objHandle: HCkAuthAzureStorage): PWideChar; stdcall;

procedure CkAuthAzureStorage_getDebugLogFilePath(objHandle: HCkAuthAzureStorage; outPropVal: HCkString); stdcall;

procedure CkAuthAzureStorage_putDebugLogFilePath(objHandle: HCkAuthAzureStorage; newPropVal: PWideChar); stdcall;

function CkAuthAzureStorage__debugLogFilePath(objHandle: HCkAuthAzureStorage): PWideChar; stdcall;

procedure CkAuthAzureStorage_getLastErrorHtml(objHandle: HCkAuthAzureStorage; outPropVal: HCkString); stdcall;

function CkAuthAzureStorage__lastErrorHtml(objHandle: HCkAuthAzureStorage): PWideChar; stdcall;

procedure CkAuthAzureStorage_getLastErrorText(objHandle: HCkAuthAzureStorage; outPropVal: HCkString); stdcall;

function CkAuthAzureStorage__lastErrorText(objHandle: HCkAuthAzureStorage): PWideChar; stdcall;

procedure CkAuthAzureStorage_getLastErrorXml(objHandle: HCkAuthAzureStorage; outPropVal: HCkString); stdcall;

function CkAuthAzureStorage__lastErrorXml(objHandle: HCkAuthAzureStorage): PWideChar; stdcall;

function CkAuthAzureStorage_getLastMethodSuccess(objHandle: HCkAuthAzureStorage): wordbool; stdcall;

procedure CkAuthAzureStorage_putLastMethodSuccess(objHandle: HCkAuthAzureStorage; newPropVal: wordbool); stdcall;

procedure CkAuthAzureStorage_getScheme(objHandle: HCkAuthAzureStorage; outPropVal: HCkString); stdcall;

procedure CkAuthAzureStorage_putScheme(objHandle: HCkAuthAzureStorage; newPropVal: PWideChar); stdcall;

function CkAuthAzureStorage__scheme(objHandle: HCkAuthAzureStorage): PWideChar; stdcall;

procedure CkAuthAzureStorage_getService(objHandle: HCkAuthAzureStorage; outPropVal: HCkString); stdcall;

procedure CkAuthAzureStorage_putService(objHandle: HCkAuthAzureStorage; newPropVal: PWideChar); stdcall;

function CkAuthAzureStorage__service(objHandle: HCkAuthAzureStorage): PWideChar; stdcall;

function CkAuthAzureStorage_getVerboseLogging(objHandle: HCkAuthAzureStorage): wordbool; stdcall;

procedure CkAuthAzureStorage_putVerboseLogging(objHandle: HCkAuthAzureStorage; newPropVal: wordbool); stdcall;

procedure CkAuthAzureStorage_getVersion(objHandle: HCkAuthAzureStorage; outPropVal: HCkString); stdcall;

function CkAuthAzureStorage__version(objHandle: HCkAuthAzureStorage): PWideChar; stdcall;

procedure CkAuthAzureStorage_getXMsVersion(objHandle: HCkAuthAzureStorage; outPropVal: HCkString); stdcall;

procedure CkAuthAzureStorage_putXMsVersion(objHandle: HCkAuthAzureStorage; newPropVal: PWideChar); stdcall;

function CkAuthAzureStorage__xMsVersion(objHandle: HCkAuthAzureStorage): PWideChar; stdcall;

function CkAuthAzureStorage_SaveLastError(objHandle: HCkAuthAzureStorage; path: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkAuthAzureStorage_Create; external DLLName;
procedure CkAuthAzureStorage_Dispose; external DLLName;
procedure CkAuthAzureStorage_getAccessKey; external DLLName;
procedure CkAuthAzureStorage_putAccessKey; external DLLName;
function CkAuthAzureStorage__accessKey; external DLLName;
procedure CkAuthAzureStorage_getAccount; external DLLName;
procedure CkAuthAzureStorage_putAccount; external DLLName;
function CkAuthAzureStorage__account; external DLLName;
procedure CkAuthAzureStorage_getDebugLogFilePath; external DLLName;
procedure CkAuthAzureStorage_putDebugLogFilePath; external DLLName;
function CkAuthAzureStorage__debugLogFilePath; external DLLName;
procedure CkAuthAzureStorage_getLastErrorHtml; external DLLName;
function CkAuthAzureStorage__lastErrorHtml; external DLLName;
procedure CkAuthAzureStorage_getLastErrorText; external DLLName;
function CkAuthAzureStorage__lastErrorText; external DLLName;
procedure CkAuthAzureStorage_getLastErrorXml; external DLLName;
function CkAuthAzureStorage__lastErrorXml; external DLLName;
function CkAuthAzureStorage_getLastMethodSuccess; external DLLName;
procedure CkAuthAzureStorage_putLastMethodSuccess; external DLLName;
procedure CkAuthAzureStorage_getScheme; external DLLName;
procedure CkAuthAzureStorage_putScheme; external DLLName;
function CkAuthAzureStorage__scheme; external DLLName;
procedure CkAuthAzureStorage_getService; external DLLName;
procedure CkAuthAzureStorage_putService; external DLLName;
function CkAuthAzureStorage__service; external DLLName;
function CkAuthAzureStorage_getVerboseLogging; external DLLName;
procedure CkAuthAzureStorage_putVerboseLogging; external DLLName;
procedure CkAuthAzureStorage_getVersion; external DLLName;
function CkAuthAzureStorage__version; external DLLName;
procedure CkAuthAzureStorage_getXMsVersion; external DLLName;
procedure CkAuthAzureStorage_putXMsVersion; external DLLName;
function CkAuthAzureStorage__xMsVersion; external DLLName;
function CkAuthAzureStorage_SaveLastError; external DLLName;



end.
