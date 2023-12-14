unit SecureString;

interface

type

HCkStringBuilder = Pointer;
HCkSecureString = Pointer;
HCkString = Pointer;


function CkSecureString_Create: HCkSecureString; stdcall;
procedure CkSecureString_Dispose(handle: HCkSecureString); stdcall;
function CkSecureString_getLastMethodSuccess(objHandle: HCkSecureString): wordbool; stdcall;

procedure CkSecureString_putLastMethodSuccess(objHandle: HCkSecureString; newPropVal: wordbool); stdcall;

procedure CkSecureString_getMaintainHash(objHandle: HCkSecureString; outPropVal: HCkString); stdcall;

procedure CkSecureString_putMaintainHash(objHandle: HCkSecureString; newPropVal: PWideChar); stdcall;

function CkSecureString__maintainHash(objHandle: HCkSecureString): PWideChar; stdcall;

function CkSecureString_getReadOnly(objHandle: HCkSecureString): wordbool; stdcall;

procedure CkSecureString_putReadOnly(objHandle: HCkSecureString; newPropVal: wordbool); stdcall;

function CkSecureString_Access(objHandle: HCkSecureString; outStr: HCkString): wordbool; stdcall;

function CkSecureString__access(objHandle: HCkSecureString): PWideChar; stdcall;

function CkSecureString_Append(objHandle: HCkSecureString; str: PWideChar): wordbool; stdcall;

function CkSecureString_AppendSb(objHandle: HCkSecureString; sb: HCkStringBuilder): wordbool; stdcall;

function CkSecureString_AppendSecure(objHandle: HCkSecureString; secStr: HCkSecureString): wordbool; stdcall;

function CkSecureString_HashVal(objHandle: HCkSecureString; encoding: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkSecureString__hashVal(objHandle: HCkSecureString; encoding: PWideChar): PWideChar; stdcall;

function CkSecureString_LoadFile(objHandle: HCkSecureString; path: PWideChar; charset: PWideChar): wordbool; stdcall;

function CkSecureString_SecStrEquals(objHandle: HCkSecureString; secStr: HCkSecureString): wordbool; stdcall;

function CkSecureString_VerifyHash(objHandle: HCkSecureString; hashVal: PWideChar; encoding: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkSecureString_Create; external DLLName;
procedure CkSecureString_Dispose; external DLLName;
function CkSecureString_getLastMethodSuccess; external DLLName;
procedure CkSecureString_putLastMethodSuccess; external DLLName;
procedure CkSecureString_getMaintainHash; external DLLName;
procedure CkSecureString_putMaintainHash; external DLLName;
function CkSecureString__maintainHash; external DLLName;
function CkSecureString_getReadOnly; external DLLName;
procedure CkSecureString_putReadOnly; external DLLName;
function CkSecureString_Access; external DLLName;
function CkSecureString__access; external DLLName;
function CkSecureString_Append; external DLLName;
function CkSecureString_AppendSb; external DLLName;
function CkSecureString_AppendSecure; external DLLName;
function CkSecureString_HashVal; external DLLName;
function CkSecureString__hashVal; external DLLName;
function CkSecureString_LoadFile; external DLLName;
function CkSecureString_SecStrEquals; external DLLName;
function CkSecureString_VerifyHash; external DLLName;



end.
