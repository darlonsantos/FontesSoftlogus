unit principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TFlatPanelUnit, jpeg,
  Collection, StdCtrls, XPMan, Menus, DB, Grids, DBGrids, Registry, Winsock,
  ToolWin, ComCtrls, dxCore, Buttons,
  RXCtrls, RXDBCtrl, vrLineMeter, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, shellapi, ExeInfo, AdvGlowButton, AdvToolBar, AdvToolBarStylers,
  AdvMenus, AdvMenuStylers, AdvShapeButton, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvOfficeHint, ImgList, RzTray, AdvNavBar,
  AdvOfficePager, AdvOfficePagerStylers, AdvPanel, Wwdbigrd, Wwdbgrid,
  MemDS, StrUtils, Mask, RzEdit, RzPanel, IBServices, DBAccess, IBC,
  AdvReflectionImage, dxGDIPlusClasses, acAlphaImageList, ZConnection,
  sSkinProvider, sSkinManager, acPNG, cxGraphics, cxControls, // frxpngimage,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinsdxNavBarPainter, dxNavBar, cxClasses,
  dxNavBarBase, dxNavBarCollns, dxNavBarGroupItems, cxContainer,
  cxEdit, cxImage, sToolBar, sButton, sBitBtn, sPanel,
  dxSkinsForm, ACBrBase, ACBrValidador, inifiles,
  UCDataConnector, UCZEOSConn, UCBase, UCSettings, UCMail,
  TLHelp32, acApiUtils, Vcl.ActnList, Vcl.ActnMan, Vcl.ActnCtrls, dxRibbonSkins,
  dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxRibbonPainter, dxSkinsdxBarPainter,
  LockApplication, dxBar, Vcl.PlatformDefaultStyleActnCtrls,
  dxCustomTileControl, dxTileControl, Vcl.DBCtrls, cxLabel,
  dxRibbonBackstageView, dxRibbon, Vcl.OleCtrls, SHDocVw, WebImage;

