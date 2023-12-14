unit Zip;

interface

type

HCkBinData = Pointer;
HCkTask = Pointer;
HCkByteData = Pointer;
HCkString = Pointer;
HCkZip = Pointer;
HCkStringArray = Pointer;
HCkZipEntry = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TZipAbortCheck = function(): Integer; cdecl;
TZipProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TZipPercentDone = function(pctDone: Integer): Integer; cdecl;
TZipTaskCompleted = procedure(task: HCkTask); cdecl;


function CkZip_Create: HCkZip; stdcall;
procedure CkZip_Dispose(handle: HCkZip); stdcall;

procedure CkZip_SetAbortCheck(objHandle: HCkZip; fn: TZipAbortCheck) stdcall;
procedure CkZip_SetProgressInfo(objHandle: HCkZip; fn: TZipProgressInfo) stdcall;
procedure CkZip_SetPercentDone(objHandle: HCkZip; fn: TZipPercentDone) stdcall;
procedure CkZip_SetTaskCompleted(objHandle: HCkZip; fn: TZipTaskCompleted) stdcall;
function CkZip_getAbortCurrent(objHandle: HCkZip): wordbool; stdcall;

procedure CkZip_putAbortCurrent(objHandle: HCkZip; newPropVal: wordbool); stdcall;

procedure CkZip_getAppendFromDir(objHandle: HCkZip; outPropVal: HCkString); stdcall;

procedure CkZip_putAppendFromDir(objHandle: HCkZip; newPropVal: PWideChar); stdcall;

function CkZip__appendFromDir(objHandle: HCkZip): PWideChar; stdcall;

procedure CkZip_getAutoRun(objHandle: HCkZip; outPropVal: HCkString); stdcall;

procedure CkZip_putAutoRun(objHandle: HCkZip; newPropVal: PWideChar); stdcall;

function CkZip__autoRun(objHandle: HCkZip): PWideChar; stdcall;

procedure CkZip_getAutoRunParams(objHandle: HCkZip; outPropVal: HCkString); stdcall;

procedure CkZip_putAutoRunParams(objHandle: HCkZip; newPropVal: PWideChar); stdcall;

function CkZip__autoRunParams(objHandle: HCkZip): PWideChar; stdcall;

function CkZip_getAutoTemp(objHandle: HCkZip): wordbool; stdcall;

procedure CkZip_putAutoTemp(objHandle: HCkZip; newPropVal: wordbool); stdcall;

function CkZip_getCaseSensitive(objHandle: HCkZip): wordbool; stdcall;

procedure CkZip_putCaseSensitive(objHandle: HCkZip; newPropVal: wordbool); stdcall;

function CkZip_getClearArchiveAttribute(objHandle: HCkZip): wordbool; stdcall;

procedure CkZip_putClearArchiveAttribute(objHandle: HCkZip; newPropVal: wordbool); stdcall;

function CkZip_getClearReadOnlyAttr(objHandle: HCkZip): wordbool; stdcall;

procedure CkZip_putClearReadOnlyAttr(objHandle: HCkZip; newPropVal: wordbool); stdcall;

procedure CkZip_getComment(objHandle: HCkZip; outPropVal: HCkString); stdcall;

procedure CkZip_putComment(objHandle: HCkZip; newPropVal: PWideChar); stdcall;

function CkZip__comment(objHandle: HCkZip): PWideChar; stdcall;

procedure CkZip_getDebugLogFilePath(objHandle: HCkZip; outPropVal: HCkString); stdcall;

procedure CkZip_putDebugLogFilePath(objHandle: HCkZip; newPropVal: PWideChar); stdcall;

function CkZip__debugLogFilePath(objHandle: HCkZip): PWideChar; stdcall;

procedure CkZip_getDecryptPassword(objHandle: HCkZip; outPropVal: HCkString); stdcall;

procedure CkZip_putDecryptPassword(objHandle: HCkZip; newPropVal: PWideChar); stdcall;

function CkZip__decryptPassword(objHandle: HCkZip): PWideChar; stdcall;

function CkZip_getDiscardPaths(objHandle: HCkZip): wordbool; stdcall;

procedure CkZip_putDiscardPaths(objHandle: HCkZip; newPropVal: wordbool); stdcall;

function CkZip_getEncryption(objHandle: HCkZip): Integer; stdcall;

procedure CkZip_putEncryption(objHandle: HCkZip; newPropVal: Integer); stdcall;

function CkZip_getEncryptKeyLength(objHandle: HCkZip): Integer; stdcall;

procedure CkZip_putEncryptKeyLength(objHandle: HCkZip; newPropVal: Integer); stdcall;

