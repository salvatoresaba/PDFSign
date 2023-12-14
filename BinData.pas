unit BinData;

interface

type

HCkBinData = Pointer;
HCkStringBuilder = Pointer;
HCkByteData = Pointer;
HCkString = Pointer;


function CkBinData_Create: HCkBinData; stdcall;
procedure CkBinData_Dispose(handle: HCkBinData); stdcall;
function CkBinData_getLastMethodSuccess(objHandle: HCkBinData): wordbool; stdcall;

procedure CkBinData_putLastMethodSuccess(objHandle: HCkBinData; newPropVal: wordbool); stdcall;

function CkBinData_getNumBytes(objHandle: HCkBinData): Integer; stdcall;

function CkBinData_AppendBd(objHandle: HCkBinData; binData: HCkBinData): wordbool; stdcall;

function CkBinData_AppendBinary(objHandle: HCkBinData; data: HCkByteData): wordbool; stdcall;

function CkBinData_AppendBinary2(objHandle: HCkBinData; pByteData: pbyte; szByteData: LongWord): wordbool; stdcall;

function CkBinData_AppendBom(objHandle: HCkBinData; charset: PWideChar): wordbool; stdcall;

function CkBinData_AppendByte(objHandle: HCkBinData; byteValue: Integer): wordbool; stdcall;

function CkBinData_AppendCountedString(objHandle: HCkBinData; numCountBytes: Integer; bigEndian: wordbool; str: PWideChar; charset: PWideChar): wordbool; stdcall;

function CkBinData_AppendEncoded(objHandle: HCkBinData; encData: PWideChar; encoding: PWideChar): wordbool; stdcall;

function CkBinData_AppendEncodedSb(objHandle: HCkBinData; sb: HCkStringBuilder; encoding: PWideChar): wordbool; stdcall;

function CkBinData_AppendInt2(objHandle: HCkBinData; value: Integer; littleEndian: wordbool): wordbool; stdcall;

function CkBinData_AppendInt4(objHandle: HCkBinData; value: Integer; littleEndian: wordbool): wordbool; stdcall;

function CkBinData_AppendPadded(objHandle: HCkBinData; str: PWideChar; charset: PWideChar; padWithSpace: wordbool; fieldLen: Integer): wordbool; stdcall;

function CkBinData_AppendSb(objHandle: HCkBinData; sb: HCkStringBuilder; charset: PWideChar): wordbool; stdcall;

function CkBinData_AppendString(objHandle: HCkBinData; str: PWideChar; charset: PWideChar): wordbool; stdcall;

function CkBinData_Clear(objHandle: HCkBinData): wordbool; stdcall;

function CkBinData_ContentsEqual(objHandle: HCkBinData; binData: HCkBinData): wordbool; stdcall;

function CkBinData_FindString(objHandle: HCkBinData; str: PWideChar; startIdx: Integer; charset: PWideChar): Integer; stdcall;

function CkBinData_GetBinary(objHandle: HCkBinData; outData: HCkByteData): wordbool; stdcall;

function CkBinData_GetBinaryChunk(objHandle: HCkBinData; offset: Integer; numBytes: Integer; outData: HCkByteData): wordbool; stdcall;

function CkBinData_GetByte(objHandle: HCkBinData; index: Integer): Integer; stdcall;

function CkBinData_GetBytesPtr(objHandle: HCkBinData): pbyte; stdcall;

