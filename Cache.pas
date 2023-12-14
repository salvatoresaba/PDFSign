unit Cache;

interface

type

HCkBinData = Pointer;
HCkDateTime = Pointer;
HCkByteData = Pointer;
HCkString = Pointer;
HCkCache = Pointer;
HCkStringBuilder = Pointer;


function CkCache_Create: HCkCache; stdcall;
procedure CkCache_Dispose(handle: HCkCache); stdcall;
procedure CkCache_getDebugLogFilePath(objHandle: HCkCache; outPropVal: HCkString); stdcall;

procedure CkCache_putDebugLogFilePath(objHandle: HCkCache; newPropVal: PWideChar); stdcall;

function CkCache__debugLogFilePath(objHandle: HCkCache): PWideChar; stdcall;

procedure CkCache_getLastErrorHtml(objHandle: HCkCache; outPropVal: HCkString); stdcall;

function CkCache__lastErrorHtml(objHandle: HCkCache): PWideChar; stdcall;

procedure CkCache_getLastErrorText(objHandle: HCkCache; outPropVal: HCkString); stdcall;

function CkCache__lastErrorText(objHandle: HCkCache): PWideChar; stdcall;

procedure CkCache_getLastErrorXml(objHandle: HCkCache; outPropVal: HCkString); stdcall;

function CkCache__lastErrorXml(objHandle: HCkCache): PWideChar; stdcall;

procedure CkCache_getLastEtagFetched(objHandle: HCkCache; outPropVal: HCkString); stdcall;

function CkCache__lastEtagFetched(objHandle: HCkCache): PWideChar; stdcall;

procedure CkCache_getLastExpirationFetchedStr(objHandle: HCkCache; outPropVal: HCkString); stdcall;

function CkCache__lastExpirationFetchedStr(objHandle: HCkCache): PWideChar; stdcall;

function CkCache_getLastHitExpired(objHandle: HCkCache): wordbool; stdcall;

procedure CkCache_getLastKeyFetched(objHandle: HCkCache; outPropVal: HCkString); stdcall;

function CkCache__lastKeyFetched(objHandle: HCkCache): PWideChar; stdcall;

function CkCache_getLastMethodSuccess(objHandle: HCkCache): wordbool; stdcall;

procedure CkCache_putLastMethodSuccess(objHandle: HCkCache; newPropVal: wordbool); stdcall;

function CkCache_getLevel(objHandle: HCkCache): Integer; stdcall;

procedure CkCache_putLevel(objHandle: HCkCache; newPropVal: Integer); stdcall;

function CkCache_getNumRoots(objHandle: HCkCache): Integer; stdcall;

function CkCache_getVerboseLogging(objHandle: HCkCache): wordbool; stdcall;

procedure CkCache_putVerboseLogging(objHandle: HCkCache; newPropVal: wordbool); stdcall;

procedure CkCache_getVersion(objHandle: HCkCache; outPropVal: HCkString); stdcall;

function CkCache__version(objHandle: HCkCache): PWideChar; stdcall;

procedure CkCache_AddRoot(objHandle: HCkCache; path: PWideChar); stdcall;

function CkCache_DeleteAll(objHandle: HCkCache): Integer; stdcall;

function CkCache_DeleteAllExpired(objHandle: HCkCache): Integer; stdcall;

function CkCache_DeleteFromCache(objHandle: HCkCache; key: PWideChar): wordbool; stdcall;

function CkCache_DeleteOlderDt(objHandle: HCkCache; dateTime: HCkDateTime): Integer; stdcall;

function CkCache_DeleteOlderStr(objHandle: HCkCache; dateTimeStr: PWideChar): Integer; stdcall;

function CkCache_FetchBd(objHandle: HCkCache; key: PWideChar; bd: HCkBinData): wordbool; stdcall;

