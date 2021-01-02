unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
  var
    a : array[0..9] of integer;
begin
  a[0] :=1;
  a[1] :=2;
  a[3] :=a[0]+a[1];

  ShowMessage( IntToStr(a[3]));

end;

procedure TForm1.Button2Click(Sender: TObject);
var
    a : array[0..9, 0..3] of integer;
begin
  a[0][1] :=1;
  a[1][1] :=2;
  a[3][0] :=a[0][1]+a[1][1];

  ShowMessage( IntToStr(a[3][0]));
end;

procedure TForm1.Button3Click(Sender: TObject);
  var
    a : array of integer;
begin
  SetLength(a, 3);

  a[0] :=1;
  a[1] :=2;
  a[3] :=a[0]+a[1];

  ShowMessage( IntToStr(a[3]));

end;

procedure TForm1.Button4Click(Sender: TObject);
var
    a : array of array of integer;
begin
  SetLength(a,3);
  SetLength(a[0],2);
  SetLength(a[1],2);
  SetLength(a[2],2);

  a[0][1] :=1;
  a[1][1] :=2;
  a[2][0] :=a[0][1]+a[1][1];

  ShowMessage( IntToStr(a[2][0]));


end;

end.
