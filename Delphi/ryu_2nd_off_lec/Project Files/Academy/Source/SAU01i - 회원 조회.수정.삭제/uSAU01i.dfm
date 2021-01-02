object fmSubModule: TfmSubModule
  Left = 219
  Top = 119
  BorderStyle = bsDialog
  Caption = 'SAU01i - '#54924#50896' '#51312#54924'/'#49688#51221'/'#49325#51228
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
  object Shape2: TShape
    Left = 16
    Top = 100
    Width = 89
    Height = 21
  end
  object Shape1: TShape
    Left = 16
    Top = 64
    Width = 89
    Height = 21
  end
  object Label1: TLabel
    Left = 20
    Top = 68
    Width = 35
    Height = 13
    Caption = 'EMail'
    FocusControl = DBEdit1
    Transparent = True
  end
  object Label4: TLabel
    Left = 20
    Top = 104
    Width = 77
    Height = 13
    Caption = #49324#50857#51088' '#51060#47492
    Transparent = True
  end
  object Shape3: TShape
    Left = 16
    Top = 136
    Width = 89
    Height = 21
  end
  object Label2: TLabel
    Left = 20
    Top = 140
    Width = 42
    Height = 13
    Caption = #50672#46973#52376
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
    object DBNavigator: TDBNavigator
      Left = 8
      Top = 8
      Width = 240
      Height = 25
      DataSource = dmExpress.dsSTMember
      TabOrder = 0
    end
    object Button1: TButton
      Left = 300
      Top = 8
      Width = 75
      Height = 25
      Caption = #44160#49353
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 168
    Width = 792
    Height = 386
    Align = alBottom
    DataSource = dmExpress.dsSTMember
    ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #44404#47548#52404
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'EMail'
        Width = 233
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UserName'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Mobile'
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 108
    Top = 64
    Width = 201
    Height = 21
    DataField = 'EMail'
    DataSource = dmExpress.dsSTMember
    ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 108
    Top = 100
    Width = 120
    Height = 21
    DataField = 'UserName'
    DataSource = dmExpress.dsSTMember
    ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 108
    Top = 136
    Width = 212
    Height = 21
    DataField = 'Mobile'
    DataSource = dmExpress.dsSTMember
    ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
    TabOrder = 4
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 554
    Width = 792
    Height = 19
    Panels = <>
  end
end
