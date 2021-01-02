program Project1;

uses
  Vcl.Forms,
  uFmMain in 'uFmMain.pas' {Form1},
  uDrawClass in 'uDrawClass.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
