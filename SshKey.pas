unit SshKey;

interface

type

HCkSshKey = Pointer;
HCkPkcs11 = Pointer;
HCkString = Pointer;


function CkSshKey_Create: HCkSshKey; stdcall;
procedure CkSshKey_Dispose(handle: HCkSshKey); stdcall;
procedure CkSshKey_getComment(objHandle: HCkSshKey; outPropVal: HCkString); stdcall;

procedure CkSshKey_putComment(objHandle: HCkSshKey; newPropVal: PWideChar); stdcall;

function CkSshKey__comment(objHandle: HCkSshKey): PWideChar; stdcall;

procedure CkSshKey_getDebugLogFilePath(objHandle: HCkSshKey; outPropVal: HCkString); stdcall;

procedure CkSshKey_putDebugLogFilePath(objHandle: HCkSshKey; newPropVal: PWideChar); stdcall;

function CkSshKey__debugLogFilePath(objHandle: HCkSshKey): PWideChar; stdcall;

function CkSshKey_getIsDsaKey(objHandle: HCkSshKey): wordbool; stdcall;

function CkSshKey_getIsPrivateKey(objHandle: HCkSshKey): wordbool; stdcall;

function CkSshKey_getIsRsaKey(objHandle: HCkSshKey): wordbool; stdcall;

procedure CkSshKey_getKeyType(objHandle: HCkSshKey; outPropVal: HCkString); stdcall;

function CkSshKey__keyType(objHandle: HCkSshKey): PWideChar; stdcall;

procedure CkSshKey_getLastErrorHtml(objHandle: HCkSshKey; outPropVal: HCkString); stdcall;

function CkSshKey__lastErrorHtml(objHandle: HCkSshKey): PWideChar; stdcall;

procedure CkSshKey_getLastErrorText(objHandle: HCkSshKey; outPropVal: HCkString); stdcall;

function CkSshKey__lastErrorText(objHandle: HCkSshKey): PWideChar; stdcall;

procedure CkSshKey_getLastErrorXml(objHandle: HCkSshKey; outPropVal: HCkString); stdcall;

function CkSshKey__lastErrorXml(objHandle: HCkSshKey): PWideChar; stdcall;

function CkSshKey_getLastMethodSuccess(objHandle: HCkSshKey): wordbool; stdcall;

procedure CkSshKey_putLastMethodSuccess(objHandle: HCkSshKey; newPropVal: wordbool); stdcall;

procedure CkSshKey_getPassword(objHandle: HCkSshKey; outPropVal: HCkString); stdcall;

procedure CkSshKey_putPassword(objHandle: HCkSshKey; newPropVal: PWideChar); stdcall;

function CkSshKey__password(objHandle: HCkSshKey): PWideChar; stdcall;

procedure CkSshKey_getUncommonOptions(objHandle: HCkSshKey; outPropVal: HCkString); stdcall;

procedure CkSshKey_putUncommonOptions(objHandle: HCkSshKey; newPropVal: PWideChar); stdcall;

function CkSshKey__uncommonOptions(objHandle: HCkSshKey): PWideChar; stdcall;

function CkSshKey_getVerboseLogging(objHandle: HCkSshKey): wordbool; stdcall;

procedure CkSshKey_putVerboseLogging(objHandle: HCkSshKey; newPropVal: wordbool); stdcall;

procedure CkSshKey_getVersion(objHandle: HCkSshKey; outPropVal: HCkString); stdcall;

function CkSshKey__version(objHandle: HCkSshKey): PWideChar; stdcall;

function CkSshKey_FromOpenSshPrivateKey(objHandle: HCkSshKey; keyStr: PWideChar): wordbool; stdcall;

function CkSshKey_FromOpenSshPublicKey(objHandle: HCkSshKey; keyStr: PWideChar): wordbool; stdcall;

function CkSshKey_FromPuttyPrivateKey(objHandle: HCkSshKey; keyStr: PWideChar): wordbool; stdcall;

function CkSshKey_FromRfc4716PublicKey(objHandle: HCkSshKey; keyStr: PWideChar): wordbool; stdcall;

function CkSshKey_FromXml(objHandle: HCkSshKey; xmlKey: PWideChar): wordbool; stdcall;

function CkSshKey_GenerateDsaKey(objHandle: HCkSshKey; numBits: Integer): wordbool; stdcall;

function CkSshKey_GenerateEcdsaKey(objHandle: HCkSshKey; curveName: PWideChar): wordbool; stdcall;

function CkSshKey_GenerateEd25519Key(objHandle: HCkSshKey): wordbool; stdcall;

function CkSshKey_GenerateRsaKey(objHandle: HCkSshKey; numBits: Integer; exponent: Integer): wordbool; stdcall;

function CkSshKey_GenFingerprint(objHandle: HCkSshKey; outStr: HCkString): wordbool; stdcall;

function CkSshKey__genFingerprint(objHandle: HCkSshKey): PWideChar; stdcall;

