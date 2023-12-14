unit Jws;

interface

type

HCkPublicKey = Pointer;
HCkJsonObject = Pointer;
HCkPrivateKey = Pointer;
HCkString = Pointer;
HCkStringBuilder = Pointer;
HCkBinData = Pointer;
HCkJws = Pointer;


function CkJws_Create: HCkJws; stdcall;
procedure CkJws_Dispose(handle: HCkJws); stdcall;
procedure CkJws_getDebugLogFilePath(objHandle: HCkJws; outPropVal: HCkString); stdcall;

procedure CkJws_putDebugLogFilePath(objHandle: HCkJws; newPropVal: PWideChar); stdcall;

function CkJws__debugLogFilePath(objHandle: HCkJws): PWideChar; stdcall;

procedure CkJws_getLastErrorHtml(objHandle: HCkJws; outPropVal: HCkString); stdcall;

function CkJws__lastErrorHtml(objHandle: HCkJws): PWideChar; stdcall;

procedure CkJws_getLastErrorText(objHandle: HCkJws; outPropVal: HCkString); stdcall;

function CkJws__lastErrorText(objHandle: HCkJws): PWideChar; stdcall;

procedure CkJws_getLastErrorXml(objHandle: HCkJws; outPropVal: HCkString); stdcall;

function CkJws__lastErrorXml(objHandle: HCkJws): PWideChar; stdcall;

function CkJws_getLastMethodSuccess(objHandle: HCkJws): wordbool; stdcall;

procedure CkJws_putLastMethodSuccess(objHandle: HCkJws; newPropVal: wordbool); stdcall;

function CkJws_getNumSignatures(objHandle: HCkJws): Integer; stdcall;

function CkJws_getPreferCompact(objHandle: HCkJws): wordbool; stdcall;

procedure CkJws_putPreferCompact(objHandle: HCkJws; newPropVal: wordbool); stdcall;

function CkJws_getPreferFlattened(objHandle: HCkJws): wordbool; stdcall;

procedure CkJws_putPreferFlattened(objHandle: HCkJws; newPropVal: wordbool); stdcall;

function CkJws_getVerboseLogging(objHandle: HCkJws): wordbool; stdcall;

procedure CkJws_putVerboseLogging(objHandle: HCkJws; newPropVal: wordbool); stdcall;

procedure CkJws_getVersion(objHandle: HCkJws; outPropVal: HCkString); stdcall;

function CkJws__version(objHandle: HCkJws): PWideChar; stdcall;

function CkJws_CreateJws(objHandle: HCkJws; outStr: HCkString): wordbool; stdcall;

function CkJws__createJws(objHandle: HCkJws): PWideChar; stdcall;

function CkJws_CreateJwsSb(objHandle: HCkJws; sbJws: HCkStringBuilder): wordbool; stdcall;

function CkJws_GetPayload(objHandle: HCkJws; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkJws__getPayload(objHandle: HCkJws; charset: PWideChar): PWideChar; stdcall;

function CkJws_GetPayloadBd(objHandle: HCkJws; binData: HCkBinData): wordbool; stdcall;

function CkJws_GetPayloadSb(objHandle: HCkJws; charset: PWideChar; sbPayload: HCkStringBuilder): wordbool; stdcall;

function CkJws_GetProtectedHeader(objHandle: HCkJws; index: Integer): HCkJsonObject; stdcall;

function CkJws_GetUnprotectedHeader(objHandle: HCkJws; index: Integer): HCkJsonObject; stdcall;

function CkJws_LoadJws(objHandle: HCkJws; jwsStr: PWideChar): wordbool; stdcall;

function CkJws_LoadJwsSb(objHandle: HCkJws; sbJws: HCkStringBuilder): wordbool; stdcall;

function CkJws_SaveLastError(objHandle: HCkJws; path: PWideChar): wordbool; stdcall;

function CkJws_SetMacKey(objHandle: HCkJws; index: Integer; key: PWideChar; encoding: PWideChar): wordbool; stdcall;

function CkJws_SetMacKeyBd(objHandle: HCkJws; index: Integer; key: HCkBinData): wordbool; stdcall;

function CkJws_SetPayload(objHandle: HCkJws; payload: PWideChar; charset: PWideChar; includeBom: wordbool): wordbool; stdcall;

function CkJws_SetPayloadBd(objHandle: HCkJws; binData: HCkBinData): wordbool; stdcall;

function CkJws_SetPayloadSb(objHandle: HCkJws; sbPayload: HCkStringBuilder; charset: PWideChar; includeBom: wordbool): wordbool; stdcall;

function CkJws_SetPrivateKey(objHandle: HCkJws; index: Integer; privKey: HCkPrivateKey): wordbool; stdcall;

function CkJws_SetProtectedHeader(objHandle: HCkJws; index: Integer; json: HCkJsonObject): wordbool; stdcall;

function CkJws_SetPublicKey(objHandle: HCkJws; index: Integer; pubKey: HCkPublicKey): wordbool; stdcall;

function CkJws_SetUnprotectedHeader(objHandle: HCkJws; index: Integer; json: HCkJsonObject): wordbool; stdcall;

function CkJws_Validate(objHandle: HCkJws; index: Integer): Integer; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkJws_Create; external DLLName;
procedure CkJws_Dispose; external DLLName;
procedure CkJws_getDebugLogFilePath; external DLLName;
procedure CkJws_putDebugLogFilePath; external DLLName;
function CkJws__debugLogFilePath; external DLLName;
procedure CkJws_getLastErrorHtml; external DLLName;
function CkJws__lastErrorHtml; external DLLName;
procedure CkJws_getLastErrorText; external DLLName;
function CkJws__lastErrorText; external DLLName;
procedure CkJws_getLastErrorXml; external DLLName;
function CkJws__lastErrorXml; external DLLName;
function CkJws_getLastMethodSuccess; external DLLName;
procedure CkJws_putLastMethodSuccess; external DLLName;
function CkJws_getNumSignatures; external DLLName;
function CkJws_getPreferCompact; external DLLName;
procedure CkJws_putPreferCompact; external DLLName;
function CkJws_getPreferFlattened; external DLLName;
procedure CkJws_putPreferFlattened; external DLLName;
function CkJws_getVerboseLogging; external DLLName;
procedure CkJws_putVerboseLogging; external DLLName;
procedure CkJws_getVersion; external DLLName;
function CkJws__version; external DLLName;
function CkJws_CreateJws; external DLLName;
function CkJws__createJws; external DLLName;
function CkJws_CreateJwsSb; external DLLName;
function CkJws_GetPayload; external DLLName;
function CkJws__getPayload; external DLLName;
function CkJws_GetPayloadBd; external DLLName;
function CkJws_GetPayloadSb; external DLLName;
function CkJws_GetProtectedHeader; external DLLName;
function CkJws_GetUnprotectedHeader; external DLLName;
function CkJws_LoadJws; external DLLName;
function CkJws_LoadJwsSb; external DLLName;
function CkJws_SaveLastError; external DLLName;
function CkJws_SetMacKey; external DLLName;
function CkJws_SetMacKeyBd; external DLLName;
function CkJws_SetPayload; external DLLName;
function CkJws_SetPayloadBd; external DLLName;
function CkJws_SetPayloadSb; external DLLName;
function CkJws_SetPrivateKey; external DLLName;
function CkJws_SetProtectedHeader; external DLLName;
function CkJws_SetPublicKey; external DLLName;
function CkJws_SetUnprotectedHeader; external DLLName;
function CkJws_Validate; external DLLName;



end.
