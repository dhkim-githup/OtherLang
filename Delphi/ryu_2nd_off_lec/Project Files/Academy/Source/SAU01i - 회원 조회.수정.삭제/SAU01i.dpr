program SAU01i;

uses
  Forms,
  uSAU01i in 'uSAU01i.pas' {fmSubModule},
  dmlExpress in '..\..\Lib\dmlExpress.pas' {dmExpress: TDataModule},
  uFindDlg in 'uFindDlg.pas' {fmFindDlg};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfmSubModule, fmSubModule);
  Application.CreateForm(TdmExpress, dmExpress);
  Application.CreateForm(TfmFindDlg, fmFindDlg);
  Application.Run;
end.
