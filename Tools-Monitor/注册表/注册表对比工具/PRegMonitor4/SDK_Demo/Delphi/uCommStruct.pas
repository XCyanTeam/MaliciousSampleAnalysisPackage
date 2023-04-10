unit uCommStruct;
 
interface

uses
  Windows, Messages, SysUtils, Classes;

{$DEFINE IS_DEBUG}



const

   
  IDC_MENU_ABOUT   = $0100;
  IDS_DMAIN        = 'ceiwei';
  IDS_HOME         = 'http://www.'+IDS_DMAIN+'.com';
  IDS_VERSION      = '6.0';
  IDS_APPTITLE     = 'RegMonitor4 SDK Delphi Demo(Call trial 1000) v'+IDS_VERSION;

type
  ULONG = DWORD;
  UCHAR = Byte;
  NTSTATUS = ULONG;

  TRootHkeyType = ( HKEY_CLASSES_ROOT, HKEY_CURRENT_USER,	HKEY_LOCAL_MACHINE,	HKEY_USERS,	HKEY_CURRENT_CONFIG,	HKEY_UNKNOWN );
  THookAPIType  = ( ZwOpenKey,	  ZwQueryKey,	  ZwQueryValueKey,	  ZwEnumerateValueKey,	  ZwEnumerateKey,
                    ZwSetValueKey,	  ZwCreateKey,	  ZwDeleteValueKey,	  ZwCloseKey,	  ZwDeleteKey,   ZwFlushKey );

  TIoCtrlRec = packed record
    IoCtrlCode: DWORD;
    Active: Boolean;
  end;
  PIoCtrlRec = ^TIoCtrlRec;


  TANYFILTER = packed record
    Valid: Boolean;
    dwType: Byte;  //1=进程  2=注册表
    dwLogic: Byte;  // 1= 包括 2=排除
    Name: array[0..1024-1] of AnsiChar;
  end;
  PAnyFilter = ^TANYFILTER;



  TENTRY = packed record
    seq: DWORD;
    PID: DWORD;
    Time: DWORD;
  	RootHkey: DWORD;   //TRootHkeyType
    ValueType: Byte;
    APIs: DWORD;       //THookAPIType
    APIRetValue: DWORD;  //API 返回成功与否
	  dataLength: Integer;
  end;
  PENTRY = ^TENTRY;


  //数据包回调过程
  TOnData = function(lpBuffer: PENTRY; lpData: Pointer): Integer; stdcall;

  TDataArray = array of Byte;
 

procedure DebugLn(const sOutput: string);
procedure Debug(const sOutput: string);
procedure DebugArgs(const sFormat: string; Args: array of const);


procedure SaveLog(const FileName, sLog: string);

function IIFStr(const a, b: string): string;


function ShellExpoloer(sFileName: string): Boolean;

function ShellURL(sURL: string): Boolean;


function APIResultString( retCode: NTSTATUS ): string;

function GetProcessList( List: TStrings ): Integer;

implementation

uses
  ShellAPI, TlHelp32;

const
  STATUS_SUCCESS                   = $00000000; // ntsubauth
  STATUS_BUFFER_TOO_SMALL          = $C0000023;
  STATUS_KEY_DELETED               = $C000017C;
  STATUS_REGISTRY_IO_FAILED        = $C000014D;
  STATUS_REGISTRY_CORRUPT          = $C000014C;
  STATUS_NO_MEMORY                 = $C0000017;    // winnt
  STATUS_ACCESS_DENIED             = $C0000022;
  STATUS_NO_MORE_ENTRIES           = $8000001A;
  STATUS_OBJECT_NAME_NOT_FOUND     = $C0000034;
  STATUS_BUFFER_OVERFLOW           = $80000005;
  STATUS_OBJECT_PATH_SYNTAX_BAD    = $C000003B;



function GetProcessList( List: TStrings ): Integer;
var
 pe: TProcessEntry32;
 IsFound: Boolean;
 hSnapshot: DWORD;
 sFileName: string;
begin
  Result := 0;
  hSnapshot := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, Windows.GetCurrentProcessId);
  if hSnapshot <> 0 then
  try
    pe.dwSize := SizeOf(TProcessEntry32);
    IsFound := Process32First(hSnapshot, pe);
    while IsFound do
    begin
      // sFileName := Format('%4d-%s', [ pe.th32ProcessID, ExtractFileName(StrPas(pe.szExeFile))]);
       sFileName := Format('%s', [ ExtractFileName(StrPas(pe.szExeFile))]);
      List.Add(sFileName);
      Inc(Result);
      IsFound := Process32Next(hSnapshot, pe);
    end;
  finally
    CloseHandle(hSnapshot);
  end;
end;

function APIResultString( retCode: NTSTATUS ): string;
begin
  case retCode of
    STATUS_BUFFER_TOO_SMALL:        Result := 'BUFTOOSMALL';
    STATUS_SUCCESS:                 Result := 'SUCCESS';
    STATUS_KEY_DELETED:             Result := 'KEYDELETED';
    STATUS_REGISTRY_IO_FAILED:      Result := 'IOFAILED';
    STATUS_REGISTRY_CORRUPT:        Result := 'CORRUPT';
    STATUS_NO_MEMORY:               Result := 'OUTOFMEM';
    STATUS_ACCESS_DENIED:           Result := 'ACCDENIED';
    STATUS_NO_MORE_ENTRIES:         Result := 'NOMORE';
    STATUS_OBJECT_NAME_NOT_FOUND:   Result := 'NOTFOUND';
    STATUS_BUFFER_OVERFLOW:         Result := 'BUFOVRFLOW';
    STATUS_OBJECT_PATH_SYNTAX_BAD:  Result := 'SYNTAXERR';
    else                            Result := Format('0x%.8X', [retCode]);
  end;
end;
  
function ShellURL(sURL: string): Boolean;
begin
  ShellExecute(0, 'open', PChar(sURL), nil, nil, SW_SHOW);
end;

function ShellExpoloer(sFileName: string): Boolean;
begin

end;

function IIFStr(const a, b: string): string;
begin
  if a = '' then result := b else result := a;  
end;


procedure SaveLog(const FileName, sLog: string);
var
  TF: TextFile;
begin
  System.AssignFile(TF, FileName);
  try
    try
      if FileExists(FileName) then
        System.Append(TF)
      else System.Rewrite(TF);
      System.Write(TF, sLog);
    except
    end;
  finally
    System.CloseFile(TF);
  end;
end;


procedure DebugLn(const sOutput: string);
begin
  Debug(sOutput+#13#10);
end;

procedure Debug(const sOutput: string);
begin
   {$IFDEF IS_DEBUG}
   Windows.OutputDebugString(PChar(sOutput));
   {$ENDIF}
end;

procedure DebugArgs(const sFormat: string; Args: array of const);
begin
  DebugLn(Format(sFormat, Args));
end;


 
 
end.
