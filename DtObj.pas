unit DtObj;

interface

type

HCkDtObj = Pointer;
HCkString = Pointer;


function CkDtObj_Create: HCkDtObj; stdcall;
procedure CkDtObj_Dispose(handle: HCkDtObj); stdcall;
function CkDtObj_getDay(objHandle: HCkDtObj): Integer; stdcall;

procedure CkDtObj_putDay(objHandle: HCkDtObj; newPropVal: Integer); stdcall;

procedure CkDtObj_getDebugLogFilePath(objHandle: HCkDtObj; outPropVal: HCkString); stdcall;

procedure CkDtObj_putDebugLogFilePath(objHandle: HCkDtObj; newPropVal: PWideChar); stdcall;

function CkDtObj__debugLogFilePath(objHandle: HCkDtObj): PWideChar; stdcall;

function CkDtObj_getHour(objHandle: HCkDtObj): Integer; stdcall;

procedure CkDtObj_putHour(objHandle: HCkDtObj; newPropVal: Integer); stdcall;

procedure CkDtObj_getLastErrorHtml(objHandle: HCkDtObj; outPropVal: HCkString); stdcall;

function CkDtObj__lastErrorHtml(objHandle: HCkDtObj): PWideChar; stdcall;

procedure CkDtObj_getLastErrorText(objHandle: HCkDtObj; outPropVal: HCkString); stdcall;

function CkDtObj__lastErrorText(objHandle: HCkDtObj): PWideChar; stdcall;

procedure CkDtObj_getLastErrorXml(objHandle: HCkDtObj; outPropVal: HCkString); stdcall;

function CkDtObj__lastErrorXml(objHandle: HCkDtObj): PWideChar; stdcall;

function CkDtObj_getLastMethodSuccess(objHandle: HCkDtObj): wordbool; stdcall;

procedure CkDtObj_putLastMethodSuccess(objHandle: HCkDtObj; newPropVal: wordbool); stdcall;

function CkDtObj_getMinute(objHandle: HCkDtObj): Integer; stdcall;

procedure CkDtObj_putMinute(objHandle: HCkDtObj; newPropVal: Integer); stdcall;

function CkDtObj_getMonth(objHandle: HCkDtObj): Integer; stdcall;

procedure CkDtObj_putMonth(objHandle: HCkDtObj; newPropVal: Integer); stdcall;

function CkDtObj_getSecond(objHandle: HCkDtObj): Integer; stdcall;

procedure CkDtObj_putSecond(objHandle: HCkDtObj; newPropVal: Integer); stdcall;

function CkDtObj_getStructTmMonth(objHandle: HCkDtObj): Integer; stdcall;

procedure CkDtObj_putStructTmMonth(objHandle: HCkDtObj; newPropVal: Integer); stdcall;

function CkDtObj_getStructTmYear(objHandle: HCkDtObj): Integer; stdcall;

procedure CkDtObj_putStructTmYear(objHandle: HCkDtObj; newPropVal: Integer); stdcall;

function CkDtObj_getUtc(objHandle: HCkDtObj): wordbool; stdcall;

procedure CkDtObj_putUtc(objHandle: HCkDtObj; newPropVal: wordbool); stdcall;

function CkDtObj_getVerboseLogging(objHandle: HCkDtObj): wordbool; stdcall;

procedure CkDtObj_putVerboseLogging(objHandle: HCkDtObj; newPropVal: wordbool); stdcall;

procedure CkDtObj_getVersion(objHandle: HCkDtObj; outPropVal: HCkString); stdcall;

function CkDtObj__version(objHandle: HCkDtObj): PWideChar; stdcall;

function CkDtObj_getYear(objHandle: HCkDtObj): Integer; stdcall;

procedure CkDtObj_putYear(objHandle: HCkDtObj; newPropVal: Integer); stdcall;

procedure CkDtObj_DeSerialize(objHandle: HCkDtObj; serializedDtObj: PWideChar); stdcall;

function CkDtObj_SaveLastError(objHandle: HCkDtObj; path: PWideChar): wordbool; stdcall;

function CkDtObj_Serialize(objHandle: HCkDtObj; outStr: HCkString): wordbool; stdcall;

function CkDtObj__serialize(objHandle: HCkDtObj): PWideChar; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkDtObj_Create; external DLLName;
procedure CkDtObj_Dispose; external DLLName;
function CkDtObj_getDay; external DLLName;
procedure CkDtObj_putDay; external DLLName;
procedure CkDtObj_getDebugLogFilePath; external DLLName;
procedure CkDtObj_putDebugLogFilePath; external DLLName;
function CkDtObj__debugLogFilePath; external DLLName;
function CkDtObj_getHour; external DLLName;
procedure CkDtObj_putHour; external DLLName;
procedure CkDtObj_getLastErrorHtml; external DLLName;
function CkDtObj__lastErrorHtml; external DLLName;
procedure CkDtObj_getLastErrorText; external DLLName;
function CkDtObj__lastErrorText; external DLLName;
procedure CkDtObj_getLastErrorXml; external DLLName;
function CkDtObj__lastErrorXml; external DLLName;
function CkDtObj_getLastMethodSuccess; external DLLName;
procedure CkDtObj_putLastMethodSuccess; external DLLName;
function CkDtObj_getMinute; external DLLName;
procedure CkDtObj_putMinute; external DLLName;
function CkDtObj_getMonth; external DLLName;
procedure CkDtObj_putMonth; external DLLName;
function CkDtObj_getSecond; external DLLName;
procedure CkDtObj_putSecond; external DLLName;
function CkDtObj_getStructTmMonth; external DLLName;
procedure CkDtObj_putStructTmMonth; external DLLName;
function CkDtObj_getStructTmYear; external DLLName;
procedure CkDtObj_putStructTmYear; external DLLName;
function CkDtObj_getUtc; external DLLName;
procedure CkDtObj_putUtc; external DLLName;
function CkDtObj_getVerboseLogging; external DLLName;
procedure CkDtObj_putVerboseLogging; external DLLName;
procedure CkDtObj_getVersion; external DLLName;
function CkDtObj__version; external DLLName;
function CkDtObj_getYear; external DLLName;
procedure CkDtObj_putYear; external DLLName;
procedure CkDtObj_DeSerialize; external DLLName;
function CkDtObj_SaveLastError; external DLLName;
function CkDtObj_Serialize; external DLLName;
function CkDtObj__serialize; external DLLName;



end.
