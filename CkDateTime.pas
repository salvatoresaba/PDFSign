unit CkDateTime;

interface

type

HCkTask = Pointer;
HCkDtObj = Pointer;
HCkStringBuilder = Pointer;
HCkDateTime = Pointer;
HCkString = Pointer;


function CkDateTime_Create: HCkDateTime; stdcall;
procedure CkDateTime_Dispose(handle: HCkDateTime); stdcall;
procedure CkDateTime_getDebugLogFilePath(objHandle: HCkDateTime; outPropVal: HCkString); stdcall;

procedure CkDateTime_putDebugLogFilePath(objHandle: HCkDateTime; newPropVal: PWideChar); stdcall;

function CkDateTime__debugLogFilePath(objHandle: HCkDateTime): PWideChar; stdcall;

function CkDateTime_getIsDst(objHandle: HCkDateTime): Integer; stdcall;

procedure CkDateTime_getLastErrorHtml(objHandle: HCkDateTime; outPropVal: HCkString); stdcall;

function CkDateTime__lastErrorHtml(objHandle: HCkDateTime): PWideChar; stdcall;

procedure CkDateTime_getLastErrorText(objHandle: HCkDateTime; outPropVal: HCkString); stdcall;

function CkDateTime__lastErrorText(objHandle: HCkDateTime): PWideChar; stdcall;

procedure CkDateTime_getLastErrorXml(objHandle: HCkDateTime; outPropVal: HCkString); stdcall;

function CkDateTime__lastErrorXml(objHandle: HCkDateTime): PWideChar; stdcall;

function CkDateTime_getLastMethodSuccess(objHandle: HCkDateTime): wordbool; stdcall;

procedure CkDateTime_putLastMethodSuccess(objHandle: HCkDateTime; newPropVal: wordbool); stdcall;

function CkDateTime_getUtcOffset(objHandle: HCkDateTime): Integer; stdcall;

function CkDateTime_getVerboseLogging(objHandle: HCkDateTime): wordbool; stdcall;

procedure CkDateTime_putVerboseLogging(objHandle: HCkDateTime; newPropVal: wordbool); stdcall;

procedure CkDateTime_getVersion(objHandle: HCkDateTime; outPropVal: HCkString); stdcall;

function CkDateTime__version(objHandle: HCkDateTime): PWideChar; stdcall;

function CkDateTime_AddDays(objHandle: HCkDateTime; numDays: Integer): wordbool; stdcall;

function CkDateTime_AddSeconds(objHandle: HCkDateTime; numSeconds: Integer): wordbool; stdcall;

procedure CkDateTime_DeSerialize(objHandle: HCkDateTime; serializedDateTime: PWideChar); stdcall;

function CkDateTime_DiffSeconds(objHandle: HCkDateTime; dateTimeArg: HCkDateTime): Integer; stdcall;

function CkDateTime_ExpiresWithin(objHandle: HCkDateTime; n: Integer; units: PWideChar): wordbool; stdcall;

function CkDateTime_GetAsDateTimeTicks(objHandle: HCkDateTime; bLocal: wordbool): Int64; stdcall;

function CkDateTime_GetAsDosDate(objHandle: HCkDateTime; bLocal: wordbool): LongWord; stdcall;

function CkDateTime_GetAsIso8601(objHandle: HCkDateTime; formatStr: PWideChar; bLocal: wordbool; outStr: HCkString): wordbool; stdcall;

function CkDateTime__getAsIso8601(objHandle: HCkDateTime; formatStr: PWideChar; bLocal: wordbool): PWideChar; stdcall;

function CkDateTime_GetAsOleDate(objHandle: HCkDateTime; bLocal: wordbool): Double; stdcall;

function CkDateTime_GetAsRfc822(objHandle: HCkDateTime; bLocal: wordbool; outStr: HCkString): wordbool; stdcall;

function CkDateTime__getAsRfc822(objHandle: HCkDateTime; bLocal: wordbool): PWideChar; stdcall;

function CkDateTime_GetAsTimestamp(objHandle: HCkDateTime; bLocal: wordbool; outStr: HCkString): wordbool; stdcall;

