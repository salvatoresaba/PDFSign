unit Stream;

interface

type

HCkBinData = Pointer;
HCkByteData = Pointer;
HCkString = Pointer;
HCkStream = Pointer;
HCkTask = Pointer;
HCkStringBuilder = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TStreamAbortCheck = function(): Integer; cdecl;
TStreamProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TStreamPercentDone = function(pctDone: Integer): Integer; cdecl;
TStreamTaskCompleted = procedure(task: HCkTask); cdecl;


function CkStream_Create: HCkStream; stdcall;
procedure CkStream_Dispose(handle: HCkStream); stdcall;

procedure CkStream_SetAbortCheck(objHandle: HCkStream; fn: TStreamAbortCheck) stdcall;
procedure CkStream_SetProgressInfo(objHandle: HCkStream; fn: TStreamProgressInfo) stdcall;
procedure CkStream_SetPercentDone(objHandle: HCkStream; fn: TStreamPercentDone) stdcall;
procedure CkStream_SetTaskCompleted(objHandle: HCkStream; fn: TStreamTaskCompleted) stdcall;
function CkStream_getAbortCurrent(objHandle: HCkStream): wordbool; stdcall;

procedure CkStream_putAbortCurrent(objHandle: HCkStream; newPropVal: wordbool); stdcall;

function CkStream_getCanRead(objHandle: HCkStream): wordbool; stdcall;

function CkStream_getCanWrite(objHandle: HCkStream): wordbool; stdcall;

function CkStream_getDataAvailable(objHandle: HCkStream): wordbool; stdcall;

procedure CkStream_getDebugLogFilePath(objHandle: HCkStream; outPropVal: HCkString); stdcall;

procedure CkStream_putDebugLogFilePath(objHandle: HCkStream; newPropVal: PWideChar); stdcall;

function CkStream__debugLogFilePath(objHandle: HCkStream): PWideChar; stdcall;

function CkStream_getDefaultChunkSize(objHandle: HCkStream): Integer; stdcall;

procedure CkStream_putDefaultChunkSize(objHandle: HCkStream; newPropVal: Integer); stdcall;

function CkStream_getEndOfStream(objHandle: HCkStream): wordbool; stdcall;

function CkStream_getIsWriteClosed(objHandle: HCkStream): wordbool; stdcall;

procedure CkStream_getLastErrorHtml(objHandle: HCkStream; outPropVal: HCkString); stdcall;

function CkStream__lastErrorHtml(objHandle: HCkStream): PWideChar; stdcall;

procedure CkStream_getLastErrorText(objHandle: HCkStream; outPropVal: HCkString); stdcall;

function CkStream__lastErrorText(objHandle: HCkStream): PWideChar; stdcall;

procedure CkStream_getLastErrorXml(objHandle: HCkStream; outPropVal: HCkString); stdcall;

function CkStream__lastErrorXml(objHandle: HCkStream): PWideChar; stdcall;

function CkStream_getLastMethodSuccess(objHandle: HCkStream): wordbool; stdcall;

procedure CkStream_putLastMethodSuccess(objHandle: HCkStream; newPropVal: wordbool); stdcall;

function CkStream_getLength(objHandle: HCkStream): Int64; stdcall;

procedure CkStream_putLength(objHandle: HCkStream; newPropVal: Int64); stdcall;

function CkStream_getLength32(objHandle: HCkStream): Integer; stdcall;

procedure CkStream_putLength32(objHandle: HCkStream; newPropVal: Integer); stdcall;

function CkStream_getNumReceived(objHandle: HCkStream): Int64; stdcall;

function CkStream_getNumSent(objHandle: HCkStream): Int64; stdcall;

function CkStream_getReadFailReason(objHandle: HCkStream): Integer; stdcall;

function CkStream_getReadTimeoutMs(objHandle: HCkStream): Integer; stdcall;

procedure CkStream_putReadTimeoutMs(objHandle: HCkStream; newPropVal: Integer); stdcall;

procedure CkStream_getSinkFile(objHandle: HCkStream; outPropVal: HCkString); stdcall;

procedure CkStream_putSinkFile(objHandle: HCkStream; newPropVal: PWideChar); stdcall;

function CkStream__sinkFile(objHandle: HCkStream): PWideChar; stdcall;

function CkStream_getSinkFileAppend(objHandle: HCkStream): wordbool; stdcall;

