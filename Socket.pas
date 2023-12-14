unit Socket;

interface

type

HCkJsonObject = Pointer;
HCkSsh = Pointer;
HCkCert = Pointer;
HCkSocket = Pointer;
HCkByteData = Pointer;
HCkSshKey = Pointer;
HCkString = Pointer;
HCkStringBuilder = Pointer;
HCkTask = Pointer;
HCkBinData = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TSocketAbortCheck = function(): Integer; cdecl;
TSocketProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TSocketPercentDone = function(pctDone: Integer): Integer; cdecl;
TSocketTaskCompleted = procedure(task: HCkTask); cdecl;


function CkSocket_Create: HCkSocket; stdcall;
procedure CkSocket_Dispose(handle: HCkSocket); stdcall;

procedure CkSocket_SetAbortCheck(objHandle: HCkSocket; fn: TSocketAbortCheck) stdcall;
procedure CkSocket_SetProgressInfo(objHandle: HCkSocket; fn: TSocketProgressInfo) stdcall;
procedure CkSocket_SetPercentDone(objHandle: HCkSocket; fn: TSocketPercentDone) stdcall;
procedure CkSocket_SetTaskCompleted(objHandle: HCkSocket; fn: TSocketTaskCompleted) stdcall;
function CkSocket_getAbortCurrent(objHandle: HCkSocket): wordbool; stdcall;

procedure CkSocket_putAbortCurrent(objHandle: HCkSocket; newPropVal: wordbool); stdcall;

function CkSocket_getAcceptFailReason(objHandle: HCkSocket): Integer; stdcall;

procedure CkSocket_getAlpnProtocol(objHandle: HCkSocket; outPropVal: HCkString); stdcall;

procedure CkSocket_putAlpnProtocol(objHandle: HCkSocket; newPropVal: PWideChar); stdcall;

function CkSocket__alpnProtocol(objHandle: HCkSocket): PWideChar; stdcall;

function CkSocket_getBandwidthThrottleDown(objHandle: HCkSocket): Integer; stdcall;

procedure CkSocket_putBandwidthThrottleDown(objHandle: HCkSocket; newPropVal: Integer); stdcall;

function CkSocket_getBandwidthThrottleUp(objHandle: HCkSocket): Integer; stdcall;

procedure CkSocket_putBandwidthThrottleUp(objHandle: HCkSocket; newPropVal: Integer); stdcall;

function CkSocket_getBigEndian(objHandle: HCkSocket): wordbool; stdcall;

procedure CkSocket_putBigEndian(objHandle: HCkSocket; newPropVal: wordbool); stdcall;

procedure CkSocket_getClientIpAddress(objHandle: HCkSocket; outPropVal: HCkString); stdcall;

procedure CkSocket_putClientIpAddress(objHandle: HCkSocket; newPropVal: PWideChar); stdcall;

function CkSocket__clientIpAddress(objHandle: HCkSocket): PWideChar; stdcall;

function CkSocket_getClientPort(objHandle: HCkSocket): Integer; stdcall;

procedure CkSocket_putClientPort(objHandle: HCkSocket; newPropVal: Integer); stdcall;

function CkSocket_getConnectFailReason(objHandle: HCkSocket): Integer; stdcall;

procedure CkSocket_getDebugLogFilePath(objHandle: HCkSocket; outPropVal: HCkString); stdcall;

procedure CkSocket_putDebugLogFilePath(objHandle: HCkSocket; newPropVal: PWideChar); stdcall;

function CkSocket__debugLogFilePath(objHandle: HCkSocket): PWideChar; stdcall;

function CkSocket_getElapsedSeconds(objHandle: HCkSocket): Integer; stdcall;

function CkSocket_getHeartbeatMs(objHandle: HCkSocket): Integer; stdcall;

procedure CkSocket_putHeartbeatMs(objHandle: HCkSocket; newPropVal: Integer); stdcall;

procedure CkSocket_getHttpProxyAuthMethod(objHandle: HCkSocket; outPropVal: HCkString); stdcall;

procedure CkSocket_putHttpProxyAuthMethod(objHandle: HCkSocket; newPropVal: PWideChar); stdcall;

function CkSocket__httpProxyAuthMethod(objHandle: HCkSocket): PWideChar; stdcall;

procedure CkSocket_getHttpProxyDomain(objHandle: HCkSocket; outPropVal: HCkString); stdcall;

procedure CkSocket_putHttpProxyDomain(objHandle: HCkSocket; newPropVal: PWideChar); stdcall;

function CkSocket__httpProxyDomain(objHandle: HCkSocket): PWideChar; stdcall;

function CkSocket_getHttpProxyForHttp(objHandle: HCkSocket): wordbool; stdcall;

procedure CkSocket_putHttpProxyForHttp(objHandle: HCkSocket; newPropVal: wordbool); stdcall;

procedure CkSocket_getHttpProxyHostname(objHandle: HCkSocket; outPropVal: HCkString); stdcall;

procedure CkSocket_putHttpProxyHostname(objHandle: HCkSocket; newPropVal: PWideChar); stdcall;

function CkSocket__httpProxyHostname(objHandle: HCkSocket): PWideChar; stdcall;

procedure CkSocket_getHttpProxyPassword(objHandle: HCkSocket; outPropVal: HCkString); stdcall;

procedure CkSocket_putHttpProxyPassword(objHandle: HCkSocket; newPropVal: PWideChar); stdcall;

function CkSocket__httpProxyPassword(objHandle: HCkSocket): PWideChar; stdcall;

function CkSocket_getHttpProxyPort(objHandle: HCkSocket): Integer; stdcall;

procedure CkSocket_putHttpProxyPort(objHandle: HCkSocket; newPropVal: Integer); stdcall;

procedure CkSocket_getHttpProxyUsername(objHandle: HCkSocket; outPropVal: HCkString); stdcall;

procedure CkSocket_putHttpProxyUsername(objHandle: HCkSocket; newPropVal: PWideChar); stdcall;

function CkSocket__httpProxyUsername(objHandle: HCkSocket): PWideChar; stdcall;

function CkSocket_getIsConnected(objHandle: HCkSocket): wordbool; stdcall;

function CkSocket_getKeepAlive(objHandle: HCkSocket): wordbool; stdcall;

procedure CkSocket_putKeepAlive(objHandle: HCkSocket; newPropVal: wordbool); stdcall;

function CkSocket_getKeepSessionLog(objHandle: HCkSocket): wordbool; stdcall;

procedure CkSocket_putKeepSessionLog(objHandle: HCkSocket; newPropVal: wordbool); stdcall;

