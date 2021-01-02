object fmFindDlg: TfmFindDlg
  Left = 245
  Top = 201
  BorderStyle = bsDialog
  Caption = #44160#49353
  ClientHeight = 114
  ClientWidth = 321
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548#52404
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Shape2: TShape
    Left = 12
    Top = 12
    Width = 89
    Height = 21
  end
  object Label4: TLabel
    Left = 16
    Top = 16
    Width = 42
    Height = 13
    Caption = #53412#50892#46300
    Transparent = True
  end
  object edKeyword: TEdit
    Left = 104
    Top = 12
    Width = 121
    Height = 21
    ImeName = 'Microsoft Korean IME 2002'
    TabOrder = 0
    OnKeyPress = edKeywordKeyPress
  end
  object Find: TButton
    Left = 232
    Top = 12
    Width = 75
    Height = 25
    Caption = 'Find'
    TabOrder = 1
    OnClick = FindClick
  end
  object Button1: TButton
    Left = 232
    Top = 44
    Width = 75
    Height = 25
    Caption = 'Find Near'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 232
    Top = 76
    Width = 75
    Height = 25
    Caption = 'Locate'
    TabOrder = 3
    OnClick = Button2Click
  end
end
