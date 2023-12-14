unit OAuth2;

interface

type

HCkTask = Pointer;
HCkSocket = Pointer;
HCkOAuth2 = Pointer;
HCkString = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TOAuth2AbortCheck = function(): Integer; cdecl;
TOAuth2ProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TOAuth2PercentDone = function(pctDone: Integer): Integer; cdecl;
TOAuth2TaskCompleted = procedure(task: HCkTask); cdecl;


function CkOAuth2_Create: HCkOAuth2; stdcall;
procedure CkOAuth2_Dispose(handle: HCkOAuth2); stdcall;

procedure CkOAuth2_SetAbortCheck(objHandle: HCkOAuth2; fn: TOAuth2AbortCheck) stdcall;
procedure CkOAuth2_SetProgressInfo(objHandle: HCkOAuth2; fn: TOAuth2ProgressInfo) stdcall;
procedure CkOAuth2_SetPercentDone(objHandle: HCkOAuth2; fn: TOAuth2PercentDone) stdcall;
procedure CkOAuth2_SetTaskCompleted(objHandle: HCkOAuth2; fn: TOAuth2TaskCompleted) stdcall;
procedure CkOAuth2_getAccessToken(objHandle: HCkOAuth2; outPropVal: HCkString); stdcall;

procedure CkOAuth2_putAccessToken(objHandle: HCkOAuth2; newPropVal: PWideChar); stdcall;

function CkOAuth2__accessToken(objHandle: HCkOAuth2): PWideChar; stdcall;

procedure CkOAuth2_getAccessTokenResponse(objHandle: HCkOAuth2; outPropVal: HCkString); stdcall;

function CkOAuth2__accessTokenResponse(objHandle: HCkOAuth2): PWideChar; stdcall;

procedure CkOAuth2_getAppCallbackUrl(objHandle: HCkOAuth2; outPropVal: HCkString); stdcall;

procedure CkOAuth2_putAppCallbackUrl(objHandle: HCkOAuth2; newPropVal: PWideChar); stdcall;

function CkOAuth2__appCallbackUrl(objHandle: HCkOAuth2): PWideChar; stdcall;

function CkOAuth2_getAuthFlowState(objHandle: HCkOAuth2): Integer; stdcall;

procedure CkOAuth2_getAuthorizationEndpoint(objHandle: HCkOAuth2; outPropVal: HCkString); stdcall;

procedure CkOAuth2_putAuthorizationEndpoint(objHandle: HCkOAuth2; newPropVal: PWideChar); stdcall;

function CkOAuth2__authorizationEndpoint(objHandle: HCkOAuth2): PWideChar; stdcall;

procedure CkOAuth2_getClientId(objHandle: HCkOAuth2; outPropVal: HCkString); stdcall;

procedure CkOAuth2_putClientId(objHandle: HCkOAuth2; newPropVal: PWideChar); stdcall;

function CkOAuth2__clientId(objHandle: HCkOAuth2): PWideChar; stdcall;

procedure CkOAuth2_getClientSecret(objHandle: HCkOAuth2; outPropVal: HCkString); stdcall;

procedure CkOAuth2_putClientSecret(objHandle: HCkOAuth2; newPropVal: PWideChar); stdcall;

function CkOAuth2__clientSecret(objHandle: HCkOAuth2): PWideChar; stdcall;

function CkOAuth2_getCodeChallenge(objHandle: HCkOAuth2): wordbool; stdcall;

procedure CkOAuth2_putCodeChallenge(objHandle: HCkOAuth2; newPropVal: wordbool); stdcall;

procedure CkOAuth2_getCodeChallengeMethod(objHandle: HCkOAuth2; outPropVal: HCkString); stdcall;

procedure CkOAuth2_putCodeChallengeMethod(objHandle: HCkOAuth2; newPropVal: PWideChar); stdcall;

function CkOAuth2__codeChallengeMethod(objHandle: HCkOAuth2): PWideChar; stdcall;

procedure CkOAuth2_getDebugLogFilePath(objHandle: HCkOAuth2; outPropVal: HCkString); stdcall;

procedure CkOAuth2_putDebugLogFilePath(objHandle: HCkOAuth2; newPropVal: PWideChar); stdcall;

