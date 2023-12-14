unit Xmp;

interface

type

HCkXml = Pointer;
HCkByteData = Pointer;
HCkStringArray = Pointer;
HCkXmp = Pointer;
HCkString = Pointer;


function CkXmp_Create: HCkXmp; stdcall;
procedure CkXmp_Dispose(handle: HCkXmp); stdcall;
procedure CkXmp_getDebugLogFilePath(objHandle: HCkXmp; outPropVal: HCkString); stdcall;

procedure CkXmp_putDebugLogFilePath(objHandle: HCkXmp; newPropVal: PWideChar); stdcall;

function CkXmp__debugLogFilePath(objHandle: HCkXmp): PWideChar; stdcall;

procedure CkXmp_getLastErrorHtml(objHandle: HCkXmp; outPropVal: HCkString); stdcall;

function CkXmp__lastErrorHtml(objHandle: HCkXmp): PWideChar; stdcall;

procedure CkXmp_getLastErrorText(objHandle: HCkXmp; outPropVal: HCkString); stdcall;

function CkXmp__lastErrorText(objHandle: HCkXmp): PWideChar; stdcall;

procedure CkXmp_getLastErrorXml(objHandle: HCkXmp; outPropVal: HCkString); stdcall;

function CkXmp__lastErrorXml(objHandle: HCkXmp): PWideChar; stdcall;

function CkXmp_getLastMethodSuccess(objHandle: HCkXmp): wordbool; stdcall;

procedure CkXmp_putLastMethodSuccess(objHandle: HCkXmp; newPropVal: wordbool); stdcall;

function CkXmp_getNumEmbedded(objHandle: HCkXmp): Integer; stdcall;

function CkXmp_getStructInnerDescrip(objHandle: HCkXmp): wordbool; stdcall;

procedure CkXmp_putStructInnerDescrip(objHandle: HCkXmp; newPropVal: wordbool); stdcall;

procedure CkXmp_getUncommonOptions(objHandle: HCkXmp; outPropVal: HCkString); stdcall;

procedure CkXmp_putUncommonOptions(objHandle: HCkXmp; newPropVal: PWideChar); stdcall;

function CkXmp__uncommonOptions(objHandle: HCkXmp): PWideChar; stdcall;

function CkXmp_getVerboseLogging(objHandle: HCkXmp): wordbool; stdcall;

procedure CkXmp_putVerboseLogging(objHandle: HCkXmp; newPropVal: wordbool); stdcall;

procedure CkXmp_getVersion(objHandle: HCkXmp; outPropVal: HCkString); stdcall;

function CkXmp__version(objHandle: HCkXmp): PWideChar; stdcall;

function CkXmp_AddArray(objHandle: HCkXmp; xml: HCkXml; arrType: PWideChar; propName: PWideChar; values: HCkStringArray): wordbool; stdcall;

procedure CkXmp_AddNsMapping(objHandle: HCkXmp; ns: PWideChar; uri: PWideChar); stdcall;

function CkXmp_AddSimpleInt(objHandle: HCkXmp; iXml: HCkXml; propName: PWideChar; propVal: Integer): wordbool; stdcall;

function CkXmp_AddSimpleStr(objHandle: HCkXmp; iXml: HCkXml; propName: PWideChar; propVal: PWideChar): wordbool; stdcall;

function CkXmp_AddStructProp(objHandle: HCkXmp; iChilkatXml: HCkXml; structName: PWideChar; propName: PWideChar; propValue: PWideChar): wordbool; stdcall;

function CkXmp_Append(objHandle: HCkXmp; iXml: HCkXml): wordbool; stdcall;

function CkXmp_GetArray(objHandle: HCkXmp; iXml: HCkXml; propName: PWideChar): HCkStringArray; stdcall;

function CkXmp_GetEmbedded(objHandle: HCkXmp; index: Integer): HCkXml; stdcall;

function CkXmp_GetProperty(objHandle: HCkXmp; iXml: HCkXml; propName: PWideChar): HCkXml; stdcall;

function CkXmp_GetSimpleInt(objHandle: HCkXmp; iXml: HCkXml; propName: PWideChar): Integer; stdcall;

