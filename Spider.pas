unit Spider;

interface

type

HCkTask = Pointer;
HCkSpider = Pointer;
HCkString = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TSpiderAbortCheck = function(): Integer; cdecl;
TSpiderProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TSpiderPercentDone = function(pctDone: Integer): Integer; cdecl;
TSpiderTaskCompleted = procedure(task: HCkTask); cdecl;


function CkSpider_Create: HCkSpider; stdcall;
procedure CkSpider_Dispose(handle: HCkSpider); stdcall;

procedure CkSpider_SetAbortCheck(objHandle: HCkSpider; fn: TSpiderAbortCheck) stdcall;
procedure CkSpider_SetProgressInfo(objHandle: HCkSpider; fn: TSpiderProgressInfo) stdcall;
procedure CkSpider_SetPercentDone(objHandle: HCkSpider; fn: TSpiderPercentDone) stdcall;
procedure CkSpider_SetTaskCompleted(objHandle: HCkSpider; fn: TSpiderTaskCompleted) stdcall;
function CkSpider_getAbortCurrent(objHandle: HCkSpider): wordbool; stdcall;

procedure CkSpider_putAbortCurrent(objHandle: HCkSpider; newPropVal: wordbool); stdcall;

function CkSpider_getAvoidHttps(objHandle: HCkSpider): wordbool; stdcall;

procedure CkSpider_putAvoidHttps(objHandle: HCkSpider; newPropVal: wordbool); stdcall;

procedure CkSpider_getCacheDir(objHandle: HCkSpider; outPropVal: HCkString); stdcall;

procedure CkSpider_putCacheDir(objHandle: HCkSpider; newPropVal: PWideChar); stdcall;

function CkSpider__cacheDir(objHandle: HCkSpider): PWideChar; stdcall;

function CkSpider_getChopAtQuery(objHandle: HCkSpider): wordbool; stdcall;

procedure CkSpider_putChopAtQuery(objHandle: HCkSpider; newPropVal: wordbool); stdcall;

function CkSpider_getConnectTimeout(objHandle: HCkSpider): Integer; stdcall;

procedure CkSpider_putConnectTimeout(objHandle: HCkSpider; newPropVal: Integer); stdcall;

procedure CkSpider_getDebugLogFilePath(objHandle: HCkSpider; outPropVal: HCkString); stdcall;

procedure CkSpider_putDebugLogFilePath(objHandle: HCkSpider; newPropVal: PWideChar); stdcall;

function CkSpider__debugLogFilePath(objHandle: HCkSpider): PWideChar; stdcall;

procedure CkSpider_getDomain(objHandle: HCkSpider; outPropVal: HCkString); stdcall;

function CkSpider__domain(objHandle: HCkSpider): PWideChar; stdcall;

function CkSpider_getFetchFromCache(objHandle: HCkSpider): wordbool; stdcall;

procedure CkSpider_putFetchFromCache(objHandle: HCkSpider; newPropVal: wordbool); stdcall;

procedure CkSpider_getFinalRedirectUrl(objHandle: HCkSpider; outPropVal: HCkString); stdcall;

function CkSpider__finalRedirectUrl(objHandle: HCkSpider): PWideChar; stdcall;

function CkSpider_getHeartbeatMs(objHandle: HCkSpider): Integer; stdcall;

procedure CkSpider_putHeartbeatMs(objHandle: HCkSpider; newPropVal: Integer); stdcall;

procedure CkSpider_getLastErrorHtml(objHandle: HCkSpider; outPropVal: HCkString); stdcall;

function CkSpider__lastErrorHtml(objHandle: HCkSpider): PWideChar; stdcall;

procedure CkSpider_getLastErrorText(objHandle: HCkSpider; outPropVal: HCkString); stdcall;

function CkSpider__lastErrorText(objHandle: HCkSpider): PWideChar; stdcall;

procedure CkSpider_getLastErrorXml(objHandle: HCkSpider; outPropVal: HCkString); stdcall;

function CkSpider__lastErrorXml(objHandle: HCkSpider): PWideChar; stdcall;

