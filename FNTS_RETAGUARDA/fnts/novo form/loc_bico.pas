unit loc_bico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Wwkeycb, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, AdvObj, BaseGrid,
  AdvGrid, DBAdvGrid;

type
  Tfrmloc_bico = class(TForm)
    dsbico: TDataSource;
    qrBicos: TZQuery;
    qrCombustivel: TZQuery;
    DBAdvGrid1: TDBAdvGrid;
    qrCombustivelNOME: TWideStringField;
    qrCombustivelPR_COMPRA: TFloatField;
    qrCombustivelPR_CUSTO: TFloatField;
    qrCombustivelPR_VENDA: TFloatField;
    qrCombustivelCODIGO: TIntegerField;
    qrBicosCODIGO: TIntegerField;
    qrBicosCOD_PRODUTO: TIntegerField;
    qrBicosPRECO: TFloatField;
    qrBicosCOD_BOMBA: TIntegerField;
    qrBicosENCERRANTE: TIntegerField;
    qrBicosTANQUE: TIntegerField;
    procedure DBGRID1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloc_bico: Tfrmloc_bico;

implementation

uses modulo;

{$R *.dfm}

procedure Tfrmloc_bico.DBGRID1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) or (key = #27) then close;

end;

procedure Tfrmloc_bico.FormShow(Sender: TObject);
begin
  qrBicos.Open;
end;

procedure Tfrmloc_bico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qrBicos.Close;
end;

end.
