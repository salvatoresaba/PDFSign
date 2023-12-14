unit Gzip;

interface

type

HCkBinData = Pointer;
HCkDateTime = Pointer;
HCkByteData = Pointer;
HCkString = Pointer;
HCkGzip = Pointer;
HCkTask = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TGzipAbortCheck = function(): Integer; cdecl;
TGzipProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TGzipPercentDone = function(pctDone: Integer): Integer; cdecl;
TGzipTaskCompleted = procedure(task: HCkTask); cdecl;


function CkGzip_Create: HCkGzip; stdcall;
procedure CkGzip_Dispose(handle: HCkGzip); stdcall;

procedure CkGzip_SetAbortCheck(objHandle: HCkGzip; fn: TGzipAbortCheck) stdcall;
procedure CkGzip_SetProgressInfo(objHandle: HCkGzip; fn: TGzipProgressInfo) stdcall;
procedure CkGzip_SetPercentDone(objHandle: HCkGzip; fn: TGzipPercentDone) stdcall;
procedure CkGzip_SetTaskCompleted(objHandle: HCkGzip; fn: TGzipTaskCompleted) stdcall;
function CkGzip_getAbortCurrent(objHandle: HCkGzip): wordbool; stdcall;

procedure CkGzip_putAbortCurrent(objHandle: HCkGzip; newPropVal: wordbool); stdcall;

procedure CkGzip_getComment(objHandle: HCkGzip; outPropVal: HCkString); stdcall;

procedure CkGzip_putComment(objHandle: HCkGzip; newPropVal: PWideChar); stdcall;

function CkGzip__comment(objHandle: HCkGzip): PWideChar; stdcall;

function CkGzip_getCompressionLevel(objHandle: HCkGzip): Integer; stdcall;

procedure CkGzip_putCompressionLevel(objHandle: HCkGzip; newPropVal: Integer); stdcall;

procedure CkGzip_getDebugLogFilePath(objHandle: HCkGzip; outPropVal: HCkString); stdcall;

procedure CkGzip_putDebugLogFilePath(objHandle: HCkGzip; newPropVal: PWideChar); stdcall;

function CkGzip__debugLogFilePath(objHandle: HCkGzip): PWideChar; stdcall;

procedure CkGzip_getExtraData(objHandle: HCkGzip; outPropVal: HCkByteData); stdcall;

procedure CkGzip_putExtraData(objHandle: HCkGzip; newPropVal: HCkByteData); stdcall;

procedure CkGzip_getFilename(objHandle: HCkGzip; outPropVal: HCkString); stdcall;

procedure CkGzip_putFilename(objHandle: HCkGzip; newPropVal: PWideChar); stdcall;

function CkGzip__filename(objHandle: HCkGzip): PWideChar; stdcall;

function CkGzip_getHeartbeatMs(objHandle: HCkGzip): Integer; stdcall;

procedure CkGzip_putHeartbeatMs(objHandle: HCkGzip; newPropVal: Integer); stdcall;

procedure CkGzip_getLastErrorHtml(objHandle: HCkGzip; outPropVal: HCkString); stdcall;

function CkGzip__lastErrorHtml(objHandle: HCkGzip): PWideChar; stdcall;

procedure CkGzip_getLastErrorText(objHandle: HCkGzip; outPropVal: HCkString); stdcall;

function CkGzip__lastErrorText(objHandle: HCkGzip): PWideChar; stdcall;

procedure CkGzip_getLastErrorXml(objHandle: HCkGzip; outPropVal: HCkString); stdcall;

function CkGzip__lastErrorXml(objHandle: HCkGzip): PWideChar; stdcall;

function CkGzip_getLastMethodSuccess(objHandle: HCkGzip): wordbool; stdcall;

procedure CkGzip_putLastMethodSuccess(objHandle: HCkGzip; newPropVal: wordbool); stdcall;

procedure CkGzip_getLastModStr(objHandle: HCkGzip; outPropVal: HCkString); stdcall;

procedure CkGzip_putLastModStr(objHandle: HCkGzip; newPropVal: PWideChar); stdcall;

function CkGzip__lastModStr(objHandle: HCkGzip): PWideChar; stdcall;

function CkGzip_getUseCurrentDate(objHandle: HCkGzip): wordbool; stdcall;

procedure CkGzip_putUseCurrentDate(objHandle: HCkGzip; newPropVal: wordbool); stdcall;

function CkGzip_getVerboseLogging(objHandle: HCkGzip): wordbool; stdcall;

