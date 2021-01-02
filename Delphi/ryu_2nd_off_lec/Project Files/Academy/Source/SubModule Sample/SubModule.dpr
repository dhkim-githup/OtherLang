program SubModule;

uses
  Forms,
  uSubModule in 'uSubModule.pas' {fmSubModule},
  dmlExpress in '..\..\Lib\dmlExpress.pas' {dmExpress: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfmSubModule, fmSubModule);
  Application.CreateForm(TdmExpress, dmExpress);
  Application.Run;
end.