type

  TfrmPrincipal = class(TForm)
    XPManifest1: TXPManifest;
    ExeInfo1: TExeInfo;
    qrproduto: TZQuery;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    AdvOfficeHint1: TAdvOfficeHint;
    ImageList1: TImageList;
    ptopo: TAdvOfficeStatusBar;
    query: TZQuery;
    ImageList2: TImageList;
    pfundo: TFlatPanel;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    AdvToolBarOfficeStyler2: TAdvToolBarOfficeStyler;
    AdvPanelStyler1: TAdvPanelStyler;
    qrniver: TZQuery;
    pnormal: TAdvPanel;
    AdvPanel4: TAdvPanel;
    dsniver: TDataSource;
    qrcx: TZQuery;
    qrpagar: TZQuery;
    dspagar: TDataSource;
    Memo1: TMemo;
    Timer1: TTimer;
    qrinventario: TZQuery;
    qrinventarionome_aliquota: TStringField;
    BitBtn1: TBitBtn;
    rnumero: TRzNumericEdit;
    qrmestre: TZQuery;
    img1: TImage;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image5: TImage;
    Image7: TImage;
    lblarquivo: TLabel;
    lblestoque: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    psuper: TAdvOfficePager;
    AdvOfficePage1: TAdvOfficePage;
    Label1: TLabel;
    Bevel2: TBevel;
    Label2: TLabel;
    Bevel3: TBevel;
    Label3: TLabel;
    Bevel4: TBevel;
    Label4: TLabel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Label5: TLabel;
    lcaixa: TLabel;
    Label7: TLabel;
    Bevel8: TBevel;
    lsit_caixa: TLabel;
    Bevel9: TBevel;
    Label9: TLabel;
    Bevel10: TBevel;
    Label10: TLabel;
    Bevel11: TBevel;
    Bevel13: TBevel;
    ltcaixa: TLabel;
    ltpagar: TLabel;
    ltreceber: TLabel;
    ltfinal: TLabel;
    ltvenda: TLabel;
    ltos: TLabel;
    Bevel12: TBevel;
    batual: TAdvGlowButton;
    AdvOfficePage2: TAdvOfficePage;
    AdvPanel2: TAdvPanel;
    wwDBGrid2: TwwDBGrid;
    AdvOfficePage3: TAdvOfficePage;
    wwDBGrid1: TwwDBGrid;
    AdvPanel3: TAdvPanel;
    img2: TImage;
    AdvPanel1: TAdvPanel;
    Image8: TImage;
    Label35: TLabel;
    AdvMenuFantasyStyler1: TAdvMenuFantasyStyler;
    AdvMenuOfficeStyler2: TAdvMenuOfficeStyler;
    AdvPanelStyler2: TAdvPanelStyler;
    checkcpf1: TACBrValidador;
    qrpagarCODIGO: TWideStringField;
    qrpagarDATA_EMISSAO: TDateTimeField;
    qrpagarDATA_VENCIMENTO: TDateTimeField;
    qrpagarDATA_PAGAMENTO: TDateTimeField;
    qrpagarCODCONTA: TWideStringField;
    qrpagarCODFORNECEDOR: TWideStringField;
    qrpagarVALOR: TFloatField;
    qrpagarVALORPAGO: TFloatField;
    qrpagarLIQUIDO: TFloatField;
    qrpagarDESCONTO: TFloatField;
    qrpagarACRESCIMO: TFloatField;
    qrpagarDOCUMENTO: TWideStringField;
    qrpagarNOTAFISCAL: TWideStringField;
    qrpagarHISTORICO: TWideStringField;
    qrpagarC: TWideStringField;
    qrpagarE: TWideStringField;
    qrpagarFILTRO: TIntegerField;
    qrpagarESPECIE: TWideStringField;
    qrpagarSITUACAO: TIntegerField;
    qrpagarCODNOTA: TWideStringField;
    qrpagarMOVIMENTO: TIntegerField;
    qrpagarCODCAIXA: TWideStringField;
    qrpagarNOME: TWideStringField;
    qrinventarioCODPRODUTO: TWideStringField;
    qrinventarioDATA: TDateTimeField;
    qrinventarioESTOQUE: TFloatField;
    qrinventarioCUSTO: TFloatField;
    qrinventarioPRODUTO: TWideStringField;
    qrinventarioUNIDADE: TWideStringField;
    qrinventarioCST: TWideStringField;
    qrinventarioALIQUOTA: TFloatField;
    qrinventarioVENDA: TFloatField;
    qrinventarioTOTAL: TFloatField;
    qrinventarioTIPO: TWideStringField;
    qrinventarioANO: TIntegerField;
    qrinventarioMES: TIntegerField;
    qrinventarioDATA_POSTERIOR: TDateTimeField;
    CheckCNPJ: TACBrValidador;
    iCloud: TUserControl;
    UCZEOSConn1: TUCZEOSConn;
    UCSettings1: TUCSettings;
    MailUserControl1: TMailUserControl;
    ActionManager1: TActionManager;
    Action1: TAction;
    Action3: TAction;
    Action9: TAction;
    Action10: TAction;
    Action11: TAction;
    Action12: TAction;
    Action13: TAction;
    Action14: TAction;
    Action15: TAction;
    Action2: TAction;
    Action16: TAction;
    Action17: TAction;
    Action18: TAction;
    Action19: TAction;
    Action20: TAction;
    Action21: TAction;
    Action22: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    Action7: TAction;
    Action8: TAction;
    Action24: TAction;
    Action25: TAction;
    Action26: TAction;
    Action27: TAction;
    Action28: TAction;
    Action29: TAction;
    Action30: TAction;
    Action31: TAction;
    Action32: TAction;
    Action33: TAction;
    trocausuario: TAction;
    trocasenha: TAction;
    mensagensinternas: TAction;
    Action23: TAction;
    Action34: TAction;
    Action35: TAction;
    Action36: TAction;
    Action37: TAction;
    Action38: TAction;
    Action39: TAction;
    Action40: TAction;
    Action41: TAction;
    Action42: TAction;
    Action43: TAction;
    Action44: TAction;
    Action45: TAction;
    Action46: TAction;
    Action47: TAction;
    Action48: TAction;
    Action49: TAction;
    Action50: TAction;
    Action51: TAction;
    Action52: TAction;
    Action53: TAction;
    Action54: TAction;
    Action55: TAction;
    Action56: TAction;
    Action57: TAction;
    Action58: TAction;
    Action59: TAction;
    Action60: TAction;
    Action61: TAction;
    Action62: TAction;
    Action63: TAction;
    Action64: TAction;
    Action65: TAction;
    Action66: TAction;
    Action67: TAction;
    Action68: TAction;
    Action69: TAction;
    Action70: TAction;
    Action71: TAction;
    Action72: TAction;
    Action73: TAction;
    Action74: TAction;
    Action75: TAction;
    Action76: TAction;
    ImageList3: TImageList;
    ImageList4: TImageList;
    OpenDialog1: TOpenDialog;
    FundoApp: TImage;
    Action77: TAction;
    botoes_menu: TImageList;
    UCControls1: TUCControls;
    Action78: TAction;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab2: TdxRibbonTab;
    dxRibbon1Tab3: TdxRibbonTab;
    dxRibbon1Tab4: TdxRibbonTab;
    dxRibbonBackstageView1: TdxRibbonBackstageView;
    dxRibbonBackstageViewTabSheet1: TdxRibbonBackstageViewTabSheet;
    cxLabel1: TcxLabel;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbon1Tab5: TdxRibbonTab;
    dxRibbon1Tab6: TdxRibbonTab;
    dxRibbon1Tab7: TdxRibbonTab;
    dxRibbonBackstageViewTabSheet2: TdxRibbonBackstageViewTabSheet;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxRibbonBackstageViewTabSheet3: TdxRibbonBackstageViewTabSheet;
    AdvPanel5: TAdvPanel;
    AdvPanelStyler3: TAdvPanelStyler;
    dsempresa2: TDataSource;
    DBText1: TDBText;
    Panel1: TPanel;
    AdvGlowButton1: TAdvGlowButton;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarManager1Bar3: TdxBar;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Label6: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Panel26: TPanel;
    Label25: TLabel;
    Panel27: TPanel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText13: TDBText;
    DBText14: TDBText;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    cxImageList1: TcxImageList;
    dxBarLargeButton5: TdxBarLargeButton;
    Action79: TAction;
    dxBarManager1Bar4: TdxBar;
    dxBarManager1Bar5: TdxBar;
    dxBarManager1Bar6: TdxBar;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarManager1Bar7: TdxBar;
    dxBarManager1Bar8: TdxBar;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarManager1Bar9: TdxBar;
    dxBarManager1Bar10: TdxBar;
    dxBarManager1Bar11: TdxBar;
    dxBarManager1Bar12: TdxBar;
    dxBarManager1Bar13: TdxBar;
    dxBarManager1Bar14: TdxBar;
    dxBarManager1Bar15: TdxBar;
    dxBarManager1Bar16: TdxBar;
    dxBarLargeButton15: TdxBarLargeButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarLargeButton16: TdxBarLargeButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarButton39: TdxBarButton;
    dxBarLargeButton17: TdxBarLargeButton;
    dxBarLargeButton18: TdxBarLargeButton;
    dxBarButton40: TdxBarButton;
    dxBarButton41: TdxBarButton;
    dxBarButton42: TdxBarButton;
    dxBarLargeButton19: TdxBarLargeButton;
    dxBarButton43: TdxBarButton;
    dxBarButton44: TdxBarButton;
    dxBarButton45: TdxBarButton;
    dxBarLargeButton20: TdxBarLargeButton;
    dxBarButton46: TdxBarButton;
    dxBarButton47: TdxBarButton;
    dxBarButton48: TdxBarButton;
    dxBarButton49: TdxBarButton;
    dxBarButton50: TdxBarButton;
    dxBarLargeButton21: TdxBarLargeButton;
    dxBarLargeButton22: TdxBarLargeButton;
    dxBarLargeButton23: TdxBarLargeButton;
    dxBarButton51: TdxBarButton;
    dxBarButton52: TdxBarButton;
    dxBarButton53: TdxBarButton;
    dxBarLargeButton24: TdxBarLargeButton;
    dxBarLargeButton25: TdxBarLargeButton;
    dxBarLargeButton26: TdxBarLargeButton;
    dxBarButton54: TdxBarButton;
    dxBarButton55: TdxBarButton;
    dxBarButton56: TdxBarButton;
    dxBarButton57: TdxBarButton;
    dxBarButton58: TdxBarButton;
    dxBarButton59: TdxBarButton;
    dxBarButton60: TdxBarButton;
    dxBarButton61: TdxBarButton;
    RzPanel1: TRzPanel;
    AdvReflectionImage1: TAdvReflectionImage;
    spnl147: TsPanel;
    img: TAdvReflectionImage;
    spnlUsu: TsPanel;
    AdvReflectionImage2: TAdvReflectionImage;
    spnl47: TsPanel;
    img4785: TAdvReflectionImage;
    spnl2569: TsPanel;
    dxTile: TdxTileControl;
    dxTiledxTileControlGroup1: TdxTileControlGroup;
    dxTiledxTileControlGroup3: TdxTileControlGroup;
    tlPhotos: TdxTileControlItem;
    tlUserManagement: TdxTileControlItem;
    tlSystemInformation: TdxTileControlItem;
    tlResearch: TdxTileControlItem;
    tlStatistics: TdxTileControlItem;
    tlLoanCalculator: TdxTileControlItem;
    dxTileItem1: TdxTileControlItem;
    dxTileItem2: TdxTileControlItem;
    dxTileItem3: TdxTileControlItem;
    dxTileItem4: TdxTileControlItem;
    tlPhotosdxTileControlItemFrame1: TdxTileControlItemFrame;
    tlPhotosdxTileControlItemFrame2: TdxTileControlItemFrame;
    dxTileActionBarItem1: TdxTileControlActionBarItem;
    dxTileItem5: TdxTileControlItem;
    dxBarLargeButton27: TdxBarLargeButton;
    dxBarManager1Bar17: TdxBar;
    dxBarLargeButton28: TdxBarLargeButton;
    dxBarLargeButton29: TdxBarLargeButton;
    dxBarButton62: TdxBarButton;
    dxBarButton63: TdxBarButton;
    dxBarButton64: TdxBarButton;
    dxBarButton65: TdxBarButton;
    dxBarButton66: TdxBarButton;
    dxBarButton67: TdxBarButton;
    dxBarLargeButton30: TdxBarLargeButton;
    dxBarButton68: TdxBarButton;
    dxBarButton69: TdxBarButton;
    RzPanel2: TRzPanel;
    Label23: TLabel;
    RzPanel3: TRzPanel;
    Label26: TLabel;
    Panel10: TPanel;
    Panel23: TPanel;
    ativador: TLockApplication;
    Panel28: TPanel;
    Label27: TLabel;
    AdvGlowButton24455: TAdvGlowButton;
    dados: TMemo;
    cxLabel2: TcxLabel;
    dxTileItem4dxTileControlItemFrame1: TdxTileControlItemFrame;
    dxTileItem4dxTileControlItemFrame2: TdxTileControlItemFrame;
    dxBarButton70: TdxBarButton;
    WebImage1: TWebImage;
    btn_inventario: TdxBarButton;
    dxBarButton71: TdxBarButton;
    pnl1: TPanel;
    imgm_imagens: TImage;
    dxBarButton72: TdxBarButton;
    dxBarLargeButton31: TdxBarLargeButton;
    dxBarLargeButton32: TdxBarLargeButton;
    dxRibbonQuickAccessGroupButton1: TdxRibbonQuickAccessGroupButton;
    dxBarButton73: TdxBarButton;
    dxBarLargeButton33: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure LinkView1Click(Sender: TObject);
    procedure Filiais1Click(Sender: TObject);
    procedure VrDemoButton2Click(Sender: TObject);
    procedure VrDemoButton3Click(Sender: TObject);
    procedure VrDemoButton4Click(Sender: TObject);
    procedure VrDemoButton5Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure CSTCdigodaSituaoTributria1Click(Sender: TObject);
    procedure ModelosdeDocumentosFiscais1Click(Sender: TObject);
    procedure ECFCadastrodeEquipamentos1Click(Sender: TObject);
    procedure Setor2Click(Sender: TObject);
    procedure Veculos1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure ConsultadePreos1Click(Sender: TObject);
    procedure ContasaPagar1Click(Sender: TObject);
    procedure ContasaReceber1Click(Sender: TObject);
    procedure Oramento1Click(Sender: TObject);
    procedure Caixa1Click(Sender: TObject);
    procedure OrdemdeServio1Click(Sender: TObject);
    procedure NotaFiscal1Click(Sender: TObject);
    procedure SairdoSistema1Click(Sender: TObject);
    procedure AnularSaida1Click(Sender: TObject);
    procedure rocardeUsurio1Click(Sender: TObject);
    procedure GerencimentodeUsurios1Click(Sender: TObject);
    procedure Baixa1Click(Sender: TObject);
    procedure Pedido1Click(Sender: TObject);
    procedure Entrada1Click(Sender: TObject);
    procedure ConsultaServio1Click(Sender: TObject);
    procedure Ad55vGlowButton1Click(Sender: TObject);
    procedure MemorandodeExportao1Click(Sender: TObject);
    procedure bformaClick(Sender: TObject);
    procedure Venda1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure FormasdePagamento1Click(Sender: TObject);
    procedure CondiesdePagamento1Click(Sender: TObject);
    procedure batualClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton3KeyPress(Sender: TObject; var Key: Char);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure ArquivoLOG1Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure AdvGlowButton7Click(Sender: TObject);
    procedure AdvGlowButton10Click(Sender: TObject);
    procedure CNAE1Click(Sender: TObject);
    procedure Cores1Click(Sender: TObject);
    procedure amanho1Click(Sender: TObject);
    procedure AdvGlowButton8Click(Sender: TObject);
    procedure AdvGlowButton9Click(Sender: TObject);
    procedure AdvGlowButton11Click(Sender: TObject);
    procedure DREClick(Sender: TObject);
    procedure NCMNomenclaturaMercosul1Click(Sender: TObject);
    procedure CSOSNCdigodaOperaodeSituaodoSimplesNacional1Click
      (Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure imgClientesClick(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Clientes3Click(Sender: TObject);
    procedure imgFornecedoresClick(Sender: TObject);
    procedure imgtransportadoresClick(Sender: TObject);
    procedure imgFuncionariosClick(Sender: TObject);
    procedure imgBancosClick(Sender: TObject);
    procedure vbosContasClick(Sender: TObject);
    procedure imgOperadoresCaixaClick(Sender: TObject);
    procedure imgConveniosClick(Sender: TObject);
    procedure imgServicosClick(Sender: TObject);
    procedure EmpresasFiliais1Click(Sender: TObject);
    procedure Clientes2Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure ransportadores1Click(Sender: TObject);
    procedure bancosFinanceiras1Click(Sender: TObject);
    procedure rocardeUsurio2Click(Sender: TObject);
    procedure GerenciamentodeUsurio1Click(Sender: TObject);
    procedure ArquivodeLOG1Click(Sender: TObject);
    procedure OperadoresdeCaixa1Click(Sender: TObject);
    procedure Setor1Click(Sender: TObject);
    procedure Veculos2Click(Sender: TObject);
    procedure VeculosdeTerceiros1Click(Sender: TObject);
    procedure CondiesdePagamento2Click(Sender: TObject);
    procedure Cidades2Click(Sender: TObject);
    procedure CNAE2Click(Sender: TObject);
    procedure Cores2Click(Sender: TObject);
    procedure amanho2Click(Sender: TObject);
    procedure CFOPNaturezadeOperao1Click(Sender: TObject);
    procedure CSTCdigodaSituaoTributria2Click(Sender: TObject);
    procedure ModelosdeDocumentosFiscais2Click(Sender: TObject);
    procedure ECFCadastrodeEquipamentos2Click(Sender: TObject);
    procedure NCMNomeclaturaComumaoMercosul1Click(Sender: TObject);
    procedure CSOSNCdigodeSituaodaOperaonoSimplesNacional1Click
      (Sender: TObject);
    procedure Servios1Click(Sender: TObject);
    procedure Convnios1Click(Sender: TObject);
    procedure planodeContas1Click(Sender: TObject);
    procedure Produtos2Click(Sender: TObject);
    procedure GruposeSubgrupos1Click(Sender: TObject);
    procedure Marcasfabricantes1Click(Sender: TObject);
    procedure notaFiscaldeEntrada1Click(Sender: TObject);
    procedure ConsultadePreo1Click(Sender: TObject);
    procedure ConsultaSerial1Click(Sender: TObject);
    procedure ProdutosVendasFaltas1Click(Sender: TObject);
    procedure PedidodeCompra1Click(Sender: TObject);
    procedure BalanaExportao1Click(Sender: TObject);
    procedure Venda2Click(Sender: TObject);
    procedure AtendimentodePrVenda1Click(Sender: TObject);
    procedure NotasdeVendas1Click(Sender: TObject);
    procedure Oramento2Click(Sender: TObject);
    procedure ECFmovimentoDirio1Click(Sender: TObject);
    procedure SINTEGRARegistroFiscal1Click(Sender: TObject);
    procedure EFDSpedFiscal1Click(Sender: TObject);
    procedure ControledeEntrega1Click(Sender: TObject);
    procedure OrdemdesERVIO2Click(Sender: TObject);
    procedure Industrializao1Click(Sender: TObject);
    procedure NotaFiscalEmisso1Click(Sender: TObject);
    procedure ConhecimentodeTransporte1Click(Sender: TObject);
    procedure MemorandodeExportao2Click(Sender: TObject);
    procedure Caixa2Click(Sender: TObject);
    procedure ContasaPagar2Click(Sender: TObject);
    procedure ContasaReceber2Click(Sender: TObject);
    procedure Financeira1Click(Sender: TObject);
    procedure Cheques1Click(Sender: TObject);
    procedure ContaCorrente1Click(Sender: TObject);
    procedure Clientes4Click(Sender: TObject);
    procedure BoletoBancrio1Click(Sender: TObject);
    procedure CartodeCrdito1Click(Sender: TObject);
    procedure Convnio1Click(Sender: TObject);
    procedure Clientes5Click(Sender: TObject);
    procedure Fornecedores3Click(Sender: TObject);
    procedure Produtos3Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure ContasaReceber3Click(Sender: TObject);
    procedure ContasaPagar3Click(Sender: TObject);
    procedure Caixa3Click(Sender: TObject);
    procedure EtiquetasdeProdutos1Click(Sender: TObject);
    procedure OrdemdeServio3Click(Sender: TObject);
    procedure ServiosPeridicos1Click(Sender: TObject);
    procedure PercentualVendasGrupoMarca1Click(Sender: TObject);
    procedure Fretes1Click(Sender: TObject);
    procedure FluxodeCaixa1Click(Sender: TObject);
    procedure DRE1Click(Sender: TObject);
    procedure AgendaTelefnica1Click(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure Configuraes1Click(Sender: TObject);
    procedure ExportaodeDados1Click(Sender: TObject);
    procedure ControledeRotas1Click(Sender: TObject);
    procedure Funcionrios1Click(Sender: TObject);
    procedure ConsultaLote1Click(Sender: TObject);
    procedure ConsultaLote2Click(Sender: TObject);
    procedure AtualizarSistema1Click(Sender: TObject);
    procedure ImportarNfe1Click(Sender: TObject);
    procedure bveiculocClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Empresa2Click(Sender: TObject);
    procedure Clientes9Click(Sender: TObject);
    procedure Fornecedores6Click(Sender: TObject);
    procedure ransportadoras2Click(Sender: TObject);
    procedure Funcionrios3Click(Sender: TObject);
    procedure BancosFinanceira2Click(Sender: TObject);
    procedure PlanodeContas3Click(Sender: TObject);
    procedure Convnios3Click(Sender: TObject);
    procedure Servios3Click(Sender: TObject);
    procedure Setor4Click(Sender: TObject);
    procedure VeculosdeTerceiros3Click(Sender: TObject);
    procedure CondiesdePagamento4Click(Sender: TObject);
    procedure Cidades4Click(Sender: TObject);
    procedure CNAE4Click(Sender: TObject);
    procedure Cores4Click(Sender: TObject);
    procedure amanhos2Click(Sender: TObject);
    procedure CFOPNaturezadeOperao3Click(Sender: TObject);
    procedure CSTCdigodaSituaoTributria4Click(Sender: TObject);
    procedure ModelosdeDocumentosFiscais4Click(Sender: TObject);
    procedure ECFCadastrodeEquipamentos4Click(Sender: TObject);
    procedure NCMNomeclaturaComumaoMercosul3Click(Sender: TObject);
    procedure CSOSNCdigodeSituaodaOperaonoSimplesNacional2Click
      (Sender: TObject);
    procedure Produtos6Click(Sender: TObject);
    procedure GruposeSubgrupos3Click(Sender: TObject);
    procedure NotaFiscaldeEntrada3Click(Sender: TObject);
    procedure ConsultadePreo3Click(Sender: TObject);
    procedure ConsultaSerial3Click(Sender: TObject);
    procedure ProdutosVendasFaltas3Click(Sender: TObject);
    procedure BaixadeEstoque2Click(Sender: TObject);
    procedure PedidodeCompra3Click(Sender: TObject);
    procedure ControledeEntrega3Click(Sender: TObject);
    procedure Industrializao3Click(Sender: TObject);
    procedure NotasdeVendas4Click(Sender: TObject);
    procedure NotaFiscal4Click(Sender: TObject);
    procedure MemorandodeExportao4Click(Sender: TObject);
    procedure SintegraregistroFiscal3Click(Sender: TObject);
    procedure ECFSpedFiscal2Click(Sender: TObject);
    procedure ECFMovimentoDirio3Click(Sender: TObject);
    procedure Venda4Click(Sender: TObject);
    procedure Oramento4Click(Sender: TObject);
    procedure OrdemdeServio4Click(Sender: TObject);
    procedure rocardeUsurio4Click(Sender: TObject);
    procedure GerenciamentodeUsurio3Click(Sender: TObject);
    procedure OperadoresdeCaixa3Click(Sender: TObject);
    procedure ArquivodeLog3Click(Sender: TObject);
    procedure DRE3Click(Sender: TObject);
    procedure Fretes3Click(Sender: TObject);
    procedure ServiosPeridicos3Click(Sender: TObject);
    procedure OrdensdeServio2Click(Sender: TObject);
    procedure FluxodeCaixa3Click(Sender: TObject);
    procedure Caixa7Click(Sender: TObject);
    procedure ContasaReceber5Click(Sender: TObject);
    procedure ContasaPagar7Click(Sender: TObject);
    procedure PercentualVendasGrupoMarca3Click(Sender: TObject);
    procedure Vendas4Click(Sender: TObject);
    procedure EtiquetasdeProdutos3Click(Sender: TObject);
    procedure Produtos7Click(Sender: TObject);
    procedure Fornecedores7Click(Sender: TObject);
    procedure Clientes11Click(Sender: TObject);
    procedure Configuraes3Click(Sender: TObject);
    procedure A1Click(Sender: TObject);
    procedure Caixa6Click(Sender: TObject);
    procedure ContasaPagar6Click(Sender: TObject);
    procedure ContsasaReceber2Click(Sender: TObject);
    procedure Financeira3Click(Sender: TObject);
    procedure Cheques3Click(Sender: TObject);
    procedure ContaCorrente3Click(Sender: TObject);
    procedure Clientes10Click(Sender: TObject);
    procedure BoletoBancrio3Click(Sender: TObject);
    procedure CartodeCrdito3Click(Sender: TObject);
    procedure Convnio3Click(Sender: TObject);
    // procedure tlZillowClick(Sender: TdxTileControlItem);
    // procedure tlMortgageRatesClick(Sender: TdxTileControlItem);
    procedure SobreoSistemaiCloud1Click(Sender: TObject);
    // procedure dxtlcntrltmTileItem3Click(Sender: TdxTileControlItem);
    // procedure dxtlcntrltmTileItem6Click(Sender: TdxTileControlItem);
    procedure E1Click(Sender: TObject);
    procedure A2Click(Sender: TObject);
    procedure IndustrializarClick(Sender: TObject);
    procedure C20Click(Sender: TObject);
    procedure M2Click(Sender: TObject);
    procedure iCloudAfterLogin(Sender: TObject);
    procedure A3Click(Sender: TObject);
    procedure iCloudLogoff(Sender: TObject; IDUser: Integer);
    procedure O5Click(Sender: TObject);
    procedure S6Click(Sender: TObject);
    procedure A6Click(Sender: TObject);
    procedure D3Click(Sender: TObject);
    procedure G2Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure C11Click(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action9Execute(Sender: TObject);
    procedure Action10Execute(Sender: TObject);
    procedure Action11Execute(Sender: TObject);
    procedure Action12Execute(Sender: TObject);
    procedure Action13Execute(Sender: TObject);
    procedure Action14Execute(Sender: TObject);
    procedure Action15Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action25Execute(Sender: TObject);
    procedure Action26Execute(Sender: TObject);
    procedure Action27Execute(Sender: TObject);
    procedure Action28Execute(Sender: TObject);
    procedure Action29Execute(Sender: TObject);
    procedure Action30Execute(Sender: TObject);
    procedure Action31Execute(Sender: TObject);
    procedure Action32Execute(Sender: TObject);
    procedure Action33Execute(Sender: TObject);
    procedure mensagensinternasExecute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure Action23Execute(Sender: TObject);
    procedure Action34Execute(Sender: TObject);
    procedure Action35Execute(Sender: TObject);
    procedure Action36Execute(Sender: TObject);
    procedure Action37Execute(Sender: TObject);
    procedure Action38Execute(Sender: TObject);
    procedure Action39Execute(Sender: TObject);
    procedure Action40Execute(Sender: TObject);
    procedure Action41Execute(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
    procedure Action42Execute(Sender: TObject);
    procedure Action43Execute(Sender: TObject);
    procedure Action44Execute(Sender: TObject);
    procedure Action45Execute(Sender: TObject);
    procedure Action46Execute(Sender: TObject);
    procedure Action47Execute(Sender: TObject);
    procedure Action48Execute(Sender: TObject);
    procedure Action49Execute(Sender: TObject);
    procedure Action50Execute(Sender: TObject);
    procedure Action8Execute(Sender: TObject);
    procedure Action53Execute(Sender: TObject);
    procedure Action54Execute(Sender: TObject);
    procedure Action55Execute(Sender: TObject);
    procedure Action56Execute(Sender: TObject);
    procedure Action57Execute(Sender: TObject);
    procedure Action58Execute(Sender: TObject);
    procedure Action59Execute(Sender: TObject);
    procedure Action60Execute(Sender: TObject);
    procedure Action61Execute(Sender: TObject);
    procedure Action62Execute(Sender: TObject);
    procedure Action63Execute(Sender: TObject);
    procedure Action64Execute(Sender: TObject);
    procedure Action65Execute(Sender: TObject);
    procedure Action24Execute(Sender: TObject);
    procedure Action66Execute(Sender: TObject);
    procedure Action67Execute(Sender: TObject);
    procedure Action68Execute(Sender: TObject);
    procedure Action69Execute(Sender: TObject);
    procedure Action70Execute(Sender: TObject);
    procedure Action16Execute(Sender: TObject);
    procedure Action17Execute(Sender: TObject);
    procedure Action18Execute(Sender: TObject);
    procedure Action19Execute(Sender: TObject);
    procedure Action20Execute(Sender: TObject);
    procedure Action21Execute(Sender: TObject);
    procedure Action22Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action71Execute(Sender: TObject);
    procedure Action72Execute(Sender: TObject);
    procedure Action73Execute(Sender: TObject);
    procedure Action74Execute(Sender: TObject);
    procedure Action75Execute(Sender: TObject);
    procedure actpapelExecute(Sender: TObject);
    procedure Action77Execute(Sender: TObject);
    // procedure dxTileControl1dxTileControlActionBarItem3Click
    // (Sender: TdxTileControlActionBarItem);
    // procedure dxTileControl1dxTileControlActionBarItem2Click
    // (Sender: TdxTileControlActionBarItem);
    // procedure dxTileControl1dxTileControlActionBarItem1Click
    // (Sender: TdxTileControlActionBarItem);
    // procedure dxTiledxTileControlItem1Click(Sender: TdxTileControlItem);
    // procedure dxTiledxTileControlItem2Click(Sender: TdxTileControlItem);
    // procedure dxTiledxTileControlItem3Click(Sender: TdxTileControlItem);
    // procedure dxTiledxTileControlItem4Click(Sender: TdxTileControlItem);
    // procedure dxTiledxTileControlItem5Click(Sender: TdxTileControlItem);
    // procedure dxTiledxTileControlItem7Click(Sender: TdxTileControlItem);
    // procedure dxTiledxTileControlItem6Click(Sender: TdxTileControlItem);
    // procedure dxTiledxTileControlItem8Click(Sender: TdxTileControlItem);
    // procedure dxTiledxTileControlItem9Click(Sender: TdxTileControlItem);
    // procedure dxTiledxTileControlItem10Click(Sender: TdxTileControlItem);
    // procedure dxTiledxTileControlActionBarItem1Click
    // (Sender: TdxTileControlActionBarItem);
    // procedure dxTiledxTileControlActionBarItem2Click
    // (Sender: TdxTileControlActionBarItem);
    // procedure dxTiledxTileControlActionBarItem3Click
    // (Sender: TdxTileControlActionBarItem);
    procedure Action78Execute(Sender: TObject);
    procedure Action79Execute(Sender: TObject);
    procedure tlPhotosClick(Sender: TdxTileControlItem);
    procedure dxTileItem5Click(Sender: TdxTileControlItem);
    procedure dxBarLargeButton28Click(Sender: TObject);
    procedure dxBarButton65Click(Sender: TObject);
    procedure dxBarLargeButton29Click(Sender: TObject);
    procedure dxBarButton62Click(Sender: TObject);
    procedure dxBarButton64Click(Sender: TObject);
    procedure dxBarButton66Click(Sender: TObject);
    procedure dxBarButton63Click(Sender: TObject);
    procedure dxBarLargeButton30Click(Sender: TObject);
    procedure dxBarButton68Click(Sender: TObject);
    procedure dxBarButton69Click(Sender: TObject);
    procedure tlLoanCalculatorClick(Sender: TdxTileControlItem);
    procedure tlUserManagementClick(Sender: TdxTileControlItem);
    procedure tlStatisticsClick(Sender: TdxTileControlItem);
    procedure tlResearchClick(Sender: TdxTileControlItem);
    procedure tlSystemInformationClick(Sender: TdxTileControlItem);
    procedure dxTileItem1Click(Sender: TdxTileControlItem);
    procedure dxTileItem2Click(Sender: TdxTileControlItem);
    procedure dxTileItem3Click(Sender: TdxTileControlItem);
    procedure dxTileItem4Click(Sender: TdxTileControlItem);
    procedure AdvGlowButton24455Click(Sender: TObject);
    procedure dxBarButton70Click(Sender: TObject);
    procedure btn_inventarioClick(Sender: TObject);

  private
    { Private declarations }
    FUltimaExecucao: TDateTime;
    // FHoje: TDateTime;
    FValidate: Integer;
    FNomeProduto: string;
    FVersaoProduto: string;
    FBuilt: string;
    FHistorico: TStrings;
    STime: TDateTime;

  public

    FHoje: TDateTime;

    vfil_codigo, vfil_nome, vfil_cnpj, vfil_ie, vfil_cst, vfil_cipi,
      vfil_simples, vfil_ssimples, vfil_estadual: string;
    vcontador: Integer;
    { Public declarations }
    function StrZeros(Texto: string; Qtde: Integer): string;
    function Verifica_Conexao: Boolean;
    procedure log(CODUSUARIO, TABELA, CODREGISTRO, FUNCAO, hISTORICO: string);
    procedure logUC(xmsg: string; xnivel: Integer);
    procedure agenda(vsituacao, vtipo, vnome, vtelefone1, vtelefone2,
      vtelefone3, vcelular, vemail, vfax, vhomepage, vtipoi: string);

    function VersaoExe(const Filename: string): string;
    function killtask(ExeFileName: string): Integer;
    function formata_valor(valor: string): string;

    function Exec_File(File_Path: string): Integer;
    function UltimoDiaMes(Mdt: TDateTime): TDateTime;
    function Space(const Len: Integer): string;
    function tbReplChar(const Ch: Char; const Len: Integer): string;
    function somenteNumero(sNum: string): string;
    function tira_ponto(Texto: string): string;
    function TiraCaracterEspecial(Texto: string): string;
    function FormataValorProsoft(fValor: Real; fQtde: Integer): string;
    procedure ExecutePrograma(Nome, Parametros: string);
    procedure FechePrograma(Programa: Pchar);
    function acesso(usuario: string; FUNCAO: string): string;
    procedure AcertaPadraoData2;
    procedure GravaReducaoZ;
    function DataDeCriacao(Arq: string): TDateTime;
    function RemoveAcentos(Str: string): string;
    function Arredondar(Value: Extended; Decimals: Integer): Extended;

    procedure limpaedit(Form: TForm);
    function AnoBiSexto(Ayear: Integer): Boolean;
    function DiasPorMes(Ayear, AMonth: Integer): Integer;
    function texto_justifica(Texto: string; qtde_caracteres: Integer;
      caracter: string; tipo: string): string;
    function tiraacento(Str: string): string;
    function lancaproduto(codproduto: string; data: TDateTime;
      movimento: string; codcliente: string; codsaida: string;
      codentrada: string; codvendedor: string; Qtde: Real; valor: Real;
      total: Real; notafiscal: string): string;
    function CalculaDigEAN13(Cod: string): string;
    function TestaCnpj(xCNPJ: string): Boolean;
    function Locregistro(TABELA: TDataSet; valor: string;
      campo: string): Boolean;
    function GetIP: string;

    function ChecaEstado(Dado: string): Boolean;
    function adic_codifica(TABELA: string): string;
    function codifica(TABELA: string): string;
    function zerarcodigo(codigo: string; Qtde: Integer): string;
    function Cript(Action, Src: string): string;
    function autentica(FUNCAO: string; nivel: Integer): Boolean;
    function autentica_caixa(FUNCAO: string; nivel: Integer): Boolean;
    function NomeComputador: string; // External
    function tira_aspa(Texto: string): string;
    function nao_arredonda(valor: Real): Real;
    function FormataCEP(const CEP: string): string;
    function LeInistr(arquivo, sessao, chave, padrao: string): string;
    function isFloat(Str: string): double;

    (* T E F *)

    procedure Daruma_Analisa_Retorno();
    procedure Daruma_Retorno_Impressora();

    function AnalisaRetornoECF: Integer;
    function AnalisaRetornoComando(retorno: Integer): Integer;
    function AnalisaRetorno(retorno: Integer): Integer;

    function msgcard(): Boolean;
    function msgcheck(): Boolean;

    (* ---------------------------------------- *)

  end;

  // funcoes externas da dll ebo7

procedure AcertaPadraoData; External '\Softlogus\server\dll\ebo7.dll';

function NumeroSerieHD: string; External '\Softlogus\server\dll\ebo7.dll';
function frm(ebo: string): string; External '\Softlogus\server\dll\ebo7.dll';

var
  frmPrincipal: TfrmPrincipal;
  autenticado: Boolean;
  ativa_sistema: Boolean;
  qtde_dias_ativacao: Integer;
  DATA_TERMINO: TDateTime;

  nc_caixa: Integer;

  res_expirado, res_instalacao, res_data, res_termino, res_empresa, res_rsocial,
    res_cnpj: string;
  cont_inventario: Boolean;
  novaversao: Boolean;
  conexao_sistema: string;
  ExeAtualiza, ExeAtual: string;

  usuario_temp: string;

  // TEF_DIAL
  USA_TEF, usa_tecban: Boolean;
  retmsg, TEFFINAL, jafinalizado, foiconectado: Boolean;
  ret_cheque: Integer;
  elcheque: Boolean;
  // variavel q controla o se a venda eh cheque ou cartao para impressao do CV
  daruma_retorno: Integer;
  continua: Boolean;
  iRet: Integer;
  venda_TEF: Boolean;
  //

implementation

uses modulo, senha, filial, papelparede, cliente,
  fornecedor, transportador, funcionario, servico, banco, formapgto,
  condpgto, grupo, marca, aliquota, agenda, produto, produto_entrada,
  produto_consultapreco, Calculad, plano, produto_saida,
  produto_pedido, cheque, contacorrente, caixa, caixa_operador,
  senha_caixa, contaspagar, venda, venda_inicio,
  contasreceber, notas_venda, os, setor, os_menu, veiculo, config,
  orcamento, balanca, produto_ligth,
  notafiscal, cliente_financeiro, produto_auto, cliente_veiculo,
  etiquetador, boleto, sintegra_gerar, Math, usuario_menu, conhecimento,
  cfop, loc_produto_auto, xloc_cliente, lista_venda2,
  lista_cliente2, lista_fornecedor2, lista_produto2, lista_os,
  lista_receber2, lista_pagar2, notafiscalE, lista_caixa2, venda_farma,
  convenio, produto_farma, log, ecfserver,
  produto_falta, convenio_receber, empresa, cst, modelo_fiscal, ecfs,
  sintegra_menu, ecf,
  ECF_REDUCAO, prevenda, compra, compra_menu, exporta_dados,
  ecf_reducao_menu, notafiscal_menu, progresso, usuario, cheque_menu,
  baixa_estoque, xloc_servico, Produto_consultaserial, memorando_menu,
  lista_servicos_periodicos, produto_pdv2, entrega, notafiscal_item2,
  copia_arquivo, financeira, usuario_log, cidade, msgcartao, msgcheque,
  Tef, unFuncoesTEF, cartao, cnae, cor, tamanho, Lista_ABC_Marca_Grupo,
  lista_frete, fluxo_caixa, DRE, mensagem_inventario, industrializacao, Ncm,
  xloc_csosn, consulta_lote, importa_nfe, sobre, // FMapa,
  form_ativacaoicloud, pUCGeral, OpNatureza, Bicos, LMC, Tanque, AberFechLMC,
  Bombas, Encerrantes,
  Combustivel, LMCImpressao, inventario, backup;

{$R *.dfm}

procedure AlinharPanel(AForm: TForm; APanel: TPanel; ACentro: Boolean);
begin
  if ACentro then
  begin
    APanel.Left := (AForm.ClientWidth div 2) - (APanel.Width div 2);
    APanel.Top := (AForm.ClientHeight div 2) - (APanel.Height div 2);
  end
  else
  begin
    APanel.Left := (AForm.ClientWidth + 100);
    APanel.Top := (AForm.ClientHeight + 100);
  end;
  APanel.Update;
  AForm.Update;
end;

function TfrmPrincipal.StrZeros(Texto: string; Qtde: Integer): string;
var
  i, Tam: Integer;
  Aux: string;
begin
  Aux := '';
  Tam := Length(Texto);
  for i := Tam to (Qtde - 1) do
    Aux := Aux + '0';
  StrZeros := Aux + Texto;
end;

function TfrmPrincipal.Verifica_Conexao: Boolean;
begin
end;

(* FUNCOES ACRESCENTADAS PARA O TEF *)

function TfrmPrincipal.tira_aspa(Texto: string): string;
var
  S1, S2: string;
  i: Integer;
begin
  S1 := Texto;
  S2 := '';
  for i := 1 to Length(S1) do
    if S1[i] <> '''' then
      S2 := S2 + S1[i];
  result := S2;
end;

function TfrmPrincipal.msgcard(): Boolean;
begin
  frmmsgcartao := tfrmmsgcartao.create(self);
  frmmsgcartao.showmodal;
  result := retmsg;
end;

function TfrmPrincipal.msgcheck(): Boolean;
begin
  frmmsgcheque := tfrmmsgcheque.create(self);
  frmmsgcheque.showmodal;
  result := retmsg;
end;

procedure TfrmPrincipal.D3Click(Sender: TObject);
var
  f: textfile;
  slinha: string;
begin

  if USA_TEF then
  begin
    if FileExists(sTEFKoneKPath + 'gp.tmp') then
    begin
      begin
        assignfile(f, sTEFKoneKPath + 'gp.tmp');
        reset(f);
        readln(f, slinha);
        closefile(f);
      end;
    end;

    if slinha = 'TECBAN' then
    begin
      itefTecban := 1;
      sTEFPath := 'C:\TEF_DISC\'
    end
    else
    begin
      sTEFPath := 'C:\TEF_DIAL\';
      itefTecban := 0;
    end;

    TEFVerificaGerenciadorAtivo;
    TEFVerificaArquivosPendentes;
    TEFVerificaOperacaoPendente;
  end;

  frmmodulo.QRCONFIG.open;

  // teste para uso de caixa padrao do usuario autenticado   USA_CAIXA_PADRAO_USUARIO

  // continua venda
  frmmodulo.bcontinua_venda := true;

  // frmOpNatureza := TfrmOpNatureza.create(self);
  // frmOpNatureza.showmodal;
  frmmodulo.natoperacao := 'devolucao';

  if not frmmodulo.bcontinua_venda then
    Exit;

  if frmmodulo.QRCONFIG.FIELDBYNAME('USA_CAIXA_PADRAO_USUARIO').AsInteger = 1
  then // usa
  begin
    frmmodulo.qrusuario.open;

    if frmmodulo.qrusuario.FIELDBYNAME('COD_CAIXA').asstring <> '' then
    begin
      if frmmodulo.QRCONFIG.FIELDBYNAME('ramo_atividade').AsInteger = 4 then
      begin
        if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1 then
        begin
          // difinir movimentacao

          FRMVENDA_FARMA := TFRMVENDA_FARMA.create(self);
          FRMVENDA_FARMA.showmodal;
        end
        else
        begin
          application.messagebox('Este caixa est� fechado! Favor verificar...',
            'Aten��o', mb_ok + mb_iconwarning);
          Exit;
        end;
      end
      else if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1
      then
      begin

        frmVENDA_INICIO := tfrmVENDA_INICIO.create(self);
        frmVENDA_INICIO.showmodal;
      end
      else
      begin
        application.messagebox('Este caixa est� fechado! Favor verificar...',
          'Aten��o', mb_ok + mb_iconwarning);
      end;
    end
    else
    begin
      application.messagebox
        ('Voce n�o possui um caixa padr�o! Favor verificar com o Administrador!',
        'Aten��o', mb_ok + mb_iconwarning);
      Exit;
    end;

  end
  else
  begin

    if frmmodulo.QRCONFIG.FIELDBYNAME('ramo_atividade').AsInteger = 4 then
    begin
      if frmPrincipal.autentica_caixa('Pedido de Venda', 0) then
      begin
        if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1 then
        begin

          FRMVENDA_FARMA := TFRMVENDA_FARMA.create(self);
          FRMVENDA_FARMA.showmodal;
        end
        else
        begin
          application.messagebox('Este caixa est� fechado! Favor verificar...',
            'Aten��o', mb_ok + mb_iconwarning);
        end;
      end

    end
    else
    begin
      if frmPrincipal.autentica_caixa('Pedido de Venda', 0) then
      begin
        if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1 then
        begin

          frmVENDA_INICIO := tfrmVENDA_INICIO.create(self);
          frmVENDA_INICIO.showmodal;
        end
        else
        begin
          application.messagebox('Este caixa est� fechado! Favor verificar...',
            'Aten��o', mb_ok + mb_iconwarning);
        end;
      end

    end;
  end;

  // codcaixa := frmmodulo.qrcaixa_operador.FIELDBYNAME('codigo').asstring;

end;

procedure TfrmPrincipal.Daruma_Analisa_Retorno();
begin

  if daruma_retorno = -27 then
    Daruma_Retorno_Impressora();

  if daruma_retorno = 0 then
  begin
    continua := false;
    application.messagebox
      ('Erro de comunica��o, a Fun��o nao conseguiu enviar o comando', 'Erro',
      mb_ok + MB_ICONERROR);
  end;

  if daruma_retorno = -1 then
  begin
    continua := false;
    application.messagebox('Erro de Execu��o da Fun��o', 'Erro',
      mb_ok + MB_ICONERROR);
  end;

  if daruma_retorno = -2 then
  begin
    continua := false;
    application.messagebox('Par�metro inv�lido passado na fun��o.!', 'Erro',
      mb_ok + MB_ICONERROR);
  end;

  if daruma_retorno = -3 then
  begin
    continua := false;
    application.messagebox('Al�quota n�o programada no ECF. !', 'Erro',
      mb_ok + MB_ICONERROR);
  end;

  if daruma_retorno = -4 then
  begin
    continua := false;
    application.messagebox('A Chave ou Valor no Registry n�o Foi Encontado.!',
      'Erro', mb_ok + MB_ICONERROR);
  end;

  if daruma_retorno = -5 then
  begin
    continua := false;
    application.messagebox('Erro ao Abrir a Porta de Comunica��o', 'Erro',
      mb_ok + MB_ICONERROR);
  end;

  if daruma_retorno = -6 then
  begin
    continua := false;
    application.messagebox
      ('Impressora desligada ou cabo de comunica��o desconectado.', 'Erro',
      mb_ok + MB_ICONERROR);
  end;

  if daruma_retorno = -7 then
  begin
    continua := false;
    application.messagebox('Banco n�o encontrado ou n�o cadastrado no Registry',
      'Erro', mb_ok + MB_ICONERROR);
  end;

  if daruma_retorno = -8 then
  begin
    continua := false;
    application.messagebox
      (' Erro ao criar ou gravar no arquivo STATUS.TXT ou RETORNO.TXT.', 'Erro',
      mb_ok + MB_ICONERROR);
  end;

end;

{ A Rotina Abaixo Analisa o Retorno da Impressora, do ECF }

procedure TfrmPrincipal.Daruma_Retorno_Impressora();
var
  Daruma_iACK, Daruma_iST1, Daruma_iST2: Integer;
  Daruma_MSG: string;

begin
  Daruma_iACK := 0; // Variaveis devem ser inicializadas para Alocar Espaco
  Daruma_iST1 := 0;
  Daruma_iST2 := 0;
  Daruma_MSG := '';
  daruma_retorno := Daruma_FI_RetornoImpressora(Daruma_iACK, Daruma_iST1,
    Daruma_iST2);
  if Daruma_iACK = 6 then
  begin


    // Verifica ST1

    if Daruma_iST1 >= 128 then
    begin
      Daruma_iST1 := Daruma_iST1 - 128;
      Daruma_MSG := 'Papel Acabou!!' + #13 + #10;
    end;
    if Daruma_iST1 >= 64 then
    begin
      Daruma_iST1 := Daruma_iST1 - 64;
      Daruma_MSG := Daruma_MSG + 'Papel Acabando!!' + #13 + #10;
      continua := true;
    end;
    if Daruma_iST1 >= 32 then
    begin
      Daruma_iST1 := Daruma_iST1 - 32;
      Daruma_MSG := Daruma_MSG + 'Erro no Relogio!!' + #13 + #10;
    end;
    if Daruma_iST1 >= 16 then
    begin
      Daruma_iST1 := Daruma_iST1 - 16;
      Daruma_MSG := Daruma_MSG + 'Impressora em Erro!!' + #13 + #10;
    end;
    if Daruma_iST1 >= 8 then
    begin
      Daruma_iST1 := Daruma_iST1 - 8;
      Daruma_MSG := Daruma_MSG + 'Falta o ESC no comando!!' + #13 + #10;
    end;
    if Daruma_iST1 >= 4 then
    begin
      Daruma_iST1 := Daruma_iST1 - 4;
      Daruma_MSG := Daruma_MSG + 'Nao existe o Comando!!' + #13 + #10;
    end;
    if Daruma_iST1 >= 2 then
    begin
      Daruma_iST1 := Daruma_iST1 - 2;
      Daruma_MSG := Daruma_MSG + 'Cupom Aberto!!' + #13 + #10;
    end;
    if Daruma_iST1 >= 1 then
    begin
      Daruma_iST1 := Daruma_iST1 - 1;
      Daruma_MSG := Daruma_MSG + 'Parametro Errado!!' + #13 + #10;
    end;

    // Verifica ST2

    if Daruma_iST2 >= 128 then
    begin
      Daruma_iST2 := Daruma_iST2 - 128;
      Daruma_MSG := Daruma_MSG + 'Parametro Invalido!!' + #13 + #10;
    end;
    if Daruma_iST2 >= 64 then
    begin
      Daruma_iST2 := Daruma_iST2 - 64;
      Daruma_MSG := Daruma_MSG + 'MF Lotada!!' + #13 + #10;
    end;
    if Daruma_iST2 >= 32 then
    begin
      Daruma_iST2 := Daruma_iST2 - 32;
      Daruma_MSG := Daruma_MSG + 'Erro na Ram!!' + #13 + #10;
    end;
    if Daruma_iST2 >= 16 then
    begin
      Daruma_iST2 := Daruma_iST2 - 16;
      Daruma_MSG := Daruma_MSG + 'Aliquota Nao Programada!!' + #13 + #10;
    end;
    if Daruma_iST2 >= 8 then
    begin
      Daruma_iST2 := Daruma_iST2 - 8;
      Daruma_MSG := Daruma_MSG + 'Nao cabe mais Aliquota!!' + #13 + #10;
    end;
    if Daruma_iST2 >= 4 then
    begin
      Daruma_iST2 := Daruma_iST2 - 4;
      Daruma_MSG := Daruma_MSG + 'Canc. Nao Permitido!!' + #13 + #10;
    end;
    if Daruma_iST2 >= 2 then
    begin
      Daruma_iST2 := Daruma_iST2 - 2;
      Daruma_MSG := Daruma_MSG + 'CNPJ nao Programado!!' + #13 + #10;
    end;
    if Daruma_iST2 >= 1 then
    begin
      Daruma_iST2 := Daruma_iST2 - 1;
      Daruma_MSG := Daruma_MSG + 'Comando Nao Executado!!' + #13 + #10;
    end;

    if Length(Daruma_MSG) > 1 then
      application.messagebox(PWideChar(Daruma_MSG), 'Aten��o',
        mb_ok + mb_iconwarning);
  end;

  if Daruma_iACK = 21 then
  begin
    application.messagebox
      ('Erro Fatal na Impressora! A aplica��o ser� finalizada!', 'Erro',
      mb_ok + MB_ICONERROR);
    application.Terminate;
    Exit;
  end;
end;

function TfrmPrincipal.AnalisaRetornoECF: Integer;
var
  iACK, iST1, iST2: Integer;
begin
  iACK := 0;
  iST1 := 0;
  iST2 := 0;
  iRet := Bematech_FI_RetornoImpressora(iACK, iST1, iST2);
  if iACK = 6 then
  begin
    if iST1 = 64 then
    begin
      iST1 := iST1 - 64;
      application.messagebox('Papel est� terminando', 'Aten��o',
        mb_ok + mb_iconwarning);
      iRet := 1;
      continua := true;
    end
    else
    begin
      if iST1 = 128 then
      begin
        iST1 := iST1 - 128;
        application.messagebox('Fim do Papel', 'Erro', mb_ok + MB_ICONERROR);
        iRet := 0;
      end;
      if iST1 = 192 then
      begin
        iST1 := iST1 - 128;
        application.messagebox('Fim do Papel', 'Erro', mb_ok + MB_ICONERROR);
        iRet := 0;
      end;
      if iST1 = 32 then
      begin
        iST1 := iST1 - 32;
        application.messagebox('Erro no rel�gio interno do ECF', 'Erro',
          mb_ok + MB_ICONERROR);
      end;
      if iST1 = 16 then
      begin
        iST1 := iST1 - 16;
        application.messagebox('Impressora em erro - Desligue e ligue o ECF',
          'Erro', mb_ok + MB_ICONERROR);
        continua := false;
      end;
      if iST1 = 8 then
      begin
        iST1 := iST1 - 8;
        application.messagebox('Erro no envio do comando', 'Erro',
          mb_ok + MB_ICONERROR);
        continua := false;
      end;
      if iST1 = 4 then
      begin
        iST1 := iST1 - 4;
        application.messagebox('Comando inexistente', 'Erro',
          mb_ok + MB_ICONERROR);
        continua := false;
      end;
      if iST1 = 2 then
      begin
        iST1 := iST1 - 2;
        application.messagebox('Cupom Fiscal aberto', 'Erro',
          mb_ok + MB_ICONERROR);
        venda_TEF := true;
      end;
      if iST1 = 1 then
      begin
        iST1 := iST1 - 1;
        application.messagebox('Par�metro inv�lido', 'Erro',
          mb_ok + MB_ICONERROR);
        continua := false;
      end;
      // Verifica ST2
      if iST2 = 128 then
      begin
        iST2 := iST2 - 128;
        application.messagebox('Tipo de comando inv�lido', 'Erro',
          mb_ok + MB_ICONERROR);
        continua := false;
      end;
      if iST2 = 64 then
      begin
        iST2 := iST2 - 64;
        application.messagebox('Mem�ria Fiscal cheia', 'Erro',
          mb_ok + MB_ICONERROR);
        continua := false;
      end;
      if iST2 = 32 then
      begin
        iST2 := iST2 - 32;
        application.messagebox('Erro na CMOS do ECF', 'Erro',
          mb_ok + MB_ICONERROR);
        continua := false;
      end;
      if iST2 = 16 then
      begin
        iST2 := iST2 - 16;
        application.messagebox('Al�quota n�o programada', 'Erro',
          mb_ok + MB_ICONERROR);
        continua := false;
      end;
      if iST2 = 8 then
      begin
        iST2 := iST2 - 8;
        application.messagebox('Capacidade de al�quotas esgotada', 'Erro',
          mb_ok + MB_ICONERROR);
        continua := false;
      end;
      if iST2 = 5 then
      begin
        iST2 := iST2 - 4;
        application.messagebox
          ('Cancelamento n�o permitido! Verifique se o mesmo j� foi cancelado!',
          'Erro', mb_ok + MB_ICONERROR);
        continua := false;
      end;

      if iST2 = 4 then
      begin
        iST2 := iST2 - 4;
        application.messagebox('Cancelamento n�o permitido pelo ECF', 'Erro',
          mb_ok + MB_ICONERROR);
        continua := false;
      end;
      if iST2 = 2 then
      begin
        iST2 := iST2 - 2;
        application.messagebox('CNPJ/IE n�o programados', 'Erro',
          mb_ok + MB_ICONERROR);
        continua := false;
      end;
      if iST2 = 1 then
      begin
        iST2 := iST2 - 1;
        application.messagebox('Comando n�o executado', 'Erro',
          mb_ok + MB_ICONERROR);
        continua := false;
      end;
    end; // ACABANDO O PAPEL....
  end;

  if iACK = 21 then
  begin
    application.messagebox(PWideChar('Aten��o!!!' + #13 + #10 +
      'A Impressora retornou NAK. O programa ser� abortado.'), 'Erro',
      mb_ok + MB_ICONERROR);
    continua := false;
    application.Terminate;
    Exit;
  end;

  result := iRet;
end;

function TfrmPrincipal.AnalisaRetornoComando(retorno: Integer): Integer;
begin

  if retorno < 1 then
    continua := false;

  if retorno = 0 then
    application.messagebox('Erro de Comunica��o !', 'Erro',
      mb_ok + MB_ICONERROR);
  if retorno = -1 then
    application.messagebox('Erro de Execu��o na Fun��o. Verifique!', 'Erro',
      mb_ok + MB_ICONERROR);

  if retorno = -2 then
    application.messagebox('Par�metro Inv�lido!', 'Erro', mb_ok + MB_ICONERROR);

  if retorno = -3 then
    application.messagebox('Al�quota n�o programada!', 'Erro',
      mb_ok + MB_ICONERROR);

  if retorno = -4 then
    application.messagebox('Arquivo BemaFI32.INI n�o encontrado. Verifique!',
      'Erro', mb_ok + MB_ICONERROR);

  if retorno = -5 then
    application.messagebox('Erro ao Abrir a Porta de Comunica��o', 'Erro',
      mb_ok + MB_ICONERROR);

  if retorno = -6 then
    application.messagebox('Impressora Desligada ou Desconectada', 'Erro',
      mb_ok + MB_ICONERROR);

  if retorno = -7 then
    application.messagebox('Banco N�o Cadastrado no Arquivo BemaFI32.ini',
      'Erro', mb_ok + MB_ICONERROR);

  if retorno = -8 then
    application.messagebox
      ('Erro ao Criar ou Gravar no Arquivo Retorno.txt ou Status.txt', 'Erro',
      mb_ok + MB_ICONERROR);

  if retorno = -18 then
    application.messagebox('N�o foi poss�vel abrir arquivo INTPOS.001 !',
      'Erro', mb_ok + MB_ICONERROR);

  if retorno = -19 then
    application.messagebox('Par�metro diferentes !', 'Erro',
      mb_ok + MB_ICONERROR);

  if retorno = -20 then
    application.messagebox('Transa��o cancelada pelo Operador !', 'Erro',
      mb_ok + MB_ICONERROR);

  if retorno = -21 then
    application.messagebox('A Transa��o n�o foi aprovada !', 'Erro',
      mb_ok + MB_ICONERROR);

  if retorno = -22 then
    application.messagebox('N�o foi poss�vel terminal a Impress�o !', 'Erro',
      mb_ok + MB_ICONERROR);

  if retorno = -23 then
    application.messagebox('N�o foi poss�vel terminal a Opera��o !', 'Erro',
      mb_ok + MB_ICONERROR);

  if retorno = -24 then
    application.messagebox('Forma de pagamento n�o programada.', 'Erro',
      mb_ok + MB_ICONERROR);

  if retorno = -25 then
    application.messagebox('Totalizador n�o fiscal n�o programado.', 'Erro',
      mb_ok + MB_ICONERROR);

  if retorno = -26 then
    application.messagebox('Transa��o j� Efetuada !', 'Erro',
      mb_ok + MB_ICONERROR);

  if retorno = -28 then
    application.messagebox('N�o h� Informa��es para serem Impressas !', 'Erro',
      mb_ok + MB_ICONERROR);
  result := retorno;
end;

function TfrmPrincipal.AnalisaRetorno(retorno: Integer): Integer;
begin
  iRet := AnalisaRetornoComando(retorno);
  iRet := AnalisaRetornoECF();
  result := iRet;
end;

procedure TfrmPrincipal.log(CODUSUARIO, TABELA, CODREGISTRO, FUNCAO,
  hISTORICO: string);
begin
  frmmodulo.querylog.close;
  frmmodulo.querylog.SQL.clear;
  frmmodulo.querylog.SQL.add('insert into c000101');
  frmmodulo.querylog.SQL.add
    ('(data,hora,codusuario,tabela,codregistro,funcao,historico)');
  frmmodulo.querylog.SQL.add('values');
  frmmodulo.querylog.SQL.add
    ('(:data,:hora,:codusuario,:tabela,:codregistro,:funcao,:historico)');
  frmmodulo.querylog.params.parambyname('data').asdatetime := date;
  frmmodulo.querylog.params.parambyname('hora').asstring := timetostr(time);
  frmmodulo.querylog.params.parambyname('codusuario').asstring := usuario_temp;
  frmmodulo.querylog.params.parambyname('tabela').asstring := TABELA;
  frmmodulo.querylog.params.parambyname('codregistro').asstring :=
    copy(CODREGISTRO, 1, 10);
  frmmodulo.querylog.params.parambyname('funcao').asstring :=
    copy(FUNCAO, 1, 10);
  frmmodulo.querylog.params.parambyname('historico').asstring :=
    copy(hISTORICO, 1, 80);
  frmmodulo.querylog.execsql;

  usuario_temp := codigo_usuario;

end;

procedure TfrmPrincipal.logUC(xmsg: string; xnivel: Integer);
begin

  try
    iCloud.log(xmsg, xnivel);
  except
    on e: Exception do
      iCloud.log(e.Message, 3);
  end;

end;

procedure TfrmPrincipal.agenda(vsituacao, vtipo, vnome, vtelefone1, vtelefone2,
  vtelefone3, vcelular, vemail, vfax, vhomepage, vtipoi: string);
begin

  // tipoi
  {
    1. 'CLIENTE'
    2. 'CONTATO'
    3. 'FORNECEDOR'
    4. 'FUNCION�RIO'
    5. 'OUTROS'
    6. 'TRANSPORTADOR'
  }

  if vsituacao = '1' then
  begin
    frmmodulo.queryagenda.close;
    frmmodulo.queryagenda.SQL.clear;
    frmmodulo.queryagenda.SQL.add('insert into c000034');
    frmmodulo.queryagenda.SQL.add
      ('(codigo,tipo,nome,telefone1,telefone2,telefone3,celular,email,fax,homepage,tipoi)');
    frmmodulo.queryagenda.SQL.add('values');
    frmmodulo.queryagenda.SQL.add
      ('(:codigo,:tipo,:nome,:telefone1,:telefone2,:telefone3,:celular,:email,:fax,:homepage,:tipoi)');
    frmmodulo.queryagenda.params.parambyname('codigo').asstring :=
      frmPrincipal.codifica('000034');
    frmmodulo.queryagenda.params.parambyname('tipo').asstring := vtipo;
    frmmodulo.queryagenda.params.parambyname('nome').asstring := vnome;
    frmmodulo.queryagenda.params.parambyname('telefone1').asstring :=
      vtelefone1;
    frmmodulo.queryagenda.params.parambyname('telefone2').asstring :=
      vtelefone2;
    frmmodulo.queryagenda.params.parambyname('telefone3').asstring :=
      vtelefone3;
    frmmodulo.queryagenda.params.parambyname('celular').asstring := vcelular;
    frmmodulo.queryagenda.params.parambyname('email').asstring := vemail;
    frmmodulo.queryagenda.params.parambyname('fax').asstring := vfax;
    frmmodulo.queryagenda.params.parambyname('homepage').asstring := vhomepage;
    frmmodulo.queryagenda.params.parambyname('tipoi').AsInteger :=
      strtoint(vtipoi);
    frmmodulo.queryagenda.execsql;
  end
  else if vsituacao = '2' then
  begin
    {
      frmmodulo.queryagenda.close;
      frmmodulo.queryagenda.SQL.clear;
      frmmodulo.queryagenda.sql.add('update c000034 set ');
      frmmodulo.queryagenda.sql.add('(tipo,nome,telefone1,telefone2,telefone3,celular,email,fax,homepage,tipoi)');
      frmmodulo.queryagenda.SQL.add('values');
      frmmodulo.queryagenda.sql.add('(:tipo,:nome,:telefone1,:telefone2,:telefone3,:celular,:email,:homepage,:tipoi)');
      frmmodulo.queryagenda.params.parambyname('tipo').AsString := vtipo;
      frmmodulo.queryagenda.params.parambyname('nome').asstring := vnome;
      frmmodulo.queryagenda.params.parambyname('telefone1').asstring := vtelefone1;
      frmmodulo.queryagenda.params.parambyname('telefone2').asstring := vtelefone2;
      frmmodulo.queryagenda.params.parambyname('telefone3').asstring := vtelefone2;
      frmmodulo.queryagenda.params.parambyname('celular').asstring := vcelular;
      frmmodulo.queryagenda.params.parambyname('email').asstring := vemail;
      frmmodulo.queryagenda.params.parambyname('fax').asstring := vfax;
      frmmodulo.queryagenda.params.parambyname('homepage').asstring := vhomepage;
      frmmodulo.queryagenda.params.parambyname('tipoi').AsInteger := strtoint(vtipoi);
      frmmodulo.queryagenda.execsql;
    }
  end;

end;

function TfrmPrincipal.VersaoExe(const Filename: string): string;
type
  TVersionInfo = packed record
    Dummy: array [0 .. 7] of Byte;
    V2, V1, V4, V3: Word;
  end;
var
  Zero, Size: Cardinal;
  data: Pointer;
  VersionInfo: ^TVersionInfo;
begin
  Size := GetFileVersionInfoSize(Pointer(Filename), Zero);
  if Size = 0 then
    result := ''
  else
  begin
    GetMem(data, Size);
    try
      GetFileVersionInfo(Pointer(Filename), 0, Size, data);
      VerQueryValue(data, '\', Pointer(VersionInfo), Size);
      result := Format('%d.%d.%d.%d', [VersionInfo.V1, VersionInfo.V2,
        VersionInfo.V3, VersionInfo.V4]);
    finally
      FreeMem(data);
    end;
  end;
end;

function TfrmPrincipal.Exec_File(File_Path: string): Integer;
var
  retorno: Integer;
  MyOpenDialog: TOpenDialog;
  Error_Msg: string;
begin
  retorno := ERROR_FILE_NOT_FOUND;

  try
    if FileExists(File_Path) then
      retorno := ShellExecute(0, nil, Pchar(File_Path), nil, nil, SW_NORMAL)
    else if application.messagebox
      (Pchar('N�o foi poss�vel encontrar o arquivo - ' + #13 + File_Path +
      #13#13 + 'Deseja Localizar o Arquivo?'), 'Aten��o',
      MB_IconInformation + MB_YESNO) = idYes then
    begin
      MyOpenDialog := TOpenDialog.create(MyOpenDialog);
      MyOpenDialog.Title := 'Localizando Arquivo...';
      MyOpenDialog.InitialDir := Extractfiledir(application.exename);
      if MyOpenDialog.Execute then
        retorno := ShellExecute(0, nil, Pchar(MyOpenDialog.Filename), nil, nil,
          SW_NORMAL);
    end;
  except
    application.messagebox('Erro no processo de execu��o do arquivo de Ajuda',
      'Aten��o', mb_ok + MB_ICONERROR);
  end;

  MyOpenDialog.Free;

  Error_Msg := '';
  case retorno of
    0:
      Error_Msg := 'Erro: N�o h� mem�ria sufiente para executar o arquivo - ' +
        File_Path;
    ERROR_FILE_NOT_FOUND:
      Error_Msg := 'Erro: Arquivo n�o encontrado em - ' + File_Path;
    ERROR_PATH_NOT_FOUND:
      Error_Msg := 'Erro: Arquivo n�o encontrado em - ' + File_Path;
    ERROR_BAD_FORMAT:
      Error_Msg :=
        'Erro: Arquivo .EXE inv�lido (non-Win32 .EXE or error in .EXE image).';
    SE_ERR_ACCESSDENIED:
      Error_Msg := 'Erro: O Sistema Operacional negou o acesso ao arquivo - ' +
        File_Path;
    SE_ERR_ASSOCINCOMPLETE:
      Error_Msg :=
        'Erro: Associa��o de tipo de arquivo incompat�vel ou inv�lida.';
    SE_ERR_DDEBUSY:
      Error_Msg :=
        'Erro: Transa��o DDE n�o pode ser completada devido a execu��o de outras transa��es.';
    SE_ERR_DDEFAIL:
      Error_Msg := 'Erro: A Transa��o DDE falhou.';
    SE_ERR_DDETIMEOUT:
      Error_Msg := 'Erro: Time de execu��o da transa��o DDE';
    SE_ERR_DLLNOTFOUND:
      Error_Msg := 'Erro: Dll especificada n�o foi encontrada.';
    SE_ERR_NOASSOC:
      Error_Msg :=
        'Erro: N�o h� aplicativo associado ao tipo de arquivo especificado.';
    SE_ERR_OOM:
      Error_Msg := 'Erro: N�o h� mem�ria sufiente para completar a opera��o.';
    SE_ERR_SHARE:
      Error_Msg := 'Erro: Viola��o de Compartilhamento.';
    // else
    // showmessage('instance handle of the application that was run, or the handle of a dynamic data exchange (DDE) server application is: ' + inttostr(retorno));
  end;

  if trim(Error_Msg) <> '' then
    showmessage(Error_Msg);

end;

function TfrmPrincipal.UltimoDiaMes(Mdt: TDateTime): TDateTime;
{ retorna o ultimo dia o mes, de uma data fornecida }
var
  ano, mes, dia: Word;
  mDtTemp: TDateTime;
begin
  Decodedate(Mdt, ano, mes, dia);
  mDtTemp := (Mdt - dia) + 33;
  Decodedate(mDtTemp, ano, mes, dia);
  result := mDtTemp - dia;
end;

function TfrmPrincipal.Space(const Len: Integer): string;
begin
  result := tbReplChar(#32, Len);
end;

function TfrmPrincipal.tbReplChar(const Ch: Char; const Len: Integer): string;
var
  i: Integer;
begin
  SetLength(result, Len);
  for i := 1 to Len do
    result[i] := Ch;
end;

function TfrmPrincipal.somenteNumero(sNum: string): string;
var
  S1, S2: string;
  i: Integer;
begin
  S1 := sNum;
  S2 := '';
  for i := 1 to Length(S1) do
    if S1[i] in ['0' .. '9'] then
      S2 := S2 + S1[i];
  result := S2;
end;

function TfrmPrincipal.tira_ponto(Texto: string): string;
var
  i: Integer;
begin
  i := pos('.', Texto) + pos(',', Texto);
  while i <> 0 do
  begin
    if pos('.', Texto) > 0 then
      delete(Texto, i, 1);
    if pos(',', Texto) > 0 then
      delete(Texto, i, 1);
    i := pos('.', Texto) + pos(',', Texto);
  end;
  result := Texto;
end;

procedure TfrmPrincipal.tlLoanCalculatorClick(Sender: TdxTileControlItem);
begin
  frmcompra_menu := tfrmcompra_menu.create(self);
  frmcompra_menu.showmodal;
end;

procedure TfrmPrincipal.tlPhotosClick(Sender: TdxTileControlItem);
begin
  if frmPrincipal.autentica_caixa('Acesso ao Caixa', 0) then
  begin
    frmcaixa := tfrmcaixa.create(self);
    frmcaixa.showmodal;
  end
  else
  begin
    application.messagebox('N�o autorizado!', 'Aviso', mb_ok + MB_ICONERROR);
  end;

end;

procedure TfrmPrincipal.tlResearchClick(Sender: TdxTileControlItem);
begin
  FRMCONTASPAGAR := TFRMCONTASPAGAR.create(self);
  FRMCONTASPAGAR.showmodal;
end;

procedure TfrmPrincipal.tlStatisticsClick(Sender: TdxTileControlItem);
begin
  frmcliente := tfrmcliente.create(self);
  frmcliente.showmodal;
end;

procedure TfrmPrincipal.tlSystemInformationClick(Sender: TdxTileControlItem);
begin
  frmnotafiscal_menu := tfrmnotafiscal_menu.create(self);
  frmnotafiscal_menu.showmodal;
end;

procedure TfrmPrincipal.tlUserManagementClick(Sender: TdxTileControlItem);
begin
  frmcontasreceber := tfrmcontasreceber.create(self);
  frmcontasreceber.showmodal;
end;

function TfrmPrincipal.TiraCaracterEspecial(Texto: string): string;
var
  i: Integer;
begin
  i := pos('-', Texto) + pos('_', Texto);
  while i <> 0 do
  begin
    if pos('-', Texto) > 0 then
      delete(Texto, i, 1);
    if pos('_', Texto) > 0 then
      delete(Texto, i, 1);
    i := pos('-', Texto) + pos('_', Texto);
  end;
  result := Texto;
end;

procedure TfrmPrincipal.ExecutePrograma(Nome, Parametros: string);
var
  Comando: array [0 .. 1024] of Char;
  Parms: array [0 .. 1024] of Char;
begin
  StrPCopy(Comando, Nome);
  StrPCopy(Parms, Parametros);
  ShellExecute(0, nil, Comando, Parms, nil, SW_ShowNormal);
end;

procedure TfrmPrincipal.FechePrograma(Programa: Pchar);
var
  hHandle: THandle;
begin
  hHandle := FindWindow(nil, Programa);

  if hHandle <> 0 then
    PostMessage(hHandle, WM_QUIT, 0, 0);

end;

function TfrmPrincipal.NomeComputador: string;
var
  lpBuffer: Pchar;
  nSize: DWord;
const
  Buff_Size = MAX_COMPUTERNAME_LENGTH + 1;
begin
  nSize := Buff_Size;
  lpBuffer := StrAlloc(Buff_Size);
  GetComputerName(lpBuffer, nSize);
  result := string(lpBuffer);
  StrDispose(lpBuffer);
end;

function TfrmPrincipal.acesso(usuario: string; FUNCAO: string): string;
begin
  try
    frmmodulo.qrUsuario_funcao.close;
    frmmodulo.qrUsuario_funcao.SQL.clear;
    frmmodulo.qrUsuario_funcao.SQL.add
      ('select * from c000067 where codusuario =''' + usuario +
      ''' and funcao like ''' + FUNCAO + '%''');
    frmmodulo.qrUsuario_funcao.open;
    if frmmodulo.qrUsuario_funcao.RecNo = 1 then
    begin
      result := frmmodulo.qrUsuario_funcao.FIELDBYNAME('ACESSO').asstring;
    end
    else
    begin
      result := 'NAO';
    end;
  except
    result := 'NAO';
  end;

end;

procedure TfrmPrincipal.AcertaPadraoData2;
const
  arrShortDayNames: array [1 .. 7] of string[3] = ('Dom', 'Seg', 'Ter', 'Qua',
    'Qui', 'Sex', 'Sab');
  arrLongDayNames: array [1 .. 7] of string[15] = ('Domingo', 'Segunda',
    'Ter�a', 'Quarta', 'Quinta', 'Sexta', 'S�bado');
  arrShortMonthNames: array [1 .. 12] of string[3] = ('Jan', 'Fev', 'Mar',
    'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez');
  arrLongMonthNames: array [1 .. 12] of string[15] = ('Janeiro', 'Fevereiro',
    'Mar�o', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro',
    'Novembro', 'Dezembro');
var
  ii: Integer;
begin
  ShortDateFormat := 'dd/mm/yyyy';
  DecimalSeparator := ',';
  ThousandSeparator := '.';
  for ii := 1 to 7 do
  begin
    ShortDayNames[ii] := arrShortDayNames[ii];
    LongDayNames[ii] := arrLongDayNames[ii];
  end;
  for ii := 1 to 12 do
  begin
    ShortMonthNames[ii] := arrShortMonthNames[ii];
    LongMonthNames[ii] := arrLongMonthNames[ii];
  end;
end;

procedure TfrmPrincipal.limpaedit(Form: TForm);
var
  i: Integer;
begin
  for i := 0 to Form.ComponentCount - 1 do
    if Form.Components[i] is TCustomEdit then
      (Form.Components[i] as TCustomEdit).clear;
end;

function TfrmPrincipal.texto_justifica(Texto: string; qtde_caracteres: Integer;
  caracter: string; tipo: string): string;
begin
  Texto := tiraacento(Texto);
  if tipo = 'E' then
  begin
    while Length(Texto) < qtde_caracteres do
      Texto := caracter + Texto;
    while Length(Texto) > qtde_caracteres do
      delete(Texto, (qtde_caracteres + 1), 1);
  end;
  if tipo = 'D' then
  begin
    while Length(Texto) < qtde_caracteres do
      Texto := Texto + caracter;
    while Length(Texto) > qtde_caracteres do
      delete(Texto, (qtde_caracteres + 1), 1);
  end;
  if tipo = 'C' then
  begin
    if (qtde_caracteres mod 2) <> 0 then
      qtde_caracteres := qtde_caracteres - 1;
    while Length(Texto) < qtde_caracteres do
      Texto := caracter + Texto + caracter;
    while Length(Texto) > qtde_caracteres do
      delete(Texto, (qtde_caracteres + 1), 1);
  end;
  result := Texto;
end;

function TfrmPrincipal.AnoBiSexto(Ayear: Integer): Boolean;
begin
  // Verifica se o ano � Bi-Sexto
  result := (Ayear mod 4 = 0) and ((Ayear mod 100 <> 0) or (Ayear mod 400 = 0));
end;

function TfrmPrincipal.DiasPorMes(Ayear, AMonth: Integer): Integer;
const
  DaysInMonth: array [1 .. 12] of Integer = (31, 28, 31, 30, 31, 30, 31, 31, 30,
    31, 30, 31);
begin
  result := DaysInMonth[AMonth];
  if (AMonth = 2) and AnoBiSexto(Ayear) then
    Inc(result);
end;

function TfrmPrincipal.tiraacento(Str: string): string;
var
  i: Integer;
begin
  for i := 1 to Length(Str) do
    case Str[i] of
      '�':
        Str[i] := 'e';
      '�':
        Str[i] := 'i';
      '�':
        Str[i] := 'u';
      '�':
        Str[i] := 'i';
      '�':
        Str[i] := 'u';
      '�':
        Str[i] := '�'; //
      '�':
        Str[i] := '�'; //
      '�':
        Str[i] := '�'; //
      '�':
        Str[i] := '�'; //
      '�':
        Str[i] := '�'; //
      '�':
        Str[i] := '�'; //
      '�':
        Str[i] := '�'; //
      '�':
        Str[i] := '�'; //
      '�':
        Str[i] := '�'; //
      '�':
        Str[i] := '�'; //
      '�':
        Str[i] := '�'; //
      '�':
        Str[i] := '�'; //
      '�':
        Str[i] := '�'; //
      '�':
        Str[i] := '�'; //
      '�':
        Str[i] := '�'; //
      '�':
        Str[i] := '�'; //
      '�':
        Str[i] := 'o';
      '�':
        Str[i] := '�'; //
      '�':
        Str[i] := '�'; //
      '�':
        Str[i] := 'A';
      '�':
        Str[i] := '�'; //
      '�':
        Str[i] := 'I';
      '�':
        Str[i] := 'O';
      '�':
        Str[i] := 'U';
      '�':
        Str[i] := 'A';
      '�':
        Str[i] := 'E';
      '�':
        Str[i] := 'I';
      '�':
        Str[i] := 'O';
      '�':
        Str[i] := 'U';
      '�':
        Str[i] := '�';
      '�':
        Str[i] := 'E';
      '�':
        Str[i] := 'I';
      '�':
        Str[i] := 'O';
      '�':
        Str[i] := 'U';
      '�':
        Str[i] := 'A';
      '�':
        Str[i] := 'E';
      '�':
        Str[i] := 'I';
      '�':
        Str[i] := 'O';
      '�':
        Str[i] := '�'; //
      '�':
        Str[i] := 'A';
      '�':
        Str[i] := 'O';
      '�':
        Str[i] := '�'; //
      '�':
        Str[i] := '�'; //
      '�':
        Str[i] := '�'; //
      '�':
        Str[i] := '�'; //
    end;
  result := Str;
end;

function TfrmPrincipal.lancaproduto(codproduto: string; data: TDateTime;
  movimento: string; codcliente: string; codsaida: string; codentrada: string;
  codvendedor: string; Qtde: Real; valor: Real; total: Real;
  notafiscal: string): string;
begin
  result := '';

end;

function TfrmPrincipal.LeInistr(arquivo, sessao, chave, padrao: string): string;
var
  ArqIni: TIniFile;
begin
  ArqIni := TIniFile.create(arquivo);
  try
    result := ArqIni.ReadString(sessao, chave, padrao);
  finally
    ArqIni.Free;
  end;
end;

function TfrmPrincipal.CalculaDigEAN13(Cod: string): string;
  function Par(Cod: Integer): Boolean;
  begin
    result := Cod mod 2 = 0;
  end;

var
  i, SomaPar, SomaImpar: Integer;
begin
  SomaPar := 0;
  SomaImpar := 0;
  for i := 1 to 12 do
    if Par(i) then
      SomaPar := SomaPar + strtoint(Cod[i])
    else
      SomaImpar := SomaImpar + strtoint(Cod[i]);

  SomaPar := SomaPar * 3;
  i := 0;
  while i < (SomaPar + SomaImpar) do
    Inc(i, 10);
  result := IntToStr(i - (SomaPar + SomaImpar));
end;

function TfrmPrincipal.TestaCnpj(xCNPJ: string): Boolean;
var
  D1, d4, xx, nCount, fator, resto, digito1, digito2: Integer;
  Check: string;
begin
  D1 := 0;
  d4 := 0;
  xx := 1;
  for nCount := 1 to Length(xCNPJ) - 2 do
  begin
    if pos(copy(xCNPJ, nCount, 1), '/-.') = 0 then
    begin
      if xx < 5 then
      begin
        fator := 6 - xx;
      end
      else
      begin
        fator := 14 - xx;
      end;
      D1 := D1 + strtoint(copy(xCNPJ, nCount, 1)) * fator;
      if xx < 6 then
      begin
        fator := 7 - xx;
      end
      else
      begin
        fator := 15 - xx;
      end;
      d4 := d4 + strtoint(copy(xCNPJ, nCount, 1)) * fator;
      xx := xx + 1;
    end;
  end;
  resto := (D1 mod 11);
  if resto < 2 then
  begin
    digito1 := 0;
  end
  else
  begin
    digito1 := 11 - resto;
  end;
  d4 := d4 + 2 * digito1;
  resto := (d4 mod 11);
  if resto < 2 then
  begin
    digito2 := 0;
  end
  else
  begin
    digito2 := 11 - resto;
  end;
  Check := IntToStr(digito1) + IntToStr(digito2);
  if Check <> copy(xCNPJ, succ(Length(xCNPJ) - 2), 2) then
  begin
    result := false;
  end
  else
  begin
    result := true;
  end;
end;

function TfrmPrincipal.Locregistro(TABELA: TDataSet; valor: string;
  campo: string): Boolean;
begin
  if TABELA.Locate(campo, valor, [loCaseInsensitive]) then
  begin
    result := true;
  end
  else
  begin
    application.messagebox('Registro n�o encontrado!!', 'Erro',
      mb_ok + mb_iconwarning);
    result := false;
  end;

end;

function TfrmPrincipal.zerarcodigo(codigo: string; Qtde: Integer): string;
begin
  while Length(codigo) < Qtde do
    codigo := '0' + codigo;
  result := codigo;
end;

function TfrmPrincipal.FormataValorProsoft(fValor: Real;
  fQtde: Integer): string;
var
  troca: string;
begin
  troca := frmPrincipal.zerarcodigo
    (frmPrincipal.somenteNumero(formatcurr('0.00', fValor)), fQtde - 1);
  result := copy(troca, 1, (fQtde - 3)) + '.' + copy(troca, (fQtde - 2), 2);
end;

function TfrmPrincipal.GetIP: string;
// --> Declare a Winsock na clausula uses da unit
var
  WSAData: TWSAData;
  HostEnt: PHostEnt;
  Name: string;
begin
  WSAStartup(2, WSAData);
  SetLength(Name, 255);
  Gethostname(PAnsiChar(Name), 255);
  SetLength(Name, StrLen(PAnsiChar(Name)));
  HostEnt := gethostbyname(PAnsiChar(Name));
  with HostEnt^ do
  begin
    result := Format('%d.%d.%d.%d', [Byte(h_addr^[0]), Byte(h_addr^[1]),
      Byte(h_addr^[2]), Byte(h_addr^[3])]);
  end;
  WSACleanup;
end;
// complus

function TfrmPrincipal.adic_codifica(TABELA: string): string;
begin

  frmmodulo.qradic_mestre.open;
  frmmodulo.qradic_mestre.CommitUpdates;
  frmmodulo.qradic_mestre.Refresh;
  if frmmodulo.qradic_mestre.Locate('codigo', TABELA, [loCaseInsensitive]) then
  begin

    if frmmodulo.qradic_mestre.FIELDBYNAME('sequencia').AsInteger < 1 then
    begin
      result := '000001';
      frmmodulo.qradic_mestre.Edit;
      frmmodulo.qradic_mestre.FIELDBYNAME('sequencia').AsInteger := 2;
      frmmodulo.qradic_mestre.Post;
    end
    else
    begin
      result := frmPrincipal.zerarcodigo
        (IntToStr(frmmodulo.qradic_mestre.FIELDBYNAME('sequencia')
        .AsInteger), 6);
      frmmodulo.qradic_mestre.Edit;
      frmmodulo.qradic_mestre.FIELDBYNAME('sequencia').AsInteger :=
        frmmodulo.qradic_mestre.FIELDBYNAME('sequencia').AsInteger + 1;
      frmmodulo.qradic_mestre.Post;
    end;
  end
  else
  begin
    showmessage('N�o foi poss�vel concluir com a opera��o!' + #13 +
      'Erro: C�digo de sequ�ncia n�o encontrado na tabela de c�digos.');
    frmmodulo.conexao_adic.Rollback;
  end;

end;

function TfrmPrincipal.codifica(TABELA: string): string;
var
  xcod: Integer;
begin
  // transMestre.active := true;
  qrmestre.close;
  qrmestre.SQL.clear;
  qrmestre.SQL.add('select * from c000000 where codigo = ''' + TABELA + '''');
  qrmestre.open;
  if qrmestre.recordcount > 0 then
  begin
    xcod := qrmestre.FIELDBYNAME('sequencia').AsInteger;
    if xcod < 1 then
      xcod := 1;
    qrmestre.close;
    qrmestre.SQL.clear;
    qrmestre.SQL.add
      ('update c000000 set sequencia = sequencia + 1 where codigo = ''' +
      TABELA + '''');
    qrmestre.execsql;
    // transMestre.commit;
    result := frmPrincipal.zerarcodigo(IntToStr(xcod), 6);
  end
  else
  begin
    showmessage('N�o foi poss�vel concluir com a opera��o!' + #13 +
      'Erro: C�digo de sequ�ncia n�o encontrado na tabela de c�digos.');
  end;
  application.ProcessMessages;
end;

function TfrmPrincipal.Cript(Action, Src: string): string;
label Fim;
var
  KeyLen: Integer;
  KeyPos: Integer;
  OffSet: Integer;
  Dest, Key: string;
  SrcPos: Integer;
  SrcAsc: Integer;
  TmpSrcAsc: Integer;
  Range: Integer;
begin
  if (Src = '') then
  begin
    result := '';
    goto Fim;
  end;
  Key := 'YUQL23KL23DF90WI5E1JAS467NMCXXL6JAOAUWWMCL0AOMM4A4VZYW9KHJUI2347EJHJKDF3424SKL K3LAKDJSL9RTIKJ';
  // Key := 'YUQL%%$#%3DF#0WI5E$JA$46#NM@XXL6JAOAUW%$#@0AOMM4$4VZYW&&HJUI23@7E%#@!DF34#4SKL K3LA@DJSL9RTIKJ';
  Dest := '';
  KeyLen := Length(Key);
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 256;
  if (Action = UpperCase('C')) then
  begin
    Randomize;
    OffSet := Random(Range);
    Dest := Format('%1.2x', [OffSet]);
    for SrcPos := 1 to Length(Src) do
    begin
      application.ProcessMessages;
      SrcAsc := (Ord(Src[SrcPos]) + OffSet) mod 255;
      if KeyPos < KeyLen then
        KeyPos := KeyPos + 1
      else
        KeyPos := 1;
      SrcAsc := SrcAsc xor Ord(Key[KeyPos]);
      Dest := Dest + Format('%1.2x', [SrcAsc]);
      OffSet := SrcAsc;
    end;
  end
  else if (Action = UpperCase('D')) then
  begin
    OffSet := strtoint('$' + copy(Src, 1, 2));
    SrcPos := 3;
    repeat
      SrcAsc := strtoint('$' + copy(Src, SrcPos, 2));
      if (KeyPos < KeyLen) then
        KeyPos := KeyPos + 1
      else
        KeyPos := 1;
      TmpSrcAsc := SrcAsc xor Ord(Key[KeyPos]);
      if TmpSrcAsc <= OffSet then
        TmpSrcAsc := 255 + TmpSrcAsc - OffSet
      else
        TmpSrcAsc := TmpSrcAsc - OffSet;
      Dest := Dest + Chr(TmpSrcAsc);
      OffSet := SrcAsc;
      SrcPos := SrcPos + 2;
    until (SrcPos >= Length(Src));
  end;
  result := Dest;
Fim:
end;

function TfrmPrincipal.autentica(FUNCAO: string; nivel: Integer): Boolean;
begin
  frmsenha := tfrmsenha.create(self);
  frmsenha.lfuncao.caption := IntToStr(nivel) + ' - ' + FUNCAO;
  frmsenha.showmodal;
  result := autenticado;
end;

function TfrmPrincipal.autentica_caixa(FUNCAO: string; nivel: Integer): Boolean;
begin
  frmsenha_caixa := tfrmsenha_caixa.create(self);
  frmsenha_caixa.lfuncao.caption := IntToStr(nivel) + ' - ' + FUNCAO;
  frmsenha_caixa.showmodal;

  result := autenticado;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
var
  d: Integer;
  pt: tpoint;
  serial: string;
  x, data_fim, data_inicio: string;
  Registro: TRegistry;
  lSucesso: Boolean;
  a: Real;
  Texto: string;

  // variaveis da dll de registro
  reg_expirado, reg_instalacao, reg_data, reg_termino: string;

  slinha: string;
  f: textfile;

  Dt_Final, Dt_inventario: TDateTime;
  AnoF, MesF, DiaF: Word;
  ano, mes, dia: Word;

  vData_Inventario, data: TDateTime;
  vInventario_ano: Integer;
  // ano, mes, dia : word;
  IniFile: string;
  Ini: TIniFile;

begin

   imgm_imagens.Picture.LoadFromFile('C:\Softlogus\server\img\logo.jpg');
  Label27.caption := '';
  Label27.caption := 'Identifica��o : ' +
    IntToStr(frmPrincipal.ativador.IDInstalacao) + #13;
  Label27.caption := Label27.caption + 'Dias Restantes : ' +
    IntToStr(frmPrincipal.ativador.Dias_RestantesU) + #13;
  Label27.caption := Label27.caption + 'Data Vencimento : ' +
    principal.frmPrincipal.ativador.Data_VencimentoU + #13;
  Label27.caption := Label27.caption + 'Chave : ' +
    frmPrincipal.ativador.Chave_RegistradaU + #13;
  Label27.caption := Label27.caption + 'E-mail do cliente : ' +
    frmPrincipal.ativador.Email_ClienteU + #13;
  // label27.Caption := label27.Caption + 'Vers�o : ' + IntToStr(frmPrincipal.ativador.Versao_Sistema) + #13;
  if frmPrincipal.ativador.Sistema_DemoU then
    Label27.caption := Label27.caption + 'DEMO'
  else
    Label27.caption := Label27.caption + 'REGISTRADO';

  dados.clear;
  dados.Lines.add(frmPrincipal.ativador.Cliente_Nome);
  dados.Lines.add(frmPrincipal.ativador.Cliente_CPF);
  dados.Lines.add(frmPrincipal.ativador.Cliente_Endereco);
  dados.Lines.add(frmPrincipal.ativador.Cliente_Cidade);
  dados.Lines.add(frmPrincipal.ativador.Cliente_Estado);
  dados.Lines.add(frmPrincipal.ativador.Cliente_Telefone);

  // novo menu
  // ptopo2.panels[3].Text := '---';

  // ResizeKit1.FormWidth := Screen.Width;
  // ResizeKit1.FormHeight := Screen.Height;
  // self.WindowState := wsMaximized;
  // self.Repaint;
  // Self.Width :=  Screen.Width;
  // Self.Height :=  Screen.Height;

  begin
    IniFile := ChangeFileExt(application.exename, '.ini');;

    Ini := TIniFile.create(IniFile);
    try

      FundoApp.Picture.LoadFromFile(Ini.ReadString('OPERACIONAIS',
        'FundoApp', ''));
      self.Repaint;

    finally
      Ini.Free;
    end;

  end;

  if (frmmodulo.Conexao.HostName <> '') and
    (ansiuppercase(frmmodulo.Conexao.HostName) <> 'LOCALHOST') and
    (ansiuppercase(frmmodulo.Conexao.HostName) <> ansiuppercase(NomeComputador))
    and (frmmodulo.Conexao.HostName <> GetIP) then

  begin
    // showmessage('sistema eh uma estacao');
    FHoje := Trunc(date);

  end
  else
  begin

  end;
  // se o sistema eh uma estacao

  if USA_TEF then
  begin
    if FileExists(sTEFKoneKPath + 'gp.tmp') then
    begin
      begin
        assignfile(f, sTEFKoneKPath + 'gp.tmp');
        reset(f);
        readln(f, slinha);
        closefile(f);
      end;
    end;

    if slinha = 'TECBAN' then
    begin
      itefTecban := 1;
      sTEFPath := 'C:\TEF_DISC\'
    end
    else
    begin
      sTEFPath := 'C:\TEF_DIAL\';
      itefTecban := 0;
    end;

    TEFVerificaGerenciadorAtivo;
    TEFVerificaArquivosPendentes;
    TEFVerificaOperacaoPendente;
  end;

  try
    Registro := TRegistry.create;
    Registro.RootKey := HKEY_CURRENT_USER;
    if not Registro.OpenKey('Softlogus', false) then
    begin
      Registro.CreateKey('Softlogus');
      Registro.OpenKey('Softlogus', true);
      Registro.writestring('Terminal', inputbox('Config. Terminal.',
        'N� Terminal (3 Digitos)', '000'));
    end
    else
    begin
      if Registro.ReadString('Terminal') = '' then
      begin
        Registro.writestring('Terminal', inputbox('Config. Terminal',
          'N� Terminal (3 Digitos)', '000'));
      end;
    end;

  finally
    registro_terminal := Registro.ReadString('Terminal');
    Registro.Free;
  end;

  frmmodulo.QRCONFIG.open;
  case frmmodulo.QRCONFIG.FIELDBYNAME('RAMO_ATIVIDADE').AsInteger of
    1:
      begin // FULL
        // PSTATUS.Panels[0].Text := 'FULL';
      end;
    2:
      begin // SUPERMERCADO
        // PSTATUS.Panels[0].Text := 'SUPER';
      end;
    3:
      begin // PECAS
        // PSTATUS.Panels[0].Text := 'PE�AS';
      end;
    4:
      begin // FARMACIA
        // PSTATUS.Panels[0].Text := 'FARMACIA';
      end;
  end;

  { if not autentica('Entrada no sistema', 1) then
    begin
    application.Terminate;
    end
    else }
  begin

    frmmodulo.QRCONFIG.open;
    nivel_usuario := iCloud.CurrentUser.UserID;
    codigo_usuario := zerarcodigo(IntToStr(iCloud.CurrentUser.UserID), 6);

    // frmmodulo.qrconfig.open;

    // frmprincipal.pstatus.Panels[2].text := frmmodulo.qrusuario.fieldbyname('codigo').asstring;
    // frmprincipal.pstatus.Panels[3].text := frmmodulo.qrusuario.fieldbyname('usuario').asstring;

    // frmprincipal.pstatus.Panels[5].text := NomeComputador;

    // frmprincipal.Menu := nil;
    // frmprincipal.pstatus.Panels[7].text := GETIP;

    // ptopo2.Panels[1].text := emitente_nome;

    data := DataDeCriacao('C:\Softlogus\server\Softlogus.exe');
    // ptopo2.Panels[5].Text := ExeInfo1.fileVersion;
    // ptopo2.Panels[6].Text := 'Atualizado Em: ' + DATETIMETOSTR(DATA);

    frmmodulo.qremitente.open;
    x := Cript('D', frmmodulo.qremitente.FIELDBYNAME('comentarios').asstring);

    if res_termino <> copy(x, 2, 10) then
      // ptopo2.panels[3].Text := res_termino
    else
      // ptopo2.panels[3].Text := copy(x, 2, 10);

      frmmodulo.qrcaixa_operador.open;
    // pstatus.Panels[12].Text := 'Data do Sistema : ' + frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;

    if frmmodulo.Conexao.HostName = '' then
      spnl47.caption := 'LOCALHOST'
    else
      spnl47.caption := frmmodulo.Conexao.HostName;

    spnl2569.caption := frmmodulo.Conexao.Database;
    spnlUsu.caption := iCloud.CurrentUser.UserLogin;

    if frmmodulo.QRCONFIG.FIELDBYNAME('VISUALIZA_MENSAGEM').AsInteger = 1 then
    begin
    end;

    frmmodulo.qrfilial.close;
    frmmodulo.qrfilial.SQL.clear;
    frmmodulo.qrfilial.SQL.add('select * from c000004 order by filial');
    frmmodulo.qrfilial.open;
    // variavel para nome no statusbar
    spnl147.caption := frmmodulo.qrFilialFILIAL.asstring;

    vfil_codigo := frmmodulo.qrFilialCODIGO.asstring;
    vfil_nome := frmmodulo.qrFilialFILIAL.asstring;
    vfil_cnpj := frmmodulo.qrFilialCNPJ.asstring;
    vfil_ie := frmmodulo.qrFilialIE.asstring;
    vfil_cipi := frmmodulo.qrFilialCONTRIBUINTE_IPI.asstring;
    vfil_cst := frmmodulo.qrFilialSUBSTITUTO_TRIBUTARIO.asstring;
    vfil_simples := frmmodulo.qrFilialOPTANTE_SIMPLES.asstring;
    vfil_ssimples := frmmodulo.qrFilialOPTANTE_SUPER_SIMPLES.asstring;
    vfil_estadual := frmmodulo.qrFilialEMPRESA_ESTADUAL.asstring;

    if iCloud.CurrentUser.Privileged then
    begin

      if mostra_principal = '1' then
      begin

        pnormal.visible := false;
        psuper.visible := false; // true;

        qrcx.close;
        qrcx.SQL.clear;
        qrcx.SQL.add('select * from c000045 where codigo = ''000099''');
        qrcx.open;
        if qrcx.recordcount > 0 then
        begin
          lcaixa.caption := qrcx.FIELDBYNAME('data').asstring;
          if qrcx.FIELDBYNAME('situacao').AsInteger = 1 then
            lsit_caixa.caption := 'ABERTO'
          else
            lsit_caixa.caption := 'FECHADO';
        end
        else
        begin
          lcaixa.caption := '---';
          lsit_caixa.caption := '---'
        end;

        if (qrcx.FIELDBYNAME('data').asdatetime <> date) and
          (qrcx.FIELDBYNAME('situacao').AsInteger = 1) then
        begin

          if application.messagebox
            (Pchar('A Data do Caixa est� diferente da atual!' + #13 +
            'Deseja fechar o caixa do dia ' + qrcx.FIELDBYNAME('data').asstring
            + '?'), 'Aten��o', MB_IconInformation + MB_YESNO) = idYes then
          begin
            Action5.Execute
          end;
        end;

        // pstatus.Panels[11].Text := frmmodulo.qrconfig.fieldbyname('ultimo_backup').AsString;
        d := Trunc((date - frmmodulo.QRCONFIG.FIELDBYNAME('ultimo_backup')
          .asdatetime));
        frmmodulo.QRCONFIG.close;
        // if pstatus.Panels[13].Text = 'Servidor : LOCALHOST' then
        begin
          // if d > 2 then
          // begin
          // label8.caption := 'H� ' + inttostr(d) + ' dias n�o � feito';
          // alerta_copia.Popup;
          // end;
        end;

        qrniver.close;
        qrniver.SQL.clear;
        qrniver.SQL.add
          ('select codigo, nome, nascimento, telefone1, telefone2, celular from c000007 where situacao < 3 and  nascimento like '''
          + copy(datetostr(date), 1, 5) + '/%'' order by nome');
        qrniver.open;

        qrpagar.close;
        qrpagar.SQL.clear;
        qrpagar.SQL.add('select pg.*, forn.nome from c000046 pg, c000009 forn');
        qrpagar.SQL.add
          ('where pg.codfornecedor = forn.codigo and situacao = 1 and');
        qrpagar.SQL.add('data_vencimento = :datax order by data_vencimento ');
        qrpagar.params.parambyname('datax').asdatetime := date;
        qrpagar.open;

        query.close;
        query.SQL.clear;
        query.SQL.add
          ('select sum(entrada) total_entrada, sum(saida) total_saida,');
        query.SQL.add
          ('(select sum(valor) valor from c000046 where situacao = 1 and data_vencimento = :datav), ');
        query.SQL.add
          ('(select sum(valor_atual) valor_1 from c000049 where situacao = 1 and data_vencimento = :datav), ');
        query.SQL.add
          ('(select sum(total) valor_2 from c000048 where data = :datax),');
        query.SQL.add
          ('(select sum(total) valor_3 from c000051 where conclusao_data = :datax and situacao = ''FECHADA'')');
        query.SQL.add('from c000044 where data = :datax');
        query.params.parambyname('datax').asdatetime := qrcx.FIELDBYNAME('data')
          .asdatetime;
        query.params.parambyname('datav').asdatetime := date;
        query.open;

        ltcaixa.caption := formatfloat('###,###,##0.00',
          query.FIELDBYNAME('total_entrada').asfloat -
          query.FIELDBYNAME('total_saida').asfloat);
        ltpagar.caption := formatfloat('###,###,##0.00',
          query.FIELDBYNAME('valor').asfloat);
        ltreceber.caption := formatfloat('###,###,##0.00',
          query.FIELDBYNAME('valor_1').asfloat);
        ltvenda.caption := formatfloat('###,###,##0.00',
          query.FIELDBYNAME('valor_2').asfloat);
        ltos.caption := formatfloat('###,###,##0.00',
          query.FIELDBYNAME('valor_3').asfloat);
        ltfinal.caption := formatfloat('###,###,##0.00',
          (query.FIELDBYNAME('total_entrada').asfloat -
          query.FIELDBYNAME('total_saida').asfloat) +
          query.FIELDBYNAME('valor_1').asfloat -
          query.FIELDBYNAME('valor').asfloat);
      end
      else
      begin
        pnormal.visible := false; // true;
        psuper.visible := false;
      end;
    end
    else
    begin
      pnormal.visible := false; // true;
      psuper.visible := false;
    end;

    frmmodulo.QRCONFIG.open;
    if frmmodulo.qrconfigINVENTARIO_AUTOMATICO.AsInteger = 1 then
    begin

      /// INVENTARIO INICIO

      vData_Inventario :=
        strtodate('31/12/' + zerarcodigo(IntToStr(strtoint(copy(datetostr(date),
        7, 4)) - 1), 4));

      Decodedate(vData_Inventario, ano, mes, dia);

      vInventario_ano :=
        strtoint(zerarcodigo(IntToStr(strtoint(copy(datetostr(date), 7, 4))
        - 1), 4));

      frmmodulo.qrinventario.close;
      frmmodulo.qrinventario.SQL.clear;
      frmmodulo.qrinventario.SQL.add
        ('select * from INVENTARIO where ano = :vinventario_ano');
      frmmodulo.qrinventario.params.parambyname('vInventario_ano').AsInteger :=
        vInventario_ano;
      frmmodulo.qrinventario.open;
      if frmmodulo.qrinventario.recordcount = 0 then
      begin
        if application.messagebox
          (Pchar('O Invent�rio de ' + IntToStr(vInventario_ano) +
          ' Ainda N�o foi Gerado.' + #13 +
          '        Deseja Criar o Invent�rio Agora?'), 'INVENT�RIO',
          MB_YESNO + mb_iconquestion) = idYes then
        begin
          qrproduto.close;
          qrproduto.SQL.clear;
          qrproduto.SQL.add('select prod.*, est.*');
          qrproduto.SQL.add('from c000025 prod, c000100 est');
          qrproduto.SQL.add('where prod.codigo = est.codproduto');
          qrproduto.SQL.add('and situacao = 0');
          qrproduto.SQL.add('order by prod.produto');
          qrproduto.open;
          qrproduto.first;
          if qrproduto.recordcount > 0 then
          begin
            frmmensagem_inventario := tfrmmensagem_inventario.create(self);
            frmmensagem_inventario.bar.TotalParts := qrproduto.recordcount;
            frmmensagem_inventario.bar.PartsComplete := 0;
            while not qrproduto.eof do
            begin
              frmmensagem_inventario.RzPanel1.caption := '         ' +
                qrproduto.FIELDBYNAME('codigo').asstring + ' ' +
                copy(qrproduto.FIELDBYNAME('produto').asstring, 1, 30);
              frmmensagem_inventario.show;

              application.ProcessMessages;
              qrinventario.close;
              qrinventario.SQL.clear;
              qrinventario.SQL.add('insert into inventario');
              qrinventario.SQL.add
                ('(data,data_posterior,ano,mes,tipo,codproduto,produto,unidade,cst,aliquota,estoque,custo,venda,total)');
              qrinventario.SQL.add('values');
              qrinventario.SQL.add
                ('(:datax,:data_posteriorx,:anox,:mesx,:tipox,:codprodutox,:produtox,:unidadex,:cstx,:aliquotax,:estoquex,:custox,:vendax,:totalx)');
              qrinventario.params.parambyname('datax').asdatetime := vData_Inventario;
              qrinventario.params.parambyname('data_posteriorx').asdatetime := vData_Inventario + 1;
              qrinventario.params.parambyname('anox').AsInteger := vInventario_ano;
              qrinventario.params.parambyname('mesx').AsInteger := Trunc(mes);
              qrinventario.params.parambyname('tipox').asstring := qrproduto.FIELDBYNAME('tipo').asstring;
              qrinventario.params.parambyname('codprodutox').asstring := qrproduto.FIELDBYNAME('codigo').asstring;
              qrinventario.params.parambyname('produtox').asstring := qrproduto.FIELDBYNAME('produto').asstring;
              qrinventario.params.parambyname('unidadex').asstring := qrproduto.FIELDBYNAME('unidade').asstring;
              qrinventario.params.parambyname('cstx').asstring := qrproduto.FIELDBYNAME('cst').asstring;
              qrinventario.params.parambyname('aliquotax').asfloat := qrproduto.FIELDBYNAME('aliquota').asfloat;
              qrinventario.params.parambyname('custox').asfloat := qrproduto.FIELDBYNAME('precocusto').asfloat;
              qrinventario.params.parambyname('estoquex').asfloat := qrproduto.FIELDBYNAME('estoque_atual').asfloat;
              qrinventario.params.parambyname('vendax').asfloat := qrproduto.FIELDBYNAME('precovenda').asfloat;
              qrinventario.params.parambyname('totalx').asfloat := qrproduto.FIELDBYNAME('precocusto').asfloat * qrproduto.FIELDBYNAME('estoque_atual').asfloat;
              qrinventario.execsql;

              frmmensagem_inventario.bar.PartsComplete :=
                frmmensagem_inventario.bar.PartsComplete + 1;
              application.ProcessMessages;
              qrproduto.next;
            end;
            frmmodulo.Conexao.Commit;
            frmmensagem_inventario.destroy;

            application.messagebox('Invent�rio Gerado Com sucesso!',
              'Invent�rio!', mb_ok + mb_iconquestion);
          end;
        end;
      end;

      /// //////////////////////// FINAL INVENTARIO
    end;



  end
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
  txt: textfile;
  entrada: string;
  Hand: THandle;
begin
  ReportMemoryLeaksOnShutdown := DebugHook <> 0;
  ativador.IDSistema := 1984;
  ativador.executar;


  // este comeco esta num bloco de notas para testes

  // UserControl1.DataConnector := UCZEOSConn1;
  try
    (* VERIFICAR SE O COMPUTADOR EH UMA ATUALIZACAO *)
    if not DirectoryExists('c:\Softlogus\server\atualizacao') then
      if application.messagebox
        ('Caminho do arquivo para Atualiza��o n�o encontrado, Deseja Cria-lo?',
        'Aviso', MB_YESNO + mb_iconwarning) = idYes then
      begin
        ForceDirectories('C:\Softlogus\server\atualizacao');
        application.messagebox('Caminho Criado com Sucesso!', 'Aviso!',
          mb_ok + mb_iconquestion);
      end;

    assignfile(txt, '\Softlogus\server\ini\com.ini');
    reset(txt);
    while not eof(txt) do

    begin
      readln(txt, entrada);
      if copy(entrada, 1, 7) = '999-002' then
        conexao_sistema := trim(copy(entrada, 9, 50));
    end;

    closefile(txt);

    novaversao := false;

    if (conexao_sistema <> '') and
      (ansiuppercase(conexao_sistema) <> 'LOCALHOST') and
      (ansiuppercase(conexao_sistema) <> ansiuppercase(NomeComputador)) and
      (conexao_sistema <> GetIP) then
    begin
      frmcopia_arquivo := tfrmcopia_arquivo.create(self);
      frmcopia_arquivo.show;
    end;

    ExeAtualiza := ExtractFilePath(ParamStr(0)) + 'atualizacao\Softlogus.exe';
    ExeAtual := ExtractFilePath(ParamStr(0)) + 'Softlogus.exe';

    if (conexao_sistema <> '') and
      (ansiuppercase(conexao_sistema) <> 'LOCALHOST') and
      (ansiuppercase(conexao_sistema) <> ansiuppercase(NomeComputador)) and
      (conexao_sistema <> GetIP) then
      frmcopia_arquivo.destroy;

    if FileExists(ExeAtualiza) then
    begin
      if VersaoExe(ExeAtual) < VersaoExe(ExeAtualiza) then
      begin
        if application.messagebox
          (Pchar('Foi Encontrada uma nova vers�o do Sistema Softlogus.' + #13 +
          'Deseja Atualizar Agora?                  '), 'ATUALIZA��O',
          MB_YESNO + mb_iconquestion) = idYes then
        begin
          novaversao := true;
          DeleteFile(ExeAtual + '.OLD');
          RenameFile(ExeAtual, ExeAtual + '.OLD');

          CopyFile(Pchar(ExeAtualiza),
            Pchar('c:\Softlogus\server\Softlogus.exe'), false);
          showmessage('Aplica��o atualizada com sucesso!');
          Hand := FindWindow('TApplication', 'Softlogus');
          if Hand = 0 then
            frmPrincipal.ExecutePrograma('\Softlogus\server\Softlogus.exe', '');
          application.Terminate;
        end
        else
          novaversao := false;
      end;
    end;
    caption := caption + '    Terminal: ' + registro_terminal;
  except

  end;

end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
var
  MyClass: TObject;
  wOldErrorMode: Word;
begin
  wOldErrorMode := SetErrorMode(SEM_FAILCRITICALERRORS);

  if application.messagebox('Confirma o encerramento do Sistema?', 'Aviso',
    MB_YESNO + mb_iconwarning) = idYes then
  begin
    Try
      Try
        iCloud.Free;
        // frmmodulo.UCApplicationMessage1.Free;
        frmmodulo.UCApplicationMessage1.destroy;
        frmmodulo.Conexao.Connected := false;
        application.Terminate;
        Action := cafree;
      Except
        killtask('Softlogus.exe')
      End;
    Finally
      SetErrorMode(wOldErrorMode);
    End;

  end
  else
    abort;

end;

procedure TfrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
  if frmPrincipal.autentica_caixa('Pedido de Venda', 0) then
  begin
    if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1 then
    begin
      frmVENDA_INICIO := tfrmVENDA_INICIO.create(self);
      frmVENDA_INICIO.showmodal;
    end
    else
    begin
      application.messagebox('Este caixa est� fechado! Favor verificar...',
        'Aten��o', mb_ok + mb_iconwarning);
    end;
  end
  else
  begin
    application.messagebox('N�o autorizado!', 'Aviso', mb_ok + MB_ICONERROR);
  end;
end;

procedure TfrmPrincipal.LinkView1Click(Sender: TObject);
begin
  frmcalc := tfrmcalc.create(self);
  frmcalc.show;
end;


procedure TfrmPrincipal.Filiais1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '01.01') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  frmfilial := tfrmfilial.create(self);
  frmfilial.showmodal;
end;

procedure TfrmPrincipal.VrDemoButton2Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '02.01') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  FRMPRODUTO_FALTA := TFRMPRODUTO_FALTA.create(self);
  FRMPRODUTO_FALTA.showmodal;
  TAdvGlowButton(Sender).setfocus;
end;

procedure TfrmPrincipal.VrDemoButton3Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '04.07') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  FRMCONVENIO_receber := TFRMCONVENIO_receber.create(self);
  FRMCONVENIO_receber.showmodal;
  TAdvGlowButton(Sender).setfocus;
end;

procedure TfrmPrincipal.VrDemoButton4Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '03.05') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  FRMECF_REDUCAO_menu := TFRMECF_REDUCAO_menu.create(self);
  FRMECF_REDUCAO_menu.showmodal;
  TAdvGlowButton(Sender).setfocus;
