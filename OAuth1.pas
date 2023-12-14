unit OAuth1;

interface

type

HCkPrivateKey = Pointer;
HCkOAuth1 = Pointer;
HCkString = Pointer;


function CkOAuth1_Create: HCkOAuth1; stdcall;
procedure CkOAuth1_Dispose(handle: HCkOAuth1); stdcall;
procedure CkOAuth1_getAuthorizationHeader(objHandle: HCkOAuth1; outPropVal: HCkString); stdcall;

function CkOAuth1__authorizationHeader(objHandle: HCkOAuth1): PWideChar; stdcall;

procedure CkOAuth1_getBaseString(objHandle: HCkOAuth1; outPropVal: HCkString); stdcall;

function CkOAuth1__baseString(objHandle: HCkOAuth1): PWideChar; stdcall;

procedure CkOAuth1_getConsumerKey(objHandle: HCkOAuth1; outPropVal: HCkString); stdcall;

procedure CkOAuth1_putConsumerKey(objHandle: HCkOAuth1; newPropVal: PWideChar); stdcall;

function CkOAuth1__consumerKey(objHandle: HCkOAuth1): PWideChar; stdcall;

procedure CkOAuth1_getConsumerSecret(objHandle: HCkOAuth1; outPropVal: HCkString); stdcall;

procedure CkOAuth1_putConsumerSecret(objHandle: HCkOAuth1; newPropVal: PWideChar); stdcall;

function CkOAuth1__consumerSecret(objHandle: HCkOAuth1): PWideChar; stdcall;

procedure CkOAuth1_getDebugLogFilePath(objHandle: HCkOAuth1; outPropVal: HCkString); stdcall;

procedure CkOAuth1_putDebugLogFilePath(objHandle: HCkOAuth1; newPropVal: PWideChar); stdcall;

function CkOAuth1__debugLogFilePath(objHandle: HCkOAuth1): PWideChar; stdcall;

procedure CkOAuth1_getEncodedSignature(objHandle: HCkOAuth1; outPropVal: HCkString); stdcall;

function CkOAuth1__encodedSignature(objHandle: HCkOAuth1): PWideChar; stdcall;

procedure CkOAuth1_getGeneratedUrl(objHandle: HCkOAuth1; outPropVal: HCkString); stdcall;

function CkOAuth1__generatedUrl(objHandle: HCkOAuth1): PWideChar; stdcall;

procedure CkOAuth1_getHmacKey(objHandle: HCkOAuth1; outPropVal: HCkString); stdcall;

function CkOAuth1__hmacKey(objHandle: HCkOAuth1): PWideChar; stdcall;

procedure CkOAuth1_getLastErrorHtml(objHandle: HCkOAuth1; outPropVal: HCkString); stdcall;

function CkOAuth1__lastErrorHtml(objHandle: HCkOAuth1): PWideChar; stdcall;

procedure CkOAuth1_getLastErrorText(objHandle: HCkOAuth1; outPropVal: HCkString); stdcall;

function CkOAuth1__lastErrorText(objHandle: HCkOAuth1): PWideChar; stdcall;

procedure CkOAuth1_getLastErrorXml(objHandle: HCkOAuth1; outPropVal: HCkString); stdcall;

function CkOAuth1__lastErrorXml(objHandle: HCkOAuth1): PWideChar; stdcall;

function CkOAuth1_getLastMethodSuccess(objHandle: HCkOAuth1): wordbool; stdcall;

procedure CkOAuth1_putLastMethodSuccess(objHandle: HCkOAuth1; newPropVal: wordbool); stdcall;

procedure CkOAuth1_getNonce(objHandle: HCkOAuth1; outPropVal: HCkString); stdcall;

procedure CkOAuth1_putNonce(objHandle: HCkOAuth1; newPropVal: PWideChar); stdcall;

function CkOAuth1__nonce(objHandle: HCkOAuth1): PWideChar; stdcall;

procedure CkOAuth1_getOauthMethod(objHandle: HCkOAuth1; outPropVal: HCkString); stdcall;

procedure CkOAuth1_putOauthMethod(objHandle: HCkOAuth1; newPropVal: PWideChar); stdcall;

function CkOAuth1__oauthMethod(objHandle: HCkOAuth1): PWideChar; stdcall;

procedure CkOAuth1_getOauthUrl(objHandle: HCkOAuth1; outPropVal: HCkString); stdcall;

