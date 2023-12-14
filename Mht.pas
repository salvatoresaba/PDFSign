unit Mht;

interface

type

HCkMht = Pointer;
HCkTask = Pointer;
HCkString = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TMhtAbortCheck = function(): Integer; cdecl;
TMhtProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TMhtPercentDone = function(pctDone: Integer): Integer; cdecl;
TMhtTaskCompleted = procedure(task: HCkTask); cdecl;


function CkMht_Create: HCkMht; stdcall;
procedure CkMht_Dispose(handle: HCkMht); stdcall;

procedure CkMht_SetAbortCheck(objHandle: HCkMht; fn: TMhtAbortCheck) stdcall;
procedure CkMht_SetProgressInfo(objHandle: HCkMht; fn: TMhtProgressInfo) stdcall;
procedure CkMht_SetPercentDone(objHandle: HCkMht; fn: TMhtPercentDone) stdcall;
procedure CkMht_SetTaskCompleted(objHandle: HCkMht; fn: TMhtTaskCompleted) stdcall;
function CkMht_getAbortCurrent(objHandle: HCkMht): wordbool; stdcall;

procedure CkMht_putAbortCurrent(objHandle: HCkMht; newPropVal: wordbool); stdcall;

procedure CkMht_getBaseUrl(objHandle: HCkMht; outPropVal: HCkString); stdcall;

procedure CkMht_putBaseUrl(objHandle: HCkMht; newPropVal: PWideChar); stdcall;

function CkMht__baseUrl(objHandle: HCkMht): PWideChar; stdcall;

function CkMht_getConnectTimeout(objHandle: HCkMht): Integer; stdcall;

procedure CkMht_putConnectTimeout(objHandle: HCkMht; newPropVal: Integer); stdcall;

procedure CkMht_getDebugHtmlAfter(objHandle: HCkMht; outPropVal: HCkString); stdcall;

procedure CkMht_putDebugHtmlAfter(objHandle: HCkMht; newPropVal: PWideChar); stdcall;

function CkMht__debugHtmlAfter(objHandle: HCkMht): PWideChar; stdcall;

procedure CkMht_getDebugHtmlBefore(objHandle: HCkMht; outPropVal: HCkString); stdcall;

procedure CkMht_putDebugHtmlBefore(objHandle: HCkMht; newPropVal: PWideChar); stdcall;

function CkMht__debugHtmlBefore(objHandle: HCkMht): PWideChar; stdcall;

procedure CkMht_getDebugLogFilePath(objHandle: HCkMht; outPropVal: HCkString); stdcall;

procedure CkMht_putDebugLogFilePath(objHandle: HCkMht; newPropVal: PWideChar); stdcall;

function CkMht__debugLogFilePath(objHandle: HCkMht): PWideChar; stdcall;

function CkMht_getDebugTagCleaning(objHandle: HCkMht): wordbool; stdcall;

procedure CkMht_putDebugTagCleaning(objHandle: HCkMht; newPropVal: wordbool); stdcall;

function CkMht_getEmbedImages(objHandle: HCkMht): wordbool; stdcall;

procedure CkMht_putEmbedImages(objHandle: HCkMht; newPropVal: wordbool); stdcall;

function CkMht_getEmbedLocalOnly(objHandle: HCkMht): wordbool; stdcall;

procedure CkMht_putEmbedLocalOnly(objHandle: HCkMht; newPropVal: wordbool); stdcall;

function CkMht_getFetchFromCache(objHandle: HCkMht): wordbool; stdcall;

procedure CkMht_putFetchFromCache(objHandle: HCkMht; newPropVal: wordbool); stdcall;

function CkMht_getHeartbeatMs(objHandle: HCkMht): Integer; stdcall;

procedure CkMht_putHeartbeatMs(objHandle: HCkMht; newPropVal: Integer); stdcall;

function CkMht_getIgnoreMustRevalidate(objHandle: HCkMht): wordbool; stdcall;

procedure CkMht_putIgnoreMustRevalidate(objHandle: HCkMht; newPropVal: wordbool); stdcall;

function CkMht_getIgnoreNoCache(objHandle: HCkMht): wordbool; stdcall;

procedure CkMht_putIgnoreNoCache(objHandle: HCkMht; newPropVal: wordbool); stdcall;

