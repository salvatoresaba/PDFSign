unit Rss;

interface

type

HCkTask = Pointer;
HCkRss = Pointer;
HCkString = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TRssAbortCheck = function(): Integer; cdecl;
TRssProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TRssPercentDone = function(pctDone: Integer): Integer; cdecl;
TRssTaskCompleted = procedure(task: HCkTask); cdecl;


function CkRss_Create: HCkRss; stdcall;
procedure CkRss_Dispose(handle: HCkRss); stdcall;

procedure CkRss_SetAbortCheck(objHandle: HCkRss; fn: TRssAbortCheck) stdcall;
procedure CkRss_SetProgressInfo(objHandle: HCkRss; fn: TRssProgressInfo) stdcall;
procedure CkRss_SetPercentDone(objHandle: HCkRss; fn: TRssPercentDone) stdcall;
procedure CkRss_SetTaskCompleted(objHandle: HCkRss; fn: TRssTaskCompleted) stdcall;
procedure CkRss_getDebugLogFilePath(objHandle: HCkRss; outPropVal: HCkString); stdcall;

procedure CkRss_putDebugLogFilePath(objHandle: HCkRss; newPropVal: PWideChar); stdcall;

function CkRss__debugLogFilePath(objHandle: HCkRss): PWideChar; stdcall;

procedure CkRss_getLastErrorHtml(objHandle: HCkRss; outPropVal: HCkString); stdcall;

function CkRss__lastErrorHtml(objHandle: HCkRss): PWideChar; stdcall;

procedure CkRss_getLastErrorText(objHandle: HCkRss; outPropVal: HCkString); stdcall;

function CkRss__lastErrorText(objHandle: HCkRss): PWideChar; stdcall;

procedure CkRss_getLastErrorXml(objHandle: HCkRss; outPropVal: HCkString); stdcall;

function CkRss__lastErrorXml(objHandle: HCkRss): PWideChar; stdcall;

function CkRss_getLastMethodSuccess(objHandle: HCkRss): wordbool; stdcall;

procedure CkRss_putLastMethodSuccess(objHandle: HCkRss; newPropVal: wordbool); stdcall;

function CkRss_getNumChannels(objHandle: HCkRss): Integer; stdcall;

function CkRss_getNumItems(objHandle: HCkRss): Integer; stdcall;

function CkRss_getVerboseLogging(objHandle: HCkRss): wordbool; stdcall;

procedure CkRss_putVerboseLogging(objHandle: HCkRss; newPropVal: wordbool); stdcall;

procedure CkRss_getVersion(objHandle: HCkRss; outPropVal: HCkString); stdcall;

function CkRss__version(objHandle: HCkRss): PWideChar; stdcall;

function CkRss_AddNewChannel(objHandle: HCkRss): HCkRss; stdcall;

function CkRss_AddNewImage(objHandle: HCkRss): HCkRss; stdcall;

function CkRss_AddNewItem(objHandle: HCkRss): HCkRss; stdcall;

function CkRss_DownloadRss(objHandle: HCkRss; url: PWideChar): wordbool; stdcall;

function CkRss_DownloadRssAsync(objHandle: HCkRss; url: PWideChar): HCkTask; stdcall;

