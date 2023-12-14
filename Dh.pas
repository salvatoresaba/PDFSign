unit Dh;

interface

type

HCkDh = Pointer;
HCkString = Pointer;


function CkDh_Create: HCkDh; stdcall;
procedure CkDh_Dispose(handle: HCkDh); stdcall;
procedure CkDh_getDebugLogFilePath(objHandle: HCkDh; outPropVal: HCkString); stdcall;

procedure CkDh_putDebugLogFilePath(objHandle: HCkDh; newPropVal: PWideChar); stdcall;

function CkDh__debugLogFilePath(objHandle: HCkDh): PWideChar; stdcall;

function CkDh_getG(objHandle: HCkDh): Integer; stdcall;

procedure CkDh_getLastErrorHtml(objHandle: HCkDh; outPropVal: HCkString); stdcall;

function CkDh__lastErrorHtml(objHandle: HCkDh): PWideChar; stdcall;

procedure CkDh_getLastErrorText(objHandle: HCkDh; outPropVal: HCkString); stdcall;

function CkDh__lastErrorText(objHandle: HCkDh): PWideChar; stdcall;

procedure CkDh_getLastErrorXml(objHandle: HCkDh; outPropVal: HCkString); stdcall;

function CkDh__lastErrorXml(objHandle: HCkDh): PWideChar; stdcall;

function CkDh_getLastMethodSuccess(objHandle: HCkDh): wordbool; stdcall;

procedure CkDh_putLastMethodSuccess(objHandle: HCkDh; newPropVal: wordbool); stdcall;

procedure CkDh_getP(objHandle: HCkDh; outPropVal: HCkString); stdcall;

function CkDh__p(objHandle: HCkDh): PWideChar; stdcall;

function CkDh_getVerboseLogging(objHandle: HCkDh): wordbool; stdcall;

procedure CkDh_putVerboseLogging(objHandle: HCkDh; newPropVal: wordbool); stdcall;

procedure CkDh_getVersion(objHandle: HCkDh; outPropVal: HCkString); stdcall;

function CkDh__version(objHandle: HCkDh): PWideChar; stdcall;

function CkDh_CreateE(objHandle: HCkDh; numBits: Integer; outStr: HCkString): wordbool; stdcall;

function CkDh__createE(objHandle: HCkDh; numBits: Integer): PWideChar; stdcall;

function CkDh_FindK(objHandle: HCkDh; E: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkDh__findK(objHandle: HCkDh; E: PWideChar): PWideChar; stdcall;

function CkDh_GenPG(objHandle: HCkDh; numBits: Integer; G: Integer): wordbool; stdcall;

function CkDh_SaveLastError(objHandle: HCkDh; path: PWideChar): wordbool; stdcall;

function CkDh_SetPG(objHandle: HCkDh; p: PWideChar; g: Integer): wordbool; stdcall;

function CkDh_UnlockComponent(objHandle: HCkDh; unlockCode: PWideChar): wordbool; stdcall;

procedure CkDh_UseKnownPrime(objHandle: HCkDh; index: Integer); stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkDh_Create; external DLLName;
procedure CkDh_Dispose; external DLLName;
procedure CkDh_getDebugLogFilePath; external DLLName;
procedure CkDh_putDebugLogFilePath; external DLLName;
function CkDh__debugLogFilePath; external DLLName;
function CkDh_getG; external DLLName;
procedure CkDh_getLastErrorHtml; external DLLName;
function CkDh__lastErrorHtml; external DLLName;
procedure CkDh_getLastErrorText; external DLLName;
function CkDh__lastErrorText; external DLLName;
procedure CkDh_getLastErrorXml; external DLLName;
function CkDh__lastErrorXml; external DLLName;
function CkDh_getLastMethodSuccess; external DLLName;
procedure CkDh_putLastMethodSuccess; external DLLName;
procedure CkDh_getP; external DLLName;
function CkDh__p; external DLLName;
function CkDh_getVerboseLogging; external DLLName;
procedure CkDh_putVerboseLogging; external DLLName;
procedure CkDh_getVersion; external DLLName;
function CkDh__version; external DLLName;
function CkDh_CreateE; external DLLName;
function CkDh__createE; external DLLName;
function CkDh_FindK; external DLLName;
function CkDh__findK; external DLLName;
function CkDh_GenPG; external DLLName;
function CkDh_SaveLastError; external DLLName;
function CkDh_SetPG; external DLLName;
function CkDh_UnlockComponent; external DLLName;
procedure CkDh_UseKnownPrime; external DLLName;



end.