function CkSpider_getLastFromCache(objHandle: HCkSpider): wordbool; stdcall;

procedure CkSpider_getLastHtml(objHandle: HCkSpider; outPropVal: HCkString); stdcall;

function CkSpider__lastHtml(objHandle: HCkSpider): PWideChar; stdcall;

procedure CkSpider_getLastHtmlDescription(objHandle: HCkSpider; outPropVal: HCkString); stdcall;

function CkSpider__lastHtmlDescription(objHandle: HCkSpider): PWideChar; stdcall;

procedure CkSpider_getLastHtmlKeywords(objHandle: HCkSpider; outPropVal: HCkString); stdcall;

function CkSpider__lastHtmlKeywords(objHandle: HCkSpider): PWideChar; stdcall;

procedure CkSpider_getLastHtmlTitle(objHandle: HCkSpider; outPropVal: HCkString); stdcall;

function CkSpider__lastHtmlTitle(objHandle: HCkSpider): PWideChar; stdcall;

function CkSpider_getLastMethodSuccess(objHandle: HCkSpider): wordbool; stdcall;

procedure CkSpider_putLastMethodSuccess(objHandle: HCkSpider; newPropVal: wordbool); stdcall;

procedure CkSpider_getLastModDateStr(objHandle: HCkSpider; outPropVal: HCkString); stdcall;

function CkSpider__lastModDateStr(objHandle: HCkSpider): PWideChar; stdcall;

procedure CkSpider_getLastUrl(objHandle: HCkSpider; outPropVal: HCkString); stdcall;

function CkSpider__lastUrl(objHandle: HCkSpider): PWideChar; stdcall;

function CkSpider_getMaxResponseSize(objHandle: HCkSpider): Integer; stdcall;

procedure CkSpider_putMaxResponseSize(objHandle: HCkSpider; newPropVal: Integer); stdcall;

function CkSpider_getMaxUrlLen(objHandle: HCkSpider): Integer; stdcall;

procedure CkSpider_putMaxUrlLen(objHandle: HCkSpider; newPropVal: Integer); stdcall;

function CkSpider_getNumAvoidPatterns(objHandle: HCkSpider): Integer; stdcall;

function CkSpider_getNumFailed(objHandle: HCkSpider): Integer; stdcall;

function CkSpider_getNumOutboundLinks(objHandle: HCkSpider): Integer; stdcall;

function CkSpider_getNumSpidered(objHandle: HCkSpider): Integer; stdcall;

function CkSpider_getNumUnspidered(objHandle: HCkSpider): Integer; stdcall;

function CkSpider_getPreferIpv6(objHandle: HCkSpider): wordbool; stdcall;

procedure CkSpider_putPreferIpv6(objHandle: HCkSpider; newPropVal: wordbool); stdcall;

procedure CkSpider_getProxyDomain(objHandle: HCkSpider; outPropVal: HCkString); stdcall;

procedure CkSpider_putProxyDomain(objHandle: HCkSpider; newPropVal: PWideChar); stdcall;

function CkSpider__proxyDomain(objHandle: HCkSpider): PWideChar; stdcall;

procedure CkSpider_getProxyLogin(objHandle: HCkSpider; outPropVal: HCkString); stdcall;

procedure CkSpider_putProxyLogin(objHandle: HCkSpider; newPropVal: PWideChar); stdcall;

function CkSpider__proxyLogin(objHandle: HCkSpider): PWideChar; stdcall;

procedure CkSpider_getProxyPassword(objHandle: HCkSpider; outPropVal: HCkString); stdcall;

procedure CkSpider_putProxyPassword(objHandle: HCkSpider; newPropVal: PWideChar); stdcall;

function CkSpider__proxyPassword(objHandle: HCkSpider): PWideChar; stdcall;

function CkSpider_getProxyPort(objHandle: HCkSpider): Integer; stdcall;

procedure CkSpider_putProxyPort(objHandle: HCkSpider; newPropVal: Integer); stdcall;

