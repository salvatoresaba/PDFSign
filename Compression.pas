unit Compression;

interface

type

HCkBinData = Pointer;
HCkByteData = Pointer;
HCkString = Pointer;
HCkStream = Pointer;
HCkStringBuilder = Pointer;
HCkTask = Pointer;
HCkCompression = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TCompressionAbortCheck = function(): Integer; cdecl;
TCompressionProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TCompressionPercentDone = function(pctDone: Integer): Integer; cdecl;
TCompressionTaskCompleted = procedure(task: HCkTask); cdecl;


function CkCompression_Create: HCkCompression; stdcall;
procedure CkCompression_Dispose(handle: HCkCompression); stdcall;

procedure CkCompression_SetAbortCheck(objHandle: HCkCompression; fn: TCompressionAbortCheck) stdcall;
procedure CkCompression_SetProgressInfo(objHandle: HCkCompression; fn: TCompressionProgressInfo) stdcall;
procedure CkCompression_SetPercentDone(objHandle: HCkCompression; fn: TCompressionPercentDone) stdcall;
procedure CkCompression_SetTaskCompleted(objHandle: HCkCompression; fn: TCompressionTaskCompleted) stdcall;
procedure CkCompression_getAlgorithm(objHandle: HCkCompression; outPropVal: HCkString); stdcall;

procedure CkCompression_putAlgorithm(objHandle: HCkCompression; newPropVal: PWideChar); stdcall;

function CkCompression__algorithm(objHandle: HCkCompression): PWideChar; stdcall;

procedure CkCompression_getCharset(objHandle: HCkCompression; outPropVal: HCkString); stdcall;

procedure CkCompression_putCharset(objHandle: HCkCompression; newPropVal: PWideChar); stdcall;

function CkCompression__charset(objHandle: HCkCompression): PWideChar; stdcall;

procedure CkCompression_getDebugLogFilePath(objHandle: HCkCompression; outPropVal: HCkString); stdcall;

procedure CkCompression_putDebugLogFilePath(objHandle: HCkCompression; newPropVal: PWideChar); stdcall;

function CkCompression__debugLogFilePath(objHandle: HCkCompression): PWideChar; stdcall;

function CkCompression_getDeflateLevel(objHandle: HCkCompression): Integer; stdcall;

procedure CkCompression_putDeflateLevel(objHandle: HCkCompression; newPropVal: Integer); stdcall;

procedure CkCompression_getEncodingMode(objHandle: HCkCompression; outPropVal: HCkString); stdcall;

procedure CkCompression_putEncodingMode(objHandle: HCkCompression; newPropVal: PWideChar); stdcall;

function CkCompression__encodingMode(objHandle: HCkCompression): PWideChar; stdcall;

function CkCompression_getHeartbeatMs(objHandle: HCkCompression): Integer; stdcall;

procedure CkCompression_putHeartbeatMs(objHandle: HCkCompression; newPropVal: Integer); stdcall;

procedure CkCompression_getLastErrorHtml(objHandle: HCkCompression; outPropVal: HCkString); stdcall;

function CkCompression__lastErrorHtml(objHandle: HCkCompression): PWideChar; stdcall;

procedure CkCompression_getLastErrorText(objHandle: HCkCompression; outPropVal: HCkString); stdcall;

function CkCompression__lastErrorText(objHandle: HCkCompression): PWideChar; stdcall;

procedure CkCompression_getLastErrorXml(objHandle: HCkCompression; outPropVal: HCkString); stdcall;

function CkCompression__lastErrorXml(objHandle: HCkCompression): PWideChar; stdcall;

function CkCompression_getLastMethodSuccess(objHandle: HCkCompression): wordbool; stdcall;

procedure CkCompression_putLastMethodSuccess(objHandle: HCkCompression; newPropVal: wordbool); stdcall;

function CkCompression_getVerboseLogging(objHandle: HCkCompression): wordbool; stdcall;

procedure CkCompression_putVerboseLogging(objHandle: HCkCompression; newPropVal: wordbool); stdcall;

procedure CkCompression_getVersion(objHandle: HCkCompression; outPropVal: HCkString); stdcall;

function CkCompression__version(objHandle: HCkCompression): PWideChar; stdcall;

function CkCompression_BeginCompressBytes(objHandle: HCkCompression; data: HCkByteData; outData: HCkByteData): wordbool; stdcall;

