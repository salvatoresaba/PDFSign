unit PublicKey;

interface

type

HCkBinData = Pointer;
HCkByteData = Pointer;
HCkPublicKey = Pointer;
HCkString = Pointer;


function CkPublicKey_Create: HCkPublicKey; stdcall;
procedure CkPublicKey_Dispose(handle: HCkPublicKey); stdcall;
procedure CkPublicKey_getDebugLogFilePath(objHandle: HCkPublicKey; outPropVal: HCkString); stdcall;

procedure CkPublicKey_putDebugLogFilePath(objHandle: HCkPublicKey; newPropVal: PWideChar); stdcall;

function CkPublicKey__debugLogFilePath(objHandle: HCkPublicKey): PWideChar; stdcall;

function CkPublicKey_getEmpty(objHandle: HCkPublicKey): wordbool; stdcall;

function CkPublicKey_getKeySize(objHandle: HCkPublicKey): Integer; stdcall;

procedure CkPublicKey_getKeyType(objHandle: HCkPublicKey; outPropVal: HCkString); stdcall;

function CkPublicKey__keyType(objHandle: HCkPublicKey): PWideChar; stdcall;

procedure CkPublicKey_getLastErrorHtml(objHandle: HCkPublicKey; outPropVal: HCkString); stdcall;

function CkPublicKey__lastErrorHtml(objHandle: HCkPublicKey): PWideChar; stdcall;

procedure CkPublicKey_getLastErrorText(objHandle: HCkPublicKey; outPropVal: HCkString); stdcall;

function CkPublicKey__lastErrorText(objHandle: HCkPublicKey): PWideChar; stdcall;

procedure CkPublicKey_getLastErrorXml(objHandle: HCkPublicKey; outPropVal: HCkString); stdcall;

function CkPublicKey__lastErrorXml(objHandle: HCkPublicKey): PWideChar; stdcall;

function CkPublicKey_getLastMethodSuccess(objHandle: HCkPublicKey): wordbool; stdcall;

procedure CkPublicKey_putLastMethodSuccess(objHandle: HCkPublicKey; newPropVal: wordbool); stdcall;

function CkPublicKey_getVerboseLogging(objHandle: HCkPublicKey): wordbool; stdcall;

procedure CkPublicKey_putVerboseLogging(objHandle: HCkPublicKey; newPropVal: wordbool); stdcall;

procedure CkPublicKey_getVersion(objHandle: HCkPublicKey; outPropVal: HCkString); stdcall;

function CkPublicKey__version(objHandle: HCkPublicKey): PWideChar; stdcall;

function CkPublicKey_GetDer(objHandle: HCkPublicKey; preferPkcs1: wordbool; outData: HCkByteData): wordbool; stdcall;

