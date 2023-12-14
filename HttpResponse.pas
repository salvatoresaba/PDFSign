unit HttpResponse;

interface

type

HCkBinData = Pointer;
HCkByteData = Pointer;
HCkJsonArray = Pointer;
HCkXml = Pointer;
HCkString = Pointer;
HCkStringBuilder = Pointer;
HCkHttpResponse = Pointer;
HCkTask = Pointer;
HCkJsonObject = Pointer;


function CkHttpResponse_Create: HCkHttpResponse; stdcall;
procedure CkHttpResponse_Dispose(handle: HCkHttpResponse); stdcall;
procedure CkHttpResponse_getBody(objHandle: HCkHttpResponse; outPropVal: HCkByteData); stdcall;

procedure CkHttpResponse_getBodyQP(objHandle: HCkHttpResponse; outPropVal: HCkString); stdcall;

function CkHttpResponse__bodyQP(objHandle: HCkHttpResponse): PWideChar; stdcall;

procedure CkHttpResponse_getBodyStr(objHandle: HCkHttpResponse; outPropVal: HCkString); stdcall;

function CkHttpResponse__bodyStr(objHandle: HCkHttpResponse): PWideChar; stdcall;

procedure CkHttpResponse_getCharset(objHandle: HCkHttpResponse; outPropVal: HCkString); stdcall;

function CkHttpResponse__charset(objHandle: HCkHttpResponse): PWideChar; stdcall;

function CkHttpResponse_getContentLength(objHandle: HCkHttpResponse): LongWord; stdcall;

function CkHttpResponse_getContentLength64(objHandle: HCkHttpResponse): Int64; stdcall;

procedure CkHttpResponse_getDateStr(objHandle: HCkHttpResponse; outPropVal: HCkString); stdcall;

function CkHttpResponse__dateStr(objHandle: HCkHttpResponse): PWideChar; stdcall;

procedure CkHttpResponse_getDebugLogFilePath(objHandle: HCkHttpResponse; outPropVal: HCkString); stdcall;

procedure CkHttpResponse_putDebugLogFilePath(objHandle: HCkHttpResponse; newPropVal: PWideChar); stdcall;

function CkHttpResponse__debugLogFilePath(objHandle: HCkHttpResponse): PWideChar; stdcall;

procedure CkHttpResponse_getDomain(objHandle: HCkHttpResponse; outPropVal: HCkString); stdcall;

function CkHttpResponse__domain(objHandle: HCkHttpResponse): PWideChar; stdcall;

procedure CkHttpResponse_getFinalRedirectUrl(objHandle: HCkHttpResponse; outPropVal: HCkString); stdcall;

function CkHttpResponse__finalRedirectUrl(objHandle: HCkHttpResponse): PWideChar; stdcall;

procedure CkHttpResponse_getFullMime(objHandle: HCkHttpResponse; outPropVal: HCkString); stdcall;

function CkHttpResponse__fullMime(objHandle: HCkHttpResponse): PWideChar; stdcall;

procedure CkHttpResponse_getHeader(objHandle: HCkHttpResponse; outPropVal: HCkString); stdcall;

function CkHttpResponse__header(objHandle: HCkHttpResponse): PWideChar; stdcall;

procedure CkHttpResponse_getLastErrorHtml(objHandle: HCkHttpResponse; outPropVal: HCkString); stdcall;

function CkHttpResponse__lastErrorHtml(objHandle: HCkHttpResponse): PWideChar; stdcall;

procedure CkHttpResponse_getLastErrorText(objHandle: HCkHttpResponse; outPropVal: HCkString); stdcall;

function CkHttpResponse__lastErrorText(objHandle: HCkHttpResponse): PWideChar; stdcall;

procedure CkHttpResponse_getLastErrorXml(objHandle: HCkHttpResponse; outPropVal: HCkString); stdcall;

function CkHttpResponse__lastErrorXml(objHandle: HCkHttpResponse): PWideChar; stdcall;

function CkHttpResponse_getLastMethodSuccess(objHandle: HCkHttpResponse): wordbool; stdcall;

procedure CkHttpResponse_putLastMethodSuccess(objHandle: HCkHttpResponse; newPropVal: wordbool); stdcall;

function CkHttpResponse_getNumCookies(objHandle: HCkHttpResponse): Integer; stdcall;

function CkHttpResponse_getNumHeaderFields(objHandle: HCkHttpResponse): Integer; stdcall;

function CkHttpResponse_getStatusCode(objHandle: HCkHttpResponse): Integer; stdcall;

procedure CkHttpResponse_getStatusLine(objHandle: HCkHttpResponse; outPropVal: HCkString); stdcall;

function CkHttpResponse__statusLine(objHandle: HCkHttpResponse): PWideChar; stdcall;

