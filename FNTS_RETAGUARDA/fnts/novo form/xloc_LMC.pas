unit xloc_LMC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, TFlatPanelUnit, Grids, Wwdbigrd, Wwdbgrid,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfrmxloc_LMC = class(TForm)
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
    GRID: TwwDBGrid;
    qrCombustivel: TZQuery;
    queryCODIGO: TIntegerField;
    queryTANQUE: TIntegerField;
    queryBOMBA: TIntegerField;
    queryBICO: TIntegerField;
    queryABERTURA: TIntegerField;
    queryENCERRANTE: TIntegerField;
    queryCOMBUSTIVEL: TIntegerField;
    queryDATA: TDateTimeField;
    queryPRECO: TFloatField;
    queryQUANTIDADE: TFloatField;
    queryTOTAL: TFloatField;
    querySITUACAO: TIntegerField;
    queryNR_NOTA: TIntegerField;
    queryNOTAFISCAL1: TWideStringField;
    queryNOTAFISCAL2: TWideStringField;
    queryNOTAFISCAL3: TWideStringField;
    queryNOTAFISCAL4: TWideStringField;
    queryQUANTNF1: TIntegerField;
    queryQUANTNF2: TIntegerField;
    queryQUANTNF3: TIntegerField;
    queryQUANTNF4: TIntegerField;
    queryBICO1: TIntegerField;
    queryBICO2: TIntegerField;
    queryBICO3: TIntegerField;
    queryBICO4: TIntegerField;
    queryBICO5: TIntegerField;
    queryBICO6: TIntegerField;
    queryBICO7: TIntegerField;
    queryBICO8: TIntegerField;
    queryABER_BICO1: TIntegerField;
    queryABER_BICO2: TIntegerField;
    queryABER_BICO3: TIntegerField;
    queryABER_BICO4: TIntegerField;
    queryABER_BICO5: TIntegerField;
    queryABER_BICO6: TIntegerField;
    queryABER_BICO7: TIntegerField;
    queryABER_BICO8: TIntegerField;
    queryENC_BICO1: TIntegerField;
    queryENC_BICO2: TIntegerField;
    queryENC_BICO3: TIntegerField;
    queryENC_BICO4: TIntegerField;
    queryENC_BICO5: TIntegerField;
    queryENC_BICO6: TIntegerField;
    queryENC_BICO7: TIntegerField;
    queryENC_BICO8: TIntegerField;
    queryAFER_BICO1: TIntegerField;
    queryAFER_BICO2: TIntegerField;
    queryAFER_BICO3: TIntegerField;
    queryAFER_BICO4: TIntegerField;
    queryAFER_BICO5: TIntegerField;
    queryAFER_BICO6: TIntegerField;
    queryAFER_BICO7: TIntegerField;
    queryAFER_BICO8: TIntegerField;
    queryQTEVEND_1: TIntegerField;
    queryQTEVEND_2: TIntegerField;
    queryQTEVEND_3: TIntegerField;
    queryQTEVEND_4: TIntegerField;
    queryQTEVEND_5: TIntegerField;
    queryQTEVEND_6: TIntegerField;
    queryQTEVEND_7: TIntegerField;
    queryQTEVEND_8: TIntegerField;
    queryTOTALVEND_1: TFloatField;
    queryTOTALVEND_2: TFloatField;
    queryTOTALVEND_3: TFloatField;
    queryTOTALVEND_4: TFloatField;
    queryTOTALVEND_5: TFloatField;
    queryTOTALVEND_6: TFloatField;
    queryTOTALVEND_7: TFloatField;
    queryTOTALVEND_8: TFloatField;
    queryESTOQ_ABERTURA: TIntegerField;
    queryESTOQ_ESCRITURAL: TIntegerField;
    queryESTOQ_FECHAMENTO: TIntegerField;
    queryPERDA_SOBRA: TIntegerField;
    queryOBSERVACAO: TWideStringField;
    queryPAGINA: TIntegerField;
    qrCombustivelNOME: TWideStringField;
    qrCombustivelPR_COMPRA: TFloatField;
    qrCombustivelPR_CUSTO: TFloatField;
    qrCombustivelPR_VENDA: TFloatField;
    qrCombustivelCODIGO: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure locEnter(Sender: TObject);
    procedure locExit(Sender: TObject);
    procedure locKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure locChange(Sender: TObject);
    procedure GRIDDblClick(Sender: TObject);
    procedure GRIDKeyPress(Sender: TObject; var Key: Char);
    procedure GRIDEnter(Sender: TObject);
    procedure GRIDExit(Sender: TObject);
    procedure Localizarpor1Click(Sender: TObject);
    procedure Referncia1Click(Sender: TObject);
    procedure ParmetrosdaPesquisa1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxloc_LMC: Tfrmxloc_LMC;
  voltar : boolean;

