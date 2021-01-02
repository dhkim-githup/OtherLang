object dmMain: TdmMain
  OldCreateOrder = False
  Left = 521
  Top = 314
  Height = 442
  Width = 507
  object Database: TDatabase
    Connected = True
    DatabaseName = 'dbAcademy'
    DriverName = 'MySQL ODBC 3.51 Driver'
    LoginPrompt = False
    Params.Strings = (
      'DATABASE NAME=academy'
      'USER NAME=root'
      'ODBC DSN=mysql-local'
      'OPEN MODE=READ/WRITE'
      'BATCH COUNT=200'
      'LANGDRIVER='
      'MAX ROWS=-1'
      'SCHEMA CACHE DIR='
      'SCHEMA CACHE SIZE=8'
      'SCHEMA CACHE TIME=-1'
      'SQLPASSTHRU MODE=SHARED AUTOCOMMIT'
      'SQLQRYMODE='
      'ENABLE SCHEMA CACHE=FALSE'
      'ENABLE BCD=FALSE'
      'ROWSET SIZE=20'
      'BLOBS TO CACHE=64'
      'BLOB SIZE=32'
      'PASSWORD=')
    SessionName = 'Default'
    Left = 28
    Top = 20
  end
  object dsSTApplies: TDataSource
    DataSet = tbSTApplies
    Left = 208
    Top = 24
  end
  object usSTApplies: TUpdateSQL
    ModifySQL.Strings = (
      'update STApplies'
      'set'
      '  ClassNo = :ClassNo,'
      '  UserName = :UserName,'
      '  Mobile = :Mobile,'
      '  EMail = :EMail,'
      '  StatusCode = :StatusCode'
      'where'
      '  SN = :OLD_SN')
    InsertSQL.Strings = (
      'insert into STApplies'
      '  (ClassNo, UserName, Mobile, EMail, StatusCode)'
      'values'
      '  (:ClassNo, :UserName, :Mobile, :EMail, :StatusCode)')
    DeleteSQL.Strings = (
      'delete from STApplies'
      'where'
      '  SN = :OLD_SN')
    Left = 276
    Top = 24
  end
  object qrSTCode01: TQuery
    Active = True
    DatabaseName = 'dbAcademy'
    SQL.Strings = (
      'Select * from STCode01')
    Left = 144
    Top = 92
  end
  object dsSTCode01: TDataSource
    DataSet = qrSTCode01
    Left = 212
    Top = 92
  end
  object qrSTClasses: TQuery
    Active = True
    DatabaseName = 'dbAcademy'
    SQL.Strings = (
      'Select A.*, B.Caption from STClasses A, STCode02 B'
      '  where B.SN = A.StatusCode')
    UniDirectional = True
    Left = 148
    Top = 168
  end
  object dsSTClasses: TDataSource
    DataSet = qrSTClasses
    Left = 220
    Top = 168
  end
  object tbSTApplies: TTable
    Active = True
    DatabaseName = 'dbAcademy'
    IndexFieldNames = 'ClassNo'
    MasterFields = 'SN'
    MasterSource = dsSTClasses
    TableName = 'stapplies'
    UpdateObject = usSTApplies
    Left = 144
    Top = 24
    object tbSTAppliesSN: TIntegerField
      FieldName = 'SN'
    end
    object tbSTAppliesClassNo: TIntegerField
      FieldName = 'ClassNo'
    end
    object tbSTAppliesUserName: TStringField
      FieldName = 'UserName'
      Size = 32
    end
    object tbSTAppliesMobile: TStringField
      FieldName = 'Mobile'
      Size = 16
    end
    object tbSTAppliesEMail: TStringField
      FieldName = 'EMail'
      Size = 64
    end
    object tbSTAppliesStatusCode: TIntegerField
      FieldName = 'StatusCode'
    end
    object tbSTAppliesStatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Status'
      LookupDataSet = qrSTCode01
      LookupKeyFields = 'SN'
      LookupResultField = 'Caption'
      KeyFields = 'StatusCode'
      Lookup = True
    end
  end
end
