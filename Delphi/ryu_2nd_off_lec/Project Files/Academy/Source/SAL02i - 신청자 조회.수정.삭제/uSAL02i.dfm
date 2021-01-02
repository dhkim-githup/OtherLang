object fmSubModule: TfmSubModule
  Left = 217
  Top = 127
  BorderStyle = bsDialog
  Caption = 'SAL02i - '#49888#52397#51088' '#51312#54924'/'#49688#51221'/'#49325#51228
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 184
    Width = 14
    Height = 13
    Caption = 'SN'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 108
    Top = 184
    Width = 49
    Height = 13
    Caption = 'ClassNo'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 236
    Width = 56
    Height = 13
    Caption = 'UserName'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 284
    Width = 42
    Height = 13
    Caption = 'Mobile'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 8
    Top = 332
    Width = 35
    Height = 13
    Caption = 'EMail'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 240
    Top = 332
    Width = 70
    Height = 13
    Caption = 'StatusCode'
    FocusControl = DBEdit6
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 380
    Width = 792
    Height = 174
    Align = alBottom
    DataSource = dmMain.dsSTApplies
    ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #44404#47548#52404
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'UserName'
        Width = 144
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Mobile'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMail'
        Width = 181
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Status'
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 200
    Width = 85
    Height = 21
    Color = clSilver
    DataField = 'SN'
    DataSource = dmMain.dsSTApplies
    ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 108
    Top = 200
    Width = 85
    Height = 21
    DataField = 'ClassNo'
    DataSource = dmMain.dsSTApplies
    ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 252
    Width = 105
    Height = 21
    DataField = 'UserName'
    DataSource = dmMain.dsSTApplies
    ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 300
    Width = 212
    Height = 21
    DataField = 'Mobile'
    DataSource = dmMain.dsSTApplies
    ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 8
    Top = 348
    Width = 213
    Height = 21
    DataField = 'EMail'
    DataSource = dmMain.dsSTApplies
    ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
    TabOrder = 5
  end
  object DBEdit6: TDBEdit
    Left = 240
    Top = 348
    Width = 37
    Height = 21
    DataField = 'StatusCode'
    DataSource = dmMain.dsSTApplies
    ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
    TabOrder = 6
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 41
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 7
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 8
      Width = 240
      Height = 25
      DataSource = dmMain.dsSTApplies
      TabOrder = 0
    end
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 284
    Top = 348
    Width = 89
    Height = 21
    DataField = 'StatusCode'
    DataSource = dmMain.dsSTApplies
    ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
    KeyField = 'SN'
    ListField = 'Caption'
    ListSource = dmMain.dsSTCode01
    TabOrder = 8
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 41
    Width = 792
    Height = 120
    Align = alTop
    DataSource = dmMain.dsSTClasses
    ImeName = #54620#44397#50612'('#54620#44544') (MS-IME98)'
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #44404#47548#52404
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TDate'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Title'
        Width = 260
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Capacity'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Caption'
        Visible = True
      end>
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 554
    Width = 792
    Height = 19
    Panels = <>
  end
end
