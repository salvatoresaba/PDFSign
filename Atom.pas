unit Atom;

interface

type

HCkAtom = Pointer;
HCkTask = Pointer;
HCkDateTime = Pointer;
HCkString = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TAtomAbortCheck = function(): Integer; cdecl;
TAtomProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TAtomPercentDone = function(pctDone: Integer): Integer; cdecl;
TAtomTaskCompleted = procedure(task: HCkTask); cdecl;


function CkAtom_Create: HCkAtom; stdcall;
procedure CkAtom_Dispose(handle: HCkAtom); stdcall;

procedure CkAtom_SetAbortCheck(objHandle: HCkAtom; fn: TAtomAbortCheck) stdcall;
procedure CkAtom_SetProgressInfo(objHandle: HCkAtom; fn: TAtomProgressInfo) stdcall;
procedure CkAtom_SetPercentDone(objHandle: HCkAtom; fn: TAtomPercentDone) stdcall;
procedure CkAtom_SetTaskCompleted(objHandle: HCkAtom; fn: TAtomTaskCompleted) stdcall;
function CkAtom_getAbortCurrent(objHandle: HCkAtom): wordbool; stdcall;

procedure CkAtom_getDebugLogFilePath(objHandle: HCkAtom; outPropVal: HCkString); stdcall;

procedure CkAtom_putDebugLogFilePath(objHandle: HCkAtom; newPropVal: PWideChar); stdcall;

function CkAtom__debugLogFilePath(objHandle: HCkAtom): PWideChar; stdcall;

procedure CkAtom_getLastErrorHtml(objHandle: HCkAtom; outPropVal: HCkString); stdcall;

function CkAtom__lastErrorHtml(objHandle: HCkAtom): PWideChar; stdcall;

procedure CkAtom_getLastErrorText(objHandle: HCkAtom; outPropVal: HCkString); stdcall;

function CkAtom__lastErrorText(objHandle: HCkAtom): PWideChar; stdcall;

procedure CkAtom_getLastErrorXml(objHandle: HCkAtom; outPropVal: HCkString); stdcall;

function CkAtom__lastErrorXml(objHandle: HCkAtom): PWideChar; stdcall;

function CkAtom_getLastMethodSuccess(objHandle: HCkAtom): wordbool; stdcall;

procedure CkAtom_putLastMethodSuccess(objHandle: HCkAtom; newPropVal: wordbool); stdcall;

function CkAtom_getNumEntries(objHandle: HCkAtom): Integer; stdcall;

function CkAtom_getVerboseLogging(objHandle: HCkAtom): wordbool; stdcall;

procedure CkAtom_putVerboseLogging(objHandle: HCkAtom; newPropVal: wordbool); stdcall;

procedure CkAtom_getVersion(objHandle: HCkAtom; outPropVal: HCkString); stdcall;

function CkAtom__version(objHandle: HCkAtom): PWideChar; stdcall;

function CkAtom_AddElement(objHandle: HCkAtom; tag: PWideChar; value: PWideChar): Integer; stdcall;

function CkAtom_AddElementDateStr(objHandle: HCkAtom; tag: PWideChar; dateTimeStr: PWideChar): Integer; stdcall;

function CkAtom_AddElementDt(objHandle: HCkAtom; tag: PWideChar; dateTime: HCkDateTime): Integer; stdcall;

function CkAtom_AddElementHtml(objHandle: HCkAtom; tag: PWideChar; htmlStr: PWideChar): Integer; stdcall;

function CkAtom_AddElementXHtml(objHandle: HCkAtom; tag: PWideChar; xmlStr: PWideChar): Integer; stdcall;

function CkAtom_AddElementXml(objHandle: HCkAtom; tag: PWideChar; xmlStr: PWideChar): Integer; stdcall;

procedure CkAtom_AddEntry(objHandle: HCkAtom; xmlStr: PWideChar); stdcall;

procedure CkAtom_AddLink(objHandle: HCkAtom; rel: PWideChar; href: PWideChar; title: PWideChar; typ: PWideChar); stdcall;

procedure CkAtom_AddPerson(objHandle: HCkAtom; tag: PWideChar; name: PWideChar; uri: PWideChar; email: PWideChar); stdcall;

