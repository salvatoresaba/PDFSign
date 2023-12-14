unit Jwt;

interface

type

HCkJwt = Pointer;
HCkPrivateKey = Pointer;
HCkPublicKey = Pointer;
HCkString = Pointer;


function CkJwt_Create: HCkJwt; stdcall;
procedure CkJwt_Dispose(handle: HCkJwt); stdcall;
function CkJwt_getAutoCompact(objHandle: HCkJwt): wordbool; stdcall;

procedure CkJwt_putAutoCompact(objHandle: HCkJwt; newPropVal: wordbool); stdcall;

procedure CkJwt_getDebugLogFilePath(objHandle: HCkJwt; outPropVal: HCkString); stdcall;

procedure CkJwt_putDebugLogFilePath(objHandle: HCkJwt; newPropVal: PWideChar); stdcall;

function CkJwt__debugLogFilePath(objHandle: HCkJwt): PWideChar; stdcall;

procedure CkJwt_getLastErrorHtml(objHandle: HCkJwt; outPropVal: HCkString); stdcall;

function CkJwt__lastErrorHtml(objHandle: HCkJwt): PWideChar; stdcall;

procedure CkJwt_getLastErrorText(objHandle: HCkJwt; outPropVal: HCkString); stdcall;

function CkJwt__lastErrorText(objHandle: HCkJwt): PWideChar; stdcall;

procedure CkJwt_getLastErrorXml(objHandle: HCkJwt; outPropVal: HCkString); stdcall;

function CkJwt__lastErrorXml(objHandle: HCkJwt): PWideChar; stdcall;

function CkJwt_getLastMethodSuccess(objHandle: HCkJwt): wordbool; stdcall;

procedure CkJwt_putLastMethodSuccess(objHandle: HCkJwt; newPropVal: wordbool); stdcall;

function CkJwt_getVerboseLogging(objHandle: HCkJwt): wordbool; stdcall;

procedure CkJwt_putVerboseLogging(objHandle: HCkJwt; newPropVal: wordbool); stdcall;

procedure CkJwt_getVersion(objHandle: HCkJwt; outPropVal: HCkString); stdcall;

function CkJwt__version(objHandle: HCkJwt): PWideChar; stdcall;

function CkJwt_CreateJwt(objHandle: HCkJwt; header: PWideChar; payload: PWideChar; password: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkJwt__createJwt(objHandle: HCkJwt; header: PWideChar; payload: PWideChar; password: PWideChar): PWideChar; stdcall;

function CkJwt_CreateJwtPk(objHandle: HCkJwt; header: PWideChar; payload: PWideChar; key: HCkPrivateKey; outStr: HCkString): wordbool; stdcall;

function CkJwt__createJwtPk(objHandle: HCkJwt; header: PWideChar; payload: PWideChar; key: HCkPrivateKey): PWideChar; stdcall;

function CkJwt_GenNumericDate(objHandle: HCkJwt; numSecOffset: Integer): Integer; stdcall;

function CkJwt_GetHeader(objHandle: HCkJwt; token: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkJwt__getHeader(objHandle: HCkJwt; token: PWideChar): PWideChar; stdcall;

function CkJwt_GetPayload(objHandle: HCkJwt; token: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkJwt__getPayload(objHandle: HCkJwt; token: PWideChar): PWideChar; stdcall;

function CkJwt_IsTimeValid(objHandle: HCkJwt; jwt: PWideChar; leeway: Integer): wordbool; stdcall;

function CkJwt_SaveLastError(objHandle: HCkJwt; path: PWideChar): wordbool; stdcall;

function CkJwt_VerifyJwt(objHandle: HCkJwt; token: PWideChar; password: PWideChar): wordbool; stdcall;

function CkJwt_VerifyJwtPk(objHandle: HCkJwt; token: PWideChar; key: HCkPublicKey): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkJwt_Create; external DLLName;
procedure CkJwt_Dispose; external DLLName;
function CkJwt_getAutoCompact; external DLLName;
procedure CkJwt_putAutoCompact; external DLLName;
procedure CkJwt_getDebugLogFilePath; external DLLName;
procedure CkJwt_putDebugLogFilePath; external DLLName;
function CkJwt__debugLogFilePath; external DLLName;
procedure CkJwt_getLastErrorHtml; external DLLName;
function CkJwt__lastErrorHtml; external DLLName;
procedure CkJwt_getLastErrorText; external DLLName;
function CkJwt__lastErrorText; external DLLName;
procedure CkJwt_getLastErrorXml; external DLLName;
function CkJwt__lastErrorXml; external DLLName;
function CkJwt_getLastMethodSuccess; external DLLName;
procedure CkJwt_putLastMethodSuccess; external DLLName;
function CkJwt_getVerboseLogging; external DLLName;
procedure CkJwt_putVerboseLogging; external DLLName;
procedure CkJwt_getVersion; external DLLName;
function CkJwt__version; external DLLName;
function CkJwt_CreateJwt; external DLLName;
function CkJwt__createJwt; external DLLName;
function CkJwt_CreateJwtPk; external DLLName;
function CkJwt__createJwtPk; external DLLName;
function CkJwt_GenNumericDate; external DLLName;
function CkJwt_GetHeader; external DLLName;
function CkJwt__getHeader; external DLLName;
function CkJwt_GetPayload; external DLLName;
function CkJwt__getPayload; external DLLName;
function CkJwt_IsTimeValid; external DLLName;
function CkJwt_SaveLastError; external DLLName;
function CkJwt_VerifyJwt; external DLLName;
function CkJwt_VerifyJwtPk; external DLLName;



end.
