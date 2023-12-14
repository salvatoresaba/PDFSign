unit CkString;

interface

type

HCkStringArray = Pointer;
HCkString = Pointer;


function CkString_Create: HCkString; stdcall;
procedure CkString_Dispose(handle: HCkString); stdcall;
function CkString_getNumArabic(objHandle: HCkString): Integer; stdcall;

function CkString_getNumAscii(objHandle: HCkString): Integer; stdcall;

function CkString_getNumCentralEuro(objHandle: HCkString): Integer; stdcall;

function CkString_getNumChinese(objHandle: HCkString): Integer; stdcall;

function CkString_getNumCyrillic(objHandle: HCkString): Integer; stdcall;

function CkString_getNumGreek(objHandle: HCkString): Integer; stdcall;

function CkString_getNumHebrew(objHandle: HCkString): Integer; stdcall;

function CkString_getNumJapanese(objHandle: HCkString): Integer; stdcall;

function CkString_getNumKorean(objHandle: HCkString): Integer; stdcall;

function CkString_getNumLatin(objHandle: HCkString): Integer; stdcall;

function CkString_getNumThai(objHandle: HCkString): Integer; stdcall;

procedure CkString_append(objHandle: HCkString; str: pbyte); stdcall;

procedure CkString_appendAnsi(objHandle: HCkString; str: pbyte); stdcall;

procedure CkString_appendChar(objHandle: HCkString; c: Char); stdcall;

procedure CkString_appendCurrentDateRfc822(objHandle: HCkString); stdcall;

procedure CkString_appendEnc(objHandle: HCkString; str: pbyte; charsetEncoding: pbyte); stdcall;

procedure CkString_appendHexData(objHandle: HCkString; byteData: pbyte; numBytes: LongWord); stdcall;

procedure CkString_appendInt(objHandle: HCkString; n: Integer); stdcall;

procedure CkString_appendLastWindowsError(objHandle: HCkString); stdcall;

procedure CkString_appendN(objHandle: HCkString; str: pbyte; numBytes: LongWord); stdcall;

procedure CkString_appendNU(objHandle: HCkString; wideStr: PWideChar; numChars: Integer); stdcall;

procedure CkString_appendRandom(objHandle: HCkString; numBytes: Integer; encoding: pbyte); stdcall;

procedure CkString_appendStr(objHandle: HCkString; strObj: HCkString); stdcall;

procedure CkString_appendU(objHandle: HCkString; unicode: PWideChar); stdcall;

procedure CkString_appendUtf8(objHandle: HCkString; str: pbyte); stdcall;

procedure CkString_base64Decode(objHandle: HCkString; charsetEncoding: pbyte); stdcall;

procedure CkString_base64DecodeW(objHandle: HCkString; charsetEncoding: PWideChar); stdcall;

procedure CkString_base64Encode(objHandle: HCkString; charsetEncoding: pbyte); stdcall;

procedure CkString_base64EncodeW(objHandle: HCkString; charsetEncoding: PWideChar); stdcall;

function CkString_beginsWith(objHandle: HCkString; substr: pbyte): wordbool; stdcall;

function CkString_beginsWithStr(objHandle: HCkString; strObj: HCkString): wordbool; stdcall;

function CkString_beginsWithW(objHandle: HCkString; str: PWideChar): wordbool; stdcall;

function CkString_charAt(objHandle: HCkString; idx: Integer): Char; stdcall;

function CkString_charAtU(objHandle: HCkString; idx: Integer): WideChar; stdcall;

procedure CkString_chopAtFirstChar(objHandle: HCkString; ch: Char); stdcall;

procedure CkString_chopAtStr(objHandle: HCkString; subStrObj: HCkString); stdcall;

procedure CkString_clear(objHandle: HCkString); stdcall;

function CkString_clone(objHandle: HCkString): HCkString; stdcall;

function CkString_compareStr(objHandle: HCkString; str: HCkString): Integer; stdcall;

function CkString_containsSubstring(objHandle: HCkString; substr: pbyte): wordbool; stdcall;

function CkString_containsSubstringNoCase(objHandle: HCkString; substr: pbyte): wordbool; stdcall;

