unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ActnList, Vcl.StdActns,
  System.Actions, System.ImageList, Vcl.ImgList,  Vcl.ActnMan,
  Vcl.ActnCtrls, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ActnMenus, IDETheme.ActnCtrls;

type
  TForm2 = class(TForm)
    ActionManager1: TActionManager;
    ImageList1: TImageList;
    FileOpen1: TFileOpen;
    FileExit1: TFileExit;
    FileSaveAs1: TFileSaveAs;
    Action1: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;
    CoolBar1: TCoolBar;
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Action1Execute(Sender: TObject);
begin
    Showmessage('Test');
    Show
end;

end.
