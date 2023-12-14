unit Hashtable;

interface

type

HCkStringTable = Pointer;
HCkStringBuilder = Pointer;
HCkHashtable = Pointer;
HCkString = Pointer;


function CkHashtable_Create: HCkHashtable; stdcall;
procedure CkHashtable_Dispose(handle: HCkHashtable); stdcall;
function CkHashtable_getLastMethodSuccess(objHandle: HCkHashtable): wordbool; stdcall;

procedure CkHashtable_putLastMethodSuccess(objHandle: HCkHashtable; newPropVal: wordbool); stdcall;

function CkHashtable_AddFromXmlSb(objHandle: HCkHashtable; sbXml: HCkStringBuilder): wordbool; stdcall;

function CkHashtable_AddInt(objHandle: HCkHashtable; key: PWideChar; value: Integer): wordbool; stdcall;

function CkHashtable_AddQueryParams(objHandle: HCkHashtable; queryParams: PWideChar): wordbool; stdcall;

function CkHashtable_AddStr(objHandle: HCkHashtable; key: PWideChar; value: PWideChar): wordbool; stdcall;

procedure CkHashtable_Clear(objHandle: HCkHashtable); stdcall;

function CkHashtable_ClearWithNewCapacity(objHandle: HCkHashtable; capacity: Integer): wordbool; stdcall;

function CkHashtable_Contains(objHandle: HCkHashtable; key: PWideChar): wordbool; stdcall;

function CkHashtable_ContainsIntKey(objHandle: HCkHashtable; key: Integer): wordbool; stdcall;

function CkHashtable_GetKeys(objHandle: HCkHashtable; strTable: HCkStringTable): wordbool; stdcall;

function CkHashtable_LookupInt(objHandle: HCkHashtable; key: PWideChar): Integer; stdcall;

function CkHashtable_LookupStr(objHandle: HCkHashtable; key: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkHashtable__lookupStr(objHandle: HCkHashtable; key: PWideChar): PWideChar; stdcall;

function CkHashtable_Remove(objHandle: HCkHashtable; key: PWideChar): wordbool; stdcall;

function CkHashtable_ToQueryString(objHandle: HCkHashtable; outStr: HCkString): wordbool; stdcall;

function CkHashtable__toQueryString(objHandle: HCkHashtable): PWideChar; stdcall;

function CkHashtable_ToXmlSb(objHandle: HCkHashtable; sbXml: HCkStringBuilder): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkHashtable_Create; external DLLName;
procedure CkHashtable_Dispose; external DLLName;
function CkHashtable_getLastMethodSuccess; external DLLName;
procedure CkHashtable_putLastMethodSuccess; external DLLName;
function CkHashtable_AddFromXmlSb; external DLLName;
function CkHashtable_AddInt; external DLLName;
function CkHashtable_AddQueryParams; external DLLName;
function CkHashtable_AddStr; external DLLName;
procedure CkHashtable_Clear; external DLLName;
function CkHashtable_ClearWithNewCapacity; external DLLName;
function CkHashtable_Contains; external DLLName;
function CkHashtable_ContainsIntKey; external DLLName;
function CkHashtable_GetKeys; external DLLName;
function CkHashtable_LookupInt; external DLLName;
function CkHashtable_LookupStr; external DLLName;
function CkHashtable__lookupStr; external DLLName;
function CkHashtable_Remove; external DLLName;
function CkHashtable_ToQueryString; external DLLName;
function CkHashtable__toQueryString; external DLLName;
function CkHashtable_ToXmlSb; external DLLName;



end.
