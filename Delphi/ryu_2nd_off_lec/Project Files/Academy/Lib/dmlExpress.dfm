object dmExpress: TdmExpress
  OldCreateOrder = False
  Left = 114
  Top = 269
  Height = 446
  Width = 772
  object SQLConnection: TSQLConnection
    ConnectionName = 'MySQLConnection'
    DriverName = 'MySQL'
    GetDriverFunc = 'getSQLDriverMYSQL'
    LibraryName = 'dbexpmysql.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MySQL'
      'HostName=localhost'
      'Database=academy'
      'User_Name=root'
      'Password='
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000')
    VendorLib = 'libmysql.dll'
    Connected = True
    Left = 40
    Top = 20
  end
  object qrSTApplies: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection
    DataSet.CommandText = 
      'select A.*, B.Caption from stapplies A, stcode01 B'#13#10'  where B.SN' +
      ' = A.StatusCode'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    PacketRecords = 50
    Params = <>
    AfterPost = qrSTAppliesAfterPost
    AfterDelete = qrSTAppliesAfterPost
    BeforeRefresh = qrSTAppliesAfterPost
    Left = 140
    Top = 160
  end
  object dsSTApplies: TDataSource
    DataSet = qrSTApplies
    Left = 228
    Top = 156
  end
  object qrSTMember: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection
    DataSet.CommandText = 'select * from stmember'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    PacketRecords = 50
    Params = <>
    AfterPost = qrSTMemberAfterPost
    AfterDelete = qrSTMemberAfterPost
    BeforeRefresh = qrSTMemberAfterPost
    Left = 144
    Top = 20
  end
  object dsSTMember: TDataSource
    DataSet = qrSTMember
    Left = 220
    Top = 20
  end
  object qrSTClasses: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection
    DataSet.CommandText = 'select * from stclasses'#13#10'  order by SN'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    PacketRecords = 50
    Params = <>
    AfterPost = qrSTClassesAfterPost
    AfterDelete = qrSTClassesAfterPost
    BeforeRefresh = qrSTClassesAfterPost
    Left = 140
    Top = 88
  end
  object dsSTClasses: TDataSource
    DataSet = qrSTClasses
    Left = 224
    Top = 88
  end
  object qrSTCode02: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection
    DataSet.CommandText = 'select * from stcode02'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    PacketRecords = 50
    Params = <>
    Left = 348
    Top = 88
  end
  object dsSTCode02: TDataSource
    DataSet = qrSTCode02
    Left = 440
    Top = 88
  end
end
