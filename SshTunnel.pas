unit SshTunnel;

interface

type

HCkSecureString = Pointer;
HCkSshKey = Pointer;
HCkString = Pointer;
HCkSsh = Pointer;
HCkSshTunnel = Pointer;
HCkTask = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TSshTunnelAbortCheck = function(): Integer; cdecl;
TSshTunnelProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TSshTunnelPercentDone = function(pctDone: Integer): Integer; cdecl;
TSshTunnelTaskCompleted = procedure(task: HCkTask); cdecl;


function CkSshTunnel_Create: HCkSshTunnel; stdcall;
procedure CkSshTunnel_Dispose(handle: HCkSshTunnel); stdcall;

procedure CkSshTunnel_SetAbortCheck(objHandle: HCkSshTunnel; fn: TSshTunnelAbortCheck) stdcall;
procedure CkSshTunnel_SetProgressInfo(objHandle: HCkSshTunnel; fn: TSshTunnelProgressInfo) stdcall;
procedure CkSshTunnel_SetPercentDone(objHandle: HCkSshTunnel; fn: TSshTunnelPercentDone) stdcall;
procedure CkSshTunnel_SetTaskCompleted(objHandle: HCkSshTunnel; fn: TSshTunnelTaskCompleted) stdcall;
function CkSshTunnel_getAbortCurrent(objHandle: HCkSshTunnel): wordbool; stdcall;

procedure CkSshTunnel_putAbortCurrent(objHandle: HCkSshTunnel; newPropVal: wordbool); stdcall;

procedure CkSshTunnel_getAcceptLog(objHandle: HCkSshTunnel; outPropVal: HCkString); stdcall;

procedure CkSshTunnel_putAcceptLog(objHandle: HCkSshTunnel; newPropVal: PWideChar); stdcall;

function CkSshTunnel__acceptLog(objHandle: HCkSshTunnel): PWideChar; stdcall;

procedure CkSshTunnel_getAcceptLogPath(objHandle: HCkSshTunnel; outPropVal: HCkString); stdcall;

procedure CkSshTunnel_putAcceptLogPath(objHandle: HCkSshTunnel; newPropVal: PWideChar); stdcall;

function CkSshTunnel__acceptLogPath(objHandle: HCkSshTunnel): PWideChar; stdcall;

procedure CkSshTunnel_getClientIdentifier(objHandle: HCkSshTunnel; outPropVal: HCkString); stdcall;

procedure CkSshTunnel_putClientIdentifier(objHandle: HCkSshTunnel; newPropVal: PWideChar); stdcall;

function CkSshTunnel__clientIdentifier(objHandle: HCkSshTunnel): PWideChar; stdcall;

function CkSshTunnel_getConnectTimeoutMs(objHandle: HCkSshTunnel): Integer; stdcall;

procedure CkSshTunnel_putConnectTimeoutMs(objHandle: HCkSshTunnel; newPropVal: Integer); stdcall;

procedure CkSshTunnel_getDebugLogFilePath(objHandle: HCkSshTunnel; outPropVal: HCkString); stdcall;

procedure CkSshTunnel_putDebugLogFilePath(objHandle: HCkSshTunnel; newPropVal: PWideChar); stdcall;

function CkSshTunnel__debugLogFilePath(objHandle: HCkSshTunnel): PWideChar; stdcall;

procedure CkSshTunnel_getDestHostname(objHandle: HCkSshTunnel; outPropVal: HCkString); stdcall;

procedure CkSshTunnel_putDestHostname(objHandle: HCkSshTunnel; newPropVal: PWideChar); stdcall;

function CkSshTunnel__destHostname(objHandle: HCkSshTunnel): PWideChar; stdcall;

function CkSshTunnel_getDestPort(objHandle: HCkSshTunnel): Integer; stdcall;

procedure CkSshTunnel_putDestPort(objHandle: HCkSshTunnel; newPropVal: Integer); stdcall;

function CkSshTunnel_getDynamicPortForwarding(objHandle: HCkSshTunnel): wordbool; stdcall;

procedure CkSshTunnel_putDynamicPortForwarding(objHandle: HCkSshTunnel; newPropVal: wordbool); stdcall;

