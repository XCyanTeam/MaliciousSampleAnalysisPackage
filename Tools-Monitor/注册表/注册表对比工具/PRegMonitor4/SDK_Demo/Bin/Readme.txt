SDK 开发 请联系：jfyes@qq.com www.ceiwei.com

--------------------------------------------------------------------------------

详细调用方法请参看： SDK_Demo\Delphi   目录的Delphi调用DEMO

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


备注:
---------
     4.0 SDK开发接口DLL 是测试用的，和发布的RegMonitor4.0主程序的内核驱动是一样的，这个DLL测试版本的限制是每调用1000次读写串口数据就会停止发送数据到主界面上，并将试用的字符通过串口数据传到界面上来。




--------------------------------------------------------------------------------
 See detailed call the method: SDK_Demo \ Delphi directory called DEMO Delphi



const 
  DllMonitor = 'RegMonitor4.dll'; 

/ / Initialize control 
/ / LpCallFunc: callback func, passing a pointer TOnData process 
/ / Returns Boolean True = success False = failure 
function InitMonitor (lpCallFunc: TOnData): BOOL; stdcall; external DllMonitor; 
/ / Control data capture status, Active (True = False = pause on data capture data capture) 
function ControlCapture (Active: BOOL): BOOL; stdcall; external DllMonitor; 

/ / Set pointer to filter PAnyFilter = PAnyFilter 
function ControlFilterArg (AnyFilter: PAnyFilter): BOOL; stdcall; external DllMonitor; 

/ / Monitor HKEY Root 
function AnyMonitor (hkCode: DWORD): DWORD; stdcall; external DllMonitor; 
/ / Close the monitor, return type BOOL 
function UnMonitor (): BOOL; stdcall; external DllMonitor; 
/ / Last error code 
function GetMonitorLastError (): DWORD; stdcall; external DllMonitor; 
/ / Last error message 
function GetMonitorLastErrorMessage (): PChar; stdcall; external DllMonitor; 

/ / Process PID found ImageName 
function PIDToImageName (PID: DWORD; lpProcessName: PChar): BOOL; stdcall; external DllMonitor; 

/ / Callback func Local 
function LOnData (lpBuffer: PENTRY; lpData: Pointer): Integer; stdcall; 

  
Remarks: 
--------- 
     4.0 SDK development interface DLL is used for testing, and release of RegMonitor4.0 main program is the same as the kernel driver, the DLL version of the test limit is 1000 per call to read and write serial data will stop sending data to the main interface, and the trial of the character data transmitted through the serial interface up. 



 

copyright (C) 2003-2011 ceiwei软件科技  
www.ceiwei.com




