unit Ftp2;

interface

type

HCkSecureString = Pointer;
HCkBinData = Pointer;
HCkDateTime = Pointer;
HCkCert = Pointer;
HCkByteData = Pointer;
HCkString = Pointer;
HCkStream = Pointer;
HCkStringBuilder = Pointer;
HCkFtp2 = Pointer;
HCkTask = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TFtp2AbortCheck = function(): Integer; cdecl;
TFtp2ProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TFtp2PercentDone = function(pctDone: Integer): Integer; cdecl;
TFtp2TaskCompleted = procedure(task: HCkTask); cdecl;


function CkFtp2_Create: HCkFtp2; stdcall;
procedure CkFtp2_Dispose(handle: HCkFtp2); stdcall;

procedure CkFtp2_SetAbortCheck(objHandle: HCkFtp2; fn: TFtp2AbortCheck) stdcall;
procedure CkFtp2_SetProgressInfo(objHandle: HCkFtp2; fn: TFtp2ProgressInfo) stdcall;
procedure CkFtp2_SetPercentDone(objHandle: HCkFtp2; fn: TFtp2PercentDone) stdcall;
procedure CkFtp2_SetTaskCompleted(objHandle: HCkFtp2; fn: TFtp2TaskCompleted) stdcall;
function CkFtp2_getAbortCurrent(objHandle: HCkFtp2): wordbool; stdcall;

procedure CkFtp2_putAbortCurrent(objHandle: HCkFtp2; newPropVal: wordbool); stdcall;

