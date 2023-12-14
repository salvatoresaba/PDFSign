unit Ssh;

interface

type

HCkSecureString = Pointer;
HCkSsh = Pointer;
HCkByteData = Pointer;
HCkSshKey = Pointer;
HCkString = Pointer;
HCkStringArray = Pointer;
HCkTask = Pointer;
HCkJsonObject = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TSshAbortCheck = function(): Integer; cdecl;
TSshProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TSshPercentDone = function(pctDone: Integer): Integer; cdecl;
TSshTaskCompleted = procedure(task: HCkTask); cdecl;


function CkSsh_Create: HCkSsh; stdcall;
procedure CkSsh_Dispose(handle: HCkSsh); stdcall;

procedure CkSsh_SetAbortCheck(objHandle: HCkSsh; fn: TSshAbortCheck) stdcall;
procedure CkSsh_SetProgressInfo(objHandle: HCkSsh; fn: TSshProgressInfo) stdcall;
procedure CkSsh_SetPercentDone(objHandle: HCkSsh; fn: TSshPercentDone) stdcall;
procedure CkSsh_SetTaskCompleted(objHandle: HCkSsh; fn: TSshTaskCompleted) stdcall;
function CkSsh_getAbortCurrent(objHandle: HCkSsh): wordbool; stdcall;

procedure CkSsh_putAbortCurrent(objHandle: HCkSsh; newPropVal: wordbool); stdcall;

function CkSsh_getAuthFailReason(objHandle: HCkSsh): Integer; stdcall;

function CkSsh_getCaretControl(objHandle: HCkSsh): wordbool; stdcall;

procedure CkSsh_putCaretControl(objHandle: HCkSsh; newPropVal: wordbool); stdcall;

function CkSsh_getChannelOpenFailCode(objHandle: HCkSsh): Integer; stdcall;

procedure CkSsh_getChannelOpenFailReason(objHandle: HCkSsh; outPropVal: HCkString); stdcall;

function CkSsh__channelOpenFailReason(objHandle: HCkSsh): PWideChar; stdcall;

procedure CkSsh_getClientIdentifier(objHandle: HCkSsh; outPropVal: HCkString); stdcall;

procedure CkSsh_putClientIdentifier(objHandle: HCkSsh; newPropVal: PWideChar); stdcall;

function CkSsh__clientIdentifier(objHandle: HCkSsh): PWideChar; stdcall;

procedure CkSsh_getClientIpAddress(objHandle: HCkSsh; outPropVal: HCkString); stdcall;

procedure CkSsh_putClientIpAddress(objHandle: HCkSsh; newPropVal: PWideChar); stdcall;

function CkSsh__clientIpAddress(objHandle: HCkSsh): PWideChar; stdcall;

function CkSsh_getClientPort(objHandle: HCkSsh): Integer; stdcall;

procedure CkSsh_putClientPort(objHandle: HCkSsh; newPropVal: Integer); stdcall;

function CkSsh_getConnectTimeoutMs(objHandle: HCkSsh): Integer; stdcall;

procedure CkSsh_putConnectTimeoutMs(objHandle: HCkSsh; newPropVal: Integer); stdcall;

procedure CkSsh_getDebugLogFilePath(objHandle: HCkSsh; outPropVal: HCkString); stdcall;

procedure CkSsh_putDebugLogFilePath(objHandle: HCkSsh; newPropVal: PWideChar); stdcall;

function CkSsh__debugLogFilePath(objHandle: HCkSsh): PWideChar; stdcall;

function CkSsh_getDisconnectCode(objHandle: HCkSsh): Integer; stdcall;

procedure CkSsh_getDisconnectReason(objHandle: HCkSsh; outPropVal: HCkString); stdcall;

function CkSsh__disconnectReason(objHandle: HCkSsh): PWideChar; stdcall;

function CkSsh_getEnableCompression(objHandle: HCkSsh): wordbool; stdcall;

procedure CkSsh_putEnableCompression(objHandle: HCkSsh; newPropVal: wordbool); stdcall;

procedure CkSsh_getForceCipher(objHandle: HCkSsh; outPropVal: HCkString); stdcall;

procedure CkSsh_putForceCipher(objHandle: HCkSsh; newPropVal: PWideChar); stdcall;

function CkSsh__forceCipher(objHandle: HCkSsh): PWideChar; stdcall;

function CkSsh_getHeartbeatMs(objHandle: HCkSsh): Integer; stdcall;

procedure CkSsh_putHeartbeatMs(objHandle: HCkSsh; newPropVal: Integer); stdcall;

procedure CkSsh_getHostKeyAlg(objHandle: HCkSsh; outPropVal: HCkString); stdcall;

procedure CkSsh_putHostKeyAlg(objHandle: HCkSsh; newPropVal: PWideChar); stdcall;

function CkSsh__hostKeyAlg(objHandle: HCkSsh): PWideChar; stdcall;

procedure CkSsh_getHostKeyFingerprint(objHandle: HCkSsh; outPropVal: HCkString); stdcall;

function CkSsh__hostKeyFingerprint(objHandle: HCkSsh): PWideChar; stdcall;

procedure CkSsh_getHttpProxyAuthMethod(objHandle: HCkSsh; outPropVal: HCkString); stdcall;

procedure CkSsh_putHttpProxyAuthMethod(objHandle: HCkSsh; newPropVal: PWideChar); stdcall;

function CkSsh__httpProxyAuthMethod(objHandle: HCkSsh): PWideChar; stdcall;

procedure CkSsh_getHttpProxyDomain(objHandle: HCkSsh; outPropVal: HCkString); stdcall;

