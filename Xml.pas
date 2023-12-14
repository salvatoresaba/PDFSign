unit Xml;

interface

type

HCkBinData = Pointer;
HCkXml = Pointer;
HCkStringBuilder = Pointer;
HCkByteData = Pointer;
HCkString = Pointer;


function CkXml_Create: HCkXml; stdcall;
procedure CkXml_Dispose(handle: HCkXml); stdcall;
function CkXml_getCdata(objHandle: HCkXml): wordbool; stdcall;

procedure CkXml_putCdata(objHandle: HCkXml; newPropVal: wordbool); stdcall;

procedure CkXml_getContent(objHandle: HCkXml; outPropVal: HCkString); stdcall;

procedure CkXml_putContent(objHandle: HCkXml; newPropVal: PWideChar); stdcall;

function CkXml__content(objHandle: HCkXml): PWideChar; stdcall;

function CkXml_getContentInt(objHandle: HCkXml): Integer; stdcall;

procedure CkXml_putContentInt(objHandle: HCkXml; newPropVal: Integer); stdcall;

procedure CkXml_getDebugLogFilePath(objHandle: HCkXml; outPropVal: HCkString); stdcall;

procedure CkXml_putDebugLogFilePath(objHandle: HCkXml; newPropVal: PWideChar); stdcall;

function CkXml__debugLogFilePath(objHandle: HCkXml): PWideChar; stdcall;

procedure CkXml_getDocType(objHandle: HCkXml; outPropVal: HCkString); stdcall;

procedure CkXml_putDocType(objHandle: HCkXml; newPropVal: PWideChar); stdcall;

function CkXml__docType(objHandle: HCkXml): PWideChar; stdcall;

function CkXml_getEmitBom(objHandle: HCkXml): wordbool; stdcall;

procedure CkXml_putEmitBom(objHandle: HCkXml; newPropVal: wordbool); stdcall;

function CkXml_getEmitCompact(objHandle: HCkXml): wordbool; stdcall;

procedure CkXml_putEmitCompact(objHandle: HCkXml; newPropVal: wordbool); stdcall;

function CkXml_getEmitXmlDecl(objHandle: HCkXml): wordbool; stdcall;

procedure CkXml_putEmitXmlDecl(objHandle: HCkXml; newPropVal: wordbool); stdcall;

procedure CkXml_getEncoding(objHandle: HCkXml; outPropVal: HCkString); stdcall;

procedure CkXml_putEncoding(objHandle: HCkXml; newPropVal: PWideChar); stdcall;

function CkXml__encoding(objHandle: HCkXml): PWideChar; stdcall;

function CkXml_getI(objHandle: HCkXml): Integer; stdcall;

procedure CkXml_putI(objHandle: HCkXml; newPropVal: Integer); stdcall;

function CkXml_getIsBase64(objHandle: HCkXml): wordbool; stdcall;

function CkXml_getJ(objHandle: HCkXml): Integer; stdcall;

procedure CkXml_putJ(objHandle: HCkXml; newPropVal: Integer); stdcall;

function CkXml_getK(objHandle: HCkXml): Integer; stdcall;

procedure CkXml_putK(objHandle: HCkXml; newPropVal: Integer); stdcall;

procedure CkXml_getLastErrorHtml(objHandle: HCkXml; outPropVal: HCkString); stdcall;

function CkXml__lastErrorHtml(objHandle: HCkXml): PWideChar; stdcall;

procedure CkXml_getLastErrorText(objHandle: HCkXml; outPropVal: HCkString); stdcall;

function CkXml__lastErrorText(objHandle: HCkXml): PWideChar; stdcall;

procedure CkXml_getLastErrorXml(objHandle: HCkXml; outPropVal: HCkString); stdcall;

function CkXml__lastErrorXml(objHandle: HCkXml): PWideChar; stdcall;

function CkXml_getLastMethodSuccess(objHandle: HCkXml): wordbool; stdcall;

procedure CkXml_putLastMethodSuccess(objHandle: HCkXml; newPropVal: wordbool); stdcall;

function CkXml_getNumAttributes(objHandle: HCkXml): Integer; stdcall;

function CkXml_getNumChildren(objHandle: HCkXml): Integer; stdcall;

function CkXml_getSortCaseInsensitive(objHandle: HCkXml): wordbool; stdcall;

procedure CkXml_putSortCaseInsensitive(objHandle: HCkXml; newPropVal: wordbool); stdcall;

function CkXml_getStandalone(objHandle: HCkXml): wordbool; stdcall;