procedure CkAtom_DeleteElement(objHandle: HCkAtom; tag: PWideChar; index: Integer); stdcall;

procedure CkAtom_DeleteElementAttr(objHandle: HCkAtom; tag: PWideChar; index: Integer; attrName: PWideChar); stdcall;

procedure CkAtom_DeletePerson(objHandle: HCkAtom; tag: PWideChar; index: Integer); stdcall;

function CkAtom_DownloadAtom(objHandle: HCkAtom; url: PWideChar): wordbool; stdcall;

function CkAtom_DownloadAtomAsync(objHandle: HCkAtom; url: PWideChar): HCkTask; stdcall;

function CkAtom_GetElement(objHandle: HCkAtom; tag: PWideChar; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkAtom__getElement(objHandle: HCkAtom; tag: PWideChar; index: Integer): PWideChar; stdcall;

function CkAtom_GetElementAttr(objHandle: HCkAtom; tag: PWideChar; index: Integer; attrName: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkAtom__getElementAttr(objHandle: HCkAtom; tag: PWideChar; index: Integer; attrName: PWideChar): PWideChar; stdcall;

function CkAtom_GetElementCount(objHandle: HCkAtom; tag: PWideChar): Integer; stdcall;

function CkAtom_GetElementDateStr(objHandle: HCkAtom; tag: PWideChar; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkAtom__getElementDateStr(objHandle: HCkAtom; tag: PWideChar; index: Integer): PWideChar; stdcall;

function CkAtom_GetElementDt(objHandle: HCkAtom; tag: PWideChar; index: Integer): HCkDateTime; stdcall;

function CkAtom_GetEntry(objHandle: HCkAtom; index: Integer): HCkAtom; stdcall;

function CkAtom_GetLinkHref(objHandle: HCkAtom; relName: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkAtom__getLinkHref(objHandle: HCkAtom; relName: PWideChar): PWideChar; stdcall;

function CkAtom_GetPersonInfo(objHandle: HCkAtom; tag: PWideChar; index: Integer; tag2: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkAtom__getPersonInfo(objHandle: HCkAtom; tag: PWideChar; index: Integer; tag2: PWideChar): PWideChar; stdcall;

function CkAtom_GetTopAttr(objHandle: HCkAtom; attrName: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkAtom__getTopAttr(objHandle: HCkAtom; attrName: PWideChar): PWideChar; stdcall;

function CkAtom_HasElement(objHandle: HCkAtom; tag: PWideChar): wordbool; stdcall;

function CkAtom_LoadTaskCaller(objHandle: HCkAtom; task: HCkTask): wordbool; stdcall;

function CkAtom_LoadXml(objHandle: HCkAtom; xmlStr: PWideChar): wordbool; stdcall;

procedure CkAtom_NewEntry(objHandle: HCkAtom); stdcall;

procedure CkAtom_NewFeed(objHandle: HCkAtom); stdcall;

function CkAtom_SaveLastError(objHandle: HCkAtom; path: PWideChar): wordbool; stdcall;

procedure CkAtom_SetElementAttr(objHandle: HCkAtom; tag: PWideChar; index: Integer; attrName: PWideChar; attrValue: PWideChar); stdcall;

procedure CkAtom_SetTopAttr(objHandle: HCkAtom; attrName: PWideChar; value: PWideChar); stdcall;

function CkAtom_ToXmlString(objHandle: HCkAtom; outStr: HCkString): wordbool; stdcall;

function CkAtom__toXmlString(objHandle: HCkAtom): PWideChar; stdcall;

procedure CkAtom_UpdateElement(objHandle: HCkAtom; tag: PWideChar; index: Integer; value: PWideChar); stdcall;

procedure CkAtom_UpdateElementDateStr(objHandle: HCkAtom; tag: PWideChar; index: Integer; dateTimeStr: PWideChar); stdcall;

procedure CkAtom_UpdateElementDt(objHandle: HCkAtom; tag: PWideChar; index: Integer; dateTime: HCkDateTime); stdcall;

procedure CkAtom_UpdateElementHtml(objHandle: HCkAtom; tag: PWideChar; index: Integer; htmlStr: PWideChar); stdcall;

procedure CkAtom_UpdateElementXHtml(objHandle: HCkAtom; tag: PWideChar; index: Integer; xmlStr: PWideChar); stdcall;

procedure CkAtom_UpdateElementXml(objHandle: HCkAtom; tag: PWideChar; index: Integer; xmlStr: PWideChar); stdcall;

procedure CkAtom_UpdatePerson(objHandle: HCkAtom; tag: PWideChar; index: Integer; name: PWideChar; uri: PWideChar; email: PWideChar); stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkAtom_Create; external DLLName;
procedure CkAtom_Dispose; external DLLName;

procedure CkAtom_SetAbortCheck; external DLLName;
procedure CkAtom_SetProgressInfo; external DLLName;
procedure CkAtom_SetPercentDone; external DLLName;
procedure CkAtom_SetTaskCompleted; external DLLName;
function CkAtom_getAbortCurrent; external DLLName;
procedure CkAtom_getDebugLogFilePath; external DLLName;
procedure CkAtom_putDebugLogFilePath; external DLLName;
function CkAtom__debugLogFilePath; external DLLName;
procedure CkAtom_getLastErrorHtml; external DLLName;
function CkAtom__lastErrorHtml; external DLLName;
procedure CkAtom_getLastErrorText; external DLLName;
function CkAtom__lastErrorText; external DLLName;
procedure CkAtom_getLastErrorXml; external DLLName;
function CkAtom__lastErrorXml; external DLLName;
function CkAtom_getLastMethodSuccess; external DLLName;
procedure CkAtom_putLastMethodSuccess; external DLLName;
function CkAtom_getNumEntries; external DLLName;
function CkAtom_getVerboseLogging; external DLLName;
procedure CkAtom_putVerboseLogging; external DLLName;
procedure CkAtom_getVersion; external DLLName;
function CkAtom__version; external DLLName;
function CkAtom_AddElement; external DLLName;
function CkAtom_AddElementDateStr; external DLLName;
function CkAtom_AddElementDt; external DLLName;
function CkAtom_AddElementHtml; external DLLName;
function CkAtom_AddElementXHtml; external DLLName;
function CkAtom_AddElementXml; external DLLName;
procedure CkAtom_AddEntry; external DLLName;
procedure CkAtom_AddLink; external DLLName;
procedure CkAtom_AddPerson; external DLLName;
procedure CkAtom_DeleteElement; external DLLName;
procedure CkAtom_DeleteElementAttr; external DLLName;
procedure CkAtom_DeletePerson; external DLLName;
function CkAtom_DownloadAtom; external DLLName;
function CkAtom_DownloadAtomAsync; external DLLName;
function CkAtom_GetElement; external DLLName;
function CkAtom__getElement; external DLLName;
function CkAtom_GetElementAttr; external DLLName;
function CkAtom__getElementAttr; external DLLName;
function CkAtom_GetElementCount; external DLLName;
function CkAtom_GetElementDateStr; external DLLName;
function CkAtom__getElementDateStr; external DLLName;
function CkAtom_GetElementDt; external DLLName;
function CkAtom_GetEntry; external DLLName;
function CkAtom_GetLinkHref; external DLLName;
function CkAtom__getLinkHref; external DLLName;
function CkAtom_GetPersonInfo; external DLLName;
function CkAtom__getPersonInfo; external DLLName;
function CkAtom_GetTopAttr; external DLLName;
function CkAtom__getTopAttr; external DLLName;
function CkAtom_HasElement; external DLLName;
function CkAtom_LoadTaskCaller; external DLLName;
function CkAtom_LoadXml; external DLLName;
procedure CkAtom_NewEntry; external DLLName;
procedure CkAtom_NewFeed; external DLLName;
function CkAtom_SaveLastError; external DLLName;
procedure CkAtom_SetElementAttr; external DLLName;
procedure CkAtom_SetTopAttr; external DLLName;
function CkAtom_ToXmlString; external DLLName;
function CkAtom__toXmlString; external DLLName;
procedure CkAtom_UpdateElement; external DLLName;
procedure CkAtom_UpdateElementDateStr; external DLLName;
procedure CkAtom_UpdateElementDt; external DLLName;
procedure CkAtom_UpdateElementHtml; external DLLName;
procedure CkAtom_UpdateElementXHtml; external DLLName;
procedure CkAtom_UpdateElementXml; external DLLName;
procedure CkAtom_UpdatePerson; external DLLName;



end.
