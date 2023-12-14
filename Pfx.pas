unit Pfx;

interface

type

HCkJsonObject = Pointer;
HCkPrivateKey = Pointer;
HCkXmlCertVault = Pointer;
HCkByteData = Pointer;
HCkString = Pointer;
HCkJavaKeyStore = Pointer;
HCkPfx = Pointer;
HCkCertChain = Pointer;
HCkCert = Pointer;


function CkPfx_Create: HCkPfx; stdcall;
procedure CkPfx_Dispose(handle: HCkPfx); stdcall;
procedure CkPfx_getAlgorithmId(objHandle: HCkPfx; outPropVal: HCkString); stdcall;

procedure CkPfx_putAlgorithmId(objHandle: HCkPfx; newPropVal: PWideChar); stdcall;

function CkPfx__algorithmId(objHandle: HCkPfx): PWideChar; stdcall;

procedure CkPfx_getDebugLogFilePath(objHandle: HCkPfx; outPropVal: HCkString); stdcall;

procedure CkPfx_putDebugLogFilePath(objHandle: HCkPfx; newPropVal: PWideChar); stdcall;

function CkPfx__debugLogFilePath(objHandle: HCkPfx): PWideChar; stdcall;

procedure CkPfx_getLastErrorHtml(objHandle: HCkPfx; outPropVal: HCkString); stdcall;

function CkPfx__lastErrorHtml(objHandle: HCkPfx): PWideChar; stdcall;

procedure CkPfx_getLastErrorText(objHandle: HCkPfx; outPropVal: HCkString); stdcall;

function CkPfx__lastErrorText(objHandle: HCkPfx): PWideChar; stdcall;

procedure CkPfx_getLastErrorXml(objHandle: HCkPfx; outPropVal: HCkString); stdcall;

function CkPfx__lastErrorXml(objHandle: HCkPfx): PWideChar; stdcall;

function CkPfx_getLastMethodSuccess(objHandle: HCkPfx): wordbool; stdcall;

procedure CkPfx_putLastMethodSuccess(objHandle: HCkPfx; newPropVal: wordbool); stdcall;

function CkPfx_getNumCerts(objHandle: HCkPfx): Integer; stdcall;

function CkPfx_getNumPrivateKeys(objHandle: HCkPfx): Integer; stdcall;

procedure CkPfx_getPbes2CryptAlg(objHandle: HCkPfx; outPropVal: HCkString); stdcall;

procedure CkPfx_putPbes2CryptAlg(objHandle: HCkPfx; newPropVal: PWideChar); stdcall;

function CkPfx__pbes2CryptAlg(objHandle: HCkPfx): PWideChar; stdcall;

procedure CkPfx_getPbes2HmacAlg(objHandle: HCkPfx; outPropVal: HCkString); stdcall;

procedure CkPfx_putPbes2HmacAlg(objHandle: HCkPfx; newPropVal: PWideChar); stdcall;

function CkPfx__pbes2HmacAlg(objHandle: HCkPfx): PWideChar; stdcall;

procedure CkPfx_getUncommonOptions(objHandle: HCkPfx; outPropVal: HCkString); stdcall;

procedure CkPfx_putUncommonOptions(objHandle: HCkPfx; newPropVal: PWideChar); stdcall;

function CkPfx__uncommonOptions(objHandle: HCkPfx): PWideChar; stdcall;

function CkPfx_getVerboseLogging(objHandle: HCkPfx): wordbool; stdcall;

procedure CkPfx_putVerboseLogging(objHandle: HCkPfx; newPropVal: wordbool); stdcall;

procedure CkPfx_getVersion(objHandle: HCkPfx; outPropVal: HCkString); stdcall;

function CkPfx__version(objHandle: HCkPfx): PWideChar; stdcall;

function CkPfx_AddCert(objHandle: HCkPfx; cert: HCkCert; includeChain: wordbool): wordbool; stdcall;

function CkPfx_AddPrivateKey(objHandle: HCkPfx; privKey: HCkPrivateKey; certChain: HCkCertChain): wordbool; stdcall;

function CkPfx_FindCertByLocalKeyId(objHandle: HCkPfx; localKeyId: PWideChar; encoding: PWideChar): HCkCert; stdcall;

function CkPfx_GetCert(objHandle: HCkPfx; index: Integer): HCkCert; stdcall;

function CkPfx_GetPrivateKey(objHandle: HCkPfx; index: Integer): HCkPrivateKey; stdcall;