procedure CkSsh_putHttpProxyDomain(objHandle: HCkSsh; newPropVal: PWideChar); stdcall;

function CkSsh__httpProxyDomain(objHandle: HCkSsh): PWideChar; stdcall;

procedure CkSsh_getHttpProxyHostname(objHandle: HCkSsh; outPropVal: HCkString); stdcall;

procedure CkSsh_putHttpProxyHostname(objHandle: HCkSsh; newPropVal: PWideChar); stdcall;

function CkSsh__httpProxyHostname(objHandle: HCkSsh): PWideChar; stdcall;

procedure CkSsh_getHttpProxyPassword(objHandle: HCkSsh; outPropVal: HCkString); stdcall;

procedure CkSsh_putHttpProxyPassword(objHandle: HCkSsh; newPropVal: PWideChar); stdcall;

function CkSsh__httpProxyPassword(objHandle: HCkSsh): PWideChar; stdcall;

function CkSsh_getHttpProxyPort(objHandle: HCkSsh): Integer; stdcall;

procedure CkSsh_putHttpProxyPort(objHandle: HCkSsh; newPropVal: Integer); stdcall;

procedure CkSsh_getHttpProxyUsername(objHandle: HCkSsh; outPropVal: HCkString); stdcall;

procedure CkSsh_putHttpProxyUsername(objHandle: HCkSsh; newPropVal: PWideChar); stdcall;

function CkSsh__httpProxyUsername(objHandle: HCkSsh): PWideChar; stdcall;

function CkSsh_getIdleTimeoutMs(objHandle: HCkSsh): Integer; stdcall;

procedure CkSsh_putIdleTimeoutMs(objHandle: HCkSsh; newPropVal: Integer); stdcall;

function CkSsh_getIsConnected(objHandle: HCkSsh): wordbool; stdcall;

function CkSsh_getKeepSessionLog(objHandle: HCkSsh): wordbool; stdcall;

procedure CkSsh_putKeepSessionLog(objHandle: HCkSsh; newPropVal: wordbool); stdcall;

procedure CkSsh_getLastErrorHtml(objHandle: HCkSsh; outPropVal: HCkString); stdcall;

function CkSsh__lastErrorHtml(objHandle: HCkSsh): PWideChar; stdcall;

procedure CkSsh_getLastErrorText(objHandle: HCkSsh; outPropVal: HCkString); stdcall;

function CkSsh__lastErrorText(objHandle: HCkSsh): PWideChar; stdcall;

procedure CkSsh_getLastErrorXml(objHandle: HCkSsh; outPropVal: HCkString); stdcall;

function CkSsh__lastErrorXml(objHandle: HCkSsh): PWideChar; stdcall;

function CkSsh_getLastMethodSuccess(objHandle: HCkSsh): wordbool; stdcall;

procedure CkSsh_putLastMethodSuccess(objHandle: HCkSsh; newPropVal: wordbool); stdcall;

function CkSsh_getMaxPacketSize(objHandle: HCkSsh): Integer; stdcall;

procedure CkSsh_putMaxPacketSize(objHandle: HCkSsh; newPropVal: Integer); stdcall;

function CkSsh_getNumOpenChannels(objHandle: HCkSsh): Integer; stdcall;

function CkSsh_getPasswordChangeRequested(objHandle: HCkSsh): wordbool; stdcall;

function CkSsh_getPreferIpv6(objHandle: HCkSsh): wordbool; stdcall;

procedure CkSsh_putPreferIpv6(objHandle: HCkSsh; newPropVal: wordbool); stdcall;

function CkSsh_getReadTimeoutMs(objHandle: HCkSsh): Integer; stdcall;

procedure CkSsh_putReadTimeoutMs(objHandle: HCkSsh; newPropVal: Integer); stdcall;

procedure CkSsh_getReqExecCharset(objHandle: HCkSsh; outPropVal: HCkString); stdcall;

procedure CkSsh_putReqExecCharset(objHandle: HCkSsh; newPropVal: PWideChar); stdcall;

function CkSsh__reqExecCharset(objHandle: HCkSsh): PWideChar; stdcall;

procedure CkSsh_getServerIdentifier(objHandle: HCkSsh; outPropVal: HCkString); stdcall;

function CkSsh__serverIdentifier(objHandle: HCkSsh): PWideChar; stdcall;

procedure CkSsh_getSessionLog(objHandle: HCkSsh; outPropVal: HCkString); stdcall;

function CkSsh__sessionLog(objHandle: HCkSsh): PWideChar; stdcall;

procedure CkSsh_getSocksHostname(objHandle: HCkSsh; outPropVal: HCkString); stdcall;

procedure CkSsh_putSocksHostname(objHandle: HCkSsh; newPropVal: PWideChar); stdcall;

function CkSsh__socksHostname(objHandle: HCkSsh): PWideChar; stdcall;

procedure CkSsh_getSocksPassword(objHandle: HCkSsh; outPropVal: HCkString); stdcall;

procedure CkSsh_putSocksPassword(objHandle: HCkSsh; newPropVal: PWideChar); stdcall;

function CkSsh__socksPassword(objHandle: HCkSsh): PWideChar; stdcall;

function CkSsh_getSocksPort(objHandle: HCkSsh): Integer; stdcall;

procedure CkSsh_putSocksPort(objHandle: HCkSsh; newPropVal: Integer); stdcall;

procedure CkSsh_getSocksUsername(objHandle: HCkSsh; outPropVal: HCkString); stdcall;