procedure CkZip_getEncryptPassword(objHandle: HCkZip; outPropVal: HCkString); stdcall;

procedure CkZip_putEncryptPassword(objHandle: HCkZip; newPropVal: PWideChar); stdcall;

function CkZip__encryptPassword(objHandle: HCkZip): PWideChar; stdcall;

procedure CkZip_getExeDefaultDir(objHandle: HCkZip; outPropVal: HCkString); stdcall;

procedure CkZip_putExeDefaultDir(objHandle: HCkZip; newPropVal: PWideChar); stdcall;

function CkZip__exeDefaultDir(objHandle: HCkZip): PWideChar; stdcall;

function CkZip_getExeFinishNotifier(objHandle: HCkZip): wordbool; stdcall;

procedure CkZip_putExeFinishNotifier(objHandle: HCkZip; newPropVal: wordbool); stdcall;

procedure CkZip_getExeIconFile(objHandle: HCkZip; outPropVal: HCkString); stdcall;

procedure CkZip_putExeIconFile(objHandle: HCkZip; newPropVal: PWideChar); stdcall;

function CkZip__exeIconFile(objHandle: HCkZip): PWideChar; stdcall;

function CkZip_getExeNoInterface(objHandle: HCkZip): wordbool; stdcall;

procedure CkZip_putExeNoInterface(objHandle: HCkZip; newPropVal: wordbool); stdcall;

function CkZip_getExeSilentProgress(objHandle: HCkZip): wordbool; stdcall;

procedure CkZip_putExeSilentProgress(objHandle: HCkZip; newPropVal: wordbool); stdcall;

procedure CkZip_getExeTitle(objHandle: HCkZip; outPropVal: HCkString); stdcall;

procedure CkZip_putExeTitle(objHandle: HCkZip; newPropVal: PWideChar); stdcall;

function CkZip__exeTitle(objHandle: HCkZip): PWideChar; stdcall;

procedure CkZip_getExeUnzipCaption(objHandle: HCkZip; outPropVal: HCkString); stdcall;

procedure CkZip_putExeUnzipCaption(objHandle: HCkZip; newPropVal: PWideChar); stdcall;

function CkZip__exeUnzipCaption(objHandle: HCkZip): PWideChar; stdcall;

procedure CkZip_getExeUnzipDir(objHandle: HCkZip; outPropVal: HCkString); stdcall;

procedure CkZip_putExeUnzipDir(objHandle: HCkZip; newPropVal: PWideChar); stdcall;

function CkZip__exeUnzipDir(objHandle: HCkZip): PWideChar; stdcall;

function CkZip_getExeWaitForSetup(objHandle: HCkZip): wordbool; stdcall;

procedure CkZip_putExeWaitForSetup(objHandle: HCkZip; newPropVal: wordbool); stdcall;

procedure CkZip_getExeXmlConfig(objHandle: HCkZip; outPropVal: HCkString); stdcall;

procedure CkZip_putExeXmlConfig(objHandle: HCkZip; newPropVal: PWideChar); stdcall;

function CkZip__exeXmlConfig(objHandle: HCkZip): PWideChar; stdcall;

function CkZip_getFileCount(objHandle: HCkZip): Integer; stdcall;

procedure CkZip_getFileName(objHandle: HCkZip; outPropVal: HCkString); stdcall;

procedure CkZip_putFileName(objHandle: HCkZip; newPropVal: PWideChar); stdcall;

function CkZip__fileName(objHandle: HCkZip): PWideChar; stdcall;

function CkZip_getHasZipFormatErrors(objHandle: HCkZip): wordbool; stdcall;

function CkZip_getHeartbeatMs(objHandle: HCkZip): Integer; stdcall;

procedure CkZip_putHeartbeatMs(objHandle: HCkZip; newPropVal: Integer); stdcall;

function CkZip_getIgnoreAccessDenied(objHandle: HCkZip): wordbool; stdcall;

procedure CkZip_putIgnoreAccessDenied(objHandle: HCkZip; newPropVal: wordbool); stdcall;

procedure CkZip_getLastErrorHtml(objHandle: HCkZip; outPropVal: HCkString); stdcall;

function CkZip__lastErrorHtml(objHandle: HCkZip): PWideChar; stdcall;

procedure CkZip_getLastErrorText(objHandle: HCkZip; outPropVal: HCkString); stdcall;

function CkZip__lastErrorText(objHandle: HCkZip): PWideChar; stdcall;

procedure CkZip_getLastErrorXml(objHandle: HCkZip; outPropVal: HCkString); stdcall;