procedure CkXml_putStandalone(objHandle: HCkXml; newPropVal: wordbool); stdcall;

procedure CkXml_getTag(objHandle: HCkXml; outPropVal: HCkString); stdcall;

procedure CkXml_putTag(objHandle: HCkXml; newPropVal: PWideChar); stdcall;

function CkXml__tag(objHandle: HCkXml): PWideChar; stdcall;

procedure CkXml_getTagNsPrefix(objHandle: HCkXml; outPropVal: HCkString); stdcall;

procedure CkXml_putTagNsPrefix(objHandle: HCkXml; newPropVal: PWideChar); stdcall;

function CkXml__tagNsPrefix(objHandle: HCkXml): PWideChar; stdcall;

procedure CkXml_getTagPath(objHandle: HCkXml; outPropVal: HCkString); stdcall;

function CkXml__tagPath(objHandle: HCkXml): PWideChar; stdcall;

procedure CkXml_getTagUnprefixed(objHandle: HCkXml; outPropVal: HCkString); stdcall;

procedure CkXml_putTagUnprefixed(objHandle: HCkXml; newPropVal: PWideChar); stdcall;

function CkXml__tagUnprefixed(objHandle: HCkXml): PWideChar; stdcall;

function CkXml_getTreeId(objHandle: HCkXml): Integer; stdcall;

procedure CkXml_getUncommonOptions(objHandle: HCkXml; outPropVal: HCkString); stdcall;

procedure CkXml_putUncommonOptions(objHandle: HCkXml; newPropVal: PWideChar); stdcall;

function CkXml__uncommonOptions(objHandle: HCkXml): PWideChar; stdcall;

function CkXml_getVerboseLogging(objHandle: HCkXml): wordbool; stdcall;

procedure CkXml_putVerboseLogging(objHandle: HCkXml; newPropVal: wordbool); stdcall;

procedure CkXml_getVersion(objHandle: HCkXml; outPropVal: HCkString); stdcall;

function CkXml__version(objHandle: HCkXml): PWideChar; stdcall;