procedure CkSsh_putSocksUsername(objHandle: HCkSsh; newPropVal: PWideChar); stdcall;

function CkSsh__socksUsername(objHandle: HCkSsh): PWideChar; stdcall;

function CkSsh_getSocksVersion(objHandle: HCkSsh): Integer; stdcall;

procedure CkSsh_putSocksVersion(objHandle: HCkSsh; newPropVal: Integer); stdcall;

function CkSsh_getSoRcvBuf(objHandle: HCkSsh): Integer; stdcall;

procedure CkSsh_putSoRcvBuf(objHandle: HCkSsh; newPropVal: Integer); stdcall;

function CkSsh_getSoSndBuf(objHandle: HCkSsh): Integer; stdcall;

procedure CkSsh_putSoSndBuf(objHandle: HCkSsh; newPropVal: Integer); stdcall;

function CkSsh_getStderrToStdout(objHandle: HCkSsh): wordbool; stdcall;

procedure CkSsh_putStderrToStdout(objHandle: HCkSsh; newPropVal: wordbool); stdcall;

function CkSsh_getStripColorCodes(objHandle: HCkSsh): wordbool; stdcall;

procedure CkSsh_putStripColorCodes(objHandle: HCkSsh; newPropVal: wordbool); stdcall;

function CkSsh_getTcpNoDelay(objHandle: HCkSsh): wordbool; stdcall;

procedure CkSsh_putTcpNoDelay(objHandle: HCkSsh; newPropVal: wordbool); stdcall;

procedure CkSsh_getUncommonOptions(objHandle: HCkSsh; outPropVal: HCkString); stdcall;

procedure CkSsh_putUncommonOptions(objHandle: HCkSsh; newPropVal: PWideChar); stdcall;

function CkSsh__uncommonOptions(objHandle: HCkSsh): PWideChar; stdcall;

procedure CkSsh_getUserAuthBanner(objHandle: HCkSsh; outPropVal: HCkString); stdcall;

procedure CkSsh_putUserAuthBanner(objHandle: HCkSsh; newPropVal: PWideChar); stdcall;

function CkSsh__userAuthBanner(objHandle: HCkSsh): PWideChar; stdcall;

function CkSsh_getVerboseLogging(objHandle: HCkSsh): wordbool; stdcall;

procedure CkSsh_putVerboseLogging(objHandle: HCkSsh; newPropVal: wordbool); stdcall;

procedure CkSsh_getVersion(objHandle: HCkSsh; outPropVal: HCkString); stdcall;

function CkSsh__version(objHandle: HCkSsh): PWideChar; stdcall;

function CkSsh_AuthenticatePk(objHandle: HCkSsh; username: PWideChar; privateKey: HCkSshKey): wordbool; stdcall;

function CkSsh_AuthenticatePkAsync(objHandle: HCkSsh; username: PWideChar; privateKey: HCkSshKey): HCkTask; stdcall;

function CkSsh_AuthenticatePw(objHandle: HCkSsh; login: PWideChar; password: PWideChar): wordbool; stdcall;

function CkSsh_AuthenticatePwAsync(objHandle: HCkSsh; login: PWideChar; password: PWideChar): HCkTask; stdcall;

function CkSsh_AuthenticatePwPk(objHandle: HCkSsh; username: PWideChar; password: PWideChar; privateKey: HCkSshKey): wordbool; stdcall;

function CkSsh_AuthenticatePwPkAsync(objHandle: HCkSsh; username: PWideChar; password: PWideChar; privateKey: HCkSshKey): HCkTask; stdcall;

function CkSsh_AuthenticateSecPw(objHandle: HCkSsh; login: HCkSecureString; password: HCkSecureString): wordbool; stdcall;

function CkSsh_AuthenticateSecPwAsync(objHandle: HCkSsh; login: HCkSecureString; password: HCkSecureString): HCkTask; stdcall;

function CkSsh_AuthenticateSecPwPk(objHandle: HCkSsh; username: HCkSecureString; password: HCkSecureString; privateKey: HCkSshKey): wordbool; stdcall;

function CkSsh_AuthenticateSecPwPkAsync(objHandle: HCkSsh; username: HCkSecureString; password: HCkSecureString; privateKey: HCkSshKey): HCkTask; stdcall;

function CkSsh_ChannelIsOpen(objHandle: HCkSsh; channelNum: Integer): wordbool; stdcall;

function CkSsh_ChannelPoll(objHandle: HCkSsh; channelNum: Integer; pollTimeoutMs: Integer): Integer; stdcall;

function CkSsh_ChannelPollAsync(objHandle: HCkSsh; channelNum: Integer; pollTimeoutMs: Integer): HCkTask; stdcall;

function CkSsh_ChannelRead(objHandle: HCkSsh; channelNum: Integer): Integer; stdcall;

function CkSsh_ChannelReadAsync(objHandle: HCkSsh; channelNum: Integer): HCkTask; stdcall;

function CkSsh_ChannelReadAndPoll(objHandle: HCkSsh; channelNum: Integer; pollTimeoutMs: Integer): Integer; stdcall;

function CkSsh_ChannelReadAndPollAsync(objHandle: HCkSsh; channelNum: Integer; pollTimeoutMs: Integer): HCkTask; stdcall;

function CkSsh_ChannelReadAndPoll2(objHandle: HCkSsh; channelNum: Integer; pollTimeoutMs: Integer; maxNumBytes: Integer): Integer; stdcall;

function CkSsh_ChannelReadAndPoll2Async(objHandle: HCkSsh; channelNum: Integer; pollTimeoutMs: Integer; maxNumBytes: Integer): HCkTask; stdcall;

