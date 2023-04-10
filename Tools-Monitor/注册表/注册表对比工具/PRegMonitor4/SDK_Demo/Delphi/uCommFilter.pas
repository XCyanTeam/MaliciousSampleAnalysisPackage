unit uCommFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,  Forms, Dialogs,
  uCommStruct, StdActns, StdCtrls, Controls, ExtCtrls, ComCtrls, ImgList,
  ActnList, ToolWin;

type
  TfmRegFilter = class(TForm)
    stat1: TStatusBar;
    actlst1: TActionList;
    act_Monitor: TAction;
    act_Capture: TAction;
    il_Main: TImageList;
    tlb1: TToolBar;
    btnCapture: TToolButton;
    btnCapture1: TToolButton;
    btn1: TToolButton;
    btnExit: TToolButton;
    btnAbout: TToolButton;
    btnClear: TToolButton;
    act_Clear: TAction;
    act_About: TAction;
    act_Exit: TAction;
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    SearchFind1: TSearchFind;
    SearchFindNext1: TSearchFindNext;
    btn4: TToolButton;
    lv_Data: TListView;
    mmo1: TMemo;
    spl1: TSplitter;
    lv_filterlist: TListView;
    pnl1: TPanel;
    lblFilter: TLabel;
    cbbArrtList: TComboBox;
    cbb_logic: TComboBox;
    cbb_Context: TComboBox;
    btn3: TButton;
    btnApply: TButton;
    btn2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure act_MonitorExecute(Sender: TObject);
    procedure act_ExitExecute(Sender: TObject);
    procedure act_AboutExecute(Sender: TObject);
    procedure act_CaptureExecute(Sender: TObject);
    procedure act_ClearExecute(Sender: TObject);
    procedure lv_DataSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure cbb_ContextDropDown(Sender: TObject);
    procedure cbbArrtListChange(Sender: TObject);
    procedure lv_filterlistCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure lv_DataCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
  private
    { Private declarations }


    procedure AddLog(redt: TRichEdit;  AColor: TColor; const Msg: string);


    procedure OnData(lpBuffer: PENTRY; lpData: PAnsiChar);
    procedure AddFilterItem(Valid: Boolean; iAttr, iLogic: Byte;
      const Context: string);
    procedure LoadFilter;
    procedure MonitorHkeyList;
  public
    { Public declarations }
  end;

var
  fmRegFilter: TfmRegFilter;

const
  DllMonitor = 'RegMonitor4.dll';
 

//初始化监控
//lpCallFunc: 回调func, 传递一个TOnData过程指针
//返回Boolean True = 成功  False = 失败
function InitMonitor(lpCallFunc: TOnData): BOOL; stdcall;  external DllMonitor;
//控制数据捕获状态, Active(True=开启数据捕获 False=暂停数据捕获)
function ControlCapture(Active: BOOL): BOOL; stdcall; external DllMonitor;

//设置 过滤  PAnyFilter= PAnyFilter的指针
function ControlFilterArg(AnyFilter: PAnyFilter): BOOL; stdcall; external DllMonitor;
    

//监控HKEY Root
function AnyMonitor(hkCode: DWORD): DWORD; stdcall; external DllMonitor;
//关闭监视, 返BOOL类型
function UnMonitor(): BOOL; stdcall;  external DllMonitor;
//最后错误码
function GetMonitorLastError(): DWORD; stdcall; external DllMonitor;
//最后错误信息
function GetMonitorLastErrorMessage(): PChar;   stdcall; external DllMonitor;

//进程PID 找到ImageName
function PIDToImageName(PID: DWORD; lpProcessName: PChar): BOOL; stdcall; external DllMonitor;


//本地回调func
function LOnData(lpBuffer: PENTRY; lpData: Pointer): Integer; stdcall;


implementation

{$R *.dfm}

uses
  TypInfo,
  Math, Registry;

type
   TFilter = record
     sType_1: string;
     sType_2: string;
     sLogic_1: string;
     sLogic_2: string;          
   end;


var
  fTotalRead: Integer = 0;
  fTotalWrite: Integer = 0;
  fTotalIrp: Integer = 0;
  fIsMonitored: Boolean = False;
   
  LS_OpenMonitor:      string = '打开监控失败，监控没有开启';
 
  LS_ControlCapture:   string = '控制捕获状态失败, 或监控没有开起.';
  LS_FilterValue:      string = '过滤值不能为空.';
  LS_FilterRang:       string = '过滤项目数不能超过128项.';

  gAnyFilter: TFilter;


function LOnData(lpBuffer: PENTRY; lpData: Pointer): Integer; stdcall;
begin
  Result := S_OK;
  fmRegFilter.OnData(lpBuffer, lpData);
end;
  