procedure CkMht_getLastErrorHtml(objHandle: HCkMht; outPropVal: HCkString); stdcall;

function CkMht__lastErrorHtml(objHandle: HCkMht): PWideChar; stdcall;

procedure CkMht_getLastErrorText(objHandle: HCkMht; outPropVal: HCkString); stdcall;

function CkMht__lastErrorText(objHandle: HCkMht): PWideChar; stdcall;

procedure CkMht_getLastErrorXml(objHandle: HCkMht; outPropVal: HCkString); stdcall;

function CkMht__lastErrorXml(objHandle: HCkMht): PWideChar; stdcall;

function CkMht_getLastMethodSuccess(objHandle: HCkMht): wordbool; stdcall;

procedure CkMht_putLastMethodSuccess(objHandle: HCkMht; newPropVal: wordbool); stdcall;

function CkMht_getNoScripts(objHandle: HCkMht): wordbool; stdcall;

procedure CkMht_putNoScripts(objHandle: HCkMht; newPropVal: wordbool); stdcall;

function CkMht_getNtlmAuth(objHandle: HCkMht): wordbool; stdcall;

procedure CkMht_putNtlmAuth(objHandle: HCkMht; newPropVal: wordbool); stdcall;

function CkMht_getNumCacheLevels(objHandle: HCkMht): Integer; stdcall;

procedure CkMht_putNumCacheLevels(objHandle: HCkMht; newPropVal: Integer); stdcall;

function CkMht_getNumCacheRoots(objHandle: HCkMht): Integer; stdcall;

function CkMht_getPreferIpv6(objHandle: HCkMht): wordbool; stdcall;

procedure CkMht_putPreferIpv6(objHandle: HCkMht; newPropVal: wordbool); stdcall;

function CkMht_getPreferMHTScripts(objHandle: HCkMht): wordbool; stdcall;

procedure CkMht_putPreferMHTScripts(objHandle: HCkMht; newPropVal: wordbool); stdcall;

procedure CkMht_getProxy(objHandle: HCkMht; outPropVal: HCkString); stdcall;

procedure CkMht_putProxy(objHandle: HCkMht; newPropVal: PWideChar); stdcall;

function CkMht__proxy(objHandle: HCkMht): PWideChar; stdcall;

procedure CkMht_getProxyLogin(objHandle: HCkMht; outPropVal: HCkString); stdcall;

procedure CkMht_putProxyLogin(objHandle: HCkMht; newPropVal: PWideChar); stdcall;

function CkMht__proxyLogin(objHandle: HCkMht): PWideChar; stdcall;

procedure CkMht_getProxyPassword(objHandle: HCkMht; outPropVal: HCkString); stdcall;

procedure CkMht_putProxyPassword(objHandle: HCkMht; newPropVal: PWideChar); stdcall;

function CkMht__proxyPassword(objHandle: HCkMht): PWideChar; stdcall;

function CkMht_getReadTimeout(objHandle: HCkMht): Integer; stdcall;

procedure CkMht_putReadTimeout(objHandle: HCkMht; newPropVal: Integer); stdcall;

function CkMht_getRequireSslCertVerify(objHandle: HCkMht): wordbool; stdcall;

procedure CkMht_putRequireSslCertVerify(objHandle: HCkMht; newPropVal: wordbool); stdcall;

procedure CkMht_getSocksHostname(objHandle: HCkMht; outPropVal: HCkString); stdcall;

procedure CkMht_putSocksHostname(objHandle: HCkMht; newPropVal: PWideChar); stdcall;

function CkMht__socksHostname(objHandle: HCkMht): PWideChar; stdcall;

procedure CkMht_getSocksPassword(objHandle: HCkMht; outPropVal: HCkString); stdcall;

procedure CkMht_putSocksPassword(objHandle: HCkMht; newPropVal: PWideChar); stdcall;

function CkMht__socksPassword(objHandle: HCkMht): PWideChar; stdcall;

function CkMht_getSocksPort(objHandle: HCkMht): Integer; stdcall;

procedure CkMht_putSocksPort(objHandle: HCkMht; newPropVal: Integer); stdcall;

procedure CkMht_getSocksUsername(objHandle: HCkMht; outPropVal: HCkString); stdcall;

