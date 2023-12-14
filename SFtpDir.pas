unit SFtpDir;

interface

type

HCkTask = Pointer;
HCkSFtpFile = Pointer;
HCkSFtpDir = Pointer;
HCkString = Pointer;


function CkSFtpDir_Create: HCkSFtpDir; stdcall;
procedure CkSFtpDir_Dispose(handle: HCkSFtpDir); stdcall;
function CkSFtpDir_getLastMethodSuccess(objHandle: HCkSFtpDir): wordbool; stdcall;

procedure CkSFtpDir_putLastMethodSuccess(objHandle: HCkSFtpDir; newPropVal: wordbool); stdcall;

function CkSFtpDir_getNumFilesAndDirs(objHandle: HCkSFtpDir): Integer; stdcall;

procedure CkSFtpDir_getOriginalPath(objHandle: HCkSFtpDir; outPropVal: HCkString); stdcall;

function CkSFtpDir__originalPath(objHandle: HCkSFtpDir): PWideChar; stdcall;

function CkSFtpDir_GetFilename(objHandle: HCkSFtpDir; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkSFtpDir__getFilename(objHandle: HCkSFtpDir; index: Integer): PWideChar; stdcall;

function CkSFtpDir_GetFileObject(objHandle: HCkSFtpDir; index: Integer): HCkSFtpFile; stdcall;

function CkSFtpDir_LoadTaskResult(objHandle: HCkSFtpDir; task: HCkTask): wordbool; stdcall;

procedure CkSFtpDir_Sort(objHandle: HCkSFtpDir; field: PWideChar; ascending: wordbool); stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkSFtpDir_Create; external DLLName;
procedure CkSFtpDir_Dispose; external DLLName;
function CkSFtpDir_getLastMethodSuccess; external DLLName;
procedure CkSFtpDir_putLastMethodSuccess; external DLLName;
function CkSFtpDir_getNumFilesAndDirs; external DLLName;
procedure CkSFtpDir_getOriginalPath; external DLLName;
function CkSFtpDir__originalPath; external DLLName;
function CkSFtpDir_GetFilename; external DLLName;
function CkSFtpDir__getFilename; external DLLName;
function CkSFtpDir_GetFileObject; external DLLName;
function CkSFtpDir_LoadTaskResult; external DLLName;
procedure CkSFtpDir_Sort; external DLLName;



end.