procedure CkSshTunnel_getHostKeyFingerprint(objHandle: HCkSshTunnel; outPropVal: HCkString); stdcall;

function CkSshTunnel__hostKeyFingerprint(objHandle: HCkSshTunnel): PWideChar; stdcall;

procedure CkSshTunnel_getHttpProxyAuthMethod(objHandle: HCkSshTunnel; outPropVal: HCkString); stdcall;

procedure CkSshTunnel_putHttpProxyAuthMethod(objHandle: HCkSshTunnel; newPropVal: PWideChar); stdcall;

function CkSshTunnel__httpProxyAuthMethod(objHandle: HCkSshTunnel): PWideChar; stdcall;

procedure CkSshTunnel_getHttpProxyDomain(objHandle: HCkSshTunnel; outPropVal: HCkString); stdcall;

procedure CkSshTunnel_putHttpProxyDomain(objHandle: HCkSshTunnel; newPropVal: PWideChar); stdcall;

function CkSshTunnel__httpProxyDomain(objHandle: HCkSshTunnel): PWideChar; stdcall;

procedure CkSshTunnel_getHttpProxyHostname(objHandle: HCkSshTunnel; outPropVal: HCkString); stdcall;

procedure CkSshTunnel_putHttpProxyHostname(objHandle: HCkSshTunnel; newPropVal: PWideChar); stdcall;

function CkSshTunnel__httpProxyHostname(objHandle: HCkSshTunnel): PWideChar; stdcall;

procedure CkSshTunnel_getHttpProxyPassword(objHandle: HCkSshTunnel; outPropVal: HCkString); stdcall;

procedure CkSshTunnel_putHttpProxyPassword(objHandle: HCkSshTunnel; newPropVal: PWideChar); stdcall;

function CkSshTunnel__httpProxyPassword(objHandle: HCkSshTunnel): PWideChar; stdcall;

function CkSshTunnel_getHttpProxyPort(objHandle: HCkSshTunnel): Integer; stdcall;

procedure CkSshTunnel_putHttpProxyPort(objHandle: HCkSshTunnel; newPropVal: Integer); stdcall;

procedure CkSshTunnel_getHttpProxyUsername(objHandle: HCkSshTunnel; outPropVal: HCkString); stdcall;

procedure CkSshTunnel_putHttpProxyUsername(objHandle: HCkSshTunnel; newPropVal: PWideChar); stdcall;

function CkSshTunnel__httpProxyUsername(objHandle: HCkSshTunnel): PWideChar; stdcall;

function CkSshTunnel_getIdleTimeoutMs(objHandle: HCkSshTunnel): Integer; stdcall;

procedure CkSshTunnel_putIdleTimeoutMs(objHandle: HCkSshTunnel; newPropVal: Integer); stdcall;

procedure CkSshTunnel_getInboundSocksPassword(objHandle: HCkSshTunnel; outPropVal: HCkString); stdcall;

procedure CkSshTunnel_putInboundSocksPassword(objHandle: HCkSshTunnel; newPropVal: PWideChar); stdcall;

function CkSshTunnel__inboundSocksPassword(objHandle: HCkSshTunnel): PWideChar; stdcall;

procedure CkSshTunnel_getInboundSocksUsername(objHandle: HCkSshTunnel; outPropVal: HCkString); stdcall;

procedure CkSshTunnel_putInboundSocksUsername(objHandle: HCkSshTunnel; newPropVal: PWideChar); stdcall;

function CkSshTunnel__inboundSocksUsername(objHandle: HCkSshTunnel): PWideChar; stdcall;

function CkSshTunnel_getIsAccepting(objHandle: HCkSshTunnel): wordbool; stdcall;

function CkSshTunnel_getKeepAcceptLog(objHandle: HCkSshTunnel): wordbool; stdcall;

procedure CkSshTunnel_putKeepAcceptLog(objHandle: HCkSshTunnel; newPropVal: wordbool); stdcall;

function CkSshTunnel_getKeepTunnelLog(objHandle: HCkSshTunnel): wordbool; stdcall;

procedure CkSshTunnel_putKeepTunnelLog(objHandle: HCkSshTunnel; newPropVal: wordbool); stdcall;

