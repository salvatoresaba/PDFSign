unit Url;

interface

type

HCkUrl = Pointer;
HCkString = Pointer;


function CkUrl_Create: HCkUrl; stdcall;
procedure CkUrl_Dispose(handle: HCkUrl); stdcall;
procedure CkUrl_getFrag(objHandle: HCkUrl; outPropVal: HCkString); stdcall;

function CkUrl__frag(objHandle: HCkUrl): PWideChar; stdcall;

procedure CkUrl_getHost(objHandle: HCkUrl; outPropVal: HCkString); stdcall;

function CkUrl__host(objHandle: HCkUrl): PWideChar; stdcall;

procedure CkUrl_getHostType(objHandle: HCkUrl; outPropVal: HCkString); stdcall;

function CkUrl__hostType(objHandle: HCkUrl): PWideChar; stdcall;

function CkUrl_getLastMethodSuccess(objHandle: HCkUrl): wordbool; stdcall;

procedure CkUrl_putLastMethodSuccess(objHandle: HCkUrl; newPropVal: wordbool); stdcall;

procedure CkUrl_getLogin(objHandle: HCkUrl; outPropVal: HCkString); stdcall;

function CkUrl__login(objHandle: HCkUrl): PWideChar; stdcall;

procedure CkUrl_getPassword(objHandle: HCkUrl; outPropVal: HCkString); stdcall;

function CkUrl__password(objHandle: HCkUrl): PWideChar; stdcall;

procedure CkUrl_getPath(objHandle: HCkUrl; outPropVal: HCkString); stdcall;

function CkUrl__path(objHandle: HCkUrl): PWideChar; stdcall;

procedure CkUrl_getPathWithQueryParams(objHandle: HCkUrl; outPropVal: HCkString); stdcall;

function CkUrl__pathWithQueryParams(objHandle: HCkUrl): PWideChar; stdcall;

function CkUrl_getPort(objHandle: HCkUrl): Integer; stdcall;

procedure CkUrl_getQuery(objHandle: HCkUrl; outPropVal: HCkString); stdcall;

function CkUrl__query(objHandle: HCkUrl): PWideChar; stdcall;

function CkUrl_getSsl(objHandle: HCkUrl): wordbool; stdcall;

function CkUrl_ParseUrl(objHandle: HCkUrl; url: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkUrl_Create; external DLLName;
procedure CkUrl_Dispose; external DLLName;
procedure CkUrl_getFrag; external DLLName;
function CkUrl__frag; external DLLName;
procedure CkUrl_getHost; external DLLName;
function CkUrl__host; external DLLName;
procedure CkUrl_getHostType; external DLLName;
function CkUrl__hostType; external DLLName;
function CkUrl_getLastMethodSuccess; external DLLName;
procedure CkUrl_putLastMethodSuccess; external DLLName;
procedure CkUrl_getLogin; external DLLName;
function CkUrl__login; external DLLName;
procedure CkUrl_getPassword; external DLLName;
function CkUrl__password; external DLLName;
procedure CkUrl_getPath; external DLLName;
function CkUrl__path; external DLLName;
procedure CkUrl_getPathWithQueryParams; external DLLName;
function CkUrl__pathWithQueryParams; external DLLName;
function CkUrl_getPort; external DLLName;
procedure CkUrl_getQuery; external DLLName;
function CkUrl__query; external DLLName;
function CkUrl_getSsl; external DLLName;
function CkUrl_ParseUrl; external DLLName;



end.