function CkXml_AccumulateTagContent(objHandle: HCkXml; tag: PWideChar; skipTags: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkXml__accumulateTagContent(objHandle: HCkXml; tag: PWideChar; skipTags: PWideChar): PWideChar; stdcall;

function CkXml_AddAttribute(objHandle: HCkXml; name: PWideChar; value: PWideChar): wordbool; stdcall;

function CkXml_AddAttributeInt(objHandle: HCkXml; name: PWideChar; value: Integer): wordbool; stdcall;

function CkXml_AddChildTree(objHandle: HCkXml; tree: HCkXml): wordbool; stdcall;

procedure CkXml_AddOrUpdateAttribute(objHandle: HCkXml; name: PWideChar; value: PWideChar); stdcall;

procedure CkXml_AddOrUpdateAttributeI(objHandle: HCkXml; name: PWideChar; value: Integer); stdcall;

procedure CkXml_AddStyleSheet(objHandle: HCkXml; styleSheet: PWideChar); stdcall;

procedure CkXml_AddToAttribute(objHandle: HCkXml; name: PWideChar; amount: Integer); stdcall;

procedure CkXml_AddToChildContent(objHandle: HCkXml; tag: PWideChar; amount: Integer); stdcall;

procedure CkXml_AddToContent(objHandle: HCkXml; amount: Integer); stdcall;

function CkXml_AppendToContent(objHandle: HCkXml; str: PWideChar): wordbool; stdcall;

function CkXml_BEncodeContent(objHandle: HCkXml; charset: PWideChar; inData: HCkByteData): wordbool; stdcall;

function CkXml_ChildContentMatches(objHandle: HCkXml; tagPath: PWideChar; pattern: PWideChar; caseSensitive: wordbool): wordbool; stdcall;

function CkXml_ChilkatPath(objHandle: HCkXml; pathCmd: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkXml__chilkatPath(objHandle: HCkXml; pathCmd: PWideChar): PWideChar; stdcall;

procedure CkXml_Clear(objHandle: HCkXml); stdcall;

function CkXml_ContentMatches(objHandle: HCkXml; pattern: PWideChar; caseSensitive: wordbool): wordbool; stdcall;

procedure CkXml_Copy(objHandle: HCkXml; node: HCkXml); stdcall;

procedure CkXml_CopyRef(objHandle: HCkXml; copyFromNode: HCkXml); stdcall;

function CkXml_DecodeContent(objHandle: HCkXml; outData: HCkByteData): wordbool; stdcall;

function CkXml_DecodeEntities(objHandle: HCkXml; str: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkXml__decodeEntities(objHandle: HCkXml; str: PWideChar): PWideChar; stdcall;

function CkXml_DecryptContent(objHandle: HCkXml; password: PWideChar): wordbool; stdcall;

function CkXml_EncryptContent(objHandle: HCkXml; password: PWideChar): wordbool; stdcall;

function CkXml_ExtractChildByIndex(objHandle: HCkXml; index: Integer): HCkXml; stdcall;

function CkXml_ExtractChildByName(objHandle: HCkXml; tagPath: PWideChar; attrName: PWideChar; attrValue: PWideChar): HCkXml; stdcall;

function CkXml_FindChild(objHandle: HCkXml; tagPath: PWideChar): HCkXml; stdcall;

function CkXml_FindChild2(objHandle: HCkXml; tagPath: PWideChar): wordbool; stdcall;

function CkXml_FindNextRecord(objHandle: HCkXml; tagPath: PWideChar; contentPattern: PWideChar): HCkXml; stdcall;

function CkXml_FindOrAddNewChild(objHandle: HCkXml; tagPath: PWideChar): HCkXml; stdcall;

function CkXml_FirstChild(objHandle: HCkXml): HCkXml; stdcall;

function CkXml_FirstChild2(objHandle: HCkXml): wordbool; stdcall;

function CkXml_GetAttributeName(objHandle: HCkXml; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkXml__getAttributeName(objHandle: HCkXml; index: Integer): PWideChar; stdcall;

function CkXml_GetAttributeValue(objHandle: HCkXml; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkXml__getAttributeValue(objHandle: HCkXml; index: Integer): PWideChar; stdcall;

function CkXml_GetAttributeValueInt(objHandle: HCkXml; index: Integer): Integer; stdcall;

function CkXml_GetAttrValue(objHandle: HCkXml; name: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkXml__getAttrValue(objHandle: HCkXml; name: PWideChar): PWideChar; stdcall;

function CkXml_GetAttrValueInt(objHandle: HCkXml; name: PWideChar): Integer; stdcall;

function CkXml_GetBinaryContent(objHandle: HCkXml; unzipFlag: wordbool; decryptFlag: wordbool; password: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkXml_GetChild(objHandle: HCkXml; index: Integer): HCkXml; stdcall;

function CkXml_GetChild2(objHandle: HCkXml; index: Integer): wordbool; stdcall;

function CkXml_GetChildAttrValue(objHandle: HCkXml; tagPath: PWideChar; attrName: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkXml__getChildAttrValue(objHandle: HCkXml; tagPath: PWideChar; attrName: PWideChar): PWideChar; stdcall;

function CkXml_GetChildBoolValue(objHandle: HCkXml; tagPath: PWideChar): wordbool; stdcall;

function CkXml_GetChildContent(objHandle: HCkXml; tagPath: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkXml__getChildContent(objHandle: HCkXml; tagPath: PWideChar): PWideChar; stdcall;

function CkXml_GetChildContentByIndex(objHandle: HCkXml; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkXml__getChildContentByIndex(objHandle: HCkXml; index: Integer): PWideChar; stdcall;

function CkXml_GetChildContentSb(objHandle: HCkXml; tagPath: PWideChar; sb: HCkStringBuilder): wordbool; stdcall;

function CkXml_GetChildExact(objHandle: HCkXml; tag: PWideChar; content: PWideChar): HCkXml; stdcall;

function CkXml_GetChildIntValue(objHandle: HCkXml; tagPath: PWideChar): Integer; stdcall;

function CkXml_GetChildTag(objHandle: HCkXml; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkXml__getChildTag(objHandle: HCkXml; index: Integer): PWideChar; stdcall;

function CkXml_GetChildTagByIndex(objHandle: HCkXml; index: Integer; outStr: HCkString): wordbool; stdcall;

function CkXml__getChildTagByIndex(objHandle: HCkXml; index: Integer): PWideChar; stdcall;

function CkXml_GetChildWithAttr(objHandle: HCkXml; tagPath: PWideChar; attrName: PWideChar; attrValue: PWideChar): HCkXml; stdcall;

function CkXml_GetChildWithContent(objHandle: HCkXml; content: PWideChar): HCkXml; stdcall;

function CkXml_GetChildWithTag(objHandle: HCkXml; tagPath: PWideChar): HCkXml; stdcall;

function CkXml_GetNthChildWithTag(objHandle: HCkXml; tag: PWideChar; n: Integer): HCkXml; stdcall;

function CkXml_GetNthChildWithTag2(objHandle: HCkXml; tag: PWideChar; n: Integer): wordbool; stdcall;

function CkXml_GetParent(objHandle: HCkXml): HCkXml; stdcall;

function CkXml_GetParent2(objHandle: HCkXml): wordbool; stdcall;

function CkXml_GetRoot(objHandle: HCkXml): HCkXml; stdcall;

procedure CkXml_GetRoot2(objHandle: HCkXml); stdcall;

function CkXml_GetSelf(objHandle: HCkXml): HCkXml; stdcall;

function CkXml_GetXml(objHandle: HCkXml; outStr: HCkString): wordbool; stdcall;

function CkXml__getXml(objHandle: HCkXml): PWideChar; stdcall;

function CkXml_GetXmlBd(objHandle: HCkXml; bd: HCkBinData): wordbool; stdcall;

function CkXml_GetXmlSb(objHandle: HCkXml; sb: HCkStringBuilder): wordbool; stdcall;

function CkXml_HasAttribute(objHandle: HCkXml; name: PWideChar): wordbool; stdcall;

function CkXml_HasAttrWithValue(objHandle: HCkXml; name: PWideChar; value: PWideChar): wordbool; stdcall;

function CkXml_HasChildWithContent(objHandle: HCkXml; content: PWideChar): wordbool; stdcall;

function CkXml_HasChildWithTag(objHandle: HCkXml; tagPath: PWideChar): wordbool; stdcall;

function CkXml_HasChildWithTagAndContent(objHandle: HCkXml; tagPath: PWideChar; content: PWideChar): wordbool; stdcall;

procedure CkXml_InsertChildTreeAfter(objHandle: HCkXml; index: Integer; tree: HCkXml); stdcall;

procedure CkXml_InsertChildTreeBefore(objHandle: HCkXml; index: Integer; tree: HCkXml); stdcall;

function CkXml_LastChild(objHandle: HCkXml): HCkXml; stdcall;

function CkXml_LastChild2(objHandle: HCkXml): wordbool; stdcall;

function CkXml_LoadBd(objHandle: HCkXml; bd: HCkBinData; autoTrim: wordbool): wordbool; stdcall;

function CkXml_LoadSb(objHandle: HCkXml; sb: HCkStringBuilder; autoTrim: wordbool): wordbool; stdcall;

function CkXml_LoadXml(objHandle: HCkXml; xmlData: PWideChar): wordbool; stdcall;

function CkXml_LoadXml2(objHandle: HCkXml; xmlData: PWideChar; autoTrim: wordbool): wordbool; stdcall;

function CkXml_LoadXmlFile(objHandle: HCkXml; fileName: PWideChar): wordbool; stdcall;

function CkXml_LoadXmlFile2(objHandle: HCkXml; fileName: PWideChar; autoTrim: wordbool): wordbool; stdcall;

function CkXml_NewChild(objHandle: HCkXml; tagPath: PWideChar; content: PWideChar): HCkXml; stdcall;

procedure CkXml_NewChild2(objHandle: HCkXml; tagPath: PWideChar; content: PWideChar); stdcall;

function CkXml_NewChildAfter(objHandle: HCkXml; index: Integer; tag: PWideChar; content: PWideChar): HCkXml; stdcall;

function CkXml_NewChildBefore(objHandle: HCkXml; index: Integer; tag: PWideChar; content: PWideChar): HCkXml; stdcall;

procedure CkXml_NewChildInt2(objHandle: HCkXml; tagPath: PWideChar; value: Integer); stdcall;

function CkXml_NextInTraversal2(objHandle: HCkXml; sbState: HCkStringBuilder): wordbool; stdcall;

function CkXml_NextSibling(objHandle: HCkXml): HCkXml; stdcall;

function CkXml_NextSibling2(objHandle: HCkXml): wordbool; stdcall;

function CkXml_NumChildrenAt(objHandle: HCkXml; tagPath: PWideChar): Integer; stdcall;

function CkXml_NumChildrenHavingTag(objHandle: HCkXml; tag: PWideChar): Integer; stdcall;

function CkXml_PreviousSibling(objHandle: HCkXml): HCkXml; stdcall;

function CkXml_PreviousSibling2(objHandle: HCkXml): wordbool; stdcall;

function CkXml_PruneAttribute(objHandle: HCkXml; attrName: PWideChar): Integer; stdcall;

function CkXml_PruneTag(objHandle: HCkXml; tag: PWideChar): Integer; stdcall;

function CkXml_QEncodeContent(objHandle: HCkXml; charset: PWideChar; inData: HCkByteData): wordbool; stdcall;

function CkXml_RemoveAllAttributes(objHandle: HCkXml): wordbool; stdcall;

procedure CkXml_RemoveAllChildren(objHandle: HCkXml); stdcall;

function CkXml_RemoveAttribute(objHandle: HCkXml; name: PWideChar): wordbool; stdcall;

procedure CkXml_RemoveChild(objHandle: HCkXml; tagPath: PWideChar); stdcall;

procedure CkXml_RemoveChildByIndex(objHandle: HCkXml; index: Integer); stdcall;

procedure CkXml_RemoveChildWithContent(objHandle: HCkXml; content: PWideChar); stdcall;

procedure CkXml_RemoveFromTree(objHandle: HCkXml); stdcall;

function CkXml_RemoveStyleSheet(objHandle: HCkXml; attrName: PWideChar; attrValue: PWideChar): Integer; stdcall;

function CkXml_SaveBinaryContent(objHandle: HCkXml; filename: PWideChar; unzipFlag: wordbool; decryptFlag: wordbool; password: PWideChar): wordbool; stdcall;

function CkXml_SaveLastError(objHandle: HCkXml; path: PWideChar): wordbool; stdcall;

function CkXml_SaveXml(objHandle: HCkXml; fileName: PWideChar): wordbool; stdcall;

procedure CkXml_Scrub(objHandle: HCkXml; directives: PWideChar); stdcall;

function CkXml_SearchAllForContent(objHandle: HCkXml; afterPtr: HCkXml; contentPattern: PWideChar): HCkXml; stdcall;

function CkXml_SearchAllForContent2(objHandle: HCkXml; afterPtr: HCkXml; contentPattern: PWideChar): wordbool; stdcall;

function CkXml_SearchForAttribute(objHandle: HCkXml; afterPtr: HCkXml; tag: PWideChar; attr: PWideChar; valuePattern: PWideChar): HCkXml; stdcall;

function CkXml_SearchForAttribute2(objHandle: HCkXml; afterPtr: HCkXml; tag: PWideChar; attr: PWideChar; valuePattern: PWideChar): wordbool; stdcall;

function CkXml_SearchForContent(objHandle: HCkXml; afterPtr: HCkXml; tag: PWideChar; contentPattern: PWideChar): HCkXml; stdcall;

function CkXml_SearchForContent2(objHandle: HCkXml; afterPtr: HCkXml; tag: PWideChar; contentPattern: PWideChar): wordbool; stdcall;

function CkXml_SearchForTag(objHandle: HCkXml; afterPtr: HCkXml; tag: PWideChar): HCkXml; stdcall;

function CkXml_SearchForTag2(objHandle: HCkXml; afterPtr: HCkXml; tag: PWideChar): wordbool; stdcall;

function CkXml_SetBinaryContent(objHandle: HCkXml; inData: HCkByteData; zipFlag: wordbool; encryptFlag: wordbool; password: PWideChar): wordbool; stdcall;

function CkXml_SetBinaryContent2(objHandle: HCkXml; pByteData: pbyte; szByteData: LongWord; zipFlag: wordbool; encryptFlag: wordbool; password: PWideChar): wordbool; stdcall;

function CkXml_SetBinaryContentFromFile(objHandle: HCkXml; filename: PWideChar; zipFlag: wordbool; encryptFlag: wordbool; password: PWideChar): wordbool; stdcall;

procedure CkXml_SortByAttribute(objHandle: HCkXml; attrName: PWideChar; ascending: wordbool); stdcall;

procedure CkXml_SortByAttributeInt(objHandle: HCkXml; attrName: PWideChar; ascending: wordbool); stdcall;

procedure CkXml_SortByContent(objHandle: HCkXml; ascending: wordbool); stdcall;

procedure CkXml_SortByTag(objHandle: HCkXml; ascending: wordbool); stdcall;

procedure CkXml_SortRecordsByAttribute(objHandle: HCkXml; sortTag: PWideChar; attrName: PWideChar; ascending: wordbool); stdcall;

procedure CkXml_SortRecordsByContent(objHandle: HCkXml; sortTag: PWideChar; ascending: wordbool); stdcall;

procedure CkXml_SortRecordsByContentInt(objHandle: HCkXml; sortTag: PWideChar; ascending: wordbool); stdcall;

function CkXml_SwapNode(objHandle: HCkXml; node: HCkXml): wordbool; stdcall;

function CkXml_SwapTree(objHandle: HCkXml; tree: HCkXml): wordbool; stdcall;

function CkXml_TagContent(objHandle: HCkXml; tagName: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkXml__tagContent(objHandle: HCkXml; tagName: PWideChar): PWideChar; stdcall;

function CkXml_TagEquals(objHandle: HCkXml; tag: PWideChar): wordbool; stdcall;

function CkXml_TagIndex(objHandle: HCkXml; tagPath: PWideChar): Integer; stdcall;

function CkXml_TagNsEquals(objHandle: HCkXml; ns: PWideChar): wordbool; stdcall;

function CkXml_TagUnpEquals(objHandle: HCkXml; unprefixedTag: PWideChar): wordbool; stdcall;

function CkXml_UnzipContent(objHandle: HCkXml): wordbool; stdcall;

function CkXml_UnzipTree(objHandle: HCkXml): wordbool; stdcall;

function CkXml_UpdateAt(objHandle: HCkXml; tagPath: PWideChar; autoCreate: wordbool; value: PWideChar): wordbool; stdcall;

function CkXml_UpdateAttrAt(objHandle: HCkXml; tagPath: PWideChar; autoCreate: wordbool; attrName: PWideChar; attrValue: PWideChar): wordbool; stdcall;

function CkXml_UpdateAttribute(objHandle: HCkXml; attrName: PWideChar; attrValue: PWideChar): wordbool; stdcall;

function CkXml_UpdateAttributeInt(objHandle: HCkXml; attrName: PWideChar; value: Integer): wordbool; stdcall;

procedure CkXml_UpdateChildContent(objHandle: HCkXml; tagPath: PWideChar; value: PWideChar); stdcall;

procedure CkXml_UpdateChildContentInt(objHandle: HCkXml; tagPath: PWideChar; value: Integer); stdcall;

function CkXml_ZipContent(objHandle: HCkXml): wordbool; stdcall;

function CkXml_ZipTree(objHandle: HCkXml): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkXml_Create; external DLLName;
procedure CkXml_Dispose; external DLLName;
function CkXml_getCdata; external DLLName;
procedure CkXml_putCdata; external DLLName;
procedure CkXml_getContent; external DLLName;
procedure CkXml_putContent; external DLLName;
function CkXml__content; external DLLName;
function CkXml_getContentInt; external DLLName;
procedure CkXml_putContentInt; external DLLName;
procedure CkXml_getDebugLogFilePath; external DLLName;
procedure CkXml_putDebugLogFilePath; external DLLName;
function CkXml__debugLogFilePath; external DLLName;
procedure CkXml_getDocType; external DLLName;
procedure CkXml_putDocType; external DLLName;
function CkXml__docType; external DLLName;
function CkXml_getEmitBom; external DLLName;
procedure CkXml_putEmitBom; external DLLName;
function CkXml_getEmitCompact; external DLLName;
procedure CkXml_putEmitCompact; external DLLName;
function CkXml_getEmitXmlDecl; external DLLName;
procedure CkXml_putEmitXmlDecl; external DLLName;
procedure CkXml_getEncoding; external DLLName;
procedure CkXml_putEncoding; external DLLName;
function CkXml__encoding; external DLLName;
function CkXml_getI; external DLLName;
procedure CkXml_putI; external DLLName;
function CkXml_getIsBase64; external DLLName;
function CkXml_getJ; external DLLName;
procedure CkXml_putJ; external DLLName;
function CkXml_getK; external DLLName;
procedure CkXml_putK; external DLLName;
procedure CkXml_getLastErrorHtml; external DLLName;
function CkXml__lastErrorHtml; external DLLName;
procedure CkXml_getLastErrorText; external DLLName;
function CkXml__lastErrorText; external DLLName;
procedure CkXml_getLastErrorXml; external DLLName;
function CkXml__lastErrorXml; external DLLName;
function CkXml_getLastMethodSuccess; external DLLName;
procedure CkXml_putLastMethodSuccess; external DLLName;
function CkXml_getNumAttributes; external DLLName;
function CkXml_getNumChildren; external DLLName;
function CkXml_getSortCaseInsensitive; external DLLName;
procedure CkXml_putSortCaseInsensitive; external DLLName;
function CkXml_getStandalone; external DLLName;
procedure CkXml_putStandalone; external DLLName;
procedure CkXml_getTag; external DLLName;
procedure CkXml_putTag; external DLLName;
function CkXml__tag; external DLLName;
procedure CkXml_getTagNsPrefix; external DLLName;
procedure CkXml_putTagNsPrefix; external DLLName;
function CkXml__tagNsPrefix; external DLLName;
procedure CkXml_getTagPath; external DLLName;
function CkXml__tagPath; external DLLName;
procedure CkXml_getTagUnprefixed; external DLLName;
procedure CkXml_putTagUnprefixed; external DLLName;
function CkXml__tagUnprefixed; external DLLName;
function CkXml_getTreeId; external DLLName;
procedure CkXml_getUncommonOptions; external DLLName;
procedure CkXml_putUncommonOptions; external DLLName;
function CkXml__uncommonOptions; external DLLName;
function CkXml_getVerboseLogging; external DLLName;
procedure CkXml_putVerboseLogging; external DLLName;
procedure CkXml_getVersion; external DLLName;
function CkXml__version; external DLLName;
function CkXml_AccumulateTagContent; external DLLName;
function CkXml__accumulateTagContent; external DLLName;
function CkXml_AddAttribute; external DLLName;
function CkXml_AddAttributeInt; external DLLName;
function CkXml_AddChildTree; external DLLName;
procedure CkXml_AddOrUpdateAttribute; external DLLName;
procedure CkXml_AddOrUpdateAttributeI; external DLLName;
procedure CkXml_AddStyleSheet; external DLLName;
procedure CkXml_AddToAttribute; external DLLName;
procedure CkXml_AddToChildContent; external DLLName;
procedure CkXml_AddToContent; external DLLName;
function CkXml_AppendToContent; external DLLName;
function CkXml_BEncodeContent; external DLLName;
function CkXml_ChildContentMatches; external DLLName;
function CkXml_ChilkatPath; external DLLName;
function CkXml__chilkatPath; external DLLName;
procedure CkXml_Clear; external DLLName;
function CkXml_ContentMatches; external DLLName;
procedure CkXml_Copy; external DLLName;
procedure CkXml_CopyRef; external DLLName;
function CkXml_DecodeContent; external DLLName;
function CkXml_DecodeEntities; external DLLName;
function CkXml__decodeEntities; external DLLName;
function CkXml_DecryptContent; external DLLName;
function CkXml_EncryptContent; external DLLName;
function CkXml_ExtractChildByIndex; external DLLName;
function CkXml_ExtractChildByName; external DLLName;
function CkXml_FindChild; external DLLName;
function CkXml_FindChild2; external DLLName;
function CkXml_FindNextRecord; external DLLName;
function CkXml_FindOrAddNewChild; external DLLName;
function CkXml_FirstChild; external DLLName;
function CkXml_FirstChild2; external DLLName;
function CkXml_GetAttributeName; external DLLName;
function CkXml__getAttributeName; external DLLName;
function CkXml_GetAttributeValue; external DLLName;
function CkXml__getAttributeValue; external DLLName;
function CkXml_GetAttributeValueInt; external DLLName;
function CkXml_GetAttrValue; external DLLName;
function CkXml__getAttrValue; external DLLName;
function CkXml_GetAttrValueInt; external DLLName;
function CkXml_GetBinaryContent; external DLLName;
function CkXml_GetChild; external DLLName;
function CkXml_GetChild2; external DLLName;
function CkXml_GetChildAttrValue; external DLLName;
function CkXml__getChildAttrValue; external DLLName;
function CkXml_GetChildBoolValue; external DLLName;
function CkXml_GetChildContent; external DLLName;
function CkXml__getChildContent; external DLLName;
function CkXml_GetChildContentByIndex; external DLLName;
function CkXml__getChildContentByIndex; external DLLName;
function CkXml_GetChildContentSb; external DLLName;
function CkXml_GetChildExact; external DLLName;
function CkXml_GetChildIntValue; external DLLName;
function CkXml_GetChildTag; external DLLName;
function CkXml__getChildTag; external DLLName;
function CkXml_GetChildTagByIndex; external DLLName;
function CkXml__getChildTagByIndex; external DLLName;
function CkXml_GetChildWithAttr; external DLLName;
function CkXml_GetChildWithContent; external DLLName;
function CkXml_GetChildWithTag; external DLLName;
function CkXml_GetNthChildWithTag; external DLLName;
function CkXml_GetNthChildWithTag2; external DLLName;
function CkXml_GetParent; external DLLName;
function CkXml_GetParent2; external DLLName;
function CkXml_GetRoot; external DLLName;
procedure CkXml_GetRoot2; external DLLName;
function CkXml_GetSelf; external DLLName;
function CkXml_GetXml; external DLLName;
function CkXml__getXml; external DLLName;
function CkXml_GetXmlBd; external DLLName;
function CkXml_GetXmlSb; external DLLName;
function CkXml_HasAttribute; external DLLName;
function CkXml_HasAttrWithValue; external DLLName;
function CkXml_HasChildWithContent; external DLLName;
function CkXml_HasChildWithTag; external DLLName;
function CkXml_HasChildWithTagAndContent; external DLLName;
procedure CkXml_InsertChildTreeAfter; external DLLName;
procedure CkXml_InsertChildTreeBefore; external DLLName;
function CkXml_LastChild; external DLLName;
function CkXml_LastChild2; external DLLName;
function CkXml_LoadBd; external DLLName;
function CkXml_LoadSb; external DLLName;
function CkXml_LoadXml; external DLLName;
function CkXml_LoadXml2; external DLLName;
function CkXml_LoadXmlFile; external DLLName;
function CkXml_LoadXmlFile2; external DLLName;
function CkXml_NewChild; external DLLName;
procedure CkXml_NewChild2; external DLLName;
function CkXml_NewChildAfter; external DLLName;
function CkXml_NewChildBefore; external DLLName;
procedure CkXml_NewChildInt2; external DLLName;
function CkXml_NextInTraversal2; external DLLName;
function CkXml_NextSibling; external DLLName;
function CkXml_NextSibling2; external DLLName;
function CkXml_NumChildrenAt; external DLLName;
function CkXml_NumChildrenHavingTag; external DLLName;
function CkXml_PreviousSibling; external DLLName;
function CkXml_PreviousSibling2; external DLLName;
function CkXml_PruneAttribute; external DLLName;
function CkXml_PruneTag; external DLLName;
function CkXml_QEncodeContent; external DLLName;
function CkXml_RemoveAllAttributes; external DLLName;
procedure CkXml_RemoveAllChildren; external DLLName;
function CkXml_RemoveAttribute; external DLLName;
procedure CkXml_RemoveChild; external DLLName;
procedure CkXml_RemoveChildByIndex; external DLLName;
procedure CkXml_RemoveChildWithContent; external DLLName;
procedure CkXml_RemoveFromTree; external DLLName;
function CkXml_RemoveStyleSheet; external DLLName;
function CkXml_SaveBinaryContent; external DLLName;
function CkXml_SaveLastError; external DLLName;
function CkXml_SaveXml; external DLLName;
procedure CkXml_Scrub; external DLLName;
function CkXml_SearchAllForContent; external DLLName;
function CkXml_SearchAllForContent2; external DLLName;
function CkXml_SearchForAttribute; external DLLName;
function CkXml_SearchForAttribute2; external DLLName;
function CkXml_SearchForContent; external DLLName;
function CkXml_SearchForContent2; external DLLName;
function CkXml_SearchForTag; external DLLName;
function CkXml_SearchForTag2; external DLLName;
function CkXml_SetBinaryContent; external DLLName;
function CkXml_SetBinaryContent2; external DLLName;
function CkXml_SetBinaryContentFromFile; external DLLName;
procedure CkXml_SortByAttribute; external DLLName;
procedure CkXml_SortByAttributeInt; external DLLName;
procedure CkXml_SortByContent; external DLLName;
procedure CkXml_SortByTag; external DLLName;
procedure CkXml_SortRecordsByAttribute; external DLLName;
procedure CkXml_SortRecordsByContent; external DLLName;
procedure CkXml_SortRecordsByContentInt; external DLLName;
function CkXml_SwapNode; external DLLName;
function CkXml_SwapTree; external DLLName;
function CkXml_TagContent; external DLLName;
function CkXml__tagContent; external DLLName;
function CkXml_TagEquals; external DLLName;
function CkXml_TagIndex; external DLLName;
function CkXml_TagNsEquals; external DLLName;
function CkXml_TagUnpEquals; external DLLName;
function CkXml_UnzipContent; external DLLName;
function CkXml_UnzipTree; external DLLName;
function CkXml_UpdateAt; external DLLName;
function CkXml_UpdateAttrAt; external DLLName;
function CkXml_UpdateAttribute; external DLLName;
function CkXml_UpdateAttributeInt; external DLLName;
procedure CkXml_UpdateChildContent; external DLLName;
procedure CkXml_UpdateChildContentInt; external DLLName;
function CkXml_ZipContent; external DLLName;
function CkXml_ZipTree; external DLLName;



end.