function CkPublicKey_GetEncoded(objHandle: HCkPublicKey; preferPkcs1: wordbool; encoding: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkPublicKey__getEncoded(objHandle: HCkPublicKey; preferPkcs1: wordbool; encoding: PWideChar): PWideChar; stdcall;

function CkPublicKey_GetJwk(objHandle: HCkPublicKey; outStr: HCkString): wordbool; stdcall;

function CkPublicKey__getJwk(objHandle: HCkPublicKey): PWideChar; stdcall;

function CkPublicKey_GetJwkThumbprint(objHandle: HCkPublicKey; hashAlg: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkPublicKey__getJwkThumbprint(objHandle: HCkPublicKey; hashAlg: PWideChar): PWideChar; stdcall;

function CkPublicKey_GetOpenSslDer(objHandle: HCkPublicKey; outData: HCkByteData): wordbool; stdcall;

function CkPublicKey_GetOpenSslPem(objHandle: HCkPublicKey; outStr: HCkString): wordbool; stdcall;

function CkPublicKey__getOpenSslPem(objHandle: HCkPublicKey): PWideChar; stdcall;

function CkPublicKey_GetPem(objHandle: HCkPublicKey; preferPkcs1: wordbool; outStr: HCkString): wordbool; stdcall;

function CkPublicKey__getPem(objHandle: HCkPublicKey; preferPkcs1: wordbool): PWideChar; stdcall;

function CkPublicKey_GetPkcs1ENC(objHandle: HCkPublicKey; encoding: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkPublicKey__getPkcs1ENC(objHandle: HCkPublicKey; encoding: PWideChar): PWideChar; stdcall;

function CkPublicKey_GetPkcs8ENC(objHandle: HCkPublicKey; encoding: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkPublicKey__getPkcs8ENC(objHandle: HCkPublicKey; encoding: PWideChar): PWideChar; stdcall;

function CkPublicKey_GetRsaDer(objHandle: HCkPublicKey; outData: HCkByteData): wordbool; stdcall;

function CkPublicKey_GetXml(objHandle: HCkPublicKey; outStr: HCkString): wordbool; stdcall;

function CkPublicKey__getXml(objHandle: HCkPublicKey): PWideChar; stdcall;

function CkPublicKey_LoadBase64(objHandle: HCkPublicKey; keyStr: PWideChar): wordbool; stdcall;

function CkPublicKey_LoadBd(objHandle: HCkPublicKey; bd: HCkBinData): wordbool; stdcall;

function CkPublicKey_LoadEcdsa(objHandle: HCkPublicKey; curveName: PWideChar; Qx: PWideChar; Qy: PWideChar): wordbool; stdcall;

function CkPublicKey_LoadEd25519(objHandle: HCkPublicKey; pubKey: PWideChar): wordbool; stdcall;

function CkPublicKey_LoadFromBinary(objHandle: HCkPublicKey; keyBytes: HCkByteData): wordbool; stdcall;

function CkPublicKey_LoadFromFile(objHandle: HCkPublicKey; path: PWideChar): wordbool; stdcall;

function CkPublicKey_LoadFromString(objHandle: HCkPublicKey; keyString: PWideChar): wordbool; stdcall;

function CkPublicKey_LoadOpenSslDer(objHandle: HCkPublicKey; data: HCkByteData): wordbool; stdcall;

function CkPublicKey_LoadOpenSslDerFile(objHandle: HCkPublicKey; path: PWideChar): wordbool; stdcall;

function CkPublicKey_LoadOpenSslPem(objHandle: HCkPublicKey; str: PWideChar): wordbool; stdcall;

function CkPublicKey_LoadOpenSslPemFile(objHandle: HCkPublicKey; path: PWideChar): wordbool; stdcall;

function CkPublicKey_LoadPkcs1Pem(objHandle: HCkPublicKey; str: PWideChar): wordbool; stdcall;

function CkPublicKey_LoadRsaDer(objHandle: HCkPublicKey; data: HCkByteData): wordbool; stdcall;

function CkPublicKey_LoadRsaDerFile(objHandle: HCkPublicKey; path: PWideChar): wordbool; stdcall;

function CkPublicKey_LoadXml(objHandle: HCkPublicKey; xml: PWideChar): wordbool; stdcall;

function CkPublicKey_LoadXmlFile(objHandle: HCkPublicKey; path: PWideChar): wordbool; stdcall;

function CkPublicKey_SaveDerFile(objHandle: HCkPublicKey; preferPkcs1: wordbool; path: PWideChar): wordbool; stdcall;

function CkPublicKey_SaveLastError(objHandle: HCkPublicKey; path: PWideChar): wordbool; stdcall;

function CkPublicKey_SaveOpenSslDerFile(objHandle: HCkPublicKey; path: PWideChar): wordbool; stdcall;

function CkPublicKey_SaveOpenSslPemFile(objHandle: HCkPublicKey; path: PWideChar): wordbool; stdcall;

function CkPublicKey_SavePemFile(objHandle: HCkPublicKey; preferPkcs1: wordbool; path: PWideChar): wordbool; stdcall;

function CkPublicKey_SaveRsaDerFile(objHandle: HCkPublicKey; path: PWideChar): wordbool; stdcall;

function CkPublicKey_SaveXmlFile(objHandle: HCkPublicKey; path: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkPublicKey_Create; external DLLName;
procedure CkPublicKey_Dispose; external DLLName;
procedure CkPublicKey_getDebugLogFilePath; external DLLName;
procedure CkPublicKey_putDebugLogFilePath; external DLLName;
function CkPublicKey__debugLogFilePath; external DLLName;
function CkPublicKey_getEmpty; external DLLName;
function CkPublicKey_getKeySize; external DLLName;
procedure CkPublicKey_getKeyType; external DLLName;
function CkPublicKey__keyType; external DLLName;
procedure CkPublicKey_getLastErrorHtml; external DLLName;
function CkPublicKey__lastErrorHtml; external DLLName;
procedure CkPublicKey_getLastErrorText; external DLLName;
function CkPublicKey__lastErrorText; external DLLName;
procedure CkPublicKey_getLastErrorXml; external DLLName;
function CkPublicKey__lastErrorXml; external DLLName;
function CkPublicKey_getLastMethodSuccess; external DLLName;
procedure CkPublicKey_putLastMethodSuccess; external DLLName;
function CkPublicKey_getVerboseLogging; external DLLName;
procedure CkPublicKey_putVerboseLogging; external DLLName;
procedure CkPublicKey_getVersion; external DLLName;
function CkPublicKey__version; external DLLName;
function CkPublicKey_GetDer; external DLLName;
function CkPublicKey_GetEncoded; external DLLName;
function CkPublicKey__getEncoded; external DLLName;
function CkPublicKey_GetJwk; external DLLName;
function CkPublicKey__getJwk; external DLLName;
function CkPublicKey_GetJwkThumbprint; external DLLName;
function CkPublicKey__getJwkThumbprint; external DLLName;
function CkPublicKey_GetOpenSslDer; external DLLName;
function CkPublicKey_GetOpenSslPem; external DLLName;
function CkPublicKey__getOpenSslPem; external DLLName;
function CkPublicKey_GetPem; external DLLName;
function CkPublicKey__getPem; external DLLName;
function CkPublicKey_GetPkcs1ENC; external DLLName;
function CkPublicKey__getPkcs1ENC; external DLLName;
function CkPublicKey_GetPkcs8ENC; external DLLName;
function CkPublicKey__getPkcs8ENC; external DLLName;
function CkPublicKey_GetRsaDer; external DLLName;
function CkPublicKey_GetXml; external DLLName;
function CkPublicKey__getXml; external DLLName;
function CkPublicKey_LoadBase64; external DLLName;
function CkPublicKey_LoadBd; external DLLName;
function CkPublicKey_LoadEcdsa; external DLLName;
function CkPublicKey_LoadEd25519; external DLLName;
function CkPublicKey_LoadFromBinary; external DLLName;
function CkPublicKey_LoadFromFile; external DLLName;
function CkPublicKey_LoadFromString; external DLLName;
function CkPublicKey_LoadOpenSslDer; external DLLName;
function CkPublicKey_LoadOpenSslDerFile; external DLLName;
function CkPublicKey_LoadOpenSslPem; external DLLName;
function CkPublicKey_LoadOpenSslPemFile; external DLLName;
function CkPublicKey_LoadPkcs1Pem; external DLLName;
function CkPublicKey_LoadRsaDer; external DLLName;
function CkPublicKey_LoadRsaDerFile; external DLLName;
function CkPublicKey_LoadXml; external DLLName;
function CkPublicKey_LoadXmlFile; external DLLName;
function CkPublicKey_SaveDerFile; external DLLName;
function CkPublicKey_SaveLastError; external DLLName;
function CkPublicKey_SaveOpenSslDerFile; external DLLName;
function CkPublicKey_SaveOpenSslPemFile; external DLLName;
function CkPublicKey_SavePemFile; external DLLName;
function CkPublicKey_SaveRsaDerFile; external DLLName;
function CkPublicKey_SaveXmlFile; external DLLName;



end.
