unit Csr;

interface

type

HCkPublicKey = Pointer;
HCkBinData = Pointer;
HCkPrivateKey = Pointer;
HCkXml = Pointer;
HCkString = Pointer;
HCkCsr = Pointer;
HCkStringTable = Pointer;


function CkCsr_Create: HCkCsr; stdcall;
procedure CkCsr_Dispose(handle: HCkCsr); stdcall;
procedure CkCsr_getCommonName(objHandle: HCkCsr; outPropVal: HCkString); stdcall;

procedure CkCsr_putCommonName(objHandle: HCkCsr; newPropVal: PWideChar); stdcall;

function CkCsr__commonName(objHandle: HCkCsr): PWideChar; stdcall;

procedure CkCsr_getCompany(objHandle: HCkCsr; outPropVal: HCkString); stdcall;

procedure CkCsr_putCompany(objHandle: HCkCsr; newPropVal: PWideChar); stdcall;

function CkCsr__company(objHandle: HCkCsr): PWideChar; stdcall;

procedure CkCsr_getCompanyDivision(objHandle: HCkCsr; outPropVal: HCkString); stdcall;

procedure CkCsr_putCompanyDivision(objHandle: HCkCsr; newPropVal: PWideChar); stdcall;

function CkCsr__companyDivision(objHandle: HCkCsr): PWideChar; stdcall;

procedure CkCsr_getCountry(objHandle: HCkCsr; outPropVal: HCkString); stdcall;

procedure CkCsr_putCountry(objHandle: HCkCsr; newPropVal: PWideChar); stdcall;

function CkCsr__country(objHandle: HCkCsr): PWideChar; stdcall;

procedure CkCsr_getDebugLogFilePath(objHandle: HCkCsr; outPropVal: HCkString); stdcall;

procedure CkCsr_putDebugLogFilePath(objHandle: HCkCsr; newPropVal: PWideChar); stdcall;

function CkCsr__debugLogFilePath(objHandle: HCkCsr): PWideChar; stdcall;

procedure CkCsr_getEmailAddress(objHandle: HCkCsr; outPropVal: HCkString); stdcall;

procedure CkCsr_putEmailAddress(objHandle: HCkCsr; newPropVal: PWideChar); stdcall;

function CkCsr__emailAddress(objHandle: HCkCsr): PWideChar; stdcall;

procedure CkCsr_getHashAlgorithm(objHandle: HCkCsr; outPropVal: HCkString); stdcall;

procedure CkCsr_putHashAlgorithm(objHandle: HCkCsr; newPropVal: PWideChar); stdcall;

function CkCsr__hashAlgorithm(objHandle: HCkCsr): PWideChar; stdcall;

procedure CkCsr_getLastErrorHtml(objHandle: HCkCsr; outPropVal: HCkString); stdcall;

function CkCsr__lastErrorHtml(objHandle: HCkCsr): PWideChar; stdcall;

procedure CkCsr_getLastErrorText(objHandle: HCkCsr; outPropVal: HCkString); stdcall;

function CkCsr__lastErrorText(objHandle: HCkCsr): PWideChar; stdcall;

procedure CkCsr_getLastErrorXml(objHandle: HCkCsr; outPropVal: HCkString); stdcall;

function CkCsr__lastErrorXml(objHandle: HCkCsr): PWideChar; stdcall;

function CkCsr_getLastMethodSuccess(objHandle: HCkCsr): wordbool; stdcall;

procedure CkCsr_putLastMethodSuccess(objHandle: HCkCsr; newPropVal: wordbool); stdcall;

procedure CkCsr_getLocality(objHandle: HCkCsr; outPropVal: HCkString); stdcall;

procedure CkCsr_putLocality(objHandle: HCkCsr; newPropVal: PWideChar); stdcall;

function CkCsr__locality(objHandle: HCkCsr): PWideChar; stdcall;

procedure CkCsr_getMgfHashAlg(objHandle: HCkCsr; outPropVal: HCkString); stdcall;

procedure CkCsr_putMgfHashAlg(objHandle: HCkCsr; newPropVal: PWideChar); stdcall;

function CkCsr__mgfHashAlg(objHandle: HCkCsr): PWideChar; stdcall;

function CkCsr_getPssPadding(objHandle: HCkCsr): wordbool; stdcall;

procedure CkCsr_putPssPadding(objHandle: HCkCsr; newPropVal: wordbool); stdcall;

procedure CkCsr_getState(objHandle: HCkCsr; outPropVal: HCkString); stdcall;

procedure CkCsr_putState(objHandle: HCkCsr; newPropVal: PWideChar); stdcall;

function CkCsr__state(objHandle: HCkCsr): PWideChar; stdcall;

function CkCsr_getVerboseLogging(objHandle: HCkCsr): wordbool; stdcall;

procedure CkCsr_putVerboseLogging(objHandle: HCkCsr; newPropVal: wordbool); stdcall;

procedure CkCsr_getVersion(objHandle: HCkCsr; outPropVal: HCkString); stdcall;

function CkCsr__version(objHandle: HCkCsr): PWideChar; stdcall;