procedure CkFtp2_getAccount(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

procedure CkFtp2_putAccount(objHandle: HCkFtp2; newPropVal: PWideChar); stdcall;

function CkFtp2__account(objHandle: HCkFtp2): PWideChar; stdcall;

function CkFtp2_getActivePortRangeEnd(objHandle: HCkFtp2): Integer; stdcall;

procedure CkFtp2_putActivePortRangeEnd(objHandle: HCkFtp2; newPropVal: Integer); stdcall;

function CkFtp2_getActivePortRangeStart(objHandle: HCkFtp2): Integer; stdcall;

procedure CkFtp2_putActivePortRangeStart(objHandle: HCkFtp2; newPropVal: Integer); stdcall;

function CkFtp2_getAllocateSize(objHandle: HCkFtp2): LongWord; stdcall;

procedure CkFtp2_putAllocateSize(objHandle: HCkFtp2; newPropVal: LongWord); stdcall;

function CkFtp2_getAllowMlsd(objHandle: HCkFtp2): wordbool; stdcall;

procedure CkFtp2_putAllowMlsd(objHandle: HCkFtp2; newPropVal: wordbool); stdcall;

function CkFtp2_getAsyncBytesReceived(objHandle: HCkFtp2): LongWord; stdcall;

function CkFtp2_getAsyncBytesReceived64(objHandle: HCkFtp2): Int64; stdcall;

procedure CkFtp2_getAsyncBytesReceivedStr(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

function CkFtp2__asyncBytesReceivedStr(objHandle: HCkFtp2): PWideChar; stdcall;

function CkFtp2_getAsyncBytesSent(objHandle: HCkFtp2): LongWord; stdcall;

function CkFtp2_getAsyncBytesSent64(objHandle: HCkFtp2): Int64; stdcall;

procedure CkFtp2_getAsyncBytesSentStr(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

function CkFtp2__asyncBytesSentStr(objHandle: HCkFtp2): PWideChar; stdcall;

function CkFtp2_getAuthSsl(objHandle: HCkFtp2): wordbool; stdcall;

procedure CkFtp2_putAuthSsl(objHandle: HCkFtp2; newPropVal: wordbool); stdcall;

function CkFtp2_getAuthTls(objHandle: HCkFtp2): wordbool; stdcall;

procedure CkFtp2_putAuthTls(objHandle: HCkFtp2; newPropVal: wordbool); stdcall;

function CkFtp2_getAutoFeat(objHandle: HCkFtp2): wordbool; stdcall;

procedure CkFtp2_putAutoFeat(objHandle: HCkFtp2; newPropVal: wordbool); stdcall;

function CkFtp2_getAutoFix(objHandle: HCkFtp2): wordbool; stdcall;

procedure CkFtp2_putAutoFix(objHandle: HCkFtp2; newPropVal: wordbool); stdcall;

function CkFtp2_getAutoGetSizeForProgress(objHandle: HCkFtp2): wordbool; stdcall;

procedure CkFtp2_putAutoGetSizeForProgress(objHandle: HCkFtp2; newPropVal: wordbool); stdcall;

function CkFtp2_getAutoOptsUtf8(objHandle: HCkFtp2): wordbool; stdcall;

procedure CkFtp2_putAutoOptsUtf8(objHandle: HCkFtp2; newPropVal: wordbool); stdcall;

function CkFtp2_getAutoSetUseEpsv(objHandle: HCkFtp2): wordbool; stdcall;

procedure CkFtp2_putAutoSetUseEpsv(objHandle: HCkFtp2; newPropVal: wordbool); stdcall;

function CkFtp2_getAutoSyst(objHandle: HCkFtp2): wordbool; stdcall;

procedure CkFtp2_putAutoSyst(objHandle: HCkFtp2; newPropVal: wordbool); stdcall;

function CkFtp2_getAutoXcrc(objHandle: HCkFtp2): wordbool; stdcall;

procedure CkFtp2_putAutoXcrc(objHandle: HCkFtp2; newPropVal: wordbool); stdcall;

function CkFtp2_getBandwidthThrottleDown(objHandle: HCkFtp2): Integer; stdcall;

procedure CkFtp2_putBandwidthThrottleDown(objHandle: HCkFtp2; newPropVal: Integer); stdcall;

function CkFtp2_getBandwidthThrottleUp(objHandle: HCkFtp2): Integer; stdcall;

procedure CkFtp2_putBandwidthThrottleUp(objHandle: HCkFtp2; newPropVal: Integer); stdcall;

procedure CkFtp2_getClientIpAddress(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

procedure CkFtp2_putClientIpAddress(objHandle: HCkFtp2; newPropVal: PWideChar); stdcall;

function CkFtp2__clientIpAddress(objHandle: HCkFtp2): PWideChar; stdcall;

procedure CkFtp2_getCommandCharset(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

procedure CkFtp2_putCommandCharset(objHandle: HCkFtp2; newPropVal: PWideChar); stdcall;

function CkFtp2__commandCharset(objHandle: HCkFtp2): PWideChar; stdcall;

function CkFtp2_getConnectFailReason(objHandle: HCkFtp2): Integer; stdcall;

function CkFtp2_getConnectTimeout(objHandle: HCkFtp2): Integer; stdcall;

procedure CkFtp2_putConnectTimeout(objHandle: HCkFtp2; newPropVal: Integer); stdcall;

function CkFtp2_getConnectVerified(objHandle: HCkFtp2): wordbool; stdcall;

function CkFtp2_getCrlfMode(objHandle: HCkFtp2): Integer; stdcall;

procedure CkFtp2_putCrlfMode(objHandle: HCkFtp2; newPropVal: Integer); stdcall;

procedure CkFtp2_getDataProtection(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

procedure CkFtp2_putDataProtection(objHandle: HCkFtp2; newPropVal: PWideChar); stdcall;

function CkFtp2__dataProtection(objHandle: HCkFtp2): PWideChar; stdcall;

procedure CkFtp2_getDebugLogFilePath(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

procedure CkFtp2_putDebugLogFilePath(objHandle: HCkFtp2; newPropVal: PWideChar); stdcall;

function CkFtp2__debugLogFilePath(objHandle: HCkFtp2): PWideChar; stdcall;

procedure CkFtp2_getDirListingCharset(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

procedure CkFtp2_putDirListingCharset(objHandle: HCkFtp2; newPropVal: PWideChar); stdcall;

function CkFtp2__dirListingCharset(objHandle: HCkFtp2): PWideChar; stdcall;

function CkFtp2_getDownloadTransferRate(objHandle: HCkFtp2): Integer; stdcall;

procedure CkFtp2_getForcePortIpAddress(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

procedure CkFtp2_putForcePortIpAddress(objHandle: HCkFtp2; newPropVal: PWideChar); stdcall;

function CkFtp2__forcePortIpAddress(objHandle: HCkFtp2): PWideChar; stdcall;

procedure CkFtp2_getGreeting(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

function CkFtp2__greeting(objHandle: HCkFtp2): PWideChar; stdcall;

function CkFtp2_getHasModeZ(objHandle: HCkFtp2): wordbool; stdcall;

function CkFtp2_getHeartbeatMs(objHandle: HCkFtp2): Integer; stdcall;

procedure CkFtp2_putHeartbeatMs(objHandle: HCkFtp2; newPropVal: Integer); stdcall;

procedure CkFtp2_getHostname(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

procedure CkFtp2_putHostname(objHandle: HCkFtp2; newPropVal: PWideChar); stdcall;

function CkFtp2__hostname(objHandle: HCkFtp2): PWideChar; stdcall;

procedure CkFtp2_getHttpProxyAuthMethod(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

procedure CkFtp2_putHttpProxyAuthMethod(objHandle: HCkFtp2; newPropVal: PWideChar); stdcall;

function CkFtp2__httpProxyAuthMethod(objHandle: HCkFtp2): PWideChar; stdcall;

procedure CkFtp2_getHttpProxyDomain(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

procedure CkFtp2_putHttpProxyDomain(objHandle: HCkFtp2; newPropVal: PWideChar); stdcall;

function CkFtp2__httpProxyDomain(objHandle: HCkFtp2): PWideChar; stdcall;

procedure CkFtp2_getHttpProxyHostname(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

procedure CkFtp2_putHttpProxyHostname(objHandle: HCkFtp2; newPropVal: PWideChar); stdcall;

function CkFtp2__httpProxyHostname(objHandle: HCkFtp2): PWideChar; stdcall;

procedure CkFtp2_getHttpProxyPassword(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

procedure CkFtp2_putHttpProxyPassword(objHandle: HCkFtp2; newPropVal: PWideChar); stdcall;

function CkFtp2__httpProxyPassword(objHandle: HCkFtp2): PWideChar; stdcall;

function CkFtp2_getHttpProxyPort(objHandle: HCkFtp2): Integer; stdcall;

procedure CkFtp2_putHttpProxyPort(objHandle: HCkFtp2; newPropVal: Integer); stdcall;

procedure CkFtp2_getHttpProxyUsername(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

procedure CkFtp2_putHttpProxyUsername(objHandle: HCkFtp2; newPropVal: PWideChar); stdcall;

function CkFtp2__httpProxyUsername(objHandle: HCkFtp2): PWideChar; stdcall;

function CkFtp2_getIdleTimeoutMs(objHandle: HCkFtp2): Integer; stdcall;

procedure CkFtp2_putIdleTimeoutMs(objHandle: HCkFtp2; newPropVal: Integer); stdcall;

function CkFtp2_getIsConnected(objHandle: HCkFtp2): wordbool; stdcall;

function CkFtp2_getKeepSessionLog(objHandle: HCkFtp2): wordbool; stdcall;

procedure CkFtp2_putKeepSessionLog(objHandle: HCkFtp2; newPropVal: wordbool); stdcall;

function CkFtp2_getLargeFileMeasures(objHandle: HCkFtp2): wordbool; stdcall;

procedure CkFtp2_putLargeFileMeasures(objHandle: HCkFtp2; newPropVal: wordbool); stdcall;

procedure CkFtp2_getLastErrorHtml(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

function CkFtp2__lastErrorHtml(objHandle: HCkFtp2): PWideChar; stdcall;

procedure CkFtp2_getLastErrorText(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

function CkFtp2__lastErrorText(objHandle: HCkFtp2): PWideChar; stdcall;

procedure CkFtp2_getLastErrorXml(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

function CkFtp2__lastErrorXml(objHandle: HCkFtp2): PWideChar; stdcall;

function CkFtp2_getLastMethodSuccess(objHandle: HCkFtp2): wordbool; stdcall;

procedure CkFtp2_putLastMethodSuccess(objHandle: HCkFtp2; newPropVal: wordbool); stdcall;

procedure CkFtp2_getLastReply(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

function CkFtp2__lastReply(objHandle: HCkFtp2): PWideChar; stdcall;

procedure CkFtp2_getListPattern(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

procedure CkFtp2_putListPattern(objHandle: HCkFtp2; newPropVal: PWideChar); stdcall;

function CkFtp2__listPattern(objHandle: HCkFtp2): PWideChar; stdcall;

function CkFtp2_getLoginVerified(objHandle: HCkFtp2): wordbool; stdcall;

function CkFtp2_getNumFilesAndDirs(objHandle: HCkFtp2): Integer; stdcall;

function CkFtp2_getPartialTransfer(objHandle: HCkFtp2): wordbool; stdcall;

function CkFtp2_getPassive(objHandle: HCkFtp2): wordbool; stdcall;

procedure CkFtp2_putPassive(objHandle: HCkFtp2; newPropVal: wordbool); stdcall;

function CkFtp2_getPassiveUseHostAddr(objHandle: HCkFtp2): wordbool; stdcall;

procedure CkFtp2_putPassiveUseHostAddr(objHandle: HCkFtp2; newPropVal: wordbool); stdcall;

procedure CkFtp2_getPassword(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

procedure CkFtp2_putPassword(objHandle: HCkFtp2; newPropVal: PWideChar); stdcall;

function CkFtp2__password(objHandle: HCkFtp2): PWideChar; stdcall;

function CkFtp2_getPercentDoneScale(objHandle: HCkFtp2): Integer; stdcall;

procedure CkFtp2_putPercentDoneScale(objHandle: HCkFtp2; newPropVal: Integer); stdcall;

function CkFtp2_getPort(objHandle: HCkFtp2): Integer; stdcall;

procedure CkFtp2_putPort(objHandle: HCkFtp2; newPropVal: Integer); stdcall;

function CkFtp2_getPreferIpv6(objHandle: HCkFtp2): wordbool; stdcall;

procedure CkFtp2_putPreferIpv6(objHandle: HCkFtp2; newPropVal: wordbool); stdcall;

function CkFtp2_getPreferNlst(objHandle: HCkFtp2): wordbool; stdcall;

procedure CkFtp2_putPreferNlst(objHandle: HCkFtp2; newPropVal: wordbool); stdcall;

function CkFtp2_getProgressMonSize(objHandle: HCkFtp2): Integer; stdcall;

procedure CkFtp2_putProgressMonSize(objHandle: HCkFtp2; newPropVal: Integer); stdcall;

function CkFtp2_getProgressMonSize64(objHandle: HCkFtp2): Int64; stdcall;

procedure CkFtp2_putProgressMonSize64(objHandle: HCkFtp2; newPropVal: Int64); stdcall;

procedure CkFtp2_getProxyHostname(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

procedure CkFtp2_putProxyHostname(objHandle: HCkFtp2; newPropVal: PWideChar); stdcall;

function CkFtp2__proxyHostname(objHandle: HCkFtp2): PWideChar; stdcall;

function CkFtp2_getProxyMethod(objHandle: HCkFtp2): Integer; stdcall;

procedure CkFtp2_putProxyMethod(objHandle: HCkFtp2; newPropVal: Integer); stdcall;

procedure CkFtp2_getProxyPassword(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

procedure CkFtp2_putProxyPassword(objHandle: HCkFtp2; newPropVal: PWideChar); stdcall;

function CkFtp2__proxyPassword(objHandle: HCkFtp2): PWideChar; stdcall;

function CkFtp2_getProxyPort(objHandle: HCkFtp2): Integer; stdcall;

procedure CkFtp2_putProxyPort(objHandle: HCkFtp2; newPropVal: Integer); stdcall;

procedure CkFtp2_getProxyUsername(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

procedure CkFtp2_putProxyUsername(objHandle: HCkFtp2; newPropVal: PWideChar); stdcall;

function CkFtp2__proxyUsername(objHandle: HCkFtp2): PWideChar; stdcall;

function CkFtp2_getReadTimeout(objHandle: HCkFtp2): Integer; stdcall;

procedure CkFtp2_putReadTimeout(objHandle: HCkFtp2; newPropVal: Integer); stdcall;

function CkFtp2_getRequireSslCertVerify(objHandle: HCkFtp2): wordbool; stdcall;

procedure CkFtp2_putRequireSslCertVerify(objHandle: HCkFtp2; newPropVal: wordbool); stdcall;

function CkFtp2_getRestartNext(objHandle: HCkFtp2): wordbool; stdcall;

procedure CkFtp2_putRestartNext(objHandle: HCkFtp2; newPropVal: wordbool); stdcall;

procedure CkFtp2_getSessionLog(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

function CkFtp2__sessionLog(objHandle: HCkFtp2): PWideChar; stdcall;

procedure CkFtp2_getSocksHostname(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

procedure CkFtp2_putSocksHostname(objHandle: HCkFtp2; newPropVal: PWideChar); stdcall;

function CkFtp2__socksHostname(objHandle: HCkFtp2): PWideChar; stdcall;

procedure CkFtp2_getSocksPassword(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

procedure CkFtp2_putSocksPassword(objHandle: HCkFtp2; newPropVal: PWideChar); stdcall;

function CkFtp2__socksPassword(objHandle: HCkFtp2): PWideChar; stdcall;

function CkFtp2_getSocksPort(objHandle: HCkFtp2): Integer; stdcall;

procedure CkFtp2_putSocksPort(objHandle: HCkFtp2; newPropVal: Integer); stdcall;

procedure CkFtp2_getSocksUsername(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

procedure CkFtp2_putSocksUsername(objHandle: HCkFtp2; newPropVal: PWideChar); stdcall;

function CkFtp2__socksUsername(objHandle: HCkFtp2): PWideChar; stdcall;

function CkFtp2_getSocksVersion(objHandle: HCkFtp2): Integer; stdcall;

procedure CkFtp2_putSocksVersion(objHandle: HCkFtp2; newPropVal: Integer); stdcall;

function CkFtp2_getSoRcvBuf(objHandle: HCkFtp2): Integer; stdcall;

procedure CkFtp2_putSoRcvBuf(objHandle: HCkFtp2; newPropVal: Integer); stdcall;

function CkFtp2_getSoSndBuf(objHandle: HCkFtp2): Integer; stdcall;

procedure CkFtp2_putSoSndBuf(objHandle: HCkFtp2; newPropVal: Integer); stdcall;

function CkFtp2_getSsl(objHandle: HCkFtp2): wordbool; stdcall;

procedure CkFtp2_putSsl(objHandle: HCkFtp2; newPropVal: wordbool); stdcall;

procedure CkFtp2_getSslAllowedCiphers(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

procedure CkFtp2_putSslAllowedCiphers(objHandle: HCkFtp2; newPropVal: PWideChar); stdcall;

function CkFtp2__sslAllowedCiphers(objHandle: HCkFtp2): PWideChar; stdcall;

procedure CkFtp2_getSslProtocol(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

procedure CkFtp2_putSslProtocol(objHandle: HCkFtp2; newPropVal: PWideChar); stdcall;

function CkFtp2__sslProtocol(objHandle: HCkFtp2): PWideChar; stdcall;

function CkFtp2_getSslServerCertVerified(objHandle: HCkFtp2): wordbool; stdcall;

function CkFtp2_getSyncCreateAllLocalDirs(objHandle: HCkFtp2): wordbool; stdcall;

procedure CkFtp2_putSyncCreateAllLocalDirs(objHandle: HCkFtp2; newPropVal: wordbool); stdcall;

procedure CkFtp2_getSyncedFiles(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

procedure CkFtp2_putSyncedFiles(objHandle: HCkFtp2; newPropVal: PWideChar); stdcall;

function CkFtp2__syncedFiles(objHandle: HCkFtp2): PWideChar; stdcall;

procedure CkFtp2_getSyncMustMatch(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

procedure CkFtp2_putSyncMustMatch(objHandle: HCkFtp2; newPropVal: PWideChar); stdcall;

function CkFtp2__syncMustMatch(objHandle: HCkFtp2): PWideChar; stdcall;

procedure CkFtp2_getSyncMustMatchDir(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

procedure CkFtp2_putSyncMustMatchDir(objHandle: HCkFtp2; newPropVal: PWideChar); stdcall;

function CkFtp2__syncMustMatchDir(objHandle: HCkFtp2): PWideChar; stdcall;

procedure CkFtp2_getSyncMustNotMatch(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

procedure CkFtp2_putSyncMustNotMatch(objHandle: HCkFtp2; newPropVal: PWideChar); stdcall;

function CkFtp2__syncMustNotMatch(objHandle: HCkFtp2): PWideChar; stdcall;

procedure CkFtp2_getSyncMustNotMatchDir(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

procedure CkFtp2_putSyncMustNotMatchDir(objHandle: HCkFtp2; newPropVal: PWideChar); stdcall;

function CkFtp2__syncMustNotMatchDir(objHandle: HCkFtp2): PWideChar; stdcall;

procedure CkFtp2_getSyncPreview(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

function CkFtp2__syncPreview(objHandle: HCkFtp2): PWideChar; stdcall;

procedure CkFtp2_getTlsCipherSuite(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

function CkFtp2__tlsCipherSuite(objHandle: HCkFtp2): PWideChar; stdcall;

procedure CkFtp2_getTlsPinSet(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

procedure CkFtp2_putTlsPinSet(objHandle: HCkFtp2; newPropVal: PWideChar); stdcall;

function CkFtp2__tlsPinSet(objHandle: HCkFtp2): PWideChar; stdcall;

procedure CkFtp2_getTlsVersion(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

function CkFtp2__tlsVersion(objHandle: HCkFtp2): PWideChar; stdcall;

procedure CkFtp2_getUncommonOptions(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

procedure CkFtp2_putUncommonOptions(objHandle: HCkFtp2; newPropVal: PWideChar); stdcall;

function CkFtp2__uncommonOptions(objHandle: HCkFtp2): PWideChar; stdcall;

function CkFtp2_getUploadTransferRate(objHandle: HCkFtp2): Integer; stdcall;

function CkFtp2_getUseEpsv(objHandle: HCkFtp2): wordbool; stdcall;

procedure CkFtp2_putUseEpsv(objHandle: HCkFtp2; newPropVal: wordbool); stdcall;

procedure CkFtp2_getUsername(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

procedure CkFtp2_putUsername(objHandle: HCkFtp2; newPropVal: PWideChar); stdcall;

function CkFtp2__username(objHandle: HCkFtp2): PWideChar; stdcall;

function CkFtp2_getVerboseLogging(objHandle: HCkFtp2): wordbool; stdcall;

procedure CkFtp2_putVerboseLogging(objHandle: HCkFtp2; newPropVal: wordbool); stdcall;

procedure CkFtp2_getVersion(objHandle: HCkFtp2; outPropVal: HCkString); stdcall;

function CkFtp2__version(objHandle: HCkFtp2): PWideChar; stdcall;

function CkFtp2_AppendFile(objHandle: HCkFtp2; localFilePath: PWideChar; remoteFilePath: PWideChar): wordbool; stdcall;

function CkFtp2_AppendFileAsync(objHandle: HCkFtp2; localFilePath: PWideChar; remoteFilePath: PWideChar): HCkTask; stdcall;

function CkFtp2_AppendFileFromBinaryData(objHandle: HCkFtp2; remoteFilename: PWideChar; content: HCkByteData): wordbool; stdcall;

function CkFtp2_AppendFileFromBinaryDataAsync(objHandle: HCkFtp2; remoteFilename: PWideChar; content: HCkByteData): HCkTask; stdcall;

function CkFtp2_AppendFileFromTextData(objHandle: HCkFtp2; remoteFilename: PWideChar; textData: PWideChar; charset: PWideChar): wordbool; stdcall;

function CkFtp2_AppendFileFromTextDataAsync(objHandle: HCkFtp2; remoteFilename: PWideChar; textData: PWideChar; charset: PWideChar): HCkTask; stdcall;

function CkFtp2_ChangeRemoteDir(objHandle: HCkFtp2; remoteDirPath: PWideChar): wordbool; stdcall;

function CkFtp2_ChangeRemoteDirAsync(objHandle: HCkFtp2; remoteDirPath: PWideChar): HCkTask; stdcall;

function CkFtp2_CheckConnection(objHandle: HCkFtp2): wordbool; stdcall;

function CkFtp2_CheckConnectionAsync(objHandle: HCkFtp2): HCkTask; stdcall;

function CkFtp2_ClearControlChannel(objHandle: HCkFtp2): wordbool; stdcall;

function CkFtp2_ClearControlChannelAsync(objHandle: HCkFtp2): HCkTask; stdcall;

procedure CkFtp2_ClearDirCache(objHandle: HCkFtp2); stdcall;

procedure CkFtp2_ClearSessionLog(objHandle: HCkFtp2); stdcall;

function CkFtp2_Connect(objHandle: HCkFtp2): wordbool; stdcall;

function CkFtp2_ConnectAsync(objHandle: HCkFtp2): HCkTask; stdcall;

function CkFtp2_ConnectOnly(objHandle: HCkFtp2): wordbool; stdcall;

function CkFtp2_ConnectOnlyAsync(objHandle: HCkFtp2): HCkTask; stdcall;

function CkFtp2_ConvertToTls(objHandle: HCkFtp2): wordbool; stdcall;

function CkFtp2_ConvertToTlsAsync(objHandle: HCkFtp2): HCkTask; stdcall;

function CkFtp2_CreatePlan(objHandle: HCkFtp2; localDir: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkFtp2__createPlan(objHandle: HCkFtp2; localDir: PWideChar): PWideChar; stdcall;

function CkFtp2_CreatePlanAsync(objHandle: HCkFtp2; localDir: PWideChar): HCkTask; stdcall;

function CkFtp2_CreateRemoteDir(objHandle: HCkFtp2; remoteDirPath: PWideChar): wordbool; stdcall;

function CkFtp2_CreateRemoteDirAsync(objHandle: HCkFtp2; remoteDirPath: PWideChar): HCkTask; stdcall;

function CkFtp2_DeleteMatching(objHandle: HCkFtp2; remotePattern: PWideChar): Integer; stdcall;

function CkFtp2_DeleteMatchingAsync(objHandle: HCkFtp2; remotePattern: PWideChar): HCkTask; stdcall;

function CkFtp2_DeleteRemoteFile(objHandle: HCkFtp2; remoteFilePath: PWideChar): wordbool; stdcall;

function CkFtp2_DeleteRemoteFileAsync(objHandle: HCkFtp2; remoteFilePath: PWideChar): HCkTask; stdcall;

function CkFtp2_DeleteTree(objHandle: HCkFtp2): wordbool; stdcall;

function CkFtp2_DeleteTreeAsync(objHandle: HCkFtp2): HCkTask; stdcall;

function CkFtp2_DetermineProxyMethod(objHandle: HCkFtp2): Integer; stdcall;

function CkFtp2_DetermineProxyMethodAsync(objHandle: HCkFtp2): HCkTask; stdcall;

function CkFtp2_DetermineSettings(objHandle: HCkFtp2; outStr: HCkString): wordbool; stdcall;

function CkFtp2__determineSettings(objHandle: HCkFtp2): PWideChar; stdcall;

function CkFtp2_DetermineSettingsAsync(objHandle: HCkFtp2): HCkTask; stdcall;

function CkFtp2_DirTreeXml(objHandle: HCkFtp2; outStr: HCkString): wordbool; stdcall;

function CkFtp2__dirTreeXml(objHandle: HCkFtp2): PWideChar; stdcall;

function CkFtp2_DirTreeXmlAsync(objHandle: HCkFtp2): HCkTask; stdcall;

function CkFtp2_Disconnect(objHandle: HCkFtp2): wordbool; stdcall;

function CkFtp2_DisconnectAsync(objHandle: HCkFtp2): HCkTask; stdcall;

function CkFtp2_DownloadTree(objHandle: HCkFtp2; localRoot: PWideChar): wordbool; stdcall;

function CkFtp2_DownloadTreeAsync(objHandle: HCkFtp2; localRoot: PWideChar): HCkTask; stdcall;

function CkFtp2_Feat(objHandle: HCkFtp2; outStr: HCkString): wordbool; stdcall;

function CkFtp2__feat(objHandle: HCkFtp2): PWideChar; stdcall;

function CkFtp2_FeatAsync(objHandle: HCkFtp2): HCkTask; stdcall;

function CkFtp2_GetCreateDt(objHandle: HCkFtp2; index: Integer): HCkDateTime; stdcall;

function CkFtp2_GetCreateDtAsync(objHandle: HCkFtp2; index: Integer): HCkTask; stdcall;

function CkFtp2_GetCreateDtByName(objHandle: HCkFtp2; filename: PWideChar): HCkDateTime; stdcall;

function CkFtp2_GetCreateDtByNameAsync(objHandle: HCkFtp2; filename: PWideChar): HCkTask; stdcall;

function CkFtp2_GetCreateTimeByNameStr(objHandle: HCkFtp2; filename: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkFtp2__getCreateTimeByNameStr(objHandle: HCkFtp2; filename: PWideChar): PWideChar; stdcall;

function CkFtp2_GetCreateTimeByNameStrAsync(objHandle: HCkFtp2; filename: PWideChar): HCkTask; stdcall;

function CkFtp2_GetCreateTimeStr(objHandle: HCkFtp2; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkFtp2__getCreateTimeStr(objHandle: HCkFtp2; index: Integer): PWideChar; stdcall;

function CkFtp2_GetCreateTimeStrAsync(objHandle: HCkFtp2; index: Integer): HCkTask; stdcall;

function CkFtp2_GetCurrentRemoteDir(objHandle: HCkFtp2; outStr: HCkString): wordbool; stdcall;

function CkFtp2__getCurrentRemoteDir(objHandle: HCkFtp2): PWideChar; stdcall;

function CkFtp2_GetCurrentRemoteDirAsync(objHandle: HCkFtp2): HCkTask; stdcall;

function CkFtp2_GetDirCount(objHandle: HCkFtp2): Integer; stdcall;

function CkFtp2_GetDirCountAsync(objHandle: HCkFtp2): HCkTask; stdcall;

function CkFtp2_GetFile(objHandle: HCkFtp2; remoteFilePath: PWideChar; localFilePath: PWideChar): wordbool; stdcall;

function CkFtp2_GetFileAsync(objHandle: HCkFtp2; remoteFilePath: PWideChar; localFilePath: PWideChar): HCkTask; stdcall;

function CkFtp2_GetFileBd(objHandle: HCkFtp2; remoteFilePath: PWideChar; binData: HCkBinData): wordbool; stdcall;

function CkFtp2_GetFileBdAsync(objHandle: HCkFtp2; remoteFilePath: PWideChar; binData: HCkBinData): HCkTask; stdcall;

function CkFtp2_GetFilename(objHandle: HCkFtp2; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkFtp2__getFilename(objHandle: HCkFtp2; index: Integer): PWideChar; stdcall;

function CkFtp2_GetFilenameAsync(objHandle: HCkFtp2; index: Integer): HCkTask; stdcall;

function CkFtp2_GetFileSb(objHandle: HCkFtp2; remoteFilePath: PWideChar; charset: PWideChar; sb: HCkStringBuilder): wordbool; stdcall;

function CkFtp2_GetFileSbAsync(objHandle: HCkFtp2; remoteFilePath: PWideChar; charset: PWideChar; sb: HCkStringBuilder): HCkTask; stdcall;

function CkFtp2_GetFileToStream(objHandle: HCkFtp2; remoteFilePath: PWideChar; toStream: HCkStream): wordbool; stdcall;

function CkFtp2_GetFileToStreamAsync(objHandle: HCkFtp2; remoteFilePath: PWideChar; toStream: HCkStream): HCkTask; stdcall;

function CkFtp2_GetGroup(objHandle: HCkFtp2; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkFtp2__getGroup(objHandle: HCkFtp2; index: Integer): PWideChar; stdcall;

function CkFtp2_GetGroupAsync(objHandle: HCkFtp2; index: Integer): HCkTask; stdcall;

function CkFtp2_GetIsDirectory(objHandle: HCkFtp2; index: Integer): wordbool; stdcall;

function CkFtp2_GetIsDirectoryAsync(objHandle: HCkFtp2; index: Integer): HCkTask; stdcall;

function CkFtp2_GetIsSymbolicLink(objHandle: HCkFtp2; index: Integer): wordbool; stdcall;

function CkFtp2_GetIsSymbolicLinkAsync(objHandle: HCkFtp2; index: Integer): HCkTask; stdcall;

function CkFtp2_GetLastModDt(objHandle: HCkFtp2; index: Integer): HCkDateTime; stdcall;

function CkFtp2_GetLastModDtAsync(objHandle: HCkFtp2; index: Integer): HCkTask; stdcall;

function CkFtp2_GetLastModDtByName(objHandle: HCkFtp2; filename: PWideChar): HCkDateTime; stdcall;

function CkFtp2_GetLastModDtByNameAsync(objHandle: HCkFtp2; filename: PWideChar): HCkTask; stdcall;

function CkFtp2_GetLastModifiedTimeByNameStr(objHandle: HCkFtp2; filename: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkFtp2__getLastModifiedTimeByNameStr(objHandle: HCkFtp2; filename: PWideChar): PWideChar; stdcall;

function CkFtp2_GetLastModifiedTimeByNameStrAsync(objHandle: HCkFtp2; filename: PWideChar): HCkTask; stdcall;

function CkFtp2_GetLastModifiedTimeStr(objHandle: HCkFtp2; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkFtp2__getLastModifiedTimeStr(objHandle: HCkFtp2; index: Integer): PWideChar; stdcall;

function CkFtp2_GetLastModifiedTimeStrAsync(objHandle: HCkFtp2; index: Integer): HCkTask; stdcall;

function CkFtp2_GetOwner(objHandle: HCkFtp2; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkFtp2__getOwner(objHandle: HCkFtp2; index: Integer): PWideChar; stdcall;

function CkFtp2_GetOwnerAsync(objHandle: HCkFtp2; index: Integer): HCkTask; stdcall;

function CkFtp2_GetPermissions(objHandle: HCkFtp2; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkFtp2__getPermissions(objHandle: HCkFtp2; index: Integer): PWideChar; stdcall;

function CkFtp2_GetPermissionsAsync(objHandle: HCkFtp2; index: Integer): HCkTask; stdcall;

function CkFtp2_GetPermType(objHandle: HCkFtp2; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkFtp2__getPermType(objHandle: HCkFtp2; index: Integer): PWideChar; stdcall;

function CkFtp2_GetPermTypeAsync(objHandle: HCkFtp2; index: Integer): HCkTask; stdcall;

function CkFtp2_GetRemoteFileBinaryData(objHandle: HCkFtp2; remoteFilename: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkFtp2_GetRemoteFileBinaryDataAsync(objHandle: HCkFtp2; remoteFilename: PWideChar): HCkTask; stdcall;

function CkFtp2_GetRemoteFileTextC(objHandle: HCkFtp2; remoteFilename: PWideChar; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkFtp2__getRemoteFileTextC(objHandle: HCkFtp2; remoteFilename: PWideChar; charset: PWideChar): PWideChar; stdcall;

function CkFtp2_GetRemoteFileTextCAsync(objHandle: HCkFtp2; remoteFilename: PWideChar; charset: PWideChar): HCkTask; stdcall;

function CkFtp2_GetRemoteFileTextData(objHandle: HCkFtp2; remoteFilename: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkFtp2__getRemoteFileTextData(objHandle: HCkFtp2; remoteFilename: PWideChar): PWideChar; stdcall;

function CkFtp2_GetRemoteFileTextDataAsync(objHandle: HCkFtp2; remoteFilename: PWideChar): HCkTask; stdcall;

function CkFtp2_GetSize(objHandle: HCkFtp2; index: Integer): Integer; stdcall;

function CkFtp2_GetSizeAsync(objHandle: HCkFtp2; index: Integer): HCkTask; stdcall;

function CkFtp2_GetSize64(objHandle: HCkFtp2; index: Integer): Int64; stdcall;

function CkFtp2_GetSizeByName(objHandle: HCkFtp2; filename: PWideChar): Integer; stdcall;

function CkFtp2_GetSizeByNameAsync(objHandle: HCkFtp2; filename: PWideChar): HCkTask; stdcall;

function CkFtp2_GetSizeByName64(objHandle: HCkFtp2; filename: PWideChar): Int64; stdcall;

function CkFtp2_GetSizeStr(objHandle: HCkFtp2; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkFtp2__getSizeStr(objHandle: HCkFtp2; index: Integer): PWideChar; stdcall;

function CkFtp2_GetSizeStrAsync(objHandle: HCkFtp2; index: Integer): HCkTask; stdcall;

function CkFtp2_GetSizeStrByName(objHandle: HCkFtp2; filename: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkFtp2__getSizeStrByName(objHandle: HCkFtp2; filename: PWideChar): PWideChar; stdcall;

function CkFtp2_GetSizeStrByNameAsync(objHandle: HCkFtp2; filename: PWideChar): HCkTask; stdcall;

function CkFtp2_GetSslServerCert(objHandle: HCkFtp2): HCkCert; stdcall;

function CkFtp2_GetTextDirListing(objHandle: HCkFtp2; pattern: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkFtp2__getTextDirListing(objHandle: HCkFtp2; pattern: PWideChar): PWideChar; stdcall;

function CkFtp2_GetTextDirListingAsync(objHandle: HCkFtp2; pattern: PWideChar): HCkTask; stdcall;

function CkFtp2_GetXmlDirListing(objHandle: HCkFtp2; pattern: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkFtp2__getXmlDirListing(objHandle: HCkFtp2; pattern: PWideChar): PWideChar; stdcall;

function CkFtp2_GetXmlDirListingAsync(objHandle: HCkFtp2; pattern: PWideChar): HCkTask; stdcall;

function CkFtp2_IsUnlocked(objHandle: HCkFtp2): wordbool; stdcall;

function CkFtp2_LargeFileUpload(objHandle: HCkFtp2; localPath: PWideChar; remotePath: PWideChar; chunkSize: Integer): wordbool; stdcall;

function CkFtp2_LargeFileUploadAsync(objHandle: HCkFtp2; localPath: PWideChar; remotePath: PWideChar; chunkSize: Integer): HCkTask; stdcall;

function CkFtp2_LoadTaskCaller(objHandle: HCkFtp2; task: HCkTask): wordbool; stdcall;

function CkFtp2_LoginAfterConnectOnly(objHandle: HCkFtp2): wordbool; stdcall;

function CkFtp2_LoginAfterConnectOnlyAsync(objHandle: HCkFtp2): HCkTask; stdcall;

function CkFtp2_MGetFiles(objHandle: HCkFtp2; remotePattern: PWideChar; localDir: PWideChar): Integer; stdcall;

function CkFtp2_MGetFilesAsync(objHandle: HCkFtp2; remotePattern: PWideChar; localDir: PWideChar): HCkTask; stdcall;

function CkFtp2_MPutFiles(objHandle: HCkFtp2; pattern: PWideChar): Integer; stdcall;

function CkFtp2_MPutFilesAsync(objHandle: HCkFtp2; pattern: PWideChar): HCkTask; stdcall;

function CkFtp2_NlstXml(objHandle: HCkFtp2; remoteDirPattern: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkFtp2__nlstXml(objHandle: HCkFtp2; remoteDirPattern: PWideChar): PWideChar; stdcall;

function CkFtp2_NlstXmlAsync(objHandle: HCkFtp2; remoteDirPattern: PWideChar): HCkTask; stdcall;

function CkFtp2_Noop(objHandle: HCkFtp2): wordbool; stdcall;

function CkFtp2_NoopAsync(objHandle: HCkFtp2): HCkTask; stdcall;

function CkFtp2_PutFile(objHandle: HCkFtp2; localFilePath: PWideChar; remoteFilePath: PWideChar): wordbool; stdcall;

function CkFtp2_PutFileAsync(objHandle: HCkFtp2; localFilePath: PWideChar; remoteFilePath: PWideChar): HCkTask; stdcall;

function CkFtp2_PutFileBd(objHandle: HCkFtp2; binData: HCkBinData; remoteFilePath: PWideChar): wordbool; stdcall;

function CkFtp2_PutFileBdAsync(objHandle: HCkFtp2; binData: HCkBinData; remoteFilePath: PWideChar): HCkTask; stdcall;

function CkFtp2_PutFileFromBinaryData(objHandle: HCkFtp2; remoteFilename: PWideChar; content: HCkByteData): wordbool; stdcall;

function CkFtp2_PutFileFromBinaryDataAsync(objHandle: HCkFtp2; remoteFilename: PWideChar; content: HCkByteData): HCkTask; stdcall;

function CkFtp2_PutFileFromTextData(objHandle: HCkFtp2; remoteFilename: PWideChar; textData: PWideChar; charset: PWideChar): wordbool; stdcall;

function CkFtp2_PutFileFromTextDataAsync(objHandle: HCkFtp2; remoteFilename: PWideChar; textData: PWideChar; charset: PWideChar): HCkTask; stdcall;

function CkFtp2_PutFileSb(objHandle: HCkFtp2; sb: HCkStringBuilder; charset: PWideChar; includeBom: wordbool; remoteFilePath: PWideChar): wordbool; stdcall;

function CkFtp2_PutFileSbAsync(objHandle: HCkFtp2; sb: HCkStringBuilder; charset: PWideChar; includeBom: wordbool; remoteFilePath: PWideChar): HCkTask; stdcall;

function CkFtp2_PutPlan(objHandle: HCkFtp2; plan: PWideChar; alreadyDoneFilename: PWideChar): wordbool; stdcall;

function CkFtp2_PutPlanAsync(objHandle: HCkFtp2; plan: PWideChar; alreadyDoneFilename: PWideChar): HCkTask; stdcall;

function CkFtp2_PutTree(objHandle: HCkFtp2; localDir: PWideChar): wordbool; stdcall;

function CkFtp2_PutTreeAsync(objHandle: HCkFtp2; localDir: PWideChar): HCkTask; stdcall;

function CkFtp2_Quote(objHandle: HCkFtp2; cmd: PWideChar): wordbool; stdcall;

function CkFtp2_QuoteAsync(objHandle: HCkFtp2; cmd: PWideChar): HCkTask; stdcall;

function CkFtp2_RemoveRemoteDir(objHandle: HCkFtp2; remoteDirPath: PWideChar): wordbool; stdcall;

function CkFtp2_RemoveRemoteDirAsync(objHandle: HCkFtp2; remoteDirPath: PWideChar): HCkTask; stdcall;

function CkFtp2_RenameRemoteFile(objHandle: HCkFtp2; existingRemoteFilePath: PWideChar; newRemoteFilePath: PWideChar): wordbool; stdcall;

function CkFtp2_RenameRemoteFileAsync(objHandle: HCkFtp2; existingRemoteFilePath: PWideChar; newRemoteFilePath: PWideChar): HCkTask; stdcall;

function CkFtp2_SaveLastError(objHandle: HCkFtp2; path: PWideChar): wordbool; stdcall;

function CkFtp2_SendCommand(objHandle: HCkFtp2; cmd: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkFtp2__sendCommand(objHandle: HCkFtp2; cmd: PWideChar): PWideChar; stdcall;

function CkFtp2_SendCommandAsync(objHandle: HCkFtp2; cmd: PWideChar): HCkTask; stdcall;

function CkFtp2_SetModeZ(objHandle: HCkFtp2): wordbool; stdcall;

function CkFtp2_SetModeZAsync(objHandle: HCkFtp2): HCkTask; stdcall;

procedure CkFtp2_SetOldestDateStr(objHandle: HCkFtp2; oldestDateTimeStr: PWideChar); stdcall;

function CkFtp2_SetOption(objHandle: HCkFtp2; option: PWideChar): wordbool; stdcall;

function CkFtp2_SetPassword(objHandle: HCkFtp2; password: HCkSecureString): wordbool; stdcall;

function CkFtp2_SetRemoteFileDateTimeStr(objHandle: HCkFtp2; dateTimeStr: PWideChar; remoteFilename: PWideChar): wordbool; stdcall;

function CkFtp2_SetRemoteFileDateTimeStrAsync(objHandle: HCkFtp2; dateTimeStr: PWideChar; remoteFilename: PWideChar): HCkTask; stdcall;

function CkFtp2_SetRemoteFileDt(objHandle: HCkFtp2; dt: HCkDateTime; remoteFilename: PWideChar): wordbool; stdcall;

function CkFtp2_SetRemoteFileDtAsync(objHandle: HCkFtp2; dt: HCkDateTime; remoteFilename: PWideChar): HCkTask; stdcall;

function CkFtp2_SetSecurePassword(objHandle: HCkFtp2; password: HCkSecureString): wordbool; stdcall;

procedure CkFtp2_SetSslCertRequirement(objHandle: HCkFtp2; reqName: PWideChar; reqValue: PWideChar); stdcall;

function CkFtp2_SetSslClientCert(objHandle: HCkFtp2; cert: HCkCert): wordbool; stdcall;

function CkFtp2_SetSslClientCertPem(objHandle: HCkFtp2; pemDataOrFilename: PWideChar; pemPassword: PWideChar): wordbool; stdcall;

function CkFtp2_SetSslClientCertPfx(objHandle: HCkFtp2; pfxFilename: PWideChar; pfxPassword: PWideChar): wordbool; stdcall;

function CkFtp2_SetTypeAscii(objHandle: HCkFtp2): wordbool; stdcall;

function CkFtp2_SetTypeAsciiAsync(objHandle: HCkFtp2): HCkTask; stdcall;

function CkFtp2_SetTypeBinary(objHandle: HCkFtp2): wordbool; stdcall;

function CkFtp2_SetTypeBinaryAsync(objHandle: HCkFtp2): HCkTask; stdcall;

function CkFtp2_Site(objHandle: HCkFtp2; siteCommand: PWideChar): wordbool; stdcall;

function CkFtp2_SiteAsync(objHandle: HCkFtp2; siteCommand: PWideChar): HCkTask; stdcall;

procedure CkFtp2_SleepMs(objHandle: HCkFtp2; millisec: Integer); stdcall;

function CkFtp2_Stat(objHandle: HCkFtp2; outStr: HCkString): wordbool; stdcall;

function CkFtp2__stat(objHandle: HCkFtp2): PWideChar; stdcall;

function CkFtp2_StatAsync(objHandle: HCkFtp2): HCkTask; stdcall;

function CkFtp2_SyncDeleteRemote(objHandle: HCkFtp2; localRoot: PWideChar): wordbool; stdcall;

function CkFtp2_SyncDeleteRemoteAsync(objHandle: HCkFtp2; localRoot: PWideChar): HCkTask; stdcall;

function CkFtp2_SyncLocalDir(objHandle: HCkFtp2; localRoot: PWideChar; mode: Integer): wordbool; stdcall;

function CkFtp2_SyncLocalDirAsync(objHandle: HCkFtp2; localRoot: PWideChar; mode: Integer): HCkTask; stdcall;

function CkFtp2_SyncLocalTree(objHandle: HCkFtp2; localRoot: PWideChar; mode: Integer): wordbool; stdcall;

function CkFtp2_SyncLocalTreeAsync(objHandle: HCkFtp2; localRoot: PWideChar; mode: Integer): HCkTask; stdcall;

function CkFtp2_SyncRemoteTree(objHandle: HCkFtp2; localRoot: PWideChar; mode: Integer): wordbool; stdcall;

function CkFtp2_SyncRemoteTreeAsync(objHandle: HCkFtp2; localRoot: PWideChar; mode: Integer): HCkTask; stdcall;

function CkFtp2_SyncRemoteTree2(objHandle: HCkFtp2; localDirPath: PWideChar; mode: Integer; bDescend: wordbool; bPreviewOnly: wordbool): wordbool; stdcall;

function CkFtp2_SyncRemoteTree2Async(objHandle: HCkFtp2; localDirPath: PWideChar; mode: Integer; bDescend: wordbool; bPreviewOnly: wordbool): HCkTask; stdcall;

function CkFtp2_Syst(objHandle: HCkFtp2; outStr: HCkString): wordbool; stdcall;

function CkFtp2__syst(objHandle: HCkFtp2): PWideChar; stdcall;

function CkFtp2_SystAsync(objHandle: HCkFtp2): HCkTask; stdcall;

function CkFtp2_UnlockComponent(objHandle: HCkFtp2; unlockCode: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkFtp2_Create; external DLLName;
procedure CkFtp2_Dispose; external DLLName;

procedure CkFtp2_SetAbortCheck; external DLLName;
procedure CkFtp2_SetProgressInfo; external DLLName;
procedure CkFtp2_SetPercentDone; external DLLName;
procedure CkFtp2_SetTaskCompleted; external DLLName;
function CkFtp2_getAbortCurrent; external DLLName;
procedure CkFtp2_putAbortCurrent; external DLLName;
procedure CkFtp2_getAccount; external DLLName;
procedure CkFtp2_putAccount; external DLLName;
function CkFtp2__account; external DLLName;
function CkFtp2_getActivePortRangeEnd; external DLLName;
procedure CkFtp2_putActivePortRangeEnd; external DLLName;
function CkFtp2_getActivePortRangeStart; external DLLName;
procedure CkFtp2_putActivePortRangeStart; external DLLName;
function CkFtp2_getAllocateSize; external DLLName;
procedure CkFtp2_putAllocateSize; external DLLName;
function CkFtp2_getAllowMlsd; external DLLName;
procedure CkFtp2_putAllowMlsd; external DLLName;
function CkFtp2_getAsyncBytesReceived; external DLLName;
function CkFtp2_getAsyncBytesReceived64; external DLLName;
procedure CkFtp2_getAsyncBytesReceivedStr; external DLLName;
function CkFtp2__asyncBytesReceivedStr; external DLLName;
function CkFtp2_getAsyncBytesSent; external DLLName;
function CkFtp2_getAsyncBytesSent64; external DLLName;
procedure CkFtp2_getAsyncBytesSentStr; external DLLName;
function CkFtp2__asyncBytesSentStr; external DLLName;
function CkFtp2_getAuthSsl; external DLLName;
procedure CkFtp2_putAuthSsl; external DLLName;
function CkFtp2_getAuthTls; external DLLName;
procedure CkFtp2_putAuthTls; external DLLName;
function CkFtp2_getAutoFeat; external DLLName;
procedure CkFtp2_putAutoFeat; external DLLName;
function CkFtp2_getAutoFix; external DLLName;
procedure CkFtp2_putAutoFix; external DLLName;
function CkFtp2_getAutoGetSizeForProgress; external DLLName;
procedure CkFtp2_putAutoGetSizeForProgress; external DLLName;
function CkFtp2_getAutoOptsUtf8; external DLLName;
procedure CkFtp2_putAutoOptsUtf8; external DLLName;
function CkFtp2_getAutoSetUseEpsv; external DLLName;
procedure CkFtp2_putAutoSetUseEpsv; external DLLName;
function CkFtp2_getAutoSyst; external DLLName;
procedure CkFtp2_putAutoSyst; external DLLName;
function CkFtp2_getAutoXcrc; external DLLName;
procedure CkFtp2_putAutoXcrc; external DLLName;
function CkFtp2_getBandwidthThrottleDown; external DLLName;
procedure CkFtp2_putBandwidthThrottleDown; external DLLName;
function CkFtp2_getBandwidthThrottleUp; external DLLName;
procedure CkFtp2_putBandwidthThrottleUp; external DLLName;
procedure CkFtp2_getClientIpAddress; external DLLName;
procedure CkFtp2_putClientIpAddress; external DLLName;
function CkFtp2__clientIpAddress; external DLLName;
procedure CkFtp2_getCommandCharset; external DLLName;
procedure CkFtp2_putCommandCharset; external DLLName;
function CkFtp2__commandCharset; external DLLName;
function CkFtp2_getConnectFailReason; external DLLName;
function CkFtp2_getConnectTimeout; external DLLName;
procedure CkFtp2_putConnectTimeout; external DLLName;
function CkFtp2_getConnectVerified; external DLLName;
function CkFtp2_getCrlfMode; external DLLName;
procedure CkFtp2_putCrlfMode; external DLLName;
procedure CkFtp2_getDataProtection; external DLLName;
procedure CkFtp2_putDataProtection; external DLLName;
function CkFtp2__dataProtection; external DLLName;
procedure CkFtp2_getDebugLogFilePath; external DLLName;
procedure CkFtp2_putDebugLogFilePath; external DLLName;
function CkFtp2__debugLogFilePath; external DLLName;
procedure CkFtp2_getDirListingCharset; external DLLName;
procedure CkFtp2_putDirListingCharset; external DLLName;
function CkFtp2__dirListingCharset; external DLLName;
function CkFtp2_getDownloadTransferRate; external DLLName;
procedure CkFtp2_getForcePortIpAddress; external DLLName;
procedure CkFtp2_putForcePortIpAddress; external DLLName;
function CkFtp2__forcePortIpAddress; external DLLName;
procedure CkFtp2_getGreeting; external DLLName;
function CkFtp2__greeting; external DLLName;
function CkFtp2_getHasModeZ; external DLLName;
function CkFtp2_getHeartbeatMs; external DLLName;
procedure CkFtp2_putHeartbeatMs; external DLLName;
procedure CkFtp2_getHostname; external DLLName;
procedure CkFtp2_putHostname; external DLLName;
function CkFtp2__hostname; external DLLName;
procedure CkFtp2_getHttpProxyAuthMethod; external DLLName;
procedure CkFtp2_putHttpProxyAuthMethod; external DLLName;
function CkFtp2__httpProxyAuthMethod; external DLLName;
procedure CkFtp2_getHttpProxyDomain; external DLLName;
procedure CkFtp2_putHttpProxyDomain; external DLLName;
function CkFtp2__httpProxyDomain; external DLLName;
procedure CkFtp2_getHttpProxyHostname; external DLLName;
procedure CkFtp2_putHttpProxyHostname; external DLLName;
function CkFtp2__httpProxyHostname; external DLLName;
procedure CkFtp2_getHttpProxyPassword; external DLLName;
procedure CkFtp2_putHttpProxyPassword; external DLLName;
function CkFtp2__httpProxyPassword; external DLLName;
function CkFtp2_getHttpProxyPort; external DLLName;
procedure CkFtp2_putHttpProxyPort; external DLLName;
procedure CkFtp2_getHttpProxyUsername; external DLLName;
procedure CkFtp2_putHttpProxyUsername; external DLLName;
function CkFtp2__httpProxyUsername; external DLLName;
function CkFtp2_getIdleTimeoutMs; external DLLName;
procedure CkFtp2_putIdleTimeoutMs; external DLLName;
function CkFtp2_getIsConnected; external DLLName;
function CkFtp2_getKeepSessionLog; external DLLName;
procedure CkFtp2_putKeepSessionLog; external DLLName;
function CkFtp2_getLargeFileMeasures; external DLLName;
procedure CkFtp2_putLargeFileMeasures; external DLLName;
procedure CkFtp2_getLastErrorHtml; external DLLName;
function CkFtp2__lastErrorHtml; external DLLName;
procedure CkFtp2_getLastErrorText; external DLLName;
function CkFtp2__lastErrorText; external DLLName;
procedure CkFtp2_getLastErrorXml; external DLLName;
function CkFtp2__lastErrorXml; external DLLName;
function CkFtp2_getLastMethodSuccess; external DLLName;
procedure CkFtp2_putLastMethodSuccess; external DLLName;
procedure CkFtp2_getLastReply; external DLLName;
function CkFtp2__lastReply; external DLLName;
procedure CkFtp2_getListPattern; external DLLName;
procedure CkFtp2_putListPattern; external DLLName;
function CkFtp2__listPattern; external DLLName;
function CkFtp2_getLoginVerified; external DLLName;
function CkFtp2_getNumFilesAndDirs; external DLLName;
function CkFtp2_getPartialTransfer; external DLLName;
function CkFtp2_getPassive; external DLLName;
procedure CkFtp2_putPassive; external DLLName;
function CkFtp2_getPassiveUseHostAddr; external DLLName;
procedure CkFtp2_putPassiveUseHostAddr; external DLLName;
procedure CkFtp2_getPassword; external DLLName;
procedure CkFtp2_putPassword; external DLLName;
function CkFtp2__password; external DLLName;
function CkFtp2_getPercentDoneScale; external DLLName;
procedure CkFtp2_putPercentDoneScale; external DLLName;
function CkFtp2_getPort; external DLLName;
procedure CkFtp2_putPort; external DLLName;
function CkFtp2_getPreferIpv6; external DLLName;
procedure CkFtp2_putPreferIpv6; external DLLName;
function CkFtp2_getPreferNlst; external DLLName;
procedure CkFtp2_putPreferNlst; external DLLName;
function CkFtp2_getProgressMonSize; external DLLName;
procedure CkFtp2_putProgressMonSize; external DLLName;
function CkFtp2_getProgressMonSize64; external DLLName;
procedure CkFtp2_putProgressMonSize64; external DLLName;
procedure CkFtp2_getProxyHostname; external DLLName;
procedure CkFtp2_putProxyHostname; external DLLName;
function CkFtp2__proxyHostname; external DLLName;
function CkFtp2_getProxyMethod; external DLLName;
procedure CkFtp2_putProxyMethod; external DLLName;
procedure CkFtp2_getProxyPassword; external DLLName;
procedure CkFtp2_putProxyPassword; external DLLName;
function CkFtp2__proxyPassword; external DLLName;
function CkFtp2_getProxyPort; external DLLName;
procedure CkFtp2_putProxyPort; external DLLName;
procedure CkFtp2_getProxyUsername; external DLLName;
procedure CkFtp2_putProxyUsername; external DLLName;
function CkFtp2__proxyUsername; external DLLName;
function CkFtp2_getReadTimeout; external DLLName;
procedure CkFtp2_putReadTimeout; external DLLName;
function CkFtp2_getRequireSslCertVerify; external DLLName;
procedure CkFtp2_putRequireSslCertVerify; external DLLName;
function CkFtp2_getRestartNext; external DLLName;
procedure CkFtp2_putRestartNext; external DLLName;
procedure CkFtp2_getSessionLog; external DLLName;
function CkFtp2__sessionLog; external DLLName;
procedure CkFtp2_getSocksHostname; external DLLName;
procedure CkFtp2_putSocksHostname; external DLLName;
function CkFtp2__socksHostname; external DLLName;
procedure CkFtp2_getSocksPassword; external DLLName;
procedure CkFtp2_putSocksPassword; external DLLName;
function CkFtp2__socksPassword; external DLLName;
function CkFtp2_getSocksPort; external DLLName;
procedure CkFtp2_putSocksPort; external DLLName;
procedure CkFtp2_getSocksUsername; external DLLName;
procedure CkFtp2_putSocksUsername; external DLLName;
function CkFtp2__socksUsername; external DLLName;
function CkFtp2_getSocksVersion; external DLLName;
procedure CkFtp2_putSocksVersion; external DLLName;
function CkFtp2_getSoRcvBuf; external DLLName;
procedure CkFtp2_putSoRcvBuf; external DLLName;
function CkFtp2_getSoSndBuf; external DLLName;
procedure CkFtp2_putSoSndBuf; external DLLName;
function CkFtp2_getSsl; external DLLName;
procedure CkFtp2_putSsl; external DLLName;
procedure CkFtp2_getSslAllowedCiphers; external DLLName;
procedure CkFtp2_putSslAllowedCiphers; external DLLName;
function CkFtp2__sslAllowedCiphers; external DLLName;
procedure CkFtp2_getSslProtocol; external DLLName;
procedure CkFtp2_putSslProtocol; external DLLName;
function CkFtp2__sslProtocol; external DLLName;
function CkFtp2_getSslServerCertVerified; external DLLName;
function CkFtp2_getSyncCreateAllLocalDirs; external DLLName;
procedure CkFtp2_putSyncCreateAllLocalDirs; external DLLName;
procedure CkFtp2_getSyncedFiles; external DLLName;
procedure CkFtp2_putSyncedFiles; external DLLName;
function CkFtp2__syncedFiles; external DLLName;
procedure CkFtp2_getSyncMustMatch; external DLLName;
procedure CkFtp2_putSyncMustMatch; external DLLName;
function CkFtp2__syncMustMatch; external DLLName;
procedure CkFtp2_getSyncMustMatchDir; external DLLName;
procedure CkFtp2_putSyncMustMatchDir; external DLLName;
function CkFtp2__syncMustMatchDir; external DLLName;
procedure CkFtp2_getSyncMustNotMatch; external DLLName;
procedure CkFtp2_putSyncMustNotMatch; external DLLName;
function CkFtp2__syncMustNotMatch; external DLLName;
procedure CkFtp2_getSyncMustNotMatchDir; external DLLName;
procedure CkFtp2_putSyncMustNotMatchDir; external DLLName;
function CkFtp2__syncMustNotMatchDir; external DLLName;
procedure CkFtp2_getSyncPreview; external DLLName;
function CkFtp2__syncPreview; external DLLName;
procedure CkFtp2_getTlsCipherSuite; external DLLName;
function CkFtp2__tlsCipherSuite; external DLLName;
procedure CkFtp2_getTlsPinSet; external DLLName;
procedure CkFtp2_putTlsPinSet; external DLLName;
function CkFtp2__tlsPinSet; external DLLName;
procedure CkFtp2_getTlsVersion; external DLLName;
function CkFtp2__tlsVersion; external DLLName;
procedure CkFtp2_getUncommonOptions; external DLLName;
procedure CkFtp2_putUncommonOptions; external DLLName;
function CkFtp2__uncommonOptions; external DLLName;
function CkFtp2_getUploadTransferRate; external DLLName;
function CkFtp2_getUseEpsv; external DLLName;
procedure CkFtp2_putUseEpsv; external DLLName;
procedure CkFtp2_getUsername; external DLLName;
procedure CkFtp2_putUsername; external DLLName;
function CkFtp2__username; external DLLName;
function CkFtp2_getVerboseLogging; external DLLName;
procedure CkFtp2_putVerboseLogging; external DLLName;
procedure CkFtp2_getVersion; external DLLName;
function CkFtp2__version; external DLLName;
function CkFtp2_AppendFile; external DLLName;
function CkFtp2_AppendFileAsync; external DLLName;
function CkFtp2_AppendFileFromBinaryData; external DLLName;
function CkFtp2_AppendFileFromBinaryDataAsync; external DLLName;
function CkFtp2_AppendFileFromTextData; external DLLName;
function CkFtp2_AppendFileFromTextDataAsync; external DLLName;
function CkFtp2_ChangeRemoteDir; external DLLName;
function CkFtp2_ChangeRemoteDirAsync; external DLLName;
function CkFtp2_CheckConnection; external DLLName;
function CkFtp2_CheckConnectionAsync; external DLLName;
function CkFtp2_ClearControlChannel; external DLLName;
function CkFtp2_ClearControlChannelAsync; external DLLName;
procedure CkFtp2_ClearDirCache; external DLLName;
procedure CkFtp2_ClearSessionLog; external DLLName;
function CkFtp2_Connect; external DLLName;
function CkFtp2_ConnectAsync; external DLLName;
function CkFtp2_ConnectOnly; external DLLName;
function CkFtp2_ConnectOnlyAsync; external DLLName;
function CkFtp2_ConvertToTls; external DLLName;
function CkFtp2_ConvertToTlsAsync; external DLLName;
function CkFtp2_CreatePlan; external DLLName;
function CkFtp2__createPlan; external DLLName;
function CkFtp2_CreatePlanAsync; external DLLName;
function CkFtp2_CreateRemoteDir; external DLLName;
function CkFtp2_CreateRemoteDirAsync; external DLLName;
function CkFtp2_DeleteMatching; external DLLName;
function CkFtp2_DeleteMatchingAsync; external DLLName;
function CkFtp2_DeleteRemoteFile; external DLLName;
function CkFtp2_DeleteRemoteFileAsync; external DLLName;
function CkFtp2_DeleteTree; external DLLName;
function CkFtp2_DeleteTreeAsync; external DLLName;
function CkFtp2_DetermineProxyMethod; external DLLName;
function CkFtp2_DetermineProxyMethodAsync; external DLLName;
function CkFtp2_DetermineSettings; external DLLName;
function CkFtp2__determineSettings; external DLLName;
function CkFtp2_DetermineSettingsAsync; external DLLName;
function CkFtp2_DirTreeXml; external DLLName;
function CkFtp2__dirTreeXml; external DLLName;
function CkFtp2_DirTreeXmlAsync; external DLLName;
function CkFtp2_Disconnect; external DLLName;
function CkFtp2_DisconnectAsync; external DLLName;
function CkFtp2_DownloadTree; external DLLName;
function CkFtp2_DownloadTreeAsync; external DLLName;
function CkFtp2_Feat; external DLLName;
function CkFtp2__feat; external DLLName;
function CkFtp2_FeatAsync; external DLLName;
function CkFtp2_GetCreateDt; external DLLName;
function CkFtp2_GetCreateDtAsync; external DLLName;
function CkFtp2_GetCreateDtByName; external DLLName;
function CkFtp2_GetCreateDtByNameAsync; external DLLName;
function CkFtp2_GetCreateTimeByNameStr; external DLLName;
function CkFtp2__getCreateTimeByNameStr; external DLLName;
function CkFtp2_GetCreateTimeByNameStrAsync; external DLLName;
function CkFtp2_GetCreateTimeStr; external DLLName;
function CkFtp2__getCreateTimeStr; external DLLName;
function CkFtp2_GetCreateTimeStrAsync; external DLLName;
function CkFtp2_GetCurrentRemoteDir; external DLLName;
function CkFtp2__getCurrentRemoteDir; external DLLName;
function CkFtp2_GetCurrentRemoteDirAsync; external DLLName;
function CkFtp2_GetDirCount; external DLLName;
function CkFtp2_GetDirCountAsync; external DLLName;
function CkFtp2_GetFile; external DLLName;
function CkFtp2_GetFileAsync; external DLLName;
function CkFtp2_GetFileBd; external DLLName;
function CkFtp2_GetFileBdAsync; external DLLName;
function CkFtp2_GetFilename; external DLLName;
function CkFtp2__getFilename; external DLLName;
function CkFtp2_GetFilenameAsync; external DLLName;
function CkFtp2_GetFileSb; external DLLName;
function CkFtp2_GetFileSbAsync; external DLLName;
function CkFtp2_GetFileToStream; external DLLName;
function CkFtp2_GetFileToStreamAsync; external DLLName;
function CkFtp2_GetGroup; external DLLName;
function CkFtp2__getGroup; external DLLName;
function CkFtp2_GetGroupAsync; external DLLName;
function CkFtp2_GetIsDirectory; external DLLName;
function CkFtp2_GetIsDirectoryAsync; external DLLName;
function CkFtp2_GetIsSymbolicLink; external DLLName;
function CkFtp2_GetIsSymbolicLinkAsync; external DLLName;
function CkFtp2_GetLastModDt; external DLLName;
function CkFtp2_GetLastModDtAsync; external DLLName;
function CkFtp2_GetLastModDtByName; external DLLName;
function CkFtp2_GetLastModDtByNameAsync; external DLLName;
function CkFtp2_GetLastModifiedTimeByNameStr; external DLLName;
function CkFtp2__getLastModifiedTimeByNameStr; external DLLName;
function CkFtp2_GetLastModifiedTimeByNameStrAsync; external DLLName;
function CkFtp2_GetLastModifiedTimeStr; external DLLName;
function CkFtp2__getLastModifiedTimeStr; external DLLName;
function CkFtp2_GetLastModifiedTimeStrAsync; external DLLName;
function CkFtp2_GetOwner; external DLLName;
function CkFtp2__getOwner; external DLLName;
function CkFtp2_GetOwnerAsync; external DLLName;
function CkFtp2_GetPermissions; external DLLName;
function CkFtp2__getPermissions; external DLLName;
function CkFtp2_GetPermissionsAsync; external DLLName;
function CkFtp2_GetPermType; external DLLName;
function CkFtp2__getPermType; external DLLName;
function CkFtp2_GetPermTypeAsync; external DLLName;
function CkFtp2_GetRemoteFileBinaryData; external DLLName;
function CkFtp2_GetRemoteFileBinaryDataAsync; external DLLName;
function CkFtp2_GetRemoteFileTextC; external DLLName;
function CkFtp2__getRemoteFileTextC; external DLLName;
function CkFtp2_GetRemoteFileTextCAsync; external DLLName;
function CkFtp2_GetRemoteFileTextData; external DLLName;
function CkFtp2__getRemoteFileTextData; external DLLName;
function CkFtp2_GetRemoteFileTextDataAsync; external DLLName;
function CkFtp2_GetSize; external DLLName;
function CkFtp2_GetSizeAsync; external DLLName;
function CkFtp2_GetSize64; external DLLName;
function CkFtp2_GetSizeByName; external DLLName;
function CkFtp2_GetSizeByNameAsync; external DLLName;
function CkFtp2_GetSizeByName64; external DLLName;
function CkFtp2_GetSizeStr; external DLLName;
function CkFtp2__getSizeStr; external DLLName;
function CkFtp2_GetSizeStrAsync; external DLLName;
function CkFtp2_GetSizeStrByName; external DLLName;
function CkFtp2__getSizeStrByName; external DLLName;
function CkFtp2_GetSizeStrByNameAsync; external DLLName;
function CkFtp2_GetSslServerCert; external DLLName;
function CkFtp2_GetTextDirListing; external DLLName;
function CkFtp2__getTextDirListing; external DLLName;
function CkFtp2_GetTextDirListingAsync; external DLLName;
function CkFtp2_GetXmlDirListing; external DLLName;
function CkFtp2__getXmlDirListing; external DLLName;
function CkFtp2_GetXmlDirListingAsync; external DLLName;
function CkFtp2_IsUnlocked; external DLLName;
function CkFtp2_LargeFileUpload; external DLLName;
function CkFtp2_LargeFileUploadAsync; external DLLName;
function CkFtp2_LoadTaskCaller; external DLLName;
function CkFtp2_LoginAfterConnectOnly; external DLLName;
function CkFtp2_LoginAfterConnectOnlyAsync; external DLLName;
function CkFtp2_MGetFiles; external DLLName;
function CkFtp2_MGetFilesAsync; external DLLName;
function CkFtp2_MPutFiles; external DLLName;
function CkFtp2_MPutFilesAsync; external DLLName;
function CkFtp2_NlstXml; external DLLName;
function CkFtp2__nlstXml; external DLLName;
function CkFtp2_NlstXmlAsync; external DLLName;
function CkFtp2_Noop; external DLLName;
function CkFtp2_NoopAsync; external DLLName;
function CkFtp2_PutFile; external DLLName;
function CkFtp2_PutFileAsync; external DLLName;
function CkFtp2_PutFileBd; external DLLName;
function CkFtp2_PutFileBdAsync; external DLLName;
function CkFtp2_PutFileFromBinaryData; external DLLName;
function CkFtp2_PutFileFromBinaryDataAsync; external DLLName;
function CkFtp2_PutFileFromTextData; external DLLName;
function CkFtp2_PutFileFromTextDataAsync; external DLLName;
function CkFtp2_PutFileSb; external DLLName;
function CkFtp2_PutFileSbAsync; external DLLName;
function CkFtp2_PutPlan; external DLLName;
function CkFtp2_PutPlanAsync; external DLLName;
function CkFtp2_PutTree; external DLLName;
function CkFtp2_PutTreeAsync; external DLLName;
function CkFtp2_Quote; external DLLName;
function CkFtp2_QuoteAsync; external DLLName;
function CkFtp2_RemoveRemoteDir; external DLLName;
function CkFtp2_RemoveRemoteDirAsync; external DLLName;
function CkFtp2_RenameRemoteFile; external DLLName;
function CkFtp2_RenameRemoteFileAsync; external DLLName;
function CkFtp2_SaveLastError; external DLLName;
function CkFtp2_SendCommand; external DLLName;
function CkFtp2__sendCommand; external DLLName;
function CkFtp2_SendCommandAsync; external DLLName;
function CkFtp2_SetModeZ; external DLLName;
function CkFtp2_SetModeZAsync; external DLLName;
procedure CkFtp2_SetOldestDateStr; external DLLName;
function CkFtp2_SetOption; external DLLName;
function CkFtp2_SetPassword; external DLLName;
function CkFtp2_SetRemoteFileDateTimeStr; external DLLName;
function CkFtp2_SetRemoteFileDateTimeStrAsync; external DLLName;
function CkFtp2_SetRemoteFileDt; external DLLName;
function CkFtp2_SetRemoteFileDtAsync; external DLLName;
function CkFtp2_SetSecurePassword; external DLLName;
procedure CkFtp2_SetSslCertRequirement; external DLLName;
function CkFtp2_SetSslClientCert; external DLLName;
function CkFtp2_SetSslClientCertPem; external DLLName;
function CkFtp2_SetSslClientCertPfx; external DLLName;
function CkFtp2_SetTypeAscii; external DLLName;
function CkFtp2_SetTypeAsciiAsync; external DLLName;
function CkFtp2_SetTypeBinary; external DLLName;
function CkFtp2_SetTypeBinaryAsync; external DLLName;
function CkFtp2_Site; external DLLName;
function CkFtp2_SiteAsync; external DLLName;
procedure CkFtp2_SleepMs; external DLLName;
function CkFtp2_Stat; external DLLName;
function CkFtp2__stat; external DLLName;
function CkFtp2_StatAsync; external DLLName;
function CkFtp2_SyncDeleteRemote; external DLLName;
function CkFtp2_SyncDeleteRemoteAsync; external DLLName;
function CkFtp2_SyncLocalDir; external DLLName;
function CkFtp2_SyncLocalDirAsync; external DLLName;
function CkFtp2_SyncLocalTree; external DLLName;
function CkFtp2_SyncLocalTreeAsync; external DLLName;
function CkFtp2_SyncRemoteTree; external DLLName;
function CkFtp2_SyncRemoteTreeAsync; external DLLName;
function CkFtp2_SyncRemoteTree2; external DLLName;
function CkFtp2_SyncRemoteTree2Async; external DLLName;
function CkFtp2_Syst; external DLLName;
function CkFtp2__syst; external DLLName;
function CkFtp2_SystAsync; external DLLName;
function CkFtp2_UnlockComponent; external DLLName;



end.
