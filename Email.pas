unit Email;

interface

type

HCkDateTime = Pointer;
HCkBinData = Pointer;
HCkByteData = Pointer;
HCkPrivateKey = Pointer;
HCkTask = Pointer;
HCkEmail = Pointer;
HCkString = Pointer;
HCkXmlCertVault = Pointer;
HCkStringArray = Pointer;
HCkStringBuilder = Pointer;
HCkCertChain = Pointer;
HCkCert = Pointer;


function CkEmail_Create: HCkEmail; stdcall;
procedure CkEmail_Dispose(handle: HCkEmail); stdcall;
procedure CkEmail_getBody(objHandle: HCkEmail; outPropVal: HCkString); stdcall;

procedure CkEmail_putBody(objHandle: HCkEmail; newPropVal: PWideChar); stdcall;

function CkEmail__body(objHandle: HCkEmail): PWideChar; stdcall;

procedure CkEmail_getBounceAddress(objHandle: HCkEmail; outPropVal: HCkString); stdcall;

procedure CkEmail_putBounceAddress(objHandle: HCkEmail; newPropVal: PWideChar); stdcall;

function CkEmail__bounceAddress(objHandle: HCkEmail): PWideChar; stdcall;

procedure CkEmail_getCharset(objHandle: HCkEmail; outPropVal: HCkString); stdcall;

procedure CkEmail_putCharset(objHandle: HCkEmail; newPropVal: PWideChar); stdcall;

function CkEmail__charset(objHandle: HCkEmail): PWideChar; stdcall;

procedure CkEmail_getDebugLogFilePath(objHandle: HCkEmail; outPropVal: HCkString); stdcall;

procedure CkEmail_putDebugLogFilePath(objHandle: HCkEmail; newPropVal: PWideChar); stdcall;

function CkEmail__debugLogFilePath(objHandle: HCkEmail): PWideChar; stdcall;

function CkEmail_getDecrypted(objHandle: HCkEmail): wordbool; stdcall;

procedure CkEmail_getEmailDateStr(objHandle: HCkEmail; outPropVal: HCkString); stdcall;

procedure CkEmail_putEmailDateStr(objHandle: HCkEmail; newPropVal: PWideChar); stdcall;

function CkEmail__emailDateStr(objHandle: HCkEmail): PWideChar; stdcall;

procedure CkEmail_getEncryptedBy(objHandle: HCkEmail; outPropVal: HCkString); stdcall;

function CkEmail__encryptedBy(objHandle: HCkEmail): PWideChar; stdcall;

procedure CkEmail_getFileDistList(objHandle: HCkEmail; outPropVal: HCkString); stdcall;

procedure CkEmail_putFileDistList(objHandle: HCkEmail; newPropVal: PWideChar); stdcall;

function CkEmail__fileDistList(objHandle: HCkEmail): PWideChar; stdcall;

procedure CkEmail_getFrom(objHandle: HCkEmail; outPropVal: HCkString); stdcall;

procedure CkEmail_putFrom(objHandle: HCkEmail; newPropVal: PWideChar); stdcall;

function CkEmail__from(objHandle: HCkEmail): PWideChar; stdcall;

procedure CkEmail_getFromAddress(objHandle: HCkEmail; outPropVal: HCkString); stdcall;

procedure CkEmail_putFromAddress(objHandle: HCkEmail; newPropVal: PWideChar); stdcall;

function CkEmail__fromAddress(objHandle: HCkEmail): PWideChar; stdcall;

procedure CkEmail_getFromName(objHandle: HCkEmail; outPropVal: HCkString); stdcall;

procedure CkEmail_putFromName(objHandle: HCkEmail; newPropVal: PWideChar); stdcall;

function CkEmail__fromName(objHandle: HCkEmail): PWideChar; stdcall;

procedure CkEmail_getHeader(objHandle: HCkEmail; outPropVal: HCkString); stdcall;

function CkEmail__header(objHandle: HCkEmail): PWideChar; stdcall;

procedure CkEmail_getLanguage(objHandle: HCkEmail; outPropVal: HCkString); stdcall;

function CkEmail__language(objHandle: HCkEmail): PWideChar; stdcall;

procedure CkEmail_getLastErrorHtml(objHandle: HCkEmail; outPropVal: HCkString); stdcall;

function CkEmail__lastErrorHtml(objHandle: HCkEmail): PWideChar; stdcall;

procedure CkEmail_getLastErrorText(objHandle: HCkEmail; outPropVal: HCkString); stdcall;

function CkEmail__lastErrorText(objHandle: HCkEmail): PWideChar; stdcall;

procedure CkEmail_getLastErrorXml(objHandle: HCkEmail; outPropVal: HCkString); stdcall;

function CkEmail__lastErrorXml(objHandle: HCkEmail): PWideChar; stdcall;

function CkEmail_getLastMethodSuccess(objHandle: HCkEmail): wordbool; stdcall;

procedure CkEmail_putLastMethodSuccess(objHandle: HCkEmail; newPropVal: wordbool); stdcall;

procedure CkEmail_getLocalDateStr(objHandle: HCkEmail; outPropVal: HCkString); stdcall;

procedure CkEmail_putLocalDateStr(objHandle: HCkEmail; newPropVal: PWideChar); stdcall;

function CkEmail__localDateStr(objHandle: HCkEmail): PWideChar; stdcall;

procedure CkEmail_getMailer(objHandle: HCkEmail; outPropVal: HCkString); stdcall;

procedure CkEmail_putMailer(objHandle: HCkEmail; newPropVal: PWideChar); stdcall;

function CkEmail__mailer(objHandle: HCkEmail): PWideChar; stdcall;

function CkEmail_getNumAlternatives(objHandle: HCkEmail): Integer; stdcall;

function CkEmail_getNumAttachedMessages(objHandle: HCkEmail): Integer; stdcall;

function CkEmail_getNumAttachments(objHandle: HCkEmail): Integer; stdcall;

function CkEmail_getNumBcc(objHandle: HCkEmail): Integer; stdcall;

function CkEmail_getNumCC(objHandle: HCkEmail): Integer; stdcall;

function CkEmail_getNumDaysOld(objHandle: HCkEmail): Integer; stdcall;

function CkEmail_getNumDigests(objHandle: HCkEmail): Integer; stdcall;

function CkEmail_getNumHeaderFields(objHandle: HCkEmail): Integer; stdcall;

function CkEmail_getNumRelatedItems(objHandle: HCkEmail): Integer; stdcall;

function CkEmail_getNumReplacePatterns(objHandle: HCkEmail): Integer; stdcall;

function CkEmail_getNumReports(objHandle: HCkEmail): Integer; stdcall;

function CkEmail_getNumTo(objHandle: HCkEmail): Integer; stdcall;

procedure CkEmail_getOaepHash(objHandle: HCkEmail; outPropVal: HCkString); stdcall;

procedure CkEmail_putOaepHash(objHandle: HCkEmail; newPropVal: PWideChar); stdcall;

function CkEmail__oaepHash(objHandle: HCkEmail): PWideChar; stdcall;

procedure CkEmail_getOaepMgfHash(objHandle: HCkEmail; outPropVal: HCkString); stdcall;

procedure CkEmail_putOaepMgfHash(objHandle: HCkEmail; newPropVal: PWideChar); stdcall;

function CkEmail__oaepMgfHash(objHandle: HCkEmail): PWideChar; stdcall;

function CkEmail_getOaepPadding(objHandle: HCkEmail): wordbool; stdcall;

procedure CkEmail_putOaepPadding(objHandle: HCkEmail; newPropVal: wordbool); stdcall;

function CkEmail_getOverwriteExisting(objHandle: HCkEmail): wordbool; stdcall;

procedure CkEmail_putOverwriteExisting(objHandle: HCkEmail; newPropVal: wordbool); stdcall;