procedure CkSshTunnel_getLastErrorHtml(objHandle: HCkSshTunnel; outPropVal: HCkString); stdcall;

function CkSshTunnel__lastErrorHtml(objHandle: HCkSshTunnel): PWideChar; stdcall;

procedure CkSshTunnel_getLastErrorText(objHandle: HCkSshTunnel; outPropVal: HCkString); stdcall;

function CkSshTunnel__lastErrorText(objHandle: HCkSshTunnel): PWideChar; stdcall;

procedure CkSshTunnel_getLastErrorXml(objHandle: HCkSshTunnel; outPropVal: HCkString); stdcall;

function CkSshTunnel__lastErrorXml(objHandle: HCkSshTunnel): PWideChar; stdcall;

function CkSshTunnel_getLastMethodSuccess(objHandle: HCkSshTunnel): wordbool; stdcall;

procedure CkSshTunnel_putLastMethodSuccess(objHandle: HCkSshTunnel; newPropVal: wordbool); stdcall;

procedure CkSshTunnel_getListenBindIpAddress(objHandle: HCkSshTunnel; outPropVal: HCkString); stdcall;

procedure CkSshTunnel_putListenBindIpAddress(objHandle: HCkSshTunnel; newPropVal: PWideChar); stdcall;

function CkSshTunnel__listenBindIpAddress(objHandle: HCkSshTunnel): PWideChar; stdcall;

function CkSshTunnel_getListenPort(objHandle: HCkSshTunnel): Integer; stdcall;

procedure CkSshTunnel_getOutboundBindIpAddress(objHandle: HCkSshTunnel; outPropVal: HCkString); stdcall;

procedure CkSshTunnel_putOutboundBindIpAddress(objHandle: HCkSshTunnel; newPropVal: PWideChar); stdcall;

function CkSshTunnel__outboundBindIpAddress(objHandle: HCkSshTunnel): PWideChar; stdcall;

function CkSshTunnel_getOutboundBindPort(objHandle: HCkSshTunnel): Integer; stdcall;

procedure CkSshTunnel_putOutboundBindPort(objHandle: HCkSshTunnel; newPropVal: Integer); stdcall;

function CkSshTunnel_getPreferIpv6(objHandle: HCkSshTunnel): wordbool; stdcall;

procedure CkSshTunnel_putPreferIpv6(objHandle: HCkSshTunnel; newPropVal: wordbool); stdcall;

procedure CkSshTunnel_getSocksHostname(objHandle: HCkSshTunnel; outPropVal: HCkString); stdcall;

procedure CkSshTunnel_putSocksHostname(objHandle: HCkSshTunnel; newPropVal: PWideChar); stdcall;

function CkSshTunnel__socksHostname(objHandle: HCkSshTunnel): PWideChar; stdcall;

procedure CkSshTunnel_getSocksPassword(objHandle: HCkSshTunnel; outPropVal: HCkString); stdcall;

procedure CkSshTunnel_putSocksPassword(objHandle: HCkSshTunnel; newPropVal: PWideChar); stdcall;

function CkSshTunnel__socksPassword(objHandle: HCkSshTunnel): PWideChar; stdcall;

function CkSshTunnel_getSocksPort(objHandle: HCkSshTunnel): Integer; stdcall;

procedure CkSshTunnel_putSocksPort(objHandle: HCkSshTunnel; newPropVal: Integer); stdcall;

procedure CkSshTunnel_getSocksUsername(objHandle: HCkSshTunnel; outPropVal: HCkString); stdcall;

procedure CkSshTunnel_putSocksUsername(objHandle: HCkSshTunnel; newPropVal: PWideChar); stdcall;

function CkSshTunnel__socksUsername(objHandle: HCkSshTunnel): PWideChar; stdcall;

function CkSshTunnel_getSocksVersion(objHandle: HCkSshTunnel): Integer; stdcall;

procedure CkSshTunnel_putSocksVersion(objHandle: HCkSshTunnel; newPropVal: Integer); stdcall;

function CkSshTunnel_getSoRcvBuf(objHandle: HCkSshTunnel): Integer; stdcall;

procedure CkSshTunnel_putSoRcvBuf(objHandle: HCkSshTunnel; newPropVal: Integer); stdcall;

