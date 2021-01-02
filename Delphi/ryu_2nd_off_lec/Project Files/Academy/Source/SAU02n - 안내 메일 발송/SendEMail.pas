unit SendEMail;

interface

Uses
  Classes, IdComponent, IdTCPConnection, IdTCPClient, IdMessageClient,
  IdSMTP, IdBaseComponent, IdMessage;

Type
  TSendEMail = Class(TObject)
  protected
  { Protected declarations }
    IdMsgSend : TIdMessage;
    SMTP : TIdSMTP;
  public
  { Public declarations }
    Constructor Create;
    Destructor Destroy; override;

    Procedure Send;
  private
  { Private declarations }
    FNeedToLogin : Boolean;

    Function  GetHost:String;
    Procedure SetHost(Value:String);
    Function  GetPort:Integer;
    Procedure SetPort(Value:Integer);
    Function  GetUserName:String;
    Procedure SetUserName(Value:String);
    Function  GetPassword:String;
    Procedure SetPassword(Value:String);

    Function  GetContent:String;
    Procedure SetContent(Value:String);
    Function  GetFromAddr:String;
    Procedure SetFromAddr(Value:String);
    Function  GetToAddr:String;
    Procedure SetToAddr(Value:String);
    Function  GetSubject:String;
    Procedure SetSubject(Value:String);
    Function  GetPriority:Integer;
    Procedure SetPriority(Value:Integer);
    Function  GetCCList:String;
    Procedure SetCCList(Value:String);
    Function  GetBCCList:String;
    Procedure SetBCCList(Value:String);
  Published
  { Published declarations }
    Property Host : String read GetHost write SetHost;
    Property Port : Integer read GetPort write SetPort;
    Property UserName : String read GetUserName write SetUserName;
    Property Password : String read GetPassword write SetPassword;
    Property NeedToLogin : Boolean read FNeedToLogin write FNeedToLogin default False;

    Property Content : String read GetContent write SetContent;
    Property FromAddr : String read GetFromAddr write SetFromAddr;
    Property ToAddr : String read GetToAddr write SetToAddr;
    Property Subject : String read GetSubject write SetSubject;
    Property Priority : Integer read GetPriority write SetPriority;
    Property CCList : String read GetCCList write SetCCList;
    Property BCCList : String read GetBCCList write SetBCCList;
  End;

implementation

Constructor TSendEMail.Create;
Begin
  Inherited Create;

  IdMsgSend:= TIdMessage.Create(Nil);
  SMTP:= TIdSMTP.Create(Nil);
End;

Destructor TSendEMail.Destroy;
Begin
  IdMsgSend.Free;
  SMTP.Free;

  Inherited Destroy;
End;

Procedure TSendEMail.Send;
Begin
  If FNeedToLogin = True then SMTP.AuthenticationType:= atLogin
  Else SMTP.AuthenticationType:= atNone;

  SMTP.Connect;
  Try
    SMTP.Send(IdMsgSend);
  Finally
    SMTP.Disconnect;
  End;
End;

Function  TSendEMail.GetHost:String;
Begin
  Result:= SMTP.Host;
End;

Procedure TSendEMail.SetHost(Value:String);
Begin
  SMTP.Host:= Value;
End;

Function  TSendEMail.GetPort:Integer;
Begin
  Result:= SMTP.Port;
End;

Procedure TSendEMail.SetPort(Value:Integer);
Begin
  SMTP.Port:= Value;
End;

Function  TSendEMail.GetUserName:String;
Begin
  Result:= SMTP.UserName;
End;

Procedure TSendEMail.SetUserName(Value:String);
Begin
  SMTP.UserName:= Value;
End;

Function  TSendEMail.GetPassword:String;
Begin
  Result:= SMTP.Password;
End;

Procedure TSendEMail.SetPassword(Value:String);
Begin
  SMTP.Password:= Value;
End;

Function  TSendEMail.GetContent:String;
Begin
  Result:= IdMsgSend.Body.Text;
End;

Procedure TSendEMail.SetContent(Value:String);
Begin
  IdMsgSend.Body.Text:= Value;
End;

Function  TSendEMail.GetFromAddr:String;
Begin
  Result:= IdMsgSend.From.Text;
End;

Procedure TSendEMail.SetFromAddr(Value:String);
Begin
  IdMsgSend.From.Text:= Value;
  IdMsgSend.ReplyTo.EMailAddresses:= Value;
  IdMsgSend.ReceiptRecipient.Text:= Value;
End;

Function  TSendEMail.GetToAddr:String;
Begin
  Result:= IdMsgSend.Recipients.EMailAddresses;
End;

Procedure TSendEMail.SetToAddr(Value:String);
Begin
  IdMsgSend.Recipients.EMailAddresses:= Value;
End;

Function  TSendEMail.GetSubject:String;
Begin
  Result:= IdMsgSend.Subject;
End;

Procedure TSendEMail.SetSubject(Value:String);
Begin
  IdMsgSend.Subject:= Value;
End;

Function  TSendEMail.GetPriority:Integer;
Begin
  Result:= Integer(IdMsgSend.Priority);
End;

Procedure TSendEMail.SetPriority(Value:Integer);
Begin
  IdMsgSend.Priority:= TIdMessagePriority(Value);
End;

Function  TSendEMail.GetCCList:String;
Begin
  Result:= IdMsgSend.CCList.EMailAddresses;
End;

Procedure TSendEMail.SetCCList(Value:String);
Begin
  IdMsgSend.CCList.EMailAddresses:= Value;
End;

Function  TSendEMail.GetBCCList:String;
Begin
  Result:= IdMsgSend.BCCList.EMailAddresses;
End;

Procedure TSendEMail.SetBCCList(Value:String);
Begin
  IdMsgSend.BCCList.EMailAddresses:= Value;
End;

end.