procedure CkEmail_getPkcs7CryptAlg(objHandle: HCkEmail; outPropVal: HCkString); stdcall;

procedure CkEmail_putPkcs7CryptAlg(objHandle: HCkEmail; newPropVal: PWideChar); stdcall;

function CkEmail__pkcs7CryptAlg(objHandle: HCkEmail): PWideChar; stdcall;

function CkEmail_getPkcs7KeyLength(objHandle: HCkEmail): Integer; stdcall;

procedure CkEmail_putPkcs7KeyLength(objHandle: HCkEmail; newPropVal: Integer); stdcall;

procedure CkEmail_getPreferredCharset(objHandle: HCkEmail; outPropVal: HCkString); stdcall;

procedure CkEmail_putPreferredCharset(objHandle: HCkEmail; newPropVal: PWideChar); stdcall;

function CkEmail__preferredCharset(objHandle: HCkEmail): PWideChar; stdcall;

function CkEmail_getPrependHeaders(objHandle: HCkEmail): wordbool; stdcall;

procedure CkEmail_putPrependHeaders(objHandle: HCkEmail; newPropVal: wordbool); stdcall;

function CkEmail_getReceivedEncrypted(objHandle: HCkEmail): wordbool; stdcall;

function CkEmail_getReceivedSigned(objHandle: HCkEmail): wordbool; stdcall;

procedure CkEmail_getReplyTo(objHandle: HCkEmail; outPropVal: HCkString); stdcall;

procedure CkEmail_putReplyTo(objHandle: HCkEmail; newPropVal: PWideChar); stdcall;

function CkEmail__replyTo(objHandle: HCkEmail): PWideChar; stdcall;

function CkEmail_getReturnReceipt(objHandle: HCkEmail): wordbool; stdcall;

procedure CkEmail_putReturnReceipt(objHandle: HCkEmail; newPropVal: wordbool); stdcall;

function CkEmail_getSendEncrypted(objHandle: HCkEmail): wordbool; stdcall;

procedure CkEmail_putSendEncrypted(objHandle: HCkEmail; newPropVal: wordbool); stdcall;

procedure CkEmail_getSender(objHandle: HCkEmail; outPropVal: HCkString); stdcall;

procedure CkEmail_putSender(objHandle: HCkEmail; newPropVal: PWideChar); stdcall;

function CkEmail__sender(objHandle: HCkEmail): PWideChar; stdcall;

function CkEmail_getSendSigned(objHandle: HCkEmail): wordbool; stdcall;

procedure CkEmail_putSendSigned(objHandle: HCkEmail; newPropVal: wordbool); stdcall;

function CkEmail_getSignaturesValid(objHandle: HCkEmail): wordbool; stdcall;

procedure CkEmail_getSignedBy(objHandle: HCkEmail; outPropVal: HCkString); stdcall;

function CkEmail__signedBy(objHandle: HCkEmail): PWideChar; stdcall;

procedure CkEmail_getSigningAlg(objHandle: HCkEmail; outPropVal: HCkString); stdcall;

procedure CkEmail_putSigningAlg(objHandle: HCkEmail; newPropVal: PWideChar); stdcall;

function CkEmail__signingAlg(objHandle: HCkEmail): PWideChar; stdcall;

procedure CkEmail_getSigningHashAlg(objHandle: HCkEmail; outPropVal: HCkString); stdcall;

procedure CkEmail_putSigningHashAlg(objHandle: HCkEmail; newPropVal: PWideChar); stdcall;

function CkEmail__signingHashAlg(objHandle: HCkEmail): PWideChar; stdcall;

function CkEmail_getSize(objHandle: HCkEmail): Integer; stdcall;

procedure CkEmail_getSubject(objHandle: HCkEmail; outPropVal: HCkString); stdcall;

procedure CkEmail_putSubject(objHandle: HCkEmail; newPropVal: PWideChar); stdcall;

function CkEmail__subject(objHandle: HCkEmail): PWideChar; stdcall;

procedure CkEmail_getUidl(objHandle: HCkEmail; outPropVal: HCkString); stdcall;

function CkEmail__uidl(objHandle: HCkEmail): PWideChar; stdcall;

procedure CkEmail_getUncommonOptions(objHandle: HCkEmail; outPropVal: HCkString); stdcall;

procedure CkEmail_putUncommonOptions(objHandle: HCkEmail; newPropVal: PWideChar); stdcall;

function CkEmail__uncommonOptions(objHandle: HCkEmail): PWideChar; stdcall;

function CkEmail_getUnpackUseRelPaths(objHandle: HCkEmail): wordbool; stdcall;

procedure CkEmail_putUnpackUseRelPaths(objHandle: HCkEmail; newPropVal: wordbool); stdcall;

function CkEmail_getVerboseLogging(objHandle: HCkEmail): wordbool; stdcall;

procedure CkEmail_putVerboseLogging(objHandle: HCkEmail; newPropVal: wordbool); stdcall;

procedure CkEmail_getVersion(objHandle: HCkEmail; outPropVal: HCkString); stdcall;

function CkEmail__version(objHandle: HCkEmail): PWideChar; stdcall;

function CkEmail_AddAttachmentBd(objHandle: HCkEmail; filename: PWideChar; binData: HCkBinData; contentType: PWideChar): wordbool; stdcall;

procedure CkEmail_AddAttachmentHeader(objHandle: HCkEmail; index: Integer; fieldName: PWideChar; fieldValue: PWideChar); stdcall;

function CkEmail_AddBcc(objHandle: HCkEmail; friendlyName: PWideChar; emailAddress: PWideChar): wordbool; stdcall;

function CkEmail_AddCC(objHandle: HCkEmail; friendlyName: PWideChar; emailAddress: PWideChar): wordbool; stdcall;

function CkEmail_AddDataAttachment(objHandle: HCkEmail; fileName: PWideChar; content: HCkByteData): wordbool; stdcall;

function CkEmail_AddDataAttachment2(objHandle: HCkEmail; fileName: PWideChar; content: HCkByteData; contentType: PWideChar): wordbool; stdcall;

function CkEmail_AddEncryptCert(objHandle: HCkEmail; cert: HCkCert): wordbool; stdcall;