function CkCache_FetchFromCache(objHandle: HCkCache; key: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkCache_FetchSb(objHandle: HCkCache; key: PWideChar; sb: HCkStringBuilder): wordbool; stdcall;

function CkCache_FetchText(objHandle: HCkCache; key: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkCache__fetchText(objHandle: HCkCache; key: PWideChar): PWideChar; stdcall;

function CkCache_GetEtag(objHandle: HCkCache; key: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkCache__getEtag(objHandle: HCkCache; key: PWideChar): PWideChar; stdcall;

function CkCache_GetExpirationDt(objHandle: HCkCache; key: PWideChar): HCkDateTime; stdcall;

function CkCache_GetExpirationStr(objHandle: HCkCache; url: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkCache__getExpirationStr(objHandle: HCkCache; url: PWideChar): PWideChar; stdcall;

function CkCache_GetFilename(objHandle: HCkCache; key: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkCache__getFilename(objHandle: HCkCache; key: PWideChar): PWideChar; stdcall;

function CkCache_GetRoot(objHandle: HCkCache; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkCache__getRoot(objHandle: HCkCache; index: Integer): PWideChar; stdcall;

function CkCache_IsCached(objHandle: HCkCache; key: PWideChar): wordbool; stdcall;

function CkCache_SaveLastError(objHandle: HCkCache; path: PWideChar): wordbool; stdcall;

function CkCache_SaveTextDt(objHandle: HCkCache; key: PWideChar; expireDateTime: HCkDateTime; eTag: PWideChar; itemTextData: PWideChar): wordbool; stdcall;

function CkCache_SaveTextNoExpire(objHandle: HCkCache; key: PWideChar; eTag: PWideChar; itemTextData: PWideChar): wordbool; stdcall;

function CkCache_SaveTextStr(objHandle: HCkCache; key: PWideChar; expireDateTime: PWideChar; eTag: PWideChar; itemTextData: PWideChar): wordbool; stdcall;

function CkCache_SaveToCacheDt(objHandle: HCkCache; key: PWideChar; expireDateTime: HCkDateTime; eTag: PWideChar; itemData: HCkByteData): wordbool; stdcall;

function CkCache_SaveToCacheNoExpire(objHandle: HCkCache; key: PWideChar; eTag: PWideChar; itemData: HCkByteData): wordbool; stdcall;

function CkCache_SaveToCacheStr(objHandle: HCkCache; key: PWideChar; expireDateTime: PWideChar; eTag: PWideChar; itemData: HCkByteData): wordbool; stdcall;

function CkCache_UpdateExpirationDt(objHandle: HCkCache; key: PWideChar; expireDateTime: HCkDateTime): wordbool; stdcall;

function CkCache_UpdateExpirationStr(objHandle: HCkCache; key: PWideChar; expireDateTime: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkCache_Create; external DLLName;
procedure CkCache_Dispose; external DLLName;
procedure CkCache_getDebugLogFilePath; external DLLName;
procedure CkCache_putDebugLogFilePath; external DLLName;
function CkCache__debugLogFilePath; external DLLName;
procedure CkCache_getLastErrorHtml; external DLLName;
function CkCache__lastErrorHtml; external DLLName;
procedure CkCache_getLastErrorText; external DLLName;
function CkCache__lastErrorText; external DLLName;
procedure CkCache_getLastErrorXml; external DLLName;
function CkCache__lastErrorXml; external DLLName;
procedure CkCache_getLastEtagFetched; external DLLName;
function CkCache__lastEtagFetched; external DLLName;
procedure CkCache_getLastExpirationFetchedStr; external DLLName;
function CkCache__lastExpirationFetchedStr; external DLLName;
function CkCache_getLastHitExpired; external DLLName;
procedure CkCache_getLastKeyFetched; external DLLName;
function CkCache__lastKeyFetched; external DLLName;
function CkCache_getLastMethodSuccess; external DLLName;
procedure CkCache_putLastMethodSuccess; external DLLName;
function CkCache_getLevel; external DLLName;
procedure CkCache_putLevel; external DLLName;
function CkCache_getNumRoots; external DLLName;
function CkCache_getVerboseLogging; external DLLName;
procedure CkCache_putVerboseLogging; external DLLName;
procedure CkCache_getVersion; external DLLName;
function CkCache__version; external DLLName;
procedure CkCache_AddRoot; external DLLName;
function CkCache_DeleteAll; external DLLName;
function CkCache_DeleteAllExpired; external DLLName;
function CkCache_DeleteFromCache; external DLLName;
function CkCache_DeleteOlderDt; external DLLName;
function CkCache_DeleteOlderStr; external DLLName;
function CkCache_FetchBd; external DLLName;
function CkCache_FetchFromCache; external DLLName;
function CkCache_FetchSb; external DLLName;
function CkCache_FetchText; external DLLName;
function CkCache__fetchText; external DLLName;
function CkCache_GetEtag; external DLLName;
function CkCache__getEtag; external DLLName;
function CkCache_GetExpirationDt; external DLLName;
function CkCache_GetExpirationStr; external DLLName;
function CkCache__getExpirationStr; external DLLName;
function CkCache_GetFilename; external DLLName;
function CkCache__getFilename; external DLLName;
function CkCache_GetRoot; external DLLName;
function CkCache__getRoot; external DLLName;
function CkCache_IsCached; external DLLName;
function CkCache_SaveLastError; external DLLName;
function CkCache_SaveTextDt; external DLLName;
function CkCache_SaveTextNoExpire; external DLLName;
function CkCache_SaveTextStr; external DLLName;
function CkCache_SaveToCacheDt; external DLLName;
function CkCache_SaveToCacheNoExpire; external DLLName;
function CkCache_SaveToCacheStr; external DLLName;
function CkCache_UpdateExpirationDt; external DLLName;
function CkCache_UpdateExpirationStr; external DLLName;



end.
