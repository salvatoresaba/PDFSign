unit AuthAws;

interface

type

HCkString = Pointer;
HCkAuthAws = Pointer;


function CkAuthAws_Create: HCkAuthAws; stdcall;
procedure CkAuthAws_Dispose(handle: HCkAuthAws); stdcall;
procedure CkAuthAws_getAccessKey(objHandle: HCkAuthAws; outPropVal: HCkString); stdcall;

procedure CkAuthAws_putAccessKey(objHandle: HCkAuthAws; newPropVal: PWideChar); stdcall;

function CkAuthAws__accessKey(objHandle: HCkAuthAws): PWideChar; stdcall;

procedure CkAuthAws_getCanonicalizedResourceV2(objHandle: HCkAuthAws; outPropVal: HCkString); stdcall;

procedure CkAuthAws_putCanonicalizedResourceV2(objHandle: HCkAuthAws; newPropVal: PWideChar); stdcall;

function CkAuthAws__canonicalizedResourceV2(objHandle: HCkAuthAws): PWideChar; stdcall;

procedure CkAuthAws_getDebugLogFilePath(objHandle: HCkAuthAws; outPropVal: HCkString); stdcall;

procedure CkAuthAws_putDebugLogFilePath(objHandle: HCkAuthAws; newPropVal: PWideChar); stdcall;

function CkAuthAws__debugLogFilePath(objHandle: HCkAuthAws): PWideChar; stdcall;

procedure CkAuthAws_getLastErrorHtml(objHandle: HCkAuthAws; outPropVal: HCkString); stdcall;

function CkAuthAws__lastErrorHtml(objHandle: HCkAuthAws): PWideChar; stdcall;

procedure CkAuthAws_getLastErrorText(objHandle: HCkAuthAws; outPropVal: HCkString); stdcall;

function CkAuthAws__lastErrorText(objHandle: HCkAuthAws): PWideChar; stdcall;

procedure CkAuthAws_getLastErrorXml(objHandle: HCkAuthAws; outPropVal: HCkString); stdcall;

function CkAuthAws__lastErrorXml(objHandle: HCkAuthAws): PWideChar; stdcall;

function CkAuthAws_getLastMethodSuccess(objHandle: HCkAuthAws): wordbool; stdcall;

procedure CkAuthAws_putLastMethodSuccess(objHandle: HCkAuthAws; newPropVal: wordbool); stdcall;

procedure CkAuthAws_getPrecomputedMd5(objHandle: HCkAuthAws; outPropVal: HCkString); stdcall;

procedure CkAuthAws_putPrecomputedMd5(objHandle: HCkAuthAws; newPropVal: PWideChar); stdcall;

function CkAuthAws__precomputedMd5(objHandle: HCkAuthAws): PWideChar; stdcall;

procedure CkAuthAws_getPrecomputedSha256(objHandle: HCkAuthAws; outPropVal: HCkString); stdcall;

procedure CkAuthAws_putPrecomputedSha256(objHandle: HCkAuthAws; newPropVal: PWideChar); stdcall;

function CkAuthAws__precomputedSha256(objHandle: HCkAuthAws): PWideChar; stdcall;

procedure CkAuthAws_getRegion(objHandle: HCkAuthAws; outPropVal: HCkString); stdcall;

procedure CkAuthAws_putRegion(objHandle: HCkAuthAws; newPropVal: PWideChar); stdcall;

function CkAuthAws__region(objHandle: HCkAuthAws): PWideChar; stdcall;

procedure CkAuthAws_getSecretKey(objHandle: HCkAuthAws; outPropVal: HCkString); stdcall;

procedure CkAuthAws_putSecretKey(objHandle: HCkAuthAws; newPropVal: PWideChar); stdcall;

function CkAuthAws__secretKey(objHandle: HCkAuthAws): PWideChar; stdcall;

procedure CkAuthAws_getServiceName(objHandle: HCkAuthAws; outPropVal: HCkString); stdcall;

procedure CkAuthAws_putServiceName(objHandle: HCkAuthAws; newPropVal: PWideChar); stdcall;