function CkString_containsSubstringNoCaseW(objHandle: HCkString; substr: PWideChar): wordbool; stdcall;

function CkString_containsSubstringW(objHandle: HCkString; substr: PWideChar): wordbool; stdcall;

function CkString_countCharOccurances(objHandle: HCkString; ch: Char): Integer; stdcall;

procedure CkString_decodeXMLSpecial(objHandle: HCkString); stdcall;

function CkString_doubleValue(objHandle: HCkString): Double; stdcall;

procedure CkString_eliminateChar(objHandle: HCkString; ansiChar: Char; startIndex: Integer); stdcall;

procedure CkString_encodeXMLSpecial(objHandle: HCkString); stdcall;

function CkString_endsWith(objHandle: HCkString; substr: pbyte): wordbool; stdcall;

function CkString_endsWithStr(objHandle: HCkString; substrObj: HCkString): wordbool; stdcall;

function CkString_endsWithW(objHandle: HCkString; s: PWideChar): wordbool; stdcall;

procedure CkString_entityDecode(objHandle: HCkString); stdcall;

procedure CkString_entityEncode(objHandle: HCkString); stdcall;

function CkString_equals(objHandle: HCkString; str: pbyte): wordbool; stdcall;

function CkString_equalsIgnoreCase(objHandle: HCkString; str: pbyte): wordbool; stdcall;

function CkString_equalsIgnoreCaseStr(objHandle: HCkString; strObj: HCkString): wordbool; stdcall;

function CkString_equalsIgnoreCaseW(objHandle: HCkString; s: PWideChar): wordbool; stdcall;

function CkString_equalsStr(objHandle: HCkString; strObj: HCkString): wordbool; stdcall;

function CkString_equalsW(objHandle: HCkString; s: PWideChar): wordbool; stdcall;

function CkString_getChar(objHandle: HCkString; idx: Integer): HCkString; stdcall;

function CkString_getEnc(objHandle: HCkString; encoding: pbyte): pbyte; stdcall;

function CkString_getNumChars(objHandle: HCkString): Integer; stdcall;

function CkString_getSizeAnsi(objHandle: HCkString): Integer; stdcall;

function CkString_getSizeUnicode(objHandle: HCkString): Integer; stdcall;

function CkString_getSizeUtf8(objHandle: HCkString): Integer; stdcall;

function CkString_getString(objHandle: HCkString): pbyte; stdcall;

function CkString_getStringAnsi(objHandle: HCkString): pbyte; stdcall;

function CkString_getStringUtf8(objHandle: HCkString): pbyte; stdcall;

function CkString_getUnicode(objHandle: HCkString): PWideChar; stdcall;

procedure CkString_hexDecode(objHandle: HCkString; charsetEncoding: pbyte); stdcall;

procedure CkString_hexDecodeW(objHandle: HCkString; charsetEncoding: PWideChar); stdcall;

procedure CkString_hexEncode(objHandle: HCkString; charsetEncoding: pbyte); stdcall;

procedure CkString_hexEncodeW(objHandle: HCkString; charsetEncoding: PWideChar); stdcall;

function CkString_indexOf(objHandle: HCkString; substr: pbyte): Integer; stdcall;

function CkString_indexOfStr(objHandle: HCkString; substrObj: HCkString): Integer; stdcall;

function CkString_indexOfW(objHandle: HCkString; s: PWideChar): Integer; stdcall;

function CkString_intValue(objHandle: HCkString): Integer; stdcall;

function CkString_isEmpty(objHandle: HCkString): wordbool; stdcall;

function CkString_lastChar(objHandle: HCkString): Char; stdcall;

function CkString_loadFile(objHandle: HCkString; path: pbyte; charsetEncoding: pbyte): wordbool; stdcall;

function CkString_loadFileW(objHandle: HCkString; path: PWideChar; charsetEncoding: PWideChar): wordbool; stdcall;

function CkString_matches(objHandle: HCkString; strPattern: pbyte): wordbool; stdcall;

function CkString_matchesNoCase(objHandle: HCkString; strPattern: pbyte): wordbool; stdcall;