end;

procedure TfrmPrincipal.VrDemoButton5Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '03.01') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  if frmPrincipal.autentica_caixa('Pedido de Venda', 0) then
  begin
    if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1 then
    begin
      frmprevenda := tfrmprevenda.create(self);
      frmprevenda.lcodcaixa.caption := frmmodulo.qrcaixa_operador.FIELDBYNAME
        ('codigo').asstring;
      frmprevenda.lcaixa.caption := frmmodulo.qrcaixa_operador.FIELDBYNAME
        ('nome').asstring;
      frmprevenda.showmodal;
      TAdvGlowButton(Sender).setfocus;

    end
    else
    begin
      application.messagebox('Este caixa est� fechado! Favor verificar...',
        'Aten��o', mb_ok + mb_iconwarning);
    end;
  end
  else
  begin
    application.messagebox('N�o autorizado!', 'Aviso', mb_ok + MB_ICONERROR);
  end;

end;

function TfrmPrincipal.ChecaEstado(Dado: string): Boolean;
const
  Estados = 'SPMGRJRSSCPRESDFMTMSGOTOBASEALPBPEMARNCEPIPAAMAPFNACRRROEX';
var
  Posicao: Integer;
begin
  result := true;
  if Dado <> '' then
  begin
    Posicao := pos(UpperCase(Dado), Estados);
    if (Posicao = 0) or ((Posicao mod 2) = 0) then
    begin
      result := false;
    end;
  end;
