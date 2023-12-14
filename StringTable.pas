unit StringTable;

interface

type

HCkStringTable = Pointer;
HCkStringBuilder = Pointer;
HCkString = Pointer;


function CkStringTable_Create: HCkStringTable; stdcall;
procedure CkStringTable_Dispose(handle: HCkStringTable); stdcall;
function CkStringTable_getCount(objHandle: HCkStringTable): Integer; stdcall;

procedure CkStringTable_getDebugLogFilePath(objHandle: HCkStringTable; outPropVal: HCkString); stdcall;

procedure CkStringTable_putDebugLogFilePath(objHandle: HCkStringTable; newPropVal: PWideChar); stdcall;

function CkStringTable__debugLogFilePath(objHandle: HCkStringTable): PWideChar; stdcall;

procedure CkStringTable_getLastErrorHtml(objHandle: HCkStringTable; outPropVal: HCkString); stdcall;

function CkStringTable__lastErrorHtml(objHandle: HCkStringTable): PWideChar; stdcall;

procedure CkStringTable_getLastErrorText(objHandle: HCkStringTable; outPropVal: HCkString); stdcall;

function CkStringTable__lastErrorText(objHandle: HCkStringTable): PWideChar; stdcall;

procedure CkStringTable_getLastErrorXml(objHandle: HCkStringTable; outPropVal: HCkString); stdcall;

function CkStringTable__lastErrorXml(objHandle: HCkStringTable): PWideChar; stdcall;

function CkStringTable_getLastMethodSuccess(objHandle: HCkStringTable): wordbool; stdcall;

procedure CkStringTable_putLastMethodSuccess(objHandle: HCkStringTable; newPropVal: wordbool); stdcall;

function CkStringTable_getVerboseLogging(objHandle: HCkStringTable): wordbool; stdcall;

procedure CkStringTable_putVerboseLogging(objHandle: HCkStringTable; newPropVal: wordbool); stdcall;

procedure CkStringTable_getVersion(objHandle: HCkStringTable; outPropVal: HCkString); stdcall;

function CkStringTable__version(objHandle: HCkStringTable): PWideChar; stdcall;

function CkStringTable_Append(objHandle: HCkStringTable; value: PWideChar): wordbool; stdcall;

function CkStringTable_AppendFromFile(objHandle: HCkStringTable; maxLineLen: Integer; charset: PWideChar; path: PWideChar): wordbool; stdcall;

function CkStringTable_AppendFromSb(objHandle: HCkStringTable; sb: HCkStringBuilder): wordbool; stdcall;

procedure CkStringTable_Clear(objHandle: HCkStringTable); stdcall;

function CkStringTable_FindSubstring(objHandle: HCkStringTable; startIndex: Integer; substr: PWideChar; caseSensitive: wordbool): Integer; stdcall;

function CkStringTable_GetStrings(objHandle: HCkStringTable; startIdx: Integer; count: Integer; crlf: wordbool; outStr: HCkString): wordbool; stdcall;

function CkStringTable__getStrings(objHandle: HCkStringTable; startIdx: Integer; count: Integer; crlf: wordbool): PWideChar; stdcall;

function CkStringTable_IntAt(objHandle: HCkStringTable; index: Integer): Integer; stdcall;

function CkStringTable_SaveLastError(objHandle: HCkStringTable; path: PWideChar): wordbool; stdcall;

function CkStringTable_SaveToFile(objHandle: HCkStringTable; charset: PWideChar; bCrlf: wordbool; path: PWideChar): wordbool; stdcall;

function CkStringTable_Sort(objHandle: HCkStringTable; ascending: wordbool; caseSensitive: wordbool): wordbool; stdcall;

function CkStringTable_SplitAndAppend(objHandle: HCkStringTable; inStr: PWideChar; delimiterChar: PWideChar; exceptDoubleQuoted: wordbool; exceptEscaped: wordbool): wordbool; stdcall;

function CkStringTable_StringAt(objHandle: HCkStringTable; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkStringTable__stringAt(objHandle: HCkStringTable; index: Integer): PWideChar; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkStringTable_Create; external DLLName;
procedure CkStringTable_Dispose; external DLLName;
function CkStringTable_getCount; external DLLName;
procedure CkStringTable_getDebugLogFilePath; external DLLName;
procedure CkStringTable_putDebugLogFilePath; external DLLName;
function CkStringTable__debugLogFilePath; external DLLName;
procedure CkStringTable_getLastErrorHtml; external DLLName;
function CkStringTable__lastErrorHtml; external DLLName;
procedure CkStringTable_getLastErrorText; external DLLName;
function CkStringTable__lastErrorText; external DLLName;
procedure CkStringTable_getLastErrorXml; external DLLName;
function CkStringTable__lastErrorXml; external DLLName;
function CkStringTable_getLastMethodSuccess; external DLLName;
procedure CkStringTable_putLastMethodSuccess; external DLLName;
function CkStringTable_getVerboseLogging; external DLLName;
procedure CkStringTable_putVerboseLogging; external DLLName;
procedure CkStringTable_getVersion; external DLLName;
function CkStringTable__version; external DLLName;
function CkStringTable_Append; external DLLName;
function CkStringTable_AppendFromFile; external DLLName;
function CkStringTable_AppendFromSb; external DLLName;
procedure CkStringTable_Clear; external DLLName;
function CkStringTable_FindSubstring; external DLLName;
function CkStringTable_GetStrings; external DLLName;
function CkStringTable__getStrings; external DLLName;
function CkStringTable_IntAt; external DLLName;
function CkStringTable_SaveLastError; external DLLName;
function CkStringTable_SaveToFile; external DLLName;
function CkStringTable_Sort; external DLLName;
function CkStringTable_SplitAndAppend; external DLLName;
function CkStringTable_StringAt; external DLLName;
function CkStringTable__stringAt; external DLLName;



end.