function CkString_matchesNoCaseW(objHandle: HCkString; s: PWideChar): wordbool; stdcall;

function CkString_matchesStr(objHandle: HCkString; strPatternObj: HCkString): wordbool; stdcall;

function CkString_matchesW(objHandle: HCkString; s: PWideChar): wordbool; stdcall;

procedure CkString_minimizeMemory(objHandle: HCkString); stdcall;

procedure CkString_obfuscate(objHandle: HCkString); stdcall;

procedure CkString_prepend(objHandle: HCkString; str: pbyte); stdcall;

procedure CkString_prependW(objHandle: HCkString; s: PWideChar); stdcall;

procedure CkString_punyDecode(objHandle: HCkString); stdcall;

procedure CkString_punyEncode(objHandle: HCkString); stdcall;

procedure CkString_qpDecode(objHandle: HCkString; charsetEncoding: pbyte); stdcall;

procedure CkString_qpDecodeW(objHandle: HCkString; charset: PWideChar); stdcall;

procedure CkString_qpEncode(objHandle: HCkString; charsetEncoding: pbyte); stdcall;

procedure CkString_qpEncodeW(objHandle: HCkString; charset: PWideChar); stdcall;

function CkString_removeAll(objHandle: HCkString; substr: HCkString): Integer; stdcall;

procedure CkString_removeCharOccurances(objHandle: HCkString; ch: Char); stdcall;

procedure CkString_removeChunk(objHandle: HCkString; charStartPos: Integer; numChars: Integer); stdcall;

procedure CkString_removeDelimited(objHandle: HCkString; beginDelim: pbyte; endDelim: pbyte; caseSensitive: wordbool); stdcall;

function CkString_removeFirst(objHandle: HCkString; substr: HCkString): wordbool; stdcall;

function CkString_replaceAll(objHandle: HCkString; findStrObj: HCkString; replaceStrObj: HCkString): Integer; stdcall;

function CkString_replaceAllOccurances(objHandle: HCkString; findStr: pbyte; replaceStr: pbyte): Integer; stdcall;

function CkString_replaceAllOccurancesW(objHandle: HCkString; pattern: PWideChar; replacement: PWideChar): Integer; stdcall;

procedure CkString_replaceChar(objHandle: HCkString; findCh: Char; replaceCh: Char); stdcall;

function CkString_replaceFirst(objHandle: HCkString; findStrObj: HCkString; replaceStrObj: HCkString): wordbool; stdcall;

function CkString_replaceFirstOccurance(objHandle: HCkString; findStr: pbyte; replaceStr: pbyte): wordbool; stdcall;

function CkString_replaceFirstOccuranceW(objHandle: HCkString; pattern: PWideChar; replacement: PWideChar): wordbool; stdcall;

function CkString_saveToFile(objHandle: HCkString; path: pbyte; charsetEncoding: pbyte): wordbool; stdcall;

function CkString_saveToFileW(objHandle: HCkString; path: PWideChar; charset: PWideChar): wordbool; stdcall;

procedure CkString_setStr(objHandle: HCkString; s: HCkString); stdcall;

procedure CkString_setString(objHandle: HCkString; str: pbyte); stdcall;

procedure CkString_setStringAnsi(objHandle: HCkString; s: pbyte); stdcall;

procedure CkString_setStringU(objHandle: HCkString; unicode: PWideChar); stdcall;

procedure CkString_setStringUtf8(objHandle: HCkString; s: pbyte); stdcall;

procedure CkString_shorten(objHandle: HCkString; n: Integer); stdcall;

function CkString_split(objHandle: HCkString; delimiterChar: Char; exceptDoubleQuoted: wordbool; exceptEscaped: wordbool; keepEmpty: wordbool): HCkStringArray; stdcall;

function CkString_split2(objHandle: HCkString; delimiterChars: pbyte; exceptDoubleQuoted: wordbool; exceptEscaped: wordbool; keepEmpty: wordbool): HCkStringArray; stdcall;

function CkString_split2W(objHandle: HCkString; splitCharSet: PWideChar; exceptDoubleQuoted: wordbool; exceptEscaped: wordbool; keepEmpty: wordbool): HCkStringArray; stdcall;