function CkZip__lastErrorXml(objHandle: HCkZip): PWideChar; stdcall;

function CkZip_getLastMethodSuccess(objHandle: HCkZip): wordbool; stdcall;

procedure CkZip_putLastMethodSuccess(objHandle: HCkZip; newPropVal: wordbool); stdcall;

function CkZip_getMaxUncompressSize(objHandle: HCkZip): LongWord; stdcall;

procedure CkZip_putMaxUncompressSize(objHandle: HCkZip; newPropVal: LongWord); stdcall;

function CkZip_getNumEntries(objHandle: HCkZip): Integer; stdcall;

function CkZip_getOemCodePage(objHandle: HCkZip): Integer; stdcall;

procedure CkZip_putOemCodePage(objHandle: HCkZip; newPropVal: Integer); stdcall;

function CkZip_getOverwriteExisting(objHandle: HCkZip): wordbool; stdcall;

procedure CkZip_putOverwriteExisting(objHandle: HCkZip; newPropVal: wordbool); stdcall;

function CkZip_getPasswordProtect(objHandle: HCkZip): wordbool; stdcall;

procedure CkZip_putPasswordProtect(objHandle: HCkZip; newPropVal: wordbool); stdcall;

procedure CkZip_getPathPrefix(objHandle: HCkZip; outPropVal: HCkString); stdcall;

procedure CkZip_putPathPrefix(objHandle: HCkZip; newPropVal: PWideChar); stdcall;

function CkZip__pathPrefix(objHandle: HCkZip): PWideChar; stdcall;

function CkZip_getPercentDoneScale(objHandle: HCkZip): Integer; stdcall;

procedure CkZip_putPercentDoneScale(objHandle: HCkZip; newPropVal: Integer); stdcall;

procedure CkZip_getPwdProtCharset(objHandle: HCkZip; outPropVal: HCkString); stdcall;

procedure CkZip_putPwdProtCharset(objHandle: HCkZip; newPropVal: PWideChar); stdcall;

function CkZip__pwdProtCharset(objHandle: HCkZip): PWideChar; stdcall;

procedure CkZip_getTempDir(objHandle: HCkZip; outPropVal: HCkString); stdcall;

procedure CkZip_putTempDir(objHandle: HCkZip; newPropVal: PWideChar); stdcall;

function CkZip__tempDir(objHandle: HCkZip): PWideChar; stdcall;

function CkZip_getTextFlag(objHandle: HCkZip): wordbool; stdcall;

procedure CkZip_putTextFlag(objHandle: HCkZip; newPropVal: wordbool); stdcall;

procedure CkZip_getUncommonOptions(objHandle: HCkZip; outPropVal: HCkString); stdcall;

procedure CkZip_putUncommonOptions(objHandle: HCkZip; newPropVal: PWideChar); stdcall;

function CkZip__uncommonOptions(objHandle: HCkZip): PWideChar; stdcall;

function CkZip_getVerboseLogging(objHandle: HCkZip): wordbool; stdcall;

procedure CkZip_putVerboseLogging(objHandle: HCkZip; newPropVal: wordbool); stdcall;

procedure CkZip_getVersion(objHandle: HCkZip; outPropVal: HCkString); stdcall;

function CkZip__version(objHandle: HCkZip): PWideChar; stdcall;

function CkZip_getZipx(objHandle: HCkZip): wordbool; stdcall;

procedure CkZip_putZipx(objHandle: HCkZip; newPropVal: wordbool); stdcall;

procedure CkZip_getZipxDefaultAlg(objHandle: HCkZip; outPropVal: HCkString); stdcall;

procedure CkZip_putZipxDefaultAlg(objHandle: HCkZip; newPropVal: PWideChar); stdcall;

function CkZip__zipxDefaultAlg(objHandle: HCkZip): PWideChar; stdcall;

function CkZip_AddEmbedded(objHandle: HCkZip; exeFilename: PWideChar; resourceName: PWideChar; zipFilename: PWideChar): wordbool; stdcall;

procedure CkZip_AddNoCompressExtension(objHandle: HCkZip; fileExtension: PWideChar); stdcall;

function CkZip_AppendBase64(objHandle: HCkZip; fileName: PWideChar; encodedCompressedData: PWideChar): HCkZipEntry; stdcall;

function CkZip_AppendBd(objHandle: HCkZip; pathInZip: PWideChar; byteData: HCkBinData): HCkZipEntry; stdcall;

function CkZip_AppendCompressed(objHandle: HCkZip; filename: PWideChar; inData: HCkByteData): HCkZipEntry; stdcall;

