object fmSubModule: TfmSubModule
  Left = 226
  Top = 105
  BorderStyle = bsDialog
  Caption = 'SAL01i - '#44053#51340' '#51312#54924'/'#49373#49457'/'#49688#51221'/'#49325#51228
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
      DataSource = dmExpress.dsSTClasses
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 434
    Width = 792
    Height = 120
    Align = alBottom
    DataSource = dmExpress.dsSTClasses
    ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #44404#47548#52404
    TitleFont.Style = []
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 792
    Height = 393
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = #44592#48376#51221#48372
      object Shape5: TShape
        Left = 16
        Top = 144
        Width = 89
        Height = 21
      end
      object Shape4: TShape
        Left = 16
        Top = 112
        Width = 89
        Height = 21
      end
      object Shape3: TShape
        Left = 16
        Top = 16
        Width = 89
        Height = 21
      end
      object Shape2: TShape
        Left = 16
        Top = 80
        Width = 89
        Height = 21
      end
      object Shape1: TShape
        Left = 16
        Top = 48
        Width = 89
        Height = 21
      end
      object Label6: TLabel
        Left = 20
        Top = 52
        Width = 28
        Height = 13
        Caption = #54924#52264
        FocusControl = DBEdit1
        Transparent = True
      end
      object Label1: TLabel
        Left = 20
        Top = 84
        Width = 28
        Height = 13
        Caption = #45216#51676
        FocusControl = DBEdit1
        Transparent = True
      end
      object Label2: TLabel
        Left = 20
        Top = 20
        Width = 28
        Height = 13
        Caption = #51228#47785
        FocusControl = DBEdit1
        Transparent = True
      end
      object Label3: TLabel
        Left = 20
        Top = 116
        Width = 28
        Height = 13
        Caption = #45216#51676
        FocusControl = DBEdit1
        Transparent = True
      end
      object Label7: TLabel
        Left = 20
        Top = 148
        Width = 28
        Height = 13
        Caption = #49345#53468
        FocusControl = DBEdit1
        Transparent = True
      end
      object DBEdit1: TDBEdit
        Left = 108
        Top = 48
        Width = 81
        Height = 21
        DataField = 'SN'
        DataSource = dmExpress.dsSTClasses
        ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 108
        Top = 80
        Width = 81
        Height = 21
        DataField = 'TDate'
        DataSource = dmExpress.dsSTClasses
        ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 108
        Top = 16
        Width = 465
        Height = 21
        DataField = 'Title'
        DataSource = dmExpress.dsSTClasses
        ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 108
        Top = 112
        Width = 81
        Height = 21
        DataField = 'Capacity'
        DataSource = dmExpress.dsSTClasses
        ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 108
        Top = 144
        Width = 29
        Height = 21
        DataField = 'StatusCode'
        DataSource = dmExpress.dsSTClasses
        ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
        TabOrder = 4
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 140
        Top = 144
        Width = 113
        Height = 21
        DataField = 'StatusCode'
        DataSource = dmExpress.dsSTClasses
        ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
        KeyField = 'SN'
        ListField = 'Caption'
        ListSource = dmExpress.dsSTCode02
        TabOrder = 5
      end
    end
    object TabSheet2: TTabSheet
      Caption = #47700#47784
      ImageIndex = 1
      object DBMemo1: TDBMemo
        Left = 2
        Top = 4
        Width = 777
        Height = 357
        DataField = 'Memo'
        DataSource = dmExpress.dsSTClasses
        ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
        TabOrder = 0
      end
    end
  end
end
