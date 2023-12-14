unit SCard;

interface

type

HCkJsonObject = Pointer;
HCkSCard = Pointer;
HCkString = Pointer;
HCkTask = Pointer;
HCkStringTable = Pointer;
HCkBinData = Pointer;


// Note: The callback functions use the cdecl calling convention, while all other functions use stdcall.
TSCardAbortCheck = function(): Integer; cdecl;
TSCardProgressInfo = procedure(name: PWideChar; value: PWideChar); cdecl;
TSCardPercentDone = function(pctDone: Integer): Integer; cdecl;
TSCardTaskCompleted = procedure(task: HCkTask); cdecl;


function CkSCard_Create: HCkSCard; stdcall;
procedure CkSCard_Dispose(handle: HCkSCard); stdcall;

procedure CkSCard_SetAbortCheck(objHandle: HCkSCard; fn: TSCardAbortCheck) stdcall;
procedure CkSCard_SetProgressInfo(objHandle: HCkSCard; fn: TSCardProgressInfo) stdcall;
procedure CkSCard_SetPercentDone(objHandle: HCkSCard; fn: TSCardPercentDone) stdcall;
procedure CkSCard_SetTaskCompleted(objHandle: HCkSCard; fn: TSCardTaskCompleted) stdcall;
procedure CkSCard_getActiveProtocol(objHandle: HCkSCard; outPropVal: HCkString); stdcall;

function CkSCard__activeProtocol(objHandle: HCkSCard): PWideChar; stdcall;

procedure CkSCard_getCardAtr(objHandle: HCkSCard; outPropVal: HCkString); stdcall;

function CkSCard__cardAtr(objHandle: HCkSCard): PWideChar; stdcall;

procedure CkSCard_getConnectedReader(objHandle: HCkSCard; outPropVal: HCkString); stdcall;

function CkSCard__connectedReader(objHandle: HCkSCard): PWideChar; stdcall;

procedure CkSCard_getContext(objHandle: HCkSCard; outPropVal: HCkString); stdcall;

function CkSCard__context(objHandle: HCkSCard): PWideChar; stdcall;

procedure CkSCard_getDebugLogFilePath(objHandle: HCkSCard; outPropVal: HCkString); stdcall;

procedure CkSCard_putDebugLogFilePath(objHandle: HCkSCard; newPropVal: PWideChar); stdcall;

function CkSCard__debugLogFilePath(objHandle: HCkSCard): PWideChar; stdcall;

procedure CkSCard_getLastErrorHtml(objHandle: HCkSCard; outPropVal: HCkString); stdcall;

function CkSCard__lastErrorHtml(objHandle: HCkSCard): PWideChar; stdcall;

procedure CkSCard_getLastErrorText(objHandle: HCkSCard; outPropVal: HCkString); stdcall;

function CkSCard__lastErrorText(objHandle: HCkSCard): PWideChar; stdcall;

procedure CkSCard_getLastErrorXml(objHandle: HCkSCard; outPropVal: HCkString); stdcall;

function CkSCard__lastErrorXml(objHandle: HCkSCard): PWideChar; stdcall;

function CkSCard_getLastMethodSuccess(objHandle: HCkSCard): wordbool; stdcall;

procedure CkSCard_putLastMethodSuccess(objHandle: HCkSCard; newPropVal: wordbool); stdcall;

procedure CkSCard_getPcscLibPath(objHandle: HCkSCard; outPropVal: HCkString); stdcall;

procedure CkSCard_putPcscLibPath(objHandle: HCkSCard; newPropVal: PWideChar); stdcall;

function CkSCard__pcscLibPath(objHandle: HCkSCard): PWideChar; stdcall;

procedure CkSCard_getReaderStatus(objHandle: HCkSCard; outPropVal: HCkString); stdcall;

function CkSCard__readerStatus(objHandle: HCkSCard): PWideChar; stdcall;

procedure CkSCard_getScardError(objHandle: HCkSCard; outPropVal: HCkString); stdcall;

function CkSCard__scardError(objHandle: HCkSCard): PWideChar; stdcall;

function CkSCard_getVerboseLogging(objHandle: HCkSCard): wordbool; stdcall;

procedure CkSCard_putVerboseLogging(objHandle: HCkSCard; newPropVal: wordbool); stdcall;

procedure CkSCard_getVersion(objHandle: HCkSCard; outPropVal: HCkString); stdcall;

function CkSCard__version(objHandle: HCkSCard): PWideChar; stdcall;

function CkSCard_BeginTransaction(objHandle: HCkSCard): wordbool; stdcall;

function CkSCard_CheckStatus(objHandle: HCkSCard): wordbool; stdcall;

function CkSCard_Connect(objHandle: HCkSCard; reader: PWideChar; shareMode: PWideChar; preferredProtocol: PWideChar): wordbool; stdcall;

function CkSCard_Disconnect(objHandle: HCkSCard; disposition: PWideChar): wordbool; stdcall;

function CkSCard_EndTransaction(objHandle: HCkSCard; disposition: PWideChar): wordbool; stdcall;

function CkSCard_EstablishContext(objHandle: HCkSCard; scope: PWideChar): wordbool; stdcall;

function CkSCard_FindSmartcards(objHandle: HCkSCard; json: HCkJsonObject): wordbool; stdcall;

function CkSCard_GetAttrib(objHandle: HCkSCard; attr: PWideChar; bd: HCkBinData): wordbool; stdcall;

