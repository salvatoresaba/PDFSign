unit FileAccess;

interface

type

HCkBinData = Pointer;
HCkDateTime = Pointer;
HCkByteData = Pointer;
HCkFileAccess = Pointer;
HCkString = Pointer;
HCkStringBuilder = Pointer;


function CkFileAccess_Create: HCkFileAccess; stdcall;
procedure CkFileAccess_Dispose(handle: HCkFileAccess); stdcall;
procedure CkFileAccess_getCurrentDir(objHandle: HCkFileAccess; outPropVal: HCkString); stdcall;

function CkFileAccess__currentDir(objHandle: HCkFileAccess): PWideChar; stdcall;

procedure CkFileAccess_getDebugLogFilePath(objHandle: HCkFileAccess; outPropVal: HCkString); stdcall;

procedure CkFileAccess_putDebugLogFilePath(objHandle: HCkFileAccess; newPropVal: PWideChar); stdcall;

function CkFileAccess__debugLogFilePath(objHandle: HCkFileAccess): PWideChar; stdcall;

function CkFileAccess_getEndOfFile(objHandle: HCkFileAccess): wordbool; stdcall;

function CkFileAccess_getFileOpenError(objHandle: HCkFileAccess): Integer; stdcall;

procedure CkFileAccess_getFileOpenErrorMsg(objHandle: HCkFileAccess; outPropVal: HCkString); stdcall;

function CkFileAccess__fileOpenErrorMsg(objHandle: HCkFileAccess): PWideChar; stdcall;

procedure CkFileAccess_getLastErrorHtml(objHandle: HCkFileAccess; outPropVal: HCkString); stdcall;

function CkFileAccess__lastErrorHtml(objHandle: HCkFileAccess): PWideChar; stdcall;

procedure CkFileAccess_getLastErrorText(objHandle: HCkFileAccess; outPropVal: HCkString); stdcall;

function CkFileAccess__lastErrorText(objHandle: HCkFileAccess): PWideChar; stdcall;

procedure CkFileAccess_getLastErrorXml(objHandle: HCkFileAccess; outPropVal: HCkString); stdcall;

function CkFileAccess__lastErrorXml(objHandle: HCkFileAccess): PWideChar; stdcall;

function CkFileAccess_getLastMethodSuccess(objHandle: HCkFileAccess): wordbool; stdcall;

procedure CkFileAccess_putLastMethodSuccess(objHandle: HCkFileAccess; newPropVal: wordbool); stdcall;

function CkFileAccess_getLockFileOnOpen(objHandle: HCkFileAccess): wordbool; stdcall;

procedure CkFileAccess_putLockFileOnOpen(objHandle: HCkFileAccess; newPropVal: wordbool); stdcall;

function CkFileAccess_getVerboseLogging(objHandle: HCkFileAccess): wordbool; stdcall;

procedure CkFileAccess_putVerboseLogging(objHandle: HCkFileAccess; newPropVal: wordbool); stdcall;

procedure CkFileAccess_getVersion(objHandle: HCkFileAccess; outPropVal: HCkString); stdcall;

function CkFileAccess__version(objHandle: HCkFileAccess): PWideChar; stdcall;

function CkFileAccess_AppendAnsi(objHandle: HCkFileAccess; text: PWideChar): wordbool; stdcall;

function CkFileAccess_AppendBd(objHandle: HCkFileAccess; bd: HCkBinData): wordbool; stdcall;

function CkFileAccess_AppendSb(objHandle: HCkFileAccess; sb: HCkStringBuilder; charset: PWideChar): wordbool; stdcall;

function CkFileAccess_AppendText(objHandle: HCkFileAccess; str: PWideChar; charset: PWideChar): wordbool; stdcall;

function CkFileAccess_AppendUnicodeBOM(objHandle: HCkFileAccess): wordbool; stdcall;

function CkFileAccess_AppendUtf8BOM(objHandle: HCkFileAccess): wordbool; stdcall;

function CkFileAccess_DirAutoCreate(objHandle: HCkFileAccess; filePath: PWideChar): wordbool; stdcall;

function CkFileAccess_DirCreate(objHandle: HCkFileAccess; dirPath: PWideChar): wordbool; stdcall;

function CkFileAccess_DirDelete(objHandle: HCkFileAccess; dirPath: PWideChar): wordbool; stdcall;

function CkFileAccess_DirEnsureExists(objHandle: HCkFileAccess; dirPath: PWideChar): wordbool; stdcall;

procedure CkFileAccess_FileClose(objHandle: HCkFileAccess); stdcall;

function CkFileAccess_FileContentsEqual(objHandle: HCkFileAccess; filePath1: PWideChar; filePath2: PWideChar): wordbool; stdcall;

