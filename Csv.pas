unit Csv;

interface

type

HCkCsv = Pointer;
HCkStringBuilder = Pointer;
HCkString = Pointer;


function CkCsv_Create: HCkCsv; stdcall;
procedure CkCsv_Dispose(handle: HCkCsv); stdcall;
function CkCsv_getAutoTrim(objHandle: HCkCsv): wordbool; stdcall;

procedure CkCsv_putAutoTrim(objHandle: HCkCsv; newPropVal: wordbool); stdcall;

function CkCsv_getCrlf(objHandle: HCkCsv): wordbool; stdcall;

procedure CkCsv_putCrlf(objHandle: HCkCsv; newPropVal: wordbool); stdcall;

procedure CkCsv_getDebugLogFilePath(objHandle: HCkCsv; outPropVal: HCkString); stdcall;

procedure CkCsv_putDebugLogFilePath(objHandle: HCkCsv; newPropVal: PWideChar); stdcall;

function CkCsv__debugLogFilePath(objHandle: HCkCsv): PWideChar; stdcall;

procedure CkCsv_getDelimiter(objHandle: HCkCsv; outPropVal: HCkString); stdcall;

procedure CkCsv_putDelimiter(objHandle: HCkCsv; newPropVal: PWideChar); stdcall;

function CkCsv__delimiter(objHandle: HCkCsv): PWideChar; stdcall;

function CkCsv_getEnableQuotes(objHandle: HCkCsv): wordbool; stdcall;

procedure CkCsv_putEnableQuotes(objHandle: HCkCsv; newPropVal: wordbool); stdcall;

function CkCsv_getEscapeBackslash(objHandle: HCkCsv): wordbool; stdcall;

procedure CkCsv_putEscapeBackslash(objHandle: HCkCsv; newPropVal: wordbool); stdcall;

function CkCsv_getHasColumnNames(objHandle: HCkCsv): wordbool; stdcall;

procedure CkCsv_putHasColumnNames(objHandle: HCkCsv; newPropVal: wordbool); stdcall;

procedure CkCsv_getLastErrorHtml(objHandle: HCkCsv; outPropVal: HCkString); stdcall;

function CkCsv__lastErrorHtml(objHandle: HCkCsv): PWideChar; stdcall;

procedure CkCsv_getLastErrorText(objHandle: HCkCsv; outPropVal: HCkString); stdcall;

function CkCsv__lastErrorText(objHandle: HCkCsv): PWideChar; stdcall;

procedure CkCsv_getLastErrorXml(objHandle: HCkCsv; outPropVal: HCkString); stdcall;

function CkCsv__lastErrorXml(objHandle: HCkCsv): PWideChar; stdcall;

function CkCsv_getLastMethodSuccess(objHandle: HCkCsv): wordbool; stdcall;

procedure CkCsv_putLastMethodSuccess(objHandle: HCkCsv; newPropVal: wordbool); stdcall;

function CkCsv_getNumColumns(objHandle: HCkCsv): Integer; stdcall;

function CkCsv_getNumRows(objHandle: HCkCsv): Integer; stdcall;

procedure CkCsv_getUncommonOptions(objHandle: HCkCsv; outPropVal: HCkString); stdcall;

procedure CkCsv_putUncommonOptions(objHandle: HCkCsv; newPropVal: PWideChar); stdcall;

function CkCsv__uncommonOptions(objHandle: HCkCsv): PWideChar; stdcall;

function CkCsv_getVerboseLogging(objHandle: HCkCsv): wordbool; stdcall;

procedure CkCsv_putVerboseLogging(objHandle: HCkCsv; newPropVal: wordbool); stdcall;

procedure CkCsv_getVersion(objHandle: HCkCsv; outPropVal: HCkString); stdcall;

function CkCsv__version(objHandle: HCkCsv): PWideChar; stdcall;

function CkCsv_DeleteColumn(objHandle: HCkCsv; index: Integer): wordbool; stdcall;

function CkCsv_DeleteColumnByName(objHandle: HCkCsv; columnName: PWideChar): wordbool; stdcall;

function CkCsv_DeleteRow(objHandle: HCkCsv; index: Integer): wordbool; stdcall;

function CkCsv_GetCell(objHandle: HCkCsv; row: Integer; col: Integer; outStr: HCkString): wordbool; stdcall;

function CkCsv__getCell(objHandle: HCkCsv; row: Integer; col: Integer): PWideChar; stdcall;

