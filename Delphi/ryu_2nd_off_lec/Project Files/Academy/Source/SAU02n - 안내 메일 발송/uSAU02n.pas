unit uSAU02n;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ExtCtrls, ComCtrls, SendEMail, StdCtrls;

type
  TfmSubModule = class(TForm)
    Panel1: TPanel;
    StatusBar: TStatusBar;
    Button1: TButton;
    Shape1: TShape;
    Label1: TLabel;
    edSubject: TEdit;
    Label2: TLabel;
    Shape2: TShape;
    ProgressBar: TProgressBar;
    moMsg: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    SendEMail : TSendEMail;
  public
    { Public declarations }
  end;

var
  fmSubModule: TfmSubModule;

implementation

Uses
  dmlExpress;

{$R *.dfm}

procedure TfmSubModule.FormCreate(Sender: TObject);
begin
  SendEMail:= TSendEMail.Create;
  SendEMail.Host:= 'mail.sysdaq.com';
  // SendEMail.Port:= ;
  SendEMail.UserName:= 'ryujt';
  SendEMail.Password:= 'passwd';
  SendEMail.NeedToLogin:= True;
  SendEMail.FromAddr:= 'ryujt@sysdaq.com';
end;

procedure TfmSubModule.Button1Click(Sender: TObject);
begin
  SendEMail.Subject:= edSubject.Text;
  SendEMail.Content:= moMsg.Text;

  dmExpress.qrSTMember.Last;
  ProgressBar.Position:= 0;
  ProgressBar.Max:= dmExpress.qrSTMember.RecordCount;

  dmExpress.qrSTMember.First;
  While dmExpress.qrSTMember.Eof = False do Begin
    SendEMail.ToAddr:= dmExpress.qrSTMember.FieldByName('EMail').AsString;
    StatusBar.SimpleText:= Format('%s에게 전송 중...', [SendEMail.ToAddr]);

    // 메일 보내는 데모만 보여주기 위해 실제 전송은 하지 않음
    // SendEMail.Send;
    Sleep(100);
    ProgressBar.Position:= ProgressBar.Position + 1;

    dmExpress.qrSTMember.Next;
  End;

  StatusBar.SimpleText:= '전송완료';
end;

end.