function CkFileAccess_FileCopy(objHandle: HCkFileAccess; existingFilepath: PWideChar; newFilepath: PWideChar; failIfExists: wordbool): wordbool; stdcall;

function CkFileAccess_FileDelete(objHandle: HCkFileAccess; filePath: PWideChar): wordbool; stdcall;

function CkFileAccess_FileExists(objHandle: HCkFileAccess; filePath: PWideChar): wordbool; stdcall;

function CkFileAccess_FileExists3(objHandle: HCkFileAccess; path: PWideChar): Integer; stdcall;

function CkFileAccess_FileOpen(objHandle: HCkFileAccess; filePath: PWideChar; accessMode: LongWord; shareMode: LongWord; createDisposition: LongWord; attributes: LongWord): wordbool; stdcall;

function CkFileAccess_FileRead(objHandle: HCkFileAccess; maxNumBytes: Integer; outData: HCkByteData): wordbool; stdcall;

function CkFileAccess_FileReadBd(objHandle: HCkFileAccess; maxNumBytes: Integer; binData: HCkBinData): wordbool; stdcall;

function CkFileAccess_FileRename(objHandle: HCkFileAccess; existingFilepath: PWideChar; newFilepath: PWideChar): wordbool; stdcall;

function CkFileAccess_FileSeek(objHandle: HCkFileAccess; offset: Integer; origin: Integer): wordbool; stdcall;

function CkFileAccess_FileSize(objHandle: HCkFileAccess; filePath: PWideChar): Integer; stdcall;

function CkFileAccess_FileSize64(objHandle: HCkFileAccess; filePath: PWideChar): Int64; stdcall;

