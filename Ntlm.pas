unit Ntlm;

interface

type

HCkNtlm = Pointer;
HCkString = Pointer;


function CkNtlm_Create: HCkNtlm; stdcall;
procedure CkNtlm_Dispose(handle: HCkNtlm); stdcall;
procedure CkNtlm_getClientChallenge(objHandle: HCkNtlm; outPropVal: HCkString); stdcall;

procedure CkNtlm_putClientChallenge(objHandle: HCkNtlm; newPropVal: PWideChar); stdcall;

function CkNtlm__clientChallenge(objHandle: HCkNtlm): PWideChar; stdcall;

procedure CkNtlm_getDebugLogFilePath(objHandle: HCkNtlm; outPropVal: HCkString); stdcall;

procedure CkNtlm_putDebugLogFilePath(objHandle: HCkNtlm; newPropVal: PWideChar); stdcall;

function CkNtlm__debugLogFilePath(objHandle: HCkNtlm): PWideChar; stdcall;

procedure CkNtlm_getDnsComputerName(objHandle: HCkNtlm; outPropVal: HCkString); stdcall;

procedure CkNtlm_putDnsComputerName(objHandle: HCkNtlm; newPropVal: PWideChar); stdcall;

function CkNtlm__dnsComputerName(objHandle: HCkNtlm): PWideChar; stdcall;

procedure CkNtlm_getDnsDomainName(objHandle: HCkNtlm; outPropVal: HCkString); stdcall;

procedure CkNtlm_putDnsDomainName(objHandle: HCkNtlm; newPropVal: PWideChar); stdcall;

function CkNtlm__dnsDomainName(objHandle: HCkNtlm): PWideChar; stdcall;

procedure CkNtlm_getDomain(objHandle: HCkNtlm; outPropVal: HCkString); stdcall;

procedure CkNtlm_putDomain(objHandle: HCkNtlm; newPropVal: PWideChar); stdcall;

function CkNtlm__domain(objHandle: HCkNtlm): PWideChar; stdcall;

procedure CkNtlm_getEncodingMode(objHandle: HCkNtlm; outPropVal: HCkString); stdcall;

procedure CkNtlm_putEncodingMode(objHandle: HCkNtlm; newPropVal: PWideChar); stdcall;

function CkNtlm__encodingMode(objHandle: HCkNtlm): PWideChar; stdcall;

procedure CkNtlm_getFlags(objHandle: HCkNtlm; outPropVal: HCkString); stdcall;

procedure CkNtlm_putFlags(objHandle: HCkNtlm; newPropVal: PWideChar); stdcall;

function CkNtlm__flags(objHandle: HCkNtlm): PWideChar; stdcall;

procedure CkNtlm_getLastErrorHtml(objHandle: HCkNtlm; outPropVal: HCkString); stdcall;

function CkNtlm__lastErrorHtml(objHandle: HCkNtlm): PWideChar; stdcall;

procedure CkNtlm_getLastErrorText(objHandle: HCkNtlm; outPropVal: HCkString); stdcall;

function CkNtlm__lastErrorText(objHandle: HCkNtlm): PWideChar; stdcall;

procedure CkNtlm_getLastErrorXml(objHandle: HCkNtlm; outPropVal: HCkString); stdcall;

function CkNtlm__lastErrorXml(objHandle: HCkNtlm): PWideChar; stdcall;

function CkNtlm_getLastMethodSuccess(objHandle: HCkNtlm): wordbool; stdcall;

procedure CkNtlm_putLastMethodSuccess(objHandle: HCkNtlm; newPropVal: wordbool); stdcall;

procedure CkNtlm_getNetBiosComputerName(objHandle: HCkNtlm; outPropVal: HCkString); stdcall;

procedure CkNtlm_putNetBiosComputerName(objHandle: HCkNtlm; newPropVal: PWideChar); stdcall;

function CkNtlm__netBiosComputerName(objHandle: HCkNtlm): PWideChar; stdcall;

procedure CkNtlm_getNetBiosDomainName(objHandle: HCkNtlm; outPropVal: HCkString); stdcall;

procedure CkNtlm_putNetBiosDomainName(objHandle: HCkNtlm; newPropVal: PWideChar); stdcall;

function CkNtlm__netBiosDomainName(objHandle: HCkNtlm): PWideChar; stdcall;

function CkNtlm_getNtlmVersion(objHandle: HCkNtlm): Integer; stdcall;

