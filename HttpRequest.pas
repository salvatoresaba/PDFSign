unit HttpRequest;

interface

type

HCkBinData = Pointer;
HCkStringBuilder = Pointer;
HCkByteData = Pointer;
HCkHttpRequest = Pointer;
HCkString = Pointer;


function CkHttpRequest_Create: HCkHttpRequest; stdcall;
procedure CkHttpRequest_Dispose(handle: HCkHttpRequest); stdcall;
procedure CkHttpRequest_getBoundary(objHandle: HCkHttpRequest; outPropVal: HCkString); stdcall;

procedure CkHttpRequest_putBoundary(objHandle: HCkHttpRequest; newPropVal: PWideChar); stdcall;

function CkHttpRequest__boundary(objHandle: HCkHttpRequest): PWideChar; stdcall;

procedure CkHttpRequest_getCharset(objHandle: HCkHttpRequest; outPropVal: HCkString); stdcall;

procedure CkHttpRequest_putCharset(objHandle: HCkHttpRequest; newPropVal: PWideChar); stdcall;

function CkHttpRequest__charset(objHandle: HCkHttpRequest): PWideChar; stdcall;

procedure CkHttpRequest_getContentType(objHandle: HCkHttpRequest; outPropVal: HCkString); stdcall;

procedure CkHttpRequest_putContentType(objHandle: HCkHttpRequest; newPropVal: PWideChar); stdcall;

function CkHttpRequest__contentType(objHandle: HCkHttpRequest): PWideChar; stdcall;

procedure CkHttpRequest_getDebugLogFilePath(objHandle: HCkHttpRequest; outPropVal: HCkString); stdcall;

procedure CkHttpRequest_putDebugLogFilePath(objHandle: HCkHttpRequest; newPropVal: PWideChar); stdcall;

function CkHttpRequest__debugLogFilePath(objHandle: HCkHttpRequest): PWideChar; stdcall;

procedure CkHttpRequest_getEntireHeader(objHandle: HCkHttpRequest; outPropVal: HCkString); stdcall;

procedure CkHttpRequest_putEntireHeader(objHandle: HCkHttpRequest; newPropVal: PWideChar); stdcall;

function CkHttpRequest__entireHeader(objHandle: HCkHttpRequest): PWideChar; stdcall;

procedure CkHttpRequest_getHttpVerb(objHandle: HCkHttpRequest; outPropVal: HCkString); stdcall;

procedure CkHttpRequest_putHttpVerb(objHandle: HCkHttpRequest; newPropVal: PWideChar); stdcall;

function CkHttpRequest__httpVerb(objHandle: HCkHttpRequest): PWideChar; stdcall;

procedure CkHttpRequest_getHttpVersion(objHandle: HCkHttpRequest; outPropVal: HCkString); stdcall;

procedure CkHttpRequest_putHttpVersion(objHandle: HCkHttpRequest; newPropVal: PWideChar); stdcall;

function CkHttpRequest__httpVersion(objHandle: HCkHttpRequest): PWideChar; stdcall;

procedure CkHttpRequest_getLastErrorHtml(objHandle: HCkHttpRequest; outPropVal: HCkString); stdcall;

function CkHttpRequest__lastErrorHtml(objHandle: HCkHttpRequest): PWideChar; stdcall;

procedure CkHttpRequest_getLastErrorText(objHandle: HCkHttpRequest; outPropVal: HCkString); stdcall;

function CkHttpRequest__lastErrorText(objHandle: HCkHttpRequest): PWideChar; stdcall;

procedure CkHttpRequest_getLastErrorXml(objHandle: HCkHttpRequest; outPropVal: HCkString); stdcall;

function CkHttpRequest__lastErrorXml(objHandle: HCkHttpRequest): PWideChar; stdcall;

function CkHttpRequest_getLastMethodSuccess(objHandle: HCkHttpRequest): wordbool; stdcall;

procedure CkHttpRequest_putLastMethodSuccess(objHandle: HCkHttpRequest; newPropVal: wordbool); stdcall;

function CkHttpRequest_getNumHeaderFields(objHandle: HCkHttpRequest): Integer; stdcall;

function CkHttpRequest_getNumParams(objHandle: HCkHttpRequest): Integer; stdcall;

procedure CkHttpRequest_getPath(objHandle: HCkHttpRequest; outPropVal: HCkString); stdcall;

