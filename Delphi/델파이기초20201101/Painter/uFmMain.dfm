object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #44536#47548#54032
  ClientHeight = 554
  ClientWidth = 767
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 32
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Line'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 32
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Rectangle'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 32
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Circle'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 32
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 3
  end
  object Panel1: TPanel
    Left = 152
    Top = 56
    Width = 553
    Height = 345
    BevelInner = bvRaised
    BevelKind = bkSoft
    BevelOuter = bvSpace
    Color = clWhite
    ParentBackground = False
    TabOrder = 4
    object pb: TPaintBox
      Left = 2
      Top = 2
      Width = 545
      Height = 337
      Align = alClient
      Color = clWhite
      ParentColor = False
      ExplicitLeft = -2
      ExplicitTop = -2
    end
  end
end
