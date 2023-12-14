unit Mime;

interface

type

HCkXmlCertVault = Pointer;
HCkBinData = Pointer;
HCkPrivateKey = Pointer;
HCkMime = Pointer;
HCkByteData = Pointer;
HCkString = Pointer;
HCkStringArray = Pointer;
HCkStringBuilder = Pointer;
HCkCertChain = Pointer;
HCkCert = Pointer;
HCkJsonObject = Pointer;


function CkMime_Create: HCkMime; stdcall;
procedure CkMime_Dispose(handle: HCkMime); stdcall;
procedure CkMime_getBoundary(objHandle: HCkMime; outPropVal: HCkString); stdcall;

procedure CkMime_putBoundary(objHandle: HCkMime; newPropVal: PWideChar); stdcall;

function CkMime__boundary(objHandle: HCkMime): PWideChar; stdcall;

procedure CkMime_getCharset(objHandle: HCkMime; outPropVal: HCkString); stdcall;

procedure CkMime_putCharset(objHandle: HCkMime; newPropVal: PWideChar); stdcall;

function CkMime__charset(objHandle: HCkMime): PWideChar; stdcall;

procedure CkMime_getCmsOptions(objHandle: HCkMime; outPropVal: HCkString); stdcall;

procedure CkMime_putCmsOptions(objHandle: HCkMime; newPropVal: PWideChar); stdcall;

function CkMime__cmsOptions(objHandle: HCkMime): PWideChar; stdcall;

procedure CkMime_getContentType(objHandle: HCkMime; outPropVal: HCkString); stdcall;

procedure CkMime_putContentType(objHandle: HCkMime; newPropVal: PWideChar); stdcall;

function CkMime__contentType(objHandle: HCkMime): PWideChar; stdcall;

procedure CkMime_getCurrentDateTime(objHandle: HCkMime; outPropVal: HCkString); stdcall;

function CkMime__currentDateTime(objHandle: HCkMime): PWideChar; stdcall;

procedure CkMime_getDebugLogFilePath(objHandle: HCkMime; outPropVal: HCkString); stdcall;

procedure CkMime_putDebugLogFilePath(objHandle: HCkMime; newPropVal: PWideChar); stdcall;

function CkMime__debugLogFilePath(objHandle: HCkMime): PWideChar; stdcall;

procedure CkMime_getDisposition(objHandle: HCkMime; outPropVal: HCkString); stdcall;

procedure CkMime_putDisposition(objHandle: HCkMime; newPropVal: PWideChar); stdcall;

function CkMime__disposition(objHandle: HCkMime): PWideChar; stdcall;

procedure CkMime_getEncoding(objHandle: HCkMime; outPropVal: HCkString); stdcall;

procedure CkMime_putEncoding(objHandle: HCkMime; newPropVal: PWideChar); stdcall;

function CkMime__encoding(objHandle: HCkMime): PWideChar; stdcall;

procedure CkMime_getFilename(objHandle: HCkMime; outPropVal: HCkString); stdcall;

procedure CkMime_putFilename(objHandle: HCkMime; newPropVal: PWideChar); stdcall;

function CkMime__filename(objHandle: HCkMime): PWideChar; stdcall;

procedure CkMime_getLastErrorHtml(objHandle: HCkMime; outPropVal: HCkString); stdcall;

function CkMime__lastErrorHtml(objHandle: HCkMime): PWideChar; stdcall;

procedure CkMime_getLastErrorText(objHandle: HCkMime; outPropVal: HCkString); stdcall;

function CkMime__lastErrorText(objHandle: HCkMime): PWideChar; stdcall;

procedure CkMime_getLastErrorXml(objHandle: HCkMime; outPropVal: HCkString); stdcall;

function CkMime__lastErrorXml(objHandle: HCkMime): PWideChar; stdcall;

function CkMime_getLastMethodSuccess(objHandle: HCkMime): wordbool; stdcall;