function CkSsh_ChannelReceivedClose(objHandle: HCkSsh; channelNum: Integer): wordbool; stdcall;

function CkSsh_ChannelReceivedEof(objHandle: HCkSsh; channelNum: Integer): wordbool; stdcall;

function CkSsh_ChannelReceivedExitStatus(objHandle: HCkSsh; channelNum: Integer): wordbool; stdcall;

function CkSsh_ChannelReceiveToClose(objHandle: HCkSsh; channelNum: Integer): wordbool; stdcall;

function CkSsh_ChannelReceiveToCloseAsync(objHandle: HCkSsh; channelNum: Integer): HCkTask; stdcall;

function CkSsh_ChannelReceiveUntilMatch(objHandle: HCkSsh; channelNum: Integer; matchPattern: PWideChar; charset: PWideChar; caseSensitive: wordbool): wordbool; stdcall;

function CkSsh_ChannelReceiveUntilMatchAsync(objHandle: HCkSsh; channelNum: Integer; matchPattern: PWideChar; charset: PWideChar; caseSensitive: wordbool): HCkTask; stdcall;

function CkSsh_ChannelReceiveUntilMatchN(objHandle: HCkSsh; channelNum: Integer; matchPatterns: HCkStringArray; charset: PWideChar; caseSensitive: wordbool): wordbool; stdcall;

function CkSsh_ChannelReceiveUntilMatchNAsync(objHandle: HCkSsh; channelNum: Integer; matchPatterns: HCkStringArray; charset: PWideChar; caseSensitive: wordbool): HCkTask; stdcall;

procedure CkSsh_ChannelRelease(objHandle: HCkSsh; channelNum: Integer); stdcall;

function CkSsh_ChannelSendClose(objHandle: HCkSsh; channelNum: Integer): wordbool; stdcall;

function CkSsh_ChannelSendCloseAsync(objHandle: HCkSsh; channelNum: Integer): HCkTask; stdcall;

function CkSsh_ChannelSendData(objHandle: HCkSsh; channelNum: Integer; byteData: HCkByteData): wordbool; stdcall;

function CkSsh_ChannelSendDataAsync(objHandle: HCkSsh; channelNum: Integer; byteData: HCkByteData): HCkTask; stdcall;

function CkSsh_ChannelSendEof(objHandle: HCkSsh; channelNum: Integer): wordbool; stdcall;

function CkSsh_ChannelSendEofAsync(objHandle: HCkSsh; channelNum: Integer): HCkTask; stdcall;

function CkSsh_ChannelSendString(objHandle: HCkSsh; channelNum: Integer; textData: PWideChar; charset: PWideChar): wordbool; stdcall;

function CkSsh_ChannelSendStringAsync(objHandle: HCkSsh; channelNum: Integer; textData: PWideChar; charset: PWideChar): HCkTask; stdcall;

function CkSsh_CheckConnection(objHandle: HCkSsh): wordbool; stdcall;

procedure CkSsh_ClearTtyModes(objHandle: HCkSsh); stdcall;

function CkSsh_Connect(objHandle: HCkSsh; domainName: PWideChar; port: Integer): wordbool; stdcall;

function CkSsh_ConnectAsync(objHandle: HCkSsh; domainName: PWideChar; port: Integer): HCkTask; stdcall;

function CkSsh_ConnectThroughSsh(objHandle: HCkSsh; ssh: HCkSsh; hostname: PWideChar; port: Integer): wordbool; stdcall;

function CkSsh_ConnectThroughSshAsync(objHandle: HCkSsh; ssh: HCkSsh; hostname: PWideChar; port: Integer): HCkTask; stdcall;

