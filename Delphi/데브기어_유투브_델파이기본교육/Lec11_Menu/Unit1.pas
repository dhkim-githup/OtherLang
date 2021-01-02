unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.ImageList, Vcl.ImgList,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ActnList, Vcl.StdActns, System.Actions;

type
  TForm1 = class(TForm)
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    Open2: TMenuItem;
    Save2: TMenuItem;
    N2: TMenuItem;
    Close2: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ActionList1: TActionList;
    FileOpen1: TFileOpen;
    FileSaveAs1: TFileSaveAs;
    FileExit1: TFileExit;
    Action1: TAction;
    Action2: TAction;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Open1: TMenuItem;
    SaveAs1: TMenuItem;
    Edit1: TMenuItem;
    Red1: TMenuItem;
    Yellow1: TMenuItem;
    procedure Open1Click(Sender: TObject);
    procedure Red1Click(Sender: TObject);
    procedure Close1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Close1Click(Sender: TObject);
begin
   Close;
end;

procedure TForm1.Open1Click(Sender: TObject);
begin
   ShowMessage('File Open');
end;

procedure TForm1.Red1Click(Sender: TObject);
begin
   Red1.Checked := true;
   Color := clRed;
end;


end.