procedure CkHttpResponse_getStatusText(objHandle: HCkHttpResponse; outPropVal: HCkString); stdcall;

function CkHttpResponse__statusText(objHandle: HCkHttpResponse): PWideChar; stdcall;

procedure CkHttpResponse_getUncommonOptions(objHandle: HCkHttpResponse; outPropVal: HCkString); stdcall;

procedure CkHttpResponse_putUncommonOptions(objHandle: HCkHttpResponse; newPropVal: PWideChar); stdcall;

function CkHttpResponse__uncommonOptions(objHandle: HCkHttpResponse): PWideChar; stdcall;

function CkHttpResponse_getVerboseLogging(objHandle: HCkHttpResponse): wordbool; stdcall;

procedure CkHttpResponse_putVerboseLogging(objHandle: HCkHttpResponse; newPropVal: wordbool); stdcall;

procedure CkHttpResponse_getVersion(objHandle: HCkHttpResponse; outPropVal: HCkString); stdcall;

function CkHttpResponse__version(objHandle: HCkHttpResponse): PWideChar; stdcall;

function CkHttpResponse_GetBodyBd(objHandle: HCkHttpResponse; binData: HCkBinData): wordbool; stdcall;

function CkHttpResponse_GetBodyJarr(objHandle: HCkHttpResponse; jarr: HCkJsonArray): wordbool; stdcall;

function CkHttpResponse_GetBodyJson(objHandle: HCkHttpResponse; json: HCkJsonObject): wordbool; stdcall;

function CkHttpResponse_GetBodySb(objHandle: HCkHttpResponse; sb: HCkStringBuilder): wordbool; stdcall;

function CkHttpResponse_GetBodyXml(objHandle: HCkHttpResponse; xml: HCkXml): wordbool; stdcall;

