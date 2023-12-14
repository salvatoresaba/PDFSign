unit MessageSet;

interface

type

HCkTask = Pointer;
HCkMessageSet = Pointer;
HCkString = Pointer;


function CkMessageSet_Create: HCkMessageSet; stdcall;
procedure CkMessageSet_Dispose(handle: HCkMessageSet); stdcall;
function CkMessageSet_getCount(objHandle: HCkMessageSet): Integer; stdcall;

function CkMessageSet_getHasUids(objHandle: HCkMessageSet): wordbool; stdcall;

procedure CkMessageSet_putHasUids(objHandle: HCkMessageSet; newPropVal: wordbool); stdcall;

function CkMessageSet_getLastMethodSuccess(objHandle: HCkMessageSet): wordbool; stdcall;

procedure CkMessageSet_putLastMethodSuccess(objHandle: HCkMessageSet; newPropVal: wordbool); stdcall;

function CkMessageSet_ContainsId(objHandle: HCkMessageSet; msgId: LongWord): wordbool; stdcall;

function CkMessageSet_FromCompactString(objHandle: HCkMessageSet; str: PWideChar): wordbool; stdcall;

function CkMessageSet_GetId(objHandle: HCkMessageSet; index: Integer): LongWord; stdcall;

procedure CkMessageSet_InsertId(objHandle: HCkMessageSet; id: LongWord); stdcall;

function CkMessageSet_LoadTaskResult(objHandle: HCkMessageSet; task: HCkTask): wordbool; stdcall;

procedure CkMessageSet_RemoveId(objHandle: HCkMessageSet; id: LongWord); stdcall;

function CkMessageSet_ToCommaSeparatedStr(objHandle: HCkMessageSet; outStr: HCkString): wordbool; stdcall;

function CkMessageSet__toCommaSeparatedStr(objHandle: HCkMessageSet): PWideChar; stdcall;

function CkMessageSet_ToCompactString(objHandle: HCkMessageSet; outStr: HCkString): wordbool; stdcall;

function CkMessageSet__toCompactString(objHandle: HCkMessageSet): PWideChar; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkMessageSet_Create; external DLLName;
procedure CkMessageSet_Dispose; external DLLName;
function CkMessageSet_getCount; external DLLName;
function CkMessageSet_getHasUids; external DLLName;
procedure CkMessageSet_putHasUids; external DLLName;
function CkMessageSet_getLastMethodSuccess; external DLLName;
procedure CkMessageSet_putLastMethodSuccess; external DLLName;
function CkMessageSet_ContainsId; external DLLName;
function CkMessageSet_FromCompactString; external DLLName;
function CkMessageSet_GetId; external DLLName;
procedure CkMessageSet_InsertId; external DLLName;
function CkMessageSet_LoadTaskResult; external DLLName;
procedure CkMessageSet_RemoveId; external DLLName;
function CkMessageSet_ToCommaSeparatedStr; external DLLName;
function CkMessageSet__toCommaSeparatedStr; external DLLName;
function CkMessageSet_ToCompactString; external DLLName;
function CkMessageSet__toCompactString; external DLLName;



end.
