unit uRM;

interface

uses
  SysUtils, Classes, RpBase, RpSystem, RpDefine, RpRave, RpCon, RpConDS, FMTBcd,
  DBClient, Provider, DB, SqlExpr;

type
  TRM = class(TDataModule)
    RvProj: TRvProject;
    RvSystem1: TRvSystem;
    RvDsVendas: TRvDataSetConnection;
    sdsVendas: TSQLDataSet;
    dspVendas: TDataSetProvider;
    CdsVendas: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RM: TRM;

implementation

uses uDM;

{$R *.dfm}

end.
