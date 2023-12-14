unit Rest;

interface

type

HCkSecureString = Pointer;
HCkAuthAzureAD = Pointer;
HCkAuthGoogle = Pointer;
HCkStringBuilder = Pointer;
HCkSocket = Pointer;
HCkBinData = Pointer;
HCkString = Pointer;
HCkByteData = Pointer;
HCkAuthAws = Pointer;
HCkUrl = Pointer;
HCkAuthAzureSAS = Pointer;
HCkTask = Pointer;
HCkJsonObject = Pointer;
HCkStream = Pointer;
HCkOAuth2 = Pointer;
HCkRest = Pointer;
HCkOAuth1 = Pointer;
HCkAuthAzureStorage = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TRestAbortCheck = function(): Integer; cdecl;
TRestProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TRestPercentDone = function(pctDone: Integer): Integer; cdecl;
TRestTaskCompleted = procedure(task: HCkTask); cdecl;


function CkRest_Create: HCkRest; stdcall;
procedure CkRest_Dispose(handle: HCkRest); stdcall;

procedure CkRest_SetAbortCheck(objHandle: HCkRest; fn: TRestAbortCheck) stdcall;
procedure CkRest_SetProgressInfo(objHandle: HCkRest; fn: TRestProgressInfo) stdcall;
procedure CkRest_SetPercentDone(objHandle: HCkRest; fn: TRestPercentDone) stdcall;
procedure CkRest_SetTaskCompleted(objHandle: HCkRest; fn: TRestTaskCompleted) stdcall;
function CkRest_getAllowHeaderFolding(objHandle: HCkRest): wordbool; stdcall;

procedure CkRest_putAllowHeaderFolding(objHandle: HCkRest; newPropVal: wordbool); stdcall;

function CkRest_getAllowHeaderQB(objHandle: HCkRest): wordbool; stdcall;

procedure CkRest_putAllowHeaderQB(objHandle: HCkRest; newPropVal: wordbool); stdcall;

procedure CkRest_getAuthorization(objHandle: HCkRest; outPropVal: HCkString); stdcall;

procedure CkRest_putAuthorization(objHandle: HCkRest; newPropVal: PWideChar); stdcall;

function CkRest__authorization(objHandle: HCkRest): PWideChar; stdcall;

function CkRest_getConnectFailReason(objHandle: HCkRest): Integer; stdcall;

function CkRest_getConnectTimeoutMs(objHandle: HCkRest): Integer; stdcall;

procedure CkRest_putConnectTimeoutMs(objHandle: HCkRest; newPropVal: Integer); stdcall;

procedure CkRest_getDebugLogFilePath(objHandle: HCkRest; outPropVal: HCkString); stdcall;

procedure CkRest_putDebugLogFilePath(objHandle: HCkRest; newPropVal: PWideChar); stdcall;

function CkRest__debugLogFilePath(objHandle: HCkRest): PWideChar; stdcall;

function CkRest_getDebugMode(objHandle: HCkRest): wordbool; stdcall;

procedure CkRest_putDebugMode(objHandle: HCkRest; newPropVal: wordbool); stdcall;

function CkRest_getHeartbeatMs(objHandle: HCkRest): Integer; stdcall;

procedure CkRest_putHeartbeatMs(objHandle: HCkRest; newPropVal: Integer); stdcall;

procedure CkRest_getHost(objHandle: HCkRest; outPropVal: HCkString); stdcall;

procedure CkRest_putHost(objHandle: HCkRest; newPropVal: PWideChar); stdcall;

function CkRest__host(objHandle: HCkRest): PWideChar; stdcall;

function CkRest_getIdleTimeoutMs(objHandle: HCkRest): Integer; stdcall;

procedure CkRest_putIdleTimeoutMs(objHandle: HCkRest; newPropVal: Integer); stdcall;

procedure CkRest_getLastErrorHtml(objHandle: HCkRest; outPropVal: HCkString); stdcall;

function CkRest__lastErrorHtml(objHandle: HCkRest): PWideChar; stdcall;

