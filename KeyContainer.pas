unit KeyContainer;

interface

type

HCkKeyContainer = Pointer;
HCkPrivateKey = Pointer;
HCkJsonObject = Pointer;
HCkPublicKey = Pointer;
HCkString = Pointer;


function CkKeyContainer_Create: HCkKeyContainer; stdcall;
procedure CkKeyContainer_Dispose(handle: HCkKeyContainer); stdcall;
procedure CkKeyContainer_getContainerName(objHandle: HCkKeyContainer; outPropVal: HCkString); stdcall;

function CkKeyContainer__containerName(objHandle: HCkKeyContainer): PWideChar; stdcall;

procedure CkKeyContainer_getDebugLogFilePath(objHandle: HCkKeyContainer; outPropVal: HCkString); stdcall;

procedure CkKeyContainer_putDebugLogFilePath(objHandle: HCkKeyContainer; newPropVal: PWideChar); stdcall;

function CkKeyContainer__debugLogFilePath(objHandle: HCkKeyContainer): PWideChar; stdcall;

function CkKeyContainer_getIsMachineKeyset(objHandle: HCkKeyContainer): wordbool; stdcall;

function CkKeyContainer_getIsOpen(objHandle: HCkKeyContainer): wordbool; stdcall;

procedure CkKeyContainer_getLastErrorHtml(objHandle: HCkKeyContainer; outPropVal: HCkString); stdcall;

function CkKeyContainer__lastErrorHtml(objHandle: HCkKeyContainer): PWideChar; stdcall;

procedure CkKeyContainer_getLastErrorText(objHandle: HCkKeyContainer; outPropVal: HCkString); stdcall;

function CkKeyContainer__lastErrorText(objHandle: HCkKeyContainer): PWideChar; stdcall;

procedure CkKeyContainer_getLastErrorXml(objHandle: HCkKeyContainer; outPropVal: HCkString); stdcall;

function CkKeyContainer__lastErrorXml(objHandle: HCkKeyContainer): PWideChar; stdcall;

function CkKeyContainer_getLastMethodSuccess(objHandle: HCkKeyContainer): wordbool; stdcall;

procedure CkKeyContainer_putLastMethodSuccess(objHandle: HCkKeyContainer; newPropVal: wordbool); stdcall;

function CkKeyContainer_getLegacyKeySpec(objHandle: HCkKeyContainer): Integer; stdcall;

procedure CkKeyContainer_putLegacyKeySpec(objHandle: HCkKeyContainer; newPropVal: Integer); stdcall;

function CkKeyContainer_getMachineKeys(objHandle: HCkKeyContainer): wordbool; stdcall;

procedure CkKeyContainer_putMachineKeys(objHandle: HCkKeyContainer; newPropVal: wordbool); stdcall;

function CkKeyContainer_getVerboseLogging(objHandle: HCkKeyContainer): wordbool; stdcall;

procedure CkKeyContainer_putVerboseLogging(objHandle: HCkKeyContainer; newPropVal: wordbool); stdcall;

procedure CkKeyContainer_getVersion(objHandle: HCkKeyContainer; outPropVal: HCkString); stdcall;

function CkKeyContainer__version(objHandle: HCkKeyContainer): PWideChar; stdcall;

procedure CkKeyContainer_CloseContainer(objHandle: HCkKeyContainer); stdcall;

function CkKeyContainer_CreateContainer(objHandle: HCkKeyContainer; name: PWideChar; machineKeyset: wordbool): wordbool; stdcall;

function CkKeyContainer_DeleteContainer(objHandle: HCkKeyContainer): wordbool; stdcall;

function CkKeyContainer_DeleteKey(objHandle: HCkKeyContainer; keyName: PWideChar; storageProvider: PWideChar): wordbool; stdcall;

function CkKeyContainer_ExportKey(objHandle: HCkKeyContainer; keyName: PWideChar; storageProvider: PWideChar; silentFlag: wordbool; key: HCkPrivateKey): wordbool; stdcall;

function CkKeyContainer_FetchContainerNames(objHandle: HCkKeyContainer; bMachineKeyset: wordbool): wordbool; stdcall;

function CkKeyContainer_GenerateKeyPair(objHandle: HCkKeyContainer; bKeyExchangePair: wordbool; keyLengthInBits: Integer): wordbool; stdcall;

function CkKeyContainer_GenerateUuid(objHandle: HCkKeyContainer; outStr: HCkString): wordbool; stdcall;

function CkKeyContainer__generateUuid(objHandle: HCkKeyContainer): PWideChar; stdcall;

function CkKeyContainer_GetKeys(objHandle: HCkKeyContainer; storageProvider: PWideChar; json: HCkJsonObject): wordbool; stdcall;

