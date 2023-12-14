unit ScMinidriver;

interface

type

HCkPublicKey = Pointer;
HCkJsonObject = Pointer;
HCkPrivateKey = Pointer;
HCkString = Pointer;
HCkStringTable = Pointer;
HCkCert = Pointer;
HCkScMinidriver = Pointer;
HCkBinData = Pointer;


function CkScMinidriver_Create: HCkScMinidriver; stdcall;
procedure CkScMinidriver_Dispose(handle: HCkScMinidriver); stdcall;
procedure CkScMinidriver_getAtr(objHandle: HCkScMinidriver; outPropVal: HCkString); stdcall;

function CkScMinidriver__atr(objHandle: HCkScMinidriver): PWideChar; stdcall;

procedure CkScMinidriver_getCardName(objHandle: HCkScMinidriver; outPropVal: HCkString); stdcall;

function CkScMinidriver__cardName(objHandle: HCkScMinidriver): PWideChar; stdcall;

procedure CkScMinidriver_getDebugLogFilePath(objHandle: HCkScMinidriver; outPropVal: HCkString); stdcall;

procedure CkScMinidriver_putDebugLogFilePath(objHandle: HCkScMinidriver; newPropVal: PWideChar); stdcall;

function CkScMinidriver__debugLogFilePath(objHandle: HCkScMinidriver): PWideChar; stdcall;

procedure CkScMinidriver_getLastErrorHtml(objHandle: HCkScMinidriver; outPropVal: HCkString); stdcall;

function CkScMinidriver__lastErrorHtml(objHandle: HCkScMinidriver): PWideChar; stdcall;

procedure CkScMinidriver_getLastErrorText(objHandle: HCkScMinidriver; outPropVal: HCkString); stdcall;

function CkScMinidriver__lastErrorText(objHandle: HCkScMinidriver): PWideChar; stdcall;

procedure CkScMinidriver_getLastErrorXml(objHandle: HCkScMinidriver; outPropVal: HCkString); stdcall;

function CkScMinidriver__lastErrorXml(objHandle: HCkScMinidriver): PWideChar; stdcall;

function CkScMinidriver_getLastMethodSuccess(objHandle: HCkScMinidriver): wordbool; stdcall;

procedure CkScMinidriver_putLastMethodSuccess(objHandle: HCkScMinidriver; newPropVal: wordbool); stdcall;

function CkScMinidriver_getMaxContainers(objHandle: HCkScMinidriver): Integer; stdcall;

procedure CkScMinidriver_getRsaPaddingHash(objHandle: HCkScMinidriver; outPropVal: HCkString); stdcall;

procedure CkScMinidriver_putRsaPaddingHash(objHandle: HCkScMinidriver; newPropVal: PWideChar); stdcall;

function CkScMinidriver__rsaPaddingHash(objHandle: HCkScMinidriver): PWideChar; stdcall;

procedure CkScMinidriver_getRsaPaddingScheme(objHandle: HCkScMinidriver; outPropVal: HCkString); stdcall;

procedure CkScMinidriver_putRsaPaddingScheme(objHandle: HCkScMinidriver; newPropVal: PWideChar); stdcall;

function CkScMinidriver__rsaPaddingScheme(objHandle: HCkScMinidriver): PWideChar; stdcall;

procedure CkScMinidriver_getUncommonOptions(objHandle: HCkScMinidriver; outPropVal: HCkString); stdcall;

procedure CkScMinidriver_putUncommonOptions(objHandle: HCkScMinidriver; newPropVal: PWideChar); stdcall;

function CkScMinidriver__uncommonOptions(objHandle: HCkScMinidriver): PWideChar; stdcall;

function CkScMinidriver_getVerboseLogging(objHandle: HCkScMinidriver): wordbool; stdcall;

procedure CkScMinidriver_putVerboseLogging(objHandle: HCkScMinidriver; newPropVal: wordbool); stdcall;

procedure CkScMinidriver_getVersion(objHandle: HCkScMinidriver; outPropVal: HCkString); stdcall;

function CkScMinidriver__version(objHandle: HCkScMinidriver): PWideChar; stdcall;

function CkScMinidriver_AcquireContext(objHandle: HCkScMinidriver; readerName: PWideChar): wordbool; stdcall;

function CkScMinidriver_CardDeleteFile(objHandle: HCkScMinidriver; dirName: PWideChar; fileName: PWideChar): wordbool; stdcall;

function CkScMinidriver_DeleteCert(objHandle: HCkScMinidriver; cert: HCkCert; delPrivKey: wordbool): wordbool; stdcall;

function CkScMinidriver_DeleteContext(objHandle: HCkScMinidriver): wordbool; stdcall;

function CkScMinidriver_DeleteKeyContainer(objHandle: HCkScMinidriver; containerIndex: Integer): wordbool; stdcall;

function CkScMinidriver_EnumFiles(objHandle: HCkScMinidriver; dirName: PWideChar; st: HCkStringTable): wordbool; stdcall;

function CkScMinidriver_FindCert(objHandle: HCkScMinidriver; certPart: PWideChar; partValue: PWideChar; cert: HCkCert): wordbool; stdcall;

function CkScMinidriver_GenerateKey(objHandle: HCkScMinidriver; containerIndex: Integer; keySpec: PWideChar; keyType: PWideChar; keySize: Integer; pinId: PWideChar): wordbool; stdcall;

function CkScMinidriver_GetCardProperties(objHandle: HCkScMinidriver; json: HCkJsonObject): wordbool; stdcall;

function CkScMinidriver_GetCert(objHandle: HCkScMinidriver; containerIndex: Integer; keySpec: PWideChar; cert: HCkCert): wordbool; stdcall;

