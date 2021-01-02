unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    lbName: TLabel;
    LEmail: TLabel;
    lbAddress: TLabel;
    edName: TEdit;
    edEmail: TEdit;
    edAddress: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Edit1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button2Click(Sender: TObject);

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
    Name, Email, Address: string;
begin
    if Edit1.Text ='' then
        Begin
           ShowMessage('입력해요.');
           Edit1.SetFocus;
           Exit;
        End;

    if Edit1.Text ='NO' then
        begin
           ShowMessage('Don''t Speak NO');
           Edit1.SetFocus;
           Exit;
        end
     else if Edit1.Text ='OK' then
       ShowMessage('Good Job')
     else if Edit1.Text ='NOT' then
        begin
         ShowMessage('Don''t Speak NOTTTTTTTTT');
         Edit1.SetFocus;
        end
     else
        begin
        ShowMessage('Write anything');
        end;


     if Edit1.Text='NO' then
        ShowMessage('Don''t Speak No');

     edName.Text :='홍길동';
     edEmail.Text :='mail@email.com';
     edAddress.Text :='서울시 서초구';
end;



procedure TForm1.Button2Click(Sender: TObject);
begin
   Exit;
end;

procedure TForm1.Edit1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   //Edit1.Text =''
   TEdit(Sender).Text :='';
end;

end.
