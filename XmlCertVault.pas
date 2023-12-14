unit XmlCertVault;

interface

type

HCkXmlCertVault = Pointer;
HCkByteData = Pointer;
HCkString = Pointer;
HCkPfx = Pointer;
HCkCertChain = Pointer;
HCkCert = Pointer;


function CkXmlCertVault_Create: HCkXmlCertVault; stdcall;
procedure CkXmlCertVault_Dispose(handle: HCkXmlCertVault); stdcall;
procedure CkXmlCertVault_getDebugLogFilePath(objHandle: HCkXmlCertVault; outPropVal: HCkString); stdcall;

procedure CkXmlCertVault_putDebugLogFilePath(objHandle: HCkXmlCertVault; newPropVal: PWideChar); stdcall;

function CkXmlCertVault__debugLogFilePath(objHandle: HCkXmlCertVault): PWideChar; stdcall;

procedure CkXmlCertVault_getLastErrorHtml(objHandle: HCkXmlCertVault; outPropVal: HCkString); stdcall;

function CkXmlCertVault__lastErrorHtml(objHandle: HCkXmlCertVault): PWideChar; stdcall;

procedure CkXmlCertVault_getLastErrorText(objHandle: HCkXmlCertVault; outPropVal: HCkString); stdcall;

function CkXmlCertVault__lastErrorText(objHandle: HCkXmlCertVault): PWideChar; stdcall;

procedure CkXmlCertVault_getLastErrorXml(objHandle: HCkXmlCertVault; outPropVal: HCkString); stdcall;

function CkXmlCertVault__lastErrorXml(objHandle: HCkXmlCertVault): PWideChar; stdcall;

function CkXmlCertVault_getLastMethodSuccess(objHandle: HCkXmlCertVault): wordbool; stdcall;

procedure CkXmlCertVault_putLastMethodSuccess(objHandle: HCkXmlCertVault; newPropVal: wordbool); stdcall;

procedure CkXmlCertVault_getMasterPassword(objHandle: HCkXmlCertVault; outPropVal: HCkString); stdcall;

procedure CkXmlCertVault_putMasterPassword(objHandle: HCkXmlCertVault; newPropVal: PWideChar); stdcall;

function CkXmlCertVault__masterPassword(objHandle: HCkXmlCertVault): PWideChar; stdcall;

function CkXmlCertVault_getVerboseLogging(objHandle: HCkXmlCertVault): wordbool; stdcall;

procedure CkXmlCertVault_putVerboseLogging(objHandle: HCkXmlCertVault; newPropVal: wordbool); stdcall;

procedure CkXmlCertVault_getVersion(objHandle: HCkXmlCertVault; outPropVal: HCkString); stdcall;

function CkXmlCertVault__version(objHandle: HCkXmlCertVault): PWideChar; stdcall;

function CkXmlCertVault_AddCert(objHandle: HCkXmlCertVault; cert: HCkCert): wordbool; stdcall;

function CkXmlCertVault_AddCertBinary(objHandle: HCkXmlCertVault; certBytes: HCkByteData): wordbool; stdcall;

function CkXmlCertVault_AddCertChain(objHandle: HCkXmlCertVault; certChain: HCkCertChain): wordbool; stdcall;

function CkXmlCertVault_AddCertEncoded(objHandle: HCkXmlCertVault; encodedBytes: PWideChar; encoding: PWideChar): wordbool; stdcall;

function CkXmlCertVault_AddCertFile(objHandle: HCkXmlCertVault; path: PWideChar): wordbool; stdcall;

function CkXmlCertVault_AddCertString(objHandle: HCkXmlCertVault; certData: PWideChar): wordbool; stdcall;

function CkXmlCertVault_AddPemFile(objHandle: HCkXmlCertVault; path: PWideChar; password: PWideChar): wordbool; stdcall;

function CkXmlCertVault_AddPfx(objHandle: HCkXmlCertVault; pfx: HCkPfx): wordbool; stdcall;

function CkXmlCertVault_AddPfxBinary(objHandle: HCkXmlCertVault; pfxBytes: HCkByteData; password: PWideChar): wordbool; stdcall;

function CkXmlCertVault_AddPfxEncoded(objHandle: HCkXmlCertVault; encodedBytes: PWideChar; encoding: PWideChar; password: PWideChar): wordbool; stdcall;

function CkXmlCertVault_AddPfxFile(objHandle: HCkXmlCertVault; path: PWideChar; password: PWideChar): wordbool; stdcall;

function CkXmlCertVault_GetXml(objHandle: HCkXmlCertVault; outStr: HCkString): wordbool; stdcall;

function CkXmlCertVault__getXml(objHandle: HCkXmlCertVault): PWideChar; stdcall;

function CkXmlCertVault_LoadXml(objHandle: HCkXmlCertVault; xml: PWideChar): wordbool; stdcall;

function CkXmlCertVault_LoadXmlFile(objHandle: HCkXmlCertVault; path: PWideChar): wordbool; stdcall;

function CkXmlCertVault_SaveLastError(objHandle: HCkXmlCertVault; path: PWideChar): wordbool; stdcall;

function CkXmlCertVault_SaveXml(objHandle: HCkXmlCertVault; path: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkXmlCertVault_Create; external DLLName;
procedure CkXmlCertVault_Dispose; external DLLName;
procedure CkXmlCertVault_getDebugLogFilePath; external DLLName;
procedure CkXmlCertVault_putDebugLogFilePath; external DLLName;
function CkXmlCertVault__debugLogFilePath; external DLLName;
procedure CkXmlCertVault_getLastErrorHtml; external DLLName;
function CkXmlCertVault__lastErrorHtml; external DLLName;
procedure CkXmlCertVault_getLastErrorText; external DLLName;
function CkXmlCertVault__lastErrorText; external DLLName;
procedure CkXmlCertVault_getLastErrorXml; external DLLName;
function CkXmlCertVault__lastErrorXml; external DLLName;
function CkXmlCertVault_getLastMethodSuccess; external DLLName;
procedure CkXmlCertVault_putLastMethodSuccess; external DLLName;
procedure CkXmlCertVault_getMasterPassword; external DLLName;
procedure CkXmlCertVault_putMasterPassword; external DLLName;
function CkXmlCertVault__masterPassword; external DLLName;
function CkXmlCertVault_getVerboseLogging; external DLLName;
procedure CkXmlCertVault_putVerboseLogging; external DLLName;
procedure CkXmlCertVault_getVersion; external DLLName;
function CkXmlCertVault__version; external DLLName;
function CkXmlCertVault_AddCert; external DLLName;
function CkXmlCertVault_AddCertBinary; external DLLName;
function CkXmlCertVault_AddCertChain; external DLLName;
function CkXmlCertVault_AddCertEncoded; external DLLName;
function CkXmlCertVault_AddCertFile; external DLLName;
function CkXmlCertVault_AddCertString; external DLLName;
function CkXmlCertVault_AddPemFile; external DLLName;
function CkXmlCertVault_AddPfx; external DLLName;
function CkXmlCertVault_AddPfxBinary; external DLLName;
function CkXmlCertVault_AddPfxEncoded; external DLLName;
function CkXmlCertVault_AddPfxFile; external DLLName;
function CkXmlCertVault_GetXml; external DLLName;
function CkXmlCertVault__getXml; external DLLName;
function CkXmlCertVault_LoadXml; external DLLName;
function CkXmlCertVault_LoadXmlFile; external DLLName;
function CkXmlCertVault_SaveLastError; external DLLName;
function CkXmlCertVault_SaveXml; external DLLName;



end.
