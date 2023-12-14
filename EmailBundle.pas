unit EmailBundle;

interface

type

HCkTask = Pointer;
HCkEmailBundle = Pointer;
HCkStringArray = Pointer;
HCkEmail = Pointer;
HCkString = Pointer;


function CkEmailBundle_Create: HCkEmailBundle; stdcall;
procedure CkEmailBundle_Dispose(handle: HCkEmailBundle); stdcall;
procedure CkEmailBundle_getDebugLogFilePath(objHandle: HCkEmailBundle; outPropVal: HCkString); stdcall;

procedure CkEmailBundle_putDebugLogFilePath(objHandle: HCkEmailBundle; newPropVal: PWideChar); stdcall;

function CkEmailBundle__debugLogFilePath(objHandle: HCkEmailBundle): PWideChar; stdcall;

procedure CkEmailBundle_getLastErrorHtml(objHandle: HCkEmailBundle; outPropVal: HCkString); stdcall;

function CkEmailBundle__lastErrorHtml(objHandle: HCkEmailBundle): PWideChar; stdcall;

procedure CkEmailBundle_getLastErrorText(objHandle: HCkEmailBundle; outPropVal: HCkString); stdcall;

function CkEmailBundle__lastErrorText(objHandle: HCkEmailBundle): PWideChar; stdcall;

procedure CkEmailBundle_getLastErrorXml(objHandle: HCkEmailBundle; outPropVal: HCkString); stdcall;

function CkEmailBundle__lastErrorXml(objHandle: HCkEmailBundle): PWideChar; stdcall;

function CkEmailBundle_getLastMethodSuccess(objHandle: HCkEmailBundle): wordbool; stdcall;

procedure CkEmailBundle_putLastMethodSuccess(objHandle: HCkEmailBundle; newPropVal: wordbool); stdcall;

function CkEmailBundle_getMessageCount(objHandle: HCkEmailBundle): Integer; stdcall;

function CkEmailBundle_getVerboseLogging(objHandle: HCkEmailBundle): wordbool; stdcall;

procedure CkEmailBundle_putVerboseLogging(objHandle: HCkEmailBundle; newPropVal: wordbool); stdcall;

procedure CkEmailBundle_getVersion(objHandle: HCkEmailBundle; outPropVal: HCkString); stdcall;

function CkEmailBundle__version(objHandle: HCkEmailBundle): PWideChar; stdcall;

function CkEmailBundle_AddEmail(objHandle: HCkEmailBundle; email: HCkEmail): wordbool; stdcall;

function CkEmailBundle_FindByHeader(objHandle: HCkEmailBundle; headerFieldName: PWideChar; headerFieldValue: PWideChar): HCkEmail; stdcall;

function CkEmailBundle_GetEmail(objHandle: HCkEmailBundle; index: Integer): HCkEmail; stdcall;

function CkEmailBundle_GetUidls(objHandle: HCkEmailBundle): HCkStringArray; stdcall;

function CkEmailBundle_GetXml(objHandle: HCkEmailBundle; outStr: HCkString): wordbool; stdcall;

function CkEmailBundle__getXml(objHandle: HCkEmailBundle): PWideChar; stdcall;

function CkEmailBundle_LoadTaskResult(objHandle: HCkEmailBundle; task: HCkTask): wordbool; stdcall;

function CkEmailBundle_LoadXml(objHandle: HCkEmailBundle; filename: PWideChar): wordbool; stdcall;

function CkEmailBundle_LoadXmlString(objHandle: HCkEmailBundle; xmlStr: PWideChar): wordbool; stdcall;

function CkEmailBundle_RemoveEmail(objHandle: HCkEmailBundle; email: HCkEmail): wordbool; stdcall;

function CkEmailBundle_RemoveEmailByIndex(objHandle: HCkEmailBundle; index: Integer): wordbool; stdcall;

function CkEmailBundle_SaveLastError(objHandle: HCkEmailBundle; path: PWideChar): wordbool; stdcall;

function CkEmailBundle_SaveXml(objHandle: HCkEmailBundle; filename: PWideChar): wordbool; stdcall;

procedure CkEmailBundle_SortByDate(objHandle: HCkEmailBundle; ascending: wordbool); stdcall;

procedure CkEmailBundle_SortByRecipient(objHandle: HCkEmailBundle; ascending: wordbool); stdcall;

procedure CkEmailBundle_SortBySender(objHandle: HCkEmailBundle; ascending: wordbool); stdcall;

procedure CkEmailBundle_SortBySubject(objHandle: HCkEmailBundle; ascending: wordbool); stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkEmailBundle_Create; external DLLName;
procedure CkEmailBundle_Dispose; external DLLName;
procedure CkEmailBundle_getDebugLogFilePath; external DLLName;
procedure CkEmailBundle_putDebugLogFilePath; external DLLName;
function CkEmailBundle__debugLogFilePath; external DLLName;
procedure CkEmailBundle_getLastErrorHtml; external DLLName;
function CkEmailBundle__lastErrorHtml; external DLLName;
procedure CkEmailBundle_getLastErrorText; external DLLName;
function CkEmailBundle__lastErrorText; external DLLName;
procedure CkEmailBundle_getLastErrorXml; external DLLName;
function CkEmailBundle__lastErrorXml; external DLLName;
function CkEmailBundle_getLastMethodSuccess; external DLLName;
procedure CkEmailBundle_putLastMethodSuccess; external DLLName;
function CkEmailBundle_getMessageCount; external DLLName;
function CkEmailBundle_getVerboseLogging; external DLLName;
procedure CkEmailBundle_putVerboseLogging; external DLLName;
procedure CkEmailBundle_getVersion; external DLLName;
function CkEmailBundle__version; external DLLName;
function CkEmailBundle_AddEmail; external DLLName;
function CkEmailBundle_FindByHeader; external DLLName;
function CkEmailBundle_GetEmail; external DLLName;
function CkEmailBundle_GetUidls; external DLLName;
function CkEmailBundle_GetXml; external DLLName;
function CkEmailBundle__getXml; external DLLName;
function CkEmailBundle_LoadTaskResult; external DLLName;
function CkEmailBundle_LoadXml; external DLLName;
function CkEmailBundle_LoadXmlString; external DLLName;
function CkEmailBundle_RemoveEmail; external DLLName;
function CkEmailBundle_RemoveEmailByIndex; external DLLName;
function CkEmailBundle_SaveLastError; external DLLName;
function CkEmailBundle_SaveXml; external DLLName;
procedure CkEmailBundle_SortByDate; external DLLName;
procedure CkEmailBundle_SortByRecipient; external DLLName;
procedure CkEmailBundle_SortBySender; external DLLName;
procedure CkEmailBundle_SortBySubject; external DLLName;



end.
