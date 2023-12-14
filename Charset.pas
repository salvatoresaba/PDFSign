unit Charset;

interface

type

HCkCharset = Pointer;
HCkByteData = Pointer;
HCkString = Pointer;


function CkCharset_Create: HCkCharset; stdcall;
procedure CkCharset_Dispose(handle: HCkCharset); stdcall;
procedure CkCharset_getAltToCharset(objHandle: HCkCharset; outPropVal: HCkString); stdcall;

procedure CkCharset_putAltToCharset(objHandle: HCkCharset; newPropVal: PWideChar); stdcall;

function CkCharset__altToCharset(objHandle: HCkCharset): PWideChar; stdcall;

procedure CkCharset_getDebugLogFilePath(objHandle: HCkCharset; outPropVal: HCkString); stdcall;

procedure CkCharset_putDebugLogFilePath(objHandle: HCkCharset; newPropVal: PWideChar); stdcall;

function CkCharset__debugLogFilePath(objHandle: HCkCharset): PWideChar; stdcall;

function CkCharset_getErrorAction(objHandle: HCkCharset): Integer; stdcall;

procedure CkCharset_putErrorAction(objHandle: HCkCharset; newPropVal: Integer); stdcall;

procedure CkCharset_getFromCharset(objHandle: HCkCharset; outPropVal: HCkString); stdcall;

procedure CkCharset_putFromCharset(objHandle: HCkCharset; newPropVal: PWideChar); stdcall;

function CkCharset__fromCharset(objHandle: HCkCharset): PWideChar; stdcall;

procedure CkCharset_getLastErrorHtml(objHandle: HCkCharset; outPropVal: HCkString); stdcall;

function CkCharset__lastErrorHtml(objHandle: HCkCharset): PWideChar; stdcall;

procedure CkCharset_getLastErrorText(objHandle: HCkCharset; outPropVal: HCkString); stdcall;

function CkCharset__lastErrorText(objHandle: HCkCharset): PWideChar; stdcall;

procedure CkCharset_getLastErrorXml(objHandle: HCkCharset; outPropVal: HCkString); stdcall;

function CkCharset__lastErrorXml(objHandle: HCkCharset): PWideChar; stdcall;

procedure CkCharset_getLastInputAsHex(objHandle: HCkCharset; outPropVal: HCkString); stdcall;

function CkCharset__lastInputAsHex(objHandle: HCkCharset): PWideChar; stdcall;

procedure CkCharset_getLastInputAsQP(objHandle: HCkCharset; outPropVal: HCkString); stdcall;

function CkCharset__lastInputAsQP(objHandle: HCkCharset): PWideChar; stdcall;

function CkCharset_getLastMethodSuccess(objHandle: HCkCharset): wordbool; stdcall;

procedure CkCharset_putLastMethodSuccess(objHandle: HCkCharset; newPropVal: wordbool); stdcall;

procedure CkCharset_getLastOutputAsHex(objHandle: HCkCharset; outPropVal: HCkString); stdcall;

function CkCharset__lastOutputAsHex(objHandle: HCkCharset): PWideChar; stdcall;

procedure CkCharset_getLastOutputAsQP(objHandle: HCkCharset; outPropVal: HCkString); stdcall;

function CkCharset__lastOutputAsQP(objHandle: HCkCharset): PWideChar; stdcall;

function CkCharset_getSaveLast(objHandle: HCkCharset): wordbool; stdcall;

procedure CkCharset_putSaveLast(objHandle: HCkCharset; newPropVal: wordbool); stdcall;

procedure CkCharset_getToCharset(objHandle: HCkCharset; outPropVal: HCkString); stdcall;

procedure CkCharset_putToCharset(objHandle: HCkCharset; newPropVal: PWideChar); stdcall;

function CkCharset__toCharset(objHandle: HCkCharset): PWideChar; stdcall;

function CkCharset_getVerboseLogging(objHandle: HCkCharset): wordbool; stdcall;

procedure CkCharset_putVerboseLogging(objHandle: HCkCharset; newPropVal: wordbool); stdcall;

procedure CkCharset_getVersion(objHandle: HCkCharset; outPropVal: HCkString); stdcall;

function CkCharset__version(objHandle: HCkCharset): PWideChar; stdcall;

function CkCharset_CharsetToCodePage(objHandle: HCkCharset; charsetName: PWideChar): Integer; stdcall;

function CkCharset_CodePageToCharset(objHandle: HCkCharset; codePage: Integer; outStr: HCkString): wordbool; stdcall;

function CkCharset__codePageToCharset(objHandle: HCkCharset; codePage: Integer): PWideChar; stdcall;