procedure CkSocket_getLastErrorHtml(objHandle: HCkSocket; outPropVal: HCkString); stdcall;

function CkSocket__lastErrorHtml(objHandle: HCkSocket): PWideChar; stdcall;

procedure CkSocket_getLastErrorText(objHandle: HCkSocket; outPropVal: HCkString); stdcall;

function CkSocket__lastErrorText(objHandle: HCkSocket): PWideChar; stdcall;

procedure CkSocket_getLastErrorXml(objHandle: HCkSocket; outPropVal: HCkString); stdcall;

function CkSocket__lastErrorXml(objHandle: HCkSocket): PWideChar; stdcall;

function CkSocket_getLastMethodFailed(objHandle: HCkSocket): wordbool; stdcall;

function CkSocket_getLastMethodSuccess(objHandle: HCkSocket): wordbool; stdcall;

procedure CkSocket_putLastMethodSuccess(objHandle: HCkSocket; newPropVal: wordbool); stdcall;

function CkSocket_getListenIpv6(objHandle: HCkSocket): wordbool; stdcall;

procedure CkSocket_putListenIpv6(objHandle: HCkSocket; newPropVal: wordbool); stdcall;

function CkSocket_getListenPort(objHandle: HCkSocket): Integer; stdcall;

procedure CkSocket_getLocalIpAddress(objHandle: HCkSocket; outPropVal: HCkString); stdcall;

function CkSocket__localIpAddress(objHandle: HCkSocket): PWideChar; stdcall;

function CkSocket_getLocalPort(objHandle: HCkSocket): Integer; stdcall;

function CkSocket_getMaxReadIdleMs(objHandle: HCkSocket): Integer; stdcall;

procedure CkSocket_putMaxReadIdleMs(objHandle: HCkSocket; newPropVal: Integer); stdcall;

function CkSocket_getMaxSendIdleMs(objHandle: HCkSocket): Integer; stdcall;

procedure CkSocket_putMaxSendIdleMs(objHandle: HCkSocket; newPropVal: Integer); stdcall;

procedure CkSocket_getMyIpAddress(objHandle: HCkSocket; outPropVal: HCkString); stdcall;

function CkSocket__myIpAddress(objHandle: HCkSocket): PWideChar; stdcall;

function CkSocket_getNumBytesAvailable(objHandle: HCkSocket): Integer; stdcall;

function CkSocket_getNumReceivedClientCerts(objHandle: HCkSocket): Integer; stdcall;

function CkSocket_getNumSocketsInSet(objHandle: HCkSocket): Integer; stdcall;

function CkSocket_getNumSslAcceptableClientCAs(objHandle: HCkSocket): Integer; stdcall;

function CkSocket_getObjectId(objHandle: HCkSocket): Integer; stdcall;

function CkSocket_getPercentDoneScale(objHandle: HCkSocket): Integer; stdcall;

procedure CkSocket_putPercentDoneScale(objHandle: HCkSocket; newPropVal: Integer); stdcall;

function CkSocket_getPreferIpv6(objHandle: HCkSocket): wordbool; stdcall;

procedure CkSocket_putPreferIpv6(objHandle: HCkSocket; newPropVal: wordbool); stdcall;

function CkSocket_getRcvBytesPerSec(objHandle: HCkSocket): Integer; stdcall;

function CkSocket_getReceivedCount(objHandle: HCkSocket): Integer; stdcall;

procedure CkSocket_putReceivedCount(objHandle: HCkSocket; newPropVal: Integer); stdcall;

function CkSocket_getReceivedInt(objHandle: HCkSocket): Integer; stdcall;

procedure CkSocket_putReceivedInt(objHandle: HCkSocket; newPropVal: Integer); stdcall;

function CkSocket_getReceiveFailReason(objHandle: HCkSocket): Integer; stdcall;

function CkSocket_getReceivePacketSize(objHandle: HCkSocket): Integer; stdcall;

procedure CkSocket_putReceivePacketSize(objHandle: HCkSocket; newPropVal: Integer); stdcall;

procedure CkSocket_getRemoteIpAddress(objHandle: HCkSocket; outPropVal: HCkString); stdcall;

function CkSocket__remoteIpAddress(objHandle: HCkSocket): PWideChar; stdcall;

function CkSocket_getRemotePort(objHandle: HCkSocket): Integer; stdcall;

function CkSocket_getRequireSslCertVerify(objHandle: HCkSocket): wordbool; stdcall;

procedure CkSocket_putRequireSslCertVerify(objHandle: HCkSocket; newPropVal: wordbool); stdcall;

function CkSocket_getSelectorIndex(objHandle: HCkSocket): Integer; stdcall;

procedure CkSocket_putSelectorIndex(objHandle: HCkSocket; newPropVal: Integer); stdcall;

function CkSocket_getSelectorReadIndex(objHandle: HCkSocket): Integer; stdcall;

procedure CkSocket_putSelectorReadIndex(objHandle: HCkSocket; newPropVal: Integer); stdcall;

function CkSocket_getSelectorWriteIndex(objHandle: HCkSocket): Integer; stdcall;

procedure CkSocket_putSelectorWriteIndex(objHandle: HCkSocket; newPropVal: Integer); stdcall;

function CkSocket_getSendBytesPerSec(objHandle: HCkSocket): Integer; stdcall;

function CkSocket_getSendFailReason(objHandle: HCkSocket): Integer; stdcall;

function CkSocket_getSendPacketSize(objHandle: HCkSocket): Integer; stdcall;

procedure CkSocket_putSendPacketSize(objHandle: HCkSocket; newPropVal: Integer); stdcall;

procedure CkSocket_getSessionLog(objHandle: HCkSocket; outPropVal: HCkString); stdcall;

function CkSocket__sessionLog(objHandle: HCkSocket): PWideChar; stdcall;

procedure CkSocket_getSessionLogEncoding(objHandle: HCkSocket; outPropVal: HCkString); stdcall;

procedure CkSocket_putSessionLogEncoding(objHandle: HCkSocket; newPropVal: PWideChar); stdcall;

function CkSocket__sessionLogEncoding(objHandle: HCkSocket): PWideChar; stdcall;

procedure CkSocket_getSniHostname(objHandle: HCkSocket; outPropVal: HCkString); stdcall;

procedure CkSocket_putSniHostname(objHandle: HCkSocket; newPropVal: PWideChar); stdcall;

function CkSocket__sniHostname(objHandle: HCkSocket): PWideChar; stdcall;

procedure CkSocket_getSocksHostname(objHandle: HCkSocket; outPropVal: HCkString); stdcall;

procedure CkSocket_putSocksHostname(objHandle: HCkSocket; newPropVal: PWideChar); stdcall;

