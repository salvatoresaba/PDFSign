unit Jwe;

interface

type

HCkJwe = Pointer;
HCkJsonObject = Pointer;
HCkPrivateKey = Pointer;
HCkPublicKey = Pointer;
HCkString = Pointer;
HCkStringBuilder = Pointer;
HCkBinData = Pointer;


function CkJwe_Create: HCkJwe; stdcall;
procedure CkJwe_Dispose(handle: HCkJwe); stdcall;
procedure CkJwe_getDebugLogFilePath(objHandle: HCkJwe; outPropVal: HCkString); stdcall;

procedure CkJwe_putDebugLogFilePath(objHandle: HCkJwe; newPropVal: PWideChar); stdcall;

function CkJwe__debugLogFilePath(objHandle: HCkJwe): PWideChar; stdcall;

procedure CkJwe_getLastErrorHtml(objHandle: HCkJwe; outPropVal: HCkString); stdcall;

function CkJwe__lastErrorHtml(objHandle: HCkJwe): PWideChar; stdcall;

procedure CkJwe_getLastErrorText(objHandle: HCkJwe; outPropVal: HCkString); stdcall;

function CkJwe__lastErrorText(objHandle: HCkJwe): PWideChar; stdcall;

procedure CkJwe_getLastErrorXml(objHandle: HCkJwe; outPropVal: HCkString); stdcall;

function CkJwe__lastErrorXml(objHandle: HCkJwe): PWideChar; stdcall;

function CkJwe_getLastMethodSuccess(objHandle: HCkJwe): wordbool; stdcall;

procedure CkJwe_putLastMethodSuccess(objHandle: HCkJwe; newPropVal: wordbool); stdcall;

function CkJwe_getNumRecipients(objHandle: HCkJwe): Integer; stdcall;

function CkJwe_getPreferCompact(objHandle: HCkJwe): wordbool; stdcall;

procedure CkJwe_putPreferCompact(objHandle: HCkJwe; newPropVal: wordbool); stdcall;

function CkJwe_getPreferFlattened(objHandle: HCkJwe): wordbool; stdcall;

procedure CkJwe_putPreferFlattened(objHandle: HCkJwe; newPropVal: wordbool); stdcall;

function CkJwe_getVerboseLogging(objHandle: HCkJwe): wordbool; stdcall;

procedure CkJwe_putVerboseLogging(objHandle: HCkJwe; newPropVal: wordbool); stdcall;

procedure CkJwe_getVersion(objHandle: HCkJwe; outPropVal: HCkString); stdcall;

function CkJwe__version(objHandle: HCkJwe): PWideChar; stdcall;

