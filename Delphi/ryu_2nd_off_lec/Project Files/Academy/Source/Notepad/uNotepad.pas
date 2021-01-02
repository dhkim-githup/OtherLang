unit uNotepad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TfmMain = class(TForm)
    MainMenu: TMainMenu;
    N1: TMenuItem;
    miNewFile: TMenuItem;
    miOpenFile: TMenuItem;
    miSaveFile: TMenuItem;
    N5: TMenuItem;
    miSaveTo: TMenuItem;
    miClose: TMenuItem;
    moText: TMemo;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    procedure miNewFileClick(Sender: TObject);
    procedure miOpenFileClick(Sender: TObject);
    procedure miSaveFileClick(Sender: TObject);
    procedure miSaveToClick(Sender: TObject);
    procedure miCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  public
    { Public declarations }
  private
    { Private declarations }
    FFileName : String;
    Procedure SetFileName(Value:String);
    Procedure CheckAndSave;
  published
    { published declarations }
    Property FileName : String read FFileName write SetFileName;
  end;

var
  fmMain: TfmMain;

implementation

{$R *.dfm}

Procedure TfmMain.CheckAndSave;
Var
  bAskToSave : Boolean;
begin
  If moText.Modified = True then Begin
    bAskToSave:=
      MessageDlg(
        '내용이 변경되었습니다.'#13'변경된 내용을 저장하시겠습니까?',
        mtInformation, [mbYes, mbNo], 0) = mrYes;
    If bAskToSave = True then miSaveFileClick(Nil);
  End;
End;

procedure TfmMain.miNewFileClick(Sender: TObject);
begin
  CheckAndSave;
  FileName:= '';
  moText.Lines.Clear;
  moText.Modified:= False;
end;

procedure TfmMain.miOpenFileClick(Sender: TObject);
begin
  CheckAndSave;
  If OpenDialog.Execute = True then Begin
    FileName:= OpenDialog.FileName;
    moText.Lines.LoadFromFile(OpenDialog.FileName);
    moText.Modified:= False;
  End;
end;

procedure TfmMain.miSaveFileClick(Sender: TObject);
begin
  If FileName = '' then Begin
    If SaveDialog.Execute = True then Begin
      FileName:= SaveDialog.FileName;
      moText.Lines.SaveToFile(FileName);
    End
    
  End Else Begin
    moText.Lines.SaveToFile(FileName);
    moText.Modified:= False;
  End;
end;

procedure TfmMain.miSaveToClick(Sender: TObject);
begin
  If SaveDialog.Execute = True then Begin
    FileName:= SaveDialog.FileName;
    moText.Lines.SaveToFile(FileName);
  End;
end;

procedure TfmMain.miCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmMain.FormClose(Sender: TObject; var Action: TCloseAction);
Var
  bAskToSave : Boolean;
begin
  CheckAndSave;
end;

Procedure TfmMain.SetFileName(Value:String);
Begin
  FFileName:= Value;

  If Value = '' then Caption:= '제목없음'
  Else Caption:= ExtractFileName(Value);
End;

end.