procedure CkNtlm_putNtlmVersion(objHandle: HCkNtlm; newPropVal: Integer); stdcall;

function CkNtlm_getOemCodePage(objHandle: HCkNtlm): Integer; stdcall;

procedure CkNtlm_putOemCodePage(objHandle: HCkNtlm; newPropVal: Integer); stdcall;

procedure CkNtlm_getPassword(objHandle: HCkNtlm; outPropVal: HCkString); stdcall;

procedure CkNtlm_putPassword(objHandle: HCkNtlm; newPropVal: PWideChar); stdcall;

function CkNtlm__password(objHandle: HCkNtlm): PWideChar; stdcall;

procedure CkNtlm_getServerChallenge(objHandle: HCkNtlm; outPropVal: HCkString); stdcall;

procedure CkNtlm_putServerChallenge(objHandle: HCkNtlm; newPropVal: PWideChar); stdcall;

function CkNtlm__serverChallenge(objHandle: HCkNtlm): PWideChar; stdcall;

procedure CkNtlm_getTargetName(objHandle: HCkNtlm; outPropVal: HCkString); stdcall;

procedure CkNtlm_putTargetName(objHandle: HCkNtlm; newPropVal: PWideChar); stdcall;

function CkNtlm__targetName(objHandle: HCkNtlm): PWideChar; stdcall;

procedure CkNtlm_getUserName(objHandle: HCkNtlm; outPropVal: HCkString); stdcall;

procedure CkNtlm_putUserName(objHandle: HCkNtlm; newPropVal: PWideChar); stdcall;

function CkNtlm__userName(objHandle: HCkNtlm): PWideChar; stdcall;

function CkNtlm_getVerboseLogging(objHandle: HCkNtlm): wordbool; stdcall;

procedure CkNtlm_putVerboseLogging(objHandle: HCkNtlm; newPropVal: wordbool); stdcall;

procedure CkNtlm_getVersion(objHandle: HCkNtlm; outPropVal: HCkString); stdcall;

function CkNtlm__version(objHandle: HCkNtlm): PWideChar; stdcall;

procedure CkNtlm_getWorkstation(objHandle: HCkNtlm; outPropVal: HCkString); stdcall;

procedure CkNtlm_putWorkstation(objHandle: HCkNtlm; newPropVal: PWideChar); stdcall;

function CkNtlm__workstation(objHandle: HCkNtlm): PWideChar; stdcall;

function CkNtlm_CompareType3(objHandle: HCkNtlm; msg1: PWideChar; msg2: PWideChar): wordbool; stdcall;

function CkNtlm_GenType1(objHandle: HCkNtlm; outStr: HCkString): wordbool; stdcall;

function CkNtlm__genType1(objHandle: HCkNtlm): PWideChar; stdcall;

