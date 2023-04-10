program RegFilter;

uses
  Forms,
  uCommFilter in 'uCommFilter.pas' {fmRegFilter},
  uCommStruct in 'uCommStruct.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfmRegFilter, fmRegFilter);
  Application.Run;
end.