function CkOAuth2__debugLogFilePath(objHandle: HCkOAuth2): PWideChar; stdcall;

procedure CkOAuth2_getFailureInfo(objHandle: HCkOAuth2; outPropVal: HCkString); stdcall;

function CkOAuth2__failureInfo(objHandle: HCkOAuth2): PWideChar; stdcall;

function CkOAuth2_getIncludeNonce(objHandle: HCkOAuth2): wordbool; stdcall;

procedure CkOAuth2_putIncludeNonce(objHandle: HCkOAuth2; newPropVal: wordbool); stdcall;

procedure CkOAuth2_getLastErrorHtml(objHandle: HCkOAuth2; outPropVal: HCkString); stdcall;

function CkOAuth2__lastErrorHtml(objHandle: HCkOAuth2): PWideChar; stdcall;

procedure CkOAuth2_getLastErrorText(objHandle: HCkOAuth2; outPropVal: HCkString); stdcall;

function CkOAuth2__lastErrorText(objHandle: HCkOAuth2): PWideChar; stdcall;

procedure CkOAuth2_getLastErrorXml(objHandle: HCkOAuth2; outPropVal: HCkString); stdcall;

function CkOAuth2__lastErrorXml(objHandle: HCkOAuth2): PWideChar; stdcall;

function CkOAuth2_getLastMethodSuccess(objHandle: HCkOAuth2): wordbool; stdcall;

procedure CkOAuth2_putLastMethodSuccess(objHandle: HCkOAuth2; newPropVal: wordbool); stdcall;

function CkOAuth2_getListenPort(objHandle: HCkOAuth2): Integer; stdcall;

procedure CkOAuth2_putListenPort(objHandle: HCkOAuth2; newPropVal: Integer); stdcall;

function CkOAuth2_getListenPortRangeEnd(objHandle: HCkOAuth2): Integer; stdcall;

procedure CkOAuth2_putListenPortRangeEnd(objHandle: HCkOAuth2; newPropVal: Integer); stdcall;

function CkOAuth2_getListenPortSelected(objHandle: HCkOAuth2): Integer; stdcall;

procedure CkOAuth2_getLocalHost(objHandle: HCkOAuth2; outPropVal: HCkString); stdcall;

procedure CkOAuth2_putLocalHost(objHandle: HCkOAuth2; newPropVal: PWideChar); stdcall;

function CkOAuth2__localHost(objHandle: HCkOAuth2): PWideChar; stdcall;

function CkOAuth2_getNonceLength(objHandle: HCkOAuth2): Integer; stdcall;

procedure CkOAuth2_putNonceLength(objHandle: HCkOAuth2; newPropVal: Integer); stdcall;

procedure CkOAuth2_getRedirectAllowHtml(objHandle: HCkOAuth2; outPropVal: HCkString); stdcall;

procedure CkOAuth2_putRedirectAllowHtml(objHandle: HCkOAuth2; newPropVal: PWideChar); stdcall;

function CkOAuth2__redirectAllowHtml(objHandle: HCkOAuth2): PWideChar; stdcall;

procedure CkOAuth2_getRedirectDenyHtml(objHandle: HCkOAuth2; outPropVal: HCkString); stdcall;

procedure CkOAuth2_putRedirectDenyHtml(objHandle: HCkOAuth2; newPropVal: PWideChar); stdcall;

function CkOAuth2__redirectDenyHtml(objHandle: HCkOAuth2): PWideChar; stdcall;

procedure CkOAuth2_getRedirectReqReceived(objHandle: HCkOAuth2; outPropVal: HCkString); stdcall;

function CkOAuth2__redirectReqReceived(objHandle: HCkOAuth2): PWideChar; stdcall;

procedure CkOAuth2_getRefreshToken(objHandle: HCkOAuth2; outPropVal: HCkString); stdcall;

procedure CkOAuth2_putRefreshToken(objHandle: HCkOAuth2; newPropVal: PWideChar); stdcall;

function CkOAuth2__refreshToken(objHandle: HCkOAuth2): PWideChar; stdcall;

procedure CkOAuth2_getResource(objHandle: HCkOAuth2; outPropVal: HCkString); stdcall;