function CkJwe_Decrypt(objHandle: HCkJwe; index: Integer; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkJwe__decrypt(objHandle: HCkJwe; index: Integer; charset: PWideChar): PWideChar; stdcall;

function CkJwe_DecryptBd(objHandle: HCkJwe; index: Integer; bd: HCkBinData): wordbool; stdcall;

function CkJwe_DecryptSb(objHandle: HCkJwe; index: Integer; charset: PWideChar; contentSb: HCkStringBuilder): wordbool; stdcall;

function CkJwe_Encrypt(objHandle: HCkJwe; content: PWideChar; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkJwe__encrypt(objHandle: HCkJwe; content: PWideChar; charset: PWideChar): PWideChar; stdcall;

function CkJwe_EncryptBd(objHandle: HCkJwe; contentBd: HCkBinData; jweSb: HCkStringBuilder): wordbool; stdcall;

function CkJwe_EncryptSb(objHandle: HCkJwe; contentSb: HCkStringBuilder; charset: PWideChar; jweSb: HCkStringBuilder): wordbool; stdcall;

function CkJwe_FindRecipient(objHandle: HCkJwe; paramName: PWideChar; paramValue: PWideChar; caseSensitive: wordbool): Integer; stdcall;

function CkJwe_GetHeader(objHandle: HCkJwe; json: HCkJsonObject): wordbool; stdcall;

function CkJwe_GetProtectedHeader(objHandle: HCkJwe; json: HCkJsonObject): wordbool; stdcall;

function CkJwe_LoadJwe(objHandle: HCkJwe; jwe: PWideChar): wordbool; stdcall;

function CkJwe_LoadJweSb(objHandle: HCkJwe; sb: HCkStringBuilder): wordbool; stdcall;

function CkJwe_SaveLastError(objHandle: HCkJwe; path: PWideChar): wordbool; stdcall;

function CkJwe_SetAad(objHandle: HCkJwe; aad: PWideChar; charset: PWideChar): wordbool; stdcall;

function CkJwe_SetAadBd(objHandle: HCkJwe; aad: HCkBinData): wordbool; stdcall;

function CkJwe_SetPassword(objHandle: HCkJwe; index: Integer; password: PWideChar): wordbool; stdcall;

function CkJwe_SetPrivateKey(objHandle: HCkJwe; index: Integer; privKey: HCkPrivateKey): wordbool; stdcall;

function CkJwe_SetProtectedHeader(objHandle: HCkJwe; json: HCkJsonObject): wordbool; stdcall;

function CkJwe_SetPublicKey(objHandle: HCkJwe; index: Integer; pubKey: HCkPublicKey): wordbool; stdcall;

function CkJwe_SetRecipientHeader(objHandle: HCkJwe; index: Integer; json: HCkJsonObject): wordbool; stdcall;

function CkJwe_SetUnprotectedHeader(objHandle: HCkJwe; json: HCkJsonObject): wordbool; stdcall;

function CkJwe_SetWrappingKey(objHandle: HCkJwe; index: Integer; encodedKey: PWideChar; encoding: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkJwe_Create; external DLLName;
procedure CkJwe_Dispose; external DLLName;
procedure CkJwe_getDebugLogFilePath; external DLLName;
procedure CkJwe_putDebugLogFilePath; external DLLName;
function CkJwe__debugLogFilePath; external DLLName;
procedure CkJwe_getLastErrorHtml; external DLLName;
function CkJwe__lastErrorHtml; external DLLName;
procedure CkJwe_getLastErrorText; external DLLName;
function CkJwe__lastErrorText; external DLLName;
procedure CkJwe_getLastErrorXml; external DLLName;
function CkJwe__lastErrorXml; external DLLName;
function CkJwe_getLastMethodSuccess; external DLLName;
procedure CkJwe_putLastMethodSuccess; external DLLName;
function CkJwe_getNumRecipients; external DLLName;
function CkJwe_getPreferCompact; external DLLName;
procedure CkJwe_putPreferCompact; external DLLName;
function CkJwe_getPreferFlattened; external DLLName;
procedure CkJwe_putPreferFlattened; external DLLName;
function CkJwe_getVerboseLogging; external DLLName;
procedure CkJwe_putVerboseLogging; external DLLName;
procedure CkJwe_getVersion; external DLLName;
function CkJwe__version; external DLLName;
function CkJwe_Decrypt; external DLLName;
function CkJwe__decrypt; external DLLName;
function CkJwe_DecryptBd; external DLLName;
function CkJwe_DecryptSb; external DLLName;
function CkJwe_Encrypt; external DLLName;
function CkJwe__encrypt; external DLLName;
function CkJwe_EncryptBd; external DLLName;
function CkJwe_EncryptSb; external DLLName;
function CkJwe_FindRecipient; external DLLName;
function CkJwe_GetHeader; external DLLName;
function CkJwe_GetProtectedHeader; external DLLName;
function CkJwe_LoadJwe; external DLLName;
function CkJwe_LoadJweSb; external DLLName;
function CkJwe_SaveLastError; external DLLName;
function CkJwe_SetAad; external DLLName;
function CkJwe_SetAadBd; external DLLName;
function CkJwe_SetPassword; external DLLName;
function CkJwe_SetPrivateKey; external DLLName;
function CkJwe_SetProtectedHeader; external DLLName;
function CkJwe_SetPublicKey; external DLLName;
function CkJwe_SetRecipientHeader; external DLLName;
function CkJwe_SetUnprotectedHeader; external DLLName;
function CkJwe_SetWrappingKey; external DLLName;



end.
