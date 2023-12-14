unit Imap;

interface

type

HCkEmailBundle = Pointer;
HCkSshKey = Pointer;
HCkSecureString = Pointer;
HCkStringBuilder = Pointer;
HCkCert = Pointer;
HCkJsonObject = Pointer;
HCkSocket = Pointer;
HCkSsh = Pointer;
HCkBinData = Pointer;
HCkString = Pointer;
HCkXmlCertVault = Pointer;
HCkByteData = Pointer;
HCkMessageSet = Pointer;
HCkPrivateKey = Pointer;
HCkEmail = Pointer;
HCkMailboxes = Pointer;
HCkTask = Pointer;
HCkImap = Pointer;
HCkStringArray = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TImapAbortCheck = function(): Integer; cdecl;
TImapProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TImapPercentDone = function(pctDone: Integer): Integer; cdecl;
TImapTaskCompleted = procedure(task: HCkTask); cdecl;


function CkImap_Create: HCkImap; stdcall;
procedure CkImap_Dispose(handle: HCkImap); stdcall;

procedure CkImap_SetAbortCheck(objHandle: HCkImap; fn: TImapAbortCheck) stdcall;
procedure CkImap_SetProgressInfo(objHandle: HCkImap; fn: TImapProgressInfo) stdcall;
procedure CkImap_SetPercentDone(objHandle: HCkImap; fn: TImapPercentDone) stdcall;
procedure CkImap_SetTaskCompleted(objHandle: HCkImap; fn: TImapTaskCompleted) stdcall;
function CkImap_getAbortCurrent(objHandle: HCkImap): wordbool; stdcall;

procedure CkImap_putAbortCurrent(objHandle: HCkImap; newPropVal: wordbool); stdcall;

function CkImap_getAppendSeen(objHandle: HCkImap): wordbool; stdcall;

procedure CkImap_putAppendSeen(objHandle: HCkImap; newPropVal: wordbool); stdcall;

function CkImap_getAppendUid(objHandle: HCkImap): Integer; stdcall;

procedure CkImap_getAuthMethod(objHandle: HCkImap; outPropVal: HCkString); stdcall;

procedure CkImap_putAuthMethod(objHandle: HCkImap; newPropVal: PWideChar); stdcall;

function CkImap__authMethod(objHandle: HCkImap): PWideChar; stdcall;

procedure CkImap_getAuthzId(objHandle: HCkImap; outPropVal: HCkString); stdcall;

procedure CkImap_putAuthzId(objHandle: HCkImap; newPropVal: PWideChar); stdcall;

function CkImap__authzId(objHandle: HCkImap): PWideChar; stdcall;

function CkImap_getAutoDownloadAttachments(objHandle: HCkImap): wordbool; stdcall;

procedure CkImap_putAutoDownloadAttachments(objHandle: HCkImap; newPropVal: wordbool); stdcall;

function CkImap_getAutoFix(objHandle: HCkImap): wordbool; stdcall;

procedure CkImap_putAutoFix(objHandle: HCkImap; newPropVal: wordbool); stdcall;

procedure CkImap_getClientIpAddress(objHandle: HCkImap; outPropVal: HCkString); stdcall;

procedure CkImap_putClientIpAddress(objHandle: HCkImap; newPropVal: PWideChar); stdcall;

function CkImap__clientIpAddress(objHandle: HCkImap): PWideChar; stdcall;

procedure CkImap_getConnectedToHost(objHandle: HCkImap; outPropVal: HCkString); stdcall;

function CkImap__connectedToHost(objHandle: HCkImap): PWideChar; stdcall;

function CkImap_getConnectTimeout(objHandle: HCkImap): Integer; stdcall;

procedure CkImap_putConnectTimeout(objHandle: HCkImap; newPropVal: Integer); stdcall;

procedure CkImap_getDebugLogFilePath(objHandle: HCkImap; outPropVal: HCkString); stdcall;

procedure CkImap_putDebugLogFilePath(objHandle: HCkImap; newPropVal: PWideChar); stdcall;

function CkImap__debugLogFilePath(objHandle: HCkImap): PWideChar; stdcall;

procedure CkImap_getDomain(objHandle: HCkImap; outPropVal: HCkString); stdcall;

procedure CkImap_putDomain(objHandle: HCkImap; newPropVal: PWideChar); stdcall;

function CkImap__domain(objHandle: HCkImap): PWideChar; stdcall;

function CkImap_getHeartbeatMs(objHandle: HCkImap): Integer; stdcall;

procedure CkImap_putHeartbeatMs(objHandle: HCkImap; newPropVal: Integer); stdcall;

procedure CkImap_getHighestModSeq(objHandle: HCkImap; outPropVal: HCkString); stdcall;

function CkImap__highestModSeq(objHandle: HCkImap): PWideChar; stdcall;

procedure CkImap_getHttpProxyAuthMethod(objHandle: HCkImap; outPropVal: HCkString); stdcall;

procedure CkImap_putHttpProxyAuthMethod(objHandle: HCkImap; newPropVal: PWideChar); stdcall;

function CkImap__httpProxyAuthMethod(objHandle: HCkImap): PWideChar; stdcall;

procedure CkImap_getHttpProxyDomain(objHandle: HCkImap; outPropVal: HCkString); stdcall;

procedure CkImap_putHttpProxyDomain(objHandle: HCkImap; newPropVal: PWideChar); stdcall;

function CkImap__httpProxyDomain(objHandle: HCkImap): PWideChar; stdcall;

procedure CkImap_getHttpProxyHostname(objHandle: HCkImap; outPropVal: HCkString); stdcall;

procedure CkImap_putHttpProxyHostname(objHandle: HCkImap; newPropVal: PWideChar); stdcall;

function CkImap__httpProxyHostname(objHandle: HCkImap): PWideChar; stdcall;

procedure CkImap_getHttpProxyPassword(objHandle: HCkImap; outPropVal: HCkString); stdcall;

procedure CkImap_putHttpProxyPassword(objHandle: HCkImap; newPropVal: PWideChar); stdcall;

function CkImap__httpProxyPassword(objHandle: HCkImap): PWideChar; stdcall;

function CkImap_getHttpProxyPort(objHandle: HCkImap): Integer; stdcall;

procedure CkImap_putHttpProxyPort(objHandle: HCkImap; newPropVal: Integer); stdcall;

procedure CkImap_getHttpProxyUsername(objHandle: HCkImap; outPropVal: HCkString); stdcall;

procedure CkImap_putHttpProxyUsername(objHandle: HCkImap; newPropVal: PWideChar); stdcall;

function CkImap__httpProxyUsername(objHandle: HCkImap): PWideChar; stdcall;

function CkImap_getKeepSessionLog(objHandle: HCkImap): wordbool; stdcall;

procedure CkImap_putKeepSessionLog(objHandle: HCkImap; newPropVal: wordbool); stdcall;

procedure CkImap_getLastAppendedMime(objHandle: HCkImap; outPropVal: HCkString); stdcall;

function CkImap__lastAppendedMime(objHandle: HCkImap): PWideChar; stdcall;

procedure CkImap_getLastCommand(objHandle: HCkImap; outPropVal: HCkString); stdcall;

function CkImap__lastCommand(objHandle: HCkImap): PWideChar; stdcall;

procedure CkImap_getLastErrorHtml(objHandle: HCkImap; outPropVal: HCkString); stdcall;