procedure CkHttpRequest_putPath(objHandle: HCkHttpRequest; newPropVal: PWideChar); stdcall;

function CkHttpRequest__path(objHandle: HCkHttpRequest): PWideChar; stdcall;

function CkHttpRequest_getSendCharset(objHandle: HCkHttpRequest): wordbool; stdcall;

procedure CkHttpRequest_putSendCharset(objHandle: HCkHttpRequest; newPropVal: wordbool); stdcall;

function CkHttpRequest_getVerboseLogging(objHandle: HCkHttpRequest): wordbool; stdcall;

procedure CkHttpRequest_putVerboseLogging(objHandle: HCkHttpRequest; newPropVal: wordbool); stdcall;

procedure CkHttpRequest_getVersion(objHandle: HCkHttpRequest; outPropVal: HCkString); stdcall;

function CkHttpRequest__version(objHandle: HCkHttpRequest): PWideChar; stdcall;

function CkHttpRequest_AddBdForUpload(objHandle: HCkHttpRequest; name: PWideChar; remoteFilename: PWideChar; byteData: HCkBinData; contentType: PWideChar): wordbool; stdcall;

function CkHttpRequest_AddBytesForUpload(objHandle: HCkHttpRequest; name: PWideChar; remoteFileName: PWideChar; byteData: HCkByteData): wordbool; stdcall;

function CkHttpRequest_AddBytesForUpload2(objHandle: HCkHttpRequest; name: PWideChar; remoteFileName: PWideChar; byteData: HCkByteData; contentType: PWideChar): wordbool; stdcall;

function CkHttpRequest_AddFileForUpload(objHandle: HCkHttpRequest; name: PWideChar; filePath: PWideChar): wordbool; stdcall;

function CkHttpRequest_AddFileForUpload2(objHandle: HCkHttpRequest; name: PWideChar; filePath: PWideChar; contentType: PWideChar): wordbool; stdcall;

procedure CkHttpRequest_AddHeader(objHandle: HCkHttpRequest; name: PWideChar; value: PWideChar); stdcall;

function CkHttpRequest_AddMwsSignature(objHandle: HCkHttpRequest; domain: PWideChar; mwsSecretKey: PWideChar): wordbool; stdcall;

procedure CkHttpRequest_AddParam(objHandle: HCkHttpRequest; name: PWideChar; value: PWideChar); stdcall;

function CkHttpRequest_AddStringForUpload(objHandle: HCkHttpRequest; name: PWideChar; filename: PWideChar; strData: PWideChar; charset: PWideChar): wordbool; stdcall;

function CkHttpRequest_AddStringForUpload2(objHandle: HCkHttpRequest; name: PWideChar; filename: PWideChar; strData: PWideChar; charset: PWideChar; contentType: PWideChar): wordbool; stdcall;

function CkHttpRequest_AddSubHeader(objHandle: HCkHttpRequest; index: Integer; name: PWideChar; value: PWideChar): wordbool; stdcall;

function CkHttpRequest_GenerateRequestFile(objHandle: HCkHttpRequest; path: PWideChar): wordbool; stdcall;

function CkHttpRequest_GenerateRequestText(objHandle: HCkHttpRequest; outStr: HCkString): wordbool; stdcall;

function CkHttpRequest__generateRequestText(objHandle: HCkHttpRequest): PWideChar; stdcall;

