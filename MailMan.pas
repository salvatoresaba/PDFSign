unit MailMan;

interface

type

HCkEmailBundle = Pointer;
HCkSshKey = Pointer;
HCkSecureString = Pointer;
HCkStringBuilder = Pointer;
HCkCert = Pointer;
HCkSocket = Pointer;
HCkSsh = Pointer;
HCkString = Pointer;
HCkMailMan = Pointer;
HCkByteData = Pointer;
HCkXmlCertVault = Pointer;
HCkPrivateKey = Pointer;
HCkEmail = Pointer;
HCkStringArray = Pointer;
HCkTask = Pointer;
HCkJsonObject = Pointer;
HCkBinData = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TMailManAbortCheck = function(): Integer; cdecl;
TMailManProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TMailManPercentDone = function(pctDone: Integer): Integer; cdecl;
TMailManTaskCompleted = procedure(task: HCkTask); cdecl;


function CkMailMan_Create: HCkMailMan; stdcall;
procedure CkMailMan_Dispose(handle: HCkMailMan); stdcall;

procedure CkMailMan_SetAbortCheck(objHandle: HCkMailMan; fn: TMailManAbortCheck) stdcall;
procedure CkMailMan_SetProgressInfo(objHandle: HCkMailMan; fn: TMailManProgressInfo) stdcall;
procedure CkMailMan_SetPercentDone(objHandle: HCkMailMan; fn: TMailManPercentDone) stdcall;
procedure CkMailMan_SetTaskCompleted(objHandle: HCkMailMan; fn: TMailManTaskCompleted) stdcall;
function CkMailMan_getAbortCurrent(objHandle: HCkMailMan): wordbool; stdcall;

procedure CkMailMan_putAbortCurrent(objHandle: HCkMailMan; newPropVal: wordbool); stdcall;

function CkMailMan_getAllOrNone(objHandle: HCkMailMan): wordbool; stdcall;

procedure CkMailMan_putAllOrNone(objHandle: HCkMailMan; newPropVal: wordbool); stdcall;

function CkMailMan_getAutoFix(objHandle: HCkMailMan): wordbool; stdcall;

procedure CkMailMan_putAutoFix(objHandle: HCkMailMan; newPropVal: wordbool); stdcall;

function CkMailMan_getAutoGenMessageId(objHandle: HCkMailMan): wordbool; stdcall;

procedure CkMailMan_putAutoGenMessageId(objHandle: HCkMailMan; newPropVal: wordbool); stdcall;

function CkMailMan_getAutoSmtpRset(objHandle: HCkMailMan): wordbool; stdcall;

procedure CkMailMan_putAutoSmtpRset(objHandle: HCkMailMan; newPropVal: wordbool); stdcall;

function CkMailMan_getAutoUnwrapSecurity(objHandle: HCkMailMan): wordbool; stdcall;

procedure CkMailMan_putAutoUnwrapSecurity(objHandle: HCkMailMan; newPropVal: wordbool); stdcall;

