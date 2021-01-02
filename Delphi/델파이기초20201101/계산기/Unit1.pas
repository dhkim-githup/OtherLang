unit Unit1;

interface // 다른 Unit 에서 접근 가능, import , 전역변수 선언, 사용함수 선언

uses // java import 와 같은.
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.StrUtils;

type // 전역, 타입, 펑션등 선언 부
  TForm1 = class(TForm)
    Label1: TLabel;
    EditResult: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button8: TButton;
    Button9: TButton;
    Button7: TButton;
    ButtonDot: TButton;
    Button0: TButton;
    ButtonAll: TButton;
    ButtonClear: TButton;
    ButtonResult: TButton;
    ButtonLeft: TButton;
    BtnPlus: TButton;
    BtnMinus: TButton;
    BtnMod: TButton;
    BtnMulti: TButton;
    procedure ButtonNumberClick(Sender: TObject);
    procedure ButtonLeftClick(Sender: TObject);
    procedure ButtonClearClick(Sender: TObject);
    procedure BtnPlusClick(Sender: TObject);
    procedure ButtonResultClick(Sender: TObject);
    procedure BtnMinusClick(Sender: TObject);
    procedure BtnModClick(Sender: TObject);
    procedure BtnMultiClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var // 전역변수 부 .
  Form1: TForm1;

implementation
 var
  Value1, Value2, Vresult : Single;
  vMod : Byte;

{$R *.dfm}

procedure TForm1.BtnPlusClick(Sender: TObject);
begin
    Value1 :=  StrToCurr(EditResult.Text);
    EditResult.Text := '0';
    vMod :=1;
end;

procedure TForm1.BtnMinusClick(Sender: TObject);
begin
     Value1 :=  StrToCurr(EditResult.Text);
     EditResult.Text := '0';
     vMod :=2;
end;

procedure TForm1.BtnMultiClick(Sender: TObject);
begin
   Value1 :=  StrToCurr(EditResult.Text);
   EditResult.Text := '0';
   vMod :=3;
end;

procedure TForm1.BtnModClick(Sender: TObject);
begin
    Value1 :=  StrToCurr(EditResult.Text);
    EditResult.Text := '0';
    vMod :=4;
end;

procedure TForm1.ButtonClearClick(Sender: TObject);
  begin
      EditResult.Text :='0';
  end;

  procedure TForm1.ButtonLeftClick(Sender: TObject);
  begin
      EditResult.Text :=  LeftStr(EditResult.Text, length(EditResult.Text)-1 );

  end;

  procedure TForm1.ButtonNumberClick(Sender: TObject);
  begin
     if EditResult.Text ='0' then  EditResult.Text := TButton(Sender).Caption
     else EditResult.Text := EditResult.Text + TButton(Sender).Caption;
  end;

procedure TForm1.ButtonResultClick(Sender: TObject);
begin
   Value2 :=  StrToCurr(EditResult.Text);

   case vMod of
    1: Vresult := Value1 + Value2;
    2: Vresult := Value1 - Value2;
    3: Vresult := Value1 * Value2;
    4: Vresult := Value1 / Value2;
   end;

   EditResult.Text := CurrToStr(Vresult);
end;

end.