procedure TfmRegFilter.FormCreate(Sender: TObject);
begin
  self.Caption := IDS_APPTITLE;
  self.ts1.Show;
end;



procedure TfmRegFilter.MonitorHkeyList();
var
  I: Integer;
  dwCode: DWORD;
begin
  dwCode := 0;
  {
  for I := 0 to self.cg_HKEY.Items.Count -1 do
  begin
    if cg_HKEY.ItemChecked[I] then
    case TRootHkeyType(I) of
      HKEY_CLASSES_ROOT:    dwCode := dwCode or $0001;
      HKEY_CURRENT_USER:    dwCode := dwCode or $0002;
      HKEY_LOCAL_MACHINE:   dwCode := dwCode or $0004;
      HKEY_USERS:           dwCode := dwCode or $0008;
      HKEY_CURRENT_CONFIG:  dwCode := dwCode or $0010;
    end;
  end;
  }
  dwCode := dwCode or $0001;
  dwCode := dwCode or $0002;
  dwCode := dwCode or $0004;
  dwCode := dwCode or $0008;
  dwCode := dwCode or $0010;

  if AnyMonitor(dwCode) <> dwCode then
  begin
     MessageBox(Handle, PChar('Filter setting failed. Not open RegMonitor.'), PChar(Caption), MB_OK OR Windows.MB_ICONWARNING);
     Exit;
  end;
end;


procedure TfmRegFilter.act_MonitorExecute(Sender: TObject);
var
  Msg: PChar;
begin
  TAction(Sender).Enabled := False;
  try
    if not fIsMonitored then
    begin
      fIsMonitored := InitMonitor(@LOnData);
    end
    else
    begin
      if act_Capture.Checked then act_Capture.Execute;
      UnMonitor();
      fIsMonitored := False;
    end;

    if GetMonitorLastError > 0 then
    begin
      Msg := GetMonitorLastErrorMessage();
      if Msg <> nil then
      Windows.MessageBox(Handle, Msg, IDS_APPTITLE, MB_OK or MB_ICONWARNING);
    end;

    act_Monitor.Checked :=  fIsMonitored;
  
    if fIsMonitored then
    begin
      MonitorHkeyList;   //这个必须设定不然监控不到
      self.btnApply.Click;
      if not act_Capture.Checked then act_Capture.Execute;
      act_Monitor.ImageIndex := 4;
    end
    else
    begin 
      act_Monitor.ImageIndex := 3;
    end;
  finally
    TAction(Sender).Enabled := True;
  end;
end;

procedure TfmRegFilter.AddLog(redt: TRichEdit; AColor: TColor;
  const Msg: string);
begin
  try
    if redt.Lines.Count >= 10000 then redt.Clear;
    redt.SelAttributes.Color := AColor;

    if redt.Lines.Count = 0 then
       redt.SelText := Msg
    else
    begin
      
        redt.SelText := #13#10+Msg;
    end;
  except
  end;
end;



