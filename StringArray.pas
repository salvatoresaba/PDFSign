unit StringArray;

interface

type

HCkTask = Pointer;
HCkString = Pointer;
HCkStringArray = Pointer;


function CkStringArray_Create: HCkStringArray; stdcall;
procedure CkStringArray_Dispose(handle: HCkStringArray); stdcall;
function CkStringArray_getCount(objHandle: HCkStringArray): Integer; stdcall;

function CkStringArray_getCrlf(objHandle: HCkStringArray): wordbool; stdcall;

procedure CkStringArray_putCrlf(objHandle: HCkStringArray; newPropVal: wordbool); stdcall;

procedure CkStringArray_getDebugLogFilePath(objHandle: HCkStringArray; outPropVal: HCkString); stdcall;

procedure CkStringArray_putDebugLogFilePath(objHandle: HCkStringArray; newPropVal: PWideChar); stdcall;

function CkStringArray__debugLogFilePath(objHandle: HCkStringArray): PWideChar; stdcall;

procedure CkStringArray_getLastErrorHtml(objHandle: HCkStringArray; outPropVal: HCkString); stdcall;

function CkStringArray__lastErrorHtml(objHandle: HCkStringArray): PWideChar; stdcall;

procedure CkStringArray_getLastErrorText(objHandle: HCkStringArray; outPropVal: HCkString); stdcall;

function CkStringArray__lastErrorText(objHandle: HCkStringArray): PWideChar; stdcall;

procedure CkStringArray_getLastErrorXml(objHandle: HCkStringArray; outPropVal: HCkString); stdcall;

function CkStringArray__lastErrorXml(objHandle: HCkStringArray): PWideChar; stdcall;

function CkStringArray_getLastMethodSuccess(objHandle: HCkStringArray): wordbool; stdcall;

procedure CkStringArray_putLastMethodSuccess(objHandle: HCkStringArray; newPropVal: wordbool); stdcall;

function CkStringArray_getLength(objHandle: HCkStringArray): Integer; stdcall;

function CkStringArray_getTrim(objHandle: HCkStringArray): wordbool; stdcall;

procedure CkStringArray_putTrim(objHandle: HCkStringArray; newPropVal: wordbool); stdcall;

function CkStringArray_getUnique(objHandle: HCkStringArray): wordbool; stdcall;

procedure CkStringArray_putUnique(objHandle: HCkStringArray; newPropVal: wordbool); stdcall;

function CkStringArray_getVerboseLogging(objHandle: HCkStringArray): wordbool; stdcall;

procedure CkStringArray_putVerboseLogging(objHandle: HCkStringArray; newPropVal: wordbool); stdcall;

procedure CkStringArray_getVersion(objHandle: HCkStringArray; outPropVal: HCkString); stdcall;

function CkStringArray__version(objHandle: HCkStringArray): PWideChar; stdcall;

function CkStringArray_Append(objHandle: HCkStringArray; str: PWideChar): wordbool; stdcall;

function CkStringArray_AppendSerialized(objHandle: HCkStringArray; encodedStr: PWideChar): wordbool; stdcall;

procedure CkStringArray_Clear(objHandle: HCkStringArray); stdcall;

function CkStringArray_Contains(objHandle: HCkStringArray; str: PWideChar): wordbool; stdcall;

function CkStringArray_Find(objHandle: HCkStringArray; findStr: PWideChar; startIndex: Integer): Integer; stdcall;

function CkStringArray_FindFirstMatch(objHandle: HCkStringArray; matchPattern: PWideChar; startIndex: Integer): Integer; stdcall;

