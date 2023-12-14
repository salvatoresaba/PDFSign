unit Bounce;

interface

type

HCkEmail = Pointer;
HCkBounce = Pointer;
HCkString = Pointer;


function CkBounce_Create: HCkBounce; stdcall;
procedure CkBounce_Dispose(handle: HCkBounce); stdcall;
procedure CkBounce_getBounceAddress(objHandle: HCkBounce; outPropVal: HCkString); stdcall;

function CkBounce__bounceAddress(objHandle: HCkBounce): PWideChar; stdcall;

procedure CkBounce_getBounceData(objHandle: HCkBounce; outPropVal: HCkString); stdcall;

function CkBounce__bounceData(objHandle: HCkBounce): PWideChar; stdcall;

function CkBounce_getBounceType(objHandle: HCkBounce): Integer; stdcall;

procedure CkBounce_getDebugLogFilePath(objHandle: HCkBounce; outPropVal: HCkString); stdcall;

procedure CkBounce_putDebugLogFilePath(objHandle: HCkBounce; newPropVal: PWideChar); stdcall;

function CkBounce__debugLogFilePath(objHandle: HCkBounce): PWideChar; stdcall;

procedure CkBounce_getLastErrorHtml(objHandle: HCkBounce; outPropVal: HCkString); stdcall;

function CkBounce__lastErrorHtml(objHandle: HCkBounce): PWideChar; stdcall;

procedure CkBounce_getLastErrorText(objHandle: HCkBounce; outPropVal: HCkString); stdcall;

function CkBounce__lastErrorText(objHandle: HCkBounce): PWideChar; stdcall;

procedure CkBounce_getLastErrorXml(objHandle: HCkBounce; outPropVal: HCkString); stdcall;

function CkBounce__lastErrorXml(objHandle: HCkBounce): PWideChar; stdcall;

function CkBounce_getLastMethodSuccess(objHandle: HCkBounce): wordbool; stdcall;

procedure CkBounce_putLastMethodSuccess(objHandle: HCkBounce; newPropVal: wordbool); stdcall;

function CkBounce_getVerboseLogging(objHandle: HCkBounce): wordbool; stdcall;

procedure CkBounce_putVerboseLogging(objHandle: HCkBounce; newPropVal: wordbool); stdcall;

procedure CkBounce_getVersion(objHandle: HCkBounce; outPropVal: HCkString); stdcall;

function CkBounce__version(objHandle: HCkBounce): PWideChar; stdcall;

function CkBounce_ExamineEmail(objHandle: HCkBounce; email: HCkEmail): wordbool; stdcall;

function CkBounce_ExamineEml(objHandle: HCkBounce; emlFilename: PWideChar): wordbool; stdcall;

function CkBounce_ExamineMime(objHandle: HCkBounce; mimeText: PWideChar): wordbool; stdcall;

function CkBounce_SaveLastError(objHandle: HCkBounce; path: PWideChar): wordbool; stdcall;

function CkBounce_UnlockComponent(objHandle: HCkBounce; unlockCode: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkBounce_Create; external DLLName;
procedure CkBounce_Dispose; external DLLName;
procedure CkBounce_getBounceAddress; external DLLName;
function CkBounce__bounceAddress; external DLLName;
procedure CkBounce_getBounceData; external DLLName;
function CkBounce__bounceData; external DLLName;
function CkBounce_getBounceType; external DLLName;
procedure CkBounce_getDebugLogFilePath; external DLLName;
procedure CkBounce_putDebugLogFilePath; external DLLName;
function CkBounce__debugLogFilePath; external DLLName;
procedure CkBounce_getLastErrorHtml; external DLLName;
function CkBounce__lastErrorHtml; external DLLName;
procedure CkBounce_getLastErrorText; external DLLName;
function CkBounce__lastErrorText; external DLLName;
procedure CkBounce_getLastErrorXml; external DLLName;
function CkBounce__lastErrorXml; external DLLName;
function CkBounce_getLastMethodSuccess; external DLLName;
procedure CkBounce_putLastMethodSuccess; external DLLName;
function CkBounce_getVerboseLogging; external DLLName;
procedure CkBounce_putVerboseLogging; external DLLName;
procedure CkBounce_getVersion; external DLLName;
function CkBounce__version; external DLLName;
function CkBounce_ExamineEmail; external DLLName;
function CkBounce_ExamineEml; external DLLName;
function CkBounce_ExamineMime; external DLLName;
function CkBounce_SaveLastError; external DLLName;
function CkBounce_UnlockComponent; external DLLName;



end.