function CkSsh_ContinueKeyboardAuth(objHandle: HCkSsh; response: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkSsh__continueKeyboardAuth(objHandle: HCkSsh; response: PWideChar): PWideChar; stdcall;

function CkSsh_ContinueKeyboardAuthAsync(objHandle: HCkSsh; response: PWideChar): HCkTask; stdcall;

procedure CkSsh_Disconnect(objHandle: HCkSsh); stdcall;

function CkSsh_GetAuthMethods(objHandle: HCkSsh; outStr: HCkString): wordbool; stdcall;

function CkSsh__getAuthMethods(objHandle: HCkSsh): PWideChar; stdcall;

function CkSsh_GetAuthMethodsAsync(objHandle: HCkSsh): HCkTask; stdcall;

function CkSsh_GetChannelExitStatus(objHandle: HCkSsh; channelNum: Integer): Integer; stdcall;

function CkSsh_GetChannelNumber(objHandle: HCkSsh; index: Integer): Integer; stdcall;

function CkSsh_GetChannelType(objHandle: HCkSsh; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkSsh__getChannelType(objHandle: HCkSsh; index: Integer): PWideChar; stdcall;

function CkSsh_GetHostKeyFP(objHandle: HCkSsh; hashAlg: PWideChar; includeKeyType: wordbool; includeHashName: wordbool; outStr: HCkString): wordbool; stdcall;

function CkSsh__getHostKeyFP(objHandle: HCkSsh; hashAlg: PWideChar; includeKeyType: wordbool; includeHashName: wordbool): PWideChar; stdcall;

function CkSsh_GetReceivedData(objHandle: HCkSsh; channelNum: Integer; outData: HCkByteData): wordbool; stdcall;

function CkSsh_GetReceivedDataN(objHandle: HCkSsh; channelNum: Integer; maxNumBytes: Integer; outData: HCkByteData): wordbool; stdcall;

function CkSsh_GetReceivedNumBytes(objHandle: HCkSsh; channelNum: Integer): Integer; stdcall;

function CkSsh_GetReceivedStderr(objHandle: HCkSsh; channelNum: Integer; outData: HCkByteData): wordbool; stdcall;

function CkSsh_GetReceivedStderrText(objHandle: HCkSsh; channelNum: Integer; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkSsh__getReceivedStderrText(objHandle: HCkSsh; channelNum: Integer; charset: PWideChar): PWideChar; stdcall;

function CkSsh_GetReceivedText(objHandle: HCkSsh; channelNum: Integer; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkSsh__getReceivedText(objHandle: HCkSsh; channelNum: Integer; charset: PWideChar): PWideChar; stdcall;

function CkSsh_GetReceivedTextS(objHandle: HCkSsh; channelNum: Integer; substr: PWideChar; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkSsh__getReceivedTextS(objHandle: HCkSsh; channelNum: Integer; substr: PWideChar; charset: PWideChar): PWideChar; stdcall;

function CkSsh_LastJsonData(objHandle: HCkSsh): HCkJsonObject; stdcall;

function CkSsh_LoadTaskCaller(objHandle: HCkSsh; task: HCkTask): wordbool; stdcall;

function CkSsh_OpenCustomChannel(objHandle: HCkSsh; channelType: PWideChar): Integer; stdcall;

function CkSsh_OpenCustomChannelAsync(objHandle: HCkSsh; channelType: PWideChar): HCkTask; stdcall;

function CkSsh_OpenDirectTcpIpChannel(objHandle: HCkSsh; targetHostname: PWideChar; targetPort: Integer): Integer; stdcall;

function CkSsh_OpenDirectTcpIpChannelAsync(objHandle: HCkSsh; targetHostname: PWideChar; targetPort: Integer): HCkTask; stdcall;

function CkSsh_OpenSessionChannel(objHandle: HCkSsh): Integer; stdcall;

function CkSsh_OpenSessionChannelAsync(objHandle: HCkSsh): HCkTask; stdcall;

function CkSsh_PeekReceivedText(objHandle: HCkSsh; channelNum: Integer; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkSsh__peekReceivedText(objHandle: HCkSsh; channelNum: Integer; charset: PWideChar): PWideChar; stdcall;

function CkSsh_QuickCmdCheck(objHandle: HCkSsh; pollTimeoutMs: Integer): Integer; stdcall;

function CkSsh_QuickCmdCheckAsync(objHandle: HCkSsh; pollTimeoutMs: Integer): HCkTask; stdcall;

function CkSsh_QuickCmdSend(objHandle: HCkSsh; command: PWideChar): Integer; stdcall;

function CkSsh_QuickCmdSendAsync(objHandle: HCkSsh; command: PWideChar): HCkTask; stdcall;

function CkSsh_QuickCommand(objHandle: HCkSsh; command: PWideChar; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkSsh__quickCommand(objHandle: HCkSsh; command: PWideChar; charset: PWideChar): PWideChar; stdcall;

function CkSsh_QuickCommandAsync(objHandle: HCkSsh; command: PWideChar; charset: PWideChar): HCkTask; stdcall;

function CkSsh_QuickShell(objHandle: HCkSsh): Integer; stdcall;

function CkSsh_QuickShellAsync(objHandle: HCkSsh): HCkTask; stdcall;

function CkSsh_ReKey(objHandle: HCkSsh): wordbool; stdcall;

function CkSsh_ReKeyAsync(objHandle: HCkSsh): HCkTask; stdcall;

function CkSsh_SaveLastError(objHandle: HCkSsh; path: PWideChar): wordbool; stdcall;

function CkSsh_SendIgnore(objHandle: HCkSsh): wordbool; stdcall;

function CkSsh_SendIgnoreAsync(objHandle: HCkSsh): HCkTask; stdcall;

function CkSsh_SendReqExec(objHandle: HCkSsh; channelNum: Integer; commandLine: PWideChar): wordbool; stdcall;

function CkSsh_SendReqExecAsync(objHandle: HCkSsh; channelNum: Integer; commandLine: PWideChar): HCkTask; stdcall;

function CkSsh_SendReqPty(objHandle: HCkSsh; channelNum: Integer; termType: PWideChar; widthInChars: Integer; heightInChars: Integer; widthInPixels: Integer; heightInPixels: Integer): wordbool; stdcall;

function CkSsh_SendReqPtyAsync(objHandle: HCkSsh; channelNum: Integer; termType: PWideChar; widthInChars: Integer; heightInChars: Integer; widthInPixels: Integer; heightInPixels: Integer): HCkTask; stdcall;

function CkSsh_SendReqSetEnv(objHandle: HCkSsh; channelNum: Integer; name: PWideChar; value: PWideChar): wordbool; stdcall;

function CkSsh_SendReqSetEnvAsync(objHandle: HCkSsh; channelNum: Integer; name: PWideChar; value: PWideChar): HCkTask; stdcall;

function CkSsh_SendReqShell(objHandle: HCkSsh; channelNum: Integer): wordbool; stdcall;

function CkSsh_SendReqShellAsync(objHandle: HCkSsh; channelNum: Integer): HCkTask; stdcall;

function CkSsh_SendReqSignal(objHandle: HCkSsh; channelNum: Integer; signalName: PWideChar): wordbool; stdcall;

function CkSsh_SendReqSignalAsync(objHandle: HCkSsh; channelNum: Integer; signalName: PWideChar): HCkTask; stdcall;

function CkSsh_SendReqSubsystem(objHandle: HCkSsh; channelNum: Integer; subsystemName: PWideChar): wordbool; stdcall;

function CkSsh_SendReqSubsystemAsync(objHandle: HCkSsh; channelNum: Integer; subsystemName: PWideChar): HCkTask; stdcall;

function CkSsh_SendReqWindowChange(objHandle: HCkSsh; channelNum: Integer; widthInChars: Integer; heightInRows: Integer; pixWidth: Integer; pixHeight: Integer): wordbool; stdcall;

function CkSsh_SendReqWindowChangeAsync(objHandle: HCkSsh; channelNum: Integer; widthInChars: Integer; heightInRows: Integer; pixWidth: Integer; pixHeight: Integer): HCkTask; stdcall;

function CkSsh_SendReqX11Forwarding(objHandle: HCkSsh; channelNum: Integer; singleConnection: wordbool; authProt: PWideChar; authCookie: PWideChar; screenNum: Integer): wordbool; stdcall;

function CkSsh_SendReqX11ForwardingAsync(objHandle: HCkSsh; channelNum: Integer; singleConnection: wordbool; authProt: PWideChar; authCookie: PWideChar; screenNum: Integer): HCkTask; stdcall;

function CkSsh_SendReqXonXoff(objHandle: HCkSsh; channelNum: Integer; clientCanDo: wordbool): wordbool; stdcall;

function CkSsh_SendReqXonXoffAsync(objHandle: HCkSsh; channelNum: Integer; clientCanDo: wordbool): HCkTask; stdcall;

function CkSsh_SetTtyMode(objHandle: HCkSsh; ttyName: PWideChar; ttyValue: Integer): wordbool; stdcall;

function CkSsh_StartKeyboardAuth(objHandle: HCkSsh; login: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkSsh__startKeyboardAuth(objHandle: HCkSsh; login: PWideChar): PWideChar; stdcall;

function CkSsh_StartKeyboardAuthAsync(objHandle: HCkSsh; login: PWideChar): HCkTask; stdcall;

function CkSsh_UnlockComponent(objHandle: HCkSsh; unlockCode: PWideChar): wordbool; stdcall;

function CkSsh_WaitForChannelMessage(objHandle: HCkSsh; pollTimeoutMs: Integer): Integer; stdcall;

function CkSsh_WaitForChannelMessageAsync(objHandle: HCkSsh; pollTimeoutMs: Integer): HCkTask; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkSsh_Create; external DLLName;
procedure CkSsh_Dispose; external DLLName;

procedure CkSsh_SetAbortCheck; external DLLName;
procedure CkSsh_SetProgressInfo; external DLLName;
procedure CkSsh_SetPercentDone; external DLLName;
procedure CkSsh_SetTaskCompleted; external DLLName;
function CkSsh_getAbortCurrent; external DLLName;
procedure CkSsh_putAbortCurrent; external DLLName;
function CkSsh_getAuthFailReason; external DLLName;
function CkSsh_getCaretControl; external DLLName;
procedure CkSsh_putCaretControl; external DLLName;
function CkSsh_getChannelOpenFailCode; external DLLName;
procedure CkSsh_getChannelOpenFailReason; external DLLName;
function CkSsh__channelOpenFailReason; external DLLName;
procedure CkSsh_getClientIdentifier; external DLLName;
procedure CkSsh_putClientIdentifier; external DLLName;
function CkSsh__clientIdentifier; external DLLName;
procedure CkSsh_getClientIpAddress; external DLLName;
procedure CkSsh_putClientIpAddress; external DLLName;
function CkSsh__clientIpAddress; external DLLName;
function CkSsh_getClientPort; external DLLName;
procedure CkSsh_putClientPort; external DLLName;
function CkSsh_getConnectTimeoutMs; external DLLName;
procedure CkSsh_putConnectTimeoutMs; external DLLName;
procedure CkSsh_getDebugLogFilePath; external DLLName;
procedure CkSsh_putDebugLogFilePath; external DLLName;
function CkSsh__debugLogFilePath; external DLLName;
function CkSsh_getDisconnectCode; external DLLName;
procedure CkSsh_getDisconnectReason; external DLLName;
function CkSsh__disconnectReason; external DLLName;
function CkSsh_getEnableCompression; external DLLName;
procedure CkSsh_putEnableCompression; external DLLName;
procedure CkSsh_getForceCipher; external DLLName;
procedure CkSsh_putForceCipher; external DLLName;
function CkSsh__forceCipher; external DLLName;
function CkSsh_getHeartbeatMs; external DLLName;
procedure CkSsh_putHeartbeatMs; external DLLName;
procedure CkSsh_getHostKeyAlg; external DLLName;
procedure CkSsh_putHostKeyAlg; external DLLName;
function CkSsh__hostKeyAlg; external DLLName;
procedure CkSsh_getHostKeyFingerprint; external DLLName;
function CkSsh__hostKeyFingerprint; external DLLName;
procedure CkSsh_getHttpProxyAuthMethod; external DLLName;
procedure CkSsh_putHttpProxyAuthMethod; external DLLName;
function CkSsh__httpProxyAuthMethod; external DLLName;
procedure CkSsh_getHttpProxyDomain; external DLLName;
procedure CkSsh_putHttpProxyDomain; external DLLName;
function CkSsh__httpProxyDomain; external DLLName;
procedure CkSsh_getHttpProxyHostname; external DLLName;
procedure CkSsh_putHttpProxyHostname; external DLLName;
function CkSsh__httpProxyHostname; external DLLName;
procedure CkSsh_getHttpProxyPassword; external DLLName;
procedure CkSsh_putHttpProxyPassword; external DLLName;
function CkSsh__httpProxyPassword; external DLLName;
function CkSsh_getHttpProxyPort; external DLLName;
procedure CkSsh_putHttpProxyPort; external DLLName;
procedure CkSsh_getHttpProxyUsername; external DLLName;
procedure CkSsh_putHttpProxyUsername; external DLLName;
function CkSsh__httpProxyUsername; external DLLName;
function CkSsh_getIdleTimeoutMs; external DLLName;
procedure CkSsh_putIdleTimeoutMs; external DLLName;
function CkSsh_getIsConnected; external DLLName;
function CkSsh_getKeepSessionLog; external DLLName;
procedure CkSsh_putKeepSessionLog; external DLLName;
procedure CkSsh_getLastErrorHtml; external DLLName;
function CkSsh__lastErrorHtml; external DLLName;
procedure CkSsh_getLastErrorText; external DLLName;
function CkSsh__lastErrorText; external DLLName;
procedure CkSsh_getLastErrorXml; external DLLName;
function CkSsh__lastErrorXml; external DLLName;
function CkSsh_getLastMethodSuccess; external DLLName;
procedure CkSsh_putLastMethodSuccess; external DLLName;
function CkSsh_getMaxPacketSize; external DLLName;
procedure CkSsh_putMaxPacketSize; external DLLName;
function CkSsh_getNumOpenChannels; external DLLName;
function CkSsh_getPasswordChangeRequested; external DLLName;
function CkSsh_getPreferIpv6; external DLLName;
procedure CkSsh_putPreferIpv6; external DLLName;
function CkSsh_getReadTimeoutMs; external DLLName;
procedure CkSsh_putReadTimeoutMs; external DLLName;
procedure CkSsh_getReqExecCharset; external DLLName;
procedure CkSsh_putReqExecCharset; external DLLName;
function CkSsh__reqExecCharset; external DLLName;
procedure CkSsh_getServerIdentifier; external DLLName;
function CkSsh__serverIdentifier; external DLLName;
procedure CkSsh_getSessionLog; external DLLName;
function CkSsh__sessionLog; external DLLName;
procedure CkSsh_getSocksHostname; external DLLName;
procedure CkSsh_putSocksHostname; external DLLName;
function CkSsh__socksHostname; external DLLName;
procedure CkSsh_getSocksPassword; external DLLName;
procedure CkSsh_putSocksPassword; external DLLName;
function CkSsh__socksPassword; external DLLName;
function CkSsh_getSocksPort; external DLLName;
procedure CkSsh_putSocksPort; external DLLName;
procedure CkSsh_getSocksUsername; external DLLName;
procedure CkSsh_putSocksUsername; external DLLName;
function CkSsh__socksUsername; external DLLName;
function CkSsh_getSocksVersion; external DLLName;
procedure CkSsh_putSocksVersion; external DLLName;
function CkSsh_getSoRcvBuf; external DLLName;
procedure CkSsh_putSoRcvBuf; external DLLName;
function CkSsh_getSoSndBuf; external DLLName;
procedure CkSsh_putSoSndBuf; external DLLName;
function CkSsh_getStderrToStdout; external DLLName;
procedure CkSsh_putStderrToStdout; external DLLName;
function CkSsh_getStripColorCodes; external DLLName;
procedure CkSsh_putStripColorCodes; external DLLName;
function CkSsh_getTcpNoDelay; external DLLName;
procedure CkSsh_putTcpNoDelay; external DLLName;
procedure CkSsh_getUncommonOptions; external DLLName;
procedure CkSsh_putUncommonOptions; external DLLName;
function CkSsh__uncommonOptions; external DLLName;
procedure CkSsh_getUserAuthBanner; external DLLName;
procedure CkSsh_putUserAuthBanner; external DLLName;
function CkSsh__userAuthBanner; external DLLName;
function CkSsh_getVerboseLogging; external DLLName;
procedure CkSsh_putVerboseLogging; external DLLName;
procedure CkSsh_getVersion; external DLLName;
function CkSsh__version; external DLLName;
function CkSsh_AuthenticatePk; external DLLName;
function CkSsh_AuthenticatePkAsync; external DLLName;
function CkSsh_AuthenticatePw; external DLLName;
function CkSsh_AuthenticatePwAsync; external DLLName;
function CkSsh_AuthenticatePwPk; external DLLName;
function CkSsh_AuthenticatePwPkAsync; external DLLName;
function CkSsh_AuthenticateSecPw; external DLLName;
function CkSsh_AuthenticateSecPwAsync; external DLLName;
function CkSsh_AuthenticateSecPwPk; external DLLName;
function CkSsh_AuthenticateSecPwPkAsync; external DLLName;
function CkSsh_ChannelIsOpen; external DLLName;
function CkSsh_ChannelPoll; external DLLName;
function CkSsh_ChannelPollAsync; external DLLName;
function CkSsh_ChannelRead; external DLLName;
function CkSsh_ChannelReadAsync; external DLLName;
function CkSsh_ChannelReadAndPoll; external DLLName;
function CkSsh_ChannelReadAndPollAsync; external DLLName;
function CkSsh_ChannelReadAndPoll2; external DLLName;
function CkSsh_ChannelReadAndPoll2Async; external DLLName;
function CkSsh_ChannelReceivedClose; external DLLName;
function CkSsh_ChannelReceivedEof; external DLLName;
function CkSsh_ChannelReceivedExitStatus; external DLLName;
function CkSsh_ChannelReceiveToClose; external DLLName;
function CkSsh_ChannelReceiveToCloseAsync; external DLLName;
function CkSsh_ChannelReceiveUntilMatch; external DLLName;
function CkSsh_ChannelReceiveUntilMatchAsync; external DLLName;
function CkSsh_ChannelReceiveUntilMatchN; external DLLName;
function CkSsh_ChannelReceiveUntilMatchNAsync; external DLLName;
procedure CkSsh_ChannelRelease; external DLLName;
function CkSsh_ChannelSendClose; external DLLName;
function CkSsh_ChannelSendCloseAsync; external DLLName;
function CkSsh_ChannelSendData; external DLLName;
function CkSsh_ChannelSendDataAsync; external DLLName;
function CkSsh_ChannelSendEof; external DLLName;
function CkSsh_ChannelSendEofAsync; external DLLName;
function CkSsh_ChannelSendString; external DLLName;
function CkSsh_ChannelSendStringAsync; external DLLName;
function CkSsh_CheckConnection; external DLLName;
procedure CkSsh_ClearTtyModes; external DLLName;
function CkSsh_Connect; external DLLName;
function CkSsh_ConnectAsync; external DLLName;
function CkSsh_ConnectThroughSsh; external DLLName;
function CkSsh_ConnectThroughSshAsync; external DLLName;
function CkSsh_ContinueKeyboardAuth; external DLLName;
function CkSsh__continueKeyboardAuth; external DLLName;
function CkSsh_ContinueKeyboardAuthAsync; external DLLName;
procedure CkSsh_Disconnect; external DLLName;
function CkSsh_GetAuthMethods; external DLLName;
function CkSsh__getAuthMethods; external DLLName;
function CkSsh_GetAuthMethodsAsync; external DLLName;
function CkSsh_GetChannelExitStatus; external DLLName;
function CkSsh_GetChannelNumber; external DLLName;
function CkSsh_GetChannelType; external DLLName;
function CkSsh__getChannelType; external DLLName;
function CkSsh_GetHostKeyFP; external DLLName;
function CkSsh__getHostKeyFP; external DLLName;
function CkSsh_GetReceivedData; external DLLName;
function CkSsh_GetReceivedDataN; external DLLName;
function CkSsh_GetReceivedNumBytes; external DLLName;
function CkSsh_GetReceivedStderr; external DLLName;
function CkSsh_GetReceivedStderrText; external DLLName;
function CkSsh__getReceivedStderrText; external DLLName;
function CkSsh_GetReceivedText; external DLLName;
function CkSsh__getReceivedText; external DLLName;
function CkSsh_GetReceivedTextS; external DLLName;
function CkSsh__getReceivedTextS; external DLLName;
function CkSsh_LastJsonData; external DLLName;
function CkSsh_LoadTaskCaller; external DLLName;
function CkSsh_OpenCustomChannel; external DLLName;
function CkSsh_OpenCustomChannelAsync; external DLLName;
function CkSsh_OpenDirectTcpIpChannel; external DLLName;
function CkSsh_OpenDirectTcpIpChannelAsync; external DLLName;
function CkSsh_OpenSessionChannel; external DLLName;
function CkSsh_OpenSessionChannelAsync; external DLLName;
function CkSsh_PeekReceivedText; external DLLName;
function CkSsh__peekReceivedText; external DLLName;
function CkSsh_QuickCmdCheck; external DLLName;
function CkSsh_QuickCmdCheckAsync; external DLLName;
function CkSsh_QuickCmdSend; external DLLName;
function CkSsh_QuickCmdSendAsync; external DLLName;
function CkSsh_QuickCommand; external DLLName;
function CkSsh__quickCommand; external DLLName;
function CkSsh_QuickCommandAsync; external DLLName;
function CkSsh_QuickShell; external DLLName;
function CkSsh_QuickShellAsync; external DLLName;
function CkSsh_ReKey; external DLLName;
function CkSsh_ReKeyAsync; external DLLName;
function CkSsh_SaveLastError; external DLLName;
function CkSsh_SendIgnore; external DLLName;
function CkSsh_SendIgnoreAsync; external DLLName;
function CkSsh_SendReqExec; external DLLName;
function CkSsh_SendReqExecAsync; external DLLName;
function CkSsh_SendReqPty; external DLLName;
function CkSsh_SendReqPtyAsync; external DLLName;
function CkSsh_SendReqSetEnv; external DLLName;
function CkSsh_SendReqSetEnvAsync; external DLLName;
function CkSsh_SendReqShell; external DLLName;
function CkSsh_SendReqShellAsync; external DLLName;
function CkSsh_SendReqSignal; external DLLName;
function CkSsh_SendReqSignalAsync; external DLLName;
function CkSsh_SendReqSubsystem; external DLLName;
function CkSsh_SendReqSubsystemAsync; external DLLName;
function CkSsh_SendReqWindowChange; external DLLName;
function CkSsh_SendReqWindowChangeAsync; external DLLName;
function CkSsh_SendReqX11Forwarding; external DLLName;
function CkSsh_SendReqX11ForwardingAsync; external DLLName;
function CkSsh_SendReqXonXoff; external DLLName;
function CkSsh_SendReqXonXoffAsync; external DLLName;
function CkSsh_SetTtyMode; external DLLName;
function CkSsh_StartKeyboardAuth; external DLLName;
function CkSsh__startKeyboardAuth; external DLLName;
function CkSsh_StartKeyboardAuthAsync; external DLLName;
function CkSsh_UnlockComponent; external DLLName;
function CkSsh_WaitForChannelMessage; external DLLName;
function CkSsh_WaitForChannelMessageAsync; external DLLName;



end.
