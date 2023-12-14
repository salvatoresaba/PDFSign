unit Dsa;

interface

type

HCkDsa = Pointer;
HCkByteData = Pointer;
HCkString = Pointer;


function CkDsa_Create: HCkDsa; stdcall;
procedure CkDsa_Dispose(handle: HCkDsa); stdcall;
procedure CkDsa_getDebugLogFilePath(objHandle: HCkDsa; outPropVal: HCkString); stdcall;

procedure CkDsa_putDebugLogFilePath(objHandle: HCkDsa; newPropVal: PWideChar); stdcall;

function CkDsa__debugLogFilePath(objHandle: HCkDsa): PWideChar; stdcall;

function CkDsa_getGroupSize(objHandle: HCkDsa): Integer; stdcall;

procedure CkDsa_putGroupSize(objHandle: HCkDsa; newPropVal: Integer); stdcall;

procedure CkDsa_getHash(objHandle: HCkDsa; outPropVal: HCkByteData); stdcall;

procedure CkDsa_putHash(objHandle: HCkDsa; newPropVal: HCkByteData); stdcall;

procedure CkDsa_getHexG(objHandle: HCkDsa; outPropVal: HCkString); stdcall;

function CkDsa__hexG(objHandle: HCkDsa): PWideChar; stdcall;

procedure CkDsa_getHexP(objHandle: HCkDsa; outPropVal: HCkString); stdcall;

function CkDsa__hexP(objHandle: HCkDsa): PWideChar; stdcall;

procedure CkDsa_getHexQ(objHandle: HCkDsa; outPropVal: HCkString); stdcall;

function CkDsa__hexQ(objHandle: HCkDsa): PWideChar; stdcall;

procedure CkDsa_getHexX(objHandle: HCkDsa; outPropVal: HCkString); stdcall;

function CkDsa__hexX(objHandle: HCkDsa): PWideChar; stdcall;

procedure CkDsa_getHexY(objHandle: HCkDsa; outPropVal: HCkString); stdcall;

function CkDsa__hexY(objHandle: HCkDsa): PWideChar; stdcall;

procedure CkDsa_getLastErrorHtml(objHandle: HCkDsa; outPropVal: HCkString); stdcall;

function CkDsa__lastErrorHtml(objHandle: HCkDsa): PWideChar; stdcall;

procedure CkDsa_getLastErrorText(objHandle: HCkDsa; outPropVal: HCkString); stdcall;

function CkDsa__lastErrorText(objHandle: HCkDsa): PWideChar; stdcall;

procedure CkDsa_getLastErrorXml(objHandle: HCkDsa; outPropVal: HCkString); stdcall;

function CkDsa__lastErrorXml(objHandle: HCkDsa): PWideChar; stdcall;

function CkDsa_getLastMethodSuccess(objHandle: HCkDsa): wordbool; stdcall;

procedure CkDsa_putLastMethodSuccess(objHandle: HCkDsa; newPropVal: wordbool); stdcall;

procedure CkDsa_getSignature(objHandle: HCkDsa; outPropVal: HCkByteData); stdcall;

procedure CkDsa_putSignature(objHandle: HCkDsa; newPropVal: HCkByteData); stdcall;

procedure CkDsa_getUncommonOptions(objHandle: HCkDsa; outPropVal: HCkString); stdcall;

procedure CkDsa_putUncommonOptions(objHandle: HCkDsa; newPropVal: PWideChar); stdcall;

function CkDsa__uncommonOptions(objHandle: HCkDsa): PWideChar; stdcall;

function CkDsa_getVerboseLogging(objHandle: HCkDsa): wordbool; stdcall;

procedure CkDsa_putVerboseLogging(objHandle: HCkDsa; newPropVal: wordbool); stdcall;

procedure CkDsa_getVersion(objHandle: HCkDsa; outPropVal: HCkString); stdcall;

function CkDsa__version(objHandle: HCkDsa): PWideChar; stdcall;

function CkDsa_FromDer(objHandle: HCkDsa; derData: HCkByteData): wordbool; stdcall;

function CkDsa_FromDerFile(objHandle: HCkDsa; path: PWideChar): wordbool; stdcall;

function CkDsa_FromEncryptedPem(objHandle: HCkDsa; password: PWideChar; pemData: PWideChar): wordbool; stdcall;

function CkDsa_FromPem(objHandle: HCkDsa; pemData: PWideChar): wordbool; stdcall;

function CkDsa_FromPublicDer(objHandle: HCkDsa; derData: HCkByteData): wordbool; stdcall;

function CkDsa_FromPublicDerFile(objHandle: HCkDsa; path: PWideChar): wordbool; stdcall;

