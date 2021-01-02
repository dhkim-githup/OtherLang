program SAL02i;

uses
  Forms,
  uSAL02i in 'uSAL02i.pas' {fmSubModule},
  dmlMain in '..\..\Lib\dmlMain.pas' {dmMain: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfmSubModule, fmSubModule);
  Application.CreateForm(TdmMain, dmMain);
  Application.Run;
end.