function CkEmail_AddFileAttachment(objHandle: HCkEmail; path: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkEmail__addFileAttachment(objHandle: HCkEmail; path: PWideChar): PWideChar; stdcall;

function CkEmail_AddFileAttachment2(objHandle: HCkEmail; path: PWideChar; contentType: PWideChar): wordbool; stdcall;

procedure CkEmail_AddHeaderField(objHandle: HCkEmail; fieldName: PWideChar; fieldValue: PWideChar); stdcall;

procedure CkEmail_AddHeaderField2(objHandle: HCkEmail; fieldName: PWideChar; fieldValue: PWideChar); stdcall;

function CkEmail_AddHtmlAlternativeBody(objHandle: HCkEmail; body: PWideChar): wordbool; stdcall;

function CkEmail_AddiCalendarAlternativeBody(objHandle: HCkEmail; icalContent: PWideChar; methodName: PWideChar): wordbool; stdcall;

function CkEmail_AddMultipleBcc(objHandle: HCkEmail; commaSeparatedAddresses: PWideChar): wordbool; stdcall;

function CkEmail_AddMultipleCC(objHandle: HCkEmail; commaSeparatedAddresses: PWideChar): wordbool; stdcall;

function CkEmail_AddMultipleTo(objHandle: HCkEmail; commaSeparatedAddresses: PWideChar): wordbool; stdcall;

function CkEmail_AddPfxSourceData(objHandle: HCkEmail; pfxBytes: HCkByteData; pfxPassword: PWideChar): wordbool; stdcall;

function CkEmail_AddPfxSourceFile(objHandle: HCkEmail; pfxFilePath: PWideChar; pfxPassword: PWideChar): wordbool; stdcall;

function CkEmail_AddPlainTextAlternativeBody(objHandle: HCkEmail; body: PWideChar): wordbool; stdcall;

function CkEmail_AddRelatedBd(objHandle: HCkEmail; filename: PWideChar; binData: HCkBinData; outStr: HCkString): wordbool; stdcall;

function CkEmail__addRelatedBd(objHandle: HCkEmail; filename: PWideChar; binData: HCkBinData): PWideChar; stdcall;

function CkEmail_AddRelatedBd2(objHandle: HCkEmail; binData: HCkBinData; fileNameInHtml: PWideChar): wordbool; stdcall;

function CkEmail_AddRelatedData(objHandle: HCkEmail; fileName: PWideChar; inData: HCkByteData; outStr: HCkString): wordbool; stdcall;

function CkEmail__addRelatedData(objHandle: HCkEmail; fileName: PWideChar; inData: HCkByteData): PWideChar; stdcall;

procedure CkEmail_AddRelatedData2(objHandle: HCkEmail; inData: HCkByteData; fileNameInHtml: PWideChar); stdcall;

procedure CkEmail_AddRelatedData2P(objHandle: HCkEmail; pBytes: pbyte; szBytes: LongWord; fileNameInHtml: PWideChar); stdcall;

function CkEmail_AddRelatedDataP(objHandle: HCkEmail; nameInHtml: PWideChar; pBytes: pbyte; szBytes: LongWord; outStr: HCkString): wordbool; stdcall;

function CkEmail__addRelatedDataP(objHandle: HCkEmail; nameInHtml: PWideChar; pBytes: pbyte; szBytes: LongWord): PWideChar; stdcall;

function CkEmail_AddRelatedFile(objHandle: HCkEmail; path: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkEmail__addRelatedFile(objHandle: HCkEmail; path: PWideChar): PWideChar; stdcall;

function CkEmail_AddRelatedFile2(objHandle: HCkEmail; filenameOnDisk: PWideChar; filenameInHtml: PWideChar): wordbool; stdcall;

procedure CkEmail_AddRelatedHeader(objHandle: HCkEmail; index: Integer; fieldName: PWideChar; fieldValue: PWideChar); stdcall;

function CkEmail_AddRelatedString(objHandle: HCkEmail; nameInHtml: PWideChar; str: PWideChar; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkEmail__addRelatedString(objHandle: HCkEmail; nameInHtml: PWideChar; str: PWideChar; charset: PWideChar): PWideChar; stdcall;

procedure CkEmail_AddRelatedString2(objHandle: HCkEmail; fileNameInHtml: PWideChar; content: PWideChar; charset: PWideChar); stdcall;

function CkEmail_AddStringAttachment(objHandle: HCkEmail; path: PWideChar; content: PWideChar): wordbool; stdcall;

function CkEmail_AddStringAttachment2(objHandle: HCkEmail; path: PWideChar; content: PWideChar; charset: PWideChar): wordbool; stdcall;

function CkEmail_AddTo(objHandle: HCkEmail; friendlyName: PWideChar; emailAddress: PWideChar): wordbool; stdcall;

function CkEmail_AesDecrypt(objHandle: HCkEmail; password: PWideChar): wordbool; stdcall;

function CkEmail_AesEncrypt(objHandle: HCkEmail; password: PWideChar): wordbool; stdcall;

procedure CkEmail_AppendToBody(objHandle: HCkEmail; str: PWideChar); stdcall;

function CkEmail_ApplyFixups(objHandle: HCkEmail; fixups: PWideChar): wordbool; stdcall;

function CkEmail_AspUnpack(objHandle: HCkEmail; prefix: PWideChar; saveDir: PWideChar; urlPath: PWideChar; cleanFiles: wordbool): wordbool; stdcall;

function CkEmail_AspUnpack2(objHandle: HCkEmail; prefix: PWideChar; saveDir: PWideChar; urlPath: PWideChar; cleanFiles: wordbool; outData: HCkByteData): wordbool; stdcall;

function CkEmail_AttachEmail(objHandle: HCkEmail; email: HCkEmail): wordbool; stdcall;

function CkEmail_AttachMessage(objHandle: HCkEmail; mimeBytes: HCkByteData): wordbool; stdcall;

function CkEmail_BEncodeBytes(objHandle: HCkEmail; inData: HCkByteData; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkEmail__bEncodeBytes(objHandle: HCkEmail; inData: HCkByteData; charset: PWideChar): PWideChar; stdcall;

function CkEmail_BEncodeString(objHandle: HCkEmail; str: PWideChar; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkEmail__bEncodeString(objHandle: HCkEmail; str: PWideChar; charset: PWideChar): PWideChar; stdcall;

procedure CkEmail_Clear(objHandle: HCkEmail); stdcall;

procedure CkEmail_ClearBcc(objHandle: HCkEmail); stdcall;

procedure CkEmail_ClearCC(objHandle: HCkEmail); stdcall;

procedure CkEmail_ClearEncryptCerts(objHandle: HCkEmail); stdcall;

procedure CkEmail_ClearTo(objHandle: HCkEmail); stdcall;

function CkEmail_Clone(objHandle: HCkEmail): HCkEmail; stdcall;

function CkEmail_ComputeGlobalKey(objHandle: HCkEmail; encoding: PWideChar; bFold: wordbool; outStr: HCkString): wordbool; stdcall;

function CkEmail__computeGlobalKey(objHandle: HCkEmail; encoding: PWideChar; bFold: wordbool): PWideChar; stdcall;

function CkEmail_ComputeGlobalKey2(objHandle: HCkEmail; encoding: PWideChar; bFold: wordbool; outStr: HCkString): wordbool; stdcall;

function CkEmail__computeGlobalKey2(objHandle: HCkEmail; encoding: PWideChar; bFold: wordbool): PWideChar; stdcall;

function CkEmail_ConvertInlineImages(objHandle: HCkEmail): wordbool; stdcall;

function CkEmail_CreateDsn(objHandle: HCkEmail; humanReadableMessage: PWideChar; xmlStatusFields: PWideChar; bHeaderOnly: wordbool): HCkEmail; stdcall;

function CkEmail_CreateForward(objHandle: HCkEmail): HCkEmail; stdcall;

function CkEmail_CreateMdn(objHandle: HCkEmail; humanReadableMessage: PWideChar; xmlStatusFields: PWideChar; bHeaderOnly: wordbool): HCkEmail; stdcall;

function CkEmail_CreateReply(objHandle: HCkEmail): HCkEmail; stdcall;

function CkEmail_CreateTempMht(objHandle: HCkEmail; inFilename: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkEmail__createTempMht(objHandle: HCkEmail; inFilename: PWideChar): PWideChar; stdcall;

procedure CkEmail_DropAttachments(objHandle: HCkEmail); stdcall;

procedure CkEmail_DropRelatedItem(objHandle: HCkEmail; index: Integer); stdcall;

procedure CkEmail_DropRelatedItems(objHandle: HCkEmail); stdcall;

function CkEmail_DropSingleAttachment(objHandle: HCkEmail; index: Integer): wordbool; stdcall;

function CkEmail_FindIssuer(objHandle: HCkEmail; cert: HCkCert): HCkCert; stdcall;

function CkEmail_GenerateFilename(objHandle: HCkEmail; outStr: HCkString): wordbool; stdcall;

function CkEmail__generateFilename(objHandle: HCkEmail): PWideChar; stdcall;

function CkEmail_GetAlternativeBody(objHandle: HCkEmail; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkEmail__getAlternativeBody(objHandle: HCkEmail; index: Integer): PWideChar; stdcall;

function CkEmail_GetAlternativeBodyBd(objHandle: HCkEmail; index: Integer; binData: HCkBinData): wordbool; stdcall;

function CkEmail_GetAlternativeBodyByContentType(objHandle: HCkEmail; contentType: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkEmail__getAlternativeBodyByContentType(objHandle: HCkEmail; contentType: PWideChar): PWideChar; stdcall;

function CkEmail_GetAlternativeContentType(objHandle: HCkEmail; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkEmail__getAlternativeContentType(objHandle: HCkEmail; index: Integer): PWideChar; stdcall;

function CkEmail_GetAltHeaderField(objHandle: HCkEmail; index: Integer; fieldName: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkEmail__getAltHeaderField(objHandle: HCkEmail; index: Integer; fieldName: PWideChar): PWideChar; stdcall;

function CkEmail_GetAttachedMessage(objHandle: HCkEmail; index: Integer): HCkEmail; stdcall;

function CkEmail_GetAttachedMessageAttr(objHandle: HCkEmail; index: Integer; fieldName: PWideChar; attrName: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkEmail__getAttachedMessageAttr(objHandle: HCkEmail; index: Integer; fieldName: PWideChar; attrName: PWideChar): PWideChar; stdcall;

function CkEmail_GetAttachedMessageFilename(objHandle: HCkEmail; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkEmail__getAttachedMessageFilename(objHandle: HCkEmail; index: Integer): PWideChar; stdcall;

function CkEmail_GetAttachmentAttr(objHandle: HCkEmail; index: Integer; fieldName: PWideChar; attrName: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkEmail__getAttachmentAttr(objHandle: HCkEmail; index: Integer; fieldName: PWideChar; attrName: PWideChar): PWideChar; stdcall;

function CkEmail_GetAttachmentBd(objHandle: HCkEmail; index: Integer; binData: HCkBinData): wordbool; stdcall;

function CkEmail_GetAttachmentContentID(objHandle: HCkEmail; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkEmail__getAttachmentContentID(objHandle: HCkEmail; index: Integer): PWideChar; stdcall;

function CkEmail_GetAttachmentContentType(objHandle: HCkEmail; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkEmail__getAttachmentContentType(objHandle: HCkEmail; index: Integer): PWideChar; stdcall;

function CkEmail_GetAttachmentData(objHandle: HCkEmail; index: Integer; outData: HCkByteData): wordbool; stdcall;

function CkEmail_GetAttachmentFilename(objHandle: HCkEmail; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkEmail__getAttachmentFilename(objHandle: HCkEmail; index: Integer): PWideChar; stdcall;

function CkEmail_GetAttachmentHeader(objHandle: HCkEmail; attachIndex: Integer; fieldName: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkEmail__getAttachmentHeader(objHandle: HCkEmail; attachIndex: Integer; fieldName: PWideChar): PWideChar; stdcall;

function CkEmail_GetAttachmentSize(objHandle: HCkEmail; index: Integer): Integer; stdcall;

function CkEmail_GetAttachmentString(objHandle: HCkEmail; index: Integer; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkEmail__getAttachmentString(objHandle: HCkEmail; index: Integer; charset: PWideChar): PWideChar; stdcall;

function CkEmail_GetAttachmentStringCrLf(objHandle: HCkEmail; index: Integer; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkEmail__getAttachmentStringCrLf(objHandle: HCkEmail; index: Integer; charset: PWideChar): PWideChar; stdcall;

function CkEmail_GetBcc(objHandle: HCkEmail; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkEmail__getBcc(objHandle: HCkEmail; index: Integer): PWideChar; stdcall;

function CkEmail_GetBccAddr(objHandle: HCkEmail; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkEmail__getBccAddr(objHandle: HCkEmail; index: Integer): PWideChar; stdcall;

function CkEmail_GetBccName(objHandle: HCkEmail; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkEmail__getBccName(objHandle: HCkEmail; index: Integer): PWideChar; stdcall;

function CkEmail_GetCC(objHandle: HCkEmail; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkEmail__getCC(objHandle: HCkEmail; index: Integer): PWideChar; stdcall;

function CkEmail_GetCcAddr(objHandle: HCkEmail; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkEmail__getCcAddr(objHandle: HCkEmail; index: Integer): PWideChar; stdcall;

function CkEmail_GetCcName(objHandle: HCkEmail; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkEmail__getCcName(objHandle: HCkEmail; index: Integer): PWideChar; stdcall;

function CkEmail_GetDeliveryStatusInfo(objHandle: HCkEmail; fieldName: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkEmail__getDeliveryStatusInfo(objHandle: HCkEmail; fieldName: PWideChar): PWideChar; stdcall;

function CkEmail_GetDigest(objHandle: HCkEmail; index: Integer): HCkEmail; stdcall;

function CkEmail_GetDsnFinalRecipients(objHandle: HCkEmail): HCkStringArray; stdcall;

function CkEmail_GetDt(objHandle: HCkEmail): HCkDateTime; stdcall;

function CkEmail_GetEncryptCert(objHandle: HCkEmail): HCkCert; stdcall;

function CkEmail_GetEncryptedByCert(objHandle: HCkEmail): HCkCert; stdcall;

function CkEmail_GetFileContent(objHandle: HCkEmail; path: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkEmail_GetHeaderField(objHandle: HCkEmail; fieldName: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkEmail__getHeaderField(objHandle: HCkEmail; fieldName: PWideChar): PWideChar; stdcall;

function CkEmail_GetHeaderFieldName(objHandle: HCkEmail; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkEmail__getHeaderFieldName(objHandle: HCkEmail; index: Integer): PWideChar; stdcall;

function CkEmail_GetHeaderFieldValue(objHandle: HCkEmail; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkEmail__getHeaderFieldValue(objHandle: HCkEmail; index: Integer): PWideChar; stdcall;

function CkEmail_GetHtmlBody(objHandle: HCkEmail; outStr: HCkString): wordbool; stdcall;

function CkEmail__getHtmlBody(objHandle: HCkEmail): PWideChar; stdcall;

function CkEmail_GetImapUid(objHandle: HCkEmail): LongWord; stdcall;

function CkEmail_GetLinkedDomains(objHandle: HCkEmail): HCkStringArray; stdcall;

function CkEmail_GetMbHeaderField(objHandle: HCkEmail; fieldName: PWideChar; charset: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkEmail_GetMbHtmlBody(objHandle: HCkEmail; charset: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkEmail_GetMbPlainTextBody(objHandle: HCkEmail; charset: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkEmail_GetMime(objHandle: HCkEmail; outStr: HCkString): wordbool; stdcall;

function CkEmail__getMime(objHandle: HCkEmail): PWideChar; stdcall;

function CkEmail_GetMimeBd(objHandle: HCkEmail; bindat: HCkBinData): wordbool; stdcall;

function CkEmail_GetMimeBinary(objHandle: HCkEmail; outData: HCkByteData): wordbool; stdcall;

function CkEmail_GetMimeSb(objHandle: HCkEmail; sb: HCkStringBuilder): wordbool; stdcall;

function CkEmail_GetNthBinaryPartOfType(objHandle: HCkEmail; index: Integer; contentType: PWideChar; inlineOnly: wordbool; excludeAttachments: wordbool; outData: HCkByteData): wordbool; stdcall;

function CkEmail_GetNthBinaryPartOfTypeBd(objHandle: HCkEmail; index: Integer; contentType: PWideChar; inlineOnly: wordbool; excludeAttachments: wordbool; bd: HCkBinData): wordbool; stdcall;

function CkEmail_GetNthContentType(objHandle: HCkEmail; index: Integer; contentType: PWideChar; inlineOnly: wordbool; excludeAttachments: wordbool; outStr: HCkString): wordbool; stdcall;

function CkEmail__getNthContentType(objHandle: HCkEmail; index: Integer; contentType: PWideChar; inlineOnly: wordbool; excludeAttachments: wordbool): PWideChar; stdcall;

function CkEmail_GetNthTextPartOfType(objHandle: HCkEmail; index: Integer; contentType: PWideChar; inlineOnly: wordbool; excludeAttachments: wordbool; outStr: HCkString): wordbool; stdcall;

function CkEmail__getNthTextPartOfType(objHandle: HCkEmail; index: Integer; contentType: PWideChar; inlineOnly: wordbool; excludeAttachments: wordbool): PWideChar; stdcall;

function CkEmail_GetNumPartsOfType(objHandle: HCkEmail; contentType: PWideChar; inlineOnly: wordbool; excludeAttachments: wordbool): Integer; stdcall;

function CkEmail_GetPlainTextBody(objHandle: HCkEmail; outStr: HCkString): wordbool; stdcall;

function CkEmail__getPlainTextBody(objHandle: HCkEmail): PWideChar; stdcall;

function CkEmail_GetRelatedAttr(objHandle: HCkEmail; index: Integer; fieldName: PWideChar; attrName: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkEmail__getRelatedAttr(objHandle: HCkEmail; index: Integer; fieldName: PWideChar; attrName: PWideChar): PWideChar; stdcall;

function CkEmail_GetRelatedContentID(objHandle: HCkEmail; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkEmail__getRelatedContentID(objHandle: HCkEmail; index: Integer): PWideChar; stdcall;

function CkEmail_GetRelatedContentLocation(objHandle: HCkEmail; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkEmail__getRelatedContentLocation(objHandle: HCkEmail; index: Integer): PWideChar; stdcall;

function CkEmail_GetRelatedContentType(objHandle: HCkEmail; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkEmail__getRelatedContentType(objHandle: HCkEmail; index: Integer): PWideChar; stdcall;

function CkEmail_GetRelatedData(objHandle: HCkEmail; index: Integer; outData: HCkByteData): wordbool; stdcall;

function CkEmail_GetRelatedFilename(objHandle: HCkEmail; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkEmail__getRelatedFilename(objHandle: HCkEmail; index: Integer): PWideChar; stdcall;

function CkEmail_GetRelatedString(objHandle: HCkEmail; index: Integer; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkEmail__getRelatedString(objHandle: HCkEmail; index: Integer; charset: PWideChar): PWideChar; stdcall;

function CkEmail_GetRelatedStringCrLf(objHandle: HCkEmail; index: Integer; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkEmail__getRelatedStringCrLf(objHandle: HCkEmail; index: Integer; charset: PWideChar): PWideChar; stdcall;

function CkEmail_GetReplacePattern(objHandle: HCkEmail; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkEmail__getReplacePattern(objHandle: HCkEmail; index: Integer): PWideChar; stdcall;

function CkEmail_GetReplaceString(objHandle: HCkEmail; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkEmail__getReplaceString(objHandle: HCkEmail; index: Integer): PWideChar; stdcall;

function CkEmail_GetReplaceString2(objHandle: HCkEmail; pattern: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkEmail__getReplaceString2(objHandle: HCkEmail; pattern: PWideChar): PWideChar; stdcall;

function CkEmail_GetReport(objHandle: HCkEmail; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkEmail__getReport(objHandle: HCkEmail; index: Integer): PWideChar; stdcall;

function CkEmail_GetSignedByCert(objHandle: HCkEmail): HCkCert; stdcall;

function CkEmail_GetSignedByCertChain(objHandle: HCkEmail): HCkCertChain; stdcall;

function CkEmail_GetSigningCert(objHandle: HCkEmail): HCkCert; stdcall;

function CkEmail_GetTo(objHandle: HCkEmail; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkEmail__getTo(objHandle: HCkEmail; index: Integer): PWideChar; stdcall;

function CkEmail_GetToAddr(objHandle: HCkEmail; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkEmail__getToAddr(objHandle: HCkEmail; index: Integer): PWideChar; stdcall;

function CkEmail_GetToName(objHandle: HCkEmail; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkEmail__getToName(objHandle: HCkEmail; index: Integer): PWideChar; stdcall;

function CkEmail_GetXml(objHandle: HCkEmail; outStr: HCkString): wordbool; stdcall;

function CkEmail__getXml(objHandle: HCkEmail): PWideChar; stdcall;

function CkEmail_HasHeaderMatching(objHandle: HCkEmail; fieldName: PWideChar; valuePattern: PWideChar; caseSensitive: wordbool): wordbool; stdcall;

function CkEmail_HasHtmlBody(objHandle: HCkEmail): wordbool; stdcall;

function CkEmail_HasPlainTextBody(objHandle: HCkEmail): wordbool; stdcall;

function CkEmail_IsMultipartReport(objHandle: HCkEmail): wordbool; stdcall;

function CkEmail_LoadEml(objHandle: HCkEmail; mimePath: PWideChar): wordbool; stdcall;

function CkEmail_LoadTaskResult(objHandle: HCkEmail; task: HCkTask): wordbool; stdcall;

function CkEmail_LoadXml(objHandle: HCkEmail; xmlPath: PWideChar): wordbool; stdcall;

function CkEmail_LoadXmlString(objHandle: HCkEmail; xmlStr: PWideChar): wordbool; stdcall;

function CkEmail_QEncodeBytes(objHandle: HCkEmail; inData: HCkByteData; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkEmail__qEncodeBytes(objHandle: HCkEmail; inData: HCkByteData; charset: PWideChar): PWideChar; stdcall;

function CkEmail_QEncodeString(objHandle: HCkEmail; str: PWideChar; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkEmail__qEncodeString(objHandle: HCkEmail; str: PWideChar; charset: PWideChar): PWideChar; stdcall;

procedure CkEmail_RemoveAttachedMessage(objHandle: HCkEmail; idx: Integer); stdcall;

procedure CkEmail_RemoveAttachedMessages(objHandle: HCkEmail); stdcall;

procedure CkEmail_RemoveAttachmentPaths(objHandle: HCkEmail); stdcall;

procedure CkEmail_RemoveHeaderField(objHandle: HCkEmail; fieldName: PWideChar); stdcall;

procedure CkEmail_RemoveHtmlAlternative(objHandle: HCkEmail); stdcall;

procedure CkEmail_RemovePlainTextAlternative(objHandle: HCkEmail); stdcall;

function CkEmail_SaveAllAttachments(objHandle: HCkEmail; dirPath: PWideChar): wordbool; stdcall;

function CkEmail_SaveAttachedFile(objHandle: HCkEmail; index: Integer; dirPath: PWideChar): wordbool; stdcall;

function CkEmail_SaveEml(objHandle: HCkEmail; emlFilePath: PWideChar): wordbool; stdcall;

function CkEmail_SaveLastError(objHandle: HCkEmail; path: PWideChar): wordbool; stdcall;

function CkEmail_SaveRelatedItem(objHandle: HCkEmail; index: Integer; dirPath: PWideChar): wordbool; stdcall;

function CkEmail_SaveXml(objHandle: HCkEmail; path: PWideChar): wordbool; stdcall;

function CkEmail_SetAttachmentCharset(objHandle: HCkEmail; index: Integer; charset: PWideChar): wordbool; stdcall;

function CkEmail_SetAttachmentDisposition(objHandle: HCkEmail; index: Integer; disposition: PWideChar): wordbool; stdcall;

function CkEmail_SetAttachmentFilename(objHandle: HCkEmail; index: Integer; filename: PWideChar): wordbool; stdcall;

function CkEmail_SetBinaryBody(objHandle: HCkEmail; byteData: HCkByteData; contentType: PWideChar; disposition: PWideChar; filename: PWideChar): wordbool; stdcall;

function CkEmail_SetDecryptCert(objHandle: HCkEmail; cert: HCkCert): wordbool; stdcall;

function CkEmail_SetDecryptCert2(objHandle: HCkEmail; cert: HCkCert; key: HCkPrivateKey): wordbool; stdcall;

function CkEmail_SetDt(objHandle: HCkEmail; dt: HCkDateTime): wordbool; stdcall;

procedure CkEmail_SetEdifactBody(objHandle: HCkEmail; message: PWideChar; name: PWideChar; filename: PWideChar; charset: PWideChar); stdcall;

function CkEmail_SetEncryptCert(objHandle: HCkEmail; cert: HCkCert): wordbool; stdcall;

function CkEmail_SetFromMimeBd(objHandle: HCkEmail; bindat: HCkBinData): wordbool; stdcall;

function CkEmail_SetFromMimeBytes(objHandle: HCkEmail; mimeBytes: HCkByteData): wordbool; stdcall;

function CkEmail_SetFromMimeBytes2(objHandle: HCkEmail; mimeBytes: HCkByteData; charset: PWideChar): wordbool; stdcall;

function CkEmail_SetFromMimeSb(objHandle: HCkEmail; sb: HCkStringBuilder): wordbool; stdcall;

function CkEmail_SetFromMimeText(objHandle: HCkEmail; mimeText: PWideChar): wordbool; stdcall;

function CkEmail_SetFromXmlText(objHandle: HCkEmail; xmlStr: PWideChar): wordbool; stdcall;

procedure CkEmail_SetHtmlBody(objHandle: HCkEmail; html: PWideChar); stdcall;

function CkEmail_SetMbHtmlBody(objHandle: HCkEmail; charset: PWideChar; inData: HCkByteData): wordbool; stdcall;

function CkEmail_SetMbPlainTextBody(objHandle: HCkEmail; charset: PWideChar; inData: HCkByteData): wordbool; stdcall;

function CkEmail_SetRelatedFilename(objHandle: HCkEmail; index: Integer; path: PWideChar): wordbool; stdcall;

function CkEmail_SetReplacePattern(objHandle: HCkEmail; pattern: PWideChar; replaceString: PWideChar): wordbool; stdcall;

function CkEmail_SetSigningCert(objHandle: HCkEmail; cert: HCkCert): wordbool; stdcall;

function CkEmail_SetSigningCert2(objHandle: HCkEmail; cert: HCkCert; key: HCkPrivateKey): wordbool; stdcall;

procedure CkEmail_SetTextBody(objHandle: HCkEmail; bodyText: PWideChar; contentType: PWideChar); stdcall;

function CkEmail_UidlEquals(objHandle: HCkEmail; e: HCkEmail): wordbool; stdcall;

function CkEmail_UnpackHtml(objHandle: HCkEmail; unpackDir: PWideChar; htmlFilename: PWideChar; partsSubdir: PWideChar): wordbool; stdcall;

procedure CkEmail_UnSpamify(objHandle: HCkEmail); stdcall;

function CkEmail_UnzipAttachments(objHandle: HCkEmail): wordbool; stdcall;

function CkEmail_UseCertVault(objHandle: HCkEmail; vault: HCkXmlCertVault): wordbool; stdcall;

function CkEmail_ZipAttachments(objHandle: HCkEmail; zipFilename: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkEmail_Create; external DLLName;
procedure CkEmail_Dispose; external DLLName;
procedure CkEmail_getBody; external DLLName;
procedure CkEmail_putBody; external DLLName;
function CkEmail__body; external DLLName;
procedure CkEmail_getBounceAddress; external DLLName;
procedure CkEmail_putBounceAddress; external DLLName;
function CkEmail__bounceAddress; external DLLName;
procedure CkEmail_getCharset; external DLLName;
procedure CkEmail_putCharset; external DLLName;
function CkEmail__charset; external DLLName;
procedure CkEmail_getDebugLogFilePath; external DLLName;
procedure CkEmail_putDebugLogFilePath; external DLLName;
function CkEmail__debugLogFilePath; external DLLName;
function CkEmail_getDecrypted; external DLLName;
procedure CkEmail_getEmailDateStr; external DLLName;
procedure CkEmail_putEmailDateStr; external DLLName;
function CkEmail__emailDateStr; external DLLName;
procedure CkEmail_getEncryptedBy; external DLLName;
function CkEmail__encryptedBy; external DLLName;
procedure CkEmail_getFileDistList; external DLLName;
procedure CkEmail_putFileDistList; external DLLName;
function CkEmail__fileDistList; external DLLName;
procedure CkEmail_getFrom; external DLLName;
procedure CkEmail_putFrom; external DLLName;
function CkEmail__from; external DLLName;
procedure CkEmail_getFromAddress; external DLLName;
procedure CkEmail_putFromAddress; external DLLName;
function CkEmail__fromAddress; external DLLName;
procedure CkEmail_getFromName; external DLLName;
procedure CkEmail_putFromName; external DLLName;
function CkEmail__fromName; external DLLName;
procedure CkEmail_getHeader; external DLLName;
function CkEmail__header; external DLLName;
procedure CkEmail_getLanguage; external DLLName;
function CkEmail__language; external DLLName;
procedure CkEmail_getLastErrorHtml; external DLLName;
function CkEmail__lastErrorHtml; external DLLName;
procedure CkEmail_getLastErrorText; external DLLName;
function CkEmail__lastErrorText; external DLLName;
procedure CkEmail_getLastErrorXml; external DLLName;
function CkEmail__lastErrorXml; external DLLName;
function CkEmail_getLastMethodSuccess; external DLLName;
procedure CkEmail_putLastMethodSuccess; external DLLName;
procedure CkEmail_getLocalDateStr; external DLLName;
procedure CkEmail_putLocalDateStr; external DLLName;
function CkEmail__localDateStr; external DLLName;
procedure CkEmail_getMailer; external DLLName;
procedure CkEmail_putMailer; external DLLName;
function CkEmail__mailer; external DLLName;
function CkEmail_getNumAlternatives; external DLLName;
function CkEmail_getNumAttachedMessages; external DLLName;
function CkEmail_getNumAttachments; external DLLName;
function CkEmail_getNumBcc; external DLLName;
function CkEmail_getNumCC; external DLLName;
function CkEmail_getNumDaysOld; external DLLName;
function CkEmail_getNumDigests; external DLLName;
function CkEmail_getNumHeaderFields; external DLLName;
function CkEmail_getNumRelatedItems; external DLLName;
function CkEmail_getNumReplacePatterns; external DLLName;
function CkEmail_getNumReports; external DLLName;
function CkEmail_getNumTo; external DLLName;
procedure CkEmail_getOaepHash; external DLLName;
procedure CkEmail_putOaepHash; external DLLName;
function CkEmail__oaepHash; external DLLName;
procedure CkEmail_getOaepMgfHash; external DLLName;
procedure CkEmail_putOaepMgfHash; external DLLName;
function CkEmail__oaepMgfHash; external DLLName;
function CkEmail_getOaepPadding; external DLLName;
procedure CkEmail_putOaepPadding; external DLLName;
function CkEmail_getOverwriteExisting; external DLLName;
procedure CkEmail_putOverwriteExisting; external DLLName;
procedure CkEmail_getPkcs7CryptAlg; external DLLName;
procedure CkEmail_putPkcs7CryptAlg; external DLLName;
function CkEmail__pkcs7CryptAlg; external DLLName;
function CkEmail_getPkcs7KeyLength; external DLLName;
procedure CkEmail_putPkcs7KeyLength; external DLLName;
procedure CkEmail_getPreferredCharset; external DLLName;
procedure CkEmail_putPreferredCharset; external DLLName;
function CkEmail__preferredCharset; external DLLName;
function CkEmail_getPrependHeaders; external DLLName;
procedure CkEmail_putPrependHeaders; external DLLName;
function CkEmail_getReceivedEncrypted; external DLLName;
function CkEmail_getReceivedSigned; external DLLName;
procedure CkEmail_getReplyTo; external DLLName;
procedure CkEmail_putReplyTo; external DLLName;
function CkEmail__replyTo; external DLLName;
function CkEmail_getReturnReceipt; external DLLName;
procedure CkEmail_putReturnReceipt; external DLLName;
function CkEmail_getSendEncrypted; external DLLName;
procedure CkEmail_putSendEncrypted; external DLLName;
procedure CkEmail_getSender; external DLLName;
procedure CkEmail_putSender; external DLLName;
function CkEmail__sender; external DLLName;
function CkEmail_getSendSigned; external DLLName;
procedure CkEmail_putSendSigned; external DLLName;
function CkEmail_getSignaturesValid; external DLLName;
procedure CkEmail_getSignedBy; external DLLName;
function CkEmail__signedBy; external DLLName;
procedure CkEmail_getSigningAlg; external DLLName;
procedure CkEmail_putSigningAlg; external DLLName;
function CkEmail__signingAlg; external DLLName;
procedure CkEmail_getSigningHashAlg; external DLLName;
procedure CkEmail_putSigningHashAlg; external DLLName;
function CkEmail__signingHashAlg; external DLLName;
function CkEmail_getSize; external DLLName;
procedure CkEmail_getSubject; external DLLName;
procedure CkEmail_putSubject; external DLLName;
function CkEmail__subject; external DLLName;
procedure CkEmail_getUidl; external DLLName;
function CkEmail__uidl; external DLLName;
procedure CkEmail_getUncommonOptions; external DLLName;
procedure CkEmail_putUncommonOptions; external DLLName;
function CkEmail__uncommonOptions; external DLLName;
function CkEmail_getUnpackUseRelPaths; external DLLName;
procedure CkEmail_putUnpackUseRelPaths; external DLLName;
function CkEmail_getVerboseLogging; external DLLName;
procedure CkEmail_putVerboseLogging; external DLLName;
procedure CkEmail_getVersion; external DLLName;
function CkEmail__version; external DLLName;
function CkEmail_AddAttachmentBd; external DLLName;
procedure CkEmail_AddAttachmentHeader; external DLLName;
function CkEmail_AddBcc; external DLLName;
function CkEmail_AddCC; external DLLName;
function CkEmail_AddDataAttachment; external DLLName;
function CkEmail_AddDataAttachment2; external DLLName;
function CkEmail_AddEncryptCert; external DLLName;
function CkEmail_AddFileAttachment; external DLLName;
function CkEmail__addFileAttachment; external DLLName;
function CkEmail_AddFileAttachment2; external DLLName;
procedure CkEmail_AddHeaderField; external DLLName;
procedure CkEmail_AddHeaderField2; external DLLName;
function CkEmail_AddHtmlAlternativeBody; external DLLName;
function CkEmail_AddiCalendarAlternativeBody; external DLLName;
function CkEmail_AddMultipleBcc; external DLLName;
function CkEmail_AddMultipleCC; external DLLName;
function CkEmail_AddMultipleTo; external DLLName;
function CkEmail_AddPfxSourceData; external DLLName;
function CkEmail_AddPfxSourceFile; external DLLName;
function CkEmail_AddPlainTextAlternativeBody; external DLLName;
function CkEmail_AddRelatedBd; external DLLName;
function CkEmail__addRelatedBd; external DLLName;
function CkEmail_AddRelatedBd2; external DLLName;
function CkEmail_AddRelatedData; external DLLName;
function CkEmail__addRelatedData; external DLLName;
procedure CkEmail_AddRelatedData2; external DLLName;
procedure CkEmail_AddRelatedData2P; external DLLName;
function CkEmail_AddRelatedDataP; external DLLName;
function CkEmail__addRelatedDataP; external DLLName;
function CkEmail_AddRelatedFile; external DLLName;
function CkEmail__addRelatedFile; external DLLName;
function CkEmail_AddRelatedFile2; external DLLName;
procedure CkEmail_AddRelatedHeader; external DLLName;
function CkEmail_AddRelatedString; external DLLName;
function CkEmail__addRelatedString; external DLLName;
procedure CkEmail_AddRelatedString2; external DLLName;
function CkEmail_AddStringAttachment; external DLLName;
function CkEmail_AddStringAttachment2; external DLLName;
function CkEmail_AddTo; external DLLName;
function CkEmail_AesDecrypt; external DLLName;
function CkEmail_AesEncrypt; external DLLName;
procedure CkEmail_AppendToBody; external DLLName;
function CkEmail_ApplyFixups; external DLLName;
function CkEmail_AspUnpack; external DLLName;
function CkEmail_AspUnpack2; external DLLName;
function CkEmail_AttachEmail; external DLLName;
function CkEmail_AttachMessage; external DLLName;
function CkEmail_BEncodeBytes; external DLLName;
function CkEmail__bEncodeBytes; external DLLName;
function CkEmail_BEncodeString; external DLLName;
function CkEmail__bEncodeString; external DLLName;
procedure CkEmail_Clear; external DLLName;
procedure CkEmail_ClearBcc; external DLLName;
procedure CkEmail_ClearCC; external DLLName;
procedure CkEmail_ClearEncryptCerts; external DLLName;
procedure CkEmail_ClearTo; external DLLName;
function CkEmail_Clone; external DLLName;
function CkEmail_ComputeGlobalKey; external DLLName;
function CkEmail__computeGlobalKey; external DLLName;
function CkEmail_ComputeGlobalKey2; external DLLName;
function CkEmail__computeGlobalKey2; external DLLName;
function CkEmail_ConvertInlineImages; external DLLName;
function CkEmail_CreateDsn; external DLLName;
function CkEmail_CreateForward; external DLLName;
function CkEmail_CreateMdn; external DLLName;
function CkEmail_CreateReply; external DLLName;
function CkEmail_CreateTempMht; external DLLName;
function CkEmail__createTempMht; external DLLName;
procedure CkEmail_DropAttachments; external DLLName;
procedure CkEmail_DropRelatedItem; external DLLName;
procedure CkEmail_DropRelatedItems; external DLLName;
function CkEmail_DropSingleAttachment; external DLLName;
function CkEmail_FindIssuer; external DLLName;
function CkEmail_GenerateFilename; external DLLName;
function CkEmail__generateFilename; external DLLName;
function CkEmail_GetAlternativeBody; external DLLName;
function CkEmail__getAlternativeBody; external DLLName;
function CkEmail_GetAlternativeBodyBd; external DLLName;
function CkEmail_GetAlternativeBodyByContentType; external DLLName;
function CkEmail__getAlternativeBodyByContentType; external DLLName;
function CkEmail_GetAlternativeContentType; external DLLName;
function CkEmail__getAlternativeContentType; external DLLName;
function CkEmail_GetAltHeaderField; external DLLName;
function CkEmail__getAltHeaderField; external DLLName;
function CkEmail_GetAttachedMessage; external DLLName;
function CkEmail_GetAttachedMessageAttr; external DLLName;
function CkEmail__getAttachedMessageAttr; external DLLName;
function CkEmail_GetAttachedMessageFilename; external DLLName;
function CkEmail__getAttachedMessageFilename; external DLLName;
function CkEmail_GetAttachmentAttr; external DLLName;
function CkEmail__getAttachmentAttr; external DLLName;
function CkEmail_GetAttachmentBd; external DLLName;
function CkEmail_GetAttachmentContentID; external DLLName;
function CkEmail__getAttachmentContentID; external DLLName;
function CkEmail_GetAttachmentContentType; external DLLName;
function CkEmail__getAttachmentContentType; external DLLName;
function CkEmail_GetAttachmentData; external DLLName;
function CkEmail_GetAttachmentFilename; external DLLName;
function CkEmail__getAttachmentFilename; external DLLName;
function CkEmail_GetAttachmentHeader; external DLLName;
function CkEmail__getAttachmentHeader; external DLLName;
function CkEmail_GetAttachmentSize; external DLLName;
function CkEmail_GetAttachmentString; external DLLName;
function CkEmail__getAttachmentString; external DLLName;
function CkEmail_GetAttachmentStringCrLf; external DLLName;
function CkEmail__getAttachmentStringCrLf; external DLLName;
function CkEmail_GetBcc; external DLLName;
function CkEmail__getBcc; external DLLName;
function CkEmail_GetBccAddr; external DLLName;
function CkEmail__getBccAddr; external DLLName;
function CkEmail_GetBccName; external DLLName;
function CkEmail__getBccName; external DLLName;
function CkEmail_GetCC; external DLLName;
function CkEmail__getCC; external DLLName;
function CkEmail_GetCcAddr; external DLLName;
function CkEmail__getCcAddr; external DLLName;
function CkEmail_GetCcName; external DLLName;
function CkEmail__getCcName; external DLLName;
function CkEmail_GetDeliveryStatusInfo; external DLLName;
function CkEmail__getDeliveryStatusInfo; external DLLName;
function CkEmail_GetDigest; external DLLName;
function CkEmail_GetDsnFinalRecipients; external DLLName;
function CkEmail_GetDt; external DLLName;
function CkEmail_GetEncryptCert; external DLLName;
function CkEmail_GetEncryptedByCert; external DLLName;
function CkEmail_GetFileContent; external DLLName;
function CkEmail_GetHeaderField; external DLLName;
function CkEmail__getHeaderField; external DLLName;
function CkEmail_GetHeaderFieldName; external DLLName;
function CkEmail__getHeaderFieldName; external DLLName;
function CkEmail_GetHeaderFieldValue; external DLLName;
function CkEmail__getHeaderFieldValue; external DLLName;
function CkEmail_GetHtmlBody; external DLLName;
function CkEmail__getHtmlBody; external DLLName;
function CkEmail_GetImapUid; external DLLName;
function CkEmail_GetLinkedDomains; external DLLName;
function CkEmail_GetMbHeaderField; external DLLName;
function CkEmail_GetMbHtmlBody; external DLLName;
function CkEmail_GetMbPlainTextBody; external DLLName;
function CkEmail_GetMime; external DLLName;
function CkEmail__getMime; external DLLName;
function CkEmail_GetMimeBd; external DLLName;
function CkEmail_GetMimeBinary; external DLLName;
function CkEmail_GetMimeSb; external DLLName;
function CkEmail_GetNthBinaryPartOfType; external DLLName;
function CkEmail_GetNthBinaryPartOfTypeBd; external DLLName;
function CkEmail_GetNthContentType; external DLLName;
function CkEmail__getNthContentType; external DLLName;
function CkEmail_GetNthTextPartOfType; external DLLName;
function CkEmail__getNthTextPartOfType; external DLLName;
function CkEmail_GetNumPartsOfType; external DLLName;
function CkEmail_GetPlainTextBody; external DLLName;
function CkEmail__getPlainTextBody; external DLLName;
function CkEmail_GetRelatedAttr; external DLLName;
function CkEmail__getRelatedAttr; external DLLName;
function CkEmail_GetRelatedContentID; external DLLName;
function CkEmail__getRelatedContentID; external DLLName;
function CkEmail_GetRelatedContentLocation; external DLLName;
function CkEmail__getRelatedContentLocation; external DLLName;
function CkEmail_GetRelatedContentType; external DLLName;
function CkEmail__getRelatedContentType; external DLLName;
function CkEmail_GetRelatedData; external DLLName;
function CkEmail_GetRelatedFilename; external DLLName;
function CkEmail__getRelatedFilename; external DLLName;
function CkEmail_GetRelatedString; external DLLName;
function CkEmail__getRelatedString; external DLLName;
function CkEmail_GetRelatedStringCrLf; external DLLName;
function CkEmail__getRelatedStringCrLf; external DLLName;
function CkEmail_GetReplacePattern; external DLLName;
function CkEmail__getReplacePattern; external DLLName;
function CkEmail_GetReplaceString; external DLLName;
function CkEmail__getReplaceString; external DLLName;
function CkEmail_GetReplaceString2; external DLLName;
function CkEmail__getReplaceString2; external DLLName;
function CkEmail_GetReport; external DLLName;
function CkEmail__getReport; external DLLName;
function CkEmail_GetSignedByCert; external DLLName;
function CkEmail_GetSignedByCertChain; external DLLName;
function CkEmail_GetSigningCert; external DLLName;
function CkEmail_GetTo; external DLLName;
function CkEmail__getTo; external DLLName;
function CkEmail_GetToAddr; external DLLName;
function CkEmail__getToAddr; external DLLName;
function CkEmail_GetToName; external DLLName;
function CkEmail__getToName; external DLLName;
function CkEmail_GetXml; external DLLName;
function CkEmail__getXml; external DLLName;
function CkEmail_HasHeaderMatching; external DLLName;
function CkEmail_HasHtmlBody; external DLLName;
function CkEmail_HasPlainTextBody; external DLLName;
function CkEmail_IsMultipartReport; external DLLName;
function CkEmail_LoadEml; external DLLName;
function CkEmail_LoadTaskResult; external DLLName;
function CkEmail_LoadXml; external DLLName;
function CkEmail_LoadXmlString; external DLLName;
function CkEmail_QEncodeBytes; external DLLName;
function CkEmail__qEncodeBytes; external DLLName;
function CkEmail_QEncodeString; external DLLName;
function CkEmail__qEncodeString; external DLLName;
procedure CkEmail_RemoveAttachedMessage; external DLLName;
procedure CkEmail_RemoveAttachedMessages; external DLLName;
procedure CkEmail_RemoveAttachmentPaths; external DLLName;
procedure CkEmail_RemoveHeaderField; external DLLName;
procedure CkEmail_RemoveHtmlAlternative; external DLLName;
procedure CkEmail_RemovePlainTextAlternative; external DLLName;
function CkEmail_SaveAllAttachments; external DLLName;
function CkEmail_SaveAttachedFile; external DLLName;
function CkEmail_SaveEml; external DLLName;
function CkEmail_SaveLastError; external DLLName;
function CkEmail_SaveRelatedItem; external DLLName;
function CkEmail_SaveXml; external DLLName;
function CkEmail_SetAttachmentCharset; external DLLName;
function CkEmail_SetAttachmentDisposition; external DLLName;
function CkEmail_SetAttachmentFilename; external DLLName;
function CkEmail_SetBinaryBody; external DLLName;
function CkEmail_SetDecryptCert; external DLLName;
function CkEmail_SetDecryptCert2; external DLLName;
function CkEmail_SetDt; external DLLName;
procedure CkEmail_SetEdifactBody; external DLLName;
function CkEmail_SetEncryptCert; external DLLName;
function CkEmail_SetFromMimeBd; external DLLName;
function CkEmail_SetFromMimeBytes; external DLLName;
function CkEmail_SetFromMimeBytes2; external DLLName;
function CkEmail_SetFromMimeSb; external DLLName;
function CkEmail_SetFromMimeText; external DLLName;
function CkEmail_SetFromXmlText; external DLLName;
procedure CkEmail_SetHtmlBody; external DLLName;
function CkEmail_SetMbHtmlBody; external DLLName;
function CkEmail_SetMbPlainTextBody; external DLLName;
function CkEmail_SetRelatedFilename; external DLLName;
function CkEmail_SetReplacePattern; external DLLName;
function CkEmail_SetSigningCert; external DLLName;
function CkEmail_SetSigningCert2; external DLLName;
procedure CkEmail_SetTextBody; external DLLName;
function CkEmail_UidlEquals; external DLLName;
function CkEmail_UnpackHtml; external DLLName;
procedure CkEmail_UnSpamify; external DLLName;
function CkEmail_UnzipAttachments; external DLLName;
function CkEmail_UseCertVault; external DLLName;
function CkEmail_ZipAttachments; external DLLName;



end.