procedure CkOAuth2_putResource(objHandle: HCkOAuth2; newPropVal: PWideChar); stdcall;

function CkOAuth2__resource(objHandle: HCkOAuth2): PWideChar; stdcall;

procedure CkOAuth2_getResponseMode(objHandle: HCkOAuth2; outPropVal: HCkString); stdcall;

procedure CkOAuth2_putResponseMode(objHandle: HCkOAuth2; newPropVal: PWideChar); stdcall;

function CkOAuth2__responseMode(objHandle: HCkOAuth2): PWideChar; stdcall;

procedure CkOAuth2_getResponseType(objHandle: HCkOAuth2; outPropVal: HCkString); stdcall;

procedure CkOAuth2_putResponseType(objHandle: HCkOAuth2; newPropVal: PWideChar); stdcall;

function CkOAuth2__responseType(objHandle: HCkOAuth2): PWideChar; stdcall;

procedure CkOAuth2_getScope(objHandle: HCkOAuth2; outPropVal: HCkString); stdcall;

procedure CkOAuth2_putScope(objHandle: HCkOAuth2; newPropVal: PWideChar); stdcall;

function CkOAuth2__scope(objHandle: HCkOAuth2): PWideChar; stdcall;

procedure CkOAuth2_getStateParam(objHandle: HCkOAuth2; outPropVal: HCkString); stdcall;

procedure CkOAuth2_putStateParam(objHandle: HCkOAuth2; newPropVal: PWideChar); stdcall;

function CkOAuth2__stateParam(objHandle: HCkOAuth2): PWideChar; stdcall;

procedure CkOAuth2_getTokenEndpoint(objHandle: HCkOAuth2; outPropVal: HCkString); stdcall;

procedure CkOAuth2_putTokenEndpoint(objHandle: HCkOAuth2; newPropVal: PWideChar); stdcall;

function CkOAuth2__tokenEndpoint(objHandle: HCkOAuth2): PWideChar; stdcall;

procedure CkOAuth2_getTokenType(objHandle: HCkOAuth2; outPropVal: HCkString); stdcall;

procedure CkOAuth2_putTokenType(objHandle: HCkOAuth2; newPropVal: PWideChar); stdcall;

function CkOAuth2__tokenType(objHandle: HCkOAuth2): PWideChar; stdcall;

procedure CkOAuth2_getUncommonOptions(objHandle: HCkOAuth2; outPropVal: HCkString); stdcall;

procedure CkOAuth2_putUncommonOptions(objHandle: HCkOAuth2; newPropVal: PWideChar); stdcall;

function CkOAuth2__uncommonOptions(objHandle: HCkOAuth2): PWideChar; stdcall;

function CkOAuth2_getUseBasicAuth(objHandle: HCkOAuth2): wordbool; stdcall;

procedure CkOAuth2_putUseBasicAuth(objHandle: HCkOAuth2; newPropVal: wordbool); stdcall;

function CkOAuth2_getVerboseLogging(objHandle: HCkOAuth2): wordbool; stdcall;

procedure CkOAuth2_putVerboseLogging(objHandle: HCkOAuth2; newPropVal: wordbool); stdcall;

procedure CkOAuth2_getVersion(objHandle: HCkOAuth2; outPropVal: HCkString); stdcall;

function CkOAuth2__version(objHandle: HCkOAuth2): PWideChar; stdcall;

function CkOAuth2_AddAuthQueryParam(objHandle: HCkOAuth2; name: PWideChar; value: PWideChar): wordbool; stdcall;

function CkOAuth2_AddTokenQueryParam(objHandle: HCkOAuth2; name: PWideChar; value: PWideChar): wordbool; stdcall;

function CkOAuth2_Cancel(objHandle: HCkOAuth2): wordbool; stdcall;