function CkString_splitAtWS(objHandle: HCkString): HCkStringArray; stdcall;

function CkString_substring(objHandle: HCkString; startCharIndex: Integer; numChars: Integer): HCkString; stdcall;

procedure CkString_toCRLF(objHandle: HCkString); stdcall;

function CkString_tokenize(objHandle: HCkString; punctuation: pbyte): HCkStringArray; stdcall;

function CkString_tokenizeW(objHandle: HCkString; punctuation: PWideChar): HCkStringArray; stdcall;

procedure CkString_toLF(objHandle: HCkString); stdcall;

procedure CkString_toLowerCase(objHandle: HCkString); stdcall;

procedure CkString_toUpperCase(objHandle: HCkString); stdcall;

procedure CkString_trim(objHandle: HCkString); stdcall;

procedure CkString_trim2(objHandle: HCkString); stdcall;

procedure CkString_trimInsideSpaces(objHandle: HCkString); stdcall;

procedure CkString_unobfuscate(objHandle: HCkString); stdcall;

procedure CkString_urlDecode(objHandle: HCkString; charsetEncoding: pbyte); stdcall;

procedure CkString_urlDecodeW(objHandle: HCkString; charsetEncoding: PWideChar); stdcall;

procedure CkString_urlEncode(objHandle: HCkString; charsetEncoding: pbyte); stdcall;