procedure CkRest_getLastErrorText(objHandle: HCkRest; outPropVal: HCkString); stdcall;

function CkRest__lastErrorText(objHandle: HCkRest): PWideChar; stdcall;

procedure CkRest_getLastErrorXml(objHandle: HCkRest; outPropVal: HCkString); stdcall;

function CkRest__lastErrorXml(objHandle: HCkRest): PWideChar; stdcall;

function CkRest_getLastMethodSuccess(objHandle: HCkRest): wordbool; stdcall;

procedure CkRest_putLastMethodSuccess(objHandle: HCkRest; newPropVal: wordbool); stdcall;

procedure CkRest_getLastRequestHeader(objHandle: HCkRest; outPropVal: HCkString); stdcall;

function CkRest__lastRequestHeader(objHandle: HCkRest): PWideChar; stdcall;

procedure CkRest_getLastRequestStartLine(objHandle: HCkRest; outPropVal: HCkString); stdcall;

function CkRest__lastRequestStartLine(objHandle: HCkRest): PWideChar; stdcall;

function CkRest_getNumResponseHeaders(objHandle: HCkRest): Integer; stdcall;

procedure CkRest_getPartSelector(objHandle: HCkRest; outPropVal: HCkString); stdcall;

procedure CkRest_putPartSelector(objHandle: HCkRest; newPropVal: PWideChar); stdcall;

function CkRest__partSelector(objHandle: HCkRest): PWideChar; stdcall;

function CkRest_getPercentDoneOnSend(objHandle: HCkRest): wordbool; stdcall;

procedure CkRest_putPercentDoneOnSend(objHandle: HCkRest; newPropVal: wordbool); stdcall;

procedure CkRest_getResponseHeader(objHandle: HCkRest; outPropVal: HCkString); stdcall;

function CkRest__responseHeader(objHandle: HCkRest): PWideChar; stdcall;

function CkRest_getResponseStatusCode(objHandle: HCkRest): Integer; stdcall;

procedure CkRest_getResponseStatusText(objHandle: HCkRest; outPropVal: HCkString); stdcall;

function CkRest__responseStatusText(objHandle: HCkRest): PWideChar; stdcall;

function CkRest_getStreamNonChunked(objHandle: HCkRest): wordbool; stdcall;

procedure CkRest_putStreamNonChunked(objHandle: HCkRest; newPropVal: wordbool); stdcall;

procedure CkRest_getUncommonOptions(objHandle: HCkRest; outPropVal: HCkString); stdcall;

procedure CkRest_putUncommonOptions(objHandle: HCkRest; newPropVal: PWideChar); stdcall;

function CkRest__uncommonOptions(objHandle: HCkRest): PWideChar; stdcall;

function CkRest_getVerboseLogging(objHandle: HCkRest): wordbool; stdcall;

procedure CkRest_putVerboseLogging(objHandle: HCkRest; newPropVal: wordbool); stdcall;

procedure CkRest_getVersion(objHandle: HCkRest; outPropVal: HCkString); stdcall;

function CkRest__version(objHandle: HCkRest): PWideChar; stdcall;

function CkRest_AddHeader(objHandle: HCkRest; name: PWideChar; value: PWideChar): wordbool; stdcall;

function CkRest_AddMwsSignature(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar; domain: PWideChar; mwsSecretKey: PWideChar): wordbool; stdcall;

function CkRest_AddPathParam(objHandle: HCkRest; name: PWideChar; value: PWideChar): wordbool; stdcall;

function CkRest_AddQueryParam(objHandle: HCkRest; name: PWideChar; value: PWideChar): wordbool; stdcall;

function CkRest_AddQueryParams(objHandle: HCkRest; queryString: PWideChar): wordbool; stdcall;

function CkRest_AddQueryParamSb(objHandle: HCkRest; name: PWideChar; value: HCkStringBuilder): wordbool; stdcall;

function CkRest_ClearAllHeaders(objHandle: HCkRest): wordbool; stdcall;