function CkXmp_GetSimpleStr(objHandle: HCkXmp; iXml: HCkXml; propName: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkXmp__getSimpleStr(objHandle: HCkXmp; iXml: HCkXml; propName: PWideChar): PWideChar; stdcall;

function CkXmp_GetStructPropNames(objHandle: HCkXmp; iXml: HCkXml; structName: PWideChar): HCkStringArray; stdcall;

function CkXmp_GetStructValue(objHandle: HCkXmp; iXml: HCkXml; structName: PWideChar; propName: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkXmp__getStructValue(objHandle: HCkXmp; iXml: HCkXml; structName: PWideChar; propName: PWideChar): PWideChar; stdcall;

function CkXmp_LoadAppFile(objHandle: HCkXmp; filename: PWideChar): wordbool; stdcall;

function CkXmp_LoadFromBuffer(objHandle: HCkXmp; fileData: HCkByteData; ext: PWideChar): wordbool; stdcall;

function CkXmp_NewXmp(objHandle: HCkXmp): HCkXml; stdcall;

function CkXmp_RemoveAllEmbedded(objHandle: HCkXmp): wordbool; stdcall;

function CkXmp_RemoveArray(objHandle: HCkXmp; iXml: HCkXml; propName: PWideChar): wordbool; stdcall;

function CkXmp_RemoveEmbedded(objHandle: HCkXmp; index: Integer): wordbool; stdcall;

procedure CkXmp_RemoveNsMapping(objHandle: HCkXmp; ns: PWideChar); stdcall;

function CkXmp_RemoveSimple(objHandle: HCkXmp; iXml: HCkXml; propName: PWideChar): wordbool; stdcall;

function CkXmp_RemoveStruct(objHandle: HCkXmp; iXml: HCkXml; structName: PWideChar): wordbool; stdcall;

function CkXmp_RemoveStructProp(objHandle: HCkXmp; iXml: HCkXml; structName: PWideChar; propName: PWideChar): wordbool; stdcall;

function CkXmp_SaveAppFile(objHandle: HCkXmp; filename: PWideChar): wordbool; stdcall;

function CkXmp_SaveLastError(objHandle: HCkXmp; path: PWideChar): wordbool; stdcall;

function CkXmp_SaveToBuffer(objHandle: HCkXmp; outData: HCkByteData): wordbool; stdcall;

function CkXmp_UnlockComponent(objHandle: HCkXmp; unlockCode: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkXmp_Create; external DLLName;
procedure CkXmp_Dispose; external DLLName;
procedure CkXmp_getDebugLogFilePath; external DLLName;
procedure CkXmp_putDebugLogFilePath; external DLLName;
function CkXmp__debugLogFilePath; external DLLName;
procedure CkXmp_getLastErrorHtml; external DLLName;
function CkXmp__lastErrorHtml; external DLLName;
procedure CkXmp_getLastErrorText; external DLLName;
function CkXmp__lastErrorText; external DLLName;
procedure CkXmp_getLastErrorXml; external DLLName;
function CkXmp__lastErrorXml; external DLLName;
function CkXmp_getLastMethodSuccess; external DLLName;
procedure CkXmp_putLastMethodSuccess; external DLLName;
function CkXmp_getNumEmbedded; external DLLName;
function CkXmp_getStructInnerDescrip; external DLLName;
procedure CkXmp_putStructInnerDescrip; external DLLName;
procedure CkXmp_getUncommonOptions; external DLLName;
procedure CkXmp_putUncommonOptions; external DLLName;
function CkXmp__uncommonOptions; external DLLName;
function CkXmp_getVerboseLogging; external DLLName;
procedure CkXmp_putVerboseLogging; external DLLName;
procedure CkXmp_getVersion; external DLLName;
function CkXmp__version; external DLLName;
function CkXmp_AddArray; external DLLName;
procedure CkXmp_AddNsMapping; external DLLName;
function CkXmp_AddSimpleInt; external DLLName;
function CkXmp_AddSimpleStr; external DLLName;
function CkXmp_AddStructProp; external DLLName;
function CkXmp_Append; external DLLName;
function CkXmp_GetArray; external DLLName;
function CkXmp_GetEmbedded; external DLLName;
function CkXmp_GetProperty; external DLLName;
function CkXmp_GetSimpleInt; external DLLName;
function CkXmp_GetSimpleStr; external DLLName;
function CkXmp__getSimpleStr; external DLLName;
function CkXmp_GetStructPropNames; external DLLName;
function CkXmp_GetStructValue; external DLLName;
function CkXmp__getStructValue; external DLLName;
function CkXmp_LoadAppFile; external DLLName;
function CkXmp_LoadFromBuffer; external DLLName;
function CkXmp_NewXmp; external DLLName;
function CkXmp_RemoveAllEmbedded; external DLLName;
function CkXmp_RemoveArray; external DLLName;
function CkXmp_RemoveEmbedded; external DLLName;
procedure CkXmp_RemoveNsMapping; external DLLName;
function CkXmp_RemoveSimple; external DLLName;
function CkXmp_RemoveStruct; external DLLName;
function CkXmp_RemoveStructProp; external DLLName;
function CkXmp_SaveAppFile; external DLLName;
function CkXmp_SaveLastError; external DLLName;
function CkXmp_SaveToBuffer; external DLLName;
function CkXmp_UnlockComponent; external DLLName;



end.