procedure CkOAuth1_putOauthUrl(objHandle: HCkOAuth1; newPropVal: PWideChar); stdcall;

function CkOAuth1__oauthUrl(objHandle: HCkOAuth1): PWideChar; stdcall;

procedure CkOAuth1_getOauthVersion(objHandle: HCkOAuth1; outPropVal: HCkString); stdcall;

procedure CkOAuth1_putOauthVersion(objHandle: HCkOAuth1; newPropVal: PWideChar); stdcall;

function CkOAuth1__oauthVersion(objHandle: HCkOAuth1): PWideChar; stdcall;

procedure CkOAuth1_getQueryString(objHandle: HCkOAuth1; outPropVal: HCkString); stdcall;

function CkOAuth1__queryString(objHandle: HCkOAuth1): PWideChar; stdcall;

procedure CkOAuth1_getRealm(objHandle: HCkOAuth1; outPropVal: HCkString); stdcall;

procedure CkOAuth1_putRealm(objHandle: HCkOAuth1; newPropVal: PWideChar); stdcall;

function CkOAuth1__realm(objHandle: HCkOAuth1): PWideChar; stdcall;

procedure CkOAuth1_getSignature(objHandle: HCkOAuth1; outPropVal: HCkString); stdcall;

function CkOAuth1__signature(objHandle: HCkOAuth1): PWideChar; stdcall;

procedure CkOAuth1_getSignatureMethod(objHandle: HCkOAuth1; outPropVal: HCkString); stdcall;

procedure CkOAuth1_putSignatureMethod(objHandle: HCkOAuth1; newPropVal: PWideChar); stdcall;

function CkOAuth1__signatureMethod(objHandle: HCkOAuth1): PWideChar; stdcall;

procedure CkOAuth1_getTimestamp(objHandle: HCkOAuth1; outPropVal: HCkString); stdcall;

procedure CkOAuth1_putTimestamp(objHandle: HCkOAuth1; newPropVal: PWideChar); stdcall;

function CkOAuth1__timestamp(objHandle: HCkOAuth1): PWideChar; stdcall;

procedure CkOAuth1_getToken(objHandle: HCkOAuth1; outPropVal: HCkString); stdcall;

procedure CkOAuth1_putToken(objHandle: HCkOAuth1; newPropVal: PWideChar); stdcall;

function CkOAuth1__token(objHandle: HCkOAuth1): PWideChar; stdcall;

procedure CkOAuth1_getTokenSecret(objHandle: HCkOAuth1; outPropVal: HCkString); stdcall;

procedure CkOAuth1_putTokenSecret(objHandle: HCkOAuth1; newPropVal: PWideChar); stdcall;

function CkOAuth1__tokenSecret(objHandle: HCkOAuth1): PWideChar; stdcall;

procedure CkOAuth1_getUncommonOptions(objHandle: HCkOAuth1; outPropVal: HCkString); stdcall;

procedure CkOAuth1_putUncommonOptions(objHandle: HCkOAuth1; newPropVal: PWideChar); stdcall;

function CkOAuth1__uncommonOptions(objHandle: HCkOAuth1): PWideChar; stdcall;

function CkOAuth1_getVerboseLogging(objHandle: HCkOAuth1): wordbool; stdcall;

procedure CkOAuth1_putVerboseLogging(objHandle: HCkOAuth1; newPropVal: wordbool); stdcall;

procedure CkOAuth1_getVersion(objHandle: HCkOAuth1; outPropVal: HCkString); stdcall;

function CkOAuth1__version(objHandle: HCkOAuth1): PWideChar; stdcall;

function CkOAuth1_AddParam(objHandle: HCkOAuth1; name: PWideChar; value: PWideChar): wordbool; stdcall;

function CkOAuth1_Generate(objHandle: HCkOAuth1): wordbool; stdcall;

function CkOAuth1_GenNonce(objHandle: HCkOAuth1; numBytes: Integer): wordbool; stdcall;

function CkOAuth1_GenTimestamp(objHandle: HCkOAuth1): wordbool; stdcall;

function CkOAuth1_RemoveParam(objHandle: HCkOAuth1; name: PWideChar): wordbool; stdcall;

function CkOAuth1_SaveLastError(objHandle: HCkOAuth1; path: PWideChar): wordbool; stdcall;

