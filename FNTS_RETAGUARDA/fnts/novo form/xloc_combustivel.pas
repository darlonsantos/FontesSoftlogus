unit xloc_combustivel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, TFlatPanelUnit, Grids, Wwdbigrd, Wwdbgrid,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfrmxloc_combustivel = class(TForm)
    GRID: TwwDBGrid;
    FlatPanel1: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Bevel2: TBevel;
    Label7: TLabel;
    lvoltar: TLabel;
    combo_localizar: TComboBox;
    combo_referencia: TComboBox;
    loc: TEdit;
    ds: TDataSource;
    query: TZQuery;
    PopupMenu1: TPopupMenu;
    Localizarpor1: TMenuItem;
    Referncia1: TMenuItem;
    ParmetrosdaPesquisa1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    queryNOME: TWideStringField;
    queryPR_COMPRA: TFloatField;
    queryPR_CUSTO: TFloatField;
    queryPR_VENDA: TFloatField;
    queryCODIGO: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Fechar1Click(Sender: TObject);
    procedure locKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GRIDKeyPress(Sender: TObject; var Key: Char);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure locEnter(Sender: TObject);
    procedure locExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GRIDEnter(Sender: TObject);
    procedure GRIDExit(Sender: TObject);
    procedure locChange(Sender: TObject);
    procedure GRIDDblClick(Sender: TObject);
    procedure ParmetrosdaPesquisa1Click(Sender: TObject);
    procedure Referncia1Click(Sender: TObject);
    procedure Localizarpor1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxloc_combustivel: Tfrmxloc_combustivel;
  voltar : boolean;

implementation

uses modulo, Tanque, Bombas, Bicos;

{$R *.dfm}

procedure Tfrmxloc_combustivel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;

end;

procedure Tfrmxloc_combustivel.Fechar1Click(Sender: TObject);
begin
  if voltar then loc.setfocus else
  begin
    resultado_pesquisa1 := '';
    resultado_pesquisa2 := '';
    close;
  end;
end;

procedure Tfrmxloc_combustivel.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
  begin
    grid.setfocus;
  end;

end;

procedure Tfrmxloc_combustivel.GRIDKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('nome').asstring;
      close;
    end;
  end;

end;

procedure Tfrmxloc_combustivel.locKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('nome').asstring;
      close;
    end;
  end;

end;

procedure Tfrmxloc_combustivel.locEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  voltar := false;

end;

procedure Tfrmxloc_combustivel.locExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;

end;

procedure Tfrmxloc_combustivel.FormShow(Sender: TObject);
begin
  xprod_escolh := '';
  xprod_escolh2 := '';

  voltar := false;
  query.Close;
  query.SQL.clear;
  query.SQL.Add('select * from cadcombustivel where codigo Is NOT NULL ORDER BY NOME');
  query.open;

end;

procedure Tfrmxloc_combustivel.GRIDEnter(Sender: TObject);
begin
  voltar := true;
  lvoltar.Caption := 'VOLTAR';

end;

procedure Tfrmxloc_combustivel.GRIDExit(Sender: TObject);
begin
  lvoltar.Caption := 'FECHAR';
  VOLTAR := FALSE;
end;

procedure Tfrmxloc_combustivel.locChange(Sender: TObject);
var ref, tipo : string;
begin
if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
  case combo_localizar.ItemIndex  OF
  0:TIPO := 'NOME';
  1:TIPO := 'CODIGO';
  end;

  try
    query.close;
    query.sql.clear;
    if loc.text = '' then
      query.sql.Add('select * from cadcombustivel where codigo IS NOT NULL ORDER BY NOME')
    else
      query.sql.Add('select * from cadcombustivel where upper('+tipo+') like '''+ref+loc.Text+'%'' order by '+tipo);
    query.open;
  except
  end;
end;

procedure Tfrmxloc_combustivel.GRIDDblClick(Sender: TObject);
begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('nome').asstring;
      xprod_escolh := query.fieldbyname('codigo').asstring;
      xprod_escolh2 := query.fieldbyname('nome').asstring;
{
      frmtanque.lbcombust.Caption := resultado_pesquisa2;
      frmBombas.lbcombust.Caption := resultado_pesquisa2;
      frmBicos.lbcombust.Caption := resultado_pesquisa2;
}
      close;
end;

procedure Tfrmxloc_combustivel.ParmetrosdaPesquisa1Click(Sender: TObject);
begin
  LOC.SETFOCUS;

end;

procedure Tfrmxloc_combustivel.Referncia1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.ItemIndex = x then
     combo_referencia.ItemIndex := 0
  else
     combo_referencia.ItemIndex := combo_referencia.ItemIndex + 1

end;

procedure Tfrmxloc_combustivel.Localizarpor1Click(Sender: TObject);
VAR X : INTEGER;
begin
   X := combo_localizar.Items.Count - 1;
  if combo_localizar.ItemIndex = x then
     combo_localizar.ItemIndex := 0
  else
     combo_localizar.ItemIndex := combo_localizar.ItemIndex + 1

end;

end.