function CkFileAccess_FileSizeStr(objHandle: HCkFileAccess; filePath: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkFileAccess__fileSizeStr(objHandle: HCkFileAccess; filePath: PWideChar): PWideChar; stdcall;

function CkFileAccess_FileType(objHandle: HCkFileAccess; path: PWideChar): Integer; stdcall;

function CkFileAccess_FileWrite(objHandle: HCkFileAccess; data: HCkByteData): wordbool; stdcall;

function CkFileAccess_FileWrite2(objHandle: HCkFileAccess; pByteData: pbyte; szByteData: LongWord): wordbool; stdcall;

function CkFileAccess_FileWriteBd(objHandle: HCkFileAccess; binData: HCkBinData; offset: Integer; numBytes: Integer): wordbool; stdcall;

function CkFileAccess_GenBlockId(objHandle: HCkFileAccess; index: Integer; length: Integer; encoding: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkFileAccess__genBlockId(objHandle: HCkFileAccess; index: Integer; length: Integer; encoding: PWideChar): PWideChar; stdcall;

function CkFileAccess_GetDirectoryName(objHandle: HCkFileAccess; path: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkFileAccess__getDirectoryName(objHandle: HCkFileAccess; path: PWideChar): PWideChar; stdcall;

function CkFileAccess_GetExtension(objHandle: HCkFileAccess; path: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkFileAccess__getExtension(objHandle: HCkFileAccess; path: PWideChar): PWideChar; stdcall;

function CkFileAccess_GetFileName(objHandle: HCkFileAccess; path: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkFileAccess__getFileName(objHandle: HCkFileAccess; path: PWideChar): PWideChar; stdcall;

function CkFileAccess_GetFileNameWithoutExtension(objHandle: HCkFileAccess; path: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkFileAccess__getFileNameWithoutExtension(objHandle: HCkFileAccess; path: PWideChar): PWideChar; stdcall;

function CkFileAccess_GetFileTime(objHandle: HCkFileAccess; path: PWideChar; which: Integer): HCkDateTime; stdcall;

function CkFileAccess_GetLastModified(objHandle: HCkFileAccess; path: PWideChar): HCkDateTime; stdcall;

function CkFileAccess_GetNumBlocks(objHandle: HCkFileAccess; blockSize: Integer): Integer; stdcall;

function CkFileAccess_GetTempFilename(objHandle: HCkFileAccess; dirPath: PWideChar; prefix: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkFileAccess__getTempFilename(objHandle: HCkFileAccess; dirPath: PWideChar; prefix: PWideChar): PWideChar; stdcall;

function CkFileAccess_OpenForAppend(objHandle: HCkFileAccess; filePath: PWideChar): wordbool; stdcall;

function CkFileAccess_OpenForRead(objHandle: HCkFileAccess; filePath: PWideChar): wordbool; stdcall;

function CkFileAccess_OpenForReadWrite(objHandle: HCkFileAccess; filePath: PWideChar): wordbool; stdcall;

function CkFileAccess_OpenForWrite(objHandle: HCkFileAccess; filePath: PWideChar): wordbool; stdcall;

function CkFileAccess_ReadBinaryToEncoded(objHandle: HCkFileAccess; filePath: PWideChar; encoding: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkFileAccess__readBinaryToEncoded(objHandle: HCkFileAccess; filePath: PWideChar; encoding: PWideChar): PWideChar; stdcall;

function CkFileAccess_ReadBlock(objHandle: HCkFileAccess; blockIndex: Integer; blockSize: Integer; outData: HCkByteData): wordbool; stdcall;

function CkFileAccess_ReadBlockBd(objHandle: HCkFileAccess; blockIndex: Integer; blockSize: Integer; bd: HCkBinData): wordbool; stdcall;

function CkFileAccess_ReadEntireFile(objHandle: HCkFileAccess; filePath: PWideChar; outData: HCkByteData): wordbool; stdcall;

function CkFileAccess_ReadEntireTextFile(objHandle: HCkFileAccess; filePath: PWideChar; charset: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkFileAccess__readEntireTextFile(objHandle: HCkFileAccess; filePath: PWideChar; charset: PWideChar): PWideChar; stdcall;

function CkFileAccess_ReadNextFragment(objHandle: HCkFileAccess; startAtBeginning: wordbool; beginMarker: PWideChar; endMarker: PWideChar; charset: PWideChar; sb: HCkStringBuilder): Integer; stdcall;

function CkFileAccess_ReassembleFile(objHandle: HCkFileAccess; partsDirPath: PWideChar; partPrefix: PWideChar; partExtension: PWideChar; reassembledFilename: PWideChar): wordbool; stdcall;

function CkFileAccess_ReplaceStrings(objHandle: HCkFileAccess; filePath: PWideChar; charset: PWideChar; existingString: PWideChar; replacementString: PWideChar): Integer; stdcall;

function CkFileAccess_SaveLastError(objHandle: HCkFileAccess; path: PWideChar): wordbool; stdcall;

function CkFileAccess_SetCurrentDir(objHandle: HCkFileAccess; dirPath: PWideChar): wordbool; stdcall;

function CkFileAccess_SetFileTimes(objHandle: HCkFileAccess; filePath: PWideChar; createTime: HCkDateTime; lastAccessTime: HCkDateTime; lastModTime: HCkDateTime): wordbool; stdcall;

function CkFileAccess_SetLastModified(objHandle: HCkFileAccess; filePath: PWideChar; lastModified: HCkDateTime): wordbool; stdcall;

function CkFileAccess_SplitFile(objHandle: HCkFileAccess; fileToSplit: PWideChar; partPrefix: PWideChar; partExtension: PWideChar; partSize: Integer; destDir: PWideChar): wordbool; stdcall;

function CkFileAccess_SymlinkCreate(objHandle: HCkFileAccess; targetPath: PWideChar; linkPath: PWideChar): wordbool; stdcall;

function CkFileAccess_SymlinkTarget(objHandle: HCkFileAccess; linkPath: PWideChar; outStr: HCkString): wordbool; stdcall;

function CkFileAccess__symlinkTarget(objHandle: HCkFileAccess; linkPath: PWideChar): PWideChar; stdcall;

function CkFileAccess_TreeDelete(objHandle: HCkFileAccess; path: PWideChar): wordbool; stdcall;

function CkFileAccess_Truncate(objHandle: HCkFileAccess): wordbool; stdcall;

function CkFileAccess_WriteEntireFile(objHandle: HCkFileAccess; filePath: PWideChar; fileData: HCkByteData): wordbool; stdcall;

function CkFileAccess_WriteEntireTextFile(objHandle: HCkFileAccess; filePath: PWideChar; textData: PWideChar; charset: PWideChar; includedPreamble: wordbool): wordbool; stdcall;

implementation

{$Include chilkatDllPath.inc}

function CkFileAccess_Create; external DLLName;
procedure CkFileAccess_Dispose; external DLLName;
procedure CkFileAccess_getCurrentDir; external DLLName;
function CkFileAccess__currentDir; external DLLName;
procedure CkFileAccess_getDebugLogFilePath; external DLLName;
procedure CkFileAccess_putDebugLogFilePath; external DLLName;
function CkFileAccess__debugLogFilePath; external DLLName;
function CkFileAccess_getEndOfFile; external DLLName;
function CkFileAccess_getFileOpenError; external DLLName;
procedure CkFileAccess_getFileOpenErrorMsg; external DLLName;
function CkFileAccess__fileOpenErrorMsg; external DLLName;
procedure CkFileAccess_getLastErrorHtml; external DLLName;
function CkFileAccess__lastErrorHtml; external DLLName;
procedure CkFileAccess_getLastErrorText; external DLLName;
function CkFileAccess__lastErrorText; external DLLName;
procedure CkFileAccess_getLastErrorXml; external DLLName;
function CkFileAccess__lastErrorXml; external DLLName;
function CkFileAccess_getLastMethodSuccess; external DLLName;
procedure CkFileAccess_putLastMethodSuccess; external DLLName;
function CkFileAccess_getLockFileOnOpen; external DLLName;
procedure CkFileAccess_putLockFileOnOpen; external DLLName;
function CkFileAccess_getVerboseLogging; external DLLName;
procedure CkFileAccess_putVerboseLogging; external DLLName;
procedure CkFileAccess_getVersion; external DLLName;
function CkFileAccess__version; external DLLName;
function CkFileAccess_AppendAnsi; external DLLName;
function CkFileAccess_AppendBd; external DLLName;
function CkFileAccess_AppendSb; external DLLName;
function CkFileAccess_AppendText; external DLLName;
function CkFileAccess_AppendUnicodeBOM; external DLLName;
function CkFileAccess_AppendUtf8BOM; external DLLName;
function CkFileAccess_DirAutoCreate; external DLLName;
function CkFileAccess_DirCreate; external DLLName;
function CkFileAccess_DirDelete; external DLLName;
function CkFileAccess_DirEnsureExists; external DLLName;
procedure CkFileAccess_FileClose; external DLLName;
function CkFileAccess_FileContentsEqual; external DLLName;
function CkFileAccess_FileCopy; external DLLName;
function CkFileAccess_FileDelete; external DLLName;
function CkFileAccess_FileExists; external DLLName;
function CkFileAccess_FileExists3; external DLLName;
function CkFileAccess_FileOpen; external DLLName;
function CkFileAccess_FileRead; external DLLName;
function CkFileAccess_FileReadBd; external DLLName;
function CkFileAccess_FileRename; external DLLName;
function CkFileAccess_FileSeek; external DLLName;
function CkFileAccess_FileSize; external DLLName;
function CkFileAccess_FileSize64; external DLLName;
function CkFileAccess_FileSizeStr; external DLLName;
function CkFileAccess__fileSizeStr; external DLLName;
function CkFileAccess_FileType; external DLLName;
function CkFileAccess_FileWrite; external DLLName;
function CkFileAccess_FileWrite2; external DLLName;
function CkFileAccess_FileWriteBd; external DLLName;
function CkFileAccess_GenBlockId; external DLLName;
function CkFileAccess__genBlockId; external DLLName;
function CkFileAccess_GetDirectoryName; external DLLName;
function CkFileAccess__getDirectoryName; external DLLName;
function CkFileAccess_GetExtension; external DLLName;
function CkFileAccess__getExtension; external DLLName;
function CkFileAccess_GetFileName; external DLLName;
function CkFileAccess__getFileName; external DLLName;
function CkFileAccess_GetFileNameWithoutExtension; external DLLName;
function CkFileAccess__getFileNameWithoutExtension; external DLLName;
function CkFileAccess_GetFileTime; external DLLName;
function CkFileAccess_GetLastModified; external DLLName;
function CkFileAccess_GetNumBlocks; external DLLName;
function CkFileAccess_GetTempFilename; external DLLName;
function CkFileAccess__getTempFilename; external DLLName;
function CkFileAccess_OpenForAppend; external DLLName;
function CkFileAccess_OpenForRead; external DLLName;
function CkFileAccess_OpenForReadWrite; external DLLName;
function CkFileAccess_OpenForWrite; external DLLName;
function CkFileAccess_ReadBinaryToEncoded; external DLLName;
function CkFileAccess__readBinaryToEncoded; external DLLName;
function CkFileAccess_ReadBlock; external DLLName;
function CkFileAccess_ReadBlockBd; external DLLName;
function CkFileAccess_ReadEntireFile; external DLLName;
function CkFileAccess_ReadEntireTextFile; external DLLName;
function CkFileAccess__readEntireTextFile; external DLLName;
function CkFileAccess_ReadNextFragment; external DLLName;
function CkFileAccess_ReassembleFile; external DLLName;
function CkFileAccess_ReplaceStrings; external DLLName;
function CkFileAccess_SaveLastError; external DLLName;
function CkFileAccess_SetCurrentDir; external DLLName;
function CkFileAccess_SetFileTimes; external DLLName;
function CkFileAccess_SetLastModified; external DLLName;
function CkFileAccess_SplitFile; external DLLName;
function CkFileAccess_SymlinkCreate; external DLLName;
function CkFileAccess_SymlinkTarget; external DLLName;
function CkFileAccess__symlinkTarget; external DLLName;
function CkFileAccess_TreeDelete; external DLLName;
function CkFileAccess_Truncate; external DLLName;
function CkFileAccess_WriteEntireFile; external DLLName;
function CkFileAccess_WriteEntireTextFile; external DLLName;



end.
