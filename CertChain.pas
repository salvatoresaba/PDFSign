unit CertChain;

interface

type

HCkCert = Pointer;
HCkCertChain = Pointer;
HCkJsonObject = Pointer;
HCkTrustedRoots = Pointer;
HCkString = Pointer;


function CkCertChain_Create: HCkCertChain; stdcall;
procedure CkCertChain_Dispose(handle: HCkCertChain); stdcall;
procedure CkCertChain_getDebugLogFilePath(objHandle: HCkCertChain; outPropVal: HCkString); stdcall;

procedure CkCertChain_putDebugLogFilePath(objHandle: HCkCertChain; newPropVal: PWideChar); stdcall;

function CkCertChain__debugLogFilePath(objHandle: HCkCertChain): PWideChar; stdcall;

procedure CkCertChain_getLastErrorHtml(objHandle: HCkCertChain; outPropVal: HCkString); stdcall;

function CkCertChain__lastErrorHtml(objHandle: HCkCertChain): PWideChar; stdcall;

procedure CkCertChain_getLastErrorText(objHandle: HCkCertChain; outPropVal: HCkString); stdcall;

function CkCertChain__lastErrorText(objHandle: HCkCertChain): PWideChar; stdcall;

procedure CkCertChain_getLastErrorXml(objHandle: HCkCertChain; outPropVal: HCkString); stdcall;

function CkCertChain__lastErrorXml(objHandle: HCkCertChain): PWideChar; stdcall;

function CkCertChain_getLastMethodSuccess(objHandle: HCkCertChain): wordbool; stdcall;

procedure CkCertChain_putLastMethodSuccess(objHandle: HCkCertChain; newPropVal: wordbool); stdcall;

function CkCertChain_getNumCerts(objHandle: HCkCertChain): Integer; stdcall;

function CkCertChain_getNumExpiredCerts(objHandle: HCkCertChain): Integer; stdcall;

function CkCertChain_getReachesRoot(objHandle: HCkCertChain): wordbool; stdcall;

function CkCertChain_getVerboseLogging(objHandle: HCkCertChain): wordbool; stdcall;

procedure CkCertChain_putVerboseLogging(objHandle: HCkCertChain; newPropVal: wordbool); stdcall;

procedure CkCertChain_getVersion(objHandle: HCkCertChain; outPropVal: HCkString); stdcall;

function CkCertChain__version(objHandle: HCkCertChain): PWideChar; stdcall;

function CkCertChain_GetCert(objHandle: HCkCertChain; index: Integer): HCkCert; stdcall;

function CkCertChain_IsRootTrusted(objHandle: HCkCertChain; trustedRoots: HCkTrustedRoots): wordbool; stdcall;

function CkCertChain_LoadX5C(objHandle: HCkCertChain; jwk: HCkJsonObject): wordbool; stdcall;

function CkCertChain_SaveLastError(objHandle: HCkCertChain; path: PWideChar): wordbool; stdcall;

function CkCertChain_VerifyCertSignatures(objHandle: HCkCertChain): wordbool; stdcall;

function CkCertChain_X509PKIPathv1(objHandle: HCkCertChain; outStr: HCkString): wordbool; stdcall;

function CkCertChain__x509PKIPathv1(objHandle: HCkCertChain): PWideChar; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkCertChain_Create; external DLLName;
procedure CkCertChain_Dispose; external DLLName;
procedure CkCertChain_getDebugLogFilePath; external DLLName;
procedure CkCertChain_putDebugLogFilePath; external DLLName;
function CkCertChain__debugLogFilePath; external DLLName;
procedure CkCertChain_getLastErrorHtml; external DLLName;
function CkCertChain__lastErrorHtml; external DLLName;
procedure CkCertChain_getLastErrorText; external DLLName;
function CkCertChain__lastErrorText; external DLLName;
procedure CkCertChain_getLastErrorXml; external DLLName;
function CkCertChain__lastErrorXml; external DLLName;
function CkCertChain_getLastMethodSuccess; external DLLName;
procedure CkCertChain_putLastMethodSuccess; external DLLName;
function CkCertChain_getNumCerts; external DLLName;
function CkCertChain_getNumExpiredCerts; external DLLName;
function CkCertChain_getReachesRoot; external DLLName;
function CkCertChain_getVerboseLogging; external DLLName;
procedure CkCertChain_putVerboseLogging; external DLLName;
procedure CkCertChain_getVersion; external DLLName;
function CkCertChain__version; external DLLName;
function CkCertChain_GetCert; external DLLName;
function CkCertChain_IsRootTrusted; external DLLName;
function CkCertChain_LoadX5C; external DLLName;
function CkCertChain_SaveLastError; external DLLName;
function CkCertChain_VerifyCertSignatures; external DLLName;
function CkCertChain_X509PKIPathv1; external DLLName;
function CkCertChain__x509PKIPathv1; external DLLName;



end.
