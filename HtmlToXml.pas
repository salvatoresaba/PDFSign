unit HtmlToXml;

interface

type

HCkBinData = Pointer;
HCkStringBuilder = Pointer;
HCkByteData = Pointer;
HCkHtmlToXml = Pointer;
HCkString = Pointer;


function CkHtmlToXml_Create: HCkHtmlToXml; stdcall;
procedure CkHtmlToXml_Dispose(handle: HCkHtmlToXml); stdcall;
procedure CkHtmlToXml_getDebugLogFilePath(objHandle: HCkHtmlToXml; outPropVal: HCkString); stdcall;

procedure CkHtmlToXml_putDebugLogFilePath(objHandle: HCkHtmlToXml; newPropVal: PWideChar); stdcall;

function CkHtmlToXml__debugLogFilePath(objHandle: HCkHtmlToXml): PWideChar; stdcall;

function CkHtmlToXml_getDropCustomTags(objHandle: HCkHtmlToXml): wordbool; stdcall;

procedure CkHtmlToXml_putDropCustomTags(objHandle: HCkHtmlToXml; newPropVal: wordbool); stdcall;

procedure CkHtmlToXml_getHtml(objHandle: HCkHtmlToXml; outPropVal: HCkString); stdcall;

procedure CkHtmlToXml_putHtml(objHandle: HCkHtmlToXml; newPropVal: PWideChar); stdcall;

function CkHtmlToXml__html(objHandle: HCkHtmlToXml): PWideChar; stdcall;

procedure CkHtmlToXml_getLastErrorHtml(objHandle: HCkHtmlToXml; outPropVal: HCkString); stdcall;

function CkHtmlToXml__lastErrorHtml(objHandle: HCkHtmlToXml): PWideChar; stdcall;

procedure CkHtmlToXml_getLastErrorText(objHandle: HCkHtmlToXml; outPropVal: HCkString); stdcall;

function CkHtmlToXml__lastErrorText(objHandle: HCkHtmlToXml): PWideChar; stdcall;

procedure CkHtmlToXml_getLastErrorXml(objHandle: HCkHtmlToXml; outPropVal: HCkString); stdcall;

function CkHtmlToXml__lastErrorXml(objHandle: HCkHtmlToXml): PWideChar; stdcall;

function CkHtmlToXml_getLastMethodSuccess(objHandle: HCkHtmlToXml): wordbool; stdcall;

procedure CkHtmlToXml_putLastMethodSuccess(objHandle: HCkHtmlToXml; newPropVal: wordbool); stdcall;

function CkHtmlToXml_getNbsp(objHandle: HCkHtmlToXml): Integer; stdcall;

procedure CkHtmlToXml_putNbsp(objHandle: HCkHtmlToXml; newPropVal: Integer); stdcall;

function CkHtmlToXml_getVerboseLogging(objHandle: HCkHtmlToXml): wordbool; stdcall;

procedure CkHtmlToXml_putVerboseLogging(objHandle: HCkHtmlToXml; newPropVal: wordbool); stdcall;

procedure CkHtmlToXml_getVersion(objHandle: HCkHtmlToXml; outPropVal: HCkString); stdcall;

function CkHtmlToXml__version(objHandle: HCkHtmlToXml): PWideChar; stdcall;

procedure CkHtmlToXml_getXmlCharset(objHandle: HCkHtmlToXml; outPropVal: HCkString); stdcall;

procedure CkHtmlToXml_putXmlCharset(objHandle: HCkHtmlToXml; newPropVal: PWideChar); stdcall;

function CkHtmlToXml__xmlCharset(objHandle: HCkHtmlToXml): PWideChar; stdcall;

function CkHtmlToXml_ConvertFile(objHandle: HCkHtmlToXml; inHtmlPath: PWideChar; destXmlPath: PWideChar): wordbool; stdcall;

procedure CkHtmlToXml_DropTagType(objHandle: HCkHtmlToXml; tagName: PWideChar); stdcall;

procedure CkHtmlToXml_DropTextFormattingTags(objHandle: HCkHtmlToXml); stdcall;

function CkHtmlToXml_IsUnlocked(objHandle: HCkHtmlToXml): wordbool; stdcall;

