unit StringBuilder;

interface

type

HCkBinData = Pointer;
HCkStringBuilder = Pointer;
HCkByteData = Pointer;
HCkString = Pointer;


function CkStringBuilder_Create: HCkStringBuilder; stdcall;
procedure CkStringBuilder_Dispose(handle: HCkStringBuilder); stdcall;
function CkStringBuilder_getIntValue(objHandle: HCkStringBuilder): Integer; stdcall;

procedure CkStringBuilder_putIntValue(objHandle: HCkStringBuilder; newPropVal: Integer); stdcall;

function CkStringBuilder_getIsBase64(objHandle: HCkStringBuilder): wordbool; stdcall;

function CkStringBuilder_getLastMethodSuccess(objHandle: HCkStringBuilder): wordbool; stdcall;

procedure CkStringBuilder_putLastMethodSuccess(objHandle: HCkStringBuilder; newPropVal: wordbool); stdcall;

function CkStringBuilder_getLength(objHandle: HCkStringBuilder): Integer; stdcall;

function CkStringBuilder_Append(objHandle: HCkStringBuilder; value: PWideChar): wordbool; stdcall;

function CkStringBuilder_AppendBd(objHandle: HCkStringBuilder; binData: HCkBinData; charset: PWideChar; offset: Integer; numBytes: Integer): wordbool; stdcall;

function CkStringBuilder_AppendEncoded(objHandle: HCkStringBuilder; binaryData: HCkByteData; encoding: PWideChar): wordbool; stdcall;

function CkStringBuilder_AppendInt(objHandle: HCkStringBuilder; value: Integer): wordbool; stdcall;

function CkStringBuilder_AppendInt64(objHandle: HCkStringBuilder; value: Int64): wordbool; stdcall;

function CkStringBuilder_AppendLine(objHandle: HCkStringBuilder; value: PWideChar; crlf: wordbool): wordbool; stdcall;

function CkStringBuilder_AppendRandom(objHandle: HCkStringBuilder; numBytes: Integer; encoding: PWideChar): wordbool; stdcall;

function CkStringBuilder_AppendSb(objHandle: HCkStringBuilder; sb: HCkStringBuilder): wordbool; stdcall;

function CkStringBuilder_AppendUuid(objHandle: HCkStringBuilder; lowerCase: wordbool): wordbool; stdcall;

procedure CkStringBuilder_Clear(objHandle: HCkStringBuilder); stdcall;

function CkStringBuilder_Contains(objHandle: HCkStringBuilder; str: PWideChar; caseSensitive: wordbool): wordbool; stdcall;

function CkStringBuilder_ContainsWord(objHandle: HCkStringBuilder; word: PWideChar; caseSensitive: wordbool): wordbool; stdcall;

function CkStringBuilder_ContentsEqual(objHandle: HCkStringBuilder; str: PWideChar; caseSensitive: wordbool): wordbool; stdcall;

function CkStringBuilder_ContentsEqualSb(objHandle: HCkStringBuilder; sb: HCkStringBuilder; caseSensitive: wordbool): wordbool; stdcall;

function CkStringBuilder_Decode(objHandle: HCkStringBuilder; encoding: PWideChar; charset: PWideChar): wordbool; stdcall;

function CkStringBuilder_DecodeAndAppend(objHandle: HCkStringBuilder; value: PWideChar; encoding: PWideChar; charset: PWideChar): wordbool; stdcall;

function CkStringBuilder_Encode(objHandle: HCkStringBuilder; encoding: PWideChar; charset: PWideChar): wordbool; stdcall;

function CkStringBuilder_EndsWith(objHandle: HCkStringBuilder; substr: PWideChar; caseSensitive: wordbool): wordbool; stdcall;

function CkStringBuilder_EntityDecode(objHandle: HCkStringBuilder): wordbool; stdcall;