function CkCharset_ConvertData(objHandle: HCkCharset; inData: HCkByteData; outData: HCkByteData): wordbool; stdcall;

function CkCharset_ConvertFile(objHandle: HCkCharset; inPath: PWideChar; destPath: PWideChar): wordbool; stdcall;

function CkCharset_ConvertFileNoPreamble(objHandle: HCkCharset; inPath: PWideChar; destPath: PWideChar): wordbool; stdcall;

function CkCharset_ConvertFromUnicode(objHandle: HCkCharset; inData: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkCharset_ConvertFromUtf16(objHandle: HCkCharset; uniData: HCkByteData; outData: HCkByteData): wordbool; stdcall;

function CkCharset_ConvertHtml(objHandle: HCkCharset; inData: HCkByteData; outData: HCkByteData): wordbool; stdcall;

function CkCharset_ConvertHtmlFile(objHandle: HCkCharset; inPath: PWideChar; destPath: PWideChar): wordbool; stdcall;

function CkCharset_ConvertToUnicode(objHandle: HCkCharset; inData: HCkByteData; outStr: HCkString): wordbool; stdcall;

function CkCharset__convertToUnicode(objHandle: HCkCharset; inData: HCkByteData): PWideChar; stdcall;

function CkCharset_ConvertToUtf16(objHandle: HCkCharset; mbData: HCkByteData; outData: HCkByteData): wordbool; stdcall;

function CkCharset_EntityEncodeDec(objHandle: HCkCharset; str: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkCharset__entityEncodeDec(objHandle: HCkCharset; str: PWideChar): PWideChar; stdcall;

function CkCharset_EntityEncodeHex(objHandle: HCkCharset; str: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkCharset__entityEncodeHex(objHandle: HCkCharset; str: PWideChar): PWideChar; stdcall;

function CkCharset_GetHtmlCharset(objHandle: HCkCharset; inData: HCkByteData; outStr: HCkString): wordbool; stdcall;

function CkCharset__getHtmlCharset(objHandle: HCkCharset; inData: HCkByteData): PWideChar; stdcall;

function CkCharset_GetHtmlFileCharset(objHandle: HCkCharset; htmlFilePath: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkCharset__getHtmlFileCharset(objHandle: HCkCharset; htmlFilePath: PWideChar): PWideChar; stdcall;

function CkCharset_HtmlDecodeToStr(objHandle: HCkCharset; inStr: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkCharset__htmlDecodeToStr(objHandle: HCkCharset; inStr: PWideChar): PWideChar; stdcall;

function CkCharset_HtmlEntityDecode(objHandle: HCkCharset; inHtml: HCkByteData; outData: HCkByteData): wordbool; stdcall;

function CkCharset_HtmlEntityDecodeFile(objHandle: HCkCharset; inPath: PWideChar; destPath: PWideChar): wordbool; stdcall;

function CkCharset_LowerCase(objHandle: HCkCharset; inStr: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkCharset__lowerCase(objHandle: HCkCharset; inStr: PWideChar): PWideChar; stdcall;

function CkCharset_ReadFile(objHandle: HCkCharset; path: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkCharset_ReadFileToString(objHandle: HCkCharset; path: PWideChar; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkCharset__readFileToString(objHandle: HCkCharset; path: PWideChar; charset: PWideChar): PWideChar; stdcall;

function CkCharset_SaveLastError(objHandle: HCkCharset; path: PWideChar): wordbool; stdcall;

procedure CkCharset_SetErrorBytes(objHandle: HCkCharset; data: HCkByteData); stdcall;

procedure CkCharset_SetErrorString(objHandle: HCkCharset; str: PWideChar; charset: PWideChar); stdcall;

function CkCharset_UnlockComponent(objHandle: HCkCharset; unlockCode: PWideChar): wordbool; stdcall;

function CkCharset_UpperCase(objHandle: HCkCharset; inStr: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkCharset__upperCase(objHandle: HCkCharset; inStr: PWideChar): PWideChar; stdcall;

function CkCharset_UrlDecodeStr(objHandle: HCkCharset; inStr: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkCharset__urlDecodeStr(objHandle: HCkCharset; inStr: PWideChar): PWideChar; stdcall;

function CkCharset_VerifyData(objHandle: HCkCharset; charset: PWideChar; inData: HCkByteData): wordbool; stdcall;

function CkCharset_VerifyFile(objHandle: HCkCharset; charset: PWideChar; path: PWideChar): wordbool; stdcall;

function CkCharset_WriteFile(objHandle: HCkCharset; path: PWideChar; byteData: HCkByteData): wordbool; stdcall;

function CkCharset_WriteStringToFile(objHandle: HCkCharset; textData: PWideChar; path: PWideChar; charset: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkCharset_Create; external DLLName;
procedure CkCharset_Dispose; external DLLName;
procedure CkCharset_getAltToCharset; external DLLName;
procedure CkCharset_putAltToCharset; external DLLName;
function CkCharset__altToCharset; external DLLName;
procedure CkCharset_getDebugLogFilePath; external DLLName;
procedure CkCharset_putDebugLogFilePath; external DLLName;
function CkCharset__debugLogFilePath; external DLLName;
function CkCharset_getErrorAction; external DLLName;
procedure CkCharset_putErrorAction; external DLLName;
procedure CkCharset_getFromCharset; external DLLName;
procedure CkCharset_putFromCharset; external DLLName;
function CkCharset__fromCharset; external DLLName;
procedure CkCharset_getLastErrorHtml; external DLLName;
function CkCharset__lastErrorHtml; external DLLName;
procedure CkCharset_getLastErrorText; external DLLName;
function CkCharset__lastErrorText; external DLLName;
procedure CkCharset_getLastErrorXml; external DLLName;
function CkCharset__lastErrorXml; external DLLName;
procedure CkCharset_getLastInputAsHex; external DLLName;
function CkCharset__lastInputAsHex; external DLLName;
procedure CkCharset_getLastInputAsQP; external DLLName;
function CkCharset__lastInputAsQP; external DLLName;
function CkCharset_getLastMethodSuccess; external DLLName;
procedure CkCharset_putLastMethodSuccess; external DLLName;
procedure CkCharset_getLastOutputAsHex; external DLLName;
function CkCharset__lastOutputAsHex; external DLLName;
procedure CkCharset_getLastOutputAsQP; external DLLName;
function CkCharset__lastOutputAsQP; external DLLName;
function CkCharset_getSaveLast; external DLLName;
procedure CkCharset_putSaveLast; external DLLName;
procedure CkCharset_getToCharset; external DLLName;
procedure CkCharset_putToCharset; external DLLName;
function CkCharset__toCharset; external DLLName;
function CkCharset_getVerboseLogging; external DLLName;
procedure CkCharset_putVerboseLogging; external DLLName;
procedure CkCharset_getVersion; external DLLName;
function CkCharset__version; external DLLName;
function CkCharset_CharsetToCodePage; external DLLName;
function CkCharset_CodePageToCharset; external DLLName;
function CkCharset__codePageToCharset; external DLLName;
function CkCharset_ConvertData; external DLLName;
function CkCharset_ConvertFile; external DLLName;
function CkCharset_ConvertFileNoPreamble; external DLLName;
function CkCharset_ConvertFromUnicode; external DLLName;
function CkCharset_ConvertFromUtf16; external DLLName;
function CkCharset_ConvertHtml; external DLLName;
function CkCharset_ConvertHtmlFile; external DLLName;
function CkCharset_ConvertToUnicode; external DLLName;
function CkCharset__convertToUnicode; external DLLName;
function CkCharset_ConvertToUtf16; external DLLName;
function CkCharset_EntityEncodeDec; external DLLName;
function CkCharset__entityEncodeDec; external DLLName;
function CkCharset_EntityEncodeHex; external DLLName;
function CkCharset__entityEncodeHex; external DLLName;
function CkCharset_GetHtmlCharset; external DLLName;
function CkCharset__getHtmlCharset; external DLLName;
function CkCharset_GetHtmlFileCharset; external DLLName;
function CkCharset__getHtmlFileCharset; external DLLName;
function CkCharset_HtmlDecodeToStr; external DLLName;
function CkCharset__htmlDecodeToStr; external DLLName;
function CkCharset_HtmlEntityDecode; external DLLName;
function CkCharset_HtmlEntityDecodeFile; external DLLName;
function CkCharset_LowerCase; external DLLName;
function CkCharset__lowerCase; external DLLName;
function CkCharset_ReadFile; external DLLName;
function CkCharset_ReadFileToString; external DLLName;
function CkCharset__readFileToString; external DLLName;
function CkCharset_SaveLastError; external DLLName;
procedure CkCharset_SetErrorBytes; external DLLName;
procedure CkCharset_SetErrorString; external DLLName;
function CkCharset_UnlockComponent; external DLLName;
function CkCharset_UpperCase; external DLLName;
function CkCharset__upperCase; external DLLName;
function CkCharset_UrlDecodeStr; external DLLName;
function CkCharset__urlDecodeStr; external DLLName;
function CkCharset_VerifyData; external DLLName;
function CkCharset_VerifyFile; external DLLName;
function CkCharset_WriteFile; external DLLName;
function CkCharset_WriteStringToFile; external DLLName;



end.