procedure CkMime_putLastMethodSuccess(objHandle: HCkMime; newPropVal: wordbool); stdcall;

procedure CkMime_getMicalg(objHandle: HCkMime; outPropVal: HCkString); stdcall;

procedure CkMime_putMicalg(objHandle: HCkMime; newPropVal: PWideChar); stdcall;

function CkMime__micalg(objHandle: HCkMime): PWideChar; stdcall;

procedure CkMime_getName(objHandle: HCkMime; outPropVal: HCkString); stdcall;

procedure CkMime_putName(objHandle: HCkMime; newPropVal: PWideChar); stdcall;

function CkMime__name(objHandle: HCkMime): PWideChar; stdcall;

function CkMime_getNumEncryptCerts(objHandle: HCkMime): Integer; stdcall;

function CkMime_getNumHeaderFields(objHandle: HCkMime): Integer; stdcall;

function CkMime_getNumParts(objHandle: HCkMime): Integer; stdcall;

function CkMime_getNumSignerCerts(objHandle: HCkMime): Integer; stdcall;

procedure CkMime_getOaepHash(objHandle: HCkMime; outPropVal: HCkString); stdcall;

procedure CkMime_putOaepHash(objHandle: HCkMime; newPropVal: PWideChar); stdcall;

function CkMime__oaepHash(objHandle: HCkMime): PWideChar; stdcall;

procedure CkMime_getOaepMgfHash(objHandle: HCkMime; outPropVal: HCkString); stdcall;

procedure CkMime_putOaepMgfHash(objHandle: HCkMime; newPropVal: PWideChar); stdcall;

function CkMime__oaepMgfHash(objHandle: HCkMime): PWideChar; stdcall;

function CkMime_getOaepPadding(objHandle: HCkMime): wordbool; stdcall;

procedure CkMime_putOaepPadding(objHandle: HCkMime; newPropVal: wordbool); stdcall;

procedure CkMime_getPkcs7CryptAlg(objHandle: HCkMime; outPropVal: HCkString); stdcall;

procedure CkMime_putPkcs7CryptAlg(objHandle: HCkMime; newPropVal: PWideChar); stdcall;

function CkMime__pkcs7CryptAlg(objHandle: HCkMime): PWideChar; stdcall;

function CkMime_getPkcs7KeyLength(objHandle: HCkMime): Integer; stdcall;

procedure CkMime_putPkcs7KeyLength(objHandle: HCkMime; newPropVal: Integer); stdcall;

procedure CkMime_getProtocol(objHandle: HCkMime; outPropVal: HCkString); stdcall;

procedure CkMime_putProtocol(objHandle: HCkMime; newPropVal: PWideChar); stdcall;

function CkMime__protocol(objHandle: HCkMime): PWideChar; stdcall;

procedure CkMime_getSigningAlg(objHandle: HCkMime; outPropVal: HCkString); stdcall;

procedure CkMime_putSigningAlg(objHandle: HCkMime; newPropVal: PWideChar); stdcall;

function CkMime__signingAlg(objHandle: HCkMime): PWideChar; stdcall;

procedure CkMime_getSigningHashAlg(objHandle: HCkMime; outPropVal: HCkString); stdcall;

procedure CkMime_putSigningHashAlg(objHandle: HCkMime; newPropVal: PWideChar); stdcall;

function CkMime__signingHashAlg(objHandle: HCkMime): PWideChar; stdcall;

procedure CkMime_getUncommonOptions(objHandle: HCkMime; outPropVal: HCkString); stdcall;

procedure CkMime_putUncommonOptions(objHandle: HCkMime; newPropVal: PWideChar); stdcall;

function CkMime__uncommonOptions(objHandle: HCkMime): PWideChar; stdcall;

function CkMime_getUnwrapExtras(objHandle: HCkMime): wordbool; stdcall;

procedure CkMime_putUnwrapExtras(objHandle: HCkMime; newPropVal: wordbool); stdcall;

function CkMime_getUseMmDescription(objHandle: HCkMime): wordbool; stdcall;