function CkSpider_getReadTimeout(objHandle: HCkSpider): Integer; stdcall;

procedure CkSpider_putReadTimeout(objHandle: HCkSpider; newPropVal: Integer); stdcall;

function CkSpider_getUpdateCache(objHandle: HCkSpider): wordbool; stdcall;

procedure CkSpider_putUpdateCache(objHandle: HCkSpider; newPropVal: wordbool); stdcall;

procedure CkSpider_getUserAgent(objHandle: HCkSpider; outPropVal: HCkString); stdcall;

procedure CkSpider_putUserAgent(objHandle: HCkSpider; newPropVal: PWideChar); stdcall;

function CkSpider__userAgent(objHandle: HCkSpider): PWideChar; stdcall;

function CkSpider_getVerboseLogging(objHandle: HCkSpider): wordbool; stdcall;

procedure CkSpider_putVerboseLogging(objHandle: HCkSpider; newPropVal: wordbool); stdcall;

procedure CkSpider_getVersion(objHandle: HCkSpider; outPropVal: HCkString); stdcall;

function CkSpider__version(objHandle: HCkSpider): PWideChar; stdcall;

function CkSpider_getWasRedirected(objHandle: HCkSpider): wordbool; stdcall;

function CkSpider_getWindDownCount(objHandle: HCkSpider): Integer; stdcall;

procedure CkSpider_putWindDownCount(objHandle: HCkSpider; newPropVal: Integer); stdcall;

procedure CkSpider_AddAvoidOutboundLinkPattern(objHandle: HCkSpider; pattern: PWideChar); stdcall;

procedure CkSpider_AddAvoidPattern(objHandle: HCkSpider; pattern: PWideChar); stdcall;

procedure CkSpider_AddMustMatchPattern(objHandle: HCkSpider; pattern: PWideChar); stdcall;

procedure CkSpider_AddUnspidered(objHandle: HCkSpider; url: PWideChar); stdcall;

