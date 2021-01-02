unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
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
  Type
   MyRecord = record
   Name : string;
   Address : string;
   Age : byte;
   end;

  var
    temp : array[0..30] of MyRecord;

begin

  temp[0].Name := 'Ny Name1';
  temp[1].Name := 'Ny Name2';
  temp[2].Name := 'Ny Name3';
  temp[0].Address := 'Ny Address1';
  temp[1].Address := 'Ny Address2';
  temp[2].Address := 'Ny Address3';
  temp[0].Age := 50;
  temp[1].Age := 60;
  temp[2].Age := 70;

  ShowMessage( temp[1].Address)
end;

end.
