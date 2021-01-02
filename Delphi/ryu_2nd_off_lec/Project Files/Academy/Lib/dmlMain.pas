unit dmlMain;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TdmMain = class(TDataModule)
    Database: TDatabase;
    dsSTApplies: TDataSource;
    usSTApplies: TUpdateSQL;
    qrSTCode01: TQuery;
    dsSTCode01: TDataSource;
    qrSTClasses: TQuery;
    dsSTClasses: TDataSource;
    tbSTApplies: TTable;
    tbSTAppliesSN: TIntegerField;
    tbSTAppliesClassNo: TIntegerField;
    tbSTAppliesUserName: TStringField;
    tbSTAppliesMobile: TStringField;
    tbSTAppliesEMail: TStringField;
    tbSTAppliesStatusCode: TIntegerField;
    tbSTAppliesStatus: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMain: TdmMain;

implementation

{$R *.dfm}

end.