function CkStringArray_GetString(objHandle: HCkStringArray; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkStringArray__getString(objHandle: HCkStringArray; index: Integer): PWideChar; stdcall;

function CkStringArray_GetStringLen(objHandle: HCkStringArray; index: Integer): Integer; stdcall;

procedure CkStringArray_InsertAt(objHandle: HCkStringArray; index: Integer; str: PWideChar); stdcall;

function CkStringArray_LastString(objHandle: HCkStringArray; outStr: HCkString): wordbool; stdcall;

function CkStringArray__lastString(objHandle: HCkStringArray): PWideChar; stdcall;

function CkStringArray_LoadFromFile(objHandle: HCkStringArray; path: PWideChar): wordbool; stdcall;

function CkStringArray_LoadFromFile2(objHandle: HCkStringArray; path: PWideChar; charset: PWideChar): wordbool; stdcall;

procedure CkStringArray_LoadFromText(objHandle: HCkStringArray; str: PWideChar); stdcall;

function CkStringArray_LoadTaskResult(objHandle: HCkStringArray; task: HCkTask): wordbool; stdcall;

function CkStringArray_Pop(objHandle: HCkStringArray; outStr: HCkString): wordbool; stdcall;

function CkStringArray__pop(objHandle: HCkStringArray): PWideChar; stdcall;

procedure CkStringArray_Prepend(objHandle: HCkStringArray; str: PWideChar); stdcall;

procedure CkStringArray_Remove(objHandle: HCkStringArray; str: PWideChar); stdcall;

function CkStringArray_RemoveAt(objHandle: HCkStringArray; index: Integer): wordbool; stdcall;

procedure CkStringArray_ReplaceAt(objHandle: HCkStringArray; index: Integer; str: PWideChar); stdcall;

function CkStringArray_SaveLastError(objHandle: HCkStringArray; path: PWideChar): wordbool; stdcall;

function CkStringArray_SaveNthToFile(objHandle: HCkStringArray; index: Integer; saveToPath: PWideChar): wordbool; stdcall;

function CkStringArray_SaveToFile(objHandle: HCkStringArray; path: PWideChar): wordbool; stdcall;

function CkStringArray_SaveToFile2(objHandle: HCkStringArray; saveToPath: PWideChar; charset: PWideChar): wordbool; stdcall;

function CkStringArray_SaveToText(objHandle: HCkStringArray; outStr: HCkString): wordbool; stdcall;

function CkStringArray__saveToText(objHandle: HCkStringArray): PWideChar; stdcall;

function CkStringArray_Serialize(objHandle: HCkStringArray; outStr: HCkString): wordbool; stdcall;

function CkStringArray__serialize(objHandle: HCkStringArray): PWideChar; stdcall;

procedure CkStringArray_Sort(objHandle: HCkStringArray; ascending: wordbool); stdcall;

procedure CkStringArray_SplitAndAppend(objHandle: HCkStringArray; str: PWideChar; boundary: PWideChar); stdcall;

function CkStringArray_StrAt(objHandle: HCkStringArray; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkStringArray__strAt(objHandle: HCkStringArray; index: Integer): PWideChar; stdcall;

procedure CkStringArray_Subtract(objHandle: HCkStringArray; stringArrayObj: HCkStringArray); stdcall;

procedure CkStringArray_Union(objHandle: HCkStringArray; stringArrayObj: HCkStringArray); stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkStringArray_Create; external DLLName;
procedure CkStringArray_Dispose; external DLLName;
function CkStringArray_getCount; external DLLName;
function CkStringArray_getCrlf; external DLLName;
procedure CkStringArray_putCrlf; external DLLName;
procedure CkStringArray_getDebugLogFilePath; external DLLName;
procedure CkStringArray_putDebugLogFilePath; external DLLName;
function CkStringArray__debugLogFilePath; external DLLName;
procedure CkStringArray_getLastErrorHtml; external DLLName;
function CkStringArray__lastErrorHtml; external DLLName;
procedure CkStringArray_getLastErrorText; external DLLName;
function CkStringArray__lastErrorText; external DLLName;
procedure CkStringArray_getLastErrorXml; external DLLName;
function CkStringArray__lastErrorXml; external DLLName;
function CkStringArray_getLastMethodSuccess; external DLLName;
procedure CkStringArray_putLastMethodSuccess; external DLLName;
function CkStringArray_getLength; external DLLName;
function CkStringArray_getTrim; external DLLName;
procedure CkStringArray_putTrim; external DLLName;
function CkStringArray_getUnique; external DLLName;
procedure CkStringArray_putUnique; external DLLName;
function CkStringArray_getVerboseLogging; external DLLName;
procedure CkStringArray_putVerboseLogging; external DLLName;
procedure CkStringArray_getVersion; external DLLName;
function CkStringArray__version; external DLLName;
function CkStringArray_Append; external DLLName;
function CkStringArray_AppendSerialized; external DLLName;
procedure CkStringArray_Clear; external DLLName;
function CkStringArray_Contains; external DLLName;
function CkStringArray_Find; external DLLName;
function CkStringArray_FindFirstMatch; external DLLName;
function CkStringArray_GetString; external DLLName;
function CkStringArray__getString; external DLLName;
function CkStringArray_GetStringLen; external DLLName;
procedure CkStringArray_InsertAt; external DLLName;
function CkStringArray_LastString; external DLLName;
function CkStringArray__lastString; external DLLName;
function CkStringArray_LoadFromFile; external DLLName;
function CkStringArray_LoadFromFile2; external DLLName;
procedure CkStringArray_LoadFromText; external DLLName;
function CkStringArray_LoadTaskResult; external DLLName;
function CkStringArray_Pop; external DLLName;
function CkStringArray__pop; external DLLName;
procedure CkStringArray_Prepend; external DLLName;
procedure CkStringArray_Remove; external DLLName;
function CkStringArray_RemoveAt; external DLLName;
procedure CkStringArray_ReplaceAt; external DLLName;
function CkStringArray_SaveLastError; external DLLName;
function CkStringArray_SaveNthToFile; external DLLName;
function CkStringArray_SaveToFile; external DLLName;
function CkStringArray_SaveToFile2; external DLLName;
function CkStringArray_SaveToText; external DLLName;
function CkStringArray__saveToText; external DLLName;
function CkStringArray_Serialize; external DLLName;
function CkStringArray__serialize; external DLLName;
procedure CkStringArray_Sort; external DLLName;
procedure CkStringArray_SplitAndAppend; external DLLName;
function CkStringArray_StrAt; external DLLName;
function CkStringArray__strAt; external DLLName;
procedure CkStringArray_Subtract; external DLLName;
procedure CkStringArray_Union; external DLLName;



end.