end;

procedure TfrmPrincipal.GravaReducaoZ;
var
  txt: textfile;
  Texto, cnpj_cpf, ie_rg: string;
  i: Integer;

begin
  // if application.messagebox('Deseja Gravar a REDU��O Z?','Aten��o - Redu��o Z',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
  // begin

  // ****************************************************************
  // Inicio da cria��o do registro 60M - REDU��O Z
  // ****************************************************************

  frmprogresso := tfrmprogresso.create(self);
  frmprogresso.barra.Position := 0;
  frmprogresso.show;
  application.ProcessMessages;

  (* **************** CRIAR ARQUIVO TIPO 60 M **************** *)
  cnpj_cpf := emitente_cnpj;
  i := pos('.', cnpj_cpf);
  while i > 0 do
  begin
    delete(cnpj_cpf, i, 1);
    i := pos('.', cnpj_cpf);
  end;
  i := pos('/', cnpj_cpf);
  while i > 0 do
  begin
    delete(cnpj_cpf, i, 1);
    i := pos('/', cnpj_cpf);
  end;
  i := pos('-', cnpj_cpf);
  while i > 0 do
  begin
    delete(cnpj_cpf, i, 1);
    i := pos('-', cnpj_cpf);
  end;

  ie_rg := emitente_ie;
  i := pos('.', ie_rg);
  while i > 0 do
  begin
    delete(ie_rg, i, 1);
    i := pos('.', ie_rg);
  end;
  i := pos('-', ie_rg);
  while i > 0 do
  begin
    delete(ie_rg, i, 1);
    i := pos('-', ie_rg);
  end;

  // TRY

  frmmodulo.qrsintegra_r60.close;
  frmmodulo.qrsintegra_r60.SQL.clear;
  frmmodulo.qrsintegra_r60.SQL.add
    ('select * from sintegra_reg60 where ID IS NOT NULL');
  frmmodulo.qrsintegra_r60.open;

  frmmodulo.qrsintegra_r60.insert;
  frmmodulo.qrsintegra_r60.FIELDBYNAME('ID').asstring := '1';
  frmmodulo.qrsintegra_r60.FIELDBYNAME('movimento').asstring := '1';
  frmmodulo.qrsintegra_r60.FIELDBYNAME('CODIGO_EMPRESA').AsInteger := 1;
  frmmodulo.qrsintegra_r60.FIELDBYNAME('cnpj').asstring := cnpj_cpf;
  frmmodulo.qrsintegra_r60.FIELDBYNAME('ie').asstring := ie_rg;
  frmmodulo.qrsintegra_r60.FIELDBYNAME('uf').asstring := emitente_uf;

  frmprogresso.ltexto.caption :=
    'Gerando REGISTRO 60 ANAL�TICO para o SINTEGRA...';
  frmprogresso.barra.Position := 5;
  application.ProcessMessages;

  i := 1;

  ecf_registro_60A(ecf_modelo);

  {
    if ecf_modelo = 'DARUMA' then frmecf_daruma.ecf_registro_60A(ecf_modelo);
    if ecf_modelo = 'BEMATECH' then frmecf_BEMATECH.ecf_registro_60A(ecf_modelo);
    if ecf_modelo = 'SWEDA' then frmecf_SWEDA.ecf_registro_60A(ecf_modelo);
    if ecf_modelo = 'URANO' then frmecf_URANO.ecf_registro_60A(ecf_modelo);
    if ecf_modelo = 'YANCO' then frmecf_YANCO.ecf_registro_60A(ecf_modelo);
  }

  if FileExists('\retorno.txt') then
  begin
    assignfile(txt, '\retorno.txt');
    reset(txt);
    while not eof(txt) do
    begin

      readln(txt, Texto);

      if (i > 9) and (copy(Texto, CAMPO_INI, CAMPO_QTDE) <>
        'ISS.......................:') then

      begin

        if copy(Texto, 1, 4) = '0700' then
        begin
          frmmodulo.qrsintegra_r60.FIELDBYNAME('aliquota01').asfloat :=
            strtofloat(copy(Texto, 1, 4)) / 100;
          Texto := (TrimLeft(copy(Texto, RESULTADO_INI, RESULTADO_QTDE)));
          frmmodulo.qrsintegra_r60.FIELDBYNAME('VALOR_TPARCIAL01').asstring :=
            formata_valor(Texto);
          frmmodulo.qrsintegra_r60.FIELDBYNAME('BASE01').asstring :=
            formata_valor(Texto);
        end;
        if copy(Texto, 1, 4) = '1200' then
        begin
          frmmodulo.qrsintegra_r60.FIELDBYNAME('aliquota02').asfloat :=
            strtofloat(copy(Texto, 1, 4)) / 100;
          Texto := (TrimLeft(copy(Texto, RESULTADO_INI, RESULTADO_QTDE)));
          frmmodulo.qrsintegra_r60.FIELDBYNAME('VALOR_TPARCIAL02').asstring :=
            formata_valor(Texto);
          frmmodulo.qrsintegra_r60.FIELDBYNAME('BASE02').asstring :=
            formata_valor(Texto);
        end;

        if copy(Texto, 1, 4) = '1700' then
        begin
          frmmodulo.qrsintegra_r60.FIELDBYNAME('aliquota03').asfloat :=
            strtofloat(copy(Texto, 1, 4)) / 100;
          Texto := (TrimLeft(copy(Texto, RESULTADO_INI, RESULTADO_QTDE)));
          frmmodulo.qrsintegra_r60.FIELDBYNAME('VALOR_TPARCIAL03').asstring :=
            formata_valor(Texto);
          frmmodulo.qrsintegra_r60.FIELDBYNAME('BASE03').asstring :=
            formata_valor(Texto);
        end;
        if copy(Texto, 1, 4) = '2500' then
        begin
          frmmodulo.qrsintegra_r60.FIELDBYNAME('aliquota04').asfloat :=
            strtofloat(copy(Texto, 1, 4)) / 100;
          Texto := (TrimLeft(copy(Texto, RESULTADO_INI, RESULTADO_QTDE)));
          frmmodulo.qrsintegra_r60.FIELDBYNAME('VALOR_TPARCIAL04').asstring :=
            formata_valor(Texto);
          frmmodulo.qrsintegra_r60.FIELDBYNAME('BASE04').asstring :=
            formata_valor(Texto);
        end;
        if copy(Texto, 1, 4) = '2700' then
        begin
          frmmodulo.qrsintegra_r60.FIELDBYNAME('aliquota05').asfloat :=
            strtofloat(copy(Texto, 1, 4)) / 100;
          Texto := (TrimLeft(copy(Texto, RESULTADO_INI, RESULTADO_QTDE)));
          frmmodulo.qrsintegra_r60.FIELDBYNAME('VALOR_TPARCIAL05').asstring :=
            formata_valor(Texto);
          frmmodulo.qrsintegra_r60.FIELDBYNAME('BASE05').asstring :=
            formata_valor(Texto);
        end;

        {
          IF frmmodulo.qrsintegra_r60.FieldByName('aliquota01').asfloat = 0 then
          begin
          frmmodulo.qrsintegra_r60.FieldByName('aliquota01').asfloat := strtofloat(copy(texto,1,4))/100;
          texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
          frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL01').asstring :=  formata_valor(texto);
          frmmodulo.qrsintegra_r60.FieldByName('BASE01').asstring :=  formata_valor(texto);

          end
          else
          begin
          IF frmmodulo.qrsintegra_r60.FieldByName('aliquota02').asfloat = 0 then
          begin
          frmmodulo.qrsintegra_r60.FieldByName('aliquota02').asfloat := strtofloat(copy(texto,1,4))/100;
          texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
          frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL02').asstring :=  formata_valor(texto);
          frmmodulo.qrsintegra_r60.FieldByName('BASE02').asstring :=  formata_valor(texto);

          end
          else
          begin
          IF frmmodulo.qrsintegra_r60.FieldByName('aliquota03').asfloat = 0 then
          begin
          frmmodulo.qrsintegra_r60.FieldByName('aliquota03').asfloat := strtofloat(copy(texto,1,4))/100;
          texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
          frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL03').asstring :=  formata_valor(texto);
          frmmodulo.qrsintegra_r60.FieldByName('BASE03').asstring :=  formata_valor(texto);
          end
          else
          begin
          IF frmmodulo.qrsintegra_r60.FieldByName('aliquota04').asfloat = 0 then
          begin
          frmmodulo.qrsintegra_r60.FieldByName('aliquota04').asfloat := strtofloat(copy(texto,1,4))/100;
          texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
          frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL04').asstring :=  formata_valor(texto);
          frmmodulo.qrsintegra_r60.FieldByName('BASE04').asstring :=  formata_valor(texto);
          end
          else
          begin
          frmmodulo.qrsintegra_r60.FieldByName('aliquota05').asfloat := strtofloat(copy(texto,1,4))/100;
          texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
          frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL05').asstring :=  formata_valor(texto);
          frmmodulo.qrsintegra_r60.FieldByName('BASE05').asstring :=  formata_valor(texto);

          end;
          end;
          end;
          end;

        }

      end;

      if copy(Texto, CAMPO_INI, CAMPO_QTDE) = 'Data de emiss�o...........:' then
      begin
        Texto := (TrimLeft(copy(Texto, RESULTADO_INI, RESULTADO_QTDE)));
        // showmessage(texto);
        insert(copy(datetostr(date), 7, 2), Texto, 7);
        frmmodulo.qrsintegra_r60.FIELDBYNAME('DATA_EMISSAO').asstring := Texto;
      end;

      frmmodulo.QRCONFIG.open;
      if frmmodulo.QRCONFIG.FIELDBYNAME('ECF_SERIAL').asstring <> '' then
      begin
        frmmodulo.qrsintegra_r60.FIELDBYNAME('NRO_SERIE_EQP').asstring :=
          frmmodulo.QRCONFIG.FIELDBYNAME('ECF_SERIAL').asstring;
      end
      else
      begin
        if copy(Texto, CAMPO_INI, CAMPO_QTDE) = 'N�mero de s�rie...........:'
        then
        begin
          Texto := (TrimLeft(copy(Texto, RESULTADO_INI, RESULTADO_QTDE)));
          frmmodulo.qrsintegra_r60.FIELDBYNAME('NRO_SERIE_EQP')
            .asstring := Texto;
        end;
      end;

      if copy(Texto, CAMPO_INI, CAMPO_QTDE) = 'Cancelamentos.............:' then
      begin
        Texto := (TrimLeft(copy(Texto, RESULTADO_INI, RESULTADO_QTDE)));
        frmmodulo.qrsintegra_r60.FIELDBYNAME('CANCELAMENTO').asstring :=
          formata_valor(Texto);
      end;
      if copy(Texto, CAMPO_INI, CAMPO_QTDE) = 'Descontos.................:' then
      begin
        Texto := (TrimLeft(copy(Texto, RESULTADO_INI, RESULTADO_QTDE)));
        frmmodulo.qrsintegra_r60.FIELDBYNAME('DESCONTO').asstring :=
          formata_valor(Texto);
      end;
      if copy(Texto, CAMPO_INI, CAMPO_QTDE) = 'ISS.......................:' then
      begin
        Texto := (TrimLeft(copy(Texto, RESULTADO_INI, RESULTADO_QTDE)));
        frmmodulo.qrsintegra_r60.FIELDBYNAME('ISSQN').asstring :=
          formata_valor(Texto);
      end;
      if copy(Texto, CAMPO_INI, CAMPO_QTDE) = 'F.........................:' then
      begin
        Texto := (TrimLeft(copy(Texto, RESULTADO_INI, RESULTADO_QTDE)));
        frmmodulo.qrsintegra_r60.FIELDBYNAME('SUBSTITUICAO_TRIBUTARIA').asstring
          := formata_valor(Texto);
      end;
      if copy(Texto, CAMPO_INI, CAMPO_QTDE) = 'I.........................:' then
      begin
        Texto := (TrimLeft(copy(Texto, RESULTADO_INI, RESULTADO_QTDE)));
        frmmodulo.qrsintegra_r60.FIELDBYNAME('ISENTO').asstring :=
          formata_valor(Texto);
      end;
      if copy(Texto, CAMPO_INI, CAMPO_QTDE) = 'N.........................:' then
      begin
        Texto := (TrimLeft(copy(Texto, RESULTADO_INI, RESULTADO_QTDE)));
        frmmodulo.qrsintegra_r60.FIELDBYNAME('NAO_INCIDENCIA').asstring :=
          formata_valor(Texto);
      end;

      frmmodulo.qrsintegra_r60.FIELDBYNAME('NRO_CONTADOR_CANCELAMENTO')
        .AsInteger := 0;

      i := i + 1;
      frmprogresso.barra.Position := frmprogresso.barra.Position + 5;
      application.ProcessMessages;
    end;
    closefile(txt);
    DeleteFile('\retorno.txt');
  end;

  application.ProcessMessages;
  if FileExists('\retorno.txt') then
    DeleteFile('\RETORNO.TXT');
  frmprogresso.ltexto.caption :=
    'Gerando REGISTRO 60 MESTRE para o SINTEGRA...';
  application.ProcessMessages;

  ecf_registro_60M(ecf_modelo);

  {
    if ecf_modelo = 'DARUMA' then frmecf_daruma.ecf_registro_60M(ecf_modelo);
    if ecf_modelo = 'BEMATECH' then frmecf_BEMATECH.ecf_registro_60M(ecf_modelo);
    if ecf_modelo = 'SWEDA' then frmecf_SWEDA.ecf_registro_60M(ecf_modelo);
    if ecf_modelo = 'URANO' then frmecf_URANO.ecf_registro_60M(ecf_modelo);
    if ecf_modelo = 'YANCO' then frmecf_YANCO.ecf_registro_60M(ecf_modelo);
  }

  if FileExists('\retorno.txt') then
  begin
    assignfile(txt, '\retorno.txt');
    reset(txt);
    while not eof(txt) do
    begin
      readln(txt, Texto);
      frmmodulo.QRCONFIG.open;
      if frmmodulo.QRCONFIG.FIELDBYNAME('ECF_CAIXA').asstring <> '' then
      begin
        frmmodulo.qrsintegra_r60.FIELDBYNAME('NRO_ORDEM_EQP').asstring :=
          frmmodulo.QRCONFIG.FIELDBYNAME('ECF_CAIXA').asstring;
      end
      else
      begin
        if copy(Texto, CAMPO_INI, CAMPO_QTDE) = 'N�mero do equipamento.....:'
        then
        begin
          Texto := (TrimLeft(copy(Texto, RESULTADO_INI, RESULTADO_QTDE)));
          frmmodulo.qrsintegra_r60.FIELDBYNAME('NRO_ORDEM_EQP')
            .asstring := Texto;
        end;
      end;

      if copy(Texto, CAMPO_INI, CAMPO_QTDE) = 'Modelo do documento fiscal:' then
      begin
        Texto := (TrimLeft(copy(Texto, RESULTADO_INI, RESULTADO_QTDE)));
        frmmodulo.qrsintegra_r60.FIELDBYNAME('MODELO_DOC').asstring := Texto;
      end;
      if copy(Texto, CAMPO_INI, CAMPO_QTDE) = 'COO inicial...............:' then
      begin
        Texto := (TrimLeft(copy(Texto, RESULTADO_INI, RESULTADO_QTDE)));
        frmmodulo.qrsintegra_r60.FIELDBYNAME('NRO_CONTADOR_INICIO')
          .asstring := Texto;
      end;
      if copy(Texto, CAMPO_INI, CAMPO_QTDE) = 'COO final.................:' then
      begin
        Texto := (TrimLeft(copy(Texto, RESULTADO_INI, RESULTADO_QTDE)));
        frmmodulo.qrsintegra_r60.FIELDBYNAME('NRO_CONTADOR_FIM')
          .asstring := Texto;
      end;
      if copy(Texto, CAMPO_INI, CAMPO_QTDE) = 'Contador de redu��es......:' then
      begin
        Texto := (TrimLeft(copy(Texto, RESULTADO_INI, RESULTADO_QTDE)));
        frmmodulo.qrsintegra_r60.FIELDBYNAME('NRO_CONTADOR_Z').asstring
          := Texto;
      end;
      if (copy(Texto, CAMPO_INI, CAMPO_QTDE) = 'Reinicio de Opera��o......:') or
        (copy(Texto, CAMPO_INI, CAMPO_QTDE) = 'Reinicio de Operacao......:')
      then
      begin
        Texto := (TrimLeft(copy(Texto, RESULTADO_INI, RESULTADO_QTDE)));
        frmmodulo.qrsintegra_r60.FIELDBYNAME('CONTADOR_REINICIO')
          .asstring := Texto;
      end;
      if copy(Texto, CAMPO_INI, CAMPO_QTDE) = 'Venda Bruta...............:' then
      begin
        Texto := (TrimLeft(copy(Texto, RESULTADO_INI, RESULTADO_QTDE)));
        frmmodulo.qrsintegra_r60.FIELDBYNAME('VALOR_VENDA_BRUTA').asstring :=
          formata_valor(Texto);
      end;
      if copy(Texto, CAMPO_INI, CAMPO_QTDE) = 'Totalizador geral.........:' then
      begin
        Texto := (TrimLeft(copy(Texto, RESULTADO_INI, RESULTADO_QTDE)));
        frmmodulo.qrsintegra_r60.FIELDBYNAME('VALOR_TOTAL_GERAL').asstring :=
          formata_valor(Texto);
      end;
      frmprogresso.barra.Position := frmprogresso.barra.Position + 5;
      application.ProcessMessages;
    end;
    closefile(txt);
    DeleteFile('\retorno.txt');
  end;
  frmprogresso.barra.Position := 100;
  application.ProcessMessages;

  frmmodulo.qrsintegra_r60.FIELDBYNAME('valor_venda_liquida').asfloat :=
    frmmodulo.qrsintegra_r60.FIELDBYNAME('valor_venda_bruta').asfloat -
    frmmodulo.qrsintegra_r60.FIELDBYNAME('cancelamento').asfloat -
    frmmodulo.qrsintegra_r60.FIELDBYNAME('desconto').asfloat +
    frmmodulo.qrsintegra_r60.FIELDBYNAME('issqn').asfloat;

  frmprogresso.close;
  frmmodulo.qrsintegra_r60.Post;
  frmmodulo.Conexao.Commit;

  // EXCEPT
  // APPLICATION.MESSAGEBOX('Houve falha no processamento do Registro 60M e 60A para gera��o do sintegra! Favor verificar!','Aten��o',mb_ok+mb_iconerror);
  // frmmodulo.Conexao.rollback;

  // END;

  // ****************************************************************
  // Final da cria��o do registro 60M - REDU��O Z
  // ****************************************************************

  // end;
