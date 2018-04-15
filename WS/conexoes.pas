unit conexoes;

interface

uses
  System.SysUtils, System.Classes, UniProvider, OracleUniProvider, DBAccess,
  Uni, Data.DB, MemDS, InterBaseUniProvider;

type
  Tdm = class(TDataModule)
    conn: TUniConnection;
    qryVendas: TUniQuery;
    qryVendaGeral: TUniQuery;
    trans: TUniTransaction;
    provider: TOracleUniProvider;
    conLocal: TUniConnection;
    qryConfBanco: TUniQuery;
    transLocal: TUniTransaction;
    providerInterbase: TInterBaseUniProvider;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
