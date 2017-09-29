unit DataModule;

interface

uses
  SysUtils, Classes, DB, IBDatabase, IBCustomDataSet, IBTable, IBUpdateSQL;

type
  TDMBanco = class(TDataModule)
    IBTClie: TIBTable;
    IBDB: TIBDatabase;
    IBT: TIBTransaction;
    DSClie: TDataSource;
    IBUClie: TIBUpdateSQL;
    IBTClieCODIGO: TIntegerField;
    IBTClieNOME: TIBStringField;
    IBTClieENDERECO: TIBStringField;
    IBTClieTELEFONE: TIBStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure IBTClieAfterPost(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMBanco: TDMBanco;

implementation

{$R *.dfm}

procedure TDMBanco.DataModuleCreate(Sender: TObject);
begin
  IBDB.Connected:=False;
end;

procedure TDMBanco.IBTClieAfterPost(DataSet: TDataSet);
begin
  IBTClie.Refresh;
end;

procedure TDMBanco.DataModuleDestroy(Sender: TObject);
begin
  IBDB.Connected:=False;
end;

end.
