unit Ecc;

interface

type

HCkPublicKey = Pointer;
HCkBinData = Pointer;
HCkEcc = Pointer;
HCkPrivateKey = Pointer;
HCkPrng = Pointer;
HCkString = Pointer;
HCkCert = Pointer;


function CkEcc_Create: HCkEcc; stdcall;
procedure CkEcc_Dispose(handle: HCkEcc); stdcall;
procedure CkEcc_getDebugLogFilePath(objHandle: HCkEcc; outPropVal: HCkString); stdcall;

procedure CkEcc_putDebugLogFilePath(objHandle: HCkEcc; newPropVal: PWideChar); stdcall;

function CkEcc__debugLogFilePath(objHandle: HCkEcc): PWideChar; stdcall;

procedure CkEcc_getLastErrorHtml(objHandle: HCkEcc; outPropVal: HCkString); stdcall;

function CkEcc__lastErrorHtml(objHandle: HCkEcc): PWideChar; stdcall;

procedure CkEcc_getLastErrorText(objHandle: HCkEcc; outPropVal: HCkString); stdcall;

function CkEcc__lastErrorText(objHandle: HCkEcc): PWideChar; stdcall;

procedure CkEcc_getLastErrorXml(objHandle: HCkEcc; outPropVal: HCkString); stdcall;

function CkEcc__lastErrorXml(objHandle: HCkEcc): PWideChar; stdcall;

function CkEcc_getLastMethodSuccess(objHandle: HCkEcc): wordbool; stdcall;

procedure CkEcc_putLastMethodSuccess(objHandle: HCkEcc; newPropVal: wordbool); stdcall;

function CkEcc_getVerboseLogging(objHandle: HCkEcc): wordbool; stdcall;

procedure CkEcc_putVerboseLogging(objHandle: HCkEcc; newPropVal: wordbool); stdcall;

procedure CkEcc_getVersion(objHandle: HCkEcc; outPropVal: HCkString); stdcall;

function CkEcc__version(objHandle: HCkEcc): PWideChar; stdcall;

function CkEcc_GenEccKey(objHandle: HCkEcc; curveName: PWideChar; prng: HCkPrng): HCkPrivateKey; stdcall;

function CkEcc_GenEccKey2(objHandle: HCkEcc; curveName: PWideChar; encodedK: PWideChar; encoding: PWideChar): HCkPrivateKey; stdcall;

function CkEcc_SaveLastError(objHandle: HCkEcc; path: PWideChar): wordbool; stdcall;

function CkEcc_SharedSecretENC(objHandle: HCkEcc; privKey: HCkPrivateKey; pubKey: HCkPublicKey; encoding: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkEcc__sharedSecretENC(objHandle: HCkEcc; privKey: HCkPrivateKey; pubKey: HCkPublicKey; encoding: PWideChar): PWideChar; stdcall;

function CkEcc_SignBd(objHandle: HCkEcc; bdData: HCkBinData; hashAlg: PWideChar; encoding: PWideChar; privKey: HCkPrivateKey; prng: HCkPrng; outStr: HCkString): wordbool; stdcall;

function CkEcc__signBd(objHandle: HCkEcc; bdData: HCkBinData; hashAlg: PWideChar; encoding: PWideChar; privKey: HCkPrivateKey; prng: HCkPrng): PWideChar; stdcall;

function CkEcc_SignBdUsingCert(objHandle: HCkEcc; bdData: HCkBinData; hashAlg: PWideChar; encoding: PWideChar; cert: HCkCert; outStr: HCkString): wordbool; stdcall;

function CkEcc__signBdUsingCert(objHandle: HCkEcc; bdData: HCkBinData; hashAlg: PWideChar; encoding: PWideChar; cert: HCkCert): PWideChar; stdcall;

function CkEcc_SignHashENC(objHandle: HCkEcc; encodedHash: PWideChar; encoding: PWideChar; privkey: HCkPrivateKey; prng: HCkPrng; outStr: HCkString): wordbool; stdcall;

function CkEcc__signHashENC(objHandle: HCkEcc; encodedHash: PWideChar; encoding: PWideChar; privkey: HCkPrivateKey; prng: HCkPrng): PWideChar; stdcall;

function CkEcc_VerifyBd(objHandle: HCkEcc; bdData: HCkBinData; hashAlg: PWideChar; encodedSig: PWideChar; encoding: PWideChar; pubkey: HCkPublicKey): Integer; stdcall;

function CkEcc_VerifyHashENC(objHandle: HCkEcc; encodedHash: PWideChar; encodedSig: PWideChar; encoding: PWideChar; pubkey: HCkPublicKey): Integer; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkEcc_Create; external DLLName;
procedure CkEcc_Dispose; external DLLName;
procedure CkEcc_getDebugLogFilePath; external DLLName;
procedure CkEcc_putDebugLogFilePath; external DLLName;
function CkEcc__debugLogFilePath; external DLLName;
procedure CkEcc_getLastErrorHtml; external DLLName;
function CkEcc__lastErrorHtml; external DLLName;
procedure CkEcc_getLastErrorText; external DLLName;
function CkEcc__lastErrorText; external DLLName;
procedure CkEcc_getLastErrorXml; external DLLName;
function CkEcc__lastErrorXml; external DLLName;
function CkEcc_getLastMethodSuccess; external DLLName;
procedure CkEcc_putLastMethodSuccess; external DLLName;
function CkEcc_getVerboseLogging; external DLLName;
procedure CkEcc_putVerboseLogging; external DLLName;
procedure CkEcc_getVersion; external DLLName;
function CkEcc__version; external DLLName;
function CkEcc_GenEccKey; external DLLName;
function CkEcc_GenEccKey2; external DLLName;
function CkEcc_SaveLastError; external DLLName;
function CkEcc_SharedSecretENC; external DLLName;
function CkEcc__sharedSecretENC; external DLLName;
function CkEcc_SignBd; external DLLName;
function CkEcc__signBd; external DLLName;
function CkEcc_SignBdUsingCert; external DLLName;
function CkEcc__signBdUsingCert; external DLLName;
function CkEcc_SignHashENC; external DLLName;
function CkEcc__signHashENC; external DLLName;
function CkEcc_VerifyBd; external DLLName;
function CkEcc_VerifyHashENC; external DLLName;



end.