function CkDateTime__getAsTimestamp(objHandle: HCkDateTime; bLocal: wordbool): PWideChar; stdcall;

function CkDateTime_GetAsUnixTime(objHandle: HCkDateTime; bLocal: wordbool): LongWord; stdcall;

function CkDateTime_GetAsUnixTime64(objHandle: HCkDateTime; bLocal: wordbool): Int64; stdcall;

function CkDateTime_GetAsUnixTimeDbl(objHandle: HCkDateTime; bLocal: wordbool): Double; stdcall;

function CkDateTime_GetAsUnixTimeStr(objHandle: HCkDateTime; bLocal: wordbool; outStr: HCkString): wordbool; stdcall;

function CkDateTime__getAsUnixTimeStr(objHandle: HCkDateTime; bLocal: wordbool): PWideChar; stdcall;

function CkDateTime_GetDosDateHigh(objHandle: HCkDateTime; bLocal: wordbool): Word; stdcall;

function CkDateTime_GetDosDateLow(objHandle: HCkDateTime; bLocal: wordbool): Word; stdcall;

function CkDateTime_GetDtObj(objHandle: HCkDateTime; bLocal: wordbool): HCkDtObj; stdcall;

function CkDateTime_LoadTaskResult(objHandle: HCkDateTime; task: HCkTask): wordbool; stdcall;

function CkDateTime_OlderThan(objHandle: HCkDateTime; n: Integer; units: PWideChar): wordbool; stdcall;

function CkDateTime_SaveLastError(objHandle: HCkDateTime; path: PWideChar): wordbool; stdcall;

function CkDateTime_Serialize(objHandle: HCkDateTime; outStr: HCkString): wordbool; stdcall;

function CkDateTime__serialize(objHandle: HCkDateTime): PWideChar; stdcall;

function CkDateTime_SetFromCurrentSystemTime(objHandle: HCkDateTime): wordbool; stdcall;

function CkDateTime_SetFromDateTimeTicks(objHandle: HCkDateTime; bLocal: wordbool; ticks: Int64): wordbool; stdcall;

function CkDateTime_SetFromDosDate(objHandle: HCkDateTime; bLocal: wordbool; t: LongWord): wordbool; stdcall;

function CkDateTime_SetFromDosDate2(objHandle: HCkDateTime; bLocal: wordbool; datePart: Word; timePart: Word): wordbool; stdcall;

function CkDateTime_SetFromDtObj(objHandle: HCkDateTime; dt: HCkDtObj): wordbool; stdcall;

function CkDateTime_SetFromNtpServer(objHandle: HCkDateTime; jsonStr: PWideChar): wordbool; stdcall;

function CkDateTime_SetFromNtpTime(objHandle: HCkDateTime; ntpSeconds: Integer): wordbool; stdcall;

function CkDateTime_SetFromOleDate(objHandle: HCkDateTime; bLocal: wordbool; dt: Double): wordbool; stdcall;

function CkDateTime_SetFromRfc822(objHandle: HCkDateTime; rfc822Str: PWideChar): wordbool; stdcall;

function CkDateTime_SetFromTimestamp(objHandle: HCkDateTime; timestamp: PWideChar): wordbool; stdcall;

function CkDateTime_SetFromUlid(objHandle: HCkDateTime; bLocal: wordbool; ulid: PWideChar): wordbool; stdcall;

function CkDateTime_SetFromUnixTime(objHandle: HCkDateTime; bLocal: wordbool; t: LongWord): wordbool; stdcall;

function CkDateTime_SetFromUnixTime64(objHandle: HCkDateTime; bLocal: wordbool; t: Int64): wordbool; stdcall;

function CkDateTime_SetFromUnixTimeDbl(objHandle: HCkDateTime; bLocal: wordbool; d: Double): wordbool; stdcall;

function CkDateTime_UlidGenerate(objHandle: HCkDateTime; bLocal: wordbool; outStr: HCkString): wordbool; stdcall;

function CkDateTime__ulidGenerate(objHandle: HCkDateTime; bLocal: wordbool): PWideChar; stdcall;