function CkOAuth2_GetRedirectRequestParam(objHandle: HCkOAuth2; paramName: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkOAuth2__getRedirectRequestParam(objHandle: HCkOAuth2; paramName: PWideChar): PWideChar; stdcall;

function CkOAuth2_LoadTaskCaller(objHandle: HCkOAuth2; task: HCkTask): wordbool; stdcall;

function CkOAuth2_Monitor(objHandle: HCkOAuth2): wordbool; stdcall;

function CkOAuth2_MonitorAsync(objHandle: HCkOAuth2): HCkTask; stdcall;

function CkOAuth2_RefreshAccessToken(objHandle: HCkOAuth2): wordbool; stdcall;

function CkOAuth2_RefreshAccessTokenAsync(objHandle: HCkOAuth2): HCkTask; stdcall;

function CkOAuth2_SaveLastError(objHandle: HCkOAuth2; path: PWideChar): wordbool; stdcall;

function CkOAuth2_SetRefreshHeader(objHandle: HCkOAuth2; name: PWideChar; value: PWideChar): wordbool; stdcall;

function CkOAuth2_SetRefreshHeaderAsync(objHandle: HCkOAuth2; name: PWideChar; value: PWideChar): HCkTask; stdcall;

procedure CkOAuth2_SleepMs(objHandle: HCkOAuth2; millisec: Integer); stdcall;

function CkOAuth2_StartAuth(objHandle: HCkOAuth2; outStr: HCkString): wordbool; stdcall;

function CkOAuth2__startAuth(objHandle: HCkOAuth2): PWideChar; stdcall;

function CkOAuth2_UseConnection(objHandle: HCkOAuth2; sock: HCkSocket): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkOAuth2_Create; external DLLName;
procedure CkOAuth2_Dispose; external DLLName;

procedure CkOAuth2_SetAbortCheck; external DLLName;
procedure CkOAuth2_SetProgressInfo; external DLLName;
procedure CkOAuth2_SetPercentDone; external DLLName;
procedure CkOAuth2_SetTaskCompleted; external DLLName;
procedure CkOAuth2_getAccessToken; external DLLName;
procedure CkOAuth2_putAccessToken; external DLLName;
function CkOAuth2__accessToken; external DLLName;
procedure CkOAuth2_getAccessTokenResponse; external DLLName;
function CkOAuth2__accessTokenResponse; external DLLName;
procedure CkOAuth2_getAppCallbackUrl; external DLLName;
procedure CkOAuth2_putAppCallbackUrl; external DLLName;
function CkOAuth2__appCallbackUrl; external DLLName;
function CkOAuth2_getAuthFlowState; external DLLName;
procedure CkOAuth2_getAuthorizationEndpoint; external DLLName;
procedure CkOAuth2_putAuthorizationEndpoint; external DLLName;
function CkOAuth2__authorizationEndpoint; external DLLName;
procedure CkOAuth2_getClientId; external DLLName;
procedure CkOAuth2_putClientId; external DLLName;
function CkOAuth2__clientId; external DLLName;
procedure CkOAuth2_getClientSecret; external DLLName;
procedure CkOAuth2_putClientSecret; external DLLName;
function CkOAuth2__clientSecret; external DLLName;
function CkOAuth2_getCodeChallenge; external DLLName;
procedure CkOAuth2_putCodeChallenge; external DLLName;
procedure CkOAuth2_getCodeChallengeMethod; external DLLName;
procedure CkOAuth2_putCodeChallengeMethod; external DLLName;
function CkOAuth2__codeChallengeMethod; external DLLName;
procedure CkOAuth2_getDebugLogFilePath; external DLLName;
procedure CkOAuth2_putDebugLogFilePath; external DLLName;
function CkOAuth2__debugLogFilePath; external DLLName;
procedure CkOAuth2_getFailureInfo; external DLLName;
function CkOAuth2__failureInfo; external DLLName;
function CkOAuth2_getIncludeNonce; external DLLName;
procedure CkOAuth2_putIncludeNonce; external DLLName;
procedure CkOAuth2_getLastErrorHtml; external DLLName;
function CkOAuth2__lastErrorHtml; external DLLName;
procedure CkOAuth2_getLastErrorText; external DLLName;
function CkOAuth2__lastErrorText; external DLLName;
procedure CkOAuth2_getLastErrorXml; external DLLName;
function CkOAuth2__lastErrorXml; external DLLName;
function CkOAuth2_getLastMethodSuccess; external DLLName;
procedure CkOAuth2_putLastMethodSuccess; external DLLName;
function CkOAuth2_getListenPort; external DLLName;
procedure CkOAuth2_putListenPort; external DLLName;
function CkOAuth2_getListenPortRangeEnd; external DLLName;
procedure CkOAuth2_putListenPortRangeEnd; external DLLName;
function CkOAuth2_getListenPortSelected; external DLLName;
procedure CkOAuth2_getLocalHost; external DLLName;
procedure CkOAuth2_putLocalHost; external DLLName;
function CkOAuth2__localHost; external DLLName;
function CkOAuth2_getNonceLength; external DLLName;
procedure CkOAuth2_putNonceLength; external DLLName;
procedure CkOAuth2_getRedirectAllowHtml; external DLLName;
procedure CkOAuth2_putRedirectAllowHtml; external DLLName;
function CkOAuth2__redirectAllowHtml; external DLLName;
procedure CkOAuth2_getRedirectDenyHtml; external DLLName;
procedure CkOAuth2_putRedirectDenyHtml; external DLLName;
function CkOAuth2__redirectDenyHtml; external DLLName;
procedure CkOAuth2_getRedirectReqReceived; external DLLName;
function CkOAuth2__redirectReqReceived; external DLLName;
procedure CkOAuth2_getRefreshToken; external DLLName;
procedure CkOAuth2_putRefreshToken; external DLLName;
function CkOAuth2__refreshToken; external DLLName;
procedure CkOAuth2_getResource; external DLLName;
procedure CkOAuth2_putResource; external DLLName;
function CkOAuth2__resource; external DLLName;
procedure CkOAuth2_getResponseMode; external DLLName;
procedure CkOAuth2_putResponseMode; external DLLName;
function CkOAuth2__responseMode; external DLLName;
procedure CkOAuth2_getResponseType; external DLLName;
procedure CkOAuth2_putResponseType; external DLLName;
function CkOAuth2__responseType; external DLLName;
procedure CkOAuth2_getScope; external DLLName;
procedure CkOAuth2_putScope; external DLLName;
function CkOAuth2__scope; external DLLName;
procedure CkOAuth2_getStateParam; external DLLName;
procedure CkOAuth2_putStateParam; external DLLName;
function CkOAuth2__stateParam; external DLLName;
procedure CkOAuth2_getTokenEndpoint; external DLLName;
procedure CkOAuth2_putTokenEndpoint; external DLLName;
function CkOAuth2__tokenEndpoint; external DLLName;
procedure CkOAuth2_getTokenType; external DLLName;
procedure CkOAuth2_putTokenType; external DLLName;
function CkOAuth2__tokenType; external DLLName;
procedure CkOAuth2_getUncommonOptions; external DLLName;
procedure CkOAuth2_putUncommonOptions; external DLLName;
function CkOAuth2__uncommonOptions; external DLLName;
function CkOAuth2_getUseBasicAuth; external DLLName;
procedure CkOAuth2_putUseBasicAuth; external DLLName;
function CkOAuth2_getVerboseLogging; external DLLName;
procedure CkOAuth2_putVerboseLogging; external DLLName;
procedure CkOAuth2_getVersion; external DLLName;
function CkOAuth2__version; external DLLName;
function CkOAuth2_AddAuthQueryParam; external DLLName;
function CkOAuth2_AddTokenQueryParam; external DLLName;
function CkOAuth2_Cancel; external DLLName;
function CkOAuth2_GetRedirectRequestParam; external DLLName;
function CkOAuth2__getRedirectRequestParam; external DLLName;
function CkOAuth2_LoadTaskCaller; external DLLName;
function CkOAuth2_Monitor; external DLLName;
function CkOAuth2_MonitorAsync; external DLLName;
function CkOAuth2_RefreshAccessToken; external DLLName;
function CkOAuth2_RefreshAccessTokenAsync; external DLLName;
function CkOAuth2_SaveLastError; external DLLName;
function CkOAuth2_SetRefreshHeader; external DLLName;
function CkOAuth2_SetRefreshHeaderAsync; external DLLName;
procedure CkOAuth2_SleepMs; external DLLName;
function CkOAuth2_StartAuth; external DLLName;
function CkOAuth2__startAuth; external DLLName;
function CkOAuth2_UseConnection; external DLLName;



end.
