object fmSubModule: TfmSubModule
  Left = 210
  Top = 110
  BorderStyle = bsDialog
  Caption = 'SAX00x - Sample'
  ClientHeight = 573
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548#52404
  Font.Style = []
  OldCreateOrder = False
  Position = poDefaultPosOnly
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Shape2: TShape
    Left = 12
    Top = 88
    Width = 89
    Height = 21
  end
  object Shape1: TShape
    Left = 12
    Top = 56
    Width = 89
    Height = 21
  end
  object Label1: TLabel
    Left = 16
    Top = 60
    Width = 28
    Height = 13
    Caption = #51228#47785
    Transparent = True
  end
  object Label2: TLabel
    Left = 16
    Top = 92
    Width = 28
    Height = 13
    Caption = #45236#50857
    Transparent = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 41
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 0
    object Button1: TButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = #51204#49569
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 554
    Width = 792
    Height = 19
    Panels = <>
  end
  object edSubject: TEdit
    Left = 104
    Top = 56
    Width = 673
    Height = 21
    ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
    TabOrder = 2
  end
  object moMsg: TMemo
    Left = 104
    Top = 88
    Width = 673
    Height = 425
    ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
    TabOrder = 3
  end
  object ProgressBar: TProgressBar
    Left = 104
    Top = 516
    Width = 673
    Height = 16
    TabOrder = 4
  end
end