procedure CkString_urlEncodeW(objHandle: HCkString; charsetEncoding: PWideChar); stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkString_Create; external DLLName;
procedure CkString_Dispose; external DLLName;
function CkString_getNumArabic; external DLLName;
function CkString_getNumAscii; external DLLName;
function CkString_getNumCentralEuro; external DLLName;
function CkString_getNumChinese; external DLLName;
function CkString_getNumCyrillic; external DLLName;
function CkString_getNumGreek; external DLLName;
function CkString_getNumHebrew; external DLLName;
function CkString_getNumJapanese; external DLLName;
function CkString_getNumKorean; external DLLName;
function CkString_getNumLatin; external DLLName;
function CkString_getNumThai; external DLLName;
procedure CkString_append; external DLLName;
procedure CkString_appendAnsi; external DLLName;
procedure CkString_appendChar; external DLLName;
procedure CkString_appendCurrentDateRfc822; external DLLName;
procedure CkString_appendEnc; external DLLName;
procedure CkString_appendHexData; external DLLName;
procedure CkString_appendInt; external DLLName;
procedure CkString_appendLastWindowsError; external DLLName;
procedure CkString_appendN; external DLLName;
procedure CkString_appendNU; external DLLName;
procedure CkString_appendRandom; external DLLName;
procedure CkString_appendStr; external DLLName;
procedure CkString_appendU; external DLLName;
procedure CkString_appendUtf8; external DLLName;
procedure CkString_base64Decode; external DLLName;
procedure CkString_base64DecodeW; external DLLName;
procedure CkString_base64Encode; external DLLName;
procedure CkString_base64EncodeW; external DLLName;
function CkString_beginsWith; external DLLName;
function CkString_beginsWithStr; external DLLName;
function CkString_beginsWithW; external DLLName;
function CkString_charAt; external DLLName;
function CkString_charAtU; external DLLName;
procedure CkString_chopAtFirstChar; external DLLName;
procedure CkString_chopAtStr; external DLLName;
procedure CkString_clear; external DLLName;
function CkString_clone; external DLLName;
function CkString_compareStr; external DLLName;
function CkString_containsSubstring; external DLLName;
function CkString_containsSubstringNoCase; external DLLName;
function CkString_containsSubstringNoCaseW; external DLLName;
function CkString_containsSubstringW; external DLLName;
function CkString_countCharOccurances; external DLLName;
procedure CkString_decodeXMLSpecial; external DLLName;
function CkString_doubleValue; external DLLName;
procedure CkString_eliminateChar; external DLLName;
procedure CkString_encodeXMLSpecial; external DLLName;
function CkString_endsWith; external DLLName;
function CkString_endsWithStr; external DLLName;
function CkString_endsWithW; external DLLName;
procedure CkString_entityDecode; external DLLName;
procedure CkString_entityEncode; external DLLName;
function CkString_equals; external DLLName;
function CkString_equalsIgnoreCase; external DLLName;
function CkString_equalsIgnoreCaseStr; external DLLName;
function CkString_equalsIgnoreCaseW; external DLLName;
function CkString_equalsStr; external DLLName;
function CkString_equalsW; external DLLName;
function CkString_getChar; external DLLName;
function CkString_getEnc; external DLLName;
function CkString_getNumChars; external DLLName;
function CkString_getSizeAnsi; external DLLName;
function CkString_getSizeUnicode; external DLLName;
function CkString_getSizeUtf8; external DLLName;
function CkString_getString; external DLLName;
function CkString_getStringAnsi; external DLLName;
function CkString_getStringUtf8; external DLLName;
function CkString_getUnicode; external DLLName;
procedure CkString_hexDecode; external DLLName;
procedure CkString_hexDecodeW; external DLLName;
procedure CkString_hexEncode; external DLLName;
procedure CkString_hexEncodeW; external DLLName;
function CkString_indexOf; external DLLName;
function CkString_indexOfStr; external DLLName;
function CkString_indexOfW; external DLLName;
function CkString_intValue; external DLLName;
function CkString_isEmpty; external DLLName;
function CkString_lastChar; external DLLName;
function CkString_loadFile; external DLLName;
function CkString_loadFileW; external DLLName;
function CkString_matches; external DLLName;
function CkString_matchesNoCase; external DLLName;
function CkString_matchesNoCaseW; external DLLName;
function CkString_matchesStr; external DLLName;
function CkString_matchesW; external DLLName;
procedure CkString_minimizeMemory; external DLLName;
procedure CkString_obfuscate; external DLLName;
procedure CkString_prepend; external DLLName;
procedure CkString_prependW; external DLLName;
procedure CkString_punyDecode; external DLLName;
procedure CkString_punyEncode; external DLLName;
procedure CkString_qpDecode; external DLLName;
procedure CkString_qpDecodeW; external DLLName;
procedure CkString_qpEncode; external DLLName;
procedure CkString_qpEncodeW; external DLLName;
function CkString_removeAll; external DLLName;
procedure CkString_removeCharOccurances; external DLLName;
procedure CkString_removeChunk; external DLLName;
procedure CkString_removeDelimited; external DLLName;
function CkString_removeFirst; external DLLName;
function CkString_replaceAll; external DLLName;
function CkString_replaceAllOccurances; external DLLName;
function CkString_replaceAllOccurancesW; external DLLName;
procedure CkString_replaceChar; external DLLName;
function CkString_replaceFirst; external DLLName;
function CkString_replaceFirstOccurance; external DLLName;
function CkString_replaceFirstOccuranceW; external DLLName;
function CkString_saveToFile; external DLLName;
function CkString_saveToFileW; external DLLName;
procedure CkString_setStr; external DLLName;
procedure CkString_setString; external DLLName;
procedure CkString_setStringAnsi; external DLLName;
procedure CkString_setStringU; external DLLName;
procedure CkString_setStringUtf8; external DLLName;
procedure CkString_shorten; external DLLName;
function CkString_split; external DLLName;
function CkString_split2; external DLLName;
function CkString_split2W; external DLLName;
function CkString_splitAtWS; external DLLName;
function CkString_substring; external DLLName;
procedure CkString_toCRLF; external DLLName;
function CkString_tokenize; external DLLName;
function CkString_tokenizeW; external DLLName;
procedure CkString_toLF; external DLLName;
procedure CkString_toLowerCase; external DLLName;
procedure CkString_toUpperCase; external DLLName;
procedure CkString_trim; external DLLName;
procedure CkString_trim2; external DLLName;
procedure CkString_trimInsideSpaces; external DLLName;
procedure CkString_unobfuscate; external DLLName;
procedure CkString_urlDecode; external DLLName;
procedure CkString_urlDecodeW; external DLLName;
procedure CkString_urlEncode; external DLLName;
procedure CkString_urlEncodeW; external DLLName;



end.