end;

function TfrmPrincipal.formata_valor(valor: string): string;
var
  i: Integer;
begin
  i := pos('.', valor);
  while i <> 0 do
  begin
    delete(valor, i, 1);
    i := pos('.', valor);
  end;
  result := valor;
end;

function TfrmPrincipal.DataDeCriacao(Arq: string): TDateTime;
var
  ffd: TWin32FindData;
  dft: DWord;
  lft: TFileTime;
  h: THandle;
begin
  h := Windows.FindFirstFile(Pchar(Arq), ffd);
  try
    if (INVALID_HANDLE_VALUE <> h) then
    begin
      // FileTimeToLocalFileTime(ffd.ftCreationTime, lft);  // cria��o do arquivo
      // FileTimeToLocalFileTime(ffd.ftLastAccessTime, lft );  // ultima acesso
      FileTimeToLocalFileTime(ffd.ftLastWriteTime, lft); // ultima altera��o

      FileTimeToDosDateTime(lft, LongRec(dft).Hi, LongRec(dft).Lo);
      result := FileDateToDateTime(dft);
    end;
  finally
    Windows.FindClose(h);
  end;
end;

procedure TfrmPrincipal.MenuItem1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '03.02') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  frmnotafiscal_menu := tfrmnotafiscal_menu.create(self);
  frmnotafiscal_menu.showmodal;
end;

procedure TfrmPrincipal.CSTCdigodaSituaoTributria1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '03.02') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  frmcst := tfrmcst.create(self);
  frmcst.showmodal;
end;

procedure TfrmPrincipal.ModelosdeDocumentosFiscais1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '03.02') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  FRMmodelo_fiscal := TFRMmodelo_fiscal.create(self);
  FRMmodelo_fiscal.showmodal;
end;

procedure TfrmPrincipal.ECFCadastrodeEquipamentos1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '03.02') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  FRMECF := TFRMECF.create(self);
  FRMECF.showmodal;
end;

procedure TfrmPrincipal.Setor2Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '01.10') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  frmsetor := tfrmsetor.create(self);
  frmsetor.showmodal;
end;

procedure TfrmPrincipal.Veculos1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '01.11') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  FRMVEICULO := TFRMVEICULO.create(self);
  FRMVEICULO.showmodal;
end;

procedure TfrmPrincipal.Clientes1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '01.02') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  frmcliente := tfrmcliente.create(self);
  frmcliente.Top := frmmodulo.top_forms;
  frmcliente.showmodal;
end;

procedure TfrmPrincipal.Produtos1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '02.01') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  frmmodulo.QRCONFIG.open;
  if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'NORMAL' then
  begin
    frmproduto := tfrmproduto.create(self);
    frmproduto.showmodal;
  end
  else
  begin
    if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'LIGHT'
    then
    begin
      frmproduto_LIGTH := tfrmproduto_LIGTH.create(self);
      frmproduto_LIGTH.showmodal;
    end
    else
    begin
      if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'FARMA'
      then
      begin
        frmproduto_FARMA := tfrmproduto_FARMA.create(self);
        frmproduto_FARMA.showmodal;
      end
      else
      begin
        if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'PECAS'
        then
        begin
          frmproduto_AUTO := tfrmproduto_AUTO.create(self);
          frmproduto_AUTO.showmodal;
        end;
      end;
    end;
  end;
end;

procedure TfrmPrincipal.ConsultadePreos1Click(Sender: TObject);
begin

  if frmPrincipal.acesso(codigo_usuario, '02.08') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  frmmodulo.QRCONFIG.open;
  if (frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'NORMAL') or
    (frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'FARMA') then
  begin
    frmproduto_consultapreco := tfrmproduto_consultapreco.create(self);
    frmproduto_consultapreco.showmodal;
  end
  else
  begin
    if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'LIGHT'
    then
    begin
      frmproduto_consultapreco := tfrmproduto_consultapreco.create(self);
      frmproduto_consultapreco.showmodal;
    end
    else
    begin
      if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'PECAS'
      then
      begin
        frmloc_produto_AUTO := tfrmloc_produto_AUTO.create(self);
        frmloc_produto_AUTO.showmodal;
      end
    end;
  end;
end;

procedure TfrmPrincipal.ContasaPagar1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '04.02') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  FRMCONTASPAGAR := TFRMCONTASPAGAR.create(self);
  FRMCONTASPAGAR.showmodal;
end;

procedure TfrmPrincipal.ContasaReceber1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '04.07') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  frmcontasreceber := tfrmcontasreceber.create(self);
  frmcontasreceber.showmodal;

end;

procedure TfrmPrincipal.Oramento1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '03.03') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  frmorcamento := tfrmorcamento.create(self);
  frmorcamento.showmodal;
end;

procedure TfrmPrincipal.C11Click(Sender: TObject);
begin
  if frmPrincipal.autentica_caixa('Acesso ao Caixa', 0) then
  begin
    frmcaixa := tfrmcaixa.create(self);
    frmcaixa.showmodal;
  end
  else
  begin
    application.messagebox('N�o autorizado!', 'Aviso', mb_ok + MB_ICONERROR);
  end;
end;

procedure TfrmPrincipal.C20Click(Sender: TObject);
begin
  frmcalc := tfrmcalc.create(self);
  frmcalc.showmodal;
end;

procedure TfrmPrincipal.Caixa1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '04.01') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  if frmPrincipal.autentica_caixa('Acesso ao Caixa', 0) then
  begin
    frmcaixa := tfrmcaixa.create(self);
    frmcaixa.showmodal;
  end
  else
  begin
    application.messagebox('N�o autorizado!', 'Aviso', mb_ok + MB_ICONERROR);
  end;
end;

procedure TfrmPrincipal.OrdemdeServio1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '03.04') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  frmos_menu := tfrmos_menu.create(self);
  frmos_menu.showmodal;
end;

procedure TfrmPrincipal.NotaFiscal1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '03.02') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  // frmnotafiscal := tfrmnotafiscal.create(self);
  // frmnotafiscal.showmodal;

  frmnotafiscal_menu := tfrmnotafiscal_menu.create(self);
  frmnotafiscal_menu.showmodal;
end;

procedure TfrmPrincipal.SairdoSistema1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmPrincipal.AnularSaida1Click(Sender: TObject);
begin
  //
end;

procedure TfrmPrincipal.rocardeUsurio1Click(Sender: TObject);
begin
  with frmPrincipal do
  begin

    if autentica('Trocar de Usu�rio', 1) then
    begin
      nivel_usuario := frmmodulo.qrusuario.FIELDBYNAME('nivel').AsInteger;
      codigo_usuario := frmmodulo.qrusuario.FIELDBYNAME('codigo').asstring;
      // frmprincipal.pstatus.Panels[2].text := frmmodulo.qrusuario.fieldbyname('codigo').asstring;
      // frmprincipal.pstatus.Panels[3].text := frmmodulo.qrusuario.fieldbyname('usuario').asstring;
      if nivel_usuario = 4 then
      begin
        pnormal.visible := false; // false;
        psuper.visible := false; // true;

        qrcx.close;
        qrcx.SQL.clear;
        qrcx.SQL.add('select * from c000045 where codigo = ''000099''');
        qrcx.open;
        if qrcx.recordcount > 0 then
        begin
          lcaixa.caption := qrcx.FIELDBYNAME('data').asstring;
          if qrcx.FIELDBYNAME('situacao').AsInteger = 1 then
            lsit_caixa.caption := 'ABERTO'
          else
            lsit_caixa.caption := 'FECHADO';
        end
        else
        begin
          lcaixa.caption := '---';
          lsit_caixa.caption := '---'
        end;

        qrniver.close;
        qrniver.SQL.clear;
        qrniver.SQL.add
          ('select codigo, nome, nascimento, telefone1, telefone2, celular from c000007 where situacao < 3 and  nascimento like '''
          + copy(datetostr(date), 1, 5) + '/%'' order by nome');
        qrniver.open;

        qrpagar.close;
        qrpagar.SQL.clear;
        qrpagar.SQL.add('select pg.*, forn.nome from c000046 pg, c000009 forn');
        qrpagar.SQL.add
          ('where pg.codfornecedor = forn.codigo and situacao = 1 and');
        qrpagar.SQL.add('data_vencimento = :datax order by data_vencimento ');
        qrpagar.params.parambyname('datax').asdatetime := date;
        qrpagar.open;

        query.close;
        query.SQL.clear;
        query.SQL.add
          ('select sum(entrada) total_entrada, sum(saida) total_saida,');
        query.SQL.add
          ('(select sum(valor)       valor   from c000046 where situacao = 1 and data_vencimento = :datav), ');
        query.SQL.add
          ('(select sum(valor_atual) valor_1 from c000049 where situacao = 1 and data_vencimento = :datav), ');
        query.SQL.add
          ('(select sum(total)       valor_2 from c000048 where data = :datax),');
        query.SQL.add
          ('(select sum(total)       valor_3 from c000051 where conclusao_data = :datax and situacao = ''FECHADA'')');
        query.SQL.add('from c000044 where data = :datax');
        query.params.parambyname('datax').asdatetime := qrcx.FIELDBYNAME('data')
          .asdatetime;
        query.params.parambyname('datav').asdatetime := date;
        query.open;

        ltcaixa.caption := formatfloat('###,###,##0.00',
          query.FIELDBYNAME('total_entrada').asfloat -
          query.FIELDBYNAME('total_saida').asfloat);
        ltpagar.caption := formatfloat('###,###,##0.00',
          query.FIELDBYNAME('valor').asfloat);
        ltreceber.caption := formatfloat('###,###,##0.00',
          query.FIELDBYNAME('valor_1').asfloat);
        ltvenda.caption := formatfloat('###,###,##0.00',
          query.FIELDBYNAME('valor_2').asfloat);
        ltos.caption := formatfloat('###,###,##0.00',
          query.FIELDBYNAME('valor_3').asfloat);
        ltfinal.caption := formatfloat('###,###,##0.00',
          (query.FIELDBYNAME('total_entrada').asfloat -
          query.FIELDBYNAME('total_saida').asfloat) +
          query.FIELDBYNAME('valor_1').asfloat -
          query.FIELDBYNAME('valor').asfloat);

      end
      else
      begin
        pnormal.visible := false; // true;
        psuper.visible := false;
      end;
    end;
  end;
end;

procedure TfrmPrincipal.GerencimentodeUsurios1Click(Sender: TObject);
begin
  if frmPrincipal.autentica('Config. Usu�rios', nivel_exclusao) then
  begin
    frmusuario := tfrmusuario.create(self);
    frmusuario.showmodal;
  end
  else
  begin
    application.messagebox('Acesso n�o permitido!', 'Erro!',
      mb_ok + MB_ICONERROR);
  end;

end;

procedure TfrmPrincipal.Baixa1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '02.05') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  frmbaixa_estoque := tfrmbaixa_estoque.create(self);
  frmbaixa_estoque.showmodal;
end;

procedure TfrmPrincipal.Pedido1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '02.06') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  frmproduto_pedido := tfrmproduto_pedido.create(self);
  frmproduto_pedido.showmodal;

end;

procedure TfrmPrincipal.Entrada1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '02.05') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  frmbaixa_estoque := tfrmbaixa_estoque.create(self);
  frmbaixa_estoque.showmodal;
end;

procedure TfrmPrincipal.ConsultaServio1Click(Sender: TObject);
begin
  frmxloc_servico := tfrmxloc_servico.create(self);
  frmxloc_servico.showmodal;
end;

procedure TfrmPrincipal.Action10Execute(Sender: TObject);
begin
  FRMFORNECEDOR := TFRMFORNECEDOR.create(self);
  FRMFORNECEDOR.showmodal;
end;

procedure TfrmPrincipal.Action11Execute(Sender: TObject);
begin
  frmtransportador := tfrmtransportador.create(self);
  frmtransportador.showmodal;
end;

procedure TfrmPrincipal.Action12Execute(Sender: TObject);
begin
  FRMFUNCIONARIO := TFRMFUNCIONARIO.create(self);
  FRMFUNCIONARIO.showmodal;
end;

procedure TfrmPrincipal.Action13Execute(Sender: TObject);
begin
  frmbanco := tfrmbanco.create(self);
  frmbanco.showmodal;
end;

procedure TfrmPrincipal.Action14Execute(Sender: TObject);
begin
  FRMPLANO := TFRMPLANO.create(self);
  FRMPLANO.showmodal;
end;

procedure TfrmPrincipal.Action15Execute(Sender: TObject);
begin
  FRMCONVENIO := TFRMCONVENIO.create(self);
  FRMCONVENIO.showmodal;
end;

procedure TfrmPrincipal.Action16Execute(Sender: TObject);
begin
  frmsetor := tfrmsetor.create(self);
  frmsetor.showmodal;
end;

procedure TfrmPrincipal.Action17Execute(Sender: TObject);
begin
  FRMVEICULO := TFRMVEICULO.create(self);
  FRMVEICULO.showmodal;
end;

procedure TfrmPrincipal.Action18Execute(Sender: TObject);
begin
  FRMCONDPGTO := TFRMCONDPGTO.create(self);
  FRMCONDPGTO.showmodal;
end;

procedure TfrmPrincipal.Action19Execute(Sender: TObject);
begin
  frmcidade := tfrmcidade.create(self);
  frmcidade.showmodal;
end;

procedure TfrmPrincipal.Action1Execute(Sender: TObject);
begin
  frmservico := tfrmservico.create(self);
  frmservico.showmodal;
end;

procedure TfrmPrincipal.Action20Execute(Sender: TObject);
begin
  frmcnae := tfrmcnae.create(self);
  frmcnae.showmodal;
end;

procedure TfrmPrincipal.Action21Execute(Sender: TObject);
begin
  frmcor := tfrmcor.create(self);
  frmcor.showmodal;
end;

procedure TfrmPrincipal.Action22Execute(Sender: TObject);
begin
  frmtamanho := tfrmtamanho.create(self);
  frmtamanho.showmodal;
end;

procedure TfrmPrincipal.Action23Execute(Sender: TObject);
begin
  frmcontasreceber := tfrmcontasreceber.create(self);
  frmcontasreceber.showmodal;
end;

procedure TfrmPrincipal.Action24Execute(Sender: TObject);
begin
  if frmPrincipal.autentica('Configura��es', 4) then
  begin
    frmconfig := tfrmconfig.create(self);
    frmconfig.showmodal;
  end
  else
  begin
    application.messagebox('Acesso n�o permitido!', 'Erro!',
      mb_ok + MB_ICONERROR);
  end;
end;

procedure TfrmPrincipal.Action25Execute(Sender: TObject);
begin
  frmgrupo := tfrmgrupo.create(self);
  frmgrupo.showmodal;
end;

procedure TfrmPrincipal.Action26Execute(Sender: TObject);
begin
  frmcompra_menu := tfrmcompra_menu.create(self);
  frmcompra_menu.showmodal;
end;

procedure TfrmPrincipal.Action27Execute(Sender: TObject);
begin
  frmmodulo.QRCONFIG.open;
  if (frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'NORMAL') or
    (frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'FARMA') then
  begin
    frmproduto_consultapreco := tfrmproduto_consultapreco.create(self);
    frmproduto_consultapreco.showmodal;
  end
  else
  begin
    if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'LIGHT'
    then
    begin
      frmproduto_consultapreco := tfrmproduto_consultapreco.create(self);
      frmproduto_consultapreco.showmodal;
    end
    else
    begin
      if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'PECAS'
      then
      begin
        frmloc_produto_AUTO := tfrmloc_produto_AUTO.create(self);
        frmloc_produto_AUTO.showmodal;
      end
    end;
  end;
end;

procedure TfrmPrincipal.Action28Execute(Sender: TObject);
begin
  frmproduto_consultaserial := tfrmproduto_consultaserial.create(self);
  frmproduto_consultaserial.showmodal;
end;

procedure TfrmPrincipal.Action29Execute(Sender: TObject);
begin
  FRMPRODUTO_FALTA := TFRMPRODUTO_FALTA.create(self);
  FRMPRODUTO_FALTA.showmodal;
end;

procedure TfrmPrincipal.Action2Execute(Sender: TObject);
begin
  begin
    frmEMPRESA := tfrmEMPRESA.create(self);
    frmEMPRESA.showmodal;
  end;
end;

procedure TfrmPrincipal.Action30Execute(Sender: TObject);
begin
  frmbaixa_estoque := tfrmbaixa_estoque.create(self);
  frmbaixa_estoque.showmodal;
end;

procedure TfrmPrincipal.Action31Execute(Sender: TObject);
begin
  frmproduto_pedido := tfrmproduto_pedido.create(self);
  frmproduto_pedido.showmodal;
end;

procedure TfrmPrincipal.Action32Execute(Sender: TObject);
begin
  frmindustrializacao := tfrmindustrializacao.create(self);
  frmindustrializacao.showmodal;
end;

procedure TfrmPrincipal.Action33Execute(Sender: TObject);
begin
  FRMBALANCA := TFRMBALANCA.create(self);
  FRMBALANCA.showmodal;
end;

procedure TfrmPrincipal.Action34Execute(Sender: TObject);
begin
  FRMCONTASPAGAR := TFRMCONTASPAGAR.create(self);
  FRMCONTASPAGAR.showmodal;
end;

procedure TfrmPrincipal.Action35Execute(Sender: TObject);
begin
  frmFinanceira := tfrmFinanceira.create(self);
  frmFinanceira.showmodal;
end;

procedure TfrmPrincipal.Action36Execute(Sender: TObject);
begin
  FrmCHEQUE_MENU := tfrmCHEQUE_MENU.create(self);
  FrmCHEQUE_MENU.showmodal;
end;

procedure TfrmPrincipal.Action37Execute(Sender: TObject);
begin
  frmcontacorrente := tfrmcontacorrente.create(self);
  frmcontacorrente.showmodal;
end;

procedure TfrmPrincipal.Action38Execute(Sender: TObject);
begin
  frmcliente_financeiro := tfrmcliente_financeiro.create(self);
  frmcliente_financeiro.showmodal;
end;

procedure TfrmPrincipal.Action39Execute(Sender: TObject);
begin
  FRMBOLETO := TFRMBOLETO.create(self);
  FRMBOLETO.showmodal;
end;

procedure TfrmPrincipal.Action3Execute(Sender: TObject);
begin
  FRMCFOP := TFRMCFOP.create(self);
  FRMCFOP.showmodal;
end;

procedure TfrmPrincipal.Action40Execute(Sender: TObject);
begin
  frmcartao := tfrmcartao.create(self);
  frmcartao.showmodal;
end;

procedure TfrmPrincipal.Action41Execute(Sender: TObject);
begin
  FRMCONVENIO_receber := TFRMCONVENIO_receber.create(self);
  FRMCONVENIO_receber.showmodal;
end;

procedure TfrmPrincipal.Action42Execute(Sender: TObject);
begin
  FRMNOTAS_VENDA := TFRMNOTAS_VENDA.create(self);
  try {
      for i := 0 to frmnotas_venda.ComponentCount - 1 do
      begin
      if frmnotas_venda.Components[i] is tzquery then
      begin
      tzquery(frmnotas_venda.Components[i]).Connection := frmmodulo.Conexao;
      end;
      end; }
    FRMNOTAS_VENDA.showmodal;
  finally
    FRMNOTAS_VENDA.Release;
    FRMNOTAS_VENDA := nil;
  end;
end;

procedure TfrmPrincipal.Action43Execute(Sender: TObject);
begin
  frmnotafiscal_menu := tfrmnotafiscal_menu.create(self);
  frmnotafiscal_menu.showmodal;
end;

procedure TfrmPrincipal.Action44Execute(Sender: TObject);
begin
  frmmemorando_menu := Tfrmmemorando_menu.create(self);
  frmmemorando_menu.showmodal;
end;

procedure TfrmPrincipal.Action45Execute(Sender: TObject);
var
  f: textfile;
  slinha: string;
begin

  if USA_TEF then
  begin
    if FileExists(sTEFKoneKPath + 'gp.tmp') then
    begin
      begin
        assignfile(f, sTEFKoneKPath + 'gp.tmp');
        reset(f);
        readln(f, slinha);
        closefile(f);
      end;
    end;

    if slinha = 'TECBAN' then
    begin
      itefTecban := 1;
      sTEFPath := 'C:\TEF_DISC\'
    end
    else
    begin
      sTEFPath := 'C:\TEF_DIAL\';
      itefTecban := 0;
    end;

    TEFVerificaGerenciadorAtivo;
    TEFVerificaArquivosPendentes;
    TEFVerificaOperacaoPendente;
  end;

  frmmodulo.QRCONFIG.open;

  // teste para uso de caixa padrao do usuario autenticado   USA_CAIXA_PADRAO_USUARIO

  // continua venda
  frmmodulo.bcontinua_venda := true;

  // frmOpNatureza := TfrmOpNatureza.create(self);
  // frmOpNatureza.showmodal;
  frmmodulo.natoperacao := 'venda';

  if not frmmodulo.bcontinua_venda then
    Exit;

  if frmmodulo.QRCONFIG.FIELDBYNAME('USA_CAIXA_PADRAO_USUARIO').AsInteger = 1
  then // usa
  begin
    frmmodulo.qrusuario.open;

    if frmmodulo.qrusuario.FIELDBYNAME('COD_CAIXA').asstring <> '' then
    begin
      if frmmodulo.QRCONFIG.FIELDBYNAME('ramo_atividade').AsInteger = 4 then
      begin
        if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1 then
        begin
          // difinir movimentacao

          FRMVENDA_FARMA := TFRMVENDA_FARMA.create(self);
          FRMVENDA_FARMA.showmodal;
        end
        else
        begin
          application.messagebox('Este caixa est� fechado! Favor verificar...',
            'Aten��o', mb_ok + mb_iconwarning);
          Exit;
        end;
      end
      else if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1
      then
      begin

        frmVENDA_INICIO := tfrmVENDA_INICIO.create(self);
        frmVENDA_INICIO.showmodal;
      end
      else
      begin
        application.messagebox('Este caixa est� fechado! Favor verificar...',
          'Aten��o', mb_ok + mb_iconwarning);
      end;
    end
    else
    begin
      application.messagebox
        ('Voce n�o possui um caixa padr�o! Favor verificar com o Administrador!',
        'Aten��o', mb_ok + mb_iconwarning);
      Exit;
    end;

  end
  else
  begin

    if frmmodulo.QRCONFIG.FIELDBYNAME('ramo_atividade').AsInteger = 4 then
    begin
      if frmPrincipal.autentica_caixa('Pedido de Venda', 0) then
      begin
        if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1 then
        begin

          FRMVENDA_FARMA := TFRMVENDA_FARMA.create(self);
          FRMVENDA_FARMA.showmodal;
        end
        else
        begin
          application.messagebox('Este caixa est� fechado! Favor verificar...',
            'Aten��o', mb_ok + mb_iconwarning);
        end;
      end

    end
    else
    begin
      if frmPrincipal.autentica_caixa('Pedido de Venda', 0) then
      begin
        if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1 then
        begin

          frmVENDA_INICIO := tfrmVENDA_INICIO.create(self);
          frmVENDA_INICIO.showmodal;
        end
        else
        begin
          application.messagebox('Este caixa est� fechado! Favor verificar...',
            'Aten��o', mb_ok + mb_iconwarning);
        end;
      end

    end;
  end;

  // codcaixa := frmmodulo.qrcaixa_operador.FIELDBYNAME('codigo').asstring;

end;

procedure TfrmPrincipal.Action46Execute(Sender: TObject);
var
  f: textfile;
  slinha: string;
begin

  if USA_TEF then
  begin
    if FileExists(sTEFKoneKPath + 'gp.tmp') then
    begin
      begin
        assignfile(f, sTEFKoneKPath + 'gp.tmp');
        reset(f);
        readln(f, slinha);
        closefile(f);
      end;
    end;

    if slinha = 'TECBAN' then
    begin
      itefTecban := 1;
      sTEFPath := 'C:\TEF_DISC\'
    end
    else
    begin
      sTEFPath := 'C:\TEF_DIAL\';
      itefTecban := 0;
    end;

    TEFVerificaGerenciadorAtivo;
    TEFVerificaArquivosPendentes;
    TEFVerificaOperacaoPendente;
  end;

  frmmodulo.QRCONFIG.open;

  // teste para uso de caixa padrao do usuario autenticado   USA_CAIXA_PADRAO_USUARIO

  // continua venda
  frmmodulo.bcontinua_venda := true;

  // frmOpNatureza := TfrmOpNatureza.create(self);
  // frmOpNatureza.showmodal;
  frmmodulo.natoperacao := 'devolucao';

  if not frmmodulo.bcontinua_venda then
    Exit;

  if frmmodulo.QRCONFIG.FIELDBYNAME('USA_CAIXA_PADRAO_USUARIO').AsInteger = 1
  then // usa
  begin
    frmmodulo.qrusuario.open;

    if frmmodulo.qrusuario.FIELDBYNAME('COD_CAIXA').asstring <> '' then
    begin
      if frmmodulo.QRCONFIG.FIELDBYNAME('ramo_atividade').AsInteger = 4 then
      begin
        if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1 then
        begin
          // difinir movimentacao

          FRMVENDA_FARMA := TFRMVENDA_FARMA.create(self);
          FRMVENDA_FARMA.showmodal;
        end
        else
        begin
          application.messagebox('Este caixa est� fechado! Favor verificar...',
            'Aten��o', mb_ok + mb_iconwarning);
          Exit;
        end;
      end
      else if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1
      then
      begin

        frmVENDA_INICIO := tfrmVENDA_INICIO.create(self);
        frmVENDA_INICIO.showmodal;
      end
      else
      begin
        application.messagebox('Este caixa est� fechado! Favor verificar...',
          'Aten��o', mb_ok + mb_iconwarning);
      end;
    end
    else
    begin
      application.messagebox
        ('Voce n�o possui um caixa padr�o! Favor verificar com o Administrador!',
        'Aten��o', mb_ok + mb_iconwarning);
      Exit;
    end;

  end
  else
  begin

    if frmmodulo.QRCONFIG.FIELDBYNAME('ramo_atividade').AsInteger = 4 then
    begin
      if frmPrincipal.autentica_caixa('Pedido de Venda', 0) then
      begin
        if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1 then
        begin

          FRMVENDA_FARMA := TFRMVENDA_FARMA.create(self);
          FRMVENDA_FARMA.showmodal;
        end
        else
        begin
          application.messagebox('Este caixa est� fechado! Favor verificar...',
            'Aten��o', mb_ok + mb_iconwarning);
        end;
      end

    end
    else
    begin
      if frmPrincipal.autentica_caixa('Pedido de Venda', 0) then
      begin
        if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1 then
        begin

          frmVENDA_INICIO := tfrmVENDA_INICIO.create(self);
          frmVENDA_INICIO.showmodal;
        end
        else
        begin
          application.messagebox('Este caixa est� fechado! Favor verificar...',
            'Aten��o', mb_ok + mb_iconwarning);
        end;
      end

    end;
  end;

  // codcaixa := frmmodulo.qrcaixa_operador.FIELDBYNAME('codigo').asstring;

end;

procedure TfrmPrincipal.Action47Execute(Sender: TObject);
var
  f: textfile;
  slinha: string;
begin

  if USA_TEF then
  begin
    if FileExists(sTEFKoneKPath + 'gp.tmp') then
    begin
      begin
        assignfile(f, sTEFKoneKPath + 'gp.tmp');
        reset(f);
        readln(f, slinha);
        closefile(f);
      end;
    end;

    if slinha = 'TECBAN' then
    begin
      itefTecban := 1;
      sTEFPath := 'C:\TEF_DISC\'
    end
    else
    begin
      sTEFPath := 'C:\TEF_DIAL\';
      itefTecban := 0;
    end;

    TEFVerificaGerenciadorAtivo;
    TEFVerificaArquivosPendentes;
    TEFVerificaOperacaoPendente;
  end;

  frmmodulo.QRCONFIG.open;

  // teste para uso de caixa padrao do usuario autenticado   USA_CAIXA_PADRAO_USUARIO

  // continua venda
  frmmodulo.bcontinua_venda := true;

  // frmOpNatureza := TfrmOpNatureza.create(self);
  // frmOpNatureza.showmodal;
  frmmodulo.natoperacao := 'garantia';

  if not frmmodulo.bcontinua_venda then
    Exit;

  if frmmodulo.QRCONFIG.FIELDBYNAME('USA_CAIXA_PADRAO_USUARIO').AsInteger = 1
  then // usa
  begin
    frmmodulo.qrusuario.open;

    if frmmodulo.qrusuario.FIELDBYNAME('COD_CAIXA').asstring <> '' then
    begin
      if frmmodulo.QRCONFIG.FIELDBYNAME('ramo_atividade').AsInteger = 4 then
      begin
        if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1 then
        begin
          // difinir movimentacao

          FRMVENDA_FARMA := TFRMVENDA_FARMA.create(self);
          FRMVENDA_FARMA.showmodal;
        end
        else
        begin
          application.messagebox('Este caixa est� fechado! Favor verificar...',
            'Aten��o', mb_ok + mb_iconwarning);
          Exit;
        end;
      end
      else if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1
      then
      begin

        frmVENDA_INICIO := tfrmVENDA_INICIO.create(self);
        frmVENDA_INICIO.showmodal;
      end
      else
      begin
        application.messagebox('Este caixa est� fechado! Favor verificar...',
          'Aten��o', mb_ok + mb_iconwarning);
      end;
    end
    else
    begin
      application.messagebox
        ('Voce n�o possui um caixa padr�o! Favor verificar com o Administrador!',
        'Aten��o', mb_ok + mb_iconwarning);
      Exit;
    end;

  end
  else
  begin

    if frmmodulo.QRCONFIG.FIELDBYNAME('ramo_atividade').AsInteger = 4 then
    begin
      if frmPrincipal.autentica_caixa('Pedido de Venda', 0) then
      begin
        if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1 then
        begin

          FRMVENDA_FARMA := TFRMVENDA_FARMA.create(self);
          FRMVENDA_FARMA.showmodal;
        end
        else
        begin
          application.messagebox('Este caixa est� fechado! Favor verificar...',
            'Aten��o', mb_ok + mb_iconwarning);
        end;
      end

    end
    else
    begin
      if frmPrincipal.autentica_caixa('Pedido de Venda', 0) then
      begin
        if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1 then
        begin

          frmVENDA_INICIO := tfrmVENDA_INICIO.create(self);
          frmVENDA_INICIO.showmodal;
        end
        else
        begin
          application.messagebox('Este caixa est� fechado! Favor verificar...',
            'Aten��o', mb_ok + mb_iconwarning);
        end;
      end

    end;
  end;

  // codcaixa := frmmodulo.qrcaixa_operador.FIELDBYNAME('codigo').asstring;

end;

procedure TfrmPrincipal.Action48Execute(Sender: TObject);
begin
  // vou deixar assim ate baixar minha vm dae amanha eu arrumo tudo
  frmprevenda := tfrmprevenda.create(self);
  frmprevenda.lcodcaixa.caption := frmmodulo.qrcaixa_operador.FIELDBYNAME
    ('codigo').asstring;
  frmprevenda.lcaixa.caption := frmmodulo.qrcaixa_operador.FIELDBYNAME
    ('nome').asstring;
  frmprevenda.showmodal;

  { if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1 then  //tirei essa verificacao ok
    begin
    frmprevenda := tfrmprevenda.create(self);
    frmprevenda.lcodcaixa.caption := frmmodulo.qrcaixa_operador.FIELDBYNAME
    ('codigo').asstring;
    frmprevenda.lcaixa.caption := frmmodulo.qrcaixa_operador.FIELDBYNAME
    ('nome').asstring;
    frmprevenda.showmodal;

    end
    else
    begin
    application.messagebox('Este caixa est� fechado! Favor verificar...',
    'Aten��o', mb_ok + mb_iconwarning);
    end; }
