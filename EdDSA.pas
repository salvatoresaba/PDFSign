unit EdDSA;

interface

type

HCkPublicKey = Pointer;
HCkBinData = Pointer;
HCkPrivateKey = Pointer;
HCkPrng = Pointer;
HCkString = Pointer;
HCkEdDSA = Pointer;


function CkEdDSA_Create: HCkEdDSA; stdcall;
procedure CkEdDSA_Dispose(handle: HCkEdDSA); stdcall;
procedure CkEdDSA_getAlgorithm(objHandle: HCkEdDSA; outPropVal: HCkString); stdcall;

procedure CkEdDSA_putAlgorithm(objHandle: HCkEdDSA; newPropVal: PWideChar); stdcall;

function CkEdDSA__algorithm(objHandle: HCkEdDSA): PWideChar; stdcall;

procedure CkEdDSA_getContext(objHandle: HCkEdDSA; outPropVal: HCkString); stdcall;

procedure CkEdDSA_putContext(objHandle: HCkEdDSA; newPropVal: PWideChar); stdcall;

function CkEdDSA__context(objHandle: HCkEdDSA): PWideChar; stdcall;

procedure CkEdDSA_getDebugLogFilePath(objHandle: HCkEdDSA; outPropVal: HCkString); stdcall;

procedure CkEdDSA_putDebugLogFilePath(objHandle: HCkEdDSA; newPropVal: PWideChar); stdcall;

function CkEdDSA__debugLogFilePath(objHandle: HCkEdDSA): PWideChar; stdcall;

procedure CkEdDSA_getLastErrorHtml(objHandle: HCkEdDSA; outPropVal: HCkString); stdcall;

function CkEdDSA__lastErrorHtml(objHandle: HCkEdDSA): PWideChar; stdcall;

procedure CkEdDSA_getLastErrorText(objHandle: HCkEdDSA; outPropVal: HCkString); stdcall;

function CkEdDSA__lastErrorText(objHandle: HCkEdDSA): PWideChar; stdcall;

procedure CkEdDSA_getLastErrorXml(objHandle: HCkEdDSA; outPropVal: HCkString); stdcall;

function CkEdDSA__lastErrorXml(objHandle: HCkEdDSA): PWideChar; stdcall;

function CkEdDSA_getLastMethodSuccess(objHandle: HCkEdDSA): wordbool; stdcall;

procedure CkEdDSA_putLastMethodSuccess(objHandle: HCkEdDSA; newPropVal: wordbool); stdcall;

function CkEdDSA_getVerboseLogging(objHandle: HCkEdDSA): wordbool; stdcall;

procedure CkEdDSA_putVerboseLogging(objHandle: HCkEdDSA; newPropVal: wordbool); stdcall;

procedure CkEdDSA_getVersion(objHandle: HCkEdDSA; outPropVal: HCkString); stdcall;

function CkEdDSA__version(objHandle: HCkEdDSA): PWideChar; stdcall;

function CkEdDSA_GenEd25519Key(objHandle: HCkEdDSA; prng: HCkPrng; privKey: HCkPrivateKey): wordbool; stdcall;

function CkEdDSA_SaveLastError(objHandle: HCkEdDSA; path: PWideChar): wordbool; stdcall;

function CkEdDSA_SharedSecretENC(objHandle: HCkEdDSA; privkey: HCkPrivateKey; pubkey: HCkPublicKey; encoding: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkEdDSA__sharedSecretENC(objHandle: HCkEdDSA; privkey: HCkPrivateKey; pubkey: HCkPublicKey; encoding: PWideChar): PWideChar; stdcall;

function CkEdDSA_SignBdENC(objHandle: HCkEdDSA; bd: HCkBinData; encoding: PWideChar; privkey: HCkPrivateKey; outStr: HCkString): wordbool; stdcall;

function CkEdDSA__signBdENC(objHandle: HCkEdDSA; bd: HCkBinData; encoding: PWideChar; privkey: HCkPrivateKey): PWideChar; stdcall;

function CkEdDSA_VerifyBdENC(objHandle: HCkEdDSA; bd: HCkBinData; encodedSig: PWideChar; enocding: PWideChar; pubkey: HCkPublicKey): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkEdDSA_Create; external DLLName;
procedure CkEdDSA_Dispose; external DLLName;
procedure CkEdDSA_getAlgorithm; external DLLName;
procedure CkEdDSA_putAlgorithm; external DLLName;
function CkEdDSA__algorithm; external DLLName;
procedure CkEdDSA_getContext; external DLLName;
procedure CkEdDSA_putContext; external DLLName;
function CkEdDSA__context; external DLLName;
procedure CkEdDSA_getDebugLogFilePath; external DLLName;
procedure CkEdDSA_putDebugLogFilePath; external DLLName;
function CkEdDSA__debugLogFilePath; external DLLName;
procedure CkEdDSA_getLastErrorHtml; external DLLName;
function CkEdDSA__lastErrorHtml; external DLLName;
procedure CkEdDSA_getLastErrorText; external DLLName;
function CkEdDSA__lastErrorText; external DLLName;
procedure CkEdDSA_getLastErrorXml; external DLLName;
function CkEdDSA__lastErrorXml; external DLLName;
function CkEdDSA_getLastMethodSuccess; external DLLName;
procedure CkEdDSA_putLastMethodSuccess; external DLLName;
function CkEdDSA_getVerboseLogging; external DLLName;
procedure CkEdDSA_putVerboseLogging; external DLLName;
procedure CkEdDSA_getVersion; external DLLName;
function CkEdDSA__version; external DLLName;
function CkEdDSA_GenEd25519Key; external DLLName;
function CkEdDSA_SaveLastError; external DLLName;
function CkEdDSA_SharedSecretENC; external DLLName;
function CkEdDSA__sharedSecretENC; external DLLName;
function CkEdDSA_SignBdENC; external DLLName;
function CkEdDSA__signBdENC; external DLLName;
function CkEdDSA_VerifyBdENC; external DLLName;



end.