function CkSCard_GetAttribStr(objHandle: HCkSCard; attr: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkSCard__getAttribStr(objHandle: HCkSCard; attr: PWideChar): PWideChar; stdcall;

function CkSCard_GetAttribUint(objHandle: HCkSCard; attr: PWideChar): LongWord; stdcall;

function CkSCard_GetStatusChange(objHandle: HCkSCard; maxWaitMs: Integer; stReaderNames: HCkStringTable; json: HCkJsonObject): wordbool; stdcall;

function CkSCard_GetStatusChangeAsync(objHandle: HCkSCard; maxWaitMs: Integer; stReaderNames: HCkStringTable; json: HCkJsonObject): HCkTask; stdcall;

function CkSCard_GetStatusChangeCancel(objHandle: HCkSCard): wordbool; stdcall;

function CkSCard_ListReaderGroups(objHandle: HCkSCard; readerGroups: HCkStringTable): wordbool; stdcall;

function CkSCard_ListReaders(objHandle: HCkSCard; st: HCkStringTable): wordbool; stdcall;

function CkSCard_Reconnect(objHandle: HCkSCard; shareMode: PWideChar; preferredProtocol: PWideChar; action: PWideChar): wordbool; stdcall;

function CkSCard_ReleaseContext(objHandle: HCkSCard): wordbool; stdcall;

function CkSCard_SaveLastError(objHandle: HCkSCard; path: PWideChar): wordbool; stdcall;

function CkSCard_SendControl(objHandle: HCkSCard; controlCode: LongWord; bdSend: HCkBinData; bdRecv: HCkBinData): wordbool; stdcall;

function CkSCard_SendControlHex(objHandle: HCkSCard; controlCode: LongWord; sendData: PWideChar; bdRecv: HCkBinData): wordbool; stdcall;

function CkSCard_Transmit(objHandle: HCkSCard; protocol: PWideChar; bdSend: HCkBinData; bdRecv: HCkBinData; maxRecvLen: Integer): wordbool; stdcall;

function CkSCard_TransmitHex(objHandle: HCkSCard; protocol: PWideChar; apduHex: PWideChar; bdRecv: HCkBinData; maxRecvLen: Integer): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkSCard_Create; external DLLName;
procedure CkSCard_Dispose; external DLLName;

procedure CkSCard_SetAbortCheck; external DLLName;
procedure CkSCard_SetProgressInfo; external DLLName;
procedure CkSCard_SetPercentDone; external DLLName;
procedure CkSCard_SetTaskCompleted; external DLLName;
procedure CkSCard_getActiveProtocol; external DLLName;
function CkSCard__activeProtocol; external DLLName;
procedure CkSCard_getCardAtr; external DLLName;
function CkSCard__cardAtr; external DLLName;
procedure CkSCard_getConnectedReader; external DLLName;
function CkSCard__connectedReader; external DLLName;
procedure CkSCard_getContext; external DLLName;
function CkSCard__context; external DLLName;
procedure CkSCard_getDebugLogFilePath; external DLLName;
procedure CkSCard_putDebugLogFilePath; external DLLName;
function CkSCard__debugLogFilePath; external DLLName;
procedure CkSCard_getLastErrorHtml; external DLLName;
function CkSCard__lastErrorHtml; external DLLName;
procedure CkSCard_getLastErrorText; external DLLName;
function CkSCard__lastErrorText; external DLLName;
procedure CkSCard_getLastErrorXml; external DLLName;
function CkSCard__lastErrorXml; external DLLName;
function CkSCard_getLastMethodSuccess; external DLLName;
procedure CkSCard_putLastMethodSuccess; external DLLName;
procedure CkSCard_getPcscLibPath; external DLLName;
procedure CkSCard_putPcscLibPath; external DLLName;
function CkSCard__pcscLibPath; external DLLName;
procedure CkSCard_getReaderStatus; external DLLName;
function CkSCard__readerStatus; external DLLName;
procedure CkSCard_getScardError; external DLLName;
function CkSCard__scardError; external DLLName;
function CkSCard_getVerboseLogging; external DLLName;
procedure CkSCard_putVerboseLogging; external DLLName;
procedure CkSCard_getVersion; external DLLName;
function CkSCard__version; external DLLName;
function CkSCard_BeginTransaction; external DLLName;
function CkSCard_CheckStatus; external DLLName;
function CkSCard_Connect; external DLLName;
function CkSCard_Disconnect; external DLLName;
function CkSCard_EndTransaction; external DLLName;
function CkSCard_EstablishContext; external DLLName;
function CkSCard_FindSmartcards; external DLLName;
function CkSCard_GetAttrib; external DLLName;
function CkSCard_GetAttribStr; external DLLName;
function CkSCard__getAttribStr; external DLLName;
function CkSCard_GetAttribUint; external DLLName;
function CkSCard_GetStatusChange; external DLLName;
function CkSCard_GetStatusChangeAsync; external DLLName;
function CkSCard_GetStatusChangeCancel; external DLLName;
function CkSCard_ListReaderGroups; external DLLName;
function CkSCard_ListReaders; external DLLName;
function CkSCard_Reconnect; external DLLName;
function CkSCard_ReleaseContext; external DLLName;
function CkSCard_SaveLastError; external DLLName;
function CkSCard_SendControl; external DLLName;
function CkSCard_SendControlHex; external DLLName;
function CkSCard_Transmit; external DLLName;
function CkSCard_TransmitHex; external DLLName;



end.