function CkSshKey_LoadText(objHandle: HCkSshKey; filename: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkSshKey__loadText(objHandle: HCkSshKey; filename: PWideChar): PWideChar; stdcall;

function CkSshKey_SaveLastError(objHandle: HCkSshKey; path: PWideChar): wordbool; stdcall;

function CkSshKey_SaveText(objHandle: HCkSshKey; strToSave: PWideChar; filename: PWideChar): wordbool; stdcall;

function CkSshKey_ToOpenSshPrivateKey(objHandle: HCkSshKey; bEncrypt: wordbool; outStr: HCkString): wordbool; stdcall;

function CkSshKey__toOpenSshPrivateKey(objHandle: HCkSshKey; bEncrypt: wordbool): PWideChar; stdcall;

function CkSshKey_ToOpenSshPublicKey(objHandle: HCkSshKey; outStr: HCkString): wordbool; stdcall;

function CkSshKey__toOpenSshPublicKey(objHandle: HCkSshKey): PWideChar; stdcall;

function CkSshKey_ToPuttyPrivateKey(objHandle: HCkSshKey; bEncrypt: wordbool; outStr: HCkString): wordbool; stdcall;

function CkSshKey__toPuttyPrivateKey(objHandle: HCkSshKey; bEncrypt: wordbool): PWideChar; stdcall;

function CkSshKey_ToRfc4716PublicKey(objHandle: HCkSshKey; outStr: HCkString): wordbool; stdcall;

function CkSshKey__toRfc4716PublicKey(objHandle: HCkSshKey): PWideChar; stdcall;

function CkSshKey_ToXml(objHandle: HCkSshKey; outStr: HCkString): wordbool; stdcall;

function CkSshKey__toXml(objHandle: HCkSshKey): PWideChar; stdcall;

function CkSshKey_UsePkcs11(objHandle: HCkSshKey; session: HCkPkcs11; privKeyHandle: LongWord; pubKeyHandle: LongWord; keyType: PWideChar): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkSshKey_Create; external DLLName;
procedure CkSshKey_Dispose; external DLLName;
procedure CkSshKey_getComment; external DLLName;
procedure CkSshKey_putComment; external DLLName;
function CkSshKey__comment; external DLLName;
procedure CkSshKey_getDebugLogFilePath; external DLLName;
procedure CkSshKey_putDebugLogFilePath; external DLLName;
function CkSshKey__debugLogFilePath; external DLLName;
function CkSshKey_getIsDsaKey; external DLLName;
function CkSshKey_getIsPrivateKey; external DLLName;
function CkSshKey_getIsRsaKey; external DLLName;
procedure CkSshKey_getKeyType; external DLLName;
function CkSshKey__keyType; external DLLName;
procedure CkSshKey_getLastErrorHtml; external DLLName;
function CkSshKey__lastErrorHtml; external DLLName;
procedure CkSshKey_getLastErrorText; external DLLName;
function CkSshKey__lastErrorText; external DLLName;
procedure CkSshKey_getLastErrorXml; external DLLName;
function CkSshKey__lastErrorXml; external DLLName;
function CkSshKey_getLastMethodSuccess; external DLLName;
procedure CkSshKey_putLastMethodSuccess; external DLLName;
procedure CkSshKey_getPassword; external DLLName;
procedure CkSshKey_putPassword; external DLLName;
function CkSshKey__password; external DLLName;
procedure CkSshKey_getUncommonOptions; external DLLName;
procedure CkSshKey_putUncommonOptions; external DLLName;
function CkSshKey__uncommonOptions; external DLLName;
function CkSshKey_getVerboseLogging; external DLLName;
procedure CkSshKey_putVerboseLogging; external DLLName;
procedure CkSshKey_getVersion; external DLLName;
function CkSshKey__version; external DLLName;
function CkSshKey_FromOpenSshPrivateKey; external DLLName;
function CkSshKey_FromOpenSshPublicKey; external DLLName;
function CkSshKey_FromPuttyPrivateKey; external DLLName;
function CkSshKey_FromRfc4716PublicKey; external DLLName;
function CkSshKey_FromXml; external DLLName;
function CkSshKey_GenerateDsaKey; external DLLName;
function CkSshKey_GenerateEcdsaKey; external DLLName;
function CkSshKey_GenerateEd25519Key; external DLLName;
function CkSshKey_GenerateRsaKey; external DLLName;
function CkSshKey_GenFingerprint; external DLLName;
function CkSshKey__genFingerprint; external DLLName;
function CkSshKey_LoadText; external DLLName;
function CkSshKey__loadText; external DLLName;
function CkSshKey_SaveLastError; external DLLName;
function CkSshKey_SaveText; external DLLName;
function CkSshKey_ToOpenSshPrivateKey; external DLLName;
function CkSshKey__toOpenSshPrivateKey; external DLLName;
function CkSshKey_ToOpenSshPublicKey; external DLLName;
function CkSshKey__toOpenSshPublicKey; external DLLName;
function CkSshKey_ToPuttyPrivateKey; external DLLName;
function CkSshKey__toPuttyPrivateKey; external DLLName;
function CkSshKey_ToRfc4716PublicKey; external DLLName;
function CkSshKey__toRfc4716PublicKey; external DLLName;
function CkSshKey_ToXml; external DLLName;
function CkSshKey__toXml; external DLLName;
function CkSshKey_UsePkcs11; external DLLName;



end.
