unit Asn;

interface

type

HCkBinData = Pointer;
HCkByteData = Pointer;
HCkAsn = Pointer;
HCkString = Pointer;


function CkAsn_Create: HCkAsn; stdcall;
procedure CkAsn_Dispose(handle: HCkAsn); stdcall;
function CkAsn_getBoolValue(objHandle: HCkAsn): wordbool; stdcall;

procedure CkAsn_putBoolValue(objHandle: HCkAsn; newPropVal: wordbool); stdcall;

function CkAsn_getConstructed(objHandle: HCkAsn): wordbool; stdcall;

procedure CkAsn_getContentStr(objHandle: HCkAsn; outPropVal: HCkString); stdcall;

procedure CkAsn_putContentStr(objHandle: HCkAsn; newPropVal: PWideChar); stdcall;

function CkAsn__contentStr(objHandle: HCkAsn): PWideChar; stdcall;

procedure CkAsn_getDebugLogFilePath(objHandle: HCkAsn; outPropVal: HCkString); stdcall;

procedure CkAsn_putDebugLogFilePath(objHandle: HCkAsn; newPropVal: PWideChar); stdcall;

function CkAsn__debugLogFilePath(objHandle: HCkAsn): PWideChar; stdcall;

function CkAsn_getIntValue(objHandle: HCkAsn): Integer; stdcall;

procedure CkAsn_putIntValue(objHandle: HCkAsn; newPropVal: Integer); stdcall;

procedure CkAsn_getLastErrorHtml(objHandle: HCkAsn; outPropVal: HCkString); stdcall;

function CkAsn__lastErrorHtml(objHandle: HCkAsn): PWideChar; stdcall;

procedure CkAsn_getLastErrorText(objHandle: HCkAsn; outPropVal: HCkString); stdcall;

function CkAsn__lastErrorText(objHandle: HCkAsn): PWideChar; stdcall;

procedure CkAsn_getLastErrorXml(objHandle: HCkAsn; outPropVal: HCkString); stdcall;

function CkAsn__lastErrorXml(objHandle: HCkAsn): PWideChar; stdcall;

function CkAsn_getLastMethodSuccess(objHandle: HCkAsn): wordbool; stdcall;

procedure CkAsn_putLastMethodSuccess(objHandle: HCkAsn; newPropVal: wordbool); stdcall;

function CkAsn_getNumSubItems(objHandle: HCkAsn): Integer; stdcall;

procedure CkAsn_getTag(objHandle: HCkAsn; outPropVal: HCkString); stdcall;

function CkAsn__tag(objHandle: HCkAsn): PWideChar; stdcall;

function CkAsn_getTagValue(objHandle: HCkAsn): Integer; stdcall;

function CkAsn_getVerboseLogging(objHandle: HCkAsn): wordbool; stdcall;

procedure CkAsn_putVerboseLogging(objHandle: HCkAsn; newPropVal: wordbool); stdcall;

procedure CkAsn_getVersion(objHandle: HCkAsn; outPropVal: HCkString); stdcall;

function CkAsn__version(objHandle: HCkAsn): PWideChar; stdcall;

function CkAsn_AppendBigInt(objHandle: HCkAsn; encodedBytes: PWideChar; encoding: PWideChar): wordbool; stdcall;

function CkAsn_AppendBits(objHandle: HCkAsn; encodedBytes: PWideChar; encoding: PWideChar): wordbool; stdcall;

function CkAsn_AppendBool(objHandle: HCkAsn; value: wordbool): wordbool; stdcall;

function CkAsn_AppendContextConstructed(objHandle: HCkAsn; tag: Integer): wordbool; stdcall;

function CkAsn_AppendContextPrimitive(objHandle: HCkAsn; tag: Integer; encodedBytes: PWideChar; encoding: PWideChar): wordbool; stdcall;

function CkAsn_AppendInt(objHandle: HCkAsn; value: Integer): wordbool; stdcall;

function CkAsn_AppendNull(objHandle: HCkAsn): wordbool; stdcall;

function CkAsn_AppendOctets(objHandle: HCkAsn; encodedBytes: PWideChar; encoding: PWideChar): wordbool; stdcall;

function CkAsn_AppendOid(objHandle: HCkAsn; oid: PWideChar): wordbool; stdcall;

function CkAsn_AppendSequence(objHandle: HCkAsn): wordbool; stdcall;

function CkAsn_AppendSequence2(objHandle: HCkAsn): wordbool; stdcall;

function CkAsn_AppendSequenceR(objHandle: HCkAsn): HCkAsn; stdcall;

function CkAsn_AppendSet(objHandle: HCkAsn): wordbool; stdcall;

function CkAsn_AppendSet2(objHandle: HCkAsn): wordbool; stdcall;

function CkAsn_AppendSetR(objHandle: HCkAsn): HCkAsn; stdcall;

function CkAsn_AppendString(objHandle: HCkAsn; strType: PWideChar; value: PWideChar): wordbool; stdcall;

function CkAsn_AppendTime(objHandle: HCkAsn; timeFormat: PWideChar; dateTimeStr: PWideChar): wordbool; stdcall;

function CkAsn_AsnToXml(objHandle: HCkAsn; outStr: HCkString): wordbool; stdcall;

function CkAsn__asnToXml(objHandle: HCkAsn): PWideChar; stdcall;

function CkAsn_DeleteSubItem(objHandle: HCkAsn; index: Integer): wordbool; stdcall;