function CkRss_GetAttr(objHandle: HCkRss; tag: PWideChar; attrName: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkRss__getAttr(objHandle: HCkRss; tag: PWideChar; attrName: PWideChar): PWideChar; stdcall;

function CkRss_GetChannel(objHandle: HCkRss; index: Integer): HCkRss; stdcall;

function CkRss_GetCount(objHandle: HCkRss; tag: PWideChar): Integer; stdcall;

function CkRss_GetDateStr(objHandle: HCkRss; tag: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkRss__getDateStr(objHandle: HCkRss; tag: PWideChar): PWideChar; stdcall;

function CkRss_GetImage(objHandle: HCkRss): HCkRss; stdcall;

function CkRss_GetInt(objHandle: HCkRss; tag: PWideChar): Integer; stdcall;

function CkRss_GetItem(objHandle: HCkRss; index: Integer): HCkRss; stdcall;

function CkRss_GetString(objHandle: HCkRss; tag: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkRss__getString(objHandle: HCkRss; tag: PWideChar): PWideChar; stdcall;

function CkRss_LoadRssFile(objHandle: HCkRss; filePath: PWideChar): wordbool; stdcall;

function CkRss_LoadRssString(objHandle: HCkRss; rssString: PWideChar): wordbool; stdcall;

function CkRss_LoadTaskCaller(objHandle: HCkRss; task: HCkTask): wordbool; stdcall;

function CkRss_MGetAttr(objHandle: HCkRss; tag: PWideChar; index: Integer; attrName: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkRss__mGetAttr(objHandle: HCkRss; tag: PWideChar; index: Integer; attrName: PWideChar): PWideChar; stdcall;

function CkRss_MGetString(objHandle: HCkRss; tag: PWideChar; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkRss__mGetString(objHandle: HCkRss; tag: PWideChar; index: Integer): PWideChar; stdcall;

function CkRss_MSetAttr(objHandle: HCkRss; tag: PWideChar; idx: Integer; attrName: PWideChar; value: PWideChar): wordbool; stdcall;

function CkRss_MSetString(objHandle: HCkRss; tag: PWideChar; idx: Integer; value: PWideChar): wordbool; stdcall;

procedure CkRss_NewRss(objHandle: HCkRss); stdcall;

procedure CkRss_Remove(objHandle: HCkRss; tag: PWideChar); stdcall;

function CkRss_SaveLastError(objHandle: HCkRss; path: PWideChar): wordbool; stdcall;

procedure CkRss_SetAttr(objHandle: HCkRss; tag: PWideChar; attrName: PWideChar; value: PWideChar); stdcall;

procedure CkRss_SetDateNow(objHandle: HCkRss; tag: PWideChar); stdcall;

procedure CkRss_SetDateStr(objHandle: HCkRss; tag: PWideChar; dateTimeStr: PWideChar); stdcall;

procedure CkRss_SetInt(objHandle: HCkRss; tag: PWideChar; value: Integer); stdcall;

procedure CkRss_SetString(objHandle: HCkRss; tag: PWideChar; value: PWideChar); stdcall;

function CkRss_ToXmlString(objHandle: HCkRss; outStr: HCkString): wordbool; stdcall;

function CkRss__toXmlString(objHandle: HCkRss): PWideChar; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkRss_Create; external DLLName;
procedure CkRss_Dispose; external DLLName;

procedure CkRss_SetAbortCheck; external DLLName;
procedure CkRss_SetProgressInfo; external DLLName;
procedure CkRss_SetPercentDone; external DLLName;
procedure CkRss_SetTaskCompleted; external DLLName;
procedure CkRss_getDebugLogFilePath; external DLLName;
procedure CkRss_putDebugLogFilePath; external DLLName;
function CkRss__debugLogFilePath; external DLLName;
procedure CkRss_getLastErrorHtml; external DLLName;
function CkRss__lastErrorHtml; external DLLName;
procedure CkRss_getLastErrorText; external DLLName;
function CkRss__lastErrorText; external DLLName;
procedure CkRss_getLastErrorXml; external DLLName;
function CkRss__lastErrorXml; external DLLName;
function CkRss_getLastMethodSuccess; external DLLName;
procedure CkRss_putLastMethodSuccess; external DLLName;
function CkRss_getNumChannels; external DLLName;
function CkRss_getNumItems; external DLLName;
function CkRss_getVerboseLogging; external DLLName;
procedure CkRss_putVerboseLogging; external DLLName;
procedure CkRss_getVersion; external DLLName;
function CkRss__version; external DLLName;
function CkRss_AddNewChannel; external DLLName;
function CkRss_AddNewImage; external DLLName;
function CkRss_AddNewItem; external DLLName;
function CkRss_DownloadRss; external DLLName;
function CkRss_DownloadRssAsync; external DLLName;
function CkRss_GetAttr; external DLLName;
function CkRss__getAttr; external DLLName;
function CkRss_GetChannel; external DLLName;
function CkRss_GetCount; external DLLName;
function CkRss_GetDateStr; external DLLName;
function CkRss__getDateStr; external DLLName;
function CkRss_GetImage; external DLLName;
function CkRss_GetInt; external DLLName;
function CkRss_GetItem; external DLLName;
function CkRss_GetString; external DLLName;
function CkRss__getString; external DLLName;
function CkRss_LoadRssFile; external DLLName;
function CkRss_LoadRssString; external DLLName;
function CkRss_LoadTaskCaller; external DLLName;
function CkRss_MGetAttr; external DLLName;
function CkRss__mGetAttr; external DLLName;
function CkRss_MGetString; external DLLName;
function CkRss__mGetString; external DLLName;
function CkRss_MSetAttr; external DLLName;
function CkRss_MSetString; external DLLName;
procedure CkRss_NewRss; external DLLName;
procedure CkRss_Remove; external DLLName;
function CkRss_SaveLastError; external DLLName;
procedure CkRss_SetAttr; external DLLName;
procedure CkRss_SetDateNow; external DLLName;
procedure CkRss_SetDateStr; external DLLName;
procedure CkRss_SetInt; external DLLName;
procedure CkRss_SetString; external DLLName;
function CkRss_ToXmlString; external DLLName;
function CkRss__toXmlString; external DLLName;



end.