function CkZip_AppendData(objHandle: HCkZip; fileName: PWideChar; inData: HCkByteData): HCkZipEntry; stdcall;

function CkZip_AppendDataEncoded(objHandle: HCkZip; filename: PWideChar; encoding: PWideChar; data: PWideChar): HCkZipEntry; stdcall;

function CkZip_AppendFiles(objHandle: HCkZip; filePattern: PWideChar; recurse: wordbool): wordbool; stdcall;

function CkZip_AppendFilesAsync(objHandle: HCkZip; filePattern: PWideChar; recurse: wordbool): HCkTask; stdcall;

function CkZip_AppendFilesEx(objHandle: HCkZip; filePattern: PWideChar; recurse: wordbool; saveExtraPath: wordbool; archiveOnly: wordbool; includeHidden: wordbool; includeSystem: wordbool): wordbool; stdcall;

function CkZip_AppendFilesExAsync(objHandle: HCkZip; filePattern: PWideChar; recurse: wordbool; saveExtraPath: wordbool; archiveOnly: wordbool; includeHidden: wordbool; includeSystem: wordbool): HCkTask; stdcall;

function CkZip_AppendHex(objHandle: HCkZip; fileName: PWideChar; encodedCompressedData: PWideChar): HCkZipEntry; stdcall;

function CkZip_AppendMultiple(objHandle: HCkZip; fileSpecs: HCkStringArray; recurse: wordbool): wordbool; stdcall;

function CkZip_AppendMultipleAsync(objHandle: HCkZip; fileSpecs: HCkStringArray; recurse: wordbool): HCkTask; stdcall;

function CkZip_AppendNew(objHandle: HCkZip; fileName: PWideChar): HCkZipEntry; stdcall;

function CkZip_AppendNewDir(objHandle: HCkZip; dirName: PWideChar): HCkZipEntry; stdcall;

function CkZip_AppendOneFileOrDir(objHandle: HCkZip; fileOrDirPath: PWideChar; saveExtraPath: wordbool): wordbool; stdcall;

function CkZip_AppendOneFileOrDirAsync(objHandle: HCkZip; fileOrDirPath: PWideChar; saveExtraPath: wordbool): HCkTask; stdcall;

function CkZip_AppendString(objHandle: HCkZip; internalZipFilepath: PWideChar; textData: PWideChar): HCkZipEntry; stdcall;

function CkZip_AppendString2(objHandle: HCkZip; internalZipFilepath: PWideChar; textData: PWideChar; charset: PWideChar): HCkZipEntry; stdcall;

function CkZip_AppendZip(objHandle: HCkZip; zipFileName: PWideChar): wordbool; stdcall;

procedure CkZip_CloseZip(objHandle: HCkZip); stdcall;

function CkZip_DeleteEntry(objHandle: HCkZip; entry: HCkZipEntry): wordbool; stdcall;

procedure CkZip_ExcludeDir(objHandle: HCkZip; dirName: PWideChar); stdcall;

function CkZip_Extract(objHandle: HCkZip; dirPath: PWideChar): wordbool; stdcall;

function CkZip_ExtractAsync(objHandle: HCkZip; dirPath: PWideChar): HCkTask; stdcall;

function CkZip_ExtractExe(objHandle: HCkZip; exePath: PWideChar; dirPath: PWideChar): wordbool; stdcall;

function CkZip_ExtractExeAsync(objHandle: HCkZip; exePath: PWideChar; dirPath: PWideChar): HCkTask; stdcall;

function CkZip_ExtractInto(objHandle: HCkZip; dirPath: PWideChar): wordbool; stdcall;

function CkZip_ExtractMatching(objHandle: HCkZip; dirPath: PWideChar; pattern: PWideChar): wordbool; stdcall;

function CkZip_ExtractNewer(objHandle: HCkZip; dirPath: PWideChar): wordbool; stdcall;

function CkZip_ExtractOne(objHandle: HCkZip; entry: HCkZipEntry; dirPath: PWideChar): wordbool; stdcall;

function CkZip_FirstEntry(objHandle: HCkZip): HCkZipEntry; stdcall;

function CkZip_FirstMatchingEntry(objHandle: HCkZip; pattern: PWideChar): HCkZipEntry; stdcall;

function CkZip_GetDirectoryAsXML(objHandle: HCkZip; outStr: HCkString): wordbool; stdcall;

function CkZip__getDirectoryAsXML(objHandle: HCkZip): PWideChar; stdcall;

function CkZip_GetEntryByID(objHandle: HCkZip; entryID: Integer): HCkZipEntry; stdcall;

