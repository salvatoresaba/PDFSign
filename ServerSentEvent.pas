unit ServerSentEvent;

interface

type

HCkString = Pointer;
HCkServerSentEvent = Pointer;


function CkServerSentEvent_Create: HCkServerSentEvent; stdcall;
procedure CkServerSentEvent_Dispose(handle: HCkServerSentEvent); stdcall;
procedure CkServerSentEvent_getData(objHandle: HCkServerSentEvent; outPropVal: HCkString); stdcall;

function CkServerSentEvent__data(objHandle: HCkServerSentEvent): PWideChar; stdcall;

procedure CkServerSentEvent_getEventName(objHandle: HCkServerSentEvent; outPropVal: HCkString); stdcall;

function CkServerSentEvent__eventName(objHandle: HCkServerSentEvent): PWideChar; stdcall;

procedure CkServerSentEvent_getLastEventId(objHandle: HCkServerSentEvent; outPropVal: HCkString); stdcall;

function CkServerSentEvent__lastEventId(objHandle: HCkServerSentEvent): PWideChar; stdcall;

function CkServerSentEvent_getLastMethodSuccess(objHandle: HCkServerSentEvent): wordbool; stdcall;

procedure CkServerSentEvent_putLastMethodSuccess(objHandle: HCkServerSentEvent; newPropVal: wordbool); stdcall;

function CkServerSentEvent_getRetry(objHandle: HCkServerSentEvent): Integer; stdcall;

function CkServerSentEvent_LoadEvent(objHandle: HCkServerSentEvent; eventText: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkServerSentEvent_Create; external DLLName;
procedure CkServerSentEvent_Dispose; external DLLName;
procedure CkServerSentEvent_getData; external DLLName;
function CkServerSentEvent__data; external DLLName;
procedure CkServerSentEvent_getEventName; external DLLName;
function CkServerSentEvent__eventName; external DLLName;
procedure CkServerSentEvent_getLastEventId; external DLLName;
function CkServerSentEvent__lastEventId; external DLLName;
function CkServerSentEvent_getLastMethodSuccess; external DLLName;
procedure CkServerSentEvent_putLastMethodSuccess; external DLLName;
function CkServerSentEvent_getRetry; external DLLName;
function CkServerSentEvent_LoadEvent; external DLLName;



end.