function CkSocket__socksHostname(objHandle: HCkSocket): PWideChar; stdcall;

procedure CkSocket_getSocksPassword(objHandle: HCkSocket; outPropVal: HCkString); stdcall;

procedure CkSocket_putSocksPassword(objHandle: HCkSocket; newPropVal: PWideChar); stdcall;

function CkSocket__socksPassword(objHandle: HCkSocket): PWideChar; stdcall;

function CkSocket_getSocksPort(objHandle: HCkSocket): Integer; stdcall;

procedure CkSocket_putSocksPort(objHandle: HCkSocket; newPropVal: Integer); stdcall;

procedure CkSocket_getSocksUsername(objHandle: HCkSocket; outPropVal: HCkString); stdcall;

procedure CkSocket_putSocksUsername(objHandle: HCkSocket; newPropVal: PWideChar); stdcall;

function CkSocket__socksUsername(objHandle: HCkSocket): PWideChar; stdcall;

function CkSocket_getSocksVersion(objHandle: HCkSocket): Integer; stdcall;

procedure CkSocket_putSocksVersion(objHandle: HCkSocket; newPropVal: Integer); stdcall;

function CkSocket_getSoRcvBuf(objHandle: HCkSocket): Integer; stdcall;

procedure CkSocket_putSoRcvBuf(objHandle: HCkSocket; newPropVal: Integer); stdcall;

function CkSocket_getSoReuseAddr(objHandle: HCkSocket): wordbool; stdcall;

procedure CkSocket_putSoReuseAddr(objHandle: HCkSocket; newPropVal: wordbool); stdcall;

function CkSocket_getSoSndBuf(objHandle: HCkSocket): Integer; stdcall;

procedure CkSocket_putSoSndBuf(objHandle: HCkSocket; newPropVal: Integer); stdcall;

function CkSocket_getSsl(objHandle: HCkSocket): wordbool; stdcall;

procedure CkSocket_putSsl(objHandle: HCkSocket; newPropVal: wordbool); stdcall;

procedure CkSocket_getSslAllowedCiphers(objHandle: HCkSocket; outPropVal: HCkString); stdcall;

procedure CkSocket_putSslAllowedCiphers(objHandle: HCkSocket; newPropVal: PWideChar); stdcall;

function CkSocket__sslAllowedCiphers(objHandle: HCkSocket): PWideChar; stdcall;

procedure CkSocket_getSslProtocol(objHandle: HCkSocket; outPropVal: HCkString); stdcall;

procedure CkSocket_putSslProtocol(objHandle: HCkSocket; newPropVal: PWideChar); stdcall;

function CkSocket__sslProtocol(objHandle: HCkSocket): PWideChar; stdcall;

procedure CkSocket_getStringCharset(objHandle: HCkSocket; outPropVal: HCkString); stdcall;

procedure CkSocket_putStringCharset(objHandle: HCkSocket; newPropVal: PWideChar); stdcall;

function CkSocket__stringCharset(objHandle: HCkSocket): PWideChar; stdcall;

function CkSocket_getTcpNoDelay(objHandle: HCkSocket): wordbool; stdcall;

procedure CkSocket_putTcpNoDelay(objHandle: HCkSocket; newPropVal: wordbool); stdcall;

procedure CkSocket_getTlsCipherSuite(objHandle: HCkSocket; outPropVal: HCkString); stdcall;

function CkSocket__tlsCipherSuite(objHandle: HCkSocket): PWideChar; stdcall;

procedure CkSocket_getTlsPinSet(objHandle: HCkSocket; outPropVal: HCkString); stdcall;

procedure CkSocket_putTlsPinSet(objHandle: HCkSocket; newPropVal: PWideChar); stdcall;

function CkSocket__tlsPinSet(objHandle: HCkSocket): PWideChar; stdcall;

procedure CkSocket_getTlsVersion(objHandle: HCkSocket; outPropVal: HCkString); stdcall;

function CkSocket__tlsVersion(objHandle: HCkSocket): PWideChar; stdcall;

procedure CkSocket_getUncommonOptions(objHandle: HCkSocket; outPropVal: HCkString); stdcall;

procedure CkSocket_putUncommonOptions(objHandle: HCkSocket; newPropVal: PWideChar); stdcall;

function CkSocket__uncommonOptions(objHandle: HCkSocket): PWideChar; stdcall;

procedure CkSocket_getUserData(objHandle: HCkSocket; outPropVal: HCkString); stdcall;

procedure CkSocket_putUserData(objHandle: HCkSocket; newPropVal: PWideChar); stdcall;

function CkSocket__userData(objHandle: HCkSocket): PWideChar; stdcall;

function CkSocket_getVerboseLogging(objHandle: HCkSocket): wordbool; stdcall;

procedure CkSocket_putVerboseLogging(objHandle: HCkSocket; newPropVal: wordbool); stdcall;

procedure CkSocket_getVersion(objHandle: HCkSocket; outPropVal: HCkString); stdcall;

function CkSocket__version(objHandle: HCkSocket): PWideChar; stdcall;

function CkSocket_AcceptNextConnection(objHandle: HCkSocket; maxWaitMs: Integer): HCkSocket; stdcall;

function CkSocket_AcceptNextConnectionAsync(objHandle: HCkSocket; maxWaitMs: Integer): HCkTask; stdcall;

function CkSocket_AddSslAcceptableClientCaDn(objHandle: HCkSocket; certAuthDN: PWideChar): wordbool; stdcall;

function CkSocket_BindAndListen(objHandle: HCkSocket; port: Integer; backLog: Integer): wordbool; stdcall;

function CkSocket_BindAndListenAsync(objHandle: HCkSocket; port: Integer; backLog: Integer): HCkTask; stdcall;

function CkSocket_BindAndListenPortRange(objHandle: HCkSocket; beginPort: Integer; endPort: Integer; backLog: Integer): Integer; stdcall;

function CkSocket_BindAndListenPortRangeAsync(objHandle: HCkSocket; beginPort: Integer; endPort: Integer; backLog: Integer): HCkTask; stdcall;

