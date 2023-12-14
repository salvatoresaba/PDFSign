unit ZipEntry;

interface

type

HCkBinData = Pointer;
HCkDateTime = Pointer;
HCkByteData = Pointer;
HCkZipEntry = Pointer;
HCkString = Pointer;
HCkStream = Pointer;
HCkStringBuilder = Pointer;
HCkTask = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TZipEntryAbortCheck = function(): Integer; cdecl;
TZipEntryProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TZipEntryPercentDone = function(pctDone: Integer): Integer; cdecl;
TZipEntryTaskCompleted = procedure(task: HCkTask); cdecl;


function CkZipEntry_Create: HCkZipEntry; stdcall;
procedure CkZipEntry_Dispose(handle: HCkZipEntry); stdcall;

procedure CkZipEntry_SetAbortCheck(objHandle: HCkZipEntry; fn: TZipEntryAbortCheck) stdcall;
procedure CkZipEntry_SetProgressInfo(objHandle: HCkZipEntry; fn: TZipEntryProgressInfo) stdcall;
procedure CkZipEntry_SetPercentDone(objHandle: HCkZipEntry; fn: TZipEntryPercentDone) stdcall;
procedure CkZipEntry_SetTaskCompleted(objHandle: HCkZipEntry; fn: TZipEntryTaskCompleted) stdcall;
procedure CkZipEntry_getComment(objHandle: HCkZipEntry; outPropVal: HCkString); stdcall;

procedure CkZipEntry_putComment(objHandle: HCkZipEntry; newPropVal: PWideChar); stdcall;

function CkZipEntry__comment(objHandle: HCkZipEntry): PWideChar; stdcall;

function CkZipEntry_getCompressedLength(objHandle: HCkZipEntry): LongWord; stdcall;

function CkZipEntry_getCompressedLength64(objHandle: HCkZipEntry): Int64; stdcall;

procedure CkZipEntry_getCompressedLengthStr(objHandle: HCkZipEntry; outPropVal: HCkString); stdcall;

function CkZipEntry__compressedLengthStr(objHandle: HCkZipEntry): PWideChar; stdcall;

function CkZipEntry_getCompressionLevel(objHandle: HCkZipEntry): Integer; stdcall;

procedure CkZipEntry_putCompressionLevel(objHandle: HCkZipEntry; newPropVal: Integer); stdcall;

function CkZipEntry_getCompressionMethod(objHandle: HCkZipEntry): Integer; stdcall;

procedure CkZipEntry_putCompressionMethod(objHandle: HCkZipEntry; newPropVal: Integer); stdcall;

function CkZipEntry_getCrc(objHandle: HCkZipEntry): Integer; stdcall;

procedure CkZipEntry_getDebugLogFilePath(objHandle: HCkZipEntry; outPropVal: HCkString); stdcall;

procedure CkZipEntry_putDebugLogFilePath(objHandle: HCkZipEntry; newPropVal: PWideChar); stdcall;

function CkZipEntry__debugLogFilePath(objHandle: HCkZipEntry): PWideChar; stdcall;

function CkZipEntry_getEncryptionKeyLen(objHandle: HCkZipEntry): Integer; stdcall;

function CkZipEntry_getEntryID(objHandle: HCkZipEntry): Integer; stdcall;

function CkZipEntry_getEntryType(objHandle: HCkZipEntry): Integer; stdcall;

procedure CkZipEntry_getFileDateTimeStr(objHandle: HCkZipEntry; outPropVal: HCkString); stdcall;

procedure CkZipEntry_putFileDateTimeStr(objHandle: HCkZipEntry; newPropVal: PWideChar); stdcall;

function CkZipEntry__fileDateTimeStr(objHandle: HCkZipEntry): PWideChar; stdcall;

procedure CkZipEntry_getFileName(objHandle: HCkZipEntry; outPropVal: HCkString); stdcall;

procedure CkZipEntry_putFileName(objHandle: HCkZipEntry; newPropVal: PWideChar); stdcall;

function CkZipEntry__fileName(objHandle: HCkZipEntry): PWideChar; stdcall;