function CkDsa_FromPublicPem(objHandle: HCkDsa; pemData: PWideChar): wordbool; stdcall;

function CkDsa_FromXml(objHandle: HCkDsa; xmlKey: PWideChar): wordbool; stdcall;

function CkDsa_GenKey(objHandle: HCkDsa; numBits: Integer): wordbool; stdcall;

function CkDsa_GenKey2(objHandle: HCkDsa; keyLenBits: Integer; modLenBits: Integer): wordbool; stdcall;

function CkDsa_GenKeyFromParamsDer(objHandle: HCkDsa; derBytes: HCkByteData): wordbool; stdcall;

function CkDsa_GenKeyFromParamsDerFile(objHandle: HCkDsa; path: PWideChar): wordbool; stdcall;

function CkDsa_GenKeyFromParamsPem(objHandle: HCkDsa; pem: PWideChar): wordbool; stdcall;

function CkDsa_GenKeyFromParamsPemFile(objHandle: HCkDsa; path: PWideChar): wordbool; stdcall;

function CkDsa_GenKeyFromPQG(objHandle: HCkDsa; pHex: PWideChar; qHex: PWideChar; gHex: PWideChar): wordbool; stdcall;

function CkDsa_GetEncodedHash(objHandle: HCkDsa; encoding: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkDsa__getEncodedHash(objHandle: HCkDsa; encoding: PWideChar): PWideChar; stdcall;

function CkDsa_GetEncodedSignature(objHandle: HCkDsa; encoding: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkDsa__getEncodedSignature(objHandle: HCkDsa; encoding: PWideChar): PWideChar; stdcall;

function CkDsa_LoadText(objHandle: HCkDsa; path: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkDsa__loadText(objHandle: HCkDsa; path: PWideChar): PWideChar; stdcall;

function CkDsa_SaveLastError(objHandle: HCkDsa; path: PWideChar): wordbool; stdcall;

function CkDsa_SaveText(objHandle: HCkDsa; strToSave: PWideChar; path: PWideChar): wordbool; stdcall;

function CkDsa_SetEncodedHash(objHandle: HCkDsa; encoding: PWideChar; encodedHash: PWideChar): wordbool; stdcall;

function CkDsa_SetEncodedSignature(objHandle: HCkDsa; encoding: PWideChar; encodedSig: PWideChar): wordbool; stdcall;

function CkDsa_SetEncodedSignatureRS(objHandle: HCkDsa; encoding: PWideChar; encodedR: PWideChar; encodedS: PWideChar): wordbool; stdcall;

function CkDsa_SetKeyExplicit(objHandle: HCkDsa; groupSizeInBytes: Integer; pHex: PWideChar; qHex: PWideChar; gHex: PWideChar; xHex: PWideChar): wordbool; stdcall;

function CkDsa_SetPubKeyExplicit(objHandle: HCkDsa; groupSizeInBytes: Integer; pHex: PWideChar; qHex: PWideChar; gHex: PWideChar; yHex: PWideChar): wordbool; stdcall;

function CkDsa_SignHash(objHandle: HCkDsa): wordbool; stdcall;

function CkDsa_ToDer(objHandle: HCkDsa; outData: HCkByteData): wordbool; stdcall;

function CkDsa_ToDerFile(objHandle: HCkDsa; path: PWideChar): wordbool; stdcall;

function CkDsa_ToEncryptedPem(objHandle: HCkDsa; password: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkDsa__toEncryptedPem(objHandle: HCkDsa; password: PWideChar): PWideChar; stdcall;

function CkDsa_ToPem(objHandle: HCkDsa; outStr: HCkString): wordbool; stdcall;

function CkDsa__toPem(objHandle: HCkDsa): PWideChar; stdcall;

function CkDsa_ToPublicDer(objHandle: HCkDsa; outData: HCkByteData): wordbool; stdcall;

function CkDsa_ToPublicDerFile(objHandle: HCkDsa; path: PWideChar): wordbool; stdcall;

function CkDsa_ToPublicPem(objHandle: HCkDsa; outStr: HCkString): wordbool; stdcall;

function CkDsa__toPublicPem(objHandle: HCkDsa): PWideChar; stdcall;

function CkDsa_ToXml(objHandle: HCkDsa; bPublicOnly: wordbool; outStr: HCkString): wordbool; stdcall;

function CkDsa__toXml(objHandle: HCkDsa; bPublicOnly: wordbool): PWideChar; stdcall;

function CkDsa_UnlockComponent(objHandle: HCkDsa; unlockCode: PWideChar): wordbool; stdcall;

function CkDsa_Verify(objHandle: HCkDsa): wordbool; stdcall;

function CkDsa_VerifyKey(objHandle: HCkDsa): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkDsa_Create; external DLLName;
procedure CkDsa_Dispose; external DLLName;
procedure CkDsa_getDebugLogFilePath; external DLLName;
procedure CkDsa_putDebugLogFilePath; external DLLName;
function CkDsa__debugLogFilePath; external DLLName;
function CkDsa_getGroupSize; external DLLName;
procedure CkDsa_putGroupSize; external DLLName;
procedure CkDsa_getHash; external DLLName;
procedure CkDsa_putHash; external DLLName;
procedure CkDsa_getHexG; external DLLName;
function CkDsa__hexG; external DLLName;
procedure CkDsa_getHexP; external DLLName;
function CkDsa__hexP; external DLLName;
procedure CkDsa_getHexQ; external DLLName;
function CkDsa__hexQ; external DLLName;
procedure CkDsa_getHexX; external DLLName;
function CkDsa__hexX; external DLLName;
procedure CkDsa_getHexY; external DLLName;
function CkDsa__hexY; external DLLName;
procedure CkDsa_getLastErrorHtml; external DLLName;
function CkDsa__lastErrorHtml; external DLLName;
procedure CkDsa_getLastErrorText; external DLLName;
function CkDsa__lastErrorText; external DLLName;
procedure CkDsa_getLastErrorXml; external DLLName;
function CkDsa__lastErrorXml; external DLLName;
function CkDsa_getLastMethodSuccess; external DLLName;
procedure CkDsa_putLastMethodSuccess; external DLLName;
procedure CkDsa_getSignature; external DLLName;
procedure CkDsa_putSignature; external DLLName;
procedure CkDsa_getUncommonOptions; external DLLName;
procedure CkDsa_putUncommonOptions; external DLLName;
function CkDsa__uncommonOptions; external DLLName;
function CkDsa_getVerboseLogging; external DLLName;
procedure CkDsa_putVerboseLogging; external DLLName;
procedure CkDsa_getVersion; external DLLName;
function CkDsa__version; external DLLName;
function CkDsa_FromDer; external DLLName;
function CkDsa_FromDerFile; external DLLName;
function CkDsa_FromEncryptedPem; external DLLName;
function CkDsa_FromPem; external DLLName;
function CkDsa_FromPublicDer; external DLLName;
function CkDsa_FromPublicDerFile; external DLLName;
function CkDsa_FromPublicPem; external DLLName;
function CkDsa_FromXml; external DLLName;
function CkDsa_GenKey; external DLLName;
function CkDsa_GenKey2; external DLLName;
function CkDsa_GenKeyFromParamsDer; external DLLName;
function CkDsa_GenKeyFromParamsDerFile; external DLLName;
function CkDsa_GenKeyFromParamsPem; external DLLName;
function CkDsa_GenKeyFromParamsPemFile; external DLLName;
function CkDsa_GenKeyFromPQG; external DLLName;
function CkDsa_GetEncodedHash; external DLLName;
function CkDsa__getEncodedHash; external DLLName;
function CkDsa_GetEncodedSignature; external DLLName;
function CkDsa__getEncodedSignature; external DLLName;
function CkDsa_LoadText; external DLLName;
function CkDsa__loadText; external DLLName;
function CkDsa_SaveLastError; external DLLName;
function CkDsa_SaveText; external DLLName;
function CkDsa_SetEncodedHash; external DLLName;
function CkDsa_SetEncodedSignature; external DLLName;
function CkDsa_SetEncodedSignatureRS; external DLLName;
function CkDsa_SetKeyExplicit; external DLLName;
function CkDsa_SetPubKeyExplicit; external DLLName;
function CkDsa_SignHash; external DLLName;
function CkDsa_ToDer; external DLLName;
function CkDsa_ToDerFile; external DLLName;
function CkDsa_ToEncryptedPem; external DLLName;
function CkDsa__toEncryptedPem; external DLLName;
function CkDsa_ToPem; external DLLName;
function CkDsa__toPem; external DLLName;
function CkDsa_ToPublicDer; external DLLName;
function CkDsa_ToPublicDerFile; external DLLName;
function CkDsa_ToPublicPem; external DLLName;
function CkDsa__toPublicPem; external DLLName;
function CkDsa_ToXml; external DLLName;
function CkDsa__toXml; external DLLName;
function CkDsa_UnlockComponent; external DLLName;
function CkDsa_Verify; external DLLName;
function CkDsa_VerifyKey; external DLLName;



end.