function CkImap__lastErrorHtml(objHandle: HCkImap): PWideChar; stdcall;

procedure CkImap_getLastErrorText(objHandle: HCkImap; outPropVal: HCkString); stdcall;

function CkImap__lastErrorText(objHandle: HCkImap): PWideChar; stdcall;

procedure CkImap_getLastErrorXml(objHandle: HCkImap; outPropVal: HCkString); stdcall;

function CkImap__lastErrorXml(objHandle: HCkImap): PWideChar; stdcall;

procedure CkImap_getLastIntermediateResponse(objHandle: HCkImap; outPropVal: HCkString); stdcall;

function CkImap__lastIntermediateResponse(objHandle: HCkImap): PWideChar; stdcall;

function CkImap_getLastMethodSuccess(objHandle: HCkImap): wordbool; stdcall;

procedure CkImap_putLastMethodSuccess(objHandle: HCkImap; newPropVal: wordbool); stdcall;

procedure CkImap_getLastResponse(objHandle: HCkImap; outPropVal: HCkString); stdcall;

function CkImap__lastResponse(objHandle: HCkImap): PWideChar; stdcall;

procedure CkImap_getLastResponseCode(objHandle: HCkImap; outPropVal: HCkString); stdcall;

function CkImap__lastResponseCode(objHandle: HCkImap): PWideChar; stdcall;

procedure CkImap_getLoggedInUser(objHandle: HCkImap; outPropVal: HCkString); stdcall;

function CkImap__loggedInUser(objHandle: HCkImap): PWideChar; stdcall;

function CkImap_getNumMessages(objHandle: HCkImap): Integer; stdcall;

function CkImap_getPeekMode(objHandle: HCkImap): wordbool; stdcall;

procedure CkImap_putPeekMode(objHandle: HCkImap; newPropVal: wordbool); stdcall;

function CkImap_getPercentDoneScale(objHandle: HCkImap): Integer; stdcall;

procedure CkImap_putPercentDoneScale(objHandle: HCkImap; newPropVal: Integer); stdcall;

function CkImap_getPort(objHandle: HCkImap): Integer; stdcall;

procedure CkImap_putPort(objHandle: HCkImap; newPropVal: Integer); stdcall;

function CkImap_getPreferIpv6(objHandle: HCkImap): wordbool; stdcall;

procedure CkImap_putPreferIpv6(objHandle: HCkImap; newPropVal: wordbool); stdcall;

function CkImap_getReadTimeout(objHandle: HCkImap): Integer; stdcall;

procedure CkImap_putReadTimeout(objHandle: HCkImap; newPropVal: Integer); stdcall;

function CkImap_getRequireSslCertVerify(objHandle: HCkImap): wordbool; stdcall;

procedure CkImap_putRequireSslCertVerify(objHandle: HCkImap; newPropVal: wordbool); stdcall;

procedure CkImap_getSearchCharset(objHandle: HCkImap; outPropVal: HCkString); stdcall;

procedure CkImap_putSearchCharset(objHandle: HCkImap; newPropVal: PWideChar); stdcall;

function CkImap__searchCharset(objHandle: HCkImap): PWideChar; stdcall;

procedure CkImap_getSelectedMailbox(objHandle: HCkImap; outPropVal: HCkString); stdcall;

function CkImap__selectedMailbox(objHandle: HCkImap): PWideChar; stdcall;

function CkImap_getSendBufferSize(objHandle: HCkImap): Integer; stdcall;

procedure CkImap_putSendBufferSize(objHandle: HCkImap; newPropVal: Integer); stdcall;

procedure CkImap_getSeparatorChar(objHandle: HCkImap; outPropVal: HCkString); stdcall;

procedure CkImap_putSeparatorChar(objHandle: HCkImap; newPropVal: PWideChar); stdcall;

function CkImap__separatorChar(objHandle: HCkImap): PWideChar; stdcall;

procedure CkImap_getSessionLog(objHandle: HCkImap; outPropVal: HCkString); stdcall;

function CkImap__sessionLog(objHandle: HCkImap): PWideChar; stdcall;

procedure CkImap_getSocksHostname(objHandle: HCkImap; outPropVal: HCkString); stdcall;

procedure CkImap_putSocksHostname(objHandle: HCkImap; newPropVal: PWideChar); stdcall;

function CkImap__socksHostname(objHandle: HCkImap): PWideChar; stdcall;

procedure CkImap_getSocksPassword(objHandle: HCkImap; outPropVal: HCkString); stdcall;

procedure CkImap_putSocksPassword(objHandle: HCkImap; newPropVal: PWideChar); stdcall;

function CkImap__socksPassword(objHandle: HCkImap): PWideChar; stdcall;

function CkImap_getSocksPort(objHandle: HCkImap): Integer; stdcall;

procedure CkImap_putSocksPort(objHandle: HCkImap; newPropVal: Integer); stdcall;

procedure CkImap_getSocksUsername(objHandle: HCkImap; outPropVal: HCkString); stdcall;

procedure CkImap_putSocksUsername(objHandle: HCkImap; newPropVal: PWideChar); stdcall;

function CkImap__socksUsername(objHandle: HCkImap): PWideChar; stdcall;

function CkImap_getSocksVersion(objHandle: HCkImap): Integer; stdcall;

procedure CkImap_putSocksVersion(objHandle: HCkImap; newPropVal: Integer); stdcall;

function CkImap_getSoRcvBuf(objHandle: HCkImap): Integer; stdcall;

procedure CkImap_putSoRcvBuf(objHandle: HCkImap; newPropVal: Integer); stdcall;

function CkImap_getSoSndBuf(objHandle: HCkImap): Integer; stdcall;

procedure CkImap_putSoSndBuf(objHandle: HCkImap; newPropVal: Integer); stdcall;

function CkImap_getSsl(objHandle: HCkImap): wordbool; stdcall;

procedure CkImap_putSsl(objHandle: HCkImap; newPropVal: wordbool); stdcall;

procedure CkImap_getSslAllowedCiphers(objHandle: HCkImap; outPropVal: HCkString); stdcall;

procedure CkImap_putSslAllowedCiphers(objHandle: HCkImap; newPropVal: PWideChar); stdcall;

function CkImap__sslAllowedCiphers(objHandle: HCkImap): PWideChar; stdcall;

procedure CkImap_getSslProtocol(objHandle: HCkImap; outPropVal: HCkString); stdcall;

procedure CkImap_putSslProtocol(objHandle: HCkImap; newPropVal: PWideChar); stdcall;

function CkImap__sslProtocol(objHandle: HCkImap): PWideChar; stdcall;

function CkImap_getSslServerCertVerified(objHandle: HCkImap): wordbool; stdcall;

function CkImap_getStartTls(objHandle: HCkImap): wordbool; stdcall;

procedure CkImap_putStartTls(objHandle: HCkImap; newPropVal: wordbool); stdcall;

procedure CkImap_getTlsCipherSuite(objHandle: HCkImap; outPropVal: HCkString); stdcall;

function CkImap__tlsCipherSuite(objHandle: HCkImap): PWideChar; stdcall;

procedure CkImap_getTlsPinSet(objHandle: HCkImap; outPropVal: HCkString); stdcall;

procedure CkImap_putTlsPinSet(objHandle: HCkImap; newPropVal: PWideChar); stdcall;

function CkImap__tlsPinSet(objHandle: HCkImap): PWideChar; stdcall;

