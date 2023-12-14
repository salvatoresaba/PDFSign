unit JsonArray;

interface

type

HCkJsonObject = Pointer;
HCkDateTime = Pointer;
HCkJsonArray = Pointer;
HCkString = Pointer;
HCkStringBuilder = Pointer;
HCkDtObj = Pointer;


function CkJsonArray_Create: HCkJsonArray; stdcall;
procedure CkJsonArray_Dispose(handle: HCkJsonArray); stdcall;
procedure CkJsonArray_getDebugLogFilePath(objHandle: HCkJsonArray; outPropVal: HCkString); stdcall;

procedure CkJsonArray_putDebugLogFilePath(objHandle: HCkJsonArray; newPropVal: PWideChar); stdcall;

function CkJsonArray__debugLogFilePath(objHandle: HCkJsonArray): PWideChar; stdcall;

function CkJsonArray_getEmitCompact(objHandle: HCkJsonArray): wordbool; stdcall;

procedure CkJsonArray_putEmitCompact(objHandle: HCkJsonArray; newPropVal: wordbool); stdcall;

function CkJsonArray_getEmitCrlf(objHandle: HCkJsonArray): wordbool; stdcall;

procedure CkJsonArray_putEmitCrlf(objHandle: HCkJsonArray; newPropVal: wordbool); stdcall;

procedure CkJsonArray_getLastErrorHtml(objHandle: HCkJsonArray; outPropVal: HCkString); stdcall;

function CkJsonArray__lastErrorHtml(objHandle: HCkJsonArray): PWideChar; stdcall;

procedure CkJsonArray_getLastErrorText(objHandle: HCkJsonArray; outPropVal: HCkString); stdcall;

function CkJsonArray__lastErrorText(objHandle: HCkJsonArray): PWideChar; stdcall;

procedure CkJsonArray_getLastErrorXml(objHandle: HCkJsonArray; outPropVal: HCkString); stdcall;

function CkJsonArray__lastErrorXml(objHandle: HCkJsonArray): PWideChar; stdcall;

function CkJsonArray_getLastMethodSuccess(objHandle: HCkJsonArray): wordbool; stdcall;

procedure CkJsonArray_putLastMethodSuccess(objHandle: HCkJsonArray; newPropVal: wordbool); stdcall;

function CkJsonArray_getSize(objHandle: HCkJsonArray): Integer; stdcall;

function CkJsonArray_getVerboseLogging(objHandle: HCkJsonArray): wordbool; stdcall;

procedure CkJsonArray_putVerboseLogging(objHandle: HCkJsonArray; newPropVal: wordbool); stdcall;

procedure CkJsonArray_getVersion(objHandle: HCkJsonArray; outPropVal: HCkString); stdcall;

function CkJsonArray__version(objHandle: HCkJsonArray): PWideChar; stdcall;

function CkJsonArray_AddArrayAt(objHandle: HCkJsonArray; index: Integer): wordbool; stdcall;

function CkJsonArray_AddBoolAt(objHandle: HCkJsonArray; index: Integer; value: wordbool): wordbool; stdcall;

function CkJsonArray_AddIntAt(objHandle: HCkJsonArray; index: Integer; value: Integer): wordbool; stdcall;

function CkJsonArray_AddNullAt(objHandle: HCkJsonArray; index: Integer): wordbool; stdcall;

function CkJsonArray_AddNumberAt(objHandle: HCkJsonArray; index: Integer; numericStr: PWideChar): wordbool; stdcall;

function CkJsonArray_AddObjectAt(objHandle: HCkJsonArray; index: Integer): wordbool; stdcall;

function CkJsonArray_AddObjectCopyAt(objHandle: HCkJsonArray; index: Integer; jsonObj: HCkJsonObject): wordbool; stdcall;

function CkJsonArray_AddStringAt(objHandle: HCkJsonArray; index: Integer; value: PWideChar): wordbool; stdcall;

function CkJsonArray_AddUIntAt(objHandle: HCkJsonArray; index: Integer; value: LongWord): wordbool; stdcall;

function CkJsonArray_AppendArrayItems(objHandle: HCkJsonArray; jarr: HCkJsonArray): wordbool; stdcall;

function CkJsonArray_ArrayAt(objHandle: HCkJsonArray; index: Integer): HCkJsonArray; stdcall;

function CkJsonArray_BoolAt(objHandle: HCkJsonArray; index: Integer): wordbool; stdcall;

procedure CkJsonArray_Clear(objHandle: HCkJsonArray); stdcall;

function CkJsonArray_DateAt(objHandle: HCkJsonArray; index: Integer; dateTime: HCkDateTime): wordbool; stdcall;

function CkJsonArray_DeleteAt(objHandle: HCkJsonArray; index: Integer): wordbool; stdcall;

function CkJsonArray_DtAt(objHandle: HCkJsonArray; index: Integer; bLocal: wordbool; dt: HCkDtObj): wordbool; stdcall;

function CkJsonArray_Emit(objHandle: HCkJsonArray; outStr: HCkString): wordbool; stdcall;

function CkJsonArray__emit(objHandle: HCkJsonArray): PWideChar; stdcall;

function CkJsonArray_EmitSb(objHandle: HCkJsonArray; sb: HCkStringBuilder): wordbool; stdcall;

function CkJsonArray_FindObject(objHandle: HCkJsonArray; name: PWideChar; value: PWideChar; caseSensitive: wordbool): Integer; stdcall;

function CkJsonArray_FindString(objHandle: HCkJsonArray; value: PWideChar; caseSensitive: wordbool): Integer; stdcall;