function CkCsr_AddSan(objHandle: HCkCsr; sanType: PWideChar; sanValue: PWideChar): wordbool; stdcall;

function CkCsr_GenCsrBd(objHandle: HCkCsr; privKey: HCkPrivateKey; csrData: HCkBinData): wordbool; stdcall;

function CkCsr_GenCsrPem(objHandle: HCkCsr; privKey: HCkPrivateKey; outStr: HCkString): wordbool; stdcall;

function CkCsr__genCsrPem(objHandle: HCkCsr; privKey: HCkPrivateKey): PWideChar; stdcall;

function CkCsr_GetExtensionRequest(objHandle: HCkCsr; extensionReqXml: HCkXml): wordbool; stdcall;

function CkCsr_GetPublicKey(objHandle: HCkCsr; pubkey: HCkPublicKey): wordbool; stdcall;

function CkCsr_GetSans(objHandle: HCkCsr; sans: HCkStringTable): wordbool; stdcall;

function CkCsr_GetSubjectField(objHandle: HCkCsr; oid: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkCsr__getSubjectField(objHandle: HCkCsr; oid: PWideChar): PWideChar; stdcall;

function CkCsr_LoadCsrPem(objHandle: HCkCsr; csrPemStr: PWideChar): wordbool; stdcall;

function CkCsr_SaveLastError(objHandle: HCkCsr; path: PWideChar): wordbool; stdcall;

function CkCsr_SetExtensionRequest(objHandle: HCkCsr; extensionReqXml: HCkXml): wordbool; stdcall;

function CkCsr_SetSubjectField(objHandle: HCkCsr; oid: PWideChar; value: PWideChar; asnType: PWideChar): wordbool; stdcall;

function CkCsr_VerifyCsr(objHandle: HCkCsr): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkCsr_Create; external DLLName;
procedure CkCsr_Dispose; external DLLName;
procedure CkCsr_getCommonName; external DLLName;
procedure CkCsr_putCommonName; external DLLName;
function CkCsr__commonName; external DLLName;
procedure CkCsr_getCompany; external DLLName;
procedure CkCsr_putCompany; external DLLName;
function CkCsr__company; external DLLName;
procedure CkCsr_getCompanyDivision; external DLLName;
procedure CkCsr_putCompanyDivision; external DLLName;
function CkCsr__companyDivision; external DLLName;
procedure CkCsr_getCountry; external DLLName;
procedure CkCsr_putCountry; external DLLName;
function CkCsr__country; external DLLName;
procedure CkCsr_getDebugLogFilePath; external DLLName;
procedure CkCsr_putDebugLogFilePath; external DLLName;
function CkCsr__debugLogFilePath; external DLLName;
procedure CkCsr_getEmailAddress; external DLLName;
procedure CkCsr_putEmailAddress; external DLLName;
function CkCsr__emailAddress; external DLLName;
procedure CkCsr_getHashAlgorithm; external DLLName;
procedure CkCsr_putHashAlgorithm; external DLLName;
function CkCsr__hashAlgorithm; external DLLName;
procedure CkCsr_getLastErrorHtml; external DLLName;
function CkCsr__lastErrorHtml; external DLLName;
procedure CkCsr_getLastErrorText; external DLLName;
function CkCsr__lastErrorText; external DLLName;
procedure CkCsr_getLastErrorXml; external DLLName;
function CkCsr__lastErrorXml; external DLLName;
function CkCsr_getLastMethodSuccess; external DLLName;
procedure CkCsr_putLastMethodSuccess; external DLLName;
procedure CkCsr_getLocality; external DLLName;
procedure CkCsr_putLocality; external DLLName;
function CkCsr__locality; external DLLName;
procedure CkCsr_getMgfHashAlg; external DLLName;
procedure CkCsr_putMgfHashAlg; external DLLName;
function CkCsr__mgfHashAlg; external DLLName;
function CkCsr_getPssPadding; external DLLName;
procedure CkCsr_putPssPadding; external DLLName;
procedure CkCsr_getState; external DLLName;
procedure CkCsr_putState; external DLLName;
function CkCsr__state; external DLLName;
function CkCsr_getVerboseLogging; external DLLName;
procedure CkCsr_putVerboseLogging; external DLLName;
procedure CkCsr_getVersion; external DLLName;
function CkCsr__version; external DLLName;
function CkCsr_AddSan; external DLLName;
function CkCsr_GenCsrBd; external DLLName;
function CkCsr_GenCsrPem; external DLLName;
function CkCsr__genCsrPem; external DLLName;
function CkCsr_GetExtensionRequest; external DLLName;
function CkCsr_GetPublicKey; external DLLName;
function CkCsr_GetSans; external DLLName;
function CkCsr_GetSubjectField; external DLLName;
function CkCsr__getSubjectField; external DLLName;
function CkCsr_LoadCsrPem; external DLLName;
function CkCsr_SaveLastError; external DLLName;
function CkCsr_SetExtensionRequest; external DLLName;
function CkCsr_SetSubjectField; external DLLName;
function CkCsr_VerifyCsr; external DLLName;



end.