procedure CkGzip_putVerboseLogging(objHandle: HCkGzip; newPropVal: wordbool); stdcall;

procedure CkGzip_getVersion(objHandle: HCkGzip; outPropVal: HCkString); stdcall;

function CkGzip__version(objHandle: HCkGzip): PWideChar; stdcall;

function CkGzip_CompressBd(objHandle: HCkGzip; binDat: HCkBinData): wordbool; stdcall;

function CkGzip_CompressBdAsync(objHandle: HCkGzip; binDat: HCkBinData): HCkTask; stdcall;

function CkGzip_CompressFile(objHandle: HCkGzip; inFilename: PWideChar; destPath: PWideChar): wordbool; stdcall;

function CkGzip_CompressFileAsync(objHandle: HCkGzip; inFilename: PWideChar; destPath: PWideChar): HCkTask; stdcall;

function CkGzip_CompressFile2(objHandle: HCkGzip; inFilename: PWideChar; embeddedFilename: PWideChar; destPath: PWideChar): wordbool; stdcall;

function CkGzip_CompressFile2Async(objHandle: HCkGzip; inFilename: PWideChar; embeddedFilename: PWideChar; destPath: PWideChar): HCkTask; stdcall;

function CkGzip_CompressFileToMem(objHandle: HCkGzip; inFilename: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkGzip_CompressFileToMemAsync(objHandle: HCkGzip; inFilename: PWideChar): HCkTask; stdcall;

function CkGzip_CompressMemory(objHandle: HCkGzip; inData: HCkByteData; outData: HCkByteData): wordbool; stdcall;

function CkGzip_CompressMemoryAsync(objHandle: HCkGzip; inData: HCkByteData): HCkTask; stdcall;

function CkGzip_CompressMemToFile(objHandle: HCkGzip; inData: HCkByteData; destPath: PWideChar): wordbool; stdcall;

function CkGzip_CompressMemToFileAsync(objHandle: HCkGzip; inData: HCkByteData; destPath: PWideChar): HCkTask; stdcall;

function CkGzip_CompressString(objHandle: HCkGzip; inStr: PWideChar; destCharset: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkGzip_CompressStringAsync(objHandle: HCkGzip; inStr: PWideChar; destCharset: PWideChar): HCkTask; stdcall;

function CkGzip_CompressStringENC(objHandle: HCkGzip; inStr: PWideChar; charset: PWideChar; encoding: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkGzip__compressStringENC(objHandle: HCkGzip; inStr: PWideChar; charset: PWideChar; encoding: PWideChar): PWideChar; stdcall;

function CkGzip_CompressStringToFile(objHandle: HCkGzip; inStr: PWideChar; destCharset: PWideChar; destPath: PWideChar): wordbool; stdcall;

function CkGzip_CompressStringToFileAsync(objHandle: HCkGzip; inStr: PWideChar; destCharset: PWideChar; destPath: PWideChar): HCkTask; stdcall;

function CkGzip_Decode(objHandle: HCkGzip; encodedStr: PWideChar; encoding: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkGzip_DeflateStringENC(objHandle: HCkGzip; inString: PWideChar; charsetName: PWideChar; outputEncoding: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkGzip__deflateStringENC(objHandle: HCkGzip; inString: PWideChar; charsetName: PWideChar; outputEncoding: PWideChar): PWideChar; stdcall;

function CkGzip_Encode(objHandle: HCkGzip; byteData: HCkByteData; encoding: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkGzip__encode(objHandle: HCkGzip; byteData: HCkByteData; encoding: PWideChar): PWideChar; stdcall;

function CkGzip_ExamineFile(objHandle: HCkGzip; inGzFilename: PWideChar): wordbool; stdcall;

function CkGzip_ExamineMemory(objHandle: HCkGzip; inGzData: HCkByteData): wordbool; stdcall;

function CkGzip_GetDt(objHandle: HCkGzip): HCkDateTime; stdcall;

function CkGzip_InflateStringENC(objHandle: HCkGzip; inString: PWideChar; convertFromCharset: PWideChar; inputEncoding: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkGzip__inflateStringENC(objHandle: HCkGzip; inString: PWideChar; convertFromCharset: PWideChar; inputEncoding: PWideChar): PWideChar; stdcall;

function CkGzip_LoadTaskCaller(objHandle: HCkGzip; task: HCkTask): wordbool; stdcall;

function CkGzip_ReadFile(objHandle: HCkGzip; path: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkGzip_SaveLastError(objHandle: HCkGzip; path: PWideChar): wordbool; stdcall;

function CkGzip_SetDt(objHandle: HCkGzip; dt: HCkDateTime): wordbool; stdcall;

function CkGzip_UncompressBd(objHandle: HCkGzip; binDat: HCkBinData): wordbool; stdcall;

function CkGzip_UncompressBdAsync(objHandle: HCkGzip; binDat: HCkBinData): HCkTask; stdcall;

function CkGzip_UncompressFile(objHandle: HCkGzip; srcPath: PWideChar; destPath: PWideChar): wordbool; stdcall;

function CkGzip_UncompressFileAsync(objHandle: HCkGzip; srcPath: PWideChar; destPath: PWideChar): HCkTask; stdcall;

function CkGzip_UncompressFileToMem(objHandle: HCkGzip; inFilename: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkGzip_UncompressFileToMemAsync(objHandle: HCkGzip; inFilename: PWideChar): HCkTask; stdcall;

function CkGzip_UncompressFileToString(objHandle: HCkGzip; gzFilename: PWideChar; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkGzip__uncompressFileToString(objHandle: HCkGzip; gzFilename: PWideChar; charset: PWideChar): PWideChar; stdcall;

function CkGzip_UncompressFileToStringAsync(objHandle: HCkGzip; gzFilename: PWideChar; charset: PWideChar): HCkTask; stdcall;

function CkGzip_UncompressMemory(objHandle: HCkGzip; inData: HCkByteData; outData: HCkByteData): wordbool; stdcall;

function CkGzip_UncompressMemoryAsync(objHandle: HCkGzip; inData: HCkByteData): HCkTask; stdcall;

function CkGzip_UncompressMemToFile(objHandle: HCkGzip; inData: HCkByteData; destPath: PWideChar): wordbool; stdcall;

function CkGzip_UncompressMemToFileAsync(objHandle: HCkGzip; inData: HCkByteData; destPath: PWideChar): HCkTask; stdcall;

function CkGzip_UncompressString(objHandle: HCkGzip; inData: HCkByteData; inCharset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkGzip__uncompressString(objHandle: HCkGzip; inData: HCkByteData; inCharset: PWideChar): PWideChar; stdcall;

function CkGzip_UncompressStringAsync(objHandle: HCkGzip; inData: HCkByteData; inCharset: PWideChar): HCkTask; stdcall;

function CkGzip_UncompressStringENC(objHandle: HCkGzip; inStr: PWideChar; charset: PWideChar; encoding: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkGzip__uncompressStringENC(objHandle: HCkGzip; inStr: PWideChar; charset: PWideChar; encoding: PWideChar): PWideChar; stdcall;

function CkGzip_UnlockComponent(objHandle: HCkGzip; unlockCode: PWideChar): wordbool; stdcall;

function CkGzip_UnTarGz(objHandle: HCkGzip; tgzFilename: PWideChar; destDir: PWideChar; bNoAbsolute: wordbool): wordbool; stdcall;

function CkGzip_UnTarGzAsync(objHandle: HCkGzip; tgzFilename: PWideChar; destDir: PWideChar; bNoAbsolute: wordbool): HCkTask; stdcall;

function CkGzip_WriteFile(objHandle: HCkGzip; path: PWideChar; binaryData: HCkByteData): wordbool; stdcall;

function CkGzip_XfdlToXml(objHandle: HCkGzip; xfldData: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkGzip__xfdlToXml(objHandle: HCkGzip; xfldData: PWideChar): PWideChar; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkGzip_Create; external DLLName;
procedure CkGzip_Dispose; external DLLName;

procedure CkGzip_SetAbortCheck; external DLLName;
procedure CkGzip_SetProgressInfo; external DLLName;
procedure CkGzip_SetPercentDone; external DLLName;
procedure CkGzip_SetTaskCompleted; external DLLName;
function CkGzip_getAbortCurrent; external DLLName;
procedure CkGzip_putAbortCurrent; external DLLName;
procedure CkGzip_getComment; external DLLName;
procedure CkGzip_putComment; external DLLName;
function CkGzip__comment; external DLLName;
function CkGzip_getCompressionLevel; external DLLName;
procedure CkGzip_putCompressionLevel; external DLLName;
procedure CkGzip_getDebugLogFilePath; external DLLName;
procedure CkGzip_putDebugLogFilePath; external DLLName;
function CkGzip__debugLogFilePath; external DLLName;
procedure CkGzip_getExtraData; external DLLName;
procedure CkGzip_putExtraData; external DLLName;
procedure CkGzip_getFilename; external DLLName;
procedure CkGzip_putFilename; external DLLName;
function CkGzip__filename; external DLLName;
function CkGzip_getHeartbeatMs; external DLLName;
procedure CkGzip_putHeartbeatMs; external DLLName;
procedure CkGzip_getLastErrorHtml; external DLLName;
function CkGzip__lastErrorHtml; external DLLName;
procedure CkGzip_getLastErrorText; external DLLName;
function CkGzip__lastErrorText; external DLLName;
procedure CkGzip_getLastErrorXml; external DLLName;
function CkGzip__lastErrorXml; external DLLName;
function CkGzip_getLastMethodSuccess; external DLLName;
procedure CkGzip_putLastMethodSuccess; external DLLName;
procedure CkGzip_getLastModStr; external DLLName;
procedure CkGzip_putLastModStr; external DLLName;
function CkGzip__lastModStr; external DLLName;
function CkGzip_getUseCurrentDate; external DLLName;
procedure CkGzip_putUseCurrentDate; external DLLName;
function CkGzip_getVerboseLogging; external DLLName;
procedure CkGzip_putVerboseLogging; external DLLName;
procedure CkGzip_getVersion; external DLLName;
function CkGzip__version; external DLLName;
function CkGzip_CompressBd; external DLLName;
function CkGzip_CompressBdAsync; external DLLName;
function CkGzip_CompressFile; external DLLName;
function CkGzip_CompressFileAsync; external DLLName;
function CkGzip_CompressFile2; external DLLName;
function CkGzip_CompressFile2Async; external DLLName;
function CkGzip_CompressFileToMem; external DLLName;
function CkGzip_CompressFileToMemAsync; external DLLName;
function CkGzip_CompressMemory; external DLLName;
function CkGzip_CompressMemoryAsync; external DLLName;
function CkGzip_CompressMemToFile; external DLLName;
function CkGzip_CompressMemToFileAsync; external DLLName;
function CkGzip_CompressString; external DLLName;
function CkGzip_CompressStringAsync; external DLLName;
function CkGzip_CompressStringENC; external DLLName;
function CkGzip__compressStringENC; external DLLName;
function CkGzip_CompressStringToFile; external DLLName;
function CkGzip_CompressStringToFileAsync; external DLLName;
function CkGzip_Decode; external DLLName;
function CkGzip_DeflateStringENC; external DLLName;
function CkGzip__deflateStringENC; external DLLName;
function CkGzip_Encode; external DLLName;
function CkGzip__encode; external DLLName;
function CkGzip_ExamineFile; external DLLName;
function CkGzip_ExamineMemory; external DLLName;
function CkGzip_GetDt; external DLLName;
function CkGzip_InflateStringENC; external DLLName;
function CkGzip__inflateStringENC; external DLLName;
function CkGzip_LoadTaskCaller; external DLLName;
function CkGzip_ReadFile; external DLLName;
function CkGzip_SaveLastError; external DLLName;
function CkGzip_SetDt; external DLLName;
function CkGzip_UncompressBd; external DLLName;
function CkGzip_UncompressBdAsync; external DLLName;
function CkGzip_UncompressFile; external DLLName;
function CkGzip_UncompressFileAsync; external DLLName;
function CkGzip_UncompressFileToMem; external DLLName;
function CkGzip_UncompressFileToMemAsync; external DLLName;
function CkGzip_UncompressFileToString; external DLLName;
function CkGzip__uncompressFileToString; external DLLName;
function CkGzip_UncompressFileToStringAsync; external DLLName;
function CkGzip_UncompressMemory; external DLLName;
function CkGzip_UncompressMemoryAsync; external DLLName;
function CkGzip_UncompressMemToFile; external DLLName;
function CkGzip_UncompressMemToFileAsync; external DLLName;
function CkGzip_UncompressString; external DLLName;
function CkGzip__uncompressString; external DLLName;
function CkGzip_UncompressStringAsync; external DLLName;
function CkGzip_UncompressStringENC; external DLLName;
function CkGzip__uncompressStringENC; external DLLName;
function CkGzip_UnlockComponent; external DLLName;
function CkGzip_UnTarGz; external DLLName;
function CkGzip_UnTarGzAsync; external DLLName;
function CkGzip_WriteFile; external DLLName;
function CkGzip_XfdlToXml; external DLLName;
function CkGzip__xfdlToXml; external DLLName;



end.