function CkSpider_CanonicalizeUrl(objHandle: HCkSpider; url: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkSpider__canonicalizeUrl(objHandle: HCkSpider; url: PWideChar): PWideChar; stdcall;

procedure CkSpider_ClearFailedUrls(objHandle: HCkSpider); stdcall;

procedure CkSpider_ClearOutboundLinks(objHandle: HCkSpider); stdcall;

procedure CkSpider_ClearSpideredUrls(objHandle: HCkSpider); stdcall;

function CkSpider_CrawlNext(objHandle: HCkSpider): wordbool; stdcall;

function CkSpider_CrawlNextAsync(objHandle: HCkSpider): HCkTask; stdcall;

function CkSpider_FetchRobotsText(objHandle: HCkSpider; outStr: HCkString): wordbool; stdcall;

function CkSpider__fetchRobotsText(objHandle: HCkSpider): PWideChar; stdcall;

function CkSpider_FetchRobotsTextAsync(objHandle: HCkSpider): HCkTask; stdcall;

function CkSpider_GetAvoidPattern(objHandle: HCkSpider; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkSpider__getAvoidPattern(objHandle: HCkSpider; index: Integer): PWideChar; stdcall;

function CkSpider_GetBaseDomain(objHandle: HCkSpider; domain: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkSpider__getBaseDomain(objHandle: HCkSpider; domain: PWideChar): PWideChar; stdcall;

function CkSpider_GetFailedUrl(objHandle: HCkSpider; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkSpider__getFailedUrl(objHandle: HCkSpider; index: Integer): PWideChar; stdcall;

function CkSpider_GetOutboundLink(objHandle: HCkSpider; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkSpider__getOutboundLink(objHandle: HCkSpider; index: Integer): PWideChar; stdcall;

function CkSpider_GetSpideredUrl(objHandle: HCkSpider; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkSpider__getSpideredUrl(objHandle: HCkSpider; index: Integer): PWideChar; stdcall;

function CkSpider_GetUnspideredUrl(objHandle: HCkSpider; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkSpider__getUnspideredUrl(objHandle: HCkSpider; index: Integer): PWideChar; stdcall;

function CkSpider_GetUrlDomain(objHandle: HCkSpider; url: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkSpider__getUrlDomain(objHandle: HCkSpider; url: PWideChar): PWideChar; stdcall;

procedure CkSpider_Initialize(objHandle: HCkSpider; domain: PWideChar); stdcall;

function CkSpider_LoadTaskCaller(objHandle: HCkSpider; task: HCkTask): wordbool; stdcall;

function CkSpider_RecrawlLast(objHandle: HCkSpider): wordbool; stdcall;

function CkSpider_RecrawlLastAsync(objHandle: HCkSpider): HCkTask; stdcall;

function CkSpider_SaveLastError(objHandle: HCkSpider; path: PWideChar): wordbool; stdcall;

procedure CkSpider_SkipUnspidered(objHandle: HCkSpider; index: Integer); stdcall;

procedure CkSpider_SleepMs(objHandle: HCkSpider; numMilliseconds: Integer); stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkSpider_Create; external DLLName;
procedure CkSpider_Dispose; external DLLName;

procedure CkSpider_SetAbortCheck; external DLLName;
procedure CkSpider_SetProgressInfo; external DLLName;
procedure CkSpider_SetPercentDone; external DLLName;
procedure CkSpider_SetTaskCompleted; external DLLName;
function CkSpider_getAbortCurrent; external DLLName;
procedure CkSpider_putAbortCurrent; external DLLName;
function CkSpider_getAvoidHttps; external DLLName;
procedure CkSpider_putAvoidHttps; external DLLName;
procedure CkSpider_getCacheDir; external DLLName;
procedure CkSpider_putCacheDir; external DLLName;
function CkSpider__cacheDir; external DLLName;
function CkSpider_getChopAtQuery; external DLLName;
procedure CkSpider_putChopAtQuery; external DLLName;
function CkSpider_getConnectTimeout; external DLLName;
procedure CkSpider_putConnectTimeout; external DLLName;
procedure CkSpider_getDebugLogFilePath; external DLLName;
procedure CkSpider_putDebugLogFilePath; external DLLName;
function CkSpider__debugLogFilePath; external DLLName;
procedure CkSpider_getDomain; external DLLName;
function CkSpider__domain; external DLLName;
function CkSpider_getFetchFromCache; external DLLName;
procedure CkSpider_putFetchFromCache; external DLLName;
procedure CkSpider_getFinalRedirectUrl; external DLLName;
function CkSpider__finalRedirectUrl; external DLLName;
function CkSpider_getHeartbeatMs; external DLLName;
procedure CkSpider_putHeartbeatMs; external DLLName;
procedure CkSpider_getLastErrorHtml; external DLLName;
function CkSpider__lastErrorHtml; external DLLName;
procedure CkSpider_getLastErrorText; external DLLName;
function CkSpider__lastErrorText; external DLLName;
procedure CkSpider_getLastErrorXml; external DLLName;
function CkSpider__lastErrorXml; external DLLName;
function CkSpider_getLastFromCache; external DLLName;
procedure CkSpider_getLastHtml; external DLLName;
function CkSpider__lastHtml; external DLLName;
procedure CkSpider_getLastHtmlDescription; external DLLName;
function CkSpider__lastHtmlDescription; external DLLName;
procedure CkSpider_getLastHtmlKeywords; external DLLName;
function CkSpider__lastHtmlKeywords; external DLLName;
procedure CkSpider_getLastHtmlTitle; external DLLName;
function CkSpider__lastHtmlTitle; external DLLName;
function CkSpider_getLastMethodSuccess; external DLLName;
procedure CkSpider_putLastMethodSuccess; external DLLName;
procedure CkSpider_getLastModDateStr; external DLLName;
function CkSpider__lastModDateStr; external DLLName;
procedure CkSpider_getLastUrl; external DLLName;
function CkSpider__lastUrl; external DLLName;
function CkSpider_getMaxResponseSize; external DLLName;
procedure CkSpider_putMaxResponseSize; external DLLName;
function CkSpider_getMaxUrlLen; external DLLName;
procedure CkSpider_putMaxUrlLen; external DLLName;
function CkSpider_getNumAvoidPatterns; external DLLName;
function CkSpider_getNumFailed; external DLLName;
function CkSpider_getNumOutboundLinks; external DLLName;
function CkSpider_getNumSpidered; external DLLName;
function CkSpider_getNumUnspidered; external DLLName;
function CkSpider_getPreferIpv6; external DLLName;
procedure CkSpider_putPreferIpv6; external DLLName;
procedure CkSpider_getProxyDomain; external DLLName;
procedure CkSpider_putProxyDomain; external DLLName;
function CkSpider__proxyDomain; external DLLName;
procedure CkSpider_getProxyLogin; external DLLName;
procedure CkSpider_putProxyLogin; external DLLName;
function CkSpider__proxyLogin; external DLLName;
procedure CkSpider_getProxyPassword; external DLLName;
procedure CkSpider_putProxyPassword; external DLLName;
function CkSpider__proxyPassword; external DLLName;
function CkSpider_getProxyPort; external DLLName;
procedure CkSpider_putProxyPort; external DLLName;
function CkSpider_getReadTimeout; external DLLName;
procedure CkSpider_putReadTimeout; external DLLName;
function CkSpider_getUpdateCache; external DLLName;
procedure CkSpider_putUpdateCache; external DLLName;
procedure CkSpider_getUserAgent; external DLLName;
procedure CkSpider_putUserAgent; external DLLName;
function CkSpider__userAgent; external DLLName;
function CkSpider_getVerboseLogging; external DLLName;
procedure CkSpider_putVerboseLogging; external DLLName;
procedure CkSpider_getVersion; external DLLName;
function CkSpider__version; external DLLName;
function CkSpider_getWasRedirected; external DLLName;
function CkSpider_getWindDownCount; external DLLName;
procedure CkSpider_putWindDownCount; external DLLName;
procedure CkSpider_AddAvoidOutboundLinkPattern; external DLLName;
procedure CkSpider_AddAvoidPattern; external DLLName;
procedure CkSpider_AddMustMatchPattern; external DLLName;
procedure CkSpider_AddUnspidered; external DLLName;
function CkSpider_CanonicalizeUrl; external DLLName;
function CkSpider__canonicalizeUrl; external DLLName;
procedure CkSpider_ClearFailedUrls; external DLLName;
procedure CkSpider_ClearOutboundLinks; external DLLName;
procedure CkSpider_ClearSpideredUrls; external DLLName;
function CkSpider_CrawlNext; external DLLName;
function CkSpider_CrawlNextAsync; external DLLName;
function CkSpider_FetchRobotsText; external DLLName;
function CkSpider__fetchRobotsText; external DLLName;
function CkSpider_FetchRobotsTextAsync; external DLLName;
function CkSpider_GetAvoidPattern; external DLLName;
function CkSpider__getAvoidPattern; external DLLName;
function CkSpider_GetBaseDomain; external DLLName;
function CkSpider__getBaseDomain; external DLLName;
function CkSpider_GetFailedUrl; external DLLName;
function CkSpider__getFailedUrl; external DLLName;
function CkSpider_GetOutboundLink; external DLLName;
function CkSpider__getOutboundLink; external DLLName;
function CkSpider_GetSpideredUrl; external DLLName;
function CkSpider__getSpideredUrl; external DLLName;
function CkSpider_GetUnspideredUrl; external DLLName;
function CkSpider__getUnspideredUrl; external DLLName;
function CkSpider_GetUrlDomain; external DLLName;
function CkSpider__getUrlDomain; external DLLName;
procedure CkSpider_Initialize; external DLLName;
function CkSpider_LoadTaskCaller; external DLLName;
function CkSpider_RecrawlLast; external DLLName;
function CkSpider_RecrawlLastAsync; external DLLName;
function CkSpider_SaveLastError; external DLLName;
procedure CkSpider_SkipUnspidered; external DLLName;
procedure CkSpider_SleepMs; external DLLName;



end.