function CkHttpRequest_GetHeaderField(objHandle: HCkHttpRequest; name: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkHttpRequest__getHeaderField(objHandle: HCkHttpRequest; name: PWideChar): PWideChar; stdcall;

function CkHttpRequest_GetHeaderName(objHandle: HCkHttpRequest; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkHttpRequest__getHeaderName(objHandle: HCkHttpRequest; index: Integer): PWideChar; stdcall;

function CkHttpRequest_GetHeaderValue(objHandle: HCkHttpRequest; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkHttpRequest__getHeaderValue(objHandle: HCkHttpRequest; index: Integer): PWideChar; stdcall;

function CkHttpRequest_GetParam(objHandle: HCkHttpRequest; name: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkHttpRequest__getParam(objHandle: HCkHttpRequest; name: PWideChar): PWideChar; stdcall;

function CkHttpRequest_GetParamName(objHandle: HCkHttpRequest; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkHttpRequest__getParamName(objHandle: HCkHttpRequest; index: Integer): PWideChar; stdcall;

function CkHttpRequest_GetParamValue(objHandle: HCkHttpRequest; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkHttpRequest__getParamValue(objHandle: HCkHttpRequest; index: Integer): PWideChar; stdcall;

function CkHttpRequest_GetUrlEncodedParams(objHandle: HCkHttpRequest; outStr: HCkString): wordbool; stdcall;

function CkHttpRequest__getUrlEncodedParams(objHandle: HCkHttpRequest): PWideChar; stdcall;

function CkHttpRequest_LoadBodyFromBd(objHandle: HCkHttpRequest; requestBody: HCkBinData): wordbool; stdcall;

function CkHttpRequest_LoadBodyFromBytes(objHandle: HCkHttpRequest; byteData: HCkByteData): wordbool; stdcall;

function CkHttpRequest_LoadBodyFromFile(objHandle: HCkHttpRequest; filePath: PWideChar): wordbool; stdcall;

function CkHttpRequest_LoadBodyFromSb(objHandle: HCkHttpRequest; requestBody: HCkStringBuilder; charset: PWideChar): wordbool; stdcall;

function CkHttpRequest_LoadBodyFromString(objHandle: HCkHttpRequest; bodyStr: PWideChar; charset: PWideChar): wordbool; stdcall;

procedure CkHttpRequest_RemoveAllParams(objHandle: HCkHttpRequest); stdcall;

function CkHttpRequest_RemoveHeader(objHandle: HCkHttpRequest; name: PWideChar): wordbool; stdcall;

procedure CkHttpRequest_RemoveParam(objHandle: HCkHttpRequest; name: PWideChar); stdcall;

function CkHttpRequest_SaveLastError(objHandle: HCkHttpRequest; path: PWideChar): wordbool; stdcall;

procedure CkHttpRequest_SetFromUrl(objHandle: HCkHttpRequest; url: PWideChar); stdcall;

function CkHttpRequest_StreamBodyFromFile(objHandle: HCkHttpRequest; filePath: PWideChar): wordbool; stdcall;

function CkHttpRequest_StreamChunkFromFile(objHandle: HCkHttpRequest; path: PWideChar; offset: PWideChar; numBytes: PWideChar): wordbool; stdcall;

procedure CkHttpRequest_UseGet(objHandle: HCkHttpRequest); stdcall;

procedure CkHttpRequest_UseHead(objHandle: HCkHttpRequest); stdcall;

procedure CkHttpRequest_UsePost(objHandle: HCkHttpRequest); stdcall;

procedure CkHttpRequest_UsePostMultipartForm(objHandle: HCkHttpRequest); stdcall;

procedure CkHttpRequest_UsePut(objHandle: HCkHttpRequest); stdcall;

procedure CkHttpRequest_UseUpload(objHandle: HCkHttpRequest); stdcall;

procedure CkHttpRequest_UseUploadPut(objHandle: HCkHttpRequest); stdcall;

procedure CkHttpRequest_UseXmlHttp(objHandle: HCkHttpRequest; xmlBody: PWideChar); stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkHttpRequest_Create; external DLLName;
procedure CkHttpRequest_Dispose; external DLLName;
procedure CkHttpRequest_getBoundary; external DLLName;
procedure CkHttpRequest_putBoundary; external DLLName;
function CkHttpRequest__boundary; external DLLName;
procedure CkHttpRequest_getCharset; external DLLName;
procedure CkHttpRequest_putCharset; external DLLName;
function CkHttpRequest__charset; external DLLName;
procedure CkHttpRequest_getContentType; external DLLName;
procedure CkHttpRequest_putContentType; external DLLName;
function CkHttpRequest__contentType; external DLLName;
procedure CkHttpRequest_getDebugLogFilePath; external DLLName;
procedure CkHttpRequest_putDebugLogFilePath; external DLLName;
function CkHttpRequest__debugLogFilePath; external DLLName;
procedure CkHttpRequest_getEntireHeader; external DLLName;
procedure CkHttpRequest_putEntireHeader; external DLLName;
function CkHttpRequest__entireHeader; external DLLName;
procedure CkHttpRequest_getHttpVerb; external DLLName;
procedure CkHttpRequest_putHttpVerb; external DLLName;
function CkHttpRequest__httpVerb; external DLLName;
procedure CkHttpRequest_getHttpVersion; external DLLName;
procedure CkHttpRequest_putHttpVersion; external DLLName;
function CkHttpRequest__httpVersion; external DLLName;
procedure CkHttpRequest_getLastErrorHtml; external DLLName;
function CkHttpRequest__lastErrorHtml; external DLLName;
procedure CkHttpRequest_getLastErrorText; external DLLName;
function CkHttpRequest__lastErrorText; external DLLName;
procedure CkHttpRequest_getLastErrorXml; external DLLName;
function CkHttpRequest__lastErrorXml; external DLLName;
function CkHttpRequest_getLastMethodSuccess; external DLLName;
procedure CkHttpRequest_putLastMethodSuccess; external DLLName;
function CkHttpRequest_getNumHeaderFields; external DLLName;
function CkHttpRequest_getNumParams; external DLLName;
procedure CkHttpRequest_getPath; external DLLName;
procedure CkHttpRequest_putPath; external DLLName;
function CkHttpRequest__path; external DLLName;
function CkHttpRequest_getSendCharset; external DLLName;
procedure CkHttpRequest_putSendCharset; external DLLName;
function CkHttpRequest_getVerboseLogging; external DLLName;
procedure CkHttpRequest_putVerboseLogging; external DLLName;
procedure CkHttpRequest_getVersion; external DLLName;
function CkHttpRequest__version; external DLLName;
function CkHttpRequest_AddBdForUpload; external DLLName;
function CkHttpRequest_AddBytesForUpload; external DLLName;
function CkHttpRequest_AddBytesForUpload2; external DLLName;
function CkHttpRequest_AddFileForUpload; external DLLName;
function CkHttpRequest_AddFileForUpload2; external DLLName;
procedure CkHttpRequest_AddHeader; external DLLName;
function CkHttpRequest_AddMwsSignature; external DLLName;
procedure CkHttpRequest_AddParam; external DLLName;
function CkHttpRequest_AddStringForUpload; external DLLName;
function CkHttpRequest_AddStringForUpload2; external DLLName;
function CkHttpRequest_AddSubHeader; external DLLName;
function CkHttpRequest_GenerateRequestFile; external DLLName;
function CkHttpRequest_GenerateRequestText; external DLLName;
function CkHttpRequest__generateRequestText; external DLLName;
function CkHttpRequest_GetHeaderField; external DLLName;
function CkHttpRequest__getHeaderField; external DLLName;
function CkHttpRequest_GetHeaderName; external DLLName;
function CkHttpRequest__getHeaderName; external DLLName;
function CkHttpRequest_GetHeaderValue; external DLLName;
function CkHttpRequest__getHeaderValue; external DLLName;
function CkHttpRequest_GetParam; external DLLName;
function CkHttpRequest__getParam; external DLLName;
function CkHttpRequest_GetParamName; external DLLName;
function CkHttpRequest__getParamName; external DLLName;
function CkHttpRequest_GetParamValue; external DLLName;
function CkHttpRequest__getParamValue; external DLLName;
function CkHttpRequest_GetUrlEncodedParams; external DLLName;
function CkHttpRequest__getUrlEncodedParams; external DLLName;
function CkHttpRequest_LoadBodyFromBd; external DLLName;
function CkHttpRequest_LoadBodyFromBytes; external DLLName;
function CkHttpRequest_LoadBodyFromFile; external DLLName;
function CkHttpRequest_LoadBodyFromSb; external DLLName;
function CkHttpRequest_LoadBodyFromString; external DLLName;
procedure CkHttpRequest_RemoveAllParams; external DLLName;
function CkHttpRequest_RemoveHeader; external DLLName;
procedure CkHttpRequest_RemoveParam; external DLLName;
function CkHttpRequest_SaveLastError; external DLLName;
procedure CkHttpRequest_SetFromUrl; external DLLName;
function CkHttpRequest_StreamBodyFromFile; external DLLName;
function CkHttpRequest_StreamChunkFromFile; external DLLName;
procedure CkHttpRequest_UseGet; external DLLName;
procedure CkHttpRequest_UseHead; external DLLName;
procedure CkHttpRequest_UsePost; external DLLName;
procedure CkHttpRequest_UsePostMultipartForm; external DLLName;
procedure CkHttpRequest_UsePut; external DLLName;
procedure CkHttpRequest_UseUpload; external DLLName;
procedure CkHttpRequest_UseUploadPut; external DLLName;
procedure CkHttpRequest_UseXmlHttp; external DLLName;



end.
