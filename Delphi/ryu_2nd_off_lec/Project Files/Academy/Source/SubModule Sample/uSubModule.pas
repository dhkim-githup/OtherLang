unit uSubModule;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ExtCtrls, ComCtrls;

type
  TfmSubModule = class(TForm)
    Panel1: TPanel;
    DBNavigator: TDBNavigator;
    StatusBar: TStatusBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSubModule: TfmSubModule;

implementation

Uses
  dmlExpress;

{$R *.dfm}

end.