procedure CkMailMan_getClientIpAddress(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putClientIpAddress(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__clientIpAddress(objHandle: HCkMailMan): PWideChar; stdcall;

function CkMailMan_getConnectFailReason(objHandle: HCkMailMan): Integer; stdcall;

function CkMailMan_getConnectTimeout(objHandle: HCkMailMan): Integer; stdcall;

procedure CkMailMan_putConnectTimeout(objHandle: HCkMailMan; newPropVal: Integer); stdcall;

procedure CkMailMan_getDebugLogFilePath(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putDebugLogFilePath(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__debugLogFilePath(objHandle: HCkMailMan): PWideChar; stdcall;

procedure CkMailMan_getDsnEnvid(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putDsnEnvid(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__dsnEnvid(objHandle: HCkMailMan): PWideChar; stdcall;

procedure CkMailMan_getDsnNotify(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putDsnNotify(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__dsnNotify(objHandle: HCkMailMan): PWideChar; stdcall;

procedure CkMailMan_getDsnRet(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putDsnRet(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__dsnRet(objHandle: HCkMailMan): PWideChar; stdcall;

function CkMailMan_getEmbedCertChain(objHandle: HCkMailMan): wordbool; stdcall;

procedure CkMailMan_putEmbedCertChain(objHandle: HCkMailMan; newPropVal: wordbool); stdcall;

procedure CkMailMan_getFilter(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putFilter(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__filter(objHandle: HCkMailMan): PWideChar; stdcall;

function CkMailMan_getHeartbeatMs(objHandle: HCkMailMan): Integer; stdcall;

procedure CkMailMan_putHeartbeatMs(objHandle: HCkMailMan; newPropVal: Integer); stdcall;

procedure CkMailMan_getHeloHostname(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putHeloHostname(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__heloHostname(objHandle: HCkMailMan): PWideChar; stdcall;

procedure CkMailMan_getHttpProxyAuthMethod(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putHttpProxyAuthMethod(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__httpProxyAuthMethod(objHandle: HCkMailMan): PWideChar; stdcall;

procedure CkMailMan_getHttpProxyDomain(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putHttpProxyDomain(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__httpProxyDomain(objHandle: HCkMailMan): PWideChar; stdcall;

procedure CkMailMan_getHttpProxyHostname(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putHttpProxyHostname(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__httpProxyHostname(objHandle: HCkMailMan): PWideChar; stdcall;

procedure CkMailMan_getHttpProxyPassword(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putHttpProxyPassword(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__httpProxyPassword(objHandle: HCkMailMan): PWideChar; stdcall;

function CkMailMan_getHttpProxyPort(objHandle: HCkMailMan): Integer; stdcall;

procedure CkMailMan_putHttpProxyPort(objHandle: HCkMailMan; newPropVal: Integer); stdcall;

procedure CkMailMan_getHttpProxyUsername(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putHttpProxyUsername(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__httpProxyUsername(objHandle: HCkMailMan): PWideChar; stdcall;

function CkMailMan_getImmediateDelete(objHandle: HCkMailMan): wordbool; stdcall;

procedure CkMailMan_putImmediateDelete(objHandle: HCkMailMan; newPropVal: wordbool); stdcall;

function CkMailMan_getIncludeRootCert(objHandle: HCkMailMan): wordbool; stdcall;

procedure CkMailMan_putIncludeRootCert(objHandle: HCkMailMan; newPropVal: wordbool); stdcall;

function CkMailMan_getIsPop3Connected(objHandle: HCkMailMan): wordbool; stdcall;

function CkMailMan_getIsSmtpConnected(objHandle: HCkMailMan): wordbool; stdcall;

procedure CkMailMan_getLastErrorHtml(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

function CkMailMan__lastErrorHtml(objHandle: HCkMailMan): PWideChar; stdcall;

procedure CkMailMan_getLastErrorText(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

function CkMailMan__lastErrorText(objHandle: HCkMailMan): PWideChar; stdcall;

procedure CkMailMan_getLastErrorXml(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

function CkMailMan__lastErrorXml(objHandle: HCkMailMan): PWideChar; stdcall;

function CkMailMan_getLastMethodSuccess(objHandle: HCkMailMan): wordbool; stdcall;

procedure CkMailMan_putLastMethodSuccess(objHandle: HCkMailMan; newPropVal: wordbool); stdcall;

procedure CkMailMan_getLastSendQFilename(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

function CkMailMan__lastSendQFilename(objHandle: HCkMailMan): PWideChar; stdcall;

function CkMailMan_getLastSmtpStatus(objHandle: HCkMailMan): Integer; stdcall;

procedure CkMailMan_getLastSmtpStatusMsg(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

function CkMailMan__lastSmtpStatusMsg(objHandle: HCkMailMan): PWideChar; stdcall;

procedure CkMailMan_getLogMailReceivedFilename(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putLogMailReceivedFilename(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__logMailReceivedFilename(objHandle: HCkMailMan): PWideChar; stdcall;

procedure CkMailMan_getLogMailSentFilename(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putLogMailSentFilename(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__logMailSentFilename(objHandle: HCkMailMan): PWideChar; stdcall;

procedure CkMailMan_getMailHost(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putMailHost(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__mailHost(objHandle: HCkMailMan): PWideChar; stdcall;

function CkMailMan_getMailPort(objHandle: HCkMailMan): Integer; stdcall;

procedure CkMailMan_putMailPort(objHandle: HCkMailMan; newPropVal: Integer); stdcall;

function CkMailMan_getMaxCount(objHandle: HCkMailMan): Integer; stdcall;

procedure CkMailMan_putMaxCount(objHandle: HCkMailMan; newPropVal: Integer); stdcall;

procedure CkMailMan_getOAuth2AccessToken(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putOAuth2AccessToken(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__oAuth2AccessToken(objHandle: HCkMailMan): PWideChar; stdcall;

function CkMailMan_getOpaqueSigning(objHandle: HCkMailMan): wordbool; stdcall;

procedure CkMailMan_putOpaqueSigning(objHandle: HCkMailMan; newPropVal: wordbool); stdcall;

procedure CkMailMan_getP7mEncryptAttachFilename(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putP7mEncryptAttachFilename(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__p7mEncryptAttachFilename(objHandle: HCkMailMan): PWideChar; stdcall;

procedure CkMailMan_getP7mSigAttachFilename(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putP7mSigAttachFilename(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__p7mSigAttachFilename(objHandle: HCkMailMan): PWideChar; stdcall;

procedure CkMailMan_getP7sSigAttachFilename(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putP7sSigAttachFilename(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__p7sSigAttachFilename(objHandle: HCkMailMan): PWideChar; stdcall;

function CkMailMan_getPercentDoneScale(objHandle: HCkMailMan): Integer; stdcall;

procedure CkMailMan_putPercentDoneScale(objHandle: HCkMailMan; newPropVal: Integer); stdcall;

function CkMailMan_getPop3SessionId(objHandle: HCkMailMan): Integer; stdcall;

procedure CkMailMan_getPop3SessionLog(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

function CkMailMan__pop3SessionLog(objHandle: HCkMailMan): PWideChar; stdcall;

function CkMailMan_getPop3SPA(objHandle: HCkMailMan): wordbool; stdcall;

procedure CkMailMan_putPop3SPA(objHandle: HCkMailMan; newPropVal: wordbool); stdcall;

function CkMailMan_getPop3SslServerCertVerified(objHandle: HCkMailMan): wordbool; stdcall;

function CkMailMan_getPop3Stls(objHandle: HCkMailMan): wordbool; stdcall;

procedure CkMailMan_putPop3Stls(objHandle: HCkMailMan; newPropVal: wordbool); stdcall;

function CkMailMan_getPop3StlsIfPossible(objHandle: HCkMailMan): wordbool; stdcall;

procedure CkMailMan_putPop3StlsIfPossible(objHandle: HCkMailMan; newPropVal: wordbool); stdcall;

procedure CkMailMan_getPopPassword(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putPopPassword(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__popPassword(objHandle: HCkMailMan): PWideChar; stdcall;

procedure CkMailMan_getPopPasswordBase64(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putPopPasswordBase64(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__popPasswordBase64(objHandle: HCkMailMan): PWideChar; stdcall;

function CkMailMan_getPopSsl(objHandle: HCkMailMan): wordbool; stdcall;

procedure CkMailMan_putPopSsl(objHandle: HCkMailMan; newPropVal: wordbool); stdcall;

procedure CkMailMan_getPopUsername(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putPopUsername(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__popUsername(objHandle: HCkMailMan): PWideChar; stdcall;

function CkMailMan_getPreferIpv6(objHandle: HCkMailMan): wordbool; stdcall;

procedure CkMailMan_putPreferIpv6(objHandle: HCkMailMan; newPropVal: wordbool); stdcall;

function CkMailMan_getReadTimeout(objHandle: HCkMailMan): Integer; stdcall;

procedure CkMailMan_putReadTimeout(objHandle: HCkMailMan; newPropVal: Integer); stdcall;

function CkMailMan_getRequireSslCertVerify(objHandle: HCkMailMan): wordbool; stdcall;

procedure CkMailMan_putRequireSslCertVerify(objHandle: HCkMailMan; newPropVal: wordbool); stdcall;

function CkMailMan_getResetDateOnLoad(objHandle: HCkMailMan): wordbool; stdcall;

procedure CkMailMan_putResetDateOnLoad(objHandle: HCkMailMan; newPropVal: wordbool); stdcall;

function CkMailMan_getSendBufferSize(objHandle: HCkMailMan): Integer; stdcall;

procedure CkMailMan_putSendBufferSize(objHandle: HCkMailMan; newPropVal: Integer); stdcall;

function CkMailMan_getSendIndividual(objHandle: HCkMailMan): wordbool; stdcall;

procedure CkMailMan_putSendIndividual(objHandle: HCkMailMan; newPropVal: wordbool); stdcall;

function CkMailMan_getSizeLimit(objHandle: HCkMailMan): Integer; stdcall;

procedure CkMailMan_putSizeLimit(objHandle: HCkMailMan; newPropVal: Integer); stdcall;

procedure CkMailMan_getSmtpAuthMethod(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putSmtpAuthMethod(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__smtpAuthMethod(objHandle: HCkMailMan): PWideChar; stdcall;

procedure CkMailMan_getSmtpFailReason(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

function CkMailMan__smtpFailReason(objHandle: HCkMailMan): PWideChar; stdcall;

procedure CkMailMan_getSmtpHost(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putSmtpHost(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__smtpHost(objHandle: HCkMailMan): PWideChar; stdcall;

procedure CkMailMan_getSmtpLoginDomain(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putSmtpLoginDomain(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__smtpLoginDomain(objHandle: HCkMailMan): PWideChar; stdcall;

procedure CkMailMan_getSmtpPassword(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putSmtpPassword(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__smtpPassword(objHandle: HCkMailMan): PWideChar; stdcall;

function CkMailMan_getSmtpPipelining(objHandle: HCkMailMan): wordbool; stdcall;

procedure CkMailMan_putSmtpPipelining(objHandle: HCkMailMan; newPropVal: wordbool); stdcall;

function CkMailMan_getSmtpPort(objHandle: HCkMailMan): Integer; stdcall;

procedure CkMailMan_putSmtpPort(objHandle: HCkMailMan; newPropVal: Integer); stdcall;

procedure CkMailMan_getSmtpSessionLog(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

function CkMailMan__smtpSessionLog(objHandle: HCkMailMan): PWideChar; stdcall;

function CkMailMan_getSmtpSsl(objHandle: HCkMailMan): wordbool; stdcall;

procedure CkMailMan_putSmtpSsl(objHandle: HCkMailMan; newPropVal: wordbool); stdcall;

function CkMailMan_getSmtpSslServerCertVerified(objHandle: HCkMailMan): wordbool; stdcall;

procedure CkMailMan_getSmtpUsername(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putSmtpUsername(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__smtpUsername(objHandle: HCkMailMan): PWideChar; stdcall;

procedure CkMailMan_getSocksHostname(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putSocksHostname(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__socksHostname(objHandle: HCkMailMan): PWideChar; stdcall;

procedure CkMailMan_getSocksPassword(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putSocksPassword(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__socksPassword(objHandle: HCkMailMan): PWideChar; stdcall;

function CkMailMan_getSocksPort(objHandle: HCkMailMan): Integer; stdcall;

procedure CkMailMan_putSocksPort(objHandle: HCkMailMan; newPropVal: Integer); stdcall;

procedure CkMailMan_getSocksUsername(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putSocksUsername(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__socksUsername(objHandle: HCkMailMan): PWideChar; stdcall;

function CkMailMan_getSocksVersion(objHandle: HCkMailMan): Integer; stdcall;

procedure CkMailMan_putSocksVersion(objHandle: HCkMailMan; newPropVal: Integer); stdcall;

function CkMailMan_getSoRcvBuf(objHandle: HCkMailMan): Integer; stdcall;

procedure CkMailMan_putSoRcvBuf(objHandle: HCkMailMan; newPropVal: Integer); stdcall;

function CkMailMan_getSoSndBuf(objHandle: HCkMailMan): Integer; stdcall;

procedure CkMailMan_putSoSndBuf(objHandle: HCkMailMan; newPropVal: Integer); stdcall;

procedure CkMailMan_getSslAllowedCiphers(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putSslAllowedCiphers(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__sslAllowedCiphers(objHandle: HCkMailMan): PWideChar; stdcall;

procedure CkMailMan_getSslProtocol(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putSslProtocol(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__sslProtocol(objHandle: HCkMailMan): PWideChar; stdcall;

function CkMailMan_getStartTLS(objHandle: HCkMailMan): wordbool; stdcall;

procedure CkMailMan_putStartTLS(objHandle: HCkMailMan; newPropVal: wordbool); stdcall;

function CkMailMan_getStartTLSifPossible(objHandle: HCkMailMan): wordbool; stdcall;

procedure CkMailMan_putStartTLSifPossible(objHandle: HCkMailMan; newPropVal: wordbool); stdcall;

procedure CkMailMan_getTlsCipherSuite(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

function CkMailMan__tlsCipherSuite(objHandle: HCkMailMan): PWideChar; stdcall;

procedure CkMailMan_getTlsPinSet(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putTlsPinSet(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__tlsPinSet(objHandle: HCkMailMan): PWideChar; stdcall;

procedure CkMailMan_getTlsVersion(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

function CkMailMan__tlsVersion(objHandle: HCkMailMan): PWideChar; stdcall;

procedure CkMailMan_getUncommonOptions(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

procedure CkMailMan_putUncommonOptions(objHandle: HCkMailMan; newPropVal: PWideChar); stdcall;

function CkMailMan__uncommonOptions(objHandle: HCkMailMan): PWideChar; stdcall;

function CkMailMan_getUseApop(objHandle: HCkMailMan): wordbool; stdcall;

procedure CkMailMan_putUseApop(objHandle: HCkMailMan; newPropVal: wordbool); stdcall;

function CkMailMan_getVerboseLogging(objHandle: HCkMailMan): wordbool; stdcall;

procedure CkMailMan_putVerboseLogging(objHandle: HCkMailMan; newPropVal: wordbool); stdcall;

procedure CkMailMan_getVersion(objHandle: HCkMailMan; outPropVal: HCkString); stdcall;

function CkMailMan__version(objHandle: HCkMailMan): PWideChar; stdcall;

function CkMailMan_AddPfxSourceData(objHandle: HCkMailMan; pfxData: HCkByteData; password: PWideChar): wordbool; stdcall;

function CkMailMan_AddPfxSourceFile(objHandle: HCkMailMan; pfxFilePath: PWideChar; password: PWideChar): wordbool; stdcall;

function CkMailMan_CheckMail(objHandle: HCkMailMan): Integer; stdcall;

function CkMailMan_CheckMailAsync(objHandle: HCkMailMan): HCkTask; stdcall;

procedure CkMailMan_ClearBadEmailAddresses(objHandle: HCkMailMan); stdcall;

procedure CkMailMan_ClearPop3SessionLog(objHandle: HCkMailMan); stdcall;

procedure CkMailMan_ClearSmtpSessionLog(objHandle: HCkMailMan); stdcall;

function CkMailMan_CloseSmtpConnection(objHandle: HCkMailMan): wordbool; stdcall;

function CkMailMan_CloseSmtpConnectionAsync(objHandle: HCkMailMan): HCkTask; stdcall;

function CkMailMan_CopyMail(objHandle: HCkMailMan): HCkEmailBundle; stdcall;

function CkMailMan_CopyMailAsync(objHandle: HCkMailMan): HCkTask; stdcall;

function CkMailMan_DeleteBundle(objHandle: HCkMailMan; emailBundle: HCkEmailBundle): wordbool; stdcall;

function CkMailMan_DeleteBundleAsync(objHandle: HCkMailMan; emailBundle: HCkEmailBundle): HCkTask; stdcall;

function CkMailMan_DeleteByMsgnum(objHandle: HCkMailMan; msgnum: Integer): wordbool; stdcall;

function CkMailMan_DeleteByMsgnumAsync(objHandle: HCkMailMan; msgnum: Integer): HCkTask; stdcall;

function CkMailMan_DeleteByUidl(objHandle: HCkMailMan; uidl: PWideChar): wordbool; stdcall;

function CkMailMan_DeleteByUidlAsync(objHandle: HCkMailMan; uidl: PWideChar): HCkTask; stdcall;

function CkMailMan_DeleteEmail(objHandle: HCkMailMan; email: HCkEmail): wordbool; stdcall;

function CkMailMan_DeleteEmailAsync(objHandle: HCkMailMan; email: HCkEmail): HCkTask; stdcall;

function CkMailMan_DeleteMultiple(objHandle: HCkMailMan; uidlArray: HCkStringArray): wordbool; stdcall;

function CkMailMan_DeleteMultipleAsync(objHandle: HCkMailMan; uidlArray: HCkStringArray): HCkTask; stdcall;

function CkMailMan_FetchByMsgnum(objHandle: HCkMailMan; msgnum: Integer): HCkEmail; stdcall;

function CkMailMan_FetchByMsgnumAsync(objHandle: HCkMailMan; msgnum: Integer): HCkTask; stdcall;

function CkMailMan_FetchEmail(objHandle: HCkMailMan; uidl: PWideChar): HCkEmail; stdcall;

function CkMailMan_FetchEmailAsync(objHandle: HCkMailMan; uidl: PWideChar): HCkTask; stdcall;

function CkMailMan_FetchMime(objHandle: HCkMailMan; uidl: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkMailMan_FetchMimeAsync(objHandle: HCkMailMan; uidl: PWideChar): HCkTask; stdcall;

function CkMailMan_FetchMimeBd(objHandle: HCkMailMan; uidl: PWideChar; mimeData: HCkBinData): wordbool; stdcall;

function CkMailMan_FetchMimeBdAsync(objHandle: HCkMailMan; uidl: PWideChar; mimeData: HCkBinData): HCkTask; stdcall;

function CkMailMan_FetchMimeByMsgnum(objHandle: HCkMailMan; msgnum: Integer; outData: HCkByteData): wordbool; stdcall;

function CkMailMan_FetchMimeByMsgnumAsync(objHandle: HCkMailMan; msgnum: Integer): HCkTask; stdcall;

function CkMailMan_FetchMultiple(objHandle: HCkMailMan; uidlArray: HCkStringArray): HCkEmailBundle; stdcall;

function CkMailMan_FetchMultipleAsync(objHandle: HCkMailMan; uidlArray: HCkStringArray): HCkTask; stdcall;

function CkMailMan_FetchMultipleHeaders(objHandle: HCkMailMan; uidlArray: HCkStringArray; numBodyLines: Integer): HCkEmailBundle; stdcall;

function CkMailMan_FetchMultipleHeadersAsync(objHandle: HCkMailMan; uidlArray: HCkStringArray; numBodyLines: Integer): HCkTask; stdcall;

function CkMailMan_FetchMultipleMime(objHandle: HCkMailMan; uidlArray: HCkStringArray): HCkStringArray; stdcall;

function CkMailMan_FetchMultipleMimeAsync(objHandle: HCkMailMan; uidlArray: HCkStringArray): HCkTask; stdcall;

function CkMailMan_FetchSingleHeader(objHandle: HCkMailMan; numBodyLines: Integer; messageNumber: Integer): HCkEmail; stdcall;

function CkMailMan_FetchSingleHeaderAsync(objHandle: HCkMailMan; numBodyLines: Integer; messageNumber: Integer): HCkTask; stdcall;

function CkMailMan_FetchSingleHeaderByUidl(objHandle: HCkMailMan; numBodyLines: Integer; uidl: PWideChar): HCkEmail; stdcall;

function CkMailMan_FetchSingleHeaderByUidlAsync(objHandle: HCkMailMan; numBodyLines: Integer; uidl: PWideChar): HCkTask; stdcall;

function CkMailMan_GetAllHeaders(objHandle: HCkMailMan; numBodyLines: Integer): HCkEmailBundle; stdcall;

function CkMailMan_GetAllHeadersAsync(objHandle: HCkMailMan; numBodyLines: Integer): HCkTask; stdcall;

function CkMailMan_GetBadEmailAddrs(objHandle: HCkMailMan): HCkStringArray; stdcall;

function CkMailMan_GetFullEmail(objHandle: HCkMailMan; email: HCkEmail): HCkEmail; stdcall;

function CkMailMan_GetFullEmailAsync(objHandle: HCkMailMan; email: HCkEmail): HCkTask; stdcall;

function CkMailMan_GetHeaders(objHandle: HCkMailMan; numBodyLines: Integer; fromIndex: Integer; toIndex: Integer): HCkEmailBundle; stdcall;

function CkMailMan_GetHeadersAsync(objHandle: HCkMailMan; numBodyLines: Integer; fromIndex: Integer; toIndex: Integer): HCkTask; stdcall;

function CkMailMan_GetMailboxCount(objHandle: HCkMailMan): Integer; stdcall;

function CkMailMan_GetMailboxCountAsync(objHandle: HCkMailMan): HCkTask; stdcall;

function CkMailMan_GetMailboxInfoXml(objHandle: HCkMailMan; outStr: HCkString): wordbool; stdcall;

function CkMailMan__getMailboxInfoXml(objHandle: HCkMailMan): PWideChar; stdcall;

function CkMailMan_GetMailboxInfoXmlAsync(objHandle: HCkMailMan): HCkTask; stdcall;

function CkMailMan_GetMailboxSize(objHandle: HCkMailMan): LongWord; stdcall;

function CkMailMan_GetMailboxSizeAsync(objHandle: HCkMailMan): HCkTask; stdcall;

function CkMailMan_GetPop3SslServerCert(objHandle: HCkMailMan): HCkCert; stdcall;

function CkMailMan_GetSentToEmailAddrs(objHandle: HCkMailMan): HCkStringArray; stdcall;

function CkMailMan_GetSizeByUidl(objHandle: HCkMailMan; uidl: PWideChar): Integer; stdcall;

function CkMailMan_GetSizeByUidlAsync(objHandle: HCkMailMan; uidl: PWideChar): HCkTask; stdcall;

function CkMailMan_GetSmtpSslServerCert(objHandle: HCkMailMan): HCkCert; stdcall;

function CkMailMan_GetUidls(objHandle: HCkMailMan): HCkStringArray; stdcall;

function CkMailMan_GetUidlsAsync(objHandle: HCkMailMan): HCkTask; stdcall;

function CkMailMan_IsSmtpDsnCapable(objHandle: HCkMailMan): wordbool; stdcall;

function CkMailMan_IsSmtpDsnCapableAsync(objHandle: HCkMailMan): HCkTask; stdcall;

function CkMailMan_IsUnlocked(objHandle: HCkMailMan): wordbool; stdcall;

function CkMailMan_LastJsonData(objHandle: HCkMailMan): HCkJsonObject; stdcall;

function CkMailMan_LoadEml(objHandle: HCkMailMan; emlFilename: PWideChar): HCkEmail; stdcall;

function CkMailMan_LoadMbx(objHandle: HCkMailMan; mbxFileName: PWideChar): HCkEmailBundle; stdcall;

function CkMailMan_LoadMime(objHandle: HCkMailMan; mimeText: PWideChar): HCkEmail; stdcall;

function CkMailMan_LoadQueuedEmail(objHandle: HCkMailMan; path: PWideChar): HCkEmail; stdcall;

function CkMailMan_LoadTaskCaller(objHandle: HCkMailMan; task: HCkTask): wordbool; stdcall;

function CkMailMan_LoadXmlEmail(objHandle: HCkMailMan; filename: PWideChar): HCkEmail; stdcall;

function CkMailMan_LoadXmlEmailString(objHandle: HCkMailMan; xmlString: PWideChar): HCkEmail; stdcall;

function CkMailMan_LoadXmlFile(objHandle: HCkMailMan; filename: PWideChar): HCkEmailBundle; stdcall;

function CkMailMan_LoadXmlString(objHandle: HCkMailMan; xmlString: PWideChar): HCkEmailBundle; stdcall;

function CkMailMan_MxLookup(objHandle: HCkMailMan; emailAddress: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkMailMan__mxLookup(objHandle: HCkMailMan; emailAddress: PWideChar): PWideChar; stdcall;

function CkMailMan_MxLookupAll(objHandle: HCkMailMan; emailAddress: PWideChar): HCkStringArray; stdcall;

function CkMailMan_OpenSmtpConnection(objHandle: HCkMailMan): wordbool; stdcall;

function CkMailMan_OpenSmtpConnectionAsync(objHandle: HCkMailMan): HCkTask; stdcall;

function CkMailMan_Pop3Authenticate(objHandle: HCkMailMan): wordbool; stdcall;

function CkMailMan_Pop3AuthenticateAsync(objHandle: HCkMailMan): HCkTask; stdcall;

function CkMailMan_Pop3BeginSession(objHandle: HCkMailMan): wordbool; stdcall;

function CkMailMan_Pop3BeginSessionAsync(objHandle: HCkMailMan): HCkTask; stdcall;

function CkMailMan_Pop3Connect(objHandle: HCkMailMan): wordbool; stdcall;

function CkMailMan_Pop3ConnectAsync(objHandle: HCkMailMan): HCkTask; stdcall;

function CkMailMan_Pop3EndSession(objHandle: HCkMailMan): wordbool; stdcall;

function CkMailMan_Pop3EndSessionAsync(objHandle: HCkMailMan): HCkTask; stdcall;

function CkMailMan_Pop3EndSessionNoQuit(objHandle: HCkMailMan): wordbool; stdcall;

function CkMailMan_Pop3EndSessionNoQuitAsync(objHandle: HCkMailMan): HCkTask; stdcall;

function CkMailMan_Pop3Noop(objHandle: HCkMailMan): wordbool; stdcall;

function CkMailMan_Pop3NoopAsync(objHandle: HCkMailMan): HCkTask; stdcall;

function CkMailMan_Pop3Reset(objHandle: HCkMailMan): wordbool; stdcall;

function CkMailMan_Pop3ResetAsync(objHandle: HCkMailMan): HCkTask; stdcall;

function CkMailMan_Pop3SendRawCommand(objHandle: HCkMailMan; command: PWideChar; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkMailMan__pop3SendRawCommand(objHandle: HCkMailMan; command: PWideChar; charset: PWideChar): PWideChar; stdcall;

function CkMailMan_Pop3SendRawCommandAsync(objHandle: HCkMailMan; command: PWideChar; charset: PWideChar): HCkTask; stdcall;

function CkMailMan_QuickSend(objHandle: HCkMailMan; fromAddr: PWideChar; toAddr: PWideChar; subject: PWideChar; body: PWideChar; smtpServer: PWideChar): wordbool; stdcall;

function CkMailMan_QuickSendAsync(objHandle: HCkMailMan; fromAddr: PWideChar; toAddr: PWideChar; subject: PWideChar; body: PWideChar; smtpServer: PWideChar): HCkTask; stdcall;

function CkMailMan_RenderToMime(objHandle: HCkMailMan; email: HCkEmail; outStr: HCkString): wordbool; stdcall;

function CkMailMan__renderToMime(objHandle: HCkMailMan; email: HCkEmail): PWideChar; stdcall;

function CkMailMan_RenderToMimeBd(objHandle: HCkMailMan; email: HCkEmail; renderedMime: HCkBinData): wordbool; stdcall;

function CkMailMan_RenderToMimeBytes(objHandle: HCkMailMan; email: HCkEmail; outData: HCkByteData): wordbool; stdcall;

function CkMailMan_RenderToMimeSb(objHandle: HCkMailMan; email: HCkEmail; renderedMime: HCkStringBuilder): wordbool; stdcall;

function CkMailMan_SaveLastError(objHandle: HCkMailMan; path: PWideChar): wordbool; stdcall;

function CkMailMan_SendBundle(objHandle: HCkMailMan; bundle: HCkEmailBundle): wordbool; stdcall;

function CkMailMan_SendBundleAsync(objHandle: HCkMailMan; bundle: HCkEmailBundle): HCkTask; stdcall;

function CkMailMan_SendEmail(objHandle: HCkMailMan; email: HCkEmail): wordbool; stdcall;

function CkMailMan_SendEmailAsync(objHandle: HCkMailMan; email: HCkEmail): HCkTask; stdcall;

function CkMailMan_SendMime(objHandle: HCkMailMan; fromAddr: PWideChar; recipients: PWideChar; mimeSource: PWideChar): wordbool; stdcall;

function CkMailMan_SendMimeAsync(objHandle: HCkMailMan; fromAddr: PWideChar; recipients: PWideChar; mimeSource: PWideChar): HCkTask; stdcall;

function CkMailMan_SendMimeBd(objHandle: HCkMailMan; fromAddr: PWideChar; recipients: PWideChar; mimeData: HCkBinData): wordbool; stdcall;

function CkMailMan_SendMimeBdAsync(objHandle: HCkMailMan; fromAddr: PWideChar; recipients: PWideChar; mimeData: HCkBinData): HCkTask; stdcall;

function CkMailMan_SendMimeBytes(objHandle: HCkMailMan; fromAddr: PWideChar; recipients: PWideChar; mimeSource: HCkByteData): wordbool; stdcall;

function CkMailMan_SendMimeBytesAsync(objHandle: HCkMailMan; fromAddr: PWideChar; recipients: PWideChar; mimeSource: HCkByteData): HCkTask; stdcall;

function CkMailMan_SendMimeBytesQ(objHandle: HCkMailMan; from: PWideChar; recipients: PWideChar; mimeData: HCkByteData): wordbool; stdcall;

function CkMailMan_SendMimeQ(objHandle: HCkMailMan; fromAddr: PWideChar; recipients: PWideChar; mimeSource: PWideChar): wordbool; stdcall;

function CkMailMan_SendMimeToList(objHandle: HCkMailMan; fromAddr: PWideChar; distListFilename: PWideChar; mimeSource: PWideChar): wordbool; stdcall;

function CkMailMan_SendMimeToListAsync(objHandle: HCkMailMan; fromAddr: PWideChar; distListFilename: PWideChar; mimeSource: PWideChar): HCkTask; stdcall;

function CkMailMan_SendQ(objHandle: HCkMailMan; email: HCkEmail): wordbool; stdcall;

function CkMailMan_SendQ2(objHandle: HCkMailMan; email: HCkEmail; queueDir: PWideChar): wordbool; stdcall;

function CkMailMan_SendToDistributionList(objHandle: HCkMailMan; emailObj: HCkEmail; recipientList: HCkStringArray): wordbool; stdcall;

function CkMailMan_SendToDistributionListAsync(objHandle: HCkMailMan; emailObj: HCkEmail; recipientList: HCkStringArray): HCkTask; stdcall;

function CkMailMan_SetDecryptCert(objHandle: HCkMailMan; cert: HCkCert): wordbool; stdcall;

function CkMailMan_SetDecryptCert2(objHandle: HCkMailMan; cert: HCkCert; privateKey: HCkPrivateKey): wordbool; stdcall;

function CkMailMan_SetPassword(objHandle: HCkMailMan; protocol: PWideChar; password: HCkSecureString): wordbool; stdcall;

function CkMailMan_SetSslClientCert(objHandle: HCkMailMan; cert: HCkCert): wordbool; stdcall;

function CkMailMan_SetSslClientCertPem(objHandle: HCkMailMan; pemDataOrFilename: PWideChar; pemPassword: PWideChar): wordbool; stdcall;

function CkMailMan_SetSslClientCertPfx(objHandle: HCkMailMan; pfxFilename: PWideChar; pfxPassword: PWideChar): wordbool; stdcall;

function CkMailMan_SmtpAuthenticate(objHandle: HCkMailMan): wordbool; stdcall;

function CkMailMan_SmtpAuthenticateAsync(objHandle: HCkMailMan): HCkTask; stdcall;

function CkMailMan_SmtpConnect(objHandle: HCkMailMan): wordbool; stdcall;

function CkMailMan_SmtpConnectAsync(objHandle: HCkMailMan): HCkTask; stdcall;

function CkMailMan_SmtpNoop(objHandle: HCkMailMan): wordbool; stdcall;

function CkMailMan_SmtpNoopAsync(objHandle: HCkMailMan): HCkTask; stdcall;

function CkMailMan_SmtpReset(objHandle: HCkMailMan): wordbool; stdcall;

function CkMailMan_SmtpResetAsync(objHandle: HCkMailMan): HCkTask; stdcall;

function CkMailMan_SmtpSendRawCommand(objHandle: HCkMailMan; command: PWideChar; charset: PWideChar; bEncodeBase64: wordbool; outStr: HCkString): wordbool; stdcall;

function CkMailMan__smtpSendRawCommand(objHandle: HCkMailMan; command: PWideChar; charset: PWideChar; bEncodeBase64: wordbool): PWideChar; stdcall;

function CkMailMan_SmtpSendRawCommandAsync(objHandle: HCkMailMan; command: PWideChar; charset: PWideChar; bEncodeBase64: wordbool): HCkTask; stdcall;

function CkMailMan_SshAuthenticatePk(objHandle: HCkMailMan; sshLogin: PWideChar; sshUsername: HCkSshKey): wordbool; stdcall;

function CkMailMan_SshAuthenticatePkAsync(objHandle: HCkMailMan; sshLogin: PWideChar; sshUsername: HCkSshKey): HCkTask; stdcall;

function CkMailMan_SshAuthenticatePw(objHandle: HCkMailMan; sshLogin: PWideChar; sshPassword: PWideChar): wordbool; stdcall;

function CkMailMan_SshAuthenticatePwAsync(objHandle: HCkMailMan; sshLogin: PWideChar; sshPassword: PWideChar): HCkTask; stdcall;

function CkMailMan_SshCloseTunnel(objHandle: HCkMailMan): wordbool; stdcall;

function CkMailMan_SshCloseTunnelAsync(objHandle: HCkMailMan): HCkTask; stdcall;

function CkMailMan_SshOpenTunnel(objHandle: HCkMailMan; sshHostname: PWideChar; sshPort: Integer): wordbool; stdcall;

function CkMailMan_SshOpenTunnelAsync(objHandle: HCkMailMan; sshHostname: PWideChar; sshPort: Integer): HCkTask; stdcall;

function CkMailMan_TransferMail(objHandle: HCkMailMan): HCkEmailBundle; stdcall;

function CkMailMan_TransferMailAsync(objHandle: HCkMailMan): HCkTask; stdcall;

function CkMailMan_TransferMultipleMime(objHandle: HCkMailMan; uidlArray: HCkStringArray): HCkStringArray; stdcall;

function CkMailMan_TransferMultipleMimeAsync(objHandle: HCkMailMan; uidlArray: HCkStringArray): HCkTask; stdcall;

function CkMailMan_UnlockComponent(objHandle: HCkMailMan; code: PWideChar): wordbool; stdcall;

function CkMailMan_UseCertVault(objHandle: HCkMailMan; vault: HCkXmlCertVault): wordbool; stdcall;

function CkMailMan_UseSsh(objHandle: HCkMailMan; ssh: HCkSsh): wordbool; stdcall;

function CkMailMan_UseSshTunnel(objHandle: HCkMailMan; tunnel: HCkSocket): wordbool; stdcall;

function CkMailMan_VerifyPopConnection(objHandle: HCkMailMan): wordbool; stdcall;

function CkMailMan_VerifyPopConnectionAsync(objHandle: HCkMailMan): HCkTask; stdcall;

function CkMailMan_VerifyPopLogin(objHandle: HCkMailMan): wordbool; stdcall;

function CkMailMan_VerifyPopLoginAsync(objHandle: HCkMailMan): HCkTask; stdcall;

function CkMailMan_VerifyRecips(objHandle: HCkMailMan; email: HCkEmail; badAddrs: HCkStringArray): wordbool; stdcall;

function CkMailMan_VerifyRecipsAsync(objHandle: HCkMailMan; email: HCkEmail; badAddrs: HCkStringArray): HCkTask; stdcall;

function CkMailMan_VerifySmtpConnection(objHandle: HCkMailMan): wordbool; stdcall;

function CkMailMan_VerifySmtpConnectionAsync(objHandle: HCkMailMan): HCkTask; stdcall;

function CkMailMan_VerifySmtpLogin(objHandle: HCkMailMan): wordbool; stdcall;

function CkMailMan_VerifySmtpLoginAsync(objHandle: HCkMailMan): HCkTask; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkMailMan_Create; external DLLName;
procedure CkMailMan_Dispose; external DLLName;

procedure CkMailMan_SetAbortCheck; external DLLName;
procedure CkMailMan_SetProgressInfo; external DLLName;
procedure CkMailMan_SetPercentDone; external DLLName;
procedure CkMailMan_SetTaskCompleted; external DLLName;
function CkMailMan_getAbortCurrent; external DLLName;
procedure CkMailMan_putAbortCurrent; external DLLName;
function CkMailMan_getAllOrNone; external DLLName;
procedure CkMailMan_putAllOrNone; external DLLName;
function CkMailMan_getAutoFix; external DLLName;
procedure CkMailMan_putAutoFix; external DLLName;
function CkMailMan_getAutoGenMessageId; external DLLName;
procedure CkMailMan_putAutoGenMessageId; external DLLName;
function CkMailMan_getAutoSmtpRset; external DLLName;
procedure CkMailMan_putAutoSmtpRset; external DLLName;
function CkMailMan_getAutoUnwrapSecurity; external DLLName;
procedure CkMailMan_putAutoUnwrapSecurity; external DLLName;
procedure CkMailMan_getClientIpAddress; external DLLName;
procedure CkMailMan_putClientIpAddress; external DLLName;
function CkMailMan__clientIpAddress; external DLLName;
function CkMailMan_getConnectFailReason; external DLLName;
function CkMailMan_getConnectTimeout; external DLLName;
procedure CkMailMan_putConnectTimeout; external DLLName;
procedure CkMailMan_getDebugLogFilePath; external DLLName;
procedure CkMailMan_putDebugLogFilePath; external DLLName;
function CkMailMan__debugLogFilePath; external DLLName;
procedure CkMailMan_getDsnEnvid; external DLLName;
procedure CkMailMan_putDsnEnvid; external DLLName;
function CkMailMan__dsnEnvid; external DLLName;
procedure CkMailMan_getDsnNotify; external DLLName;
procedure CkMailMan_putDsnNotify; external DLLName;
function CkMailMan__dsnNotify; external DLLName;
procedure CkMailMan_getDsnRet; external DLLName;
procedure CkMailMan_putDsnRet; external DLLName;
function CkMailMan__dsnRet; external DLLName;
function CkMailMan_getEmbedCertChain; external DLLName;
procedure CkMailMan_putEmbedCertChain; external DLLName;
procedure CkMailMan_getFilter; external DLLName;
procedure CkMailMan_putFilter; external DLLName;
function CkMailMan__filter; external DLLName;
function CkMailMan_getHeartbeatMs; external DLLName;
procedure CkMailMan_putHeartbeatMs; external DLLName;
procedure CkMailMan_getHeloHostname; external DLLName;
procedure CkMailMan_putHeloHostname; external DLLName;
function CkMailMan__heloHostname; external DLLName;
procedure CkMailMan_getHttpProxyAuthMethod; external DLLName;
procedure CkMailMan_putHttpProxyAuthMethod; external DLLName;
function CkMailMan__httpProxyAuthMethod; external DLLName;
procedure CkMailMan_getHttpProxyDomain; external DLLName;
procedure CkMailMan_putHttpProxyDomain; external DLLName;
function CkMailMan__httpProxyDomain; external DLLName;
procedure CkMailMan_getHttpProxyHostname; external DLLName;
procedure CkMailMan_putHttpProxyHostname; external DLLName;
function CkMailMan__httpProxyHostname; external DLLName;
procedure CkMailMan_getHttpProxyPassword; external DLLName;
procedure CkMailMan_putHttpProxyPassword; external DLLName;
function CkMailMan__httpProxyPassword; external DLLName;
function CkMailMan_getHttpProxyPort; external DLLName;
procedure CkMailMan_putHttpProxyPort; external DLLName;
procedure CkMailMan_getHttpProxyUsername; external DLLName;
procedure CkMailMan_putHttpProxyUsername; external DLLName;
function CkMailMan__httpProxyUsername; external DLLName;
function CkMailMan_getImmediateDelete; external DLLName;
procedure CkMailMan_putImmediateDelete; external DLLName;
function CkMailMan_getIncludeRootCert; external DLLName;
procedure CkMailMan_putIncludeRootCert; external DLLName;
function CkMailMan_getIsPop3Connected; external DLLName;
function CkMailMan_getIsSmtpConnected; external DLLName;
procedure CkMailMan_getLastErrorHtml; external DLLName;
function CkMailMan__lastErrorHtml; external DLLName;
procedure CkMailMan_getLastErrorText; external DLLName;
function CkMailMan__lastErrorText; external DLLName;
procedure CkMailMan_getLastErrorXml; external DLLName;
function CkMailMan__lastErrorXml; external DLLName;
function CkMailMan_getLastMethodSuccess; external DLLName;
procedure CkMailMan_putLastMethodSuccess; external DLLName;
procedure CkMailMan_getLastSendQFilename; external DLLName;
function CkMailMan__lastSendQFilename; external DLLName;
function CkMailMan_getLastSmtpStatus; external DLLName;
procedure CkMailMan_getLastSmtpStatusMsg; external DLLName;
function CkMailMan__lastSmtpStatusMsg; external DLLName;
procedure CkMailMan_getLogMailReceivedFilename; external DLLName;
procedure CkMailMan_putLogMailReceivedFilename; external DLLName;
function CkMailMan__logMailReceivedFilename; external DLLName;
procedure CkMailMan_getLogMailSentFilename; external DLLName;
procedure CkMailMan_putLogMailSentFilename; external DLLName;
function CkMailMan__logMailSentFilename; external DLLName;
procedure CkMailMan_getMailHost; external DLLName;
procedure CkMailMan_putMailHost; external DLLName;
function CkMailMan__mailHost; external DLLName;
function CkMailMan_getMailPort; external DLLName;
procedure CkMailMan_putMailPort; external DLLName;
function CkMailMan_getMaxCount; external DLLName;
procedure CkMailMan_putMaxCount; external DLLName;
procedure CkMailMan_getOAuth2AccessToken; external DLLName;
procedure CkMailMan_putOAuth2AccessToken; external DLLName;
function CkMailMan__oAuth2AccessToken; external DLLName;
function CkMailMan_getOpaqueSigning; external DLLName;
procedure CkMailMan_putOpaqueSigning; external DLLName;
procedure CkMailMan_getP7mEncryptAttachFilename; external DLLName;
procedure CkMailMan_putP7mEncryptAttachFilename; external DLLName;
function CkMailMan__p7mEncryptAttachFilename; external DLLName;
procedure CkMailMan_getP7mSigAttachFilename; external DLLName;
procedure CkMailMan_putP7mSigAttachFilename; external DLLName;
function CkMailMan__p7mSigAttachFilename; external DLLName;
procedure CkMailMan_getP7sSigAttachFilename; external DLLName;
procedure CkMailMan_putP7sSigAttachFilename; external DLLName;
function CkMailMan__p7sSigAttachFilename; external DLLName;
function CkMailMan_getPercentDoneScale; external DLLName;
procedure CkMailMan_putPercentDoneScale; external DLLName;
function CkMailMan_getPop3SessionId; external DLLName;
procedure CkMailMan_getPop3SessionLog; external DLLName;
function CkMailMan__pop3SessionLog; external DLLName;
function CkMailMan_getPop3SPA; external DLLName;
procedure CkMailMan_putPop3SPA; external DLLName;
function CkMailMan_getPop3SslServerCertVerified; external DLLName;
function CkMailMan_getPop3Stls; external DLLName;
procedure CkMailMan_putPop3Stls; external DLLName;
function CkMailMan_getPop3StlsIfPossible; external DLLName;
procedure CkMailMan_putPop3StlsIfPossible; external DLLName;
procedure CkMailMan_getPopPassword; external DLLName;
procedure CkMailMan_putPopPassword; external DLLName;
function CkMailMan__popPassword; external DLLName;
procedure CkMailMan_getPopPasswordBase64; external DLLName;
procedure CkMailMan_putPopPasswordBase64; external DLLName;
function CkMailMan__popPasswordBase64; external DLLName;
function CkMailMan_getPopSsl; external DLLName;
procedure CkMailMan_putPopSsl; external DLLName;
procedure CkMailMan_getPopUsername; external DLLName;
procedure CkMailMan_putPopUsername; external DLLName;
function CkMailMan__popUsername; external DLLName;
function CkMailMan_getPreferIpv6; external DLLName;
procedure CkMailMan_putPreferIpv6; external DLLName;
function CkMailMan_getReadTimeout; external DLLName;
procedure CkMailMan_putReadTimeout; external DLLName;
function CkMailMan_getRequireSslCertVerify; external DLLName;
procedure CkMailMan_putRequireSslCertVerify; external DLLName;
function CkMailMan_getResetDateOnLoad; external DLLName;
procedure CkMailMan_putResetDateOnLoad; external DLLName;
function CkMailMan_getSendBufferSize; external DLLName;
procedure CkMailMan_putSendBufferSize; external DLLName;
function CkMailMan_getSendIndividual; external DLLName;
procedure CkMailMan_putSendIndividual; external DLLName;
function CkMailMan_getSizeLimit; external DLLName;
procedure CkMailMan_putSizeLimit; external DLLName;
procedure CkMailMan_getSmtpAuthMethod; external DLLName;
procedure CkMailMan_putSmtpAuthMethod; external DLLName;
function CkMailMan__smtpAuthMethod; external DLLName;
procedure CkMailMan_getSmtpFailReason; external DLLName;
function CkMailMan__smtpFailReason; external DLLName;
procedure CkMailMan_getSmtpHost; external DLLName;
procedure CkMailMan_putSmtpHost; external DLLName;
function CkMailMan__smtpHost; external DLLName;
procedure CkMailMan_getSmtpLoginDomain; external DLLName;
procedure CkMailMan_putSmtpLoginDomain; external DLLName;
function CkMailMan__smtpLoginDomain; external DLLName;
procedure CkMailMan_getSmtpPassword; external DLLName;
procedure CkMailMan_putSmtpPassword; external DLLName;
function CkMailMan__smtpPassword; external DLLName;
function CkMailMan_getSmtpPipelining; external DLLName;
procedure CkMailMan_putSmtpPipelining; external DLLName;
function CkMailMan_getSmtpPort; external DLLName;
procedure CkMailMan_putSmtpPort; external DLLName;
procedure CkMailMan_getSmtpSessionLog; external DLLName;
function CkMailMan__smtpSessionLog; external DLLName;
function CkMailMan_getSmtpSsl; external DLLName;
procedure CkMailMan_putSmtpSsl; external DLLName;
function CkMailMan_getSmtpSslServerCertVerified; external DLLName;
procedure CkMailMan_getSmtpUsername; external DLLName;
procedure CkMailMan_putSmtpUsername; external DLLName;
function CkMailMan__smtpUsername; external DLLName;
procedure CkMailMan_getSocksHostname; external DLLName;
procedure CkMailMan_putSocksHostname; external DLLName;
function CkMailMan__socksHostname; external DLLName;
procedure CkMailMan_getSocksPassword; external DLLName;
procedure CkMailMan_putSocksPassword; external DLLName;
function CkMailMan__socksPassword; external DLLName;
function CkMailMan_getSocksPort; external DLLName;
procedure CkMailMan_putSocksPort; external DLLName;
procedure CkMailMan_getSocksUsername; external DLLName;
procedure CkMailMan_putSocksUsername; external DLLName;
function CkMailMan__socksUsername; external DLLName;
function CkMailMan_getSocksVersion; external DLLName;
procedure CkMailMan_putSocksVersion; external DLLName;
function CkMailMan_getSoRcvBuf; external DLLName;
procedure CkMailMan_putSoRcvBuf; external DLLName;
function CkMailMan_getSoSndBuf; external DLLName;
procedure CkMailMan_putSoSndBuf; external DLLName;
procedure CkMailMan_getSslAllowedCiphers; external DLLName;
procedure CkMailMan_putSslAllowedCiphers; external DLLName;
function CkMailMan__sslAllowedCiphers; external DLLName;
procedure CkMailMan_getSslProtocol; external DLLName;
procedure CkMailMan_putSslProtocol; external DLLName;
function CkMailMan__sslProtocol; external DLLName;
function CkMailMan_getStartTLS; external DLLName;
procedure CkMailMan_putStartTLS; external DLLName;
function CkMailMan_getStartTLSifPossible; external DLLName;
procedure CkMailMan_putStartTLSifPossible; external DLLName;
procedure CkMailMan_getTlsCipherSuite; external DLLName;
function CkMailMan__tlsCipherSuite; external DLLName;
procedure CkMailMan_getTlsPinSet; external DLLName;
procedure CkMailMan_putTlsPinSet; external DLLName;
function CkMailMan__tlsPinSet; external DLLName;
procedure CkMailMan_getTlsVersion; external DLLName;
function CkMailMan__tlsVersion; external DLLName;
procedure CkMailMan_getUncommonOptions; external DLLName;
procedure CkMailMan_putUncommonOptions; external DLLName;
function CkMailMan__uncommonOptions; external DLLName;
function CkMailMan_getUseApop; external DLLName;
procedure CkMailMan_putUseApop; external DLLName;
function CkMailMan_getVerboseLogging; external DLLName;
procedure CkMailMan_putVerboseLogging; external DLLName;
procedure CkMailMan_getVersion; external DLLName;
function CkMailMan__version; external DLLName;
function CkMailMan_AddPfxSourceData; external DLLName;
function CkMailMan_AddPfxSourceFile; external DLLName;
function CkMailMan_CheckMail; external DLLName;
function CkMailMan_CheckMailAsync; external DLLName;
procedure CkMailMan_ClearBadEmailAddresses; external DLLName;
procedure CkMailMan_ClearPop3SessionLog; external DLLName;
procedure CkMailMan_ClearSmtpSessionLog; external DLLName;
function CkMailMan_CloseSmtpConnection; external DLLName;
function CkMailMan_CloseSmtpConnectionAsync; external DLLName;
function CkMailMan_CopyMail; external DLLName;
function CkMailMan_CopyMailAsync; external DLLName;
function CkMailMan_DeleteBundle; external DLLName;
function CkMailMan_DeleteBundleAsync; external DLLName;
function CkMailMan_DeleteByMsgnum; external DLLName;
function CkMailMan_DeleteByMsgnumAsync; external DLLName;
function CkMailMan_DeleteByUidl; external DLLName;
function CkMailMan_DeleteByUidlAsync; external DLLName;
function CkMailMan_DeleteEmail; external DLLName;
function CkMailMan_DeleteEmailAsync; external DLLName;
function CkMailMan_DeleteMultiple; external DLLName;
function CkMailMan_DeleteMultipleAsync; external DLLName;
function CkMailMan_FetchByMsgnum; external DLLName;
function CkMailMan_FetchByMsgnumAsync; external DLLName;
function CkMailMan_FetchEmail; external DLLName;
function CkMailMan_FetchEmailAsync; external DLLName;
function CkMailMan_FetchMime; external DLLName;
function CkMailMan_FetchMimeAsync; external DLLName;
function CkMailMan_FetchMimeBd; external DLLName;
function CkMailMan_FetchMimeBdAsync; external DLLName;
function CkMailMan_FetchMimeByMsgnum; external DLLName;
function CkMailMan_FetchMimeByMsgnumAsync; external DLLName;
function CkMailMan_FetchMultiple; external DLLName;
function CkMailMan_FetchMultipleAsync; external DLLName;
function CkMailMan_FetchMultipleHeaders; external DLLName;
function CkMailMan_FetchMultipleHeadersAsync; external DLLName;
function CkMailMan_FetchMultipleMime; external DLLName;
function CkMailMan_FetchMultipleMimeAsync; external DLLName;
function CkMailMan_FetchSingleHeader; external DLLName;
function CkMailMan_FetchSingleHeaderAsync; external DLLName;
function CkMailMan_FetchSingleHeaderByUidl; external DLLName;
function CkMailMan_FetchSingleHeaderByUidlAsync; external DLLName;
function CkMailMan_GetAllHeaders; external DLLName;
function CkMailMan_GetAllHeadersAsync; external DLLName;
function CkMailMan_GetBadEmailAddrs; external DLLName;
function CkMailMan_GetFullEmail; external DLLName;
function CkMailMan_GetFullEmailAsync; external DLLName;
function CkMailMan_GetHeaders; external DLLName;
function CkMailMan_GetHeadersAsync; external DLLName;
function CkMailMan_GetMailboxCount; external DLLName;
function CkMailMan_GetMailboxCountAsync; external DLLName;
function CkMailMan_GetMailboxInfoXml; external DLLName;
function CkMailMan__getMailboxInfoXml; external DLLName;
function CkMailMan_GetMailboxInfoXmlAsync; external DLLName;
function CkMailMan_GetMailboxSize; external DLLName;
function CkMailMan_GetMailboxSizeAsync; external DLLName;
function CkMailMan_GetPop3SslServerCert; external DLLName;
function CkMailMan_GetSentToEmailAddrs; external DLLName;
function CkMailMan_GetSizeByUidl; external DLLName;
function CkMailMan_GetSizeByUidlAsync; external DLLName;
function CkMailMan_GetSmtpSslServerCert; external DLLName;
function CkMailMan_GetUidls; external DLLName;
function CkMailMan_GetUidlsAsync; external DLLName;
function CkMailMan_IsSmtpDsnCapable; external DLLName;
function CkMailMan_IsSmtpDsnCapableAsync; external DLLName;
function CkMailMan_IsUnlocked; external DLLName;
function CkMailMan_LastJsonData; external DLLName;
function CkMailMan_LoadEml; external DLLName;
function CkMailMan_LoadMbx; external DLLName;
function CkMailMan_LoadMime; external DLLName;
function CkMailMan_LoadQueuedEmail; external DLLName;
function CkMailMan_LoadTaskCaller; external DLLName;
function CkMailMan_LoadXmlEmail; external DLLName;
function CkMailMan_LoadXmlEmailString; external DLLName;
function CkMailMan_LoadXmlFile; external DLLName;
function CkMailMan_LoadXmlString; external DLLName;
function CkMailMan_MxLookup; external DLLName;
function CkMailMan__mxLookup; external DLLName;
function CkMailMan_MxLookupAll; external DLLName;
function CkMailMan_OpenSmtpConnection; external DLLName;
function CkMailMan_OpenSmtpConnectionAsync; external DLLName;
function CkMailMan_Pop3Authenticate; external DLLName;
function CkMailMan_Pop3AuthenticateAsync; external DLLName;
function CkMailMan_Pop3BeginSession; external DLLName;
function CkMailMan_Pop3BeginSessionAsync; external DLLName;
function CkMailMan_Pop3Connect; external DLLName;
function CkMailMan_Pop3ConnectAsync; external DLLName;
function CkMailMan_Pop3EndSession; external DLLName;
function CkMailMan_Pop3EndSessionAsync; external DLLName;
function CkMailMan_Pop3EndSessionNoQuit; external DLLName;
function CkMailMan_Pop3EndSessionNoQuitAsync; external DLLName;
function CkMailMan_Pop3Noop; external DLLName;
function CkMailMan_Pop3NoopAsync; external DLLName;
function CkMailMan_Pop3Reset; external DLLName;
function CkMailMan_Pop3ResetAsync; external DLLName;
function CkMailMan_Pop3SendRawCommand; external DLLName;
function CkMailMan__pop3SendRawCommand; external DLLName;
function CkMailMan_Pop3SendRawCommandAsync; external DLLName;
function CkMailMan_QuickSend; external DLLName;
function CkMailMan_QuickSendAsync; external DLLName;
function CkMailMan_RenderToMime; external DLLName;
function CkMailMan__renderToMime; external DLLName;
function CkMailMan_RenderToMimeBd; external DLLName;
function CkMailMan_RenderToMimeBytes; external DLLName;
function CkMailMan_RenderToMimeSb; external DLLName;
function CkMailMan_SaveLastError; external DLLName;
function CkMailMan_SendBundle; external DLLName;
function CkMailMan_SendBundleAsync; external DLLName;
function CkMailMan_SendEmail; external DLLName;
function CkMailMan_SendEmailAsync; external DLLName;
function CkMailMan_SendMime; external DLLName;
function CkMailMan_SendMimeAsync; external DLLName;
function CkMailMan_SendMimeBd; external DLLName;
function CkMailMan_SendMimeBdAsync; external DLLName;
function CkMailMan_SendMimeBytes; external DLLName;
function CkMailMan_SendMimeBytesAsync; external DLLName;
function CkMailMan_SendMimeBytesQ; external DLLName;
function CkMailMan_SendMimeQ; external DLLName;
function CkMailMan_SendMimeToList; external DLLName;
function CkMailMan_SendMimeToListAsync; external DLLName;
function CkMailMan_SendQ; external DLLName;
function CkMailMan_SendQ2; external DLLName;
function CkMailMan_SendToDistributionList; external DLLName;
function CkMailMan_SendToDistributionListAsync; external DLLName;
function CkMailMan_SetDecryptCert; external DLLName;
function CkMailMan_SetDecryptCert2; external DLLName;
function CkMailMan_SetPassword; external DLLName;
function CkMailMan_SetSslClientCert; external DLLName;
function CkMailMan_SetSslClientCertPem; external DLLName;
function CkMailMan_SetSslClientCertPfx; external DLLName;
function CkMailMan_SmtpAuthenticate; external DLLName;
function CkMailMan_SmtpAuthenticateAsync; external DLLName;
function CkMailMan_SmtpConnect; external DLLName;
function CkMailMan_SmtpConnectAsync; external DLLName;
function CkMailMan_SmtpNoop; external DLLName;
function CkMailMan_SmtpNoopAsync; external DLLName;
function CkMailMan_SmtpReset; external DLLName;
function CkMailMan_SmtpResetAsync; external DLLName;
function CkMailMan_SmtpSendRawCommand; external DLLName;
function CkMailMan__smtpSendRawCommand; external DLLName;
function CkMailMan_SmtpSendRawCommandAsync; external DLLName;
function CkMailMan_SshAuthenticatePk; external DLLName;
function CkMailMan_SshAuthenticatePkAsync; external DLLName;
function CkMailMan_SshAuthenticatePw; external DLLName;
function CkMailMan_SshAuthenticatePwAsync; external DLLName;
function CkMailMan_SshCloseTunnel; external DLLName;
function CkMailMan_SshCloseTunnelAsync; external DLLName;
function CkMailMan_SshOpenTunnel; external DLLName;
function CkMailMan_SshOpenTunnelAsync; external DLLName;
function CkMailMan_TransferMail; external DLLName;
function CkMailMan_TransferMailAsync; external DLLName;
function CkMailMan_TransferMultipleMime; external DLLName;
function CkMailMan_TransferMultipleMimeAsync; external DLLName;
function CkMailMan_UnlockComponent; external DLLName;
function CkMailMan_UseCertVault; external DLLName;
function CkMailMan_UseSsh; external DLLName;
function CkMailMan_UseSshTunnel; external DLLName;
function CkMailMan_VerifyPopConnection; external DLLName;
function CkMailMan_VerifyPopConnectionAsync; external DLLName;
function CkMailMan_VerifyPopLogin; external DLLName;
function CkMailMan_VerifyPopLoginAsync; external DLLName;
function CkMailMan_VerifyRecips; external DLLName;
function CkMailMan_VerifyRecipsAsync; external DLLName;
function CkMailMan_VerifySmtpConnection; external DLLName;
function CkMailMan_VerifySmtpConnectionAsync; external DLLName;
function CkMailMan_VerifySmtpLogin; external DLLName;
function CkMailMan_VerifySmtpLoginAsync; external DLLName;



end.
