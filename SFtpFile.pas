unit SFtpFile;

interface

type

HCkSFtpFile = Pointer;
HCkDateTime = Pointer;
HCkString = Pointer;


function CkSFtpFile_Create: HCkSFtpFile; stdcall;
procedure CkSFtpFile_Dispose(handle: HCkSFtpFile); stdcall;
procedure CkSFtpFile_getCreateTimeStr(objHandle: HCkSFtpFile; outPropVal: HCkString); stdcall;

function CkSFtpFile__createTimeStr(objHandle: HCkSFtpFile): PWideChar; stdcall;

procedure CkSFtpFile_getFilename(objHandle: HCkSFtpFile; outPropVal: HCkString); stdcall;

function CkSFtpFile__filename(objHandle: HCkSFtpFile): PWideChar; stdcall;

procedure CkSFtpFile_getFileType(objHandle: HCkSFtpFile; outPropVal: HCkString); stdcall;

function CkSFtpFile__fileType(objHandle: HCkSFtpFile): PWideChar; stdcall;

function CkSFtpFile_getGid(objHandle: HCkSFtpFile): Integer; stdcall;

procedure CkSFtpFile_getGroup(objHandle: HCkSFtpFile; outPropVal: HCkString); stdcall;

function CkSFtpFile__group(objHandle: HCkSFtpFile): PWideChar; stdcall;

function CkSFtpFile_getIsAppendOnly(objHandle: HCkSFtpFile): wordbool; stdcall;

function CkSFtpFile_getIsArchive(objHandle: HCkSFtpFile): wordbool; stdcall;

function CkSFtpFile_getIsCaseInsensitive(objHandle: HCkSFtpFile): wordbool; stdcall;

function CkSFtpFile_getIsCompressed(objHandle: HCkSFtpFile): wordbool; stdcall;

function CkSFtpFile_getIsDirectory(objHandle: HCkSFtpFile): wordbool; stdcall;

function CkSFtpFile_getIsEncrypted(objHandle: HCkSFtpFile): wordbool; stdcall;

function CkSFtpFile_getIsHidden(objHandle: HCkSFtpFile): wordbool; stdcall;

function CkSFtpFile_getIsImmutable(objHandle: HCkSFtpFile): wordbool; stdcall;

function CkSFtpFile_getIsReadOnly(objHandle: HCkSFtpFile): wordbool; stdcall;

function CkSFtpFile_getIsRegular(objHandle: HCkSFtpFile): wordbool; stdcall;

function CkSFtpFile_getIsSparse(objHandle: HCkSFtpFile): wordbool; stdcall;

function CkSFtpFile_getIsSymLink(objHandle: HCkSFtpFile): wordbool; stdcall;

function CkSFtpFile_getIsSync(objHandle: HCkSFtpFile): wordbool; stdcall;

function CkSFtpFile_getIsSystem(objHandle: HCkSFtpFile): wordbool; stdcall;

procedure CkSFtpFile_getLastAccessTimeStr(objHandle: HCkSFtpFile; outPropVal: HCkString); stdcall;

function CkSFtpFile__lastAccessTimeStr(objHandle: HCkSFtpFile): PWideChar; stdcall;

function CkSFtpFile_getLastMethodSuccess(objHandle: HCkSFtpFile): wordbool; stdcall;

procedure CkSFtpFile_putLastMethodSuccess(objHandle: HCkSFtpFile; newPropVal: wordbool); stdcall;

procedure CkSFtpFile_getLastModifiedTimeStr(objHandle: HCkSFtpFile; outPropVal: HCkString); stdcall;

function CkSFtpFile__lastModifiedTimeStr(objHandle: HCkSFtpFile): PWideChar; stdcall;

procedure CkSFtpFile_getOwner(objHandle: HCkSFtpFile; outPropVal: HCkString); stdcall;

function CkSFtpFile__owner(objHandle: HCkSFtpFile): PWideChar; stdcall;

function CkSFtpFile_getPermissions(objHandle: HCkSFtpFile): Integer; stdcall;

function CkSFtpFile_getSize32(objHandle: HCkSFtpFile): Integer; stdcall;

function CkSFtpFile_getSize64(objHandle: HCkSFtpFile): Int64; stdcall;

procedure CkSFtpFile_getSizeStr(objHandle: HCkSFtpFile; outPropVal: HCkString); stdcall;

function CkSFtpFile__sizeStr(objHandle: HCkSFtpFile): PWideChar; stdcall;

function CkSFtpFile_getUid(objHandle: HCkSFtpFile): Integer; stdcall;

function CkSFtpFile_GetCreateDt(objHandle: HCkSFtpFile): HCkDateTime; stdcall;

function CkSFtpFile_GetLastAccessDt(objHandle: HCkSFtpFile): HCkDateTime; stdcall;

function CkSFtpFile_GetLastModifiedDt(objHandle: HCkSFtpFile): HCkDateTime; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkSFtpFile_Create; external DLLName;
procedure CkSFtpFile_Dispose; external DLLName;
procedure CkSFtpFile_getCreateTimeStr; external DLLName;
function CkSFtpFile__createTimeStr; external DLLName;
procedure CkSFtpFile_getFilename; external DLLName;
function CkSFtpFile__filename; external DLLName;
procedure CkSFtpFile_getFileType; external DLLName;
function CkSFtpFile__fileType; external DLLName;
function CkSFtpFile_getGid; external DLLName;
procedure CkSFtpFile_getGroup; external DLLName;
function CkSFtpFile__group; external DLLName;
function CkSFtpFile_getIsAppendOnly; external DLLName;
function CkSFtpFile_getIsArchive; external DLLName;
function CkSFtpFile_getIsCaseInsensitive; external DLLName;
function CkSFtpFile_getIsCompressed; external DLLName;
function CkSFtpFile_getIsDirectory; external DLLName;
function CkSFtpFile_getIsEncrypted; external DLLName;
function CkSFtpFile_getIsHidden; external DLLName;
function CkSFtpFile_getIsImmutable; external DLLName;
function CkSFtpFile_getIsReadOnly; external DLLName;
function CkSFtpFile_getIsRegular; external DLLName;
function CkSFtpFile_getIsSparse; external DLLName;
function CkSFtpFile_getIsSymLink; external DLLName;
function CkSFtpFile_getIsSync; external DLLName;
function CkSFtpFile_getIsSystem; external DLLName;
procedure CkSFtpFile_getLastAccessTimeStr; external DLLName;
function CkSFtpFile__lastAccessTimeStr; external DLLName;
function CkSFtpFile_getLastMethodSuccess; external DLLName;
procedure CkSFtpFile_putLastMethodSuccess; external DLLName;
procedure CkSFtpFile_getLastModifiedTimeStr; external DLLName;
function CkSFtpFile__lastModifiedTimeStr; external DLLName;
procedure CkSFtpFile_getOwner; external DLLName;
function CkSFtpFile__owner; external DLLName;
function CkSFtpFile_getPermissions; external DLLName;
function CkSFtpFile_getSize32; external DLLName;
function CkSFtpFile_getSize64; external DLLName;
procedure CkSFtpFile_getSizeStr; external DLLName;
function CkSFtpFile__sizeStr; external DLLName;
function CkSFtpFile_getUid; external DLLName;
function CkSFtpFile_GetCreateDt; external DLLName;
function CkSFtpFile_GetLastAccessDt; external DLLName;
function CkSFtpFile_GetLastModifiedDt; external DLLName;



end.