function CkCompression_BeginCompressBytesAsync(objHandle: HCkCompression; data: HCkByteData): HCkTask; stdcall;

function CkCompression_BeginCompressBytes2(objHandle: HCkCompression; pByteData: pbyte; szByteData: LongWord; outData: HCkByteData): wordbool; stdcall;

function CkCompression_BeginCompressBytesENC(objHandle: HCkCompression; data: HCkByteData; outStr: HCkString): wordbool; stdcall;

function CkCompression__beginCompressBytesENC(objHandle: HCkCompression; data: HCkByteData): PWideChar; stdcall;

function CkCompression_BeginCompressBytesENCAsync(objHandle: HCkCompression; data: HCkByteData): HCkTask; stdcall;

function CkCompression_BeginCompressString(objHandle: HCkCompression; str: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkCompression_BeginCompressStringAsync(objHandle: HCkCompression; str: PWideChar): HCkTask; stdcall;

function CkCompression_BeginCompressStringENC(objHandle: HCkCompression; str: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkCompression__beginCompressStringENC(objHandle: HCkCompression; str: PWideChar): PWideChar; stdcall;

function CkCompression_BeginCompressStringENCAsync(objHandle: HCkCompression; str: PWideChar): HCkTask; stdcall;

function CkCompression_BeginDecompressBytes(objHandle: HCkCompression; data: HCkByteData; outData: HCkByteData): wordbool; stdcall;

function CkCompression_BeginDecompressBytesAsync(objHandle: HCkCompression; data: HCkByteData): HCkTask; stdcall;

function CkCompression_BeginDecompressBytes2(objHandle: HCkCompression; pByteData: pbyte; szByteData: LongWord; outData: HCkByteData): wordbool; stdcall;

function CkCompression_BeginDecompressBytesENC(objHandle: HCkCompression; str: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkCompression_BeginDecompressBytesENCAsync(objHandle: HCkCompression; str: PWideChar): HCkTask; stdcall;

function CkCompression_BeginDecompressString(objHandle: HCkCompression; data: HCkByteData; outStr: HCkString): wordbool; stdcall;

function CkCompression__beginDecompressString(objHandle: HCkCompression; data: HCkByteData): PWideChar; stdcall;

function CkCompression_BeginDecompressStringAsync(objHandle: HCkCompression; data: HCkByteData): HCkTask; stdcall;

function CkCompression_BeginDecompressStringENC(objHandle: HCkCompression; str: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkCompression__beginDecompressStringENC(objHandle: HCkCompression; str: PWideChar): PWideChar; stdcall;

function CkCompression_BeginDecompressStringENCAsync(objHandle: HCkCompression; str: PWideChar): HCkTask; stdcall;

function CkCompression_CompressBd(objHandle: HCkCompression; binData: HCkBinData): wordbool; stdcall;

function CkCompression_CompressBdAsync(objHandle: HCkCompression; binData: HCkBinData): HCkTask; stdcall;

function CkCompression_CompressBytes(objHandle: HCkCompression; data: HCkByteData; outData: HCkByteData): wordbool; stdcall;

function CkCompression_CompressBytesAsync(objHandle: HCkCompression; data: HCkByteData): HCkTask; stdcall;

function CkCompression_CompressBytes2(objHandle: HCkCompression; pByteData: pbyte; szByteData: LongWord; outData: HCkByteData): wordbool; stdcall;

function CkCompression_CompressBytesENC(objHandle: HCkCompression; data: HCkByteData; outStr: HCkString): wordbool; stdcall;

function CkCompression__compressBytesENC(objHandle: HCkCompression; data: HCkByteData): PWideChar; stdcall;

function CkCompression_CompressBytesENCAsync(objHandle: HCkCompression; data: HCkByteData): HCkTask; stdcall;

function CkCompression_CompressFile(objHandle: HCkCompression; srcPath: PWideChar; destPath: PWideChar): wordbool; stdcall;

function CkCompression_CompressFileAsync(objHandle: HCkCompression; srcPath: PWideChar; destPath: PWideChar): HCkTask; stdcall;

function CkCompression_CompressSb(objHandle: HCkCompression; sb: HCkStringBuilder; binData: HCkBinData): wordbool; stdcall;

function CkCompression_CompressSbAsync(objHandle: HCkCompression; sb: HCkStringBuilder; binData: HCkBinData): HCkTask; stdcall;

function CkCompression_CompressStream(objHandle: HCkCompression; strm: HCkStream): wordbool; stdcall;

function CkCompression_CompressStreamAsync(objHandle: HCkCompression; strm: HCkStream): HCkTask; stdcall;

function CkCompression_CompressString(objHandle: HCkCompression; str: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkCompression_CompressStringAsync(objHandle: HCkCompression; str: PWideChar): HCkTask; stdcall;

function CkCompression_CompressStringENC(objHandle: HCkCompression; str: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkCompression__compressStringENC(objHandle: HCkCompression; str: PWideChar): PWideChar; stdcall;

function CkCompression_CompressStringENCAsync(objHandle: HCkCompression; str: PWideChar): HCkTask; stdcall;

function CkCompression_DecompressBd(objHandle: HCkCompression; binData: HCkBinData): wordbool; stdcall;

function CkCompression_DecompressBdAsync(objHandle: HCkCompression; binData: HCkBinData): HCkTask; stdcall;

function CkCompression_DecompressBytes(objHandle: HCkCompression; data: HCkByteData; outData: HCkByteData): wordbool; stdcall;

function CkCompression_DecompressBytesAsync(objHandle: HCkCompression; data: HCkByteData): HCkTask; stdcall;

function CkCompression_DecompressBytes2(objHandle: HCkCompression; pByteData: pbyte; szByteData: LongWord; outData: HCkByteData): wordbool; stdcall;

function CkCompression_DecompressBytesENC(objHandle: HCkCompression; encodedCompressedData: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkCompression_DecompressBytesENCAsync(objHandle: HCkCompression; encodedCompressedData: PWideChar): HCkTask; stdcall;

function CkCompression_DecompressFile(objHandle: HCkCompression; srcPath: PWideChar; destPath: PWideChar): wordbool; stdcall;

function CkCompression_DecompressFileAsync(objHandle: HCkCompression; srcPath: PWideChar; destPath: PWideChar): HCkTask; stdcall;

function CkCompression_DecompressSb(objHandle: HCkCompression; binData: HCkBinData; sb: HCkStringBuilder): wordbool; stdcall;

function CkCompression_DecompressSbAsync(objHandle: HCkCompression; binData: HCkBinData; sb: HCkStringBuilder): HCkTask; stdcall;

function CkCompression_DecompressStream(objHandle: HCkCompression; strm: HCkStream): wordbool; stdcall;

function CkCompression_DecompressStreamAsync(objHandle: HCkCompression; strm: HCkStream): HCkTask; stdcall;

function CkCompression_DecompressString(objHandle: HCkCompression; data: HCkByteData; outStr: HCkString): wordbool; stdcall;

function CkCompression__decompressString(objHandle: HCkCompression; data: HCkByteData): PWideChar; stdcall;

function CkCompression_DecompressStringAsync(objHandle: HCkCompression; data: HCkByteData): HCkTask; stdcall;

function CkCompression_DecompressStringENC(objHandle: HCkCompression; encodedCompressedData: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkCompression__decompressStringENC(objHandle: HCkCompression; encodedCompressedData: PWideChar): PWideChar; stdcall;

function CkCompression_DecompressStringENCAsync(objHandle: HCkCompression; encodedCompressedData: PWideChar): HCkTask; stdcall;

function CkCompression_EndCompressBytes(objHandle: HCkCompression; outData: HCkByteData): wordbool; stdcall;

function CkCompression_EndCompressBytesAsync(objHandle: HCkCompression): HCkTask; stdcall;

function CkCompression_EndCompressBytesENC(objHandle: HCkCompression; outStr: HCkString): wordbool; stdcall;

function CkCompression__endCompressBytesENC(objHandle: HCkCompression): PWideChar; stdcall;

function CkCompression_EndCompressBytesENCAsync(objHandle: HCkCompression): HCkTask; stdcall;

function CkCompression_EndCompressString(objHandle: HCkCompression; outData: HCkByteData): wordbool; stdcall;

function CkCompression_EndCompressStringAsync(objHandle: HCkCompression): HCkTask; stdcall;

function CkCompression_EndCompressStringENC(objHandle: HCkCompression; outStr: HCkString): wordbool; stdcall;

function CkCompression__endCompressStringENC(objHandle: HCkCompression): PWideChar; stdcall;

function CkCompression_EndCompressStringENCAsync(objHandle: HCkCompression): HCkTask; stdcall;

function CkCompression_EndDecompressBytes(objHandle: HCkCompression; outData: HCkByteData): wordbool; stdcall;

function CkCompression_EndDecompressBytesAsync(objHandle: HCkCompression): HCkTask; stdcall;

function CkCompression_EndDecompressBytesENC(objHandle: HCkCompression; outData: HCkByteData): wordbool; stdcall;

function CkCompression_EndDecompressBytesENCAsync(objHandle: HCkCompression): HCkTask; stdcall;

function CkCompression_EndDecompressString(objHandle: HCkCompression; outStr: HCkString): wordbool; stdcall;

function CkCompression__endDecompressString(objHandle: HCkCompression): PWideChar; stdcall;

function CkCompression_EndDecompressStringAsync(objHandle: HCkCompression): HCkTask; stdcall;

function CkCompression_EndDecompressStringENC(objHandle: HCkCompression; outStr: HCkString): wordbool; stdcall;

function CkCompression__endDecompressStringENC(objHandle: HCkCompression): PWideChar; stdcall;

function CkCompression_EndDecompressStringENCAsync(objHandle: HCkCompression): HCkTask; stdcall;

function CkCompression_LoadTaskCaller(objHandle: HCkCompression; task: HCkTask): wordbool; stdcall;

function CkCompression_MoreCompressBytes(objHandle: HCkCompression; data: HCkByteData; outData: HCkByteData): wordbool; stdcall;

function CkCompression_MoreCompressBytesAsync(objHandle: HCkCompression; data: HCkByteData): HCkTask; stdcall;

function CkCompression_MoreCompressBytes2(objHandle: HCkCompression; pByteData: pbyte; szByteData: LongWord; outData: HCkByteData): wordbool; stdcall;

function CkCompression_MoreCompressBytesENC(objHandle: HCkCompression; data: HCkByteData; outStr: HCkString): wordbool; stdcall;

function CkCompression__moreCompressBytesENC(objHandle: HCkCompression; data: HCkByteData): PWideChar; stdcall;

function CkCompression_MoreCompressBytesENCAsync(objHandle: HCkCompression; data: HCkByteData): HCkTask; stdcall;

function CkCompression_MoreCompressString(objHandle: HCkCompression; str: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkCompression_MoreCompressStringAsync(objHandle: HCkCompression; str: PWideChar): HCkTask; stdcall;

function CkCompression_MoreCompressStringENC(objHandle: HCkCompression; str: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkCompression__moreCompressStringENC(objHandle: HCkCompression; str: PWideChar): PWideChar; stdcall;

function CkCompression_MoreCompressStringENCAsync(objHandle: HCkCompression; str: PWideChar): HCkTask; stdcall;

function CkCompression_MoreDecompressBytes(objHandle: HCkCompression; data: HCkByteData; outData: HCkByteData): wordbool; stdcall;

function CkCompression_MoreDecompressBytesAsync(objHandle: HCkCompression; data: HCkByteData): HCkTask; stdcall;

function CkCompression_MoreDecompressBytes2(objHandle: HCkCompression; pByteData: pbyte; szByteData: LongWord; outData: HCkByteData): wordbool; stdcall;

function CkCompression_MoreDecompressBytesENC(objHandle: HCkCompression; str: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkCompression_MoreDecompressBytesENCAsync(objHandle: HCkCompression; str: PWideChar): HCkTask; stdcall;

function CkCompression_MoreDecompressString(objHandle: HCkCompression; data: HCkByteData; outStr: HCkString): wordbool; stdcall;

function CkCompression__moreDecompressString(objHandle: HCkCompression; data: HCkByteData): PWideChar; stdcall;

function CkCompression_MoreDecompressStringAsync(objHandle: HCkCompression; data: HCkByteData): HCkTask; stdcall;

function CkCompression_MoreDecompressStringENC(objHandle: HCkCompression; str: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkCompression__moreDecompressStringENC(objHandle: HCkCompression; str: PWideChar): PWideChar; stdcall;

function CkCompression_MoreDecompressStringENCAsync(objHandle: HCkCompression; str: PWideChar): HCkTask; stdcall;

function CkCompression_SaveLastError(objHandle: HCkCompression; path: PWideChar): wordbool; stdcall;

function CkCompression_UnlockComponent(objHandle: HCkCompression; unlockCode: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkCompression_Create; external DLLName;
procedure CkCompression_Dispose; external DLLName;

procedure CkCompression_SetAbortCheck; external DLLName;
procedure CkCompression_SetProgressInfo; external DLLName;
procedure CkCompression_SetPercentDone; external DLLName;
procedure CkCompression_SetTaskCompleted; external DLLName;
procedure CkCompression_getAlgorithm; external DLLName;
procedure CkCompression_putAlgorithm; external DLLName;
function CkCompression__algorithm; external DLLName;
procedure CkCompression_getCharset; external DLLName;
procedure CkCompression_putCharset; external DLLName;
function CkCompression__charset; external DLLName;
procedure CkCompression_getDebugLogFilePath; external DLLName;
procedure CkCompression_putDebugLogFilePath; external DLLName;
function CkCompression__debugLogFilePath; external DLLName;
function CkCompression_getDeflateLevel; external DLLName;
procedure CkCompression_putDeflateLevel; external DLLName;
procedure CkCompression_getEncodingMode; external DLLName;
procedure CkCompression_putEncodingMode; external DLLName;
function CkCompression__encodingMode; external DLLName;
function CkCompression_getHeartbeatMs; external DLLName;
procedure CkCompression_putHeartbeatMs; external DLLName;
procedure CkCompression_getLastErrorHtml; external DLLName;
function CkCompression__lastErrorHtml; external DLLName;
procedure CkCompression_getLastErrorText; external DLLName;
function CkCompression__lastErrorText; external DLLName;
procedure CkCompression_getLastErrorXml; external DLLName;
function CkCompression__lastErrorXml; external DLLName;
function CkCompression_getLastMethodSuccess; external DLLName;
procedure CkCompression_putLastMethodSuccess; external DLLName;
function CkCompression_getVerboseLogging; external DLLName;
procedure CkCompression_putVerboseLogging; external DLLName;
procedure CkCompression_getVersion; external DLLName;
function CkCompression__version; external DLLName;
function CkCompression_BeginCompressBytes; external DLLName;
function CkCompression_BeginCompressBytesAsync; external DLLName;
function CkCompression_BeginCompressBytes2; external DLLName;
function CkCompression_BeginCompressBytesENC; external DLLName;
function CkCompression__beginCompressBytesENC; external DLLName;
function CkCompression_BeginCompressBytesENCAsync; external DLLName;
function CkCompression_BeginCompressString; external DLLName;
function CkCompression_BeginCompressStringAsync; external DLLName;
function CkCompression_BeginCompressStringENC; external DLLName;
function CkCompression__beginCompressStringENC; external DLLName;
function CkCompression_BeginCompressStringENCAsync; external DLLName;
function CkCompression_BeginDecompressBytes; external DLLName;
function CkCompression_BeginDecompressBytesAsync; external DLLName;
function CkCompression_BeginDecompressBytes2; external DLLName;
function CkCompression_BeginDecompressBytesENC; external DLLName;
function CkCompression_BeginDecompressBytesENCAsync; external DLLName;
function CkCompression_BeginDecompressString; external DLLName;
function CkCompression__beginDecompressString; external DLLName;
function CkCompression_BeginDecompressStringAsync; external DLLName;
function CkCompression_BeginDecompressStringENC; external DLLName;
function CkCompression__beginDecompressStringENC; external DLLName;
function CkCompression_BeginDecompressStringENCAsync; external DLLName;
function CkCompression_CompressBd; external DLLName;
function CkCompression_CompressBdAsync; external DLLName;
function CkCompression_CompressBytes; external DLLName;
function CkCompression_CompressBytesAsync; external DLLName;
function CkCompression_CompressBytes2; external DLLName;
function CkCompression_CompressBytesENC; external DLLName;
function CkCompression__compressBytesENC; external DLLName;
function CkCompression_CompressBytesENCAsync; external DLLName;
function CkCompression_CompressFile; external DLLName;
function CkCompression_CompressFileAsync; external DLLName;
function CkCompression_CompressSb; external DLLName;
function CkCompression_CompressSbAsync; external DLLName;
function CkCompression_CompressStream; external DLLName;
function CkCompression_CompressStreamAsync; external DLLName;
function CkCompression_CompressString; external DLLName;
function CkCompression_CompressStringAsync; external DLLName;
function CkCompression_CompressStringENC; external DLLName;
function CkCompression__compressStringENC; external DLLName;
function CkCompression_CompressStringENCAsync; external DLLName;
function CkCompression_DecompressBd; external DLLName;
function CkCompression_DecompressBdAsync; external DLLName;
function CkCompression_DecompressBytes; external DLLName;
function CkCompression_DecompressBytesAsync; external DLLName;
function CkCompression_DecompressBytes2; external DLLName;
function CkCompression_DecompressBytesENC; external DLLName;
function CkCompression_DecompressBytesENCAsync; external DLLName;
function CkCompression_DecompressFile; external DLLName;
function CkCompression_DecompressFileAsync; external DLLName;
function CkCompression_DecompressSb; external DLLName;
function CkCompression_DecompressSbAsync; external DLLName;
function CkCompression_DecompressStream; external DLLName;
function CkCompression_DecompressStreamAsync; external DLLName;
function CkCompression_DecompressString; external DLLName;
function CkCompression__decompressString; external DLLName;
function CkCompression_DecompressStringAsync; external DLLName;
function CkCompression_DecompressStringENC; external DLLName;
function CkCompression__decompressStringENC; external DLLName;
function CkCompression_DecompressStringENCAsync; external DLLName;
function CkCompression_EndCompressBytes; external DLLName;
function CkCompression_EndCompressBytesAsync; external DLLName;
function CkCompression_EndCompressBytesENC; external DLLName;
function CkCompression__endCompressBytesENC; external DLLName;
function CkCompression_EndCompressBytesENCAsync; external DLLName;
function CkCompression_EndCompressString; external DLLName;
function CkCompression_EndCompressStringAsync; external DLLName;
function CkCompression_EndCompressStringENC; external DLLName;
function CkCompression__endCompressStringENC; external DLLName;
function CkCompression_EndCompressStringENCAsync; external DLLName;
function CkCompression_EndDecompressBytes; external DLLName;
function CkCompression_EndDecompressBytesAsync; external DLLName;
function CkCompression_EndDecompressBytesENC; external DLLName;
function CkCompression_EndDecompressBytesENCAsync; external DLLName;
function CkCompression_EndDecompressString; external DLLName;
function CkCompression__endDecompressString; external DLLName;
function CkCompression_EndDecompressStringAsync; external DLLName;
function CkCompression_EndDecompressStringENC; external DLLName;
function CkCompression__endDecompressStringENC; external DLLName;
function CkCompression_EndDecompressStringENCAsync; external DLLName;
function CkCompression_LoadTaskCaller; external DLLName;
function CkCompression_MoreCompressBytes; external DLLName;
function CkCompression_MoreCompressBytesAsync; external DLLName;
function CkCompression_MoreCompressBytes2; external DLLName;
function CkCompression_MoreCompressBytesENC; external DLLName;
function CkCompression__moreCompressBytesENC; external DLLName;
function CkCompression_MoreCompressBytesENCAsync; external DLLName;
function CkCompression_MoreCompressString; external DLLName;
function CkCompression_MoreCompressStringAsync; external DLLName;
function CkCompression_MoreCompressStringENC; external DLLName;
function CkCompression__moreCompressStringENC; external DLLName;
function CkCompression_MoreCompressStringENCAsync; external DLLName;
function CkCompression_MoreDecompressBytes; external DLLName;
function CkCompression_MoreDecompressBytesAsync; external DLLName;
function CkCompression_MoreDecompressBytes2; external DLLName;
function CkCompression_MoreDecompressBytesENC; external DLLName;
function CkCompression_MoreDecompressBytesENCAsync; external DLLName;
function CkCompression_MoreDecompressString; external DLLName;
function CkCompression__moreDecompressString; external DLLName;
function CkCompression_MoreDecompressStringAsync; external DLLName;
function CkCompression_MoreDecompressStringENC; external DLLName;
function CkCompression__moreDecompressStringENC; external DLLName;
function CkCompression_MoreDecompressStringENCAsync; external DLLName;
function CkCompression_SaveLastError; external DLLName;
function CkCompression_UnlockComponent; external DLLName;



end.