function CkOAuth1_SetRsaKey(objHandle: HCkOAuth1; privKey: HCkPrivateKey): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkOAuth1_Create; external DLLName;
procedure CkOAuth1_Dispose; external DLLName;
procedure CkOAuth1_getAuthorizationHeader; external DLLName;
function CkOAuth1__authorizationHeader; external DLLName;
procedure CkOAuth1_getBaseString; external DLLName;
function CkOAuth1__baseString; external DLLName;
procedure CkOAuth1_getConsumerKey; external DLLName;
procedure CkOAuth1_putConsumerKey; external DLLName;
function CkOAuth1__consumerKey; external DLLName;
procedure CkOAuth1_getConsumerSecret; external DLLName;
procedure CkOAuth1_putConsumerSecret; external DLLName;
function CkOAuth1__consumerSecret; external DLLName;
procedure CkOAuth1_getDebugLogFilePath; external DLLName;
procedure CkOAuth1_putDebugLogFilePath; external DLLName;
function CkOAuth1__debugLogFilePath; external DLLName;
procedure CkOAuth1_getEncodedSignature; external DLLName;
function CkOAuth1__encodedSignature; external DLLName;
procedure CkOAuth1_getGeneratedUrl; external DLLName;
function CkOAuth1__generatedUrl; external DLLName;
procedure CkOAuth1_getHmacKey; external DLLName;
function CkOAuth1__hmacKey; external DLLName;
procedure CkOAuth1_getLastErrorHtml; external DLLName;
function CkOAuth1__lastErrorHtml; external DLLName;
procedure CkOAuth1_getLastErrorText; external DLLName;
function CkOAuth1__lastErrorText; external DLLName;
procedure CkOAuth1_getLastErrorXml; external DLLName;
function CkOAuth1__lastErrorXml; external DLLName;
function CkOAuth1_getLastMethodSuccess; external DLLName;
procedure CkOAuth1_putLastMethodSuccess; external DLLName;
procedure CkOAuth1_getNonce; external DLLName;
procedure CkOAuth1_putNonce; external DLLName;
function CkOAuth1__nonce; external DLLName;
procedure CkOAuth1_getOauthMethod; external DLLName;
procedure CkOAuth1_putOauthMethod; external DLLName;
function CkOAuth1__oauthMethod; external DLLName;
procedure CkOAuth1_getOauthUrl; external DLLName;
procedure CkOAuth1_putOauthUrl; external DLLName;
function CkOAuth1__oauthUrl; external DLLName;
procedure CkOAuth1_getOauthVersion; external DLLName;
procedure CkOAuth1_putOauthVersion; external DLLName;
function CkOAuth1__oauthVersion; external DLLName;
procedure CkOAuth1_getQueryString; external DLLName;
function CkOAuth1__queryString; external DLLName;
procedure CkOAuth1_getRealm; external DLLName;
procedure CkOAuth1_putRealm; external DLLName;
function CkOAuth1__realm; external DLLName;
procedure CkOAuth1_getSignature; external DLLName;
function CkOAuth1__signature; external DLLName;
procedure CkOAuth1_getSignatureMethod; external DLLName;
procedure CkOAuth1_putSignatureMethod; external DLLName;
function CkOAuth1__signatureMethod; external DLLName;
procedure CkOAuth1_getTimestamp; external DLLName;
procedure CkOAuth1_putTimestamp; external DLLName;
function CkOAuth1__timestamp; external DLLName;
procedure CkOAuth1_getToken; external DLLName;
procedure CkOAuth1_putToken; external DLLName;
function CkOAuth1__token; external DLLName;
procedure CkOAuth1_getTokenSecret; external DLLName;
procedure CkOAuth1_putTokenSecret; external DLLName;
function CkOAuth1__tokenSecret; external DLLName;
procedure CkOAuth1_getUncommonOptions; external DLLName;
procedure CkOAuth1_putUncommonOptions; external DLLName;
function CkOAuth1__uncommonOptions; external DLLName;
function CkOAuth1_getVerboseLogging; external DLLName;
procedure CkOAuth1_putVerboseLogging; external DLLName;
procedure CkOAuth1_getVersion; external DLLName;
function CkOAuth1__version; external DLLName;
function CkOAuth1_AddParam; external DLLName;
function CkOAuth1_Generate; external DLLName;
function CkOAuth1_GenNonce; external DLLName;
function CkOAuth1_GenTimestamp; external DLLName;
function CkOAuth1_RemoveParam; external DLLName;
function CkOAuth1_SaveLastError; external DLLName;
function CkOAuth1_SetRsaKey; external DLLName;



end.