procedure CkMht_putSocksUsername(objHandle: HCkMht; newPropVal: PWideChar); stdcall;

function CkMht__socksUsername(objHandle: HCkMht): PWideChar; stdcall;

function CkMht_getSocksVersion(objHandle: HCkMht): Integer; stdcall;

procedure CkMht_putSocksVersion(objHandle: HCkMht; newPropVal: Integer); stdcall;

function CkMht_getUnpackDirect(objHandle: HCkMht): wordbool; stdcall;

procedure CkMht_putUnpackDirect(objHandle: HCkMht; newPropVal: wordbool); stdcall;

function CkMht_getUnpackUseRelPaths(objHandle: HCkMht): wordbool; stdcall;

procedure CkMht_putUnpackUseRelPaths(objHandle: HCkMht; newPropVal: wordbool); stdcall;

function CkMht_getUpdateCache(objHandle: HCkMht): wordbool; stdcall;

procedure CkMht_putUpdateCache(objHandle: HCkMht; newPropVal: wordbool); stdcall;

function CkMht_getUseCids(objHandle: HCkMht): wordbool; stdcall;

procedure CkMht_putUseCids(objHandle: HCkMht; newPropVal: wordbool); stdcall;

function CkMht_getUseFilename(objHandle: HCkMht): wordbool; stdcall;

procedure CkMht_putUseFilename(objHandle: HCkMht; newPropVal: wordbool); stdcall;

function CkMht_getUseIEProxy(objHandle: HCkMht): wordbool; stdcall;

procedure CkMht_putUseIEProxy(objHandle: HCkMht; newPropVal: wordbool); stdcall;

function CkMht_getUseInline(objHandle: HCkMht): wordbool; stdcall;

procedure CkMht_putUseInline(objHandle: HCkMht; newPropVal: wordbool); stdcall;

function CkMht_getVerboseLogging(objHandle: HCkMht): wordbool; stdcall;

procedure CkMht_putVerboseLogging(objHandle: HCkMht; newPropVal: wordbool); stdcall;

procedure CkMht_getVersion(objHandle: HCkMht; outPropVal: HCkString); stdcall;

function CkMht__version(objHandle: HCkMht): PWideChar; stdcall;

procedure CkMht_getWebSiteLogin(objHandle: HCkMht; outPropVal: HCkString); stdcall;

procedure CkMht_putWebSiteLogin(objHandle: HCkMht; newPropVal: PWideChar); stdcall;

function CkMht__webSiteLogin(objHandle: HCkMht): PWideChar; stdcall;

procedure CkMht_getWebSiteLoginDomain(objHandle: HCkMht; outPropVal: HCkString); stdcall;

procedure CkMht_putWebSiteLoginDomain(objHandle: HCkMht; newPropVal: PWideChar); stdcall;

function CkMht__webSiteLoginDomain(objHandle: HCkMht): PWideChar; stdcall;

procedure CkMht_getWebSitePassword(objHandle: HCkMht; outPropVal: HCkString); stdcall;

procedure CkMht_putWebSitePassword(objHandle: HCkMht; newPropVal: PWideChar); stdcall;

function CkMht__webSitePassword(objHandle: HCkMht): PWideChar; stdcall;

procedure CkMht_AddCacheRoot(objHandle: HCkMht; dir: PWideChar); stdcall;

procedure CkMht_AddCustomHeader(objHandle: HCkMht; name: PWideChar; value: PWideChar); stdcall;

procedure CkMht_AddExternalStyleSheet(objHandle: HCkMht; url: PWideChar); stdcall;

procedure CkMht_ClearCustomHeaders(objHandle: HCkMht); stdcall;

procedure CkMht_ExcludeImagesMatching(objHandle: HCkMht; pattern: PWideChar); stdcall;

function CkMht_GetAndSaveEML(objHandle: HCkMht; url_or_htmlFilepath: PWideChar; emlPath: PWideChar): wordbool; stdcall;

function CkMht_GetAndSaveEMLAsync(objHandle: HCkMht; url_or_htmlFilepath: PWideChar; emlPath: PWideChar): HCkTask; stdcall;

function CkMht_GetAndSaveMHT(objHandle: HCkMht; url_or_htmlFilepath: PWideChar; mhtPath: PWideChar): wordbool; stdcall;

