unit Prng;

interface

type

HCkBinData = Pointer;
HCkPrng = Pointer;
HCkByteData = Pointer;
HCkString = Pointer;


function CkPrng_Create: HCkPrng; stdcall;
procedure CkPrng_Dispose(handle: HCkPrng); stdcall;
procedure CkPrng_getDebugLogFilePath(objHandle: HCkPrng; outPropVal: HCkString); stdcall;

procedure CkPrng_putDebugLogFilePath(objHandle: HCkPrng; newPropVal: PWideChar); stdcall;

function CkPrng__debugLogFilePath(objHandle: HCkPrng): PWideChar; stdcall;

procedure CkPrng_getLastErrorHtml(objHandle: HCkPrng; outPropVal: HCkString); stdcall;

function CkPrng__lastErrorHtml(objHandle: HCkPrng): PWideChar; stdcall;

procedure CkPrng_getLastErrorText(objHandle: HCkPrng; outPropVal: HCkString); stdcall;

function CkPrng__lastErrorText(objHandle: HCkPrng): PWideChar; stdcall;

procedure CkPrng_getLastErrorXml(objHandle: HCkPrng; outPropVal: HCkString); stdcall;

function CkPrng__lastErrorXml(objHandle: HCkPrng): PWideChar; stdcall;

function CkPrng_getLastMethodSuccess(objHandle: HCkPrng): wordbool; stdcall;

procedure CkPrng_putLastMethodSuccess(objHandle: HCkPrng; newPropVal: wordbool); stdcall;

procedure CkPrng_getPrngName(objHandle: HCkPrng; outPropVal: HCkString); stdcall;

procedure CkPrng_putPrngName(objHandle: HCkPrng; newPropVal: PWideChar); stdcall;

function CkPrng__prngName(objHandle: HCkPrng): PWideChar; stdcall;

function CkPrng_getVerboseLogging(objHandle: HCkPrng): wordbool; stdcall;

procedure CkPrng_putVerboseLogging(objHandle: HCkPrng; newPropVal: wordbool); stdcall;

procedure CkPrng_getVersion(objHandle: HCkPrng; outPropVal: HCkString); stdcall;

function CkPrng__version(objHandle: HCkPrng): PWideChar; stdcall;

function CkPrng_AddEntropy(objHandle: HCkPrng; entropy: PWideChar; encoding: PWideChar): wordbool; stdcall;

function CkPrng_AddEntropyBytes(objHandle: HCkPrng; entropy: HCkByteData): wordbool; stdcall;

function CkPrng_ExportEntropy(objHandle: HCkPrng; outStr: HCkString): wordbool; stdcall;

function CkPrng__exportEntropy(objHandle: HCkPrng): PWideChar; stdcall;

function CkPrng_FirebasePushId(objHandle: HCkPrng; outStr: HCkString): wordbool; stdcall;

function CkPrng__firebasePushId(objHandle: HCkPrng): PWideChar; stdcall;

function CkPrng_GenRandom(objHandle: HCkPrng; numBytes: Integer; encoding: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkPrng__genRandom(objHandle: HCkPrng; numBytes: Integer; encoding: PWideChar): PWideChar; stdcall;

function CkPrng_GenRandomBd(objHandle: HCkPrng; numBytes: Integer; bd: HCkBinData): wordbool; stdcall;

function CkPrng_GenRandomBytes(objHandle: HCkPrng; numBytes: Integer; outData: HCkByteData): wordbool; stdcall;

function CkPrng_GetEntropy(objHandle: HCkPrng; numBytes: Integer; encoding: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkPrng__getEntropy(objHandle: HCkPrng; numBytes: Integer; encoding: PWideChar): PWideChar; stdcall;

function CkPrng_GetEntropyBytes(objHandle: HCkPrng; numBytes: Integer; outData: HCkByteData): wordbool; stdcall;

function CkPrng_ImportEntropy(objHandle: HCkPrng; entropy: PWideChar): wordbool; stdcall;

function CkPrng_RandomInt(objHandle: HCkPrng; low: Integer; high: Integer): Integer; stdcall;

function CkPrng_RandomPassword(objHandle: HCkPrng; length: Integer; mustIncludeDigit: wordbool; upperAndLowercase: wordbool; mustHaveOneOf: PWideChar; excludeChars: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkPrng__randomPassword(objHandle: HCkPrng; length: Integer; mustIncludeDigit: wordbool; upperAndLowercase: wordbool; mustHaveOneOf: PWideChar; excludeChars: PWideChar): PWideChar; stdcall;

function CkPrng_RandomString(objHandle: HCkPrng; length: Integer; bDigits: wordbool; bLower: wordbool; bUpper: wordbool; outStr: HCkString): wordbool; stdcall;

function CkPrng__randomString(objHandle: HCkPrng; length: Integer; bDigits: wordbool; bLower: wordbool; bUpper: wordbool): PWideChar; stdcall;

function CkPrng_SaveLastError(objHandle: HCkPrng; path: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkPrng_Create; external DLLName;
procedure CkPrng_Dispose; external DLLName;
procedure CkPrng_getDebugLogFilePath; external DLLName;
procedure CkPrng_putDebugLogFilePath; external DLLName;
function CkPrng__debugLogFilePath; external DLLName;
procedure CkPrng_getLastErrorHtml; external DLLName;
function CkPrng__lastErrorHtml; external DLLName;
procedure CkPrng_getLastErrorText; external DLLName;
function CkPrng__lastErrorText; external DLLName;
procedure CkPrng_getLastErrorXml; external DLLName;
function CkPrng__lastErrorXml; external DLLName;
function CkPrng_getLastMethodSuccess; external DLLName;
procedure CkPrng_putLastMethodSuccess; external DLLName;
procedure CkPrng_getPrngName; external DLLName;
procedure CkPrng_putPrngName; external DLLName;
function CkPrng__prngName; external DLLName;
function CkPrng_getVerboseLogging; external DLLName;
procedure CkPrng_putVerboseLogging; external DLLName;
procedure CkPrng_getVersion; external DLLName;
function CkPrng__version; external DLLName;
function CkPrng_AddEntropy; external DLLName;
function CkPrng_AddEntropyBytes; external DLLName;
function CkPrng_ExportEntropy; external DLLName;
function CkPrng__exportEntropy; external DLLName;
function CkPrng_FirebasePushId; external DLLName;
function CkPrng__firebasePushId; external DLLName;
function CkPrng_GenRandom; external DLLName;
function CkPrng__genRandom; external DLLName;
function CkPrng_GenRandomBd; external DLLName;
function CkPrng_GenRandomBytes; external DLLName;
function CkPrng_GetEntropy; external DLLName;
function CkPrng__getEntropy; external DLLName;
function CkPrng_GetEntropyBytes; external DLLName;
function CkPrng_ImportEntropy; external DLLName;
function CkPrng_RandomInt; external DLLName;
function CkPrng_RandomPassword; external DLLName;
function CkPrng__randomPassword; external DLLName;
function CkPrng_RandomString; external DLLName;
function CkPrng__randomString; external DLLName;
function CkPrng_SaveLastError; external DLLName;



end.
