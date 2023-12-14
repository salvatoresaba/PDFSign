unit CkByteData;

interface

type

HCkByteData = Pointer;
HCkString = Pointer;


function CkByteData_Create: HCkByteData; stdcall;
procedure CkByteData_Dispose(handle: HCkByteData); stdcall;
function CkByteData_getSecureClear(objHandle: HCkByteData): wordbool; stdcall;

procedure CkByteData_putSecureClear(objHandle: HCkByteData; newPropVal: wordbool); stdcall;

procedure CkByteData_append(objHandle: HCkByteData; db: HCkByteData); stdcall;

procedure CkByteData_append2(objHandle: HCkByteData; pByteData: pbyte; szByteData: LongWord); stdcall;

procedure CkByteData_appendChar(objHandle: HCkByteData; ch: Char); stdcall;

procedure CkByteData_appendCharN(objHandle: HCkByteData; ch: Char; numTimes: Integer); stdcall;

procedure CkByteData_appendEncoded(objHandle: HCkByteData; str: pbyte; encoding: pbyte); stdcall;

procedure CkByteData_appendEncodedW(objHandle: HCkByteData; str: PWideChar; encoding: PWideChar); stdcall;

function CkByteData_appendFile(objHandle: HCkByteData; path: pbyte): wordbool; stdcall;

function CkByteData_appendFileW(objHandle: HCkByteData; path: PWideChar): wordbool; stdcall;

procedure CkByteData_appendInt(objHandle: HCkByteData; intValue: Integer; littleEndian: wordbool); stdcall;

procedure CkByteData_appendRandom(objHandle: HCkByteData; numBytes: Integer); stdcall;

procedure CkByteData_appendRange(objHandle: HCkByteData; byteData: HCkByteData; index: LongWord; numBytes: LongWord); stdcall;

procedure CkByteData_appendShort(objHandle: HCkByteData; shortValue: SmallInt; littleEndian: wordbool); stdcall;

procedure CkByteData_appendStr(objHandle: HCkByteData; str: pbyte); stdcall;

procedure CkByteData_appendStrW(objHandle: HCkByteData; str: PWideChar; charset: PWideChar); stdcall;

function CkByteData_beginsWith(objHandle: HCkByteData; byteDataObj: HCkByteData): wordbool; stdcall;

function CkByteData_beginsWith2(objHandle: HCkByteData; pByteData: pbyte; szByteData: LongWord): wordbool; stdcall;

procedure CkByteData_borrowData(objHandle: HCkByteData; pByteData: pbyte; szByteData: LongWord); stdcall;

procedure CkByteData_byteSwap4321(objHandle: HCkByteData); stdcall;

procedure CkByteData_clear(objHandle: HCkByteData); stdcall;

procedure CkByteData_dropData(objHandle: HCkByteData); stdcall;

procedure CkByteData_encode(objHandle: HCkByteData; encoding: pbyte; str: HCkString); stdcall;

procedure CkByteData_encodeW(objHandle: HCkByteData; encoding: PWideChar; str: HCkString); stdcall;

function CkByteData_ensureBuffer(objHandle: HCkByteData; expectedNumBytes: LongWord): wordbool; stdcall;

function CkByteData_equals(objHandle: HCkByteData; compareBytes: HCkByteData): wordbool; stdcall;

function CkByteData_equals2(objHandle: HCkByteData; pCompareBytes: pbyte; numBytes: LongWord): wordbool; stdcall;

function CkByteData_findBytes(objHandle: HCkByteData; byteDataObj: HCkByteData): Integer; stdcall;

function CkByteData_findBytes2(objHandle: HCkByteData; findBytes: pbyte; findBytesLen: LongWord): Integer; stdcall;

function CkByteData_getByte(objHandle: HCkByteData; byteIndex: LongWord): Byte; stdcall;

function CkByteData_getBytes(objHandle: HCkByteData): pbyte; stdcall;

function CkByteData_getChar(objHandle: HCkByteData; byteIndex: LongWord): Char; stdcall;

function CkByteData_getData(objHandle: HCkByteData): pbyte; stdcall;

function CkByteData_getDataAt(objHandle: HCkByteData; byteIndex: LongWord): pbyte; stdcall;

function CkByteData_getEncodedW(objHandle: HCkByteData; encoding: PWideChar): PWideChar; stdcall;

function CkByteData_getInt(objHandle: HCkByteData; byteIndex: LongWord): Integer; stdcall;

function CkByteData_getRange(objHandle: HCkByteData; byteIndex: LongWord; numBytes: LongWord): pbyte; stdcall;

function CkByteData_getShort(objHandle: HCkByteData; byteIndex: LongWord): SmallInt; stdcall;