function CkZip_GetEntryByIndex(objHandle: HCkZip; index: Integer): HCkZipEntry; stdcall;

function CkZip_GetEntryByName(objHandle: HCkZip; entryName: PWideChar): HCkZipEntry; stdcall;

function CkZip_GetExclusions(objHandle: HCkZip): HCkStringArray; stdcall;

function CkZip_GetExeConfigParam(objHandle: HCkZip; name: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkZip__getExeConfigParam(objHandle: HCkZip; name: PWideChar): PWideChar; stdcall;

function CkZip_GetMaxUncompressedSize(objHandle: HCkZip; outStr: HCkString): wordbool; stdcall;

function CkZip__getMaxUncompressedSize(objHandle: HCkZip): PWideChar; stdcall;

function CkZip_InsertNew(objHandle: HCkZip; fileName: PWideChar; beforeIndex: Integer): HCkZipEntry; stdcall;

function CkZip_IsNoCompressExtension(objHandle: HCkZip; fileExtension: PWideChar): wordbool; stdcall;

function CkZip_IsPasswordProtected(objHandle: HCkZip; zipFilename: PWideChar): wordbool; stdcall;

function CkZip_IsUnlocked(objHandle: HCkZip): wordbool; stdcall;

function CkZip_LoadTaskCaller(objHandle: HCkZip; task: HCkTask): wordbool; stdcall;

function CkZip_NewZip(objHandle: HCkZip; zipFilePath: PWideChar): wordbool; stdcall;

function CkZip_OpenBd(objHandle: HCkZip; binData: HCkBinData): wordbool; stdcall;

function CkZip_OpenEmbedded(objHandle: HCkZip; exeFilename: PWideChar; resourceName: PWideChar): wordbool; stdcall;

function CkZip_OpenFromByteData(objHandle: HCkZip; byteData: HCkByteData): wordbool; stdcall;

function CkZip_OpenFromMemory(objHandle: HCkZip; inData: HCkByteData): wordbool; stdcall;

function CkZip_OpenMyEmbedded(objHandle: HCkZip; resourceName: PWideChar): wordbool; stdcall;

function CkZip_OpenZip(objHandle: HCkZip; zipPath: PWideChar): wordbool; stdcall;

function CkZip_OpenZipAsync(objHandle: HCkZip; zipPath: PWideChar): HCkTask; stdcall;

function CkZip_QuickAppend(objHandle: HCkZip; ZipFileName: PWideChar): wordbool; stdcall;

function CkZip_QuickAppendAsync(objHandle: HCkZip; ZipFileName: PWideChar): HCkTask; stdcall;

function CkZip_RemoveEmbedded(objHandle: HCkZip; exeFilename: PWideChar; resourceName: PWideChar): wordbool; stdcall;

procedure CkZip_RemoveNoCompressExtension(objHandle: HCkZip; fileExtension: PWideChar); stdcall;

function CkZip_ReplaceEmbedded(objHandle: HCkZip; exeFilename: PWideChar; resourceName: PWideChar; zipFilename: PWideChar): wordbool; stdcall;

function CkZip_SaveLastError(objHandle: HCkZip; path: PWideChar): wordbool; stdcall;

procedure CkZip_SetCompressionLevel(objHandle: HCkZip; level: Integer); stdcall;

procedure CkZip_SetExclusions(objHandle: HCkZip; excludePatterns: HCkStringArray); stdcall;

procedure CkZip_SetExeConfigParam(objHandle: HCkZip; paramName: PWideChar; paramValue: PWideChar); stdcall;

procedure CkZip_SetPassword(objHandle: HCkZip; password: PWideChar); stdcall;

function CkZip_UnlockComponent(objHandle: HCkZip; regCode: PWideChar): wordbool; stdcall;

function CkZip_Unzip(objHandle: HCkZip; dirPath: PWideChar): Integer; stdcall;

function CkZip_UnzipAsync(objHandle: HCkZip; dirPath: PWideChar): HCkTask; stdcall;

function CkZip_UnzipInto(objHandle: HCkZip; dirPath: PWideChar): Integer; stdcall;

function CkZip_UnzipIntoAsync(objHandle: HCkZip; dirPath: PWideChar): HCkTask; stdcall;

function CkZip_UnzipMatching(objHandle: HCkZip; dirPath: PWideChar; pattern: PWideChar; verbose: wordbool): Integer; stdcall;

function CkZip_UnzipMatchingAsync(objHandle: HCkZip; dirPath: PWideChar; pattern: PWideChar; verbose: wordbool): HCkTask; stdcall;

function CkZip_UnzipMatchingInto(objHandle: HCkZip; dirPath: PWideChar; pattern: PWideChar; verbose: wordbool): Integer; stdcall;

function CkZip_UnzipMatchingIntoAsync(objHandle: HCkZip; dirPath: PWideChar; pattern: PWideChar; verbose: wordbool): HCkTask; stdcall;

function CkZip_UnzipNewer(objHandle: HCkZip; dirPath: PWideChar): Integer; stdcall;

function CkZip_UnzipNewerAsync(objHandle: HCkZip; dirPath: PWideChar): HCkTask; stdcall;

function CkZip_VerifyPassword(objHandle: HCkZip): wordbool; stdcall;

function CkZip_WriteBd(objHandle: HCkZip; binData: HCkBinData): wordbool; stdcall;

function CkZip_WriteBdAsync(objHandle: HCkZip; binData: HCkBinData): HCkTask; stdcall;

function CkZip_WriteExe(objHandle: HCkZip; exeFilename: PWideChar): wordbool; stdcall;

function CkZip_WriteExe2(objHandle: HCkZip; exePath: PWideChar; destExePath: PWideChar; bAesEncrypt: wordbool; keyLength: Integer; password: PWideChar): wordbool; stdcall;

function CkZip_WriteExeToMemory(objHandle: HCkZip; outData: HCkByteData): wordbool; stdcall;

function CkZip_WriteToMemory(objHandle: HCkZip; outData: HCkByteData): wordbool; stdcall;

function CkZip_WriteToMemoryAsync(objHandle: HCkZip): HCkTask; stdcall;

function CkZip_WriteZip(objHandle: HCkZip): wordbool; stdcall;

function CkZip_WriteZipAsync(objHandle: HCkZip): HCkTask; stdcall;

function CkZip_WriteZipAndClose(objHandle: HCkZip): wordbool; stdcall;

function CkZip_WriteZipAndCloseAsync(objHandle: HCkZip): HCkTask; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkZip_Create; external DLLName;
procedure CkZip_Dispose; external DLLName;

procedure CkZip_SetAbortCheck; external DLLName;
procedure CkZip_SetProgressInfo; external DLLName;
procedure CkZip_SetPercentDone; external DLLName;
procedure CkZip_SetTaskCompleted; external DLLName;
function CkZip_getAbortCurrent; external DLLName;
procedure CkZip_putAbortCurrent; external DLLName;
procedure CkZip_getAppendFromDir; external DLLName;
procedure CkZip_putAppendFromDir; external DLLName;
function CkZip__appendFromDir; external DLLName;
procedure CkZip_getAutoRun; external DLLName;
procedure CkZip_putAutoRun; external DLLName;
function CkZip__autoRun; external DLLName;
procedure CkZip_getAutoRunParams; external DLLName;
procedure CkZip_putAutoRunParams; external DLLName;
function CkZip__autoRunParams; external DLLName;
function CkZip_getAutoTemp; external DLLName;
procedure CkZip_putAutoTemp; external DLLName;
function CkZip_getCaseSensitive; external DLLName;
procedure CkZip_putCaseSensitive; external DLLName;
function CkZip_getClearArchiveAttribute; external DLLName;
procedure CkZip_putClearArchiveAttribute; external DLLName;
function CkZip_getClearReadOnlyAttr; external DLLName;
procedure CkZip_putClearReadOnlyAttr; external DLLName;
procedure CkZip_getComment; external DLLName;
procedure CkZip_putComment; external DLLName;
function CkZip__comment; external DLLName;
procedure CkZip_getDebugLogFilePath; external DLLName;
procedure CkZip_putDebugLogFilePath; external DLLName;
function CkZip__debugLogFilePath; external DLLName;
procedure CkZip_getDecryptPassword; external DLLName;
procedure CkZip_putDecryptPassword; external DLLName;
function CkZip__decryptPassword; external DLLName;
function CkZip_getDiscardPaths; external DLLName;
procedure CkZip_putDiscardPaths; external DLLName;
function CkZip_getEncryption; external DLLName;
procedure CkZip_putEncryption; external DLLName;
function CkZip_getEncryptKeyLength; external DLLName;
procedure CkZip_putEncryptKeyLength; external DLLName;
procedure CkZip_getEncryptPassword; external DLLName;
procedure CkZip_putEncryptPassword; external DLLName;
function CkZip__encryptPassword; external DLLName;
procedure CkZip_getExeDefaultDir; external DLLName;
procedure CkZip_putExeDefaultDir; external DLLName;
function CkZip__exeDefaultDir; external DLLName;
function CkZip_getExeFinishNotifier; external DLLName;
procedure CkZip_putExeFinishNotifier; external DLLName;
procedure CkZip_getExeIconFile; external DLLName;
procedure CkZip_putExeIconFile; external DLLName;
function CkZip__exeIconFile; external DLLName;
function CkZip_getExeNoInterface; external DLLName;
procedure CkZip_putExeNoInterface; external DLLName;
function CkZip_getExeSilentProgress; external DLLName;
procedure CkZip_putExeSilentProgress; external DLLName;
procedure CkZip_getExeTitle; external DLLName;
procedure CkZip_putExeTitle; external DLLName;
function CkZip__exeTitle; external DLLName;
procedure CkZip_getExeUnzipCaption; external DLLName;
procedure CkZip_putExeUnzipCaption; external DLLName;
function CkZip__exeUnzipCaption; external DLLName;
procedure CkZip_getExeUnzipDir; external DLLName;
procedure CkZip_putExeUnzipDir; external DLLName;
function CkZip__exeUnzipDir; external DLLName;
function CkZip_getExeWaitForSetup; external DLLName;
procedure CkZip_putExeWaitForSetup; external DLLName;
procedure CkZip_getExeXmlConfig; external DLLName;
procedure CkZip_putExeXmlConfig; external DLLName;
function CkZip__exeXmlConfig; external DLLName;
function CkZip_getFileCount; external DLLName;
procedure CkZip_getFileName; external DLLName;
procedure CkZip_putFileName; external DLLName;
function CkZip__fileName; external DLLName;
function CkZip_getHasZipFormatErrors; external DLLName;
function CkZip_getHeartbeatMs; external DLLName;
procedure CkZip_putHeartbeatMs; external DLLName;
function CkZip_getIgnoreAccessDenied; external DLLName;
procedure CkZip_putIgnoreAccessDenied; external DLLName;
procedure CkZip_getLastErrorHtml; external DLLName;
function CkZip__lastErrorHtml; external DLLName;
procedure CkZip_getLastErrorText; external DLLName;
function CkZip__lastErrorText; external DLLName;
procedure CkZip_getLastErrorXml; external DLLName;
function CkZip__lastErrorXml; external DLLName;
function CkZip_getLastMethodSuccess; external DLLName;
procedure CkZip_putLastMethodSuccess; external DLLName;
function CkZip_getMaxUncompressSize; external DLLName;
procedure CkZip_putMaxUncompressSize; external DLLName;
function CkZip_getNumEntries; external DLLName;
function CkZip_getOemCodePage; external DLLName;
procedure CkZip_putOemCodePage; external DLLName;
function CkZip_getOverwriteExisting; external DLLName;
procedure CkZip_putOverwriteExisting; external DLLName;
function CkZip_getPasswordProtect; external DLLName;
procedure CkZip_putPasswordProtect; external DLLName;
procedure CkZip_getPathPrefix; external DLLName;
procedure CkZip_putPathPrefix; external DLLName;
function CkZip__pathPrefix; external DLLName;
function CkZip_getPercentDoneScale; external DLLName;
procedure CkZip_putPercentDoneScale; external DLLName;
procedure CkZip_getPwdProtCharset; external DLLName;
procedure CkZip_putPwdProtCharset; external DLLName;
function CkZip__pwdProtCharset; external DLLName;
procedure CkZip_getTempDir; external DLLName;
procedure CkZip_putTempDir; external DLLName;
function CkZip__tempDir; external DLLName;
function CkZip_getTextFlag; external DLLName;
procedure CkZip_putTextFlag; external DLLName;
procedure CkZip_getUncommonOptions; external DLLName;
procedure CkZip_putUncommonOptions; external DLLName;
function CkZip__uncommonOptions; external DLLName;
function CkZip_getVerboseLogging; external DLLName;
procedure CkZip_putVerboseLogging; external DLLName;
procedure CkZip_getVersion; external DLLName;
function CkZip__version; external DLLName;
function CkZip_getZipx; external DLLName;
procedure CkZip_putZipx; external DLLName;
procedure CkZip_getZipxDefaultAlg; external DLLName;
procedure CkZip_putZipxDefaultAlg; external DLLName;
function CkZip__zipxDefaultAlg; external DLLName;
function CkZip_AddEmbedded; external DLLName;
procedure CkZip_AddNoCompressExtension; external DLLName;
function CkZip_AppendBase64; external DLLName;
function CkZip_AppendBd; external DLLName;
function CkZip_AppendCompressed; external DLLName;
function CkZip_AppendData; external DLLName;
function CkZip_AppendDataEncoded; external DLLName;
function CkZip_AppendFiles; external DLLName;
function CkZip_AppendFilesAsync; external DLLName;
function CkZip_AppendFilesEx; external DLLName;
function CkZip_AppendFilesExAsync; external DLLName;
function CkZip_AppendHex; external DLLName;
function CkZip_AppendMultiple; external DLLName;
function CkZip_AppendMultipleAsync; external DLLName;
function CkZip_AppendNew; external DLLName;
function CkZip_AppendNewDir; external DLLName;
function CkZip_AppendOneFileOrDir; external DLLName;
function CkZip_AppendOneFileOrDirAsync; external DLLName;
function CkZip_AppendString; external DLLName;
function CkZip_AppendString2; external DLLName;
function CkZip_AppendZip; external DLLName;
procedure CkZip_CloseZip; external DLLName;
function CkZip_DeleteEntry; external DLLName;
procedure CkZip_ExcludeDir; external DLLName;
function CkZip_Extract; external DLLName;
function CkZip_ExtractAsync; external DLLName;
function CkZip_ExtractExe; external DLLName;
function CkZip_ExtractExeAsync; external DLLName;
function CkZip_ExtractInto; external DLLName;
function CkZip_ExtractMatching; external DLLName;
function CkZip_ExtractNewer; external DLLName;
function CkZip_ExtractOne; external DLLName;
function CkZip_FirstEntry; external DLLName;
function CkZip_FirstMatchingEntry; external DLLName;
function CkZip_GetDirectoryAsXML; external DLLName;
function CkZip__getDirectoryAsXML; external DLLName;
function CkZip_GetEntryByID; external DLLName;
function CkZip_GetEntryByIndex; external DLLName;
function CkZip_GetEntryByName; external DLLName;
function CkZip_GetExclusions; external DLLName;
function CkZip_GetExeConfigParam; external DLLName;
function CkZip__getExeConfigParam; external DLLName;
function CkZip_GetMaxUncompressedSize; external DLLName;
function CkZip__getMaxUncompressedSize; external DLLName;
function CkZip_InsertNew; external DLLName;
function CkZip_IsNoCompressExtension; external DLLName;
function CkZip_IsPasswordProtected; external DLLName;
function CkZip_IsUnlocked; external DLLName;
function CkZip_LoadTaskCaller; external DLLName;
function CkZip_NewZip; external DLLName;
function CkZip_OpenBd; external DLLName;
function CkZip_OpenEmbedded; external DLLName;
function CkZip_OpenFromByteData; external DLLName;
function CkZip_OpenFromMemory; external DLLName;
function CkZip_OpenMyEmbedded; external DLLName;
function CkZip_OpenZip; external DLLName;
function CkZip_OpenZipAsync; external DLLName;
function CkZip_QuickAppend; external DLLName;
function CkZip_QuickAppendAsync; external DLLName;
function CkZip_RemoveEmbedded; external DLLName;
procedure CkZip_RemoveNoCompressExtension; external DLLName;
function CkZip_ReplaceEmbedded; external DLLName;
function CkZip_SaveLastError; external DLLName;
procedure CkZip_SetCompressionLevel; external DLLName;
procedure CkZip_SetExclusions; external DLLName;
procedure CkZip_SetExeConfigParam; external DLLName;
procedure CkZip_SetPassword; external DLLName;
function CkZip_UnlockComponent; external DLLName;
function CkZip_Unzip; external DLLName;
function CkZip_UnzipAsync; external DLLName;
function CkZip_UnzipInto; external DLLName;
function CkZip_UnzipIntoAsync; external DLLName;
function CkZip_UnzipMatching; external DLLName;
function CkZip_UnzipMatchingAsync; external DLLName;
function CkZip_UnzipMatchingInto; external DLLName;
function CkZip_UnzipMatchingIntoAsync; external DLLName;
function CkZip_UnzipNewer; external DLLName;
function CkZip_UnzipNewerAsync; external DLLName;
function CkZip_VerifyPassword; external DLLName;
function CkZip_WriteBd; external DLLName;
function CkZip_WriteBdAsync; external DLLName;
function CkZip_WriteExe; external DLLName;
function CkZip_WriteExe2; external DLLName;
function CkZip_WriteExeToMemory; external DLLName;
function CkZip_WriteToMemory; external DLLName;
function CkZip_WriteToMemoryAsync; external DLLName;
function CkZip_WriteZip; external DLLName;
function CkZip_WriteZipAsync; external DLLName;
function CkZip_WriteZipAndClose; external DLLName;
function CkZip_WriteZipAndCloseAsync; external DLLName;



end.
