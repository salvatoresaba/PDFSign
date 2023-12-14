unit Csp;

interface

type

HCkStringTable = Pointer;
HCkString = Pointer;
HCkStringArray = Pointer;
HCkCsp = Pointer;


function CkCsp_Create: HCkCsp; stdcall;
procedure CkCsp_Dispose(handle: HCkCsp); stdcall;
procedure CkCsp_getDebugLogFilePath(objHandle: HCkCsp; outPropVal: HCkString); stdcall;

procedure CkCsp_putDebugLogFilePath(objHandle: HCkCsp; newPropVal: PWideChar); stdcall;

function CkCsp__debugLogFilePath(objHandle: HCkCsp): PWideChar; stdcall;

procedure CkCsp_getEncryptAlgorithm(objHandle: HCkCsp; outPropVal: HCkString); stdcall;

function CkCsp__encryptAlgorithm(objHandle: HCkCsp): PWideChar; stdcall;

function CkCsp_getEncryptAlgorithmID(objHandle: HCkCsp): Integer; stdcall;

function CkCsp_getEncryptNumBits(objHandle: HCkCsp): Integer; stdcall;

procedure CkCsp_getHashAlgorithm(objHandle: HCkCsp; outPropVal: HCkString); stdcall;

function CkCsp__hashAlgorithm(objHandle: HCkCsp): PWideChar; stdcall;

function CkCsp_getHashAlgorithmID(objHandle: HCkCsp): Integer; stdcall;

function CkCsp_getHashNumBits(objHandle: HCkCsp): Integer; stdcall;

procedure CkCsp_getKeyContainerName(objHandle: HCkCsp; outPropVal: HCkString); stdcall;

procedure CkCsp_putKeyContainerName(objHandle: HCkCsp; newPropVal: PWideChar); stdcall;

function CkCsp__keyContainerName(objHandle: HCkCsp): PWideChar; stdcall;

procedure CkCsp_getLastErrorHtml(objHandle: HCkCsp; outPropVal: HCkString); stdcall;

function CkCsp__lastErrorHtml(objHandle: HCkCsp): PWideChar; stdcall;

procedure CkCsp_getLastErrorText(objHandle: HCkCsp; outPropVal: HCkString); stdcall;

function CkCsp__lastErrorText(objHandle: HCkCsp): PWideChar; stdcall;

procedure CkCsp_getLastErrorXml(objHandle: HCkCsp; outPropVal: HCkString); stdcall;

function CkCsp__lastErrorXml(objHandle: HCkCsp): PWideChar; stdcall;

function CkCsp_getLastMethodSuccess(objHandle: HCkCsp): wordbool; stdcall;

procedure CkCsp_putLastMethodSuccess(objHandle: HCkCsp; newPropVal: wordbool); stdcall;

function CkCsp_getMachineKeyset(objHandle: HCkCsp): wordbool; stdcall;

procedure CkCsp_putMachineKeyset(objHandle: HCkCsp; newPropVal: wordbool); stdcall;

function CkCsp_getNumEncryptAlgorithms(objHandle: HCkCsp): Integer; stdcall;

function CkCsp_getNumHashAlgorithms(objHandle: HCkCsp): Integer; stdcall;

function CkCsp_getNumKeyContainers(objHandle: HCkCsp): Integer; stdcall;

function CkCsp_getNumKeyExchangeAlgorithms(objHandle: HCkCsp): Integer; stdcall;

function CkCsp_getNumSignatureAlgorithms(objHandle: HCkCsp): Integer; stdcall;

procedure CkCsp_getProviderName(objHandle: HCkCsp; outPropVal: HCkString); stdcall;

procedure CkCsp_putProviderName(objHandle: HCkCsp; newPropVal: PWideChar); stdcall;

function CkCsp__providerName(objHandle: HCkCsp): PWideChar; stdcall;

function CkCsp_getProviderType(objHandle: HCkCsp): Integer; stdcall;

procedure CkCsp_getUncommonOptions(objHandle: HCkCsp; outPropVal: HCkString); stdcall;

procedure CkCsp_putUncommonOptions(objHandle: HCkCsp; newPropVal: PWideChar); stdcall;

function CkCsp__uncommonOptions(objHandle: HCkCsp): PWideChar; stdcall;

function CkCsp_getVerboseLogging(objHandle: HCkCsp): wordbool; stdcall;

procedure CkCsp_putVerboseLogging(objHandle: HCkCsp; newPropVal: wordbool); stdcall;

procedure CkCsp_getVersion(objHandle: HCkCsp; outPropVal: HCkString); stdcall;

function CkCsp__version(objHandle: HCkCsp): PWideChar; stdcall;

function CkCsp_GetKeyContainerNames(objHandle: HCkCsp): HCkStringArray; stdcall;

function CkCsp_GetProviders(objHandle: HCkCsp; providerNames: HCkStringTable): wordbool; stdcall;

function CkCsp_HasEncryptAlgorithm(objHandle: HCkCsp; name: PWideChar; numBits: Integer): wordbool; stdcall;

function CkCsp_HasHashAlgorithm(objHandle: HCkCsp; name: PWideChar; numBits: Integer): wordbool; stdcall;

function CkCsp_Initialize(objHandle: HCkCsp): wordbool; stdcall;

