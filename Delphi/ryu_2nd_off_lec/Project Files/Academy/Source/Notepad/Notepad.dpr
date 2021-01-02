program Notepad;

uses
  Forms,
  uNotepad in 'uNotepad.pas' {fmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfmMain, fmMain);
  Application.Run;
end.