procedure CkMime_putUseMmDescription(objHandle: HCkMime; newPropVal: wordbool); stdcall;

function CkMime_getUseXPkcs7(objHandle: HCkMime): wordbool; stdcall;

procedure CkMime_putUseXPkcs7(objHandle: HCkMime; newPropVal: wordbool); stdcall;

function CkMime_getVerboseLogging(objHandle: HCkMime): wordbool; stdcall;

procedure CkMime_putVerboseLogging(objHandle: HCkMime; newPropVal: wordbool); stdcall;

procedure CkMime_getVersion(objHandle: HCkMime; outPropVal: HCkString); stdcall;

function CkMime__version(objHandle: HCkMime): PWideChar; stdcall;

procedure CkMime_AddContentLength(objHandle: HCkMime); stdcall;

function CkMime_AddDecryptCert(objHandle: HCkMime; cert: HCkCert): wordbool; stdcall;

function CkMime_AddDetachedSignature(objHandle: HCkMime; cert: HCkCert): wordbool; stdcall;

function CkMime_AddDetachedSignature2(objHandle: HCkMime; cert: HCkCert; transferHeaderFields: wordbool): wordbool; stdcall;

function CkMime_AddDetachedSignaturePk(objHandle: HCkMime; cert: HCkCert; privateKey: HCkPrivateKey): wordbool; stdcall;

function CkMime_AddDetachedSignaturePk2(objHandle: HCkMime; cert: HCkCert; privateKey: HCkPrivateKey; transferHeaderFields: wordbool): wordbool; stdcall;

function CkMime_AddEncryptCert(objHandle: HCkMime; cert: HCkCert): wordbool; stdcall;

function CkMime_AddHeaderField(objHandle: HCkMime; name: PWideChar; value: PWideChar): wordbool; stdcall;

function CkMime_AddPfxSourceData(objHandle: HCkMime; pfxFileData: HCkByteData; pfxPassword: PWideChar): wordbool; stdcall;

function CkMime_AddPfxSourceFile(objHandle: HCkMime; pfxFilePath: PWideChar; password: PWideChar): wordbool; stdcall;

function CkMime_AppendPart(objHandle: HCkMime; mime: HCkMime): wordbool; stdcall;

function CkMime_AppendPartFromFile(objHandle: HCkMime; filename: PWideChar): wordbool; stdcall;

function CkMime_AsnBodyToXml(objHandle: HCkMime; outStr: HCkString): wordbool; stdcall;

function CkMime__asnBodyToXml(objHandle: HCkMime): PWideChar; stdcall;

procedure CkMime_ClearEncryptCerts(objHandle: HCkMime); stdcall;

function CkMime_ContainsEncryptedParts(objHandle: HCkMime): wordbool; stdcall;

function CkMime_ContainsSignedParts(objHandle: HCkMime): wordbool; stdcall;

procedure CkMime_Convert8Bit(objHandle: HCkMime); stdcall;

function CkMime_ConvertToMultipartAlt(objHandle: HCkMime): wordbool; stdcall;

function CkMime_ConvertToMultipartMixed(objHandle: HCkMime): wordbool; stdcall;

function CkMime_ConvertToSigned(objHandle: HCkMime; cert: HCkCert): wordbool; stdcall;

function CkMime_ConvertToSignedPk(objHandle: HCkMime; cert: HCkCert; privateKey: HCkPrivateKey): wordbool; stdcall;

function CkMime_Decrypt(objHandle: HCkMime): wordbool; stdcall;

function CkMime_Decrypt2(objHandle: HCkMime; cert: HCkCert; privateKey: HCkPrivateKey): wordbool; stdcall;

function CkMime_DecryptUsingCert(objHandle: HCkMime; cert: HCkCert): wordbool; stdcall;

function CkMime_DecryptUsingPfxData(objHandle: HCkMime; pfxData: HCkByteData; password: PWideChar): wordbool; stdcall;

