unit produto_ligth;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, TFlatPanelUnit, StdCtrls, Collection,
  RXDBCtrl, Buttons, Mask, DBCtrls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, Wwdbigrd, Wwdbgrid,
  wwdbedit, Wwdotdot, Wwdbcomb, Menus, RzEdit, RzDBEdit,
  wwdblook, Wwdbdlg, PageView, ExtDlgs, RzPanel, RzBtnEdt, AdvToolBar,
  AdvGlowButton, AdvShapeButton, RxToolEdit, RxCurrEdit, UCBase;

type

  Tfrmproduto_ligth = class(TForm)
    dsproduto: TDataSource;
    dscodbarra: TDataSource;
    qrcodbarra: TZQuery;
    PopupMenu1: TPopupMenu;
    AtualizarPDV1: TMenuItem;
    Industrializao1: TMenuItem;
    N2: TMenuItem;
    GerarInventrio1: TMenuItem;
    N3: TMenuItem;
    GrupoSubgrupo1: TMenuItem;
    Fornecedor1: TMenuItem;
    MarcaFabricanteLaboratrio1: TMenuItem;
    Alquotas1: TMenuItem;
    Receitas1: TMenuItem;
    NaturezadeOperaoCFOP1: TMenuItem;
    popnormal: TPopupMenu;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Relatrios1: TMenuItem;
    Regies1: TMenuItem;
    Fechar1: TMenuItem;
    qrproduto: TZQuery;
    qrprodutofornecedor: TStringField;
    qrprodutosubgrupo: TStringField;
    qrprodutoreceita: TStringField;
    popedicao: TPopupMenu;
    AlteraEstoque1: TMenuItem;
    Cancelar1: TMenuItem;
    N1: TMenuItem;
    ExcluirCdigodeBarras1: TMenuItem;
    VerCdigos1: TMenuItem;
    qrbarra: TZQuery;
    Localizar1: TMenuItem;
    baltera: TBitBtn;
    qrentrada: TZQuery;
    qrsaida: TZQuery;
    qrproduto_estoque: TZQuery;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    pprincipal: TPanel;
    PageSheet8: TPageSheet;
    PFOTO: TPanel;
    Label58: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label68: TLabel;
    Label70: TLabel;
    Image2: TImage;
    dsproduto_mov: TDataSource;
    qrproduto_mov: TZQuery;
    qrproduto_movcliente: TStringField;
    OpenPictureDialog1: TOpenPictureDialog;
    Incluir1: TMenuItem;
    Gravar1: TMenuItem;
    cadastro1: TMenuItem;
    historicoestoque1: TMenuItem;
    Panel2: TPanel;
    elocalizar: TEdit;
    Bevel3: TBevel;
    Label13: TLabel;
    combo_referencia: TComboBox;
    N4: TMenuItem;
    RefernciadaBusca1: TMenuItem;
    Panel3: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    bitbtn6: TAdvGlowButton;
    LMDButton1: TAdvGlowMenuButton;
    bfechar: TAdvGlowButton;
    pedicao: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel5: TBevel;
    Label2: TLabel;
    Label14: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    ecodigo: TEdit;
    combocodbarra: TComboBox;
    bcodigo: TAdvGlowButton;
    eproduto: TEdit;
    eunidade: TEdit;
    ealiq: TRxCalcEdit;
    enome_cst: TEdit;
    enome_subgrupo: TEdit;
    enome_fornecedor: TEdit;
    bcadastro: TBitBtn;
    GroupBox5: TGroupBox;
    Label6: TLabel;
    Label8: TLabel;
    ecusto: TRxCalcEdit;
    evenda: TRxCalcEdit;
    ECST: TRzButtonEdit;
    ESUBGRUPO: TRzButtonEdit;
    EFORNECEDOR: TRzButtonEdit;
    GroupBox1: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    epreco_promocao: TRxCalcEdit;
    einicio_promocao: TDateEdit;
    efim_promocao: TDateEdit;
    GroupBox8: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    ebalanca: TCheckBox;
    evalidade: TRxCalcEdit;
    ereceita: TRzButtonEdit;
    edata_cadastro: TDateEdit;
    blocalizar: TAdvGlowButton;
    FlatPanel1: TFlatPanel;
    Image1: TImage;
    FlatPanel2: TFlatPanel;
    Image3: TImage;
    FlatPanel11: TFlatPanel;
    Image4: TImage;
    FlatPanel13: TFlatPanel;
    Image6: TImage;
    FlatPanel14: TFlatPanel;
    RINICIAL: TRxCalcEdit;
    FlatPanel15: TFlatPanel;
    rentrada: TRxCalcEdit;
    FlatPanel16: TFlatPanel;
    rsaida: TRxCalcEdit;
    FlatPanel18: TFlatPanel;
    restoque: TRxCalcEdit;
    Panel1: TPanel;
    wwDBGrid1: TwwDBGrid;
    PageSheet6: TPageSheet;
    PageView2: TPageView;
    PageSheet11: TPageSheet;
    Bevel8: TBevel;
    GroupBox2: TGroupBox;
    Label42: TLabel;
    di_entrada: TDateEdit;
    df_entrada: TDateEdit;
    bfiltro_entrada: TAdvGlowButton;
    combo_entrada: TComboBox;
    GroupBox13: TGroupBox;
    eentrada: TLabel;
    wwDBGrid4: TwwDBGrid;
    PageSheet12: TPageSheet;
    Bevel9: TBevel;
    wwDBGrid5: TwwDBGrid;
    GroupBox14: TGroupBox;
    Label43: TLabel;
    di_saida: TDateEdit;
    df_saida: TDateEdit;
    bfiltro_saida: TAdvGlowButton;
    combo_saida: TComboBox;
    GroupBox15: TGroupBox;
    esaida: TLabel;
    bitbtn7: TAdvGlowButton;
    gestoque: TGroupBox;
    Label1: TLabel;
    eestoque: TRxCalcEdit;
    qrestoque: TZQuery;
    GroupBox7: TGroupBox;
    Label74: TLabel;
    Label75: TLabel;
    ldata_compra: TLabel;
    lnf: TLabel;
    GroupBox9: TGroupBox;
    ldata_venda: TLabel;
    dsmov_entrada: TDataSource;
    dsmov_saida: TDataSource;
    qrmov_entrada: TZQuery;
    qrmov_entradaMOV: TStringField;
    qrmov_entradacliente: TStringField;
    qrmov_saida: TZQuery;
    StringField13: TStringField;
    StringField14: TStringField;
    Bevel1: TBevel;
    rsituacao: TCheckBox;
    qrduplo: TZQuery;
    MovimentarEstoque1: TMenuItem;
    qroperator: TZQuery;
    Label5: TLabel;
    combo_tipo: TComboBox;
    episcofins: TComboBox;
    Label89: TLabel;
    QRRENTABILIDADE: TZQuery;
    dsrentabilidade: TDataSource;
    qrproduto_loc: TZQuery;
    N5: TMenuItem;
    Exportar1: TMenuItem;
    Importar1: TMenuItem;
    bfornecedor_codigo: TAdvGlowButton;
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
    qrproduto_movCODIGO: TWideStringField;
    qrproduto_movCODNOTA: TWideStringField;
    qrproduto_movCODPRODUTO: TWideStringField;
    qrproduto_movUNITARIO: TFloatField;
    qrproduto_movTOTAL: TFloatField;
    qrproduto_movICMS: TFloatField;
    qrproduto_movIPI: TFloatField;
    qrproduto_movCFOP: TWideStringField;
    qrproduto_movDATA: TDateTimeField;
    qrproduto_movNUMERONOTA: TWideStringField;
    qrproduto_movCODCLIENTE: TWideStringField;
    qrproduto_movDESCONTO: TFloatField;
    qrproduto_movACRESCIMO: TFloatField;
    qrproduto_movMOVIMENTO: TIntegerField;
    qrproduto_movCODVENDEDOR: TWideStringField;
    qrproduto_movCODGRADE: TWideStringField;
    qrproduto_movSERIAL: TWideStringField;
    qrproduto_movUNIDADE: TWideStringField;
    qrproduto_movQTDE: TFloatField;
    qrproduto_movVALOR_ICMS: TFloatField;
    qrproduto_movICMS_REDUZIDO: TFloatField;
    qrproduto_movBASE_CALCULO: TFloatField;
    qrproduto_movVALOR_IPI: TFloatField;
    qrproduto_movSITUACAO: TIntegerField;
    qrproduto_movECF_SERIE: TWideStringField;
    qrproduto_movECF_CAIXA: TWideStringField;
    qrproduto_movCODALIQUOTA: TWideStringField;
    qrproduto_movCUPOM_NUMERO: TWideStringField;
    qrproduto_movCUPOM_MODELO: TWideStringField;
    qrproduto_movCUPOM_ITEM: TWideStringField;
    qrproduto_movALIQUOTA: TFloatField;
    qrproduto_movCST: TWideStringField;
    qrproduto_movLOTE_FABRICACAO: TWideStringField;
    qrproduto_movMOVIMENTO_ESTOQUE: TFloatField;
    qrproduto_movLANCADO: TIntegerField;
    qrproduto_movVENCIMENTO: TDateTimeField;
    qrproduto_movCODBARRA: TWideStringField;
    qrproduto_movMARGEM_DESCONTO: TFloatField;
    qrproduto_movCREDITO_ICMS: TFloatField;
    qrproduto_movPIS: TFloatField;
    qrproduto_movCOFINS: TFloatField;
    qrproduto_movLOJA: TWideStringField;
    qrproduto_movCODSUBGRUPO: TWideStringField;
    qrproduto_movTIPO: TWideStringField;
    qrproduto_movCODUSUARIO: TWideStringField;
    qrproduto_movORIGEM: TWideStringField;
    qrproduto_movDESTINO: TWideStringField;
    qrproduto_movPRODUTO: TWideStringField;
    qrproduto_movCODFILIAL: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure elocalizarKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bfecharClick(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure blocsubgrupoClick(Sender: TObject);
    procedure blocfornecedorClick(Sender: TObject);
    procedure esubgrupoExit(Sender: TObject);
    procedure efornecedorExit(Sender: TObject);
    procedure Gravar1Click(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure elocalizarEnter(Sender: TObject);
    procedure qrprodutoAfterInsert(DataSet: TDataSet);
    procedure qrprodutoAfterEdit(DataSet: TDataSet);
    procedure bexcluirClick(Sender: TObject);
    procedure qrprodutoAfterPost(DataSet: TDataSet);
    procedure qrprodutoAfterCancel(DataSet: TDataSet);
    procedure balterarClick(Sender: TObject);
    procedure Regies1Click(Sender: TObject);
    procedure bcodigoClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure GrupoSubgrupo1Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure MarcaFabricanteLaboratrio1Click(Sender: TObject);
    procedure Alquotas1Click(Sender: TObject);
    procedure Receitas1Click(Sender: TObject);
    procedure NaturezadeOperaoCFOP1Click(Sender: TObject);
    procedure qrcodbarraBeforePost(DataSet: TDataSet);
    procedure AtualizarPDV1Click(Sender: TObject);
    procedure DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure ecstExit(Sender: TObject);
    procedure BLOCCSTClick(Sender: TObject);
    procedure qrprodutoBeforePost(DataSet: TDataSet);
    procedure Industrializao1Click(Sender: TObject);
    procedure GerarInventrio1Click(Sender: TObject);
    procedure ecodigoEnter(Sender: TObject);
    procedure ecodigoExit(Sender: TObject);
    procedure ecodigoKeyPress(Sender: TObject; var Key: Char);
    procedure eunidadeExit(Sender: TObject);
    procedure combocodbarraExit(Sender: TObject);
    procedure combocodbarraEnter(Sender: TObject);
    procedure edata_cadastroExit(Sender: TObject);
    procedure epreco_promocaoExit(Sender: TObject);
    procedure einicio_promocaoExit(Sender: TObject);
    procedure efim_promocaoExit(Sender: TObject);
    procedure ereceitaExit(Sender: TObject);
    procedure bcadastroClick(Sender: TObject);
    procedure eestoqueExit(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure qrproduto_movCalcFields(DataSet: TDataSet);
    procedure wwDBGrid5DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure PageView1Change(Sender: TObject);
    procedure Incluir1Click(Sender: TObject);
    procedure Alterar1Click(Sender: TObject);
    procedure cadastro1Click(Sender: TObject);
    procedure historicoestoque1Click(Sender: TObject);
    procedure RefernciadaBusca1Click(Sender: TObject);
    procedure ESUBGRUPOButtonClick(Sender: TObject);
    procedure ereceitaButtonClick(Sender: TObject);
    procedure EFORNECEDORButtonClick(Sender: TObject);
    procedure ECSTButtonClick(Sender: TObject);
    procedure ereceitaKeyPress(Sender: TObject; var Key: Char);
    procedure ECSTKeyPress(Sender: TObject; var Key: Char);
    procedure elocalizarExit(Sender: TObject);
    procedure ESUBGRUPOKeyPress(Sender: TObject; var Key: Char);
    procedure EFORNECEDORKeyPress(Sender: TObject; var Key: Char);
    procedure efim_promocaoKeyPress(Sender: TObject; var Key: Char);
    procedure eestoqueKeyPress(Sender: TObject; var Key: Char);
    procedure eestoqueEnter(Sender: TObject);
    procedure di_entradaKeyPress(Sender: TObject; var Key: Char);
    procedure df_entradaKeyPress(Sender: TObject; var Key: Char);
    procedure combo_entradaKeyPress(Sender: TObject; var Key: Char);
    procedure bfiltro_entradaClick(Sender: TObject);
    procedure di_saidaKeyPress(Sender: TObject; var Key: Char);
    procedure df_saidaKeyPress(Sender: TObject; var Key: Char);
    procedure bfiltro_saidaClick(Sender: TObject);
    procedure PageView2Change(Sender: TObject);
    procedure combo_saidaKeyPress(Sender: TObject; var Key: Char);
    procedure qrmov_saidaCalcFields(DataSet: TDataSet);
    procedure qrmov_entradaCalcFields(DataSet: TDataSet);
    procedure eprodutoExit(Sender: TObject);
    procedure MovimentarEstoque1Click(Sender: TObject);
    procedure combo_tipoKeyPress(Sender: TObject; var Key: Char);
    procedure ealiqExit(Sender: TObject);
    procedure elocprodutoButtonClick(Sender: TObject);
    procedure Exportar1Click(Sender: TObject);
    procedure Importar1Click(Sender: TObject);
    procedure bfornecedor_codigoClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_ligth: Tfrmproduto_ligth;
  codigo: string;
  estoque_anterior: real;
  preco_venda_anterior: double;
  vrecno: integer;
  vopcao: integer;
  vcodbarra_anterior: string;

implementation

uses modulo, loc_produto_ligth, principal, lista_produto2, loc_subgrupo,
  loc_fornecedor, loc_aliquota, loc_receita, grupo, fornecedor, marca,
  aliquota, receita, cfop, produto_pdv, xloc_cst,
  industrializacao, inventario, webcam, produto_movimentar, xloc_produto,
  produto_exportar, produto_importar, fornecedor_codigo;

{$R *.dfm}

procedure Tfrmproduto_ligth.FormShow(Sender: TObject);
begin
  // desbilitar rentabilidade se nao for mercado

  di_entrada.Text := '01/' + copy(datetostr(date), 4, 7);
  df_entrada.date := frmprincipal.UltimoDiaMes(date);

  di_saida.Text := '01/' + copy(datetostr(date), 4, 7);
  df_saida.date := frmprincipal.UltimoDiaMes(date);

  frmmodulo.qrreceita.close;
  frmmodulo.qrreceita.sql.clear;
  frmmodulo.qrreceita.sql.add('select * from c000024 order by receita');
  frmmodulo.qrreceita.open;
  frmmodulo.qrreceita.IndexFieldNames := 'receita';

  frmmodulo.qrSUBGRUPO.close;
  frmmodulo.qrSUBGRUPO.sql.clear;
  frmmodulo.qrSUBGRUPO.sql.add('select * from c000018 order by SUBGRUPO');
  frmmodulo.qrSUBGRUPO.open;
  frmmodulo.qrSUBGRUPO.IndexFieldNames := 'SUBGRUPO';

  frmmodulo.qrFORNECEDOR.close;
  frmmodulo.qrFORNECEDOR.sql.clear;
  frmmodulo.qrFORNECEDOR.sql.add('select * from c000009 order by nome');
  frmmodulo.qrFORNECEDOR.open;
  frmmodulo.qrFORNECEDOR.IndexFieldNames := 'nome';

  if busca_produto = 1 then
  begin
    qrproduto.close;
    qrproduto.sql.clear;
    qrproduto.sql.add('select * from c000025 where codigo = ''' +
      busca_produto_codigo + '''');
    qrproduto.open;
    balterarClick(frmproduto_ligth);
  end
  else
  begin
    qrproduto.close;
    qrproduto.sql.clear;
    qrproduto.sql.add('select * from c000025 order by codigo');
    qrproduto.open;
    qrproduto.first;
  end;

  frmmodulo.qrfiscal_cst.close;
  frmmodulo.qrfiscal_cst.sql.clear;
  frmmodulo.qrfiscal_cst.sql.add('SELECT * FROM C000083 WHERE CODIGO = ''' +
    ECST.Text + '''');
  frmmodulo.qrfiscal_cst.open;
  if frmmodulo.qrfiscal_cst.RecordCount > 0 then
  begin
    ECST.Text := frmmodulo.qrfiscal_cst.fieldbyname('codigo').asstring;
    enome_cst.Text := frmmodulo.qrfiscal_cst.fieldbyname('situacao').asstring;
  end;

  qrcodbarra.close;
  qrcodbarra.sql.clear;
  qrcodbarra.sql.add('select * from c000055');
  qrcodbarra.open;

  Panel1.top := 39;
  Panel1.left := 212;

  bcadastroClick(frmproduto_ligth);

  ecusto.DisplayFormat := mascara_valor;
  evenda.DisplayFormat := mascara_valor;

  RINICIAL.DisplayFormat := mascara_qtde;
  rentrada.DisplayFormat := mascara_qtde;
  rsaida.DisplayFormat := mascara_qtde;
  restoque.DisplayFormat := mascara_qtde;

  // batualiza_estoqueClick(frmproduto_ligth);
  elocalizar.setfocus;

end;

procedure Tfrmproduto_ligth.elocalizarKeyPress(Sender: TObject; var Key: Char);
var
  a: string;
  i: integer;
begin
  if Key = #13 then
  begin

    // pprincipal.Enabled := true;

    if elocalizar.Text = '' then
    begin
      // qrproduto.edit;
      // eproduto.setfocus;
      elocalizar.setfocus;
      balterarClick(frmproduto_ligth);
      PageView1.ActivePageIndex := 0;

      // batualiza_estoqueClick(frmproduto_ligth);

      eproduto.setfocus;
      exit;
    end;

    a := copy(elocalizar.Text, 1, 1);
    for i := 1 to Length(a) do
    begin

      if (a[i] in ['A' .. 'Z']) or (a[i] in ['a' .. 'z']) then
      begin
        frmloc_produto_ligth := tfrmloc_produto_ligth.create(self);
        frmloc_produto_ligth.qrproduto.close;
        frmloc_produto_ligth.qrproduto.sql.clear;
        if combo_referencia.itemindex = 0 then
          frmloc_produto_ligth.qrproduto.sql.add
            ('select * from c000025 where upper(produto) like ''' +
            ansiuppercase(elocalizar.Text) + '%'' order by produto')
        else
          frmloc_produto_ligth.qrproduto.sql.add
            ('select * from c000025 where upper(produto) like ''%' +
            ansiuppercase(elocalizar.Text) + '%'' order by produto');

        frmloc_produto_ligth.qrproduto.open;
        if frmloc_produto_ligth.qrproduto.RecordCount > 0 then
        begin
          if frmloc_produto_ligth.qrproduto.RecordCount = 1 then
          begin
            qrproduto.close;
            qrproduto.sql.clear;
            qrproduto.sql.add('select * from c000025 where codigo = ''' +
              frmloc_produto_ligth.qrproduto.fieldbyname('codigo')
              .asstring + '''');
            qrproduto.open;
            frmloc_produto_ligth.Destroy;
            bcadastroClick(frmproduto_ligth);
            balterarClick(frmproduto_ligth);
            PageView1.ActivePageIndex := 0;
            eproduto.setfocus;
            exit;
          end
          else
          begin
            frmloc_produto_ligth.ShowModal;
            if codigo = '' then
            begin
              elocalizar.setfocus;
              exit;
            end
            else
            begin
              qrproduto.close;
              qrproduto.sql.clear;
              qrproduto.sql.add('select * from c000025 where codigo = ''' +
                codigo + '''');
              qrproduto.open;
              bcadastroClick(frmproduto_ligth);
              balterarClick(frmproduto_ligth);
              PageView1.ActivePageIndex := 0;
              eproduto.setfocus;
              exit;
            end;
          end;
        end
        else
        begin
          APPLICATION.MESSAGEBOX('Produto não encontrado!', 'Atenção',
            mb_ok + mb_iconerror);
          elocalizar.setfocus;
          exit;
        end;
      end;
    end;

    qrproduto.close;
    qrproduto.sql.clear;
    qrproduto.sql.add('select * from c000025 where codigo = ''' +
      elocalizar.Text + ''' or codbarra =''' + copy(elocalizar.Text, 1,
      13) + '''');
    qrproduto.open;
    if qrproduto.RecordCount > 0 then
    begin
      // qrproduto.edit;
      // eproduto.setfocus;

      bcadastroClick(frmproduto_ligth);
      // elocalizar.SetFocus;
      balterarClick(frmproduto_ligth);
      PageView1.ActivePageIndex := 0;
      // batualiza_estoqueClick(frmproduto_ligth);
      eproduto.setfocus;
    end
    else
    begin
      qrcodbarra.close;
      qrcodbarra.sql.clear;
      qrcodbarra.sql.add('select * from c000055 where codbarra = ''' +
        elocalizar.Text + '''');
      qrcodbarra.open;
      if qrcodbarra.RecordCount > 0 then
      begin
        qrproduto.close;
        qrproduto.sql.clear;
        qrproduto.sql.add('select * from c000025 where codigo = ''' +
          qrcodbarra.fieldbyname('codproduto').asstring + '''');
        qrproduto.open;
        if qrproduto.RecordCount > 0 then
        begin
          // qrproduto.edit;
          // eproduto.setfocus;

          bcadastroClick(frmproduto_ligth);
          // elocalizar.SetFocus;
          balterarClick(frmproduto_ligth);
          PageView1.ActivePageIndex := 0;
          // batualiza_estoqueClick(frmproduto_ligth);

          eproduto.setfocus;

        end
        else
        begin
          APPLICATION.MESSAGEBOX('Produto não encontrado!!', 'AViso',
            mb_ok + MB_ICONWARNING);
          elocalizar.setfocus;
        end;
      end
      else
      begin
        APPLICATION.MESSAGEBOX('Produto não encontrado!!!', 'AViso',
          mb_ok + MB_ICONWARNING);
        elocalizar.setfocus;
      end;
    end;
    // elocalizar.SetFocus;
  end;

end;

procedure Tfrmproduto_ligth.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qrproduto.close;
  Action := cafree;
end;

procedure Tfrmproduto_ligth.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto_ligth.bincluirClick(Sender: TObject);
begin
  eestoque.value := 0;
  vopcao := 1;

  estoque_anterior := 0;
  vrecno := qrproduto.RecNo;

  qrproduto.insert;

  combo_tipo.itemindex := 0;
  rsituacao.checked := false;
  eproduto.Text := '';
  eunidade.Text := 'UN';
  ealiq.value := 17;
  ESUBGRUPO.Text := '';
  enome_subgrupo.Text := '';
  EFORNECEDOR.Text := '';
  enome_fornecedor.Text := '';
  eestoque.value := 0;
  ecusto.value := 0;
  evenda.value := 0;
  ECST.Text := '000';

  combocodbarra.Text := '';
  ebalanca.checked := false;
  evalidade.Text := '';
  ereceita.Text := '';
  edata_cadastro.date := date;
  epreco_promocao.value := 0;
  einicio_promocao.Text := '';
  efim_promocao.Text := '';

  ecodigo.Text := frmprincipal.codifica('000025');

  gestoque.visible := true;

  frmproduto_ligth.PopupMenu := popedicao;
  PageView1.ActivePageIndex := 0;
  pprincipal.Enabled := true;
  PFOTO.Enabled := true;

  RINICIAL.value := 0;
  rentrada.value := 0;
  rsaida.value := 0;
  restoque.value := 0;

  combocodbarra.setfocus;

end;

procedure Tfrmproduto_ligth.BitBtn6Click(Sender: TObject);
begin
  frmlista_produto2 := tfrmlista_produto2.create(self);
  frmlista_produto2.ShowModal;
end;

procedure Tfrmproduto_ligth.blocsubgrupoClick(Sender: TObject);
begin
  if (qrproduto.State <> dsinsert) then
  begin
    if (qrproduto.State <> dsedit) then
    begin
      qrproduto.edit;
    end;
  end;
  frmloc_subgrupo := tfrmloc_subgrupo.create(self);
  frmloc_subgrupo.ShowModal;
  // qrproduto.fieldbyname('codsubgrupo').asstring := frmmodulo.qrsubgrupo.fieldbyname('codigo').asstring;
  ESUBGRUPO.Text := frmmodulo.qrSUBGRUPO.fieldbyname('codigo').asstring;
  enome_subgrupo.Text := frmmodulo.qrSUBGRUPO.fieldbyname('subgrupo').asstring;
  EFORNECEDOR.setfocus;
end;

procedure Tfrmproduto_ligth.blocfornecedorClick(Sender: TObject);
begin
  if (qrproduto.State <> dsinsert) then
  begin
    if (qrproduto.State <> dsedit) then
    begin
      qrproduto.edit;
    end;
  end;
  frmloc_fornecedor := tfrmloc_fornecedor.create(self);
  frmloc_fornecedor.ShowModal;
  // qrproduto.fieldbyname('codfornecedor').asstring := frmmodulo.qrfornecedor.fieldbyname('codigo').asstring;
  EFORNECEDOR.Text := frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring;
  enome_fornecedor.Text := frmmodulo.qrFORNECEDOR.fieldbyname('nome').asstring;
  ecusto.setfocus;

end;

procedure Tfrmproduto_ligth.esubgrupoExit(Sender: TObject);
begin

  TEdit(Sender).Color := clwindow;
  if (qrproduto.State <> dsinsert) then
  begin
    if (qrproduto.State <> dsedit) then
    begin
      qrproduto.edit;
    end;
  end;
  TEdit(Sender).Color := clwindow;
  if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
  begin
    ESUBGRUPO.Text := frmprincipal.zerarcodigo(ESUBGRUPO.Text, 6);
    if ESUBGRUPO.Text <> '000000' then
    begin
      if not frmprincipal.Locregistro(frmmodulo.qrSUBGRUPO, ESUBGRUPO.Text,
        'codigo') then
      begin
        ESUBGRUPOButtonClick(frmproduto_ligth);
        enome_subgrupo.Text := frmmodulo.qrSUBGRUPO.fieldbyname
          ('subgrupo').asstring;
      end
      else
      begin
        enome_subgrupo.Text := frmmodulo.qrSUBGRUPO.fieldbyname
          ('subgrupo').asstring;
        // efornecedor.setfocus;
      end;
    end
    else
      ESUBGRUPOButtonClick(frmproduto_ligth);
  end;
end;

procedure Tfrmproduto_ligth.efornecedorExit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
  if (qrproduto.State <> dsinsert) then
  begin
    if (qrproduto.State <> dsedit) then
    begin
      qrproduto.edit;
    end;
  end;

  if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
  begin
    EFORNECEDOR.Text := frmprincipal.zerarcodigo(EFORNECEDOR.Text, 6);
    if EFORNECEDOR.Text <> '000000' then
    begin
      if not frmprincipal.Locregistro(frmmodulo.qrFORNECEDOR, EFORNECEDOR.Text,
        'codigo') then
      begin
        EFORNECEDORButtonClick(frmproduto_ligth);
        enome_fornecedor.Text := frmmodulo.qrFORNECEDOR.fieldbyname
          ('nome').asstring;
      end
      else
      begin
        enome_fornecedor.Text := frmmodulo.qrFORNECEDOR.fieldbyname
          ('nome').asstring;

      end;
    end
    else
      EFORNECEDORButtonClick(frmproduto_ligth);
  end;
end;

procedure Tfrmproduto_ligth.Gravar1Click(Sender: TObject);
begin
  bgravarClick(frmproduto_ligth);
end;

procedure Tfrmproduto_ligth.bgravarClick(Sender: TObject);
begin

  if evenda.value = 0 then
  begin
    showmessage('Favor Informar O Preço de Venda!');
    evenda.setfocus;
    exit;
  end;

  if eproduto.Text = '' then
  begin
    APPLICATION.MESSAGEBOX('Favor informar o nome do produto!', 'Atenção',
      mb_ok + mb_iconerror);
    eproduto.Text;
    exit;
  end;

  if episcofins.Text = '' then
  begin
    APPLICATION.MESSAGEBOX('Favor informar o PIS/COFINS do produto!', 'Atenção',
      mb_ok + mb_iconerror);
    episcofins.setfocus;
    exit;
  end;

  try

    if (qrproduto.State = dsinsert) then
    begin
      qrproduto.fieldbyname('codigo').asstring := ecodigo.Text;
      qrproduto.fieldbyname('usa_serial').asinteger := 0;
      qrproduto.fieldbyname('usa_grade').asinteger := 0;
      frmprincipal.logUC('Incluiu Produto - ' + eproduto.Text, 1);
    end;

    if (qrproduto.State = dsedit) then
    begin
      frmprincipal.logUC('Alterou Produto - ' + eproduto.Text, 2);
    end;

    qrproduto.fieldbyname('produto').asstring := eproduto.Text;
    qrproduto.fieldbyname('unidade').asstring := eunidade.Text;
    qrproduto.fieldbyname('aliquota').AsFloat := ealiq.value;
    qrproduto.fieldbyname('codsubgrupo').asstring := ESUBGRUPO.Text;
    qrproduto.fieldbyname('codfornecedor').asstring := EFORNECEDOR.Text;
    qrproduto.fieldbyname('estoque').AsFloat := eestoque.value;
    qrproduto.fieldbyname('precocusto').AsFloat := ecusto.value;
    qrproduto.fieldbyname('precovenda').AsFloat := evenda.value;
    qrproduto.fieldbyname('cst').asstring := ECST.Text;
    qrproduto.fieldbyname('piscofins').asstring := episcofins.Text;
    qrproduto.fieldbyname('codbarra').asstring := combocodbarra.Text;
    if ebalanca.checked = true then
      qrproduto.fieldbyname('usa_balanca').asinteger := 1;
    if ebalanca.checked = false then
      qrproduto.fieldbyname('usa_balanca').asinteger := 2;
    qrproduto.fieldbyname('validade').asstring := evalidade.Text;
    qrproduto.fieldbyname('codreceita').asstring := ereceita.Text;
    qrproduto.fieldbyname('data_cadastro').AsDateTime := edata_cadastro.date;
    qrproduto.fieldbyname('preco_promocao').AsFloat := epreco_promocao.value;
    qrproduto.fieldbyname('data_promocao').AsDateTime := einicio_promocao.date;
    qrproduto.fieldbyname('fim_promocao').AsDateTime := efim_promocao.date;

    qrproduto.fieldbyname('tipo').asstring := 'VENDA';
    case combo_tipo.itemindex of
      0:
        qrproduto.fieldbyname('tipo').asstring := 'VENDA';
      1:
        qrproduto.fieldbyname('tipo').asstring := 'CONSUMO';
      2:
        qrproduto.fieldbyname('tipo').asstring := 'Materia-Prima';
      3:
        qrproduto.fieldbyname('tipo').asstring := 'IMOBILIZADO';
    end;

    if rsituacao.checked then
      qrproduto.fieldbyname('situacao').asinteger := 1
    else
      qrproduto.fieldbyname('situacao').asinteger := 0;

    qrproduto.Post;
    frmmodulo.Conexao.Commit;

    // elocalizar.setfocus;
  except
    bcancelarClick(frmproduto_ligth);
  end;

  if busca_produto = 1 then
  begin
    busca_produto := 0;
    close;
  end;

  PFOTO.Enabled := false;
  PageView1.ActivePageIndex := 0;

  pprincipal.Enabled := false;
  PFOTO.Enabled := false;

  gestoque.visible := false;

  frmproduto_ligth.PopupMenu := popnormal;

  bcadastroClick(frmproduto_ligth);

  elocalizar.setfocus;

end;

procedure Tfrmproduto_ligth.Cancelar1Click(Sender: TObject);
begin
  bcancelarClick(frmproduto_ligth);

end;

procedure Tfrmproduto_ligth.bcancelarClick(Sender: TObject);
begin
  gestoque.visible := false;

  PageView1.ActivePageIndex := 0;
  PFOTO.Enabled := false;

  qrproduto.Cancel;
  frmmodulo.Conexao.Rollback;

  if busca_produto = 1 then
  begin
    busca_produto := 0;
    close;
  end;

  // qrproduto.Open;
  qrproduto.RecNo := vrecno;

  frmproduto_ligth.PopupMenu := popnormal;

  bcadastroClick(frmproduto_ligth);
  // batualiza_estoqueClick(frmproduto_ligth);

  balterar.setfocus;
  pprincipal.Enabled := false;
  PFOTO.Enabled := false;
  elocalizar.setfocus;

end;

procedure Tfrmproduto_ligth.elocalizarEnter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;

  if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
  begin
    qrproduto.Cancel;
    frmmodulo.Conexao.Rollback;
  end;

end;

procedure Tfrmproduto_ligth.qrprodutoAfterInsert(DataSet: TDataSet);
begin
  // frmproduto_ligth.PopupMenu := popedicao;
  pedicao.visible := true;
  pedicao.Align := alClient;
  // bcodigo.visible := true;
end;

procedure Tfrmproduto_ligth.qrprodutoAfterEdit(DataSet: TDataSet);
begin
  // frmproduto_ligth.PopupMenu := popedicao;
  pedicao.visible := true;
  pedicao.Align := alClient;
  // bcodigo.visible := true;

end;

procedure Tfrmproduto_ligth.bexcluirClick(Sender: TObject);
begin
  vrecno := qrproduto.RecNo;

  if frmprincipal.autentica('Excluir PRODUTO', 4) then
  begin
    qrcodbarra.close;
    qrcodbarra.sql.clear;
    qrcodbarra.sql.add('SELECT * from c000055 where codproduto = ''' +
      qrproduto.fieldbyname('codigo').asstring + '''');
    qrcodbarra.open;
    while qrcodbarra.RecordCount <> 0 do
    begin
      qrcodbarra.DELETE;
    end;

    frmmodulo.qrproduto_mov.close;
    frmmodulo.qrproduto_mov.sql.clear;
    frmmodulo.qrproduto_mov.sql.add
      ('select * from c000032 where codproduto = ''' + qrproduto.fieldbyname
      ('codigo').asstring + '''');
    frmmodulo.qrproduto_mov.open;

    if frmmodulo.qrproduto_mov.RecordCount > 1 then
    begin
      APPLICATION.MESSAGEBOX
        ('Este produto possue movimentações entradas/saídas! Impossível excluí-lo!',
        'Atenção', mb_ok + MB_ICONWARNING);
      exit;
    end
    else
    begin
      frmprincipal.logUC('Excluiu Produto - ' + qrproduto.fieldbyname('PRODUTO')
        .asstring, 3);

      qrproduto.DELETE;
      frmmodulo.Conexao.Commit;
      qrproduto.RecNo := vrecno - 1;
      bcancelarClick(frmproduto_ligth);
    end;
  end
  else
  begin
    APPLICATION.MESSAGEBOX('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmproduto_ligth.qrprodutoAfterPost(DataSet: TDataSet);
begin
  frmproduto_ligth.PopupMenu := popnormal;
  pedicao.visible := false;
  pedicao.Align := alClient;
  // bcodigo.visible := false;
  Panel1.visible := false;
end;

procedure Tfrmproduto_ligth.qrprodutoAfterCancel(DataSet: TDataSet);
begin
  frmproduto_ligth.PopupMenu := popnormal;
  pedicao.visible := false;
  pedicao.Align := alClient;
  // bcodigo.visible := false;
  Panel1.visible := false;

end;

procedure Tfrmproduto_ligth.balterarClick(Sender: TObject);
begin

  vopcao := 2;

  pprincipal.Enabled := true;
  PFOTO.Enabled := true;
  vrecno := qrproduto.RecNo;

  estoque_anterior := frmmodulo.qrproduto.fieldbyname('estoque').AsFloat;
  preco_venda_anterior := frmmodulo.qrproduto.fieldbyname('precovenda').AsFloat;

  vcodbarra_anterior := frmmodulo.qrproduto.fieldbyname('codbarra').asstring;

  qrproduto.edit;

  gestoque.visible := false;

  PageView1.ActivePageIndex := 0;

  frmproduto_ligth.PopupMenu := popedicao;

  eproduto.setfocus;
end;

procedure Tfrmproduto_ligth.Regies1Click(Sender: TObject);
begin
  LMDButton1.Click;
end;

procedure Tfrmproduto_ligth.bcodigoClick(Sender: TObject);
begin

  try
    if combocodbarra.Text = 'VARIOS' then
    begin
      qrcodbarra.close;
      qrcodbarra.sql.clear;
      qrcodbarra.sql.add('select * from c000055 where codproduto = ''' +
        qrproduto.fieldbyname('codigo').asstring + ''' order by codbarra');
      qrcodbarra.open;

      Panel1.visible := true;

      wwDBGrid1.setfocus;
    end;
  except
  end;

end;

procedure Tfrmproduto_ligth.BitBtn7Click(Sender: TObject);
begin
  if APPLICATION.MESSAGEBOX
    ('Tem certeza que deseja exlcuir este código de barras?', 'Aviso',
    mb_yesno + mb_iconquestion) = idyes then
  begin
    qrcodbarra.DELETE;
  end;
end;

procedure Tfrmproduto_ligth.edata_cadastroEnter(Sender: TObject);
begin
  TDateEdit(Sender).Color := $00A0FAF8;
  if edata_cadastro.Text = '  /  /    ' then
    edata_cadastro.date := date;
end;

procedure Tfrmproduto_ligth.BitBtn1Click(Sender: TObject);
begin
  frmloc_receita := tfrmloc_receita.create(self);
  frmloc_receita.ShowModal;
  // qrproduto.fieldbyname('codreceita').asstring := frmmodulo.qrreceita.fieldbyname('codigo').asstring;
  ereceita.Text := frmmodulo.qrreceita.fieldbyname('codigo').asstring;
  edata_cadastro.setfocus;
end;

procedure Tfrmproduto_ligth.GrupoSubgrupo1Click(Sender: TObject);
begin
  frmgrupo := tfrmgrupo.create(self);
  frmgrupo.ShowModal;
  elocalizar.setfocus;
end;

procedure Tfrmproduto_ligth.Fornecedor1Click(Sender: TObject);
begin
  frmfornecedor := tfrmfornecedor.create(self);
  frmfornecedor.ShowModal;
  elocalizar.setfocus;
end;

procedure Tfrmproduto_ligth.MarcaFabricanteLaboratrio1Click(Sender: TObject);
begin
  frmmarca := tfrmmarca.create(self);
  frmmarca.ShowModal;
  elocalizar.setfocus;
end;

procedure Tfrmproduto_ligth.Alquotas1Click(Sender: TObject);
begin
  frmaliquota := tfrmaliquota.create(self);
  frmaliquota.ShowModal;
  elocalizar.setfocus;
end;

procedure Tfrmproduto_ligth.Receitas1Click(Sender: TObject);
begin
  frmreceita := tfrmreceita.create(self);
  frmreceita.ShowModal;
  elocalizar.setfocus;
end;

procedure Tfrmproduto_ligth.NaturezadeOperaoCFOP1Click(Sender: TObject);
begin
  frmcfop := tfrmcfop.create(self);
  frmcfop.ShowModal;
  elocalizar.setfocus;
end;

procedure Tfrmproduto_ligth.qrcodbarraBeforePost(DataSet: TDataSet);
begin

  if qrcodbarra.State = dsinsert then
  begin

    qrcodbarra.fieldbyname('CODIGO').asstring :=
      frmprincipal.codifica('000055');

    qrbarra.close;
    qrbarra.sql.clear;
    qrbarra.sql.add('select * from c000055 where codbarra = ''' +
      qrcodbarra.fieldbyname('codbarra').asstring + '''');
    qrbarra.open;
    if qrbarra.RecordCount > 0 then
    begin
      APPLICATION.MESSAGEBOX('Existe um produto cadastrado com este Código',
        'Atenção', mb_ok + MB_ICONWARNING);
      Abort;
    end;

  end;
  qrcodbarra.fieldbyname('codproduto').asstring :=
    qrproduto.fieldbyname('codigo').asstring;

end;

procedure Tfrmproduto_ligth.AtualizarPDV1Click(Sender: TObject);
begin
  frmproduto_pdv := tfrmproduto_pdv.create(self);
  frmproduto_pdv.ShowModal;
end;

procedure Tfrmproduto_ligth.DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmproduto_ligth.ecstExit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
  if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
  begin
    if ECST.Text <> '' then
    begin
      frmmodulo.qrfiscal_cst.close;
      frmmodulo.qrfiscal_cst.sql.clear;
      frmmodulo.qrfiscal_cst.sql.add('SELECT * FROM C000083 WHERE CODIGO = ''' +
        ECST.Text + '''');
      frmmodulo.qrfiscal_cst.open;
      if frmmodulo.qrfiscal_cst.RecordCount > 0 then
      begin
        // QRPRODUTO.fieldbyname('CST').asstring := frmmodulo.qrfiscal_cst.fieldbyname('codigo').asstring;
        ECST.Text := frmmodulo.qrfiscal_cst.fieldbyname('codigo').asstring;
        enome_cst.Text := frmmodulo.qrfiscal_cst.fieldbyname
          ('situacao').asstring;
      end
      else
      begin
        FRMXLOC_CST := TFRMXLOC_CST.create(self);
        FRMXLOC_CST.ShowModal;
        // QRPRODUTO.fieldbyname('CST').asstring := RESULTADO_PESQUISA1;
        ECST.Text := RESULTADO_PESQUISA1;
        enome_cst.Text := RESULTADO_PESQUISA2;
        ealiq.setfocus;
      end;
    end
    else
      ECSTButtonClick(frmproduto_ligth);
  end;
end;

procedure Tfrmproduto_ligth.BLOCCSTClick(Sender: TObject);
begin
  FRMXLOC_CST := TFRMXLOC_CST.create(self);
  FRMXLOC_CST.ShowModal;
  // QRPRODUTO.fieldbyname('CST').asstring := RESULTADO_PESQUISA1;
  ECST.Text := RESULTADO_PESQUISA1;
  enome_cst.Text := RESULTADO_PESQUISA2;

  ealiq.setfocus;

end;

procedure Tfrmproduto_ligth.qrprodutoBeforePost(DataSet: TDataSet);
begin
  if eproduto.Text = '' then
  begin
    showmessage('Favor Informar O Nome do Produto!');
    eproduto.setfocus;
    Abort;
  end;

  qrproduto.fieldbyname('ultima_alteracao').AsDateTime := date;
end;

procedure Tfrmproduto_ligth.Industrializao1Click(Sender: TObject);
begin
  frmindustrializacao := Tfrmindustrializacao.create(self);
  frmindustrializacao.ShowModal;

end;

procedure Tfrmproduto_ligth.GerarInventrio1Click(Sender: TObject);
begin
  frminventario := Tfrminventario.create(self);
  frminventario.ShowModal;
  bcadastroClick(frmproduto_ligth);
end;

procedure Tfrmproduto_ligth.ecodigoEnter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;

end;

procedure Tfrmproduto_ligth.ecodigoExit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;

end;

procedure Tfrmproduto_ligth.ecodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);

end;

procedure Tfrmproduto_ligth.eunidadeExit(Sender: TObject);
begin
  if eunidade.Text = '' then
  begin
    showmessage('Favor Informar a Unidade do produto!');
    eunidade.setfocus;
    exit;
  end;
  TEdit(Sender).Color := clwindow;

end;

procedure Tfrmproduto_ligth.combocodbarraExit(Sender: TObject);
var
  Key: Char;
begin
  if combocodbarra.Text = '' then
  begin
    combocodbarra.Text := inttostr(strtoint(ecodigo.Text));
    // showmessage('Código de Barra Não Pode Ser Branco, deve ser Informado o código do Produto!');
    // combocodbarra.SetFocus;
    // exit;
  end;

  if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
  begin
    if combocodbarra.Text <> '' then
    begin
      if combocodbarra.Text <> 'VARIOS' then
      begin
        qrbarra.close;
        qrbarra.sql.clear;
        qrbarra.sql.add('select codbarra from c000025 where codbarra = ''' +
          combocodbarra.Text + ''' and codigo <> ''' + qrproduto.fieldbyname
          ('codigo').asstring + '''');
        qrbarra.open;
        if qrbarra.RecordCount > 0 then
        begin
          // if application.messagebox('Já existe um produto cadastro com este código! Deseja continuar?','Atenção',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idno then
          if combocodbarra.Text <> vcodbarra_anterior then
            APPLICATION.MESSAGEBOX
              ('Já existe um produto cadastro com este código de barra! Verifique',
              'Atenção', mb_ok + MB_ICONWARNING);
          combocodbarra.setfocus;
          exit;
        end;
      end
      else
      begin
        bcodigo.visible := true;
        eproduto.setfocus;
      end;
    end;
  end;

  if Key = #13 then
    eproduto.setfocus;
  TComboBox(Sender).Color := clwindow;

end;

procedure Tfrmproduto_ligth.combocodbarraEnter(Sender: TObject);
begin
  TComboBox(Sender).Color := $00A0FAF8;

end;

procedure Tfrmproduto_ligth.edata_cadastroExit(Sender: TObject);
var
  Key: Char;
begin
  TDateEdit(Sender).Color := clwindow;
  if Key = #13 then
    epreco_promocao.setfocus;

end;

procedure Tfrmproduto_ligth.epreco_promocaoExit(Sender: TObject);
begin

  TRxCalcEdit(Sender).Color := clwindow;
  if qrproduto.State <> dsinsert then
    if qrproduto.State <> dsedit then
      qrproduto.edit;
  if epreco_promocao.value = 0 then

  begin
    einicio_promocao.Text := '';
    efim_promocao.Text := '';
  end;

end;

procedure Tfrmproduto_ligth.einicio_promocaoExit(Sender: TObject);
begin
  TDateEdit(Sender).Color := clwindow;

end;

procedure Tfrmproduto_ligth.efim_promocaoExit(Sender: TObject);
begin

  TDateEdit(Sender).Color := clwindow;

  if efim_promocao.date < einicio_promocao.date then
  begin

    APPLICATION.MESSAGEBOX('Data final não pode ser menor que a data inicial!',
      'Erro', mb_ok + mb_iconerror);
    efim_promocao.setfocus;
    exit;
  end;

end;

procedure Tfrmproduto_ligth.ereceitaExit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmproduto_ligth.bcadastroClick(Sender: TObject);
begin

  ecodigo.Text := qrprodutoCODIGO.asstring;
  eproduto.Text := qrprodutoPRODUTO.asstring;
  ealiq.value := qrprodutoALIQUOTA.AsFloat;
  eunidade.Text := qrprodutoUNIDADE.asstring;
  ESUBGRUPO.Text := qrprodutoCODSUBGRUPO.asstring;
  EFORNECEDOR.Text := qrprodutoCODFORNECEDOR.asstring;
  ecusto.value := qrprodutoPRECOCUSTO.AsFloat;
  evenda.value := qrprodutoPRECOVENDA.AsFloat;
  ECST.Text := qrprodutoCST.asstring;
  combocodbarra.Text := qrprodutoCODBARRA.asstring;
  ebalanca.checked := false;
  if qrprodutoUSA_BALANCA.asinteger = 1 then
    ebalanca.checked := true;
  evalidade.Text := qrprodutoVALIDADE.asstring;
  ereceita.Text := qrprodutoCODRECEITA.asstring;
  edata_cadastro.date := qrprodutoDATA_CADASTRO.AsDateTime;
  epreco_promocao.value := qrprodutoPRECO_PROMOCAO.AsFloat;
  einicio_promocao.date := qrprodutoDATA_PROMOCAO.AsDateTime;
  efim_promocao.date := qrprodutoFIM_PROMOCAO.AsDateTime;

  if qrprodutoPISCOFINS.asstring = 'S' then
    episcofins.itemindex := 0
  else
    episcofins.itemindex := 1;

  combo_tipo.itemindex := -1;

  if qrproduto.fieldbyname('tipo').asstring = 'VENDA' then
    combo_tipo.itemindex := 0;
  if qrproduto.fieldbyname('tipo').asstring = 'CONSUMO' then
    combo_tipo.itemindex := 1;
  if qrproduto.fieldbyname('tipo').asstring = 'MATÉRIA-PRIMA' then
    combo_tipo.itemindex := 2;
  if qrproduto.fieldbyname('tipo').asstring = 'IMOBILIZADO' then
    combo_tipo.itemindex := 3;

  if qrproduto.fieldbyname('situacao').asinteger = 1 then
    rsituacao.checked := true
  else
    rsituacao.checked := false;

  if trim(ESUBGRUPO.Text) = '' then
  else
  begin
    if frmmodulo.qrSUBGRUPO.Locate('codigo', ESUBGRUPO.Text, [loCaseInsensitive])
    then
      enome_subgrupo.Text := frmmodulo.qrSUBGRUPO.fieldbyname
        ('subgrupo').asstring
    else
      enome_subgrupo.Text := '';
  end;

  if trim(EFORNECEDOR.Text) = '' then
  else
  begin
    if frmmodulo.qrFORNECEDOR.Locate('codigo', EFORNECEDOR.Text,
      [loCaseInsensitive]) then
      enome_fornecedor.Text := frmmodulo.qrFORNECEDOR.fieldbyname
        ('nome').asstring
    else
      enome_fornecedor.Text := '';
  end;

  frmmodulo.qrfiscal_cst.close;
  frmmodulo.qrfiscal_cst.sql.clear;
  frmmodulo.qrfiscal_cst.sql.add('SELECT * FROM C000083 WHERE CODIGO = ''' +
    ECST.Text + '''');
  frmmodulo.qrfiscal_cst.open;
  if frmmodulo.qrfiscal_cst.RecordCount > 0 then
  begin
    ECST.Text := frmmodulo.qrfiscal_cst.fieldbyname('codigo').asstring;
    enome_cst.Text := frmmodulo.qrfiscal_cst.fieldbyname('situacao').asstring;
  end;

  if combocodbarra.Text = 'VARIOS' then
    bcodigo.visible := true
  else
    bcodigo.visible := false;

  qrestoque.Connection := frmmodulo.Conexao;
  qrestoque.close;
  qrestoque.sql.clear;
  qrestoque.sql.add('select * from c000100 where codproduto = ''' +
    qrproduto.fieldbyname('codigo').asstring + '''');
  qrestoque.open;

  ldata_compra.Caption := qrestoque.fieldbyname('ultima_entrada').asstring;
  ldata_venda.Caption := qrestoque.fieldbyname('ultima_saida').asstring;
  lnf.Caption := qrestoque.fieldbyname('nota_fiscal').asstring;
  RINICIAL.value := qrestoque.fieldbyname('estoque_inicial').AsFloat;
  rentrada.value := qrestoque.fieldbyname('entradas').AsFloat;
  rsaida.value := qrestoque.fieldbyname('saidas').AsFloat;
  restoque.value := qrestoque.fieldbyname('estoque_atual').AsFloat;

end;

procedure Tfrmproduto_ligth.eestoqueExit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmproduto_ligth.Localizar1Click(Sender: TObject);
begin
  elocalizar.setfocus;
end;

procedure Tfrmproduto_ligth.qrproduto_movCalcFields(DataSet: TDataSet);
begin

  case qrproduto_mov.fieldbyname('MOVIMENTO').asinteger of
    0:
      qrproduto_mov.fieldbyname('MOV').asstring := 'IMPLANTAÇÃO DE SALDO';
    1:
      qrproduto_mov.fieldbyname('MOV').asstring := 'COMPRA';
    2:
      qrproduto_mov.fieldbyname('MOV').asstring := 'VENDA';
    3:
      qrproduto_mov.fieldbyname('MOV').asstring := 'DEVOLUÇÃO DE COMPRA';
    4:
      qrproduto_mov.fieldbyname('MOV').asstring := 'OUTRAS SAÍDAS';
    5:
      qrproduto_mov.fieldbyname('MOV').asstring := 'BAIXA DE SERIAL';
    6:
      qrproduto_mov.fieldbyname('MOV').asstring := 'EXCLUSÃO SERIAL';
    7:
      qrproduto_mov.fieldbyname('MOV').asstring := 'DEVOLUÇÃO DE VENDA';
    8:
      qrproduto_mov.fieldbyname('MOV').asstring := 'RETORNO SERIAL';
    9:
      qrproduto_mov.fieldbyname('MOV').asstring := 'VENDA EM O.S';
    10:
      qrproduto_mov.fieldbyname('MOV').asstring := 'ACERTO ESTOQUE';
    11:
      qrproduto_mov.fieldbyname('MOV').asstring := 'BAIXA MATÉRIA-PRIMA';
    12:
      qrproduto_mov.fieldbyname('MOV').asstring := 'ESTORNA MATÉRIA-PRIMA';
    13:
      qrproduto_mov.fieldbyname('MOV').asstring := 'ENTRADA PRODUTO ACABADO';
    14:
      qrproduto_mov.fieldbyname('MOV').asstring := 'ESTORNA PRODUTO ACABADO';
    15:
      qrproduto_mov.fieldbyname('MOV').asstring := 'BAIXA PARA RENTABILIDADE';
    16:
      qrproduto_mov.fieldbyname('MOV').asstring := 'ENTRADA DA RENTABILIDADE';

    17:
      qrproduto_mov.fieldbyname('MOV').asstring := 'INSTALAÇÃO';
    18:
      qrproduto_mov.fieldbyname('MOV').asstring := 'GARANTIA DE SERVIÇO';
    19:
      qrproduto_mov.fieldbyname('MOV').asstring := 'SAIDA PARA OFICINA';
    20:
      qrproduto_mov.fieldbyname('MOV').asstring := 'DOAÇÃO';

  end;

end;

procedure Tfrmproduto_ligth.wwDBGrid5DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin

  case qrproduto_mov.fieldbyname('movimento').asinteger of
    0:
      wwDBGrid5.Canvas.FONT.Color := clFuchsia;
    1:
      wwDBGrid5.Canvas.FONT.Color := clBLUE;
    2, 9:
      begin
        wwDBGrid5.Canvas.FONT.Color := clGREEN;
        wwDBGrid5.Canvas.FONT.Style := [FSBOLD];
      end;
    3:
      wwDBGrid5.Canvas.FONT.Color := clRED;
    4:
      wwDBGrid5.Canvas.FONT.Color := clRED;
    5:
      wwDBGrid5.Canvas.FONT.Color := clRED;
    6:
      wwDBGrid5.Canvas.FONT.Color := clRED;
    7:
      wwDBGrid5.Canvas.FONT.Color := clBLUE;
    8:
      wwDBGrid5.Canvas.FONT.Color := clBLUE;

    10:
      wwDBGrid5.Canvas.FONT.Color := clMaroon;

    11:
      wwDBGrid5.Canvas.FONT.Color := clGREEN;
    12:
      wwDBGrid5.Canvas.FONT.Color := clRED;
    13:
      wwDBGrid5.Canvas.FONT.Color := clGREEN;
    14:
      wwDBGrid5.Canvas.FONT.Color := clRED;
    15:
      wwDBGrid5.Canvas.FONT.Color := clGREEN;
    16:
      wwDBGrid5.Canvas.FONT.Color := clRED;

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

  wwDBGrid5.DefaultDrawDataCell(Rect, Field, State);

end;

procedure Tfrmproduto_ligth.SpeedButton1Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    qrproduto.Locate('codigo', ecodigo.Text, [loCaseInsensitive]);
    Image2.Picture.LoadFromFile(OpenPictureDialog1.Filename);
    qrproduto.edit;
    qrproduto.fieldbyname('FOTO').asstring := OpenPictureDialog1.Filename;
    qrproduto.Post;
    frmmodulo.Conexao.Commit;
  end;

end;

procedure Tfrmproduto_ligth.SpeedButton3Click(Sender: TObject);
begin
  Image2.Picture := nil;
  qrproduto.edit;
  qrproduto.fieldbyname('FOTO').asstring := '';
  qrproduto.Post;
  frmmodulo.Conexao.Commit;

end;

procedure Tfrmproduto_ligth.PageView1Change(Sender: TObject);
begin
  try

    if PageView1.ActivePageIndex = 1 then // FOTO
    begin
      if qrproduto.fieldbyname('FOTO').asstring <> '' then
      begin
        Image2.Picture.LoadFromFile(qrproduto.fieldbyname('FOTO').asstring);
      end
      else
      begin
        Image2.Picture := nil;
      end;
    end;

    if PageView1.ActivePageIndex = 2 then
    begin

      if PageView2.ActivePageIndex = 0 then
      begin
        bfiltro_entradaClick(frmproduto_ligth);
      end;
      if PageView2.ActivePageIndex = 1 then
      begin
        bfiltro_saidaClick(frmproduto_ligth);
      end;
    end;

  except
  end;

end;

procedure Tfrmproduto_ligth.Incluir1Click(Sender: TObject);
begin
  bincluirClick(frmproduto_ligth);
end;

procedure Tfrmproduto_ligth.Alterar1Click(Sender: TObject);
begin
  balterarClick(frmproduto_ligth);
end;

procedure Tfrmproduto_ligth.cadastro1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;

end;

procedure Tfrmproduto_ligth.historicoestoque1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 2;

end;

procedure Tfrmproduto_ligth.RefernciadaBusca1Click(Sender: TObject);
var
  X: integer;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.itemindex = X then
    combo_referencia.itemindex := 0
  else
    combo_referencia.itemindex := combo_referencia.itemindex + 1
end;

procedure Tfrmproduto_ligth.ESUBGRUPOButtonClick(Sender: TObject);
begin
  if (qrproduto.State <> dsinsert) then
  begin
    if (qrproduto.State <> dsedit) then
    begin
      qrproduto.edit;
    end;
  end;
  frmloc_subgrupo := tfrmloc_subgrupo.create(self);
  frmloc_subgrupo.ShowModal;
  // qrproduto.fieldbyname('codsubgrupo').asstring := frmmodulo.qrsubgrupo.fieldbyname('codigo').asstring;
  ESUBGRUPO.Text := frmmodulo.qrSUBGRUPO.fieldbyname('codigo').asstring;
  enome_subgrupo.Text := frmmodulo.qrSUBGRUPO.fieldbyname('subgrupo').asstring;
  EFORNECEDOR.setfocus;

end;

procedure Tfrmproduto_ligth.ereceitaButtonClick(Sender: TObject);
begin
  frmloc_receita := tfrmloc_receita.create(self);
  frmloc_receita.ShowModal;
  // qrproduto.fieldbyname('codreceita').asstring := frmmodulo.qrreceita.fieldbyname('codigo').asstring;
  ereceita.Text := frmmodulo.qrreceita.fieldbyname('codigo').asstring;
  if gestoque.visible then
    eestoque.setfocus
  else if pedicao.visible then
    bgravar.setfocus;
end;

procedure Tfrmproduto_ligth.EFORNECEDORButtonClick(Sender: TObject);
begin
  if (qrproduto.State <> dsinsert) then
  begin
    if (qrproduto.State <> dsedit) then
    begin
      qrproduto.edit;
    end;
  end;
  frmloc_fornecedor := tfrmloc_fornecedor.create(self);
  frmloc_fornecedor.ShowModal;
  // qrproduto.fieldbyname('codfornecedor').asstring := frmmodulo.qrfornecedor.fieldbyname('codigo').asstring;
  EFORNECEDOR.Text := frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring;
  enome_fornecedor.Text := frmmodulo.qrFORNECEDOR.fieldbyname('nome').asstring;
  ecusto.setfocus;

end;

procedure Tfrmproduto_ligth.ECSTButtonClick(Sender: TObject);
begin
  FRMXLOC_CST := TFRMXLOC_CST.create(self);
  FRMXLOC_CST.ShowModal;
  if RESULTADO_PESQUISA1 <> '' then
  begin
    ECST.Text := RESULTADO_PESQUISA1;
    enome_cst.Text := RESULTADO_PESQUISA2;
  end;

  ealiq.setfocus;
end;

procedure Tfrmproduto_ligth.ereceitaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if gestoque.visible then
      eestoque.setfocus
    else if pedicao.visible then
      bgravar.setfocus;

  end;
end;

procedure Tfrmproduto_ligth.ECSTKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmproduto_ligth.elocalizarExit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmproduto_ligth.ESUBGRUPOKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmproduto_ligth.EFORNECEDORKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmproduto_ligth.efim_promocaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmproduto_ligth.eestoqueKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    if pedicao.visible then
      bgravar.setfocus;
end;

procedure Tfrmproduto_ligth.eestoqueEnter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmproduto_ligth.di_entradaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmproduto_ligth.df_entradaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmproduto_ligth.combo_entradaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    bfiltro_entrada.setfocus;
end;

procedure Tfrmproduto_ligth.bfiltro_entradaClick(Sender: TObject);
var
  ve: real;
begin
  if combo_entrada.itemindex = 0 then
  begin
    qrmov_entrada.close;
    qrmov_entrada.sql.clear;
    qrmov_entrada.sql.add('select * from c000032 where codproduto = ''' +
      qrproduto.fieldbyname('codigo').asstring + '''');
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
      qrproduto.fieldbyname('codigo').asstring + '''');
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
    ve := ve + qrmov_entrada.fieldbyname('qtde').AsFloat;
    qrmov_entrada.next;
  end;
  eentrada.Caption := formatfloat('###,###,##0.000', ve);

end;

procedure Tfrmproduto_ligth.di_saidaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmproduto_ligth.df_saidaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmproduto_ligth.bfiltro_saidaClick(Sender: TObject);
var
  ve: real;
begin
  if combo_saida.itemindex = 0 then
  begin
    qrmov_saida.close;
    qrmov_saida.sql.clear;
    qrmov_saida.sql.add('select * from c000032 where codproduto = ''' +
      qrproduto.fieldbyname('codigo').asstring + '''');
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
      qrproduto.fieldbyname('codigo').asstring + '''');
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
    ve := ve + qrmov_saida.fieldbyname('qtde').AsFloat;
    qrmov_saida.next;
  end;
  esaida.Caption := formatfloat('###,###,##0.000', ve);

end;

procedure Tfrmproduto_ligth.PageView2Change(Sender: TObject);
begin
  if PageView1.ActivePageIndex = 2 then
  begin
    if PageView2.ActivePageIndex = 0 then
    begin
      bfiltro_entradaClick(frmproduto_ligth);
    end;
    if PageView2.ActivePageIndex = 1 then
    begin
      bfiltro_saidaClick(frmproduto_ligth);
    end;
  end;
end;

procedure Tfrmproduto_ligth.combo_saidaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bfiltro_saida.setfocus;
end;

procedure Tfrmproduto_ligth.qrmov_saidaCalcFields(DataSet: TDataSet);
begin
  case qrmov_saida.fieldbyname('MOVIMENTO').asinteger of
    0:
      qrmov_saida.fieldbyname('MOV').asstring := 'IMPLANTAÇÃO DE SALDO';
      // ENTRADA
    1:
      qrmov_saida.fieldbyname('MOV').asstring := 'COMPRA'; // ENTRADA
    2:
      qrmov_saida.fieldbyname('MOV').asstring := 'VENDA'; // SAIDA
    3:
      qrmov_saida.fieldbyname('MOV').asstring := 'DEVOLUÇÃO DE COMPRA';
      // ENTRADA
    4:
      qrmov_saida.fieldbyname('MOV').asstring := 'OUTRAS SAÍDAS'; // SAIDA
    5:
      qrmov_saida.fieldbyname('MOV').asstring := 'BAIXA DE SERIAL'; // SAIDA
    6:
      qrmov_saida.fieldbyname('MOV').asstring := 'EXCLUSÃO SERIAL'; // SAIDA
    7:
      qrmov_saida.fieldbyname('MOV').asstring := 'DEVOLUÇÃO DE VENDA';
      // ENTRADA
    8:
      qrmov_saida.fieldbyname('MOV').asstring := 'RETORNO SERIAL'; // ENTRADA
    9:
      qrmov_saida.fieldbyname('MOV').asstring := 'VENDA EM O.S'; // SAIDA
    10:
      qrmov_saida.fieldbyname('MOV').asstring := 'ACERTO ESTOQUE'; // ENTRADA
    11:
      qrmov_saida.fieldbyname('MOV').asstring := 'BAIXA MATÉRIA-PRIMA'; // SAIDA
    12:
      qrmov_saida.fieldbyname('MOV').asstring := 'ESTORNA MATÉRIA-PRIMA';
      // ENTRADA
    13:
      qrmov_saida.fieldbyname('MOV').asstring := 'ENTRADA PRODUTO ACABADO';
      // ENTRADA
    14:
      qrmov_saida.fieldbyname('MOV').asstring := 'ESTORNA PRODUTO ACABADO';
      // SAIDA
    15:
      qrmov_saida.fieldbyname('MOV').asstring := 'BAIXA PARA RENTABILIDADE';
      // SAIDA
    16:
      qrmov_saida.fieldbyname('MOV').asstring := 'ENTRADA DA RENTABILIDADE';
      // ENTRADA

    17:
      qrmov_saida.fieldbyname('MOV').asstring := 'INSTALAÇÃO'; // saida
    18:
      qrmov_saida.fieldbyname('MOV').asstring := 'GARANTIA DE SERVIÇO'; // saida
    19:
      qrmov_saida.fieldbyname('MOV').asstring := 'SAIDA PARA OFICINA'; // saida
    20:
      qrmov_saida.fieldbyname('MOV').asstring := 'DOAÇÃO'; // saida
    99:
      qrmov_saida.fieldbyname('MOV').asstring := 'SEM BAIXA DE ESTOQUE';
      // saida

  end;
end;

procedure Tfrmproduto_ligth.qrmov_entradaCalcFields(DataSet: TDataSet);
begin
  case qrmov_entrada.fieldbyname('MOVIMENTO').asinteger of
    0:
      qrmov_entrada.fieldbyname('MOV').asstring := 'IMPLANTAÇÃO DE SALDO';
      // ENTRADA
    1:
      qrmov_entrada.fieldbyname('MOV').asstring := 'COMPRA'; // ENTRADA
    2:
      qrmov_entrada.fieldbyname('MOV').asstring := 'VENDA'; // SAIDA
    3:
      qrmov_entrada.fieldbyname('MOV').asstring := 'DEVOLUÇÃO DE COMPRA';
      // ENTRADA
    4:
      qrmov_entrada.fieldbyname('MOV').asstring := 'OUTRAS SAÍDAS'; // SAIDA
    5:
      qrmov_entrada.fieldbyname('MOV').asstring := 'BAIXA DE SERIAL'; // SAIDA
    6:
      qrmov_entrada.fieldbyname('MOV').asstring := 'EXCLUSÃO SERIAL'; // SAIDA
    7:
      qrmov_entrada.fieldbyname('MOV').asstring := 'DEVOLUÇÃO DE VENDA';
      // ENTRADA
    8:
      qrmov_entrada.fieldbyname('MOV').asstring := 'RETORNO SERIAL'; // ENTRADA
    9:
      qrmov_entrada.fieldbyname('MOV').asstring := 'VENDA EM O.S'; // SAIDA
    10:
      qrmov_entrada.fieldbyname('MOV').asstring := 'ACERTO ESTOQUE'; // ENTRADA
    11:
      qrmov_entrada.fieldbyname('MOV').asstring := 'BAIXA MATÉRIA-PRIMA';
      // SAIDA
    12:
      qrmov_entrada.fieldbyname('MOV').asstring := 'ESTORNA MATÉRIA-PRIMA';
      // ENTRADA
    13:
      qrmov_entrada.fieldbyname('MOV').asstring := 'ENTRADA PRODUTO ACABADO';
      // ENTRADA
    14:
      qrmov_entrada.fieldbyname('MOV').asstring := 'ESTORNA PRODUTO ACABADO';
      // SAIDA
    15:
      qrmov_entrada.fieldbyname('MOV').asstring := 'BAIXA PARA RENTABILIDADE';
      // SAIDA
    16:
      qrmov_entrada.fieldbyname('MOV').asstring := 'ENTRADA DA RENTABILIDADE';
      // ENTRADA

    17:
      qrmov_entrada.fieldbyname('MOV').asstring := 'INSTALAÇÃO'; // saida
    18:
      qrmov_entrada.fieldbyname('MOV').asstring := 'GARANTIA DE SERVIÇO';
      // saida
    19:
      qrmov_entrada.fieldbyname('MOV').asstring := 'SAIDA PARA OFICINA';
      // saida
    20:
      qrmov_entrada.fieldbyname('MOV').asstring := 'DOAÇÃO'; // saida
    99:
      qrmov_entrada.fieldbyname('MOV').asstring := 'SEM BAIXA DE ESTOQUE';
      // saida

  end;
end;

procedure Tfrmproduto_ligth.eprodutoExit(Sender: TObject);
var
  texto: PWideChar;
begin

  TEdit(Sender).Color := clwindow;
  if vopcao = 1 then
  begin
    qrduplo.close;
    qrduplo.sql.clear;
    qrduplo.sql.add('select * from c000025');
    qrduplo.sql.add('where upper(produto) = ''' +
      ansiuppercase(eproduto.Text) + '''');
    qrduplo.open;
    if qrduplo.RecordCount > 0 then
    begin
      texto := PWideChar('Existe um produto cadastrado com este nome!' + #13 +
        qrduplo.fieldbyname('codigo').asstring + ' - ' +
        qrduplo.fieldbyname('produto').asstring + #13 + 'Preço de Venda: ' +
        formatfloat('###,###,##0.00', qrduplo.fieldbyname('precovenda').AsFloat)
        + '!' + #13 + 'Deseja prosseguir?');
      if APPLICATION.MESSAGEBOX(texto, 'Atenção', mb_yesno + MB_ICONWARNING +
        MB_DEFBUTTON2) = idNO then
      begin
        bcancelarClick(frmproduto_ligth);
        exit;
      end;
    end;
  end;
end;

procedure Tfrmproduto_ligth.MovimentarEstoque1Click(Sender: TObject);
var
  recor: string;
begin
  if frmprincipal.autentica('Movimentar Estoque', 4) then
  begin
    recor := qrproduto.fieldbyname('codigo').asstring;
    frmproduto_movimentar := tfrmproduto_movimentar.create(self);
    frmproduto_movimentar.LCODIGO.Caption :=
      qrproduto.fieldbyname('codigo').asstring;
    frmproduto_movimentar.Lproduto.Caption :=
      qrproduto.fieldbyname('produto').asstring;
    frmproduto_movimentar.Lestoque.Caption := formatfloat('###,###,##0.000',
      restoque.value);
    frmproduto_movimentar.rqtde.value := 1;
    frmproduto_movimentar.runitario.value :=
      qrproduto.fieldbyname('precovenda').AsFloat;
    frmproduto_movimentar.rtotal.value :=
      qrproduto.fieldbyname('precovenda').AsFloat;
    frmproduto_movimentar.lunidade.Caption :=
      qrproduto.fieldbyname('UNIDADE').asstring;
    frmproduto_movimentar.ShowModal;
    bcadastroClick(frmproduto_ligth);
  end;

end;

procedure Tfrmproduto_ligth.combo_tipoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    edata_cadastro.setfocus;
end;

procedure Tfrmproduto_ligth.ealiqExit(Sender: TObject);
begin
  if (ealiq.value <> 0.00) and (ealiq.value <> 7.00) and (ealiq.value <> 12.00)
    and (ealiq.value <> 17.00) and (ealiq.value <> 18.00) and
    (ealiq.value <> 25.00) and (ealiq.value <> 27.00) then
  begin
    APPLICATION.MESSAGEBOX('Aliquota fora da faixa!', 'Atenção',
      mb_ok + MB_ICONWARNING);
    ealiq.value := 0;
    ealiq.setfocus;
    exit;
  end;

end;

procedure Tfrmproduto_ligth.elocprodutoButtonClick(Sender: TObject);
begin
  RESULTADO_PESQUISA1 := '';
  RESULTADO_PESQUISA2 := '';
  frmxloc_Produto := tfrmxloc_Produto.create(self);
  frmxloc_Produto.ShowModal;
  if RESULTADO_PESQUISA1 <> '' then
  begin
    eproduto.Text := RESULTADO_PESQUISA2;
  end;

end;

procedure Tfrmproduto_ligth.Exportar1Click(Sender: TObject);
begin
  frmproduto_exportar := tfrmproduto_exportar.create(self);
  frmproduto_exportar.ShowModal;
end;

procedure Tfrmproduto_ligth.Importar1Click(Sender: TObject);
begin
  if frmprincipal.autentica('Atualizar Produtos', 4) then
  begin
    frmproduto_importar := tfrmproduto_importar.create(self);
    frmproduto_importar.ShowModal;
    qrproduto.refresh;
  end;
end;

procedure Tfrmproduto_ligth.bfornecedor_codigoClick(Sender: TObject);
begin
  frmfornecedor_codigo := tfrmfornecedor_codigo.create(self);
  frmfornecedor_codigo.Lproduto.Caption := qrprodutoCODIGO.asstring + '-' +
    qrprodutoPRODUTO.asstring;
  frmfornecedor_codigo.ShowModal;
end;

end.