procedure CkZipEntry_getFileNameHex(objHandle: HCkZipEntry; outPropVal: HCkString); stdcall;

function CkZipEntry__fileNameHex(objHandle: HCkZipEntry): PWideChar; stdcall;

function CkZipEntry_getHeartbeatMs(objHandle: HCkZipEntry): Integer; stdcall;

procedure CkZipEntry_putHeartbeatMs(objHandle: HCkZipEntry; newPropVal: Integer); stdcall;

function CkZipEntry_getIsAesEncrypted(objHandle: HCkZipEntry): wordbool; stdcall;

function CkZipEntry_getIsDirectory(objHandle: HCkZipEntry): wordbool; stdcall;

procedure CkZipEntry_getLastErrorHtml(objHandle: HCkZipEntry; outPropVal: HCkString); stdcall;

function CkZipEntry__lastErrorHtml(objHandle: HCkZipEntry): PWideChar; stdcall;

procedure CkZipEntry_getLastErrorText(objHandle: HCkZipEntry; outPropVal: HCkString); stdcall;

function CkZipEntry__lastErrorText(objHandle: HCkZipEntry): PWideChar; stdcall;

procedure CkZipEntry_getLastErrorXml(objHandle: HCkZipEntry; outPropVal: HCkString); stdcall;

function CkZipEntry__lastErrorXml(objHandle: HCkZipEntry): PWideChar; stdcall;

function CkZipEntry_getLastMethodSuccess(objHandle: HCkZipEntry): wordbool; stdcall;

procedure CkZipEntry_putLastMethodSuccess(objHandle: HCkZipEntry; newPropVal: wordbool); stdcall;

function CkZipEntry_getTextFlag(objHandle: HCkZipEntry): wordbool; stdcall;

procedure CkZipEntry_putTextFlag(objHandle: HCkZipEntry; newPropVal: wordbool); stdcall;

function CkZipEntry_getUncompressedLength(objHandle: HCkZipEntry): LongWord; stdcall;

function CkZipEntry_getUncompressedLength64(objHandle: HCkZipEntry): Int64; stdcall;

procedure CkZipEntry_getUncompressedLengthStr(objHandle: HCkZipEntry; outPropVal: HCkString); stdcall;

function CkZipEntry__uncompressedLengthStr(objHandle: HCkZipEntry): PWideChar; stdcall;

function CkZipEntry_getVerboseLogging(objHandle: HCkZipEntry): wordbool; stdcall;

procedure CkZipEntry_putVerboseLogging(objHandle: HCkZipEntry; newPropVal: wordbool); stdcall;

procedure CkZipEntry_getVersion(objHandle: HCkZipEntry; outPropVal: HCkString); stdcall;

function CkZipEntry__version(objHandle: HCkZipEntry): PWideChar; stdcall;

function CkZipEntry_AppendData(objHandle: HCkZipEntry; inData: HCkByteData): wordbool; stdcall;

function CkZipEntry_AppendDataAsync(objHandle: HCkZipEntry; inData: HCkByteData): HCkTask; stdcall;

function CkZipEntry_AppendString(objHandle: HCkZipEntry; strContent: PWideChar; charset: PWideChar): wordbool; stdcall;

function CkZipEntry_AppendStringAsync(objHandle: HCkZipEntry; strContent: PWideChar; charset: PWideChar): HCkTask; stdcall;

function CkZipEntry_Copy(objHandle: HCkZipEntry; outData: HCkByteData): wordbool; stdcall;

function CkZipEntry_CopyToBase64(objHandle: HCkZipEntry; outStr: HCkString): wordbool; stdcall;

function CkZipEntry__copyToBase64(objHandle: HCkZipEntry): PWideChar; stdcall;

function CkZipEntry_CopyToHex(objHandle: HCkZipEntry; outStr: HCkString): wordbool; stdcall;

function CkZipEntry__copyToHex(objHandle: HCkZipEntry): PWideChar; stdcall;

function CkZipEntry_Extract(objHandle: HCkZipEntry; dirPath: PWideChar): wordbool; stdcall;

function CkZipEntry_ExtractAsync(objHandle: HCkZipEntry; dirPath: PWideChar): HCkTask; stdcall;

