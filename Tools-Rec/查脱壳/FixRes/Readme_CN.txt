��飺
    ���� DT_FixRes Ӧ���� Win32 ƽ̨���û�ͨ����̷�ʽ���ø����棬�ɽ�΢�� PE ��ʽ�ļ�
�еķǱ�׼��Դ��Resource�����б�׼���޸���ͬʱ����Ϊ�߼��û��ṩ����Դ�������ܣ�Ϊ PE 
��Դ�޸����ؽ��ṩ�˸߶ȵ�����ԡ��������ر��ʺϽ�������������������ѡ�

    �ܶ౻�ӿǵ� PE �ļ����ѿ��Ժ������� PE �ļ�����Դ�����޷���ĳЩ��Դ���߽��в�
�����༭��ͬʱҲ�������ѿ��ļ����Ż������������е���Ҫԭ�������ںܶ�ӿǳ��򽫲�����Դ
���� Icon��Version Information) ����Դ�� (resource section) �Ƶ��˿����ӵĽ���⵼��
�ܶ���Դ���߲�����ȷʶ��ֲ��������������Դ���ݡ�DT_FixRes ��Ϊ PE �ļ���Դ�޸����ؽ�
���棬Ϊ���ṩ��������������������Խ��ֲ��ڶ���������Դ�����Ƶ�һ����Դ������Ҷ�
��Դ��������ȫ�Ż����޸������Դ�������κ��������ݣ���ͬ��Դ�������ı���Ч������������
δ�ӿ�ǰ��ԭʼ��Դ��������Դ����Ҳ���ܹ�˳���ض��޸���� PE ��Դ���в鿴���༭������Ҳ
�����˶��ѿ��ļ����ֹ��Ż�������

������
   1.���������ʹ�ø����棬�����������ʹ�ø�����ĳ����������˵����ע��������İ�
     Ȩ��Ϣ���Ա�ʾ֧�����ߵ������Ͷ���
   2.������ǰ�ȫ�ģ��������߲���ŵ���κ�����ʹ�ñ�������������ʧ�����˺�����

ʹ��˵����
   �������Զ�̬���ӿ⣨DT_FixRes.dll����ʽʵ�֣��� DLL �������������������ܷ�Ϊ����
�ࡣ

��һ�ࣺPE �ļ���Դ�޸����ܡ�

��  �㣺�޸������������������ PE �ļ�β������һ������Դ�ڣ���ᵼ���ļ�������ͬ
        ʱ���Ὣ��ľ���Դλ�õ�������Դ�������㣨�����㣩��������Դ�ڱ�����Ϊ
        ��.rsrc������ǰ���ڵ����н�������ɾ������������Ա�֤������֪����Դ���߶��޸���
        ����Դ���в鿴���༭���ù����ʺ϶��ѿǺ� PE �ļ���Դ�ļ��޸����û�����߱���
        ����� PE �ļ�֪ʶ�������á�

<1> ������� FixResFromFile

C ��ʽ����ԭ��:
BOOL __stdcall FixResFromFile(const char* PEFile, char* ErrMsg);

Delphi ��ʽ����ԭ�ͣ�
function FixResFromFile(const PEFile: PChar; ErrMsg: PChar): Boolean; stdcall;

����˵����
PEFile --- ָ�룬ָ������Ҫ������Դ�޸��� PE �ļ�·����
ErrMsg --- ָ�룬ָ��һ�����پ��� 80 ���ֽڿռ�� Buffer����ִ�иú������� False ʱ��
           ���ڽ��մ�����Ϣ��

�ú��������κ� Win32 ƽ̨�ı������ȥ���á�

<2> ������� FixResFromStream

Delphi ��ʽ����ԭ�ͣ�
function FixResFromStream(PEStream: TMemoryStream; ErrMsg: PChar): Boolean;

����˵����
PEStream Ϊ PE ӳ����ڴ���������˵��ͬ <1> ��

�˺�����д�ѿǻ����û��ر����ã����㽫 dump ������ PE �ڴ�ӳ�󱣴浽Ӳ��֮ǰ���������
������Դ�޸���ͨ�����ڴ����Ĳ��������Լ��ٴ��빤������ע�⣺�ú����������� Delphi ��
�ԡ�

�ڶ��ࣺ�����ؽ������Դ�ڹ��ܡ�

��  �㣺���ڲ�ͬ�ļӿǳ����ԭʼ PE �ļ��Ľṹ�ı��ǧ����𣬵��¶��ѿ��ļ��� PE �ṹ
        �Ż�����Ҳ��ǧ�����ģ���˺�����һ����������ɶ������ѿ����͵� PE �ṹ�Ż���
        ���潫���������û��Լ�����Ϊʹ���ߣ������֪�������ĳ�����͵Ŀ��Լ�����Ż���
        �Ǻ�� PE �ṹ����ô��Ҳ�Ϳ�����Ҫ���޸������ؽ������Դ�ڼ���������Ϊ�����ʵ�
        RVA ��ַ��ʼ�����ù��ܽӿ�������������������Ҫ�����ڸù��ܵ���Ը����ԣ�Ҫ��
        ʹ���߱���� PE �ṹʮ����Ϥ����˱����ܽ��ʺϸ߼��û�ʹ�á�

<1> ������� DumpResFromFile

C ��ʽ����ԭ��:
BOOL __stdcall DumpResFromFile(const char* PEFile, char* ResFile, 
  DWORD NewRVA, DWord FileAlign, char* ErrMsg);

Delphi ��ʽ����ԭ�ͣ�
function DumpResFromFile(const PEFile: PChar; const ResFile: PChar;
  NewRVA: DWord; FileAlign: DWord; ErrMsg: PChar): Boolean; stdcall;

����˵����
PEFile --- ָ�룬ָ������Ҫ������Դ�޸��� PE �ļ�·����
ResFile ---ָ�룬ָ����Ҫ�����ľ����޸�����Դ���ļ�����·����
NewRVA --- ��ϣ���޸���� PE �ļ���Դ�ڵļ��� RVA ��ַ���� resouce data directroy ��
           virtual address���õ�ַӦ�ô��� 0x1000������Ҫ���� PE �ڴ�ӳ��ߴ�
           (Size of PE Image)������Ӧ���� DWORD �߽���룬������ 0x1000 �ı�����
FileAlign --- ��Դ�ڵ��ļ����뷽ʽ��ֵֻ���� 0x200 ���� 0x1000��
ErrMsg --- ָ�룬ָ��һ�����پ��� 80 ���ֽڿռ�� Buffer����ִ�иú������� False ʱ��
           ���ڽ��մ�����Ϣ��

�ú��������κ� Win32 ƽ̨�ı������ȥ���á�

<2> ������� DumpResFromStream

Delphi ��ʽ����ԭ�ͣ�
function DumpResFromStream(PEStream: TMemoryStream; const ResFile: string;
  NewRVA: DWord; FileAlign: DWord; ErrMsg: PChar): Boolean;

����˵����
PEStream Ϊ PE ӳ����ڴ���������˵��ͬ <1> ��

<3> ������� DumpResFromStreamEx
 
Delphi ��ʽ����ԭ�ͣ�
function DumpResFromStreamEx(PEStream: TMemoryStream; ResStream: TMemoryStream;
  NewRVA: DWord; FileAlign: DWord; ErrMsg: PChar): Boolean;

����˵����
ResStream Ϊ�����ľ����޸�����Դ���ڴ���������˵��ͬ <1>��<2>��

���� <2>��<3> ��д�ѿǻ����û��ر����ã����㽫 dump ������ PE �ڴ�ӳ�󱣴浽Ӳ��֮ǰ��
�������Ҫ���� PE �ṹ���Ż������Ż�֮ǰ�ܿ�����Ҫ�����ؽ�����Դ�ڡ�ͨ�����ڴ����Ĳ�
�������Լ��ٴ��빤������ע�⣺�������������������� Delphi ���ԡ�

�ر���ʾ������ֻ����ȷ PE ��ʽ�Ļ������޸����ؽ� PE ��Դ�����Ӧ�������������֮ǰ�뱣
          ֤�������ļ������ڴ�����������ȷ�� PE ��ʽ�����������ɲ���Ԥ�ڵĴ���

���÷�����Delphi ���ԣ���
procedure FixResDemo;
type
  TFixPERes = function(const AFileName: PChar; ErrMsg: PChar): Boolean; stdcall;
var
  ErrMsg: array[1..80] of Char;
  Handle: THandle;
  FixPERes: TFixPERes;
begin
  Handle := LoadLibrary('DT_FixRes.dll');
  if Handle <> 0 then
  begin
    @FixPERes := GetProcAddress(Handle, 'FixResFromFile');
    if @FixPERes <> nil then
      if not FixPERes(PChar('ur PE file'), @ErrMsg) then
        ShowMessage(ErrMsg);
    FreeLibrary(Handle);
  end;
end;

��д��һ�����Ը����湦�ܵ� Demo�����������ļ���DT_FixRes.dll������ͬһ�ļ�Ŀ¼�½��в�
�ԣ����� bug �뷢��֪ͨ�ҡ�

�ر���л����л askformore Ϊ�����������ʵ���ԵĽ��飻��л cyclotron Ϊ���ĵ��ṩ��Ӣ��
          ���룻��л��������֧���ҵ����п�ѩ��̳�����ѡ�

dREAMtHEATER
2005-04-27
  
E-mail:NoteXPad@163.com
http://dREAMtHEATER.reg365.com