function CkSshTunnel_getSoSndBuf(objHandle: HCkSshTunnel): Integer; stdcall;

procedure CkSshTunnel_putSoSndBuf(objHandle: HCkSshTunnel; newPropVal: Integer); stdcall;

function CkSshTunnel_getTcpNoDelay(objHandle: HCkSshTunnel): wordbool; stdcall;

procedure CkSshTunnel_putTcpNoDelay(objHandle: HCkSshTunnel; newPropVal: wordbool); stdcall;

procedure CkSshTunnel_getTunnelLog(objHandle: HCkSshTunnel; outPropVal: HCkString); stdcall;

procedure CkSshTunnel_putTunnelLog(objHandle: HCkSshTunnel; newPropVal: PWideChar); stdcall;

function CkSshTunnel__tunnelLog(objHandle: HCkSshTunnel): PWideChar; stdcall;

procedure CkSshTunnel_getTunnelLogPath(objHandle: HCkSshTunnel; outPropVal: HCkString); stdcall;

procedure CkSshTunnel_putTunnelLogPath(objHandle: HCkSshTunnel; newPropVal: PWideChar); stdcall;

function CkSshTunnel__tunnelLogPath(objHandle: HCkSshTunnel): PWideChar; stdcall;

procedure CkSshTunnel_getUncommonOptions(objHandle: HCkSshTunnel; outPropVal: HCkString); stdcall;

procedure CkSshTunnel_putUncommonOptions(objHandle: HCkSshTunnel; newPropVal: PWideChar); stdcall;

function CkSshTunnel__uncommonOptions(objHandle: HCkSshTunnel): PWideChar; stdcall;

function CkSshTunnel_getVerboseLogging(objHandle: HCkSshTunnel): wordbool; stdcall;

procedure CkSshTunnel_putVerboseLogging(objHandle: HCkSshTunnel; newPropVal: wordbool); stdcall;

procedure CkSshTunnel_getVersion(objHandle: HCkSshTunnel; outPropVal: HCkString); stdcall;

function CkSshTunnel__version(objHandle: HCkSshTunnel): PWideChar; stdcall;

function CkSshTunnel_AuthenticatePk(objHandle: HCkSshTunnel; username: PWideChar; privateKey: HCkSshKey): wordbool; stdcall;

function CkSshTunnel_AuthenticatePkAsync(objHandle: HCkSshTunnel; username: PWideChar; privateKey: HCkSshKey): HCkTask; stdcall;

function CkSshTunnel_AuthenticatePw(objHandle: HCkSshTunnel; login: PWideChar; password: PWideChar): wordbool; stdcall;

function CkSshTunnel_AuthenticatePwAsync(objHandle: HCkSshTunnel; login: PWideChar; password: PWideChar): HCkTask; stdcall;

function CkSshTunnel_AuthenticatePwPk(objHandle: HCkSshTunnel; username: PWideChar; password: PWideChar; privateKey: HCkSshKey): wordbool; stdcall;

function CkSshTunnel_AuthenticatePwPkAsync(objHandle: HCkSshTunnel; username: PWideChar; password: PWideChar; privateKey: HCkSshKey): HCkTask; stdcall;

function CkSshTunnel_AuthenticateSecPw(objHandle: HCkSshTunnel; login: HCkSecureString; password: HCkSecureString): wordbool; stdcall;

function CkSshTunnel_AuthenticateSecPwAsync(objHandle: HCkSshTunnel; login: HCkSecureString; password: HCkSecureString): HCkTask; stdcall;

function CkSshTunnel_AuthenticateSecPwPk(objHandle: HCkSshTunnel; username: HCkSecureString; password: HCkSecureString; privateKey: HCkSshKey): wordbool; stdcall;

function CkSshTunnel_AuthenticateSecPwPkAsync(objHandle: HCkSshTunnel; username: HCkSecureString; password: HCkSecureString; privateKey: HCkSshKey): HCkTask; stdcall;

function CkSshTunnel_BeginAccepting(objHandle: HCkSshTunnel; listenPort: Integer): wordbool; stdcall;

function CkSshTunnel_BeginAcceptingAsync(objHandle: HCkSshTunnel; listenPort: Integer): HCkTask; stdcall;