procedure CkImap_getTlsVersion(objHandle: HCkImap; outPropVal: HCkString); stdcall;

function CkImap__tlsVersion(objHandle: HCkImap): PWideChar; stdcall;

function CkImap_getUidNext(objHandle: HCkImap): LongWord; stdcall;

function CkImap_getUidValidity(objHandle: HCkImap): LongWord; stdcall;

procedure CkImap_getUncommonOptions(objHandle: HCkImap; outPropVal: HCkString); stdcall;

procedure CkImap_putUncommonOptions(objHandle: HCkImap; newPropVal: PWideChar); stdcall;

function CkImap__uncommonOptions(objHandle: HCkImap): PWideChar; stdcall;

function CkImap_getVerboseLogging(objHandle: HCkImap): wordbool; stdcall;

procedure CkImap_putVerboseLogging(objHandle: HCkImap; newPropVal: wordbool); stdcall;

procedure CkImap_getVersion(objHandle: HCkImap; outPropVal: HCkString); stdcall;

function CkImap__version(objHandle: HCkImap): PWideChar; stdcall;

function CkImap_AddPfxSourceData(objHandle: HCkImap; pfxBytes: HCkByteData; pfxPassword: PWideChar): wordbool; stdcall;

function CkImap_AddPfxSourceFile(objHandle: HCkImap; pfxFilePath: PWideChar; pfxPassword: PWideChar): wordbool; stdcall;

function CkImap_AppendMail(objHandle: HCkImap; mailbox: PWideChar; email: HCkEmail): wordbool; stdcall;

function CkImap_AppendMailAsync(objHandle: HCkImap; mailbox: PWideChar; email: HCkEmail): HCkTask; stdcall;

function CkImap_AppendMime(objHandle: HCkImap; mailbox: PWideChar; mimeText: PWideChar): wordbool; stdcall;

function CkImap_AppendMimeAsync(objHandle: HCkImap; mailbox: PWideChar; mimeText: PWideChar): HCkTask; stdcall;

function CkImap_AppendMimeWithDateStr(objHandle: HCkImap; mailbox: PWideChar; mimeText: PWideChar; internalDateStr: PWideChar): wordbool; stdcall;

function CkImap_AppendMimeWithDateStrAsync(objHandle: HCkImap; mailbox: PWideChar; mimeText: PWideChar; internalDateStr: PWideChar): HCkTask; stdcall;

function CkImap_AppendMimeWithFlags(objHandle: HCkImap; mailbox: PWideChar; mimeText: PWideChar; seen: wordbool; flagged: wordbool; answered: wordbool; draft: wordbool): wordbool; stdcall;

function CkImap_AppendMimeWithFlagsAsync(objHandle: HCkImap; mailbox: PWideChar; mimeText: PWideChar; seen: wordbool; flagged: wordbool; answered: wordbool; draft: wordbool): HCkTask; stdcall;

function CkImap_AppendMimeWithFlagsSb(objHandle: HCkImap; mailbox: PWideChar; sbMime: HCkStringBuilder; seen: wordbool; flagged: wordbool; answered: wordbool; draft: wordbool): wordbool; stdcall;

function CkImap_AppendMimeWithFlagsSbAsync(objHandle: HCkImap; mailbox: PWideChar; sbMime: HCkStringBuilder; seen: wordbool; flagged: wordbool; answered: wordbool; draft: wordbool): HCkTask; stdcall;

function CkImap_Capability(objHandle: HCkImap; outStr: HCkString): wordbool; stdcall;

function CkImap__capability(objHandle: HCkImap): PWideChar; stdcall;

function CkImap_CapabilityAsync(objHandle: HCkImap): HCkTask; stdcall;

function CkImap_CheckConnection(objHandle: HCkImap): wordbool; stdcall;

function CkImap_CheckForNewEmail(objHandle: HCkImap): HCkMessageSet; stdcall;

function CkImap_CheckForNewEmailAsync(objHandle: HCkImap): HCkTask; stdcall;

procedure CkImap_ClearSessionLog(objHandle: HCkImap); stdcall;

function CkImap_CloseMailbox(objHandle: HCkImap; mailbox: PWideChar): wordbool; stdcall;

function CkImap_CloseMailboxAsync(objHandle: HCkImap; mailbox: PWideChar): HCkTask; stdcall;

function CkImap_Connect(objHandle: HCkImap; domainName: PWideChar): wordbool; stdcall;

function CkImap_ConnectAsync(objHandle: HCkImap; domainName: PWideChar): HCkTask; stdcall;

function CkImap_Copy(objHandle: HCkImap; msgId: LongWord; bUid: wordbool; copyToMailbox: PWideChar): wordbool; stdcall;

function CkImap_CopyAsync(objHandle: HCkImap; msgId: LongWord; bUid: wordbool; copyToMailbox: PWideChar): HCkTask; stdcall;

function CkImap_CopyMultiple(objHandle: HCkImap; messageSet: HCkMessageSet; copyToMailbox: PWideChar): wordbool; stdcall;

function CkImap_CopyMultipleAsync(objHandle: HCkImap; messageSet: HCkMessageSet; copyToMailbox: PWideChar): HCkTask; stdcall;

function CkImap_CopySequence(objHandle: HCkImap; startSeqNum: Integer; count: Integer; copyToMailbox: PWideChar): wordbool; stdcall;

function CkImap_CopySequenceAsync(objHandle: HCkImap; startSeqNum: Integer; count: Integer; copyToMailbox: PWideChar): HCkTask; stdcall;

function CkImap_CreateMailbox(objHandle: HCkImap; mailbox: PWideChar): wordbool; stdcall;

function CkImap_CreateMailboxAsync(objHandle: HCkImap; mailbox: PWideChar): HCkTask; stdcall;

function CkImap_DeleteMailbox(objHandle: HCkImap; mailbox: PWideChar): wordbool; stdcall;

function CkImap_DeleteMailboxAsync(objHandle: HCkImap; mailbox: PWideChar): HCkTask; stdcall;

function CkImap_Disconnect(objHandle: HCkImap): wordbool; stdcall;

function CkImap_DisconnectAsync(objHandle: HCkImap): HCkTask; stdcall;

function CkImap_ExamineMailbox(objHandle: HCkImap; mailbox: PWideChar): wordbool; stdcall;

function CkImap_ExamineMailboxAsync(objHandle: HCkImap; mailbox: PWideChar): HCkTask; stdcall;

function CkImap_Expunge(objHandle: HCkImap): wordbool; stdcall;

function CkImap_ExpungeAsync(objHandle: HCkImap): HCkTask; stdcall;

function CkImap_ExpungeAndClose(objHandle: HCkImap): wordbool; stdcall;

function CkImap_ExpungeAndCloseAsync(objHandle: HCkImap): HCkTask; stdcall;

function CkImap_FetchAttachment(objHandle: HCkImap; emailObject: HCkEmail; attachmentIndex: Integer; saveToPath: PWideChar): wordbool; stdcall;

function CkImap_FetchAttachmentAsync(objHandle: HCkImap; emailObject: HCkEmail; attachmentIndex: Integer; saveToPath: PWideChar): HCkTask; stdcall;

function CkImap_FetchAttachmentBd(objHandle: HCkImap; email: HCkEmail; attachmentIndex: Integer; binData: HCkBinData): wordbool; stdcall;

