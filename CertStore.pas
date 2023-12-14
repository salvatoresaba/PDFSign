unit CertStore;

interface

type

HCkCertStore = Pointer;
HCkCert = Pointer;
HCkByteData = Pointer;
HCkString = Pointer;


function CkCertStore_Create: HCkCertStore; stdcall;
procedure CkCertStore_Dispose(handle: HCkCertStore); stdcall;
function CkCertStore_getAvoidWindowsPkAccess(objHandle: HCkCertStore): wordbool; stdcall;

procedure CkCertStore_putAvoidWindowsPkAccess(objHandle: HCkCertStore; newPropVal: wordbool); stdcall;

procedure CkCertStore_getDebugLogFilePath(objHandle: HCkCertStore; outPropVal: HCkString); stdcall;

procedure CkCertStore_putDebugLogFilePath(objHandle: HCkCertStore; newPropVal: PWideChar); stdcall;

function CkCertStore__debugLogFilePath(objHandle: HCkCertStore): PWideChar; stdcall;

procedure CkCertStore_getLastErrorHtml(objHandle: HCkCertStore; outPropVal: HCkString); stdcall;

function CkCertStore__lastErrorHtml(objHandle: HCkCertStore): PWideChar; stdcall;

procedure CkCertStore_getLastErrorText(objHandle: HCkCertStore; outPropVal: HCkString); stdcall;

function CkCertStore__lastErrorText(objHandle: HCkCertStore): PWideChar; stdcall;

procedure CkCertStore_getLastErrorXml(objHandle: HCkCertStore; outPropVal: HCkString); stdcall;

function CkCertStore__lastErrorXml(objHandle: HCkCertStore): PWideChar; stdcall;

function CkCertStore_getLastMethodSuccess(objHandle: HCkCertStore): wordbool; stdcall;

procedure CkCertStore_putLastMethodSuccess(objHandle: HCkCertStore; newPropVal: wordbool); stdcall;

function CkCertStore_getNumCertificates(objHandle: HCkCertStore): Integer; stdcall;

function CkCertStore_getNumEmailCerts(objHandle: HCkCertStore): Integer; stdcall;

procedure CkCertStore_getSmartCardPin(objHandle: HCkCertStore; outPropVal: HCkString); stdcall;

procedure CkCertStore_putSmartCardPin(objHandle: HCkCertStore; newPropVal: PWideChar); stdcall;

function CkCertStore__smartCardPin(objHandle: HCkCertStore): PWideChar; stdcall;

procedure CkCertStore_getUncommonOptions(objHandle: HCkCertStore; outPropVal: HCkString); stdcall;

procedure CkCertStore_putUncommonOptions(objHandle: HCkCertStore; newPropVal: PWideChar); stdcall;

function CkCertStore__uncommonOptions(objHandle: HCkCertStore): PWideChar; stdcall;

function CkCertStore_getVerboseLogging(objHandle: HCkCertStore): wordbool; stdcall;

procedure CkCertStore_putVerboseLogging(objHandle: HCkCertStore; newPropVal: wordbool); stdcall;

procedure CkCertStore_getVersion(objHandle: HCkCertStore; outPropVal: HCkString); stdcall;

function CkCertStore__version(objHandle: HCkCertStore): PWideChar; stdcall;

function CkCertStore_AddCertificate(objHandle: HCkCertStore; cert: HCkCert): wordbool; stdcall;

function CkCertStore_CloseCertStore(objHandle: HCkCertStore): wordbool; stdcall;

function CkCertStore_CreateFileStore(objHandle: HCkCertStore; filename: PWideChar): wordbool; stdcall;

function CkCertStore_CreateMemoryStore(objHandle: HCkCertStore): wordbool; stdcall;

function CkCertStore_CreateRegistryStore(objHandle: HCkCertStore; regRoot: PWideChar; regPath: PWideChar): wordbool; stdcall;

function CkCertStore_FindCertByKeyContainer(objHandle: HCkCertStore; name: PWideChar): HCkCert; stdcall;

function CkCertStore_FindCertByRfc822Name(objHandle: HCkCertStore; name: PWideChar): HCkCert; stdcall;

function CkCertStore_FindCertBySerial(objHandle: HCkCertStore; str: PWideChar): HCkCert; stdcall;

function CkCertStore_FindCertBySha1Thumbprint(objHandle: HCkCertStore; str: PWideChar): HCkCert; stdcall;

function CkCertStore_FindCertBySubject(objHandle: HCkCertStore; str: PWideChar): HCkCert; stdcall;

function CkCertStore_FindCertBySubjectCN(objHandle: HCkCertStore; str: PWideChar): HCkCert; stdcall;

function CkCertStore_FindCertBySubjectE(objHandle: HCkCertStore; str: PWideChar): HCkCert; stdcall;

function CkCertStore_FindCertBySubjectO(objHandle: HCkCertStore; str: PWideChar): HCkCert; stdcall;

function CkCertStore_FindCertForEmail(objHandle: HCkCertStore; emailAddress: PWideChar): HCkCert; stdcall;

function CkCertStore_GetCertificate(objHandle: HCkCertStore; index: Integer): HCkCert; stdcall;

function CkCertStore_GetEmailCert(objHandle: HCkCertStore; index: Integer): HCkCert; stdcall;