function CkSshTunnel_CloseTunnel(objHandle: HCkSshTunnel; waitForThreads: wordbool): wordbool; stdcall;

function CkSshTunnel_Connect(objHandle: HCkSshTunnel; hostname: PWideChar; port: Integer): wordbool; stdcall;

function CkSshTunnel_ConnectAsync(objHandle: HCkSshTunnel; hostname: PWideChar; port: Integer): HCkTask; stdcall;

function CkSshTunnel_ConnectThroughSsh(objHandle: HCkSshTunnel; ssh: HCkSsh; hostname: PWideChar; port: Integer): wordbool; stdcall;

function CkSshTunnel_ConnectThroughSshAsync(objHandle: HCkSshTunnel; ssh: HCkSsh; hostname: PWideChar; port: Integer): HCkTask; stdcall;

function CkSshTunnel_ContinueKeyboardAuth(objHandle: HCkSshTunnel; response: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkSshTunnel__continueKeyboardAuth(objHandle: HCkSshTunnel; response: PWideChar): PWideChar; stdcall;

function CkSshTunnel_ContinueKeyboardAuthAsync(objHandle: HCkSshTunnel; response: PWideChar): HCkTask; stdcall;

function CkSshTunnel_DisconnectAllClients(objHandle: HCkSshTunnel; waitForThreads: wordbool): wordbool; stdcall;

function CkSshTunnel_GetCurrentState(objHandle: HCkSshTunnel; outStr: HCkString): wordbool; stdcall;

function CkSshTunnel__getCurrentState(objHandle: HCkSshTunnel): PWideChar; stdcall;

function CkSshTunnel_IsSshConnected(objHandle: HCkSshTunnel): wordbool; stdcall;

function CkSshTunnel_LoadTaskCaller(objHandle: HCkSshTunnel; task: HCkTask): wordbool; stdcall;

function CkSshTunnel_SaveLastError(objHandle: HCkSshTunnel; path: PWideChar): wordbool; stdcall;

function CkSshTunnel_StartKeyboardAuth(objHandle: HCkSshTunnel; login: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkSshTunnel__startKeyboardAuth(objHandle: HCkSshTunnel; login: PWideChar): PWideChar; stdcall;

function CkSshTunnel_StartKeyboardAuthAsync(objHandle: HCkSshTunnel; login: PWideChar): HCkTask; stdcall;

function CkSshTunnel_StopAccepting(objHandle: HCkSshTunnel; waitForThread: wordbool): wordbool; stdcall;

function CkSshTunnel_UnlockComponent(objHandle: HCkSshTunnel; unlockCode: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkSshTunnel_Create; external DLLName;
procedure CkSshTunnel_Dispose; external DLLName;

procedure CkSshTunnel_SetAbortCheck; external DLLName;
procedure CkSshTunnel_SetProgressInfo; external DLLName;
procedure CkSshTunnel_SetPercentDone; external DLLName;
procedure CkSshTunnel_SetTaskCompleted; external DLLName;
function CkSshTunnel_getAbortCurrent; external DLLName;
procedure CkSshTunnel_putAbortCurrent; external DLLName;
procedure CkSshTunnel_getAcceptLog; external DLLName;
procedure CkSshTunnel_putAcceptLog; external DLLName;
function CkSshTunnel__acceptLog; external DLLName;
procedure CkSshTunnel_getAcceptLogPath; external DLLName;
procedure CkSshTunnel_putAcceptLogPath; external DLLName;
function CkSshTunnel__acceptLogPath; external DLLName;
procedure CkSshTunnel_getClientIdentifier; external DLLName;
procedure CkSshTunnel_putClientIdentifier; external DLLName;
function CkSshTunnel__clientIdentifier; external DLLName;
function CkSshTunnel_getConnectTimeoutMs; external DLLName;
procedure CkSshTunnel_putConnectTimeoutMs; external DLLName;
procedure CkSshTunnel_getDebugLogFilePath; external DLLName;
procedure CkSshTunnel_putDebugLogFilePath; external DLLName;
function CkSshTunnel__debugLogFilePath; external DLLName;
procedure CkSshTunnel_getDestHostname; external DLLName;
procedure CkSshTunnel_putDestHostname; external DLLName;
function CkSshTunnel__destHostname; external DLLName;
function CkSshTunnel_getDestPort; external DLLName;
procedure CkSshTunnel_putDestPort; external DLLName;
function CkSshTunnel_getDynamicPortForwarding; external DLLName;
procedure CkSshTunnel_putDynamicPortForwarding; external DLLName;
procedure CkSshTunnel_getHostKeyFingerprint; external DLLName;
function CkSshTunnel__hostKeyFingerprint; external DLLName;
procedure CkSshTunnel_getHttpProxyAuthMethod; external DLLName;
procedure CkSshTunnel_putHttpProxyAuthMethod; external DLLName;
function CkSshTunnel__httpProxyAuthMethod; external DLLName;
procedure CkSshTunnel_getHttpProxyDomain; external DLLName;
procedure CkSshTunnel_putHttpProxyDomain; external DLLName;
function CkSshTunnel__httpProxyDomain; external DLLName;
procedure CkSshTunnel_getHttpProxyHostname; external DLLName;
procedure CkSshTunnel_putHttpProxyHostname; external DLLName;
function CkSshTunnel__httpProxyHostname; external DLLName;
procedure CkSshTunnel_getHttpProxyPassword; external DLLName;
procedure CkSshTunnel_putHttpProxyPassword; external DLLName;
function CkSshTunnel__httpProxyPassword; external DLLName;
function CkSshTunnel_getHttpProxyPort; external DLLName;
procedure CkSshTunnel_putHttpProxyPort; external DLLName;
procedure CkSshTunnel_getHttpProxyUsername; external DLLName;
procedure CkSshTunnel_putHttpProxyUsername; external DLLName;
function CkSshTunnel__httpProxyUsername; external DLLName;
function CkSshTunnel_getIdleTimeoutMs; external DLLName;
procedure CkSshTunnel_putIdleTimeoutMs; external DLLName;
procedure CkSshTunnel_getInboundSocksPassword; external DLLName;
procedure CkSshTunnel_putInboundSocksPassword; external DLLName;
function CkSshTunnel__inboundSocksPassword; external DLLName;
procedure CkSshTunnel_getInboundSocksUsername; external DLLName;
procedure CkSshTunnel_putInboundSocksUsername; external DLLName;
function CkSshTunnel__inboundSocksUsername; external DLLName;
function CkSshTunnel_getIsAccepting; external DLLName;
function CkSshTunnel_getKeepAcceptLog; external DLLName;
procedure CkSshTunnel_putKeepAcceptLog; external DLLName;
function CkSshTunnel_getKeepTunnelLog; external DLLName;
procedure CkSshTunnel_putKeepTunnelLog; external DLLName;
procedure CkSshTunnel_getLastErrorHtml; external DLLName;
function CkSshTunnel__lastErrorHtml; external DLLName;
procedure CkSshTunnel_getLastErrorText; external DLLName;
function CkSshTunnel__lastErrorText; external DLLName;
procedure CkSshTunnel_getLastErrorXml; external DLLName;
function CkSshTunnel__lastErrorXml; external DLLName;
function CkSshTunnel_getLastMethodSuccess; external DLLName;
procedure CkSshTunnel_putLastMethodSuccess; external DLLName;
procedure CkSshTunnel_getListenBindIpAddress; external DLLName;
procedure CkSshTunnel_putListenBindIpAddress; external DLLName;
function CkSshTunnel__listenBindIpAddress; external DLLName;
function CkSshTunnel_getListenPort; external DLLName;
procedure CkSshTunnel_getOutboundBindIpAddress; external DLLName;
procedure CkSshTunnel_putOutboundBindIpAddress; external DLLName;
function CkSshTunnel__outboundBindIpAddress; external DLLName;
function CkSshTunnel_getOutboundBindPort; external DLLName;
procedure CkSshTunnel_putOutboundBindPort; external DLLName;
function CkSshTunnel_getPreferIpv6; external DLLName;
procedure CkSshTunnel_putPreferIpv6; external DLLName;
procedure CkSshTunnel_getSocksHostname; external DLLName;
procedure CkSshTunnel_putSocksHostname; external DLLName;
function CkSshTunnel__socksHostname; external DLLName;
procedure CkSshTunnel_getSocksPassword; external DLLName;
procedure CkSshTunnel_putSocksPassword; external DLLName;
function CkSshTunnel__socksPassword; external DLLName;
function CkSshTunnel_getSocksPort; external DLLName;
procedure CkSshTunnel_putSocksPort; external DLLName;
procedure CkSshTunnel_getSocksUsername; external DLLName;
procedure CkSshTunnel_putSocksUsername; external DLLName;
function CkSshTunnel__socksUsername; external DLLName;
function CkSshTunnel_getSocksVersion; external DLLName;
procedure CkSshTunnel_putSocksVersion; external DLLName;
function CkSshTunnel_getSoRcvBuf; external DLLName;
procedure CkSshTunnel_putSoRcvBuf; external DLLName;
function CkSshTunnel_getSoSndBuf; external DLLName;
procedure CkSshTunnel_putSoSndBuf; external DLLName;
function CkSshTunnel_getTcpNoDelay; external DLLName;
procedure CkSshTunnel_putTcpNoDelay; external DLLName;
procedure CkSshTunnel_getTunnelLog; external DLLName;
procedure CkSshTunnel_putTunnelLog; external DLLName;
function CkSshTunnel__tunnelLog; external DLLName;
procedure CkSshTunnel_getTunnelLogPath; external DLLName;
procedure CkSshTunnel_putTunnelLogPath; external DLLName;
function CkSshTunnel__tunnelLogPath; external DLLName;
procedure CkSshTunnel_getUncommonOptions; external DLLName;
procedure CkSshTunnel_putUncommonOptions; external DLLName;
function CkSshTunnel__uncommonOptions; external DLLName;
function CkSshTunnel_getVerboseLogging; external DLLName;
procedure CkSshTunnel_putVerboseLogging; external DLLName;
procedure CkSshTunnel_getVersion; external DLLName;
function CkSshTunnel__version; external DLLName;
function CkSshTunnel_AuthenticatePk; external DLLName;
function CkSshTunnel_AuthenticatePkAsync; external DLLName;
function CkSshTunnel_AuthenticatePw; external DLLName;
function CkSshTunnel_AuthenticatePwAsync; external DLLName;
function CkSshTunnel_AuthenticatePwPk; external DLLName;
function CkSshTunnel_AuthenticatePwPkAsync; external DLLName;
function CkSshTunnel_AuthenticateSecPw; external DLLName;
function CkSshTunnel_AuthenticateSecPwAsync; external DLLName;
function CkSshTunnel_AuthenticateSecPwPk; external DLLName;
function CkSshTunnel_AuthenticateSecPwPkAsync; external DLLName;
function CkSshTunnel_BeginAccepting; external DLLName;
function CkSshTunnel_BeginAcceptingAsync; external DLLName;
function CkSshTunnel_CloseTunnel; external DLLName;
function CkSshTunnel_Connect; external DLLName;
function CkSshTunnel_ConnectAsync; external DLLName;
function CkSshTunnel_ConnectThroughSsh; external DLLName;
function CkSshTunnel_ConnectThroughSshAsync; external DLLName;
function CkSshTunnel_ContinueKeyboardAuth; external DLLName;
function CkSshTunnel__continueKeyboardAuth; external DLLName;
function CkSshTunnel_ContinueKeyboardAuthAsync; external DLLName;
function CkSshTunnel_DisconnectAllClients; external DLLName;
function CkSshTunnel_GetCurrentState; external DLLName;
function CkSshTunnel__getCurrentState; external DLLName;
function CkSshTunnel_IsSshConnected; external DLLName;
function CkSshTunnel_LoadTaskCaller; external DLLName;
function CkSshTunnel_SaveLastError; external DLLName;
function CkSshTunnel_StartKeyboardAuth; external DLLName;
function CkSshTunnel__startKeyboardAuth; external DLLName;
function CkSshTunnel_StartKeyboardAuthAsync; external DLLName;
function CkSshTunnel_StopAccepting; external DLLName;
function CkSshTunnel_UnlockComponent; external DLLName;



end.