function CkHttpResponse_GetCookieDomain(objHandle: HCkHttpResponse; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkHttpResponse__getCookieDomain(objHandle: HCkHttpResponse; index: Integer): PWideChar; stdcall;

function CkHttpResponse_GetCookieExpiresStr(objHandle: HCkHttpResponse; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkHttpResponse__getCookieExpiresStr(objHandle: HCkHttpResponse; index: Integer): PWideChar; stdcall;

function CkHttpResponse_GetCookieName(objHandle: HCkHttpResponse; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkHttpResponse__getCookieName(objHandle: HCkHttpResponse; index: Integer): PWideChar; stdcall;

function CkHttpResponse_GetCookiePath(objHandle: HCkHttpResponse; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkHttpResponse__getCookiePath(objHandle: HCkHttpResponse; index: Integer): PWideChar; stdcall;

function CkHttpResponse_GetCookieValue(objHandle: HCkHttpResponse; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkHttpResponse__getCookieValue(objHandle: HCkHttpResponse; index: Integer): PWideChar; stdcall;

function CkHttpResponse_GetHeaderField(objHandle: HCkHttpResponse; fieldName: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkHttpResponse__getHeaderField(objHandle: HCkHttpResponse; fieldName: PWideChar): PWideChar; stdcall;

function CkHttpResponse_GetHeaderFieldAttr(objHandle: HCkHttpResponse; fieldName: PWideChar; attrName: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkHttpResponse__getHeaderFieldAttr(objHandle: HCkHttpResponse; fieldName: PWideChar; attrName: PWideChar): PWideChar; stdcall;

function CkHttpResponse_GetHeaderName(objHandle: HCkHttpResponse; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkHttpResponse__getHeaderName(objHandle: HCkHttpResponse; index: Integer): PWideChar; stdcall;

function CkHttpResponse_GetHeaderValue(objHandle: HCkHttpResponse; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkHttpResponse__getHeaderValue(objHandle: HCkHttpResponse; index: Integer): PWideChar; stdcall;

function CkHttpResponse_LoadTaskResult(objHandle: HCkHttpResponse; task: HCkTask): wordbool; stdcall;

function CkHttpResponse_SaveBodyBinary(objHandle: HCkHttpResponse; path: PWideChar): wordbool; stdcall;

function CkHttpResponse_SaveBodyText(objHandle: HCkHttpResponse; bCrlf: wordbool; path: PWideChar): wordbool; stdcall;

function CkHttpResponse_SaveLastError(objHandle: HCkHttpResponse; path: PWideChar): wordbool; stdcall;

function CkHttpResponse_UrlEncParamValue(objHandle: HCkHttpResponse; encodedParamString: PWideChar; paramName: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkHttpResponse__urlEncParamValue(objHandle: HCkHttpResponse; encodedParamString: PWideChar; paramName: PWideChar): PWideChar; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkHttpResponse_Create; external DLLName;
procedure CkHttpResponse_Dispose; external DLLName;
procedure CkHttpResponse_getBody; external DLLName;
procedure CkHttpResponse_getBodyQP; external DLLName;
function CkHttpResponse__bodyQP; external DLLName;
procedure CkHttpResponse_getBodyStr; external DLLName;
function CkHttpResponse__bodyStr; external DLLName;
procedure CkHttpResponse_getCharset; external DLLName;
function CkHttpResponse__charset; external DLLName;
function CkHttpResponse_getContentLength; external DLLName;
function CkHttpResponse_getContentLength64; external DLLName;
procedure CkHttpResponse_getDateStr; external DLLName;
function CkHttpResponse__dateStr; external DLLName;
procedure CkHttpResponse_getDebugLogFilePath; external DLLName;
procedure CkHttpResponse_putDebugLogFilePath; external DLLName;
function CkHttpResponse__debugLogFilePath; external DLLName;
procedure CkHttpResponse_getDomain; external DLLName;
function CkHttpResponse__domain; external DLLName;
procedure CkHttpResponse_getFinalRedirectUrl; external DLLName;
function CkHttpResponse__finalRedirectUrl; external DLLName;
procedure CkHttpResponse_getFullMime; external DLLName;
function CkHttpResponse__fullMime; external DLLName;
procedure CkHttpResponse_getHeader; external DLLName;
function CkHttpResponse__header; external DLLName;
procedure CkHttpResponse_getLastErrorHtml; external DLLName;
function CkHttpResponse__lastErrorHtml; external DLLName;
procedure CkHttpResponse_getLastErrorText; external DLLName;
function CkHttpResponse__lastErrorText; external DLLName;
procedure CkHttpResponse_getLastErrorXml; external DLLName;
function CkHttpResponse__lastErrorXml; external DLLName;
function CkHttpResponse_getLastMethodSuccess; external DLLName;
procedure CkHttpResponse_putLastMethodSuccess; external DLLName;
function CkHttpResponse_getNumCookies; external DLLName;
function CkHttpResponse_getNumHeaderFields; external DLLName;
function CkHttpResponse_getStatusCode; external DLLName;
procedure CkHttpResponse_getStatusLine; external DLLName;
function CkHttpResponse__statusLine; external DLLName;
procedure CkHttpResponse_getStatusText; external DLLName;
function CkHttpResponse__statusText; external DLLName;
procedure CkHttpResponse_getUncommonOptions; external DLLName;
procedure CkHttpResponse_putUncommonOptions; external DLLName;
function CkHttpResponse__uncommonOptions; external DLLName;
function CkHttpResponse_getVerboseLogging; external DLLName;
procedure CkHttpResponse_putVerboseLogging; external DLLName;
procedure CkHttpResponse_getVersion; external DLLName;
function CkHttpResponse__version; external DLLName;
function CkHttpResponse_GetBodyBd; external DLLName;
function CkHttpResponse_GetBodyJarr; external DLLName;
function CkHttpResponse_GetBodyJson; external DLLName;
function CkHttpResponse_GetBodySb; external DLLName;
function CkHttpResponse_GetBodyXml; external DLLName;
function CkHttpResponse_GetCookieDomain; external DLLName;
function CkHttpResponse__getCookieDomain; external DLLName;
function CkHttpResponse_GetCookieExpiresStr; external DLLName;
function CkHttpResponse__getCookieExpiresStr; external DLLName;
function CkHttpResponse_GetCookieName; external DLLName;
function CkHttpResponse__getCookieName; external DLLName;
function CkHttpResponse_GetCookiePath; external DLLName;
function CkHttpResponse__getCookiePath; external DLLName;
function CkHttpResponse_GetCookieValue; external DLLName;
function CkHttpResponse__getCookieValue; external DLLName;
function CkHttpResponse_GetHeaderField; external DLLName;
function CkHttpResponse__getHeaderField; external DLLName;
function CkHttpResponse_GetHeaderFieldAttr; external DLLName;
function CkHttpResponse__getHeaderFieldAttr; external DLLName;
function CkHttpResponse_GetHeaderName; external DLLName;
function CkHttpResponse__getHeaderName; external DLLName;
function CkHttpResponse_GetHeaderValue; external DLLName;
function CkHttpResponse__getHeaderValue; external DLLName;
function CkHttpResponse_LoadTaskResult; external DLLName;
function CkHttpResponse_SaveBodyBinary; external DLLName;
function CkHttpResponse_SaveBodyText; external DLLName;
function CkHttpResponse_SaveLastError; external DLLName;
function CkHttpResponse_UrlEncParamValue; external DLLName;
function CkHttpResponse__urlEncParamValue; external DLLName;



end.