function CkRest_ClearAllParts(objHandle: HCkRest): wordbool; stdcall;

function CkRest_ClearAllPathParams(objHandle: HCkRest): wordbool; stdcall;

function CkRest_ClearAllQueryParams(objHandle: HCkRest): wordbool; stdcall;

function CkRest_ClearAuth(objHandle: HCkRest): wordbool; stdcall;

procedure CkRest_ClearResponseBodyStream(objHandle: HCkRest); stdcall;

function CkRest_Connect(objHandle: HCkRest; hostname: PWideChar; port: Integer; tls: wordbool; autoReconnect: wordbool): wordbool; stdcall;

function CkRest_ConnectAsync(objHandle: HCkRest; hostname: PWideChar; port: Integer; tls: wordbool; autoReconnect: wordbool): HCkTask; stdcall;

function CkRest_Disconnect(objHandle: HCkRest; maxWaitMs: Integer): wordbool; stdcall;

function CkRest_DisconnectAsync(objHandle: HCkRest; maxWaitMs: Integer): HCkTask; stdcall;

function CkRest_FullRequestBd(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar; binData: HCkBinData; responseBody: HCkStringBuilder): wordbool; stdcall;

function CkRest_FullRequestBdAsync(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar; binData: HCkBinData; responseBody: HCkStringBuilder): HCkTask; stdcall;

function CkRest_FullRequestBinary(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar; bodyBytes: HCkByteData; outStr: HCkString): wordbool; stdcall;

function CkRest__fullRequestBinary(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar; bodyBytes: HCkByteData): PWideChar; stdcall;

function CkRest_FullRequestBinaryAsync(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar; bodyBytes: HCkByteData): HCkTask; stdcall;

