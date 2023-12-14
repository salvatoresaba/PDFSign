unit SFtp;

interface

type

HCkDateTime = Pointer;
HCkBinData = Pointer;
HCkSecureString = Pointer;
HCkByteData = Pointer;
HCkSFtp = Pointer;
HCkString = Pointer;
HCkSshKey = Pointer;
HCkSFtpDir = Pointer;
HCkSsh = Pointer;
HCkTask = Pointer;
HCkJsonObject = Pointer;
HCkStringBuilder = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TSFtpAbortCheck = function(): Integer; cdecl;
TSFtpProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TSFtpPercentDone = function(pctDone: Integer): Integer; cdecl;
TSFtpTaskCompleted = procedure(task: HCkTask); cdecl;


function CkSFtp_Create: HCkSFtp; stdcall;
procedure CkSFtp_Dispose(handle: HCkSFtp); stdcall;

procedure CkSFtp_SetAbortCheck(objHandle: HCkSFtp; fn: TSFtpAbortCheck) stdcall;
procedure CkSFtp_SetProgressInfo(objHandle: HCkSFtp; fn: TSFtpProgressInfo) stdcall;
procedure CkSFtp_SetPercentDone(objHandle: HCkSFtp; fn: TSFtpPercentDone) stdcall;
procedure CkSFtp_SetTaskCompleted(objHandle: HCkSFtp; fn: TSFtpTaskCompleted) stdcall;
function CkSFtp_getAbortCurrent(objHandle: HCkSFtp): wordbool; stdcall;

procedure CkSFtp_putAbortCurrent(objHandle: HCkSFtp; newPropVal: wordbool); stdcall;

procedure CkSFtp_getAccumulateBuffer(objHandle: HCkSFtp; outPropVal: HCkByteData); stdcall;

function CkSFtp_getAuthFailReason(objHandle: HCkSFtp): Integer; stdcall;

function CkSFtp_getBandwidthThrottleDown(objHandle: HCkSFtp): Integer; stdcall;

procedure CkSFtp_putBandwidthThrottleDown(objHandle: HCkSFtp; newPropVal: Integer); stdcall;

function CkSFtp_getBandwidthThrottleUp(objHandle: HCkSFtp): Integer; stdcall;

procedure CkSFtp_putBandwidthThrottleUp(objHandle: HCkSFtp; newPropVal: Integer); stdcall;