function CkHtmlToXml_ReadFile(objHandle: HCkHtmlToXml; path: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkHtmlToXml_ReadFileToString(objHandle: HCkHtmlToXml; filename: PWideChar; srcCharset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkHtmlToXml__readFileToString(objHandle: HCkHtmlToXml; filename: PWideChar; srcCharset: PWideChar): PWideChar; stdcall;

function CkHtmlToXml_SaveLastError(objHandle: HCkHtmlToXml; path: PWideChar): wordbool; stdcall;

function CkHtmlToXml_SetHtmlBd(objHandle: HCkHtmlToXml; bd: HCkBinData): wordbool; stdcall;

procedure CkHtmlToXml_SetHtmlBytes(objHandle: HCkHtmlToXml; inData: HCkByteData); stdcall;

function CkHtmlToXml_SetHtmlFromFile(objHandle: HCkHtmlToXml; filename: PWideChar): wordbool; stdcall;

function CkHtmlToXml_ToXml(objHandle: HCkHtmlToXml; outStr: HCkString): wordbool; stdcall;

function CkHtmlToXml__toXml(objHandle: HCkHtmlToXml): PWideChar; stdcall;

function CkHtmlToXml_ToXmlSb(objHandle: HCkHtmlToXml; sb: HCkStringBuilder): wordbool; stdcall;

procedure CkHtmlToXml_UndropTagType(objHandle: HCkHtmlToXml; tagName: PWideChar); stdcall;

procedure CkHtmlToXml_UndropTextFormattingTags(objHandle: HCkHtmlToXml); stdcall;

function CkHtmlToXml_UnlockComponent(objHandle: HCkHtmlToXml; unlockCode: PWideChar): wordbool; stdcall;

function CkHtmlToXml_WriteFile(objHandle: HCkHtmlToXml; path: PWideChar; fileData: HCkByteData): wordbool; stdcall;

function CkHtmlToXml_WriteStringToFile(objHandle: HCkHtmlToXml; stringToWrite: PWideChar; filename: PWideChar; charset: PWideChar): wordbool; stdcall;

function CkHtmlToXml_Xml(objHandle: HCkHtmlToXml; outStr: HCkString): wordbool; stdcall;

function CkHtmlToXml__xml(objHandle: HCkHtmlToXml): PWideChar; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkHtmlToXml_Create; external DLLName;
procedure CkHtmlToXml_Dispose; external DLLName;
procedure CkHtmlToXml_getDebugLogFilePath; external DLLName;
procedure CkHtmlToXml_putDebugLogFilePath; external DLLName;
function CkHtmlToXml__debugLogFilePath; external DLLName;
function CkHtmlToXml_getDropCustomTags; external DLLName;
procedure CkHtmlToXml_putDropCustomTags; external DLLName;
procedure CkHtmlToXml_getHtml; external DLLName;
procedure CkHtmlToXml_putHtml; external DLLName;
function CkHtmlToXml__html; external DLLName;
procedure CkHtmlToXml_getLastErrorHtml; external DLLName;
function CkHtmlToXml__lastErrorHtml; external DLLName;
procedure CkHtmlToXml_getLastErrorText; external DLLName;
function CkHtmlToXml__lastErrorText; external DLLName;
procedure CkHtmlToXml_getLastErrorXml; external DLLName;
function CkHtmlToXml__lastErrorXml; external DLLName;
function CkHtmlToXml_getLastMethodSuccess; external DLLName;
procedure CkHtmlToXml_putLastMethodSuccess; external DLLName;
function CkHtmlToXml_getNbsp; external DLLName;
procedure CkHtmlToXml_putNbsp; external DLLName;
function CkHtmlToXml_getVerboseLogging; external DLLName;
procedure CkHtmlToXml_putVerboseLogging; external DLLName;
procedure CkHtmlToXml_getVersion; external DLLName;
function CkHtmlToXml__version; external DLLName;
procedure CkHtmlToXml_getXmlCharset; external DLLName;
procedure CkHtmlToXml_putXmlCharset; external DLLName;
function CkHtmlToXml__xmlCharset; external DLLName;
function CkHtmlToXml_ConvertFile; external DLLName;
procedure CkHtmlToXml_DropTagType; external DLLName;
procedure CkHtmlToXml_DropTextFormattingTags; external DLLName;
function CkHtmlToXml_IsUnlocked; external DLLName;
function CkHtmlToXml_ReadFile; external DLLName;
function CkHtmlToXml_ReadFileToString; external DLLName;
function CkHtmlToXml__readFileToString; external DLLName;
function CkHtmlToXml_SaveLastError; external DLLName;
function CkHtmlToXml_SetHtmlBd; external DLLName;
procedure CkHtmlToXml_SetHtmlBytes; external DLLName;
function CkHtmlToXml_SetHtmlFromFile; external DLLName;
function CkHtmlToXml_ToXml; external DLLName;
function CkHtmlToXml__toXml; external DLLName;
function CkHtmlToXml_ToXmlSb; external DLLName;
procedure CkHtmlToXml_UndropTagType; external DLLName;
procedure CkHtmlToXml_UndropTextFormattingTags; external DLLName;
function CkHtmlToXml_UnlockComponent; external DLLName;
function CkHtmlToXml_WriteFile; external DLLName;
function CkHtmlToXml_WriteStringToFile; external DLLName;
function CkHtmlToXml_Xml; external DLLName;
function CkHtmlToXml__xml; external DLLName;



end.
