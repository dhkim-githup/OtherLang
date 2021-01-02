unit uSAU01i;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ExtCtrls, Grids, DBGrids, StdCtrls, Mask, ComCtrls;

type
  TfmSubModule = class(TForm)
    Panel1: TPanel;
    DBNavigator: TDBNavigator;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Shape1: TShape;
    Shape2: TShape;
    Label4: TLabel;
    Shape3: TShape;
    Label2: TLabel;
    StatusBar: TStatusBar;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSubModule: TfmSubModule;

implementation

Uses
  dmlExpress, uFindDlg;

{$R *.dfm}

procedure TfmSubModule.Button1Click(Sender: TObject);
begin
  fmFindDlg.ShowModal;
end;

end.