procedure TfmRegFilter.act_ExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TfmRegFilter.act_AboutExecute(Sender: TObject);
begin
   ShowMessage(IDS_APPTITLE+#13#10+IDS_HOME);
   ShellURL(IDS_HOME);
end;
 

procedure TfmRegFilter.OnData(lpBuffer: PENTRY; lpData: PAnsiChar);
var
  sRegPath, sData, sProcessName, sPName,
  sApiName, sResult, sTime: string;
  sText, sLogFile: string;
  sImageName: array [0..MAX_PATH-1] of Char;
  I: Integer;
  Item: TListItem;
begin
  /////////////////////////
  if lpBuffer <> nil then
  begin
    // not Capture
    //if not act_Capture.Checked then Exit;

    //////////////////////////////////////////////////////////////

    sText := StrPas(lpData);
    sPName := Copy(sText, 1, Pos(#9, sText)-1);
    Delete(sText, 1,  Pos(#9, sText));
    //======================
    sRegPath := Copy(sText, 1, Pos(#9, sText)-1);
    sData    := Copy(sText, Pos(#9, sText)+1, MaxInt);
    sApiName := Format('%s', [GetEnumName(TypeInfo(THookAPIType), Ord(THookAPIType(lpBuffer.APIs)))]);
    sResult  := APIResultString(lpBuffer.APIRetValue);

    try
      sTime := TimeToStr(FileDateToDateTime( lpBuffer.Time));
    except
      sTime := Format('%u',   [lpBuffer.Time]);
    end;


     //取进程名
    FillChar(sImageName, SizeOf(sImageName), 0);

    if  lpBuffer.PID in [0, 4] then
       sImageName := 'System'
    else begin
      if not PIDToImageName(lpBuffer.PID, sImageName) then
         sText := sPName
      else 
         sText := ExtractFileName(StrPas(sImageName));
    end;
     sProcessName := Format('%s/%d', [sText, lpBuffer.PID]);
    
    


    //清除显示
    if  lv_Data.Items.Count >= 10000 then lv_Data.Clear;

   //添加会有问题，会有中间添加
    Item := lv_Data.Items.Add;
    //添加到列表视图
    with Item  do
    begin
      Caption := Format('%u', [lpBuffer.seq]);
      //时间
      SubItems.Add(sTime);            
      //进程
      SubItems.Add(sProcessName);
      //API  
      SubItems.Add(sApiName);
      //执行结果
      SubItems.Add(sResult);
      //Path
      SubItems.Add(sRegPath);
      SubItems.Add(sData);
    end;
  end;
end;

procedure TfmRegFilter.act_CaptureExecute(Sender: TObject);
begin
  act_Capture.Checked := not act_Capture.Checked;
  if not ControlCapture(act_Capture.Checked) then
  begin
    MessageBox(Handle, PChar(LS_ControlCapture), PChar(Caption), MB_OK OR MB_ICONINFORMATION);
    Exit;
  end;

  if act_Capture.Checked then
  begin
    act_Capture.ImageIndex := 4;
  end
  else
  begin
    act_Capture.ImageIndex := 1;
  end;
end;

procedure TfmRegFilter.act_ClearExecute(Sender: TObject);
begin
  lv_Data.Items.Clear;
end;

 

procedure TfmRegFilter.lv_DataSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
var
  I: Integer;
  fmtStr: string;
begin
  if Item <> nil then
  with Item do
  begin
    fmtStr := '';
    for I := 0 to lv_Data.Columns.Count -1 do
    fmtStr := fmtStr+ Format('%s: %s', [lv_Data.Columns[I].Caption, '%s'#13#10]);
    ///////////////////////
    self.mmo1.Text := Format(fmtStr, [
                            Item.Caption,
                            SubItems[0],
                            SubItems[1],
                            SubItems[2],
                            SubItems[3],
                            #13#9+SubItems[4],
                            #13#9+SubItems[5]
    ]);
  end
end;



procedure TfmRegFilter.AddFilterItem(Valid: Boolean; iAttr, iLogic: Byte; const Context: string);
var
  Item: TListItem;
  Ptr: PAnyFilter;
  I: Integer;
begin
  for I := 0 to self.lv_filterlist.Items.Count -1  do
  begin
    Item  := lv_filterlist.Items[I];
    if (Item <> nil) and (Item.Data <> nil) then
    if (PAnyFilter(Item.Data).dwType = iAttr)  //and (PAnyFilter(Item.Data).dwLogic = iLogic)
    and (LowerCase(Item.SubItems[2]) = LowerCase(Context))  then
    begin
      //找到替换它的逻辑
      PAnyFilter(Item.Data).dwLogic := iLogic;
      case iLogic of
        1:  Item.SubItems[1] := gAnyFilter.sLogic_1;
        2:  Item.SubItems[1] := gAnyFilter.sLogic_2;
      end;
      
      lv_filterlist.Selected := Item;
      Item.Focused;
      Item.MakeVisible(True);
      Exit;
    end;
  end;

  //进程或注册表，不能超过128组

  if  self.lv_filterlist.Items.Count > 128 then
  begin
    MessageBox(Handle, PChar(LS_FilterRang), PChar(Caption), MB_ICONWARNING or MB_OK);
    Exit;
  end;

  Item := self.lv_filterlist.Items.Add;
  with Item do
  begin
    New(Ptr);
    ZeroMemory(Ptr, SizeOf(TAnyFilter));
    Ptr.Valid := Valid;
    Ptr.dwType := iAttr;
    Ptr.dwLogic := iLogic;
    StrPCopy( Ptr.Name, Context );
    Data := Ptr;
    SubItems.Add('');SubItems.Add('');SubItems.Add('');
    SubItems[2] := Context;
    Checked := Valid;
    case Ptr.dwType of
      1:SubItems[0] :=  gAnyFilter.sType_1;
      2:SubItems[0] := gAnyFilter.sType_2;
    end;
///
    case Ptr.dwLogic of
      1:  SubItems[1] := gAnyFilter.sLogic_1;
      2:  SubItems[1] := gAnyFilter.sLogic_2;
    end;
  end;

  lv_filterlist.Selected := Item;
  Item.Focused;
  Item.MakeVisible(True);
end;



procedure TfmRegFilter.LoadFilter();
var
  FilterCount: Integer;
  I: Integer;
  Valid: Boolean;
  sContent: string;
  dType, dLogic: Byte;
begin
  with TRegistry.Create do
  try
    RootKey := WIndows.HKEY_CURRENT_USER;
    if OpenKey(Format('software\ceiwei\RegMonitor%s\Test', [IDS_VERSION]), True) then
    begin             
      FilterCount := 0;
      if ValueExists('FilterCount') then
        FilterCount := ReadInteger('FilterCount');

      for I := 0 to FilterCount-1 do
      begin
        Valid := ReadBool(Format('Valid_%d', [I]));
        dType := ReadInteger(Format('IF_%d', [I]));
        dLogic := ReadInteger(Format('LOGIC_%d', [I]));
        sContent := ReadString(Format('VALUE_%d', [I]));
        self.AddFilterItem(Valid, dType, dLogic, sContent);
      end;
      CloseKey();
    end;
  finally
    Free;
  end;
end;

procedure TfmRegFilter.FormShow(Sender: TObject);
begin
  gAnyFilter.sType_1 := 'Process';
  gAnyFilter.sType_2 := 'RegPath';

  gAnyFilter.sLogic_1 := 'Inculde';
  gAnyFilter.sLogic_2 := 'Exculde';

  LoadFilter();
end;

procedure TfmRegFilter.btn2Click(Sender: TObject);
begin
  if Trim(cbb_Context.Text) = '' then
  begin
    Windows.MessageBox(Handle, PCHAR(LS_FilterValue), PChar(Caption), MB_OK or MB_ICONWARNING);
    cbb_Context.SetFocus;
    Exit;
  end;

  AddFilterItem(True, cbbArrtList.ItemIndex+1, self.cbb_logic.ItemIndex+1, self.cbb_Context.Text);
end;

procedure TfmRegFilter.btn3Click(Sender: TObject);
begin
  if lv_filterlist.Selected <> nil then
    lv_filterlist.DeleteSelected;
end;

procedure TfmRegFilter.btnApplyClick(Sender: TObject);
var
  I: Integer;
  AnyFilter: TANYFILTER;
begin
  // 先保存到注册表
  with TRegistry.Create do
  try
    RootKey := WIndows.HKEY_CURRENT_USER;
    if OpenKey(Format('software\ceiwei\RegMonitor%s\Test', [IDS_VERSION]), True) then
    begin
      WriteInteger('FilterCount', self.lv_filterlist.Items.Count);
      for I := 0 to self.lv_filterlist.Items.Count-1 do
      with lv_filterlist.Items[I] do
      begin
        WriteBool(Format('Valid_%d', [I]), Checked);
        WriteInteger(Format('IF_%d', [I]), PANYFILTER(Data).dwType);
        WriteInteger(Format('LOGIC_%d', [I]), PANYFILTER(Data).dwLogic );
        WriteString(Format('VALUE_%d', [I]), PANYFILTER(Data).Name);
      end;
      CloseKey();
    end;
  finally
    Free;
  end;

  //先清空设置
  ZeroMemory(@AnyFilter, SizeOf(AnyFilter));
  AnyFilter.dwType := $FF;  //清空设置标志  dwType ==$FF
  ControlFilterArg(@AnyFilter);

    // 再加载到内核驱动
  for I := 0 to self.lv_filterlist.Items.Count-1 do
  if  lv_filterlist.Items[I].Data <> nil then
  begin
    ZeroMemory(@AnyFilter, SizeOf(AnyFilter));
    AnyFilter := PANYFILTER(lv_filterlist.Items[I].Data)^;
    if not AnyFilter.Valid  then System.Continue;
    StrPCopy( AnyFilter.Name, UpperCase(PANYFILTER(lv_filterlist.Items[I].Data).Name));
    ControlFilterArg(@AnyFilter);
  end;

end;

procedure TfmRegFilter.cbb_ContextDropDown(Sender: TObject);
begin
  if (cbb_Context.Items.Count = 0) or (cbbArrtList.ItemIndex <> 1) then
    cbbArrtListChange(Sender);
end;

procedure TfmRegFilter.cbbArrtListChange(Sender: TObject);
begin
  cbb_Context.Clear;
  case cbbArrtList.ItemIndex  of
    0, 2: GetProcessList(cbb_Context.Items);
    1: begin
       cbb_Context.Items.Add('HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run');
       cbb_Context.Items.Add('HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run');
       cbb_Context.Items.Add('HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services');
       cbb_Context.Items.Add('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\MAIN');
    end;
  end;
end;

procedure TfmRegFilter.lv_filterlistCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  if Item.Selected then
    Sender.Canvas.Font.Style :=  Sender.Canvas.Font.Style + [fsBold]
  else
    Sender.Canvas.Font.Style :=  Sender.Canvas.Font.Style - [fsBold];
end;

procedure TfmRegFilter.lv_DataCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  if Item.Selected then
    Sender.Canvas.Font.Style :=  Sender.Canvas.Font.Style + [fsBold]
  else
    Sender.Canvas.Font.Style :=  Sender.Canvas.Font.Style - [fsBold];
end;

end.