function CkSocket_BuildHttpGetRequest(objHandle: HCkSocket; url: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkSocket__buildHttpGetRequest(objHandle: HCkSocket; url: PWideChar): PWideChar; stdcall;

function CkSocket_CheckWriteable(objHandle: HCkSocket; maxWaitMs: Integer): Integer; stdcall;

function CkSocket_CheckWriteableAsync(objHandle: HCkSocket; maxWaitMs: Integer): HCkTask; stdcall;

procedure CkSocket_ClearSessionLog(objHandle: HCkSocket); stdcall;

function CkSocket_CloneSocket(objHandle: HCkSocket): HCkSocket; stdcall;

function CkSocket_Close(objHandle: HCkSocket; maxWaitMs: Integer): wordbool; stdcall;

function CkSocket_CloseAsync(objHandle: HCkSocket; maxWaitMs: Integer): HCkTask; stdcall;

function CkSocket_Connect(objHandle: HCkSocket; hostname: PWideChar; port: Integer; ssl: wordbool; maxWaitMs: Integer): wordbool; stdcall;

function CkSocket_ConnectAsync(objHandle: HCkSocket; hostname: PWideChar; port: Integer; ssl: wordbool; maxWaitMs: Integer): HCkTask; stdcall;

function CkSocket_ConvertFromSsl(objHandle: HCkSocket): wordbool; stdcall;

function CkSocket_ConvertFromSslAsync(objHandle: HCkSocket): HCkTask; stdcall;

function CkSocket_ConvertToSsl(objHandle: HCkSocket): wordbool; stdcall;

function CkSocket_ConvertToSslAsync(objHandle: HCkSocket): HCkTask; stdcall;

procedure CkSocket_DnsCacheClear(objHandle: HCkSocket); stdcall;

function CkSocket_DnsLookup(objHandle: HCkSocket; hostname: PWideChar; maxWaitMs: Integer; outStr: HCkString): wordbool; stdcall;

function CkSocket__dnsLookup(objHandle: HCkSocket; hostname: PWideChar; maxWaitMs: Integer): PWideChar; stdcall;

function CkSocket_DnsLookupAsync(objHandle: HCkSocket; hostname: PWideChar; maxWaitMs: Integer): HCkTask; stdcall;

function CkSocket_GetMyCert(objHandle: HCkSocket): HCkCert; stdcall;

function CkSocket_GetReceivedClientCert(objHandle: HCkSocket; index: Integer): HCkCert; stdcall;

function CkSocket_GetSslAcceptableClientCaDn(objHandle: HCkSocket; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkSocket__getSslAcceptableClientCaDn(objHandle: HCkSocket; index: Integer): PWideChar; stdcall;

function CkSocket_GetSslServerCert(objHandle: HCkSocket): HCkCert; stdcall;

function CkSocket_InitSslServer(objHandle: HCkSocket; cert: HCkCert): wordbool; stdcall;

function CkSocket_IsUnlocked(objHandle: HCkSocket): wordbool; stdcall;

function CkSocket_LastJsonData(objHandle: HCkSocket): HCkJsonObject; stdcall;

function CkSocket_LoadTaskCaller(objHandle: HCkSocket; task: HCkTask): wordbool; stdcall;

function CkSocket_LoadTaskResult(objHandle: HCkSocket; task: HCkTask): wordbool; stdcall;

function CkSocket_PollDataAvailable(objHandle: HCkSocket): wordbool; stdcall;

function CkSocket_PollDataAvailableAsync(objHandle: HCkSocket): HCkTask; stdcall;

function CkSocket_ReceiveBd(objHandle: HCkSocket; binData: HCkBinData): wordbool; stdcall;

function CkSocket_ReceiveBdAsync(objHandle: HCkSocket; binData: HCkBinData): HCkTask; stdcall;

function CkSocket_ReceiveBdN(objHandle: HCkSocket; numBytes: LongWord; binData: HCkBinData): wordbool; stdcall;

function CkSocket_ReceiveBdNAsync(objHandle: HCkSocket; numBytes: LongWord; binData: HCkBinData): HCkTask; stdcall;

function CkSocket_ReceiveByte(objHandle: HCkSocket; bUnsigned: wordbool): wordbool; stdcall;

function CkSocket_ReceiveByteAsync(objHandle: HCkSocket; bUnsigned: wordbool): HCkTask; stdcall;

function CkSocket_ReceiveBytes(objHandle: HCkSocket; outData: HCkByteData): wordbool; stdcall;

function CkSocket_ReceiveBytesAsync(objHandle: HCkSocket): HCkTask; stdcall;

function CkSocket_ReceiveBytesENC(objHandle: HCkSocket; encodingAlg: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkSocket__receiveBytesENC(objHandle: HCkSocket; encodingAlg: PWideChar): PWideChar; stdcall;

function CkSocket_ReceiveBytesENCAsync(objHandle: HCkSocket; encodingAlg: PWideChar): HCkTask; stdcall;

function CkSocket_ReceiveBytesN(objHandle: HCkSocket; numBytes: LongWord; outData: HCkByteData): wordbool; stdcall;

function CkSocket_ReceiveBytesNAsync(objHandle: HCkSocket; numBytes: LongWord): HCkTask; stdcall;

function CkSocket_ReceiveBytesToFile(objHandle: HCkSocket; appendFilename: PWideChar): wordbool; stdcall;

function CkSocket_ReceiveBytesToFileAsync(objHandle: HCkSocket; appendFilename: PWideChar): HCkTask; stdcall;

function CkSocket_ReceiveCount(objHandle: HCkSocket): Integer; stdcall;

function CkSocket_ReceiveCountAsync(objHandle: HCkSocket): HCkTask; stdcall;

function CkSocket_ReceiveInt16(objHandle: HCkSocket; bigEndian: wordbool; bUnsigned: wordbool): wordbool; stdcall;

function CkSocket_ReceiveInt16Async(objHandle: HCkSocket; bigEndian: wordbool; bUnsigned: wordbool): HCkTask; stdcall;

function CkSocket_ReceiveInt32(objHandle: HCkSocket; bigEndian: wordbool): wordbool; stdcall;

function CkSocket_ReceiveInt32Async(objHandle: HCkSocket; bigEndian: wordbool): HCkTask; stdcall;

function CkSocket_ReceiveNBytesENC(objHandle: HCkSocket; numBytes: LongWord; encodingAlg: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkSocket__receiveNBytesENC(objHandle: HCkSocket; numBytes: LongWord; encodingAlg: PWideChar): PWideChar; stdcall;

function CkSocket_ReceiveNBytesENCAsync(objHandle: HCkSocket; numBytes: LongWord; encodingAlg: PWideChar): HCkTask; stdcall;

function CkSocket_ReceiveSb(objHandle: HCkSocket; sb: HCkStringBuilder): wordbool; stdcall;

function CkSocket_ReceiveSbAsync(objHandle: HCkSocket; sb: HCkStringBuilder): HCkTask; stdcall;

function CkSocket_ReceiveString(objHandle: HCkSocket; outStr: HCkString): wordbool; stdcall;

function CkSocket__receiveString(objHandle: HCkSocket): PWideChar; stdcall;

function CkSocket_ReceiveStringAsync(objHandle: HCkSocket): HCkTask; stdcall;

function CkSocket_ReceiveStringMaxN(objHandle: HCkSocket; maxByteCount: Integer; outStr: HCkString): wordbool; stdcall;

function CkSocket__receiveStringMaxN(objHandle: HCkSocket; maxByteCount: Integer): PWideChar; stdcall;

function CkSocket_ReceiveStringMaxNAsync(objHandle: HCkSocket; maxByteCount: Integer): HCkTask; stdcall;

function CkSocket_ReceiveStringUntilByte(objHandle: HCkSocket; lookForByte: Integer; outStr: HCkString): wordbool; stdcall;

function CkSocket__receiveStringUntilByte(objHandle: HCkSocket; lookForByte: Integer): PWideChar; stdcall;

function CkSocket_ReceiveStringUntilByteAsync(objHandle: HCkSocket; lookForByte: Integer): HCkTask; stdcall;

function CkSocket_ReceiveToCRLF(objHandle: HCkSocket; outStr: HCkString): wordbool; stdcall;

function CkSocket__receiveToCRLF(objHandle: HCkSocket): PWideChar; stdcall;

function CkSocket_ReceiveToCRLFAsync(objHandle: HCkSocket): HCkTask; stdcall;

function CkSocket_ReceiveUntilByte(objHandle: HCkSocket; lookForByte: Integer; outData: HCkByteData): wordbool; stdcall;

function CkSocket_ReceiveUntilByteAsync(objHandle: HCkSocket; lookForByte: Integer): HCkTask; stdcall;

function CkSocket_ReceiveUntilByteBd(objHandle: HCkSocket; lookForByte: Integer; bd: HCkBinData): wordbool; stdcall;

function CkSocket_ReceiveUntilByteBdAsync(objHandle: HCkSocket; lookForByte: Integer; bd: HCkBinData): HCkTask; stdcall;

function CkSocket_ReceiveUntilMatch(objHandle: HCkSocket; matchStr: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkSocket__receiveUntilMatch(objHandle: HCkSocket; matchStr: PWideChar): PWideChar; stdcall;

function CkSocket_ReceiveUntilMatchAsync(objHandle: HCkSocket; matchStr: PWideChar): HCkTask; stdcall;

procedure CkSocket_ResetPerf(objHandle: HCkSocket; rcvPerf: wordbool); stdcall;

function CkSocket_SaveLastError(objHandle: HCkSocket; path: PWideChar): wordbool; stdcall;

function CkSocket_SelectForReading(objHandle: HCkSocket; timeoutMs: Integer): Integer; stdcall;

function CkSocket_SelectForReadingAsync(objHandle: HCkSocket; timeoutMs: Integer): HCkTask; stdcall;

function CkSocket_SelectForWriting(objHandle: HCkSocket; timeoutMs: Integer): Integer; stdcall;

function CkSocket_SelectForWritingAsync(objHandle: HCkSocket; timeoutMs: Integer): HCkTask; stdcall;

function CkSocket_SendBd(objHandle: HCkSocket; binData: HCkBinData; offset: LongWord; numBytes: LongWord): wordbool; stdcall;

function CkSocket_SendBdAsync(objHandle: HCkSocket; binData: HCkBinData; offset: LongWord; numBytes: LongWord): HCkTask; stdcall;

function CkSocket_SendByte(objHandle: HCkSocket; value: Integer): wordbool; stdcall;

function CkSocket_SendByteAsync(objHandle: HCkSocket; value: Integer): HCkTask; stdcall;

function CkSocket_SendBytes(objHandle: HCkSocket; data: HCkByteData): wordbool; stdcall;

function CkSocket_SendBytesAsync(objHandle: HCkSocket; data: HCkByteData): HCkTask; stdcall;

function CkSocket_SendBytes2(objHandle: HCkSocket; pByteData: pbyte; szByteData: LongWord): wordbool; stdcall;

function CkSocket_SendBytesENC(objHandle: HCkSocket; encodedBytes: PWideChar; encodingAlg: PWideChar): wordbool; stdcall;

function CkSocket_SendBytesENCAsync(objHandle: HCkSocket; encodedBytes: PWideChar; encodingAlg: PWideChar): HCkTask; stdcall;

function CkSocket_SendCount(objHandle: HCkSocket; byteCount: Integer): wordbool; stdcall;

function CkSocket_SendCountAsync(objHandle: HCkSocket; byteCount: Integer): HCkTask; stdcall;

function CkSocket_SendInt16(objHandle: HCkSocket; value: Integer; bigEndian: wordbool): wordbool; stdcall;

function CkSocket_SendInt16Async(objHandle: HCkSocket; value: Integer; bigEndian: wordbool): HCkTask; stdcall;

function CkSocket_SendInt32(objHandle: HCkSocket; value: Integer; bigEndian: wordbool): wordbool; stdcall;

function CkSocket_SendInt32Async(objHandle: HCkSocket; value: Integer; bigEndian: wordbool): HCkTask; stdcall;

function CkSocket_SendSb(objHandle: HCkSocket; sb: HCkStringBuilder): wordbool; stdcall;

function CkSocket_SendSbAsync(objHandle: HCkSocket; sb: HCkStringBuilder): HCkTask; stdcall;

function CkSocket_SendString(objHandle: HCkSocket; stringToSend: PWideChar): wordbool; stdcall;

function CkSocket_SendStringAsync(objHandle: HCkSocket; stringToSend: PWideChar): HCkTask; stdcall;

function CkSocket_SendWakeOnLan(objHandle: HCkSocket; macAddress: PWideChar; port: Integer; ipBroadcastAddr: PWideChar): wordbool; stdcall;

function CkSocket_SendWakeOnLan2(objHandle: HCkSocket; macAddress: PWideChar; port: Integer; ipBroadcastAddr: PWideChar; password: PWideChar): wordbool; stdcall;

function CkSocket_SetSslClientCert(objHandle: HCkSocket; cert: HCkCert): wordbool; stdcall;

function CkSocket_SetSslClientCertPem(objHandle: HCkSocket; pemDataOrFilename: PWideChar; pemPassword: PWideChar): wordbool; stdcall;

function CkSocket_SetSslClientCertPfx(objHandle: HCkSocket; pfxFilename: PWideChar; pfxPassword: PWideChar): wordbool; stdcall;

procedure CkSocket_SleepMs(objHandle: HCkSocket; millisec: Integer); stdcall;

function CkSocket_SshAuthenticatePk(objHandle: HCkSocket; sshLogin: PWideChar; privateKey: HCkSshKey): wordbool; stdcall;

function CkSocket_SshAuthenticatePkAsync(objHandle: HCkSocket; sshLogin: PWideChar; privateKey: HCkSshKey): HCkTask; stdcall;

function CkSocket_SshAuthenticatePw(objHandle: HCkSocket; sshLogin: PWideChar; sshPassword: PWideChar): wordbool; stdcall;

function CkSocket_SshAuthenticatePwAsync(objHandle: HCkSocket; sshLogin: PWideChar; sshPassword: PWideChar): HCkTask; stdcall;

function CkSocket_SshCloseTunnel(objHandle: HCkSocket): wordbool; stdcall;

function CkSocket_SshCloseTunnelAsync(objHandle: HCkSocket): HCkTask; stdcall;

function CkSocket_SshOpenChannel(objHandle: HCkSocket; hostname: PWideChar; port: Integer; ssl: wordbool; maxWaitMs: Integer): HCkSocket; stdcall;

function CkSocket_SshOpenChannelAsync(objHandle: HCkSocket; hostname: PWideChar; port: Integer; ssl: wordbool; maxWaitMs: Integer): HCkTask; stdcall;

function CkSocket_SshOpenTunnel(objHandle: HCkSocket; sshHostname: PWideChar; sshPort: Integer): wordbool; stdcall;

function CkSocket_SshOpenTunnelAsync(objHandle: HCkSocket; sshHostname: PWideChar; sshPort: Integer): HCkTask; stdcall;

procedure CkSocket_StartTiming(objHandle: HCkSocket); stdcall;

function CkSocket_TakeConnection(objHandle: HCkSocket; sock: HCkSocket): wordbool; stdcall;

function CkSocket_TakeSocket(objHandle: HCkSocket; sock: HCkSocket): wordbool; stdcall;

function CkSocket_TlsRenegotiate(objHandle: HCkSocket): wordbool; stdcall;

function CkSocket_TlsRenegotiateAsync(objHandle: HCkSocket): HCkTask; stdcall;

function CkSocket_UnlockComponent(objHandle: HCkSocket; unlockCode: PWideChar): wordbool; stdcall;

function CkSocket_UseSsh(objHandle: HCkSocket; ssh: HCkSsh): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkSocket_Create; external DLLName;
procedure CkSocket_Dispose; external DLLName;

procedure CkSocket_SetAbortCheck; external DLLName;
procedure CkSocket_SetProgressInfo; external DLLName;
procedure CkSocket_SetPercentDone; external DLLName;
procedure CkSocket_SetTaskCompleted; external DLLName;
function CkSocket_getAbortCurrent; external DLLName;
procedure CkSocket_putAbortCurrent; external DLLName;
function CkSocket_getAcceptFailReason; external DLLName;
procedure CkSocket_getAlpnProtocol; external DLLName;
procedure CkSocket_putAlpnProtocol; external DLLName;
function CkSocket__alpnProtocol; external DLLName;
function CkSocket_getBandwidthThrottleDown; external DLLName;
procedure CkSocket_putBandwidthThrottleDown; external DLLName;
function CkSocket_getBandwidthThrottleUp; external DLLName;
procedure CkSocket_putBandwidthThrottleUp; external DLLName;
function CkSocket_getBigEndian; external DLLName;
procedure CkSocket_putBigEndian; external DLLName;
procedure CkSocket_getClientIpAddress; external DLLName;
procedure CkSocket_putClientIpAddress; external DLLName;
function CkSocket__clientIpAddress; external DLLName;
function CkSocket_getClientPort; external DLLName;
procedure CkSocket_putClientPort; external DLLName;
function CkSocket_getConnectFailReason; external DLLName;
procedure CkSocket_getDebugLogFilePath; external DLLName;
procedure CkSocket_putDebugLogFilePath; external DLLName;
function CkSocket__debugLogFilePath; external DLLName;
function CkSocket_getElapsedSeconds; external DLLName;
function CkSocket_getHeartbeatMs; external DLLName;
procedure CkSocket_putHeartbeatMs; external DLLName;
procedure CkSocket_getHttpProxyAuthMethod; external DLLName;
procedure CkSocket_putHttpProxyAuthMethod; external DLLName;
function CkSocket__httpProxyAuthMethod; external DLLName;
procedure CkSocket_getHttpProxyDomain; external DLLName;
procedure CkSocket_putHttpProxyDomain; external DLLName;
function CkSocket__httpProxyDomain; external DLLName;
function CkSocket_getHttpProxyForHttp; external DLLName;
procedure CkSocket_putHttpProxyForHttp; external DLLName;
procedure CkSocket_getHttpProxyHostname; external DLLName;
procedure CkSocket_putHttpProxyHostname; external DLLName;
function CkSocket__httpProxyHostname; external DLLName;
procedure CkSocket_getHttpProxyPassword; external DLLName;
procedure CkSocket_putHttpProxyPassword; external DLLName;
function CkSocket__httpProxyPassword; external DLLName;
function CkSocket_getHttpProxyPort; external DLLName;
procedure CkSocket_putHttpProxyPort; external DLLName;
procedure CkSocket_getHttpProxyUsername; external DLLName;
procedure CkSocket_putHttpProxyUsername; external DLLName;
function CkSocket__httpProxyUsername; external DLLName;
function CkSocket_getIsConnected; external DLLName;
function CkSocket_getKeepAlive; external DLLName;
procedure CkSocket_putKeepAlive; external DLLName;
function CkSocket_getKeepSessionLog; external DLLName;
procedure CkSocket_putKeepSessionLog; external DLLName;
procedure CkSocket_getLastErrorHtml; external DLLName;
function CkSocket__lastErrorHtml; external DLLName;
procedure CkSocket_getLastErrorText; external DLLName;
function CkSocket__lastErrorText; external DLLName;
procedure CkSocket_getLastErrorXml; external DLLName;
function CkSocket__lastErrorXml; external DLLName;
function CkSocket_getLastMethodFailed; external DLLName;
function CkSocket_getLastMethodSuccess; external DLLName;
procedure CkSocket_putLastMethodSuccess; external DLLName;
function CkSocket_getListenIpv6; external DLLName;
procedure CkSocket_putListenIpv6; external DLLName;
function CkSocket_getListenPort; external DLLName;
procedure CkSocket_getLocalIpAddress; external DLLName;
function CkSocket__localIpAddress; external DLLName;
function CkSocket_getLocalPort; external DLLName;
function CkSocket_getMaxReadIdleMs; external DLLName;
procedure CkSocket_putMaxReadIdleMs; external DLLName;
function CkSocket_getMaxSendIdleMs; external DLLName;
procedure CkSocket_putMaxSendIdleMs; external DLLName;
procedure CkSocket_getMyIpAddress; external DLLName;
function CkSocket__myIpAddress; external DLLName;
function CkSocket_getNumBytesAvailable; external DLLName;
function CkSocket_getNumReceivedClientCerts; external DLLName;
function CkSocket_getNumSocketsInSet; external DLLName;
function CkSocket_getNumSslAcceptableClientCAs; external DLLName;
function CkSocket_getObjectId; external DLLName;
function CkSocket_getPercentDoneScale; external DLLName;
procedure CkSocket_putPercentDoneScale; external DLLName;
function CkSocket_getPreferIpv6; external DLLName;
procedure CkSocket_putPreferIpv6; external DLLName;
function CkSocket_getRcvBytesPerSec; external DLLName;
function CkSocket_getReceivedCount; external DLLName;
procedure CkSocket_putReceivedCount; external DLLName;
function CkSocket_getReceivedInt; external DLLName;
procedure CkSocket_putReceivedInt; external DLLName;
function CkSocket_getReceiveFailReason; external DLLName;
function CkSocket_getReceivePacketSize; external DLLName;
procedure CkSocket_putReceivePacketSize; external DLLName;
procedure CkSocket_getRemoteIpAddress; external DLLName;
function CkSocket__remoteIpAddress; external DLLName;
function CkSocket_getRemotePort; external DLLName;
function CkSocket_getRequireSslCertVerify; external DLLName;
procedure CkSocket_putRequireSslCertVerify; external DLLName;
function CkSocket_getSelectorIndex; external DLLName;
procedure CkSocket_putSelectorIndex; external DLLName;
function CkSocket_getSelectorReadIndex; external DLLName;
procedure CkSocket_putSelectorReadIndex; external DLLName;
function CkSocket_getSelectorWriteIndex; external DLLName;
procedure CkSocket_putSelectorWriteIndex; external DLLName;
function CkSocket_getSendBytesPerSec; external DLLName;
function CkSocket_getSendFailReason; external DLLName;
function CkSocket_getSendPacketSize; external DLLName;
procedure CkSocket_putSendPacketSize; external DLLName;
procedure CkSocket_getSessionLog; external DLLName;
function CkSocket__sessionLog; external DLLName;
procedure CkSocket_getSessionLogEncoding; external DLLName;
procedure CkSocket_putSessionLogEncoding; external DLLName;
function CkSocket__sessionLogEncoding; external DLLName;
procedure CkSocket_getSniHostname; external DLLName;
procedure CkSocket_putSniHostname; external DLLName;
function CkSocket__sniHostname; external DLLName;
procedure CkSocket_getSocksHostname; external DLLName;
procedure CkSocket_putSocksHostname; external DLLName;
function CkSocket__socksHostname; external DLLName;
procedure CkSocket_getSocksPassword; external DLLName;
procedure CkSocket_putSocksPassword; external DLLName;
function CkSocket__socksPassword; external DLLName;
function CkSocket_getSocksPort; external DLLName;
procedure CkSocket_putSocksPort; external DLLName;
procedure CkSocket_getSocksUsername; external DLLName;
procedure CkSocket_putSocksUsername; external DLLName;
function CkSocket__socksUsername; external DLLName;
function CkSocket_getSocksVersion; external DLLName;
procedure CkSocket_putSocksVersion; external DLLName;
function CkSocket_getSoRcvBuf; external DLLName;
procedure CkSocket_putSoRcvBuf; external DLLName;
function CkSocket_getSoReuseAddr; external DLLName;
procedure CkSocket_putSoReuseAddr; external DLLName;
function CkSocket_getSoSndBuf; external DLLName;
procedure CkSocket_putSoSndBuf; external DLLName;
function CkSocket_getSsl; external DLLName;
procedure CkSocket_putSsl; external DLLName;
procedure CkSocket_getSslAllowedCiphers; external DLLName;
procedure CkSocket_putSslAllowedCiphers; external DLLName;
function CkSocket__sslAllowedCiphers; external DLLName;
procedure CkSocket_getSslProtocol; external DLLName;
procedure CkSocket_putSslProtocol; external DLLName;
function CkSocket__sslProtocol; external DLLName;
procedure CkSocket_getStringCharset; external DLLName;
procedure CkSocket_putStringCharset; external DLLName;
function CkSocket__stringCharset; external DLLName;
function CkSocket_getTcpNoDelay; external DLLName;
procedure CkSocket_putTcpNoDelay; external DLLName;
procedure CkSocket_getTlsCipherSuite; external DLLName;
function CkSocket__tlsCipherSuite; external DLLName;
procedure CkSocket_getTlsPinSet; external DLLName;
procedure CkSocket_putTlsPinSet; external DLLName;
function CkSocket__tlsPinSet; external DLLName;
procedure CkSocket_getTlsVersion; external DLLName;
function CkSocket__tlsVersion; external DLLName;
procedure CkSocket_getUncommonOptions; external DLLName;
procedure CkSocket_putUncommonOptions; external DLLName;
function CkSocket__uncommonOptions; external DLLName;
procedure CkSocket_getUserData; external DLLName;
procedure CkSocket_putUserData; external DLLName;
function CkSocket__userData; external DLLName;
function CkSocket_getVerboseLogging; external DLLName;
procedure CkSocket_putVerboseLogging; external DLLName;
procedure CkSocket_getVersion; external DLLName;
function CkSocket__version; external DLLName;
function CkSocket_AcceptNextConnection; external DLLName;
function CkSocket_AcceptNextConnectionAsync; external DLLName;
function CkSocket_AddSslAcceptableClientCaDn; external DLLName;
function CkSocket_BindAndListen; external DLLName;
function CkSocket_BindAndListenAsync; external DLLName;
function CkSocket_BindAndListenPortRange; external DLLName;
function CkSocket_BindAndListenPortRangeAsync; external DLLName;
function CkSocket_BuildHttpGetRequest; external DLLName;
function CkSocket__buildHttpGetRequest; external DLLName;
function CkSocket_CheckWriteable; external DLLName;
function CkSocket_CheckWriteableAsync; external DLLName;
procedure CkSocket_ClearSessionLog; external DLLName;
function CkSocket_CloneSocket; external DLLName;
function CkSocket_Close; external DLLName;
function CkSocket_CloseAsync; external DLLName;
function CkSocket_Connect; external DLLName;
function CkSocket_ConnectAsync; external DLLName;
function CkSocket_ConvertFromSsl; external DLLName;
function CkSocket_ConvertFromSslAsync; external DLLName;
function CkSocket_ConvertToSsl; external DLLName;
function CkSocket_ConvertToSslAsync; external DLLName;
procedure CkSocket_DnsCacheClear; external DLLName;
function CkSocket_DnsLookup; external DLLName;
function CkSocket__dnsLookup; external DLLName;
function CkSocket_DnsLookupAsync; external DLLName;
function CkSocket_GetMyCert; external DLLName;
function CkSocket_GetReceivedClientCert; external DLLName;
function CkSocket_GetSslAcceptableClientCaDn; external DLLName;
function CkSocket__getSslAcceptableClientCaDn; external DLLName;
function CkSocket_GetSslServerCert; external DLLName;
function CkSocket_InitSslServer; external DLLName;
function CkSocket_IsUnlocked; external DLLName;
function CkSocket_LastJsonData; external DLLName;
function CkSocket_LoadTaskCaller; external DLLName;
function CkSocket_LoadTaskResult; external DLLName;
function CkSocket_PollDataAvailable; external DLLName;
function CkSocket_PollDataAvailableAsync; external DLLName;
function CkSocket_ReceiveBd; external DLLName;
function CkSocket_ReceiveBdAsync; external DLLName;
function CkSocket_ReceiveBdN; external DLLName;
function CkSocket_ReceiveBdNAsync; external DLLName;
function CkSocket_ReceiveByte; external DLLName;
function CkSocket_ReceiveByteAsync; external DLLName;
function CkSocket_ReceiveBytes; external DLLName;
function CkSocket_ReceiveBytesAsync; external DLLName;
function CkSocket_ReceiveBytesENC; external DLLName;
function CkSocket__receiveBytesENC; external DLLName;
function CkSocket_ReceiveBytesENCAsync; external DLLName;
function CkSocket_ReceiveBytesN; external DLLName;
function CkSocket_ReceiveBytesNAsync; external DLLName;
function CkSocket_ReceiveBytesToFile; external DLLName;
function CkSocket_ReceiveBytesToFileAsync; external DLLName;
function CkSocket_ReceiveCount; external DLLName;
function CkSocket_ReceiveCountAsync; external DLLName;
function CkSocket_ReceiveInt16; external DLLName;
function CkSocket_ReceiveInt16Async; external DLLName;
function CkSocket_ReceiveInt32; external DLLName;
function CkSocket_ReceiveInt32Async; external DLLName;
function CkSocket_ReceiveNBytesENC; external DLLName;
function CkSocket__receiveNBytesENC; external DLLName;
function CkSocket_ReceiveNBytesENCAsync; external DLLName;
function CkSocket_ReceiveSb; external DLLName;
function CkSocket_ReceiveSbAsync; external DLLName;
function CkSocket_ReceiveString; external DLLName;
function CkSocket__receiveString; external DLLName;
function CkSocket_ReceiveStringAsync; external DLLName;
function CkSocket_ReceiveStringMaxN; external DLLName;
function CkSocket__receiveStringMaxN; external DLLName;
function CkSocket_ReceiveStringMaxNAsync; external DLLName;
function CkSocket_ReceiveStringUntilByte; external DLLName;
function CkSocket__receiveStringUntilByte; external DLLName;
function CkSocket_ReceiveStringUntilByteAsync; external DLLName;
function CkSocket_ReceiveToCRLF; external DLLName;
function CkSocket__receiveToCRLF; external DLLName;
function CkSocket_ReceiveToCRLFAsync; external DLLName;
function CkSocket_ReceiveUntilByte; external DLLName;
function CkSocket_ReceiveUntilByteAsync; external DLLName;
function CkSocket_ReceiveUntilByteBd; external DLLName;
function CkSocket_ReceiveUntilByteBdAsync; external DLLName;
function CkSocket_ReceiveUntilMatch; external DLLName;
function CkSocket__receiveUntilMatch; external DLLName;
function CkSocket_ReceiveUntilMatchAsync; external DLLName;
procedure CkSocket_ResetPerf; external DLLName;
function CkSocket_SaveLastError; external DLLName;
function CkSocket_SelectForReading; external DLLName;
function CkSocket_SelectForReadingAsync; external DLLName;
function CkSocket_SelectForWriting; external DLLName;
function CkSocket_SelectForWritingAsync; external DLLName;
function CkSocket_SendBd; external DLLName;
function CkSocket_SendBdAsync; external DLLName;
function CkSocket_SendByte; external DLLName;
function CkSocket_SendByteAsync; external DLLName;
function CkSocket_SendBytes; external DLLName;
function CkSocket_SendBytesAsync; external DLLName;
function CkSocket_SendBytes2; external DLLName;
function CkSocket_SendBytesENC; external DLLName;
function CkSocket_SendBytesENCAsync; external DLLName;
function CkSocket_SendCount; external DLLName;
function CkSocket_SendCountAsync; external DLLName;
function CkSocket_SendInt16; external DLLName;
function CkSocket_SendInt16Async; external DLLName;
function CkSocket_SendInt32; external DLLName;
function CkSocket_SendInt32Async; external DLLName;
function CkSocket_SendSb; external DLLName;
function CkSocket_SendSbAsync; external DLLName;
function CkSocket_SendString; external DLLName;
function CkSocket_SendStringAsync; external DLLName;
function CkSocket_SendWakeOnLan; external DLLName;
function CkSocket_SendWakeOnLan2; external DLLName;
function CkSocket_SetSslClientCert; external DLLName;
function CkSocket_SetSslClientCertPem; external DLLName;
function CkSocket_SetSslClientCertPfx; external DLLName;
procedure CkSocket_SleepMs; external DLLName;
function CkSocket_SshAuthenticatePk; external DLLName;
function CkSocket_SshAuthenticatePkAsync; external DLLName;
function CkSocket_SshAuthenticatePw; external DLLName;
function CkSocket_SshAuthenticatePwAsync; external DLLName;
function CkSocket_SshCloseTunnel; external DLLName;
function CkSocket_SshCloseTunnelAsync; external DLLName;
function CkSocket_SshOpenChannel; external DLLName;
function CkSocket_SshOpenChannelAsync; external DLLName;
function CkSocket_SshOpenTunnel; external DLLName;
function CkSocket_SshOpenTunnelAsync; external DLLName;
procedure CkSocket_StartTiming; external DLLName;
function CkSocket_TakeConnection; external DLLName;
function CkSocket_TakeSocket; external DLLName;
function CkSocket_TlsRenegotiate; external DLLName;
function CkSocket_TlsRenegotiateAsync; external DLLName;
function CkSocket_UnlockComponent; external DLLName;
function CkSocket_UseSsh; external DLLName;



end.
