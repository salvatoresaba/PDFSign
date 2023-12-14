unit Pdf;

interface

type

HCkPrivateKey = Pointer;
HCkJsonObject = Pointer;
HCkHttp = Pointer;
HCkTask = Pointer;
HCkString = Pointer;
HCkStringBuilder = Pointer;
HCkCert = Pointer;
HCkPdf = Pointer;
HCkBinData = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TPdfAbortCheck = function(): Integer; cdecl;
TPdfProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TPdfPercentDone = function(pctDone: Integer): Integer; cdecl;
TPdfTaskCompleted = procedure(task: HCkTask); cdecl;


function CkPdf_Create: HCkPdf; stdcall;
procedure CkPdf_Dispose(handle: HCkPdf); stdcall;

procedure CkPdf_SetAbortCheck(objHandle: HCkPdf; fn: TPdfAbortCheck) stdcall;
procedure CkPdf_SetProgressInfo(objHandle: HCkPdf; fn: TPdfProgressInfo) stdcall;
procedure CkPdf_SetPercentDone(objHandle: HCkPdf; fn: TPdfPercentDone) stdcall;
procedure CkPdf_SetTaskCompleted(objHandle: HCkPdf; fn: TPdfTaskCompleted) stdcall;
procedure CkPdf_getDebugLogFilePath(objHandle: HCkPdf; outPropVal: HCkString); stdcall;

procedure CkPdf_putDebugLogFilePath(objHandle: HCkPdf; newPropVal: PWideChar); stdcall;

function CkPdf__debugLogFilePath(objHandle: HCkPdf): PWideChar; stdcall;

function CkPdf_getHasCertificationSig(objHandle: HCkPdf): wordbool; stdcall;

procedure CkPdf_getLastErrorHtml(objHandle: HCkPdf; outPropVal: HCkString); stdcall;

function CkPdf__lastErrorHtml(objHandle: HCkPdf): PWideChar; stdcall;

procedure CkPdf_getLastErrorText(objHandle: HCkPdf; outPropVal: HCkString); stdcall;

function CkPdf__lastErrorText(objHandle: HCkPdf): PWideChar; stdcall;

procedure CkPdf_getLastErrorXml(objHandle: HCkPdf; outPropVal: HCkString); stdcall;

function CkPdf__lastErrorXml(objHandle: HCkPdf): PWideChar; stdcall;

function CkPdf_getLastMethodSuccess(objHandle: HCkPdf): wordbool; stdcall;

procedure CkPdf_putLastMethodSuccess(objHandle: HCkPdf; newPropVal: wordbool); stdcall;

function CkPdf_getNumEmbeddedFiles(objHandle: HCkPdf): Integer; stdcall;

function CkPdf_getNumPages(objHandle: HCkPdf): Integer; stdcall;

function CkPdf_getNumSignatures(objHandle: HCkPdf): Integer; stdcall;

function CkPdf_getSigAllocateSize(objHandle: HCkPdf): Integer; stdcall;

procedure CkPdf_putSigAllocateSize(objHandle: HCkPdf; newPropVal: Integer); stdcall;

procedure CkPdf_getUncommonOptions(objHandle: HCkPdf; outPropVal: HCkString); stdcall;

procedure CkPdf_putUncommonOptions(objHandle: HCkPdf; newPropVal: PWideChar); stdcall;

function CkPdf__uncommonOptions(objHandle: HCkPdf): PWideChar; stdcall;

function CkPdf_getVerboseLogging(objHandle: HCkPdf): wordbool; stdcall;

procedure CkPdf_putVerboseLogging(objHandle: HCkPdf; newPropVal: wordbool); stdcall;

procedure CkPdf_getVersion(objHandle: HCkPdf; outPropVal: HCkString); stdcall;

function CkPdf__version(objHandle: HCkPdf): PWideChar; stdcall;

function CkPdf_AddSigningCert(objHandle: HCkPdf; cert: HCkCert): wordbool; stdcall;

function CkPdf_AddVerificationInfo(objHandle: HCkPdf; jsonOptions: HCkJsonObject; outFilePath: PWideChar): wordbool; stdcall;

function CkPdf_AddVerificationInfoAsync(objHandle: HCkPdf; jsonOptions: HCkJsonObject; outFilePath: PWideChar): HCkTask; stdcall;

function CkPdf_GetDss(objHandle: HCkPdf; json: HCkJsonObject): wordbool; stdcall;

function CkPdf_GetEmbeddedFileBd(objHandle: HCkPdf; index: Integer; bd: HCkBinData): wordbool; stdcall;

function CkPdf_GetEmbeddedFileInfo(objHandle: HCkPdf; index: Integer; json: HCkJsonObject): wordbool; stdcall;

function CkPdf_GetMetadata(objHandle: HCkPdf; sb: HCkStringBuilder): wordbool; stdcall;

function CkPdf_GetSignatureContent(objHandle: HCkPdf; index: Integer; bd: HCkBinData): wordbool; stdcall;

function CkPdf_GetSignerCert(objHandle: HCkPdf; index: Integer; cert: HCkCert): wordbool; stdcall;