end;

procedure TfrmPrincipal.Action49Execute(Sender: TObject);
begin
  frmorcamento := tfrmorcamento.create(self);
  frmorcamento.showmodal;
end;

procedure TfrmPrincipal.Action4Execute(Sender: TObject);
begin
  frmmodulo.QRCONFIG.open;
  if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'NORMAL' then
  begin
    frmproduto := tfrmproduto.create(self);
    frmproduto.showmodal;
  end
  else
  begin
    if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'LIGHT'
    then
    begin
      frmproduto_LIGTH := tfrmproduto_LIGTH.create(self);
      frmproduto_LIGTH.showmodal;
    end
    else
    begin
      if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'FARMA'
      then
      begin
        frmproduto_FARMA := tfrmproduto_FARMA.create(self);
        frmproduto_FARMA.showmodal;
      end
      else
      begin
        if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'PECAS'
        then
        begin
          frmproduto_AUTO := tfrmproduto_AUTO.create(self);
          frmproduto_AUTO.showmodal;
        end;
      end;
    end;
  end;
end;

procedure TfrmPrincipal.Action50Execute(Sender: TObject);
begin
  frmos_menu := tfrmos_menu.create(self);
  frmos_menu.showmodal;
end;

procedure TfrmPrincipal.Action53Execute(Sender: TObject);
begin
  FRMLISTA_FORNECEDOR2 := TFRMLISTA_FORNECEDOR2.create(self);
  FRMLISTA_FORNECEDOR2.showmodal;
end;

procedure TfrmPrincipal.Action54Execute(Sender: TObject);
begin
  FRMLISTA_PRODUTO2 := TFRMLISTA_PRODUTO2.create(self);
  FRMLISTA_PRODUTO2.showmodal;
end;

procedure TfrmPrincipal.Action55Execute(Sender: TObject);
begin
  frmetiquetador := tfrmetiquetador.create(self);
  frmetiquetador.showmodal;
end;

procedure TfrmPrincipal.Action56Execute(Sender: TObject);
begin
  FRMLISTA_VENDA2 := TFRMLISTA_VENDA2.create(self);
  FRMLISTA_VENDA2.showmodal;
end;

procedure TfrmPrincipal.Action57Execute(Sender: TObject);
begin
  frmlista_abc_marca_grupo := Tfrmlista_abc_marca_grupo.create(self);
  frmlista_abc_marca_grupo.showmodal;
end;

procedure TfrmPrincipal.Action58Execute(Sender: TObject);
begin
  FRMLISTA_PAGAR2 := TFRMLISTA_PAGAR2.create(self);
  FRMLISTA_PAGAR2.showmodal;
end;

procedure TfrmPrincipal.Action59Execute(Sender: TObject);
begin
  FRMLISTA_RECEBER2 := TFRMLISTA_RECEBER2.create(self);
  FRMLISTA_RECEBER2.showmodal;
end;

procedure TfrmPrincipal.Action5Execute(Sender: TObject);
begin
  if frmPrincipal.autentica_caixa('Acesso ao Caixa', 0) then
  begin
    frmcaixa := tfrmcaixa.create(self);
    frmcaixa.showmodal;
  end
  else
  begin
    application.messagebox('N�o autorizado!', 'Aviso', mb_ok + MB_ICONERROR);
  end;
end;

procedure TfrmPrincipal.Action60Execute(Sender: TObject);
begin
  FRMLISTA_CAIXA2 := TFRMLISTA_CAIXA2.create(self);
  FRMLISTA_CAIXA2.showmodal;
end;

procedure TfrmPrincipal.Action61Execute(Sender: TObject);
begin
  frmfluxo_caixa := tfrmfluxo_caixa.create(self);
  frmfluxo_caixa.showmodal;
end;

procedure TfrmPrincipal.Action62Execute(Sender: TObject);
begin
  FRMLISTA_OS := TFRMLISTA_OS.create(self);
  FRMLISTA_OS.showmodal;
end;

procedure TfrmPrincipal.Action63Execute(Sender: TObject);
begin
  frmlista_servicos_periodicos := Tfrmlista_servicos_periodicos.create(self);
  frmlista_servicos_periodicos.showmodal;
end;

procedure TfrmPrincipal.Action64Execute(Sender: TObject);
begin
  frmlista_frete := tfrmlista_frete.create(self);
  frmlista_frete.showmodal;
end;

procedure TfrmPrincipal.Action65Execute(Sender: TObject);
begin
  FRMDRE := TFRMDRE.create(self);
  FRMDRE.showmodal;
end;

procedure TfrmPrincipal.Action66Execute(Sender: TObject);
begin
  frmcalc := tfrmcalc.create(self);
  frmcalc.showmodal;
end;

procedure TfrmPrincipal.Action67Execute(Sender: TObject);
begin
  frmagenda := tfrmagenda.create(self);
  frmagenda.showmodal;
end;

procedure TfrmPrincipal.Action68Execute(Sender: TObject);
begin
  begin
    FRMCAIXA_OPERADOR := TFRMCAIXA_OPERADOR.create(self);
    FRMCAIXA_OPERADOR.showmodal;
  end;
end;

procedure TfrmPrincipal.Action69Execute(Sender: TObject);
begin
  Form_ativacao.showmodal;
end;

procedure TfrmPrincipal.Action6Execute(Sender: TObject);
begin
  frmentrega := tfrmentrega.create(self);
  frmentrega.showmodal;
end;

procedure TfrmPrincipal.Action70Execute(Sender: TObject);
begin
  form_sobre := tform_sobre.create(self);
  form_sobre.showmodal;

end;

procedure TfrmPrincipal.Action71Execute(Sender: TObject);
begin
  frmcst := tfrmcst.create(self);
  frmcst.showmodal;
end;

procedure TfrmPrincipal.Action72Execute(Sender: TObject);
begin
  FRMmodelo_fiscal := TFRMmodelo_fiscal.create(self);
  FRMmodelo_fiscal.showmodal;
end;

procedure TfrmPrincipal.Action73Execute(Sender: TObject);
begin
  FRMECF := TFRMECF.create(self);
  FRMECF.showmodal;
end;

procedure TfrmPrincipal.Action74Execute(Sender: TObject);
begin
  frmNcm := tfrmNcm.create(self);
  frmNcm.showmodal;
end;

procedure TfrmPrincipal.Action75Execute(Sender: TObject);
begin
  frmxloc_csosn := tfrmxloc_csosn.create(self);
  frmxloc_csosn.showmodal;
end;

procedure TfrmPrincipal.Action77Execute(Sender: TObject);
begin
  frmconhecimento := tfrmconhecimento.create(self);
  frmconhecimento.showmodal;

end;

procedure TfrmPrincipal.Action78Execute(Sender: TObject);
begin
  WinExec('C:\Softlogus\ferramentas\suporte.exe', SW_SHOW);
end;

procedure TfrmPrincipal.Action79Execute(Sender: TObject);
begin
  frmEMPRESA := tfrmEMPRESA.create(self);
  frmEMPRESA.showmodal;
end;

procedure TfrmPrincipal.Action8Execute(Sender: TObject);
begin
  FRMLISTA_CLIENTE2 := TFRMLISTA_CLIENTE2.create(self);
  FRMLISTA_CLIENTE2.showmodal;
end;

procedure TfrmPrincipal.Action9Execute(Sender: TObject);
begin
  frmcliente := tfrmcliente.create(self);
  frmcliente.showmodal;
end;

procedure TfrmPrincipal.actpapelExecute(Sender: TObject);
var
  IniFile: string;
  Ini: TIniFile;
begin

  if OpenDialog1.Execute then
  begin
    IniFile := ChangeFileExt(application.exename, '.ini');;

    Ini := TIniFile.create(IniFile);
    try
      Ini.writestring('OPERACIONAIS', 'FundoApp', OpenDialog1.Filename);
      FundoApp.Picture.LoadFromFile(OpenDialog1.Filename);
      self.Repaint;

    finally
      Ini.Free;
    end;

  end;

end;

procedure TfrmPrincipal.Ad55vGlowButton1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '02.08') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  frmproduto_consultaserial := tfrmproduto_consultaserial.create(self);
  frmproduto_consultaserial.showmodal;
end;

procedure TfrmPrincipal.MemorandodeExportao1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '03.02') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  frmmemorando_menu := Tfrmmemorando_menu.create(self);
  frmmemorando_menu.showmodal;
end;

procedure TfrmPrincipal.bformaClick(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '01.07') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  FRMFORMAPGTO := TFRMFORMAPGTO.create(self);
  FRMFORMAPGTO.showmodal;
  TAdvGlowButton(Sender).setfocus;
end;

procedure TfrmPrincipal.Venda1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '03.01') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  {
    if frmPrincipal.autentica_caixa('Pedido de Venda',0) then
    begin
    if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
    begin
    frmvenda_inicio := tfrmvenda_inicio.create(self);
    frmvenda_inicio.showmodal;
    END
    ELSE
    BEGIN
    APPLICATION.MESSAGEBOX('Este caixa est� fechado! Favor verificar...','Aten��o',mb_ok+MB_ICONWARNING);
    END;
    end
    else
    begin
    APPLICATION.MESSAGEBOX('N�o autorizado!','Aviso',mb_ok+MB_ICONERROR);
    end;
  }

  frmmodulo.QRCONFIG.open;
  if frmmodulo.QRCONFIG.FIELDBYNAME('ramo_atividade').AsInteger = 4 then
  begin
    if frmPrincipal.autentica_caixa('Pedido de Venda', 0) then
    begin
      if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1 then
      begin
        FRMVENDA_FARMA := TFRMVENDA_FARMA.create(self);
        FRMVENDA_FARMA.showmodal;
      end
      else
      begin
        application.messagebox('Este caixa est� fechado! Favor verificar...',
          'Aten��o', mb_ok + mb_iconwarning);
      end;
    end
    else
    begin
      application.messagebox('N�o autorizado!', 'Aviso', mb_ok + MB_ICONERROR);
    end;
  end
  else
  begin
    if frmPrincipal.autentica_caixa('Pedido de Venda', 0) then
    begin
      if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1 then
      begin
        frmVENDA_INICIO := tfrmVENDA_INICIO.create(self);
        frmVENDA_INICIO.showmodal;
        TAdvGlowButton(Sender).setfocus;
      end
      else
      begin
        application.messagebox('Este caixa est� fechado! Favor verificar...',
          'Aten��o', mb_ok + mb_iconwarning);
      end;
    end
    else
    begin
      application.messagebox('N�o autorizado!', 'Aviso', mb_ok + MB_ICONERROR);
    end;
  end;

end;

procedure TfrmPrincipal.AdvGlowButton24455Click(Sender: TObject);
begin
  frmPrincipal.ativador.renovar;
  Label27.caption := '';
  Label27.caption := 'Identifica��o : ' +
    IntToStr(frmPrincipal.ativador.IDInstalacao) + #13;
  Label27.caption := Label27.caption + 'Dias Restantes : ' +
    IntToStr(frmPrincipal.ativador.Dias_RestantesU) + #13;
  Label27.caption := Label27.caption + 'Data Vencimento : ' +
    frmPrincipal.ativador.Data_VencimentoU + #13;
  Label27.caption := Label27.caption + 'Chave : ' +
    frmPrincipal.ativador.Chave_RegistradaU + #13;
  Label27.caption := Label27.caption + 'E-mail do cliente : ' +
    frmPrincipal.ativador.Email_ClienteU + #13;
  // Label27.Caption := Label1.Caption + 'Vers�o : ' + IntToStr(frmPrincipal.ativador.Versao_Sistema )+ #13;
  if frmPrincipal.ativador.Sistema_DemoU then
    Label27.caption := Label27.caption + 'DEMO'
  else
    Label27.caption := Label27.caption + 'REGISTRADO'

end;

procedure TfrmPrincipal.AdvGlowButton2Click(Sender: TObject);
begin
  frmlista_servicos_periodicos := Tfrmlista_servicos_periodicos.create(self);
  frmlista_servicos_periodicos.showmodal;
  TAdvGlowButton(Sender).setfocus;
end;

procedure TfrmPrincipal.FormasdePagamento1Click(Sender: TObject);
begin
  { if frmprincipal.acesso(codigo_usuario, '01.07') = 'NAO' then
    begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o', mb_ok + MB_ICONERROR);
    exit;
    end;
    FRMFORMAPGTO := TFRMFORMAPGTO.CREATE(SELF);
    FRMFORMAPGTO.SHOWMODAL; }

end;

procedure TfrmPrincipal.CondiesdePagamento1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '01.08') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  FRMCONDPGTO := TFRMCONDPGTO.create(self);
  FRMCONDPGTO.showmodal;
end;

procedure TfrmPrincipal.batualClick(Sender: TObject);
begin
  qrcx.close;
  qrcx.SQL.clear;
  qrcx.SQL.add('select * from c000045 where codigo = ''000099''');
  qrcx.open;
  if qrcx.recordcount > 0 then
  begin
    lcaixa.caption := qrcx.FIELDBYNAME('data').asstring;
    if qrcx.FIELDBYNAME('situacao').AsInteger = 1 then
      lsit_caixa.caption := 'ABERTO'
    else
      lsit_caixa.caption := 'FECHADO';
  end
  else
  begin
    lcaixa.caption := '---';
    lsit_caixa.caption := '---'
  end;

  qrniver.close;
  qrniver.SQL.clear;
  qrniver.SQL.add
    ('select codigo, nome, nascimento, telefone1, telefone2, celular from c000007 where situacao < 3 and  nascimento like '''
    + copy(datetostr(date), 1, 5) + '/%'' order by nome');
  qrniver.open;

  qrpagar.close;
  qrpagar.SQL.clear;
  qrpagar.SQL.add('select pg.*, forn.nome from c000046 pg, c000009 forn');
  qrpagar.SQL.add('where pg.codfornecedor = forn.codigo and situacao = 1 and');
  qrpagar.SQL.add('data_vencimento = :datax order by data_vencimento ');
  qrpagar.params.parambyname('datax').asdatetime := date;
  qrpagar.open;

  query.close;
  query.SQL.clear;
  query.SQL.add('select sum(entrada) total_entrada, sum(saida) total_saida,');
  query.SQL.add
    ('(select sum(valor)       valor   from c000046 where situacao = 1 and data_vencimento = :datav), ');
  query.SQL.add
    ('(select sum(valor_atual) valor_1 from c000049 where situacao = 1 and data_vencimento = :datav), ');
  query.SQL.add
    ('(select sum(total)       valor_2 from c000048 where data = :datax),');
  query.SQL.add
    ('(select sum(total)       valor_3 from c000051 where conclusao_data = :datax and situacao = ''FECHADA'')');
  query.SQL.add('from c000044 where data = :datax');
  query.params.parambyname('datax').asdatetime := qrcx.FIELDBYNAME('data')
    .asdatetime;
  query.params.parambyname('datav').asdatetime := date;
  query.open;

  ltcaixa.caption := formatfloat('###,###,##0.00',
    query.FIELDBYNAME('total_entrada').asfloat -
    query.FIELDBYNAME('total_saida').asfloat);
  ltpagar.caption := formatfloat('###,###,##0.00',
    query.FIELDBYNAME('valor').asfloat);
  ltreceber.caption := formatfloat('###,###,##0.00',
    query.FIELDBYNAME('valor_1').asfloat);
  ltvenda.caption := formatfloat('###,###,##0.00',
    query.FIELDBYNAME('valor_2').asfloat);
  ltos.caption := formatfloat('###,###,##0.00',
    query.FIELDBYNAME('valor_3').asfloat);
  ltfinal.caption := formatfloat('###,###,##0.00',
    (query.FIELDBYNAME('total_entrada').asfloat -
    query.FIELDBYNAME('total_saida').asfloat) + query.FIELDBYNAME('valor_1')
    .asfloat - query.FIELDBYNAME('valor').asfloat);

end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
  // if ( TimeToStr(time) < '05:00:00' ) or ( TimeToStr(time) > '24:00:00' ) then Application.Terminate;

  if (timetostr(time) >= '23:50:00') and (timetostr(time) <= '24:00:00') then
  begin
    Timer1.Enabled := false;
    if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1 then
    begin
      application.messagebox(Pchar('J� s�o ' + timetostr(time) +
        ' e o Caixa do dia ' + datetostr(frmmodulo.qrcaixa_operador.FIELDBYNAME
        ('data').asdatetime) + #13 + 'Ainda n�o foi fechado! Verifique!'),
        'Aten��o', mb_ok + mb_iconwarning);
    end;
    Timer1.Enabled := true;
  end;

  if batual.down then
  begin
    qrpagar.close;
    qrpagar.SQL.clear;
    qrpagar.SQL.add('select pg.*, forn.nome from c000046 pg, c000009 forn');
    qrpagar.SQL.add
      ('where pg.codfornecedor = forn.codigo and situacao = 1 and');
    qrpagar.SQL.add('data_vencimento = :datax order by data_vencimento ');
    qrpagar.params.parambyname('datax').asdatetime := date;
    qrpagar.open;

    query.close;
    query.SQL.clear;
    query.SQL.add('select sum(entrada) total_entrada, sum(saida) total_saida,');
    query.SQL.add
      ('(select sum(valor)       valor from c000046 where situacao = 1 and data_vencimento = :datav), ');
    query.SQL.add
      ('(select sum(valor_atual) valor_1 from c000049 where situacao = 1 and data_vencimento = :datav), ');
    query.SQL.add
      ('(select sum(total)       valor_2 from c000048 where data = :datax),');
    query.SQL.add
      ('(select sum(total)       valor_3 from c000051 where conclusao_data = :datax and situacao = ''FECHADA'')');
    query.SQL.add('from c000044 where data = :datax');
    query.params.parambyname('datax').asdatetime := qrcx.FIELDBYNAME('data')
      .asdatetime;
    query.params.parambyname('datav').asdatetime := date;
    query.open;

    ltcaixa.caption := formatfloat('###,###,##0.00',
      query.FIELDBYNAME('total_entrada').asfloat -
      query.FIELDBYNAME('total_saida').asfloat);
    ltpagar.caption := formatfloat('###,###,##0.00',
      query.FIELDBYNAME('valor').asfloat);
    ltreceber.caption := formatfloat('###,###,##0.00',
      query.FIELDBYNAME('valor_1').asfloat);
    ltvenda.caption := formatfloat('###,###,##0.00',
      query.FIELDBYNAME('valor_2').asfloat);
    ltos.caption := formatfloat('###,###,##0.00',
      query.FIELDBYNAME('valor_3').asfloat);
    ltfinal.caption := formatfloat('###,###,##0.00',
      (query.FIELDBYNAME('total_entrada').asfloat -
      query.FIELDBYNAME('total_saida').asfloat) + query.FIELDBYNAME('valor_1')
      .asfloat - query.FIELDBYNAME('valor').asfloat);
  end;
end;

function TfrmPrincipal.RemoveAcentos(Str: string): string;
const
  ComAcento = '����������������������������';
  SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
var
  x: Integer;
begin
  for x := 1 to Length(Str) do
  begin
    if pos(Str[x], ComAcento) <> 0 then
    begin
      Str[x] := SemAcento[pos(Str[x], ComAcento)];
    end;
  end;
  result := Str;
end;

procedure TfrmPrincipal.AdvGlowButton3Click(Sender: TObject);
begin
  if frmPrincipal.autentica('Exporta��o', 3) then
  begin
    FRMPRODUTO_PDV2 := TFRMPRODUTO_PDV2.create(self);
    FRMPRODUTO_PDV2.showmodal;
  end
  else
  begin
    application.messagebox('Acesso n�o permitido!', 'Erro!',
      mb_ok + MB_ICONERROR);
  end;
end;

procedure TfrmPrincipal.AdvGlowButton3KeyPress(Sender: TObject; var Key: Char);
begin
  // if KEY = #27 then BMOVIMENTO.SETFOCUS;
end;

procedure TfrmPrincipal.AdvGlowButton4Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '03.08') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  frmentrega := tfrmentrega.create(self);
  frmentrega.showmodal;
end;

procedure TfrmPrincipal.ArquivoLOG1Click(Sender: TObject);
begin
  if frmPrincipal.autentica('Log de Usu�rios', nivel_exclusao) then
  begin
    frmusuario_log := tfrmusuario_log.create(self);
    frmusuario_log.showmodal;
  end
  else
  begin
    application.messagebox('Acesso n�o permitido!', 'Erro!',
      mb_ok + MB_ICONERROR);
  end;
end;

procedure TfrmPrincipal.Cidades1Click(Sender: TObject);
begin
  frmcidade := tfrmcidade.create(self);
  frmcidade.showmodal;
end;

procedure TfrmPrincipal.AdvGlowButton6Click(Sender: TObject);
begin
  frmTef := tfrmtef.create(self);
  frmTef.showmodal;
end;

procedure TfrmPrincipal.AdvGlowButton7Click(Sender: TObject);
begin
  frmproduto_pedido := tfrmproduto_pedido.create(self);
  frmproduto_pedido.showmodal;
end;

procedure TfrmPrincipal.AdvGlowButton10Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '04.09') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  frmcartao := tfrmcartao.create(self);
  frmcartao.showmodal;

  TAdvGlowButton(Sender).setfocus;
end;

function TfrmPrincipal.nao_arredonda(valor: Real): Real;
var
  txt_desconto: string;
  i: Integer;
begin
  txt_desconto := formatfloat('#############0.00000000000', valor);
  i := pos(',', txt_desconto);
  if i > 0 then
  begin
    txt_desconto := copy(txt_desconto, 1, i - 1) + ',' +
      copy(txt_desconto, i + 1, 2);

    result := strtofloat(txt_desconto);

  end
  else
    result := valor;

end;

function TfrmPrincipal.FormataCEP(const CEP: string): string;
var
  i: Integer;
begin
  result := '';
  for i := 1 to Length(CEP) do
    if CEP[i] in ['0' .. '9'] then
      result := result + CEP[i];

  // if Length(Result) <> 8 then
  // raise Exception.Create('CEP inv�lido.')
  // else
  if copy(result, 1, 5) = '' then
    result := ''
  else
    result := copy(result, 1, 5) + '-' + copy(result, 6, 3);
end;

procedure TfrmPrincipal.CNAE1Click(Sender: TObject);
begin
  frmcnae := tfrmcnae.create(self);
  frmcnae.showmodal;
end;

procedure TfrmPrincipal.amanho1Click(Sender: TObject);
begin
  frmtamanho := tfrmtamanho.create(self);
  frmtamanho.showmodal;
end;

procedure TfrmPrincipal.Cores1Click(Sender: TObject);
begin
  frmcor := tfrmcor.create(self);
  frmcor.showmodal;
end;

procedure TfrmPrincipal.AdvGlowButton8Click(Sender: TObject);
begin
  frmlista_abc_marca_grupo := Tfrmlista_abc_marca_grupo.create(self);
  frmlista_abc_marca_grupo.showmodal;
  TAdvGlowButton(Sender).setfocus;
end;

procedure TfrmPrincipal.AdvGlowButton9Click(Sender: TObject);
begin
  frmlista_frete := tfrmlista_frete.create(self);
  frmlista_frete.showmodal;
end;

procedure TfrmPrincipal.AdvGlowButton11Click(Sender: TObject);
begin
  frmfluxo_caixa := tfrmfluxo_caixa.create(self);
  frmfluxo_caixa.showmodal;
end;

procedure TfrmPrincipal.DREClick(Sender: TObject);
begin
  FRMDRE := TFRMDRE.create(self);
  FRMDRE.showmodal;
end;

procedure TfrmPrincipal.dxBarButton62Click(Sender: TObject);
begin
  frmBicos := tfrmBicos.create(self);
  frmBicos.showmodal;

end;

procedure TfrmPrincipal.dxBarButton63Click(Sender: TObject);
begin
  FrmLMC := TfrmLMC.create(self);
  FrmLMC.showmodal;
end;

procedure TfrmPrincipal.dxBarButton64Click(Sender: TObject);
begin
  frmEncerrantes := TfrmEncerrantes.create(self);
  frmEncerrantes.showmodal;
end;

procedure TfrmPrincipal.dxBarButton65Click(Sender: TObject);
begin
  frmTanque := tfrmTanque.create(self);
  frmTanque.showmodal;
end;

procedure TfrmPrincipal.dxBarButton66Click(Sender: TObject);
begin
  frmLivroLmc := TfrmLivroLmc.create(self);
  frmLivroLmc.showmodal;

end;

procedure TfrmPrincipal.dxBarButton68Click(Sender: TObject);
begin
  FRMSINTEGRA_gerar := TFRMSINTEGRA_gerar.create(self);
  FRMSINTEGRA_gerar.showmodal;
end;

procedure TfrmPrincipal.dxBarButton69Click(Sender: TObject);
begin
  FRMECF_REDUCAO_menu := TFRMECF_REDUCAO_menu.create(self);
  FRMECF_REDUCAO_menu.showmodal;
end;

procedure TfrmPrincipal.dxBarButton70Click(Sender: TObject);
begin
  frmmodulo.UCApplicationMessage1.ShowMessages(true);
end;

procedure TfrmPrincipal.btn_inventarioClick(Sender: TObject);
begin
 frmInventario := TfrmInventario.Create(Self);
 frmInventario.showmodal;
end;

procedure TfrmPrincipal.dxBarLargeButton28Click(Sender: TObject);
begin
  frmCombustivel := tfrmCombustivel.create(self);
  frmCombustivel.showmodal;
end;

procedure TfrmPrincipal.dxBarLargeButton29Click(Sender: TObject);
begin
  frmBombas := tfrmBombas.create(self);
  frmBombas.showmodal;

end;

procedure TfrmPrincipal.dxBarLargeButton30Click(Sender: TObject);
begin
  WinExec('C:\Softlogus\server\Athenas_SPED.exe', SW_SHOW);
end;

procedure TfrmPrincipal.dxTileItem1Click(Sender: TdxTileControlItem);
begin
  frmorcamento := tfrmorcamento.create(self);
  frmorcamento.showmodal;
end;

procedure TfrmPrincipal.dxTileItem2Click(Sender: TdxTileControlItem);
begin
  FRMNOTAS_VENDA := TFRMNOTAS_VENDA.create(self);
  try {
      for i := 0 to frmnotas_venda.ComponentCount - 1 do
      begin
      if frmnotas_venda.Components[i] is tzquery then
      begin
      tzquery(frmnotas_venda.Components[i]).Connection := frmmodulo.Conexao;
      end;
      end; }
    FRMNOTAS_VENDA.showmodal;
  finally
    FRMNOTAS_VENDA.Release;
    FRMNOTAS_VENDA := nil;
  end;

end;

procedure TfrmPrincipal.dxTileItem3Click(Sender: TdxTileControlItem);
begin
  frmos_menu := tfrmos_menu.create(self);
  frmos_menu.showmodal;
end;

procedure TfrmPrincipal.dxTileItem4Click(Sender: TdxTileControlItem);
begin
  frmconhecimento := tfrmconhecimento.create(self);
  frmconhecimento.showmodal;
end;

procedure TfrmPrincipal.dxTileItem5Click(Sender: TdxTileControlItem);
begin
  frmmodulo.QRCONFIG.open;
  if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'NORMAL' then
  begin
    frmproduto := tfrmproduto.create(self);
    frmproduto.showmodal;
  end
  else
  begin
    if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'LIGHT'
    then
    begin
      frmproduto_LIGTH := tfrmproduto_LIGTH.create(self);
      frmproduto_LIGTH.showmodal;
    end
    else
    begin
      if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'FARMA'
      then
      begin
        frmproduto_FARMA := tfrmproduto_FARMA.create(self);
        frmproduto_FARMA.showmodal;
      end
      else
      begin
        if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'PECAS'
        then
        begin
          frmproduto_AUTO := tfrmproduto_AUTO.create(self);
          frmproduto_AUTO.showmodal;
        end;
      end;
    end;
  end;

end;

function TfrmPrincipal.Arredondar(Value: Extended; Decimals: Integer): Extended;
var
  Factor, Fraction: Extended;
begin
  Factor := IntPower(10, Decimals);
  { A convers�o para string e depois para float evita
    erros de arredondamentos indesej�veis. }
  Value := strtofloat(FloatToStr(Value * Factor));
  result := Int(Value);
  Fraction := Frac(Value);
  if Fraction >= 0.5 then
    result := result + 1
  else if Fraction <= -0.5 then
    result := result - 1;
  result := result / Factor;
end;

procedure TfrmPrincipal.NCMNomenclaturaMercosul1Click(Sender: TObject);
begin
  frmNcm := tfrmNcm.create(self);
  frmNcm.showmodal;
end;

procedure TfrmPrincipal.CSOSNCdigodaOperaodeSituaodoSimplesNacional1Click
  (Sender: TObject);
begin
  frmxloc_csosn := tfrmxloc_csosn.create(self);
  frmxloc_csosn.showmodal;
end;

procedure TfrmPrincipal.Image8Click(Sender: TObject);
begin
  if application.messagebox('Confirma o encerramento do Sistema?', 'Aviso',
    MB_YESNO + mb_iconwarning) = idYes then
  begin
    frmPrincipal.FechePrograma('eBackup');
    frmPrincipal.FechePrograma('s7servidor');
    frmmodulo.Conexao.Connected := false;
    application.Terminate;
  end
end;

procedure TfrmPrincipal.imgClientesClick(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '01.02') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  frmcliente := tfrmcliente.create(self);
  frmcliente.showmodal;
end;

procedure TfrmPrincipal.Image9Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '01.01') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  frmEMPRESA := tfrmEMPRESA.create(self);
  frmEMPRESA.showmodal;

end;

procedure TfrmPrincipal.Clientes3Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '01.02') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  frmcliente := tfrmcliente.create(self);
  frmcliente.showmodal;
end;

procedure TfrmPrincipal.imgFornecedoresClick(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '01.03') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  FRMFORNECEDOR := TFRMFORNECEDOR.create(self);
  FRMFORNECEDOR.showmodal;
end;

procedure TfrmPrincipal.imgtransportadoresClick(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '01.04') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  frmtransportador := tfrmtransportador.create(self);
  frmtransportador.showmodal;
end;

procedure TfrmPrincipal.imgFuncionariosClick(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '01.05') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  FRMFUNCIONARIO := TFRMFUNCIONARIO.create(self);
  FRMFUNCIONARIO.showmodal;
end;

procedure TfrmPrincipal.imgBancosClick(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '01.06') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  frmbanco := tfrmbanco.create(self);
  frmbanco.showmodal;
end;

procedure TfrmPrincipal.vbosContasClick(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '01.09') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  FRMPLANO := TFRMPLANO.create(self);
  FRMPLANO.showmodal;
end;

procedure TfrmPrincipal.imgOperadoresCaixaClick(Sender: TObject);
begin
  if autentica('Operador de Caixa', 4) then
  begin
    FRMCAIXA_OPERADOR := TFRMCAIXA_OPERADOR.create(self);
    FRMCAIXA_OPERADOR.showmodal;
  end;
end;

procedure TfrmPrincipal.imgConveniosClick(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '01.14') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  FRMCONVENIO := TFRMCONVENIO.create(self);
  FRMCONVENIO.showmodal;
end;

procedure TfrmPrincipal.imgServicosClick(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '01.13') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  frmservico := tfrmservico.create(self);
  frmservico.showmodal;
end;

procedure TfrmPrincipal.EmpresasFiliais1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '01.01') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  if frmEMPRESA = nil then
  begin
    frmEMPRESA := tfrmEMPRESA.create(self);
    frmEMPRESA.showmodal;
  end;
end;

procedure TfrmPrincipal.Clientes2Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '01.02') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  frmcliente := tfrmcliente.create(self);
  frmcliente.showmodal;
end;

procedure TfrmPrincipal.Fornecedores1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '01.03') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  FRMFORNECEDOR := TFRMFORNECEDOR.create(self);
  FRMFORNECEDOR.showmodal;
end;

procedure TfrmPrincipal.ransportadores1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '01.04') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  frmtransportador := tfrmtransportador.create(self);
  frmtransportador.showmodal;
end;

procedure TfrmPrincipal.bancosFinanceiras1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '01.06') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  frmbanco := tfrmbanco.create(self);
  frmbanco.showmodal;
end;