function CkByteData_getSize(objHandle: HCkByteData): LongWord; stdcall;

function CkByteData_getUInt(objHandle: HCkByteData; byteIndex: LongWord): LongWord; stdcall;

function CkByteData_getUShort(objHandle: HCkByteData; byteIndex: LongWord): Word; stdcall;

function CkByteData_is7bit(objHandle: HCkByteData): wordbool; stdcall;

function CkByteData_loadFile(objHandle: HCkByteData; path: pbyte): wordbool; stdcall;

function CkByteData_loadFileW(objHandle: HCkByteData; path: PWideChar): wordbool; stdcall;

procedure CkByteData_pad(objHandle: HCkByteData; blockSize: Integer; paddingScheme: Integer); stdcall;

function CkByteData_preAllocate(objHandle: HCkByteData; expectedNumBytes: LongWord): wordbool; stdcall;

procedure CkByteData_removeChunk(objHandle: HCkByteData; startIndex: LongWord; numBytes: LongWord); stdcall;

function CkByteData_removeData(objHandle: HCkByteData): pbyte; stdcall;

procedure CkByteData_replaceChar(objHandle: HCkByteData; existingByteValue: Byte; replacementByteValue: Byte); stdcall;

function CkByteData_saveFile(objHandle: HCkByteData; path: pbyte): wordbool; stdcall;

function CkByteData_saveFileW(objHandle: HCkByteData; path: PWideChar): wordbool; stdcall;

procedure CkByteData_shorten(objHandle: HCkByteData; numBytes: LongWord); stdcall;

function CkByteData_to_ws(objHandle: HCkByteData; charset: pbyte): PWideChar; stdcall;

procedure CkByteData_unpad(objHandle: HCkByteData; blockSize: Integer; paddingScheme: Integer); stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkByteData_Create; external DLLName;
procedure CkByteData_Dispose; external DLLName;
function CkByteData_getSecureClear; external DLLName;
procedure CkByteData_putSecureClear; external DLLName;
procedure CkByteData_append; external DLLName;
procedure CkByteData_append2; external DLLName;
procedure CkByteData_appendChar; external DLLName;
procedure CkByteData_appendCharN; external DLLName;
procedure CkByteData_appendEncoded; external DLLName;
procedure CkByteData_appendEncodedW; external DLLName;
function CkByteData_appendFile; external DLLName;
function CkByteData_appendFileW; external DLLName;
procedure CkByteData_appendInt; external DLLName;
procedure CkByteData_appendRandom; external DLLName;
procedure CkByteData_appendRange; external DLLName;
procedure CkByteData_appendShort; external DLLName;
procedure CkByteData_appendStr; external DLLName;
procedure CkByteData_appendStrW; external DLLName;
function CkByteData_beginsWith; external DLLName;
function CkByteData_beginsWith2; external DLLName;
procedure CkByteData_borrowData; external DLLName;
procedure CkByteData_byteSwap4321; external DLLName;
procedure CkByteData_clear; external DLLName;
procedure CkByteData_dropData; external DLLName;
procedure CkByteData_encode; external DLLName;
procedure CkByteData_encodeW; external DLLName;
function CkByteData_ensureBuffer; external DLLName;
function CkByteData_equals; external DLLName;
function CkByteData_equals2; external DLLName;
function CkByteData_findBytes; external DLLName;
function CkByteData_findBytes2; external DLLName;
function CkByteData_getByte; external DLLName;
function CkByteData_getBytes; external DLLName;
function CkByteData_getChar; external DLLName;
function CkByteData_getData; external DLLName;
function CkByteData_getDataAt; external DLLName;
function CkByteData_getEncodedW; external DLLName;
function CkByteData_getInt; external DLLName;
function CkByteData_getRange; external DLLName;
function CkByteData_getShort; external DLLName;
function CkByteData_getSize; external DLLName;
function CkByteData_getUInt; external DLLName;
function CkByteData_getUShort; external DLLName;
function CkByteData_is7bit; external DLLName;
function CkByteData_loadFile; external DLLName;
function CkByteData_loadFileW; external DLLName;
procedure CkByteData_pad; external DLLName;
function CkByteData_preAllocate; external DLLName;
procedure CkByteData_removeChunk; external DLLName;
function CkByteData_removeData; external DLLName;
procedure CkByteData_replaceChar; external DLLName;
function CkByteData_saveFile; external DLLName;
function CkByteData_saveFileW; external DLLName;
procedure CkByteData_shorten; external DLLName;
function CkByteData_to_ws; external DLLName;
procedure CkByteData_unpad; external DLLName;



end.
