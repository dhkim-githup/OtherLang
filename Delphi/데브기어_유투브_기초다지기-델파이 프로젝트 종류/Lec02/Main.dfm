object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbName: TLabel
    Left = 64
    Top = 96
    Width = 22
    Height = 13
    Caption = #51060#47492
  end
  object LEmail: TLabel
    Left = 64
    Top = 132
    Width = 24
    Height = 13
    Caption = 'Email'
  end
  object lbAddress: TLabel
    Left = 64
    Top = 160
    Width = 39
    Height = 13
    Caption = 'Address'
  end
  object Edit1: TEdit
    Left = 40
    Top = 50
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
    OnMouseDown = Edit1MouseDown
  end
  object Button1: TButton
    Left = 200
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Click'
    TabOrder = 1
    OnClick = Button1Click
  end
  object edName: TEdit
    Left = 136
    Top = 93
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edEmail: TEdit
    Left = 136
    Top = 133
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edAddress: TEdit
    Left = 136
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Button2: TButton
    Left = 360
    Top = 127
    Width = 75
    Height = 25
    Caption = #51333#47308
    TabOrder = 5
    OnClick = Button2Click
  end
end