implementation

uses modulo;

{$R *.dfm}

procedure Tfrmxloc_LMC.FormShow(Sender: TObject);
begin
  xprod_escolh := '';
  xprod_escolh2 := '';

  voltar := false;
  query.Close;
  query.SQL.clear;
  query.SQL.Add('select * from LMC where codigo Is NOT NULL ORDER BY DATA');
  query.open;

end;

procedure Tfrmxloc_LMC.locEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  voltar := false;

end;

procedure Tfrmxloc_LMC.locExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;

end;

procedure Tfrmxloc_LMC.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
  begin
    grid.setfocus;
  end;

end;

procedure Tfrmxloc_LMC.locKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := IntToStr(query.fieldbyname('codigo').asinteger);
      resultado_pesquisa2 := DateToStr(query.fieldbyname('data').AsDateTime);
      close;
    end;
  end;

end;

procedure Tfrmxloc_LMC.locChange(Sender: TObject);
var ref, tipo : string;
begin
if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
  case combo_localizar.ItemIndex  OF
  0:TIPO := 'DATA';
  1:TIPO := 'NOME';
  end;

  try
    query.close;
    query.sql.clear;
    if loc.text = '' then
      query.sql.Add('select * from LMC where DATA IS NOT NULL ORDER BY DATA')
    else
//      query.sql.Add('select * from cadcombustivel where upper('+tipo+') like '''+ref+loc.Text+'%'' order by '+tipo);
      if TIPO = 'DATA' then
      begin
        query.sql.Add('select * from LMC where data = :data');
        query.params.parambyname('data').AsDate := StrToDate(Trim(loc.Text));
      end
      else
       query.sql.Add('select * from LMC where upper('+tipo+') like '''+ref+loc.Text+'%'' order by '+tipo);

    query.open;
  except
  end;

end;

procedure Tfrmxloc_LMC.GRIDDblClick(Sender: TObject);
begin
      resultado_pesquisa1 := IntToStr(query.fieldbyname('codigo').asinteger);
      resultado_pesquisa2 := DateToStr(query.fieldbyname('data').asdatetime);
      close;

end;

procedure Tfrmxloc_LMC.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := IntToStr(query.fieldbyname('codigo').asinteger);
      resultado_pesquisa2 := DateToStr(query.fieldbyname('data').asdatetime);
      close;
    end;
  end;

end;

procedure Tfrmxloc_LMC.GRIDEnter(Sender: TObject);
begin
  voltar := true;
  lvoltar.Caption := 'VOLTAR';

end;

procedure Tfrmxloc_LMC.GRIDExit(Sender: TObject);
begin
  lvoltar.Caption := 'FECHAR';
  VOLTAR := FALSE;

end;

procedure Tfrmxloc_LMC.Localizarpor1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_localizar.Items.Count - 1;
  if combo_localizar.ItemIndex = x then
     combo_localizar.ItemIndex := 0
  else
     combo_localizar.ItemIndex := combo_localizar.ItemIndex + 1

end;

procedure Tfrmxloc_LMC.Referncia1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.ItemIndex = x then
     combo_referencia.ItemIndex := 0
  else
     combo_referencia.ItemIndex := combo_referencia.ItemIndex + 1


end;

procedure Tfrmxloc_LMC.ParmetrosdaPesquisa1Click(Sender: TObject);
begin
  LOC.SETFOCUS;

end;

end.