function CkAuthAws__serviceName(objHandle: HCkAuthAws): PWideChar; stdcall;

function CkAuthAws_getSignatureVersion(objHandle: HCkAuthAws): Integer; stdcall;

procedure CkAuthAws_putSignatureVersion(objHandle: HCkAuthAws; newPropVal: Integer); stdcall;

function CkAuthAws_getVerboseLogging(objHandle: HCkAuthAws): wordbool; stdcall;

procedure CkAuthAws_putVerboseLogging(objHandle: HCkAuthAws; newPropVal: wordbool); stdcall;

procedure CkAuthAws_getVersion(objHandle: HCkAuthAws; outPropVal: HCkString); stdcall;

function CkAuthAws__version(objHandle: HCkAuthAws): PWideChar; stdcall;

function CkAuthAws_GenPresignedUrl(objHandle: HCkAuthAws; httpVerb: PWideChar; useHttps: wordbool; domain: PWideChar; path: PWideChar; numSecondsValid: Integer; awsService: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkAuthAws__genPresignedUrl(objHandle: HCkAuthAws; httpVerb: PWideChar; useHttps: wordbool; domain: PWideChar; path: PWideChar; numSecondsValid: Integer; awsService: PWideChar): PWideChar; stdcall;

function CkAuthAws_SaveLastError(objHandle: HCkAuthAws; path: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkAuthAws_Create; external DLLName;
procedure CkAuthAws_Dispose; external DLLName;
procedure CkAuthAws_getAccessKey; external DLLName;
procedure CkAuthAws_putAccessKey; external DLLName;
function CkAuthAws__accessKey; external DLLName;
procedure CkAuthAws_getCanonicalizedResourceV2; external DLLName;
procedure CkAuthAws_putCanonicalizedResourceV2; external DLLName;
function CkAuthAws__canonicalizedResourceV2; external DLLName;
procedure CkAuthAws_getDebugLogFilePath; external DLLName;
procedure CkAuthAws_putDebugLogFilePath; external DLLName;
function CkAuthAws__debugLogFilePath; external DLLName;
procedure CkAuthAws_getLastErrorHtml; external DLLName;
function CkAuthAws__lastErrorHtml; external DLLName;
procedure CkAuthAws_getLastErrorText; external DLLName;
function CkAuthAws__lastErrorText; external DLLName;
procedure CkAuthAws_getLastErrorXml; external DLLName;
function CkAuthAws__lastErrorXml; external DLLName;
function CkAuthAws_getLastMethodSuccess; external DLLName;
procedure CkAuthAws_putLastMethodSuccess; external DLLName;
procedure CkAuthAws_getPrecomputedMd5; external DLLName;
procedure CkAuthAws_putPrecomputedMd5; external DLLName;
function CkAuthAws__precomputedMd5; external DLLName;
procedure CkAuthAws_getPrecomputedSha256; external DLLName;
procedure CkAuthAws_putPrecomputedSha256; external DLLName;
function CkAuthAws__precomputedSha256; external DLLName;
procedure CkAuthAws_getRegion; external DLLName;
procedure CkAuthAws_putRegion; external DLLName;
function CkAuthAws__region; external DLLName;
procedure CkAuthAws_getSecretKey; external DLLName;
procedure CkAuthAws_putSecretKey; external DLLName;
function CkAuthAws__secretKey; external DLLName;
procedure CkAuthAws_getServiceName; external DLLName;
procedure CkAuthAws_putServiceName; external DLLName;
function CkAuthAws__serviceName; external DLLName;
function CkAuthAws_getSignatureVersion; external DLLName;
procedure CkAuthAws_putSignatureVersion; external DLLName;
function CkAuthAws_getVerboseLogging; external DLLName;
procedure CkAuthAws_putVerboseLogging; external DLLName;
procedure CkAuthAws_getVersion; external DLLName;
function CkAuthAws__version; external DLLName;
function CkAuthAws_GenPresignedUrl; external DLLName;
function CkAuthAws__genPresignedUrl; external DLLName;
function CkAuthAws_SaveLastError; external DLLName;



end.
