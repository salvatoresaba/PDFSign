unit Mailboxes;

interface

type

HCkTask = Pointer;
HCkMailboxes = Pointer;
HCkString = Pointer;


function CkMailboxes_Create: HCkMailboxes; stdcall;
procedure CkMailboxes_Dispose(handle: HCkMailboxes); stdcall;
function CkMailboxes_getCount(objHandle: HCkMailboxes): Integer; stdcall;

function CkMailboxes_getLastMethodSuccess(objHandle: HCkMailboxes): wordbool; stdcall;

procedure CkMailboxes_putLastMethodSuccess(objHandle: HCkMailboxes; newPropVal: wordbool); stdcall;

function CkMailboxes_GetFlags(objHandle: HCkMailboxes; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkMailboxes__getFlags(objHandle: HCkMailboxes; index: Integer): PWideChar; stdcall;

function CkMailboxes_GetMailboxIndex(objHandle: HCkMailboxes; mbxName: PWideChar): Integer; stdcall;

function CkMailboxes_GetName(objHandle: HCkMailboxes; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkMailboxes__getName(objHandle: HCkMailboxes; index: Integer): PWideChar; stdcall;

function CkMailboxes_GetNthFlag(objHandle: HCkMailboxes; index: Integer; flagIndex: Integer; outStr: HCkString): wordbool; stdcall;

function CkMailboxes__getNthFlag(objHandle: HCkMailboxes; index: Integer; flagIndex: Integer): PWideChar; stdcall;

function CkMailboxes_GetNumFlags(objHandle: HCkMailboxes; index: Integer): Integer; stdcall;

function CkMailboxes_HasFlag(objHandle: HCkMailboxes; index: Integer; flagName: PWideChar): wordbool; stdcall;

function CkMailboxes_HasInferiors(objHandle: HCkMailboxes; index: Integer): wordbool; stdcall;

function CkMailboxes_IsMarked(objHandle: HCkMailboxes; index: Integer): wordbool; stdcall;

function CkMailboxes_IsSelectable(objHandle: HCkMailboxes; index: Integer): wordbool; stdcall;

function CkMailboxes_LoadTaskResult(objHandle: HCkMailboxes; task: HCkTask): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkMailboxes_Create; external DLLName;
procedure CkMailboxes_Dispose; external DLLName;
function CkMailboxes_getCount; external DLLName;
function CkMailboxes_getLastMethodSuccess; external DLLName;
procedure CkMailboxes_putLastMethodSuccess; external DLLName;
function CkMailboxes_GetFlags; external DLLName;
function CkMailboxes__getFlags; external DLLName;
function CkMailboxes_GetMailboxIndex; external DLLName;
function CkMailboxes_GetName; external DLLName;
function CkMailboxes__getName; external DLLName;
function CkMailboxes_GetNthFlag; external DLLName;
function CkMailboxes__getNthFlag; external DLLName;
function CkMailboxes_GetNumFlags; external DLLName;
function CkMailboxes_HasFlag; external DLLName;
function CkMailboxes_HasInferiors; external DLLName;
function CkMailboxes_IsMarked; external DLLName;
function CkMailboxes_IsSelectable; external DLLName;
function CkMailboxes_LoadTaskResult; external DLLName;



end.
