unit AuthUtil;

interface

type

HCkString = Pointer;
HCkAuthUtil = Pointer;


function CkAuthUtil_Create: HCkAuthUtil; stdcall;
procedure CkAuthUtil_Dispose(handle: HCkAuthUtil); stdcall;
procedure CkAuthUtil_getDebugLogFilePath(objHandle: HCkAuthUtil; outPropVal: HCkString); stdcall;

procedure CkAuthUtil_putDebugLogFilePath(objHandle: HCkAuthUtil; newPropVal: PWideChar); stdcall;

function CkAuthUtil__debugLogFilePath(objHandle: HCkAuthUtil): PWideChar; stdcall;

procedure CkAuthUtil_getLastErrorHtml(objHandle: HCkAuthUtil; outPropVal: HCkString); stdcall;

function CkAuthUtil__lastErrorHtml(objHandle: HCkAuthUtil): PWideChar; stdcall;

procedure CkAuthUtil_getLastErrorText(objHandle: HCkAuthUtil; outPropVal: HCkString); stdcall;

function CkAuthUtil__lastErrorText(objHandle: HCkAuthUtil): PWideChar; stdcall;

procedure CkAuthUtil_getLastErrorXml(objHandle: HCkAuthUtil; outPropVal: HCkString); stdcall;

function CkAuthUtil__lastErrorXml(objHandle: HCkAuthUtil): PWideChar; stdcall;

function CkAuthUtil_getLastMethodSuccess(objHandle: HCkAuthUtil): wordbool; stdcall;

procedure CkAuthUtil_putLastMethodSuccess(objHandle: HCkAuthUtil; newPropVal: wordbool); stdcall;

function CkAuthUtil_getVerboseLogging(objHandle: HCkAuthUtil): wordbool; stdcall;

procedure CkAuthUtil_putVerboseLogging(objHandle: HCkAuthUtil; newPropVal: wordbool); stdcall;

procedure CkAuthUtil_getVersion(objHandle: HCkAuthUtil; outPropVal: HCkString); stdcall;

function CkAuthUtil__version(objHandle: HCkAuthUtil): PWideChar; stdcall;

function CkAuthUtil_SaveLastError(objHandle: HCkAuthUtil; path: PWideChar): wordbool; stdcall;

function CkAuthUtil_WalmartSignature(objHandle: HCkAuthUtil; requestUrl: PWideChar; consumerId: PWideChar; privateKey: PWideChar; requestMethod: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkAuthUtil__walmartSignature(objHandle: HCkAuthUtil; requestUrl: PWideChar; consumerId: PWideChar; privateKey: PWideChar; requestMethod: PWideChar): PWideChar; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkAuthUtil_Create; external DLLName;
procedure CkAuthUtil_Dispose; external DLLName;
procedure CkAuthUtil_getDebugLogFilePath; external DLLName;
procedure CkAuthUtil_putDebugLogFilePath; external DLLName;
function CkAuthUtil__debugLogFilePath; external DLLName;
procedure CkAuthUtil_getLastErrorHtml; external DLLName;
function CkAuthUtil__lastErrorHtml; external DLLName;
procedure CkAuthUtil_getLastErrorText; external DLLName;
function CkAuthUtil__lastErrorText; external DLLName;
procedure CkAuthUtil_getLastErrorXml; external DLLName;
function CkAuthUtil__lastErrorXml; external DLLName;
function CkAuthUtil_getLastMethodSuccess; external DLLName;
procedure CkAuthUtil_putLastMethodSuccess; external DLLName;
function CkAuthUtil_getVerboseLogging; external DLLName;
procedure CkAuthUtil_putVerboseLogging; external DLLName;
procedure CkAuthUtil_getVersion; external DLLName;
function CkAuthUtil__version; external DLLName;
function CkAuthUtil_SaveLastError; external DLLName;
function CkAuthUtil_WalmartSignature; external DLLName;
function CkAuthUtil__walmartSignature; external DLLName;



end.