procedure CkStream_putSinkFileAppend(objHandle: HCkStream; newPropVal: wordbool); stdcall;

procedure CkStream_getSourceFile(objHandle: HCkStream; outPropVal: HCkString); stdcall;

procedure CkStream_putSourceFile(objHandle: HCkStream; newPropVal: PWideChar); stdcall;

function CkStream__sourceFile(objHandle: HCkStream): PWideChar; stdcall;

function CkStream_getSourceFilePart(objHandle: HCkStream): Integer; stdcall;

procedure CkStream_putSourceFilePart(objHandle: HCkStream; newPropVal: Integer); stdcall;

function CkStream_getSourceFilePartSize(objHandle: HCkStream): Integer; stdcall;

procedure CkStream_putSourceFilePartSize(objHandle: HCkStream; newPropVal: Integer); stdcall;

function CkStream_getStringBom(objHandle: HCkStream): wordbool; stdcall;

procedure CkStream_putStringBom(objHandle: HCkStream; newPropVal: wordbool); stdcall;

procedure CkStream_getStringCharset(objHandle: HCkStream; outPropVal: HCkString); stdcall;

procedure CkStream_putStringCharset(objHandle: HCkStream; newPropVal: PWideChar); stdcall;

function CkStream__stringCharset(objHandle: HCkStream): PWideChar; stdcall;

function CkStream_getVerboseLogging(objHandle: HCkStream): wordbool; stdcall;

procedure CkStream_putVerboseLogging(objHandle: HCkStream; newPropVal: wordbool); stdcall;

procedure CkStream_getVersion(objHandle: HCkStream; outPropVal: HCkString); stdcall;

function CkStream__version(objHandle: HCkStream): PWideChar; stdcall;

function CkStream_getWriteFailReason(objHandle: HCkStream): Integer; stdcall;

function CkStream_getWriteTimeoutMs(objHandle: HCkStream): Integer; stdcall;

procedure CkStream_putWriteTimeoutMs(objHandle: HCkStream; newPropVal: Integer); stdcall;

function CkStream_LoadTaskCaller(objHandle: HCkStream; task: HCkTask): wordbool; stdcall;

function CkStream_ReadBd(objHandle: HCkStream; binData: HCkBinData): wordbool; stdcall;

function CkStream_ReadBdAsync(objHandle: HCkStream; binData: HCkBinData): HCkTask; stdcall;

function CkStream_ReadBytes(objHandle: HCkStream; outData: HCkByteData): wordbool; stdcall;

function CkStream_ReadBytesAsync(objHandle: HCkStream): HCkTask; stdcall;