function CkRest_FullRequestFormUrlEncoded(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkRest__fullRequestFormUrlEncoded(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar): PWideChar; stdcall;

function CkRest_FullRequestFormUrlEncodedAsync(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar): HCkTask; stdcall;

function CkRest_FullRequestMultipart(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkRest__fullRequestMultipart(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar): PWideChar; stdcall;

function CkRest_FullRequestMultipartAsync(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar): HCkTask; stdcall;

function CkRest_FullRequestNoBody(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkRest__fullRequestNoBody(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar): PWideChar; stdcall;

function CkRest_FullRequestNoBodyAsync(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar): HCkTask; stdcall;

function CkRest_FullRequestNoBodyBd(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar; binData: HCkBinData): wordbool; stdcall;

function CkRest_FullRequestNoBodyBdAsync(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar; binData: HCkBinData): HCkTask; stdcall;

function CkRest_FullRequestNoBodySb(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar; sb: HCkStringBuilder): wordbool; stdcall;

function CkRest_FullRequestNoBodySbAsync(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar; sb: HCkStringBuilder): HCkTask; stdcall;

function CkRest_FullRequestSb(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar; requestBody: HCkStringBuilder; responseBody: HCkStringBuilder): wordbool; stdcall;

function CkRest_FullRequestSbAsync(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar; requestBody: HCkStringBuilder; responseBody: HCkStringBuilder): HCkTask; stdcall;

function CkRest_FullRequestStream(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar; stream: HCkStream; outStr: HCkString): wordbool; stdcall;

function CkRest__fullRequestStream(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar; stream: HCkStream): PWideChar; stdcall;

function CkRest_FullRequestStreamAsync(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar; stream: HCkStream): HCkTask; stdcall;

function CkRest_FullRequestString(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar; bodyText: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkRest__fullRequestString(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar; bodyText: PWideChar): PWideChar; stdcall;

function CkRest_FullRequestStringAsync(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar; bodyText: PWideChar): HCkTask; stdcall;

function CkRest_GetLastDebugRequest(objHandle: HCkRest; bd: HCkBinData): wordbool; stdcall;

function CkRest_LastJsonData(objHandle: HCkRest): HCkJsonObject; stdcall;

function CkRest_LoadTaskCaller(objHandle: HCkRest; task: HCkTask): wordbool; stdcall;

function CkRest_ReadRespBd(objHandle: HCkRest; responseBody: HCkBinData): wordbool; stdcall;

function CkRest_ReadRespBdAsync(objHandle: HCkRest; responseBody: HCkBinData): HCkTask; stdcall;

function CkRest_ReadRespBodyBinary(objHandle: HCkRest; outData: HCkByteData): wordbool; stdcall;

function CkRest_ReadRespBodyBinaryAsync(objHandle: HCkRest): HCkTask; stdcall;

function CkRest_ReadRespBodyStream(objHandle: HCkRest; stream: HCkStream; autoSetStreamCharset: wordbool): wordbool; stdcall;

function CkRest_ReadRespBodyStreamAsync(objHandle: HCkRest; stream: HCkStream; autoSetStreamCharset: wordbool): HCkTask; stdcall;

function CkRest_ReadRespBodyString(objHandle: HCkRest; outStr: HCkString): wordbool; stdcall;

function CkRest__readRespBodyString(objHandle: HCkRest): PWideChar; stdcall;

function CkRest_ReadRespBodyStringAsync(objHandle: HCkRest): HCkTask; stdcall;

function CkRest_ReadResponseHeader(objHandle: HCkRest): Integer; stdcall;

function CkRest_ReadResponseHeaderAsync(objHandle: HCkRest): HCkTask; stdcall;

function CkRest_ReadRespSb(objHandle: HCkRest; responseBody: HCkStringBuilder): wordbool; stdcall;

function CkRest_ReadRespSbAsync(objHandle: HCkRest; responseBody: HCkStringBuilder): HCkTask; stdcall;

function CkRest_RedirectUrl(objHandle: HCkRest): HCkUrl; stdcall;

function CkRest_RemoveHeader(objHandle: HCkRest; name: PWideChar): wordbool; stdcall;

function CkRest_RemoveQueryParam(objHandle: HCkRest; name: PWideChar): wordbool; stdcall;

function CkRest_ResponseHdrByName(objHandle: HCkRest; name: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkRest__responseHdrByName(objHandle: HCkRest; name: PWideChar): PWideChar; stdcall;

function CkRest_ResponseHdrName(objHandle: HCkRest; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkRest__responseHdrName(objHandle: HCkRest; index: Integer): PWideChar; stdcall;

function CkRest_ResponseHdrValue(objHandle: HCkRest; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkRest__responseHdrValue(objHandle: HCkRest; index: Integer): PWideChar; stdcall;

function CkRest_SaveLastError(objHandle: HCkRest; path: PWideChar): wordbool; stdcall;

function CkRest_SendReqBd(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar; body: HCkBinData): wordbool; stdcall;

function CkRest_SendReqBdAsync(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar; body: HCkBinData): HCkTask; stdcall;

function CkRest_SendReqBinaryBody(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar; body: HCkByteData): wordbool; stdcall;

function CkRest_SendReqBinaryBodyAsync(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar; body: HCkByteData): HCkTask; stdcall;

function CkRest_SendReqFormUrlEncoded(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar): wordbool; stdcall;

function CkRest_SendReqFormUrlEncodedAsync(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar): HCkTask; stdcall;

function CkRest_SendReqMultipart(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar): wordbool; stdcall;

function CkRest_SendReqMultipartAsync(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar): HCkTask; stdcall;

function CkRest_SendReqNoBody(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar): wordbool; stdcall;

function CkRest_SendReqNoBodyAsync(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar): HCkTask; stdcall;

function CkRest_SendReqSb(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar; bodySb: HCkStringBuilder): wordbool; stdcall;

function CkRest_SendReqSbAsync(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar; bodySb: HCkStringBuilder): HCkTask; stdcall;

function CkRest_SendReqStreamBody(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar; stream: HCkStream): wordbool; stdcall;

function CkRest_SendReqStreamBodyAsync(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar; stream: HCkStream): HCkTask; stdcall;

function CkRest_SendReqStringBody(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar; bodyText: PWideChar): wordbool; stdcall;

function CkRest_SendReqStringBodyAsync(objHandle: HCkRest; httpVerb: PWideChar; uriPath: PWideChar; bodyText: PWideChar): HCkTask; stdcall;

function CkRest_SetAuthAws(objHandle: HCkRest; authProvider: HCkAuthAws): wordbool; stdcall;

function CkRest_SetAuthAzureAD(objHandle: HCkRest; authProvider: HCkAuthAzureAD): wordbool; stdcall;

function CkRest_SetAuthAzureSas(objHandle: HCkRest; authProvider: HCkAuthAzureSAS): wordbool; stdcall;

function CkRest_SetAuthAzureStorage(objHandle: HCkRest; authProvider: HCkAuthAzureStorage): wordbool; stdcall;

function CkRest_SetAuthBasic(objHandle: HCkRest; username: PWideChar; password: PWideChar): wordbool; stdcall;

function CkRest_SetAuthBasicSecure(objHandle: HCkRest; username: HCkSecureString; password: HCkSecureString): wordbool; stdcall;

function CkRest_SetAuthGoogle(objHandle: HCkRest; authProvider: HCkAuthGoogle): wordbool; stdcall;

function CkRest_SetAuthOAuth1(objHandle: HCkRest; authProvider: HCkOAuth1; useQueryParams: wordbool): wordbool; stdcall;

function CkRest_SetAuthOAuth2(objHandle: HCkRest; authProvider: HCkOAuth2): wordbool; stdcall;

function CkRest_SetMultipartBodyBd(objHandle: HCkRest; bodyData: HCkBinData): wordbool; stdcall;

function CkRest_SetMultipartBodyBinary(objHandle: HCkRest; bodyData: HCkByteData): wordbool; stdcall;

function CkRest_SetMultipartBodySb(objHandle: HCkRest; bodySb: HCkStringBuilder): wordbool; stdcall;

function CkRest_SetMultipartBodyStream(objHandle: HCkRest; stream: HCkStream): wordbool; stdcall;

function CkRest_SetMultipartBodyString(objHandle: HCkRest; bodyText: PWideChar): wordbool; stdcall;

function CkRest_SetResponseBodyStream(objHandle: HCkRest; expectedStatus: Integer; autoSetStreamCharset: wordbool; responseStream: HCkStream): wordbool; stdcall;

function CkRest_UseConnection(objHandle: HCkRest; connection: HCkSocket; autoReconnect: wordbool): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkRest_Create; external DLLName;
procedure CkRest_Dispose; external DLLName;

procedure CkRest_SetAbortCheck; external DLLName;
procedure CkRest_SetProgressInfo; external DLLName;
procedure CkRest_SetPercentDone; external DLLName;
procedure CkRest_SetTaskCompleted; external DLLName;
function CkRest_getAllowHeaderFolding; external DLLName;
procedure CkRest_putAllowHeaderFolding; external DLLName;
function CkRest_getAllowHeaderQB; external DLLName;
procedure CkRest_putAllowHeaderQB; external DLLName;
procedure CkRest_getAuthorization; external DLLName;
procedure CkRest_putAuthorization; external DLLName;
function CkRest__authorization; external DLLName;
function CkRest_getConnectFailReason; external DLLName;
function CkRest_getConnectTimeoutMs; external DLLName;
procedure CkRest_putConnectTimeoutMs; external DLLName;
procedure CkRest_getDebugLogFilePath; external DLLName;
procedure CkRest_putDebugLogFilePath; external DLLName;
function CkRest__debugLogFilePath; external DLLName;
function CkRest_getDebugMode; external DLLName;
procedure CkRest_putDebugMode; external DLLName;
function CkRest_getHeartbeatMs; external DLLName;
procedure CkRest_putHeartbeatMs; external DLLName;
procedure CkRest_getHost; external DLLName;
procedure CkRest_putHost; external DLLName;
function CkRest__host; external DLLName;
function CkRest_getIdleTimeoutMs; external DLLName;
procedure CkRest_putIdleTimeoutMs; external DLLName;
procedure CkRest_getLastErrorHtml; external DLLName;
function CkRest__lastErrorHtml; external DLLName;
procedure CkRest_getLastErrorText; external DLLName;
function CkRest__lastErrorText; external DLLName;
procedure CkRest_getLastErrorXml; external DLLName;
function CkRest__lastErrorXml; external DLLName;
function CkRest_getLastMethodSuccess; external DLLName;
procedure CkRest_putLastMethodSuccess; external DLLName;
procedure CkRest_getLastRequestHeader; external DLLName;
function CkRest__lastRequestHeader; external DLLName;
procedure CkRest_getLastRequestStartLine; external DLLName;
function CkRest__lastRequestStartLine; external DLLName;
function CkRest_getNumResponseHeaders; external DLLName;
procedure CkRest_getPartSelector; external DLLName;
procedure CkRest_putPartSelector; external DLLName;
function CkRest__partSelector; external DLLName;
function CkRest_getPercentDoneOnSend; external DLLName;
procedure CkRest_putPercentDoneOnSend; external DLLName;
procedure CkRest_getResponseHeader; external DLLName;
function CkRest__responseHeader; external DLLName;
function CkRest_getResponseStatusCode; external DLLName;
procedure CkRest_getResponseStatusText; external DLLName;
function CkRest__responseStatusText; external DLLName;
function CkRest_getStreamNonChunked; external DLLName;
procedure CkRest_putStreamNonChunked; external DLLName;
procedure CkRest_getUncommonOptions; external DLLName;
procedure CkRest_putUncommonOptions; external DLLName;
function CkRest__uncommonOptions; external DLLName;
function CkRest_getVerboseLogging; external DLLName;
procedure CkRest_putVerboseLogging; external DLLName;
procedure CkRest_getVersion; external DLLName;
function CkRest__version; external DLLName;
function CkRest_AddHeader; external DLLName;
function CkRest_AddMwsSignature; external DLLName;
function CkRest_AddPathParam; external DLLName;
function CkRest_AddQueryParam; external DLLName;
function CkRest_AddQueryParams; external DLLName;
function CkRest_AddQueryParamSb; external DLLName;
function CkRest_ClearAllHeaders; external DLLName;
function CkRest_ClearAllParts; external DLLName;
function CkRest_ClearAllPathParams; external DLLName;
function CkRest_ClearAllQueryParams; external DLLName;
function CkRest_ClearAuth; external DLLName;
procedure CkRest_ClearResponseBodyStream; external DLLName;
function CkRest_Connect; external DLLName;
function CkRest_ConnectAsync; external DLLName;
function CkRest_Disconnect; external DLLName;
function CkRest_DisconnectAsync; external DLLName;
function CkRest_FullRequestBd; external DLLName;
function CkRest_FullRequestBdAsync; external DLLName;
function CkRest_FullRequestBinary; external DLLName;
function CkRest__fullRequestBinary; external DLLName;
function CkRest_FullRequestBinaryAsync; external DLLName;
function CkRest_FullRequestFormUrlEncoded; external DLLName;
function CkRest__fullRequestFormUrlEncoded; external DLLName;
function CkRest_FullRequestFormUrlEncodedAsync; external DLLName;
function CkRest_FullRequestMultipart; external DLLName;
function CkRest__fullRequestMultipart; external DLLName;
function CkRest_FullRequestMultipartAsync; external DLLName;
function CkRest_FullRequestNoBody; external DLLName;
function CkRest__fullRequestNoBody; external DLLName;
function CkRest_FullRequestNoBodyAsync; external DLLName;
function CkRest_FullRequestNoBodyBd; external DLLName;
function CkRest_FullRequestNoBodyBdAsync; external DLLName;
function CkRest_FullRequestNoBodySb; external DLLName;
function CkRest_FullRequestNoBodySbAsync; external DLLName;
function CkRest_FullRequestSb; external DLLName;
function CkRest_FullRequestSbAsync; external DLLName;
function CkRest_FullRequestStream; external DLLName;
function CkRest__fullRequestStream; external DLLName;
function CkRest_FullRequestStreamAsync; external DLLName;
function CkRest_FullRequestString; external DLLName;
function CkRest__fullRequestString; external DLLName;
function CkRest_FullRequestStringAsync; external DLLName;
function CkRest_GetLastDebugRequest; external DLLName;
function CkRest_LastJsonData; external DLLName;
function CkRest_LoadTaskCaller; external DLLName;
function CkRest_ReadRespBd; external DLLName;
function CkRest_ReadRespBdAsync; external DLLName;
function CkRest_ReadRespBodyBinary; external DLLName;
function CkRest_ReadRespBodyBinaryAsync; external DLLName;
function CkRest_ReadRespBodyStream; external DLLName;
function CkRest_ReadRespBodyStreamAsync; external DLLName;
function CkRest_ReadRespBodyString; external DLLName;
function CkRest__readRespBodyString; external DLLName;
function CkRest_ReadRespBodyStringAsync; external DLLName;
function CkRest_ReadResponseHeader; external DLLName;
function CkRest_ReadResponseHeaderAsync; external DLLName;
function CkRest_ReadRespSb; external DLLName;
function CkRest_ReadRespSbAsync; external DLLName;
function CkRest_RedirectUrl; external DLLName;
function CkRest_RemoveHeader; external DLLName;
function CkRest_RemoveQueryParam; external DLLName;
function CkRest_ResponseHdrByName; external DLLName;
function CkRest__responseHdrByName; external DLLName;
function CkRest_ResponseHdrName; external DLLName;
function CkRest__responseHdrName; external DLLName;
function CkRest_ResponseHdrValue; external DLLName;
function CkRest__responseHdrValue; external DLLName;
function CkRest_SaveLastError; external DLLName;
function CkRest_SendReqBd; external DLLName;
function CkRest_SendReqBdAsync; external DLLName;
function CkRest_SendReqBinaryBody; external DLLName;
function CkRest_SendReqBinaryBodyAsync; external DLLName;
function CkRest_SendReqFormUrlEncoded; external DLLName;
function CkRest_SendReqFormUrlEncodedAsync; external DLLName;
function CkRest_SendReqMultipart; external DLLName;
function CkRest_SendReqMultipartAsync; external DLLName;
function CkRest_SendReqNoBody; external DLLName;
function CkRest_SendReqNoBodyAsync; external DLLName;
function CkRest_SendReqSb; external DLLName;
function CkRest_SendReqSbAsync; external DLLName;
function CkRest_SendReqStreamBody; external DLLName;
function CkRest_SendReqStreamBodyAsync; external DLLName;
function CkRest_SendReqStringBody; external DLLName;
function CkRest_SendReqStringBodyAsync; external DLLName;
function CkRest_SetAuthAws; external DLLName;
function CkRest_SetAuthAzureAD; external DLLName;
function CkRest_SetAuthAzureSas; external DLLName;
function CkRest_SetAuthAzureStorage; external DLLName;
function CkRest_SetAuthBasic; external DLLName;
function CkRest_SetAuthBasicSecure; external DLLName;
function CkRest_SetAuthGoogle; external DLLName;
function CkRest_SetAuthOAuth1; external DLLName;
function CkRest_SetAuthOAuth2; external DLLName;
function CkRest_SetMultipartBodyBd; external DLLName;
function CkRest_SetMultipartBodyBinary; external DLLName;
function CkRest_SetMultipartBodySb; external DLLName;
function CkRest_SetMultipartBodyStream; external DLLName;
function CkRest_SetMultipartBodyString; external DLLName;
function CkRest_SetResponseBodyStream; external DLLName;
function CkRest_UseConnection; external DLLName;



end.