function CkZipEntry_ExtractInto(objHandle: HCkZipEntry; dirPath: PWideChar): wordbool; stdcall;

function CkZipEntry_ExtractIntoAsync(objHandle: HCkZipEntry; dirPath: PWideChar): HCkTask; stdcall;

function CkZipEntry_GetDt(objHandle: HCkZipEntry): HCkDateTime; stdcall;

function CkZipEntry_Inflate(objHandle: HCkZipEntry; outData: HCkByteData): wordbool; stdcall;

function CkZipEntry_InflateAsync(objHandle: HCkZipEntry): HCkTask; stdcall;

function CkZipEntry_LoadTaskCaller(objHandle: HCkZipEntry; task: HCkTask): wordbool; stdcall;

function CkZipEntry_NextEntry(objHandle: HCkZipEntry): HCkZipEntry; stdcall;

function CkZipEntry_NextMatchingEntry(objHandle: HCkZipEntry; matchStr: PWideChar): HCkZipEntry; stdcall;

function CkZipEntry_ReplaceData(objHandle: HCkZipEntry; inData: HCkByteData): wordbool; stdcall;

function CkZipEntry_ReplaceString(objHandle: HCkZipEntry; strContent: PWideChar; charset: PWideChar): wordbool; stdcall;

function CkZipEntry_SaveLastError(objHandle: HCkZipEntry; path: PWideChar): wordbool; stdcall;

procedure CkZipEntry_SetDt(objHandle: HCkZipEntry; dt: HCkDateTime); stdcall;

function CkZipEntry_UnzipToBd(objHandle: HCkZipEntry; binData: HCkBinData): wordbool; stdcall;

function CkZipEntry_UnzipToBdAsync(objHandle: HCkZipEntry; binData: HCkBinData): HCkTask; stdcall;

function CkZipEntry_UnzipToSb(objHandle: HCkZipEntry; lineEndingBehavior: Integer; srcCharset: PWideChar; sb: HCkStringBuilder): wordbool; stdcall;

function CkZipEntry_UnzipToSbAsync(objHandle: HCkZipEntry; lineEndingBehavior: Integer; srcCharset: PWideChar; sb: HCkStringBuilder): HCkTask; stdcall;

function CkZipEntry_UnzipToStream(objHandle: HCkZipEntry; toStream: HCkStream): wordbool; stdcall;

function CkZipEntry_UnzipToStreamAsync(objHandle: HCkZipEntry; toStream: HCkStream): HCkTask; stdcall;