function CkNtlm_GenType2(objHandle: HCkNtlm; type1Msg: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkNtlm__genType2(objHandle: HCkNtlm; type1Msg: PWideChar): PWideChar; stdcall;

function CkNtlm_GenType3(objHandle: HCkNtlm; type2Msg: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkNtlm__genType3(objHandle: HCkNtlm; type2Msg: PWideChar): PWideChar; stdcall;

function CkNtlm_LoadType3(objHandle: HCkNtlm; type3Msg: PWideChar): wordbool; stdcall;

function CkNtlm_ParseType1(objHandle: HCkNtlm; type1Msg: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkNtlm__parseType1(objHandle: HCkNtlm; type1Msg: PWideChar): PWideChar; stdcall;

function CkNtlm_ParseType2(objHandle: HCkNtlm; type2Msg: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkNtlm__parseType2(objHandle: HCkNtlm; type2Msg: PWideChar): PWideChar; stdcall;

function CkNtlm_ParseType3(objHandle: HCkNtlm; type3Msg: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkNtlm__parseType3(objHandle: HCkNtlm; type3Msg: PWideChar): PWideChar; stdcall;

function CkNtlm_SaveLastError(objHandle: HCkNtlm; path: PWideChar): wordbool; stdcall;

function CkNtlm_SetFlag(objHandle: HCkNtlm; flagLetter: PWideChar; onOrOff: wordbool): wordbool; stdcall;

function CkNtlm_UnlockComponent(objHandle: HCkNtlm; unlockCode: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkNtlm_Create; external DLLName;
procedure CkNtlm_Dispose; external DLLName;
procedure CkNtlm_getClientChallenge; external DLLName;
procedure CkNtlm_putClientChallenge; external DLLName;
function CkNtlm__clientChallenge; external DLLName;
procedure CkNtlm_getDebugLogFilePath; external DLLName;
procedure CkNtlm_putDebugLogFilePath; external DLLName;
function CkNtlm__debugLogFilePath; external DLLName;
procedure CkNtlm_getDnsComputerName; external DLLName;
procedure CkNtlm_putDnsComputerName; external DLLName;
function CkNtlm__dnsComputerName; external DLLName;
procedure CkNtlm_getDnsDomainName; external DLLName;
procedure CkNtlm_putDnsDomainName; external DLLName;
function CkNtlm__dnsDomainName; external DLLName;
procedure CkNtlm_getDomain; external DLLName;
procedure CkNtlm_putDomain; external DLLName;
function CkNtlm__domain; external DLLName;
procedure CkNtlm_getEncodingMode; external DLLName;
procedure CkNtlm_putEncodingMode; external DLLName;
function CkNtlm__encodingMode; external DLLName;
procedure CkNtlm_getFlags; external DLLName;
procedure CkNtlm_putFlags; external DLLName;
function CkNtlm__flags; external DLLName;
procedure CkNtlm_getLastErrorHtml; external DLLName;
function CkNtlm__lastErrorHtml; external DLLName;
procedure CkNtlm_getLastErrorText; external DLLName;
function CkNtlm__lastErrorText; external DLLName;
procedure CkNtlm_getLastErrorXml; external DLLName;
function CkNtlm__lastErrorXml; external DLLName;
function CkNtlm_getLastMethodSuccess; external DLLName;
procedure CkNtlm_putLastMethodSuccess; external DLLName;
procedure CkNtlm_getNetBiosComputerName; external DLLName;
procedure CkNtlm_putNetBiosComputerName; external DLLName;
function CkNtlm__netBiosComputerName; external DLLName;
procedure CkNtlm_getNetBiosDomainName; external DLLName;
procedure CkNtlm_putNetBiosDomainName; external DLLName;
function CkNtlm__netBiosDomainName; external DLLName;
function CkNtlm_getNtlmVersion; external DLLName;
procedure CkNtlm_putNtlmVersion; external DLLName;
function CkNtlm_getOemCodePage; external DLLName;
procedure CkNtlm_putOemCodePage; external DLLName;
procedure CkNtlm_getPassword; external DLLName;
procedure CkNtlm_putPassword; external DLLName;
function CkNtlm__password; external DLLName;
procedure CkNtlm_getServerChallenge; external DLLName;
procedure CkNtlm_putServerChallenge; external DLLName;
function CkNtlm__serverChallenge; external DLLName;
procedure CkNtlm_getTargetName; external DLLName;
procedure CkNtlm_putTargetName; external DLLName;
function CkNtlm__targetName; external DLLName;
procedure CkNtlm_getUserName; external DLLName;
procedure CkNtlm_putUserName; external DLLName;
function CkNtlm__userName; external DLLName;
function CkNtlm_getVerboseLogging; external DLLName;
procedure CkNtlm_putVerboseLogging; external DLLName;
procedure CkNtlm_getVersion; external DLLName;
function CkNtlm__version; external DLLName;
procedure CkNtlm_getWorkstation; external DLLName;
procedure CkNtlm_putWorkstation; external DLLName;
function CkNtlm__workstation; external DLLName;
function CkNtlm_CompareType3; external DLLName;
function CkNtlm_GenType1; external DLLName;
function CkNtlm__genType1; external DLLName;
function CkNtlm_GenType2; external DLLName;
function CkNtlm__genType2; external DLLName;
function CkNtlm_GenType3; external DLLName;
function CkNtlm__genType3; external DLLName;
function CkNtlm_LoadType3; external DLLName;
function CkNtlm_ParseType1; external DLLName;
function CkNtlm__parseType1; external DLLName;
function CkNtlm_ParseType2; external DLLName;
function CkNtlm__parseType2; external DLLName;
function CkNtlm_ParseType3; external DLLName;
function CkNtlm__parseType3; external DLLName;
function CkNtlm_SaveLastError; external DLLName;
function CkNtlm_SetFlag; external DLLName;
function CkNtlm_UnlockComponent; external DLLName;



end.