function CkJsonArray_IntAt(objHandle: HCkJsonArray; index: Integer): Integer; stdcall;

function CkJsonArray_IsNullAt(objHandle: HCkJsonArray; index: Integer): wordbool; stdcall;

function CkJsonArray_Load(objHandle: HCkJsonArray; jsonArray: PWideChar): wordbool; stdcall;

function CkJsonArray_LoadSb(objHandle: HCkJsonArray; sb: HCkStringBuilder): wordbool; stdcall;

function CkJsonArray_ObjectAt(objHandle: HCkJsonArray; index: Integer): HCkJsonObject; stdcall;

function CkJsonArray_SaveLastError(objHandle: HCkJsonArray; path: PWideChar): wordbool; stdcall;

function CkJsonArray_SetBoolAt(objHandle: HCkJsonArray; index: Integer; value: wordbool): wordbool; stdcall;

function CkJsonArray_SetIntAt(objHandle: HCkJsonArray; index: Integer; value: Integer): wordbool; stdcall;

function CkJsonArray_SetNullAt(objHandle: HCkJsonArray; index: Integer): wordbool; stdcall;

function CkJsonArray_SetNumberAt(objHandle: HCkJsonArray; index: Integer; value: PWideChar): wordbool; stdcall;

function CkJsonArray_SetStringAt(objHandle: HCkJsonArray; index: Integer; value: PWideChar): wordbool; stdcall;

function CkJsonArray_SetUIntAt(objHandle: HCkJsonArray; index: Integer; value: LongWord): wordbool; stdcall;

function CkJsonArray_StringAt(objHandle: HCkJsonArray; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkJsonArray__stringAt(objHandle: HCkJsonArray; index: Integer): PWideChar; stdcall;

function CkJsonArray_Swap(objHandle: HCkJsonArray; index1: Integer; index2: Integer): wordbool; stdcall;

function CkJsonArray_TypeAt(objHandle: HCkJsonArray; index: Integer): Integer; stdcall;

function CkJsonArray_UIntAt(objHandle: HCkJsonArray; index: Integer): LongWord; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkJsonArray_Create; external DLLName;
procedure CkJsonArray_Dispose; external DLLName;
procedure CkJsonArray_getDebugLogFilePath; external DLLName;
procedure CkJsonArray_putDebugLogFilePath; external DLLName;
function CkJsonArray__debugLogFilePath; external DLLName;
function CkJsonArray_getEmitCompact; external DLLName;
procedure CkJsonArray_putEmitCompact; external DLLName;
function CkJsonArray_getEmitCrlf; external DLLName;
procedure CkJsonArray_putEmitCrlf; external DLLName;
procedure CkJsonArray_getLastErrorHtml; external DLLName;
function CkJsonArray__lastErrorHtml; external DLLName;
procedure CkJsonArray_getLastErrorText; external DLLName;
function CkJsonArray__lastErrorText; external DLLName;
procedure CkJsonArray_getLastErrorXml; external DLLName;
function CkJsonArray__lastErrorXml; external DLLName;
function CkJsonArray_getLastMethodSuccess; external DLLName;
procedure CkJsonArray_putLastMethodSuccess; external DLLName;
function CkJsonArray_getSize; external DLLName;
function CkJsonArray_getVerboseLogging; external DLLName;
procedure CkJsonArray_putVerboseLogging; external DLLName;
procedure CkJsonArray_getVersion; external DLLName;
function CkJsonArray__version; external DLLName;
function CkJsonArray_AddArrayAt; external DLLName;
function CkJsonArray_AddBoolAt; external DLLName;
function CkJsonArray_AddIntAt; external DLLName;
function CkJsonArray_AddNullAt; external DLLName;
function CkJsonArray_AddNumberAt; external DLLName;
function CkJsonArray_AddObjectAt; external DLLName;
function CkJsonArray_AddObjectCopyAt; external DLLName;
function CkJsonArray_AddStringAt; external DLLName;
function CkJsonArray_AddUIntAt; external DLLName;
function CkJsonArray_AppendArrayItems; external DLLName;
function CkJsonArray_ArrayAt; external DLLName;
function CkJsonArray_BoolAt; external DLLName;
procedure CkJsonArray_Clear; external DLLName;
function CkJsonArray_DateAt; external DLLName;
function CkJsonArray_DeleteAt; external DLLName;
function CkJsonArray_DtAt; external DLLName;
function CkJsonArray_Emit; external DLLName;
function CkJsonArray__emit; external DLLName;
function CkJsonArray_EmitSb; external DLLName;
function CkJsonArray_FindObject; external DLLName;
function CkJsonArray_FindString; external DLLName;
function CkJsonArray_IntAt; external DLLName;
function CkJsonArray_IsNullAt; external DLLName;
function CkJsonArray_Load; external DLLName;
function CkJsonArray_LoadSb; external DLLName;
function CkJsonArray_ObjectAt; external DLLName;
function CkJsonArray_SaveLastError; external DLLName;
function CkJsonArray_SetBoolAt; external DLLName;
function CkJsonArray_SetIntAt; external DLLName;
function CkJsonArray_SetNullAt; external DLLName;
function CkJsonArray_SetNumberAt; external DLLName;
function CkJsonArray_SetStringAt; external DLLName;
function CkJsonArray_SetUIntAt; external DLLName;
function CkJsonArray_StringAt; external DLLName;
function CkJsonArray__stringAt; external DLLName;
function CkJsonArray_Swap; external DLLName;
function CkJsonArray_TypeAt; external DLLName;
function CkJsonArray_UIntAt; external DLLName;



end.