function CkScMinidriver_GetContainerKeys(objHandle: HCkScMinidriver; containerIndex: Integer; sigKey: HCkPublicKey; kexKey: HCkPublicKey): wordbool; stdcall;

function CkScMinidriver_GetCspContainerMap(objHandle: HCkScMinidriver; json: HCkJsonObject): wordbool; stdcall;

function CkScMinidriver_ImportCert(objHandle: HCkScMinidriver; cert: HCkCert; containerIndex: Integer; keySpec: PWideChar; pinId: PWideChar): wordbool; stdcall;

function CkScMinidriver_ImportKey(objHandle: HCkScMinidriver; containerIndex: Integer; keySpec: PWideChar; privKey: HCkPrivateKey; pinId: PWideChar): wordbool; stdcall;

function CkScMinidriver_ListCerts(objHandle: HCkScMinidriver; certPart: PWideChar; st: HCkStringTable): wordbool; stdcall;

function CkScMinidriver_PinAuthenticate(objHandle: HCkScMinidriver; pinId: PWideChar; pin: PWideChar): Integer; stdcall;

function CkScMinidriver_PinAuthenticateHex(objHandle: HCkScMinidriver; pinId: PWideChar; pin: PWideChar): Integer; stdcall;

function CkScMinidriver_PinChange(objHandle: HCkScMinidriver; pinId: PWideChar; currentPin: PWideChar; newPin: PWideChar): Integer; stdcall;

function CkScMinidriver_PinDeauthenticate(objHandle: HCkScMinidriver; pinId: PWideChar): wordbool; stdcall;

function CkScMinidriver_ReadFile(objHandle: HCkScMinidriver; dirName: PWideChar; fileName: PWideChar; bd: HCkBinData): wordbool; stdcall;

function CkScMinidriver_SaveLastError(objHandle: HCkScMinidriver; path: PWideChar): wordbool; stdcall;

function CkScMinidriver_SignData(objHandle: HCkScMinidriver; containerIndex: Integer; keySpec: PWideChar; hashDataAlg: PWideChar; bdData: HCkBinData; bdSignedData: HCkBinData): wordbool; stdcall;

function CkScMinidriver_WriteFile(objHandle: HCkScMinidriver; dirName: PWideChar; fileName: PWideChar; bd: HCkBinData): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkScMinidriver_Create; external DLLName;
procedure CkScMinidriver_Dispose; external DLLName;
procedure CkScMinidriver_getAtr; external DLLName;
function CkScMinidriver__atr; external DLLName;
procedure CkScMinidriver_getCardName; external DLLName;
function CkScMinidriver__cardName; external DLLName;
procedure CkScMinidriver_getDebugLogFilePath; external DLLName;
procedure CkScMinidriver_putDebugLogFilePath; external DLLName;
function CkScMinidriver__debugLogFilePath; external DLLName;
procedure CkScMinidriver_getLastErrorHtml; external DLLName;
function CkScMinidriver__lastErrorHtml; external DLLName;
procedure CkScMinidriver_getLastErrorText; external DLLName;
function CkScMinidriver__lastErrorText; external DLLName;
procedure CkScMinidriver_getLastErrorXml; external DLLName;
function CkScMinidriver__lastErrorXml; external DLLName;
function CkScMinidriver_getLastMethodSuccess; external DLLName;
procedure CkScMinidriver_putLastMethodSuccess; external DLLName;
function CkScMinidriver_getMaxContainers; external DLLName;
procedure CkScMinidriver_getRsaPaddingHash; external DLLName;
procedure CkScMinidriver_putRsaPaddingHash; external DLLName;
function CkScMinidriver__rsaPaddingHash; external DLLName;
procedure CkScMinidriver_getRsaPaddingScheme; external DLLName;
procedure CkScMinidriver_putRsaPaddingScheme; external DLLName;
function CkScMinidriver__rsaPaddingScheme; external DLLName;
procedure CkScMinidriver_getUncommonOptions; external DLLName;
procedure CkScMinidriver_putUncommonOptions; external DLLName;
function CkScMinidriver__uncommonOptions; external DLLName;
function CkScMinidriver_getVerboseLogging; external DLLName;
procedure CkScMinidriver_putVerboseLogging; external DLLName;
procedure CkScMinidriver_getVersion; external DLLName;
function CkScMinidriver__version; external DLLName;
function CkScMinidriver_AcquireContext; external DLLName;
function CkScMinidriver_CardDeleteFile; external DLLName;
function CkScMinidriver_DeleteCert; external DLLName;
function CkScMinidriver_DeleteContext; external DLLName;
function CkScMinidriver_DeleteKeyContainer; external DLLName;
function CkScMinidriver_EnumFiles; external DLLName;
function CkScMinidriver_FindCert; external DLLName;
function CkScMinidriver_GenerateKey; external DLLName;
function CkScMinidriver_GetCardProperties; external DLLName;
function CkScMinidriver_GetCert; external DLLName;
function CkScMinidriver_GetContainerKeys; external DLLName;
function CkScMinidriver_GetCspContainerMap; external DLLName;
function CkScMinidriver_ImportCert; external DLLName;
function CkScMinidriver_ImportKey; external DLLName;
function CkScMinidriver_ListCerts; external DLLName;
function CkScMinidriver_PinAuthenticate; external DLLName;
function CkScMinidriver_PinAuthenticateHex; external DLLName;
function CkScMinidriver_PinChange; external DLLName;
function CkScMinidriver_PinDeauthenticate; external DLLName;
function CkScMinidriver_ReadFile; external DLLName;
function CkScMinidriver_SaveLastError; external DLLName;
function CkScMinidriver_SignData; external DLLName;
function CkScMinidriver_WriteFile; external DLLName;



end.