procedure TfrmPrincipal.rocardeUsurio2Click(Sender: TObject);
begin
  with frmPrincipal do
  begin

    if autentica('Trocar de Usu�rio', 1) then
    begin
      nivel_usuario := frmmodulo.qrusuario.FIELDBYNAME('nivel').AsInteger;
      codigo_usuario := frmmodulo.qrusuario.FIELDBYNAME('codigo').asstring;
      // frmprincipal.pstatus.Panels[2].text := frmmodulo.qrusuario.fieldbyname('codigo').asstring;
      // frmprincipal.pstatus.Panels[3].text := frmmodulo.qrusuario.fieldbyname('usuario').asstring;
      if nivel_usuario = 4 then
      begin
        pnormal.visible := false;
        psuper.visible := false; // true;

        qrcx.close;
        qrcx.SQL.clear;
        qrcx.SQL.add('select * from c000045 where codigo = ''000099''');
        qrcx.open;
        if qrcx.recordcount > 0 then
        begin
          lcaixa.caption := qrcx.FIELDBYNAME('data').asstring;
          if qrcx.FIELDBYNAME('situacao').AsInteger = 1 then
            lsit_caixa.caption := 'ABERTO'
          else
            lsit_caixa.caption := 'FECHADO';
        end
        else
        begin
          lcaixa.caption := '---';
          lsit_caixa.caption := '---'
        end;

        qrniver.close;
        qrniver.SQL.clear;
        qrniver.SQL.add
          ('select codigo, nome, nascimento, telefone1, telefone2, celular from c000007 where situacao < 3 and  nascimento like '''
          + copy(datetostr(date), 1, 5) + '/%'' order by nome');
        qrniver.open;

        qrpagar.close;
        qrpagar.SQL.clear;
        qrpagar.SQL.add('select pg.*, forn.nome from c000046 pg, c000009 forn');
        qrpagar.SQL.add
          ('where pg.codfornecedor = forn.codigo and situacao = 1 and');
        qrpagar.SQL.add('data_vencimento = :datax order by data_vencimento ');
        qrpagar.params.parambyname('datax').asdatetime := date;
        qrpagar.open;

        query.close;
        query.SQL.clear;
        query.SQL.add
          ('select sum(entrada) total_entrada, sum(saida) total_saida,');
        query.SQL.add
          ('(select sum(valor)       valor   from c000046 where situacao = 1 and data_vencimento = :datav), ');
        query.SQL.add
          ('(select sum(valor_atual) valor_1 from c000049 where situacao = 1 and data_vencimento = :datav), ');
        query.SQL.add
          ('(select sum(total)       valor_2 from c000048 where data = :datax),');
        query.SQL.add
          ('(select sum(total)       valor_3 from c000051 where conclusao_data = :datax and situacao = ''FECHADA'')');
        query.SQL.add('from c000044 where data = :datax');
        query.params.parambyname('datax').asdatetime := qrcx.FIELDBYNAME('data')
          .asdatetime;
        query.params.parambyname('datav').asdatetime := date;
        query.open;

        ltcaixa.caption := formatfloat('###,###,##0.00',
          query.FIELDBYNAME('total_entrada').asfloat -
          query.FIELDBYNAME('total_saida').asfloat);
        ltpagar.caption := formatfloat('###,###,##0.00',
          query.FIELDBYNAME('valor').asfloat);
        ltreceber.caption := formatfloat('###,###,##0.00',
          query.FIELDBYNAME('valor_1').asfloat);
        ltvenda.caption := formatfloat('###,###,##0.00',
          query.FIELDBYNAME('valor_2').asfloat);
        ltos.caption := formatfloat('###,###,##0.00',
          query.FIELDBYNAME('valor_3').asfloat);
        ltfinal.caption := formatfloat('###,###,##0.00',
          (query.FIELDBYNAME('total_entrada').asfloat -
          query.FIELDBYNAME('total_saida').asfloat) +
          query.FIELDBYNAME('valor_1').asfloat -
          query.FIELDBYNAME('valor').asfloat);

      end
      else
      begin
        pnormal.visible := false; // true;
        psuper.visible := false;
      end;
    end;
  end;
end;

procedure TfrmPrincipal.G2Click(Sender: TObject);
var
  f: textfile;
  slinha: string;
begin

  if USA_TEF then
  begin
    if FileExists(sTEFKoneKPath + 'gp.tmp') then
    begin
      begin
        assignfile(f, sTEFKoneKPath + 'gp.tmp');
        reset(f);
        readln(f, slinha);
        closefile(f);
      end;
    end;

    if slinha = 'TECBAN' then
    begin
      itefTecban := 1;
      sTEFPath := 'C:\TEF_DISC\'
    end
    else
    begin
      sTEFPath := 'C:\TEF_DIAL\';
      itefTecban := 0;
    end;

    TEFVerificaGerenciadorAtivo;
    TEFVerificaArquivosPendentes;
    TEFVerificaOperacaoPendente;
  end;

  frmmodulo.QRCONFIG.open;

  // teste para uso de caixa padrao do usuario autenticado   USA_CAIXA_PADRAO_USUARIO

  // continua venda
  frmmodulo.bcontinua_venda := true;

  // frmOpNatureza := TfrmOpNatureza.create(self);
  // frmOpNatureza.showmodal;
  frmmodulo.natoperacao := 'garantia';

  if not frmmodulo.bcontinua_venda then
    Exit;

  if frmmodulo.QRCONFIG.FIELDBYNAME('USA_CAIXA_PADRAO_USUARIO').AsInteger = 1
  then // usa
  begin
    frmmodulo.qrusuario.open;

    if frmmodulo.qrusuario.FIELDBYNAME('COD_CAIXA').asstring <> '' then
    begin
      if frmmodulo.QRCONFIG.FIELDBYNAME('ramo_atividade').AsInteger = 4 then
      begin
        if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1 then
        begin
          // difinir movimentacao

          FRMVENDA_FARMA := TFRMVENDA_FARMA.create(self);
          FRMVENDA_FARMA.showmodal;
        end
        else
        begin
          application.messagebox('Este caixa est� fechado! Favor verificar...',
            'Aten��o', mb_ok + mb_iconwarning);
          Exit;
        end;
      end
      else if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1
      then
      begin

        frmVENDA_INICIO := tfrmVENDA_INICIO.create(self);
        frmVENDA_INICIO.showmodal;
      end
      else
      begin
        application.messagebox('Este caixa est� fechado! Favor verificar...',
          'Aten��o', mb_ok + mb_iconwarning);
      end;
    end
    else
    begin
      application.messagebox
        ('Voce n�o possui um caixa padr�o! Favor verificar com o Administrador!',
        'Aten��o', mb_ok + mb_iconwarning);
      Exit;
    end;

  end
  else
  begin

    if frmmodulo.QRCONFIG.FIELDBYNAME('ramo_atividade').AsInteger = 4 then
    begin
      if frmPrincipal.autentica_caixa('Pedido de Venda', 0) then
      begin
        if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1 then
        begin

          FRMVENDA_FARMA := TFRMVENDA_FARMA.create(self);
          FRMVENDA_FARMA.showmodal;
        end
        else
        begin
          application.messagebox('Este caixa est� fechado! Favor verificar...',
            'Aten��o', mb_ok + mb_iconwarning);
        end;
      end

    end
    else
    begin
      if frmPrincipal.autentica_caixa('Pedido de Venda', 0) then
      begin
        if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1 then
        begin

          frmVENDA_INICIO := tfrmVENDA_INICIO.create(self);
          frmVENDA_INICIO.showmodal;
        end
        else
        begin
          application.messagebox('Este caixa est� fechado! Favor verificar...',
            'Aten��o', mb_ok + mb_iconwarning);
        end;
      end

    end;
  end;

  // codcaixa := frmmodulo.qrcaixa_operador.FIELDBYNAME('codigo').asstring;

end;

procedure TfrmPrincipal.GerenciamentodeUsurio1Click(Sender: TObject);
begin
  if frmPrincipal.autentica('Config. Usu�rios', nivel_exclusao) then
  begin
    frmusuario := tfrmusuario.create(self);
    frmusuario.showmodal;
  end
  else
  begin
    application.messagebox('Acesso n�o permitido!', 'Erro!',
      mb_ok + MB_ICONERROR);
  end;
end;

procedure TfrmPrincipal.ArquivodeLOG1Click(Sender: TObject);
begin
  if frmPrincipal.autentica('Log de Usu�rios', nivel_exclusao) then
  begin
    frmusuario_log := tfrmusuario_log.create(self);
    frmusuario_log.showmodal;
  end
  else
  begin
    application.messagebox('Acesso n�o permitido!', 'Erro!',
      mb_ok + MB_ICONERROR);
  end;
end;

procedure TfrmPrincipal.O5Click(Sender: TObject);
begin
  begin
    FRMCAIXA_OPERADOR := TFRMCAIXA_OPERADOR.create(self);
    FRMCAIXA_OPERADOR.showmodal;
  end;
end;

procedure TfrmPrincipal.OperadoresdeCaixa1Click(Sender: TObject);
begin
  if autentica('Operador de Caixa', 4) then
  begin
    FRMCAIXA_OPERADOR := TFRMCAIXA_OPERADOR.create(self);
    FRMCAIXA_OPERADOR.showmodal;
  end;
end;

procedure TfrmPrincipal.Setor1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '01.10') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  frmsetor := tfrmsetor.create(self);
  frmsetor.showmodal;
end;

procedure TfrmPrincipal.Veculos2Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '01.11') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  FRMVEICULO := TFRMVEICULO.create(self);
  FRMVEICULO.showmodal;
end;

procedure TfrmPrincipal.VeculosdeTerceiros1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '01.12') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  FRMCLIENTE_VEICULO := TFRMCLIENTE_VEICULO.create(self);
  FRMCLIENTE_VEICULO.showmodal;
end;

procedure TfrmPrincipal.CondiesdePagamento2Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '01.08') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  // bug
  FRMCONDPGTO := TFRMCONDPGTO.create(self);
  FRMCONDPGTO.showmodal;
end;

procedure TfrmPrincipal.Cidades2Click(Sender: TObject);
begin
  frmcidade := tfrmcidade.create(self);
  frmcidade.showmodal;
end;

procedure TfrmPrincipal.CNAE2Click(Sender: TObject);
begin
  frmcnae := tfrmcnae.create(self);
  frmcnae.showmodal;
end;

procedure TfrmPrincipal.Cores2Click(Sender: TObject);
begin
  frmcor := tfrmcor.create(self);
  frmcor.showmodal;
end;

procedure TfrmPrincipal.amanho2Click(Sender: TObject);
begin
  frmtamanho := tfrmtamanho.create(self);
  frmtamanho.showmodal;
end;

procedure TfrmPrincipal.CFOPNaturezadeOperao1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '03.02') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  FRMCFOP := TFRMCFOP.create(self);
  FRMCFOP.showmodal;
end;

procedure TfrmPrincipal.CSTCdigodaSituaoTributria2Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '03.02') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  frmcst := tfrmcst.create(self);
  frmcst.showmodal;
end;

procedure TfrmPrincipal.ModelosdeDocumentosFiscais2Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '03.02') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  FRMmodelo_fiscal := TFRMmodelo_fiscal.create(self);
  FRMmodelo_fiscal.showmodal;
end;

procedure TfrmPrincipal.ECFCadastrodeEquipamentos2Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '03.02') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  FRMECF := TFRMECF.create(self);
  FRMECF.showmodal;
end;

procedure TfrmPrincipal.NCMNomeclaturaComumaoMercosul1Click(Sender: TObject);
begin
  frmNcm := tfrmNcm.create(self);
  frmNcm.showmodal;
end;

procedure TfrmPrincipal.CSOSNCdigodeSituaodaOperaonoSimplesNacional1Click
  (Sender: TObject);
begin
  frmxloc_csosn := tfrmxloc_csosn.create(self);
  frmxloc_csosn.showmodal;
end;

procedure TfrmPrincipal.Servios1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '01.13') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  frmservico := tfrmservico.create(self);
  frmservico.showmodal;
end;

procedure TfrmPrincipal.Convnios1Click(Sender: TObject);
begin
  FRMCONVENIO := TFRMCONVENIO.create(self);
  FRMCONVENIO.showmodal;
end;

procedure TfrmPrincipal.planodeContas1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '01.09') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  FRMPLANO := TFRMPLANO.create(self);
  FRMPLANO.showmodal;
end;

procedure TfrmPrincipal.Produtos2Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '02.01') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  frmmodulo.QRCONFIG.open;
  if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'NORMAL' then
  begin
    frmproduto := tfrmproduto.create(self);
    frmproduto.showmodal;
  end
  else
  begin
    if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'LIGHT'
    then
    begin
      frmproduto_LIGTH := tfrmproduto_LIGTH.create(self);
      frmproduto_LIGTH.showmodal;
    end
    else
    begin
      if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'FARMA'
      then
      begin
        frmproduto_FARMA := tfrmproduto_FARMA.create(self);
        frmproduto_FARMA.showmodal;
      end
      else
      begin
        if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'PECAS'
        then
        begin
          frmproduto_AUTO := tfrmproduto_AUTO.create(self);
          frmproduto_AUTO.showmodal;
        end;
      end;
    end;
  end;
end;

procedure TfrmPrincipal.GruposeSubgrupos1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '02.02') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  frmgrupo := tfrmgrupo.create(self);
  frmgrupo.showmodal;
end;

procedure TfrmPrincipal.M2Click(Sender: TObject);
begin
  FRMMARCA := TFRMMARCA.create(self);
  FRMMARCA.showmodal;
end;

procedure TfrmPrincipal.Marcasfabricantes1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '02.03') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  FRMMARCA := TFRMMARCA.create(self);
  FRMMARCA.showmodal;
end;

procedure TfrmPrincipal.notaFiscaldeEntrada1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '02.05') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  frmcompra_menu := tfrmcompra_menu.create(self);
  frmcompra_menu.showmodal;
end;

procedure TfrmPrincipal.ConsultadePreo1Click(Sender: TObject);
begin

  if frmPrincipal.acesso(codigo_usuario, '02.08') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  frmmodulo.QRCONFIG.open;
  if (frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'NORMAL') or
    (frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'FARMA') then
  begin
    frmproduto_consultapreco := tfrmproduto_consultapreco.create(self);
    frmproduto_consultapreco.showmodal;
  end
  else
  begin
    if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'LIGHT'
    then
    begin
      frmproduto_consultapreco := tfrmproduto_consultapreco.create(self);
      frmproduto_consultapreco.showmodal;
    end
    else
    begin
      if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'PECAS'
      then
      begin
        frmloc_produto_AUTO := tfrmloc_produto_AUTO.create(self);
        frmloc_produto_AUTO.showmodal;
      end
    end;
  end;
end;

procedure TfrmPrincipal.ConsultaSerial1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '02.08') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  frmproduto_consultaserial := tfrmproduto_consultaserial.create(self);
  frmproduto_consultaserial.showmodal;
end;

procedure TfrmPrincipal.ProdutosVendasFaltas1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '02.01') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  FRMPRODUTO_FALTA := TFRMPRODUTO_FALTA.create(self);
  FRMPRODUTO_FALTA.showmodal;
end;

procedure TfrmPrincipal.PedidodeCompra1Click(Sender: TObject);
begin
  frmproduto_pedido := tfrmproduto_pedido.create(self);
  frmproduto_pedido.showmodal;
end;

procedure TfrmPrincipal.BalanaExportao1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '02.09') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  FRMBALANCA := TFRMBALANCA.create(self);
  FRMBALANCA.showmodal;
end;

procedure TfrmPrincipal.Venda2Click(Sender: TObject);
var
  f: textfile;
  slinha: string;
begin
  if frmPrincipal.acesso(codigo_usuario, '03.01') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  if USA_TEF then
  begin
    if FileExists(sTEFKoneKPath + 'gp.tmp') then
    begin
      begin
        assignfile(f, sTEFKoneKPath + 'gp.tmp');
        reset(f);
        readln(f, slinha);
        closefile(f);
      end;
    end;

    if slinha = 'TECBAN' then
    begin
      itefTecban := 1;
      sTEFPath := 'C:\TEF_DISC\'
    end
    else
    begin
      sTEFPath := 'C:\TEF_DIAL\';
      itefTecban := 0;
    end;

    TEFVerificaGerenciadorAtivo;
    TEFVerificaArquivosPendentes;
    TEFVerificaOperacaoPendente;
  end;

  frmmodulo.QRCONFIG.open;
  if frmmodulo.QRCONFIG.FIELDBYNAME('ramo_atividade').AsInteger = 4 then
  begin
    if frmPrincipal.autentica_caixa('Pedido de Venda', 0) then
    begin
      if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1 then
      begin
        FRMVENDA_FARMA := TFRMVENDA_FARMA.create(self);
        FRMVENDA_FARMA.showmodal;
      end
      else
      begin
        application.messagebox('Este caixa est� fechado! Favor verificar...',
          'Aten��o', mb_ok + mb_iconwarning);
      end;
    end
    else
    begin
      application.messagebox('N�o autorizado!', 'Aviso', mb_ok + MB_ICONERROR);
    end;
  end
  else
  begin
    if frmPrincipal.autentica_caixa('Pedido de Venda', 0) then
    begin
      if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1 then
      begin
        frmVENDA_INICIO := tfrmVENDA_INICIO.create(self);
        frmVENDA_INICIO.showmodal;
      end
      else
      begin
        application.messagebox('Este caixa est� fechado! Favor verificar...',
          'Aten��o', mb_ok + mb_iconwarning);
      end;
    end
    else
    begin
      application.messagebox('N�o autorizado!', 'Aviso', mb_ok + MB_ICONERROR);
    end;
  end;

end;

procedure TfrmPrincipal.AtendimentodePrVenda1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '03.01') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  if frmPrincipal.autentica_caixa('Pedido de Venda', 0) then
  begin
    if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1 then
    begin
      frmprevenda := tfrmprevenda.create(self);
      frmprevenda.lcodcaixa.caption := frmmodulo.qrcaixa_operador.FIELDBYNAME
        ('codigo').asstring;
      frmprevenda.lcaixa.caption := frmmodulo.qrcaixa_operador.FIELDBYNAME
        ('nome').asstring;
      frmprevenda.showmodal;

    end
    else
    begin
      application.messagebox('Este caixa est� fechado! Favor verificar...',
        'Aten��o', mb_ok + mb_iconwarning);
    end;
  end
  else
  begin
    application.messagebox('N�o autorizado!', 'Aviso', mb_ok + MB_ICONERROR);
  end;

end;

procedure TfrmPrincipal.NotasdeVendas1Click(Sender: TObject);
var
  i: Integer;
begin
  if frmPrincipal.acesso(codigo_usuario, '03.05') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  FRMNOTAS_VENDA := TFRMNOTAS_VENDA.create(self);
  try {
      for i := 0 to frmnotas_venda.ComponentCount - 1 do
      begin
      if frmnotas_venda.Components[i] is tzquery then
      begin
      tzquery(frmnotas_venda.Components[i]).Connection := frmmodulo.Conexao;
      end;
      end; }
    FRMNOTAS_VENDA.showmodal;
  finally
    FRMNOTAS_VENDA.Release;
    FRMNOTAS_VENDA := nil;
  end;

end;

procedure TfrmPrincipal.Oramento2Click(Sender: TObject);

begin
  if frmPrincipal.acesso(codigo_usuario, '03.03') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  try
    frmorcamento := tfrmorcamento.create(self);
    frmorcamento.showmodal;
  finally
    freeandnil(frmorcamento);
  end;
end;

procedure TfrmPrincipal.ECFmovimentoDirio1Click(Sender: TObject);
begin
  Exit;
  if frmPrincipal.acesso(codigo_usuario, '03.05') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  FRMECF_REDUCAO_menu := TFRMECF_REDUCAO_menu.create(self);
  FRMECF_REDUCAO_menu.showmodal;
end;

procedure TfrmPrincipal.SINTEGRARegistroFiscal1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '03.06') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  FRMSINTEGRA_gerar := TFRMSINTEGRA_gerar.create(self);
  FRMSINTEGRA_gerar.showmodal;
end;

procedure TfrmPrincipal.EFDSpedFiscal1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '03.07') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  frmPrincipal.ExecutePrograma('\Softlogus\server\sped.exe', '');
end;

procedure TfrmPrincipal.ControledeEntrega1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '03.08') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  frmentrega := tfrmentrega.create(self);
  frmentrega.showmodal;
end;

procedure TfrmPrincipal.OrdemdesERVIO2Click(Sender: TObject);
begin
  if frmmodulo.oslibera <> '1' then
  begin
    application.messagebox('M�dulo N�o Liberado!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  if frmPrincipal.acesso(codigo_usuario, '03.04') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  frmos_menu := tfrmos_menu.create(self);
  frmos_menu.showmodal;

end;

procedure TfrmPrincipal.Industrializao1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '03.09') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  frmindustrializacao := tfrmindustrializacao.create(self);
  frmindustrializacao.showmodal;
end;

procedure TfrmPrincipal.NotaFiscalEmisso1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '03.02') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  frmnotafiscal_menu := tfrmnotafiscal_menu.create(self);
  frmnotafiscal_menu.showmodal;
end;

procedure TfrmPrincipal.ConhecimentodeTransporte1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '03.02') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  frmconhecimento := tfrmconhecimento.create(self);
  frmconhecimento.showmodal;
end;

procedure TfrmPrincipal.MemorandodeExportao2Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '03.02') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  frmmemorando_menu := Tfrmmemorando_menu.create(self);
  frmmemorando_menu.showmodal;
end;

procedure TfrmPrincipal.Caixa2Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '04.01') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  if frmPrincipal.autentica_caixa('Acesso ao Caixa', 0) then
  begin
    frmcaixa := tfrmcaixa.create(self);
    frmcaixa.showmodal;
  end
  else
  begin
    application.messagebox('N�o autorizado!', 'Aviso', mb_ok + MB_ICONERROR);
  end;
end;

procedure TfrmPrincipal.ContasaPagar2Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '04.02') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  FRMCONTASPAGAR := TFRMCONTASPAGAR.create(self);
  FRMCONTASPAGAR.showmodal;
end;

procedure TfrmPrincipal.ContasaReceber2Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '04.07') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  frmcontasreceber := tfrmcontasreceber.create(self);
  frmcontasreceber.showmodal;
end;

procedure TfrmPrincipal.Financeira1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '04.08') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  frmFinanceira := tfrmFinanceira.create(self);
  frmFinanceira.showmodal;
end;

procedure TfrmPrincipal.Cheques1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '04.03') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  FrmCHEQUE_MENU := tfrmCHEQUE_MENU.create(self);
  FrmCHEQUE_MENU.showmodal;
end;

procedure TfrmPrincipal.ContaCorrente1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '04.04') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  frmcontacorrente := tfrmcontacorrente.create(self);
  frmcontacorrente.showmodal;
end;

procedure TfrmPrincipal.Clientes4Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '04.05') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  frmcliente_financeiro := tfrmcliente_financeiro.create(self);
  frmcliente_financeiro.showmodal;
end;

procedure TfrmPrincipal.BoletoBancrio1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '04.06') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;
  FRMBOLETO := TFRMBOLETO.create(self);
  FRMBOLETO.showmodal;
end;

procedure TfrmPrincipal.CartodeCrdito1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '04.09') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  frmcartao := tfrmcartao.create(self);
  frmcartao.showmodal;
end;

procedure TfrmPrincipal.Convnio1Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '04.07') = 'NAO' then
  begin
    application.messagebox('Acesso n�o permitido!', 'Aten��o',
      mb_ok + MB_ICONERROR);
    Exit;
  end;

  FRMCONVENIO_receber := TFRMCONVENIO_receber.create(self);
  FRMCONVENIO_receber.showmodal;
end;

procedure TfrmPrincipal.Clientes5Click(Sender: TObject);
begin
  FRMLISTA_CLIENTE2 := TFRMLISTA_CLIENTE2.create(self);
  FRMLISTA_CLIENTE2.showmodal;
end;

procedure TfrmPrincipal.Fornecedores3Click(Sender: TObject);
begin
  FRMLISTA_FORNECEDOR2 := TFRMLISTA_FORNECEDOR2.create(self);
  FRMLISTA_FORNECEDOR2.showmodal;
end;

procedure TfrmPrincipal.Produtos3Click(Sender: TObject);
begin
  FRMLISTA_PRODUTO2 := TFRMLISTA_PRODUTO2.create(self);
  FRMLISTA_PRODUTO2.showmodal;
end;

procedure TfrmPrincipal.Vendas1Click(Sender: TObject);
begin
  if nivel_usuario < 3 then
  begin
    application.messagebox('Seu n�vel n�o permite este acesso!', 'Aten��o',
      mb_ok + mb_iconwarning);
    Exit;
  end
  else
  begin
    // 41 : result := '06.02 - RELAT�RIO CONTAS A PAG';
    // 43 : result := '06.04 - RELAT�RIO DE CAIXA';
    if frmPrincipal.acesso(codigo_usuario, '06.01') = 'NAO' then
    begin
      application.messagebox('Acesso n�o permitido!', 'Aten��o',
        mb_ok + MB_ICONERROR);
      Exit;
    end;

  end;

  FRMLISTA_VENDA2 := TFRMLISTA_VENDA2.create(self);
  FRMLISTA_VENDA2.showmodal;
end;

procedure TfrmPrincipal.ContasaReceber3Click(Sender: TObject);
begin
  if nivel_usuario < 3 then
  begin
    application.messagebox('Seu n�vel n�o permite este acesso!', 'Aten��o',
      mb_ok + mb_iconwarning);
    Exit;
  end
  else
  begin
    // 41 : result := '06.02 - RELAT�RIO CONTAS A PAG';
    // 43 : result := '06.04 - RELAT�RIO DE CAIXA';
    if frmPrincipal.acesso(codigo_usuario, '06.03') = 'NAO' then
    begin
      application.messagebox('Acesso n�o permitido!', 'Aten��o',
        mb_ok + MB_ICONERROR);
      Exit;
    end;

  end;

  FRMLISTA_RECEBER2 := TFRMLISTA_RECEBER2.create(self);
  FRMLISTA_RECEBER2.showmodal;
end;

procedure TfrmPrincipal.ContasaPagar3Click(Sender: TObject);
begin

  FRMLISTA_PAGAR2 := TFRMLISTA_PAGAR2.create(self);
  FRMLISTA_PAGAR2.showmodal;
end;

procedure TfrmPrincipal.Caixa3Click(Sender: TObject);
begin

  FRMLISTA_CAIXA2 := TFRMLISTA_CAIXA2.create(self);
  FRMLISTA_CAIXA2.showmodal;
end;

procedure TfrmPrincipal.EtiquetasdeProdutos1Click(Sender: TObject);
begin
  frmetiquetador := tfrmetiquetador.create(self);
  frmetiquetador.showmodal;
end;

procedure TfrmPrincipal.OrdemdeServio3Click(Sender: TObject);
begin
  FRMLISTA_OS := TFRMLISTA_OS.create(self);
  FRMLISTA_OS.showmodal;
end;

procedure TfrmPrincipal.ServiosPeridicos1Click(Sender: TObject);
begin
  frmlista_servicos_periodicos := Tfrmlista_servicos_periodicos.create(self);
  frmlista_servicos_periodicos.showmodal;
end;

procedure TfrmPrincipal.PercentualVendasGrupoMarca1Click(Sender: TObject);
begin
  frmlista_abc_marca_grupo := Tfrmlista_abc_marca_grupo.create(self);
  frmlista_abc_marca_grupo.showmodal;
end;

procedure TfrmPrincipal.Fretes1Click(Sender: TObject);
begin
  frmlista_frete := tfrmlista_frete.create(self);
  frmlista_frete.showmodal;
end;

procedure TfrmPrincipal.FluxodeCaixa1Click(Sender: TObject);
begin
  frmfluxo_caixa := tfrmfluxo_caixa.create(self);
  frmfluxo_caixa.showmodal;
end;

procedure TfrmPrincipal.DRE1Click(Sender: TObject);
begin
  FRMDRE := TFRMDRE.create(self);
  FRMDRE.showmodal;
end;

procedure TfrmPrincipal.AgendaTelefnica1Click(Sender: TObject);
begin

  frmagenda := tfrmagenda.create(self);
  frmagenda.showmodal;
end;

procedure TfrmPrincipal.Calculadora1Click(Sender: TObject);
begin
  frmcalc := tfrmcalc.create(self);
  frmcalc.showmodal;
end;

procedure TfrmPrincipal.Configuraes1Click(Sender: TObject);
begin
  if frmPrincipal.autentica('Configura��es', 4) then
  begin
    frmconfig := tfrmconfig.create(self);
    frmconfig.showmodal;
  end
  else
  begin
    application.messagebox('Acesso n�o permitido!', 'Erro!',
      mb_ok + MB_ICONERROR);
  end;
end;

procedure TfrmPrincipal.ExportaodeDados1Click(Sender: TObject);
begin
  if frmPrincipal.autentica('Configura��es', 4) then
  begin
    frmexporta := tfrmexporta.create(self);
    frmexporta.showmodal;
  end
  else
  begin
    application.messagebox('Acesso n�o permitido!', 'Erro!',
      mb_ok + MB_ICONERROR);
  end;
end;

procedure TfrmPrincipal.ControledeRotas1Click(Sender: TObject);
begin
  { mapas_rotas := Tmapas_rotas.create(self);
    mapas_rotas.showmodal; }
end;

procedure TfrmPrincipal.Funcionrios1Click(Sender: TObject);
begin
  FRMFUNCIONARIO := TFRMFUNCIONARIO.create(self);
  FRMFUNCIONARIO.showmodal;
end;

procedure TfrmPrincipal.ConsultaLote1Click(Sender: TObject);
begin
  frmConsultaLote := TfrmConsultaLote.create(self);
  frmConsultaLote.showmodal;
end;

procedure TfrmPrincipal.ConsultaLote2Click(Sender: TObject);
begin
  frmConsultaLote := TfrmConsultaLote.create(self);
  frmConsultaLote.showmodal;
end;

procedure TfrmPrincipal.AtualizarSistema1Click(Sender: TObject);
var
  Hand: THandle;
