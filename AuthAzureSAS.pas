unit AuthAzureSAS;

interface

type

HCkAuthAzureSAS = Pointer;
HCkString = Pointer;


function CkAuthAzureSAS_Create: HCkAuthAzureSAS; stdcall;
procedure CkAuthAzureSAS_Dispose(handle: HCkAuthAzureSAS); stdcall;
procedure CkAuthAzureSAS_getAccessKey(objHandle: HCkAuthAzureSAS; outPropVal: HCkString); stdcall;

procedure CkAuthAzureSAS_putAccessKey(objHandle: HCkAuthAzureSAS; newPropVal: PWideChar); stdcall;

function CkAuthAzureSAS__accessKey(objHandle: HCkAuthAzureSAS): PWideChar; stdcall;

procedure CkAuthAzureSAS_getDebugLogFilePath(objHandle: HCkAuthAzureSAS; outPropVal: HCkString); stdcall;

procedure CkAuthAzureSAS_putDebugLogFilePath(objHandle: HCkAuthAzureSAS; newPropVal: PWideChar); stdcall;

function CkAuthAzureSAS__debugLogFilePath(objHandle: HCkAuthAzureSAS): PWideChar; stdcall;

procedure CkAuthAzureSAS_getLastErrorHtml(objHandle: HCkAuthAzureSAS; outPropVal: HCkString); stdcall;

function CkAuthAzureSAS__lastErrorHtml(objHandle: HCkAuthAzureSAS): PWideChar; stdcall;

procedure CkAuthAzureSAS_getLastErrorText(objHandle: HCkAuthAzureSAS; outPropVal: HCkString); stdcall;

function CkAuthAzureSAS__lastErrorText(objHandle: HCkAuthAzureSAS): PWideChar; stdcall;

procedure CkAuthAzureSAS_getLastErrorXml(objHandle: HCkAuthAzureSAS; outPropVal: HCkString); stdcall;

function CkAuthAzureSAS__lastErrorXml(objHandle: HCkAuthAzureSAS): PWideChar; stdcall;

function CkAuthAzureSAS_getLastMethodSuccess(objHandle: HCkAuthAzureSAS): wordbool; stdcall;

procedure CkAuthAzureSAS_putLastMethodSuccess(objHandle: HCkAuthAzureSAS; newPropVal: wordbool); stdcall;

procedure CkAuthAzureSAS_getStringToSign(objHandle: HCkAuthAzureSAS; outPropVal: HCkString); stdcall;

procedure CkAuthAzureSAS_putStringToSign(objHandle: HCkAuthAzureSAS; newPropVal: PWideChar); stdcall;

function CkAuthAzureSAS__stringToSign(objHandle: HCkAuthAzureSAS): PWideChar; stdcall;

function CkAuthAzureSAS_getVerboseLogging(objHandle: HCkAuthAzureSAS): wordbool; stdcall;

procedure CkAuthAzureSAS_putVerboseLogging(objHandle: HCkAuthAzureSAS; newPropVal: wordbool); stdcall;

procedure CkAuthAzureSAS_getVersion(objHandle: HCkAuthAzureSAS; outPropVal: HCkString); stdcall;

function CkAuthAzureSAS__version(objHandle: HCkAuthAzureSAS): PWideChar; stdcall;

procedure CkAuthAzureSAS_Clear(objHandle: HCkAuthAzureSAS); stdcall;

function CkAuthAzureSAS_GenerateToken(objHandle: HCkAuthAzureSAS; outStr: HCkString): wordbool; stdcall;

function CkAuthAzureSAS__generateToken(objHandle: HCkAuthAzureSAS): PWideChar; stdcall;

function CkAuthAzureSAS_SaveLastError(objHandle: HCkAuthAzureSAS; path: PWideChar): wordbool; stdcall;

function CkAuthAzureSAS_SetNonTokenParam(objHandle: HCkAuthAzureSAS; name: PWideChar; value: PWideChar): wordbool; stdcall;

function CkAuthAzureSAS_SetTokenParam(objHandle: HCkAuthAzureSAS; name: PWideChar; authParamName: PWideChar; value: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkAuthAzureSAS_Create; external DLLName;
procedure CkAuthAzureSAS_Dispose; external DLLName;
procedure CkAuthAzureSAS_getAccessKey; external DLLName;
procedure CkAuthAzureSAS_putAccessKey; external DLLName;
function CkAuthAzureSAS__accessKey; external DLLName;
procedure CkAuthAzureSAS_getDebugLogFilePath; external DLLName;
procedure CkAuthAzureSAS_putDebugLogFilePath; external DLLName;
function CkAuthAzureSAS__debugLogFilePath; external DLLName;
procedure CkAuthAzureSAS_getLastErrorHtml; external DLLName;
function CkAuthAzureSAS__lastErrorHtml; external DLLName;
procedure CkAuthAzureSAS_getLastErrorText; external DLLName;
function CkAuthAzureSAS__lastErrorText; external DLLName;
procedure CkAuthAzureSAS_getLastErrorXml; external DLLName;
function CkAuthAzureSAS__lastErrorXml; external DLLName;
function CkAuthAzureSAS_getLastMethodSuccess; external DLLName;
procedure CkAuthAzureSAS_putLastMethodSuccess; external DLLName;
procedure CkAuthAzureSAS_getStringToSign; external DLLName;
procedure CkAuthAzureSAS_putStringToSign; external DLLName;
function CkAuthAzureSAS__stringToSign; external DLLName;
function CkAuthAzureSAS_getVerboseLogging; external DLLName;
procedure CkAuthAzureSAS_putVerboseLogging; external DLLName;
procedure CkAuthAzureSAS_getVersion; external DLLName;
function CkAuthAzureSAS__version; external DLLName;
procedure CkAuthAzureSAS_Clear; external DLLName;
function CkAuthAzureSAS_GenerateToken; external DLLName;
function CkAuthAzureSAS__generateToken; external DLLName;
function CkAuthAzureSAS_SaveLastError; external DLLName;
function CkAuthAzureSAS_SetNonTokenParam; external DLLName;
function CkAuthAzureSAS_SetTokenParam; external DLLName;



end.