function CkStringBuilder_GetAfterBetween(objHandle: HCkStringBuilder; searchAfter: PWideChar; beginMark: PWideChar; endMark: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkStringBuilder__getAfterBetween(objHandle: HCkStringBuilder; searchAfter: PWideChar; beginMark: PWideChar; endMark: PWideChar): PWideChar; stdcall;

function CkStringBuilder_GetAfterFinal(objHandle: HCkStringBuilder; marker: PWideChar; removeFlag: wordbool; outStr: HCkString): wordbool; stdcall;

function CkStringBuilder__getAfterFinal(objHandle: HCkStringBuilder; marker: PWideChar; removeFlag: wordbool): PWideChar; stdcall;

function CkStringBuilder_GetAsString(objHandle: HCkStringBuilder; outStr: HCkString): wordbool; stdcall;

function CkStringBuilder__getAsString(objHandle: HCkStringBuilder): PWideChar; stdcall;

function CkStringBuilder_GetBefore(objHandle: HCkStringBuilder; marker: PWideChar; removeFlag: wordbool; outStr: HCkString): wordbool; stdcall;

function CkStringBuilder__getBefore(objHandle: HCkStringBuilder; marker: PWideChar; removeFlag: wordbool): PWideChar; stdcall;

function CkStringBuilder_GetBetween(objHandle: HCkStringBuilder; beginMark: PWideChar; endMark: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkStringBuilder__getBetween(objHandle: HCkStringBuilder; beginMark: PWideChar; endMark: PWideChar): PWideChar; stdcall;

function CkStringBuilder_GetDecoded(objHandle: HCkStringBuilder; encoding: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkStringBuilder_GetEncoded(objHandle: HCkStringBuilder; encoding: PWideChar; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkStringBuilder__getEncoded(objHandle: HCkStringBuilder; encoding: PWideChar; charset: PWideChar): PWideChar; stdcall;

function CkStringBuilder_GetHash(objHandle: HCkStringBuilder; algorithm: PWideChar; encoding: PWideChar; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkStringBuilder__getHash(objHandle: HCkStringBuilder; algorithm: PWideChar; encoding: PWideChar; charset: PWideChar): PWideChar; stdcall;

function CkStringBuilder_GetNth(objHandle: HCkStringBuilder; index: Integer; delimiterChar: PWideChar; exceptDoubleQuoted: wordbool; exceptEscaped: wordbool; outStr: HCkString): wordbool; stdcall;

function CkStringBuilder__getNth(objHandle: HCkStringBuilder; index: Integer; delimiterChar: PWideChar; exceptDoubleQuoted: wordbool; exceptEscaped: wordbool): PWideChar; stdcall;

function CkStringBuilder_GetRange(objHandle: HCkStringBuilder; startIndex: Integer; numChars: Integer; removeFlag: wordbool; outStr: HCkString): wordbool; stdcall;

function CkStringBuilder__getRange(objHandle: HCkStringBuilder; startIndex: Integer; numChars: Integer; removeFlag: wordbool): PWideChar; stdcall;

function CkStringBuilder_LastNLines(objHandle: HCkStringBuilder; numLines: Integer; bCrlf: wordbool; outStr: HCkString): wordbool; stdcall;

function CkStringBuilder__lastNLines(objHandle: HCkStringBuilder; numLines: Integer; bCrlf: wordbool): PWideChar; stdcall;

function CkStringBuilder_LoadFile(objHandle: HCkStringBuilder; path: PWideChar; charset: PWideChar): wordbool; stdcall;

procedure CkStringBuilder_Obfuscate(objHandle: HCkStringBuilder); stdcall;

function CkStringBuilder_Prepend(objHandle: HCkStringBuilder; value: PWideChar): wordbool; stdcall;

function CkStringBuilder_PunyDecode(objHandle: HCkStringBuilder): wordbool; stdcall;

function CkStringBuilder_PunyEncode(objHandle: HCkStringBuilder): wordbool; stdcall;

function CkStringBuilder_RemoveAccents(objHandle: HCkStringBuilder): wordbool; stdcall;

function CkStringBuilder_RemoveAfterFinal(objHandle: HCkStringBuilder; marker: PWideChar): wordbool; stdcall;

function CkStringBuilder_RemoveBefore(objHandle: HCkStringBuilder; marker: PWideChar): wordbool; stdcall;

function CkStringBuilder_RemoveCharsAt(objHandle: HCkStringBuilder; startIndex: Integer; numChars: Integer): wordbool; stdcall;

function CkStringBuilder_Replace(objHandle: HCkStringBuilder; value: PWideChar; replacement: PWideChar): Integer; stdcall;

function CkStringBuilder_ReplaceAfterFinal(objHandle: HCkStringBuilder; marker: PWideChar; replacement: PWideChar): wordbool; stdcall;

function CkStringBuilder_ReplaceAllBetween(objHandle: HCkStringBuilder; beginMark: PWideChar; endMark: PWideChar; replacement: PWideChar; replaceMarks: wordbool): wordbool; stdcall;

function CkStringBuilder_ReplaceBetween(objHandle: HCkStringBuilder; beginMark: PWideChar; endMark: PWideChar; value: PWideChar; replacement: PWideChar): Integer; stdcall;

function CkStringBuilder_ReplaceFirst(objHandle: HCkStringBuilder; value: PWideChar; replacement: PWideChar): wordbool; stdcall;

function CkStringBuilder_ReplaceI(objHandle: HCkStringBuilder; value: PWideChar; replacement: Integer): Integer; stdcall;

function CkStringBuilder_ReplaceNoCase(objHandle: HCkStringBuilder; value: PWideChar; replacement: PWideChar): Integer; stdcall;

function CkStringBuilder_ReplaceWord(objHandle: HCkStringBuilder; value: PWideChar; replacement: PWideChar): Integer; stdcall;

procedure CkStringBuilder_SecureClear(objHandle: HCkStringBuilder); stdcall;

function CkStringBuilder_SetNth(objHandle: HCkStringBuilder; index: Integer; value: PWideChar; delimiterChar: PWideChar; exceptDoubleQuoted: wordbool; exceptEscaped: wordbool): wordbool; stdcall;

function CkStringBuilder_SetString(objHandle: HCkStringBuilder; value: PWideChar): wordbool; stdcall;

function CkStringBuilder_Shorten(objHandle: HCkStringBuilder; numChars: Integer): wordbool; stdcall;

function CkStringBuilder_StartsWith(objHandle: HCkStringBuilder; substr: PWideChar; caseSensitive: wordbool): wordbool; stdcall;

function CkStringBuilder_ToCRLF(objHandle: HCkStringBuilder): wordbool; stdcall;

function CkStringBuilder_ToLF(objHandle: HCkStringBuilder): wordbool; stdcall;

function CkStringBuilder_ToLowercase(objHandle: HCkStringBuilder): wordbool; stdcall;

function CkStringBuilder_ToUppercase(objHandle: HCkStringBuilder): wordbool; stdcall;

function CkStringBuilder_Trim(objHandle: HCkStringBuilder): wordbool; stdcall;

function CkStringBuilder_TrimInsideSpaces(objHandle: HCkStringBuilder): wordbool; stdcall;

procedure CkStringBuilder_Unobfuscate(objHandle: HCkStringBuilder); stdcall;

function CkStringBuilder_WriteFile(objHandle: HCkStringBuilder; path: PWideChar; charset: PWideChar; emitBom: wordbool): wordbool; stdcall;

function CkStringBuilder_WriteFileIfModified(objHandle: HCkStringBuilder; path: PWideChar; charset: PWideChar; emitBom: wordbool): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkStringBuilder_Create; external DLLName;
procedure CkStringBuilder_Dispose; external DLLName;
function CkStringBuilder_getIntValue; external DLLName;
procedure CkStringBuilder_putIntValue; external DLLName;
function CkStringBuilder_getIsBase64; external DLLName;
function CkStringBuilder_getLastMethodSuccess; external DLLName;
procedure CkStringBuilder_putLastMethodSuccess; external DLLName;
function CkStringBuilder_getLength; external DLLName;
function CkStringBuilder_Append; external DLLName;
function CkStringBuilder_AppendBd; external DLLName;
function CkStringBuilder_AppendEncoded; external DLLName;
function CkStringBuilder_AppendInt; external DLLName;
function CkStringBuilder_AppendInt64; external DLLName;
function CkStringBuilder_AppendLine; external DLLName;
function CkStringBuilder_AppendRandom; external DLLName;
function CkStringBuilder_AppendSb; external DLLName;
function CkStringBuilder_AppendUuid; external DLLName;
procedure CkStringBuilder_Clear; external DLLName;
function CkStringBuilder_Contains; external DLLName;
function CkStringBuilder_ContainsWord; external DLLName;
function CkStringBuilder_ContentsEqual; external DLLName;
function CkStringBuilder_ContentsEqualSb; external DLLName;
function CkStringBuilder_Decode; external DLLName;
function CkStringBuilder_DecodeAndAppend; external DLLName;
function CkStringBuilder_Encode; external DLLName;
function CkStringBuilder_EndsWith; external DLLName;
function CkStringBuilder_EntityDecode; external DLLName;
function CkStringBuilder_GetAfterBetween; external DLLName;
function CkStringBuilder__getAfterBetween; external DLLName;
function CkStringBuilder_GetAfterFinal; external DLLName;
function CkStringBuilder__getAfterFinal; external DLLName;
function CkStringBuilder_GetAsString; external DLLName;
function CkStringBuilder__getAsString; external DLLName;
function CkStringBuilder_GetBefore; external DLLName;
function CkStringBuilder__getBefore; external DLLName;
function CkStringBuilder_GetBetween; external DLLName;
function CkStringBuilder__getBetween; external DLLName;
function CkStringBuilder_GetDecoded; external DLLName;
function CkStringBuilder_GetEncoded; external DLLName;
function CkStringBuilder__getEncoded; external DLLName;
function CkStringBuilder_GetHash; external DLLName;
function CkStringBuilder__getHash; external DLLName;
function CkStringBuilder_GetNth; external DLLName;
function CkStringBuilder__getNth; external DLLName;
function CkStringBuilder_GetRange; external DLLName;
function CkStringBuilder__getRange; external DLLName;
function CkStringBuilder_LastNLines; external DLLName;
function CkStringBuilder__lastNLines; external DLLName;
function CkStringBuilder_LoadFile; external DLLName;
procedure CkStringBuilder_Obfuscate; external DLLName;
function CkStringBuilder_Prepend; external DLLName;
function CkStringBuilder_PunyDecode; external DLLName;
function CkStringBuilder_PunyEncode; external DLLName;
function CkStringBuilder_RemoveAccents; external DLLName;
function CkStringBuilder_RemoveAfterFinal; external DLLName;
function CkStringBuilder_RemoveBefore; external DLLName;
function CkStringBuilder_RemoveCharsAt; external DLLName;
function CkStringBuilder_Replace; external DLLName;
function CkStringBuilder_ReplaceAfterFinal; external DLLName;
function CkStringBuilder_ReplaceAllBetween; external DLLName;
function CkStringBuilder_ReplaceBetween; external DLLName;
function CkStringBuilder_ReplaceFirst; external DLLName;
function CkStringBuilder_ReplaceI; external DLLName;
function CkStringBuilder_ReplaceNoCase; external DLLName;
function CkStringBuilder_ReplaceWord; external DLLName;
procedure CkStringBuilder_SecureClear; external DLLName;
function CkStringBuilder_SetNth; external DLLName;
function CkStringBuilder_SetString; external DLLName;
function CkStringBuilder_Shorten; external DLLName;
function CkStringBuilder_StartsWith; external DLLName;
function CkStringBuilder_ToCRLF; external DLLName;
function CkStringBuilder_ToLF; external DLLName;
function CkStringBuilder_ToLowercase; external DLLName;
function CkStringBuilder_ToUppercase; external DLLName;
function CkStringBuilder_Trim; external DLLName;
function CkStringBuilder_TrimInsideSpaces; external DLLName;
procedure CkStringBuilder_Unobfuscate; external DLLName;
function CkStringBuilder_WriteFile; external DLLName;
function CkStringBuilder_WriteFileIfModified; external DLLName;



end.
