program SAL01i;

uses
  Forms,
  uSAL01i in 'uSAL01i.pas' {fmSubModule},
  dmlExpress in '..\..\Lib\dmlExpress.pas' {dmExpress: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfmSubModule, fmSubModule);
  Application.CreateForm(TdmExpress, dmExpress);
  Application.Run;
end.
