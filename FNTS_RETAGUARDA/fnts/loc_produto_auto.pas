unit loc_produto_auto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, TFlatPanelUnit, Grids, Wwdbigrd, Wwdbgrid,
  Collection, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, DBCtrls,
  wwdblook, Menus, Buttons, AdvGlowButton;

type
  Tfrmloc_produto_auto = class(TForm)
    FlatPanel1: TFlatPanel;
    Label1: TLabel;
    eproduto: TEdit;
    Label2: TLabel;
    ecodigo: TEdit;
    ereferencia: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    eaplicacao: TEdit;
    Label5: TLabel;
    ecomplemento: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBGRID1: TwwDBGrid;
    dsproduto: TDataSource;
    qrproduto: TZQuery;
    qrprodutomarca: TStringField;
    qrprodutofornecedor: TStringField;
    qrprodutogrupo: TStringField;
    qrprodutosubgrupo: TStringField;
    FlatPanel2: TFlatPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    efornecedor: TwwDBLookupCombo;
    emarca: TwwDBLookupCombo;
    PopupMenu1: TPopupMenu;
    Sair1: TMenuItem;
    Label9: TLabel;
    combo_referencia: TComboBox;
    N1: TMenuItem;
    ipodaPesquisa1: TMenuItem;
    Bevel1: TBevel;
    Bevel2: TBevel;
    bfechar: TAdvGlowButton;
    lestoque: TLabel;
    qrestoque: TZQuery;
    Bevel3: TBevel;
    combo_situacao: TComboBox;
    Label11: TLabel;
    qrprodutoCODIGO: TWideStringField;
    qrprodutoCODBARRA: TWideStringField;
    qrprodutoPRODUTO: TWideStringField;
    qrprodutoUNIDADE: TWideStringField;
    qrprodutoDATA_CADASTRO: TDateTimeField;
    qrprodutoCODGRUPO: TWideStringField;
    qrprodutoCODSUBGRUPO: TWideStringField;
    qrprodutoCODFORNECEDOR: TWideStringField;
    qrprodutoCODMARCA: TWideStringField;
    qrprodutoDATA_ULTIMACOMPRA: TDateTimeField;
    qrprodutoNOTAFISCAL: TWideStringField;
    qrprodutoPRECOCUSTO: TFloatField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoDATA_ULTIMAVENDA: TDateTimeField;
    qrprodutoESTOQUE: TFloatField;
    qrprodutoESTOQUEMINIMO: TFloatField;
    qrprodutoCODALIQUOTA: TWideStringField;
    qrprodutoAPLICACAO: TWideMemoField;
    qrprodutoLOCALICAZAO: TWideStringField;
    qrprodutoPESO: TFloatField;
    qrprodutoVALIDADE: TWideStringField;
    qrprodutoCOMISSAO: TFloatField;
    qrprodutoUSA_BALANCA: TIntegerField;
    qrprodutoUSA_SERIAL: TIntegerField;
    qrprodutoUSA_GRADE: TIntegerField;
    qrprodutoCODRECEITA: TWideStringField;
    qrprodutoFOTO: TWideStringField;
    qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField;
    qrprodutoNOTAFISCAL_ANTERIOR: TWideStringField;
    qrprodutoCODFORNECEDOR_ANTERIOR: TWideStringField;
    qrprodutoPRECOCUSTO_ANTERIOR: TFloatField;
    qrprodutoPRECOVENDA_ANTERIOR: TFloatField;
    qrprodutoCUSTOMEDIO: TFloatField;
    qrprodutoAUTO_APLICACAO: TWideStringField;
    qrprodutoAUTO_COMPLEMENTO: TWideStringField;
    qrprodutoDATA_REMARCACAO_CUSTO: TDateTimeField;
    qrprodutoDATA_REMARCACAO_VENDA: TDateTimeField;
    qrprodutoPRECO_PROMOCAO: TFloatField;
    qrprodutoDATA_PROMOCAO: TDateTimeField;
    qrprodutoFIM_PROMOCAO: TDateTimeField;
    qrprodutoCST: TWideStringField;
    qrprodutoCLASSIFICACAO_FISCAL: TWideStringField;
    qrprodutoNBM: TWideStringField;
    qrprodutoNCM: TWideStringField;
    qrprodutoALIQUOTA: TFloatField;
    qrprodutoIPI: TFloatField;
    qrprodutoREDUCAO: TFloatField;
    qrprodutoQTDE_EMBALAGEM: TFloatField;
    qrprodutoTIPO: TWideStringField;
    qrprodutoPESO_LIQUIDO: TFloatField;
    qrprodutoFARMACIA_CONTROLADO: TWideStringField;
    qrprodutoFARMACIA_APRESENTACAO: TIntegerField;
    qrprodutoFARMACIA_REGISTRO_MEDICAMENTO: TWideStringField;
    qrprodutoFARMACIA_PMC: TFloatField;
    qrprodutoULTIMA_ALTERACAO: TDateTimeField;
    qrprodutoULTIMA_CARGA: TDateTimeField;
    qrprodutoDATA_INVENTARIO: TDateTimeField;
    qrprodutoCUSTO_INVENTARIO: TFloatField;
    qrprodutoESTOQUE_INVENTARIO: TFloatField;
    qrprodutoESTOQUE_ANTERIOR: TFloatField;
    qrprodutoPRECOVENDA_NOVO: TFloatField;
    qrprodutoUSA_RENTABILIDADE: TIntegerField;
    qrprodutoQUANTIDADE_MINIMA_FAB: TFloatField;
    qrprodutoAPRESENTACAO: TWideStringField;
    qrprodutoSITUACAO: TIntegerField;
    qrprodutoPRECOVENDA1: TFloatField;
    qrprodutoPRECOVENDA2: TFloatField;
    qrprodutoPRECOVENDA3: TFloatField;
    qrprodutoPRECOVENDA4: TFloatField;
    qrprodutoPRECOVENDA5: TFloatField;
    qrprodutoDESCONTO_PRECOVENDA: TFloatField;
    qrprodutoDATA_INVENTARIO_ATUAL: TDateTimeField;
    qrprodutoCUSTO_INVENTARIO_ATUAL: TFloatField;
    qrprodutoESTOQUE_INVENTARIO_ATUAL: TFloatField;
    qrprodutoMARGEM_MINIMA: TFloatField;
    qrprodutoPISCOFINS: TWideStringField;
    qrprodutoREFERENCIA_FORNECEDOR: TWideStringField;
    qrprodutoCOMISSAO1: TFloatField;
    qrprodutoMARGEM_DESCONTO: TFloatField;
    qrprodutoTAMANHO: TWideStringField;
    qrprodutoCOR: TWideStringField;
    qrprodutoINCIDENCIA_PISCOFINS: TWideStringField;
    qrprodutoVEIC_CHASSI: TWideStringField;
    qrprodutoVEIC_SERIE: TWideStringField;
    qrprodutoVEIC_POTENCIA: TWideStringField;
    qrprodutoVEIC_PESO_LIQUIDO: TWideStringField;
    qrprodutoVEIC_PESO_BRUTO: TWideStringField;
    qrprodutoVEIC_TIPO_COMBUSTIVEL: TWideStringField;
    qrprodutoVEIC_RENAVAM: TWideStringField;
    qrprodutoVEIC_ANO_FABRICACAO: TIntegerField;
    qrprodutoVEIC_ANO_MODELO: TIntegerField;
    qrprodutoVEIC_TIPO: TWideStringField;
    qrprodutoVEIC_TIPO_PINTURA: TWideStringField;
    qrprodutoVEIC_COD_COR: TWideStringField;
    qrprodutoVEIC_COR: TWideStringField;
    qrprodutoVEIC_VIN: TWideStringField;
    qrprodutoVEIC_NUMERO_MOTOR: TWideStringField;
    qrprodutoVEIC_CMKG: TWideStringField;
    qrprodutoVEIC_CM3: TWideStringField;
    qrprodutoVEIC_DISTANCIA_EIXO: TWideStringField;
    qrprodutoVEIC_COD_MARCA: TWideStringField;
    qrprodutoVEIC_ESPECIE: TWideStringField;
    qrprodutoVEIC_CONDICAO: TWideStringField;
    qrprodutoLOTE_FABRICACAO: TWideStringField;
    qrprodutoLOTE_VALIDADE: TDateTimeField;
    qrprodutoMARGEM_AGREGADA: TFloatField;
    qrprodutoCODBARRA_NOVARTIS: TWideStringField;
    qrprodutoFARMACIA_DCB: TWideStringField;
    qrprodutoFARMACIA_ABCFARMA: TWideStringField;
    qrprodutoFARMACIA_APRESENTACAO_CAIXA: TWideStringField;
    qrprodutoFARMACIA_PRINCIPIOATIVO: TWideStringField;
    qrprodutoULTIMA_COMPRA: TDateTimeField;
    qrprodutoFARMACIA_DATAVIGENCIA: TDateTimeField;
    qrprodutoFARMACIA_TIPO: TWideStringField;
    qrprodutoUSA_COMBUSTIVEL: TWideStringField;
    qrprodutoREFERENCIA: TWideStringField;
    qrprodutoPERDA: TFloatField;
    qrprodutoCOMPOSICAO1: TWideStringField;
    qrprodutoCOMPOSICAO2: TWideStringField;
    qrprodutoIAT: TWideStringField;
    qrprodutoIPPT: TWideStringField;
    qrprodutoSITUACAO_TRIBUTARIA: TWideStringField;
    qrprodutoFLAG_SIS: TWideStringField;
    qrprodutoFLAG_ACEITO: TWideStringField;
    qrprodutoFLAG_EST: TWideStringField;
    qrprodutoCSOSN: TWideStringField;
    qrprodutoCODORIGINAL: TWideStringField;
    qrprodutoCUSTO_ATACADO: TFloatField;
    qrprodutoUNIDADE_ATACADO: TWideStringField;
    qrprodutoQTDE_EMBALAGEMATACADO: TFloatField;
    qrprodutoPMARGEM1: TFloatField;
    qrprodutoPMARGEM2: TFloatField;
    qrprodutoPMARGEM3: TFloatField;
    qrprodutoPMARGEM4: TFloatField;
    qrprodutoPMARGEM5: TFloatField;
    qrprodutoPMARGEMATACADO1: TFloatField;
    qrprodutoPMARGEMATACADO2: TFloatField;
    qrprodutoPMARGEMATACADO3: TFloatField;
    qrprodutoPMARGEMATACADO4: TFloatField;
    qrprodutoPMARGEMATACADO5: TFloatField;
    qrprodutoPMARGEMATACADO6: TFloatField;
    qrprodutoPRECOATACADO1: TFloatField;
    qrprodutoPRECOATACADO2: TFloatField;
    qrprodutoPRECOATACADO3: TFloatField;
    qrprodutoPRECOATACADO4: TFloatField;
    qrprodutoPRECOATACADO5: TFloatField;
    qrprodutoIND_CFOP: TWideStringField;
    qrprodutoCFOP_DESC: TWideStringField;
    qrprodutoUSA_LOTE: TIntegerField;
    qrprodutoIND_CFOP_VENDA_DENTRO: TWideStringField;
    qrprodutoCODCONTA: TWideStringField;
    qrprodutoIND_CFOP_VENDA_FORA: TWideStringField;
    qrprodutoIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField;
    qrprodutoIND_CFOP_DEVOLUCAO_FORA: TWideStringField;
    qrprodutoIND_CFOP_GARANTIA_DENTRO: TWideStringField;
    qrprodutoIND_CFOP_GARANTIA_FORA: TWideStringField;
    qrprodutoUSA_TB_PC: TWideStringField;
    procedure eprodutoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure eprodutoEnter(Sender: TObject);
    procedure eprodutoExit(Sender: TObject);
    procedure eprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure efornecedorExit(Sender: TObject);
    procedure emarcaExit(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure efornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure emarcaKeyPress(Sender: TObject; var Key: Char);
    procedure DBGRID1DblClick(Sender: TObject);
    procedure eprodutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bfecharClick(Sender: TObject);
    procedure ipodaPesquisa1Click(Sender: TObject);
    procedure DBGRID1RowChanged(Sender: TObject);
    procedure DBGRID1KeyPress(Sender: TObject; var Key: Char);
    procedure ecomplementoKeyPress(Sender: TObject; var Key: Char);
    procedure combo_situacaoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloc_produto_auto: Tfrmloc_produto_auto;
  situacao: string;

implementation

uses modulo, produto_auto;

{$R *.dfm}

procedure Tfrmloc_produto_auto.eprodutoChange(Sender: TObject);
var produto, codigo, aplicacao, referencia, marca, fornecedor, complemento, ref: string;
begin

  if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';

  try
    qrproduto.close;
    qrproduto.sql.clear;
    if eproduto.Text <> '' then produto := ' upper(produto) like ''' + ref + eproduto.text + '%''' else produto := ' produto <> ''''';
    if ecodigo.text <> '' then codigo := ' and codigo like ''%' + ecodigo.text + '%''' else codigo := '';
    if ereferencia.text <> '' then referencia := ' and upper(codbarra) like ''%' + ereferencia.text + '%''' else referencia := '';
    if eaplicacao.text <> '' then aplicacao := ' and upper(auto_aplicacao) like ''%' + eaplicacao.text + '%''' else aplicacao := '';
    if ecomplemento.text <> '' then complemento := ' and upper(auto_complemento) like ''%' + ecomplemento.text + '%''' else complemento := '';
    if efornecedor.Text <> '' then fornecedor := ' and codfornecedor = ''' + frmmodulo.qrfornecedor.fieldbyname('codigo').asstring + '''' else fornecedor := '';
    if emarca.Text <> '' then marca := ' and codmarca = ''' + frmmodulo.qrmarca.fieldbyname('codigo').asstring + '''' else marca := '';
    qrproduto.SQL.Add('select * from c000025 where ' + produto + situacao + codigo + referencia + aplicacao + complemento + fornecedor + marca + ' order by produto');
    qrproduto.open;

    if qrproduto.recno > 0 then
    begin
      qrestoque.close;
      qrestoque.sql.clear;
      qrestoque.sql.add('select * from c000100 where codproduto = ''' + qrproduto.fieldbyname('codigo').asstring + '''');
      qrestoque.open;
      lestoque.caption := formatfloat('###,###,##0.000', qrestoque.fieldbyname('estoque_atual').asfloat);
    end;

  except
  end;
end;

procedure Tfrmloc_produto_auto.FormShow(Sender: TObject);
begin
  if combo_situacao.itemindex = 0 then situacao := ' and situacao <> 1';
  if combo_situacao.itemindex = 1 then situacao := ' and situacao = 1';
  if combo_situacao.itemindex = 2 then situacao := '';

  qrproduto.close;

  frmmodulo.qrfornecedor.close;
  frmmodulo.qrfornecedor.sql.clear;
  frmmodulo.qrfornecedor.sql.add('select * from c000009 order by nome');
  frmmodulo.qrfornecedor.open;
  frmmodulo.qrfornecedor.IndexFieldNames := 'nome';

  frmmodulo.qrmarca.close;
  frmmodulo.qrmarca.sql.clear;
  frmmodulo.qrmarca.sql.add('select * from c000019 order by nome');
  frmmodulo.qrmarca.open;
  frmmodulo.qrmarca.IndexFieldNames := 'nome';

end;

procedure Tfrmloc_produto_auto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    cod_produto := qrproduto.fieldbyname('codigo').asstring;
  except
    cod_produto := '';
  end;


  action := cafree;
end;

procedure Tfrmloc_produto_auto.eprodutoEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure Tfrmloc_produto_auto.eprodutoExit(Sender: TObject);
begin
  tedit(sender).color := clwhite;
end;

procedure Tfrmloc_produto_auto.eprodutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmloc_produto_auto.efornecedorExit(Sender: TObject);
var produto, codigo, aplicacao, referencia, marca, fornecedor, complemento, ref: string;
begin
  if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
  tedit(sender).color := clbtnface;
  try
    qrproduto.close;
    qrproduto.sql.clear;
    if eproduto.Text <> '' then produto := ' upper(produto) like ''' + ref + eproduto.text + '%''' else produto := ' produto <> ''''';
    if ecodigo.text <> '' then codigo := ' and codigo like ''%' + ecodigo.text + '%''' else codigo := '';
    if ereferencia.text <> '' then referencia := ' and upper(codbarra) like ''%' + ereferencia.text + '%''' else referencia := '';
    if eaplicacao.text <> '' then aplicacao := ' and upper(auto_aplicacao) like ''%' + eaplicacao.text + '%''' else aplicacao := '';
    if ecomplemento.text <> '' then complemento := ' and upper(auto_complemento) like ''%' + ecomplemento.text + '%''' else complemento := '';
    if efornecedor.Text <> '' then fornecedor := ' and codfornecedor = ''' + frmmodulo.qrfornecedor.fieldbyname('codigo').asstring + '''' else fornecedor := '';
    if emarca.Text <> '' then marca := ' and codmarca = ''' + frmmodulo.qrmarca.fieldbyname('codigo').asstring + '''' else marca := '';
    qrproduto.SQL.Add('select * from c000025 where ' + produto + situacao + codigo + referencia + aplicacao + complemento + fornecedor + marca + ' order by produto');
    qrproduto.open;
  except
  end;



end;

procedure Tfrmloc_produto_auto.emarcaExit(Sender: TObject);
var produto, codigo, aplicacao, referencia, marca, fornecedor, complemento, ref: string;
begin

  tedit(sender).color := clbtnface;
  if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
  try
    qrproduto.close;
    qrproduto.sql.clear;
    if eproduto.Text <> '' then produto := ' upper(produto) like ''' + ref + eproduto.text + '%''' else produto := ' produto <> ''''';
    if ecodigo.text <> '' then codigo := ' and codigo like ''%' + ecodigo.text + '%''' else codigo := '';
    if ereferencia.text <> '' then referencia := ' and upper(codbarra) like ''%' + ereferencia.text + '%''' else referencia := '';
    if eaplicacao.text <> '' then aplicacao := ' and upper(auto_aplicacao) like ''%' + eaplicacao.text + '%''' else aplicacao := '';
    if ecomplemento.text <> '' then complemento := ' and upper(auto_complemento) like ''%' + ecomplemento.text + '%''' else complemento := '';
    if efornecedor.Text <> '' then fornecedor := ' and codfornecedor = ''' + frmmodulo.qrfornecedor.fieldbyname('codigo').asstring + '''' else fornecedor := '';
    if emarca.Text <> '' then marca := ' and codmarca = ''' + frmmodulo.qrmarca.fieldbyname('codigo').asstring + '''' else marca := '';
    qrproduto.SQL.Add('select * from c000025 where ' + produto + codigo + situacao + referencia + aplicacao + complemento + fornecedor + marca + ' order by produto');
    qrproduto.open;
  except
  end;
end;

procedure Tfrmloc_produto_auto.Sair1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmloc_produto_auto.efornecedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmloc_produto_auto.emarcaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmloc_produto_auto.DBGRID1DblClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmloc_produto_auto.eprodutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_down then dbgrid1.setfocus;
end;

procedure Tfrmloc_produto_auto.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmloc_produto_auto.ipodaPesquisa1Click(Sender: TObject);
var X: INTEGER;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.ItemIndex = x then
    combo_referencia.ItemIndex := 0
  else
    combo_referencia.ItemIndex := combo_referencia.ItemIndex + 1

end;

procedure Tfrmloc_produto_auto.DBGRID1RowChanged(Sender: TObject);
begin
  qrestoque.close;
  qrestoque.sql.clear;
  qrestoque.sql.add('select * from c000100 where codproduto = ''' + qrproduto.fieldbyname('codigo').asstring + '''');
  qrestoque.open;
  lestoque.caption := formatfloat('###,###,##0.000', qrestoque.fieldbyname('estoque_atual').asfloat);
end;

procedure Tfrmloc_produto_auto.DBGRID1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    produto_loc := qrproduto.fieldbyname('codigo').asstring;
    resultado_pesquisa1 := qrproduto.fieldbyname('codigo').asstring;
    close;
  end;
end;

procedure Tfrmloc_produto_auto.ecomplementoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then dbgrid1.setfocus;
end;

procedure Tfrmloc_produto_auto.combo_situacaoChange(Sender: TObject);
begin
  if combo_situacao.itemindex = 0 then situacao := ' and situacao <> 1';
  if combo_situacao.itemindex = 1 then situacao := ' and situacao = 1';
  if combo_situacao.itemindex = 2 then situacao := ''
end;

end.