function CkMime_DecryptUsingPfxFile(objHandle: HCkMime; pfxFilePath: PWideChar; pfxPassword: PWideChar): wordbool; stdcall;

function CkMime_Encrypt(objHandle: HCkMime; cert: HCkCert): wordbool; stdcall;

function CkMime_EncryptN(objHandle: HCkMime): wordbool; stdcall;

function CkMime_ExtractPartsToFiles(objHandle: HCkMime; dirPath: PWideChar): HCkStringArray; stdcall;

function CkMime_FindIssuer(objHandle: HCkMime; cert: HCkCert): HCkCert; stdcall;

function CkMime_GetBodyBd(objHandle: HCkMime; binDat: HCkBinData): wordbool; stdcall;

function CkMime_GetBodyBinary(objHandle: HCkMime; outData: HCkByteData): wordbool; stdcall;

function CkMime_GetBodyDecoded(objHandle: HCkMime; outStr: HCkString): wordbool; stdcall;

function CkMime__getBodyDecoded(objHandle: HCkMime): PWideChar; stdcall;

function CkMime_GetBodyEncoded(objHandle: HCkMime; outStr: HCkString): wordbool; stdcall;

function CkMime__getBodyEncoded(objHandle: HCkMime): PWideChar; stdcall;

function CkMime_GetEncryptCert(objHandle: HCkMime; index: Integer): HCkCert; stdcall;

function CkMime_GetEntireBody(objHandle: HCkMime; outStr: HCkString): wordbool; stdcall;

function CkMime__getEntireBody(objHandle: HCkMime): PWideChar; stdcall;

function CkMime_GetEntireHead(objHandle: HCkMime; outStr: HCkString): wordbool; stdcall;

function CkMime__getEntireHead(objHandle: HCkMime): PWideChar; stdcall;