function CkZipEntry_UnzipToString(objHandle: HCkZipEntry; lineEndingBehavior: Integer; srcCharset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkZipEntry__unzipToString(objHandle: HCkZipEntry; lineEndingBehavior: Integer; srcCharset: PWideChar): PWideChar; stdcall;

function CkZipEntry_UnzipToStringAsync(objHandle: HCkZipEntry; lineEndingBehavior: Integer; srcCharset: PWideChar): HCkTask; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkZipEntry_Create; external DLLName;
procedure CkZipEntry_Dispose; external DLLName;

procedure CkZipEntry_SetAbortCheck; external DLLName;
procedure CkZipEntry_SetProgressInfo; external DLLName;
procedure CkZipEntry_SetPercentDone; external DLLName;
procedure CkZipEntry_SetTaskCompleted; external DLLName;
procedure CkZipEntry_getComment; external DLLName;
procedure CkZipEntry_putComment; external DLLName;
function CkZipEntry__comment; external DLLName;
function CkZipEntry_getCompressedLength; external DLLName;
function CkZipEntry_getCompressedLength64; external DLLName;
procedure CkZipEntry_getCompressedLengthStr; external DLLName;
function CkZipEntry__compressedLengthStr; external DLLName;
function CkZipEntry_getCompressionLevel; external DLLName;
procedure CkZipEntry_putCompressionLevel; external DLLName;
function CkZipEntry_getCompressionMethod; external DLLName;
procedure CkZipEntry_putCompressionMethod; external DLLName;
function CkZipEntry_getCrc; external DLLName;
procedure CkZipEntry_getDebugLogFilePath; external DLLName;
procedure CkZipEntry_putDebugLogFilePath; external DLLName;
function CkZipEntry__debugLogFilePath; external DLLName;
function CkZipEntry_getEncryptionKeyLen; external DLLName;
function CkZipEntry_getEntryID; external DLLName;
function CkZipEntry_getEntryType; external DLLName;
procedure CkZipEntry_getFileDateTimeStr; external DLLName;
procedure CkZipEntry_putFileDateTimeStr; external DLLName;
function CkZipEntry__fileDateTimeStr; external DLLName;
procedure CkZipEntry_getFileName; external DLLName;
procedure CkZipEntry_putFileName; external DLLName;
function CkZipEntry__fileName; external DLLName;
procedure CkZipEntry_getFileNameHex; external DLLName;
function CkZipEntry__fileNameHex; external DLLName;
function CkZipEntry_getHeartbeatMs; external DLLName;
procedure CkZipEntry_putHeartbeatMs; external DLLName;
function CkZipEntry_getIsAesEncrypted; external DLLName;
function CkZipEntry_getIsDirectory; external DLLName;
procedure CkZipEntry_getLastErrorHtml; external DLLName;
function CkZipEntry__lastErrorHtml; external DLLName;
procedure CkZipEntry_getLastErrorText; external DLLName;
function CkZipEntry__lastErrorText; external DLLName;
procedure CkZipEntry_getLastErrorXml; external DLLName;
function CkZipEntry__lastErrorXml; external DLLName;
function CkZipEntry_getLastMethodSuccess; external DLLName;
procedure CkZipEntry_putLastMethodSuccess; external DLLName;
function CkZipEntry_getTextFlag; external DLLName;
procedure CkZipEntry_putTextFlag; external DLLName;
function CkZipEntry_getUncompressedLength; external DLLName;
function CkZipEntry_getUncompressedLength64; external DLLName;
procedure CkZipEntry_getUncompressedLengthStr; external DLLName;
function CkZipEntry__uncompressedLengthStr; external DLLName;
function CkZipEntry_getVerboseLogging; external DLLName;
procedure CkZipEntry_putVerboseLogging; external DLLName;
procedure CkZipEntry_getVersion; external DLLName;
function CkZipEntry__version; external DLLName;
function CkZipEntry_AppendData; external DLLName;
function CkZipEntry_AppendDataAsync; external DLLName;
function CkZipEntry_AppendString; external DLLName;
function CkZipEntry_AppendStringAsync; external DLLName;
function CkZipEntry_Copy; external DLLName;
function CkZipEntry_CopyToBase64; external DLLName;
function CkZipEntry__copyToBase64; external DLLName;
function CkZipEntry_CopyToHex; external DLLName;
function CkZipEntry__copyToHex; external DLLName;
function CkZipEntry_Extract; external DLLName;
function CkZipEntry_ExtractAsync; external DLLName;
function CkZipEntry_ExtractInto; external DLLName;
function CkZipEntry_ExtractIntoAsync; external DLLName;
function CkZipEntry_GetDt; external DLLName;
function CkZipEntry_Inflate; external DLLName;
function CkZipEntry_InflateAsync; external DLLName;
function CkZipEntry_LoadTaskCaller; external DLLName;
function CkZipEntry_NextEntry; external DLLName;
function CkZipEntry_NextMatchingEntry; external DLLName;
function CkZipEntry_ReplaceData; external DLLName;
function CkZipEntry_ReplaceString; external DLLName;
function CkZipEntry_SaveLastError; external DLLName;
procedure CkZipEntry_SetDt; external DLLName;
function CkZipEntry_UnzipToBd; external DLLName;
function CkZipEntry_UnzipToBdAsync; external DLLName;
function CkZipEntry_UnzipToSb; external DLLName;
function CkZipEntry_UnzipToSbAsync; external DLLName;
function CkZipEntry_UnzipToStream; external DLLName;
function CkZipEntry_UnzipToStreamAsync; external DLLName;
function CkZipEntry_UnzipToString; external DLLName;
function CkZipEntry__unzipToString; external DLLName;
function CkZipEntry_UnzipToStringAsync; external DLLName;



end.
