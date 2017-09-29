unit LMC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TFlatPanelUnit, AdvGlowButton, ExtCtrls, StdCtrls, Mask,
  RzEdit, RzDBEdit, RzDBBnEd, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Menus, PageView, DBCtrls, RzBtnEdt,
  DateUtils, RxCurrEdit, RxToolEdit;

type
  TfrmLMC = class(TForm)
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bfechar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel1: TBevel;
    pficha: TFlatPanel;
    Label14: TLabel;
    Bevel2: TBevel;
    Panel1: TPanel;
    Label1: TLabel;
    edata: TDateEdit;
    Label5: TLabel;
    edproduto: TEdit;
    qrBombas: TZQuery;
    qrBicos: TZQuery;
    qrTanques: TZQuery;
    qrCombustiveis: TZQuery;
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Relatrios1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    qrLMC: TZQuery;
    pg_lmc: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    PageSheet3: TPageSheet;
    PageSheet4: TPageSheet;
    pabertura: TPanel;
    pvrecebido: TPanel;
    pvvendido: TPanel;
    pfechamento: TPanel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    dslmc: TDataSource;
    GroupBox1: TGroupBox;
    rta1: TRxCalcEdit;
    rta2: TRxCalcEdit;
    rta3: TRxCalcEdit;
    rta4: TRxCalcEdit;
    rta5: TRxCalcEdit;
    rta6: TRxCalcEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edn1: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    edn2: TEdit;
    edn3: TEdit;
    edn4: TEdit;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    rvr1: TRxCalcEdit;
    rvr2: TRxCalcEdit;
    rvr3: TRxCalcEdit;
    rvr4: TRxCalcEdit;
    evt1: TEdit;
    evt2: TEdit;
    evt3: TEdit;
    evt4: TEdit;
    evt5: TEdit;
    evt6: TEdit;
    evt7: TEdit;
    evt8: TEdit;
    evb1: TEdit;
    evb2: TEdit;
    evb4: TEdit;
    evb5: TEdit;
    evb6: TEdit;
    evb7: TEdit;
    evb8: TEdit;
    rvp1: TRxCalcEdit;
    rvp2: TRxCalcEdit;
    rvp3: TRxCalcEdit;
    rvp4: TRxCalcEdit;
    rvp5: TRxCalcEdit;
    rvp6: TRxCalcEdit;
    rvp7: TRxCalcEdit;
    rvp8: TRxCalcEdit;
    rvf1: TRxCalcEdit;
    rvf2: TRxCalcEdit;
    rvf3: TRxCalcEdit;
    rvf4: TRxCalcEdit;
    rvf5: TRxCalcEdit;
    rvf6: TRxCalcEdit;
    rvf7: TRxCalcEdit;
    rvf8: TRxCalcEdit;
    rva1: TRxCalcEdit;
    rva2: TRxCalcEdit;
    rva3: TRxCalcEdit;
    rva4: TRxCalcEdit;
    rva5: TRxCalcEdit;
    rva6: TRxCalcEdit;
    rva7: TRxCalcEdit;
    rva8: TRxCalcEdit;
    rvaf1: TRxCalcEdit;
    rvaf2: TRxCalcEdit;
    rvaf3: TRxCalcEdit;
    rvaf4: TRxCalcEdit;
    rvaf5: TRxCalcEdit;
    rvaf6: TRxCalcEdit;
    rvaf7: TRxCalcEdit;
    rvaf8: TRxCalcEdit;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    evb3: TEdit;
    lbv1: TLabel;
    lbv2: TLabel;
    lbv3: TLabel;
    lbv4: TLabel;
    lbv5: TLabel;
    lbv6: TLabel;
    lbv7: TLabel;
    lbv8: TLabel;
    GroupBox4: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    rtf1: TRxCalcEdit;
    rtf2: TRxCalcEdit;
    rtf3: TRxCalcEdit;
    rtf4: TRxCalcEdit;
    rtf5: TRxCalcEdit;
    rtf6: TRxCalcEdit;
    eproduto: TRzButtonEdit;
    qrEncerrantes: TZQuery;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    qrApoio: TZReadOnlyQuery;
    PageSheet5: TPageSheet;
    memObs: TMemo;
    qrLivro: TZQuery;
    qrult_Encerrantes: TZQuery;
    Panel3: TPanel;
    lbVendas: TLabel;
    Panel4: TPanel;
    lbestoqescrit: TLabel;
    Panel5: TPanel;
    lbestoqfecha: TLabel;
    Panel6: TPanel;
    lbValorVendas: TLabel;
    Panel7: TPanel;
    lbValorAcumu: TLabel;
    Panel8: TPanel;
    lbPerdSobr: TLabel;
    Panel9: TPanel;
    lbpreco: TLabel;
    qrBombasCODIGO: TIntegerField;
    qrBombasCOD_PRODUTO: TIntegerField;
    qrBombasNOME_COMBUSTIVEL: TWideStringField;
    qrBombasSERIE: TWideStringField;
    qrBombasFABRICANTE: TWideStringField;
    qrBombasMODELO: TWideStringField;
    qrBicosCODIGO: TIntegerField;
    qrBicosCOD_PRODUTO: TIntegerField;
    qrBicosPRECO: TFloatField;
    qrBicosCOD_BOMBA: TIntegerField;
    qrBicosENCERRANTE: TIntegerField;
    qrBicosTANQUE: TIntegerField;
    qrTanquesCODIGO: TIntegerField;
    qrTanquesCOD_PRODUTO: TIntegerField;
    qrTanquesCAP_MAXIMA: TIntegerField;
    qrTanquesCAP_MINIMA: TIntegerField;
    qrTanquesNUMERO_FISICO: TIntegerField;
    qrTanquesESTOQUE_INICIAL: TFloatField;
    qrTanquesESTOQUE_ATUAL: TFloatField;
    qrTanquesESTOQUE_MEDICAO: TFloatField;
    qrTanquesVALOR_ENTRADA: TFloatField;
    qrTanquesVALOR_SAIDA: TFloatField;
    qrTanquesDATA_ULT_ENT: TDateTimeField;
    qrTanquesDATA_ULT_SAI: TDateTimeField;
    qrTanquesNUMERO_NF: TWideStringField;
    qrCombustiveisNOME: TWideStringField;
    qrCombustiveisPR_COMPRA: TFloatField;
    qrCombustiveisPR_CUSTO: TFloatField;
    qrCombustiveisPR_VENDA: TFloatField;
    qrCombustiveisCODIGO: TIntegerField;
    qrLivroCODIGO: TIntegerField;
    qrLivroCOD_FILIAL: TWideStringField;
    qrLivroFILIAL: TWideStringField;
    qrLivroENDERECO: TWideStringField;
    qrLivroBAIRRO: TWideStringField;
    qrLivroCEP: TWideStringField;
    qrLivroCIDADE: TWideStringField;
    qrLivroUF: TWideStringField;
    qrLivroIE: TWideStringField;
    qrLivroCNPJ: TWideStringField;
    qrLivroIM: TWideStringField;
    qrLivroDISTRIBUIDORA: TWideStringField;
    qrLivroCAPACIDADE: TIntegerField;
    qrLivroCOD_COMBUSTIVEL: TIntegerField;
    qrLivroNOME_COMBUSTIVEL: TWideStringField;
    qrLivroNUMERO: TWideStringField;
    qrLivroNUMERO_JUNTACOM: TWideStringField;
    qrLivroDATA_ABERTURA: TDateTimeField;
    qrLivroNUMERO_ORDEM: TIntegerField;
    qrLivroPAGINA_ATUAL: TIntegerField;
    qrLMCCODIGO: TIntegerField;
    qrLMCTANQUE: TIntegerField;
    qrLMCBOMBA: TIntegerField;
    qrLMCBICO: TIntegerField;
    qrLMCABERTURA: TIntegerField;
    qrLMCENCERRANTE: TIntegerField;
    qrLMCCOMBUSTIVEL: TIntegerField;
    qrLMCDATA: TDateTimeField;
    qrLMCPRECO: TFloatField;
    qrLMCQUANTIDADE: TFloatField;
    qrLMCTOTAL: TFloatField;
    qrLMCSITUACAO: TIntegerField;
    qrLMCNR_NOTA: TIntegerField;
    qrLMCNOTAFISCAL1: TWideStringField;
    qrLMCNOTAFISCAL2: TWideStringField;
    qrLMCNOTAFISCAL3: TWideStringField;
    qrLMCNOTAFISCAL4: TWideStringField;
    qrLMCQUANTNF1: TIntegerField;
    qrLMCQUANTNF2: TIntegerField;
    qrLMCQUANTNF3: TIntegerField;
    qrLMCQUANTNF4: TIntegerField;
    qrLMCBICO1: TIntegerField;
    qrLMCBICO2: TIntegerField;
    qrLMCBICO3: TIntegerField;
    qrLMCBICO4: TIntegerField;
    qrLMCBICO5: TIntegerField;
    qrLMCBICO6: TIntegerField;
    qrLMCBICO7: TIntegerField;
    qrLMCBICO8: TIntegerField;
    qrLMCABER_BICO1: TIntegerField;
    qrLMCABER_BICO2: TIntegerField;
    qrLMCABER_BICO3: TIntegerField;
    qrLMCABER_BICO4: TIntegerField;
    qrLMCABER_BICO5: TIntegerField;
    qrLMCABER_BICO6: TIntegerField;
    qrLMCABER_BICO7: TIntegerField;
    qrLMCABER_BICO8: TIntegerField;
    qrLMCENC_BICO1: TIntegerField;
    qrLMCENC_BICO2: TIntegerField;
    qrLMCENC_BICO3: TIntegerField;
    qrLMCENC_BICO4: TIntegerField;
    qrLMCENC_BICO5: TIntegerField;
    qrLMCENC_BICO6: TIntegerField;
    qrLMCENC_BICO7: TIntegerField;
    qrLMCENC_BICO8: TIntegerField;
    qrLMCAFER_BICO1: TIntegerField;
    qrLMCAFER_BICO2: TIntegerField;
    qrLMCAFER_BICO3: TIntegerField;
    qrLMCAFER_BICO4: TIntegerField;
    qrLMCAFER_BICO5: TIntegerField;
    qrLMCAFER_BICO6: TIntegerField;
    qrLMCAFER_BICO7: TIntegerField;
    qrLMCAFER_BICO8: TIntegerField;
    qrLMCQTEVEND_1: TIntegerField;
    qrLMCQTEVEND_2: TIntegerField;
    qrLMCQTEVEND_3: TIntegerField;
    qrLMCQTEVEND_4: TIntegerField;
    qrLMCQTEVEND_5: TIntegerField;
    qrLMCQTEVEND_6: TIntegerField;
    qrLMCQTEVEND_7: TIntegerField;
    qrLMCQTEVEND_8: TIntegerField;
    qrLMCTOTALVEND_1: TFloatField;
    qrLMCTOTALVEND_2: TFloatField;
    qrLMCTOTALVEND_3: TFloatField;
    qrLMCTOTALVEND_4: TFloatField;
    qrLMCTOTALVEND_5: TFloatField;
    qrLMCTOTALVEND_6: TFloatField;
    qrLMCTOTALVEND_7: TFloatField;
    qrLMCTOTALVEND_8: TFloatField;
    qrLMCESTOQ_ABERTURA: TIntegerField;
    qrLMCESTOQ_ESCRITURAL: TIntegerField;
    qrLMCESTOQ_FECHAMENTO: TIntegerField;
    qrLMCPERDA_SOBRA: TIntegerField;
    qrLMCOBSERVACAO: TWideStringField;
    qrLMCPAGINA: TIntegerField;
    qrEncerrantesCODIGO: TIntegerField;
    qrEncerrantesDATA: TDateTimeField;
    qrEncerrantesCOD_BICO: TIntegerField;
    qrEncerrantesABERTURA: TIntegerField;
    qrEncerrantesENCERRAMENTO: TIntegerField;
    qrEncerrantesQUANTIDADE: TFloatField;
    qrEncerrantesAFERICAO: TFloatField;
    qrEncerrantesPRECO: TFloatField;
    qrEncerrantesVALOR: TFloatField;
    qrEncerrantesCOD_PRODUTO: TIntegerField;
    qrEncerrantesSITUACAO: TWideStringField;
    procedure bincluirClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure edataKeyPress(Sender: TObject; var Key: Char);
    procedure edataExit(Sender: TObject);
    procedure edataEnter(Sender: TObject);
    procedure eprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure eprodutoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure rta1Enter(Sender: TObject);
    procedure rta2Enter(Sender: TObject);
    procedure rta3Enter(Sender: TObject);
    procedure rta4Enter(Sender: TObject);
    procedure rta5Enter(Sender: TObject);
    procedure rta6Enter(Sender: TObject);
    procedure pg_lmcChange(Sender: TObject);
    procedure rvr1Exit(Sender: TObject);
    procedure rvr2Exit(Sender: TObject);
    procedure rvr3Exit(Sender: TObject);
    procedure rta1Exit(Sender: TObject);
    procedure rta2Exit(Sender: TObject);
    procedure rta3Exit(Sender: TObject);
    procedure rta4Exit(Sender: TObject);
    procedure rta5Exit(Sender: TObject);
    procedure rta6Exit(Sender: TObject);
    procedure rta1KeyPress(Sender: TObject; var Key: Char);
    procedure rta2KeyPress(Sender: TObject; var Key: Char);
    procedure rta3KeyPress(Sender: TObject; var Key: Char);
    procedure rta4KeyPress(Sender: TObject; var Key: Char);
    procedure rta5KeyPress(Sender: TObject; var Key: Char);
    procedure rta6KeyPress(Sender: TObject; var Key: Char);
    procedure edn1KeyPress(Sender: TObject; var Key: Char);
    procedure edn2KeyPress(Sender: TObject; var Key: Char);
    procedure edn3KeyPress(Sender: TObject; var Key: Char);
    procedure edn4KeyPress(Sender: TObject; var Key: Char);
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
    procedure edt2KeyPress(Sender: TObject; var Key: Char);
    procedure edt3KeyPress(Sender: TObject; var Key: Char);
    procedure edt4KeyPress(Sender: TObject; var Key: Char);
    procedure rvr1KeyPress(Sender: TObject; var Key: Char);
    procedure rvr2KeyPress(Sender: TObject; var Key: Char);
    procedure rvr3KeyPress(Sender: TObject; var Key: Char);
    procedure rvr4KeyPress(Sender: TObject; var Key: Char);
    procedure edn1Enter(Sender: TObject);
    procedure edn2Enter(Sender: TObject);
    procedure edn3Enter(Sender: TObject);
    procedure edn4Enter(Sender: TObject);
    procedure edt1Enter(Sender: TObject);
    procedure edt2Enter(Sender: TObject);
    procedure edt3Enter(Sender: TObject);
    procedure edt4Enter(Sender: TObject);
    procedure rvr1Enter(Sender: TObject);
    procedure rvr2Enter(Sender: TObject);
    procedure rvr3Enter(Sender: TObject);
    procedure rvr4Enter(Sender: TObject);
    procedure edn1Exit(Sender: TObject);
    procedure edn2Exit(Sender: TObject);
    procedure edn3Exit(Sender: TObject);
    procedure edn4Exit(Sender: TObject);
    procedure edt1Exit(Sender: TObject);
    procedure edt2Exit(Sender: TObject);
    procedure edt3Exit(Sender: TObject);
    procedure edt4Exit(Sender: TObject);
    procedure rvr4Exit(Sender: TObject);
    procedure eprodutoButtonClick(Sender: TObject);
    procedure eprodutoExit(Sender: TObject);
    procedure rvaf1Exit(Sender: TObject);
    procedure rvaf2Exit(Sender: TObject);
    procedure rvaf3Exit(Sender: TObject);
    procedure rvaf4Exit(Sender: TObject);
    procedure rvaf5Exit(Sender: TObject);
    procedure rvaf6Exit(Sender: TObject);
    procedure rvaf7Exit(Sender: TObject);
    procedure evb1Exit(Sender: TObject);
    procedure evt1KeyPress(Sender: TObject; var Key: Char);
    procedure evb1KeyPress(Sender: TObject; var Key: Char);
    procedure rvp1KeyPress(Sender: TObject; var Key: Char);
    procedure rvf1KeyPress(Sender: TObject; var Key: Char);
    procedure rva1KeyPress(Sender: TObject; var Key: Char);
    procedure rvaf1KeyPress(Sender: TObject; var Key: Char);
    procedure evt1Enter(Sender: TObject);
    procedure evb1Enter(Sender: TObject);
    procedure rvp1Enter(Sender: TObject);
    procedure rvf1Enter(Sender: TObject);
    procedure rva1Enter(Sender: TObject);
    procedure rvaf1Enter(Sender: TObject);
    procedure evt1Exit(Sender: TObject);
    procedure rvp1Exit(Sender: TObject);
    procedure rvf1Exit(Sender: TObject);
    procedure rva1Exit(Sender: TObject);
    procedure evt2KeyPress(Sender: TObject; var Key: Char);
    procedure evt3KeyPress(Sender: TObject; var Key: Char);
    procedure evt4KeyPress(Sender: TObject; var Key: Char);
    procedure evt5KeyPress(Sender: TObject; var Key: Char);
    procedure evt6KeyPress(Sender: TObject; var Key: Char);
    procedure evt7KeyPress(Sender: TObject; var Key: Char);
    procedure evt8KeyPress(Sender: TObject; var Key: Char);
    procedure evb2KeyPress(Sender: TObject; var Key: Char);
    procedure evb3KeyPress(Sender: TObject; var Key: Char);
    procedure evb4KeyPress(Sender: TObject; var Key: Char);
    procedure evb5KeyPress(Sender: TObject; var Key: Char);
    procedure evb6KeyPress(Sender: TObject; var Key: Char);
    procedure evb7KeyPress(Sender: TObject; var Key: Char);
    procedure evb8KeyPress(Sender: TObject; var Key: Char);
    procedure evt2Enter(Sender: TObject);
    procedure evt3Enter(Sender: TObject);
    procedure evt4Enter(Sender: TObject);
    procedure evt5Enter(Sender: TObject);
    procedure evt6Enter(Sender: TObject);
    procedure evt7Enter(Sender: TObject);
    procedure evb2Enter(Sender: TObject);
    procedure evb3Enter(Sender: TObject);
    procedure evb4Enter(Sender: TObject);
    procedure evb5Enter(Sender: TObject);
    procedure evb6Enter(Sender: TObject);
    procedure evb7Enter(Sender: TObject);
    procedure evb8Enter(Sender: TObject);
    procedure evt2Exit(Sender: TObject);
    procedure evt3Exit(Sender: TObject);
    procedure evt4Exit(Sender: TObject);
    procedure evt5Exit(Sender: TObject);
    procedure evt6Exit(Sender: TObject);
    procedure evt7Exit(Sender: TObject);
    procedure evt8Exit(Sender: TObject);
    procedure evb2Exit(Sender: TObject);
    procedure evb3Exit(Sender: TObject);
    procedure evb4Exit(Sender: TObject);
    procedure evb5Exit(Sender: TObject);
    procedure evb6Exit(Sender: TObject);
    procedure evb7Exit(Sender: TObject);
    procedure evb8Exit(Sender: TObject);
    procedure rvp2KeyPress(Sender: TObject; var Key: Char);
    procedure rvf2KeyPress(Sender: TObject; var Key: Char);
    procedure rva2KeyPress(Sender: TObject; var Key: Char);
    procedure rvaf2KeyPress(Sender: TObject; var Key: Char);
    procedure rvp2Enter(Sender: TObject);
    procedure rvf2Enter(Sender: TObject);
    procedure rva2Enter(Sender: TObject);
    procedure rvaf2Enter(Sender: TObject);
    procedure rvp2Exit(Sender: TObject);
    procedure rvf2Exit(Sender: TObject);
    procedure rva2Exit(Sender: TObject);
    procedure rvf3Enter(Sender: TObject);
    procedure rva3Enter(Sender: TObject);
    procedure rvaf3Enter(Sender: TObject);
    procedure rvp3Exit(Sender: TObject);
    procedure rvp3KeyPress(Sender: TObject; var Key: Char);
    procedure rvf3KeyPress(Sender: TObject; var Key: Char);
    procedure rva3KeyPress(Sender: TObject; var Key: Char);
    procedure rvaf3KeyPress(Sender: TObject; var Key: Char);
    procedure rvp3Enter(Sender: TObject);
    procedure rvf3Exit(Sender: TObject);
    procedure rva3Exit(Sender: TObject);
    procedure rvp4Enter(Sender: TObject);
    procedure rvf4Enter(Sender: TObject);
    procedure rva4Enter(Sender: TObject);
    procedure rvaf4Enter(Sender: TObject);
    procedure rvp4Exit(Sender: TObject);
    procedure rvf4Exit(Sender: TObject);
    procedure rva4Exit(Sender: TObject);
    procedure rvp4KeyPress(Sender: TObject; var Key: Char);
    procedure rvf4KeyPress(Sender: TObject; var Key: Char);
    procedure rva4KeyPress(Sender: TObject; var Key: Char);
    procedure rvaf4KeyPress(Sender: TObject; var Key: Char);
    procedure rvaf8Exit(Sender: TObject);
    procedure rvaf8KeyPress(Sender: TObject; var Key: Char);
    procedure rvaf8Enter(Sender: TObject);
    procedure rvaf5KeyPress(Sender: TObject; var Key: Char);
    procedure rvaf6KeyPress(Sender: TObject; var Key: Char);
    procedure rvaf7KeyPress(Sender: TObject; var Key: Char);
    procedure rvaf5Enter(Sender: TObject);
    procedure rvaf6Enter(Sender: TObject);
    procedure rvaf7Enter(Sender: TObject);
    procedure rtf1Exit(Sender: TObject);
    procedure rtf2Exit(Sender: TObject);
    procedure rtf3Exit(Sender: TObject);
    procedure rtf4Exit(Sender: TObject);
    procedure rtf5Exit(Sender: TObject);
    procedure rtf6Exit(Sender: TObject);
    procedure rtf1Enter(Sender: TObject);
    procedure rtf2Enter(Sender: TObject);
    procedure rtf3Enter(Sender: TObject);
    procedure rtf4Enter(Sender: TObject);
    procedure rtf5Enter(Sender: TObject);
    procedure rtf6Enter(Sender: TObject);
    procedure rtf1KeyPress(Sender: TObject; var Key: Char);
    procedure rtf2KeyPress(Sender: TObject; var Key: Char);
    procedure rtf3KeyPress(Sender: TObject; var Key: Char);
    procedure rtf4KeyPress(Sender: TObject; var Key: Char);
    procedure rtf5KeyPress(Sender: TObject; var Key: Char);
    procedure rtf6KeyPress(Sender: TObject; var Key: Char);
    procedure evt8Enter(Sender: TObject);
    procedure rvp5KeyPress(Sender: TObject; var Key: Char);
    procedure rvp6KeyPress(Sender: TObject; var Key: Char);
    procedure rvp7KeyPress(Sender: TObject; var Key: Char);
    procedure rvp8KeyPress(Sender: TObject; var Key: Char);
    procedure rvp5Enter(Sender: TObject);
    procedure rvp6Enter(Sender: TObject);
    procedure rvp7Enter(Sender: TObject);
    procedure rvp8Enter(Sender: TObject);
    procedure rvp5Exit(Sender: TObject);
    procedure rvp6Exit(Sender: TObject);
    procedure rvp7Exit(Sender: TObject);
    procedure rvp8Exit(Sender: TObject);
    procedure rvf5KeyPress(Sender: TObject; var Key: Char);
    procedure rvf6KeyPress(Sender: TObject; var Key: Char);
    procedure rvf7KeyPress(Sender: TObject; var Key: Char);
    procedure rvf8KeyPress(Sender: TObject; var Key: Char);
    procedure rvf5Enter(Sender: TObject);
    procedure rvf6Enter(Sender: TObject);
    procedure rvf7Enter(Sender: TObject);
    procedure rvf8Enter(Sender: TObject);
    procedure rvf5Exit(Sender: TObject);
    procedure rvf6Exit(Sender: TObject);
    procedure rvf7Exit(Sender: TObject);
    procedure rvf8Exit(Sender: TObject);
    procedure rva5KeyPress(Sender: TObject; var Key: Char);
    procedure rva6KeyPress(Sender: TObject; var Key: Char);
    procedure rva7KeyPress(Sender: TObject; var Key: Char);
    procedure rva8KeyPress(Sender: TObject; var Key: Char);
    procedure rva5Enter(Sender: TObject);
    procedure rva6Enter(Sender: TObject);
    procedure rva7Enter(Sender: TObject);
    procedure rva8Enter(Sender: TObject);
    procedure rva5Exit(Sender: TObject);
    procedure rva6Exit(Sender: TObject);
    procedure rva7Exit(Sender: TObject);
    procedure rva8Exit(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
  private
    { Private declarations }
    procedure pegaBicos;
    procedure pegaEncerrantes;
    procedure IgualarVariaveis;
  public
    { Public declarations }
  end;

var
  frmLMC: TfrmLMC;
  xdata: TDateTime;
  xcodproduto: integer;
  xnomeproduto: string;
  xtanque,  xqtde_bicos, eqtde_bicos  : integer;
  xtanque_estoq, xpreco_comb: double;
  xabert1, xabert2, xabert3, xabert4, xabert5, xabert6, xabert7, xabert8 : integer;
  xvendb1, xvendb2, xvendb3, xvendb4, xvendb5, xvendb6, xvendb7, xvendb8 : double;
  xvenvaldb1, xvenvaldb2, xvenvaldb3, xvenvaldb4, xvenvaldb5, xvenvaldb6, xvenvaldb7, xvenvaldb8 : double;
  xestoq_escritural, xestoq_fechamento, xperdasobra : double;
  bedatual, xacumulado, xbomba, xpagina_atual : integer;

  xpega_bicoatual : string;
  xqtde_venbico, xval_venbico  :  double;
  xcod_pesq : integer;
  prim_dia, ultim_dia : TDate;

implementation

uses modulo, xloc_combustivel, principal, xloc_LMC;

{$R *.dfm}

procedure TfrmLMC.bincluirClick(Sender: TObject);
begin

  edata.Date :=StrToDate(frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING);
  qrLMC.insert;
  qrLMC.FieldByName('codigo').AsString := frmprincipal.codifica('LANLMC');
  pficha.Enabled := true;

  PopupMenu := pop2;

  pficha.Enabled := True;
  eproduto.Enabled := True;
  eproduto.SetFocus;
  pgravar.Visible := true;
  pgravar.Align := alClient;


end;

procedure TfrmLMC.bfecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLMC.edataKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.edataExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.edataEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure TfrmLMC.eprodutoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.eprodutoEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.FormShow(Sender: TObject);
begin

  pgravar.visible := false;
  pficha.Enabled := True;
  edata.Date :=StrToDate(frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING);
  eproduto.Enabled := False;
  pg_lmc.ActivePageIndex := 0;

  qrLMC.close;
  qrLMC.SQL.clear;
  qrLMC.SQL.add('select * from LMC order by codigo');
  qrLMC.open;
  qrLMC.first;

  xcod_pesq := qrLMC.fieldbyname('codigo').AsInteger;


  xvendb1 := 0;
  xvendb2 := 0;
  xvendb3 := 0;
  xvendb4 := 0;
  xvendb5 := 0;
  xvendb6 := 0;
  xvendb7 := 0;
  xvendb8 := 0;

  xvenvaldb1 := 0;
  xvenvaldb2 := 0;
  xvenvaldb3 := 0;
  xvenvaldb4 := 0;
  xvenvaldb5 := 0;
  xvenvaldb6 := 0;
  xvenvaldb7 := 0;
  xvenvaldb8 := 0;

end;

procedure TfrmLMC.bcancelarClick(Sender: TObject);
begin
  if (qrLMC.State = dsinsert) or (qrLMC.State = dsedit) then
  begin
        if (qrLMC.State = dsinsert) then
        begin
          frmprincipal.qrmestre.close;
          frmprincipal.qrmestre.sql.clear;
          frmprincipal.qrmestre.sql.add('update c000000 set sequencia = sequencia - 1 where codigo = ''LANLMC''');
          frmprincipal.qrmestre.ExecSQL;
        end;


      qrLMC.cancel;

      pg_lmc.ActivePageIndex := 0;
  end;
//  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  rta1.Enabled  := False;
  rta2.Enabled  := False;
  rta3.Enabled  := False;
  rta4.Enabled  := False;
  rta5.Enabled  := False;
  rta6.Enabled  := False;
  rtf1.Enabled  := False;
  rtf2.Enabled  := False;
  rtf3.Enabled  := False;
  rtf4.Enabled  := False;
  rtf5.Enabled  := False;
  rtf6.Enabled  := False;

  bincluir.setfocus;

end;

procedure TfrmLMC.rta1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rta2Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rta3Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rta4Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rta5Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rta6Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.pg_lmcChange(Sender: TObject);
begin
  prim_dia := StartOfTheMonth(now);
  ultim_dia := EndOfTheMonth(now);


  xqtde_venbico := 0;
  xval_venbico := 0;

  if pg_lmc.ActivePageIndex = 1 then
  begin
    if (qrLMC.State = dsinsert) or (qrLMC.State = dsedit) then
    begin
      edt1.Text := IntToStr(xtanque);
      edn1.SetFocus;
    end
    else
      IgualarVariaveis;

  end
  else if pg_lmc.ActivePageIndex = 2 then
  begin
    if (qrLMC.State = dsinsert) or (qrLMC.State = dsedit) then
    begin
      evt1.Text := IntToStr(xtanque);
      PegaBicos;
      evt1.setfocus;
    end
    else
      IgualarVariaveis;

  end
  else if pg_lmc.ActivePageIndex = 3 then
  begin
    if (qrLMC.State = dsinsert) or (qrLMC.State = dsedit) then
    begin

      xqtde_venbico := xvendb1 + xvendb2 + xvendb3 + xvendb4 + xvendb5 + xvendb6 +
                       xvendb7 + xvendb8;

      lbVendas.Caption := formatfloat('###,###,##0.00',xqtde_venbico);

      xval_venbico := xvenvaldb1 + xvenvaldb2 + xvenvaldb3 + xvenvaldb4 + xvenvaldb5 +
                      xvenvaldb6 + xvenvaldb7 + xvenvaldb8;
      lbValorVendas.Caption := formatfloat('###,###,##0.00',xval_venbico);



      xestoq_escritural:=(rta1.Value + rta2.Value + rta3.Value + rta4.Value + rta5.Value + rta6.Value) +
                         (rvr1.Value + rvr2.Value + rvr3.Value + rvr4.Value) - xqtde_venbico;

      lbestoqescrit.Caption := formatfloat('###,###,##0.00',xestoq_escritural);

      if xtanque = 1 then
        rtf1.Value := xestoq_escritural
      else if xtanque = 2 then
        rtf2.Value := xestoq_escritural
      else if xtanque = 3 then
        rtf3.Value := xestoq_escritural
      else if xtanque = 4 then
        rtf4.Value := xestoq_escritural
      else if xtanque = 5 then
        rtf5.Value := xestoq_escritural;

      xestoq_fechamento:=(rtf1.Value + rtf2.Value + rtf3.Value + rtf4.Value + rtf5.Value + rtf6.Value);

      lbestoqfecha.Caption := formatfloat('###,###,##0.00',xestoq_fechamento);

      xperdasobra:= xestoq_fechamento - xestoq_escritural;
      lbPerdSobr.Caption := FloatToStr(xperdasobra);

      xacumulado := 0;
      qrApoio.Close;
      qrApoio.SQL.Clear;
      qrApoio.SQL.Add('select * from LMC where data >= :data_ini and data <= :data_fim');
      qrApoio.Params.ParamByName('data_ini').AsDate := prim_dia;
      qrApoio.Params.ParamByName('data_fim').AsDate := ultim_dia;
      qrApoio.Open;

      While not qrApoio.Eof do
      begin
        xacumulado := xacumulado + qrApoio.fieldbyname('estoq_fechamento').AsInteger;
        qrApoio.Next;
      end;

      lbValorAcumu.caption := IntToStr(xacumulado);

    end
    else
      IgualarVariaveis;

   end;

end;

procedure TfrmLMC.rvr1Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  edt2.Text := IntToStr(xtanque);

end;

procedure TfrmLMC.rvr2Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

      edt3.Text := IntToStr(xtanque);

end;

procedure TfrmLMC.rvr3Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
      edt4.Text := IntToStr(xtanque);

end;

procedure TfrmLMC.rta1Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  pg_lmc.ActivePageIndex := 1;

end;

procedure TfrmLMC.rta2Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  pg_lmc.ActivePageIndex := 1;

end;

procedure TfrmLMC.rta3Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  pg_lmc.ActivePageIndex := 1;

end;

procedure TfrmLMC.rta4Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
//  pg_lmc.ActivePageIndex := 1;

end;

procedure TfrmLMC.rta5Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  pg_lmc.ActivePageIndex := 1;

end;

procedure TfrmLMC.rta6Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  pg_lmc.ActivePageIndex := 1;

end;

procedure TfrmLMC.rta1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rta2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rta3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rta4KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rta5KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rta6KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.edn1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.edn2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.edn3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.edn4KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.edt1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.edt2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.edt3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.edt4KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rvr1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rvr2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rvr3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rvr4KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.edn1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.edn2Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.edn3Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.edn4Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.edt1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.edt2Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.edt3Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.edt4Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rvr1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rvr2Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rvr3Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rvr4Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.edn1Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.edn2Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.edn3Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.edn4Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.edt1Exit(Sender: TObject);
begin
     tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.edt2Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.edt3Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.edt4Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.rvr4Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.eprodutoButtonClick(Sender: TObject);
begin
  frmxloc_combustivel := tfrmxloc_combustivel.Create(self);
  frmxloc_combustivel.ShowModal;
  xcodproduto := frmxloc_combustivel.query.fieldbyname('codigo').AsInteger;
  xnomeproduto:= frmxloc_combustivel.query.fieldbyname('nome').AsString;
  eproduto.Text := IntToStr(frmxloc_combustivel.query.fieldbyname('codigo').AsInteger);
  edproduto.Text := frmxloc_combustivel.query.fieldbyname('nome').AsString;

end;

procedure TfrmLMC.eprodutoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

  qrCombustiveis.Close;
  qrCombustiveis.SQL.Clear;
  qrCombustiveis.SQL.Add('select * from CADCOMBUSTIVEL where codigo = :codigo');
  qrCombustiveis.Params.ParamByName('codigo').AsInteger := StrToInt(Trim(eproduto.Text));
  qrCombustiveis.Open;

  if qrCombustiveis.RecordCount = 0 then
  begin
       application.messagebox('Produto não encontrado! Verifique...!','Atenção',mb_ok+mb_iconerror);
       edata.SetFocus;
  end
  else
  begin

    edproduto.Text := qrCombustiveis.fieldbyname('nome').AsString;
    xpreco_comb := qrCombustiveis.fieldbyname('pr_venda').AsFloat;

    lbpreco.Caption := formatfloat('###,###,##0.00',xpreco_comb);

    qrTanques.Close;
    qrTanques.SQL.Clear;
    qrTanques.SQL.Add('select * from CADTANQUE where cod_produto = :cod_produto');
    qrTanques.Params.ParamByName('cod_produto').AsInteger := StrToInt(Trim(eproduto.Text));
    qrTanques.Open;
    xtanque := qrTanques.fieldbyname('codigo').AsInteger;
    xtanque_estoq := qrTanques.fieldbyname('estoque_medicao').AsFloat;

//    ShowMessage(IntToStr(xtanque));
    if xtanque = 1 then
    begin
      rta1.Enabled  := True;
      rta1.SetFocus;
      rta1.Value := xtanque_estoq;
      rtf1.Enabled  := True;
    end
    else if xtanque = 2 then
    begin
        rta2.Enabled  := True;
        rta2.SetFocus;
        rta2.Value := xtanque_estoq;
        rtf2.Enabled  := True;
    end
    else if xtanque = 3 then
    begin
        rta3.Enabled  := True;
        rta3.SetFocus;
        rta3.Value := xtanque_estoq;
        rtf3.Enabled  := True;
    end
    else if xtanque = 4 then
    begin
        rta4.Enabled  := True;
        rta4.SetFocus;
        rta4.Value := xtanque_estoq;
        rtf4.Enabled  := True;
    end
    else if xtanque = 5 then
    begin
        rta5.Enabled := True;
        rta5.SetFocus;
        rta5.Value := xtanque_estoq;
        rtf5.Enabled  := True;
    end;
  end;

end;

procedure TfrmLMC.rvaf1Exit(Sender: TObject);
begin
      tedit(sender).Color := clwindow;
      xvendb1 := rvf1.Value - (rva1.Value + rvaf1.Value);
      xvenvaldb1:= xvendb1 * rvp1.Value;
      evt2.Text := IntToStr(xtanque);
      lbv1.Caption := FloatToStr(xvendb1);
end;

procedure TfrmLMC.rvaf2Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  evt3.Text := IntToStr(xtanque);
  xvendb2 := rvf2.Value - rva2.Value - rvaf2.Value;
  xvenvaldb2:= xvendb2 * rvp2.Value;
  lbv2.Caption := FloatToStr(xvendb2);

end;

procedure TfrmLMC.rvaf3Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
      evt4.Text := IntToStr(xtanque);
      xvendb3 := rvf3.Value - rva3.Value - rvaf3.Value;
      xvenvaldb3:= xvendb3 * rvp2.Value;
      lbv3.Caption := FloatToStr(xvendb3);

end;

procedure TfrmLMC.rvaf4Exit(Sender: TObject);
begin
   tedit(sender).Color := clwindow;

      evt5.Text := IntToStr(xtanque);
      xvendb4 := rvf4.Value - rva4.Value - rvaf4.Value;
      xvenvaldb4:= xvendb4 * rvp4.Value;

      lbv4.Caption := FloatToStr(xvendb4);

end;

procedure TfrmLMC.rvaf5Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
      evt6.Text := IntToStr(xtanque);
      xvendb5 := rvf5.Value - rva5.Value - rvaf5.Value;
      xvenvaldb5:= xvendb5 * rvp5.Value;

      lbv5.Caption := FloatToStr(xvendb5);

end;

procedure TfrmLMC.rvaf6Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
      evt7.Text := IntToStr(xtanque);
      xvendb6 := rvf6.Value - rva6.Value - rvaf6.Value;
      xvenvaldb6:= xvendb6 * rvp6.Value;

      lbv6.Caption := FloatToStr(xvendb6);

end;

procedure TfrmLMC.rvaf7Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
      evt8.Text := IntToStr(xtanque);
      xvendb7 := rvf7.Value - rva7.Value - rvaf7.Value;
      xvenvaldb7:= xvendb7 * rvp7.Value;

      lbv7.Caption := FloatToStr(xvendb7);

end;

procedure TfrmLMC.evb1Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  xpega_bicoatual := evb1.Text;
  bedatual := 1;
  PegaEncerrantes;
end;

procedure TfrmLMC.evt1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.evb1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rvp1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rvf1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rva1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rvaf1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.evt1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.evb1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rvp1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rvf1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rva1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rvaf1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.evt1Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.rvp1Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.rvf1Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.rva1Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.pegaEncerrantes;
begin
{
    qrEncerrantes.Close;
    qrEncerrantes.SQL.Clear;
    qrEncerrantes.SQL.Add('select * from ENCERRANTES where cod_bico = :cod_bico');
    qrEncerrantes.SQL.Add(' and cod_produto = :cod_produto and data = :data');
//    qrEncerrantes.Params.ParamByName('cod_bico').AsInteger := StrToInt(Trim(evb1.Text));

    qrEncerrantes.Params.ParamByName('cod_bico').AsInteger := StrToInt(Trim(xpega_bicoatual));
    qrEncerrantes.Params.ParamByName('cod_produto').AsInteger := StrToInt(Trim(eproduto.Text));
    qrEncerrantes.Params.ParamByName('data').AsDateTime := edata.Date;
    qrEncerrantes.Open;
}

    qrult_Encerrantes.Close;
    qrult_Encerrantes.SQL.Clear;
    qrult_Encerrantes.SQL.Add('select * from ULT_LMC where cod_bico = :cod_bico');
    qrult_Encerrantes.SQL.Add(' and cod_produto = :cod_produto ');
    if bedatual = 1 then
      qrult_Encerrantes.Params.ParamByName('cod_bico').asinteger := StrToInt(evb1.text)
    else if bedatual = 2 then
      qrult_Encerrantes.Params.ParamByName('cod_bico').asinteger := StrToInt(evb2.text)
    else if bedatual = 3 then
      qrult_Encerrantes.Params.ParamByName('cod_bico').asinteger := StrToInt(evb3.text)
    else if bedatual = 4 then
      qrult_Encerrantes.Params.ParamByName('cod_bico').asinteger := StrToInt(evb4.text)
    else if bedatual = 5 then
      qrult_Encerrantes.Params.ParamByName('cod_bico').asinteger := StrToInt(evb5.text)
    else if bedatual = 6 then
      qrult_Encerrantes.Params.ParamByName('cod_bico').asinteger := StrToInt(evb6.text)
    else if bedatual = 7 then
      qrult_Encerrantes.Params.ParamByName('cod_bico').asinteger := StrToInt(evb7.text)
    else if bedatual = 8 then
      qrult_Encerrantes.Params.ParamByName('cod_bico').asinteger := StrToInt(evb8.text);

    qrult_Encerrantes.Params.ParamByName('cod_produto').AsInteger := StrToInt(Trim(eproduto.Text));
    qrult_Encerrantes.Open;

//    if qrEncerrantes.RecordCount > 0 then
      if qrult_Encerrantes.RecordCount > 0 then
      begin
        if bedatual = 1 then
        begin
//          xabert1 := qrEncerrantes.fieldbyname('abertura').AsInteger;
//          xabert1 := qrult_Encerrantes.fieldbyname('abertura').AsInteger;
          xabert1 := qrult_Encerrantes.fieldbyname('encerramento').AsInteger;
          rvp1.Value := xpreco_comb;
          rva1.Value := xabert1;
        end
        else if bedatual = 2 then
                begin
          xabert2 := qrult_Encerrantes.fieldbyname('encerramento').AsInteger;
          rvp2.Value := xpreco_comb;
          rva2.Value := xabert2;
        end
        else if bedatual = 3 then
                begin
          xabert3 := qrult_Encerrantes.fieldbyname('encerramento').AsInteger;
          rvp3.Value := xpreco_comb;
          rva3.Value := xabert3;
        end
        else if bedatual = 4 then
                begin
          xabert4 := qrult_Encerrantes.fieldbyname('encerramento').AsInteger;
          rvp4.Value := xpreco_comb;
          rva4.Value := xabert4;
        end
        else if bedatual = 5 then
                begin
          xabert5 := qrult_Encerrantes.fieldbyname('encerramento').AsInteger;
          rvp5.Value := xpreco_comb;
          rva5.Value := xabert5;
        end
        else if bedatual = 6 then
        begin
          xabert6 := qrult_Encerrantes.fieldbyname('encerramento').AsInteger;
          rvp6.Value := xpreco_comb;
          rva6.Value := xabert6;
        end
        else if bedatual = 7 then
                begin
          xabert7 := qrult_Encerrantes.fieldbyname('encerramento').AsInteger;
          rvp7.Value := xpreco_comb;
          rva7.Value := xabert7;
        end
        else if bedatual = 8 then
                begin
          xabert8 := qrult_Encerrantes.fieldbyname('encerramento').AsInteger;
          rvp8.Value := xpreco_comb;
          rva8.Value := xabert8;
        end
    end
    else
    BEGIN
      ShowMessage('nada');
      ShowMessage(xpega_bicoatual);
      ShowMessage(eproduto.Text);
      ShowMessage(DateToStr(edata.Date));
    END;
end;

procedure TfrmLMC.pegaBicos;
var
  xcod_bicos : Array of integer;
  icontador : integer;
begin
//  ShowMessage('passou aqui bicos');
  qrBicos.Close;
  qrBicos.SQL.Clear;
  qrBicos.SQL.Add('select * from CADBICO where cod_produto = :cod_produto');
  qrBicos.Params.ParamByName('cod_Produto').AsInteger := StrToInt(Trim(eproduto.Text));
  qrBicos.Open;

  xbomba := qrBicos.Fieldbyname('cod_bomba').asinteger;

  xqtde_bicos := 0;
  While not qrBicos.Eof do
  begin
    xqtde_bicos := xqtde_bicos + 1;
    qrBicos.next;
  end;

  eqtde_bicos := xqtde_bicos;
  icontador:= 0;
//  SetLength(xcod_bicos,xqtde_bicos);
  SetLength(xcod_bicos,8);

  qrBicos.First;
  While  xqtde_bicos > 0 do
  begin
    xcod_bicos[icontador] := qrBicos.fieldbyname('codigo').AsInteger;
    xqtde_bicos := xqtde_bicos - 1;
    if icontador = 0 then
    begin
      evb1.Text := IntToStr(xcod_bicos[icontador]);
      evt1.Text := IntToStr(xtanque);
    end
    else if icontador = 1 then
    begin
      evb2.Text := IntToStr(xcod_bicos[icontador]);
      evt2.Text := IntToStr(xtanque);
    end
    else if icontador = 2 then
    begin
      evb3.Text := IntToStr(xcod_bicos[icontador]);
      evt3.Text := IntToStr(xtanque);
    end
    else if icontador = 3 then
    begin
      evb4.Text := IntToStr(xcod_bicos[icontador]);
      evt4.Text := IntToStr(xtanque);
    end
    else if icontador = 4 then
    begin
      evb5.Text := IntToStr(xcod_bicos[icontador]);
      evt5.Text := IntToStr(xtanque);
    end
    else if icontador = 5 then
    begin
      evb6.Text := IntToStr(xcod_bicos[icontador]);
      evt6.Text := IntToStr(xtanque);
    end
    else if icontador = 6 then
    begin
      evb7.Text := IntToStr(xcod_bicos[icontador]);
      evt7.Text := IntToStr(xtanque);
    end
    else if icontador = 7 then
    begin
      evb8.Text := IntToStr(xcod_bicos[icontador]);
      evt8.Text := IntToStr(xtanque);
    end;
    icontador := icontador + 1;
    qrBicos.next;
  end;


end;

procedure TfrmLMC.evt2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.evt3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.evt4KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.evt5KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.evt6KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.evt7KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.evt8KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.evb2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.evb3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.evb4KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.evb5KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.evb6KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.evb7KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.evb8KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.evt2Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.evt3Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.evt4Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.evt5Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.evt6Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.evt7Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.evb2Enter(Sender: TObject);
begin
   tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.evb3Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.evb4Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.evb5Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.evb6Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.evb7Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.evb8Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.evt2Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.evt3Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.evt4Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.evt5Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.evt6Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.evt7Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.evt8Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.evb2Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  xpega_bicoatual := evb2.Text;
  bedatual := 2;
  PegaEncerrantes;
end;

procedure TfrmLMC.evb3Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  bedatual := 3;

end;

procedure TfrmLMC.evb4Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  bedatual := 4;

end;

procedure TfrmLMC.evb5Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  bedatual := 5;

end;

procedure TfrmLMC.evb6Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  bedatual := 6;

end;

procedure TfrmLMC.evb7Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  bedatual := 7;

end;

procedure TfrmLMC.evb8Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  bedatual := 8;

end;

procedure TfrmLMC.rvp2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rvf2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rva2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rvaf2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rvp2Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rvf2Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rva2Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rvaf2Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rvp2Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.rvf2Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.rva2Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.rvf3Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rva3Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rvaf3Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rvp3Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.rvp3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rvf3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rva3KeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rvaf3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rvp3Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rvf3Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.rva3Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.rvp4Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rvf4Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rva4Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rvaf4Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rvp4Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.rvf4Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.rva4Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.rvp4KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rvf4KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rva4KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rvaf4KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rvaf8Exit(Sender: TObject);
begin
   tedit(sender).Color := clwindow;
    xvendb8 := rvf8.Value - rva8.Value - rvaf8.Value;
    xvenvaldb8:= xvendb8 * rvp8.Value;
    lbv8.Caption := FloatToStr(xvendb8);

end;

procedure TfrmLMC.rvaf8KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rvaf8Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rvaf5KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rvaf6KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rvaf7KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rvaf5Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rvaf6Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rvaf7Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rtf1Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

      xestoq_fechamento:=(rtf1.Value + rtf2.Value + rtf3.Value + rtf4.Value + rtf5.Value + rtf6.Value);
      lbestoqfecha.Caption := formatfloat('###,###,##0.00',xestoq_fechamento);
      xperdasobra:= xestoq_fechamento - xestoq_escritural;
      lbPerdSobr.Caption := FloatToStr(xperdasobra);

end;

procedure TfrmLMC.rtf2Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

      xestoq_escritural:=(rta1.Value + rta2.Value + rta3.Value + rta4.Value + rta5.Value + rta6.Value) +
                         (rvr1.Value + rvr2.Value + rvr3.Value + rvr4.Value) - xqtde_venbico;

      xestoq_fechamento:=(rtf1.Value + rtf2.Value + rtf3.Value + rtf4.Value + rtf5.Value + rtf6.Value);
      lbestoqfecha.Caption := formatfloat('###,###,##0.00',xestoq_fechamento);
      xperdasobra:= xestoq_fechamento - xestoq_escritural;
      lbPerdSobr.Caption := FloatToStr(xperdasobra);

end;

procedure TfrmLMC.rtf3Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

      xestoq_fechamento:=(rtf1.Value + rtf2.Value + rtf3.Value + rtf4.Value + rtf5.Value + rtf6.Value);
      lbestoqfecha.Caption := formatfloat('###,###,##0.00',xestoq_fechamento);
      xperdasobra:= xestoq_fechamento - xestoq_escritural;
      lbPerdSobr.Caption := FloatToStr(xperdasobra);

end;

procedure TfrmLMC.rtf4Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

      xestoq_fechamento:=(rtf1.Value + rtf2.Value + rtf3.Value + rtf4.Value + rtf5.Value + rtf6.Value);
      lbestoqfecha.Caption := formatfloat('###,###,##0.00',xestoq_fechamento);
      xperdasobra:= xestoq_fechamento - xestoq_escritural;
      lbPerdSobr.Caption := FloatToStr(xperdasobra);

end;

procedure TfrmLMC.rtf5Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

      xestoq_fechamento:=(rtf1.Value + rtf2.Value + rtf3.Value + rtf4.Value + rtf5.Value + rtf6.Value);
      lbestoqfecha.Caption := formatfloat('###,###,##0.00',xestoq_fechamento);
      xperdasobra:= xestoq_fechamento - xestoq_escritural;
      lbPerdSobr.Caption := FloatToStr(xperdasobra);

end;

procedure TfrmLMC.rtf6Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

      xestoq_fechamento:=(rtf1.Value + rtf2.Value + rtf3.Value + rtf4.Value + rtf5.Value + rtf6.Value);
      lbestoqfecha.Caption := formatfloat('###,###,##0.00',xestoq_fechamento);
      xperdasobra:= xestoq_fechamento - xestoq_escritural;
      lbPerdSobr.Caption := FloatToStr(xperdasobra);

end;

procedure TfrmLMC.rtf1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rtf2Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rtf3Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rtf4Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rtf5Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rtf6Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rtf1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rtf2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rtf3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rtf4KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rtf5KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rtf6KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.evt8Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rvp5KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rvp6KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rvp7KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rvp8KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rvp5Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rvp6Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rvp7Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rvp8Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rvp5Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.rvp6Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.rvp7Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.rvp8Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.rvf5KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rvf6KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rvf7KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rvf8KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rvf5Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rvf6Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rvf7Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rvf8Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rvf5Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.rvf6Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.rvf7Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.rvf8Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.rva5KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rva6KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rva7KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rva8KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMC.rva5Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rva6Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rva7Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rva8Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMC.rva5Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.rva6Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.rva7Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.rva8Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMC.bgravarClick(Sender: TObject);
begin
   if eproduto.Text = '' then
   begin
     application.messagebox('Favor informar um produto válido para este registro!','Atenção',mb_ok+mb_iconerror);
     eproduto.setfocus;
     exit;
   end;

  xpagina_atual := 0;
  qrLivro.Close;
  qrLivro.SQL.Clear;
  qrLivro.SQL.Add('select * from LMC_ABERFECH where cod_combustivel = :cod_combustivel');
  qrLivro.Params.ParamByName('cod_combustivel').AsInteger := StrToInt(Trim(eproduto.Text));
  qrLivro.Open;
  xpagina_atual := qrLivro.fieldbyname('pagina_atual').asinteger;

  xpagina_atual := xpagina_atual + 1;

  qrLMC.Fieldbyname('tanque').asinteger := xtanque;
  qrLMC.Fieldbyname('bomba').asinteger := xbomba;
  qrLMC.Fieldbyname('data').AsDateTime := edata.Date;
  qrLMC.Fieldbyname('combustivel').asinteger := StrToInt(Trim(eproduto.Text));
  qrLMC.Fieldbyname('preco').asfloat := StrToFloat(lbpreco.caption);
  qrLMC.Fieldbyname('notafiscal1').asstring := Trim(edn1.Text);
  qrLMC.Fieldbyname('notafiscal2').asstring := Trim(edn2.Text);
  qrLMC.Fieldbyname('notafiscal3').asstring := Trim(edn3.Text);
  qrLMC.Fieldbyname('notafiscal4').asstring:= Trim(edn4.Text);
  qrLMC.Fieldbyname('quantnf1').asinteger := Trunc(rvr1.Value);
  qrLMC.Fieldbyname('quantnf2').asinteger := Trunc(rvr2.Value);
  qrLMC.Fieldbyname('quantnf3').asinteger := Trunc(rvr3.Value);
  qrLMC.Fieldbyname('quantnf4').asinteger := Trunc(rvr4.Value);


  if rvf1.Value > 0 then
//  if xvendb1 > 0 then
  begin
    qrLMC.Fieldbyname('bico1').asinteger := StrToInt(evb1.Text);
    qrLMC.Fieldbyname('aber_bico1').asinteger :=Trunc(rva1.Value);
    qrLMC.Fieldbyname('enc_bico1').asinteger :=Trunc(rvf1.Value);
    qrLMC.Fieldbyname('afer_bico1').asinteger :=Trunc(rvaf1.Value);
  end;
//  if xvendb2 > 0 then
  if rvf2.Value > 0 then
  begin
    qrLMC.Fieldbyname('bico2').asinteger :=StrToInt(evb2.Text);
    qrLMC.Fieldbyname('aber_bico2').asinteger :=Trunc(rva2.Value);
    qrLMC.Fieldbyname('enc_bico2').asinteger :=Trunc(rvf2.Value);
    qrLMC.Fieldbyname('afer_bico2').asinteger :=Trunc(rvaf2.Value);
  end;
//  if xvendb3 > 0 then
  if rvf3.Value > 0 then
  begin
    qrLMC.Fieldbyname('bico3').asinteger :=StrToInt(evb3.Text);
    qrLMC.Fieldbyname('aber_bico3').asinteger :=Trunc(rva3.Value);
    qrLMC.Fieldbyname('enc_bico3').asinteger :=Trunc(rvf3.Value);
    qrLMC.Fieldbyname('afer_bico3').asinteger :=Trunc(rvaf3.Value);
  end;
//  if xvendb4 > 0 then
  if rvf4.Value > 0 then
  begin
    qrLMC.Fieldbyname('bico4').asinteger :=StrToInt(evb4.Text);
    qrLMC.Fieldbyname('aber_bioo4').asinteger :=Trunc(rva4.Value);
    qrLMC.Fieldbyname('enc_bico4').asinteger :=Trunc(rvf4.Value);
    qrLMC.Fieldbyname('afer_bico4').asinteger :=Trunc(rvaf4.Value);
  end;
//  if xvendb5 > 0 then
  if rvf5.Value > 0 then
  begin
    qrLMC.Fieldbyname('bico5').asinteger :=StrToInt(evb5.Text);
    qrLMC.Fieldbyname('aber_bioo5').asinteger :=Trunc(rva5.Value);
    qrLMC.Fieldbyname('enc_bico5').asinteger :=Trunc(rvf5.Value);
    qrLMC.Fieldbyname('afer_bico5').asinteger :=Trunc(rvaf5.Value);
  end;
//  if xvendb6 > 0 then
  if rvf6.Value > 0 then
  begin
    qrLMC.Fieldbyname('bico6').asinteger :=StrToInt(evb6.Text);
    qrLMC.Fieldbyname('aber_bioo6').asinteger :=Trunc(rva6.Value);
    qrLMC.Fieldbyname('enc_bico6').asinteger :=Trunc(rvf6.Value);
    qrLMC.Fieldbyname('afer_bico6').asinteger :=Trunc(rvaf6.Value);
  end;
//  if xvendb7 > 0 then
  if rvf7.Value > 0 then
  begin
    qrLMC.Fieldbyname('bico7').asinteger :=StrToInt(evb7.Text);
    qrLMC.Fieldbyname('aber_bico7').asinteger :=Trunc(rva7.Value);
    qrLMC.Fieldbyname('enc_bico7').asinteger :=Trunc(rvf7.Value);
    qrLMC.Fieldbyname('afer_bico7').asinteger :=Trunc(rvaf7.Value);
  end;
//  if xvendb8 > 0 then
  if rvf8.Value > 0 then
  begin
    qrLMC.Fieldbyname('bico8').asinteger :=StrToInt(evb8.Text);
    qrLMC.Fieldbyname('aber_bico8').asinteger :=Trunc(rva8.Value);
    qrLMC.Fieldbyname('enc_bico8').asinteger :=Trunc(rvf8.Value);
    qrLMC.Fieldbyname('afer_bico8').asinteger :=Trunc(rvaf8.Value);
  end;

  qrLMC.Fieldbyname('qtevend_1').asinteger :=Trunc(xvendb1);
  qrLMC.Fieldbyname('qtevend_2').asinteger :=Trunc(xvendb2);
  qrLMC.Fieldbyname('qtevend_3').asinteger :=Trunc(xvendb3);
  qrLMC.Fieldbyname('qtevend_4').asinteger :=Trunc(xvendb4);
  qrLMC.Fieldbyname('qtevend_5').asinteger :=Trunc(xvendb5);
  qrLMC.Fieldbyname('qtevend_6').asinteger :=Trunc(xvendb6);
  qrLMC.Fieldbyname('qtevend_7').asinteger :=Trunc(xvendb7);
  qrLMC.Fieldbyname('qtevend_8').asinteger :=Trunc(xvendb8);
  qrLMC.Fieldbyname('totalvend_1').asfloat :=xvenvaldb1;
  qrLMC.Fieldbyname('totalvend_2').asfloat :=xvenvaldb2;
  qrLMC.Fieldbyname('totalvend_3').asfloat :=xvenvaldb3;
  qrLMC.Fieldbyname('totalvend_4').asfloat :=xvenvaldb4;
  qrLMC.Fieldbyname('totalvend_5').asfloat :=xvenvaldb5;
  qrLMC.Fieldbyname('totalvend_6').asfloat :=xvenvaldb6;
  qrLMC.Fieldbyname('totalvend_7').asfloat :=xvenvaldb7;
  qrLMC.Fieldbyname('totalvend_8').asfloat :=xvenvaldb8;
  qrLMC.Fieldbyname('estoq_abertura').asinteger := Trunc(rta1.Value + rta2.Value + rta3.Value + rta4.Value + rta5.Value + rta6.Value);
  qrLMC.Fieldbyname('estoq_escritural').asinteger := Trunc(xestoq_escritural);
  qrLMC.Fieldbyname('estoq_fechamento').asinteger := Trunc(xestoq_fechamento);
  qrLMC.Fieldbyname('perda_sobra').asinteger := Trunc(xperdasobra);
  qrLMC.Fieldbyname('observacao').asstring := memobs.Text;
  qrLMC.Fieldbyname('pagina').asinteger := xpagina_atual;


  if (qrLMC.State = dsinsert) or (qrLMC.State = dsedit) then
  begin
      qrLMC.post;
  end;


  qrLivro.Close;
  qrLivro.SQL.Clear;
  qrLivro.SQL.Add('update LMC_ABERFECH set pagina_atual = :pagina_atual ');
  qrLivro.SQL.Add('where cod_combustivel = :cod_combustivel');
  qrLivro.Params.ParamByName('cod_combustivel').AsInteger := StrToInt(Trim(eproduto.Text));
  qrLivro.Params.ParamByName('pagina_atual').AsInteger := xpagina_atual;
  qrLivro.Execsql;


    qrTanques.Close;
    qrTanques.SQL.Clear;
    qrTanques.SQL.Add('update CADTANQUE set estoque_medicao = :estoque_medicao where cod_produto = :cod_produto');
    qrTanques.Params.ParamByName('estoque_medicao').AsFloat := xestoq_fechamento;
    qrTanques.Params.ParamByName('cod_produto').AsInteger := StrToInt(Trim(eproduto.Text));
    qrTanques.ExecSQL;


  if rvf1.Value > 0 then
  begin
    qrult_Encerrantes.Close;
    qrult_Encerrantes.SQL.Clear;
    qrult_Encerrantes.SQL.Add('select * from ULT_LMC where ');
    qrult_Encerrantes.SQL.Add('cod_bico = :cod_bico');
    qrult_Encerrantes.Params.ParamByName('cod_bico').asinteger := StrToInt(evb1.text);
    qrult_Encerrantes.Open;

    qrult_Encerrantes.Edit;
    qrult_Encerrantes.fieldbyname('data').AsDateTime := edata.Date;
    qrult_Encerrantes.fieldbyname('abertura').AsInteger := Trunc(rva1.Value);
    qrult_Encerrantes.fieldbyname('encerramento').AsInteger := Trunc(rvf1.Value);
    qrult_Encerrantes.fieldbyname('cod_produto').AsInteger := StrToInt(Trim(eproduto.Text));

    qrult_Encerrantes.Post;
  end;

  if rvf2.Value > 0 then
  begin
    qrult_Encerrantes.Close;
    qrult_Encerrantes.SQL.Clear;
    qrult_Encerrantes.SQL.Add('select * from ULT_LMC where ');
    qrult_Encerrantes.SQL.Add('cod_bico = :cod_bico');
    qrult_Encerrantes.Params.ParamByName('cod_bico').asinteger := StrToInt(evb2.text);
    qrult_Encerrantes.Open;

    qrult_Encerrantes.Edit;
    qrult_Encerrantes.fieldbyname('data').AsDateTime := edata.Date;
    qrult_Encerrantes.fieldbyname('abertura').AsInteger := Trunc(rva2.Value);
    qrult_Encerrantes.fieldbyname('encerramento').AsInteger := Trunc(rvf2.Value);
    qrult_Encerrantes.fieldbyname('cod_produto').AsInteger := StrToInt(Trim(eproduto.Text));
    qrult_Encerrantes.Post;
  end;




  frmmodulo.Conexao.Commit;
 // pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
//  bincluir.setfocus;
  Close;
end;

procedure TfrmLMC.blocalizarClick(Sender: TObject);
begin
  parametro_pesquisa := '';
  frmxloc_lmc := tfrmxloc_lmc.create(self);
  frmxloc_lmc.showmodal;
{
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrmarca.Locate('codigo',resultado_pesquisa1,[loCaseInsensitive]);
  end;
}
  if resultado_pesquisa1 <> '' then
  begin
    xcod_pesq := frmxloc_lmc.query.fieldbyname('codigo').AsInteger;
    IgualarVariaveis;
  end;



end;

procedure TfrmLMC.IgualarVariaveis;
begin

  qrLMC.Close;
  qrLMC.SQL.Clear;
  qrLMC.SQL.Add('select * from LMC where codigo = :codigo');
  qrLMC.Params.Parambyname('codigo').asinteger := xcod_pesq;
  qrLMC.Open;

  edata.date := qrLMC.Fieldbyname('data').AsDateTime;
  eproduto.text := IntToStr(qrLMC.Fieldbyname('combustivel').asinteger);
//  lbpreco.Caption := floatToStr(qrLMC.Fieldbyname('preco').asfloat);

  if qrLMC.Fieldbyname('tanque').asinteger = 1 then
    rta1.Value := qrLMC.Fieldbyname('estoq_abertura').asinteger
  else if qrLMC.Fieldbyname('tanque').asinteger = 2 then
    rta2.Value := qrLMC.Fieldbyname('estoq_abertura').asinteger
  else if qrLMC.Fieldbyname('tanque').asinteger = 3 then
    rta3.Value := qrLMC.Fieldbyname('estoq_abertura').asinteger
  else if qrLMC.Fieldbyname('tanque').asinteger = 4 then
    rta4.Value := qrLMC.Fieldbyname('estoq_abertura').asinteger
  else if qrLMC.Fieldbyname('tanque').asinteger = 5 then
    rta5.Value := qrLMC.Fieldbyname('estoq_abertura').asinteger
  else if qrLMC.Fieldbyname('tanque').asinteger = 6  then
    rta6.Value := qrLMC.Fieldbyname('estoq_abertura').asinteger;

  edn1.Text := qrLMC.Fieldbyname('notafiscal1').asstring;
  edn2.Text := qrLMC.Fieldbyname('notafiscal2').asstring;
  edn3.Text := qrLMC.Fieldbyname('notafiscal3').asstring;
  edn4.Text := qrLMC.Fieldbyname('notafiscal4').asstring;

  edt1.Text := IntToStr(qrLMC.Fieldbyname('tanque').asinteger);
  edt2.Text := IntToStr(qrLMC.Fieldbyname('tanque').asinteger);
  edt3.Text := IntToStr(qrLMC.Fieldbyname('tanque').asinteger);
  edt4.Text := IntToStr(qrLMC.Fieldbyname('tanque').asinteger);


  rvr1.Value:= qrLMC.Fieldbyname('quantnf1').asinteger;
  rvr2.Value:= qrLMC.Fieldbyname('quantnf2').asinteger;
  rvr3.Value:= qrLMC.Fieldbyname('quantnf3').asinteger;
  rvr4.Value:= qrLMC.Fieldbyname('quantnf4').asinteger;

  if qrLMC.Fieldbyname('bico1').asinteger > 0 then
  begin
    evt1.text := IntToStr(qrLMC.Fieldbyname('tanque').asinteger);
    evb1.text := IntToStr(qrLMC.Fieldbyname('bico1').asinteger);
    rvp1.Value := qrLMC.Fieldbyname('preco').asinteger;
    rvf1.Value := qrLMC.Fieldbyname('enc_bico1').asinteger;
    rva1.Value := qrLMC.Fieldbyname('aber_bico1').asinteger;
    rvaf1.Value := qrLMC.Fieldbyname('afer_bico1').asinteger;
    lbv1.Caption := FloatToStr(qrLMC.Fieldbyname('qtevend_1').asinteger);

  end;

  if qrLMC.Fieldbyname('bico2').asinteger > 0 then
  begin
    evt2.text := IntToStr(qrLMC.Fieldbyname('tanque').asinteger);
    evb2.text := IntToStr(qrLMC.Fieldbyname('bico2').asinteger);
    rvp2.Value := qrLMC.Fieldbyname('preco').asinteger;
    rvf2.Value := qrLMC.Fieldbyname('enc_bico2').asinteger;
    rva2.Value := qrLMC.Fieldbyname('aber_bico2').asinteger;
    rvaf2.Value := qrLMC.Fieldbyname('afer_bico2').asinteger;
    lbv2.Caption := FloatToStr(qrLMC.Fieldbyname('qtevend_2').asinteger);
  end;

  if qrLMC.Fieldbyname('bico3').asinteger > 0 then
  begin
    evt3.text := IntToStr(qrLMC.Fieldbyname('tanque').asinteger);
    evb3.text := IntToStr(qrLMC.Fieldbyname('bico3').asinteger);
    rvp3.Value := qrLMC.Fieldbyname('preco').asfloat;
    rvf3.Value := qrLMC.Fieldbyname('enc_bico3').asinteger;
    rva3.Value := qrLMC.Fieldbyname('aber_bico3').asinteger;
    rvaf3.Value := qrLMC.Fieldbyname('afer_bico3').asinteger;
    lbv3.Caption := FloatToStr(qrLMC.Fieldbyname('qtevend_3').asinteger);

  end;

  if qrLMC.Fieldbyname('bico4').asinteger > 0 then
  begin
    evt4.text := IntToStr(qrLMC.Fieldbyname('tanque').asinteger);
    evb4.text := IntToStr(qrLMC.Fieldbyname('bico4').asinteger);
    rvp4.Value := qrLMC.Fieldbyname('preco').asfloat;
    rvf4.Value := qrLMC.Fieldbyname('enc_bico4').asinteger;
    rva4.Value := qrLMC.Fieldbyname('aber_bico4').asinteger;
    rvaf4.Value := qrLMC.Fieldbyname('afer_bico4').asinteger;
    lbv4.Caption := FloatToStr(qrLMC.Fieldbyname('qtevend_4').asinteger);

  end;
  if qrLMC.Fieldbyname('bico5').asinteger > 0 then
  begin
    evt5.text := IntToStr(qrLMC.Fieldbyname('tanque').asinteger);
    evb5.text := IntToStr(qrLMC.Fieldbyname('bico5').asinteger);
    rvp5.Value := qrLMC.Fieldbyname('preco').asfloat;
    rvf5.Value := qrLMC.Fieldbyname('enc_bico5').asinteger;
    rva5.Value := qrLMC.Fieldbyname('aber_bico5').asinteger;
    rvaf5.Value := qrLMC.Fieldbyname('afer_bico5').asinteger;
    lbv5.Caption := FloatToStr(qrLMC.Fieldbyname('qtevend_5').asinteger);

  end;
  if qrLMC.Fieldbyname('bico6').asinteger > 0 then
  begin
    evt6.text := IntToStr(qrLMC.Fieldbyname('tanque').asinteger);
    evb6.text := IntToStr(qrLMC.Fieldbyname('bico6').asinteger);
    rvp6.Value := qrLMC.Fieldbyname('preco').asfloat;
    rvf6.Value := qrLMC.Fieldbyname('enc_bico6').asinteger;
    rva6.Value := qrLMC.Fieldbyname('aber_bico6').asinteger;
    rvaf6.Value := qrLMC.Fieldbyname('afer_bico6').asinteger;
    lbv6.Caption := FloatToStr(qrLMC.Fieldbyname('qtevend_6').asinteger);

  end;
  if qrLMC.Fieldbyname('bico7').asinteger > 0 then
  begin
    evt7.text := IntToStr(qrLMC.Fieldbyname('tanque').asinteger);
    evb7.text := IntToStr(qrLMC.Fieldbyname('bico7').asinteger);
    rvp7.Value := qrLMC.Fieldbyname('preco').asfloat;
    rvf7.Value := qrLMC.Fieldbyname('enc_bico7').asinteger;
    rva7.Value := qrLMC.Fieldbyname('aber_bico7').asinteger;
    rvaf7.Value := qrLMC.Fieldbyname('afer_bico7').asinteger;
    lbv7.Caption := FloatToStr(qrLMC.Fieldbyname('qtevend_7').asinteger);

  end;
  if qrLMC.Fieldbyname('bico8').asinteger > 0 then
  begin
    evt8.text := IntToStr(qrLMC.Fieldbyname('tanque').asinteger);
    evb8.text := IntToStr(qrLMC.Fieldbyname('bico8').asinteger);
    rvp8.Value := qrLMC.Fieldbyname('preco').asfloat;
    rvf8.Value := qrLMC.Fieldbyname('enc_bico8').asinteger;
    rva8.Value := qrLMC.Fieldbyname('aber_bico8').asinteger;
    rvaf8.Value := qrLMC.Fieldbyname('afer_bico8').asinteger;
    lbv8.Caption := FloatToStr(qrLMC.Fieldbyname('qtevend_8').asinteger);
  end;

  xacumulado := 0;
  qrApoio.Close;
  qrApoio.SQL.Clear;
  qrApoio.SQL.Add('select * from LMC where data >= :data_ini and data <= :data_fim');
  qrApoio.Params.ParamByName('data_ini').AsDate := prim_dia;
  qrApoio.Params.ParamByName('data_fim').AsDate := ultim_dia;
  qrApoio.Open;

  While not qrApoio.Eof do
  begin
      xacumulado := xacumulado + qrApoio.fieldbyname('estoq_fechamento').AsInteger;
      qrApoio.Next;
  end;

  lbValorAcumu.caption := IntToStr(xacumulado);

  lbVendas.Caption := IntToStr(qrLMC.Fieldbyname('qtevend_1').asinteger +
                      qrLMC.Fieldbyname('qtevend_2').asinteger +
                      qrLMC.Fieldbyname('qtevend_3').asinteger +
                      qrLMC.Fieldbyname('qtevend_4').asinteger +
                      qrLMC.Fieldbyname('qtevend_5').asinteger +
                      qrLMC.Fieldbyname('qtevend_6').asinteger +
                      qrLMC.Fieldbyname('qtevend_7').asinteger +
                      qrLMC.Fieldbyname('qtevend_8').asinteger);

  lbValorVendas.Caption := FloatToStr(qrLMC.Fieldbyname('totalvend_1').AsFloat +
                      qrLMC.Fieldbyname('totalvend_2').asinteger +
                      qrLMC.Fieldbyname('totalvend_3').asinteger +
                      qrLMC.Fieldbyname('totalvend_4').asinteger +
                      qrLMC.Fieldbyname('totalvend_5').asinteger +
                      qrLMC.Fieldbyname('totalvend_6').asinteger +
                      qrLMC.Fieldbyname('totalvend_7').asinteger +
                      qrLMC.Fieldbyname('totalvend_8').asinteger);

  lbestoqescrit.Caption := IntToStr(qrLMC.Fieldbyname('estoq_escritural').asinteger);
  lbestoqfecha.Caption := IntToStr(qrLMC.Fieldbyname('estoq_fechamento').asinteger);
  lbPerdSobr.Caption := IntToStr(qrLMC.Fieldbyname('perda_sobra').asinteger);
  memObs.Text := qrLMC.Fieldbyname('observacao').AsString;

end;

procedure TfrmLMC.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir registro',4) then
  begin


    qrLMC.Close;
    qrLMC.SQL.Clear;
    qrLMC.SQL.Add('select * from LMC where codigo = :codigo');
    qrLMC.Params.Parambyname('codigo').asinteger := xcod_pesq;
    qrLMC.Open;

    if qrLMC.recordcount > 0 then
      qrLMC.Delete
    else
      Application.messagebox('Nenhum registro selecionado para exclusão. Verifique!','Atenção!',mb_ok+MB_IconInformation);

    frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;


end;

end.
