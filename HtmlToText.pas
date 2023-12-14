unit HtmlToText;

interface

type

HCkHtmlToText = Pointer;
HCkString = Pointer;


function CkHtmlToText_Create: HCkHtmlToText; stdcall;
procedure CkHtmlToText_Dispose(handle: HCkHtmlToText); stdcall;
procedure CkHtmlToText_getDebugLogFilePath(objHandle: HCkHtmlToText; outPropVal: HCkString); stdcall;

procedure CkHtmlToText_putDebugLogFilePath(objHandle: HCkHtmlToText; newPropVal: PWideChar); stdcall;

function CkHtmlToText__debugLogFilePath(objHandle: HCkHtmlToText): PWideChar; stdcall;

function CkHtmlToText_getDecodeHtmlEntities(objHandle: HCkHtmlToText): wordbool; stdcall;

procedure CkHtmlToText_putDecodeHtmlEntities(objHandle: HCkHtmlToText; newPropVal: wordbool); stdcall;

procedure CkHtmlToText_getLastErrorHtml(objHandle: HCkHtmlToText; outPropVal: HCkString); stdcall;

function CkHtmlToText__lastErrorHtml(objHandle: HCkHtmlToText): PWideChar; stdcall;

procedure CkHtmlToText_getLastErrorText(objHandle: HCkHtmlToText; outPropVal: HCkString); stdcall;

function CkHtmlToText__lastErrorText(objHandle: HCkHtmlToText): PWideChar; stdcall;

procedure CkHtmlToText_getLastErrorXml(objHandle: HCkHtmlToText; outPropVal: HCkString); stdcall;

function CkHtmlToText__lastErrorXml(objHandle: HCkHtmlToText): PWideChar; stdcall;

function CkHtmlToText_getLastMethodSuccess(objHandle: HCkHtmlToText): wordbool; stdcall;

procedure CkHtmlToText_putLastMethodSuccess(objHandle: HCkHtmlToText; newPropVal: wordbool); stdcall;

function CkHtmlToText_getRightMargin(objHandle: HCkHtmlToText): Integer; stdcall;

procedure CkHtmlToText_putRightMargin(objHandle: HCkHtmlToText; newPropVal: Integer); stdcall;

function CkHtmlToText_getSuppressLinks(objHandle: HCkHtmlToText): wordbool; stdcall;

procedure CkHtmlToText_putSuppressLinks(objHandle: HCkHtmlToText; newPropVal: wordbool); stdcall;

function CkHtmlToText_getVerboseLogging(objHandle: HCkHtmlToText): wordbool; stdcall;

procedure CkHtmlToText_putVerboseLogging(objHandle: HCkHtmlToText; newPropVal: wordbool); stdcall;

procedure CkHtmlToText_getVersion(objHandle: HCkHtmlToText; outPropVal: HCkString); stdcall;

function CkHtmlToText__version(objHandle: HCkHtmlToText): PWideChar; stdcall;

function CkHtmlToText_ReadFileToString(objHandle: HCkHtmlToText; filename: PWideChar; srcCharset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkHtmlToText__readFileToString(objHandle: HCkHtmlToText; filename: PWideChar; srcCharset: PWideChar): PWideChar; stdcall;

function CkHtmlToText_SaveLastError(objHandle: HCkHtmlToText; path: PWideChar): wordbool; stdcall;

function CkHtmlToText_ToText(objHandle: HCkHtmlToText; html: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkHtmlToText__toText(objHandle: HCkHtmlToText; html: PWideChar): PWideChar; stdcall;

function CkHtmlToText_UnlockComponent(objHandle: HCkHtmlToText; code: PWideChar): wordbool; stdcall;

function CkHtmlToText_WriteStringToFile(objHandle: HCkHtmlToText; stringToWrite: PWideChar; filename: PWideChar; charset: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkHtmlToText_Create; external DLLName;
procedure CkHtmlToText_Dispose; external DLLName;
procedure CkHtmlToText_getDebugLogFilePath; external DLLName;
procedure CkHtmlToText_putDebugLogFilePath; external DLLName;
function CkHtmlToText__debugLogFilePath; external DLLName;
function CkHtmlToText_getDecodeHtmlEntities; external DLLName;
procedure CkHtmlToText_putDecodeHtmlEntities; external DLLName;
procedure CkHtmlToText_getLastErrorHtml; external DLLName;
function CkHtmlToText__lastErrorHtml; external DLLName;
procedure CkHtmlToText_getLastErrorText; external DLLName;
function CkHtmlToText__lastErrorText; external DLLName;
procedure CkHtmlToText_getLastErrorXml; external DLLName;
function CkHtmlToText__lastErrorXml; external DLLName;
function CkHtmlToText_getLastMethodSuccess; external DLLName;
procedure CkHtmlToText_putLastMethodSuccess; external DLLName;
function CkHtmlToText_getRightMargin; external DLLName;
procedure CkHtmlToText_putRightMargin; external DLLName;
function CkHtmlToText_getSuppressLinks; external DLLName;
procedure CkHtmlToText_putSuppressLinks; external DLLName;
function CkHtmlToText_getVerboseLogging; external DLLName;
procedure CkHtmlToText_putVerboseLogging; external DLLName;
procedure CkHtmlToText_getVersion; external DLLName;
function CkHtmlToText__version; external DLLName;
function CkHtmlToText_ReadFileToString; external DLLName;
function CkHtmlToText__readFileToString; external DLLName;
function CkHtmlToText_SaveLastError; external DLLName;
function CkHtmlToText_ToText; external DLLName;
function CkHtmlToText__toText; external DLLName;
function CkHtmlToText_UnlockComponent; external DLLName;
function CkHtmlToText_WriteStringToFile; external DLLName;



end.
