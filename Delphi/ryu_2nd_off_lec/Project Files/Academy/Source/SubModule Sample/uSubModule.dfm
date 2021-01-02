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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 41
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 0
    object DBNavigator: TDBNavigator
      Left = 8
      Top = 8
      Width = 240
      Height = 25
      DataSource = dmExpress.dsSTApplies
      TabOrder = 0
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 554
    Width = 792
    Height = 19
    Panels = <>
  end
end
