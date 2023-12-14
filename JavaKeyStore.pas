unit JavaKeyStore;

interface

type

HCkPem = Pointer;
HCkJavaKeyStore = Pointer;
HCkPrivateKey = Pointer;
HCkXmlCertVault = Pointer;
HCkByteData = Pointer;
HCkString = Pointer;
HCkPfx = Pointer;
HCkStringBuilder = Pointer;
HCkCertChain = Pointer;
HCkCert = Pointer;
HCkJsonObject = Pointer;
HCkBinData = Pointer;


function CkJavaKeyStore_Create: HCkJavaKeyStore; stdcall;
procedure CkJavaKeyStore_Dispose(handle: HCkJavaKeyStore); stdcall;
procedure CkJavaKeyStore_getDebugLogFilePath(objHandle: HCkJavaKeyStore; outPropVal: HCkString); stdcall;

procedure CkJavaKeyStore_putDebugLogFilePath(objHandle: HCkJavaKeyStore; newPropVal: PWideChar); stdcall;

function CkJavaKeyStore__debugLogFilePath(objHandle: HCkJavaKeyStore): PWideChar; stdcall;

procedure CkJavaKeyStore_getLastErrorHtml(objHandle: HCkJavaKeyStore; outPropVal: HCkString); stdcall;

function CkJavaKeyStore__lastErrorHtml(objHandle: HCkJavaKeyStore): PWideChar; stdcall;

procedure CkJavaKeyStore_getLastErrorText(objHandle: HCkJavaKeyStore; outPropVal: HCkString); stdcall;

function CkJavaKeyStore__lastErrorText(objHandle: HCkJavaKeyStore): PWideChar; stdcall;

procedure CkJavaKeyStore_getLastErrorXml(objHandle: HCkJavaKeyStore; outPropVal: HCkString); stdcall;

function CkJavaKeyStore__lastErrorXml(objHandle: HCkJavaKeyStore): PWideChar; stdcall;

function CkJavaKeyStore_getLastMethodSuccess(objHandle: HCkJavaKeyStore): wordbool; stdcall;

procedure CkJavaKeyStore_putLastMethodSuccess(objHandle: HCkJavaKeyStore; newPropVal: wordbool); stdcall;

function CkJavaKeyStore_getNumPrivateKeys(objHandle: HCkJavaKeyStore): Integer; stdcall;

function CkJavaKeyStore_getNumSecretKeys(objHandle: HCkJavaKeyStore): Integer; stdcall;

function CkJavaKeyStore_getNumTrustedCerts(objHandle: HCkJavaKeyStore): Integer; stdcall;

function CkJavaKeyStore_getRequireCompleteChain(objHandle: HCkJavaKeyStore): wordbool; stdcall;

procedure CkJavaKeyStore_putRequireCompleteChain(objHandle: HCkJavaKeyStore; newPropVal: wordbool); stdcall;

function CkJavaKeyStore_getVerboseLogging(objHandle: HCkJavaKeyStore): wordbool; stdcall;

procedure CkJavaKeyStore_putVerboseLogging(objHandle: HCkJavaKeyStore; newPropVal: wordbool); stdcall;

function CkJavaKeyStore_getVerifyKeyedDigest(objHandle: HCkJavaKeyStore): wordbool; stdcall;

procedure CkJavaKeyStore_putVerifyKeyedDigest(objHandle: HCkJavaKeyStore; newPropVal: wordbool); stdcall;

procedure CkJavaKeyStore_getVersion(objHandle: HCkJavaKeyStore; outPropVal: HCkString); stdcall;

function CkJavaKeyStore__version(objHandle: HCkJavaKeyStore): PWideChar; stdcall;

function CkJavaKeyStore_AddPfx(objHandle: HCkJavaKeyStore; pfx: HCkPfx; alias: PWideChar; password: PWideChar): wordbool; stdcall;

function CkJavaKeyStore_AddPrivateKey(objHandle: HCkJavaKeyStore; cert: HCkCert; alias: PWideChar; password: PWideChar): wordbool; stdcall;

function CkJavaKeyStore_AddSecretKey(objHandle: HCkJavaKeyStore; encodedKeyBytes: PWideChar; encoding: PWideChar; algorithm: PWideChar; alias: PWideChar; password: PWideChar): wordbool; stdcall;

function CkJavaKeyStore_AddTrustedCert(objHandle: HCkJavaKeyStore; cert: HCkCert; alias: PWideChar): wordbool; stdcall;