function CkKeyContainer_GetNthContainerName(objHandle: HCkKeyContainer; bMachineKeyset: wordbool; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkKeyContainer__getNthContainerName(objHandle: HCkKeyContainer; bMachineKeyset: wordbool; index: Integer): PWideChar; stdcall;

function CkKeyContainer_GetNumContainers(objHandle: HCkKeyContainer; bMachineKeyset: wordbool): Integer; stdcall;

function CkKeyContainer_GetPrivateKey(objHandle: HCkKeyContainer; bKeyExchangePair: wordbool): HCkPrivateKey; stdcall;

function CkKeyContainer_GetPublicKey(objHandle: HCkKeyContainer; bKeyExchangePair: wordbool): HCkPublicKey; stdcall;

function CkKeyContainer_GetStorageProviders(objHandle: HCkKeyContainer; json: HCkJsonObject): wordbool; stdcall;

function CkKeyContainer_ImportKey(objHandle: HCkKeyContainer; keyName: PWideChar; storageProvider: PWideChar; allowOverwrite: wordbool; allowExport: wordbool; key: HCkPrivateKey): wordbool; stdcall;

function CkKeyContainer_ImportPrivateKey(objHandle: HCkKeyContainer; key: HCkPrivateKey; bKeyExchangePair: wordbool): wordbool; stdcall;

function CkKeyContainer_ImportPublicKey(objHandle: HCkKeyContainer; key: HCkPublicKey; bKeyExchangePair: wordbool): wordbool; stdcall;

function CkKeyContainer_OpenContainer(objHandle: HCkKeyContainer; name: PWideChar; needPrivateKeyAccess: wordbool; machineKeyset: wordbool): wordbool; stdcall;

function CkKeyContainer_SaveLastError(objHandle: HCkKeyContainer; path: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkKeyContainer_Create; external DLLName;
procedure CkKeyContainer_Dispose; external DLLName;
procedure CkKeyContainer_getContainerName; external DLLName;
function CkKeyContainer__containerName; external DLLName;
procedure CkKeyContainer_getDebugLogFilePath; external DLLName;
procedure CkKeyContainer_putDebugLogFilePath; external DLLName;
function CkKeyContainer__debugLogFilePath; external DLLName;
function CkKeyContainer_getIsMachineKeyset; external DLLName;
function CkKeyContainer_getIsOpen; external DLLName;
procedure CkKeyContainer_getLastErrorHtml; external DLLName;
function CkKeyContainer__lastErrorHtml; external DLLName;
procedure CkKeyContainer_getLastErrorText; external DLLName;
function CkKeyContainer__lastErrorText; external DLLName;
procedure CkKeyContainer_getLastErrorXml; external DLLName;
function CkKeyContainer__lastErrorXml; external DLLName;
function CkKeyContainer_getLastMethodSuccess; external DLLName;
procedure CkKeyContainer_putLastMethodSuccess; external DLLName;
function CkKeyContainer_getLegacyKeySpec; external DLLName;
procedure CkKeyContainer_putLegacyKeySpec; external DLLName;
function CkKeyContainer_getMachineKeys; external DLLName;
procedure CkKeyContainer_putMachineKeys; external DLLName;
function CkKeyContainer_getVerboseLogging; external DLLName;
procedure CkKeyContainer_putVerboseLogging; external DLLName;
procedure CkKeyContainer_getVersion; external DLLName;
function CkKeyContainer__version; external DLLName;
procedure CkKeyContainer_CloseContainer; external DLLName;
function CkKeyContainer_CreateContainer; external DLLName;
function CkKeyContainer_DeleteContainer; external DLLName;
function CkKeyContainer_DeleteKey; external DLLName;
function CkKeyContainer_ExportKey; external DLLName;
function CkKeyContainer_FetchContainerNames; external DLLName;
function CkKeyContainer_GenerateKeyPair; external DLLName;
function CkKeyContainer_GenerateUuid; external DLLName;
function CkKeyContainer__generateUuid; external DLLName;
function CkKeyContainer_GetKeys; external DLLName;
function CkKeyContainer_GetNthContainerName; external DLLName;
function CkKeyContainer__getNthContainerName; external DLLName;
function CkKeyContainer_GetNumContainers; external DLLName;
function CkKeyContainer_GetPrivateKey; external DLLName;
function CkKeyContainer_GetPublicKey; external DLLName;
function CkKeyContainer_GetStorageProviders; external DLLName;
function CkKeyContainer_ImportKey; external DLLName;
function CkKeyContainer_ImportPrivateKey; external DLLName;
function CkKeyContainer_ImportPublicKey; external DLLName;
function CkKeyContainer_OpenContainer; external DLLName;
function CkKeyContainer_SaveLastError; external DLLName;



end.