function CkMht_GetAndSaveMHTAsync(objHandle: HCkMht; url_or_htmlFilepath: PWideChar; mhtPath: PWideChar): HCkTask; stdcall;

function CkMht_GetAndZipEML(objHandle: HCkMht; url_or_htmlFilepath: PWideChar; zipEntryFilename: PWideChar; zipFilename: PWideChar): wordbool; stdcall;

function CkMht_GetAndZipEMLAsync(objHandle: HCkMht; url_or_htmlFilepath: PWideChar; zipEntryFilename: PWideChar; zipFilename: PWideChar): HCkTask; stdcall;

function CkMht_GetAndZipMHT(objHandle: HCkMht; url_or_htmlFilepath: PWideChar; zipEntryFilename: PWideChar; zipFilename: PWideChar): wordbool; stdcall;

function CkMht_GetAndZipMHTAsync(objHandle: HCkMht; url_or_htmlFilepath: PWideChar; zipEntryFilename: PWideChar; zipFilename: PWideChar): HCkTask; stdcall;

function CkMht_GetCacheRoot(objHandle: HCkMht; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkMht__getCacheRoot(objHandle: HCkMht; index: Integer): PWideChar; stdcall;

function CkMht_GetEML(objHandle: HCkMht; url_or_htmlFilepath: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkMht__getEML(objHandle: HCkMht; url_or_htmlFilepath: PWideChar): PWideChar; stdcall;

function CkMht_GetEMLAsync(objHandle: HCkMht; url_or_htmlFilepath: PWideChar): HCkTask; stdcall;

function CkMht_GetMHT(objHandle: HCkMht; url_or_htmlFilepath: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkMht__getMHT(objHandle: HCkMht; url_or_htmlFilepath: PWideChar): PWideChar; stdcall;

function CkMht_GetMHTAsync(objHandle: HCkMht; url_or_htmlFilepath: PWideChar): HCkTask; stdcall;

function CkMht_HtmlToEML(objHandle: HCkMht; htmlText: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkMht__htmlToEML(objHandle: HCkMht; htmlText: PWideChar): PWideChar; stdcall;

function CkMht_HtmlToEMLAsync(objHandle: HCkMht; htmlText: PWideChar): HCkTask; stdcall;

function CkMht_HtmlToEMLFile(objHandle: HCkMht; html: PWideChar; emlFilename: PWideChar): wordbool; stdcall;

function CkMht_HtmlToEMLFileAsync(objHandle: HCkMht; html: PWideChar; emlFilename: PWideChar): HCkTask; stdcall;

function CkMht_HtmlToMHT(objHandle: HCkMht; htmlText: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkMht__htmlToMHT(objHandle: HCkMht; htmlText: PWideChar): PWideChar; stdcall;

function CkMht_HtmlToMHTAsync(objHandle: HCkMht; htmlText: PWideChar): HCkTask; stdcall;

function CkMht_HtmlToMHTFile(objHandle: HCkMht; html: PWideChar; mhtFilename: PWideChar): wordbool; stdcall;

function CkMht_HtmlToMHTFileAsync(objHandle: HCkMht; html: PWideChar; mhtFilename: PWideChar): HCkTask; stdcall;

function CkMht_IsUnlocked(objHandle: HCkMht): wordbool; stdcall;

function CkMht_LoadTaskCaller(objHandle: HCkMht; task: HCkTask): wordbool; stdcall;

procedure CkMht_RemoveCustomHeader(objHandle: HCkMht; name: PWideChar); stdcall;

procedure CkMht_RestoreDefaults(objHandle: HCkMht); stdcall;

function CkMht_SaveLastError(objHandle: HCkMht; path: PWideChar): wordbool; stdcall;

function CkMht_UnlockComponent(objHandle: HCkMht; unlockCode: PWideChar): wordbool; stdcall;

function CkMht_UnpackMHT(objHandle: HCkMht; mhtFilename: PWideChar; unpackDir: PWideChar; htmlFilename: PWideChar; partsSubDir: PWideChar): wordbool; stdcall;

function CkMht_UnpackMHTString(objHandle: HCkMht; mhtString: PWideChar; unpackDir: PWideChar; htmlFilename: PWideChar; partsSubDir: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkMht_Create; external DLLName;
procedure CkMht_Dispose; external DLLName;

procedure CkMht_SetAbortCheck; external DLLName;
procedure CkMht_SetProgressInfo; external DLLName;
procedure CkMht_SetPercentDone; external DLLName;
procedure CkMht_SetTaskCompleted; external DLLName;
function CkMht_getAbortCurrent; external DLLName;
procedure CkMht_putAbortCurrent; external DLLName;
procedure CkMht_getBaseUrl; external DLLName;
procedure CkMht_putBaseUrl; external DLLName;
function CkMht__baseUrl; external DLLName;
function CkMht_getConnectTimeout; external DLLName;
procedure CkMht_putConnectTimeout; external DLLName;
procedure CkMht_getDebugHtmlAfter; external DLLName;
procedure CkMht_putDebugHtmlAfter; external DLLName;
function CkMht__debugHtmlAfter; external DLLName;
procedure CkMht_getDebugHtmlBefore; external DLLName;
procedure CkMht_putDebugHtmlBefore; external DLLName;
function CkMht__debugHtmlBefore; external DLLName;
procedure CkMht_getDebugLogFilePath; external DLLName;
procedure CkMht_putDebugLogFilePath; external DLLName;
function CkMht__debugLogFilePath; external DLLName;
function CkMht_getDebugTagCleaning; external DLLName;
procedure CkMht_putDebugTagCleaning; external DLLName;
function CkMht_getEmbedImages; external DLLName;
procedure CkMht_putEmbedImages; external DLLName;
function CkMht_getEmbedLocalOnly; external DLLName;
procedure CkMht_putEmbedLocalOnly; external DLLName;
function CkMht_getFetchFromCache; external DLLName;
procedure CkMht_putFetchFromCache; external DLLName;
function CkMht_getHeartbeatMs; external DLLName;
procedure CkMht_putHeartbeatMs; external DLLName;
function CkMht_getIgnoreMustRevalidate; external DLLName;
procedure CkMht_putIgnoreMustRevalidate; external DLLName;
function CkMht_getIgnoreNoCache; external DLLName;
procedure CkMht_putIgnoreNoCache; external DLLName;
procedure CkMht_getLastErrorHtml; external DLLName;
function CkMht__lastErrorHtml; external DLLName;
procedure CkMht_getLastErrorText; external DLLName;
function CkMht__lastErrorText; external DLLName;
procedure CkMht_getLastErrorXml; external DLLName;
function CkMht__lastErrorXml; external DLLName;
function CkMht_getLastMethodSuccess; external DLLName;
procedure CkMht_putLastMethodSuccess; external DLLName;
function CkMht_getNoScripts; external DLLName;
procedure CkMht_putNoScripts; external DLLName;
function CkMht_getNtlmAuth; external DLLName;
procedure CkMht_putNtlmAuth; external DLLName;
function CkMht_getNumCacheLevels; external DLLName;
procedure CkMht_putNumCacheLevels; external DLLName;
function CkMht_getNumCacheRoots; external DLLName;
function CkMht_getPreferIpv6; external DLLName;
procedure CkMht_putPreferIpv6; external DLLName;
function CkMht_getPreferMHTScripts; external DLLName;
procedure CkMht_putPreferMHTScripts; external DLLName;
procedure CkMht_getProxy; external DLLName;
procedure CkMht_putProxy; external DLLName;
function CkMht__proxy; external DLLName;
procedure CkMht_getProxyLogin; external DLLName;
procedure CkMht_putProxyLogin; external DLLName;
function CkMht__proxyLogin; external DLLName;
procedure CkMht_getProxyPassword; external DLLName;
procedure CkMht_putProxyPassword; external DLLName;
function CkMht__proxyPassword; external DLLName;
function CkMht_getReadTimeout; external DLLName;
procedure CkMht_putReadTimeout; external DLLName;
function CkMht_getRequireSslCertVerify; external DLLName;
procedure CkMht_putRequireSslCertVerify; external DLLName;
procedure CkMht_getSocksHostname; external DLLName;
procedure CkMht_putSocksHostname; external DLLName;
function CkMht__socksHostname; external DLLName;
procedure CkMht_getSocksPassword; external DLLName;
procedure CkMht_putSocksPassword; external DLLName;
function CkMht__socksPassword; external DLLName;
function CkMht_getSocksPort; external DLLName;
procedure CkMht_putSocksPort; external DLLName;
procedure CkMht_getSocksUsername; external DLLName;
procedure CkMht_putSocksUsername; external DLLName;
function CkMht__socksUsername; external DLLName;
function CkMht_getSocksVersion; external DLLName;
procedure CkMht_putSocksVersion; external DLLName;
function CkMht_getUnpackDirect; external DLLName;
procedure CkMht_putUnpackDirect; external DLLName;
function CkMht_getUnpackUseRelPaths; external DLLName;
procedure CkMht_putUnpackUseRelPaths; external DLLName;
function CkMht_getUpdateCache; external DLLName;
procedure CkMht_putUpdateCache; external DLLName;
function CkMht_getUseCids; external DLLName;
procedure CkMht_putUseCids; external DLLName;
function CkMht_getUseFilename; external DLLName;
procedure CkMht_putUseFilename; external DLLName;
function CkMht_getUseIEProxy; external DLLName;
procedure CkMht_putUseIEProxy; external DLLName;
function CkMht_getUseInline; external DLLName;
procedure CkMht_putUseInline; external DLLName;
function CkMht_getVerboseLogging; external DLLName;
procedure CkMht_putVerboseLogging; external DLLName;
procedure CkMht_getVersion; external DLLName;
function CkMht__version; external DLLName;
procedure CkMht_getWebSiteLogin; external DLLName;
procedure CkMht_putWebSiteLogin; external DLLName;
function CkMht__webSiteLogin; external DLLName;
procedure CkMht_getWebSiteLoginDomain; external DLLName;
procedure CkMht_putWebSiteLoginDomain; external DLLName;
function CkMht__webSiteLoginDomain; external DLLName;
procedure CkMht_getWebSitePassword; external DLLName;
procedure CkMht_putWebSitePassword; external DLLName;
function CkMht__webSitePassword; external DLLName;
procedure CkMht_AddCacheRoot; external DLLName;
procedure CkMht_AddCustomHeader; external DLLName;
procedure CkMht_AddExternalStyleSheet; external DLLName;
procedure CkMht_ClearCustomHeaders; external DLLName;
procedure CkMht_ExcludeImagesMatching; external DLLName;
function CkMht_GetAndSaveEML; external DLLName;
function CkMht_GetAndSaveEMLAsync; external DLLName;
function CkMht_GetAndSaveMHT; external DLLName;
function CkMht_GetAndSaveMHTAsync; external DLLName;
function CkMht_GetAndZipEML; external DLLName;
function CkMht_GetAndZipEMLAsync; external DLLName;
function CkMht_GetAndZipMHT; external DLLName;
function CkMht_GetAndZipMHTAsync; external DLLName;
function CkMht_GetCacheRoot; external DLLName;
function CkMht__getCacheRoot; external DLLName;
function CkMht_GetEML; external DLLName;
function CkMht__getEML; external DLLName;
function CkMht_GetEMLAsync; external DLLName;
function CkMht_GetMHT; external DLLName;
function CkMht__getMHT; external DLLName;
function CkMht_GetMHTAsync; external DLLName;
function CkMht_HtmlToEML; external DLLName;
function CkMht__htmlToEML; external DLLName;
function CkMht_HtmlToEMLAsync; external DLLName;
function CkMht_HtmlToEMLFile; external DLLName;
function CkMht_HtmlToEMLFileAsync; external DLLName;
function CkMht_HtmlToMHT; external DLLName;
function CkMht__htmlToMHT; external DLLName;
function CkMht_HtmlToMHTAsync; external DLLName;
function CkMht_HtmlToMHTFile; external DLLName;
function CkMht_HtmlToMHTFileAsync; external DLLName;
function CkMht_IsUnlocked; external DLLName;
function CkMht_LoadTaskCaller; external DLLName;
procedure CkMht_RemoveCustomHeader; external DLLName;
procedure CkMht_RestoreDefaults; external DLLName;
function CkMht_SaveLastError; external DLLName;
function CkMht_UnlockComponent; external DLLName;
function CkMht_UnpackMHT; external DLLName;
function CkMht_UnpackMHTString; external DLLName;



end.