function CkBinData_GetEncoded(objHandle: HCkBinData; encoding: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkBinData__getEncoded(objHandle: HCkBinData; encoding: PWideChar): PWideChar; stdcall;

function CkBinData_GetEncodedChunk(objHandle: HCkBinData; offset: Integer; numBytes: Integer; encoding: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkBinData__getEncodedChunk(objHandle: HCkBinData; offset: Integer; numBytes: Integer; encoding: PWideChar): PWideChar; stdcall;

function CkBinData_GetEncodedSb(objHandle: HCkBinData; encoding: PWideChar; sb: HCkStringBuilder): wordbool; stdcall;

function CkBinData_GetHash(objHandle: HCkBinData; algorithm: PWideChar; encoding: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkBinData__getHash(objHandle: HCkBinData; algorithm: PWideChar; encoding: PWideChar): PWideChar; stdcall;

function CkBinData_GetInt2(objHandle: HCkBinData; index: Integer; littleEndian: wordbool): Integer; stdcall;

function CkBinData_GetInt4(objHandle: HCkBinData; index: Integer; littleEndian: wordbool): Integer; stdcall;

function CkBinData_GetString(objHandle: HCkBinData; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkBinData__getString(objHandle: HCkBinData; charset: PWideChar): PWideChar; stdcall;

function CkBinData_GetTextChunk(objHandle: HCkBinData; startIdx: Integer; numBytes: Integer; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkBinData__getTextChunk(objHandle: HCkBinData; startIdx: Integer; numBytes: Integer; charset: PWideChar): PWideChar; stdcall;

function CkBinData_GetUInt2(objHandle: HCkBinData; index: Integer; littleEndian: wordbool): LongWord; stdcall;

function CkBinData_GetUInt4(objHandle: HCkBinData; index: Integer; littleEndian: wordbool): LongWord; stdcall;

function CkBinData_LoadBinary(objHandle: HCkBinData; data: HCkByteData): wordbool; stdcall;

function CkBinData_LoadBinary2(objHandle: HCkBinData; pByteData: pbyte; szByteData: LongWord): wordbool; stdcall;

function CkBinData_LoadEncoded(objHandle: HCkBinData; encData: PWideChar; encoding: PWideChar): wordbool; stdcall;

function CkBinData_LoadFile(objHandle: HCkBinData; path: PWideChar): wordbool; stdcall;

procedure CkBinData_RemoveByteVal(objHandle: HCkBinData; value: Integer); stdcall;

function CkBinData_RemoveChunk(objHandle: HCkBinData; offset: Integer; numBytes: Integer): wordbool; stdcall;

function CkBinData_SecureClear(objHandle: HCkBinData): wordbool; stdcall;

function CkBinData_WriteAppendFile(objHandle: HCkBinData; path: PWideChar): wordbool; stdcall;

function CkBinData_WriteFile(objHandle: HCkBinData; path: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkBinData_Create; external DLLName;
procedure CkBinData_Dispose; external DLLName;
function CkBinData_getLastMethodSuccess; external DLLName;
procedure CkBinData_putLastMethodSuccess; external DLLName;
function CkBinData_getNumBytes; external DLLName;
function CkBinData_AppendBd; external DLLName;
function CkBinData_AppendBinary; external DLLName;
function CkBinData_AppendBinary2; external DLLName;
function CkBinData_AppendBom; external DLLName;
function CkBinData_AppendByte; external DLLName;
function CkBinData_AppendCountedString; external DLLName;
function CkBinData_AppendEncoded; external DLLName;
function CkBinData_AppendEncodedSb; external DLLName;
function CkBinData_AppendInt2; external DLLName;
function CkBinData_AppendInt4; external DLLName;
function CkBinData_AppendPadded; external DLLName;
function CkBinData_AppendSb; external DLLName;
function CkBinData_AppendString; external DLLName;
function CkBinData_Clear; external DLLName;
function CkBinData_ContentsEqual; external DLLName;
function CkBinData_FindString; external DLLName;
function CkBinData_GetBinary; external DLLName;
function CkBinData_GetBinaryChunk; external DLLName;
function CkBinData_GetByte; external DLLName;
function CkBinData_GetBytesPtr; external DLLName;
function CkBinData_GetEncoded; external DLLName;
function CkBinData__getEncoded; external DLLName;
function CkBinData_GetEncodedChunk; external DLLName;
function CkBinData__getEncodedChunk; external DLLName;
function CkBinData_GetEncodedSb; external DLLName;
function CkBinData_GetHash; external DLLName;
function CkBinData__getHash; external DLLName;
function CkBinData_GetInt2; external DLLName;
function CkBinData_GetInt4; external DLLName;
function CkBinData_GetString; external DLLName;
function CkBinData__getString; external DLLName;
function CkBinData_GetTextChunk; external DLLName;
function CkBinData__getTextChunk; external DLLName;
function CkBinData_GetUInt2; external DLLName;
function CkBinData_GetUInt4; external DLLName;
function CkBinData_LoadBinary; external DLLName;
function CkBinData_LoadBinary2; external DLLName;
function CkBinData_LoadEncoded; external DLLName;
function CkBinData_LoadFile; external DLLName;
procedure CkBinData_RemoveByteVal; external DLLName;
function CkBinData_RemoveChunk; external DLLName;
function CkBinData_SecureClear; external DLLName;
function CkBinData_WriteAppendFile; external DLLName;
function CkBinData_WriteFile; external DLLName;



end.