function CkAsn_GetBinaryDer(objHandle: HCkAsn; outData: HCkByteData): wordbool; stdcall;

function CkAsn_GetEncodedContent(objHandle: HCkAsn; encoding: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkAsn__getEncodedContent(objHandle: HCkAsn; encoding: PWideChar): PWideChar; stdcall;

function CkAsn_GetEncodedDer(objHandle: HCkAsn; encoding: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkAsn__getEncodedDer(objHandle: HCkAsn; encoding: PWideChar): PWideChar; stdcall;

function CkAsn_GetLastSubItem(objHandle: HCkAsn): HCkAsn; stdcall;

function CkAsn_GetSubItem(objHandle: HCkAsn; index: Integer): HCkAsn; stdcall;

function CkAsn_LoadAsnXml(objHandle: HCkAsn; xmlStr: PWideChar): wordbool; stdcall;

function CkAsn_LoadBd(objHandle: HCkAsn; bd: HCkBinData): wordbool; stdcall;

function CkAsn_LoadBinary(objHandle: HCkAsn; derBytes: HCkByteData): wordbool; stdcall;

function CkAsn_LoadBinaryFile(objHandle: HCkAsn; path: PWideChar): wordbool; stdcall;

function CkAsn_LoadEncoded(objHandle: HCkAsn; asnContent: PWideChar; encoding: PWideChar): wordbool; stdcall;

function CkAsn_SaveLastError(objHandle: HCkAsn; path: PWideChar): wordbool; stdcall;

function CkAsn_SetEncodedContent(objHandle: HCkAsn; encodedBytes: PWideChar; encoding: PWideChar): wordbool; stdcall;

function CkAsn_WriteBd(objHandle: HCkAsn; bd: HCkBinData): wordbool; stdcall;

function CkAsn_WriteBinaryDer(objHandle: HCkAsn; path: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkAsn_Create; external DLLName;
procedure CkAsn_Dispose; external DLLName;
function CkAsn_getBoolValue; external DLLName;
procedure CkAsn_putBoolValue; external DLLName;
function CkAsn_getConstructed; external DLLName;
procedure CkAsn_getContentStr; external DLLName;
procedure CkAsn_putContentStr; external DLLName;
function CkAsn__contentStr; external DLLName;
procedure CkAsn_getDebugLogFilePath; external DLLName;
procedure CkAsn_putDebugLogFilePath; external DLLName;
function CkAsn__debugLogFilePath; external DLLName;
function CkAsn_getIntValue; external DLLName;
procedure CkAsn_putIntValue; external DLLName;
procedure CkAsn_getLastErrorHtml; external DLLName;
function CkAsn__lastErrorHtml; external DLLName;
procedure CkAsn_getLastErrorText; external DLLName;
function CkAsn__lastErrorText; external DLLName;
procedure CkAsn_getLastErrorXml; external DLLName;
function CkAsn__lastErrorXml; external DLLName;
function CkAsn_getLastMethodSuccess; external DLLName;
procedure CkAsn_putLastMethodSuccess; external DLLName;
function CkAsn_getNumSubItems; external DLLName;
procedure CkAsn_getTag; external DLLName;
function CkAsn__tag; external DLLName;
function CkAsn_getTagValue; external DLLName;
function CkAsn_getVerboseLogging; external DLLName;
procedure CkAsn_putVerboseLogging; external DLLName;
procedure CkAsn_getVersion; external DLLName;
function CkAsn__version; external DLLName;
function CkAsn_AppendBigInt; external DLLName;
function CkAsn_AppendBits; external DLLName;
function CkAsn_AppendBool; external DLLName;
function CkAsn_AppendContextConstructed; external DLLName;
function CkAsn_AppendContextPrimitive; external DLLName;
function CkAsn_AppendInt; external DLLName;
function CkAsn_AppendNull; external DLLName;
function CkAsn_AppendOctets; external DLLName;
function CkAsn_AppendOid; external DLLName;
function CkAsn_AppendSequence; external DLLName;
function CkAsn_AppendSequence2; external DLLName;
function CkAsn_AppendSequenceR; external DLLName;
function CkAsn_AppendSet; external DLLName;
function CkAsn_AppendSet2; external DLLName;
function CkAsn_AppendSetR; external DLLName;
function CkAsn_AppendString; external DLLName;
function CkAsn_AppendTime; external DLLName;
function CkAsn_AsnToXml; external DLLName;
function CkAsn__asnToXml; external DLLName;
function CkAsn_DeleteSubItem; external DLLName;
function CkAsn_GetBinaryDer; external DLLName;
function CkAsn_GetEncodedContent; external DLLName;
function CkAsn__getEncodedContent; external DLLName;
function CkAsn_GetEncodedDer; external DLLName;
function CkAsn__getEncodedDer; external DLLName;
function CkAsn_GetLastSubItem; external DLLName;
function CkAsn_GetSubItem; external DLLName;
function CkAsn_LoadAsnXml; external DLLName;
function CkAsn_LoadBd; external DLLName;
function CkAsn_LoadBinary; external DLLName;
function CkAsn_LoadBinaryFile; external DLLName;
function CkAsn_LoadEncoded; external DLLName;
function CkAsn_SaveLastError; external DLLName;
function CkAsn_SetEncodedContent; external DLLName;
function CkAsn_WriteBd; external DLLName;
function CkAsn_WriteBinaryDer; external DLLName;



end.