function CkImap_FetchAttachmentBdAsync(objHandle: HCkImap; email: HCkEmail; attachmentIndex: Integer; binData: HCkBinData): HCkTask; stdcall;

function CkImap_FetchAttachmentBytes(objHandle: HCkImap; email: HCkEmail; attachIndex: Integer; outData: HCkByteData): wordbool; stdcall;

function CkImap_FetchAttachmentBytesAsync(objHandle: HCkImap; email: HCkEmail; attachIndex: Integer): HCkTask; stdcall;

function CkImap_FetchAttachmentSb(objHandle: HCkImap; email: HCkEmail; attachmentIndex: Integer; charset: PWideChar; sb: HCkStringBuilder): wordbool; stdcall;

function CkImap_FetchAttachmentSbAsync(objHandle: HCkImap; email: HCkEmail; attachmentIndex: Integer; charset: PWideChar; sb: HCkStringBuilder): HCkTask; stdcall;

function CkImap_FetchAttachmentString(objHandle: HCkImap; emailObject: HCkEmail; attachmentIndex: Integer; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkImap__fetchAttachmentString(objHandle: HCkImap; emailObject: HCkEmail; attachmentIndex: Integer; charset: PWideChar): PWideChar; stdcall;

function CkImap_FetchAttachmentStringAsync(objHandle: HCkImap; emailObject: HCkEmail; attachmentIndex: Integer; charset: PWideChar): HCkTask; stdcall;

function CkImap_FetchBundle(objHandle: HCkImap; messageSet: HCkMessageSet): HCkEmailBundle; stdcall;

function CkImap_FetchBundleAsync(objHandle: HCkImap; messageSet: HCkMessageSet): HCkTask; stdcall;

function CkImap_FetchBundleAsMime(objHandle: HCkImap; messageSet: HCkMessageSet): HCkStringArray; stdcall;

function CkImap_FetchBundleAsMimeAsync(objHandle: HCkImap; messageSet: HCkMessageSet): HCkTask; stdcall;

function CkImap_FetchChunk(objHandle: HCkImap; startSeqNum: Integer; count: Integer; failedSet: HCkMessageSet; fetchedSet: HCkMessageSet): HCkEmailBundle; stdcall;

function CkImap_FetchChunkAsync(objHandle: HCkImap; startSeqNum: Integer; count: Integer; failedSet: HCkMessageSet; fetchedSet: HCkMessageSet): HCkTask; stdcall;

function CkImap_FetchFlags(objHandle: HCkImap; msgId: LongWord; bUid: wordbool; outStr: HCkString): wordbool; stdcall;

function CkImap__fetchFlags(objHandle: HCkImap; msgId: LongWord; bUid: wordbool): PWideChar; stdcall;

function CkImap_FetchFlagsAsync(objHandle: HCkImap; msgId: LongWord; bUid: wordbool): HCkTask; stdcall;

function CkImap_FetchHeaders(objHandle: HCkImap; messageSet: HCkMessageSet): HCkEmailBundle; stdcall;

function CkImap_FetchHeadersAsync(objHandle: HCkImap; messageSet: HCkMessageSet): HCkTask; stdcall;

function CkImap_FetchSequence(objHandle: HCkImap; startSeqNum: Integer; numMessages: Integer): HCkEmailBundle; stdcall;

function CkImap_FetchSequenceAsync(objHandle: HCkImap; startSeqNum: Integer; numMessages: Integer): HCkTask; stdcall;

function CkImap_FetchSequenceAsMime(objHandle: HCkImap; startSeqNum: Integer; numMessages: Integer): HCkStringArray; stdcall;

function CkImap_FetchSequenceAsMimeAsync(objHandle: HCkImap; startSeqNum: Integer; numMessages: Integer): HCkTask; stdcall;

function CkImap_FetchSequenceHeaders(objHandle: HCkImap; startSeqNum: Integer; numMessages: Integer): HCkEmailBundle; stdcall;

function CkImap_FetchSequenceHeadersAsync(objHandle: HCkImap; startSeqNum: Integer; numMessages: Integer): HCkTask; stdcall;

function CkImap_FetchSingle(objHandle: HCkImap; msgId: LongWord; bUid: wordbool): HCkEmail; stdcall;

function CkImap_FetchSingleAsync(objHandle: HCkImap; msgId: LongWord; bUid: wordbool): HCkTask; stdcall;

function CkImap_FetchSingleAsMime(objHandle: HCkImap; msgId: LongWord; bUid: wordbool; outStr: HCkString): wordbool; stdcall;

function CkImap__fetchSingleAsMime(objHandle: HCkImap; msgId: LongWord; bUid: wordbool): PWideChar; stdcall;

function CkImap_FetchSingleAsMimeAsync(objHandle: HCkImap; msgId: LongWord; bUid: wordbool): HCkTask; stdcall;

function CkImap_FetchSingleAsMimeSb(objHandle: HCkImap; msgId: LongWord; bUid: wordbool; sbMime: HCkStringBuilder): wordbool; stdcall;

function CkImap_FetchSingleAsMimeSbAsync(objHandle: HCkImap; msgId: LongWord; bUid: wordbool; sbMime: HCkStringBuilder): HCkTask; stdcall;

function CkImap_FetchSingleBd(objHandle: HCkImap; msgId: LongWord; bUid: wordbool; mimeData: HCkBinData): wordbool; stdcall;

function CkImap_FetchSingleBdAsync(objHandle: HCkImap; msgId: LongWord; bUid: wordbool; mimeData: HCkBinData): HCkTask; stdcall;

function CkImap_FetchSingleHeader(objHandle: HCkImap; msgId: LongWord; bUid: wordbool): HCkEmail; stdcall;

function CkImap_FetchSingleHeaderAsync(objHandle: HCkImap; msgId: LongWord; bUid: wordbool): HCkTask; stdcall;

function CkImap_FetchSingleHeaderAsMime(objHandle: HCkImap; msgId: LongWord; bUID: wordbool; outStr: HCkString): wordbool; stdcall;

function CkImap__fetchSingleHeaderAsMime(objHandle: HCkImap; msgId: LongWord; bUID: wordbool): PWideChar; stdcall;

function CkImap_FetchSingleHeaderAsMimeAsync(objHandle: HCkImap; msgId: LongWord; bUID: wordbool): HCkTask; stdcall;

function CkImap_GetAllUids(objHandle: HCkImap): HCkMessageSet; stdcall;

function CkImap_GetAllUidsAsync(objHandle: HCkImap): HCkTask; stdcall;

function CkImap_GetMailAttachFilename(objHandle: HCkImap; email: HCkEmail; attachIndex: Integer; outStr: HCkString): wordbool; stdcall;

function CkImap__getMailAttachFilename(objHandle: HCkImap; email: HCkEmail; attachIndex: Integer): PWideChar; stdcall;

function CkImap_GetMailAttachSize(objHandle: HCkImap; email: HCkEmail; attachIndex: Integer): Integer; stdcall;

function CkImap_GetMailboxStatus(objHandle: HCkImap; mailbox: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkImap__getMailboxStatus(objHandle: HCkImap; mailbox: PWideChar): PWideChar; stdcall;

function CkImap_GetMailboxStatusAsync(objHandle: HCkImap; mailbox: PWideChar): HCkTask; stdcall;

function CkImap_GetMailFlag(objHandle: HCkImap; email: HCkEmail; flagName: PWideChar): Integer; stdcall;

function CkImap_GetMailNumAttach(objHandle: HCkImap; email: HCkEmail): Integer; stdcall;

function CkImap_GetMailSize(objHandle: HCkImap; email: HCkEmail): Integer; stdcall;

function CkImap_GetQuota(objHandle: HCkImap; quotaRoot: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkImap__getQuota(objHandle: HCkImap; quotaRoot: PWideChar): PWideChar; stdcall;

function CkImap_GetQuotaAsync(objHandle: HCkImap; quotaRoot: PWideChar): HCkTask; stdcall;

function CkImap_GetQuotaRoot(objHandle: HCkImap; mailboxName: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkImap__getQuotaRoot(objHandle: HCkImap; mailboxName: PWideChar): PWideChar; stdcall;

function CkImap_GetQuotaRootAsync(objHandle: HCkImap; mailboxName: PWideChar): HCkTask; stdcall;

function CkImap_GetSslServerCert(objHandle: HCkImap): HCkCert; stdcall;

function CkImap_HasCapability(objHandle: HCkImap; name: PWideChar; capabilityResponse: PWideChar): wordbool; stdcall;

function CkImap_IdleCheck(objHandle: HCkImap; timeoutMs: Integer; outStr: HCkString): wordbool; stdcall;

function CkImap__idleCheck(objHandle: HCkImap; timeoutMs: Integer): PWideChar; stdcall;

function CkImap_IdleCheckAsync(objHandle: HCkImap; timeoutMs: Integer): HCkTask; stdcall;

function CkImap_IdleDone(objHandle: HCkImap): wordbool; stdcall;

function CkImap_IdleDoneAsync(objHandle: HCkImap): HCkTask; stdcall;

function CkImap_IdleStart(objHandle: HCkImap): wordbool; stdcall;

function CkImap_IdleStartAsync(objHandle: HCkImap): HCkTask; stdcall;

function CkImap_IsConnected(objHandle: HCkImap): wordbool; stdcall;

function CkImap_IsLoggedIn(objHandle: HCkImap): wordbool; stdcall;

function CkImap_IsUnlocked(objHandle: HCkImap): wordbool; stdcall;

function CkImap_ListMailboxes(objHandle: HCkImap; reference: PWideChar; wildcardedMailbox: PWideChar): HCkMailboxes; stdcall;

function CkImap_ListMailboxesAsync(objHandle: HCkImap; reference: PWideChar; wildcardedMailbox: PWideChar): HCkTask; stdcall;

function CkImap_ListSubscribed(objHandle: HCkImap; reference: PWideChar; wildcardedMailbox: PWideChar): HCkMailboxes; stdcall;

function CkImap_ListSubscribedAsync(objHandle: HCkImap; reference: PWideChar; wildcardedMailbox: PWideChar): HCkTask; stdcall;

function CkImap_LoadTaskCaller(objHandle: HCkImap; task: HCkTask): wordbool; stdcall;

function CkImap_Login(objHandle: HCkImap; loginName: PWideChar; password: PWideChar): wordbool; stdcall;

function CkImap_LoginAsync(objHandle: HCkImap; loginName: PWideChar; password: PWideChar): HCkTask; stdcall;

function CkImap_LoginSecure(objHandle: HCkImap; loginName: HCkSecureString; password: HCkSecureString): wordbool; stdcall;

function CkImap_LoginSecureAsync(objHandle: HCkImap; loginName: HCkSecureString; password: HCkSecureString): HCkTask; stdcall;

function CkImap_Logout(objHandle: HCkImap): wordbool; stdcall;

function CkImap_LogoutAsync(objHandle: HCkImap): HCkTask; stdcall;

function CkImap_MoveMessages(objHandle: HCkImap; messageSet: HCkMessageSet; destFolder: PWideChar): wordbool; stdcall;

function CkImap_MoveMessagesAsync(objHandle: HCkImap; messageSet: HCkMessageSet; destFolder: PWideChar): HCkTask; stdcall;

function CkImap_Noop(objHandle: HCkImap): wordbool; stdcall;

function CkImap_NoopAsync(objHandle: HCkImap): HCkTask; stdcall;

function CkImap_RefetchMailFlags(objHandle: HCkImap; email: HCkEmail): wordbool; stdcall;

function CkImap_RefetchMailFlagsAsync(objHandle: HCkImap; email: HCkEmail): HCkTask; stdcall;

function CkImap_RenameMailbox(objHandle: HCkImap; fromMailbox: PWideChar; toMailbox: PWideChar): wordbool; stdcall;

function CkImap_RenameMailboxAsync(objHandle: HCkImap; fromMailbox: PWideChar; toMailbox: PWideChar): HCkTask; stdcall;

function CkImap_SaveLastError(objHandle: HCkImap; path: PWideChar): wordbool; stdcall;

function CkImap_Search(objHandle: HCkImap; criteria: PWideChar; bUid: wordbool): HCkMessageSet; stdcall;

function CkImap_SearchAsync(objHandle: HCkImap; criteria: PWideChar; bUid: wordbool): HCkTask; stdcall;

function CkImap_SelectMailbox(objHandle: HCkImap; mailbox: PWideChar): wordbool; stdcall;

function CkImap_SelectMailboxAsync(objHandle: HCkImap; mailbox: PWideChar): HCkTask; stdcall;

function CkImap_SendRawCommand(objHandle: HCkImap; cmd: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkImap__sendRawCommand(objHandle: HCkImap; cmd: PWideChar): PWideChar; stdcall;

function CkImap_SendRawCommandAsync(objHandle: HCkImap; cmd: PWideChar): HCkTask; stdcall;

function CkImap_SendRawCommandB(objHandle: HCkImap; cmd: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkImap_SendRawCommandBAsync(objHandle: HCkImap; cmd: PWideChar): HCkTask; stdcall;

function CkImap_SendRawCommandC(objHandle: HCkImap; cmd: HCkByteData; outData: HCkByteData): wordbool; stdcall;

function CkImap_SendRawCommandCAsync(objHandle: HCkImap; cmd: HCkByteData): HCkTask; stdcall;

function CkImap_SetDecryptCert(objHandle: HCkImap; cert: HCkCert): wordbool; stdcall;

function CkImap_SetDecryptCert2(objHandle: HCkImap; cert: HCkCert; key: HCkPrivateKey): wordbool; stdcall;

function CkImap_SetFlag(objHandle: HCkImap; msgId: LongWord; bUid: wordbool; flagName: PWideChar; value: Integer): wordbool; stdcall;

function CkImap_SetFlagAsync(objHandle: HCkImap; msgId: LongWord; bUid: wordbool; flagName: PWideChar; value: Integer): HCkTask; stdcall;

function CkImap_SetFlags(objHandle: HCkImap; messageSet: HCkMessageSet; flagName: PWideChar; value: Integer): wordbool; stdcall;

function CkImap_SetFlagsAsync(objHandle: HCkImap; messageSet: HCkMessageSet; flagName: PWideChar; value: Integer): HCkTask; stdcall;

function CkImap_SetMailFlag(objHandle: HCkImap; email: HCkEmail; flagName: PWideChar; value: Integer): wordbool; stdcall;

function CkImap_SetMailFlagAsync(objHandle: HCkImap; email: HCkEmail; flagName: PWideChar; value: Integer): HCkTask; stdcall;

function CkImap_SetQuota(objHandle: HCkImap; quotaRoot: PWideChar; resource: PWideChar; quota: Integer): wordbool; stdcall;

function CkImap_SetQuotaAsync(objHandle: HCkImap; quotaRoot: PWideChar; resource: PWideChar; quota: Integer): HCkTask; stdcall;

function CkImap_SetSslClientCert(objHandle: HCkImap; cert: HCkCert): wordbool; stdcall;

function CkImap_SetSslClientCertPem(objHandle: HCkImap; pemDataOrFilename: PWideChar; pemPassword: PWideChar): wordbool; stdcall;

function CkImap_SetSslClientCertPfx(objHandle: HCkImap; pfxFilename: PWideChar; pfxPassword: PWideChar): wordbool; stdcall;

function CkImap_Sort(objHandle: HCkImap; sortCriteria: PWideChar; charset: PWideChar; searchCriteria: PWideChar; bUid: wordbool): HCkMessageSet; stdcall;

function CkImap_SortAsync(objHandle: HCkImap; sortCriteria: PWideChar; charset: PWideChar; searchCriteria: PWideChar; bUid: wordbool): HCkTask; stdcall;

function CkImap_SshAuthenticatePk(objHandle: HCkImap; sshLogin: PWideChar; privateKey: HCkSshKey): wordbool; stdcall;

function CkImap_SshAuthenticatePkAsync(objHandle: HCkImap; sshLogin: PWideChar; privateKey: HCkSshKey): HCkTask; stdcall;

function CkImap_SshAuthenticatePw(objHandle: HCkImap; sshLogin: PWideChar; sshPassword: PWideChar): wordbool; stdcall;

function CkImap_SshAuthenticatePwAsync(objHandle: HCkImap; sshLogin: PWideChar; sshPassword: PWideChar): HCkTask; stdcall;

function CkImap_SshCloseTunnel(objHandle: HCkImap): wordbool; stdcall;

function CkImap_SshCloseTunnelAsync(objHandle: HCkImap): HCkTask; stdcall;

function CkImap_SshOpenTunnel(objHandle: HCkImap; sshHostname: PWideChar; sshPort: Integer): wordbool; stdcall;

function CkImap_SshOpenTunnelAsync(objHandle: HCkImap; sshHostname: PWideChar; sshPort: Integer): HCkTask; stdcall;

function CkImap_StoreFlags(objHandle: HCkImap; msgId: LongWord; bUid: wordbool; flagNames: PWideChar; value: Integer): wordbool; stdcall;

function CkImap_StoreFlagsAsync(objHandle: HCkImap; msgId: LongWord; bUid: wordbool; flagNames: PWideChar; value: Integer): HCkTask; stdcall;

function CkImap_Subscribe(objHandle: HCkImap; mailbox: PWideChar): wordbool; stdcall;

function CkImap_SubscribeAsync(objHandle: HCkImap; mailbox: PWideChar): HCkTask; stdcall;

function CkImap_ThreadCmd(objHandle: HCkImap; threadAlg: PWideChar; charset: PWideChar; searchCriteria: PWideChar; bUid: wordbool): HCkJsonObject; stdcall;

function CkImap_ThreadCmdAsync(objHandle: HCkImap; threadAlg: PWideChar; charset: PWideChar; searchCriteria: PWideChar; bUid: wordbool): HCkTask; stdcall;

function CkImap_UnlockComponent(objHandle: HCkImap; unlockCode: PWideChar): wordbool; stdcall;

function CkImap_Unsubscribe(objHandle: HCkImap; mailbox: PWideChar): wordbool; stdcall;

function CkImap_UnsubscribeAsync(objHandle: HCkImap; mailbox: PWideChar): HCkTask; stdcall;

function CkImap_UseCertVault(objHandle: HCkImap; vault: HCkXmlCertVault): wordbool; stdcall;

function CkImap_UseSsh(objHandle: HCkImap; ssh: HCkSsh): wordbool; stdcall;

function CkImap_UseSshTunnel(objHandle: HCkImap; tunnel: HCkSocket): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkImap_Create; external DLLName;
procedure CkImap_Dispose; external DLLName;

procedure CkImap_SetAbortCheck; external DLLName;
procedure CkImap_SetProgressInfo; external DLLName;
procedure CkImap_SetPercentDone; external DLLName;
procedure CkImap_SetTaskCompleted; external DLLName;
function CkImap_getAbortCurrent; external DLLName;
procedure CkImap_putAbortCurrent; external DLLName;
function CkImap_getAppendSeen; external DLLName;
procedure CkImap_putAppendSeen; external DLLName;
function CkImap_getAppendUid; external DLLName;
procedure CkImap_getAuthMethod; external DLLName;
procedure CkImap_putAuthMethod; external DLLName;
function CkImap__authMethod; external DLLName;
procedure CkImap_getAuthzId; external DLLName;
procedure CkImap_putAuthzId; external DLLName;
function CkImap__authzId; external DLLName;
function CkImap_getAutoDownloadAttachments; external DLLName;
procedure CkImap_putAutoDownloadAttachments; external DLLName;
function CkImap_getAutoFix; external DLLName;
procedure CkImap_putAutoFix; external DLLName;
procedure CkImap_getClientIpAddress; external DLLName;
procedure CkImap_putClientIpAddress; external DLLName;
function CkImap__clientIpAddress; external DLLName;
procedure CkImap_getConnectedToHost; external DLLName;
function CkImap__connectedToHost; external DLLName;
function CkImap_getConnectTimeout; external DLLName;
procedure CkImap_putConnectTimeout; external DLLName;
procedure CkImap_getDebugLogFilePath; external DLLName;
procedure CkImap_putDebugLogFilePath; external DLLName;
function CkImap__debugLogFilePath; external DLLName;
procedure CkImap_getDomain; external DLLName;
procedure CkImap_putDomain; external DLLName;
function CkImap__domain; external DLLName;
function CkImap_getHeartbeatMs; external DLLName;
procedure CkImap_putHeartbeatMs; external DLLName;
procedure CkImap_getHighestModSeq; external DLLName;
function CkImap__highestModSeq; external DLLName;
procedure CkImap_getHttpProxyAuthMethod; external DLLName;
procedure CkImap_putHttpProxyAuthMethod; external DLLName;
function CkImap__httpProxyAuthMethod; external DLLName;
procedure CkImap_getHttpProxyDomain; external DLLName;
procedure CkImap_putHttpProxyDomain; external DLLName;
function CkImap__httpProxyDomain; external DLLName;
procedure CkImap_getHttpProxyHostname; external DLLName;
procedure CkImap_putHttpProxyHostname; external DLLName;
function CkImap__httpProxyHostname; external DLLName;
procedure CkImap_getHttpProxyPassword; external DLLName;
procedure CkImap_putHttpProxyPassword; external DLLName;
function CkImap__httpProxyPassword; external DLLName;
function CkImap_getHttpProxyPort; external DLLName;
procedure CkImap_putHttpProxyPort; external DLLName;
procedure CkImap_getHttpProxyUsername; external DLLName;
procedure CkImap_putHttpProxyUsername; external DLLName;
function CkImap__httpProxyUsername; external DLLName;
function CkImap_getKeepSessionLog; external DLLName;
procedure CkImap_putKeepSessionLog; external DLLName;
procedure CkImap_getLastAppendedMime; external DLLName;
function CkImap__lastAppendedMime; external DLLName;
procedure CkImap_getLastCommand; external DLLName;
function CkImap__lastCommand; external DLLName;
procedure CkImap_getLastErrorHtml; external DLLName;
function CkImap__lastErrorHtml; external DLLName;
procedure CkImap_getLastErrorText; external DLLName;
function CkImap__lastErrorText; external DLLName;
procedure CkImap_getLastErrorXml; external DLLName;
function CkImap__lastErrorXml; external DLLName;
procedure CkImap_getLastIntermediateResponse; external DLLName;
function CkImap__lastIntermediateResponse; external DLLName;
function CkImap_getLastMethodSuccess; external DLLName;
procedure CkImap_putLastMethodSuccess; external DLLName;
procedure CkImap_getLastResponse; external DLLName;
function CkImap__lastResponse; external DLLName;
procedure CkImap_getLastResponseCode; external DLLName;
function CkImap__lastResponseCode; external DLLName;
procedure CkImap_getLoggedInUser; external DLLName;
function CkImap__loggedInUser; external DLLName;
function CkImap_getNumMessages; external DLLName;
function CkImap_getPeekMode; external DLLName;
procedure CkImap_putPeekMode; external DLLName;
function CkImap_getPercentDoneScale; external DLLName;
procedure CkImap_putPercentDoneScale; external DLLName;
function CkImap_getPort; external DLLName;
procedure CkImap_putPort; external DLLName;
function CkImap_getPreferIpv6; external DLLName;
procedure CkImap_putPreferIpv6; external DLLName;
function CkImap_getReadTimeout; external DLLName;
procedure CkImap_putReadTimeout; external DLLName;
function CkImap_getRequireSslCertVerify; external DLLName;
procedure CkImap_putRequireSslCertVerify; external DLLName;
procedure CkImap_getSearchCharset; external DLLName;
procedure CkImap_putSearchCharset; external DLLName;
function CkImap__searchCharset; external DLLName;
procedure CkImap_getSelectedMailbox; external DLLName;
function CkImap__selectedMailbox; external DLLName;
function CkImap_getSendBufferSize; external DLLName;
procedure CkImap_putSendBufferSize; external DLLName;
procedure CkImap_getSeparatorChar; external DLLName;
procedure CkImap_putSeparatorChar; external DLLName;
function CkImap__separatorChar; external DLLName;
procedure CkImap_getSessionLog; external DLLName;
function CkImap__sessionLog; external DLLName;
procedure CkImap_getSocksHostname; external DLLName;
procedure CkImap_putSocksHostname; external DLLName;
function CkImap__socksHostname; external DLLName;
procedure CkImap_getSocksPassword; external DLLName;
procedure CkImap_putSocksPassword; external DLLName;
function CkImap__socksPassword; external DLLName;
function CkImap_getSocksPort; external DLLName;
procedure CkImap_putSocksPort; external DLLName;
procedure CkImap_getSocksUsername; external DLLName;
procedure CkImap_putSocksUsername; external DLLName;
function CkImap__socksUsername; external DLLName;
function CkImap_getSocksVersion; external DLLName;
procedure CkImap_putSocksVersion; external DLLName;
function CkImap_getSoRcvBuf; external DLLName;
procedure CkImap_putSoRcvBuf; external DLLName;
function CkImap_getSoSndBuf; external DLLName;
procedure CkImap_putSoSndBuf; external DLLName;
function CkImap_getSsl; external DLLName;
procedure CkImap_putSsl; external DLLName;
procedure CkImap_getSslAllowedCiphers; external DLLName;
procedure CkImap_putSslAllowedCiphers; external DLLName;
function CkImap__sslAllowedCiphers; external DLLName;
procedure CkImap_getSslProtocol; external DLLName;
procedure CkImap_putSslProtocol; external DLLName;
function CkImap__sslProtocol; external DLLName;
function CkImap_getSslServerCertVerified; external DLLName;
function CkImap_getStartTls; external DLLName;
procedure CkImap_putStartTls; external DLLName;
procedure CkImap_getTlsCipherSuite; external DLLName;
function CkImap__tlsCipherSuite; external DLLName;
procedure CkImap_getTlsPinSet; external DLLName;
procedure CkImap_putTlsPinSet; external DLLName;
function CkImap__tlsPinSet; external DLLName;
procedure CkImap_getTlsVersion; external DLLName;
function CkImap__tlsVersion; external DLLName;
function CkImap_getUidNext; external DLLName;
function CkImap_getUidValidity; external DLLName;
procedure CkImap_getUncommonOptions; external DLLName;
procedure CkImap_putUncommonOptions; external DLLName;
function CkImap__uncommonOptions; external DLLName;
function CkImap_getVerboseLogging; external DLLName;
procedure CkImap_putVerboseLogging; external DLLName;
procedure CkImap_getVersion; external DLLName;
function CkImap__version; external DLLName;
function CkImap_AddPfxSourceData; external DLLName;
function CkImap_AddPfxSourceFile; external DLLName;
function CkImap_AppendMail; external DLLName;
function CkImap_AppendMailAsync; external DLLName;
function CkImap_AppendMime; external DLLName;
function CkImap_AppendMimeAsync; external DLLName;
function CkImap_AppendMimeWithDateStr; external DLLName;
function CkImap_AppendMimeWithDateStrAsync; external DLLName;
function CkImap_AppendMimeWithFlags; external DLLName;
function CkImap_AppendMimeWithFlagsAsync; external DLLName;
function CkImap_AppendMimeWithFlagsSb; external DLLName;
function CkImap_AppendMimeWithFlagsSbAsync; external DLLName;
function CkImap_Capability; external DLLName;
function CkImap__capability; external DLLName;
function CkImap_CapabilityAsync; external DLLName;
function CkImap_CheckConnection; external DLLName;
function CkImap_CheckForNewEmail; external DLLName;
function CkImap_CheckForNewEmailAsync; external DLLName;
procedure CkImap_ClearSessionLog; external DLLName;
function CkImap_CloseMailbox; external DLLName;
function CkImap_CloseMailboxAsync; external DLLName;
function CkImap_Connect; external DLLName;
function CkImap_ConnectAsync; external DLLName;
function CkImap_Copy; external DLLName;
function CkImap_CopyAsync; external DLLName;
function CkImap_CopyMultiple; external DLLName;
function CkImap_CopyMultipleAsync; external DLLName;
function CkImap_CopySequence; external DLLName;
function CkImap_CopySequenceAsync; external DLLName;
function CkImap_CreateMailbox; external DLLName;
function CkImap_CreateMailboxAsync; external DLLName;
function CkImap_DeleteMailbox; external DLLName;
function CkImap_DeleteMailboxAsync; external DLLName;
function CkImap_Disconnect; external DLLName;
function CkImap_DisconnectAsync; external DLLName;
function CkImap_ExamineMailbox; external DLLName;
function CkImap_ExamineMailboxAsync; external DLLName;
function CkImap_Expunge; external DLLName;
function CkImap_ExpungeAsync; external DLLName;
function CkImap_ExpungeAndClose; external DLLName;
function CkImap_ExpungeAndCloseAsync; external DLLName;
function CkImap_FetchAttachment; external DLLName;
function CkImap_FetchAttachmentAsync; external DLLName;
function CkImap_FetchAttachmentBd; external DLLName;
function CkImap_FetchAttachmentBdAsync; external DLLName;
function CkImap_FetchAttachmentBytes; external DLLName;
function CkImap_FetchAttachmentBytesAsync; external DLLName;
function CkImap_FetchAttachmentSb; external DLLName;
function CkImap_FetchAttachmentSbAsync; external DLLName;
function CkImap_FetchAttachmentString; external DLLName;
function CkImap__fetchAttachmentString; external DLLName;
function CkImap_FetchAttachmentStringAsync; external DLLName;
function CkImap_FetchBundle; external DLLName;
function CkImap_FetchBundleAsync; external DLLName;
function CkImap_FetchBundleAsMime; external DLLName;
function CkImap_FetchBundleAsMimeAsync; external DLLName;
function CkImap_FetchChunk; external DLLName;
function CkImap_FetchChunkAsync; external DLLName;
function CkImap_FetchFlags; external DLLName;
function CkImap__fetchFlags; external DLLName;
function CkImap_FetchFlagsAsync; external DLLName;
function CkImap_FetchHeaders; external DLLName;
function CkImap_FetchHeadersAsync; external DLLName;
function CkImap_FetchSequence; external DLLName;
function CkImap_FetchSequenceAsync; external DLLName;
function CkImap_FetchSequenceAsMime; external DLLName;
function CkImap_FetchSequenceAsMimeAsync; external DLLName;
function CkImap_FetchSequenceHeaders; external DLLName;
function CkImap_FetchSequenceHeadersAsync; external DLLName;
function CkImap_FetchSingle; external DLLName;
function CkImap_FetchSingleAsync; external DLLName;
function CkImap_FetchSingleAsMime; external DLLName;
function CkImap__fetchSingleAsMime; external DLLName;
function CkImap_FetchSingleAsMimeAsync; external DLLName;
function CkImap_FetchSingleAsMimeSb; external DLLName;
function CkImap_FetchSingleAsMimeSbAsync; external DLLName;
function CkImap_FetchSingleBd; external DLLName;
function CkImap_FetchSingleBdAsync; external DLLName;
function CkImap_FetchSingleHeader; external DLLName;
function CkImap_FetchSingleHeaderAsync; external DLLName;
function CkImap_FetchSingleHeaderAsMime; external DLLName;
function CkImap__fetchSingleHeaderAsMime; external DLLName;
function CkImap_FetchSingleHeaderAsMimeAsync; external DLLName;
function CkImap_GetAllUids; external DLLName;
function CkImap_GetAllUidsAsync; external DLLName;
function CkImap_GetMailAttachFilename; external DLLName;
function CkImap__getMailAttachFilename; external DLLName;
function CkImap_GetMailAttachSize; external DLLName;
function CkImap_GetMailboxStatus; external DLLName;
function CkImap__getMailboxStatus; external DLLName;
function CkImap_GetMailboxStatusAsync; external DLLName;
function CkImap_GetMailFlag; external DLLName;
function CkImap_GetMailNumAttach; external DLLName;
function CkImap_GetMailSize; external DLLName;
function CkImap_GetQuota; external DLLName;
function CkImap__getQuota; external DLLName;
function CkImap_GetQuotaAsync; external DLLName;
function CkImap_GetQuotaRoot; external DLLName;
function CkImap__getQuotaRoot; external DLLName;
function CkImap_GetQuotaRootAsync; external DLLName;
function CkImap_GetSslServerCert; external DLLName;
function CkImap_HasCapability; external DLLName;
function CkImap_IdleCheck; external DLLName;
function CkImap__idleCheck; external DLLName;
function CkImap_IdleCheckAsync; external DLLName;
function CkImap_IdleDone; external DLLName;
function CkImap_IdleDoneAsync; external DLLName;
function CkImap_IdleStart; external DLLName;
function CkImap_IdleStartAsync; external DLLName;
function CkImap_IsConnected; external DLLName;
function CkImap_IsLoggedIn; external DLLName;
function CkImap_IsUnlocked; external DLLName;
function CkImap_ListMailboxes; external DLLName;
function CkImap_ListMailboxesAsync; external DLLName;
function CkImap_ListSubscribed; external DLLName;
function CkImap_ListSubscribedAsync; external DLLName;
function CkImap_LoadTaskCaller; external DLLName;
function CkImap_Login; external DLLName;
function CkImap_LoginAsync; external DLLName;
function CkImap_LoginSecure; external DLLName;
function CkImap_LoginSecureAsync; external DLLName;
function CkImap_Logout; external DLLName;
function CkImap_LogoutAsync; external DLLName;
function CkImap_MoveMessages; external DLLName;
function CkImap_MoveMessagesAsync; external DLLName;
function CkImap_Noop; external DLLName;
function CkImap_NoopAsync; external DLLName;
function CkImap_RefetchMailFlags; external DLLName;
function CkImap_RefetchMailFlagsAsync; external DLLName;
function CkImap_RenameMailbox; external DLLName;
function CkImap_RenameMailboxAsync; external DLLName;
function CkImap_SaveLastError; external DLLName;
function CkImap_Search; external DLLName;
function CkImap_SearchAsync; external DLLName;
function CkImap_SelectMailbox; external DLLName;
function CkImap_SelectMailboxAsync; external DLLName;
function CkImap_SendRawCommand; external DLLName;
function CkImap__sendRawCommand; external DLLName;
function CkImap_SendRawCommandAsync; external DLLName;
function CkImap_SendRawCommandB; external DLLName;
function CkImap_SendRawCommandBAsync; external DLLName;
function CkImap_SendRawCommandC; external DLLName;
function CkImap_SendRawCommandCAsync; external DLLName;
function CkImap_SetDecryptCert; external DLLName;
function CkImap_SetDecryptCert2; external DLLName;
function CkImap_SetFlag; external DLLName;
function CkImap_SetFlagAsync; external DLLName;
function CkImap_SetFlags; external DLLName;
function CkImap_SetFlagsAsync; external DLLName;
function CkImap_SetMailFlag; external DLLName;
function CkImap_SetMailFlagAsync; external DLLName;
function CkImap_SetQuota; external DLLName;
function CkImap_SetQuotaAsync; external DLLName;
function CkImap_SetSslClientCert; external DLLName;
function CkImap_SetSslClientCertPem; external DLLName;
function CkImap_SetSslClientCertPfx; external DLLName;
function CkImap_Sort; external DLLName;
function CkImap_SortAsync; external DLLName;
function CkImap_SshAuthenticatePk; external DLLName;
function CkImap_SshAuthenticatePkAsync; external DLLName;
function CkImap_SshAuthenticatePw; external DLLName;
function CkImap_SshAuthenticatePwAsync; external DLLName;
function CkImap_SshCloseTunnel; external DLLName;
function CkImap_SshCloseTunnelAsync; external DLLName;
function CkImap_SshOpenTunnel; external DLLName;
function CkImap_SshOpenTunnelAsync; external DLLName;
function CkImap_StoreFlags; external DLLName;
function CkImap_StoreFlagsAsync; external DLLName;
function CkImap_Subscribe; external DLLName;
function CkImap_SubscribeAsync; external DLLName;
function CkImap_ThreadCmd; external DLLName;
function CkImap_ThreadCmdAsync; external DLLName;
function CkImap_UnlockComponent; external DLLName;
function CkImap_Unsubscribe; external DLLName;
function CkImap_UnsubscribeAsync; external DLLName;
function CkImap_UseCertVault; external DLLName;
function CkImap_UseSsh; external DLLName;
function CkImap_UseSshTunnel; external DLLName;



end.
