unit dmlExpress;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, DBClient, SimpleDS;

type
  TdmExpress = class(TDataModule)
    SQLConnection: TSQLConnection;
    qrSTApplies: TSimpleDataSet;
    dsSTApplies: TDataSource;
    qrSTMember: TSimpleDataSet;
    dsSTMember: TDataSource;
    qrSTClasses: TSimpleDataSet;
    dsSTClasses: TDataSource;
    qrSTCode02: TSimpleDataSet;
    dsSTCode02: TDataSource;
    procedure qrSTMemberAfterPost(DataSet: TDataSet);
    procedure qrSTClassesAfterPost(DataSet: TDataSet);
    procedure qrSTAppliesAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmExpress: TdmExpress;

implementation

{$R *.dfm}

procedure TdmExpress.qrSTMemberAfterPost(DataSet: TDataSet);
begin
  qrSTMember.ApplyUpdates(-1);
end;

procedure TdmExpress.qrSTClassesAfterPost(DataSet: TDataSet);
begin
  qrSTClasses.ApplyUpdates(-1);
end;

procedure TdmExpress.qrSTAppliesAfterPost(DataSet: TDataSet);
begin
  qrSTApplies.ApplyUpdates(-1);
end;

end.
