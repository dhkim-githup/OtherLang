object fmMain: TfmMain
  Left = 250
  Top = 106
  Width = 696
  Height = 480
  Caption = #51228#47785#50630#51020
  Color = clBtnFace
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Fixedsys'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poDefaultPosOnly
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object moText: TMemo
    Left = 0
    Top = 0
    Width = 688
    Height = 434
    Align = alClient
    ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
    TabOrder = 0
  end
  object MainMenu: TMainMenu
    Left = 16
    Top = 24
    object N1: TMenuItem
      Caption = #54028#51068
      object miNewFile: TMenuItem
        Caption = #49352#47196#47564#46308#44592
        ShortCut = 16462
        OnClick = miNewFileClick
      end
      object miOpenFile: TMenuItem
        Caption = #50676#44592
        ShortCut = 16463
        OnClick = miOpenFileClick
      end
      object miSaveFile: TMenuItem
        Caption = #51200#51109
        ShortCut = 16467
        OnClick = miSaveFileClick
      end
      object miSaveTo: TMenuItem
        Caption = #45796#47480' '#51060#47492#51004#47196' '#51200#51109
        OnClick = miSaveToClick
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object miClose: TMenuItem
        Caption = #45149#45236#44592
        ShortCut = 16472
        OnClick = miCloseClick
      end
    end
  end
  object OpenDialog: TOpenDialog
    Filter = #53581#49828#53944' '#54028#51068'|*txt|'#47784#46304' '#54028#51068'|*.*'
    Left = 60
    Top = 24
  end
  object SaveDialog: TSaveDialog
    Filter = #53581#49828#53944' '#54028#51068'|*txt|'#47784#46304' '#54028#51068'|*.*'
    Left = 96
    Top = 24
  end
end