function CkJavaKeyStore_ChangePassword(objHandle: HCkJavaKeyStore; index: Integer; oldPassword: PWideChar; newPassword: PWideChar): wordbool; stdcall;

function CkJavaKeyStore_FindCertChain(objHandle: HCkJavaKeyStore; alias: PWideChar; caseSensitive: wordbool): HCkCertChain; stdcall;

function CkJavaKeyStore_FindPrivateKey(objHandle: HCkJavaKeyStore; password: PWideChar; alias: PWideChar; caseSensitive: wordbool): HCkPrivateKey; stdcall;

function CkJavaKeyStore_FindTrustedCert(objHandle: HCkJavaKeyStore; alias: PWideChar; caseSensitive: wordbool): HCkCert; stdcall;

function CkJavaKeyStore_GetCertChain(objHandle: HCkJavaKeyStore; index: Integer): HCkCertChain; stdcall;

function CkJavaKeyStore_GetPrivateKey(objHandle: HCkJavaKeyStore; password: PWideChar; index: Integer): HCkPrivateKey; stdcall;

function CkJavaKeyStore_GetPrivateKeyAlias(objHandle: HCkJavaKeyStore; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkJavaKeyStore__getPrivateKeyAlias(objHandle: HCkJavaKeyStore; index: Integer): PWideChar; stdcall;

function CkJavaKeyStore_GetSecretKey(objHandle: HCkJavaKeyStore; password: PWideChar; index: Integer; encoding: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkJavaKeyStore__getSecretKey(objHandle: HCkJavaKeyStore; password: PWideChar; index: Integer; encoding: PWideChar): PWideChar; stdcall;

function CkJavaKeyStore_GetSecretKeyAlias(objHandle: HCkJavaKeyStore; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkJavaKeyStore__getSecretKeyAlias(objHandle: HCkJavaKeyStore; index: Integer): PWideChar; stdcall;

function CkJavaKeyStore_GetTrustedCert(objHandle: HCkJavaKeyStore; index: Integer): HCkCert; stdcall;

function CkJavaKeyStore_GetTrustedCertAlias(objHandle: HCkJavaKeyStore; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkJavaKeyStore__getTrustedCertAlias(objHandle: HCkJavaKeyStore; index: Integer): PWideChar; stdcall;

function CkJavaKeyStore_LoadBd(objHandle: HCkJavaKeyStore; password: PWideChar; bd: HCkBinData): wordbool; stdcall;

function CkJavaKeyStore_LoadBinary(objHandle: HCkJavaKeyStore; password: PWideChar; jksData: HCkByteData): wordbool; stdcall;

function CkJavaKeyStore_LoadEncoded(objHandle: HCkJavaKeyStore; password: PWideChar; jksEncData: PWideChar; encoding: PWideChar): wordbool; stdcall;

function CkJavaKeyStore_LoadFile(objHandle: HCkJavaKeyStore; password: PWideChar; path: PWideChar): wordbool; stdcall;

function CkJavaKeyStore_LoadJwkSet(objHandle: HCkJavaKeyStore; password: PWideChar; jwkSet: HCkJsonObject): wordbool; stdcall;

function CkJavaKeyStore_RemoveEntry(objHandle: HCkJavaKeyStore; entryType: Integer; index: Integer): wordbool; stdcall;

function CkJavaKeyStore_SaveLastError(objHandle: HCkJavaKeyStore; path: PWideChar): wordbool; stdcall;

function CkJavaKeyStore_SetAlias(objHandle: HCkJavaKeyStore; entryType: Integer; index: Integer; alias: PWideChar): wordbool; stdcall;

function CkJavaKeyStore_ToBinary(objHandle: HCkJavaKeyStore; password: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkJavaKeyStore_ToEncodedString(objHandle: HCkJavaKeyStore; password: PWideChar; encoding: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkJavaKeyStore__toEncodedString(objHandle: HCkJavaKeyStore; password: PWideChar; encoding: PWideChar): PWideChar; stdcall;

function CkJavaKeyStore_ToFile(objHandle: HCkJavaKeyStore; password: PWideChar; path: PWideChar): wordbool; stdcall;

function CkJavaKeyStore_ToJwkSet(objHandle: HCkJavaKeyStore; password: PWideChar; sbJwkSet: HCkStringBuilder): wordbool; stdcall;

function CkJavaKeyStore_ToPem(objHandle: HCkJavaKeyStore; password: PWideChar): HCkPem; stdcall;

function CkJavaKeyStore_ToPfx(objHandle: HCkJavaKeyStore; password: PWideChar): HCkPfx; stdcall;

function CkJavaKeyStore_UnlockComponent(objHandle: HCkJavaKeyStore; unlockCode: PWideChar): wordbool; stdcall;

function CkJavaKeyStore_UseCertVault(objHandle: HCkJavaKeyStore; vault: HCkXmlCertVault): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkJavaKeyStore_Create; external DLLName;
procedure CkJavaKeyStore_Dispose; external DLLName;
procedure CkJavaKeyStore_getDebugLogFilePath; external DLLName;
procedure CkJavaKeyStore_putDebugLogFilePath; external DLLName;
function CkJavaKeyStore__debugLogFilePath; external DLLName;
procedure CkJavaKeyStore_getLastErrorHtml; external DLLName;
function CkJavaKeyStore__lastErrorHtml; external DLLName;
procedure CkJavaKeyStore_getLastErrorText; external DLLName;
function CkJavaKeyStore__lastErrorText; external DLLName;
procedure CkJavaKeyStore_getLastErrorXml; external DLLName;
function CkJavaKeyStore__lastErrorXml; external DLLName;
function CkJavaKeyStore_getLastMethodSuccess; external DLLName;
procedure CkJavaKeyStore_putLastMethodSuccess; external DLLName;
function CkJavaKeyStore_getNumPrivateKeys; external DLLName;
function CkJavaKeyStore_getNumSecretKeys; external DLLName;
function CkJavaKeyStore_getNumTrustedCerts; external DLLName;
function CkJavaKeyStore_getRequireCompleteChain; external DLLName;
procedure CkJavaKeyStore_putRequireCompleteChain; external DLLName;
function CkJavaKeyStore_getVerboseLogging; external DLLName;
procedure CkJavaKeyStore_putVerboseLogging; external DLLName;
function CkJavaKeyStore_getVerifyKeyedDigest; external DLLName;
procedure CkJavaKeyStore_putVerifyKeyedDigest; external DLLName;
procedure CkJavaKeyStore_getVersion; external DLLName;
function CkJavaKeyStore__version; external DLLName;
function CkJavaKeyStore_AddPfx; external DLLName;
function CkJavaKeyStore_AddPrivateKey; external DLLName;
function CkJavaKeyStore_AddSecretKey; external DLLName;
function CkJavaKeyStore_AddTrustedCert; external DLLName;
function CkJavaKeyStore_ChangePassword; external DLLName;
function CkJavaKeyStore_FindCertChain; external DLLName;
function CkJavaKeyStore_FindPrivateKey; external DLLName;
function CkJavaKeyStore_FindTrustedCert; external DLLName;
function CkJavaKeyStore_GetCertChain; external DLLName;
function CkJavaKeyStore_GetPrivateKey; external DLLName;
function CkJavaKeyStore_GetPrivateKeyAlias; external DLLName;
function CkJavaKeyStore__getPrivateKeyAlias; external DLLName;
function CkJavaKeyStore_GetSecretKey; external DLLName;
function CkJavaKeyStore__getSecretKey; external DLLName;
function CkJavaKeyStore_GetSecretKeyAlias; external DLLName;
function CkJavaKeyStore__getSecretKeyAlias; external DLLName;
function CkJavaKeyStore_GetTrustedCert; external DLLName;
function CkJavaKeyStore_GetTrustedCertAlias; external DLLName;
function CkJavaKeyStore__getTrustedCertAlias; external DLLName;
function CkJavaKeyStore_LoadBd; external DLLName;
function CkJavaKeyStore_LoadBinary; external DLLName;
function CkJavaKeyStore_LoadEncoded; external DLLName;
function CkJavaKeyStore_LoadFile; external DLLName;
function CkJavaKeyStore_LoadJwkSet; external DLLName;
function CkJavaKeyStore_RemoveEntry; external DLLName;
function CkJavaKeyStore_SaveLastError; external DLLName;
function CkJavaKeyStore_SetAlias; external DLLName;
function CkJavaKeyStore_ToBinary; external DLLName;
function CkJavaKeyStore_ToEncodedString; external DLLName;
function CkJavaKeyStore__toEncodedString; external DLLName;
function CkJavaKeyStore_ToFile; external DLLName;
function CkJavaKeyStore_ToJwkSet; external DLLName;
function CkJavaKeyStore_ToPem; external DLLName;
function CkJavaKeyStore_ToPfx; external DLLName;
function CkJavaKeyStore_UnlockComponent; external DLLName;
function CkJavaKeyStore_UseCertVault; external DLLName;



end.