function CkPfx_GetSafeBagAttr(objHandle: HCkPfx; forPrivateKey: wordbool; index: Integer; attrName: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkPfx__getSafeBagAttr(objHandle: HCkPfx; forPrivateKey: wordbool; index: Integer; attrName: PWideChar): PWideChar; stdcall;

function CkPfx_ImportToWindows(objHandle: HCkPfx; exportable: wordbool; userProtected: wordbool; machineKeyset: wordbool; allowOverwriteKey: wordbool; allowExport: wordbool; leafStore: PWideChar; intermediateStore: PWideChar; rootStore: PWideChar; extraOptions: PWideChar): wordbool; stdcall;

function CkPfx_LastJsonData(objHandle: HCkPfx): HCkJsonObject; stdcall;

function CkPfx_LoadPem(objHandle: HCkPfx; pemStr: PWideChar; password: PWideChar): wordbool; stdcall;

function CkPfx_LoadPfxBytes(objHandle: HCkPfx; pfxData: HCkByteData; password: PWideChar): wordbool; stdcall;

function CkPfx_LoadPfxEncoded(objHandle: HCkPfx; encodedData: PWideChar; encoding: PWideChar; password: PWideChar): wordbool; stdcall;

function CkPfx_LoadPfxFile(objHandle: HCkPfx; path: PWideChar; password: PWideChar): wordbool; stdcall;

function CkPfx_SaveLastError(objHandle: HCkPfx; path: PWideChar): wordbool; stdcall;

function CkPfx_SetSafeBagAttr(objHandle: HCkPfx; forPrivateKey: wordbool; index: Integer; name: PWideChar; value: PWideChar; encoding: PWideChar): wordbool; stdcall;

function CkPfx_ToBinary(objHandle: HCkPfx; password: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkPfx_ToEncodedString(objHandle: HCkPfx; password: PWideChar; encoding: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkPfx__toEncodedString(objHandle: HCkPfx; password: PWideChar; encoding: PWideChar): PWideChar; stdcall;

function CkPfx_ToFile(objHandle: HCkPfx; password: PWideChar; path: PWideChar): wordbool; stdcall;

function CkPfx_ToJavaKeyStore(objHandle: HCkPfx; alias: PWideChar; password: PWideChar): HCkJavaKeyStore; stdcall;

function CkPfx_ToPem(objHandle: HCkPfx; outStr: HCkString): wordbool; stdcall;

function CkPfx__toPem(objHandle: HCkPfx): PWideChar; stdcall;

function CkPfx_ToPemEx(objHandle: HCkPfx; extendedAttrs: wordbool; noKeys: wordbool; noCerts: wordbool; noCaCerts: wordbool; encryptAlg: PWideChar; password: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkPfx__toPemEx(objHandle: HCkPfx; extendedAttrs: wordbool; noKeys: wordbool; noCerts: wordbool; noCaCerts: wordbool; encryptAlg: PWideChar; password: PWideChar): PWideChar; stdcall;

function CkPfx_UseCertVault(objHandle: HCkPfx; vault: HCkXmlCertVault): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkPfx_Create; external DLLName;
procedure CkPfx_Dispose; external DLLName;
procedure CkPfx_getAlgorithmId; external DLLName;
procedure CkPfx_putAlgorithmId; external DLLName;
function CkPfx__algorithmId; external DLLName;
procedure CkPfx_getDebugLogFilePath; external DLLName;
procedure CkPfx_putDebugLogFilePath; external DLLName;
function CkPfx__debugLogFilePath; external DLLName;
procedure CkPfx_getLastErrorHtml; external DLLName;
function CkPfx__lastErrorHtml; external DLLName;
procedure CkPfx_getLastErrorText; external DLLName;
function CkPfx__lastErrorText; external DLLName;
procedure CkPfx_getLastErrorXml; external DLLName;
function CkPfx__lastErrorXml; external DLLName;
function CkPfx_getLastMethodSuccess; external DLLName;
procedure CkPfx_putLastMethodSuccess; external DLLName;
function CkPfx_getNumCerts; external DLLName;
function CkPfx_getNumPrivateKeys; external DLLName;
procedure CkPfx_getPbes2CryptAlg; external DLLName;
procedure CkPfx_putPbes2CryptAlg; external DLLName;
function CkPfx__pbes2CryptAlg; external DLLName;
procedure CkPfx_getPbes2HmacAlg; external DLLName;
procedure CkPfx_putPbes2HmacAlg; external DLLName;
function CkPfx__pbes2HmacAlg; external DLLName;
procedure CkPfx_getUncommonOptions; external DLLName;
procedure CkPfx_putUncommonOptions; external DLLName;
function CkPfx__uncommonOptions; external DLLName;
function CkPfx_getVerboseLogging; external DLLName;
procedure CkPfx_putVerboseLogging; external DLLName;
procedure CkPfx_getVersion; external DLLName;
function CkPfx__version; external DLLName;
function CkPfx_AddCert; external DLLName;
function CkPfx_AddPrivateKey; external DLLName;
function CkPfx_FindCertByLocalKeyId; external DLLName;
function CkPfx_GetCert; external DLLName;
function CkPfx_GetPrivateKey; external DLLName;
function CkPfx_GetSafeBagAttr; external DLLName;
function CkPfx__getSafeBagAttr; external DLLName;
function CkPfx_ImportToWindows; external DLLName;
function CkPfx_LastJsonData; external DLLName;
function CkPfx_LoadPem; external DLLName;
function CkPfx_LoadPfxBytes; external DLLName;
function CkPfx_LoadPfxEncoded; external DLLName;
function CkPfx_LoadPfxFile; external DLLName;
function CkPfx_SaveLastError; external DLLName;
function CkPfx_SetSafeBagAttr; external DLLName;
function CkPfx_ToBinary; external DLLName;
function CkPfx_ToEncodedString; external DLLName;
function CkPfx__toEncodedString; external DLLName;
function CkPfx_ToFile; external DLLName;
function CkPfx_ToJavaKeyStore; external DLLName;
function CkPfx_ToPem; external DLLName;
function CkPfx__toPem; external DLLName;
function CkPfx_ToPemEx; external DLLName;
function CkPfx__toPemEx; external DLLName;
function CkPfx_UseCertVault; external DLLName;



end.