function CkStream_ReadBytesENC(objHandle: HCkStream; encoding: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkStream__readBytesENC(objHandle: HCkStream; encoding: PWideChar): PWideChar; stdcall;

function CkStream_ReadBytesENCAsync(objHandle: HCkStream; encoding: PWideChar): HCkTask; stdcall;

function CkStream_ReadNBytes(objHandle: HCkStream; numBytes: Integer; outData: HCkByteData): wordbool; stdcall;

function CkStream_ReadNBytesAsync(objHandle: HCkStream; numBytes: Integer): HCkTask; stdcall;

function CkStream_ReadNBytesENC(objHandle: HCkStream; numBytes: Integer; encoding: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkStream__readNBytesENC(objHandle: HCkStream; numBytes: Integer; encoding: PWideChar): PWideChar; stdcall;

function CkStream_ReadNBytesENCAsync(objHandle: HCkStream; numBytes: Integer; encoding: PWideChar): HCkTask; stdcall;

function CkStream_ReadSb(objHandle: HCkStream; sb: HCkStringBuilder): wordbool; stdcall;

function CkStream_ReadSbAsync(objHandle: HCkStream; sb: HCkStringBuilder): HCkTask; stdcall;

function CkStream_ReadString(objHandle: HCkStream; outStr: HCkString): wordbool; stdcall;

function CkStream__readString(objHandle: HCkStream): PWideChar; stdcall;

function CkStream_ReadStringAsync(objHandle: HCkStream): HCkTask; stdcall;

function CkStream_ReadToCRLF(objHandle: HCkStream; outStr: HCkString): wordbool; stdcall;

function CkStream__readToCRLF(objHandle: HCkStream): PWideChar; stdcall;

function CkStream_ReadToCRLFAsync(objHandle: HCkStream): HCkTask; stdcall;

function CkStream_ReadUntilMatch(objHandle: HCkStream; matchStr: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkStream__readUntilMatch(objHandle: HCkStream; matchStr: PWideChar): PWideChar; stdcall;

function CkStream_ReadUntilMatchAsync(objHandle: HCkStream; matchStr: PWideChar): HCkTask; stdcall;

procedure CkStream_Reset(objHandle: HCkStream); stdcall;

function CkStream_RunStream(objHandle: HCkStream): wordbool; stdcall;

function CkStream_RunStreamAsync(objHandle: HCkStream): HCkTask; stdcall;

function CkStream_SaveLastError(objHandle: HCkStream; path: PWideChar): wordbool; stdcall;

function CkStream_SetSinkStream(objHandle: HCkStream; strm: HCkStream): wordbool; stdcall;

function CkStream_SetSourceBytes(objHandle: HCkStream; sourceData: HCkByteData): wordbool; stdcall;

function CkStream_SetSourceStream(objHandle: HCkStream; strm: HCkStream): wordbool; stdcall;

function CkStream_SetSourceString(objHandle: HCkStream; srcStr: PWideChar; charset: PWideChar): wordbool; stdcall;

function CkStream_WriteBd(objHandle: HCkStream; binData: HCkBinData): wordbool; stdcall;

function CkStream_WriteBdAsync(objHandle: HCkStream; binData: HCkBinData): HCkTask; stdcall;

function CkStream_WriteByte(objHandle: HCkStream; byteVal: Integer): wordbool; stdcall;

function CkStream_WriteByteAsync(objHandle: HCkStream; byteVal: Integer): HCkTask; stdcall;

function CkStream_WriteBytes(objHandle: HCkStream; byteData: HCkByteData): wordbool; stdcall;

function CkStream_WriteBytesAsync(objHandle: HCkStream; byteData: HCkByteData): HCkTask; stdcall;

function CkStream_WriteBytes2(objHandle: HCkStream; pByteData: pbyte; szByteData: LongWord): wordbool; stdcall;

function CkStream_WriteBytesENC(objHandle: HCkStream; byteData: PWideChar; encoding: PWideChar): wordbool; stdcall;

function CkStream_WriteBytesENCAsync(objHandle: HCkStream; byteData: PWideChar; encoding: PWideChar): HCkTask; stdcall;

function CkStream_WriteClose(objHandle: HCkStream): wordbool; stdcall;

function CkStream_WriteSb(objHandle: HCkStream; sb: HCkStringBuilder): wordbool; stdcall;

function CkStream_WriteSbAsync(objHandle: HCkStream; sb: HCkStringBuilder): HCkTask; stdcall;

function CkStream_WriteString(objHandle: HCkStream; str: PWideChar): wordbool; stdcall;

function CkStream_WriteStringAsync(objHandle: HCkStream; str: PWideChar): HCkTask; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkStream_Create; external DLLName;
procedure CkStream_Dispose; external DLLName;

procedure CkStream_SetAbortCheck; external DLLName;
procedure CkStream_SetProgressInfo; external DLLName;
procedure CkStream_SetPercentDone; external DLLName;
procedure CkStream_SetTaskCompleted; external DLLName;
function CkStream_getAbortCurrent; external DLLName;
procedure CkStream_putAbortCurrent; external DLLName;
function CkStream_getCanRead; external DLLName;
function CkStream_getCanWrite; external DLLName;
function CkStream_getDataAvailable; external DLLName;
procedure CkStream_getDebugLogFilePath; external DLLName;
procedure CkStream_putDebugLogFilePath; external DLLName;
function CkStream__debugLogFilePath; external DLLName;
function CkStream_getDefaultChunkSize; external DLLName;
procedure CkStream_putDefaultChunkSize; external DLLName;
function CkStream_getEndOfStream; external DLLName;
function CkStream_getIsWriteClosed; external DLLName;
procedure CkStream_getLastErrorHtml; external DLLName;
function CkStream__lastErrorHtml; external DLLName;
procedure CkStream_getLastErrorText; external DLLName;
function CkStream__lastErrorText; external DLLName;
procedure CkStream_getLastErrorXml; external DLLName;
function CkStream__lastErrorXml; external DLLName;
function CkStream_getLastMethodSuccess; external DLLName;
procedure CkStream_putLastMethodSuccess; external DLLName;
function CkStream_getLength; external DLLName;
procedure CkStream_putLength; external DLLName;
function CkStream_getLength32; external DLLName;
procedure CkStream_putLength32; external DLLName;
function CkStream_getNumReceived; external DLLName;
function CkStream_getNumSent; external DLLName;
function CkStream_getReadFailReason; external DLLName;
function CkStream_getReadTimeoutMs; external DLLName;
procedure CkStream_putReadTimeoutMs; external DLLName;
procedure CkStream_getSinkFile; external DLLName;
procedure CkStream_putSinkFile; external DLLName;
function CkStream__sinkFile; external DLLName;
function CkStream_getSinkFileAppend; external DLLName;
procedure CkStream_putSinkFileAppend; external DLLName;
procedure CkStream_getSourceFile; external DLLName;
procedure CkStream_putSourceFile; external DLLName;
function CkStream__sourceFile; external DLLName;
function CkStream_getSourceFilePart; external DLLName;
procedure CkStream_putSourceFilePart; external DLLName;
function CkStream_getSourceFilePartSize; external DLLName;
procedure CkStream_putSourceFilePartSize; external DLLName;
function CkStream_getStringBom; external DLLName;
procedure CkStream_putStringBom; external DLLName;
procedure CkStream_getStringCharset; external DLLName;
procedure CkStream_putStringCharset; external DLLName;
function CkStream__stringCharset; external DLLName;
function CkStream_getVerboseLogging; external DLLName;
procedure CkStream_putVerboseLogging; external DLLName;
procedure CkStream_getVersion; external DLLName;
function CkStream__version; external DLLName;
function CkStream_getWriteFailReason; external DLLName;
function CkStream_getWriteTimeoutMs; external DLLName;
procedure CkStream_putWriteTimeoutMs; external DLLName;
function CkStream_LoadTaskCaller; external DLLName;
function CkStream_ReadBd; external DLLName;
function CkStream_ReadBdAsync; external DLLName;
function CkStream_ReadBytes; external DLLName;
function CkStream_ReadBytesAsync; external DLLName;
function CkStream_ReadBytesENC; external DLLName;
function CkStream__readBytesENC; external DLLName;
function CkStream_ReadBytesENCAsync; external DLLName;
function CkStream_ReadNBytes; external DLLName;
function CkStream_ReadNBytesAsync; external DLLName;
function CkStream_ReadNBytesENC; external DLLName;
function CkStream__readNBytesENC; external DLLName;
function CkStream_ReadNBytesENCAsync; external DLLName;
function CkStream_ReadSb; external DLLName;
function CkStream_ReadSbAsync; external DLLName;
function CkStream_ReadString; external DLLName;
function CkStream__readString; external DLLName;
function CkStream_ReadStringAsync; external DLLName;
function CkStream_ReadToCRLF; external DLLName;
function CkStream__readToCRLF; external DLLName;
function CkStream_ReadToCRLFAsync; external DLLName;
function CkStream_ReadUntilMatch; external DLLName;
function CkStream__readUntilMatch; external DLLName;
function CkStream_ReadUntilMatchAsync; external DLLName;
procedure CkStream_Reset; external DLLName;
function CkStream_RunStream; external DLLName;
function CkStream_RunStreamAsync; external DLLName;
function CkStream_SaveLastError; external DLLName;
function CkStream_SetSinkStream; external DLLName;
function CkStream_SetSourceBytes; external DLLName;
function CkStream_SetSourceStream; external DLLName;
function CkStream_SetSourceString; external DLLName;
function CkStream_WriteBd; external DLLName;
function CkStream_WriteBdAsync; external DLLName;
function CkStream_WriteByte; external DLLName;
function CkStream_WriteByteAsync; external DLLName;
function CkStream_WriteBytes; external DLLName;
function CkStream_WriteBytesAsync; external DLLName;
function CkStream_WriteBytes2; external DLLName;
function CkStream_WriteBytesENC; external DLLName;
function CkStream_WriteBytesENCAsync; external DLLName;
function CkStream_WriteClose; external DLLName;
function CkStream_WriteSb; external DLLName;
function CkStream_WriteSbAsync; external DLLName;
function CkStream_WriteString; external DLLName;
function CkStream_WriteStringAsync; external DLLName;



end.