function CkCertStore_LoadPemFile(objHandle: HCkCertStore; pemPath: PWideChar): wordbool; stdcall;

function CkCertStore_LoadPemStr(objHandle: HCkCertStore; pemString: PWideChar): wordbool; stdcall;

function CkCertStore_LoadPfxData(objHandle: HCkCertStore; pfxData: HCkByteData; password: PWideChar): wordbool; stdcall;

function CkCertStore_LoadPfxData2(objHandle: HCkCertStore; pByteData: pbyte; szByteData: LongWord; password: PWideChar): wordbool; stdcall;

function CkCertStore_LoadPfxFile(objHandle: HCkCertStore; pfxFilename: PWideChar; password: PWideChar): wordbool; stdcall;

function CkCertStore_OpenCurrentUserStore(objHandle: HCkCertStore; readOnly: wordbool): wordbool; stdcall;

function CkCertStore_OpenFileStore(objHandle: HCkCertStore; filename: PWideChar; readOnly: wordbool): wordbool; stdcall;

function CkCertStore_OpenLocalSystemStore(objHandle: HCkCertStore; readOnly: wordbool): wordbool; stdcall;

function CkCertStore_OpenRegistryStore(objHandle: HCkCertStore; regRoot: PWideChar; regPath: PWideChar; readOnly: wordbool): wordbool; stdcall;

function CkCertStore_OpenSmartcard(objHandle: HCkCertStore; csp: PWideChar): wordbool; stdcall;

function CkCertStore_OpenWindowsStore(objHandle: HCkCertStore; storeLocation: PWideChar; storeName: PWideChar; readOnly: wordbool): wordbool; stdcall;

function CkCertStore_RemoveCertificate(objHandle: HCkCertStore; cert: HCkCert): wordbool; stdcall;

function CkCertStore_SaveLastError(objHandle: HCkCertStore; path: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkCertStore_Create; external DLLName;
procedure CkCertStore_Dispose; external DLLName;
function CkCertStore_getAvoidWindowsPkAccess; external DLLName;
procedure CkCertStore_putAvoidWindowsPkAccess; external DLLName;
procedure CkCertStore_getDebugLogFilePath; external DLLName;
procedure CkCertStore_putDebugLogFilePath; external DLLName;
function CkCertStore__debugLogFilePath; external DLLName;
procedure CkCertStore_getLastErrorHtml; external DLLName;
function CkCertStore__lastErrorHtml; external DLLName;
procedure CkCertStore_getLastErrorText; external DLLName;
function CkCertStore__lastErrorText; external DLLName;
procedure CkCertStore_getLastErrorXml; external DLLName;
function CkCertStore__lastErrorXml; external DLLName;
function CkCertStore_getLastMethodSuccess; external DLLName;
procedure CkCertStore_putLastMethodSuccess; external DLLName;
function CkCertStore_getNumCertificates; external DLLName;
function CkCertStore_getNumEmailCerts; external DLLName;
procedure CkCertStore_getSmartCardPin; external DLLName;
procedure CkCertStore_putSmartCardPin; external DLLName;
function CkCertStore__smartCardPin; external DLLName;
procedure CkCertStore_getUncommonOptions; external DLLName;
procedure CkCertStore_putUncommonOptions; external DLLName;
function CkCertStore__uncommonOptions; external DLLName;
function CkCertStore_getVerboseLogging; external DLLName;
procedure CkCertStore_putVerboseLogging; external DLLName;
procedure CkCertStore_getVersion; external DLLName;
function CkCertStore__version; external DLLName;
function CkCertStore_AddCertificate; external DLLName;
function CkCertStore_CloseCertStore; external DLLName;
function CkCertStore_CreateFileStore; external DLLName;
function CkCertStore_CreateMemoryStore; external DLLName;
function CkCertStore_CreateRegistryStore; external DLLName;
function CkCertStore_FindCertByKeyContainer; external DLLName;
function CkCertStore_FindCertByRfc822Name; external DLLName;
function CkCertStore_FindCertBySerial; external DLLName;
function CkCertStore_FindCertBySha1Thumbprint; external DLLName;
function CkCertStore_FindCertBySubject; external DLLName;
function CkCertStore_FindCertBySubjectCN; external DLLName;
function CkCertStore_FindCertBySubjectE; external DLLName;
function CkCertStore_FindCertBySubjectO; external DLLName;
function CkCertStore_FindCertForEmail; external DLLName;
function CkCertStore_GetCertificate; external DLLName;
function CkCertStore_GetEmailCert; external DLLName;
function CkCertStore_LoadPemFile; external DLLName;
function CkCertStore_LoadPemStr; external DLLName;
function CkCertStore_LoadPfxData; external DLLName;
function CkCertStore_LoadPfxData2; external DLLName;
function CkCertStore_LoadPfxFile; external DLLName;
function CkCertStore_OpenCurrentUserStore; external DLLName;
function CkCertStore_OpenFileStore; external DLLName;
function CkCertStore_OpenLocalSystemStore; external DLLName;
function CkCertStore_OpenRegistryStore; external DLLName;
function CkCertStore_OpenSmartcard; external DLLName;
function CkCertStore_OpenWindowsStore; external DLLName;
function CkCertStore_RemoveCertificate; external DLLName;
function CkCertStore_SaveLastError; external DLLName;



end.