function CkPdf_GetUnsignedSigFields(objHandle: HCkPdf; json: HCkJsonObject): wordbool; stdcall;

function CkPdf_LastJsonData(objHandle: HCkPdf): HCkJsonObject; stdcall;

function CkPdf_LoadBd(objHandle: HCkPdf; pdfData: HCkBinData): wordbool; stdcall;

function CkPdf_LoadFile(objHandle: HCkPdf; filePath: PWideChar): wordbool; stdcall;

function CkPdf_SaveLastError(objHandle: HCkPdf; path: PWideChar): wordbool; stdcall;

procedure CkPdf_SetHttpObj(objHandle: HCkPdf; http: HCkHttp); stdcall;

function CkPdf_SetSignatureJpeg(objHandle: HCkPdf; jpgData: HCkBinData): wordbool; stdcall;

function CkPdf_SetSigningCert(objHandle: HCkPdf; cert: HCkCert): wordbool; stdcall;

function CkPdf_SetSigningCert2(objHandle: HCkPdf; cert: HCkCert; privateKey: HCkPrivateKey): wordbool; stdcall;

function CkPdf_SignPdf(objHandle: HCkPdf; jsonOptions: HCkJsonObject; outFilePath: PWideChar): wordbool; stdcall;

function CkPdf_SignPdfAsync(objHandle: HCkPdf; jsonOptions: HCkJsonObject; outFilePath: PWideChar): HCkTask; stdcall;

function CkPdf_SignPdfBd(objHandle: HCkPdf; jsonOptions: HCkJsonObject; bd: HCkBinData): wordbool; stdcall;

function CkPdf_SignPdfBdAsync(objHandle: HCkPdf; jsonOptions: HCkJsonObject; bd: HCkBinData): HCkTask; stdcall;

function CkPdf_VerifySignature(objHandle: HCkPdf; index: Integer; sigInfo: HCkJsonObject): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkPdf_Create; external DLLName;
procedure CkPdf_Dispose; external DLLName;

procedure CkPdf_SetAbortCheck; external DLLName;
procedure CkPdf_SetProgressInfo; external DLLName;
procedure CkPdf_SetPercentDone; external DLLName;
procedure CkPdf_SetTaskCompleted; external DLLName;
procedure CkPdf_getDebugLogFilePath; external DLLName;
procedure CkPdf_putDebugLogFilePath; external DLLName;
function CkPdf__debugLogFilePath; external DLLName;
function CkPdf_getHasCertificationSig; external DLLName;
procedure CkPdf_getLastErrorHtml; external DLLName;
function CkPdf__lastErrorHtml; external DLLName;
procedure CkPdf_getLastErrorText; external DLLName;
function CkPdf__lastErrorText; external DLLName;
procedure CkPdf_getLastErrorXml; external DLLName;
function CkPdf__lastErrorXml; external DLLName;
function CkPdf_getLastMethodSuccess; external DLLName;
procedure CkPdf_putLastMethodSuccess; external DLLName;
function CkPdf_getNumEmbeddedFiles; external DLLName;
function CkPdf_getNumPages; external DLLName;
function CkPdf_getNumSignatures; external DLLName;
function CkPdf_getSigAllocateSize; external DLLName;
procedure CkPdf_putSigAllocateSize; external DLLName;
procedure CkPdf_getUncommonOptions; external DLLName;
procedure CkPdf_putUncommonOptions; external DLLName;
function CkPdf__uncommonOptions; external DLLName;
function CkPdf_getVerboseLogging; external DLLName;
procedure CkPdf_putVerboseLogging; external DLLName;
procedure CkPdf_getVersion; external DLLName;
function CkPdf__version; external DLLName;
function CkPdf_AddSigningCert; external DLLName;
function CkPdf_AddVerificationInfo; external DLLName;
function CkPdf_AddVerificationInfoAsync; external DLLName;
function CkPdf_GetDss; external DLLName;
function CkPdf_GetEmbeddedFileBd; external DLLName;
function CkPdf_GetEmbeddedFileInfo; external DLLName;
function CkPdf_GetMetadata; external DLLName;
function CkPdf_GetSignatureContent; external DLLName;
function CkPdf_GetSignerCert; external DLLName;
function CkPdf_GetUnsignedSigFields; external DLLName;
function CkPdf_LastJsonData; external DLLName;
function CkPdf_LoadBd; external DLLName;
function CkPdf_LoadFile; external DLLName;
function CkPdf_SaveLastError; external DLLName;
procedure CkPdf_SetHttpObj; external DLLName;
function CkPdf_SetSignatureJpeg; external DLLName;
function CkPdf_SetSigningCert; external DLLName;
function CkPdf_SetSigningCert2; external DLLName;
function CkPdf_SignPdf; external DLLName;
function CkPdf_SignPdfAsync; external DLLName;
function CkPdf_SignPdfBd; external DLLName;
function CkPdf_SignPdfBdAsync; external DLLName;
function CkPdf_VerifySignature; external DLLName;



end.
