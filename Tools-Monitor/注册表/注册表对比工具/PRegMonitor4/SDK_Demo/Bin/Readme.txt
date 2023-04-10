SDK ���� ����ϵ��jfyes@qq.com www.ceiwei.com

--------------------------------------------------------------------------------

��ϸ���÷�����ο��� SDK_Demo\Delphi   Ŀ¼��Delphi����DEMO

const
  DllMonitor = 'RegMonitor4.dll';

//��ʼ�����
//lpCallFunc: �ص�func, ����һ��TOnData����ָ��
//����Boolean True = �ɹ�  False = ʧ��
function InitMonitor(lpCallFunc: TOnData): BOOL; stdcall;  external DllMonitor;
//�������ݲ���״̬, Active(True=�������ݲ��� False=��ͣ���ݲ���)
function ControlCapture(Active: BOOL): BOOL; stdcall; external DllMonitor;

//���� ����  PAnyFilter= PAnyFilter��ָ��
function ControlFilterArg(AnyFilter: PAnyFilter): BOOL; stdcall; external DllMonitor;

//���HKEY Root
function AnyMonitor(hkCode: DWORD): DWORD; stdcall; external DllMonitor;
//�رռ���, ��BOOL����
function UnMonitor(): BOOL; stdcall;  external DllMonitor;
//��������
function GetMonitorLastError(): DWORD; stdcall; external DllMonitor;
//��������Ϣ
function GetMonitorLastErrorMessage(): PChar;   stdcall; external DllMonitor;

//����PID �ҵ�ImageName
function PIDToImageName(PID: DWORD; lpProcessName: PChar): BOOL; stdcall; external DllMonitor;

//���ػص�func
function LOnData(lpBuffer: PENTRY; lpData: Pointer): Integer; stdcall;


��ע:
---------
     4.0 SDK�����ӿ�DLL �ǲ����õģ��ͷ�����RegMonitor4.0��������ں�������һ���ģ����DLL���԰汾��������ÿ����1000�ζ�д�������ݾͻ�ֹͣ�������ݵ��������ϣ��������õ��ַ�ͨ���������ݴ�������������




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



 

copyright (C) 2003-2011 ceiwei����Ƽ�  
www.ceiwei.com




