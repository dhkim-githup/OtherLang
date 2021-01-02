program Project1;

// 외부/내부 사용 클래스들 , C include 개념, java import
uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  Unit1 in 'Unit1.pas';

// 컴파일 명령어 , 컴파일에 리소스를 사용한다.
{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