begin
  application.messagebox(Pchar('Prezado Cliente.O Atualizador ser� inciado,' +
    #13 + 'Ap�s a sua execu��o, se for feito o download de uma nova vers�o,' +
    #13 + 'voc� deve reiniciar o sistema, para que a atualiza��o tenha efeito!!'),
    'Aten��o - Leia [**Muito importante**]', mb_ok + MB_ICONEXCLAMATION);

  Hand := FindWindow('TApplication', 'Atualizador');
  if Hand = 0 then
    frmPrincipal.ExecutePrograma
      ('\Softlogus\server\Atualizacao\Athenas_Atualizador.exe', '');

end;

procedure TfrmPrincipal.ImportarNfe1Click(Sender: TObject);
begin
  frmimporta_nfe := tfrmimporta_nfe.create(self);
  frmimporta_nfe.showmodal;
end;
// novo menu SIGE

procedure TfrmPrincipal.bveiculocClick(Sender: TObject);
begin
  FRMCLIENTE_VEICULO := TFRMCLIENTE_VEICULO.create(self);
  FRMCLIENTE_VEICULO.showmodal;
end;

procedure TfrmPrincipal.S6Click(Sender: TObject);
begin
  close;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmPrincipal.Empresa2Click(Sender: TObject);
begin
  begin
    frmEMPRESA := tfrmEMPRESA.create(self);
    frmEMPRESA.showmodal;
  end;
end;

procedure TfrmPrincipal.Clientes9Click(Sender: TObject);
begin

  frmcliente := tfrmcliente.create(self);
  frmcliente.showmodal;
end;

procedure TfrmPrincipal.Fornecedores6Click(Sender: TObject);
begin

  FRMFORNECEDOR := TFRMFORNECEDOR.create(self);
  FRMFORNECEDOR.showmodal;
end;

procedure TfrmPrincipal.ransportadoras2Click(Sender: TObject);
begin

  frmtransportador := tfrmtransportador.create(self);
  frmtransportador.showmodal;
end;

procedure TfrmPrincipal.Funcionrios3Click(Sender: TObject);
begin
  FRMFUNCIONARIO := TFRMFUNCIONARIO.create(self);
  FRMFUNCIONARIO.showmodal;
end;

procedure TfrmPrincipal.BancosFinanceira2Click(Sender: TObject);
begin

  frmbanco := tfrmbanco.create(self);
  frmbanco.showmodal;
end;

procedure TfrmPrincipal.PlanodeContas3Click(Sender: TObject);
begin

  FRMPLANO := TFRMPLANO.create(self);
  FRMPLANO.showmodal;
end;

procedure TfrmPrincipal.Convnios3Click(Sender: TObject);
begin

  FRMCONVENIO_receber := TFRMCONVENIO_receber.create(self);
  FRMCONVENIO_receber.showmodal;

end;

procedure TfrmPrincipal.Servios3Click(Sender: TObject);
begin

  frmservico := tfrmservico.create(self);
  frmservico.showmodal;

end;

procedure TfrmPrincipal.Setor4Click(Sender: TObject);
begin

  frmsetor := tfrmsetor.create(self);
  frmsetor.showmodal;

end;

procedure TfrmPrincipal.VeculosdeTerceiros3Click(Sender: TObject);
begin

  FRMVEICULO := TFRMVEICULO.create(self);
  FRMVEICULO.showmodal;
end;

procedure TfrmPrincipal.CondiesdePagamento4Click(Sender: TObject);
begin

  FRMCONDPGTO := TFRMCONDPGTO.create(self);
  FRMCONDPGTO.showmodal;
end;

procedure TfrmPrincipal.Cidades4Click(Sender: TObject);
begin
  frmcidade := tfrmcidade.create(self);
  frmcidade.showmodal;
end;

procedure TfrmPrincipal.CNAE4Click(Sender: TObject);
begin
  frmcnae := tfrmcnae.create(self);
  frmcnae.showmodal;
end;

procedure TfrmPrincipal.Cores4Click(Sender: TObject);
begin
  frmcor := tfrmcor.create(self);
  frmcor.showmodal;
end;

procedure TfrmPrincipal.amanhos2Click(Sender: TObject);
begin
  frmtamanho := tfrmtamanho.create(self);
  frmtamanho.showmodal;
end;

procedure TfrmPrincipal.CFOPNaturezadeOperao3Click(Sender: TObject);
begin

  FRMCFOP := TFRMCFOP.create(self);
  FRMCFOP.showmodal;
end;

procedure TfrmPrincipal.CSTCdigodaSituaoTributria4Click(Sender: TObject);
begin

  frmcst := tfrmcst.create(self);
  frmcst.showmodal;

end;

procedure TfrmPrincipal.ModelosdeDocumentosFiscais4Click(Sender: TObject);
begin

  FRMmodelo_fiscal := TFRMmodelo_fiscal.create(self);
  FRMmodelo_fiscal.showmodal;
end;

procedure TfrmPrincipal.ECFCadastrodeEquipamentos4Click(Sender: TObject);
begin

  FRMECF := TFRMECF.create(self);
  FRMECF.showmodal;
end;

procedure TfrmPrincipal.NCMNomeclaturaComumaoMercosul3Click(Sender: TObject);
begin
  frmNcm := tfrmNcm.create(self);
  frmNcm.showmodal;
end;

procedure TfrmPrincipal.CSOSNCdigodeSituaodaOperaonoSimplesNacional2Click
  (Sender: TObject);
begin
  frmxloc_csosn := tfrmxloc_csosn.create(self);
  frmxloc_csosn.showmodal;
end;

procedure TfrmPrincipal.Produtos6Click(Sender: TObject);
begin

  frmmodulo.QRCONFIG.open;
  if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'NORMAL' then
  begin
    frmproduto := tfrmproduto.create(self);
    frmproduto.showmodal;
  end
  else
  begin
    if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'LIGHT'
    then
    begin
      frmproduto_LIGTH := tfrmproduto_LIGTH.create(self);
      frmproduto_LIGTH.showmodal;
    end
    else
    begin
      if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'FARMA'
      then
      begin
        frmproduto_FARMA := tfrmproduto_FARMA.create(self);
        frmproduto_FARMA.showmodal;
      end
      else
      begin
        if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'PECAS'
        then
        begin
          frmproduto_AUTO := tfrmproduto_AUTO.create(self);
          frmproduto_AUTO.showmodal;
        end;
      end;
    end;
  end;

end;

procedure TfrmPrincipal.GruposeSubgrupos3Click(Sender: TObject);
begin

  frmgrupo := tfrmgrupo.create(self);
  frmgrupo.showmodal;
end;

procedure TfrmPrincipal.iCloudAfterLogin(Sender: TObject);
begin
  self.FormShow(self);
end;

procedure TfrmPrincipal.iCloudLogoff(Sender: TObject; IDUser: Integer);
begin
  { showmessage('Voc� ficou mais de 5 minutos inativo' + #13 +
    'Por seguran�a fa�a Login novamente'); }
end;

procedure TfrmPrincipal.NotaFiscaldeEntrada3Click(Sender: TObject);
begin

  frmcompra_menu := tfrmcompra_menu.create(self);
  frmcompra_menu.showmodal;
end;

procedure TfrmPrincipal.ConsultadePreo3Click(Sender: TObject);
begin

  frmmodulo.QRCONFIG.open;
  if (frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'NORMAL') or
    (frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'FARMA') then
  begin
    frmproduto_consultapreco := tfrmproduto_consultapreco.create(self);
    frmproduto_consultapreco.showmodal;
  end
  else
  begin
    if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'LIGHT'
    then
    begin
      frmproduto_consultapreco := tfrmproduto_consultapreco.create(self);
      frmproduto_consultapreco.showmodal;
    end
    else
    begin
      if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'PECAS'
      then
      begin
        frmloc_produto_AUTO := tfrmloc_produto_AUTO.create(self);
        frmloc_produto_AUTO.showmodal;
      end
    end;
  end;
end;

procedure TfrmPrincipal.ConsultaSerial3Click(Sender: TObject);
begin

  frmproduto_consultaserial := tfrmproduto_consultaserial.create(self);
  frmproduto_consultaserial.showmodal;
end;

procedure TfrmPrincipal.ProdutosVendasFaltas3Click(Sender: TObject);
begin

  FRMPRODUTO_FALTA := TFRMPRODUTO_FALTA.create(self);
  FRMPRODUTO_FALTA.showmodal;
end;

procedure TfrmPrincipal.BaixadeEstoque2Click(Sender: TObject);
begin

  frmbaixa_estoque := tfrmbaixa_estoque.create(self);
  frmbaixa_estoque.showmodal;
end;

procedure TfrmPrincipal.PedidodeCompra3Click(Sender: TObject);
begin
  frmproduto_pedido := tfrmproduto_pedido.create(self);
  frmproduto_pedido.showmodal;
end;

procedure TfrmPrincipal.ControledeEntrega3Click(Sender: TObject);
begin

  frmentrega := tfrmentrega.create(self);
  frmentrega.showmodal;
end;

procedure TfrmPrincipal.Industrializao3Click(Sender: TObject);
begin

  frmindustrializacao := tfrmindustrializacao.create(self);
  frmindustrializacao.showmodal;
end;

procedure TfrmPrincipal.IndustrializarClick(Sender: TObject);
begin
  frmindustrializacao := tfrmindustrializacao.create(self);
  frmindustrializacao.showmodal;
end;

function TfrmPrincipal.isFloat(Str: string): double;
begin
  try
    result := strtofloat(Str);

  except
    result := 0;
  end;
end;

function TfrmPrincipal.killtask(ExeFileName: string): Integer;
const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  result := 0;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile))
      = UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile)
      = UpperCase(ExeFileName))) then

      result := Integer(TerminateProcess(OpenProcess(PROCESS_TERMINATE, BOOL(0),
        FProcessEntry32.th32ProcessID), 0));
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);

  end;

  CloseHandle(FSnapshotHandle);

end;

procedure TfrmPrincipal.NotasdeVendas4Click(Sender: TObject);
begin

  FRMNOTAS_VENDA := TFRMNOTAS_VENDA.create(self);
  try {
      for i := 0 to frmnotas_venda.ComponentCount - 1 do
      begin
      if frmnotas_venda.Components[i] is tzquery then
      begin
      tzquery(frmnotas_venda.Components[i]).Connection := frmmodulo.Conexao;
      end;
      end; }
    FRMNOTAS_VENDA.showmodal;
  finally
    FRMNOTAS_VENDA.Release;
    FRMNOTAS_VENDA := nil;
  end;
end;

procedure TfrmPrincipal.NotaFiscal4Click(Sender: TObject);
begin

  frmnotafiscal_menu := tfrmnotafiscal_menu.create(self);
  frmnotafiscal_menu.showmodal;
end;

procedure TfrmPrincipal.MemorandodeExportao4Click(Sender: TObject);
begin

  frmmemorando_menu := Tfrmmemorando_menu.create(self);
  frmmemorando_menu.showmodal;
end;

procedure TfrmPrincipal.mensagensinternasExecute(Sender: TObject);
begin
  // frmmodulo.UCApplicationMessage1.ShowMessages(true);
end;

procedure TfrmPrincipal.SintegraregistroFiscal3Click(Sender: TObject);
begin

  FRMSINTEGRA_gerar := TFRMSINTEGRA_gerar.create(self);
  FRMSINTEGRA_gerar.showmodal;
end;

procedure TfrmPrincipal.ECFSpedFiscal2Click(Sender: TObject);
begin

  frmPrincipal.ExecutePrograma('\Softlogus\server\sped.exe', '');
end;

procedure TfrmPrincipal.ECFMovimentoDirio3Click(Sender: TObject);
begin

  FRMECF_REDUCAO_menu := TFRMECF_REDUCAO_menu.create(self);
  FRMECF_REDUCAO_menu.showmodal;
end;

procedure TfrmPrincipal.Venda4Click(Sender: TObject);
var
  f: textfile;
  slinha: string;
begin

  if USA_TEF then
  begin
    if FileExists(sTEFKoneKPath + 'gp.tmp') then
    begin
      begin
        assignfile(f, sTEFKoneKPath + 'gp.tmp');
        reset(f);
        readln(f, slinha);
        closefile(f);
      end;
    end;

    if slinha = 'TECBAN' then
    begin
      itefTecban := 1;
      sTEFPath := 'C:\TEF_DISC\'
    end
    else
    begin
      sTEFPath := 'C:\TEF_DIAL\';
      itefTecban := 0;
    end;

    TEFVerificaGerenciadorAtivo;
    TEFVerificaArquivosPendentes;
    TEFVerificaOperacaoPendente;
  end;

  frmmodulo.QRCONFIG.open;

  // teste para uso de caixa padrao do usuario autenticado   USA_CAIXA_PADRAO_USUARIO

  // continua venda
  frmmodulo.bcontinua_venda := true;

  // frmOpNatureza := TfrmOpNatureza.create(self);
  // frmOpNatureza.showmodal;
  frmmodulo.natoperacao := 'venda';

  if not frmmodulo.bcontinua_venda then
    Exit;

  if frmmodulo.QRCONFIG.FIELDBYNAME('USA_CAIXA_PADRAO_USUARIO').AsInteger = 1
  then // usa
  begin
    frmmodulo.qrusuario.open;

    if frmmodulo.qrusuario.FIELDBYNAME('COD_CAIXA').asstring <> '' then
    begin
      if frmmodulo.QRCONFIG.FIELDBYNAME('ramo_atividade').AsInteger = 4 then
      begin
        if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1 then
        begin
          // difinir movimentacao

          FRMVENDA_FARMA := TFRMVENDA_FARMA.create(self);
          FRMVENDA_FARMA.showmodal;
        end
        else
        begin
          application.messagebox('Este caixa est� fechado! Favor verificar...',
            'Aten��o', mb_ok + mb_iconwarning);
          Exit;
        end;
      end
      else if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1
      then
      begin

        frmVENDA_INICIO := tfrmVENDA_INICIO.create(self);
        frmVENDA_INICIO.showmodal;
      end
      else
      begin
        application.messagebox('Este caixa est� fechado! Favor verificar...',
          'Aten��o', mb_ok + mb_iconwarning);
      end;
    end
    else
    begin
      application.messagebox
        ('Voce n�o possui um caixa padr�o! Favor verificar com o Administrador!',
        'Aten��o', mb_ok + mb_iconwarning);
      Exit;
    end;

  end
  else
  begin

    if frmmodulo.QRCONFIG.FIELDBYNAME('ramo_atividade').AsInteger = 4 then
    begin
      if frmPrincipal.autentica_caixa('Pedido de Venda', 0) then
      begin
        if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1 then
        begin

          FRMVENDA_FARMA := TFRMVENDA_FARMA.create(self);
          FRMVENDA_FARMA.showmodal;
        end
        else
        begin
          application.messagebox('Este caixa est� fechado! Favor verificar...',
            'Aten��o', mb_ok + mb_iconwarning);
        end;
      end

    end
    else
    begin
      if frmPrincipal.autentica_caixa('Pedido de Venda', 0) then
      begin
        if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1 then
        begin

          frmVENDA_INICIO := tfrmVENDA_INICIO.create(self);
          frmVENDA_INICIO.showmodal;
        end
        else
        begin
          application.messagebox('Este caixa est� fechado! Favor verificar...',
            'Aten��o', mb_ok + mb_iconwarning);
        end;
      end

    end;
  end;

  // codcaixa := frmmodulo.qrcaixa_operador.FIELDBYNAME('codigo').asstring;

end;

procedure TfrmPrincipal.Oramento4Click(Sender: TObject);
begin

  frmorcamento := tfrmorcamento.create(self);
  frmorcamento.showmodal;

end;

procedure TfrmPrincipal.OrdemdeServio4Click(Sender: TObject);
begin
  frmos_menu := tfrmos_menu.create(self);
  frmos_menu.showmodal;
end;

procedure TfrmPrincipal.rocardeUsurio4Click(Sender: TObject);
begin
  with frmPrincipal do
  begin

    if autentica('Trocar de Usu�rio', 1) then
    begin
      nivel_usuario := frmmodulo.qrusuario.FIELDBYNAME('nivel').AsInteger;
      codigo_usuario := frmmodulo.qrusuario.FIELDBYNAME('codigo').asstring;
      // frmprincipal.pstatus.Panels[2].text := frmmodulo.qrusuario.fieldbyname('codigo').asstring;
      // frmprincipal.pstatus.Panels[3].text := frmmodulo.qrusuario.fieldbyname('usuario').asstring;
      if nivel_usuario = 4 then
      begin
        pnormal.visible := false;
        psuper.visible := false; // true;

        qrcx.close;
        qrcx.SQL.clear;
        qrcx.SQL.add('select * from c000045 where codigo = ''000099''');
        qrcx.open;
        if qrcx.recordcount > 0 then
        begin
          lcaixa.caption := qrcx.FIELDBYNAME('data').asstring;
          if qrcx.FIELDBYNAME('situacao').AsInteger = 1 then
            lsit_caixa.caption := 'ABERTO'
          else
            lsit_caixa.caption := 'FECHADO';
        end
        else
        begin
          lcaixa.caption := '---';
          lsit_caixa.caption := '---'
        end;

        qrniver.close;
        qrniver.SQL.clear;
        qrniver.SQL.add
          ('select codigo, nome, nascimento, telefone1, telefone2, celular from c000007 where situacao < 3 and  nascimento like '''
          + copy(datetostr(date), 1, 5) + '/%'' order by nome');
        qrniver.open;

        qrpagar.close;
        qrpagar.SQL.clear;
        qrpagar.SQL.add('select pg.*, forn.nome from c000046 pg, c000009 forn');
        qrpagar.SQL.add
          ('where pg.codfornecedor = forn.codigo and situacao = 1 and');
        qrpagar.SQL.add('data_vencimento = :datax order by data_vencimento ');
        qrpagar.params.parambyname('datax').asdatetime := date;
        qrpagar.open;

        query.close;
        query.SQL.clear;
        query.SQL.add
          ('select sum(entrada) total_entrada, sum(saida) total_saida,');
        query.SQL.add
          ('(select sum(valor)       valor   from c000046 where situacao = 1 and data_vencimento = :datav), ');
        query.SQL.add
          ('(select sum(valor_atual) valor_1 from c000049 where situacao = 1 and data_vencimento = :datav), ');
        query.SQL.add
          ('(select sum(total)       valor_2 from c000048 where data = :datax),');
        query.SQL.add
          ('(select sum(total)       valor_3 from c000051 where conclusao_data = :datax and situacao = ''FECHADA'')');
        query.SQL.add('from c000044 where data = :datax');
        query.params.parambyname('datax').asdatetime := qrcx.FIELDBYNAME('data')
          .asdatetime;
        query.params.parambyname('datav').asdatetime := date;
        query.open;

        ltcaixa.caption := formatfloat('###,###,##0.00',
          query.FIELDBYNAME('total_entrada').asfloat -
          query.FIELDBYNAME('total_saida').asfloat);
        ltpagar.caption := formatfloat('###,###,##0.00',
          query.FIELDBYNAME('valor').asfloat);
        ltreceber.caption := formatfloat('###,###,##0.00',
          query.FIELDBYNAME('valor_1').asfloat);
        ltvenda.caption := formatfloat('###,###,##0.00',
          query.FIELDBYNAME('valor_2').asfloat);
        ltos.caption := formatfloat('###,###,##0.00',
          query.FIELDBYNAME('valor_3').asfloat);
        ltfinal.caption := formatfloat('###,###,##0.00',
          (query.FIELDBYNAME('total_entrada').asfloat -
          query.FIELDBYNAME('total_saida').asfloat) +
          query.FIELDBYNAME('valor_1').asfloat -
          query.FIELDBYNAME('valor').asfloat);

      end
      else
      begin
        pnormal.visible := false; // true;
        psuper.visible := false;
      end;
    end;
  end;
end;

procedure TfrmPrincipal.GerenciamentodeUsurio3Click(Sender: TObject);
begin
  if frmPrincipal.autentica('Config. Usu�rios', nivel_exclusao) then
  begin
    frmusuario := tfrmusuario.create(self);
    frmusuario.showmodal;
  end
  else
  begin
    application.messagebox('Acesso n�o permitido!', 'Erro!',
      mb_ok + MB_ICONERROR);
  end;

end;

procedure TfrmPrincipal.OperadoresdeCaixa3Click(Sender: TObject);
begin
  if autentica('Operador de Caixa', 4) then
  begin
    FRMCAIXA_OPERADOR := TFRMCAIXA_OPERADOR.create(self);
    FRMCAIXA_OPERADOR.showmodal;
  end;

end;

procedure TfrmPrincipal.ArquivodeLog3Click(Sender: TObject);
begin

  if frmPrincipal.autentica('Log de Usu�rios', nivel_exclusao) then
  begin
    frmusuario_log := tfrmusuario_log.create(self);
    frmusuario_log.showmodal;
  end
  else
  begin
    application.messagebox('Acesso n�o permitido!', 'Erro!',
      mb_ok + MB_ICONERROR);
  end;

end;

procedure TfrmPrincipal.DRE3Click(Sender: TObject);
begin
  FRMDRE := TFRMDRE.create(self);
  FRMDRE.showmodal;
end;

procedure TfrmPrincipal.Fretes3Click(Sender: TObject);
begin
  frmlista_frete := tfrmlista_frete.create(self);
  frmlista_frete.showmodal;
end;

procedure TfrmPrincipal.ServiosPeridicos3Click(Sender: TObject);
begin

  frmlista_servicos_periodicos := Tfrmlista_servicos_periodicos.create(self);
  frmlista_servicos_periodicos.showmodal;
end;

procedure TfrmPrincipal.OrdensdeServio2Click(Sender: TObject);
begin
  FRMLISTA_OS := TFRMLISTA_OS.create(self);
  FRMLISTA_OS.showmodal;

end;

procedure TfrmPrincipal.FluxodeCaixa3Click(Sender: TObject);
begin
  frmfluxo_caixa := tfrmfluxo_caixa.create(self);
  frmfluxo_caixa.showmodal;
end;

procedure TfrmPrincipal.Caixa7Click(Sender: TObject);
begin

  FRMLISTA_CAIXA2 := TFRMLISTA_CAIXA2.create(self);
  FRMLISTA_CAIXA2.showmodal;
end;

procedure TfrmPrincipal.ContasaReceber5Click(Sender: TObject);
begin

  FRMLISTA_RECEBER2 := TFRMLISTA_RECEBER2.create(self);
  FRMLISTA_RECEBER2.showmodal;
end;

procedure TfrmPrincipal.ContasaPagar7Click(Sender: TObject);
begin

  FRMLISTA_PAGAR2 := TFRMLISTA_PAGAR2.create(self);
  FRMLISTA_PAGAR2.showmodal;

end;

procedure TfrmPrincipal.PercentualVendasGrupoMarca3Click(Sender: TObject);
begin
  frmlista_abc_marca_grupo := Tfrmlista_abc_marca_grupo.create(self);
  frmlista_abc_marca_grupo.showmodal;
end;

procedure TfrmPrincipal.Vendas4Click(Sender: TObject);
begin

  FRMLISTA_VENDA2 := TFRMLISTA_VENDA2.create(self);
  FRMLISTA_VENDA2.showmodal;

end;

procedure TfrmPrincipal.EtiquetasdeProdutos3Click(Sender: TObject);
begin
  frmetiquetador := tfrmetiquetador.create(self);
  frmetiquetador.showmodal;
end;

procedure TfrmPrincipal.Produtos7Click(Sender: TObject);
begin

  FRMLISTA_PRODUTO2 := TFRMLISTA_PRODUTO2.create(self);
  FRMLISTA_PRODUTO2.showmodal;
end;

procedure TfrmPrincipal.Fornecedores7Click(Sender: TObject);
begin
  FRMLISTA_FORNECEDOR2 := TFRMLISTA_FORNECEDOR2.create(self);
  FRMLISTA_FORNECEDOR2.showmodal;
end;

procedure TfrmPrincipal.Clientes11Click(Sender: TObject);
begin
  FRMLISTA_CLIENTE2 := TFRMLISTA_CLIENTE2.create(self);
  FRMLISTA_CLIENTE2.showmodal;
end;

procedure TfrmPrincipal.Configuraes3Click(Sender: TObject);
begin
  if frmPrincipal.autentica('Configura��es', 4) then
  begin
    frmconfig := tfrmconfig.create(self);
    frmconfig.showmodal;
  end
  else
  begin
    application.messagebox('Acesso n�o permitido!', 'Erro!',
      mb_ok + MB_ICONERROR);
  end;
end;

procedure TfrmPrincipal.A1Click(Sender: TObject);
begin

  frmagenda := tfrmagenda.create(self);
  frmagenda.showmodal;

end;

procedure TfrmPrincipal.Caixa6Click(Sender: TObject);
begin

  if frmPrincipal.autentica_caixa('Acesso ao Caixa', 0) then
  begin
    frmcaixa := tfrmcaixa.create(self);
    frmcaixa.showmodal;
  end
  else
  begin
    application.messagebox('N�o autorizado!', 'Aviso', mb_ok + MB_ICONERROR);
  end;

end;

procedure TfrmPrincipal.ContasaPagar6Click(Sender: TObject);
begin

  FRMCONTASPAGAR := TFRMCONTASPAGAR.create(self);
  FRMCONTASPAGAR.showmodal;
end;

procedure TfrmPrincipal.ContsasaReceber2Click(Sender: TObject);
begin

  frmcontasreceber := tfrmcontasreceber.create(self);
  frmcontasreceber.showmodal;

end;

procedure TfrmPrincipal.Financeira3Click(Sender: TObject);
begin

  frmFinanceira := tfrmFinanceira.create(self);
  frmFinanceira.showmodal;
end;

procedure TfrmPrincipal.Cheques3Click(Sender: TObject);
begin

  FrmCHEQUE_MENU := tfrmCHEQUE_MENU.create(self);
  FrmCHEQUE_MENU.showmodal;
end;

procedure TfrmPrincipal.ContaCorrente3Click(Sender: TObject);
begin

  frmcontacorrente := tfrmcontacorrente.create(self);
  frmcontacorrente.showmodal;
end;

procedure TfrmPrincipal.Clientes10Click(Sender: TObject);
begin

  frmcliente_financeiro := tfrmcliente_financeiro.create(self);
  frmcliente_financeiro.showmodal;
end;

procedure TfrmPrincipal.BoletoBancrio3Click(Sender: TObject);
begin

  FRMBOLETO := TFRMBOLETO.create(self);
  FRMBOLETO.showmodal;

end;

procedure TfrmPrincipal.CartodeCrdito3Click(Sender: TObject);
begin

  frmcartao := tfrmcartao.create(self);
  frmcartao.showmodal;
end;

procedure TfrmPrincipal.Convnio3Click(Sender: TObject);
begin

  FRMCONVENIO_receber := TFRMCONVENIO_receber.create(self);
  FRMCONVENIO_receber.showmodal;
end;

// procedure TfrmPrincipal.tlZillowClick(Sender: TdxTileControlItem);
// begin

// frmcompra_menu := tfrmcompra_menu.create(self);
// frmcompra_menu.showmodal;

// end;

// procedure TfrmPrincipal.tlMortgageRatesClick(Sender: TdxTileControlItem);
// begin

// frmmodulo.QRCONFIG.open;
// if (frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'NORMAL') or
// (frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'FARMA') then
// begin
// frmproduto_consultapreco := tfrmproduto_consultapreco.create(self);
// frmproduto_consultapreco.showmodal;
// end
// else
// begin
// if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'LIGHT'
// then
// begin
// frmproduto_consultapreco := tfrmproduto_consultapreco.create(self);
// frmproduto_consultapreco.showmodal;
// end
// else
// begin
// if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'PECAS'
// then
// begin
// frmloc_produto_AUTO := tfrmloc_produto_AUTO.create(self);
// frmloc_produto_AUTO.showmodal;
// end
// end;
// end;

// end;

procedure TfrmPrincipal.SobreoSistemaiCloud1Click(Sender: TObject);
begin
  form_sobre := tform_sobre.create(self);
  form_sobre.showmodal;

end;

// procedure TfrmPrincipal.dxTileControl1dxTileControlActionBarItem1Click
// (Sender: TdxTileControlActionBarItem);
// begin
// form_sobre := tform_sobre.create(self);
// form_sobre.showmodal;
// end;

// procedure TfrmPrincipal.dxTileControl1dxTileControlActionBarItem2Click
// (Sender: TdxTileControlActionBarItem);
// begin
// Form_ativacao.showmodal;
// end;

// procedure TfrmPrincipal.dxTileControl1dxTileControlActionBarItem3Click
// (Sender: TdxTileControlActionBarItem);
// begin
// close;
// end;

// procedure TfrmPrincipal.dxTiledxTileControlActionBarItem1Click
// (Sender: TdxTileControlActionBarItem);
// begin
// form_sobre := tform_sobre.create(self);
// form_sobre.showmodal;

// end;

// procedure TfrmPrincipal.dxTiledxTileControlActionBarItem2Click
// (Sender: TdxTileControlActionBarItem);
// begin
// Form_ativacao.showmodal;
// end;

// procedure TfrmPrincipal.dxTiledxTileControlActionBarItem3Click
// (Sender: TdxTileControlActionBarItem);
// begin
// close;
// end;

// procedure TfrmPrincipal.dxTiledxTileControlItem10Click
// (Sender: TdxTileControlItem);
// begin
// close;
// end;

// procedure TfrmPrincipal.dxTiledxTileControlItem1Click
// (Sender: TdxTileControlItem);
// begin
// frmcliente := tfrmcliente.create(self);
// frmcliente.showmodal;
// end;

// procedure TfrmPrincipal.dxTiledxTileControlItem2Click
// (Sender: TdxTileControlItem);
// begin
// frmmodulo.QRCONFIG.open;
// if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'NORMAL' then
// begin
// frmproduto := tfrmproduto.create(self);
// frmproduto.showmodal;
// end
// else
// begin
// if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'LIGHT'
// then
// begin
// frmproduto_LIGTH := tfrmproduto_LIGTH.create(self);
// frmproduto_LIGTH.showmodal;
// end
// else
// begin
// if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'FARMA'
// then
// begin
// frmproduto_FARMA := tfrmproduto_FARMA.create(self);
// frmproduto_FARMA.showmodal;
// end
// else
// begin
// if frmmodulo.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').asstring = 'PECAS'
// then
// begin
// frmproduto_AUTO := tfrmproduto_AUTO.create(self);
// frmproduto_AUTO.showmodal;
// end;
// end;
// end;
// end;
// end;

// procedure TfrmPrincipal.dxTiledxTileControlItem3Click
// (Sender: TdxTileControlItem);
// begin
// FRMFORNECEDOR := TFRMFORNECEDOR.create(self);
// FRMFORNECEDOR.showmodal;
// end;

// procedure TfrmPrincipal.dxTiledxTileControlItem4Click
// (Sender: TdxTileControlItem);
// begin
// frmcompra_menu := tfrmcompra_menu.create(self);
// frmcompra_menu.showmodal;
// end;

// procedure TfrmPrincipal.dxTiledxTileControlItem5Click
// (Sender: TdxTileControlItem);
// begin
// if frmPrincipal.autentica_caixa('Acesso ao Caixa', 0) then
// begin
// frmcaixa := tfrmcaixa.create(self);
// frmcaixa.showmodal;
// end
// else
// begin
// application.messagebox('N�o autorizado!', 'Aviso', mb_ok + MB_ICONERROR);
// end;
// end;

// procedure TfrmPrincipal.dxTiledxTileControlItem6Click
// (Sender: TdxTileControlItem);
// begin
// FRMCONTASPAGAR := TFRMCONTASPAGAR.create(self);
// FRMCONTASPAGAR.showmodal;
// end;

// procedure TfrmPrincipal.dxTiledxTileControlItem7Click
// (Sender: TdxTileControlItem);
// begin
// frmcontasreceber := tfrmcontasreceber.create(self);
// frmcontasreceber.showmodal;
// end;

// procedure TfrmPrincipal.dxTiledxTileControlItem8Click
// (Sender: TdxTileControlItem);
// begin
// FRMNOTAS_VENDA := TFRMNOTAS_VENDA.create(self);
// try {
// for i := 0 to frmnotas_venda.ComponentCount - 1 do
// begin
// if frmnotas_venda.Components[i] is tzquery then
// begin
// tzquery(frmnotas_venda.Components[i]).Connection := frmmodulo.Conexao;
// end;
// end; }
// FRMNOTAS_VENDA.showmodal;
// finally
// FRMNOTAS_VENDA.Release;
// FRMNOTAS_VENDA := nil;
// end;
// end;

// procedure TfrmPrincipal.dxTiledxTileControlItem9Click
// (Sender: TdxTileControlItem);
// begin
// frmnotafiscal_menu := tfrmnotafiscal_menu.create(self);
// frmnotafiscal_menu.showmodal;
// end;

// procedure TfrmPrincipal.dxtlcntrltmTileItem3Click(Sender: TdxTileControlItem);
// begin
// with frmPrincipal do
// begin
//
// if autentica('Trocar de Usu�rio', 1) then
// begin
// nivel_usuario := frmmodulo.qrusuario.FIELDBYNAME('nivel').AsInteger;
// codigo_usuario := frmmodulo.qrusuario.FIELDBYNAME('codigo').asstring;
// // frmprincipal.pstatus.Panels[2].text := frmmodulo.qrusuario.fieldbyname('codigo').asstring;
// // frmprincipal.pstatus.Panels[3].text := frmmodulo.qrusuario.fieldbyname('usuario').asstring;
// if nivel_usuario = 4 then
// begin
// pnormal.visible := false;
// psuper.visible := false; // true;
//
// qrcx.close;
// qrcx.SQL.clear;
// qrcx.SQL.add('select * from c000045 where codigo = ''000099''');
// qrcx.open;
// if qrcx.recordcount > 0 then
// begin
// lcaixa.caption := qrcx.FIELDBYNAME('data').asstring;
// if qrcx.FIELDBYNAME('situacao').AsInteger = 1 then
// lsit_caixa.caption := 'ABERTO'
// else
// lsit_caixa.caption := 'FECHADO';
// end
// else
// begin
// lcaixa.caption := '---';
// lsit_caixa.caption := '---'
// end;
//
// qrniver.close;
// qrniver.SQL.clear;
// qrniver.SQL.add
// ('select codigo, nome, nascimento, telefone1, telefone2, celular from c000007 where situacao < 3 and  nascimento like '''
// + copy(datetostr(date), 1, 5) + '/%'' order by nome');
// qrniver.open;
//
// qrpagar.close;
// qrpagar.SQL.clear;
// qrpagar.SQL.add('select pg.*, forn.nome from c000046 pg, c000009 forn');
// qrpagar.SQL.add
// ('where pg.codfornecedor = forn.codigo and situacao = 1 and');
// qrpagar.SQL.add('data_vencimento = :datax order by data_vencimento ');
// qrpagar.params.parambyname('datax').asdatetime := date;
// qrpagar.open;
//
// query.close;
// query.SQL.clear;
// query.SQL.add
// ('select sum(entrada) total_entrada, sum(saida) total_saida,');
// query.SQL.add
// ('(select sum(valor)       valor   from c000046 where situacao = 1 and data_vencimento = :datav), ');
// query.SQL.add
// ('(select sum(valor_atual) valor_1 from c000049 where situacao = 1 and data_vencimento = :datav), ');
// query.SQL.add
// ('(select sum(total)       valor_2 from c000048 where data = :datax),');
// query.SQL.add
// ('(select sum(total)       valor_3 from c000051 where conclusao_data = :datax and situacao = ''FECHADA'')');
// query.SQL.add('from c000044 where data = :datax');
// query.params.parambyname('datax').asdatetime := qrcx.FIELDBYNAME('data')
// .asdatetime;
// query.params.parambyname('datav').asdatetime := date;
// query.open;
//
// ltcaixa.caption := formatfloat('###,###,##0.00',
// query.FIELDBYNAME('total_entrada').asfloat -
// query.FIELDBYNAME('total_saida').asfloat);
// ltpagar.caption := formatfloat('###,###,##0.00',
// query.FIELDBYNAME('valor').asfloat);
// ltreceber.caption := formatfloat('###,###,##0.00',
// query.FIELDBYNAME('valor_1').asfloat);
// ltvenda.caption := formatfloat('###,###,##0.00',
// query.FIELDBYNAME('valor_2').asfloat);
// ltos.caption := formatfloat('###,###,##0.00',
// query.FIELDBYNAME('valor_3').asfloat);
// ltfinal.caption := formatfloat('###,###,##0.00',
// (query.FIELDBYNAME('total_entrada').asfloat -
// query.FIELDBYNAME('total_saida').asfloat) +
// query.FIELDBYNAME('valor_1').asfloat -
// query.FIELDBYNAME('valor').asfloat);
//
// end
// else
// begin
// pnormal.visible := false; // true;
// psuper.visible := false;
// end;
// end;
// end;
//
// end;

// procedure TfrmPrincipal.dxtlcntrltmTileItem6Click(Sender: TdxTileControlItem);
// begin

// frmgrupo := tfrmgrupo.create(self);
// frmgrupo.showmodal;

// end;

procedure TfrmPrincipal.E1Click(Sender: TObject);
begin

  FRMBALANCA := TFRMBALANCA.create(self);
  FRMBALANCA.showmodal;
end;

procedure TfrmPrincipal.A2Click(Sender: TObject);
begin
  Form_ativacao.showmodal;
end;

procedure TfrmPrincipal.A3Click(Sender: TObject);
begin
  // frmmodulo.UCApplicationMessage1.ShowMessages(true);
end;

procedure TfrmPrincipal.A6Click(Sender: TObject);
begin
  if frmmodulo.qrcaixa_operador.FIELDBYNAME('situacao').AsInteger = 1 then
  begin
    frmprevenda := tfrmprevenda.create(self);
    frmprevenda.lcodcaixa.caption := frmmodulo.qrcaixa_operador.FIELDBYNAME
      ('codigo').asstring;
    frmprevenda.lcaixa.caption := frmmodulo.qrcaixa_operador.FIELDBYNAME
      ('nome').asstring;
    frmprevenda.showmodal;

  end
  else
  begin
    application.messagebox('Este caixa est� fechado! Favor verificar...',
      'Aten��o', mb_ok + mb_iconwarning);
  end;
end;

end.