function CkCsv_GetCellByName(objHandle: HCkCsv; rowIndex: Integer; columnName: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkCsv__getCellByName(objHandle: HCkCsv; rowIndex: Integer; columnName: PWideChar): PWideChar; stdcall;

function CkCsv_GetColumnName(objHandle: HCkCsv; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkCsv__getColumnName(objHandle: HCkCsv; index: Integer): PWideChar; stdcall;

function CkCsv_GetIndex(objHandle: HCkCsv; columnName: PWideChar): Integer; stdcall;

function CkCsv_GetNumCols(objHandle: HCkCsv; row: Integer): Integer; stdcall;

function CkCsv_InsertColumn(objHandle: HCkCsv; index: Integer): wordbool; stdcall;

function CkCsv_LoadFile(objHandle: HCkCsv; path: PWideChar): wordbool; stdcall;

function CkCsv_LoadFile2(objHandle: HCkCsv; filename: PWideChar; charset: PWideChar): wordbool; stdcall;

function CkCsv_LoadFromString(objHandle: HCkCsv; csvData: PWideChar): wordbool; stdcall;

function CkCsv_RowMatches(objHandle: HCkCsv; rowIndex: Integer; matchPattern: PWideChar; caseSensitive: wordbool): wordbool; stdcall;

function CkCsv_SaveFile(objHandle: HCkCsv; path: PWideChar): wordbool; stdcall;

function CkCsv_SaveFile2(objHandle: HCkCsv; filename: PWideChar; charset: PWideChar): wordbool; stdcall;

function CkCsv_SaveLastError(objHandle: HCkCsv; path: PWideChar): wordbool; stdcall;

function CkCsv_SaveToSb(objHandle: HCkCsv; sb: HCkStringBuilder): wordbool; stdcall;

function CkCsv_SaveToString(objHandle: HCkCsv; outStr: HCkString): wordbool; stdcall;

function CkCsv__saveToString(objHandle: HCkCsv): PWideChar; stdcall;

function CkCsv_SetCell(objHandle: HCkCsv; row: Integer; col: Integer; content: PWideChar): wordbool; stdcall;

function CkCsv_SetCellByName(objHandle: HCkCsv; rowIndex: Integer; columnName: PWideChar; contentStr: PWideChar): wordbool; stdcall;

function CkCsv_SetColumnName(objHandle: HCkCsv; index: Integer; columnName: PWideChar): wordbool; stdcall;

function CkCsv_SortByColumn(objHandle: HCkCsv; columnName: PWideChar; ascending: wordbool; caseSensitive: wordbool): wordbool; stdcall;

function CkCsv_SortByColumnIndex(objHandle: HCkCsv; index: Integer; ascending: wordbool; caseSensitive: wordbool): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkCsv_Create; external DLLName;
procedure CkCsv_Dispose; external DLLName;
function CkCsv_getAutoTrim; external DLLName;
procedure CkCsv_putAutoTrim; external DLLName;
function CkCsv_getCrlf; external DLLName;
procedure CkCsv_putCrlf; external DLLName;
procedure CkCsv_getDebugLogFilePath; external DLLName;
procedure CkCsv_putDebugLogFilePath; external DLLName;
function CkCsv__debugLogFilePath; external DLLName;
procedure CkCsv_getDelimiter; external DLLName;
procedure CkCsv_putDelimiter; external DLLName;
function CkCsv__delimiter; external DLLName;
function CkCsv_getEnableQuotes; external DLLName;
procedure CkCsv_putEnableQuotes; external DLLName;
function CkCsv_getEscapeBackslash; external DLLName;
procedure CkCsv_putEscapeBackslash; external DLLName;
function CkCsv_getHasColumnNames; external DLLName;
procedure CkCsv_putHasColumnNames; external DLLName;
procedure CkCsv_getLastErrorHtml; external DLLName;
function CkCsv__lastErrorHtml; external DLLName;
procedure CkCsv_getLastErrorText; external DLLName;
function CkCsv__lastErrorText; external DLLName;
procedure CkCsv_getLastErrorXml; external DLLName;
function CkCsv__lastErrorXml; external DLLName;
function CkCsv_getLastMethodSuccess; external DLLName;
procedure CkCsv_putLastMethodSuccess; external DLLName;
function CkCsv_getNumColumns; external DLLName;
function CkCsv_getNumRows; external DLLName;
procedure CkCsv_getUncommonOptions; external DLLName;
procedure CkCsv_putUncommonOptions; external DLLName;
function CkCsv__uncommonOptions; external DLLName;
function CkCsv_getVerboseLogging; external DLLName;
procedure CkCsv_putVerboseLogging; external DLLName;
procedure CkCsv_getVersion; external DLLName;
function CkCsv__version; external DLLName;
function CkCsv_DeleteColumn; external DLLName;
function CkCsv_DeleteColumnByName; external DLLName;
function CkCsv_DeleteRow; external DLLName;
function CkCsv_GetCell; external DLLName;
function CkCsv__getCell; external DLLName;
function CkCsv_GetCellByName; external DLLName;
function CkCsv__getCellByName; external DLLName;
function CkCsv_GetColumnName; external DLLName;
function CkCsv__getColumnName; external DLLName;
function CkCsv_GetIndex; external DLLName;
function CkCsv_GetNumCols; external DLLName;
function CkCsv_InsertColumn; external DLLName;
function CkCsv_LoadFile; external DLLName;
function CkCsv_LoadFile2; external DLLName;
function CkCsv_LoadFromString; external DLLName;
function CkCsv_RowMatches; external DLLName;
function CkCsv_SaveFile; external DLLName;
function CkCsv_SaveFile2; external DLLName;
function CkCsv_SaveLastError; external DLLName;
function CkCsv_SaveToSb; external DLLName;
function CkCsv_SaveToString; external DLLName;
function CkCsv__saveToString; external DLLName;
function CkCsv_SetCell; external DLLName;
function CkCsv_SetCellByName; external DLLName;
function CkCsv_SetColumnName; external DLLName;
function CkCsv_SortByColumn; external DLLName;
function CkCsv_SortByColumnIndex; external DLLName;



end.