function CkCsp_NthEncryptionAlgorithm(objHandle: HCkCsp; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkCsp__nthEncryptionAlgorithm(objHandle: HCkCsp; index: Integer): PWideChar; stdcall;

function CkCsp_NthEncryptionNumBits(objHandle: HCkCsp; index: Integer): Integer; stdcall;

function CkCsp_NthHashAlgorithmName(objHandle: HCkCsp; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkCsp__nthHashAlgorithmName(objHandle: HCkCsp; index: Integer): PWideChar; stdcall;

function CkCsp_NthHashNumBits(objHandle: HCkCsp; index: Integer): Integer; stdcall;

function CkCsp_NthKeyContainerName(objHandle: HCkCsp; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkCsp__nthKeyContainerName(objHandle: HCkCsp; index: Integer): PWideChar; stdcall;

function CkCsp_NthKeyExchangeAlgorithm(objHandle: HCkCsp; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkCsp__nthKeyExchangeAlgorithm(objHandle: HCkCsp; index: Integer): PWideChar; stdcall;

function CkCsp_NthKeyExchangeNumBits(objHandle: HCkCsp; index: Integer): Integer; stdcall;

function CkCsp_NthSignatureAlgorithm(objHandle: HCkCsp; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkCsp__nthSignatureAlgorithm(objHandle: HCkCsp; index: Integer): PWideChar; stdcall;

function CkCsp_NthSignatureNumBits(objHandle: HCkCsp; index: Integer): Integer; stdcall;

function CkCsp_SaveLastError(objHandle: HCkCsp; path: PWideChar): wordbool; stdcall;

function CkCsp_SetEncryptAlgorithm(objHandle: HCkCsp; name: PWideChar): Integer; stdcall;

function CkCsp_SetHashAlgorithm(objHandle: HCkCsp; name: PWideChar): Integer; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkCsp_Create; external DLLName;
procedure CkCsp_Dispose; external DLLName;
procedure CkCsp_getDebugLogFilePath; external DLLName;
procedure CkCsp_putDebugLogFilePath; external DLLName;
function CkCsp__debugLogFilePath; external DLLName;
procedure CkCsp_getEncryptAlgorithm; external DLLName;
function CkCsp__encryptAlgorithm; external DLLName;
function CkCsp_getEncryptAlgorithmID; external DLLName;
function CkCsp_getEncryptNumBits; external DLLName;
procedure CkCsp_getHashAlgorithm; external DLLName;
function CkCsp__hashAlgorithm; external DLLName;
function CkCsp_getHashAlgorithmID; external DLLName;
function CkCsp_getHashNumBits; external DLLName;
procedure CkCsp_getKeyContainerName; external DLLName;
procedure CkCsp_putKeyContainerName; external DLLName;
function CkCsp__keyContainerName; external DLLName;
procedure CkCsp_getLastErrorHtml; external DLLName;
function CkCsp__lastErrorHtml; external DLLName;
procedure CkCsp_getLastErrorText; external DLLName;
function CkCsp__lastErrorText; external DLLName;
procedure CkCsp_getLastErrorXml; external DLLName;
function CkCsp__lastErrorXml; external DLLName;
function CkCsp_getLastMethodSuccess; external DLLName;
procedure CkCsp_putLastMethodSuccess; external DLLName;
function CkCsp_getMachineKeyset; external DLLName;
procedure CkCsp_putMachineKeyset; external DLLName;
function CkCsp_getNumEncryptAlgorithms; external DLLName;
function CkCsp_getNumHashAlgorithms; external DLLName;
function CkCsp_getNumKeyContainers; external DLLName;
function CkCsp_getNumKeyExchangeAlgorithms; external DLLName;
function CkCsp_getNumSignatureAlgorithms; external DLLName;
procedure CkCsp_getProviderName; external DLLName;
procedure CkCsp_putProviderName; external DLLName;
function CkCsp__providerName; external DLLName;
function CkCsp_getProviderType; external DLLName;
procedure CkCsp_getUncommonOptions; external DLLName;
procedure CkCsp_putUncommonOptions; external DLLName;
function CkCsp__uncommonOptions; external DLLName;
function CkCsp_getVerboseLogging; external DLLName;
procedure CkCsp_putVerboseLogging; external DLLName;
procedure CkCsp_getVersion; external DLLName;
function CkCsp__version; external DLLName;
function CkCsp_GetKeyContainerNames; external DLLName;
function CkCsp_GetProviders; external DLLName;
function CkCsp_HasEncryptAlgorithm; external DLLName;
function CkCsp_HasHashAlgorithm; external DLLName;
function CkCsp_Initialize; external DLLName;
function CkCsp_NthEncryptionAlgorithm; external DLLName;
function CkCsp__nthEncryptionAlgorithm; external DLLName;
function CkCsp_NthEncryptionNumBits; external DLLName;
function CkCsp_NthHashAlgorithmName; external DLLName;
function CkCsp__nthHashAlgorithmName; external DLLName;
function CkCsp_NthHashNumBits; external DLLName;
function CkCsp_NthKeyContainerName; external DLLName;
function CkCsp__nthKeyContainerName; external DLLName;
function CkCsp_NthKeyExchangeAlgorithm; external DLLName;
function CkCsp__nthKeyExchangeAlgorithm; external DLLName;
function CkCsp_NthKeyExchangeNumBits; external DLLName;
function CkCsp_NthSignatureAlgorithm; external DLLName;
function CkCsp__nthSignatureAlgorithm; external DLLName;
function CkCsp_NthSignatureNumBits; external DLLName;
function CkCsp_SaveLastError; external DLLName;
function CkCsp_SetEncryptAlgorithm; external DLLName;
function CkCsp_SetHashAlgorithm; external DLLName;



end.
