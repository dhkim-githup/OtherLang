program SAU02n;

uses
  Forms,
  uSAU02n in 'uSAU02n.pas' {fmSubModule},
  dmlExpress in '..\..\Lib\dmlExpress.pas' {dmExpress: TDataModule},
  SendEMail in 'SendEMail.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfmSubModule, fmSubModule);
  Application.CreateForm(TdmExpress, dmExpress);
  Application.Run;
end.