function CkMime_GetHeaderField(objHandle: HCkMime; fieldName: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkMime__getHeaderField(objHandle: HCkMime; fieldName: PWideChar): PWideChar; stdcall;

function CkMime_GetHeaderFieldAttribute(objHandle: HCkMime; name: PWideChar; attrName: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkMime__getHeaderFieldAttribute(objHandle: HCkMime; name: PWideChar; attrName: PWideChar): PWideChar; stdcall;

function CkMime_GetHeaderFieldName(objHandle: HCkMime; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkMime__getHeaderFieldName(objHandle: HCkMime; index: Integer): PWideChar; stdcall;

function CkMime_GetHeaderFieldValue(objHandle: HCkMime; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkMime__getHeaderFieldValue(objHandle: HCkMime; index: Integer): PWideChar; stdcall;

function CkMime_GetMime(objHandle: HCkMime; outStr: HCkString): wordbool; stdcall;

function CkMime__getMime(objHandle: HCkMime): PWideChar; stdcall;

function CkMime_GetMimeBd(objHandle: HCkMime; bindat: HCkBinData): wordbool; stdcall;

function CkMime_GetMimeBytes(objHandle: HCkMime; outData: HCkByteData): wordbool; stdcall;

function CkMime_GetMimeSb(objHandle: HCkMime; sb: HCkStringBuilder): wordbool; stdcall;

function CkMime_GetPart(objHandle: HCkMime; index: Integer): HCkMime; stdcall;

function CkMime_GetSignatureSigningTimeStr(objHandle: HCkMime; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkMime__getSignatureSigningTimeStr(objHandle: HCkMime; index: Integer): PWideChar; stdcall;

function CkMime_GetSignerCert(objHandle: HCkMime; index: Integer): HCkCert; stdcall;

function CkMime_GetSignerCertChain(objHandle: HCkMime; index: Integer): HCkCertChain; stdcall;

function CkMime_GetStructure(objHandle: HCkMime; fmt: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkMime__getStructure(objHandle: HCkMime; fmt: PWideChar): PWideChar; stdcall;

function CkMime_GetXml(objHandle: HCkMime; outStr: HCkString): wordbool; stdcall;

function CkMime__getXml(objHandle: HCkMime): PWideChar; stdcall;

function CkMime_HasSignatureSigningTime(objHandle: HCkMime; index: Integer): wordbool; stdcall;

function CkMime_IsApplicationData(objHandle: HCkMime): wordbool; stdcall;

function CkMime_IsAttachment(objHandle: HCkMime): wordbool; stdcall;

function CkMime_IsAudio(objHandle: HCkMime): wordbool; stdcall;

function CkMime_IsEncrypted(objHandle: HCkMime): wordbool; stdcall;

function CkMime_IsHtml(objHandle: HCkMime): wordbool; stdcall;

function CkMime_IsImage(objHandle: HCkMime): wordbool; stdcall;

function CkMime_IsMultipart(objHandle: HCkMime): wordbool; stdcall;

function CkMime_IsMultipartAlternative(objHandle: HCkMime): wordbool; stdcall;

function CkMime_IsMultipartMixed(objHandle: HCkMime): wordbool; stdcall;

function CkMime_IsMultipartRelated(objHandle: HCkMime): wordbool; stdcall;

function CkMime_IsPlainText(objHandle: HCkMime): wordbool; stdcall;

function CkMime_IsSigned(objHandle: HCkMime): wordbool; stdcall;

function CkMime_IsText(objHandle: HCkMime): wordbool; stdcall;

function CkMime_IsUnlocked(objHandle: HCkMime): wordbool; stdcall;

function CkMime_IsVideo(objHandle: HCkMime): wordbool; stdcall;

function CkMime_IsXml(objHandle: HCkMime): wordbool; stdcall;

function CkMime_LastJsonData(objHandle: HCkMime): HCkJsonObject; stdcall;

function CkMime_LoadMime(objHandle: HCkMime; mimeMsg: PWideChar): wordbool; stdcall;

function CkMime_LoadMimeBd(objHandle: HCkMime; bindat: HCkBinData): wordbool; stdcall;

function CkMime_LoadMimeBytes(objHandle: HCkMime; binData: HCkByteData): wordbool; stdcall;

function CkMime_LoadMimeFile(objHandle: HCkMime; fileName: PWideChar): wordbool; stdcall;

function CkMime_LoadMimeSb(objHandle: HCkMime; sb: HCkStringBuilder): wordbool; stdcall;

function CkMime_LoadXml(objHandle: HCkMime; xml: PWideChar): wordbool; stdcall;

function CkMime_LoadXmlFile(objHandle: HCkMime; fileName: PWideChar): wordbool; stdcall;

function CkMime_NewMessageRfc822(objHandle: HCkMime; mimeObject: HCkMime): wordbool; stdcall;

function CkMime_NewMultipartAlternative(objHandle: HCkMime): wordbool; stdcall;

function CkMime_NewMultipartMixed(objHandle: HCkMime): wordbool; stdcall;

function CkMime_NewMultipartRelated(objHandle: HCkMime): wordbool; stdcall;

procedure CkMime_RemoveHeaderField(objHandle: HCkMime; fieldName: PWideChar; bAllOccurrences: wordbool); stdcall;

function CkMime_RemovePart(objHandle: HCkMime; index: Integer): wordbool; stdcall;

function CkMime_SaveBody(objHandle: HCkMime; filename: PWideChar): wordbool; stdcall;

function CkMime_SaveLastError(objHandle: HCkMime; path: PWideChar): wordbool; stdcall;

function CkMime_SaveMime(objHandle: HCkMime; filename: PWideChar): wordbool; stdcall;

function CkMime_SaveXml(objHandle: HCkMime; filename: PWideChar): wordbool; stdcall;

procedure CkMime_SetBody(objHandle: HCkMime; str: PWideChar); stdcall;

function CkMime_SetBodyFromBinary(objHandle: HCkMime; binData: HCkByteData): wordbool; stdcall;

function CkMime_SetBodyFromEncoded(objHandle: HCkMime; encoding: PWideChar; str: PWideChar): wordbool; stdcall;

function CkMime_SetBodyFromFile(objHandle: HCkMime; fileName: PWideChar): wordbool; stdcall;

function CkMime_SetBodyFromHtml(objHandle: HCkMime; str: PWideChar): wordbool; stdcall;

function CkMime_SetBodyFromPlainText(objHandle: HCkMime; str: PWideChar): wordbool; stdcall;

function CkMime_SetBodyFromXml(objHandle: HCkMime; str: PWideChar): wordbool; stdcall;

function CkMime_SetHeaderField(objHandle: HCkMime; name: PWideChar; value: PWideChar): wordbool; stdcall;

function CkMime_SetVerifyCert(objHandle: HCkMime; cert: HCkCert): wordbool; stdcall;

function CkMime_UnlockComponent(objHandle: HCkMime; unlockCode: PWideChar): wordbool; stdcall;

function CkMime_UnwrapSecurity(objHandle: HCkMime): wordbool; stdcall;

procedure CkMime_UrlEncodeBody(objHandle: HCkMime; charset: PWideChar); stdcall;

function CkMime_UseCertVault(objHandle: HCkMime; vault: HCkXmlCertVault): wordbool; stdcall;

function CkMime_Verify(objHandle: HCkMime): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkMime_Create; external DLLName;
procedure CkMime_Dispose; external DLLName;
procedure CkMime_getBoundary; external DLLName;
procedure CkMime_putBoundary; external DLLName;
function CkMime__boundary; external DLLName;
procedure CkMime_getCharset; external DLLName;
procedure CkMime_putCharset; external DLLName;
function CkMime__charset; external DLLName;
procedure CkMime_getCmsOptions; external DLLName;
procedure CkMime_putCmsOptions; external DLLName;
function CkMime__cmsOptions; external DLLName;
procedure CkMime_getContentType; external DLLName;
procedure CkMime_putContentType; external DLLName;
function CkMime__contentType; external DLLName;
procedure CkMime_getCurrentDateTime; external DLLName;
function CkMime__currentDateTime; external DLLName;
procedure CkMime_getDebugLogFilePath; external DLLName;
procedure CkMime_putDebugLogFilePath; external DLLName;
function CkMime__debugLogFilePath; external DLLName;
procedure CkMime_getDisposition; external DLLName;
procedure CkMime_putDisposition; external DLLName;
function CkMime__disposition; external DLLName;
procedure CkMime_getEncoding; external DLLName;
procedure CkMime_putEncoding; external DLLName;
function CkMime__encoding; external DLLName;
procedure CkMime_getFilename; external DLLName;
procedure CkMime_putFilename; external DLLName;
function CkMime__filename; external DLLName;
procedure CkMime_getLastErrorHtml; external DLLName;
function CkMime__lastErrorHtml; external DLLName;
procedure CkMime_getLastErrorText; external DLLName;
function CkMime__lastErrorText; external DLLName;
procedure CkMime_getLastErrorXml; external DLLName;
function CkMime__lastErrorXml; external DLLName;
function CkMime_getLastMethodSuccess; external DLLName;
procedure CkMime_putLastMethodSuccess; external DLLName;
procedure CkMime_getMicalg; external DLLName;
procedure CkMime_putMicalg; external DLLName;
function CkMime__micalg; external DLLName;
procedure CkMime_getName; external DLLName;
procedure CkMime_putName; external DLLName;
function CkMime__name; external DLLName;
function CkMime_getNumEncryptCerts; external DLLName;
function CkMime_getNumHeaderFields; external DLLName;
function CkMime_getNumParts; external DLLName;
function CkMime_getNumSignerCerts; external DLLName;
procedure CkMime_getOaepHash; external DLLName;
procedure CkMime_putOaepHash; external DLLName;
function CkMime__oaepHash; external DLLName;
procedure CkMime_getOaepMgfHash; external DLLName;
procedure CkMime_putOaepMgfHash; external DLLName;
function CkMime__oaepMgfHash; external DLLName;
function CkMime_getOaepPadding; external DLLName;
procedure CkMime_putOaepPadding; external DLLName;
procedure CkMime_getPkcs7CryptAlg; external DLLName;
procedure CkMime_putPkcs7CryptAlg; external DLLName;
function CkMime__pkcs7CryptAlg; external DLLName;
function CkMime_getPkcs7KeyLength; external DLLName;
procedure CkMime_putPkcs7KeyLength; external DLLName;
procedure CkMime_getProtocol; external DLLName;
procedure CkMime_putProtocol; external DLLName;
function CkMime__protocol; external DLLName;
procedure CkMime_getSigningAlg; external DLLName;
procedure CkMime_putSigningAlg; external DLLName;
function CkMime__signingAlg; external DLLName;
procedure CkMime_getSigningHashAlg; external DLLName;
procedure CkMime_putSigningHashAlg; external DLLName;
function CkMime__signingHashAlg; external DLLName;
procedure CkMime_getUncommonOptions; external DLLName;
procedure CkMime_putUncommonOptions; external DLLName;
function CkMime__uncommonOptions; external DLLName;
function CkMime_getUnwrapExtras; external DLLName;
procedure CkMime_putUnwrapExtras; external DLLName;
function CkMime_getUseMmDescription; external DLLName;
procedure CkMime_putUseMmDescription; external DLLName;
function CkMime_getUseXPkcs7; external DLLName;
procedure CkMime_putUseXPkcs7; external DLLName;
function CkMime_getVerboseLogging; external DLLName;
procedure CkMime_putVerboseLogging; external DLLName;
procedure CkMime_getVersion; external DLLName;
function CkMime__version; external DLLName;
procedure CkMime_AddContentLength; external DLLName;
function CkMime_AddDecryptCert; external DLLName;
function CkMime_AddDetachedSignature; external DLLName;
function CkMime_AddDetachedSignature2; external DLLName;
function CkMime_AddDetachedSignaturePk; external DLLName;
function CkMime_AddDetachedSignaturePk2; external DLLName;
function CkMime_AddEncryptCert; external DLLName;
function CkMime_AddHeaderField; external DLLName;
function CkMime_AddPfxSourceData; external DLLName;
function CkMime_AddPfxSourceFile; external DLLName;
function CkMime_AppendPart; external DLLName;
function CkMime_AppendPartFromFile; external DLLName;
function CkMime_AsnBodyToXml; external DLLName;
function CkMime__asnBodyToXml; external DLLName;
procedure CkMime_ClearEncryptCerts; external DLLName;
function CkMime_ContainsEncryptedParts; external DLLName;
function CkMime_ContainsSignedParts; external DLLName;
procedure CkMime_Convert8Bit; external DLLName;
function CkMime_ConvertToMultipartAlt; external DLLName;
function CkMime_ConvertToMultipartMixed; external DLLName;
function CkMime_ConvertToSigned; external DLLName;
function CkMime_ConvertToSignedPk; external DLLName;
function CkMime_Decrypt; external DLLName;
function CkMime_Decrypt2; external DLLName;
function CkMime_DecryptUsingCert; external DLLName;
function CkMime_DecryptUsingPfxData; external DLLName;
function CkMime_DecryptUsingPfxFile; external DLLName;
function CkMime_Encrypt; external DLLName;
function CkMime_EncryptN; external DLLName;
function CkMime_ExtractPartsToFiles; external DLLName;
function CkMime_FindIssuer; external DLLName;
function CkMime_GetBodyBd; external DLLName;
function CkMime_GetBodyBinary; external DLLName;
function CkMime_GetBodyDecoded; external DLLName;
function CkMime__getBodyDecoded; external DLLName;
function CkMime_GetBodyEncoded; external DLLName;
function CkMime__getBodyEncoded; external DLLName;
function CkMime_GetEncryptCert; external DLLName;
function CkMime_GetEntireBody; external DLLName;
function CkMime__getEntireBody; external DLLName;
function CkMime_GetEntireHead; external DLLName;
function CkMime__getEntireHead; external DLLName;
function CkMime_GetHeaderField; external DLLName;
function CkMime__getHeaderField; external DLLName;
function CkMime_GetHeaderFieldAttribute; external DLLName;
function CkMime__getHeaderFieldAttribute; external DLLName;
function CkMime_GetHeaderFieldName; external DLLName;
function CkMime__getHeaderFieldName; external DLLName;
function CkMime_GetHeaderFieldValue; external DLLName;
function CkMime__getHeaderFieldValue; external DLLName;
function CkMime_GetMime; external DLLName;
function CkMime__getMime; external DLLName;
function CkMime_GetMimeBd; external DLLName;
function CkMime_GetMimeBytes; external DLLName;
function CkMime_GetMimeSb; external DLLName;
function CkMime_GetPart; external DLLName;
function CkMime_GetSignatureSigningTimeStr; external DLLName;
function CkMime__getSignatureSigningTimeStr; external DLLName;
function CkMime_GetSignerCert; external DLLName;
function CkMime_GetSignerCertChain; external DLLName;
function CkMime_GetStructure; external DLLName;
function CkMime__getStructure; external DLLName;
function CkMime_GetXml; external DLLName;
function CkMime__getXml; external DLLName;
function CkMime_HasSignatureSigningTime; external DLLName;
function CkMime_IsApplicationData; external DLLName;
function CkMime_IsAttachment; external DLLName;
function CkMime_IsAudio; external DLLName;
function CkMime_IsEncrypted; external DLLName;
function CkMime_IsHtml; external DLLName;
function CkMime_IsImage; external DLLName;
function CkMime_IsMultipart; external DLLName;
function CkMime_IsMultipartAlternative; external DLLName;
function CkMime_IsMultipartMixed; external DLLName;
function CkMime_IsMultipartRelated; external DLLName;
function CkMime_IsPlainText; external DLLName;
function CkMime_IsSigned; external DLLName;
function CkMime_IsText; external DLLName;
function CkMime_IsUnlocked; external DLLName;
function CkMime_IsVideo; external DLLName;
function CkMime_IsXml; external DLLName;
function CkMime_LastJsonData; external DLLName;
function CkMime_LoadMime; external DLLName;
function CkMime_LoadMimeBd; external DLLName;
function CkMime_LoadMimeBytes; external DLLName;
function CkMime_LoadMimeFile; external DLLName;
function CkMime_LoadMimeSb; external DLLName;
function CkMime_LoadXml; external DLLName;
function CkMime_LoadXmlFile; external DLLName;
function CkMime_NewMessageRfc822; external DLLName;
function CkMime_NewMultipartAlternative; external DLLName;
function CkMime_NewMultipartMixed; external DLLName;
function CkMime_NewMultipartRelated; external DLLName;
procedure CkMime_RemoveHeaderField; external DLLName;
function CkMime_RemovePart; external DLLName;
function CkMime_SaveBody; external DLLName;
function CkMime_SaveLastError; external DLLName;
function CkMime_SaveMime; external DLLName;
function CkMime_SaveXml; external DLLName;
procedure CkMime_SetBody; external DLLName;
function CkMime_SetBodyFromBinary; external DLLName;
function CkMime_SetBodyFromEncoded; external DLLName;
function CkMime_SetBodyFromFile; external DLLName;
function CkMime_SetBodyFromHtml; external DLLName;
function CkMime_SetBodyFromPlainText; external DLLName;
function CkMime_SetBodyFromXml; external DLLName;
function CkMime_SetHeaderField; external DLLName;
function CkMime_SetVerifyCert; external DLLName;
function CkMime_UnlockComponent; external DLLName;
function CkMime_UnwrapSecurity; external DLLName;
procedure CkMime_UrlEncodeBody; external DLLName;
function CkMime_UseCertVault; external DLLName;
function CkMime_Verify; external DLLName;



end.