procedure CkSFtp_getClientIdentifier(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

procedure CkSFtp_putClientIdentifier(objHandle: HCkSFtp; newPropVal: PWideChar); stdcall;

function CkSFtp__clientIdentifier(objHandle: HCkSFtp): PWideChar; stdcall;

procedure CkSFtp_getClientIpAddress(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

procedure CkSFtp_putClientIpAddress(objHandle: HCkSFtp; newPropVal: PWideChar); stdcall;

function CkSFtp__clientIpAddress(objHandle: HCkSFtp): PWideChar; stdcall;

function CkSFtp_getConnectTimeoutMs(objHandle: HCkSFtp): Integer; stdcall;

procedure CkSFtp_putConnectTimeoutMs(objHandle: HCkSFtp; newPropVal: Integer); stdcall;

procedure CkSFtp_getDebugLogFilePath(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

procedure CkSFtp_putDebugLogFilePath(objHandle: HCkSFtp; newPropVal: PWideChar); stdcall;

function CkSFtp__debugLogFilePath(objHandle: HCkSFtp): PWideChar; stdcall;

function CkSFtp_getDisconnectCode(objHandle: HCkSFtp): Integer; stdcall;

procedure CkSFtp_getDisconnectReason(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

function CkSFtp__disconnectReason(objHandle: HCkSFtp): PWideChar; stdcall;

function CkSFtp_getEnableCache(objHandle: HCkSFtp): wordbool; stdcall;

procedure CkSFtp_putEnableCache(objHandle: HCkSFtp; newPropVal: wordbool); stdcall;

function CkSFtp_getEnableCompression(objHandle: HCkSFtp): wordbool; stdcall;

procedure CkSFtp_putEnableCompression(objHandle: HCkSFtp; newPropVal: wordbool); stdcall;

procedure CkSFtp_getFilenameCharset(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

procedure CkSFtp_putFilenameCharset(objHandle: HCkSFtp; newPropVal: PWideChar); stdcall;

function CkSFtp__filenameCharset(objHandle: HCkSFtp): PWideChar; stdcall;

procedure CkSFtp_getForceCipher(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

procedure CkSFtp_putForceCipher(objHandle: HCkSFtp; newPropVal: PWideChar); stdcall;

function CkSFtp__forceCipher(objHandle: HCkSFtp): PWideChar; stdcall;

function CkSFtp_getForceV3(objHandle: HCkSFtp): wordbool; stdcall;

procedure CkSFtp_putForceV3(objHandle: HCkSFtp; newPropVal: wordbool); stdcall;

function CkSFtp_getHeartbeatMs(objHandle: HCkSFtp): Integer; stdcall;

procedure CkSFtp_putHeartbeatMs(objHandle: HCkSFtp; newPropVal: Integer); stdcall;

procedure CkSFtp_getHostKeyAlg(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

procedure CkSFtp_putHostKeyAlg(objHandle: HCkSFtp; newPropVal: PWideChar); stdcall;

function CkSFtp__hostKeyAlg(objHandle: HCkSFtp): PWideChar; stdcall;

procedure CkSFtp_getHostKeyFingerprint(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

function CkSFtp__hostKeyFingerprint(objHandle: HCkSFtp): PWideChar; stdcall;

procedure CkSFtp_getHttpProxyAuthMethod(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

procedure CkSFtp_putHttpProxyAuthMethod(objHandle: HCkSFtp; newPropVal: PWideChar); stdcall;

function CkSFtp__httpProxyAuthMethod(objHandle: HCkSFtp): PWideChar; stdcall;

procedure CkSFtp_getHttpProxyDomain(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

procedure CkSFtp_putHttpProxyDomain(objHandle: HCkSFtp; newPropVal: PWideChar); stdcall;

function CkSFtp__httpProxyDomain(objHandle: HCkSFtp): PWideChar; stdcall;

procedure CkSFtp_getHttpProxyHostname(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

procedure CkSFtp_putHttpProxyHostname(objHandle: HCkSFtp; newPropVal: PWideChar); stdcall;

function CkSFtp__httpProxyHostname(objHandle: HCkSFtp): PWideChar; stdcall;

procedure CkSFtp_getHttpProxyPassword(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

procedure CkSFtp_putHttpProxyPassword(objHandle: HCkSFtp; newPropVal: PWideChar); stdcall;

function CkSFtp__httpProxyPassword(objHandle: HCkSFtp): PWideChar; stdcall;

function CkSFtp_getHttpProxyPort(objHandle: HCkSFtp): Integer; stdcall;

procedure CkSFtp_putHttpProxyPort(objHandle: HCkSFtp; newPropVal: Integer); stdcall;

procedure CkSFtp_getHttpProxyUsername(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

procedure CkSFtp_putHttpProxyUsername(objHandle: HCkSFtp; newPropVal: PWideChar); stdcall;

function CkSFtp__httpProxyUsername(objHandle: HCkSFtp): PWideChar; stdcall;

function CkSFtp_getIdleTimeoutMs(objHandle: HCkSFtp): Integer; stdcall;

procedure CkSFtp_putIdleTimeoutMs(objHandle: HCkSFtp; newPropVal: Integer); stdcall;

function CkSFtp_getIncludeDotDirs(objHandle: HCkSFtp): wordbool; stdcall;

procedure CkSFtp_putIncludeDotDirs(objHandle: HCkSFtp; newPropVal: wordbool); stdcall;

function CkSFtp_getInitializeFailCode(objHandle: HCkSFtp): Integer; stdcall;

procedure CkSFtp_getInitializeFailReason(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

function CkSFtp__initializeFailReason(objHandle: HCkSFtp): PWideChar; stdcall;

function CkSFtp_getIsConnected(objHandle: HCkSFtp): wordbool; stdcall;

function CkSFtp_getKeepSessionLog(objHandle: HCkSFtp): wordbool; stdcall;

procedure CkSFtp_putKeepSessionLog(objHandle: HCkSFtp; newPropVal: wordbool); stdcall;

procedure CkSFtp_getLastErrorHtml(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

function CkSFtp__lastErrorHtml(objHandle: HCkSFtp): PWideChar; stdcall;

procedure CkSFtp_getLastErrorText(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

function CkSFtp__lastErrorText(objHandle: HCkSFtp): PWideChar; stdcall;

procedure CkSFtp_getLastErrorXml(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

function CkSFtp__lastErrorXml(objHandle: HCkSFtp): PWideChar; stdcall;

function CkSFtp_getLastMethodSuccess(objHandle: HCkSFtp): wordbool; stdcall;

procedure CkSFtp_putLastMethodSuccess(objHandle: HCkSFtp; newPropVal: wordbool); stdcall;

function CkSFtp_getLastStatusCode(objHandle: HCkSFtp): Integer; stdcall;

procedure CkSFtp_getLastStatusMessage(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

function CkSFtp__lastStatusMessage(objHandle: HCkSFtp): PWideChar; stdcall;

function CkSFtp_getMaxPacketSize(objHandle: HCkSFtp): Integer; stdcall;

procedure CkSFtp_putMaxPacketSize(objHandle: HCkSFtp; newPropVal: Integer); stdcall;

function CkSFtp_getPasswordChangeRequested(objHandle: HCkSFtp): wordbool; stdcall;

function CkSFtp_getPercentDoneScale(objHandle: HCkSFtp): Integer; stdcall;

procedure CkSFtp_putPercentDoneScale(objHandle: HCkSFtp; newPropVal: Integer); stdcall;

function CkSFtp_getPreferIpv6(objHandle: HCkSFtp): wordbool; stdcall;

procedure CkSFtp_putPreferIpv6(objHandle: HCkSFtp; newPropVal: wordbool); stdcall;

function CkSFtp_getPreserveDate(objHandle: HCkSFtp): wordbool; stdcall;

procedure CkSFtp_putPreserveDate(objHandle: HCkSFtp; newPropVal: wordbool); stdcall;

function CkSFtp_getProtocolVersion(objHandle: HCkSFtp): Integer; stdcall;

procedure CkSFtp_getReadDirMustMatch(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

procedure CkSFtp_putReadDirMustMatch(objHandle: HCkSFtp; newPropVal: PWideChar); stdcall;

function CkSFtp__readDirMustMatch(objHandle: HCkSFtp): PWideChar; stdcall;

procedure CkSFtp_getReadDirMustNotMatch(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

procedure CkSFtp_putReadDirMustNotMatch(objHandle: HCkSFtp; newPropVal: PWideChar); stdcall;

function CkSFtp__readDirMustNotMatch(objHandle: HCkSFtp): PWideChar; stdcall;

procedure CkSFtp_getServerIdentifier(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

function CkSFtp__serverIdentifier(objHandle: HCkSFtp): PWideChar; stdcall;

procedure CkSFtp_getSessionLog(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

function CkSFtp__sessionLog(objHandle: HCkSFtp): PWideChar; stdcall;

procedure CkSFtp_getSocksHostname(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

procedure CkSFtp_putSocksHostname(objHandle: HCkSFtp; newPropVal: PWideChar); stdcall;

function CkSFtp__socksHostname(objHandle: HCkSFtp): PWideChar; stdcall;

procedure CkSFtp_getSocksPassword(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

procedure CkSFtp_putSocksPassword(objHandle: HCkSFtp; newPropVal: PWideChar); stdcall;

function CkSFtp__socksPassword(objHandle: HCkSFtp): PWideChar; stdcall;

function CkSFtp_getSocksPort(objHandle: HCkSFtp): Integer; stdcall;

procedure CkSFtp_putSocksPort(objHandle: HCkSFtp; newPropVal: Integer); stdcall;

procedure CkSFtp_getSocksUsername(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

procedure CkSFtp_putSocksUsername(objHandle: HCkSFtp; newPropVal: PWideChar); stdcall;

function CkSFtp__socksUsername(objHandle: HCkSFtp): PWideChar; stdcall;

function CkSFtp_getSocksVersion(objHandle: HCkSFtp): Integer; stdcall;

procedure CkSFtp_putSocksVersion(objHandle: HCkSFtp; newPropVal: Integer); stdcall;

function CkSFtp_getSoRcvBuf(objHandle: HCkSFtp): Integer; stdcall;

procedure CkSFtp_putSoRcvBuf(objHandle: HCkSFtp; newPropVal: Integer); stdcall;

function CkSFtp_getSoSndBuf(objHandle: HCkSFtp): Integer; stdcall;

procedure CkSFtp_putSoSndBuf(objHandle: HCkSFtp; newPropVal: Integer); stdcall;

function CkSFtp_getSyncCreateAllLocalDirs(objHandle: HCkSFtp): wordbool; stdcall;

procedure CkSFtp_putSyncCreateAllLocalDirs(objHandle: HCkSFtp; newPropVal: wordbool); stdcall;

procedure CkSFtp_getSyncDirectives(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

procedure CkSFtp_putSyncDirectives(objHandle: HCkSFtp; newPropVal: PWideChar); stdcall;

function CkSFtp__syncDirectives(objHandle: HCkSFtp): PWideChar; stdcall;

procedure CkSFtp_getSyncedFiles(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

procedure CkSFtp_putSyncedFiles(objHandle: HCkSFtp; newPropVal: PWideChar); stdcall;

function CkSFtp__syncedFiles(objHandle: HCkSFtp): PWideChar; stdcall;

procedure CkSFtp_getSyncMustMatch(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

procedure CkSFtp_putSyncMustMatch(objHandle: HCkSFtp; newPropVal: PWideChar); stdcall;

function CkSFtp__syncMustMatch(objHandle: HCkSFtp): PWideChar; stdcall;

procedure CkSFtp_getSyncMustMatchDir(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

procedure CkSFtp_putSyncMustMatchDir(objHandle: HCkSFtp; newPropVal: PWideChar); stdcall;

function CkSFtp__syncMustMatchDir(objHandle: HCkSFtp): PWideChar; stdcall;

procedure CkSFtp_getSyncMustNotMatch(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

procedure CkSFtp_putSyncMustNotMatch(objHandle: HCkSFtp; newPropVal: PWideChar); stdcall;

function CkSFtp__syncMustNotMatch(objHandle: HCkSFtp): PWideChar; stdcall;

procedure CkSFtp_getSyncMustNotMatchDir(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

procedure CkSFtp_putSyncMustNotMatchDir(objHandle: HCkSFtp; newPropVal: PWideChar); stdcall;

function CkSFtp__syncMustNotMatchDir(objHandle: HCkSFtp): PWideChar; stdcall;

function CkSFtp_getTcpNoDelay(objHandle: HCkSFtp): wordbool; stdcall;

procedure CkSFtp_putTcpNoDelay(objHandle: HCkSFtp; newPropVal: wordbool); stdcall;

procedure CkSFtp_getUncommonOptions(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

procedure CkSFtp_putUncommonOptions(objHandle: HCkSFtp; newPropVal: PWideChar); stdcall;

function CkSFtp__uncommonOptions(objHandle: HCkSFtp): PWideChar; stdcall;

function CkSFtp_getUploadChunkSize(objHandle: HCkSFtp): Integer; stdcall;

procedure CkSFtp_putUploadChunkSize(objHandle: HCkSFtp; newPropVal: Integer); stdcall;

procedure CkSFtp_getUserAuthBanner(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

procedure CkSFtp_putUserAuthBanner(objHandle: HCkSFtp; newPropVal: PWideChar); stdcall;

function CkSFtp__userAuthBanner(objHandle: HCkSFtp): PWideChar; stdcall;

function CkSFtp_getUtcMode(objHandle: HCkSFtp): wordbool; stdcall;

procedure CkSFtp_putUtcMode(objHandle: HCkSFtp; newPropVal: wordbool); stdcall;

function CkSFtp_getVerboseLogging(objHandle: HCkSFtp): wordbool; stdcall;

procedure CkSFtp_putVerboseLogging(objHandle: HCkSFtp; newPropVal: wordbool); stdcall;

procedure CkSFtp_getVersion(objHandle: HCkSFtp; outPropVal: HCkString); stdcall;

function CkSFtp__version(objHandle: HCkSFtp): PWideChar; stdcall;

function CkSFtp_getXferByteCount(objHandle: HCkSFtp): LongWord; stdcall;

function CkSFtp_getXferByteCount64(objHandle: HCkSFtp): Int64; stdcall;

function CkSFtp_AccumulateBytes(objHandle: HCkSFtp; handle: PWideChar; maxBytes: Integer): Integer; stdcall;

function CkSFtp_AccumulateBytesAsync(objHandle: HCkSFtp; handle: PWideChar; maxBytes: Integer): HCkTask; stdcall;

function CkSFtp_Add64(objHandle: HCkSFtp; n1: PWideChar; n2: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkSFtp__add64(objHandle: HCkSFtp; n1: PWideChar; n2: PWideChar): PWideChar; stdcall;

function CkSFtp_AuthenticatePk(objHandle: HCkSFtp; username: PWideChar; privateKey: HCkSshKey): wordbool; stdcall;

function CkSFtp_AuthenticatePkAsync(objHandle: HCkSFtp; username: PWideChar; privateKey: HCkSshKey): HCkTask; stdcall;

function CkSFtp_AuthenticatePw(objHandle: HCkSFtp; login: PWideChar; password: PWideChar): wordbool; stdcall;

function CkSFtp_AuthenticatePwAsync(objHandle: HCkSFtp; login: PWideChar; password: PWideChar): HCkTask; stdcall;

function CkSFtp_AuthenticatePwPk(objHandle: HCkSFtp; username: PWideChar; password: PWideChar; privateKey: HCkSshKey): wordbool; stdcall;

function CkSFtp_AuthenticatePwPkAsync(objHandle: HCkSFtp; username: PWideChar; password: PWideChar; privateKey: HCkSshKey): HCkTask; stdcall;

function CkSFtp_AuthenticateSecPw(objHandle: HCkSFtp; login: HCkSecureString; password: HCkSecureString): wordbool; stdcall;

function CkSFtp_AuthenticateSecPwAsync(objHandle: HCkSFtp; login: HCkSecureString; password: HCkSecureString): HCkTask; stdcall;

function CkSFtp_AuthenticateSecPwPk(objHandle: HCkSFtp; username: HCkSecureString; password: HCkSecureString; privateKey: HCkSshKey): wordbool; stdcall;

function CkSFtp_AuthenticateSecPwPkAsync(objHandle: HCkSFtp; username: HCkSecureString; password: HCkSecureString; privateKey: HCkSshKey): HCkTask; stdcall;

procedure CkSFtp_ClearAccumulateBuffer(objHandle: HCkSFtp); stdcall;

procedure CkSFtp_ClearCache(objHandle: HCkSFtp); stdcall;

procedure CkSFtp_ClearSessionLog(objHandle: HCkSFtp); stdcall;

function CkSFtp_CloseHandle(objHandle: HCkSFtp; handle: PWideChar): wordbool; stdcall;

function CkSFtp_CloseHandleAsync(objHandle: HCkSFtp; handle: PWideChar): HCkTask; stdcall;

function CkSFtp_Connect(objHandle: HCkSFtp; domainName: PWideChar; port: Integer): wordbool; stdcall;

function CkSFtp_ConnectAsync(objHandle: HCkSFtp; domainName: PWideChar; port: Integer): HCkTask; stdcall;

function CkSFtp_ConnectThroughSsh(objHandle: HCkSFtp; sshConn: HCkSsh; hostname: PWideChar; port: Integer): wordbool; stdcall;

function CkSFtp_ConnectThroughSshAsync(objHandle: HCkSFtp; sshConn: HCkSsh; hostname: PWideChar; port: Integer): HCkTask; stdcall;

function CkSFtp_ContinueKeyboardAuth(objHandle: HCkSFtp; response: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkSFtp__continueKeyboardAuth(objHandle: HCkSFtp; response: PWideChar): PWideChar; stdcall;

function CkSFtp_ContinueKeyboardAuthAsync(objHandle: HCkSFtp; response: PWideChar): HCkTask; stdcall;

function CkSFtp_CopyFileAttr(objHandle: HCkSFtp; localFilename: PWideChar; remoteFilename: PWideChar; isHandle: wordbool): wordbool; stdcall;

function CkSFtp_CopyFileAttrAsync(objHandle: HCkSFtp; localFilename: PWideChar; remoteFilename: PWideChar; isHandle: wordbool): HCkTask; stdcall;

function CkSFtp_CreateDir(objHandle: HCkSFtp; path: PWideChar): wordbool; stdcall;

function CkSFtp_CreateDirAsync(objHandle: HCkSFtp; path: PWideChar): HCkTask; stdcall;

procedure CkSFtp_Disconnect(objHandle: HCkSFtp); stdcall;

function CkSFtp_DownloadBd(objHandle: HCkSFtp; remoteFilePath: PWideChar; binData: HCkBinData): wordbool; stdcall;

function CkSFtp_DownloadBdAsync(objHandle: HCkSFtp; remoteFilePath: PWideChar; binData: HCkBinData): HCkTask; stdcall;

function CkSFtp_DownloadFile(objHandle: HCkSFtp; handle: PWideChar; toFilename: PWideChar): wordbool; stdcall;

function CkSFtp_DownloadFileAsync(objHandle: HCkSFtp; handle: PWideChar; toFilename: PWideChar): HCkTask; stdcall;

function CkSFtp_DownloadFileByName(objHandle: HCkSFtp; remoteFilePath: PWideChar; localFilePath: PWideChar): wordbool; stdcall;

function CkSFtp_DownloadFileByNameAsync(objHandle: HCkSFtp; remoteFilePath: PWideChar; localFilePath: PWideChar): HCkTask; stdcall;

function CkSFtp_DownloadSb(objHandle: HCkSFtp; remoteFilePath: PWideChar; charset: PWideChar; sb: HCkStringBuilder): wordbool; stdcall;

function CkSFtp_DownloadSbAsync(objHandle: HCkSFtp; remoteFilePath: PWideChar; charset: PWideChar; sb: HCkStringBuilder): HCkTask; stdcall;

function CkSFtp_Eof(objHandle: HCkSFtp; handle: PWideChar): wordbool; stdcall;

function CkSFtp_FileExists(objHandle: HCkSFtp; remotePath: PWideChar; followLinks: wordbool): Integer; stdcall;

function CkSFtp_FileExistsAsync(objHandle: HCkSFtp; remotePath: PWideChar; followLinks: wordbool): HCkTask; stdcall;

function CkSFtp_Fsync(objHandle: HCkSFtp; handle: PWideChar): wordbool; stdcall;

function CkSFtp_FsyncAsync(objHandle: HCkSFtp; handle: PWideChar): HCkTask; stdcall;

function CkSFtp_GetFileCreateDt(objHandle: HCkSFtp; pathOrHandle: PWideChar; bFollowLinks: wordbool; bIsHandle: wordbool): HCkDateTime; stdcall;

function CkSFtp_GetFileCreateDtAsync(objHandle: HCkSFtp; pathOrHandle: PWideChar; bFollowLinks: wordbool; bIsHandle: wordbool): HCkTask; stdcall;

function CkSFtp_GetFileCreateTimeStr(objHandle: HCkSFtp; pathOrHandle: PWideChar; bFollowLinks: wordbool; bIsHandle: wordbool; outStr: HCkString): wordbool; stdcall;

function CkSFtp__getFileCreateTimeStr(objHandle: HCkSFtp; pathOrHandle: PWideChar; bFollowLinks: wordbool; bIsHandle: wordbool): PWideChar; stdcall;

function CkSFtp_GetFileCreateTimeStrAsync(objHandle: HCkSFtp; pathOrHandle: PWideChar; bFollowLinks: wordbool; bIsHandle: wordbool): HCkTask; stdcall;

function CkSFtp_GetFileGroup(objHandle: HCkSFtp; pathOrHandle: PWideChar; bFollowLinks: wordbool; bIsHandle: wordbool; outStr: HCkString): wordbool; stdcall;

function CkSFtp__getFileGroup(objHandle: HCkSFtp; pathOrHandle: PWideChar; bFollowLinks: wordbool; bIsHandle: wordbool): PWideChar; stdcall;

function CkSFtp_GetFileGroupAsync(objHandle: HCkSFtp; pathOrHandle: PWideChar; bFollowLinks: wordbool; bIsHandle: wordbool): HCkTask; stdcall;

function CkSFtp_GetFileLastAccessDt(objHandle: HCkSFtp; pathOrHandle: PWideChar; bFollowLinks: wordbool; bIsHandle: wordbool): HCkDateTime; stdcall;

function CkSFtp_GetFileLastAccessDtAsync(objHandle: HCkSFtp; pathOrHandle: PWideChar; bFollowLinks: wordbool; bIsHandle: wordbool): HCkTask; stdcall;

function CkSFtp_GetFileLastAccessStr(objHandle: HCkSFtp; pathOrHandle: PWideChar; bFollowLinks: wordbool; bIsHandle: wordbool; outStr: HCkString): wordbool; stdcall;

function CkSFtp__getFileLastAccessStr(objHandle: HCkSFtp; pathOrHandle: PWideChar; bFollowLinks: wordbool; bIsHandle: wordbool): PWideChar; stdcall;

function CkSFtp_GetFileLastAccessStrAsync(objHandle: HCkSFtp; pathOrHandle: PWideChar; bFollowLinks: wordbool; bIsHandle: wordbool): HCkTask; stdcall;

function CkSFtp_GetFileLastModifiedDt(objHandle: HCkSFtp; pathOrHandle: PWideChar; bFollowLinks: wordbool; bIsHandle: wordbool): HCkDateTime; stdcall;

function CkSFtp_GetFileLastModifiedDtAsync(objHandle: HCkSFtp; pathOrHandle: PWideChar; bFollowLinks: wordbool; bIsHandle: wordbool): HCkTask; stdcall;

function CkSFtp_GetFileLastModifiedStr(objHandle: HCkSFtp; pathOrHandle: PWideChar; bFollowLinks: wordbool; bIsHandle: wordbool; outStr: HCkString): wordbool; stdcall;

function CkSFtp__getFileLastModifiedStr(objHandle: HCkSFtp; pathOrHandle: PWideChar; bFollowLinks: wordbool; bIsHandle: wordbool): PWideChar; stdcall;

function CkSFtp_GetFileLastModifiedStrAsync(objHandle: HCkSFtp; pathOrHandle: PWideChar; bFollowLinks: wordbool; bIsHandle: wordbool): HCkTask; stdcall;

function CkSFtp_GetFileOwner(objHandle: HCkSFtp; pathOrHandle: PWideChar; bFollowLinks: wordbool; bIsHandle: wordbool; outStr: HCkString): wordbool; stdcall;

function CkSFtp__getFileOwner(objHandle: HCkSFtp; pathOrHandle: PWideChar; bFollowLinks: wordbool; bIsHandle: wordbool): PWideChar; stdcall;

function CkSFtp_GetFileOwnerAsync(objHandle: HCkSFtp; pathOrHandle: PWideChar; bFollowLinks: wordbool; bIsHandle: wordbool): HCkTask; stdcall;

function CkSFtp_GetFilePermissions(objHandle: HCkSFtp; pathOrHandle: PWideChar; bFollowLinks: wordbool; bIsHandle: wordbool): Integer; stdcall;

function CkSFtp_GetFilePermissionsAsync(objHandle: HCkSFtp; pathOrHandle: PWideChar; bFollowLinks: wordbool; bIsHandle: wordbool): HCkTask; stdcall;

function CkSFtp_GetFileSize32(objHandle: HCkSFtp; pathOrHandle: PWideChar; bFollowLinks: wordbool; bIsHandle: wordbool): Integer; stdcall;

function CkSFtp_GetFileSize64(objHandle: HCkSFtp; pathOrHandle: PWideChar; bFollowLinks: wordbool; bIsHandle: wordbool): Int64; stdcall;

function CkSFtp_GetFileSizeStr(objHandle: HCkSFtp; pathOrHandle: PWideChar; bFollowLinks: wordbool; bIsHandle: wordbool; outStr: HCkString): wordbool; stdcall;

function CkSFtp__getFileSizeStr(objHandle: HCkSFtp; pathOrHandle: PWideChar; bFollowLinks: wordbool; bIsHandle: wordbool): PWideChar; stdcall;

function CkSFtp_GetHostKeyFP(objHandle: HCkSFtp; hashAlg: PWideChar; includeKeyType: wordbool; includeHashName: wordbool; outStr: HCkString): wordbool; stdcall;

function CkSFtp__getHostKeyFP(objHandle: HCkSFtp; hashAlg: PWideChar; includeKeyType: wordbool; includeHashName: wordbool): PWideChar; stdcall;

function CkSFtp_HardLink(objHandle: HCkSFtp; oldPath: PWideChar; newPath: PWideChar): wordbool; stdcall;

function CkSFtp_HardLinkAsync(objHandle: HCkSFtp; oldPath: PWideChar; newPath: PWideChar): HCkTask; stdcall;

function CkSFtp_InitializeSftp(objHandle: HCkSFtp): wordbool; stdcall;

function CkSFtp_InitializeSftpAsync(objHandle: HCkSFtp): HCkTask; stdcall;

function CkSFtp_LastJsonData(objHandle: HCkSFtp): HCkJsonObject; stdcall;

function CkSFtp_LastReadFailed(objHandle: HCkSFtp; handle: PWideChar): wordbool; stdcall;

function CkSFtp_LastReadNumBytes(objHandle: HCkSFtp; handle: PWideChar): Integer; stdcall;

function CkSFtp_LoadTaskCaller(objHandle: HCkSFtp; task: HCkTask): wordbool; stdcall;

function CkSFtp_OpenDir(objHandle: HCkSFtp; path: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkSFtp__openDir(objHandle: HCkSFtp; path: PWideChar): PWideChar; stdcall;

function CkSFtp_OpenDirAsync(objHandle: HCkSFtp; path: PWideChar): HCkTask; stdcall;

function CkSFtp_OpenFile(objHandle: HCkSFtp; remotePath: PWideChar; access: PWideChar; createDisposition: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkSFtp__openFile(objHandle: HCkSFtp; remotePath: PWideChar; access: PWideChar; createDisposition: PWideChar): PWideChar; stdcall;

function CkSFtp_OpenFileAsync(objHandle: HCkSFtp; remotePath: PWideChar; access: PWideChar; createDisposition: PWideChar): HCkTask; stdcall;

function CkSFtp_ReadDir(objHandle: HCkSFtp; handle: PWideChar): HCkSFtpDir; stdcall;

function CkSFtp_ReadDirAsync(objHandle: HCkSFtp; handle: PWideChar): HCkTask; stdcall;

function CkSFtp_ReadFileBd(objHandle: HCkSFtp; handle: PWideChar; numBytes: Integer; bd: HCkBinData): wordbool; stdcall;

function CkSFtp_ReadFileBdAsync(objHandle: HCkSFtp; handle: PWideChar; numBytes: Integer; bd: HCkBinData): HCkTask; stdcall;

function CkSFtp_ReadFileBytes(objHandle: HCkSFtp; handle: PWideChar; numBytes: Integer; outData: HCkByteData): wordbool; stdcall;

function CkSFtp_ReadFileBytesAsync(objHandle: HCkSFtp; handle: PWideChar; numBytes: Integer): HCkTask; stdcall;

function CkSFtp_ReadFileBytes32(objHandle: HCkSFtp; handle: PWideChar; offset: Integer; numBytes: Integer; outData: HCkByteData): wordbool; stdcall;

function CkSFtp_ReadFileBytes64(objHandle: HCkSFtp; handle: PWideChar; offset: Int64; numBytes: Integer; outData: HCkByteData): wordbool; stdcall;

function CkSFtp_ReadFileBytes64s(objHandle: HCkSFtp; handle: PWideChar; offset: PWideChar; numBytes: Integer; outData: HCkByteData): wordbool; stdcall;

function CkSFtp_ReadFileText(objHandle: HCkSFtp; handle: PWideChar; numBytes: Integer; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkSFtp__readFileText(objHandle: HCkSFtp; handle: PWideChar; numBytes: Integer; charset: PWideChar): PWideChar; stdcall;

function CkSFtp_ReadFileTextAsync(objHandle: HCkSFtp; handle: PWideChar; numBytes: Integer; charset: PWideChar): HCkTask; stdcall;

function CkSFtp_ReadFileText32(objHandle: HCkSFtp; handle: PWideChar; offset: Integer; numBytes: Integer; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkSFtp__readFileText32(objHandle: HCkSFtp; handle: PWideChar; offset: Integer; numBytes: Integer; charset: PWideChar): PWideChar; stdcall;

function CkSFtp_ReadFileText64(objHandle: HCkSFtp; handle: PWideChar; offset: Int64; numBytes: Integer; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkSFtp__readFileText64(objHandle: HCkSFtp; handle: PWideChar; offset: Int64; numBytes: Integer; charset: PWideChar): PWideChar; stdcall;

function CkSFtp_ReadFileText64s(objHandle: HCkSFtp; handle: PWideChar; offset: PWideChar; numBytes: Integer; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkSFtp__readFileText64s(objHandle: HCkSFtp; handle: PWideChar; offset: PWideChar; numBytes: Integer; charset: PWideChar): PWideChar; stdcall;

function CkSFtp_ReadLink(objHandle: HCkSFtp; path: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkSFtp__readLink(objHandle: HCkSFtp; path: PWideChar): PWideChar; stdcall;

function CkSFtp_ReadLinkAsync(objHandle: HCkSFtp; path: PWideChar): HCkTask; stdcall;

function CkSFtp_RealPath(objHandle: HCkSFtp; originalPath: PWideChar; composePath: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkSFtp__realPath(objHandle: HCkSFtp; originalPath: PWideChar; composePath: PWideChar): PWideChar; stdcall;

function CkSFtp_RealPathAsync(objHandle: HCkSFtp; originalPath: PWideChar; composePath: PWideChar): HCkTask; stdcall;

function CkSFtp_RemoveDir(objHandle: HCkSFtp; path: PWideChar): wordbool; stdcall;

function CkSFtp_RemoveDirAsync(objHandle: HCkSFtp; path: PWideChar): HCkTask; stdcall;

function CkSFtp_RemoveFile(objHandle: HCkSFtp; filename: PWideChar): wordbool; stdcall;

function CkSFtp_RemoveFileAsync(objHandle: HCkSFtp; filename: PWideChar): HCkTask; stdcall;

function CkSFtp_RenameFileOrDir(objHandle: HCkSFtp; oldPath: PWideChar; newPath: PWideChar): wordbool; stdcall;

function CkSFtp_RenameFileOrDirAsync(objHandle: HCkSFtp; oldPath: PWideChar; newPath: PWideChar): HCkTask; stdcall;

function CkSFtp_ResumeDownloadFileByName(objHandle: HCkSFtp; remoteFilePath: PWideChar; localFilePath: PWideChar): wordbool; stdcall;

function CkSFtp_ResumeDownloadFileByNameAsync(objHandle: HCkSFtp; remoteFilePath: PWideChar; localFilePath: PWideChar): HCkTask; stdcall;

function CkSFtp_ResumeUploadFileByName(objHandle: HCkSFtp; remoteFilePath: PWideChar; localFilePath: PWideChar): wordbool; stdcall;

function CkSFtp_ResumeUploadFileByNameAsync(objHandle: HCkSFtp; remoteFilePath: PWideChar; localFilePath: PWideChar): HCkTask; stdcall;

function CkSFtp_SaveLastError(objHandle: HCkSFtp; path: PWideChar): wordbool; stdcall;

function CkSFtp_SendIgnore(objHandle: HCkSFtp): wordbool; stdcall;

function CkSFtp_SendIgnoreAsync(objHandle: HCkSFtp): HCkTask; stdcall;

function CkSFtp_SetCreateDt(objHandle: HCkSFtp; pathOrHandle: PWideChar; isHandle: wordbool; createDateTime: HCkDateTime): wordbool; stdcall;

function CkSFtp_SetCreateDtAsync(objHandle: HCkSFtp; pathOrHandle: PWideChar; isHandle: wordbool; createDateTime: HCkDateTime): HCkTask; stdcall;

function CkSFtp_SetCreateTimeStr(objHandle: HCkSFtp; pathOrHandle: PWideChar; bIsHandle: wordbool; dateTimeStr: PWideChar): wordbool; stdcall;

function CkSFtp_SetCreateTimeStrAsync(objHandle: HCkSFtp; pathOrHandle: PWideChar; bIsHandle: wordbool; dateTimeStr: PWideChar): HCkTask; stdcall;

function CkSFtp_SetLastAccessDt(objHandle: HCkSFtp; pathOrHandle: PWideChar; isHandle: wordbool; accessDateTime: HCkDateTime): wordbool; stdcall;

function CkSFtp_SetLastAccessDtAsync(objHandle: HCkSFtp; pathOrHandle: PWideChar; isHandle: wordbool; accessDateTime: HCkDateTime): HCkTask; stdcall;

function CkSFtp_SetLastAccessTimeStr(objHandle: HCkSFtp; pathOrHandle: PWideChar; bIsHandle: wordbool; dateTimeStr: PWideChar): wordbool; stdcall;

function CkSFtp_SetLastAccessTimeStrAsync(objHandle: HCkSFtp; pathOrHandle: PWideChar; bIsHandle: wordbool; dateTimeStr: PWideChar): HCkTask; stdcall;

function CkSFtp_SetLastModifiedDt(objHandle: HCkSFtp; pathOrHandle: PWideChar; isHandle: wordbool; modifiedDateTime: HCkDateTime): wordbool; stdcall;

function CkSFtp_SetLastModifiedDtAsync(objHandle: HCkSFtp; pathOrHandle: PWideChar; isHandle: wordbool; modifiedDateTime: HCkDateTime): HCkTask; stdcall;

function CkSFtp_SetLastModifiedTimeStr(objHandle: HCkSFtp; pathOrHandle: PWideChar; bIsHandle: wordbool; dateTimeStr: PWideChar): wordbool; stdcall;

function CkSFtp_SetLastModifiedTimeStrAsync(objHandle: HCkSFtp; pathOrHandle: PWideChar; bIsHandle: wordbool; dateTimeStr: PWideChar): HCkTask; stdcall;

function CkSFtp_SetOwnerAndGroup(objHandle: HCkSFtp; pathOrHandle: PWideChar; isHandle: wordbool; owner: PWideChar; group: PWideChar): wordbool; stdcall;

function CkSFtp_SetOwnerAndGroupAsync(objHandle: HCkSFtp; pathOrHandle: PWideChar; isHandle: wordbool; owner: PWideChar; group: PWideChar): HCkTask; stdcall;

function CkSFtp_SetPermissions(objHandle: HCkSFtp; pathOrHandle: PWideChar; isHandle: wordbool; permissions: Integer): wordbool; stdcall;

function CkSFtp_SetPermissionsAsync(objHandle: HCkSFtp; pathOrHandle: PWideChar; isHandle: wordbool; permissions: Integer): HCkTask; stdcall;

function CkSFtp_StartKeyboardAuth(objHandle: HCkSFtp; login: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkSFtp__startKeyboardAuth(objHandle: HCkSFtp; login: PWideChar): PWideChar; stdcall;

function CkSFtp_StartKeyboardAuthAsync(objHandle: HCkSFtp; login: PWideChar): HCkTask; stdcall;

function CkSFtp_SymLink(objHandle: HCkSFtp; oldPath: PWideChar; newPath: PWideChar): wordbool; stdcall;

function CkSFtp_SymLinkAsync(objHandle: HCkSFtp; oldPath: PWideChar; newPath: PWideChar): HCkTask; stdcall;

function CkSFtp_SyncTreeDownload(objHandle: HCkSFtp; remoteRoot: PWideChar; localRoot: PWideChar; mode: Integer; recurse: wordbool): wordbool; stdcall;

function CkSFtp_SyncTreeDownloadAsync(objHandle: HCkSFtp; remoteRoot: PWideChar; localRoot: PWideChar; mode: Integer; recurse: wordbool): HCkTask; stdcall;

function CkSFtp_SyncTreeUpload(objHandle: HCkSFtp; localBaseDir: PWideChar; remoteBaseDir: PWideChar; mode: Integer; bRecurse: wordbool): wordbool; stdcall;

function CkSFtp_SyncTreeUploadAsync(objHandle: HCkSFtp; localBaseDir: PWideChar; remoteBaseDir: PWideChar; mode: Integer; bRecurse: wordbool): HCkTask; stdcall;

function CkSFtp_UnlockComponent(objHandle: HCkSFtp; unlockCode: PWideChar): wordbool; stdcall;

function CkSFtp_UploadBd(objHandle: HCkSFtp; binData: HCkBinData; remoteFilePath: PWideChar): wordbool; stdcall;

function CkSFtp_UploadBdAsync(objHandle: HCkSFtp; binData: HCkBinData; remoteFilePath: PWideChar): HCkTask; stdcall;

function CkSFtp_UploadFile(objHandle: HCkSFtp; handle: PWideChar; fromLocalFilePath: PWideChar): wordbool; stdcall;

function CkSFtp_UploadFileAsync(objHandle: HCkSFtp; handle: PWideChar; fromLocalFilePath: PWideChar): HCkTask; stdcall;

function CkSFtp_UploadFileByName(objHandle: HCkSFtp; remoteFilePath: PWideChar; localFilePath: PWideChar): wordbool; stdcall;

function CkSFtp_UploadFileByNameAsync(objHandle: HCkSFtp; remoteFilePath: PWideChar; localFilePath: PWideChar): HCkTask; stdcall;

function CkSFtp_UploadSb(objHandle: HCkSFtp; sb: HCkStringBuilder; remoteFilePath: PWideChar; charset: PWideChar; includeBom: wordbool): wordbool; stdcall;

function CkSFtp_UploadSbAsync(objHandle: HCkSFtp; sb: HCkStringBuilder; remoteFilePath: PWideChar; charset: PWideChar; includeBom: wordbool): HCkTask; stdcall;

function CkSFtp_WriteFileBd(objHandle: HCkSFtp; handle: PWideChar; bd: HCkBinData): wordbool; stdcall;

function CkSFtp_WriteFileBdAsync(objHandle: HCkSFtp; handle: PWideChar; bd: HCkBinData): HCkTask; stdcall;

function CkSFtp_WriteFileBytes(objHandle: HCkSFtp; handle: PWideChar; byteData: HCkByteData): wordbool; stdcall;

function CkSFtp_WriteFileBytesAsync(objHandle: HCkSFtp; handle: PWideChar; byteData: HCkByteData): HCkTask; stdcall;

function CkSFtp_WriteFileBytes32(objHandle: HCkSFtp; handle: PWideChar; offset: Integer; data: HCkByteData): wordbool; stdcall;

function CkSFtp_WriteFileBytes64(objHandle: HCkSFtp; handle: PWideChar; offset64: Int64; data: HCkByteData): wordbool; stdcall;

function CkSFtp_WriteFileBytes64s(objHandle: HCkSFtp; handle: PWideChar; offset64: PWideChar; data: HCkByteData): wordbool; stdcall;

function CkSFtp_WriteFileText(objHandle: HCkSFtp; handle: PWideChar; charset: PWideChar; textData: PWideChar): wordbool; stdcall;

function CkSFtp_WriteFileTextAsync(objHandle: HCkSFtp; handle: PWideChar; charset: PWideChar; textData: PWideChar): HCkTask; stdcall;

function CkSFtp_WriteFileText32(objHandle: HCkSFtp; handle: PWideChar; offset32: Integer; charset: PWideChar; textData: PWideChar): wordbool; stdcall;

function CkSFtp_WriteFileText64(objHandle: HCkSFtp; handle: PWideChar; offset64: Int64; charset: PWideChar; textData: PWideChar): wordbool; stdcall;

function CkSFtp_WriteFileText64s(objHandle: HCkSFtp; handle: PWideChar; offset64: PWideChar; charset: PWideChar; textData: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkSFtp_Create; external DLLName;
procedure CkSFtp_Dispose; external DLLName;

procedure CkSFtp_SetAbortCheck; external DLLName;
procedure CkSFtp_SetProgressInfo; external DLLName;
procedure CkSFtp_SetPercentDone; external DLLName;
procedure CkSFtp_SetTaskCompleted; external DLLName;
function CkSFtp_getAbortCurrent; external DLLName;
procedure CkSFtp_putAbortCurrent; external DLLName;
procedure CkSFtp_getAccumulateBuffer; external DLLName;
function CkSFtp_getAuthFailReason; external DLLName;
function CkSFtp_getBandwidthThrottleDown; external DLLName;
procedure CkSFtp_putBandwidthThrottleDown; external DLLName;
function CkSFtp_getBandwidthThrottleUp; external DLLName;
procedure CkSFtp_putBandwidthThrottleUp; external DLLName;
procedure CkSFtp_getClientIdentifier; external DLLName;
procedure CkSFtp_putClientIdentifier; external DLLName;
function CkSFtp__clientIdentifier; external DLLName;
procedure CkSFtp_getClientIpAddress; external DLLName;
procedure CkSFtp_putClientIpAddress; external DLLName;
function CkSFtp__clientIpAddress; external DLLName;
function CkSFtp_getConnectTimeoutMs; external DLLName;
procedure CkSFtp_putConnectTimeoutMs; external DLLName;
procedure CkSFtp_getDebugLogFilePath; external DLLName;
procedure CkSFtp_putDebugLogFilePath; external DLLName;
function CkSFtp__debugLogFilePath; external DLLName;
function CkSFtp_getDisconnectCode; external DLLName;
procedure CkSFtp_getDisconnectReason; external DLLName;
function CkSFtp__disconnectReason; external DLLName;
function CkSFtp_getEnableCache; external DLLName;
procedure CkSFtp_putEnableCache; external DLLName;
function CkSFtp_getEnableCompression; external DLLName;
procedure CkSFtp_putEnableCompression; external DLLName;
procedure CkSFtp_getFilenameCharset; external DLLName;
procedure CkSFtp_putFilenameCharset; external DLLName;
function CkSFtp__filenameCharset; external DLLName;
procedure CkSFtp_getForceCipher; external DLLName;
procedure CkSFtp_putForceCipher; external DLLName;
function CkSFtp__forceCipher; external DLLName;
function CkSFtp_getForceV3; external DLLName;
procedure CkSFtp_putForceV3; external DLLName;
function CkSFtp_getHeartbeatMs; external DLLName;
procedure CkSFtp_putHeartbeatMs; external DLLName;
procedure CkSFtp_getHostKeyAlg; external DLLName;
procedure CkSFtp_putHostKeyAlg; external DLLName;
function CkSFtp__hostKeyAlg; external DLLName;
procedure CkSFtp_getHostKeyFingerprint; external DLLName;
function CkSFtp__hostKeyFingerprint; external DLLName;
procedure CkSFtp_getHttpProxyAuthMethod; external DLLName;
procedure CkSFtp_putHttpProxyAuthMethod; external DLLName;
function CkSFtp__httpProxyAuthMethod; external DLLName;
procedure CkSFtp_getHttpProxyDomain; external DLLName;
procedure CkSFtp_putHttpProxyDomain; external DLLName;
function CkSFtp__httpProxyDomain; external DLLName;
procedure CkSFtp_getHttpProxyHostname; external DLLName;
procedure CkSFtp_putHttpProxyHostname; external DLLName;
function CkSFtp__httpProxyHostname; external DLLName;
procedure CkSFtp_getHttpProxyPassword; external DLLName;
procedure CkSFtp_putHttpProxyPassword; external DLLName;
function CkSFtp__httpProxyPassword; external DLLName;
function CkSFtp_getHttpProxyPort; external DLLName;
procedure CkSFtp_putHttpProxyPort; external DLLName;
procedure CkSFtp_getHttpProxyUsername; external DLLName;
procedure CkSFtp_putHttpProxyUsername; external DLLName;
function CkSFtp__httpProxyUsername; external DLLName;
function CkSFtp_getIdleTimeoutMs; external DLLName;
procedure CkSFtp_putIdleTimeoutMs; external DLLName;
function CkSFtp_getIncludeDotDirs; external DLLName;
procedure CkSFtp_putIncludeDotDirs; external DLLName;
function CkSFtp_getInitializeFailCode; external DLLName;
procedure CkSFtp_getInitializeFailReason; external DLLName;
function CkSFtp__initializeFailReason; external DLLName;
function CkSFtp_getIsConnected; external DLLName;
function CkSFtp_getKeepSessionLog; external DLLName;
procedure CkSFtp_putKeepSessionLog; external DLLName;
procedure CkSFtp_getLastErrorHtml; external DLLName;
function CkSFtp__lastErrorHtml; external DLLName;
procedure CkSFtp_getLastErrorText; external DLLName;
function CkSFtp__lastErrorText; external DLLName;
procedure CkSFtp_getLastErrorXml; external DLLName;
function CkSFtp__lastErrorXml; external DLLName;
function CkSFtp_getLastMethodSuccess; external DLLName;
procedure CkSFtp_putLastMethodSuccess; external DLLName;
function CkSFtp_getLastStatusCode; external DLLName;
procedure CkSFtp_getLastStatusMessage; external DLLName;
function CkSFtp__lastStatusMessage; external DLLName;
function CkSFtp_getMaxPacketSize; external DLLName;
procedure CkSFtp_putMaxPacketSize; external DLLName;
function CkSFtp_getPasswordChangeRequested; external DLLName;
function CkSFtp_getPercentDoneScale; external DLLName;
procedure CkSFtp_putPercentDoneScale; external DLLName;
function CkSFtp_getPreferIpv6; external DLLName;
procedure CkSFtp_putPreferIpv6; external DLLName;
function CkSFtp_getPreserveDate; external DLLName;
procedure CkSFtp_putPreserveDate; external DLLName;
function CkSFtp_getProtocolVersion; external DLLName;
procedure CkSFtp_getReadDirMustMatch; external DLLName;
procedure CkSFtp_putReadDirMustMatch; external DLLName;
function CkSFtp__readDirMustMatch; external DLLName;
procedure CkSFtp_getReadDirMustNotMatch; external DLLName;
procedure CkSFtp_putReadDirMustNotMatch; external DLLName;
function CkSFtp__readDirMustNotMatch; external DLLName;
procedure CkSFtp_getServerIdentifier; external DLLName;
function CkSFtp__serverIdentifier; external DLLName;
procedure CkSFtp_getSessionLog; external DLLName;
function CkSFtp__sessionLog; external DLLName;
procedure CkSFtp_getSocksHostname; external DLLName;
procedure CkSFtp_putSocksHostname; external DLLName;
function CkSFtp__socksHostname; external DLLName;
procedure CkSFtp_getSocksPassword; external DLLName;
procedure CkSFtp_putSocksPassword; external DLLName;
function CkSFtp__socksPassword; external DLLName;
function CkSFtp_getSocksPort; external DLLName;
procedure CkSFtp_putSocksPort; external DLLName;
procedure CkSFtp_getSocksUsername; external DLLName;
procedure CkSFtp_putSocksUsername; external DLLName;
function CkSFtp__socksUsername; external DLLName;
function CkSFtp_getSocksVersion; external DLLName;
procedure CkSFtp_putSocksVersion; external DLLName;
function CkSFtp_getSoRcvBuf; external DLLName;
procedure CkSFtp_putSoRcvBuf; external DLLName;
function CkSFtp_getSoSndBuf; external DLLName;
procedure CkSFtp_putSoSndBuf; external DLLName;
function CkSFtp_getSyncCreateAllLocalDirs; external DLLName;
procedure CkSFtp_putSyncCreateAllLocalDirs; external DLLName;
procedure CkSFtp_getSyncDirectives; external DLLName;
procedure CkSFtp_putSyncDirectives; external DLLName;
function CkSFtp__syncDirectives; external DLLName;
procedure CkSFtp_getSyncedFiles; external DLLName;
procedure CkSFtp_putSyncedFiles; external DLLName;
function CkSFtp__syncedFiles; external DLLName;
procedure CkSFtp_getSyncMustMatch; external DLLName;
procedure CkSFtp_putSyncMustMatch; external DLLName;
function CkSFtp__syncMustMatch; external DLLName;
procedure CkSFtp_getSyncMustMatchDir; external DLLName;
procedure CkSFtp_putSyncMustMatchDir; external DLLName;
function CkSFtp__syncMustMatchDir; external DLLName;
procedure CkSFtp_getSyncMustNotMatch; external DLLName;
procedure CkSFtp_putSyncMustNotMatch; external DLLName;
function CkSFtp__syncMustNotMatch; external DLLName;
procedure CkSFtp_getSyncMustNotMatchDir; external DLLName;
procedure CkSFtp_putSyncMustNotMatchDir; external DLLName;
function CkSFtp__syncMustNotMatchDir; external DLLName;
function CkSFtp_getTcpNoDelay; external DLLName;
procedure CkSFtp_putTcpNoDelay; external DLLName;
procedure CkSFtp_getUncommonOptions; external DLLName;
procedure CkSFtp_putUncommonOptions; external DLLName;
function CkSFtp__uncommonOptions; external DLLName;
function CkSFtp_getUploadChunkSize; external DLLName;
procedure CkSFtp_putUploadChunkSize; external DLLName;
procedure CkSFtp_getUserAuthBanner; external DLLName;
procedure CkSFtp_putUserAuthBanner; external DLLName;
function CkSFtp__userAuthBanner; external DLLName;
function CkSFtp_getUtcMode; external DLLName;
procedure CkSFtp_putUtcMode; external DLLName;
function CkSFtp_getVerboseLogging; external DLLName;
procedure CkSFtp_putVerboseLogging; external DLLName;
procedure CkSFtp_getVersion; external DLLName;
function CkSFtp__version; external DLLName;
function CkSFtp_getXferByteCount; external DLLName;
function CkSFtp_getXferByteCount64; external DLLName;
function CkSFtp_AccumulateBytes; external DLLName;
function CkSFtp_AccumulateBytesAsync; external DLLName;
function CkSFtp_Add64; external DLLName;
function CkSFtp__add64; external DLLName;
function CkSFtp_AuthenticatePk; external DLLName;
function CkSFtp_AuthenticatePkAsync; external DLLName;
function CkSFtp_AuthenticatePw; external DLLName;
function CkSFtp_AuthenticatePwAsync; external DLLName;
function CkSFtp_AuthenticatePwPk; external DLLName;
function CkSFtp_AuthenticatePwPkAsync; external DLLName;
function CkSFtp_AuthenticateSecPw; external DLLName;
function CkSFtp_AuthenticateSecPwAsync; external DLLName;
function CkSFtp_AuthenticateSecPwPk; external DLLName;
function CkSFtp_AuthenticateSecPwPkAsync; external DLLName;
procedure CkSFtp_ClearAccumulateBuffer; external DLLName;
procedure CkSFtp_ClearCache; external DLLName;
procedure CkSFtp_ClearSessionLog; external DLLName;
function CkSFtp_CloseHandle; external DLLName;
function CkSFtp_CloseHandleAsync; external DLLName;
function CkSFtp_Connect; external DLLName;
function CkSFtp_ConnectAsync; external DLLName;
function CkSFtp_ConnectThroughSsh; external DLLName;
function CkSFtp_ConnectThroughSshAsync; external DLLName;
function CkSFtp_ContinueKeyboardAuth; external DLLName;
function CkSFtp__continueKeyboardAuth; external DLLName;
function CkSFtp_ContinueKeyboardAuthAsync; external DLLName;
function CkSFtp_CopyFileAttr; external DLLName;
function CkSFtp_CopyFileAttrAsync; external DLLName;
function CkSFtp_CreateDir; external DLLName;
function CkSFtp_CreateDirAsync; external DLLName;
procedure CkSFtp_Disconnect; external DLLName;
function CkSFtp_DownloadBd; external DLLName;
function CkSFtp_DownloadBdAsync; external DLLName;
function CkSFtp_DownloadFile; external DLLName;
function CkSFtp_DownloadFileAsync; external DLLName;
function CkSFtp_DownloadFileByName; external DLLName;
function CkSFtp_DownloadFileByNameAsync; external DLLName;
function CkSFtp_DownloadSb; external DLLName;
function CkSFtp_DownloadSbAsync; external DLLName;
function CkSFtp_Eof; external DLLName;
function CkSFtp_FileExists; external DLLName;
function CkSFtp_FileExistsAsync; external DLLName;
function CkSFtp_Fsync; external DLLName;
function CkSFtp_FsyncAsync; external DLLName;
function CkSFtp_GetFileCreateDt; external DLLName;
function CkSFtp_GetFileCreateDtAsync; external DLLName;
function CkSFtp_GetFileCreateTimeStr; external DLLName;
function CkSFtp__getFileCreateTimeStr; external DLLName;
function CkSFtp_GetFileCreateTimeStrAsync; external DLLName;
function CkSFtp_GetFileGroup; external DLLName;
function CkSFtp__getFileGroup; external DLLName;
function CkSFtp_GetFileGroupAsync; external DLLName;
function CkSFtp_GetFileLastAccessDt; external DLLName;
function CkSFtp_GetFileLastAccessDtAsync; external DLLName;
function CkSFtp_GetFileLastAccessStr; external DLLName;
function CkSFtp__getFileLastAccessStr; external DLLName;
function CkSFtp_GetFileLastAccessStrAsync; external DLLName;
function CkSFtp_GetFileLastModifiedDt; external DLLName;
function CkSFtp_GetFileLastModifiedDtAsync; external DLLName;
function CkSFtp_GetFileLastModifiedStr; external DLLName;
function CkSFtp__getFileLastModifiedStr; external DLLName;
function CkSFtp_GetFileLastModifiedStrAsync; external DLLName;
function CkSFtp_GetFileOwner; external DLLName;
function CkSFtp__getFileOwner; external DLLName;
function CkSFtp_GetFileOwnerAsync; external DLLName;
function CkSFtp_GetFilePermissions; external DLLName;
function CkSFtp_GetFilePermissionsAsync; external DLLName;
function CkSFtp_GetFileSize32; external DLLName;
function CkSFtp_GetFileSize64; external DLLName;
function CkSFtp_GetFileSizeStr; external DLLName;
function CkSFtp__getFileSizeStr; external DLLName;
function CkSFtp_GetHostKeyFP; external DLLName;
function CkSFtp__getHostKeyFP; external DLLName;
function CkSFtp_HardLink; external DLLName;
function CkSFtp_HardLinkAsync; external DLLName;
function CkSFtp_InitializeSftp; external DLLName;
function CkSFtp_InitializeSftpAsync; external DLLName;
function CkSFtp_LastJsonData; external DLLName;
function CkSFtp_LastReadFailed; external DLLName;
function CkSFtp_LastReadNumBytes; external DLLName;
function CkSFtp_LoadTaskCaller; external DLLName;
function CkSFtp_OpenDir; external DLLName;
function CkSFtp__openDir; external DLLName;
function CkSFtp_OpenDirAsync; external DLLName;
function CkSFtp_OpenFile; external DLLName;
function CkSFtp__openFile; external DLLName;
function CkSFtp_OpenFileAsync; external DLLName;
function CkSFtp_ReadDir; external DLLName;
function CkSFtp_ReadDirAsync; external DLLName;
function CkSFtp_ReadFileBd; external DLLName;
function CkSFtp_ReadFileBdAsync; external DLLName;
function CkSFtp_ReadFileBytes; external DLLName;
function CkSFtp_ReadFileBytesAsync; external DLLName;
function CkSFtp_ReadFileBytes32; external DLLName;
function CkSFtp_ReadFileBytes64; external DLLName;
function CkSFtp_ReadFileBytes64s; external DLLName;
function CkSFtp_ReadFileText; external DLLName;
function CkSFtp__readFileText; external DLLName;
function CkSFtp_ReadFileTextAsync; external DLLName;
function CkSFtp_ReadFileText32; external DLLName;
function CkSFtp__readFileText32; external DLLName;
function CkSFtp_ReadFileText64; external DLLName;
function CkSFtp__readFileText64; external DLLName;
function CkSFtp_ReadFileText64s; external DLLName;
function CkSFtp__readFileText64s; external DLLName;
function CkSFtp_ReadLink; external DLLName;
function CkSFtp__readLink; external DLLName;
function CkSFtp_ReadLinkAsync; external DLLName;
function CkSFtp_RealPath; external DLLName;
function CkSFtp__realPath; external DLLName;
function CkSFtp_RealPathAsync; external DLLName;
function CkSFtp_RemoveDir; external DLLName;
function CkSFtp_RemoveDirAsync; external DLLName;
function CkSFtp_RemoveFile; external DLLName;
function CkSFtp_RemoveFileAsync; external DLLName;
function CkSFtp_RenameFileOrDir; external DLLName;
function CkSFtp_RenameFileOrDirAsync; external DLLName;
function CkSFtp_ResumeDownloadFileByName; external DLLName;
function CkSFtp_ResumeDownloadFileByNameAsync; external DLLName;
function CkSFtp_ResumeUploadFileByName; external DLLName;
function CkSFtp_ResumeUploadFileByNameAsync; external DLLName;
function CkSFtp_SaveLastError; external DLLName;
function CkSFtp_SendIgnore; external DLLName;
function CkSFtp_SendIgnoreAsync; external DLLName;
function CkSFtp_SetCreateDt; external DLLName;
function CkSFtp_SetCreateDtAsync; external DLLName;
function CkSFtp_SetCreateTimeStr; external DLLName;
function CkSFtp_SetCreateTimeStrAsync; external DLLName;
function CkSFtp_SetLastAccessDt; external DLLName;
function CkSFtp_SetLastAccessDtAsync; external DLLName;
function CkSFtp_SetLastAccessTimeStr; external DLLName;
function CkSFtp_SetLastAccessTimeStrAsync; external DLLName;
function CkSFtp_SetLastModifiedDt; external DLLName;
function CkSFtp_SetLastModifiedDtAsync; external DLLName;
function CkSFtp_SetLastModifiedTimeStr; external DLLName;
function CkSFtp_SetLastModifiedTimeStrAsync; external DLLName;
function CkSFtp_SetOwnerAndGroup; external DLLName;
function CkSFtp_SetOwnerAndGroupAsync; external DLLName;
function CkSFtp_SetPermissions; external DLLName;
function CkSFtp_SetPermissionsAsync; external DLLName;
function CkSFtp_StartKeyboardAuth; external DLLName;
function CkSFtp__startKeyboardAuth; external DLLName;
function CkSFtp_StartKeyboardAuthAsync; external DLLName;
function CkSFtp_SymLink; external DLLName;
function CkSFtp_SymLinkAsync; external DLLName;
function CkSFtp_SyncTreeDownload; external DLLName;
function CkSFtp_SyncTreeDownloadAsync; external DLLName;
function CkSFtp_SyncTreeUpload; external DLLName;
function CkSFtp_SyncTreeUploadAsync; external DLLName;
function CkSFtp_UnlockComponent; external DLLName;
function CkSFtp_UploadBd; external DLLName;
function CkSFtp_UploadBdAsync; external DLLName;
function CkSFtp_UploadFile; external DLLName;
function CkSFtp_UploadFileAsync; external DLLName;
function CkSFtp_UploadFileByName; external DLLName;
function CkSFtp_UploadFileByNameAsync; external DLLName;
function CkSFtp_UploadSb; external DLLName;
function CkSFtp_UploadSbAsync; external DLLName;
function CkSFtp_WriteFileBd; external DLLName;
function CkSFtp_WriteFileBdAsync; external DLLName;
function CkSFtp_WriteFileBytes; external DLLName;
function CkSFtp_WriteFileBytesAsync; external DLLName;
function CkSFtp_WriteFileBytes32; external DLLName;
function CkSFtp_WriteFileBytes64; external DLLName;
function CkSFtp_WriteFileBytes64s; external DLLName;
function CkSFtp_WriteFileText; external DLLName;
function CkSFtp_WriteFileTextAsync; external DLLName;
function CkSFtp_WriteFileText32; external DLLName;
function CkSFtp_WriteFileText64; external DLLName;
function CkSFtp_WriteFileText64s; external DLLName;



end.
