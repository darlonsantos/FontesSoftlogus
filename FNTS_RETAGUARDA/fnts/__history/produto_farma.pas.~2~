unit produto_farma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, maskutils, RXDBCtrl, PageView, Wwdbigrd,
  Wwdbgrid, TFlatHintUnit, wwdblook,
  Wwdbdlg, wwdbedit, Wwdotdot, ExtDlgs, Wwdbcomb, RzEdit, RzDBEdit,
  RzDBBnEd, AdvGlowButton, AdvToolBar, ZAbstractRODataset, AdvShapeButton,
  RzBtnEdt, AdvMenus, AdvMenuStylers, ComCtrls, RzButton, RzRadChk, RzDBChk,
  RxToolEdit, RxCurrEdit, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs,
  VCLTee.Chart, UCBase;

type
  Tfrmproduto_farma = class(TForm)
    pfichas: TFlatPanel;
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dsproduto2: TDataSource;
    Relatrios1: TMenuItem;
    Regies1: TMenuItem;
    dsproduto: TDataSource;
    dspreco: TDataSource;
    F31: TMenuItem;
    ClculodePreo1: TMenuItem;
    dsserial_produto: TDataSource;
    dscomposicao_produto: TDataSource;
    qrproduto_loc: TZQuery;
    StringField1: TStringField;
    StringField3: TStringField;
    qrinfnutricional_produto: TDataSource;
    OpenPictureDialog1: TOpenPictureDialog;
    query: TZQuery;
    qradic: TZQuery;
    dsadic: TDataSource;
    qrcodbarra: TZQuery;
    dscodbarra: TDataSource;
    qrbarra: TZQuery;
    bservicos: TBitBtn;
    Servicos1: TMenuItem;
    qrentrada: TZQuery;
    qrsaida: TZQuery;
    Label1: TLabel;
    Label3: TLabel;
    Label58: TLabel;
    DBEdit1: TDBEdit;
    combo_tipo: TwwDBComboBox;
    combocodbarra: TComboBox;
    Label5: TLabel;
    edata_cadastro: TDBDateEdit;
    Label2: TLabel;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    DBEdit7: TDBEdit;
    Label6: TLabel;
    esubgrupo: TRzDBButtonEdit;
    DBEdit8: TDBEdit;
    efornecedor: TRzDBButtonEdit;
    DBEdit9: TDBEdit;
    Label68: TLabel;
    emarca: TRzDBButtonEdit;
    DBEdit63: TDBEdit;
    Label69: TLabel;
    label7: TLabel;
    Bevel4: TBevel;
    Label10: TLabel;
    PageView1: TPageView;
    PageSheet7: TPageSheet;
    ppreco: TPanel;
    GroupBox3: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Bevel1: TBevel;
    Label21: TLabel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    GroupBox4: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Bevel2: TBevel;
    Label28: TLabel;
    Label41: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    FlatPanel9: TFlatPanel;
    Label39: TLabel;
    FlatPanel10: TFlatPanel;
    Label40: TLabel;
    ptampapreco: TFlatPanel;
    Label38: TLabel;
    PageSheet8: TPageSheet;
    PFOTO: TPanel;
    Label48: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Image2: TImage;
    PageSheet9: TPageSheet;
    PageView2: TPageView;
    PageSheet10: TPageSheet;
    PageSheet11: TPageSheet;
    PageSheet12: TPageSheet;
    FlatPanel1: TFlatPanel;
    FlatPanel2: TFlatPanel;
    FlatPanel11: TFlatPanel;
    FlatPanel13: TFlatPanel;
    Image1: TImage;
    Image3: TImage;
    Image4: TImage;
    Image6: TImage;
    Bevel6: TBevel;
    Panel1: TPanel;
    blocaliquota: TBitBtn;
    ealiquota: TDBEdit;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bitbtn5: TAdvGlowButton;
    LMDButton1: TAdvGlowMenuButton;
    blocalizar: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    bitbtn10: TAdvGlowButton;
    DBEdit16: TDBEdit;
    GroupBox1: TGroupBox;
    di_entrada: TDateEdit;
    df_entrada: TDateEdit;
    Label4: TLabel;
    Bevel8: TBevel;
    GroupBox13: TGroupBox;
    eentrada: TLabel;
    bfiltro_entrada: TAdvGlowButton;
    qrmov_entrada: TZQuery;
    dsmov_entrada: TDataSource;
    qrmov_entradacliente: TStringField;
    qrproduto_mov: TZQuery;
    wwDBGrid5: TwwDBGrid;
    GroupBox14: TGroupBox;
    Label9: TLabel;
    di_saida: TDateEdit;
    df_saida: TDateEdit;
    bfiltro_saida: TAdvGlowButton;
    Bevel9: TBevel;
    GroupBox15: TGroupBox;
    esaida: TLabel;
    qrmov_saida: TZQuery;
    StringField14: TStringField;
    dsmov_saida: TDataSource;
    combo_saida: TComboBox;
    combo_entrada: TComboBox;
    bitbtn7: TAdvGlowButton;
    wwDBGrid4: TwwDBGrid;
    FlatPanel14: TFlatPanel;
    RINICIAL: TRxCalcEdit;
    FlatPanel15: TFlatPanel;
    rentrada: TRxCalcEdit;
    FlatPanel16: TFlatPanel;
    rsaida: TRxCalcEdit;
    FlatPanel18: TFlatPanel;
    restoque: TRxCalcEdit;
    qrestoque: TZQuery;
    Bevel10: TBevel;
    dsrentabilidade: TDataSource;
    PageSheet1: TPageSheet;
    QRRENTABILIDADE: TZQuery;
    popmenu1: TAdvPopupMenu;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    Inventrio1: TMenuItem;
    N2: TMenuItem;
    BaixanoEstoque1: TMenuItem;
    Servios1: TMenuItem;
    N3: TMenuItem;
    GrupoSubgrupo1: TMenuItem;
    Fornecedor1: TMenuItem;
    MarcaFabricanteLaboratrio1: TMenuItem;
    NaturezadeOperaoCFOP1: TMenuItem;
    N4: TMenuItem;
    Exportarparaarquivo1: TMenuItem;
    ImportardeArquivo1: TMenuItem;
    N5: TMenuItem;
    otalizarestoque1: TMenuItem;
    N6: TMenuItem;
    AtualizaodePreos1: TMenuItem;
    qrproduto: TZQuery;
    qrprodutogrupo: TStringField;
    qrprodutosubgrupo: TStringField;
    qrprodutofornecedor: TStringField;
    qrprodutomarca: TStringField;
    qrprodutoreceitas: TStringField;
    Bevel7: TBevel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit4: TDBEdit;
    Label14: TLabel;
    DBEdit6: TDBEdit;
    Bevel5: TBevel;
    dbmemo1: TDBRichEdit;
    GroupBox7: TGroupBox;
    Label71: TLabel;
    Label72: TLabel;
    ecusto: TRzDBNumericEdit;
    evenda: TRzDBNumericEdit;
    AdvGlowButton1: TAdvGlowButton;
    GroupBox2: TGroupBox;
    Label30: TLabel;
    Label73: TLabel;
    ealiq: TRxDBCalcEdit;
    dbedit13: TRzDBButtonEdit;
    GroupBox8: TGroupBox;
    Label74: TLabel;
    Label75: TLabel;
    ldata_compra: TLabel;
    lnf: TLabel;
    GroupBox9: TGroupBox;
    ldata_venda: TLabel;
    gestoque: TGroupBox;
    Label11: TLabel;
    eest: TRzDBNumericEdit;
    Bevel3: TBevel;
    Label18: TLabel;
    Label35: TLabel;
    Label29: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    DBEdit18: TDBEdit;
    DBEdit62: TDBEdit;
    combo_classificacao: TwwDBComboBox;
    combo_generico: TwwDBComboBox;
    DBEdit10: TDBEdit;
    wwDBComboBox1: TwwDBComboBox;
    DBEdit15: TDBEdit;
    DBEdit17: TDBEdit;
    Label13: TLabel;
    qrpreco: TZQuery;
    RzDBCheckBox1: TRzDBCheckBox;
    qrduplo: TZQuery;
    Atuli1: TMenuItem;
    MovimentarEstoque1: TMenuItem;
    pexporta: TFlatPanel;
    qrvenda_mes: TZQuery;
    qrvenda_mesCOLUMN_0: TFloatField;
    qrvenda_mesColumn: TFloatField;
    qrvenda_mesColumn_1: TFloatField;
    qrvenda_mesColumn_2: TFloatField;
    qrvenda_mesColumn_3: TFloatField;
    qrvenda_mesColumn_4: TFloatField;
    qrvenda_mesColumn_5: TFloatField;
    qrvenda_mesColumn_6: TFloatField;
    qrvenda_mesColumn_7: TFloatField;
    qrvenda_mesColumn_8: TFloatField;
    qrvenda_mesColumn_9: TFloatField;
    qrvenda_mesColumn_10: TFloatField;
    PageSheet2: TPageSheet;
    graf_venda: TChart;
    Series1: TBarSeries;
    Chart1: TChart;
    BarSeries1: TBarSeries;
    DBEdit12: TDBEdit;
    Label17: TLabel;
    bfornecedor_codigo: TAdvGlowButton;
    ControledeValidades1: TMenuItem;
    DBDateEdit1: TDBDateEdit;
    DBEdit14: TDBEdit;
    Label34: TLabel;
    pggrade1: TPageSheet;
    Panel3: TPanel;
    wwDBGrid2: TwwDBGrid;
    DBCheckBox1: TDBCheckBox;
    dsgrade_produto: TDataSource;
    RzDBButtonEdit1: TRzDBButtonEdit;
    Label36: TLabel;
    qrprecoCODIGO: TWideStringField;
    qrprecoCODPRODUTO: TWideStringField;
    qrprecoCODFILIAL: TWideStringField;
    qrprecoDATA_ALTERACAO: TDateTimeField;
    qrprecoCP_VPRECOCOMPRA: TFloatField;
    qrprecoCP_PIPI: TFloatField;
    qrprecoCP_VIPI: TFloatField;
    qrprecoCP_PRETENCAO: TFloatField;
    qrprecoCP_VRETENCAO: TFloatField;
    qrprecoCP_PFRETE: TFloatField;
    qrprecoCP_VFRETE: TFloatField;
    qrprecoCP_PICMS: TFloatField;
    qrprecoCP_VICMS: TFloatField;
    qrprecoCP_PREDUCAO: TFloatField;
    qrprecoCP_VREDUCAO: TFloatField;
    qrprecoCP_PPIS: TFloatField;
    qrprecoCP_VPIS: TFloatField;
    qrprecoCP_PCOFINS: TFloatField;
    qrprecoCP_VCOFINS: TFloatField;
    qrprecoCP_PSEGURO: TFloatField;
    qrprecoCP_VSEGURO: TFloatField;
    qrprecoCP_POUTROS: TFloatField;
    qrprecoCP_VOUTROS: TFloatField;
    qrprecoVD_PICMS: TFloatField;
    qrprecoVD_VICMS: TFloatField;
    qrprecoVD_PREDUCAO: TFloatField;
    qrprecoVD_VREDUCAO: TFloatField;
    qrprecoVD_PSIMPLES: TFloatField;
    qrprecoVD_VSIMPLES: TFloatField;
    qrprecoVD_PPIS: TFloatField;
    qrprecoVD_VPIS: TFloatField;
    qrprecoVD_PCOFINS: TFloatField;
    qrprecoVD_VCOFINS: TFloatField;
    qrprecoVD_PIRPJ: TFloatField;
    qrprecoVD_VIRPJ: TFloatField;
    qrprecoVD_PCONTSOCIAL: TFloatField;
    qrprecoVD_VCONTSOCIAL: TFloatField;
    qrprecoVD_PDFIXA: TFloatField;
    qrprecoVD_VDFIXA: TFloatField;
    qrprecoVD_PCOMISSAO: TFloatField;
    qrprecoVD_VCOMISSAO: TFloatField;
    qrprecoVD_PDESCMAX: TFloatField;
    qrprecoVD_VDESCMAX: TFloatField;
    qrprecoPCUSTO_COMPRA: TFloatField;
    qrprecoVCUSTO_COMPRA: TFloatField;
    qrprecoPCUSTO_VENDA: TFloatField;
    qrprecoVCUSTO_VENDA: TFloatField;
    qrprecoPRECO_LIQUIDO: TFloatField;
    qrprecoPRECO_UNITARIO: TFloatField;
    qrprecoFRACAO: TFloatField;
    qrprecoPMARGEM1: TFloatField;
    qrprecoPMARGEM2: TFloatField;
    qrprecoPMARGEM3: TFloatField;
    qrprecoPMARGEM4: TFloatField;
    qrprecoPMARGEM5: TFloatField;
    qrprecoPRECOVAREJO1: TFloatField;
    qrprecoPRECOVAREJO2: TFloatField;
    qrprecoPRECOVAREJO3: TFloatField;
    qrprecoPRECOVAREJO4: TFloatField;
    qrprecoPRECOVAREJO5: TFloatField;
    qrprecoPMARGEMATACADO1: TFloatField;
    qrprecoPMARGEMATACADO2: TFloatField;
    qrprecoPMARGEMATACADO3: TFloatField;
    qrprecoPMARGEMATACADO4: TFloatField;
    qrprecoPMARGEMATACADO5: TFloatField;
    qrprecoPRECOATACADO1: TFloatField;
    qrprecoPRECOATACADO2: TFloatField;
    qrprecoPRECOATACADO3: TFloatField;
    qrprecoPRECOATACADO4: TFloatField;
    qrprecoPRECOATACADO5: TFloatField;
    qrprecoTIPO_REGIME: TIntegerField;
    qrprecoTIPO_CALCULO: TIntegerField;
    qrprecoVCUSTO_COMPRA_ANT: TFloatField;
    qrprecoPRECOVAREJO1_ANT: TFloatField;
    qrprecoCUSTO_COMPRA: TFloatField;
    qrprecoVALOR_ULTIMA_COMPRA: TFloatField;
    qrprecoFRETE_IPI_OUTRAS: TFloatField;
    qrprecoICMS_ENTRADA: TFloatField;
    qrprecoICMS_SAIDA: TFloatField;
    qrprecoCUSTO_OPERACIONAL: TFloatField;
    qrprecoOUTROS_IMPOSTOS: TFloatField;
    qrprecoCOMISSAO: TFloatField;
    qrprecoLUCRO: TFloatField;
    qrprecoPRECO_VENDA: TFloatField;
    qrprecoICMS_ENTRADA_P: TFloatField;
    qrprecoICMS_SAIDA_P: TFloatField;
    qrprecoCUSTO_OPERACIONAL_P: TFloatField;
    qrprecoOUTROS_IMPOSTOS_P: TFloatField;
    qrprecoCOMISSAO_P: TFloatField;
    qrprecoLUCRO_P: TFloatField;
    qrprecoTOTAL_CUSTO: TFloatField;
    qrprecoTOTAL_CUSTO_P: TFloatField;
    qrprecoPRECO_AUTOMATICO: TIntegerField;
    qrprecoALTERA_AUTOMATICO: TIntegerField;
    qrprecoNOVO_PRECO_VENDA: TFloatField;
    qrprecoNOVO_PRECO_CUSTO: TFloatField;
    qrprecoDESCONTO: TFloatField;
    qrprecoFRETE: TFloatField;
    qrprecoSEGURO: TFloatField;
    qrprecoOUTRAS_DESPESAS: TFloatField;
    qrprecoIPI_P: TFloatField;
    qrprecoIPI: TFloatField;
    qrprecoPIS_P: TFloatField;
    qrprecoPIS: TFloatField;
    qrprecoCOFINS_P: TFloatField;
    qrprecoCOFINS: TFloatField;
    qrprecoCONTRIBUICAO_SOCIAL_P: TFloatField;
    qrprecoCONTRIBUICAO_SOCIAL: TFloatField;
    qrprecoPIS_ENTRADA_P: TFloatField;
    qrprecoPIS_ENTRADA: TFloatField;
    qrprecoCOFINS_ENTRADA_P: TFloatField;
    qrprecoCOFINS_ENTRADA: TFloatField;
    qrprecoCONTRIBUICAO_SOCIAL_ENTRADA_P: TFloatField;
    qrprecoSUBSTITUICAO_TRIBUTARIA: TFloatField;
    QRRENTABILIDADERENTABILIDADE: TWideStringField;
    QRRENTABILIDADECODPRODUTO: TWideStringField;
    QRRENTABILIDADEPRODUTO: TWideStringField;
    QRRENTABILIDADERENDIMENTO: TFloatField;
    QRRENTABILIDADEQUANTIDADE: TFloatField;
    QRRENTABILIDADEVALOR: TFloatField;
    QRRENTABILIDADECODIGO: TWideStringField;
    UCControls1: TUCControls;
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
    qrmov_entradaCODIGO: TWideStringField;
    qrmov_entradaCODNOTA: TWideStringField;
    qrmov_entradaCODPRODUTO: TWideStringField;
    qrmov_entradaUNITARIO: TFloatField;
    qrmov_entradaTOTAL: TFloatField;
    qrmov_entradaICMS: TFloatField;
    qrmov_entradaIPI: TFloatField;
    qrmov_entradaCFOP: TWideStringField;
    qrmov_entradaDATA: TDateTimeField;
    qrmov_entradaNUMERONOTA: TWideStringField;
    qrmov_entradaCODCLIENTE: TWideStringField;
    qrmov_entradaDESCONTO: TFloatField;
    qrmov_entradaACRESCIMO: TFloatField;
    qrmov_entradaMOVIMENTO: TIntegerField;
    qrmov_entradaCODVENDEDOR: TWideStringField;
    qrmov_entradaCODGRADE: TWideStringField;
    qrmov_entradaSERIAL: TWideStringField;
    qrmov_entradaUNIDADE: TWideStringField;
    qrmov_entradaQTDE: TFloatField;
    qrmov_entradaVALOR_ICMS: TFloatField;
    qrmov_entradaICMS_REDUZIDO: TFloatField;
    qrmov_entradaBASE_CALCULO: TFloatField;
    qrmov_entradaVALOR_IPI: TFloatField;
    qrmov_entradaSITUACAO: TIntegerField;
    qrmov_entradaECF_SERIE: TWideStringField;
    qrmov_entradaECF_CAIXA: TWideStringField;
    qrmov_entradaCODALIQUOTA: TWideStringField;
    qrmov_entradaCUPOM_NUMERO: TWideStringField;
    qrmov_entradaCUPOM_MODELO: TWideStringField;
    qrmov_entradaCUPOM_ITEM: TWideStringField;
    qrmov_entradaALIQUOTA: TFloatField;
    qrmov_entradaCST: TWideStringField;
    qrmov_entradaLOTE_FABRICACAO: TWideStringField;
    qrmov_entradaMOVIMENTO_ESTOQUE: TFloatField;
    qrmov_entradaLANCADO: TIntegerField;
    qrmov_entradaVENCIMENTO: TDateTimeField;
    qrmov_entradaCODBARRA: TWideStringField;
    qrmov_entradaMARGEM_DESCONTO: TFloatField;
    qrmov_entradaCREDITO_ICMS: TFloatField;
    qrmov_entradaPIS: TFloatField;
    qrmov_entradaCOFINS: TFloatField;
    qrmov_entradaLOJA: TWideStringField;
    qrmov_entradaCODSUBGRUPO: TWideStringField;
    qrmov_entradaTIPO: TWideStringField;
    qrmov_entradaCODUSUARIO: TWideStringField;
    qrmov_entradaORIGEM: TWideStringField;
    qrmov_entradaDESTINO: TWideStringField;
    qrmov_entradaPRODUTO: TWideStringField;
    qrmov_entradaCODFILIAL: TWideStringField;
    qrmov_saidaCODIGO: TWideStringField;
    qrmov_saidaCODNOTA: TWideStringField;
    qrmov_saidaCODPRODUTO: TWideStringField;
    qrmov_saidaUNITARIO: TFloatField;
    qrmov_saidaTOTAL: TFloatField;
    qrmov_saidaICMS: TFloatField;
    qrmov_saidaIPI: TFloatField;
    qrmov_saidaCFOP: TWideStringField;
    qrmov_saidaDATA: TDateTimeField;
    qrmov_saidaNUMERONOTA: TWideStringField;
    qrmov_saidaCODCLIENTE: TWideStringField;
    qrmov_saidaDESCONTO: TFloatField;
    qrmov_saidaACRESCIMO: TFloatField;
    qrmov_saidaMOVIMENTO: TIntegerField;
    qrmov_saidaCODVENDEDOR: TWideStringField;
    qrmov_saidaCODGRADE: TWideStringField;
    qrmov_saidaSERIAL: TWideStringField;
    qrmov_saidaUNIDADE: TWideStringField;
    qrmov_saidaQTDE: TFloatField;
    qrmov_saidaVALOR_ICMS: TFloatField;
    qrmov_saidaICMS_REDUZIDO: TFloatField;
    qrmov_saidaBASE_CALCULO: TFloatField;
    qrmov_saidaVALOR_IPI: TFloatField;
    qrmov_saidaSITUACAO: TIntegerField;
    qrmov_saidaECF_SERIE: TWideStringField;
    qrmov_saidaECF_CAIXA: TWideStringField;
    qrmov_saidaCODALIQUOTA: TWideStringField;
    qrmov_saidaCUPOM_NUMERO: TWideStringField;
    qrmov_saidaCUPOM_MODELO: TWideStringField;
    qrmov_saidaCUPOM_ITEM: TWideStringField;
    qrmov_saidaALIQUOTA: TFloatField;
    qrmov_saidaCST: TWideStringField;
    qrmov_saidaLOTE_FABRICACAO: TWideStringField;
    qrmov_saidaMOVIMENTO_ESTOQUE: TFloatField;
    qrmov_saidaLANCADO: TIntegerField;
    qrmov_saidaVENCIMENTO: TDateTimeField;
    qrmov_saidaCODBARRA: TWideStringField;
    qrmov_saidaMARGEM_DESCONTO: TFloatField;
    qrmov_saidaCREDITO_ICMS: TFloatField;
    qrmov_saidaPIS: TFloatField;
    qrmov_saidaCOFINS: TFloatField;
    qrmov_saidaLOJA: TWideStringField;
    qrmov_saidaCODSUBGRUPO: TWideStringField;
    qrmov_saidaTIPO: TWideStringField;
    qrmov_saidaCODUSUARIO: TWideStringField;
    qrmov_saidaORIGEM: TWideStringField;
    qrmov_saidaDESTINO: TWideStringField;
    qrmov_saidaPRODUTO: TWideStringField;
    qrmov_saidaCODFILIAL: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure enomeEnter(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure enomeKeyPress(Sender: TObject; var Key: Char);
    procedure etipoExit(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure ealiquotaKeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit62KeyPress(Sender: TObject; var Key: Char);
    procedure DBCheckBox1KeyPress(Sender: TObject; var Key: Char);
    procedure esubgrupoEnter(Sender: TObject);
    procedure blocaliquotaClick(Sender: TObject);
    procedure ealiquotaExit(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure DBEdit37Exit(Sender: TObject);
    procedure Regies1Click(Sender: TObject);
    procedure DBEdit40Exit(Sender: TObject);
    procedure DBEdit42Exit(Sender: TObject);
    procedure DBEdit59KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure MarcaFabricanteLaboratrio1Click(Sender: TObject);
    procedure GrupoSubgrupo1Click(Sender: TObject);
    procedure Alquotas1Click(Sender: TObject);
    procedure NaturezadeOperaoCFOP1Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure Exportarparaarquivo1Click(Sender: TObject);
    procedure ImportardeArquivo1Click(Sender: TObject);
    procedure otalizarestoque1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure AtualizaodePreos1Click(Sender: TObject);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure ealiqExit(Sender: TObject);
    procedure ealiqKeyPress(Sender: TObject; var Key: Char);
    procedure combo_tipoEnter(Sender: TObject);
    procedure combo_tipoExit(Sender: TObject);
    procedure combo_tipoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure Inventrio1Click(Sender: TObject);
    procedure combocodbarraEnter(Sender: TObject);
    procedure combocodbarraExit(Sender: TObject);
    procedure combocodbarraKeyPress(Sender: TObject; var Key: Char);
    procedure qrcodbarraBeforePost(DataSet: TDataSet);
    procedure dsproduto2DataChange(Sender: TObject; Field: TField);
    procedure BaixanoEstoque1Click(Sender: TObject);
    procedure Servios1Click(Sender: TObject);
    procedure bservicosClick(Sender: TObject);
    procedure Servicos1Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure efornecedorButtonClick(Sender: TObject);
    procedure emarcaButtonClick(Sender: TObject);
    procedure esubgrupoButtonClick(Sender: TObject);
    procedure esubgrupoKeyPress(Sender: TObject; var Key: Char);
    procedure efornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure emarcaKeyPress(Sender: TObject; var Key: Char);
    procedure dbedit13ButtonClick(Sender: TObject);
    procedure bfiltro_entradaClick(Sender: TObject);
    procedure di_entradaKeyPress(Sender: TObject; var Key: Char);
    procedure df_entradaKeyPress(Sender: TObject; var Key: Char);
    procedure PageView2Change(Sender: TObject);
    procedure qrmov_entradaCalcFields(DataSet: TDataSet);
    procedure qrmov_saidaCalcFields(DataSet: TDataSet);
    procedure bfiltro_saidaClick(Sender: TObject);
    procedure df_saidaKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit38KeyPress(Sender: TObject; var Key: Char);
    procedure qrproduto_movBeforePost(DataSet: TDataSet);
    procedure qrprodutoAfterCancel(DataSet: TDataSet);
    procedure qrprodutoAfterEdit(DataSet: TDataSet);
    procedure qrprodutoAfterInsert(DataSet: TDataSet);
    procedure qrprodutoAfterPost(DataSet: TDataSet);
    procedure PageView1Change(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure bitbtn10Click(Sender: TObject);
    procedure qrprecoBeforeEdit(DataSet: TDataSet);
    procedure qrprecoBeforeInsert(DataSet: TDataSet);
    procedure Atuli1Click(Sender: TObject);
    procedure MovimentarEstoque1Click(Sender: TObject);
    procedure qrprodutoBeforePost(DataSet: TDataSet);
    procedure bfornecedor_codigoClick(Sender: TObject);
    procedure ControledeValidades1Click(Sender: TObject);
    procedure RzDBButtonEdit1ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit1Exit(Sender: TObject);
    procedure RzDBButtonEdit1KeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_farma: Tfrmproduto_farma;
  comando: string;
  estoque_anterior: real;
  preco_venda_anterior: double;
  cod_produto: string;

implementation

uses modulo, principal, loc_grupo,
  loc_fornecedor, loc_subgrupo, loc_marca, receita,
  loc_receita, webcam, fornecedor, marca, grupo, aliquota, cfop,
  produto_exportar, produto_importar, produto_total, lista_produto2,
  xloc_produto, produto_atualizapreco, xloc_cst, industrializacao,
  inventario, baixa_estoque, servico, loc_aliquota, loc_produto_auto,
  produto_farma_preco, produto_movimentar, fornecedor_codigo,
  produto_validade, xloc_cfop;

{$R *.dfm}

procedure Tfrmproduto_farma.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qrproduto.close;
  Action := cafree;

end;

procedure Tfrmproduto_farma.FormShow(Sender: TObject);
begin
  di_entrada.Text := '01/' + copy(datetostr(date), 4, 7);
  df_entrada.date := frmprincipal.UltimoDiaMes(date);

  di_saida.Text := '01/' + copy(datetostr(date), 4, 7);
  df_saida.date := frmprincipal.UltimoDiaMes(date);

  OpenPictureDialog1.InitialDir := caminho_fotos_produtos;

  ptampapreco.Align := alClient;

  PageView1.ActivePageIndex := 0;
  frmmodulo.qrreceita.close;
  frmmodulo.qrreceita.sql.clear;
  frmmodulo.qrreceita.sql.add('select * from c000024 order by receita');
  frmmodulo.qrreceita.open;
  frmmodulo.qrreceita.IndexFieldNames := 'receita';

  frmmodulo.qrGRUPO.close;
  frmmodulo.qrGRUPO.sql.clear;
  frmmodulo.qrGRUPO.sql.add('select * from c000017 order by GRUPO');
  frmmodulo.qrGRUPO.open;
  frmmodulo.qrGRUPO.IndexFieldNames := 'GRUPO';

  frmmodulo.qrSUBGRUPO.close;
  frmmodulo.qrSUBGRUPO.sql.clear;
  frmmodulo.qrSUBGRUPO.sql.add('select * from c000018 order by SUBGRUPO');
  frmmodulo.qrSUBGRUPO.open;
  frmmodulo.qrSUBGRUPO.IndexFieldNames := 'SUBGRUPO';

  frmmodulo.qrALIQUOTA.close;
  frmmodulo.qrALIQUOTA.sql.clear;
  frmmodulo.qrALIQUOTA.sql.add('select * from c000023 order by codigo');
  frmmodulo.qrALIQUOTA.open;
  frmmodulo.qrALIQUOTA.IndexFieldNames := 'codigo';

  frmmodulo.qrFORNECEDOR.close;
  frmmodulo.qrFORNECEDOR.sql.clear;
  frmmodulo.qrFORNECEDOR.sql.add('select * from c000009 order by nome');
  frmmodulo.qrFORNECEDOR.open;
  frmmodulo.qrFORNECEDOR.IndexFieldNames := 'nome';

  frmmodulo.qrMARCA.close;
  frmmodulo.qrMARCA.sql.clear;
  frmmodulo.qrMARCA.sql.add('select * from c000019 order by nome');
  frmmodulo.qrMARCA.open;
  frmmodulo.qrMARCA.IndexFieldNames := 'nome';

  qrcodbarra.close;
  qrcodbarra.sql.clear;
  qrcodbarra.sql.add('select * from c000055');
  qrcodbarra.open;

  pgravar.visible := false;
  pgravar.Align := alClient;

  if busca_produto = 1 then
  begin
    qrproduto.close;
    qrproduto.sql.clear;
    qrproduto.sql.add('select * from c000025 where codigo = ''' +
      busca_produto_codigo + '''');
    qrproduto.open;
    balterarClick(frmproduto_farma);
  end
  else
  begin
    qrproduto.close;
    qrproduto.sql.clear;
    qrproduto.sql.add('select * from c000025 order by produto');
    qrproduto.open;
    qrproduto.first;

    combocodbarra.Text := qrprodutoCODBARRA.AsString;

    bincluir.SetFocus;
  end;

  if frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger = 2 then
    // supermercado
    label7.Caption := 'CÓD.REMARCAÇÃO';

  ecusto.DisplayFormat := mascara_valor;
  evenda.DisplayFormat := mascara_valor;

  RINICIAL.DisplayFormat := mascara_qtde;
  rentrada.DisplayFormat := mascara_qtde;
  rsaida.DisplayFormat := mascara_qtde;
  restoque.DisplayFormat := mascara_qtde;

end;

procedure Tfrmproduto_farma.enomeEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmproduto_farma.enomeExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmproduto_farma.bincluirClick(Sender: TObject);
begin

  PFOTO.Enabled := TRUE;
  ppreco.Enabled := TRUE;

  qrproduto.insert;
  qrproduto.FieldByName('unidade').AsString := 'UN';
  qrproduto.FieldByName('codgrupo').AsString := '000001';
  qrproduto.FieldByName('estoque').asfloat := 0;
  qrproduto.FieldByName('cst').AsString := '000';
  qrproduto.FieldByName('aliquota').asinteger := 17;
  qrproduto.FieldByName('situacao').asinteger := 0;

  qrproduto.FieldByName('usa_balanca').asinteger := 2;
  qrproduto.FieldByName('usa_serial').asinteger := 0;
  qrproduto.FieldByName('usa_grade').asinteger := 0;
  qrproduto.FieldByName('tipo').AsString := '00 - Mercadoria para Revenda';

  qrproduto.FieldByName('data_inventario').AsDateTime :=
    strtodate('31/12/' + frmprincipal.zerarcodigo
    (inttostr(strtoint(copy(datetostr(date), 7, 4)) - 1), 4));
  qrproduto.FieldByName('custo_inventario').asfloat := 0;
  qrproduto.FieldByName('estoque_inventario').asfloat := 0;

  qrproduto.FieldByName('codigo').AsString := frmprincipal.codifica('000025');

  edata_cadastro.date := date;

  estoque_anterior := 0;

  combocodbarra.Text := '';
  combocodbarra.SetFocus;
  combo_tipo.Text := '00 - Mercadoria para Revenda';
  PageView1.ActivePageIndex := 0;

end;

procedure Tfrmproduto_farma.balterarClick(Sender: TObject);
begin

  if DBEdit1.Text <> '' then
  begin

    PFOTO.Enabled := TRUE;
    ppreco.Enabled := TRUE;

    preco_venda_anterior := qrproduto.FieldByName('precovenda').asfloat;

    qrproduto.Edit;

    combocodbarra.Text := qrproduto.FieldByName('CODBARRA').AsString;

    combocodbarra.SetFocus;
    pgravar.visible := TRUE;
    PopupMenu := Pop2;
  end
  else
  begin
    Showmessage('Nenhum registro foi selecionado!');
  end;

end;

procedure Tfrmproduto_farma.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir PRODUTO', 4) then
  begin
    qrcodbarra.close;
    qrcodbarra.sql.clear;
    qrcodbarra.sql.add('SELECT * from c000055 where codproduto = ''' +
      qrproduto.FieldByName('codigo').AsString + '''');
    qrcodbarra.open;
    while qrcodbarra.RECORDCOUNT <> 0 do
    begin
      qrcodbarra.DELETE;
    end;

    qrproduto_mov.close;
    qrproduto_mov.sql.clear;
    qrproduto_mov.sql.add('select * from c000032 where codproduto = ''' +
      qrproduto.FieldByName('codigo').AsString + '''');
    qrproduto_mov.open;

    if qrproduto_mov.RECORDCOUNT > 1 then
    begin
      application.messagebox
        ('Este produto possue movimentações entradas/saídas! Impossível excluí-lo!',
        'Atenção', mb_ok + mb_iconwarning);

    end
    else
    begin

      frmprincipal.logUC('Excluiu Produto - ' + qrproduto.FieldByName('PRODUTO')
        .AsString, 3);
      qrproduto.DELETE;
      frmmodulo.Conexao.commit;
    end;
  end
  else
  begin
    application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmproduto_farma.blocalizarClick(Sender: TObject);
begin
  frmxloc_PRODUTO := tfrmxloc_PRODUTO.create(self);
  frmxloc_PRODUTO.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    qrproduto.Locate('codigo', resultado_pesquisa1, [loCaseInsensitive]);
  end;
end;

procedure Tfrmproduto_farma.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto_farma.bgravarClick(Sender: TObject);
begin
  if qrproduto.FieldByName('PRECOVENDA').asfloat = 0 then
  begin
    Showmessage('Favor Informar O Preço de Venda!');
    evenda.SetFocus;
    exit;
  end;

  if DBEdit2.Text = '' then
  begin
    Showmessage('Favor Informar O Nome do Produto!');
    DBEdit2.SetFocus;
    exit;
  end;

  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
    qrpreco.Post;

  if (frmmodulo.qrinfnutricional_produto.State = dsedit) or
    (frmmodulo.qrinfnutricional_produto.State = dsinsert) then
    frmmodulo.qrinfnutricional_produto.Post;

  {
    if ecombo_piscofins.Text = '' then
    begin
    if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
    begin
    qrproduto.FieldByName('PISCOFINS').AsString := 'N';
    end;
    end;
  }

  if (qrproduto.State = dsinsert) then
  begin

    if (qrproduto.FieldByName('precovenda').asfloat <> preco_venda_anterior) or
      (qrproduto.State = dsinsert) then
      qrproduto.FieldByName('DATA_REMARCACAO_VENDA').AsDateTime := date;

    qrproduto.FieldByName('CODBARRA').AsString := combocodbarra.Text;
    frmprincipal.logUC('Incluiu Produto - ' + DBEdit2.Text, 1);

    qrproduto.Post;

  end;

  if (qrproduto.State = dsedit) then
  begin

    if (qrproduto.FieldByName('precovenda').asfloat <> preco_venda_anterior) or
      (qrproduto.State = dsinsert) then
      qrproduto.FieldByName('DATA_REMARCACAO_VENDA').AsDateTime := date;

    qrproduto.FieldByName('CODBARRA').AsString := combocodbarra.Text;
    frmprincipal.logUC('Alterou Produto - ' + DBEdit2.Text, 2);

    qrproduto.Post;

  end;

  frmmodulo.Conexao.commit;

  qrestoque.Refresh;

  ldata_compra.Caption := qrestoque.FieldByName('ultima_entrada').AsString;
  ldata_venda.Caption := qrestoque.FieldByName('ultima_saida').AsString;
  lnf.Caption := qrestoque.FieldByName('nota_fiscal').AsString;
  RINICIAL.Value := qrestoque.FieldByName('estoque_inicial').asfloat;
  rentrada.Value := qrestoque.FieldByName('entradas').asfloat;
  rsaida.Value := qrestoque.FieldByName('saidas').asfloat;
  restoque.Value := qrestoque.FieldByName('estoque_atual').asfloat;

  bincluir.SetFocus;

  PageView1.ActivePageIndex := 0;

  if busca_produto = 1 then
  begin
    busca_produto := 0;
    close;
  end;

end;

procedure Tfrmproduto_farma.bcancelarClick(Sender: TObject);
begin
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
    qrpreco.cancel;

  if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
    qrproduto.cancel;

  frmmodulo.Conexao.Rollback;

  PopupMenu := Pop1;
  bincluir.SetFocus;
  comando := '';
  PageView1.ActivePageIndex := 0;

  if busca_produto = 1 then
  begin
    busca_produto := 0;
    close;
  end;

end;

procedure Tfrmproduto_farma.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmproduto_farma.etipoExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmproduto_farma.edata_cadastroEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  if (qrproduto.State = dsinsert) or (qrproduto.State = dsinsert) then
  begin
    if edata_cadastro.Text = '  /  /    ' then
      edata_cadastro.date := date;
  end;
end;

procedure Tfrmproduto_farma.DBEdit1Enter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;

end;

procedure Tfrmproduto_farma.DBEdit1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;

end;

procedure Tfrmproduto_farma.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmproduto_farma.DateEdit1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmproduto_farma.DBEdit4Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmproduto_farma.Edit1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if TDBDateEdit(Sender).Text <> '  /  /    ' then
  begin
    try
      TDBDateEdit(Sender).date := strtodate(TDBDateEdit(Sender).Text);
    except
      Showmessage('Data Inválida');
      TDBDateEdit(Sender).SetFocus;
    end;
  end;

end;

procedure Tfrmproduto_farma.DBEdit16Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;

  if DBEdit16.Text <> '' then
  begin
    if qrproduto.State = dsinsert then
    begin
      query.close;
      query.sql.clear;
      query.sql.add('SELECT CODBARRA FROM C000025 WHERE CODBARRA = ''' +
        DBEdit16.Text + '''');
      query.open;
      if query.RECORDCOUNT > 0 then
      begin
        if application.messagebox
          ('Existe um produto cadastrado com este código de barras! Deseja visualiza-lo?',
          'Atenção', mb_yesno + mb_iconwarning) = idyes then
        begin
          qrproduto.cancel;
          qrproduto.Locate('codbarra', query.FieldByName('codbarra').AsString,
            [loCaseInsensitive]);
        end
        else
          DBEdit16.SetFocus;
      end;
    end;
  end
  else
  begin
    DBEdit16.Text := inttostr(strtoint(qrproduto.FieldByName('codigo')
      .AsString));
    qrproduto.FieldByName('codbarra').AsString := DBEdit16.Text;
  end;

end;

procedure Tfrmproduto_farma.ealiquotaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    PageView1.ActivePageIndex := 0;
    dbmemo1.SetFocus;

  end;
end;

procedure Tfrmproduto_farma.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if dbmemo1.Lines.Count >= 5 then
      PERFORM(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure Tfrmproduto_farma.DBEdit62KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmproduto_farma.DBCheckBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmproduto_farma.esubgrupoEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;

end;

procedure Tfrmproduto_farma.blocaliquotaClick(Sender: TObject);
begin
  frmloc_ALIQUOTA := tfrmloc_ALIQUOTA.create(self);
  frmloc_ALIQUOTA.showmodal;
  qrproduto.FieldByName('codALIQUOTA').AsString :=
    frmmodulo.qrALIQUOTA.FieldByName('codigo').AsString;
  PageView1.ActivePageIndex := 0;
  dbmemo1.SetFocus;

end;

procedure Tfrmproduto_farma.ealiquotaExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
  begin
    if ealiquota.Text <> '' then
    begin
      if not frmprincipal.Locregistro(frmmodulo.qrALIQUOTA, ealiquota.Text,
        'codigo') then
        blocaliquotaClick(frmproduto_farma)
      else
      begin
        PageView1.ActivePageIndex := 0;
        dbmemo1.SetFocus;
      end;
    end
    else
      blocaliquota.SetFocus;
  end;
end;

procedure Tfrmproduto_farma.BitBtn7Click(Sender: TObject);
begin
  qrpreco.insert;
  qrpreco.FieldByName('codigo').AsString := frmprincipal.codifica('000026');
  qrpreco.FieldByName('codproduto').AsString :=
    qrproduto.FieldByName('codigo').AsString;
  qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat :=
    qrproduto.FieldByName('PRECOCUSTO').asfloat;
  qrpreco.FieldByName('CUSTO_COMPRA').asfloat :=
    qrproduto.FieldByName('PRECOCUSTO').asfloat;

  ptampapreco.visible := false;
  DBEdit19.SetFocus;
end;

procedure Tfrmproduto_farma.DBEdit19Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (qrpreco.State = dsinsert) or (qrpreco.State = dsedit) then
  begin
    qrpreco.FieldByName('custo_compra').asfloat :=
      qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat +
      qrpreco.FieldByName('frete_ipi_outras').asfloat;

    qrpreco.FieldByName('total_custo').asfloat :=
      qrpreco.FieldByName('icms_saida').asfloat + qrpreco.FieldByName
      ('custo_operacional').asfloat + qrpreco.FieldByName('OUTROS_IMPOSTOS')
      .asfloat + qrpreco.FieldByName('comissao').asfloat +
      qrpreco.FieldByName('lucro').asfloat - qrpreco.FieldByName
      ('icms_entrada').asfloat;

    qrpreco.FieldByName('total_custo_p').asfloat :=
      qrpreco.FieldByName('icms_saida_p').asfloat +
      qrpreco.FieldByName('custo_operacional_p').asfloat +
      qrpreco.FieldByName('OUTROS_IMPOSTOS_p').asfloat +
      qrpreco.FieldByName('comissao_p').asfloat + qrpreco.FieldByName('lucro_p')
      .asfloat - qrpreco.FieldByName('icms_entrada_p').asfloat;

    if qrpreco.FieldByName('TOTAL_CUSTO_P').asfloat <> 0 then
      qrpreco.FieldByName('preco_venda').asfloat :=
        qrpreco.FieldByName('CUSTO_COMPRA').asfloat /
        (1 - (qrpreco.FieldByName('TOTAL_CUSTO_P').asfloat / 100));

  end;

end;

procedure Tfrmproduto_farma.DBEdit22Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (qrpreco.State = dsinsert) or (qrpreco.State = dsedit) then
  begin

    (* **************************** ICMS DE ENTRADA *************************** *)

    qrpreco.FieldByName('total_custo_p').asfloat :=
      qrpreco.FieldByName('icms_saida_p').asfloat +
      qrpreco.FieldByName('custo_operacional_p').asfloat +
      qrpreco.FieldByName('OUTROS_IMPOSTOS_p').asfloat +
      qrpreco.FieldByName('comissao_p').asfloat + qrpreco.FieldByName('lucro_p')
      .asfloat - qrpreco.FieldByName('icms_entrada_p').asfloat;

    if qrpreco.FieldByName('TOTAL_CUSTO_P').asfloat <> 0 then
      qrpreco.FieldByName('preco_venda').asfloat :=
        qrpreco.FieldByName('CUSTO_COMPRA').asfloat /
        (1 - (qrpreco.FieldByName('TOTAL_CUSTO_P').asfloat / 100));

    if qrpreco.FieldByName('icms_entrada_p').asfloat <> 0 then
    begin
      qrpreco.FieldByName('icms_entrada').asfloat :=
        qrpreco.FieldByName('CUSTO_COMPRA').asfloat *
        qrpreco.FieldByName('ICMS_ENTRADA_P').asfloat / 100;
    end;
    if qrpreco.FieldByName('icms_saida_p').asfloat <> 0 then
    begin
      qrpreco.FieldByName('icms_saida').asfloat :=
        qrpreco.FieldByName('preco_venda').asfloat *
        qrpreco.FieldByName('ICMS_saida_P').asfloat / 100;
    end;
    if qrpreco.FieldByName('CUSTO_OPERACIONAL_P').asfloat <> 0 then
    begin
      qrpreco.FieldByName('CUSTO_OPERACIONAL').asfloat :=
        qrpreco.FieldByName('preco_venda').asfloat *
        qrpreco.FieldByName('CUSTO_OPERACIONAL_p').asfloat / 100;
    end;
    if qrpreco.FieldByName('OUTROS_IMPOSTOS_P').asfloat <> 0 then
    begin
      qrpreco.FieldByName('outros_impostos').asfloat :=
        qrpreco.FieldByName('preco_venda').asfloat *
        qrpreco.FieldByName('outros_impostos_p').asfloat / 100;
    end;

    if qrpreco.FieldByName('comissao_P').asfloat <> 0 then
    begin
      qrpreco.FieldByName('comissao').asfloat :=
        qrpreco.FieldByName('preco_venda').asfloat *
        qrpreco.FieldByName('comissao_p').asfloat / 100;
    end;
    if qrpreco.FieldByName('lucro_P').asfloat <> 0 then
    begin
      qrpreco.FieldByName('lucro').asfloat := qrpreco.FieldByName('preco_venda')
        .asfloat * qrpreco.FieldByName('lucro_p').asfloat / 100;
    end;

    qrpreco.FieldByName('total_custo').asfloat :=
      qrpreco.FieldByName('icms_saida').asfloat + qrpreco.FieldByName
      ('custo_operacional').asfloat + qrpreco.FieldByName('OUTROS_IMPOSTOS')
      .asfloat + qrpreco.FieldByName('comissao').asfloat +
      qrpreco.FieldByName('lucro').asfloat - qrpreco.FieldByName
      ('icms_entrada').asfloat;

  end;

end;

procedure Tfrmproduto_farma.DBEdit37Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (qrpreco.State = dsinsert) or (qrpreco.State = dsedit) then
  begin
    if qrpreco.FieldByName('custo_COMPRA').asfloat <> 0 then
    begin
      qrpreco.FieldByName('lucro_p').asfloat := qrpreco.FieldByName('lucro')
        .asfloat * 100 / qrpreco.FieldByName('custo_COMPRA').asfloat;
    end;
    qrpreco.FieldByName('total_custo').asfloat :=
      qrpreco.FieldByName('icms_saida').asfloat + qrpreco.FieldByName
      ('custo_operacional').asfloat + qrpreco.FieldByName('OUTROS_IMPOSTOS')
      .asfloat + qrpreco.FieldByName('comissao').asfloat +
      qrpreco.FieldByName('lucro').asfloat - qrpreco.FieldByName
      ('icms_entrada').asfloat;

    qrpreco.FieldByName('total_custo_p').asfloat :=
      qrpreco.FieldByName('icms_saida_p').asfloat +
      qrpreco.FieldByName('custo_operacional_p').asfloat +
      qrpreco.FieldByName('OUTROS_IMPOSTOS_p').asfloat +
      qrpreco.FieldByName('comissao_p').asfloat + qrpreco.FieldByName('lucro_p')
      .asfloat - qrpreco.FieldByName('icms_entrada_p').asfloat;

  end;
end;

procedure Tfrmproduto_farma.Regies1Click(Sender: TObject);
begin
  LMDButton1.Click;
end;

procedure Tfrmproduto_farma.DBEdit40Exit(Sender: TObject);
begin
  TDBEdit(Sender).Color := $00F9F7E6;
end;

procedure Tfrmproduto_farma.DBEdit42Exit(Sender: TObject);
begin
  tedit(Sender).Color := clbtnface;
end;

procedure Tfrmproduto_farma.DBEdit59KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.SetFocus;
end;

procedure Tfrmproduto_farma.SpeedButton1Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    Image2.Picture.LoadFromFile(OpenPictureDialog1.Filename);
    qrproduto.FieldByName('FOTO').AsString := OpenPictureDialog1.Filename;
  end;
end;

procedure Tfrmproduto_farma.SpeedButton2Click(Sender: TObject);
begin
  frmwebcam := tfrmwebcam.create(self);
  frmwebcam.showmodal;
end;

procedure Tfrmproduto_farma.SpeedButton3Click(Sender: TObject);
begin
  Image2.Picture := nil;
  qrproduto.FieldByName('FOTO').AsString := '';
end;

procedure Tfrmproduto_farma.Fornecedor1Click(Sender: TObject);
begin
  frmfornecedor := tfrmfornecedor.create(self);
  frmfornecedor.showmodal;
end;

procedure Tfrmproduto_farma.MarcaFabricanteLaboratrio1Click(Sender: TObject);
begin
  frmmarca := tfrmmarca.create(self);
  frmmarca.showmodal;
end;

procedure Tfrmproduto_farma.GrupoSubgrupo1Click(Sender: TObject);
begin
  frmgrupo := tfrmgrupo.create(self);
  frmgrupo.showmodal;
end;

procedure Tfrmproduto_farma.Alquotas1Click(Sender: TObject);
begin
  frmaliquota := tfrmaliquota.create(self);
  frmaliquota.showmodal;
end;

procedure Tfrmproduto_farma.NaturezadeOperaoCFOP1Click(Sender: TObject);
begin
  frmcfop := tfrmcfop.create(self);
  frmcfop.showmodal;
end;

procedure Tfrmproduto_farma.BitBtn14Click(Sender: TObject);
begin
  // VERIFICAR
end;

procedure Tfrmproduto_farma.Exportarparaarquivo1Click(Sender: TObject);
begin
  frmproduto_exportar := tfrmproduto_exportar.create(self);
  frmproduto_exportar.showmodal;
end;

procedure Tfrmproduto_farma.ImportardeArquivo1Click(Sender: TObject);
begin
  if frmprincipal.autentica('Atualizar Produtos', 4) then
  begin
    frmproduto_importar := tfrmproduto_importar.create(self);
    frmproduto_importar.showmodal;
  end;
end;

procedure Tfrmproduto_farma.otalizarestoque1Click(Sender: TObject);
begin
  query.close;
  query.sql.clear;
  query.sql.add
    ('select sum(estq.estoque_atual * prod.precocusto) custo, sum(estq.estoque_atual * precovenda) venda from c000025 prod, c000100 estq');
  query.open;

  frmproduto_total := tfrmproduto_total.create(self);
  frmproduto_total.Label1.Caption := formatfloat('###,###,##0.00',
    query.FieldByName('custo').asfloat);
  frmproduto_total.Label2.Caption := formatfloat('###,###,##0.00',
    query.FieldByName('venda').asfloat);
  frmproduto_total.showmodal;
end;

procedure Tfrmproduto_farma.BitBtn5Click(Sender: TObject);
begin
  Frmlista_produto2 := tfrmlista_produto2.create(self);
  Frmlista_produto2.showmodal;
end;

procedure Tfrmproduto_farma.AtualizaodePreos1Click(Sender: TObject);
begin
  frmproduto_atualizapreco := tfrmproduto_atualizapreco.create(self);
  frmproduto_atualizapreco.showmodal;
end;

procedure Tfrmproduto_farma.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
    begin
      if dbedit13.Text <> '' then
      begin
        frmmodulo.qrfiscal_cst.close;
        frmmodulo.qrfiscal_cst.sql.clear;
        frmmodulo.qrfiscal_cst.sql.add('SELECT * FROM C000083 WHERE CODIGO = '''
          + dbedit13.Text + '''');
        frmmodulo.qrfiscal_cst.open;
        if frmmodulo.qrfiscal_cst.RECORDCOUNT > 0 then
        begin
          qrproduto.FieldByName('CST').AsString :=
            frmmodulo.qrfiscal_cst.FieldByName('codigo').AsString;
          ealiq.SetFocus;
        end
        else
        begin
          FRMXLOC_CST := TFRMXLOC_CST.create(self);
          FRMXLOC_CST.showmodal;
          qrproduto.FieldByName('CST').AsString := resultado_pesquisa1;
          ealiq.SetFocus;
        end;
      end
      else
        dbedit13ButtonClick(frmproduto_farma);
    end;

  end;
end;

procedure Tfrmproduto_farma.ealiqExit(Sender: TObject);
begin
  if (ealiq.Value <> 0.00) and (ealiq.Value <> 7.00) and (ealiq.Value <> 12.00)
    and (ealiq.Value <> 17.00) and (ealiq.Value <> 18.00) and
    (ealiq.Value <> 25.00) and (ealiq.Value <> 27.00) then
  begin
    application.messagebox('Aliquota fora da faixa!', 'Atenção',
      mb_ok + mb_iconwarning);
    ealiq.Value := 0;
    ealiq.SetFocus;
    exit;
  end;
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmproduto_farma.ealiqKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin

    PageView1.ActivePageIndex := 0;
    PageView2.ActivePageIndex := 0;

    combo_classificacao.SetFocus;

  end;
end;

procedure Tfrmproduto_farma.combo_tipoEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmproduto_farma.combo_tipoExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  DBEdit2.SetFocus;
end;

procedure Tfrmproduto_farma.combo_tipoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    edata_cadastro.SetFocus;
end;

procedure Tfrmproduto_farma.DBEdit2Exit(Sender: TObject);
var
  texto: PWideChar;
begin

  tedit(Sender).Color := clwindow;
  if qrproduto.State = dsinsert then
  begin
    qrduplo.close;
    qrduplo.sql.clear;
    qrduplo.sql.add('select * from c000025');
    qrduplo.sql.add('where upper(produto) = ''' + DBEdit2.Text + '''');
    qrduplo.open;
    if qrduplo.RECORDCOUNT > 0 then
    begin
      texto := PWideChar('Existe um produto cadastrado com este nome!' + #13 +
        qrduplo.FieldByName('codigo').AsString + ' - ' +
        qrduplo.FieldByName('produto').AsString + #13 + 'Preço de Venda: ' +
        formatfloat('###,###,##0.00', qrduplo.FieldByName('precovenda').asfloat)
        + '!' + #13 + 'Deseja prosseguir?');
      if application.messagebox(texto, 'Atenção', mb_yesno + mb_iconwarning +
        MB_DEFBUTTON2) = idNO then
      begin
        qrproduto.cancel;
        exit;
      end;
    end;
  end;

end;

procedure Tfrmproduto_farma.DBEdit7Exit(Sender: TObject);
begin
  if DBEdit7.Text = '' then
  begin
    Showmessage('Favor Informar a Unidade do Produto...');
    DBEdit7.SetFocus;
    exit;
  end;

  tedit(Sender).Color := clwindow;

end;

procedure Tfrmproduto_farma.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if DBEdit2.Text = '' then
    begin
      Showmessage('Favor Informar o Nome do Produto...');
      DBEdit2.SetFocus;
      exit;
    end
    else
      PERFORM(WM_NEXTDLGCTL, 0, 0);

  end;

end;

procedure Tfrmproduto_farma.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);

end;

procedure Tfrmproduto_farma.Inventrio1Click(Sender: TObject);
begin
  frminventario := Tfrminventario.create(self);
  frminventario.showmodal;
end;

procedure Tfrmproduto_farma.combocodbarraEnter(Sender: TObject);
begin
  TComboBox(Sender).Color := $00A0FAF8;

end;

procedure Tfrmproduto_farma.combocodbarraExit(Sender: TObject);
begin
  TComboBox(Sender).Color := clwindow;

  if combocodbarra.Text = '' then
  begin
    combocodbarra.Text := inttostr(strtoint(qrprodutoCODIGO.AsString));
  end;

  if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
  begin
    if combocodbarra.Text <> '' then
    begin
      qrbarra.close;
      qrbarra.sql.clear;
      qrbarra.sql.add('select codbarra from c000025 where codbarra = ''' +
        combocodbarra.Text + ''' and codigo <> ''' + qrproduto.FieldByName
        ('codigo').AsString + '''');
      qrbarra.open;
      if qrbarra.RECORDCOUNT > 0 then
      begin
        application.messagebox
          ('Já existe um produto cadastro com este código de barra! Verifique',
          'Atenção', mb_ok + mb_iconwarning);
        combocodbarra.SetFocus;
        exit;
      end;
      DBEdit2.SetFocus;
    end;

  end;

end;

procedure Tfrmproduto_farma.combocodbarraKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);

end;

procedure Tfrmproduto_farma.qrcodbarraBeforePost(DataSet: TDataSet);
begin

  if qrcodbarra.State = dsinsert then
  begin

    qrcodbarra.FieldByName('CODIGO').AsString :=
      frmprincipal.codifica('000055');

    qrbarra.close;
    qrbarra.sql.clear;
    qrbarra.sql.add('select * from c000055 where codbarra = ''' +
      qrcodbarra.FieldByName('codbarra').AsString + '''');
    qrbarra.open;
    if qrbarra.RECORDCOUNT > 0 then
    begin
      application.messagebox('Existe um produto cadastrado com este Código',
        'Atenção', mb_ok + mb_iconwarning);
      Abort;
    end;

  end;
  qrcodbarra.FieldByName('codproduto').AsString :=
    qrproduto.FieldByName('codigo').AsString;

end;

procedure Tfrmproduto_farma.dsproduto2DataChange(Sender: TObject;
  Field: TField);
begin
  if (qrproduto.State = dsbrowse) then
    combocodbarra.Text := qrprodutoCODBARRA.AsString;
end;

procedure Tfrmproduto_farma.BaixanoEstoque1Click(Sender: TObject);
begin
  frmbaixa_estoque := Tfrmbaixa_estoque.create(self);
  frmbaixa_estoque.showmodal;
end;

procedure Tfrmproduto_farma.Servios1Click(Sender: TObject);
begin
  bservicosClick(frmproduto_farma);
end;

procedure Tfrmproduto_farma.bservicosClick(Sender: TObject);
begin
  frmservico := tfrmservico.create(self);
  frmservico.showmodal;
end;

procedure Tfrmproduto_farma.Servicos1Click(Sender: TObject);
begin
  bservicosClick(frmproduto_farma);
end;

procedure Tfrmproduto_farma.AdvGlowButton1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure Tfrmproduto_farma.efornecedorButtonClick(Sender: TObject);
begin
  if qrproduto.State <> dsinsert then
    if qrproduto.State <> dsinsert then
      qrproduto.Edit;

  frmloc_fornecedor := tfrmloc_fornecedor.create(self);
  frmloc_fornecedor.showmodal;
  qrproduto.FieldByName('codfornecedor').AsString :=
    frmmodulo.qrFORNECEDOR.FieldByName('codigo').AsString;
  if gestoque.visible then
    eest.SetFocus
  else
    ecusto.SetFocus;
end;

procedure Tfrmproduto_farma.emarcaButtonClick(Sender: TObject);
begin
  if qrproduto.State <> dsinsert then
    if qrproduto.State <> dsinsert then
      qrproduto.Edit;

  frmloc_marca := tfrmloc_marca.create(self);
  frmloc_marca.showmodal;
  qrproduto.FieldByName('codmarca').AsString := frmmodulo.qrMARCA.FieldByName
    ('codigo').AsString;
  efornecedor.SetFocus;
end;

procedure Tfrmproduto_farma.esubgrupoButtonClick(Sender: TObject);
begin
  if qrproduto.State <> dsinsert then
    if qrproduto.State <> dsinsert then
      qrproduto.Edit;

  frmloc_subgrupo := tfrmloc_subgrupo.create(self);
  frmloc_subgrupo.showmodal;
  qrproduto.FieldByName('codsubgrupo').AsString :=
    frmmodulo.qrSUBGRUPO.FieldByName('codigo').AsString;
  emarca.SetFocus;
end;

procedure Tfrmproduto_farma.esubgrupoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    tedit(Sender).Color := clwindow;
    if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
    begin
      qrproduto.FieldByName('codsubgrupo').AsString :=
        frmprincipal.zerarcodigo(esubgrupo.Text, 6);
      if esubgrupo.Text <> '000000' then
        if not frmprincipal.Locregistro(frmmodulo.qrSUBGRUPO, esubgrupo.Text,
          'codigo') then
        begin
          application.messagebox('Subgrupo não cadastrado!', 'Atenção',
            mb_ok + mb_iconerror);
          esubgrupo.SetFocus;
          exit;
        end
        else
          emarca.SetFocus
      else
        esubgrupoButtonClick(frmproduto_farma);;
    end;

  end;
end;

procedure Tfrmproduto_farma.efornecedorKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    tedit(Sender).Color := clwindow;
    if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
    begin
      qrproduto.FieldByName('codfornecedor').AsString :=
        frmprincipal.zerarcodigo(efornecedor.Text, 6);
      if efornecedor.Text <> '000000' then
      begin
        if not frmprincipal.Locregistro(frmmodulo.qrFORNECEDOR,
          efornecedor.Text, 'codigo') then
        begin
          application.messagebox('Fornecedor não cadastrado!', 'Atenção',
            mb_ok + mb_iconerror);
          efornecedor.SetFocus;
          exit;
        end
        else
          PERFORM(WM_NEXTDLGCTL, 0, 0);
      end
      else
        efornecedorButtonClick(frmproduto_farma);
    end;

  end;
end;

procedure Tfrmproduto_farma.emarcaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    tedit(Sender).Color := clwindow;
    if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
    begin
      qrproduto.FieldByName('codmarca').AsString :=
        frmprincipal.zerarcodigo(emarca.Text, 6);
      if emarca.Text <> '000000' then
      begin
        if not frmprincipal.Locregistro(frmmodulo.qrMARCA, emarca.Text, 'codigo')
        then
        begin
          application.messagebox('Marca não cadastrada!', 'Atenção',
            mb_ok + mb_iconerror);
          emarca.SetFocus;
          exit;
        end
        else
        begin
          efornecedor.SetFocus;
        end;
      end
      else
        emarcaButtonClick(frmproduto_farma);
    end;

  end;
end;

procedure Tfrmproduto_farma.dbedit13ButtonClick(Sender: TObject);
begin
  if qrproduto.State <> dsinsert then
    if qrproduto.State <> dsinsert then
      qrproduto.Edit;

  FRMXLOC_CST := TFRMXLOC_CST.create(self);
  FRMXLOC_CST.showmodal;
  qrproduto.FieldByName('CST').AsString := resultado_pesquisa1;
  ealiq.SetFocus;
end;

procedure Tfrmproduto_farma.bfiltro_entradaClick(Sender: TObject);
var
  ve: real;
begin
  if combo_entrada.ItemIndex = 0 then
  begin
    qrmov_entrada.close;
    qrmov_entrada.sql.clear;
    qrmov_entrada.sql.add('select * from c000032 where codproduto = ''' +
      qrproduto.FieldByName('codigo').AsString + '''');
    qrmov_entrada.sql.add('and data >= :datai and data <= :dataf');
    qrmov_entrada.sql.add('and movimento in (0,1,7,8,10,13,16)');
    qrmov_entrada.Params.ParamByName('datai').AsDateTime := di_entrada.date;
    qrmov_entrada.Params.ParamByName('dataf').AsDateTime := df_entrada.date;
    qrmov_entrada.open;
    qrmov_entrada.first;
  end
  else
  begin
    qrmov_entrada.close;
    qrmov_entrada.sql.clear;
    qrmov_entrada.sql.add('select * from c000032 where codproduto = ''' +
      qrproduto.FieldByName('codigo').AsString + '''');
    qrmov_entrada.sql.add('and data >= :datai and data <= :dataf');
    qrmov_entrada.sql.add('and movimento =' + copy(combo_entrada.Text, 1, 2));
    qrmov_entrada.Params.ParamByName('datai').AsDateTime := di_entrada.date;
    qrmov_entrada.Params.ParamByName('dataf').AsDateTime := df_entrada.date;
    qrmov_entrada.open;
    qrmov_entrada.first;
  end;

  ve := 0;
  while not qrmov_entrada.Eof do
  begin
    ve := ve + qrmov_entrada.FieldByName('qtde').asfloat;
    qrmov_entrada.next;
  end;
  eentrada.Caption := formatfloat('###,###,##0.000', ve);
end;

procedure Tfrmproduto_farma.di_entradaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmproduto_farma.df_entradaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bfiltro_entrada.SetFocus;
end;

procedure Tfrmproduto_farma.PageView2Change(Sender: TObject);
begin
  if PageView1.ActivePageIndex = 0 then
  begin
    if PageView2.ActivePageIndex = 1 then
    begin
      bfiltro_entradaClick(frmproduto_farma);
    end;
    if PageView2.ActivePageIndex = 2 then
    begin
      bfiltro_saidaClick(frmproduto_farma);
    end;
  end;
end;

procedure Tfrmproduto_farma.qrmov_entradaCalcFields(DataSet: TDataSet);
begin

  case qrmov_entrada.FieldByName('MOVIMENTO').asinteger of
    0:
      qrmov_entrada.FieldByName('MOV').AsString := 'IMPLANTAÇÃO DE SALDO';
    1:
      qrmov_entrada.FieldByName('MOV').AsString := 'COMPRA';
    2:
      qrmov_entrada.FieldByName('MOV').AsString := 'VENDA';
    3:
      qrmov_entrada.FieldByName('MOV').AsString := 'DEVOLUÇÃO DE COMPRA';
    4:
      qrmov_entrada.FieldByName('MOV').AsString := 'OUTRAS SAÍDAS';
    5:
      qrmov_entrada.FieldByName('MOV').AsString := 'BAIXA DE SERIAL';
    6:
      qrmov_entrada.FieldByName('MOV').AsString := 'EXCLUSÃO SERIAL';
    7:
      qrmov_entrada.FieldByName('MOV').AsString := 'DEVOLUÇÃO DE VENDA';
    8:
      qrmov_entrada.FieldByName('MOV').AsString := 'RETORNO SERIAL';
    9:
      qrmov_entrada.FieldByName('MOV').AsString := 'VENDA EM O.S';
    10:
      qrmov_entrada.FieldByName('MOV').AsString := 'ACERTO ESTOQUE';
    11:
      qrmov_entrada.FieldByName('MOV').AsString := 'BAIXA MATÉRIA-PRIMA';
    12:
      qrmov_entrada.FieldByName('MOV').AsString := 'ESTORNA MATÉRIA-PRIMA';
    13:
      qrmov_entrada.FieldByName('MOV').AsString := 'ENTRADA PRODUTO ACABADO';
    14:
      qrmov_entrada.FieldByName('MOV').AsString := 'ESTORNA PRODUTO ACABADO';
    15:
      qrmov_entrada.FieldByName('MOV').AsString := 'BAIXA PARA RENTABILIDADE';
    16:
      qrmov_entrada.FieldByName('MOV').AsString := 'ENTRADA DA RENTABILIDADE';

    17:
      qrmov_entrada.FieldByName('MOV').AsString := 'INSTALAÇÃO';
    18:
      qrmov_entrada.FieldByName('MOV').AsString := 'GARANTIA DE SERVIÇO';
    19:
      qrmov_entrada.FieldByName('MOV').AsString := 'SAIDA PARA OFICINA';
    20:
      qrmov_entrada.FieldByName('MOV').AsString := 'DOAÇÃO';
    99:
      qrmov_entrada.FieldByName('MOV').AsString := 'SAÍDA SEM BAIXAR ESTOQUE';

  end;

end;

procedure Tfrmproduto_farma.qrmov_saidaCalcFields(DataSet: TDataSet);
begin

  case qrmov_saida.FieldByName('MOVIMENTO').asinteger of
    0:
      qrmov_saida.FieldByName('MOV').AsString := 'IMPLANTAÇÃO DE SALDO';
    // ENTRADA
    1:
      qrmov_saida.FieldByName('MOV').AsString := 'COMPRA'; // ENTRADA
    2:
      qrmov_saida.FieldByName('MOV').AsString := 'VENDA'; // SAIDA
    3:
      qrmov_saida.FieldByName('MOV').AsString := 'DEVOLUÇÃO DE COMPRA';
    // ENTRADA
    4:
      qrmov_saida.FieldByName('MOV').AsString := 'OUTRAS SAÍDAS'; // SAIDA
    5:
      qrmov_saida.FieldByName('MOV').AsString := 'BAIXA DE SERIAL'; // SAIDA
    6:
      qrmov_saida.FieldByName('MOV').AsString := 'EXCLUSÃO SERIAL'; // SAIDA
    7:
      qrmov_saida.FieldByName('MOV').AsString := 'DEVOLUÇÃO DE VENDA';
    // ENTRADA
    8:
      qrmov_saida.FieldByName('MOV').AsString := 'RETORNO SERIAL'; // ENTRADA
    9:
      qrmov_saida.FieldByName('MOV').AsString := 'VENDA EM O.S'; // SAIDA
    10:
      qrmov_saida.FieldByName('MOV').AsString := 'ACERTO ESTOQUE'; // ENTRADA
    11:
      qrmov_saida.FieldByName('MOV').AsString := 'BAIXA MATÉRIA-PRIMA'; // SAIDA
    12:
      qrmov_saida.FieldByName('MOV').AsString := 'ESTORNA MATÉRIA-PRIMA';
    // ENTRADA
    13:
      qrmov_saida.FieldByName('MOV').AsString := 'ENTRADA PRODUTO ACABADO';
    // ENTRADA
    14:
      qrmov_saida.FieldByName('MOV').AsString := 'ESTORNA PRODUTO ACABADO';
    // SAIDA
    15:
      qrmov_saida.FieldByName('MOV').AsString := 'BAIXA PARA RENTABILIDADE';
    // SAIDA
    16:
      qrmov_saida.FieldByName('MOV').AsString := 'ENTRADA DA RENTABILIDADE';
    // ENTRADA

    17:
      qrmov_saida.FieldByName('MOV').AsString := 'INSTALAÇÃO'; // saida
    18:
      qrmov_saida.FieldByName('MOV').AsString := 'GARANTIA DE SERVIÇO'; // saida
    19:
      qrmov_saida.FieldByName('MOV').AsString := 'SAIDA PARA OFICINA'; // saida
    20:
      qrmov_saida.FieldByName('MOV').AsString := 'DOAÇÃO'; // saida
    99:
      qrmov_saida.FieldByName('MOV').AsString := 'SEM BAIXA DE ESTOQUE';
    // saida

  end;
end;

procedure Tfrmproduto_farma.bfiltro_saidaClick(Sender: TObject);

var
  ve: real;
begin
  if combo_saida.ItemIndex = 0 then
  begin
    qrmov_saida.close;
    qrmov_saida.sql.clear;
    qrmov_saida.sql.add('select * from c000032 where codproduto = ''' +
      qrproduto.FieldByName('codigo').AsString + '''');
    qrmov_saida.sql.add('and data >= :datai and data <= :dataf');
    qrmov_saida.sql.add
      ('and movimento in (2,3,4,5,6,9,11,12,14,15,17,18,19,20,99)');
    qrmov_saida.Params.ParamByName('datai').AsDateTime := di_saida.date;
    qrmov_saida.Params.ParamByName('dataf').AsDateTime := df_saida.date;
    qrmov_saida.open;
    qrmov_saida.first;
  end
  else
  begin
    qrmov_saida.close;
    qrmov_saida.sql.clear;
    qrmov_saida.sql.add('select * from c000032 where codproduto = ''' +
      qrproduto.FieldByName('codigo').AsString + '''');
    qrmov_saida.sql.add('and data >= :datai and data <= :dataf');
    qrmov_saida.sql.add('and movimento =' + copy(combo_saida.Text, 1, 2));
    qrmov_saida.Params.ParamByName('datai').AsDateTime := di_saida.date;
    qrmov_saida.Params.ParamByName('dataf').AsDateTime := df_saida.date;
    qrmov_saida.open;
    qrmov_saida.first;
  end;
  ve := 0;
  while not qrmov_saida.Eof do
  begin
    ve := ve + qrmov_saida.FieldByName('qtde').asfloat;
    qrmov_saida.next;
  end;
  esaida.Caption := formatfloat('###,###,##0.000', ve);
end;

procedure Tfrmproduto_farma.df_saidaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bfiltro_saida.SetFocus;
end;

procedure Tfrmproduto_farma.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmproduto_farma.DBEdit38KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bitbtn10.SetFocus;
end;

procedure Tfrmproduto_farma.qrproduto_movBeforePost(DataSet: TDataSet);
begin
  case qrproduto_mov.FieldByName('movimento').asinteger of
    0, 10:
      qrproduto_mov.FieldByName('movimento_estoque').asfloat :=
        qrproduto_mov.FieldByName('qtde').asfloat;
    1, 3, 7, 8, 12, 13, 16:
      qrproduto_mov.FieldByName('movimento_estoque').asfloat :=
        qrproduto_mov.FieldByName('qtde').asfloat;
    2, 4, 5, 6, 9, 11, 14, 15, 17, 18, 19, 20:
      qrproduto_mov.FieldByName('movimento_estoque').asfloat :=
        qrproduto_mov.FieldByName('qtde').asfloat * (-1);
  end;
end;

procedure Tfrmproduto_farma.qrprodutoAfterCancel(DataSet: TDataSet);
begin
  pgravar.visible := false;
  PopupMenu := Pop1;
  gestoque.visible := false;
end;

procedure Tfrmproduto_farma.qrprodutoAfterEdit(DataSet: TDataSet);
begin
  pgravar.visible := TRUE;
  gestoque.visible := false;
  PopupMenu := Pop2;

end;

procedure Tfrmproduto_farma.qrprodutoAfterInsert(DataSet: TDataSet);
begin
  pgravar.visible := TRUE;
  gestoque.visible := TRUE;
  PopupMenu := Pop2;
end;

procedure Tfrmproduto_farma.qrprodutoAfterPost(DataSet: TDataSet);
begin

  pgravar.visible := false;
  PopupMenu := Pop1;
  gestoque.visible := false;
end;

procedure Tfrmproduto_farma.PageView1Change(Sender: TObject);
begin
  DBEdit1Change(frmproduto_farma);
end;

procedure Tfrmproduto_farma.DBEdit1Change(Sender: TObject);
var
  mes01, mes02, mes03, mes04, mes05, mes06, mes07, mes08, mes09, mes10, mes11,
    mes12: string;
begin
  try

    if PageView1.ActivePageIndex = 4 then
    begin

      mes01 := copy(datetostr(date), 4, 7);
      mes02 := copy(datetostr(IncMonth(date, -1)), 4, 7);
      mes03 := copy(datetostr(IncMonth(date, -2)), 4, 7);
      mes04 := copy(datetostr(IncMonth(date, -3)), 4, 7);
      mes05 := copy(datetostr(IncMonth(date, -4)), 4, 7);
      mes06 := copy(datetostr(IncMonth(date, -5)), 4, 7);
      mes07 := copy(datetostr(IncMonth(date, -6)), 4, 7);
      mes08 := copy(datetostr(IncMonth(date, -7)), 4, 7);
      mes09 := copy(datetostr(IncMonth(date, -8)), 4, 7);
      mes10 := copy(datetostr(IncMonth(date, -9)), 4, 7);
      mes11 := copy(datetostr(IncMonth(date, -10)), 4, 7);
      mes12 := copy(datetostr(IncMonth(date, -11)), 4, 7);

      qrvenda_mes.close;
      qrvenda_mes.sql.clear;
      qrvenda_mes.sql.add('select sum(qtde) sum_0, ' +
        '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data11 and data < :data10 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data10 and data < :data09 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data09 and data < :data08 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data08 and data < :data07 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data07 and data < :data06 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data06 and data < :data05 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data05 and data < :data04 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data04 and data < :data03 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data03 and data < :data02 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data02 and data < :data01 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data01 and data < :data00 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + ''') ' +
        'from c000032 where movimento in (2,9) and data >= :data12 and data < :data11 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''');

      qrvenda_mes.Params.ParamByName('data00').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, 1)), 4, 7));
      qrvenda_mes.Params.ParamByName('data01').AsDateTime :=
        strtodate('01/' + copy(datetostr(date), 4, 7));
      qrvenda_mes.Params.ParamByName('data02').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -1)), 4, 7));
      qrvenda_mes.Params.ParamByName('data03').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -2)), 4, 7));
      qrvenda_mes.Params.ParamByName('data04').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -3)), 4, 7));
      qrvenda_mes.Params.ParamByName('data05').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -4)), 4, 7));
      qrvenda_mes.Params.ParamByName('data06').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -5)), 4, 7));
      qrvenda_mes.Params.ParamByName('data07').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -6)), 4, 7));
      qrvenda_mes.Params.ParamByName('data08').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -7)), 4, 7));
      qrvenda_mes.Params.ParamByName('data09').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -8)), 4, 7));
      qrvenda_mes.Params.ParamByName('data10').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -9)), 4, 7));
      qrvenda_mes.Params.ParamByName('data11').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -10)), 4, 7));
      qrvenda_mes.Params.ParamByName('data12').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -11)), 4, 7));

      qrvenda_mes.open;

      qrvenda_mesCOLUMN_0.DisplayLabel := mes12;
      qrvenda_mesColumn.DisplayLabel := mes11;
      qrvenda_mesColumn_1.DisplayLabel := mes10;
      qrvenda_mesColumn_2.DisplayLabel := mes09;
      qrvenda_mesColumn_3.DisplayLabel := mes08;
      qrvenda_mesColumn_4.DisplayLabel := mes07;
      qrvenda_mesColumn_5.DisplayLabel := mes06;
      qrvenda_mesColumn_6.DisplayLabel := mes05;
      qrvenda_mesColumn_7.DisplayLabel := mes04;
      qrvenda_mesColumn_8.DisplayLabel := mes03;
      qrvenda_mesColumn_9.DisplayLabel := mes02;
      qrvenda_mesColumn_10.DisplayLabel := mes01;

      Series1.clear;
      Series1.AddY(qrvenda_mesCOLUMN_0.asfloat,
        qrvenda_mesCOLUMN_0.DisplayLabel, clred);
      Series1.AddY(qrvenda_mesColumn.asfloat,
        qrvenda_mesColumn.DisplayLabel, clred);
      Series1.AddY(qrvenda_mesColumn_1.asfloat,
        qrvenda_mesColumn_1.DisplayLabel, clred);
      Series1.AddY(qrvenda_mesColumn_2.asfloat,
        qrvenda_mesColumn_2.DisplayLabel, clred);
      Series1.AddY(qrvenda_mesColumn_3.asfloat,
        qrvenda_mesColumn_3.DisplayLabel, clred);
      Series1.AddY(qrvenda_mesColumn_4.asfloat,
        qrvenda_mesColumn_4.DisplayLabel, clred);
      Series1.AddY(qrvenda_mesColumn_5.asfloat,
        qrvenda_mesColumn_5.DisplayLabel, clred);
      Series1.AddY(qrvenda_mesColumn_6.asfloat,
        qrvenda_mesColumn_6.DisplayLabel, clred);
      Series1.AddY(qrvenda_mesColumn_7.asfloat,
        qrvenda_mesColumn_7.DisplayLabel, clred);
      Series1.AddY(qrvenda_mesColumn_8.asfloat,
        qrvenda_mesColumn_8.DisplayLabel, clred);
      Series1.AddY(qrvenda_mesColumn_9.asfloat,
        qrvenda_mesColumn_9.DisplayLabel, clred);
      Series1.AddY(qrvenda_mesColumn_10.asfloat,
        qrvenda_mesColumn_10.DisplayLabel, clred);

      qrvenda_mes.close;
      qrvenda_mes.sql.clear;
      qrvenda_mes.sql.add('select sum(qtde) sum_0, ' +
        '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data11 and data < :data10 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data10 and data < :data09 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data09 and data < :data08 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data08 and data < :data07 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data07 and data < :data06 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data06 and data < :data05 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data05 and data < :data04 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data04 and data < :data03 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data03 and data < :data02 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data02 and data < :data01 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data01 and data < :data00 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + ''') ' +
        'from c000032 where MOVIMENTO = 1 and data >= :data12 and data < :data11 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''');

      qrvenda_mes.Params.ParamByName('data00').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, 1)), 4, 7));
      qrvenda_mes.Params.ParamByName('data01').AsDateTime :=
        strtodate('01/' + copy(datetostr(date), 4, 7));
      qrvenda_mes.Params.ParamByName('data02').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -1)), 4, 7));
      qrvenda_mes.Params.ParamByName('data03').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -2)), 4, 7));
      qrvenda_mes.Params.ParamByName('data04').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -3)), 4, 7));
      qrvenda_mes.Params.ParamByName('data05').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -4)), 4, 7));
      qrvenda_mes.Params.ParamByName('data06').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -5)), 4, 7));
      qrvenda_mes.Params.ParamByName('data07').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -6)), 4, 7));
      qrvenda_mes.Params.ParamByName('data08').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -7)), 4, 7));
      qrvenda_mes.Params.ParamByName('data09').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -8)), 4, 7));
      qrvenda_mes.Params.ParamByName('data10').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -9)), 4, 7));
      qrvenda_mes.Params.ParamByName('data11').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -10)), 4, 7));
      qrvenda_mes.Params.ParamByName('data12').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -11)), 4, 7));

      qrvenda_mes.open;

      qrvenda_mesCOLUMN_0.DisplayLabel := mes12;
      qrvenda_mesColumn.DisplayLabel := mes11;
      qrvenda_mesColumn_1.DisplayLabel := mes10;
      qrvenda_mesColumn_2.DisplayLabel := mes09;
      qrvenda_mesColumn_3.DisplayLabel := mes08;
      qrvenda_mesColumn_4.DisplayLabel := mes07;
      qrvenda_mesColumn_5.DisplayLabel := mes06;
      qrvenda_mesColumn_6.DisplayLabel := mes05;
      qrvenda_mesColumn_7.DisplayLabel := mes04;
      qrvenda_mesColumn_8.DisplayLabel := mes03;
      qrvenda_mesColumn_9.DisplayLabel := mes02;
      qrvenda_mesColumn_10.DisplayLabel := mes01;

      BarSeries1.clear;
      BarSeries1.AddY(qrvenda_mesCOLUMN_0.asfloat,
        qrvenda_mesCOLUMN_0.DisplayLabel, CLBLUE);
      BarSeries1.AddY(qrvenda_mesColumn.asfloat,
        qrvenda_mesColumn.DisplayLabel, CLBLUE);
      BarSeries1.AddY(qrvenda_mesColumn_1.asfloat,
        qrvenda_mesColumn_1.DisplayLabel, CLBLUE);
      BarSeries1.AddY(qrvenda_mesColumn_2.asfloat,
        qrvenda_mesColumn_2.DisplayLabel, CLBLUE);
      BarSeries1.AddY(qrvenda_mesColumn_3.asfloat,
        qrvenda_mesColumn_3.DisplayLabel, CLBLUE);
      BarSeries1.AddY(qrvenda_mesColumn_4.asfloat,
        qrvenda_mesColumn_4.DisplayLabel, CLBLUE);
      BarSeries1.AddY(qrvenda_mesColumn_5.asfloat,
        qrvenda_mesColumn_5.DisplayLabel, CLBLUE);
      BarSeries1.AddY(qrvenda_mesColumn_6.asfloat,
        qrvenda_mesColumn_6.DisplayLabel, CLBLUE);
      BarSeries1.AddY(qrvenda_mesColumn_7.asfloat,
        qrvenda_mesColumn_7.DisplayLabel, CLBLUE);
      BarSeries1.AddY(qrvenda_mesColumn_8.asfloat,
        qrvenda_mesColumn_8.DisplayLabel, CLBLUE);
      BarSeries1.AddY(qrvenda_mesColumn_9.asfloat,
        qrvenda_mesColumn_9.DisplayLabel, CLBLUE);
      BarSeries1.AddY(qrvenda_mesColumn_10.asfloat,
        qrvenda_mesColumn_10.DisplayLabel, CLBLUE);

    end;

    if PageView1.ActivePageIndex = 0 then
    begin
      if PageView2.ActivePageIndex = 0 then
      begin
        qrestoque.Connection := frmmodulo.Conexao;
        qrestoque.close;
        qrestoque.sql.clear;
        qrestoque.sql.add('select * from c000100 where codproduto = ''' +
          qrproduto.FieldByName('codigo').AsString + '''');
        qrestoque.open;

        ldata_compra.Caption := qrestoque.FieldByName('ultima_entrada')
          .AsString;
        ldata_venda.Caption := qrestoque.FieldByName('ultima_saida').AsString;
        lnf.Caption := qrestoque.FieldByName('nota_fiscal').AsString;
        RINICIAL.Value := qrestoque.FieldByName('estoque_inicial').asfloat;
        rentrada.Value := qrestoque.FieldByName('entradas').asfloat;
        rsaida.Value := qrestoque.FieldByName('saidas').asfloat;
        restoque.Value := qrestoque.FieldByName('estoque_atual').asfloat;

      end;

      if PageView2.ActivePageIndex = 1 then
      begin
        bfiltro_entradaClick(frmproduto_farma);
      end;
      if PageView2.ActivePageIndex = 2 then
      begin
        bfiltro_saidaClick(frmproduto_farma);
      end;
    end;

    if PageView1.ActivePageIndex = 1 then // preco
    begin
      qrpreco.close;
      qrpreco.sql.clear;
      qrpreco.sql.add('select * from c000026 where codproduto = ''' +
        qrproduto.FieldByName('codigo').AsString + '''');
      qrpreco.open;

      if qrpreco.RECORDCOUNT = 0 then
      begin
        ptampapreco.visible := TRUE;
      end
      else
      begin
        ptampapreco.visible := false;
      end;
    end;

    if PageView1.ActivePageIndex = 3 then // FOTO
    begin
      if qrproduto.FieldByName('FOTO').AsString <> '' then
      begin
        Image2.Picture.LoadFromFile(qrproduto.FieldByName('FOTO').AsString);
      end
      else
      begin
        Image2.Picture := nil;
      end;
    end;

  except

  end;
end;

procedure Tfrmproduto_farma.DBEdit17KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.SetFocus;
end;

procedure Tfrmproduto_farma.bitbtn10Click(Sender: TObject);
begin
  if qrproduto.State <> dsinsert then
    if qrproduto.State <> dsedit then
      qrproduto.Edit;
  qrproduto.FieldByName('precovenda').asfloat :=
    qrpreco.FieldByName('preco_venda').asfloat;
  qrproduto.FieldByName('precocusto').asfloat :=
    qrpreco.FieldByName('custo_compra').asfloat;
end;

procedure Tfrmproduto_farma.qrprecoBeforeEdit(DataSet: TDataSet);
begin
  if qrproduto.State <> dsinsert then
    if qrproduto.State <> dsedit then
      qrproduto.Edit;
end;

procedure Tfrmproduto_farma.qrprecoBeforeInsert(DataSet: TDataSet);
begin
  if qrproduto.State <> dsinsert then
    if qrproduto.State <> dsedit then
      qrproduto.Edit;
end;

procedure Tfrmproduto_farma.Atuli1Click(Sender: TObject);
begin
  frmproduto_farma_preco := tfrmproduto_farma_preco.create(self);
  frmproduto_farma_preco.showmodal;
end;

procedure Tfrmproduto_farma.MovimentarEstoque1Click(Sender: TObject);
var
  recor: string;
begin
  if frmprincipal.autentica('Movimentar Estoque', 4) then
  begin
    recor := qrproduto.FieldByName('codigo').AsString;
    frmproduto_movimentar := tfrmproduto_movimentar.create(self);
    frmproduto_movimentar.LCODIGO.Caption :=
      qrproduto.FieldByName('codigo').AsString;
    frmproduto_movimentar.Lproduto.Caption :=
      qrproduto.FieldByName('produto').AsString;
    frmproduto_movimentar.Lestoque.Caption := formatfloat('###,###,##0.000',
      restoque.Value);
    frmproduto_movimentar.rqtde.Value := 1;
    frmproduto_movimentar.runitario.Value :=
      qrproduto.FieldByName('precovenda').asfloat;
    frmproduto_movimentar.rtotal.Value :=
      qrproduto.FieldByName('precovenda').asfloat;
    frmproduto_movimentar.lunidade.Caption :=
      qrproduto.FieldByName('UNIDADE').AsString;
    frmproduto_movimentar.showmodal;
    frmproduto_farma.DBEdit1Change(frmproduto_farma);
  end;

end;

procedure Tfrmproduto_farma.qrprodutoBeforePost(DataSet: TDataSet);
begin

  // complus
  if (qrproduto.State = dsinsert) and (cd_pro = '1') then
  begin

    pexporta.visible := TRUE;
    application.ProcessMessages;

    frmmodulo.qradic.close;
    frmmodulo.qradic.sql.clear;
    frmmodulo.qradic.sql.add('insert into c000025');
    frmmodulo.qradic.sql.add('(codigo,produto,codbarra,data_cadastro,unidade,');
    frmmodulo.qradic.sql.add('codgrupo,codsubgrupo,codfornecedor,codmarca,');
    frmmodulo.qradic.sql.add
      ('precocusto,precovenda,estoque,LOCALICAZAO,comissao,cst,aliquota,tipo,situacao)');
    frmmodulo.qradic.sql.add('values');
    frmmodulo.qradic.sql.add
      ('(:xcodigo,:xproduto,:xcodbarra,:xdata_cadastro,:xunidade,');
    frmmodulo.qradic.sql.add
      (':xcodgrupo,:xcodsubgrupo,:xcodfornecedor,:xcodmarca,');
    frmmodulo.qradic.sql.add
      (':xprecocusto,:xprecovenda,:xestoque,:xLOCALICAZAO,:xcomissao,:xcst,:xaliquota,:xtipo,:xsituacao)');
    frmmodulo.qradic.Params.ParamByName('xcodigo').AsString :=
      qrproduto.FieldByName('codigo').AsString;
    frmmodulo.qradic.Params.ParamByName('xproduto').AsString :=
      qrproduto.FieldByName('produto').AsString;
    frmmodulo.qradic.Params.ParamByName('xCODBARRA').AsString :=
      qrproduto.FieldByName('CODBARRA').AsString;
    frmmodulo.qradic.Params.ParamByName('xDATA_CADASTRO').AsDateTime :=
      qrproduto.FieldByName('DATA_CADASTRO').AsDateTime;
    frmmodulo.qradic.Params.ParamByName('xUNIDADE').AsString :=
      qrproduto.FieldByName('UNIDADE').AsString;
    frmmodulo.qradic.Params.ParamByName('xCODGRUPO').AsString :=
      qrproduto.FieldByName('CODGRUPO').AsString;
    frmmodulo.qradic.Params.ParamByName('xCODSUBGRUPO').AsString :=
      qrproduto.FieldByName('CODSUBGRUPO').AsString;
    frmmodulo.qradic.Params.ParamByName('xCODFORNECEDOR').AsString :=
      qrproduto.FieldByName('CODFORNECEDOR').AsString;
    frmmodulo.qradic.Params.ParamByName('xCODMARCA').AsString :=
      qrproduto.FieldByName('CODMARCA').AsString;
    frmmodulo.qradic.Params.ParamByName('xPRECOCUSTO').asfloat :=
      qrproduto.FieldByName('PRECOCUSTO').asfloat;
    frmmodulo.qradic.Params.ParamByName('xPRECOVENDA').asfloat :=
      qrproduto.FieldByName('PRECOVENDA').asfloat;
    frmmodulo.qradic.Params.ParamByName('xESTOQUE').asfloat := 0;
    frmmodulo.qradic.Params.ParamByName('xLOCALICAZAO').AsString :=
      qrproduto.FieldByName('LOCALICAZAO').AsString;
    frmmodulo.qradic.Params.ParamByName('xCOMISSAO').asfloat :=
      qrproduto.FieldByName('COMISSAO').asfloat;
    frmmodulo.qradic.Params.ParamByName('xCST').AsString :=
      qrproduto.FieldByName('CST').AsString;
    frmmodulo.qradic.Params.ParamByName('xALIQUOTA').asfloat :=
      qrproduto.FieldByName('ALIQUOTA').asfloat;
    frmmodulo.qradic.Params.ParamByName('xTIPO').AsString := 'VENDAS';
    frmmodulo.qradic.Params.ParamByName('xsituacao').asinteger :=
      qrproduto.FieldByName('situacao').asinteger;
    frmmodulo.qradic.execsql;

    frmmodulo.conexao_adic.commit;

    frmmodulo.qradic.close;
    frmmodulo.qradic.sql.clear;
    frmmodulo.qradic.sql.add('insert into c000032');
    frmmodulo.qradic.sql.add('(codigo,codnota,serial,numeronota,');
    frmmodulo.qradic.sql.add('codproduto,qtde,unitario,movimento_estoque,');
    frmmodulo.qradic.sql.add('total,unidade,aliquota,');
    frmmodulo.qradic.sql.add('cupom_item,cupom_numero,cupom_modelo,');
    frmmodulo.qradic.sql.add
      ('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,cst)');
    frmmodulo.qradic.sql.add('values');
    frmmodulo.qradic.sql.add('(''' + frmprincipal.codifica('000032') +
      ''',''000000'',''000000'',''000000'',');
    frmmodulo.qradic.sql.add('''' + qrproduto.FieldByName('codigo').AsString +
      ''',:QTDE,:UNITARIO,:movimento_estoque,');
    frmmodulo.qradic.sql.add(':TOTAL,''' + qrproduto.FieldByName('unidade')
      .AsString + ''',:ALIQUOTA,');
    frmmodulo.qradic.sql.add('''001'',''000000'','''',');
    frmmodulo.qradic.sql.add
      ('''000000'',''000000'',''000000'',''S/VEND'',0,:datax,''000'')');
    frmmodulo.qradic.Params.ParamByName('datax').AsDateTime :=
      qrproduto.FieldByName('DATA_CADASTRO').AsDateTime;
    frmmodulo.qradic.Params.ParamByName('UNITARIO').asfloat :=
      qrproduto.FieldByName('precocusto').asfloat;
    frmmodulo.qradic.Params.ParamByName('QTDE').asfloat := 0;
    frmmodulo.qradic.Params.ParamByName('TOTAL').asfloat := 0;
    frmmodulo.qradic.Params.ParamByName('movimento_estoque').asfloat := 0;
    frmmodulo.qradic.Params.ParamByName('ALIQUOTA').asfloat := 0;
    frmmodulo.qradic.execsql;

    frmmodulo.conexao_adic.commit;

    sleep(1000);
    pexporta.visible := false;
  end;
  if (qrproduto.State = dsedit) and (cd_pro = '1') then
  begin
    frmmodulo.qradic.close;
    frmmodulo.qradic.sql.clear;
    frmmodulo.qradic.sql.add('update c000025 set');
    frmmodulo.qradic.sql.add('produto       = :xproduto,');
    frmmodulo.qradic.sql.add('codbarra      = :xcodbarra,');
    frmmodulo.qradic.sql.add('data_cadastro = :xdata_cadastro,');
    frmmodulo.qradic.sql.add('unidade       = :xunidade,');
    frmmodulo.qradic.sql.add('codgrupo      = :xcodgrupo,');
    frmmodulo.qradic.sql.add('codsubgrupo      = :xcodsubgrupo,');
    frmmodulo.qradic.sql.add('codfornecedor = :xcodfornecedor,');
    frmmodulo.qradic.sql.add('codmarca      = :xcodmarca,');
    frmmodulo.qradic.sql.add('precocusto    = :xprecocusto,');
    frmmodulo.qradic.sql.add('precovenda    = :xprecovenda,');
    frmmodulo.qradic.sql.add('LOCALICAZAO   = :xLOCALICAZAO,');
    frmmodulo.qradic.sql.add('comissao      = :xcomissao,');
    frmmodulo.qradic.sql.add('cst           = :xcst,');
    frmmodulo.qradic.sql.add('aliquota      = :xaliquota');
    frmmodulo.qradic.sql.add('where codigo = ''' + qrproduto.FieldByName
      ('codigo').AsString + '''');

    frmmodulo.qradic.Params.ParamByName('xproduto').AsString :=
      qrproduto.FieldByName('produto').AsString;
    frmmodulo.qradic.Params.ParamByName('xCODBARRA').AsString :=
      qrproduto.FieldByName('CODBARRA').AsString;
    frmmodulo.qradic.Params.ParamByName('xDATA_CADASTRO').AsDateTime :=
      qrproduto.FieldByName('DATA_CADASTRO').AsDateTime;
    frmmodulo.qradic.Params.ParamByName('xUNIDADE').AsString :=
      qrproduto.FieldByName('UNIDADE').AsString;
    frmmodulo.qradic.Params.ParamByName('xCODGRUPO').AsString :=
      qrproduto.FieldByName('CODGRUPO').AsString;
    frmmodulo.qradic.Params.ParamByName('xCODSUBGRUPO').AsString :=
      qrproduto.FieldByName('CODSUBGRUPO').AsString;
    frmmodulo.qradic.Params.ParamByName('xCODFORNECEDOR').AsString :=
      qrproduto.FieldByName('CODFORNECEDOR').AsString;
    frmmodulo.qradic.Params.ParamByName('xCODMARCA').AsString :=
      qrproduto.FieldByName('CODMARCA').AsString;
    frmmodulo.qradic.Params.ParamByName('xPRECOCUSTO').asfloat :=
      qrproduto.FieldByName('PRECOCUSTO').asfloat;
    frmmodulo.qradic.Params.ParamByName('xPRECOVENDA').asfloat :=
      qrproduto.FieldByName('PRECOVENDA').asfloat;
    frmmodulo.qradic.Params.ParamByName('xLOCALICAZAO').AsString :=
      qrproduto.FieldByName('LOCALICAZAO').AsString;
    frmmodulo.qradic.Params.ParamByName('xCOMISSAO').asfloat :=
      qrproduto.FieldByName('COMISSAO').asfloat;
    frmmodulo.qradic.Params.ParamByName('xCST').AsString :=
      qrproduto.FieldByName('CST').AsString;
    frmmodulo.qradic.Params.ParamByName('xALIQUOTA').asfloat :=
      qrproduto.FieldByName('ALIQUOTA').asfloat;

    frmmodulo.qradic.execsql;
    frmmodulo.conexao_adic.commit;
  end;

end;

procedure Tfrmproduto_farma.bfornecedor_codigoClick(Sender: TObject);
begin
  frmfornecedor_codigo := tfrmfornecedor_codigo.create(self);
  frmfornecedor_codigo.Lproduto.Caption := qrprodutoCODIGO.AsString + '-' +
    qrprodutoPRODUTO.AsString;
  frmfornecedor_codigo.showmodal;
end;

procedure Tfrmproduto_farma.ControledeValidades1Click(Sender: TObject);
begin
  frmproduto_validade := tfrmproduto_validade.create(self);
  frmproduto_validade.showmodal;

end;

procedure Tfrmproduto_farma.RzDBButtonEdit1ButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrCFOP.open;
    frmmodulo.qrCFOP.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    if (qrproduto.State = dsedit) or (qrproduto.State = dsinsert) then
      qrproduto.FieldByName('IND_CFOP').AsString := resultado_pesquisa1;
    // FRMMODULO.QRCONFIG.FIELDBYNAME('CFOP_VENDA_DENTRO_DESC').ASSTRING := RESULTADO_PESQUISA2;
  end;
end;

procedure Tfrmproduto_farma.RzDBButtonEdit1Exit(Sender: TObject);
begin
  if RzDBButtonEdit1.Text = '' then
  begin
    RzDBButtonEdit1ButtonClick(frmproduto_farma);
  end;
end;

procedure Tfrmproduto_farma.RzDBButtonEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

end.

/// /  ecpf.text := FormatMaskText('99.999.999/9999-99;0;_',ecpf.text);

  case qrproduto_mov.FieldByName
('movimento').asinteger of 0: wwDBGrid4.Canvas.FONT.Color := clFuchsia;
1: wwDBGrid4.Canvas.FONT.Color := CLBLUE;
2, 9: begin wwDBGrid4.Canvas.FONT.Color := clGREEN;
wwDBGrid4.Canvas.FONT.Style := [FSBOLD]; end;
3: wwDBGrid4.Canvas.FONT.Color := clred;
4: wwDBGrid4.Canvas.FONT.Color := clred;
5: wwDBGrid4.Canvas.FONT.Color := clred;
6: wwDBGrid4.Canvas.FONT.Color := clred;
7: wwDBGrid4.Canvas.FONT.Color := CLBLUE;
8: wwDBGrid4.Canvas.FONT.Color := CLBLUE;

11: wwDBGrid4.Canvas.FONT.Color := clGREEN;
12: wwDBGrid4.Canvas.FONT.Color := clred;
13: wwDBGrid4.Canvas.FONT.Color := clGREEN;
14: wwDBGrid4.Canvas.FONT.Color := clred;
15: wwDBGrid4.Canvas.FONT.Color := clGREEN;
16: wwDBGrid4.Canvas.FONT.Color := clred;

end;

{
  0:                                             'IMPLANTAÇÃO DE SALDO';
  1:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'COMPRA';
  2:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'VENDA';
  3:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'DEVOL.DE COMPRA';
  4:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'SAÍDA';
  5:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'BAIXA DE SERIAL';
  6:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'EXCLUSÃO SERIAL';
  7:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'DEVOL.DE VENDA';
  8:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'RETORNO SERIAL';
  9:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'VENDA EM O.S.';


}
wwDBGrid4.DefaultDrawDataCell
(Rect, Field, State);

// NULO = 0,10
// ENTRADA = 1,3,7,8,12,13,16
// SAIDA   = 2,4,5,6,9,11,14,15,17,18,19,20