function CkDateTime_UlidIncrement(objHandle: HCkDateTime; ulid: HCkStringBuilder): wordbool; stdcall;

function CkDateTime_UlidValidate(objHandle: HCkDateTime; ulid: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkDateTime_Create; external DLLName;
procedure CkDateTime_Dispose; external DLLName;
procedure CkDateTime_getDebugLogFilePath; external DLLName;
procedure CkDateTime_putDebugLogFilePath; external DLLName;
function CkDateTime__debugLogFilePath; external DLLName;
function CkDateTime_getIsDst; external DLLName;
procedure CkDateTime_getLastErrorHtml; external DLLName;
function CkDateTime__lastErrorHtml; external DLLName;
procedure CkDateTime_getLastErrorText; external DLLName;
function CkDateTime__lastErrorText; external DLLName;
procedure CkDateTime_getLastErrorXml; external DLLName;
function CkDateTime__lastErrorXml; external DLLName;
function CkDateTime_getLastMethodSuccess; external DLLName;
procedure CkDateTime_putLastMethodSuccess; external DLLName;
function CkDateTime_getUtcOffset; external DLLName;
function CkDateTime_getVerboseLogging; external DLLName;
procedure CkDateTime_putVerboseLogging; external DLLName;
procedure CkDateTime_getVersion; external DLLName;
function CkDateTime__version; external DLLName;
function CkDateTime_AddDays; external DLLName;
function CkDateTime_AddSeconds; external DLLName;
procedure CkDateTime_DeSerialize; external DLLName;
function CkDateTime_DiffSeconds; external DLLName;
function CkDateTime_ExpiresWithin; external DLLName;
function CkDateTime_GetAsDateTimeTicks; external DLLName;
function CkDateTime_GetAsDosDate; external DLLName;
function CkDateTime_GetAsIso8601; external DLLName;
function CkDateTime__getAsIso8601; external DLLName;
function CkDateTime_GetAsOleDate; external DLLName;
function CkDateTime_GetAsRfc822; external DLLName;
function CkDateTime__getAsRfc822; external DLLName;
function CkDateTime_GetAsTimestamp; external DLLName;
function CkDateTime__getAsTimestamp; external DLLName;
function CkDateTime_GetAsUnixTime; external DLLName;
function CkDateTime_GetAsUnixTime64; external DLLName;
function CkDateTime_GetAsUnixTimeDbl; external DLLName;
function CkDateTime_GetAsUnixTimeStr; external DLLName;
function CkDateTime__getAsUnixTimeStr; external DLLName;
function CkDateTime_GetDosDateHigh; external DLLName;
function CkDateTime_GetDosDateLow; external DLLName;
function CkDateTime_GetDtObj; external DLLName;
function CkDateTime_LoadTaskResult; external DLLName;
function CkDateTime_OlderThan; external DLLName;
function CkDateTime_SaveLastError; external DLLName;
function CkDateTime_Serialize; external DLLName;
function CkDateTime__serialize; external DLLName;
function CkDateTime_SetFromCurrentSystemTime; external DLLName;
function CkDateTime_SetFromDateTimeTicks; external DLLName;
function CkDateTime_SetFromDosDate; external DLLName;
function CkDateTime_SetFromDosDate2; external DLLName;
function CkDateTime_SetFromDtObj; external DLLName;
function CkDateTime_SetFromNtpServer; external DLLName;
function CkDateTime_SetFromNtpTime; external DLLName;
function CkDateTime_SetFromOleDate; external DLLName;
function CkDateTime_SetFromRfc822; external DLLName;
function CkDateTime_SetFromTimestamp; external DLLName;
function CkDateTime_SetFromUlid; external DLLName;
function CkDateTime_SetFromUnixTime; external DLLName;
function CkDateTime_SetFromUnixTime64; external DLLName;
function CkDateTime_SetFromUnixTimeDbl; external DLLName;
function CkDateTime_UlidGenerate; external DLLName;
function CkDateTime__ulidGenerate; external DLLName;
function CkDateTime_UlidIncrement; external DLLName;
function CkDateTime_UlidValidate; external DLLName;



end.
