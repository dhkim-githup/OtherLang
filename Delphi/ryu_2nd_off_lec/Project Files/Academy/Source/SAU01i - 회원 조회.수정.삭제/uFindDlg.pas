unit uFindDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB;

type
  TfmFindDlg = class(TForm)
    Shape2: TShape;
    Label4: TLabel;
    edKeyword: TEdit;
    Find: TButton;
    Button1: TButton;
    Button2: TButton;
    procedure FindClick(Sender: TObject);
    procedure edKeywordKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmFindDlg: TfmFindDlg;

implementation

Uses
  dmlExpress;

{$R *.dfm}

procedure TfmFindDlg.FindClick(Sender: TObject);
Var
  stIndexFieldNames : String;
begin
  stIndexFieldNames:= dmExpress.qrSTMember.IndexFieldNames;

  dmExpress.qrSTMember.IndexFieldNames:= 'UserName';
  dmExpress.qrSTMember.FindKey([edKeyword.Text]);

  dmExpress.qrSTMember.IndexFieldNames:= stIndexFieldNames;
end;

procedure TfmFindDlg.edKeywordKeyPress(Sender: TObject; var Key: Char);
Var
  stIndexFieldNames : String;
begin
  Exit;

  stIndexFieldNames:= dmExpress.qrSTMember.IndexFieldNames;

  dmExpress.qrSTMember.IndexFieldNames:= 'UserName';
  dmExpress.qrSTMember.FindNearest([edKeyword.Text]);

  dmExpress.qrSTMember.IndexFieldNames:= stIndexFieldNames;
end;

procedure TfmFindDlg.Button1Click(Sender: TObject);
Var
  stIndexFieldNames : String;
begin
  stIndexFieldNames:= dmExpress.qrSTMember.IndexFieldNames;

  dmExpress.qrSTMember.IndexFieldNames:= 'UserName';
  dmExpress.qrSTMember.FindNearest([edKeyword.Text]);

  dmExpress.qrSTMember.IndexFieldNames:= stIndexFieldNames;
end;

procedure TfmFindDlg.Button2Click(Sender: TObject);
begin
  dmExpress.qrSTMember.Locate(
    'Mobile',
    VarArrayOf([edKeyword.Text]),
    [loPartialKey]
  );
end;

end.
