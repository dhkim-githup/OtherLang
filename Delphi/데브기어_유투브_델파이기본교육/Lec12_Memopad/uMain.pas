unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdActns,
  Vcl.ExtActns, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.ActnMan, Vcl.ToolWin, Vcl.ActnCtrls, Vcl.Ribbon,
  Vcl.RibbonLunaStyleActnCtrls, Vcl.StdCtrls, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.Touch.GestureMgr;

type
  TMainForm = class(TForm)
    ActionManager1: TActionManager;
    ImageList1: TImageList;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    FormatRichEditBold1: TRichEditBold;
    FormatRichEditItalic1: TRichEditItalic;
    FormatRichEditUnderline1: TRichEditUnderline;
    FormatRichEditAlignLeft1: TRichEditAlignLeft;
    FormatRichEditAlignRight1: TRichEditAlignRight;
    FormatRichEditAlignCenter1: TRichEditAlignCenter;
    FileOpen1: TFileOpen;
    FileSaveAs1: TFileSaveAs;
    FileExit1: TFileExit;
    New_Action: TAction;
    About_Action: TAction;
    TopAction: TAction;
    Ribbon1: TRibbon;
    RibbonPage1: TRibbonPage;
    RibbonPage2: TRibbonPage;
    RibbonGroup1: TRibbonGroup;
    RibbonGroup2: TRibbonGroup;
    RibbonGroup4: TRibbonGroup;
    RibbonGroup3: TRibbonGroup;
    RibbonGroup5: TRibbonGroup;
    PopupMenu1: TPopupMenu;
    StatusBar1: TStatusBar;
    RichEdit1: TRichEdit;
    Timer1: TTimer;
    GestureManager1: TGestureManager;
    procedure New_ActionExecute(Sender: TObject);
    procedure FileOpen1BeforeExecute(Sender: TObject);
    procedure FileOpen1Accept(Sender: TObject);
    procedure FileSaveAs1BeforeExecute(Sender: TObject);
    procedure FileSaveAs1Accept(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ShowHint(Sender : TObject);
    procedure FormCreate(Sender: TObject);
    procedure TopActionExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.FileOpen1Accept(Sender: TObject);
begin
  RichEdit1.Lines.LoadFromFile(FileOpen1.Dialog.FileName);
end;

procedure TMainForm.FileOpen1BeforeExecute(Sender: TObject);
begin
     FileOpen1.Dialog.InitialDir := 'C:\';
     FileOpen1.Dialog.Filter := '유니트파일|*.pas|텍스트파일|*.txt';
end;

procedure TMainForm.FileSaveAs1Accept(Sender: TObject);
begin
    RichEdit1.Lines.SaveToFile(FileSaveAs1.Dialog.FileName);
end;

procedure TMainForm.FileSaveAs1BeforeExecute(Sender: TObject);
begin
     FileSaveAs1.Dialog.InitialDir := 'C:\';
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
   Application.OnHint :=ShowHint;
end;

procedure TMainForm.New_ActionExecute(Sender: TObject);
begin
     RichEdit1.Lines.Clear;
end;

procedure TMainForm.ShowHint(Sender: TObject);
begin
   StatusBar1.Panels[0].Text := Application.Hint;
   // Application.hintPause, hintColor,
end;

procedure TMainForm.Timer1Timer(Sender: TObject);
begin
    StatusBar1.Panels[2].Text :=  FormatDateTime('yyyy-mm-dd dddd hh:nn:ss am/pm',now);
end;

procedure TMainForm.TopActionExecute(Sender: TObject);
begin
    TopAction.Checked := not TopAction.Checked;
    if TopAction.Checked then
       FormStyle := fsStayOnTop
    else
       FormStyle := fsNormal

end;

end.
