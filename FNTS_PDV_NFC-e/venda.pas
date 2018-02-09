unit venda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLabel, jpeg, ExtCtrls, Mask, RzEdit, AdvOfficeImage,
  AdvSmoothButton, NxColumnClasses, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, AdvReflectionLabel, DB, MemDS,
  DBAccess, IBC, TFlatPanelUnit, Menus, Buttons, RzPanel, AdvGlowButton,
  RzCmboBx, AdvCombo, TFlatComboBoxUnit, ACBrBase, ACBrBAL, ACBrDIS,
  AdvMenus, principal, FileCtrl, FlCtrlEx, ImgList,
  ActnList, XPStyleActnCtrls, ActnMan, StrUtils,
  pngimage, Clipbrd, AdvPicture, AdvGDIPicture, AdvReflectionImage, acPNG,
  uZintBarcode, pcnAuxiliar, pcnConversao, ACBrUtil,
  ACBrNFe, ACBrNFeDANFEClass, System.Actions,
  pcnNFeW, pcnNFeRTXT, ACBrDFeUtil,
  XMLIntf, XMLDoc, ACBrNFeDANFEFR, frxClass, frxDesgn,
  ACBrEAD, pcnConversaoNFe ;

  {
  ACBrNFeDANFERav
  ACBrNFeDANFERaveCB
  ACBrNFeUtil
  }

type
  // tipo de imagens do dislplay
  Tipo_Imagem = (tiNenhum, tiLivre, tiErro, tiOk, tiAlerta, tiInfo, tiFechado,
    tiExcluir, tiPergunta, tiPgto, tiCliente, tiPeso);

type
  // tipo de transacao tef
  TTef_Tipo = (Tef_Venda_Cartao, Tef_Venda_Cheque);

type
  TfrmVenda = class(TForm)
    pn_tampa: TFlatPanel;
    fl: TFileListBoxEx;
    PN_POSTO: TFlatPanel;
    Edit1: TEdit;
    Shape1: TShape;
    grid_abastecimento: TNextGrid;
    NxDateColumn1: TNxDateColumn;
    NxTextColumn9: TNxTextColumn;
    NxTextColumn10: TNxTextColumn;
    NxTextColumn11: TNxTextColumn;
    NxTextColumn12: TNxTextColumn;
    NxNumberColumn20: TNxNumberColumn;
    NxNumberColumn21: TNxNumberColumn;
    NxNumberColumn22: TNxNumberColumn;
    NxNumberColumn23: TNxNumberColumn;
    NxNumberColumn24: TNxNumberColumn;
    NxNumberColumn25: TNxNumberColumn;
    grid_bico: TNextGrid;
    NxTextColumn6: TNxTextColumn;
    NxTextColumn7: TNxTextColumn;
    NxTextColumn8: TNxTextColumn;
    NxNumberColumn19: TNxNumberColumn;
    RzLabel4: TRzLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    sh_status_conexao: TShape;
    lb_status_conexao: TLabel;
    Image4: TImage;
    NxTextColumn13: TNxTextColumn;
    NxTextColumn14: TNxTextColumn;
    NxNumberColumn26: TNxNumberColumn;
    Button2: TButton;
    NxTextColumn15: TNxTextColumn;
    NxTextColumn16: TNxTextColumn;
    NxTextColumn17: TNxTextColumn;
    NxTextColumn18: TNxTextColumn;
    pnFundo: TPanel;
    pn_principal: TPanel;
    imgFundo: TImage;
    Image1: TImage;
    img_logo: TAdvOfficeImage;
    lb_produto: TRzLabel;
    lb_total: TRzLabel;
    RzLabel1: TRzLabel;
    LB_MENU_FISCAL: TRzLabel;
    RzLabel3: TRzLabel;
    lb_operador: TRzLabel;
    RzLabel5: TRzLabel;
    lb_ecf_caixa: TRzLabel;
    lb_numero_serie: TRzLabel;
    img_erro: TAdvOfficeImage;
    img_alerta: TAdvOfficeImage;
    img_ok: TAdvOfficeImage;
    img_info: TAdvOfficeImage;
    img_fechado: TAdvOfficeImage;
    img_excluir: TAdvOfficeImage;
    img_pergunta: TAdvOfficeImage;
    lb_item: TRzLabel;
    img_pgto: TAdvOfficeImage;
    img_cliente: TAdvOfficeImage;
    img_peso: TAdvOfficeImage;
    img_livre: TAdvOfficeImage;
    img_fundo: TAdvOfficeImage;
    img_borda: TAdvOfficeImage;
    lb_carga: TRzLabel;
    imgCinza: TImage;
    imgVerde: TImage;
    imgAmarela: TImage;
    imgImpressora: TAdvOfficeImage;
    lbCodBarras: TRzLabel;
    img_produto: TImage;
    ed_qtde: TRzNumericEdit;
    ed_unitario: TRzNumericEdit;
    ed_total_item: TRzNumericEdit;
    ed_barra: TRzEdit;
    Panel1: TPanel;
    grid_topo: TNextGrid;
    NxHtmlColumn2: TNxHtmlColumn;
    NxNumberColumn9: TNxNumberColumn;
    NxNumberColumn10: TNxNumberColumn;
    NxTextColumn3: TNxTextColumn;
    NxNumberColumn11: TNxNumberColumn;
    NxNumberColumn12: TNxNumberColumn;
    NxNumberColumn13: TNxNumberColumn;
    NxNumberColumn14: TNxNumberColumn;
    NxNumberColumn15: TNxNumberColumn;
    NxNumberColumn16: TNxNumberColumn;
    NxTextColumn4: TNxTextColumn;
    grid: TNextGrid;
    NxHtmlColumn1: TNxHtmlColumn;
    NxNumberColumn8: TNxNumberColumn;
    NxNumberColumn1: TNxTextColumn;
    NxNumberColumn17: TNxNumberColumn;
    NxTextColumn1: TNxTextColumn;
    NxNumberColumn2: TNxNumberColumn;
    NxNumberColumn3: TNxNumberColumn;
    NxNumberColumn5: TNxNumberColumn;
    NxNumberColumn6: TNxNumberColumn;
    NxNumberColumn4: TNxNumberColumn;
    NxNumberColumn7: TNxNumberColumn;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn5: TNxTextColumn;
    NxNumberColumn18: TNxNumberColumn;
    nxTamanho: TNxTextColumn;
    nxCor: TNxTextColumn;
    ed_foco: TEdit;
    pn_fechamento: TFlatPanel;
    RzLabel2: TRzLabel;
    RzLabel48: TRzLabel;
    RzLabel50: TRzLabel;
    ED_DESC_ACRE: TRzNumericEdit;
    ed_total_pagar: TRzNumericEdit;
    ed_forma1: TRzNumericEdit;
    cb_forma1: TFlatComboBox;
    cb_desc_acre: TFlatComboBox;
    ed_forma2: TRzNumericEdit;
    cb_forma2: TFlatComboBox;
    ed_forma3: TRzNumericEdit;
    cb_forma3: TFlatComboBox;
    ed_totalizador: TRzNumericEdit;
    ed_troco: TRzNumericEdit;
    FlatPanel2: TFlatPanel;
    bt_confirmar_fechamento: TAdvGlowButton;
    bt_cancelar_fechamento: TAdvGlowButton;
    ED_FOCUS: TEdit;
    pn_cancelar_item: TFlatPanel;
    Shape3: TShape;
    lb_cancelar_item: TRzLabel;
    AdvOfficeImage1: TAdvOfficeImage;
    ed_cancelar_item: TRzNumericEdit;
    pn_cancelar_item_botoes: TFlatPanel;
    bt_cancelar_item_sim: TAdvGlowButton;
    bt_cancelar_item_nao: TAdvGlowButton;
    pn_senha_cancelar: TFlatPanel;
    Shape2: TShape;
    lb_cancelar: TRzLabel;
    AdvOfficeImage3: TAdvOfficeImage;
    ed_senha: TRzEdit;
    query: TIBCQuery;
    timer_balanca: TTimer;
    pop_principal: TAdvPopupMenu;
    Opes1: TMenuItem;
    PesquisadeProdutos1: TMenuItem;
    FecharCupom1: TMenuItem;
    CancelarCupom1: TMenuItem;
    CancelarItem1: TMenuItem;
    ConsultadePreos1: TMenuItem;
    ConsultadeClientes1: TMenuItem;
    MenuFiscal2: TMenuItem;
    menu_Prevenda: TMenuItem;
    AcionaBalana1: TMenuItem;
    AcionaGaveta1: TMenuItem;
    Cupons1: TMenuItem;
    Atendimento1: TMenuItem;
    Recebimento1: TMenuItem;
    Oramento1: TMenuItem;
    Menu_os: TMenuItem;
    menu_mesa: TMenuItem;
    Comandas1: TMenuItem;
    Abastecimento1: TMenuItem;
    Fabricao1: TMenuItem;
    Caixa1: TMenuItem;
    FecharCaixa1: TMenuItem;
    Suprimento1: TMenuItem;
    Sangria1: TMenuItem;
    CaixaIndisponvel1: TMenuItem;
    rocarOperador1: TMenuItem;
    EF1: TMenuItem;
    EFModoAdministrativo1: TMenuItem;
    EFCancelamento1: TMenuItem;
    Dados1: TMenuItem;
    AtualizarPDV1: TMenuItem;
    N1: TMenuItem;
    AtualizarServidor1: TMenuItem;
    N3: TMenuItem;
    Assinararquivo1: TMenuItem;
    N2: TMenuItem;
    Retornar1: TMenuItem;
    Sair1: TMenuItem;
    pop_fechamento: TAdvPopupMenu;
    Voltar1: TMenuItem;
    DescontoouAcrscimo1: TMenuItem;
    Cancelar1: TMenuItem;
    qrForma: TIBCQuery;
    query2: TIBCQuery;
    query3: TIBCQuery;
    qrAbastecimento: TIBCQuery;
    timer_bico: TTimer;
    timer_abastecimento: TTimer;
    timer_resposta: TTimer;
    timer_carga: TTimer;
    pmPopMenuECF: TPopupMenu;
    trocaImpressao: TMenuItem;
    actmgr1: TActionManager;
    act1: TAction;
    TimerTroco: TTimer;
    AdvReflectionImage1: TAdvReflectionImage;
    Zint: TZintBarcodeComponent;
    MemoDados: TMemo;
    qrProdNCFE: TIBCQuery;
    qrapoio: TIBCQuery;
    QRCSOSN: TIBCQuery;
    RzLabel6: TRzLabel;
    lbl3: TRzLabel;
    lbl1: TRzLabel;
    lbl4: TRzLabel;
    lbl5: TRzLabel;
    lbl2: TLabel;
    lbl6: TRzLabel;
    lblCupomSimples: TMenuItem;
    lblCupomEletronico: TMenuItem;

    function TEF_Cartao(bandeira: Tbandeira_tef): boolean;
    function TEF_Cheque(bandeira: Tbandeira_tef): boolean;

    procedure Cancela_cupom_aberto();
    procedure Cancela_cupom_fechado();
    procedure Cancela_Item(sItem: string);
    procedure Registra_Item();
    procedure Limpa_controles();
    procedure Imprime_display(texto: string; cor_da_fonte: tcolor;
      Imagem: Tipo_Imagem);
    procedure Imprime_display_anterior;
    function Abre_Venda(): boolean;
    function Truncar_Valor(valor: real): real;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ed_barraKeyPress(Sender: TObject; var Key: Char);
    procedure CancelarItem1Click(Sender: TObject);
    procedure ed_cancelar_itemEnter(Sender: TObject);
    procedure ed_cancelar_itemExit(Sender: TObject);
    procedure ed_cancelar_itemKeyPress(Sender: TObject; var Key: Char);
    procedure bt_cancelar_item_naoClick(Sender: TObject);
    procedure ed_barraEnter(Sender: TObject);
    procedure bt_cancelar_item_simClick(Sender: TObject);
    procedure MenuFiscal2Click(Sender: TObject);
    procedure Retornar1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure CancelarCupom1Click(Sender: TObject);
    procedure ed_barraExit(Sender: TObject);
    procedure ED_DESC_ACREEnter(Sender: TObject);
    procedure ED_DESC_ACREExit(Sender: TObject);
    procedure FecharCupom1Click(Sender: TObject);
    procedure ed_total_pagarEnter(Sender: TObject);
    procedure ed_forma1Enter(Sender: TObject);
    procedure ed_forma2Enter(Sender: TObject);
    procedure ed_forma3Enter(Sender: TObject);
    procedure ed_totalizadorEnter(Sender: TObject);
    procedure ed_trocoEnter(Sender: TObject);
    procedure ed_total_pagarExit(Sender: TObject);
    procedure ed_forma1Exit(Sender: TObject);
    procedure ed_forma2Exit(Sender: TObject);
    procedure ed_forma3Exit(Sender: TObject);
    procedure ed_totalizadorExit(Sender: TObject);
    procedure ed_trocoExit(Sender: TObject);
    procedure cb_desc_acreChange(Sender: TObject);
    procedure DescontoouAcrscimo1Click(Sender: TObject);
    procedure ED_DESC_ACREKeyPress(Sender: TObject; var Key: Char);
    procedure cb_forma1KeyPress(Sender: TObject; var Key: Char);
    procedure cb_forma2KeyPress(Sender: TObject; var Key: Char);
    procedure cb_forma3KeyPress(Sender: TObject; var Key: Char);
    procedure cb_forma2Exit(Sender: TObject);
    procedure cb_forma3Exit(Sender: TObject);
    procedure ed_forma3KeyPress(Sender: TObject; var Key: Char);
    procedure bt_confirmar_fechamentoEnter(Sender: TObject);
    procedure bt_cancelar_fechamentoEnter(Sender: TObject);
    procedure bt_confirmar_fechamentoClick(Sender: TObject);
    procedure ed_trocoChange(Sender: TObject);
    procedure ed_total_itemKeyPress(Sender: TObject; var Key: Char);
    procedure ed_qtdeExit(Sender: TObject);
    procedure ed_qtdeEnter(Sender: TObject);
    procedure ed_unitarioEnter(Sender: TObject);
    procedure ed_total_itemEnter(Sender: TObject);
    procedure ed_senhaEnter(Sender: TObject);
    procedure ed_senhaExit(Sender: TObject);
    procedure ed_senhaKeyPress(Sender: TObject; var Key: Char);
    procedure timer_balancaTimer(Sender: TObject);
    procedure AcionaBalana1Click(Sender: TObject);
    procedure cb_forma1Enter(Sender: TObject);
    procedure cb_forma1Change(Sender: TObject);
    procedure cb_forma2Enter(Sender: TObject);
    procedure cb_forma2Change(Sender: TObject);
    procedure cb_forma3Change(Sender: TObject);
    procedure cb_forma3Enter(Sender: TObject);
    procedure ed_forma1KeyPress(Sender: TObject; var Key: Char);
    procedure ed_forma2KeyPress(Sender: TObject; var Key: Char);
    procedure ConsultadeClientes1Click(Sender: TObject);
    procedure ConsultadePreos1Click(Sender: TObject);
    procedure Opes1Click(Sender: TObject);
    procedure PesquisadeProdutos1Click(Sender: TObject);
    procedure Cupons1Click(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure bt_cancelar_fechamentoClick(Sender: TObject);
    procedure AcionaGaveta1Click(Sender: TObject);
    procedure FecharCaixa1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Sangria1Click(Sender: TObject);
    procedure Suprimento1Click(Sender: TObject);
    procedure EFCancelamento1Click(Sender: TObject);
    procedure EFModoAdministrativo1Click(Sender: TObject);
    procedure rocarOperador1Click(Sender: TObject);
    procedure CaixaIndisponvel1Click(Sender: TObject);
    procedure menu_PrevendaClick(Sender: TObject);
    procedure MeiosdePagamento1Click(Sender: TObject);
    procedure AtualizarPDV1Click(Sender: TObject);
    procedure Oramento1Click(Sender: TObject);
    procedure Assinararquivo1Click(Sender: TObject);
    procedure Recebimento1Click(Sender: TObject);
    procedure Menu_osClick(Sender: TObject);
    procedure timer_bicoTimer(Sender: TObject);
    procedure timer_abastecimentoTimer(Sender: TObject);
    procedure grid_abastecimentoKeyPress(Sender: TObject; var Key: Char);
    procedure grid_abastecimentoEnter(Sender: TObject);
    procedure menu_mesaClick(Sender: TObject);
    procedure ComPort1RxChar(Sender: TObject; Count: Integer);
    procedure timer_respostaTimer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Abastecimento1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Fabricao1Click(Sender: TObject);
    procedure Voltar1Click(Sender: TObject);
    procedure timer_cargaTimer(Sender: TObject);
    procedure ed_unitarioKeyPress(Sender: TObject; var Key: Char);
    procedure trocaImpressaoClick(Sender: TObject);
    procedure act1Execute(Sender: TObject);
    procedure Comandas1Click(Sender: TObject);
    procedure TimerTrocoTimer(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure MemoDadosChange(Sender: TObject);
    procedure lblCupomSimplesClick(Sender: TObject);
    procedure lblCupomEletronicoClick(Sender: TObject);
    procedure AtualizarServidor1Click(Sender: TObject);
    procedure flChange(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    a, b: word;
    iImpressora: Integer;
    function ImgTipoImpressora(i: Integer): TImpressora;
    procedure MostraFotoProduto(b: boolean);
    procedure MostraLogoMarca(b: boolean);
    procedure AcionarGuilhotinaNaoFiscal;
    procedure CentralizarPanel(p: TPanel);
    procedure PrepararNFCE;
    procedure GerarNFCe(NumNFe: String);
    procedure CorEditTotaL;
    //procedure OnInternetChange(LANStatus:TLANStatus;InternetStatus:TInternetStatus;xMsg:String='');
   // procedure GerarQrCode;
  public
    { Public declarations }
    procedure EnviaComando(comando: string; timeout: Integer);
    function Localizar_Produto(referencia: string): boolean;
    function TEF_Pagamento(Tef_tipo: TTef_Tipo): boolean;
    procedure SetScreenResolution(AWidth, AHeigth: Integer);
  end;

Const
  SEPARADOR = '------------------------------------------------' + #10;

var
  frmtOffLine:TpcnTipoEmissao;
  frmVenda: TfrmVenda;
  // resolução da tela
  OldWidth: Integer;
  OldHeight: Integer;

  // totalizadoras
  rTotal_Venda: real;
  rTotal_Desconto: real;
  rTotal_Acrescimo: real;
  iTotal_Itens: Integer;
  iItem: Integer;
  rTotal_ICMS: real;
  rTotal_Trib: real;
  // STATUS das funcoes
  bVenda: boolean; // venda aberta
  bTotalizado: boolean; // cupom totalizado
  bPago1, bPago2, bPago3: boolean; // lancado cada forma de pagamento
  bFinalizado: boolean; // Cupom Finalizado (Totalizado);
  // Outras
  baltera_tipo_desconto: boolean; // permitir/bloquear a tecla F3 no desconto
  blimpa_edit_display: boolean;

  // Armazenar dados anteriores do display
  sTexto_anterior: string;
  clCor_anterior: tcolor;
  TiImagem_anterior: Tipo_Imagem;

  // flag de finalizacao do tef
  bTef_finaliza: boolean;
  // totalizadores das formas que exigem tratamento especial
  rValor_Total_Cartao, rvalor_total_cheque, rvalor_total_crediario: real;

  // variaveis do posto
  sPosto_Resposta, sPosto_Comando, str: string;
  iQtde_bico: Integer;
  bPosto_ok: boolean;

  // focar no campo anterior
  bVolta_foco: boolean;

  // GUIO: Dados do Vendedor
  iVendedorCodigo: Integer;
  sVendedorNome: String;

  // variaveis nfce
  vAux, vNumLote, vSincrono, vcontingencia, vgerado_nfce: String;
  vNumNFCe:Integer;
  Sincrono: boolean;
  bc: TBitmap;
  url, cDest, tpAmb: string;
  Hash_SHA1: string;
  X: Integer;
  S: AnsiString;
  tipo_pgto: Integer;
  nfce_autorizada: boolean;
  bContinuaNFCE: boolean;
  cStatus: Integer;
  ChaveNFCE: string;
  NumeroNFCe: Integer;

implementation

uses modulo, Math, funcoes, cliente_consulta, preco_consulta,
  produto_consulta, protetor_tela, consumidor, venda_crediario, unECF,
  Leitura_Memoria_Fiscal, Download_MFD, Arquivo_Fiscal, Identifica,
  Tef_bandeira, unTEF, caixa_fechamento, sangria, suprimento,
  TEF_Cancelamento, senha, menu_cupom, Lista_DAV, pre_venda, msg_Operador,
  Meios_pagamento, Orcamento_Abrir, menu_fiscal, IniFiles, contasreceber, os,
  caixa_abertura, mesas, fabricacao, senha_supervisor, ComObj, Constantes,
  Vendedor, UFuncoes, Comanda, ufrmStatus, frmNatOperacao, xloc_modelo,
  frmNFCEs;

{$R *.dfm}

// -------------------------------------------------------------------------- //
// TESTE 02
function TrocaResolucao(X, Y, a, b: word): boolean;

var
  lpDevMode: TDeviceMode;
begin
  if EnumDisplaySettings(nil, 0, lpDevMode) then
  begin
    lpDevMode.dmFields := DM_PELSWIDTH Or DM_PELSHEIGHT;
    a := lpDevMode.dmPelsWidth; // pega a resolução atual (horizontal)
    b := lpDevMode.dmPelsHeight; // pega a resolução atual  (vertical)
    lpDevMode.dmPelsWidth := X;
    // altera a resolução para a que voce voce desejou
    lpDevMode.dmPelsHeight := Y;
    // altera a resolução para a que voce voce desejou
    Result := ChangeDisplaySettings(lpDevMode, 0) = DISP_CHANGE_SUCCESSFUL;
  end;
end;

// TESTE 01
function VoltaResolucao(a, b: word): boolean;

var
  lpDevMode: TDeviceMode;
begin
  if EnumDisplaySettings(nil, 0, lpDevMode) then
  begin
    lpDevMode.dmFields := DM_PELSWIDTH Or DM_PELSHEIGHT;
    lpDevMode.dmPelsWidth := a;
    // ao fechar o programa recupera a resolução que vinha sendo usada
    lpDevMode.dmPelsHeight := b;
    // ao fechar o programa recupera a resolução que vinha sendo usada
    Result := ChangeDisplaySettings(lpDevMode, 0) = DISP_CHANGE_SUCCESSFUL;
  end;
end;

procedure TfrmVenda.EnviaComando(comando: string; timeout: Integer);
begin
  sPosto_Comando := comando;
  // comport1.WriteStr(comando);
  timer_resposta.Interval := timeout;
  timer_resposta.Enabled := true;
end;

(*
  procedure TfrmVenda.Atualizar_servidor();
  var atualiza_serv : boolean;
  i, iprest : integer;
  bachou : boolean;
  scod_venda, scod_cupom : string;
  begin
  // transmitir os dados para o servidor
  if bVenda then
  begin
  Imprime_display('CUPOM ABERTO!',clYellow,tiAlerta);
  sleep(1500);
  Imprime_display('INFORME O PRODUTO...',clWhite,tiLivre);
  ed_barra.SetFocus;
  exit;
  end;


  atualiza_serv := false;

  try
  if frmmodulo.Conexao_servidor.Connected = false then
  begin
  if application.messagebox('Falha ao conectar ao servidor! Deseja tentar novamente?','Transimissão de Dados',mb_yesno+mb_iconerror) = idyes then
  begin
  frmmodulo.Conexao_servidor.Connected := true;
  if frmmodulo.Conexao_servidor.Connected  THEN ATUALIZA_SERV := true;
  end;
  end
  else
  atualiza_serv := true;





  if atualiza_serv then
  begin
  // atualizando as vendas
  query.close;
  query.sql.clear;
  query.sql.add('select * from cupom where ex = 0');
  query.open;
  query.first;
  while not query.eof do
  begin

  scod_cupom := query.fieldbyname('codigo').asstring;
  scod_venda := frmprincipal.codifica('000048',7);

  frmmodulo.query_servidor.close;
  frmmodulo.query_servidor.sql.clear;
  frmmodulo.query_servidor.sql.add('insert into c000048');
  frmmodulo.query_servidor.sql.add('(codigo,data,codcliente,codvendedor,');
  frmmodulo.query_servidor.sql.add('codcaixa,total,subtotal,meio_dinheiro,');
  frmmodulo.query_servidor.sql.add('meio_chequeav, meio_chequeap,meio_cartaocred,');
  frmmodulo.query_servidor.SQL.add('meio_cartaodeb,meio_crediario,meio_convenio, desconto,acrescimo,');
  frmmodulo.query_servidor.sql.add('cupom_fiscal,numero_cupom_fiscal, ECF_SERIAL, situacao)');
  frmmodulo.query_servidor.sql.add('values');
  frmmodulo.query_servidor.sql.add('(:codigo,:datax,:codcliente,:codvendedor,');
  frmmodulo.query_servidor.sql.add(':codcaixa,:TOTAL,:SUBTOTAL,:DINHEIRO,');
  frmmodulo.query_servidor.sql.add(':CHEQUEAV,:CHEQUEAP,:CARTAOCRED,');
  frmmodulo.query_servidor.SQL.add(':CARTAODEB,:CREDIARIO,:CONVENIO,:DESCONTO,:ACRESCIMO,');
  frmmodulo.query_servidor.sql.add(':cupom_fiscal,:numero_cupom_fiscal, :ECF_SERIAL, :situacao)');

  frmmodulo.query_servidor.Params.ParamByName('codigo').asstring    := scod_venda;
  frmmodulo.query_servidor.Params.ParamByName('codcliente').asstring:= Zerar(query.fieldbyname('cod_cliente').asstring,6);
  frmmodulo.query_servidor.Params.ParamByName('codCAIXA').asstring  := zerar(query.fieldbyname('cod_caixa').asstring,6);
  frmmodulo.query_servidor.Params.ParamByName('numero_cupom_fiscal').asstring := query.fieldbyname('numero').asstring;
  frmmodulo.query_servidor.Params.ParamByName('codvendedor').asstring         := zerar(query.fieldbyname('cod_vendedor').asstring,6);
  frmmodulo.query_servidor.Params.ParamByName('cupom_fiscal').asINTEGER       := 1;
  frmmodulo.query_servidor.params.parambyname('ecf_serial').asstring := sECF_Serial;

  frmmodulo.query_servidor.Params.ParamByName('datax').asdatetime   := query.fieldbyname('data').asdatetime;
  frmmodulo.query_servidor.Params.ParamByName('TOTAL').asFLOAT      := query.fieldbyname('valor_total').asfloat;
  frmmodulo.query_servidor.Params.ParamByName('SUBTOTAL').asFLOAT   := query.fieldbyname('valor_produto').asfloat;
  frmmodulo.query_servidor.Params.ParamByName('DESCONTO').asFLOAT   := query.fieldbyname('valor_desconto').asfloat;
  frmmodulo.query_servidor.Params.ParamByName('ACRESCIMO').asFLOAT  := query.fieldbyname('valor_acrescimo').asfloat;

  frmmodulo.query_servidor.Params.ParamByName('DINHEIRO').asFLOAT   := 0;
  frmmodulo.query_servidor.Params.ParamByName('CHEQUEAV').asFLOAT   := 0;
  frmmodulo.query_servidor.Params.ParamByName('CHEQUEAP').asFLOAT   := 0;
  frmmodulo.query_servidor.Params.ParamByName('CARTAODEB').asFLOAT  := 0;
  frmmodulo.query_servidor.Params.ParamByName('CARTAOCRED').asFLOAT := 0;
  frmmodulo.query_servidor.Params.ParamByName('CREDIARIO').asFLOAT  := 0;
  frmmodulo.query_servidor.Params.ParamByName('CONVENIO').asFLOAT   := 0;
  frmmodulo.query_servidor.params.parambyname('situacao').asinteger := query.fieldbyname('cancelado').asinteger + 1;

  qrForma.close;
  qrForma.sql.clear;
  qrForma.sql.add('select * from cupom_forma');
  qrforma.sql.add('where cod_cupom = '''+scod_cupom+'''');
  qrforma.Open;
  qrforma.first;
  bachou := false;
  while not qrforma.eof do
  begin
  if not bachou then
  begin
  for i := 0 to lForma_dinheiro.Count - 1 do
  begin
  if AnsiUpperCase(qrforma.fieldbyname('forma').asstring) =
  AnsiUpperCase(lForma_dinheiro[i]) then
  begin
  frmmodulo.query_servidor.Params.ParamByName('DINHEIRO').asFLOAT :=
  frmmodulo.query_servidor.Params.ParamByName('DINHEIRO').asFLOAT+
  qrforma.fieldbyname('valor').asfloat;
  bachou := true;
  break;
  end;
  end;
  end;
  if not bachou then
  begin
  for i := 0 to lForma_cheque.Count - 1 do
  begin
  if AnsiUpperCase(qrforma.fieldbyname('forma').asstring) =
  AnsiUpperCase(lForma_cheque[i]) then
  begin
  frmmodulo.query_servidor.Params.ParamByName('chequeav').asFLOAT :=
  frmmodulo.query_servidor.Params.ParamByName('chequeav').asFLOAT+
  qrforma.fieldbyname('valor').asfloat;
  bachou := true;
  break;
  end;
  end;
  end;
  if not bachou then
  begin
  for i := 0 to lForma_cartao.Count - 1 do
  begin
  if AnsiUpperCase(qrforma.fieldbyname('forma').asstring) =
  AnsiUpperCase(lForma_cartao[i]) then
  begin
  frmmodulo.query_servidor.Params.ParamByName('cartaocred').asFLOAT :=
  frmmodulo.query_servidor.Params.ParamByName('cartaocred').asFLOAT+
  qrforma.fieldbyname('valor').asfloat;
  bachou := true;
  break;
  end;
  end;
  end;
  if not bachou then
  begin
  for i := 0 to lForma_crediario.Count - 1 do
  begin
  if AnsiUpperCase(qrforma.fieldbyname('forma').asstring) =
  AnsiUpperCase(lForma_crediario[i]) then
  begin
  frmmodulo.query_servidor.Params.ParamByName('crediario').asFLOAT :=
  frmmodulo.query_servidor.Params.ParamByName('crediario').asFLOAT+
  qrforma.fieldbyname('valor').asfloat;
  bachou := true;
  break;
  end;
  end;
  end;
  if not bachou then
  begin
  for i := 0 to lForma_convenio.Count - 1 do
  begin
  if AnsiUpperCase(qrforma.fieldbyname('forma').asstring) =
  AnsiUpperCase(lForma_convenio[i]) then
  begin
  frmmodulo.query_servidor.Params.ParamByName('convenio').asFLOAT :=
  frmmodulo.query_servidor.Params.ParamByName('convenio').asFLOAT+
  qrforma.fieldbyname('valor').asfloat;
  bachou := true;
  break;
  end;
  end;
  end;
  qrforma.next;
  end;
  frmmodulo.query_servidor.ExecSQL;


  if query.fieldbyname('cancelado').asinteger = 0 then
  begin
  // contas a receber
  query2.close;
  query2.sql.clear;
  query2.sql.add('select * from cupom_crediario');
  query2.sql.add('where cod_cupom = '''+scod_cupom+'''');
  query2.open;
  query2.first;
  iprest := 1;
  while not query2.eof do
  begin
  frmmodulo.query_servidor.Close;
  frmmodulo.query_servidor.SQL.clear;
  frmmodulo.query_servidor.SQL.add('insert into c000049');
  frmmodulo.query_servidor.SQL.add('(codigo,codvenda,codcliente,codvendedor,codcaixa,data_emissao,data_vencimento,valor_original,');
  frmmodulo.query_servidor.SQL.add('valor_atual,documento,tipo,situacao,filtro)');
  frmmodulo.query_servidor.SQL.add('values');
  frmmodulo.query_servidor.SQL.add('(:codigo,:codvenda,:codcliente,:codvendedor,:codcaixa,:data_emissao,:data_vencimento,:valor_original,');
  frmmodulo.query_servidor.SQL.add(':valor_atual,:documento,:tipo,:situacao,:filtro)');

  frmmodulo.query_servidor.Params.ParamByName('codigo').asstring := Scod_venda+'/'+zerar(inttostr(iprest),2);
  frmmodulo.query_servidor.Params.ParamByName('codvenda').asstring := scod_venda;
  frmmodulo.query_servidor.Params.ParamByName('codcliente').asstring := zerar(query2.fieldbyname('cod_cliente').asstring,6);
  frmmodulo.query_servidor.Params.ParamByName('codvendedor').asstring := zerar(query.FIELDBYNAME('cod_vendedor').ASstring,6);
  frmmodulo.query_servidor.Params.ParamByName('codcaixa').asstring := Zerar(IntToStr(icodigo_Usuario),6);
  frmmodulo.query_servidor.Params.ParamByName('documento').asstring := scod_venda+'/'+zerar(inttostr(iprest),2);
  frmmodulo.query_servidor.Params.ParamByName('tipo').asstring := COPY(query2.fieldbyname('descricao').asstring,1,20);
  frmmodulo.query_servidor.Params.ParamByName('filtro').asinteger := 0;
  frmmodulo.query_servidor.Params.ParamByName('situacao').asinteger := 1;
  frmmodulo.query_servidor.Params.ParamByName('data_vencimento').asdatetime := query2.FIELDBYNAME('vencimento').ASDATETIME;
  frmmodulo.query_servidor.Params.ParamByName('data_emissao').asdatetime := query.fieldbyname('data').asfloat;
  frmmodulo.query_servidor.PARAMS.ParamByName('valor_atual').ASFLOAT := query2.fieldbyname('valor').asfloat;
  frmmodulo.query_servidor.PARAMS.ParamByName('valor_original').ASFLOAT := query2.fieldbyname('valor').asfloat;
  frmmodulo.query_servidor.ExecSQL;
  inc(iprest);
  query2.next;
  END;
  end;
  // produtos
  query3.close;
  query3.sql.clear;
  query3.sql.add('select * from CUPOM_ITEM');
  query3.sql.add('where cod_cupom = '''+scod_cupom+'''');
  query3.sql.add('and cancelado = 0');
  query3.open;
  query3.first;
  while not query3.eof do
  begin
  frmmodulo.query_servidor.CLOSE;
  frmmodulo.query_servidor.SQL.CLEAR;
  frmmodulo.query_servidor.SQL.Add('insert into c000032');
  frmmodulo.query_servidor.SQL.add('(codigo,codnota,serial,numeronota,');
  frmmodulo.query_servidor.SQL.add('codproduto,qtde,movimento_estoque,unitario,');
  frmmodulo.query_servidor.SQL.add('total,unidade,aliquota,');
  frmmodulo.query_servidor.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
  frmmodulo.query_servidor.SQL.add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,cst,');
  frmmodulo.query_servidor.sql.add('base_calculo, valor_icms)');
  frmmodulo.query_servidor.SQL.add('values');

  frmmodulo.query_servidor.SQL.add('(:codigo,:codnota,:serial,:numeronota,');
  frmmodulo.query_servidor.SQL.add(':codproduto,:qtde,:movimento_estoque,:unitario,');
  frmmodulo.query_servidor.SQL.add(':total,:unidade,:aliquota,');
  frmmodulo.query_servidor.SQL.add(':cupom_item,:cupom_numero,:cupom_modelo,');
  frmmodulo.query_servidor.SQL.add(':ecf_serie,:ecf_caixa,:codcliente,:codvendedor,:movimento,:data,:cst,');
  frmmodulo.query_servidor.sql.add(':base_calculo, :valor_icms)');

  frmmodulo.query_servidor.Params.ParamByName('CODIGO').ASSTRING      := frmPrincipal.codifica('000032',10);
  frmmodulo.query_servidor.Params.ParamByName('CODNOTA').ASSTRING     := scod_venda;
  frmmodulo.query_servidor.Params.ParamByName('SERIAL').ASSTRING      := '';
  frmmodulo.query_servidor.Params.ParamByName('NUMERONOTA').ASSTRING  := query.fieldbyname('numero').asstring;
  frmmodulo.query_servidor.Params.ParamByName('CODPRODUTO').ASSTRING  := zerar(query3.fieldbyname('cod_produto').asstring,6);
  frmmodulo.query_servidor.Params.ParamByName('CODCLIENTE').ASSTRING  := zerar(query.FIELDBYNAME('COD_CLIENTE').ASSTRING,6);
  frmmodulo.query_servidor.Params.ParamByName('CODVENDEDOR').ASSTRING := zerar(query.FIELDBYNAME('COD_VENDEDOR').ASSTRING,6);

  frmmodulo.query_servidor.Params.ParamByName('QTDE').ASFLOAT := query3.FIELDBYNAME('QTDE').ASFLOAT;
  frmmodulo.query_servidor.Params.ParamByName('MOVIMENTO_ESTOQUE').ASFLOAT := -query3.FIELDBYNAME('QTDE').ASFLOAT;
  frmmodulo.query_servidor.Params.ParamByName('UNITARIO').ASFLOAT := query3.FIELDBYNAME('VALOR_UNITARIO').ASFLOAT;
  frmmodulo.query_servidor.Params.ParamByName('TOTAL').ASFLOAT := query3.FIELDBYNAME('VALOR_TOTAL').ASFLOAT;
  frmmodulo.query_servidor.Params.ParamByName('ALIQUOTA').ASFLOAT := query3.FIELDBYNAME('ALIQUOTA').ASFLOAT;

  frmmodulo.query_servidor.Params.ParamByName('UNIDADE').ASSTRING  := query3.FIELDBYNAME('UNIDADE').ASSTRING;
  frmmodulo.query_servidor.Params.ParamByName('CST').ASSTRING  := query3.FIELDBYNAME('CST').ASSTRING;
  frmmodulo.query_servidor.Params.ParamByName('MOVIMENTO').ASINTEGER  := 2;
  frmmodulo.query_servidor.Params.ParamByName('DATA').ASDATETIME  := query.FIELDBYNAME('DATA').ASDATETIME;
  frmmodulo.query_servidor.Params.ParamByName('ECF_CAIXA').ASSTRING  := sECF_Caixa;
  frmmodulo.query_servidor.Params.ParamByName('ECF_SERIE').ASSTRING  := query.FIELDBYNAME('ECF').ASSTRING;
  frmmodulo.query_servidor.Params.ParamByName('CUPOM_NUMERO').ASSTRING  := query.FIELDBYNAME('NUMERO').ASSTRING;
  frmmodulo.query_servidor.Params.ParamByName('CUPOM_ITEM').ASSTRING  := zerar(query3.FIELDBYNAME('ITEM').ASSTRING,3);
  frmmodulo.query_servidor.Params.ParamByName('CUPOM_MODELO').ASSTRING  := '2D';

  if (query3.fieldbyname('aliquota').asfloat > 0) and
  (query3.fieldbyname('cst').asstring = '000') then
  begin
  frmmodulo.query_servidor.Params.ParamByName('base_calculo').ASFLOAT := query3.FIELDBYNAME('VALOR_TOTAL').ASFLOAT;
  frmmodulo.query_servidor.Params.ParamByName('valor_icms').ASFLOAT := query3.FIELDBYNAME('VALOR_TOTAL').ASFLOAT * query3.FIELDBYNAME('aliquota').ASFLOAT / 100;
  end
  else
  begin
  frmmodulo.query_servidor.Params.ParamByName('base_calculo').ASFLOAT := 0;
  frmmodulo.query_servidor.Params.ParamByName('valor_icms').ASFLOAT := 0;
  end;
  frmmodulo.query_servidor.ExecSQL;
  query3.next;
  END;


  query.Next;
  end;

  try
  // Atualizacao das reducoes z

  frmmodulo.query.close;
  frmmodulo.query.sql.clear;
  frmmodulo.query.sql.add('select * from config');
  frmmodulo.query.open;


  query.close;
  query.sql.clear;
  query.sql.add('select * from reducaoz where ex = 0');
  query.open;
  query.first;
  while not query.eof do
  begin
  query3.close;
  query3.sql.clear;
  query3.sql.add('select * from reducaoz_total_parcial');
  query3.sql.add('where cod_reducaoz = '''+query.fieldbyname('codigo').asstring+'''');
  query3.open;

  frmmodulo.query_servidor.CLOSE;
  frmmodulo.query_servidor.SQL.CLEAR;
  frmmodulo.query_servidor.sql.add('insert into SINTEGRA_REG60');
  frmmodulo.query_servidor.SQL.Add('(id, MOVIMENTO,');
  frmmodulo.query_servidor.SQL.Add('CODIGO_EMPRESA,');
  frmmodulo.query_servidor.SQL.Add('CNPJ,');
  frmmodulo.query_servidor.SQL.Add('IE,');
  frmmodulo.query_servidor.SQL.Add('UF,');
  frmmodulo.query_servidor.SQL.Add('DATA_EMISSAO,');
  frmmodulo.query_servidor.SQL.Add('NRO_SERIE_EQP,');
  frmmodulo.query_servidor.SQL.Add('NRO_ORDEM_EQP,');
  frmmodulo.query_servidor.SQL.Add('MODELO_DOC,');
  frmmodulo.query_servidor.SQL.Add('NRO_CONTADOR_INICIO,');
  frmmodulo.query_servidor.SQL.Add('NRO_CONTADOR_FIM,');
  frmmodulo.query_servidor.SQL.Add('NRO_CONTADOR_Z,');
  frmmodulo.query_servidor.SQL.Add('CONTADOR_REINICIO,');
  frmmodulo.query_servidor.SQL.Add('VALOR_VENDA_BRUTA,');
  frmmodulo.query_servidor.SQL.Add('VALOR_TOTAL_GERAL,');
  frmmodulo.query_servidor.SQL.Add('CANCELAMENTO,');
  frmmodulo.query_servidor.SQL.Add('DESCONTO,');
  frmmodulo.query_servidor.SQL.Add('ISSQN,');
  frmmodulo.query_servidor.SQL.Add('SUBSTITUICAO_TRIBUTARIA,');
  frmmodulo.query_servidor.SQL.Add('ISENTO,');
  frmmodulo.query_servidor.SQL.Add('NAO_INCIDENCIA,');

  frmmodulo.query_servidor.SQL.Add('ALIQUOTA01,');
  frmmodulo.query_servidor.SQL.Add('ALIQUOTA02,');
  frmmodulo.query_servidor.SQL.Add('ALIQUOTA03,');
  frmmodulo.query_servidor.SQL.Add('ALIQUOTA04,');
  frmmodulo.query_servidor.SQL.Add('ALIQUOTA05,');
  frmmodulo.query_servidor.SQL.Add('BASE01,');
  frmmodulo.query_servidor.SQL.Add('BASE02,');
  frmmodulo.query_servidor.SQL.Add('BASE03,');
  frmmodulo.query_servidor.SQL.Add('BASE04,');
  frmmodulo.query_servidor.SQL.Add('BASE05,');
  frmmodulo.query_servidor.SQL.Add('VALOR_VENDA_LIQUIDA,');
  frmmodulo.query_servidor.SQL.Add('NRO_CONTADOR_CANCELAMENTO)');

  frmmodulo.query_servidor.sql.add('values');

  frmmodulo.query_servidor.SQL.Add('(:id, :MOVIMENTO,');
  frmmodulo.query_servidor.SQL.Add(':CODIGO_EMPRESA,');
  frmmodulo.query_servidor.SQL.Add(':CNPJ,');
  frmmodulo.query_servidor.SQL.Add(':IE,');
  frmmodulo.query_servidor.SQL.Add(':UF,');
  frmmodulo.query_servidor.SQL.Add(':DATA_EMISSAO,');
  frmmodulo.query_servidor.SQL.Add(':NRO_SERIE_EQP,');
  frmmodulo.query_servidor.SQL.Add(':NRO_ORDEM_EQP,');
  frmmodulo.query_servidor.SQL.Add(':MODELO_DOC,');
  frmmodulo.query_servidor.SQL.Add(':NRO_CONTADOR_INICIO,');
  frmmodulo.query_servidor.SQL.Add(':NRO_CONTADOR_FIM,');
  frmmodulo.query_servidor.SQL.Add(':NRO_CONTADOR_Z,');
  frmmodulo.query_servidor.SQL.Add(':CONTADOR_REINICIO,');
  frmmodulo.query_servidor.SQL.Add(':VALOR_VENDA_BRUTA,');
  frmmodulo.query_servidor.SQL.Add(':VALOR_TOTAL_GERAL,');
  frmmodulo.query_servidor.SQL.Add(':CANCELAMENTO,');
  frmmodulo.query_servidor.SQL.Add(':DESCONTO,');
  frmmodulo.query_servidor.SQL.Add(':ISSQN,');
  frmmodulo.query_servidor.SQL.Add(':SUBSTITUICAO_TRIBUTARIA,');
  frmmodulo.query_servidor.SQL.Add(':ISENTO,');
  frmmodulo.query_servidor.SQL.Add(':NAO_INCIDENCIA,');

  frmmodulo.query_servidor.SQL.Add(':ALIQUOTA01,');
  frmmodulo.query_servidor.SQL.Add(':ALIQUOTA02,');
  frmmodulo.query_servidor.SQL.Add(':ALIQUOTA03,');
  frmmodulo.query_servidor.SQL.Add(':ALIQUOTA04,');
  frmmodulo.query_servidor.SQL.Add(':ALIQUOTA05,');
  frmmodulo.query_servidor.SQL.Add(':BASE01,');
  frmmodulo.query_servidor.SQL.Add(':BASE02,');
  frmmodulo.query_servidor.SQL.Add(':BASE03,');
  frmmodulo.query_servidor.SQL.Add(':BASE04,');
  frmmodulo.query_servidor.SQL.Add(':BASE05,');
  frmmodulo.query_servidor.SQL.Add(':VALOR_VENDA_LIQUIDA,');
  frmmodulo.query_servidor.SQL.Add(':NRO_CONTADOR_CANCELAMENTO)');



  frmmodulo.query_servidor.Params.ParamByName('id').ASSTRING      := frmPrincipal.codifica('000032',6);
  frmmodulo.query_servidor.Params.ParamByName('MOVIMENTO').asinteger := 1;
  frmmodulo.query_servidor.Params.ParamByName('CODIGO_EMPRESA').asinteger := 1;
  frmmodulo.query_servidor.Params.ParamByName('CNPJ').asstring := sEmpresa_CNPJ;
  frmmodulo.query_servidor.Params.ParamByName('IE').asstring := sEmpresa_IE;
  frmmodulo.query_servidor.Params.ParamByName('UF').asstring := sempresa_UF;
  frmmodulo.query_servidor.Params.ParamByName('DATA_EMISSAO').asdatetime := query.fieldbyname('data_movimento').asdatetime;
  frmmodulo.query_servidor.Params.ParamByName('NRO_SERIE_EQP').asstring := query.fieldbyname('ecf').asstring;
  frmmodulo.query_servidor.Params.ParamByName('NRO_ORDEM_EQP').asinteger := strtoint(sECF_Caixa);
  frmmodulo.query_servidor.Params.ParamByName('MODELO_DOC').asstring := '2D';

  frmmodulo.query_servidor.Params.ParamByName('NRO_CONTADOR_INICIO').asinteger := strtoint(frmmodulo.query.fieldbyname('CAIXA_COO_INICIAL').asstring);
  frmmodulo.query_servidor.Params.ParamByName('NRO_CONTADOR_FIM').asInteger := strtoint(query.fieldbyname('coo').asstring);
  frmmodulo.query_servidor.Params.ParamByName('NRO_CONTADOR_Z').asinteger := strtoint(query.fieldbyname('crz').asstring);
  frmmodulo.query_servidor.Params.ParamByName('CONTADOR_REINICIO').asinteger := strtoint(query.fieldbyname('cro').asstring);

  frmmodulo.query_servidor.Params.ParamByName('VALOR_VENDA_BRUTA').asfloat :=  query.fieldbyname('venda_bruta').asfloat;
  frmmodulo.query_servidor.Params.ParamByName('VALOR_TOTAL_GERAL').asfloat := query.fieldbyname('totalizador_geral').asfloat;
  frmmodulo.query_servidor.Params.ParamByName('CANCELAMENTO').asfloat := query.fieldbyname('cancelamento_icms').asfloat;
  frmmodulo.query_servidor.Params.ParamByName('DESCONTO').asfloat := query.fieldbyname('desconto_icms').asfloat;
  frmmodulo.query_servidor.Params.ParamByName('ISSQN').asfloat := query.fieldbyname('total_iss').asfloat;

  I := 1;
  query3.first;
  while not query3.eof do
  begin
  // substituicao tributaria
  if query3.FieldByName('totalizador').asstring = 'F1' then
  frmmodulo.query_servidor.Params.ParamByName('SUBSTITUICAO_TRIBUTARIA').asfloat :=
  query3.fieldbyname('valor').asfloat;

  // isento
  if query3.FieldByName('totalizador').asstring = 'I1' then
  frmmodulo.query_servidor.Params.ParamByName('ISENTO').asfloat :=
  query3.fieldbyname('valor').asfloat;

  // NAO TRIBUTADO
  if query3.FieldByName('totalizador').asstring = 'N1' then
  frmmodulo.query_servidor.Params.ParamByName('NAO_INCIDENCIA').asfloat :=
  query3.fieldbyname('valor').asfloat;

  // TRIBUTADOS
  IF (COPY(QUERY3.FieldByName('TOTALIZADOR').ASSTRING,6,2) = '00') and
  (query3.fieldbyname('valor').asfloat > 0) THEN
  BEGIN
  CASE I OF
  1 : BEGIN
  frmmodulo.query_servidor.Params.ParamByName('ALIQUOTA01').asfloat :=
  strtofloat(COPY(QUERY3.FieldByName('TOTALIZADOR').ASSTRING,4,4))/100;
  frmmodulo.query_servidor.Params.ParamByName('BASE01').asfloat :=
  query3.fieldbyname('valor').asfloat;
  inc(i);
  END;
  2 : BEGIN
  frmmodulo.query_servidor.Params.ParamByName('ALIQUOTA02').asfloat :=
  strtofloat(COPY(QUERY3.FieldByName('TOTALIZADOR').ASSTRING,4,4))/100;
  frmmodulo.query_servidor.Params.ParamByName('BASE02').asfloat :=
  query3.fieldbyname('valor').asfloat;
  inc(i);
  END;
  3 : BEGIN
  frmmodulo.query_servidor.Params.ParamByName('ALIQUOTA03').asfloat :=
  strtofloat(COPY(QUERY3.FieldByName('TOTALIZADOR').ASSTRING,4,4))/100;
  frmmodulo.query_servidor.Params.ParamByName('BASE03').asfloat :=
  query3.fieldbyname('valor').asfloat;
  inc(i);
  END;
  4 : BEGIN
  frmmodulo.query_servidor.Params.ParamByName('ALIQUOTA04').asfloat :=
  strtofloat(COPY(QUERY3.FieldByName('TOTALIZADOR').ASSTRING,4,4))/100;
  frmmodulo.query_servidor.Params.ParamByName('BASE04').asfloat :=
  query3.fieldbyname('valor').asfloat;
  inc(i);
  END;
  5 : BEGIN
  frmmodulo.query_servidor.Params.ParamByName('ALIQUOTA05').asfloat :=
  strtofloat(COPY(QUERY3.FieldByName('TOTALIZADOR').ASSTRING,4,4))/100;
  frmmodulo.query_servidor.Params.ParamByName('BASE05').asfloat :=
  query3.fieldbyname('valor').asfloat;
  inc(i);
  END;
  end;
  END;
  query3.next;
  end;
  frmmodulo.query_servidor.Params.ParamByName('VALOR_VENDA_LIQUIDA').asfloat := query.fieldbyname('venda_liquida').asfloat;
  frmmodulo.query_servidor.Params.ParamByName('NRO_CONTADOR_CANCELAMENTO').asfloat := 0;
  frmmodulo.query_servidor.execsql;
  query.next;
  end;



  query.close;
  query.sql.clear;
  query.sql.add('update reducaoz set ex = 1 where ex = 0');
  query.ExecSQL;


  except

  end;






  {
  query.close;
  query.sql.clear;
  query.sql.add('select * from c000044');
  query.open;
  query.first;
  while not query.eof do
  begin
  frmmodulo.query_servidor.close;
  frmmodulo.query_servidor.sql.clear;
  frmmodulo.query_servidor.sql.add('insert into c000044');
  frmmodulo.query_servidor.sql.add('(codigo,codcaixa,codoperador,data,entrada,SAIDA,valor,codconta,movimento,historico)');
  frmmodulo.query_servidor.sql.add('values');
  frmmodulo.query_servidor.sql.add('(:codigo,:codcaixa,:codoperador,:data,:entrada,:SAIDA,:valor,:codconta,:movimento,:historico)');
  frmmodulo.query_servidor.params.ParamByName('codigo').asstring := query.fieldbyname('codigo').asstring;
  frmmodulo.query_servidor.params.ParamByName('codcaixa').asstring := query.fieldbyname('codcaixa').asstring;
  frmmodulo.query_servidor.params.ParamByName('codoperador').asstring := query.fieldbyname('codoperador').asstring;
  frmmodulo.query_servidor.params.ParamByName('data').asdatetime := query.fieldbyname('data').asdatetime;
  frmmodulo.query_servidor.params.ParamByName('codconta').asstring := query.fieldbyname('codconta').asstring;
  frmmodulo.query_servidor.params.ParamByName('historico').asstring := query.fieldbyname('historico').asstring;
  frmmodulo.query_servidor.params.ParamByName('MOVIMENTO').asINTEGER := query.fieldbyname('MOVIMENTO').asINTEGER;
  frmmodulo.query_servidor.params.ParamByName('ENTRADA').asFLOAT := query.fieldbyname('ENTRADA').asFLOAT;
  frmmodulo.query_servidor.params.ParamByName('SAIDA').asFLOAT := query.fieldbyname('SAIDA').asFLOAT;
  frmmodulo.query_servidor.params.ParamByName('VALOR').asFLOAT := query.fieldbyname('VALOR').asFLOAT;
  frmmodulo.query_servidor.ExecSQL;
  query.NEXT;

  END;

  query.close;
  query.sql.clear;
  query.sql.add('select * from c000040');
  query.open;
  query.first;
  while not query.eof do
  begin
  frmmodulo.query_servidor.close;
  frmmodulo.query_servidor.sql.clear;
  frmmodulo.query_servidor.sql.add('insert into c000040');
  frmmodulo.query_servidor.SQL.ADD('(CODIGO,EMISSAO,VENCIMENTO,SITUACAO, CODCLIENTE,TITULAR,CODBANCO, AGENCIA,');
  frmmodulo.query_servidor.SQL.ADD(' CONTA,DATA_CONTA,NUMERO,VALOR,DESCONTO,LIQUIDO,CODVENDA,OBS1,OBS2,DESTINO, CODCONTA_CORRENTE,CODCONTA)');
  frmmodulo.query_servidor.SQL.ADD('VALUES');
  frmmodulo.query_servidor.SQL.ADD('(:CODIGO,:EMISSAO,:VENCIMENTO,:SITUACAO, :CODCLIENTE,:TITULAR,:CODBANCO, :AGENCIA,');
  frmmodulo.query_servidor.SQL.ADD(' :CONTA,:DATA_CONTA,:NUMERO,:VALOR,:DESCONTO,:LIQUIDO,:CODVENDA,:OBS1,:OBS2,:DESTINO, :CODCONTA_CORRENTE,:CODCONTA)');
  frmmodulo.query_servidor.PARAMS.ParamByName('CODIGO').ASSTRING := query.FIELDBYNAME('CODIGO').ASSTRING;
  frmmodulo.query_servidor.PARAMS.ParamByName('EMISSAO').ASDATETIME := query.FIELDBYNAME('EMISSAO').ASDATETIME;
  frmmodulo.query_servidor.PARAMS.ParamByName('VENCIMENTO').ASDATETIME := query.FIELDBYNAME('VENCIMENTO').ASDATETIME;
  frmmodulo.query_servidor.PARAMS.ParamByName('DATA_CONTA').ASDATETIME := query.FIELDBYNAME('DATA_CONTA').ASDATETIME;
  frmmodulo.query_servidor.PARAMS.ParamByName('SITUACAO').ASINTEGER := query.FIELDBYNAME('SITUACAO').ASINTEGER;
  frmmodulo.query_servidor.PARAMS.ParamByName('CODCLIENTE').ASSTRING := query.FIELDBYNAME('CODCLIENTE').ASSTRING;
  frmmodulo.query_servidor.PARAMS.ParamByName('TITULAR').ASSTRING := query.FIELDBYNAME('TITULAR').ASSTRING;
  frmmodulo.query_servidor.PARAMS.ParamByName('CODBANCO').ASSTRING := query.FIELDBYNAME('CODBANCO').ASSTRING;
  frmmodulo.query_servidor.PARAMS.ParamByName('AGENCIA').ASSTRING := query.FIELDBYNAME('AGENCIA').ASSTRING;
  frmmodulo.query_servidor.PARAMS.ParamByName('CONTA').ASSTRING := query.FIELDBYNAME('CONTA').ASSTRING;
  frmmodulo.query_servidor.PARAMS.ParamByName('CODVENDA').ASSTRING := query.FIELDBYNAME('CODVENDA').ASSTRING;
  frmmodulo.query_servidor.PARAMS.ParamByName('OBS1').ASSTRING := query.FIELDBYNAME('OBS1').ASSTRING;
  frmmodulo.query_servidor.PARAMS.ParamByName('OBS2').ASSTRING := query.FIELDBYNAME('OBS2').ASSTRING;
  frmmodulo.query_servidor.PARAMS.ParamByName('DESTINO').ASSTRING := query.FIELDBYNAME('DESTINO').ASSTRING;
  frmmodulo.query_servidor.PARAMS.ParamByName('CODCONTA_CORRENTE').ASSTRING := query.FIELDBYNAME('CODCONTA_CORRENTE').ASSTRING;
  frmmodulo.query_servidor.PARAMS.ParamByName('CODCONTA').ASSTRING := query.FIELDBYNAME('CODCONTA').ASSTRING;
  frmmodulo.query_servidor.PARAMS.ParamByName('valor').asfloat := query.FIELDBYNAME('valor').asfloat;
  frmmodulo.query_servidor.PARAMS.ParamByName('desconto').asfloat := query.FIELDBYNAME('desconto').asfloat;
  frmmodulo.query_servidor.PARAMS.ParamByName('liquido').asfloat := query.FIELDBYNAME('liquido').asfloat;
  frmmodulo.query_servidor.ExecSQL;
  query.NEXT;
  END;




  //********* APAGAR OS DADOS LOCAIS


  }


  query.close;
  query.sql.clear;
  query.sql.add('update cupom set ex = 1');
  query.ExecSQL;





  end; // atualiza_serv


  except
  Imprime_display('Erro na atualização do Servidor!',clred,tiErro);
  sleep(1500);
  end;
  ///


  //
  end;
  {



  // Atualizar PDV

  procedure TfrmVenda.Atualizar_PDV();
  var  txt : textfile;
  entrada : string;
  sCST : string;
  begin

  try

  fl.Directory := '\Softlogus\paf\dat\carga';
  fl.Refresh;
  fl.Update;
  while fl.Items.Count > 0 do
  begin
  fl.Selected[0] := true;
  if FileExists(fl.FileName) then
  begin
  Assignfile(txt,fl.FileName);
  reset(txt);

  // APAGAR A TABELA DE INDICES
  QUERY.CLOSE;
  QUERY.SQL.CLEAR;
  QUERY.SQL.ADD('DELETE FROM ESTOQUE_INDICE');
  QUERY.ExecSQL;



  while not eof(txt) do
  begin
  readln(txt,entrada);


  if copy(entrada,1,10) = 'PRODUTOS  ' THEN
  BEGIN
  IF COPY(ENTRADA,11,1) = '1' THEN // INCLUIR
  BEGIN
  query.close;
  query.sql.clear;
  query.sql.add('select * from estoque where codigo = '+COPY(ENTRADA,12,6));
  query.Open;
  if query.recordcount = 0 then
  begin
  query.close;
  query.sql.clear;
  query.sql.add('insert into estoque');
  query.sql.add('(codigo, cod_barra, nome, unidade, preco_venda, preco_promocao,');
  query.sql.add('inicio_promocao, final_promocao, cst, aliquota, desconto_maximo,');
  query.sql.add('st, estoque, iat, ippt)');
  query.sql.add('values');
  query.sql.add('(:codigo,:cod_barra,:nome,:unidade,:preco_venda,:preco_promocao,');
  query.sql.add(':inicio_promocao,:final_promocao,:cst,:aliquota,:desconto_maximo,');
  query.sql.add(':st,:estoque,:iat,:ippt)');
  query.Params.ParamByName('codigo').asstring        := COPY(ENTRADA,12,6);
  query.Params.ParamByName('cod_barra').asstring     := TrimRight(TrimLeft(COPY(ENTRADA,103,13)));
  query.Params.ParamByName('nome').asstring          := TrimRight(TrimLeft(COPY(ENTRADA,18,60)));
  query.Params.ParamByName('unidade').asstring       := TrimRight(TrimLeft(COPY(ENTRADA,78,5)));
  query.Params.ParamByName('preco_venda').asFLOAT    := STRTOFLOAT(COPY(ENTRADA,83,12));
  query.params.parambyname('preco_promocao').asfloat := STRTOFLOAT(COPY(ENTRADA,116,12));
  query.params.parambyname('estoque').asfloat        := STRTOFLOAT(COPY(ENTRADA,148,12));



  if Trim(copy(ENTRADA,128,10)) <> '' then
  begin
  query.params.parambyname('inicio_promocao').asDATETIME := STRTODATE(COPY(ENTRADA,128,10));
  query.params.parambyname('final_promocao').asDATETIME := STRTODATE(COPY(ENTRADA,138,10));
  end;

  scst := COPY(ENTRADA,95,3);
  query.Params.ParamByName('cst').asstring           := sCst;
  query.Params.ParamByName('aliquota').asFLOAT       := STRTOFLOAT(COPY(ENTRADA,98,5));
  query.Params.ParamByName('desconto_maximo').asFLOAT:= 0;


  if (scst = '060') or
  (scst = '010') or
  (scst = '070') then query.Params.ParamByName('st').asSTRING := 'F'
  else
  if (scst = '040') or
  (scst = '030') then query.Params.ParamByName('st').asSTRING := 'I'
  else
  if (scst = '041') or
  (scst = '050') or
  (scst = '051') or
  (scst = '090') then query.Params.ParamByName('st').asSTRING := 'N'
  else
  query.Params.ParamByName('st').asSTRING := 'T';
  query.Params.ParamByName('iat').asstring           := 'T';
  query.Params.ParamByName('ippt').asstring          := 'T';



  query.execsql;
  end
  else
  begin
  query.close;
  query.sql.clear;
  query.sql.add('update estoque set');
  query.sql.add('codigo = :codigo, cod_barra = :cod_barra, nome = :nome,');
  query.sql.add(' unidade = :unidade, preco_venda = :preco_venda,');
  query.sql.add(' preco_promocao = :preco_promocao,');
  query.sql.add('inicio_promocao = :inicio_promocao, final_promocao = :final_promocao,');
  query.sql.add(' cst = :cst, aliquota = :aliquota, desconto_maximo = :desconto_maximo,');
  query.sql.add('st = :st, estoque = :estoque, iat = :iat, ippt = :ippt');
  query.sql.add('where codigo = '+COPY(ENTRADA,12,6));
  query.Params.ParamByName('codigo').asstring        := COPY(ENTRADA,12,6);
  query.Params.ParamByName('cod_barra').asstring     := TrimRight(TrimLeft(COPY(ENTRADA,103,13)));
  query.Params.ParamByName('nome').asstring          := TrimRight(TrimLeft(COPY(ENTRADA,18,60)));
  query.Params.ParamByName('unidade').asstring       := TrimRight(TrimLeft(COPY(ENTRADA,78,5)));
  query.Params.ParamByName('preco_venda').asFLOAT    := STRTOFLOAT(COPY(ENTRADA,83,12));
  query.params.parambyname('preco_promocao').asfloat := STRTOFLOAT(COPY(ENTRADA,116,12));
  query.params.parambyname('estoque').asfloat        := STRTOFLOAT(COPY(ENTRADA,148,12));

  if Trim(copy(ENTRADA,128,10)) <> '' then
  begin
  query.params.parambyname('inicio_promocao').asDATETIME := STRTODATE(COPY(ENTRADA,128,10));
  query.params.parambyname('final_promocao').asDATETIME := STRTODATE(COPY(ENTRADA,138,10));
  end;

  scst := COPY(ENTRADA,95,3);
  query.Params.ParamByName('cst').asstring           := sCst;
  query.Params.ParamByName('aliquota').asFLOAT       := STRTOFLOAT(COPY(ENTRADA,98,5));
  query.Params.ParamByName('desconto_maximo').asFLOAT:= 0;


  if (scst = '060') or
  (scst = '010') or
  (scst = '070') then query.Params.ParamByName('st').asSTRING := 'F'
  else
  if (scst = '040') or
  (scst = '030') then query.Params.ParamByName('st').asSTRING := 'I'
  else
  if (scst = '041') or
  (scst = '050') or
  (scst = '051') or
  (scst = '090') then query.Params.ParamByName('st').asSTRING := 'N'
  else
  query.Params.ParamByName('st').asSTRING := 'T';
  query.Params.ParamByName('iat').asstring           := 'T';
  query.Params.ParamByName('ippt').asstring          := 'T';
  query.execsql;
  end;
  END
  ELSE
  BEGIN
  IF COPY(ENTRADA,11,1) = '2' THEN // ALTERAR
  BEGIN
  query.close;
  query.sql.clear;
  query.sql.add('update estoque set');
  query.sql.add('codigo = :codigo, cod_barra = :cod_barra, nome = :nome,');
  query.sql.add(' unidade = :unidade, preco_venda = :preco_venda,');
  query.sql.add(' preco_promocao = :preco_promocao,');
  query.sql.add('inicio_promocao = :inicio_promocao, final_promocao = :final_promocao,');
  query.sql.add(' cst = :cst, aliquota = :aliquota, desconto_maximo = :desconto_maximo,');
  query.sql.add('st = :st, estoque = :estoque, iat = :iat, ippt = :ippt');
  query.sql.add('where codigo = '+COPY(ENTRADA,12,6));
  query.Params.ParamByName('codigo').asstring        := COPY(ENTRADA,12,6);
  query.Params.ParamByName('cod_barra').asstring     := TrimRight(TrimLeft(COPY(ENTRADA,103,13)));
  query.Params.ParamByName('nome').asstring          := TrimRight(TrimLeft(COPY(ENTRADA,18,60)));
  query.Params.ParamByName('unidade').asstring       := TrimRight(TrimLeft(COPY(ENTRADA,78,5)));
  query.Params.ParamByName('preco_venda').asFLOAT    := STRTOFLOAT(COPY(ENTRADA,83,12));
  query.params.parambyname('preco_promocao').asfloat := STRTOFLOAT(COPY(ENTRADA,116,12));
  query.params.parambyname('estoque').asfloat        := STRTOFLOAT(COPY(ENTRADA,148,12));

  if Trim(copy(ENTRADA,128,10)) <> '' then
  begin
  query.params.parambyname('inicio_promocao').asDATETIME := STRTODATE(COPY(ENTRADA,128,10));
  query.params.parambyname('final_promocao').asDATETIME := STRTODATE(COPY(ENTRADA,138,10));
  end;

  scst := COPY(ENTRADA,95,3);
  query.Params.ParamByName('cst').asstring           := sCst;
  query.Params.ParamByName('aliquota').asFLOAT       := STRTOFLOAT(COPY(ENTRADA,98,5));
  query.Params.ParamByName('desconto_maximo').asFLOAT:= 0;


  if (scst = '060') or
  (scst = '010') or
  (scst = '070') then query.Params.ParamByName('st').asSTRING := 'F'
  else
  if (scst = '040') or
  (scst = '030') then query.Params.ParamByName('st').asSTRING := 'I'
  else
  if (scst = '041') or
  (scst = '050') or
  (scst = '051') or
  (scst = '090') then query.Params.ParamByName('st').asSTRING := 'N'
  else
  query.Params.ParamByName('st').asSTRING := 'T';
  query.Params.ParamByName('iat').asstring           := 'T';
  query.Params.ParamByName('ippt').asstring          := 'T';
  query.execsql;
  END
  ELSE
  BEGIN
  IF COPY(ENTRADA,11,1) = '3' THEN // excluir
  BEGIN
  query.CLOSE;
  query.SQL.CLEAR;
  query.SQL.ADD('DELETE FROM estoque WHERE CODIGO = '+COPY(ENTRADA,12,6));
  query.ExecSQL;
  END;
  END;
  END;
  END; // PRODUTO



  if copy(entrada,1,10) = 'CLIENTES  ' THEN
  BEGIN
  IF COPY(ENTRADA,11,1) = '1' THEN // INCLUIR
  BEGIN


  query.close;
  query.sql.clear;
  query.sql.add('select * from cliente where codigo = '+COPY(ENTRADA,12,6));
  query.Open;
  if query.recordcount = 0 then
  begin
  query.close;
  query.sql.clear;
  query.sql.add('insert into cliente');
  query.sql.add('(codigo,nome,situacao,limite,cpf,endereco,bairro,cidade,uf)');
  query.sql.add('values');
  query.sql.add('(:codigo,:nome,:situacao,:limite,:cpf,:endereco,:bairro,:cidade,:uf)');




  query.Params.ParamByName('codigo').asstring     := COPY(ENTRADA,12,6);
  query.Params.ParamByName('nome').asstring       := TrimRight(TrimLeft(COPY(ENTRADA,18,60)));
  query.Params.ParamByName('situacao').asinteger  := strtoint(COPY(ENTRADA,78,1));
  query.Params.ParamByName('limite').asFLOAT  := STRTOFLOAT(COPY(ENTRADA,79,12));
  query.Params.ParamByName('cpf').asstring        := COPY(ENTRADA,91,20);
  query.Params.ParamByName('endereco').asstring   := COPY(ENTRADA,136,60);
  query.Params.ParamByName('bairro').asstring   := COPY(ENTRADA,196,30);
  query.Params.ParamByName('cidade').asstring   := COPY(ENTRADA,226,30);
  query.Params.ParamByName('uf').asstring   := COPY(ENTRADA,256,2);
  query.execsql;
  end
  else
  begin
  query.close;
  query.sql.clear;
  query.sql.add('update cliente set');
  query.sql.add('codigo= :codigo,nome=:nome,situacao=:situacao,limite=:limite,cpf=:cpf,endereco=:endereco,bairro=:bairro,cidade=:cidade,uf=:uf');
  query.sql.add('where codigo = '+COPY(ENTRADA,12,6));

  query.Params.ParamByName('codigo').asstring     := COPY(ENTRADA,12,6);
  query.Params.ParamByName('nome').asstring       := TrimRight(TrimLeft(COPY(ENTRADA,18,60)));
  query.Params.ParamByName('situacao').asinteger  := strtoint(COPY(ENTRADA,78,1));
  query.Params.ParamByName('limite').asFLOAT  := STRTOFLOAT(COPY(ENTRADA,79,12));
  query.Params.ParamByName('cpf').asstring        := COPY(ENTRADA,91,20);
  query.Params.ParamByName('endereco').asstring   := COPY(ENTRADA,136,60);
  query.Params.ParamByName('bairro').asstring   := COPY(ENTRADA,196,30);
  query.Params.ParamByName('cidade').asstring   := COPY(ENTRADA,226,30);
  query.Params.ParamByName('uf').asstring   := COPY(ENTRADA,256,2);
  query.execsql;
  end;



  end
  else
  begin
  IF COPY(ENTRADA,11,1) = '2' THEN // ALTERAR
  BEGIN
  query.close;
  query.sql.clear;
  query.sql.add('update cliente set');
  query.sql.add('codigo= :codigo,nome=:nome,situacao=:situacao,limite=:limite,cpf=:cpf,endereco=:endereco,bairro=:bairro,cidade=:cidade,uf=:uf');
  query.sql.add('where codigo = '+COPY(ENTRADA,12,6));

  query.Params.ParamByName('codigo').asstring     := COPY(ENTRADA,12,6);
  query.Params.ParamByName('nome').asstring       := TrimRight(TrimLeft(COPY(ENTRADA,18,60)));
  query.Params.ParamByName('situacao').asinteger  := strtoint(COPY(ENTRADA,78,1));
  query.Params.ParamByName('limite').asFLOAT  := STRTOFLOAT(COPY(ENTRADA,79,12));
  query.Params.ParamByName('cpf').asstring        := COPY(ENTRADA,91,20);
  query.Params.ParamByName('endereco').asstring   := COPY(ENTRADA,136,60);
  query.Params.ParamByName('bairro').asstring   := COPY(ENTRADA,196,30);
  query.Params.ParamByName('cidade').asstring   := COPY(ENTRADA,226,30);
  query.Params.ParamByName('uf').asstring   := COPY(ENTRADA,256,2);
  query.execsql;
  END
  ELSE
  BEGIN
  IF COPY(ENTRADA,11,1) = '3' THEN // excluir
  BEGIN
  query.CLOSE;
  query.SQL.CLEAR;
  query.SQL.ADD('DELETE FROM C000007 WHERE CODIGO = '+COPY(ENTRADA,12,6));
  query.ExecSQL;
  END;
  END;
  END;

  end; // clientes






  // MATERIA - PRIMA

  if copy(entrada,1,10) = 'MATERIA-PR' THEN
  BEGIN

  query.close;
  query.sql.clear;
  query.sql.add('insert into ESTOQUE_INDICE');
  query.sql.add('(cod_PRODUTO,COD_INDICE,QTDE)');
  query.sql.add('values');
  query.sql.add('(:COD_PRODUTO,:COD_INDICE,:QTDE)');
  query.Params.ParamByName('cod_PRODUTO').asstring := COPY(ENTRADA,12,6);
  query.Params.ParamByName('COD_INDICE').asstring  := COPY(ENTRADA,18,6);
  query.Params.ParamByName('QTDE').asFLOAT         := STRTOFLOAT(COPY(ENTRADA,24,12));
  query.execsql;

  end; // MATERIA PRIMA







  end;
  Closefile(txt);
  DeleteFile(fl.FileName);
  end;
  fl.Refresh;
  fl.Update;
  end;

  finally
  sCarga_data := datetostr(dData_Sistema);
  scarga_hora := TimeToStr(time);

  Arquivo_ini := TIniFile.Create('.\cfg\s7.ini');
  Arquivo_ini.WriteString('CARGA','Data',sCarga_data);
  Arquivo_ini.WriteString('CARGA','Hora',scarga_hora);
  Arquivo_ini.free;
  lb_carga.Caption := 'Carga: '+sCarga_data+' às '+scarga_hora;
  end;


  //      tempo_atualizacao := 0;
  //      timer_atualiza.Enabled := true;

  end;


  }

*)

// -------------------------------------------------------------------------- //
// Funcao de busca de produtos
function TfrmVenda.Localizar_Produto(referencia: string): boolean;

var
  bBusca_codigo: boolean;
  // variavel de para ativar ou nao a busca pelo campo codigo
  bAbre_Grade: boolean;
  // variavel para ativar ou nao a grade de localizacao de produto
  iPosicao: Integer;
begin
  try
    // limpar a variaveis de retorno
    sProd_nome := '';
    sProd_barra := '';
    sProd_unidade := '';
    sProd_CST := '';
    iProd_codigo := -1;
    rProd_aliquota := -1;
    rProd_Estoque := 0;
    rProd_preco := 0;
    rProd_qtde := 1;
    rProd_total := 0;
    bProd_promocao := false;
    sProd_Tamanho := '';
    sProd_Cor := '';

    // verificar se foi digitado a quantidade no campo de busca do produto utilizando os
    // caracteres "X" ou "*"

    if (pos('X', ansiuppercase(referencia)) > 0) or
      (pos('*', ansiuppercase(referencia)) > 0) then
    begin
      iPosicao := pos('X', ansiuppercase(referencia));
      if iPosicao = 0 then
        iPosicao := pos('*', ansiuppercase(referencia));
      try
        // alimenta a varivel de qtde
        rProd_qtde := Strtofloat(copy(referencia, 1, iPosicao - 1));
        // copia apenas a parte que contem a informacao da busca do produto
        referencia := copy(referencia, iPosicao + 1, 99);
      except
        // retornou erro, zera a qtde e deixa a referencia como estah.
        rProd_qtde := 1;
      end;
      {
        if (pos('-',ansiuppercase(referencia)) > 0) then
        begin
        iPosicao := pos('-',ansiuppercase(referencia));
        try
        // alimenta a varivel de qtde
        rProd_Qtde := -1;
        // copia apenas a parte que contem a informacao da busca do produto
        referencia := copy(referencia,iPosicao+1,99);
        except
        // retornou erro, zera a qtde e deixa a referencia como estah.
        rProd_qtde := 1;
        end;

        end
      }
    end;

    // verificar ha possibilidade do texto ser um numero inteiro ou
    // nao ser um produto pesado em balanca --> iniciado por 2
    if length(referencia) < 8 then
    begin
      // verificar se o campo referencia eh um numero inteiro valido
      try
        strtoint(referencia);
        bBusca_codigo := true;
      except
        on EConvertError do
          bBusca_codigo := false;
      end;
      if bBusca_codigo then
      begin
        // comando SQL para filtrar o produto pelo codigo de barras
        query.close;
        query.sql.clear;
        query.sql.add('select * from ESTOQUE');
        query.sql.add('where cod_barra = ''' + referencia + '''');
        query.Open;
        if query.recordcount > 0 then
        begin
          // econtrou o registro pelo codigo de barras
          Result := true;
        end
        else
        begin
          // nao achou pelo codigo de barras, procurar pelo codigo
          try
            query.close;
            query.sql.clear;
            query.sql.add('select * from ESTOQUE');
            query.sql.add('where codigo = ' + referencia);
            query.Open;
            if query.recordcount > 0 then
            begin
              // encontrou o registro pelo codigo
              Result := true;
            end
            else
            begin
              // nao encontrou nenhum produto
              Result := false;
            end;
          except
            Result := false;
          end;
        end;
      end
      else
      begin
        // BUSCAR PELO CODIGO DE BARRAS
        query.close;
        query.sql.clear;
        query.sql.add('select * from ESTOQUE');
        query.sql.add('where cod_barra = ''' + referencia + '''');
        query.Open;

        if query.recordcount > 0 then
        begin
          // econtrou o registro pelo codigo de barras
          Result := true;
        end
        else
        begin
          // nao achou pelo codigo de barras, procurar pelo nome
          query.close;
          query.sql.clear;
          query.sql.add('select * from ESTOQUE');
          query.sql.add('where upper(REFERENCIA) LIKE ''' +
            ansiuppercase(referencia) + '%''');
          query.sql.add('order by REFERENCIA, COR, TAMANHO');
          query.Open;

          if query.recordcount > 0 then
          begin
            Result := true;
          end
          else
          begin
            // nao achou pelo codigo de barras, procurar pelo nome
            query.close;
            query.sql.clear;
            query.sql.add('select * from ESTOQUE');
            query.sql.add('where upper(nome) like ''' +
              ansiuppercase(referencia) + '%''');
            query.sql.add('order by nome');
            query.Open;

            if query.recordcount > 0 then
            begin
              if query.recordcount > 1 then
              begin
                iProd_codigo := 0;
                // encontrou varios registros
                if iPesquisa_produto = 1 then
                begin
                  frmProduto_consulta := TfrmProduto_consulta.create(self);
                  frmProduto_consulta.ed_barra.text := ed_barra.text;
                  frmProduto_consulta.showmodal;
                  if iProd_codigo > 0 then
                  begin
                    query.close;
                    query.sql.clear;
                    query.sql.add('select * from estoque where codigo = ' +
                      inttostr(iProd_codigo));
                    query.Open;
                    Result := true;
                  end
                  else
                    Result := false;
                end
                else
                  Result := true;
              end
              else
                // encontrou o registro pelo nome
                Result := true;
            end
            else
            begin
              // nao encontrou nenhum produto
              Result := false;
            end;
          end;
        end;
      end;
    end
    else
    begin
      // verificar se o produto é pesado em balanca
      if (copy(referencia, 1, 1) = '2') and (length(referencia) <= 13) then
      begin
        try // Exemplo de codigo na etiqueta: 2000010002550 -> Codigo = 00001 Valor = 000255 = 2,55
          query.close;
          query.sql.clear;
          query.sql.add('select * from ESTOQUE');
          // extrair o codigo do produto na etiqueta de codigo de barras conf. o tamanho
          // do codigo da balanca configurado previamente
          query.sql.add('where cod_barra = ''' +
            inttostr(strtoint(copy(referencia, 2, iTamanho_codigo_balanca)
            )) + '''');

          query.Open;
          if query.recordcount > 0 then
          begin
            // encontrou um registro e estah lancando o valor contido na etiqueta de cod.barras
            rProd_total := Strtofloat(copy(referencia, 8, 5)) / 100;

            Result := true;
          end
          else
            // nao encontrou nenhum registro
            Result := false;
        except
          // retornou erro ao tentar buscar pelo codigo do produto pesasdo
          Result := false;
        end;
      end
      else
      begin
        // nao achou pelo codigo de barras, procurar pelo nome
        query.close;
        query.sql.clear;
        query.sql.add('select * from ESTOQUE');
        query.sql.add('where upper(REFERENCIA) LIKE ''' +
          ansiuppercase(referencia) + '%''');
        query.sql.add('order by REFERENCIA, COR, TAMANHO');
        query.Open;

        if query.recordcount > 0 then
        begin
          // nao encontrou nenhum produto
          Result := false;
        end
        else
        begin
          // busca normal pelo codigo de barras e pelo nome do produto
          // comando SQL para filtrar o produto pelo codigo de barras
          query.close;
          query.sql.clear;
          query.sql.add('select * from ESTOQUE');
          query.sql.add('where cod_barra = ''' + referencia + '''');
          query.Open;

          if query.recordcount > 0 then
          begin
            // econtrou o registro pelo codigo de barras
            Result := true;
          end
          else
          begin
            // nao achou pelo codigo de barras, procurar pelo nome
            query.close;
            query.sql.clear;
            query.sql.add('select * from ESTOQUE');
            query.sql.add('where upper(nome) like ''' + referencia + '%''');
            query.sql.add('order by nome');
            query.Open;
            if query.recordcount > 0 then
            begin
              // encontrou o registro pelo nome
              Result := true;
            end
            else
            begin
              // nao encontrou nenhum produto
              Result := false;
            end;
          end;
        end;
      end;
    end;
  finally
    if Result then
    begin
      // encontrou o produto, alimentar as variaveis de retorno
      sProd_nome := query.fieldbyname('nome').asstring;
      sProd_barra := query.fieldbyname('cod_barra').asstring;
      sProd_unidade := query.fieldbyname('unidade').asstring;
      iProd_codigo := query.fieldbyname('codigo').asinteger;
      sProd_CST := query.fieldbyname('cst').asstring;
      rProd_aliquota := query.fieldbyname('aliquota').asfloat;
      rProd_Estoque := query.fieldbyname('estoque').asfloat;
      rProd_preco := query.fieldbyname('preco_venda').asfloat;
      rProd_desconto_maximo := query.fieldbyname('desconto_maximo').asfloat;
      bProd_promocao := false;
      rprod_desconto := 0;
      rprod_acrescimo := 0;
      sProd_Tamanho := query.fieldbyname('TAMANHO').asstring;
      sProd_Cor := query.fieldbyname('COR').asstring;

      // verificar se o produto estah em promocao
      if query.fieldbyname('preco_promocao').asfloat > 0 then
      begin
        IF (dData_Sistema >= query.fieldbyname('inicio_promocao').AsDateTime)
          AND (dData_Sistema <= query.fieldbyname('final_promocao').AsDateTime)
        then
        begin
          rProd_preco := query.fieldbyname('preco_promocao').asfloat;
          bProd_promocao := true;
        end;
      end;
      if rProd_total > 0 then
      begin
        // o valor total foi achado caso o produto foi pesado
        // encontrar a qtde do produto
        rProd_qtde := rProd_total / rProd_preco;
      end;

      // verificar seh eh para truncar o valor total
      if bTruncar_valor then
      begin
        rProd_total := Truncar_Valor(rProd_qtde * rProd_preco);
      end
      else
      begin
        if rProd_total = 0 then
          rProd_total := rProd_qtde * rProd_preco;
      end;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
function TfrmVenda.TEF_Pagamento(Tef_tipo: TTef_Tipo): boolean;
begin
  if (Tef_tipo = Tef_Venda_Cartao) then
  begin
    // apontar por default o gp redecard/visanet/amex
    Tef_Bandeira_escolhida := Tef_Redecard;

    if bTEF_TecBan then
    begin
      frmTef_bandeira := tfrmTef_Bandeira.create(self);
      frmTef_bandeira.showmodal;
    end;

    Result := TEF_Cartao(Tef_Bandeira_escolhida);
  end
  else
  begin
    if (Tef_tipo = Tef_Venda_Cheque) then
    begin
      // apontar por default o gp redecard/visanet/amex
      Tef_Bandeira_escolhida := Tef_Redecard;

      if bTEF_TecBan then
      begin
        frmTef_bandeira := tfrmTef_Bandeira.create(self);
        frmTef_bandeira.rb_visanet.Enabled := false;
        frmTef_bandeira.rb_amex.Enabled := false;
        frmTef_bandeira.rb_hipercard.Enabled := false;
        frmTef_bandeira.rb_tribanco.Enabled := false;
        frmTef_bandeira.showmodal;
      end;

      Result := TEF_Cheque(Tef_Bandeira_escolhida);
    end;
  end;
end;

// -------------------------------------------------------------------------- //
// venda no cartao via tef
function TfrmVenda.TEF_Cartao(bandeira: Tbandeira_tef): boolean;

var
  txt: textfile;
begin
  // armazenar no arquivo temporario a bandeira
  if bandeira = Tef_TecBan then
  begin
    assignfile(txt, sTEFTemp_Path + 'gp.tmp');
    rewrite(txt);
    writeln(txt, 'TECBAN');
    closefile(txt);
    iTEFTecban := 1;
  end
  else
  begin
    if bandeira = Tef_Hipercard then
    begin
      assignfile(txt, sTEFTemp_Path + 'gp.tmp');
      rewrite(txt);
      writeln(txt, 'HIPERCARD');
      closefile(txt);
      iTEFTecban := 2;
    end
    else
    begin
      assignfile(txt, sTEFTemp_Path + 'gp.tmp');
      rewrite(txt);
      writeln(txt, 'REDECARD');
      closefile(txt);
      iTEFTecban := 0;
    end;
  end;
  bContinua := true;

  TEFLimpaVariaveis;

  // passar os parametros para as variaveis do tef
  sTefDoctoVinculado := sNumero_Cupom;
  sTefValorTotal := somenteNumero(formatfloat('##########0.00',
    rValor_Total_Cartao));
  sTEFMoeda := '0';

  // Primeiro passo do TEF
  TEFVendaCartao;

  // verificar retorno do TEF
  if sTEFRetorno = '0' then
    Result := true
  else
    Result := false;
end;

// -------------------------------------------------------------------------- //
// consulta de cheque via tef
function TfrmVenda.TEF_Cheque(bandeira: Tbandeira_tef): boolean;

var
  txt: textfile;
begin
  // armazenar no arquivo temporario a bandeira

  // armazenar no arquivo temporario a bandeira
  if bandeira = Tef_TecBan then
  begin
    assignfile(txt, sTEFTemp_Path + 'gp.tmp');
    rewrite(txt);
    writeln(txt, 'TECBAN');
    closefile(txt);
    iTEFTecban := 1;
  end
  else
  begin
    if bandeira = Tef_Hipercard then
    begin
      assignfile(txt, sTEFTemp_Path + 'gp.tmp');
      rewrite(txt);
      writeln(txt, 'HIPERCARD');
      closefile(txt);
      iTEFTecban := 2;
    end
    else
    begin
      assignfile(txt, sTEFTemp_Path + 'gp.tmp');
      rewrite(txt);
      writeln(txt, 'REDECARD');
      closefile(txt);
      iTEFTecban := 0;
    end;
  end;

  if (bandeira = Tef_Redecard) or (bandeira = Tef_TecBan) then
  begin
    bContinua := true;

    TEFLimpaVariaveis;

    // passar os parametros para as variaveis do tef
    sTefDoctoVinculado := sNumero_Cupom;
    sTefValorTotal := somenteNumero(formatfloat('##########0.00',
      rvalor_total_cheque));
    sTEFMoeda := '0';

    // Primeiro passo do TEF do cheque
    TEFVendaCheque;

    // verificar retorno do TEF
    if sTEFRetorno = '0' then
      Result := true
    else
      Result := false;
  end
  else
    Result := false;
end;

// -------------------------------------------------------------------------- //
// Cancela cupom aberto

procedure TfrmVenda.Cancela_cupom_aberto();

var
  i: Integer;
  scod_cupom: string;
begin
  Imprime_display('Aguarde! Cancelando cupom ' + sNumero_Cupom + '!', clBackground,
    tiAlerta);

  if (bLanca_pre_venda) or (bLanca_OS) or (bLanca_Abastecimento) then
  begin
    // venda foi feito por uma pre-venda
    // finalizar o cupom e depois cancelar
    sMsg := ok;

    if frmPrincipal.TipoImpressora = Fiscal then
      sMsg := cECF_Fecha_Cupom_Resumido(iECF_Modelo, 'DINHEIRO',
        sPAF_MD5 + #10 + sPre_Venda_Numero + sDav_numero + sPosto_rodape +
        sMesa_numero, rTotal_Venda)
    else
      sMsg := Imp_Fecha_Cupom_Resumido(sPortaNaoFiscal, 'DINHEIRO',
        #10 + sPre_Venda_Numero + sDav_numero + sPosto_rodape + sMesa_numero,
        rTotal_Venda);

    if sMsg = ok then
    begin

      with frmmodulo do
      begin
        // lancamento do cupom no banco de dados
        scod_cupom := codifica_cupom;
        spCupom.close;
        spCupom.ParamByName('codigo').asstring := scod_cupom;
        spCupom.ParamByName('numero').asstring := sNumero_Cupom;
        spCupom.ParamByName('ccf').asstring := sNumero_contador_cupom;
        spCupom.ParamByName('ECF').asstring := sECF_Serial;
        spCupom.ParamByName('data').asdate := dData_Sistema;
        spCupom.ParamByName('hora').AsTime := hHora_Cupom;
        spCupom.ParamByName('qtde_item').asinteger := iTotal_Itens;
        spCupom.ParamByName('valor_produto').asfloat := rTotal_Venda;
        spCupom.ParamByName('Valor_Desconto').asfloat := rTotal_Desconto;
        spCupom.ParamByName('Valor_Acrescimo').asfloat := rTotal_Acrescimo;
        spCupom.ParamByName('valor_total').asfloat := rTotal_Venda;
        spCupom.ParamByName('valor_pago').asfloat := rTotal_Venda;
        spCupom.ParamByName('valor_troco').asfloat := 0;
        if sCli_codigo <> '' then
          spCupom.ParamByName('cod_cliente').asstring := sCli_codigo
        else
          spCupom.ParamByName('cod_cliente').clear;

        spCupom.ParamByName('cancelado').asinteger := 0;
        spCupom.ParamByName('cpf_consumidor').asstring := sConsumidor_CPF;
        spCupom.ParamByName('nome_consumidor').asstring :=
          copy(sConsumidor_Nome, 1, 40);
        spCupom.ParamByName('cod_caixa').asinteger := iNumCaixa;
        spCupom.ParamByName('ecf_caixa').asstring := copy(sECF_Caixa, 1, 3);
        spCupom.ParamByName('cod_vendedor').asinteger := icodigo_Usuario;
        spCupom.Prepare;
        spCupom.Execute;

        if iCodigo_abastecimento > 0 then
        begin
          frmVenda.timer_abastecimento.Enabled := false;
          query.close;
          query.sql.clear;
          query.sql.add('update posto_abastecimento set situacao = 1');
          query.sql.add('where codigo = ' + inttostr(iCodigo_abastecimento));
          query.ExecSQL;

          // atualizacao do encerrante
          query.close;
          query.sql.clear;
          query.sql.add
            ('select posto_abastecimento.*, posto_bico.codigo as codigo_bico');
          query.sql.add('from posto_abastecimento, posto_bico');
          query.sql.add('where posto_abastecimento.bico = posto_bico.bico');
          query.sql.add('and posto_abastecimento.codigo = ' +
            inttostr(iCodigo_abastecimento));
          query.Open;

          frmmodulo.st_bico_movimento.close;
          frmmodulo.st_bico_movimento.ParamByName('cod_bico').asinteger :=
            query.fieldbyname('codigo_bico').asinteger;
          frmmodulo.st_bico_movimento.ParamByName('EF').asfloat :=
            query.fieldbyname('ef').asfloat;
          frmmodulo.st_bico_movimento.ParamByName('volume').asfloat :=
            query.fieldbyname('qtde').asfloat;
          frmmodulo.st_bico_movimento.ParamByName('data').AsDateTime :=
            query.fieldbyname('data').asfloat;
          frmmodulo.st_bico_movimento.Prepare;
          frmmodulo.st_bico_movimento.Execute;

          frmVenda.timer_abastecimento.Enabled := true;

          // lancamento dos items do cupom no banco de dados
          for i := 0 to grid.RowCount - 1 do
          begin
            // situacoes
            // 1 - Venda do Item
            // 3 - Cancelamento do Item
            // 4 - Desconto no Item
            // 5 - Acrescimo no Item

            if grid.Cell[1, i].asinteger = 1 then
            begin
              spCupom_Item.close;
              spCupom_Item.ParamByName('codigo').asstring :=
                codifica_item(grid.Cell[2, i].asinteger);
              spCupom_Item.ParamByName('cod_cupom').asstring := scod_cupom;
              spCupom_Item.ParamByName('item').asinteger :=
                grid.Cell[2, i].asinteger;
              spCupom_Item.ParamByName('cod_produto').asinteger :=
                grid.Cell[3, i].asinteger;
              spCupom_Item.ParamByName('unidade').asstring :=
                grid.Cell[12, i].asstring;
              spCupom_Item.ParamByName('qtde').asfloat :=
                grid.Cell[5, i].asfloat;
              spCupom_Item.ParamByName('valor_unitario').asfloat :=
                grid.Cell[6, i].asfloat;
              spCupom_Item.ParamByName('valor_subtotal').asfloat :=
                grid.Cell[5, i].asfloat * grid.Cell[6, i].asfloat;
              spCupom_Item.ParamByName('valor_desconto').asfloat :=
                grid.Cell[7, i].asfloat;
              spCupom_Item.ParamByName('valor_acrescimo').asfloat :=
                grid.Cell[8, i].asfloat;
              spCupom_Item.ParamByName('valor_total').asfloat :=
                grid.Cell[9, i].asfloat;
              spCupom_Item.ParamByName('cst').asstring :=
                grid.Cell[11, i].asstring;
              spCupom_Item.ParamByName('aliquota').asfloat :=
                grid.Cell[10, i].asfloat;
              spCupom_Item.ParamByName('cancelado').asinteger :=
                grid.Cell[13, i].asinteger;
              spCupom_Item.ParamByName('tamanho').asstring :=
                grid.Cell[14, i].asstring;
              spCupom_Item.ParamByName('cor').asstring :=
                grid.Cell[15, i].asstring;

              if (grid.Cell[11, i].asstring = '060') or
                (grid.Cell[11, i].asstring = '010') or
                (grid.Cell[11, i].asstring = '070') then
                spCupom_Item.ParamByName('cod_totalizador').asstring := 'F1'
              else if (grid.Cell[11, i].asstring = '040') or
                (grid.Cell[11, i].asstring = '030') then
                spCupom_Item.ParamByName('cod_totalizador').asstring := 'I1'
              else if (grid.Cell[11, i].asstring = '041') or
                (grid.Cell[11, i].asstring = '050') or
                (grid.Cell[11, i].asstring = '051') or
                (grid.Cell[11, i].asstring = '090') then
                spCupom_Item.ParamByName('cod_totalizador').asstring := 'N1'
              else if (grid.Cell[11, i].asstring = 'ISS') then
                spCupom_Item.ParamByName('cod_totalizador').asstring :=
                  '01S' + Retorna_aliquota(grid.Cell[11, i].asstring,
                  grid.Cell[10, i].asfloat)
              else
                spCupom_Item.ParamByName('cod_totalizador').asstring :=
                  retorna_codigo_aliquota(grid.Cell[10, i].asfloat);

              spCupom_Item.Prepare;
              spCupom_Item.Execute;
            end;
          end;
          // lancar a forma de pagamento - DINHEIRO
          spCupom_Forma.close;
          spCupom_Forma.ParamByName('codigo').asstring := codifica_forma(1);
          spCupom_Forma.ParamByName('cod_cupom').asstring := scod_cupom;
          spCupom_Forma.ParamByName('forma').asstring := 'DINHEIRO';
          spCupom_Forma.ParamByName('valor').asfloat := rTotal_Venda;
          spCupom_Forma.ParamByName('prestacao').asinteger := 1;

          if frmPrincipal.TipoImpressora = Fiscal then
            spCupom_Forma.ParamByName('tipo').asstring := 'CUPOM FISCAL'
          else
            spCupom_Forma.ParamByName('tipo').asstring := 'CUPOM NAO FISCAL';

          spCupom_Forma.Prepare;
          spCupom_Forma.Execute;
        end;

        // cancelar se for prevenda e os, abastecimento nao
        if (bLanca_pre_venda) or (bLanca_OS) then
        begin

          // fazer o cancelamento do cupom
          Cancela_cupom_fechado;

          if bLanca_pre_venda then
          begin
            // atualizar situacao da pre-venda para 3 = cancelada
            frmmodulo.query_servidor.close;
            frmmodulo.query_servidor.sql.clear;
            frmmodulo.query_servidor.sql.add
              ('update c000074 set situacao = 3  where codigo = ''' +
              Zerar(inttostr(iPre_venda_codigo), 6) + '''');
            frmmodulo.query_servidor.ExecSQL;

            bLanca_pre_venda := false;
          end
          else
          begin
            // atualizar situacao da OS para CANCELADA
            frmmodulo.query_servidor.close;
            frmmodulo.query_servidor.sql.clear;
            frmmodulo.query_servidor.sql.add
              ('update c000051 set situacao = ''CANCELADA''  where codigo = '''
              + Zerar(inttostr(iOS_codigo), 6) + '''');
            frmmodulo.query_servidor.ExecSQL;

            bLanca_OS := false;
          end;
        end
        else
        begin
          // atualizar o totalizar qdo for abastecimento, os demais serao feitos apos o cancelamento
          if frmPrincipal.TipoImpressora = Fiscal then
          begin

          end;
          REPEAT
            sMsg := cECF_Grande_Total(iECF_Modelo);
            iF sMsg = 'ERRO' then
            begin
              if application.messagebox
                (pwidechar('Erro ao verificar totalizador do ECF!' + #13 +
                'Mensagem: ' + sMsg + #13 + 'Deseja tentar outra vez?'), 'Erro',
                mb_yesno + MB_ICONERROR) = idno then
                break;

            end
            else
              atualiza_totalizador(sMsg);
          UNTIL sMsg <> 'ERRO';

        end;

      end;

      // limpar o form de venda
      if bBusca_foto_produto then
      begin
        // // img_shape.Visible := false;
        img_produto.Picture := nil;
      end;
      bVenda := false;
      Limpa_controles;
    end
    else
    begin
      application.messagebox('Erro ao tentar fechar o cupom!', 'Erro',
        mb_ok + MB_ICONERROR);
      exit;
    end;
  end
  else
  begin

    if frmPrincipal.TipoImpressora = Fiscal then
      sMsg := cECF_Cancela_Cupom(iECF_Modelo)
    else
      sMsg := Imp_Cancela_Cupom(sPortaNaoFiscal);

    if sMsg = ok then
    begin
      // Excluir os arquivos temporarios

      frmmodulo.spCupom_Temp_delete.Prepare;
      frmmodulo.spCupom_Temp_delete.Execute;

      // lancar o cupom no banco de dados como cancelado
      with frmmodulo do
      begin
        scod_cupom := codifica_cupom;
        spCupom.close;
        spCupom.ParamByName('codigo').asstring := scod_cupom;
        spCupom.ParamByName('numero').asstring := sNumero_Cupom;
        spCupom.ParamByName('ccf').asstring := sNumero_contador_cupom;
        spCupom.ParamByName('ECF').asstring := sECF_Serial;
        spCupom.ParamByName('data').asdate := dData_Sistema;
        spCupom.ParamByName('hora').AsTime := hHora_Cupom;
        spCupom.ParamByName('qtde_item').asinteger := iTotal_Itens;
        spCupom.ParamByName('valor_produto').asfloat := 0;
        spCupom.ParamByName('Valor_Desconto').asfloat := 0;
        spCupom.ParamByName('Valor_Acrescimo').asfloat := 0;
        spCupom.ParamByName('valor_total').asfloat := 0;
        spCupom.ParamByName('valor_pago').asfloat := 0;
        spCupom.ParamByName('valor_troco').asfloat := 0;
        spCupom.ParamByName('cod_cliente').clear;
        spCupom.ParamByName('cancelado').asinteger := 1;
        spCupom.ParamByName('CPF_consumidor').clear;
        spCupom.ParamByName('nome_consumidor').clear;
        spCupom.ParamByName('cod_caixa').asinteger := iNumCaixa;
        spCupom.ParamByName('ecf_caixa').asstring := copy(sECF_Caixa, 1, 3);
        spCupom.ParamByName('cod_vendedor').asinteger := icodigo_Usuario;
        spCupom.Prepare;
        spCupom.Execute;

        // lancar os itens no banco de dados como cancelado
        for i := 0 to grid.RowCount - 1 do
        begin
          if grid.Cell[1, i].asinteger = 1 then
          begin
            spCupom_Item.close;
            spCupom_Item.ParamByName('codigo').asstring :=
              codifica_item(grid.Cell[2, i].asinteger);
            spCupom_Item.ParamByName('cod_cupom').asstring := scod_cupom;
            spCupom_Item.ParamByName('item').asinteger :=
              grid.Cell[2, i].asinteger;
            spCupom_Item.ParamByName('cod_produto').asinteger :=
              grid.Cell[3, i].asinteger;
            spCupom_Item.ParamByName('unidade').asstring :=
              grid.Cell[12, i].asstring;
            spCupom_Item.ParamByName('qtde').asfloat := grid.Cell[5, i].asfloat;
            spCupom_Item.ParamByName('valor_unitario').asfloat :=
              grid.Cell[6, i].asfloat;
            spCupom_Item.ParamByName('valor_subtotal').asfloat :=
              grid.Cell[5, i].asfloat * grid.Cell[6, i].asfloat;
            spCupom_Item.ParamByName('valor_desconto').asfloat :=
              grid.Cell[7, i].asfloat;
            spCupom_Item.ParamByName('valor_acrescimo').asfloat :=
              grid.Cell[8, i].asfloat;
            spCupom_Item.ParamByName('valor_total').asfloat :=
              grid.Cell[9, i].asfloat;
            spCupom_Item.ParamByName('cst').asstring :=
              grid.Cell[11, i].asstring;
            spCupom_Item.ParamByName('aliquota').asfloat :=
              grid.Cell[10, i].asfloat;
            spCupom_Item.ParamByName('tamanho').asstring :=
              grid.Cell[14, i].asstring;
            spCupom_Item.ParamByName('cor').asstring :=
              grid.Cell[15, i].asstring;

            if (grid.Cell[11, i].asstring = '060') or
              (grid.Cell[11, i].asstring = '010') or
              (grid.Cell[11, i].asstring = '070') then
              spCupom_Item.ParamByName('cod_totalizador').asstring := 'F1'
            else if (grid.Cell[11, i].asstring = '040') or
              (grid.Cell[11, i].asstring = '030') then
              spCupom_Item.ParamByName('cod_totalizador').asstring := 'I1'
            else if (grid.Cell[11, i].asstring = '041') or
              (grid.Cell[11, i].asstring = '050') or
              (grid.Cell[11, i].asstring = '051') or
              (grid.Cell[11, i].asstring = '090') then
              spCupom_Item.ParamByName('cod_totalizador').asstring := 'N1'
            else if (grid.Cell[11, i].asstring = 'ISS') then
              spCupom_Item.ParamByName('cod_totalizador').asstring :=
                '01S' + Retorna_aliquota(grid.Cell[11, i].asstring,
                grid.Cell[10, i].asfloat)
            else
              spCupom_Item.ParamByName('cod_totalizador').asstring :=
                retorna_codigo_aliquota(grid.Cell[10, i].asfloat);

            spCupom_Item.ParamByName('cancelado').asinteger := 1;
            spCupom_Item.Prepare;
            spCupom_Item.Execute;
          end;
        end;

      end;

      if bBusca_foto_produto then
      begin
        // // img_shape.Visible := false;
        img_produto.Picture := nil;
      end;
      bVenda := false;
      Limpa_controles;
    end
    else
    begin
      Imprime_display(sMsg, clred, tiErro);
      sleep(1500);
      ed_barra.setfocus;
    end;

    // atualizar o totalizador geral do PAF com a do ECF
    REPEAT
      sMsg := cECF_Grande_Total(iECF_Modelo);
      iF sMsg = 'ERRO' then
      begin
        if application.messagebox
          (pwidechar('Erro ao verificar totalizador do ECF!' + #13 +
          'Mensagem: ' + sMsg + #13 + 'Deseja tentar outra vez?'), 'Erro',
          mb_yesno + MB_ICONERROR) = idno then
          break;
      end
      else
        atualiza_totalizador(sMsg);
    UNTIL sMsg <> 'ERRO';

    // POSTO
    if sRamo_Tipo = '3' then
    begin
      ilinha_abastecimento := 0;
      iCodigo_abastecimento := 0;
      timer_abastecimento.Enabled := true;
      PN_POSTO.Visible := true;
      grid_abastecimento.setfocus;
    end;
  end;

  if bVenda then
    gravaINI(sConfiguracoes, 'PDV', 'Aberto', 'SIM')
  else
    gravaINI(sConfiguracoes, 'PDV', 'Aberto', 'NAO');

end;

// -------------------------------------------------------------------------- //
// Cancela cupom fechaDO
procedure TfrmVenda.Cancela_cupom_fechado();

var
  scod_cupom: string;
  i: Integer;

begin
  // localizando o cupom no banco de dados
  if not bLanca_pre_venda then
    If (iECF_Modelo <> BEMATECH) and (iECF_Modelo <> EPSON) then
      sNumero_Cupom := Zerar(inttostr(strtoint(sNumero_Cupom) - 1), 6);

  for i := 0 to 2 do
  begin
    sNumero_Cupom := Zerar(inttostr(strtoint(sNumero_Cupom) - i), 6);

    query.close;
    query.sql.clear;
    query.sql.add('select numero, codigo from cupom where numero = ''' +
      sNumero_Cupom + '''');
    query.sql.add('and ecf = ''' + sECF_Serial + ''' and data = :data');
    query.ParamByName('data').AsDateTime := dData_Sistema;
    query.Open;
    if query.recordcount > 0 then
    begin
      break;
    end;
  end;

  if query.recordcount = 0 then
  begin
    Imprime_display('Cupom não encontrado!', clred, tiErro);
    sleep(1500);
    ed_barra.setfocus;
    exit;
  end;

  Imprime_display('Aguarde! Cancelando cupom ' + sNumero_Cupom + '!', clBackground,
    tiAlerta);
  sleep(1000);

  if frmPrincipal.TipoImpressora = Fiscal then
    sMsg := cECF_Cancela_Cupom(iECF_Modelo)
  else
    sMsg := Imp_Cancela_Cupom(sPortaNaoFiscal);

  if sMsg = ok then
  begin
    scod_cupom := query.fieldbyname('codigo').asstring;

    // cancelar cupom no banco de dados
    query.close;
    query.sql.clear;
    query.sql.add('update cupom set cancelado = 1 where numero = ''' +
      sNumero_Cupom + '''');
    query.sql.add('and ecf = ''' + sECF_Serial + ''' and data = :data');
    query.ParamByName('data').AsDateTime := dData_Sistema;
    query.ExecSQL;

    query.close;
    query.sql.clear;
    query.sql.add('update cupom_item set cancelado = 1 where cod_cupom = ''' +
      scod_cupom + '''');
    query.ExecSQL;

    if bBusca_foto_produto then
    begin
      // // img_shape.Visible := false;
      img_produto.Picture := nil;
    end;

    bVenda := false;
    Limpa_controles;
  end
  else
  begin
    Imprime_display(sMsg, clred, tiErro);
    sleep(1500);
    ed_barra.setfocus;
  end;

  // atualizar o totalizador geral do PAF com a do ECF
  if frmPrincipal.TipoImpressora = Fiscal then
    REPEAT
      sMsg := cECF_Grande_Total(iECF_Modelo);
      iF sMsg = 'ERRO' then
      begin
        if application.messagebox
          (pwidechar('Erro ao verificar totalizador do ECF!' + #13 +
          'Mensagem: ' + sMsg + #13 + 'Deseja tentar outra vez?'), 'Erro',
          mb_yesno + MB_ICONERROR) = idno then
          break;

      end
      else
        atualiza_totalizador(sMsg);
    UNTIL sMsg <> 'ERRO';

  if bVenda then
    gravaINI(sConfiguracoes, 'PDV', 'Aberto', 'SIM')
  else
    gravaINI(sConfiguracoes, 'PDV', 'Aberto', 'NAO');
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.Cancela_Item(sItem: string);

var
  i: Integer;
begin
  // inicia o cancelamento

  if frmPrincipal.TipoImpressora = Fiscal then
    sMsg := cECF_Cancela_Item(iECF_Modelo, Zerar(sItem, 3))
  else
    sMsg := Imp_Cancela_Item(sPortaNaoFiscal, Zerar(sItem, 3));

  if sMsg <> ok then
  begin
    Imprime_display(sMsg, clred, tiErro);
    sleep(1000);
    Imprime_display('INFORME O PRODUTO...', clBackground, tiLivre);
    ed_barra.setfocus;
    exit;
  end;

  pn_cancelar_item.Visible := false;
  application.ProcessMessages;
  // alimenta as variaveis
  iProd_codigo := grid.Cell[3, grid.SelectedRow].asinteger;
  sProd_nome := grid.Cell[4, grid.SelectedRow].asstring;
  rProd_qtde := grid.Cell[5, grid.SelectedRow].asfloat;
  rProd_preco := grid.Cell[6, grid.SelectedRow].asfloat;
  rProd_total := grid.Cell[9, grid.SelectedRow].asfloat;
  rProd_aliquota := grid.Cell[10, grid.SelectedRow].asfloat;
  sProd_CST := grid.Cell[11, grid.SelectedRow].asstring;
  sProd_unidade := grid.Cell[12, grid.SelectedRow].asstring;
  sProd_Tamanho := grid.Cell[14, grid.SelectedRow].asstring;
  sProd_Cor := grid.Cell[15, grid.SelectedRow].asstring;

  // cancelar o item na linha do grid
  grid.Cell[13, grid.SelectedRow].asinteger := 1;
  grid.Cell[1, grid.SelectedRow].asinteger := 3;
  // diminui os totalizadores
  Dec(iTotal_Itens);
  rTotal_Venda := rTotal_Venda - rProd_total;

  // Registrar item no Grid
  i := grid.AddRow(1);
  grid.Cell[0, grid.LastAddedRow].asstring :=
    '<FONT color="#FF0000">Cancelamento do Item ' + Zerar(ed_cancelar_item.text,
    4) + '  ' + texto_justifica(formatfloat('###,###,##0.000', -rProd_qtde), 10,
    ' ', taDireita) + texto_justifica(formatfloat('###,###,##0.00',
    rProd_preco), 9, ' ', taDireita) + texto_justifica
    (formatfloat('###,###,##0.00', -rProd_total), 9, ' ', taDireita) +
    '</FONT>';

  // alimentar os campos invisiveis do grid com as informacoes do produto
  grid.Cell[1, grid.LastAddedRow].asinteger := 3; // cancelamento de item
  grid.Cell[2, grid.LastAddedRow].asstring :=
    Zerar(inttostr(ed_cancelar_item.IntValue), 3);
  grid.Cell[3, grid.LastAddedRow].asinteger := iProd_codigo;
  grid.Cell[4, grid.LastAddedRow].asstring := sProd_nome;
  grid.Cell[5, grid.LastAddedRow].asfloat := rProd_qtde;
  grid.Cell[6, grid.LastAddedRow].asfloat := rProd_preco;
  grid.Cell[9, grid.LastAddedRow].asfloat := rProd_total;
  grid.Cell[10, grid.LastAddedRow].asfloat := rProd_aliquota;
  grid.Cell[11, grid.LastAddedRow].asstring := sProd_CST;
  grid.Cell[12, grid.LastAddedRow].asstring := sProd_unidade;
  grid.Cell[13, grid.LastAddedRow].asinteger := 1;
  grid.Cell[14, grid.LastAddedRow].asstring := sProd_Tamanho;
  grid.Cell[15, grid.LastAddedRow].asstring := sProd_Cor;


  // lancar item no banco de dados temporario

  frmmodulo.spCupom_item_temp.close;
  frmmodulo.spCupom_item_temp.ParamByName('codigo').asstring :=
    codifica_item(grid.Cell[2, i].asinteger) + 'C';
  frmmodulo.spCupom_item_temp.ParamByName('cod_cupom').asstring :=
    sNumero_Cupom;
  frmmodulo.spCupom_item_temp.ParamByName('item').asinteger :=
    grid.Cell[2, i].asinteger;
  frmmodulo.spCupom_item_temp.ParamByName('cod_produto').asinteger :=
    grid.Cell[3, i].asinteger;
  frmmodulo.spCupom_item_temp.ParamByName('unidade').asstring :=
    grid.Cell[12, i].asstring;
  frmmodulo.spCupom_item_temp.ParamByName('qtde').asfloat :=
    grid.Cell[5, i].asfloat;
  frmmodulo.spCupom_item_temp.ParamByName('valor_unitario').asfloat :=
    grid.Cell[6, i].asfloat;
  frmmodulo.spCupom_item_temp.ParamByName('valor_subtotal').asfloat :=
    grid.Cell[5, i].asfloat * grid.Cell[6, i].asfloat;
  frmmodulo.spCupom_item_temp.ParamByName('valor_desconto').asfloat :=
    grid.Cell[7, i].asfloat;
  frmmodulo.spCupom_item_temp.ParamByName('valor_acrescimo').asfloat :=
    grid.Cell[8, i].asfloat;
  frmmodulo.spCupom_item_temp.ParamByName('valor_total').asfloat :=
    grid.Cell[9, i].asfloat;
  frmmodulo.spCupom_item_temp.ParamByName('cst').asstring :=
    grid.Cell[11, i].asstring;
  frmmodulo.spCupom_item_temp.ParamByName('aliquota').asfloat :=
    grid.Cell[10, i].asfloat;
  frmmodulo.spCupom_item_temp.ParamByName('cancelado').asinteger :=
    grid.Cell[13, i].asinteger;
  frmmodulo.spCupom_item_temp.ParamByName('tamanho').asstring :=
    grid.Cell[14, i].asstring;
  frmmodulo.spCupom_item_temp.ParamByName('cor').asstring :=
    grid.Cell[15, i].asstring;

  if (grid.Cell[11, i].asstring = '060') or (grid.Cell[11, i].asstring = '010')
    or (grid.Cell[11, i].asstring = '070') then
    frmmodulo.spCupom_item_temp.ParamByName('cod_totalizador').asstring := 'F1'
  else if (grid.Cell[11, i].asstring = '040') or
    (grid.Cell[11, i].asstring = '030') then
    frmmodulo.spCupom_item_temp.ParamByName('cod_totalizador').asstring := 'I1'
  else if (grid.Cell[11, i].asstring = '041') or
    (grid.Cell[11, i].asstring = '050') or (grid.Cell[11, i].asstring = '051')
    or (grid.Cell[11, i].asstring = '090') then
    frmmodulo.spCupom_item_temp.ParamByName('cod_totalizador').asstring := 'N1'
  else if (grid.Cell[11, i].asstring = 'ISS') then
    frmmodulo.spCupom_item_temp.ParamByName('cod_totalizador').asstring :=
      '01S' + Retorna_aliquota(grid.Cell[11, i].asstring,
      grid.Cell[10, i].asfloat)
  else
    frmmodulo.spCupom_item_temp.ParamByName('cod_totalizador').asstring :=
      retorna_codigo_aliquota(grid.Cell[10, i].asfloat);

  grid.SelectLastRow;
  grid.setfocus;

  frmmodulo.spCupom_item_temp.Prepare;
  frmmodulo.spCupom_item_temp.Execute;

  // atualizar os labels de totais e itens
  lb_item.Caption := inttostr(iTotal_Itens);
  lb_total.Caption := 'R$ ' + formatfloat('###,###,##0.00', rTotal_Venda);

  Imprime_display('ITEM ' + Zerar(ed_cancelar_item.text, 4) + ' CANCELADO!',
    clBackground, tiOk);
  sleep(1000);
  Imprime_display('INFORME O PRODUTO...', clBackground, tiLivre);
  ed_barra.setfocus;
  grid.Repaint;
  self.Repaint;

end;

// -------------------------------------------------------------------------- //
// Registrar item no Grid
procedure TfrmVenda.Registra_Item;

var
  sAliquota: string;
  i: Integer;

begin
  MostraFotoProduto(true);
  MostraLogoMarca(false);

  sAliquota := Retorna_aliquota(sProd_CST, rProd_aliquota, iECF_Modelo);

  // verificar se o item tem acrescimo

  if frmPrincipal.TipoImpressora = Fiscal then
  begin
    IF iProd_codigo = 999999 THEN // PRESTACAO DE SERVICO
      sMsg := cECF_Vende_item(iECF_Modelo, Zerar(sProd_barra, 13), sProd_nome,
        copy(sProd_unidade, 1, 2), sAliquota, rProd_qtde, rProd_preco,
        rprod_desconto, rprod_acrescimo, '$', rProd_total)

    else
      sMsg := cECF_Vende_item(iECF_Modelo, Zerar(inttostr(iProd_codigo), 6),
        sProd_nome, copy(sProd_unidade, 1, 2), sAliquota, rProd_qtde,
        rProd_preco, rprod_desconto * rProd_qtde, rprod_acrescimo * rProd_qtde,
        '$', rProd_total);
  end
  else // Se nao for fiscal
    sMsg := Imp_Vende_item(sPortaNaoFiscal, Zerar(inttostr(iProd_codigo), 6),
      sProd_nome, copy(sProd_unidade, 1, 2), sAliquota, rProd_qtde, rProd_preco,
      rprod_desconto * rProd_qtde, rprod_acrescimo * rProd_qtde, '$',
      rProd_total);

  if sMsg <> ok then
  begin
    Imprime_display(sMsg, clred, tiErro);
    sleep(1500);
    exit;
  end;

  // Registrar item no Grid
  i := grid.AddRow(1);
  grid.Cell[0, grid.LastAddedRow].asstring := Zerar(inttostr(iItem), 4) + ' ' +
    Zerar(inttostr(iProd_codigo), 6) + ' ' + texto_justifica(sProd_nome, 15,
    ' ', taEsquerda) + ' ' + texto_justifica(sProd_unidade, 2, ' ', taEsquerda)
    + texto_justifica(formatfloat('########0.000', rProd_qtde), 9, ' ',
    taDireita) + texto_justifica(formatfloat('########0.00', rProd_preco), 8,
    ' ', taDireita) + texto_justifica(formatfloat('########0.00', rProd_total),
    8, ' ', taDireita);

  // alimentar os campos invisiveis do grid com as informacoes do produto
  grid.Cell[1, grid.LastAddedRow].asinteger := 1; // venda de item
  grid.Cell[2, grid.LastAddedRow].asstring := Zerar(inttostr(iItem), 3);
  grid.Cell[3, grid.LastAddedRow].asinteger := iProd_codigo;
  grid.Cell[4, grid.LastAddedRow].asstring := sProd_nome;
  grid.Cell[5, grid.LastAddedRow].asfloat := rProd_qtde;
  grid.Cell[6, grid.LastAddedRow].asfloat := rProd_preco;
  grid.Cell[7, grid.LastAddedRow].asfloat := rprod_desconto;
  grid.Cell[8, grid.LastAddedRow].asfloat := rprod_acrescimo;
  grid.Cell[9, grid.LastAddedRow].asfloat := rProd_total;
  grid.Cell[10, grid.LastAddedRow].asfloat := rProd_aliquota;
  grid.Cell[11, grid.LastAddedRow].asstring := sProd_CST;
  grid.Cell[12, grid.LastAddedRow].asstring := sProd_unidade;
  grid.Cell[13, grid.LastAddedRow].asinteger := 0;
  grid.Cell[14, grid.LastAddedRow].asstring := sProd_Tamanho;
  grid.Cell[15, grid.LastAddedRow].asstring := sProd_Cor;

  // registrar o desconto e acrescimo em outra linha
  if rprod_desconto > 0 then
  begin
    grid.AddRow(1);
    grid.Cell[0, grid.LastAddedRow].asstring :=
      '<i><FONT color="#FF0000">            ' + 'Desconto em R$ ' + '          '
      + texto_justifica(formatfloat('###,###,##0.00',
      -rprod_desconto * rProd_qtde), 9, ' ', taDireita) + '</i></FONT>';
    grid.Cell[1, grid.LastAddedRow].asinteger := 4; // desconto
  end;
  if rprod_acrescimo > 0 then
  begin
    grid.AddRow(1);
    grid.Cell[0, grid.LastAddedRow].asstring :=
      '<i><FONT color="#0000FF">            ' + 'Acréscimo em R$' + '          '
      + texto_justifica(formatfloat('###,###,##0.00',
      rprod_acrescimo * rProd_qtde), 9, ' ', taDireita) + '</i></FONT>';
    grid.Cell[1, grid.LastAddedRow].asinteger := 5; // acrescimo
  end;



  // lancar item no banco de dados temporario

  frmmodulo.spCupom_item_temp.close;
  frmmodulo.spCupom_item_temp.ParamByName('codigo').asstring :=
    codifica_item(grid.Cell[2, i].asinteger);
  frmmodulo.spCupom_item_temp.ParamByName('cod_cupom').asstring :=
    sNumero_Cupom;
  frmmodulo.spCupom_item_temp.ParamByName('item').asinteger :=
    grid.Cell[2, i].asinteger;
  frmmodulo.spCupom_item_temp.ParamByName('cod_produto').asinteger :=
    grid.Cell[3, i].asinteger;
  frmmodulo.spCupom_item_temp.ParamByName('unidade').asstring :=
    grid.Cell[12, i].asstring;
  frmmodulo.spCupom_item_temp.ParamByName('qtde').asfloat :=
    grid.Cell[5, i].asfloat;
  frmmodulo.spCupom_item_temp.ParamByName('valor_unitario').asfloat :=
    grid.Cell[6, i].asfloat;
  frmmodulo.spCupom_item_temp.ParamByName('valor_subtotal').asfloat :=
    grid.Cell[5, i].asfloat * grid.Cell[6, i].asfloat;
  frmmodulo.spCupom_item_temp.ParamByName('valor_desconto').asfloat :=
    grid.Cell[7, i].asfloat;
  frmmodulo.spCupom_item_temp.ParamByName('valor_acrescimo').asfloat :=
    grid.Cell[8, i].asfloat;
  frmmodulo.spCupom_item_temp.ParamByName('valor_total').asfloat :=
    grid.Cell[9, i].asfloat;
  frmmodulo.spCupom_item_temp.ParamByName('cst').asstring :=
    grid.Cell[11, i].asstring;
  frmmodulo.spCupom_item_temp.ParamByName('aliquota').asfloat :=
    grid.Cell[10, i].asfloat;
  frmmodulo.spCupom_item_temp.ParamByName('cancelado').asinteger :=
    grid.Cell[13, i].asinteger;
  frmmodulo.spCupom_item_temp.ParamByName('tamanho').asstring :=
    grid.Cell[14, i].asstring;
  frmmodulo.spCupom_item_temp.ParamByName('cor').asstring :=
    grid.Cell[15, i].asstring;

  if (grid.Cell[11, i].asstring = '060') or (grid.Cell[11, i].asstring = '010')
    or (grid.Cell[11, i].asstring = '070') then
    frmmodulo.spCupom_item_temp.ParamByName('cod_totalizador').asstring := 'F1'
  else if (grid.Cell[11, i].asstring = '040') or
    (grid.Cell[11, i].asstring = '030') then
    frmmodulo.spCupom_item_temp.ParamByName('cod_totalizador').asstring := 'I1'
  else if (grid.Cell[11, i].asstring = '041') or
    (grid.Cell[11, i].asstring = '050') or (grid.Cell[11, i].asstring = '051')
    or (grid.Cell[11, i].asstring = '090') then
    frmmodulo.spCupom_item_temp.ParamByName('cod_totalizador').asstring := 'N1'
  else if (grid.Cell[11, i].asstring = 'ISS') then
    frmmodulo.spCupom_item_temp.ParamByName('cod_totalizador').asstring :=
      '01S' + Retorna_aliquota(grid.Cell[11, i].asstring,
      grid.Cell[10, i].asfloat)
  else
    frmmodulo.spCupom_item_temp.ParamByName('cod_totalizador').asstring :=
      retorna_codigo_aliquota(grid.Cell[10, i].asfloat);

  frmmodulo.spCupom_item_temp.Prepare;
  frmmodulo.spCupom_item_temp.Execute;

  // selecionar a linha incluida no grid
  grid.SelectLastRow;
  // focar no grid para ele ir para ultima linha incluida
  grid.setfocus;
  ed_barra.setfocus;

  // acumluar o item nas variaveis de totalizacao
  rTotal_Venda := rTotal_Venda + rProd_total;
  Inc(iTotal_Itens);
  Inc(iItem);
  // lancar no dislpay o produto
  Imprime_display(sProd_nome, clBackground, tiOk);
  Imprime_display_teclado(lb_produto.Caption, formatfloat('###,###,##0.000',
    rProd_qtde) + ' x R$ ' + formatfloat('###,###,##0.000', rProd_preco) +
    ' = R$ ' + formatfloat('###,###,##0.00', rProd_total));
  // atualizar os labels de totais e itens
  lb_item.Caption := inttostr(iTotal_Itens);
  lb_total.Caption := 'R$ ' + formatfloat('###,###,##0.00', rTotal_Venda);
  ed_barra.text := '';
end;

// -------------------------------------------------------------------------- //
// Limpar os controles para receber uma nova venda/comando
procedure TfrmVenda.Limpa_controles();
begin
  sCli_Nome := '';
  sCli_Endereco := '';
  sCli_Cidade := '';
  sCli_uf := '';
  scli_cep := '';
  sCli_CPF := '';
  sCli_Placa := '';
  sCli_Km := '';
  sCli_vendedor := '';

  sConsumidor_CPF := '';
  sConsumidor_Nome := '';
  sConsumidor_Endereco := '';

  grid.ClearRows;
  grid_topo.ClearRows;
  ed_barra.text := '';
  ed_qtde.value := 0;
  ed_unitario.value := 0;
  ed_total_item.value := 0;
  lb_total.Caption := 'R$ 0,00';
  lb_item.Caption := '0';
  Imprime_display('             C A I X A    L I V R E', clBackground, tiLivre);
  MostraFotoProduto(false);
  MostraLogoMarca(true);
  ed_barra.setfocus;
end;

// -------------------------------------------------------------------------- //
// funcao para alimentar o display superior da tela
procedure TfrmVenda.Imprime_display(texto: string; cor_da_fonte: tcolor;
  Imagem: Tipo_Imagem);
begin
  // armazena os dados atuais do display para enventual uso
  sTexto_anterior := lb_produto.Caption;
  clCor_anterior := lb_produto.Font.color;
  if img_erro.Visible = true then
    TiImagem_anterior := tiErro;
  if img_alerta.Visible = true then
    TiImagem_anterior := tiAlerta;
  if img_info.Visible = true then
    TiImagem_anterior := tiInfo;
  if img_livre.Visible = true then
    TiImagem_anterior := tiLivre;
  if img_ok.Visible = true then
    TiImagem_anterior := tiOk;
  if img_fechado.Visible = true then
    TiImagem_anterior := tiFechado;
  if img_excluir.Visible = true then
    TiImagem_anterior := tiExcluir;
  if img_pergunta.Visible = true then
    TiImagem_anterior := tiPergunta;
  if img_cliente.Visible = true then
    TiImagem_anterior := tiCliente;
  if img_pgto.Visible = true then
    TiImagem_anterior := tiPgto;
  if img_peso.Visible = true then
    TiImagem_anterior := tiPeso;

  // inicia a impressao do display
  img_erro.Visible := false;
  img_alerta.Visible := false;
  img_info.Visible := false;
  img_livre.Visible := false;
  img_ok.Visible := false;
  img_fechado.Visible := false;
  img_excluir.Visible := false;
  img_pergunta.Visible := false;
  img_cliente.Visible := false;
  img_pgto.Visible := false;
  img_peso.Visible := false;
  if Imagem = tiLivre then
    img_livre.Visible := true;
  if Imagem = tiErro then
    img_erro.Visible := true;
  if Imagem = tiAlerta then
    img_alerta.Visible := true;
  if Imagem = tiInfo then
    img_info.Visible := true;
  if Imagem = tiOk then
    img_ok.Visible := true;
  if Imagem = tiFechado then
    img_fechado.Visible := true;
  if Imagem = tiExcluir then
    img_excluir.Visible := true;
  if Imagem = tiPergunta then
    img_pergunta.Visible := true;
  if Imagem = tiCliente then
    img_cliente.Visible := true;
  if Imagem = tiPgto then
    img_pgto.Visible := true;
  if Imagem = tiPeso then
    img_peso.Visible := true;
  lb_produto.Caption := texto;
  lb_produto.Font.color := cor_da_fonte;

  lb_produto.Font.Size := 28;
  application.ProcessMessages;
  // redimensionando o tamanho do label para caber dentro do display independente do
  // tamanho do texto;
  try
    while lb_produto.Width > 668 do
    begin
      lb_produto.Font.Size := lb_produto.Font.Size - 1;
    end;
  except
    lb_produto.Font.Size := 28;
  end;

  Imprime_display_teclado(copy(trimleft(trimright(lb_produto.Caption)),
    1, 40), '');
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.Imprime_display_anterior();
begin
  Imprime_display(sTexto_anterior, clCor_anterior, TiImagem_anterior);
end;

procedure TfrmVenda.lblCupomEletronicoClick(Sender: TObject);
begin
    frmNotasconsumidor := TfrmNotasconsumidor.Create(self);
  frmNotasconsumidor.showmodal
end;

procedure TfrmVenda.lblCupomSimplesClick(Sender: TObject);
begin
 frmcupom_menu := tfrmcupom_menu.create(self);
  frmcupom_menu.showmodal;
end;

// -------------------------------------------------------------------------- //
// Funcao para iniciar a venda
function TfrmVenda.Abre_Venda(): boolean;
begin
  TimerTroco.Enabled := false;
  // frmModulo.conexao.Close;
  // frmModulo.Conexao_Servidor.Close;
  try

    if frmPrincipal.TipoImpressora <> Fiscal then
    begin
      // Pega Menor numero cupom
      sNumero_Cupom := Zerar(FloatToStr(Max('')), 5);
      sNumero_contador_cupom := Zerar(sNumero_Cupom, 5);

      if length(sNumero_Cupom) = 5 then
        sNumero_Cupom := '9' + sNumero_Cupom;

      if length(sNumero_contador_cupom) = 5 then
        sNumero_contador_cupom := '9' + sNumero_contador_cupom;

    end;


    // VERIFICAR O TOTALIZADOR

    if frmPrincipal.TipoImpressora = Fiscal then
      if not compara_totalizador then
      begin
        Result := false;
        close;
        exit;
      end;

    if (bLanca_pre_venda) or (bLanca_OS) or (bLanca_Abastecimento) then
    begin
      if bLanca_pre_venda then
      begin
        query.close;
        query.sql.clear;
        query.sql.add('select * from cliente where codigo = ' +
          inttostr(iPre_venda_cliente));
        query.Open;
      end
      else
      begin
        if bLanca_OS then
        begin
          query.close;
          query.sql.clear;
          query.sql.add('select * from cliente where codigo = ' +
            inttostr(iOs_cliente));
          query.Open;
        end;
      end;

      if (bLanca_OS) or (bLanca_pre_venda) then
      begin
        sConsumidor_CPF := query.fieldbyname('cpf').asstring;
        sConsumidor_Nome := query.fieldbyname('nome').asstring;
        sConsumidor_Endereco := query.fieldbyname('endereco').asstring + ' ' +
          query.fieldbyname('bairro').asstring + '  ' +
          query.fieldbyname('cidade').asstring + '  ' +
          query.fieldbyname('uf').asstring;
      end
      else
      begin
        sConsumidor_CPF := '';
        sConsumidor_Nome := '';
        sConsumidor_Endereco := '';
      end;
    end
    else
    begin
      if bIdentifica_consumidor then
      begin
        frmIdentifica := TfrmIdentifica.create(self);
        frmIdentifica.showmodal;
        if sConsumidor_CPF <> '' then
          frmPrincipal.TipoImpressora := SemImpressora;
        CorEditTotaL;
      end;
    end;

    if frmPrincipal.TipoImpressora = Fiscal then
      IF iECF_Modelo = 2 THEN // DARUMA - COMANDO PROVISORIO
      BEGIN
        sConsumidor_CPF := '';
        sConsumidor_Nome := '';
        sConsumidor_Endereco := '';
      END;

    if frmPrincipal.TipoImpressora = Fiscal then
      sMsg := cECF_Abre_Cupom(iECF_Modelo, sConsumidor_CPF, sConsumidor_Nome,
        sConsumidor_Endereco, bIdentifica_consumidor)
    else
      sMsg := Imp_Abre_Cupom(sPortaNaoFiscal, sConsumidor_CPF, sConsumidor_Nome,
        sConsumidor_Endereco, bIdentifica_consumidor);

    if sMsg <> ok then
    begin
      Imprime_display(sMsg, clred, tiErro);
      sleep(1500);
      Result := false;
    end
    else
    begin
      // buscar variaveis do ECF
      // numero do cupom

      if frmPrincipal.TipoImpressora <> Fiscal then
        sMsg := sNumero_Cupom;

      if frmPrincipal.TipoImpressora = Fiscal then
        sMsg := cECF_Numero_Cupom(iECF_Modelo);

      if length(sMsg) <> 6 then
      begin
        Imprime_display(sMsg, clred, tiErro);
        Result := false;
        exit;
      end
      else
      begin
        sNumero_Cupom := sMsg;
        sNumero_Venda := sMsg;
      end;

      // numero do contador de cupom fiscal
      if frmPrincipal.TipoImpressora = Fiscal then
        sMsg := cECF_Numero_Contador_Cupom(iECF_Modelo)
      else
        sMsg := sNumero_contador_cupom;

      if length(sMsg) <> 6 then
      begin
        Imprime_display(sMsg, clred, tiErro);
        Result := false;
        exit;
      end
      else
        sNumero_contador_cupom := sMsg; // sNumero_contador_cupom := sMsg;

      // temporario
      frmmodulo.spCodigo_Global.Prepare;
      frmmodulo.spCodigo_Global.Execute;

      // hora do cupom
      if frmPrincipal.TipoImpressora = Fiscal then
        sMsg := copy(cECF_Data_Hora(iECF_Modelo), 12, 8)
      else
        sMsg := TimeToStr(Now);

      try
        hHora_Cupom := strtotime(sMsg);
      except
        Imprime_display('Hora inválida!', clred, tiErro);
        Result := false;
        exit;
      end;

      // lancar abertura do cupom na tabela temporaria

      frmmodulo.spCupom_Temp.close;
      frmmodulo.spCupom_Temp.ParamByName('numero').asstring := sNumero_Cupom;
      frmmodulo.spCupom_Temp.ParamByName('ccf').asstring :=
        sNumero_contador_cupom;
      frmmodulo.spCupom_Temp.ParamByName('ecf').asstring := sECF_Serial;
      frmmodulo.spCupom_Temp.ParamByName('data').asdate := dData_Sistema;
      frmmodulo.spCupom_Temp.ParamByName('hora').AsTime := hHora_Cupom;
      frmmodulo.spCupom_Temp.Prepare;
      frmmodulo.spCupom_Temp.Execute;

      Imprime_display('ABRINDO O CUPOM...', clBackground, tiInfo);
      // alimentar as variaveis de status
      bVenda := true;
      bTotalizado := false;
      bPago1 := false;
      bPago2 := false;
      bPago3 := false;
      bFinalizado := false;
      // alimentar as variaveis de totais
      rTotal_Venda := 0;
      iTotal_Itens := 0;
      lb_item.Caption := '000';
      lb_total.Caption := 'R$ 0,00';
      iItem := 1;
      // imprimir no grid o cabechalho do cupom
      grid_topo.ClearRows;
      grid_topo.AddRow(1);
      grid_topo.Cell[0, grid_topo.LastAddedRow].asstring :=
        datetostr(dData_Sistema) + '  ' + TimeToStr(hHora_Cupom) +
        '                         COO: ' + Zerar(sNumero_Cupom, 6);
      grid_topo.AddRow(1);
      grid_topo.Cell[0, grid_topo.LastAddedRow].asstring :=
        '--------------------------------------------------------';
      grid_topo.AddRow(1);
      grid_topo.Cell[0, grid_topo.LastAddedRow].asstring :=
        '<B><FONT size="12">             CUPOM FISCAL</FONT></B>';
      grid_topo.AddRow(1);
      grid_topo.Cell[0, grid_topo.LastAddedRow].asstring :=
        'ITEM CÓDIGO DESCRIÇÃO       UN.    QTDE.  PREÇO   TOTAL';
      grid_topo.AddRow(1);
      grid_topo.Cell[0, grid_topo.LastAddedRow].asstring :=
        '--------------------------------------------------------';
      // limpar o grid dos itens
      grid.ClearRows;

      if bBusca_foto_produto then
      begin
        // // img_shape.Visible := true;
        img_produto.Picture := nil;
      end;

      Result := true;
    end;
  except
    Result := false;
  end;

  gravaINI(sConfiguracoes, 'PDV', 'NumCupom', sNumero_Cupom);

  if bVenda then
    gravaINI(sConfiguracoes, 'PDV', 'Aberto', 'SIM')
  else
    gravaINI(sConfiguracoes, 'PDV', 'Aberto', 'NAO');

end;

// -------------------------------------------------------------------------- //
// Funcao para truncar o valor para nao dar diferencao no ECF
function TfrmVenda.Truncar_Valor(valor: real): real;

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
    Result := Strtofloat(txt_desconto);
  end
  else
    Result := valor;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // verificar se ha cupom aberto, nao permitindo a saida do sistema
  if bVenda then
  begin
    Imprime_display('CUPOM ABERTO!', clBackground, tiAlerta);
    sleep(1500);
    Imprime_display('INFORME O PRODUTO...', clBackground, tiLivre);
    ed_barra.setfocus;
    abort;
  end
  else
  begin
    Imprime_display_teclado('Ciclos Informática', 'Ciclos Sistema');
    if iteclado_modelo = 1 then
    begin
      CloseTec44;
    end;

    Action := cafree;
  end;

  // CGT: Habilita as teclas de atalho da tela de movimentos
  // frmPrincipal.popMovimento.Items.Enabled := True;
  if (OldWidth <> Screen.Width) and (OldHeight <> Screen.Height) then
  SetScreenResolution(OldWidth,OldHeight);

end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.FormCreate(Sender: TObject);

var
  bDebug: boolean;
begin
  {altera a resolução da tala pra 800X600}
if (Screen.Width <> 1024) and (Screen.Height <> 768) then
begin
OldWidth := Screen.Width;
OldHeight := Screen.Height;
SetScreenResolution(1024, 768);
end;


  pn_principal.DoubleBuffered := true;
{$IFDEF DEBUG}
  bDebug := true;
{$ELSE}
  bDebug := false;
{$ENDIF}

  iImpressora := IsInteger(frmPrincipal.LerINi(sConfiguracoes, 'IMPRESSORA',
    'TIPO', '0'));

  ImgTipoImpressora(iImpressora);

  if bDebug = false then
  begin
    If (Screen.Width <> 1024) and (Screen.Height <> 768) then
      if application.messagebox
        ('O PDV opera em resolução de 800x600 deseja ajustar?', 'Pergunta',
        mb_yesno + MB_ICONQUESTION) = ID_YES then
        TrocaResolucao(1024, 768, a, b);

    left := 0;
    top := 0;

  end
  else
  begin
    WindowState := wsNormal;
    position := poDesktopCenter;
  end;

  // CGT: Desabilita as teclas de atalho da tela de movimentos
  // frmPrincipal.popMovimento.Items.Enabled := False;

  // data e hora da ultima carga
  if sCarga_data <> '' then
  begin
    lb_carga.Caption := 'Carga: ' + sCarga_data + ' às ' + scarga_hora;
  end
  else
    lb_carga.Caption := '';

  // verificar a ativacao/desativacao da pre-venda e ordem de servico
  menu_Prevenda.Visible := bPermite_Prevenda;
  Menu_os.Visible := bPermite_OS;

  pn_tampa.Visible := false;
  pn_tampa.Align := alClient;

  grid.ClearRows;
         //DARLON SANTOS
  // alimentar os combos com as formas de pagamento
  cb_forma1.Items.clear;
  cb_forma2.Items.clear;
  cb_forma3.Items.clear;
  frmmodulo.tbForma_Pgto.Open;
  frmmodulo.tbForma_Pgto.First;
  while not frmmodulo.tbForma_Pgto.Eof do
  begin
    sMsg := trimleft(trimright(frmmodulo.tbForma_Pgto.fieldbyname('nome')
      .asstring));
    if (sMsg = '') or (ansiuppercase(sMsg) = 'VALOR RECEBIDO') or
      (ansiuppercase(sMsg) = 'TROCO') Then
    begin
      // nao copiar
    end
    else
    begin
      cb_forma1.Items.add(sMsg);
      cb_forma2.Items.add(sMsg);
      cb_forma3.Items.add(sMsg);
    end;
    frmmodulo.tbForma_Pgto.Next;
  end;

  frmmodulo.tbForma_Pgto.close;

  // verificar se a funcao de buscar a foto do produto esta habilitada
  MostraFotoProduto(bBusca_foto_produto);
  MostraLogoMarca(bHabLogoMarca);

  pn_senha_cancelar.top := 114;
  pn_cancelar_item.top := 114;

  // verificar se ha teclado instaldao
  // modelo 1 - Gertec tec 44 com display
  if iteclado_modelo = 1 then
  begin
    // abrir a comunicacao
    OpenTec44;
    Imprime_display_teclado('CICLOS SISTEMA', 'Terminal iniciado com sucesso!');
  end;

end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_barraKeyPress(Sender: TObject; var Key: Char);

var
  bDados_balanca: boolean;
  sx_barra: string;
begin
  if Key = #13 then
  begin
    sx_barra := Trim(ed_barra.text);
    if sx_barra = '' then
    begin
      ed_barra.setfocus;
      exit;
    end;
    if timer_balanca.Enabled then
    begin
      //Acionar o botão da balança que recebi o peso
     timer_balanca.Enabled := false;
      try
        frmmodulo.Balancas.Ativar;
        frmmodulo.Balancas.Ativo := false;
      except
      end;
      bDados_balanca := true;
    end
    else
      bDados_balanca := false;



    if not bVenda then
    begin
      try
        BlockInput(true);
        // verificar o serial do ecf
        if frmPrincipal.TipoImpressora = Fiscal then
          if not verifica_ecf then
          begin
            close;
            exit;
          end;
        // Abrir o cupom fiscal
        // bloquear ao teclado

        if not Abre_Venda then
        begin
          bLanca_pre_venda := false;
          bLanca_OS := false;
          bLanca_Mesa := false;
          bLanca_Abastecimento := false;
          // Caso o comando de abertura de venda retornou false, abortar o processo;
          Imprime_display('ERRO AO ABRIR O CUPOM!', clred, tiErro);
          exit;
        end;
      finally
        // desbloquear o teclado
        BlockInput(false);
      end;
    end;

    iPesquisa_produto := 1;
    // fazer a busca do produto
    sProd_barra := ed_barra.text;
    If frmVenda.Localizar_Produto(ed_barra.text) then
    begin

      if bBusca_foto_produto then
      begin
        if FileExists(sPasta_foto_produto + '\' + sProd_barra + '.jpg') then
          img_produto.Picture.LoadFromFile(sPasta_foto_produto + '\' +
            sProd_barra + '.jpg')
        else
          img_produto.Picture := nil;
      end;

      // achou o produto
      // alimentar os edits da tela
      if bDados_balanca then
      begin
        rProd_qtde := rBal_peso;
        // se for pesado
        if bTruncar_valor then
          rProd_total := Truncar_Valor(rProd_qtde * rProd_preco)
        else
          rProd_total := rProd_qtde * rProd_preco;

        ed_qtde.value := rProd_qtde;
        ed_unitario.value := rProd_preco;
        ed_total_item.value := rProd_total;
      end
      else
      begin
        // se for normal
        ed_qtde.value := rProd_qtde;
        ed_unitario.value := rProd_preco;
        ed_total_item.value := rProd_total;
      end;
      // verificar se o sistema permite edicao dos edit's de valores
      if bMuda_qtde or bMuda_unitario or bMuda_total then
      begin
        Imprime_display(sProd_nome, clBackground, tiInfo);
        ed_qtde.ReadOnly := false;
        ed_unitario.ReadOnly := false;
        ed_total_item.ReadOnly := false;
        if bMuda_qtde then
          ed_qtde.ReadOnly := false
        else
          ed_qtde.ReadOnly := true;
        if bMuda_unitario then
          ed_unitario.ReadOnly := false
        else
          ed_unitario.ReadOnly := true;
        if bMuda_total then
          ed_total_item.ReadOnly := false
        else
          ed_total_item.ReadOnly := true;

        IF bProd_promocao THEN
        BEGIN
          ed_unitario.ReadOnly := true;
          ed_total_item.ReadOnly := true;
        END;

        ed_qtde.setfocus;
        exit;
      end
      else
      begin
        // verificar se existe algum valor zerado
        if (rProd_total <= 0) or (rProd_qtde <= 0) or (rProd_preco <= 0) then
        begin
          Imprime_display('TOTAL NÃO PODE SER ZERADO OU NEGATIVO!',
            clred, tiErro);
          sleep(2000);
          exit;
        end;

        ed_barra.text := '';
        Registra_Item;
      end;
    end
    else
    begin
      // nao achou o produto
      // lancar no display do produto
      Imprime_display('PRODUTO NÃO ENCONTRADO!', clred, tiErro);
      ed_barra.SelectAll;
    end;
    grid.Repaint;
  end
  else
  begin
    if (Key in ['0' .. '9', 'a' .. 'z', 'A' .. 'Z']) or (Key = '*') or
      (Key = ',') then
    begin
      if blimpa_edit_display then
      begin
        If iteclado_modelo = 1 then
        begin
          Imprime_display_teclado('', '');
          blimpa_edit_display := false;
          CarRet;
        end;

        if iteclado_modelo = 1 then
        begin
          strpcopy(@men, Key);
          DispStr(@men);
        end;
      end;
    end
    else
    begin
      if (Key = #7) or (Key = #8) or (Key = #32) then
      else
        abort;
    end;
    grid.Repaint;
  end;

end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.CancelarItem1Click(Sender: TObject);
begin
  // verificar se existe um cupom aberto
  if bVenda then
  begin
    // verificar se existe itens lancados
    if iTotal_Itens > 0 then
    begin
      grid.Repaint;
      Imprime_display('CANCELAR ITEM...', clBackground, tiExcluir);
      ed_cancelar_item.Visible := true;
      lb_cancelar_item.Caption := 'Número do Item:';
      pn_cancelar_item.Visible := true;
       pn_cancelar_item.Left := 298;
       pn_cancelar_item.Height := 79;
       pn_cancelar_item.Top := 352;
      pn_cancelar_item_botoes.Visible := false;
      ed_cancelar_item.IntValue := 0;
      ed_cancelar_item.setfocus;
      ed_cancelar_item.SelectAll;
    end
    else
    begin
      Imprime_display('NÃO EXISTEM ITENS LANÇADOS!', clred, tiErro);
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_cancelar_itemEnter(Sender: TObject);
begin
  if iteclado_modelo = 1 then
  begin
    strpcopy(@men, 'Informe o numero do item:');
    DispStr(@men);
    LineFeed;
    CarRet;
  end;

  // controlar a saida do edit de cancelamento de item
  bSair_campo := false;
  PopupMenu := nil;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_cancelar_itemExit(Sender: TObject);
begin
  // nao permitir a saida do campo clicando com o mouse em outro lugar
  // ou pressionando tab
  if not bSair_campo then
    ed_cancelar_item.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_cancelar_itemKeyPress(Sender: TObject; var Key: Char);

var
  iLinha: Integer;
  sItem_c: string;
begin

  if Key = #13 then
  begin
    BlockInput(true);

    sItem_c := Zerar(ed_cancelar_item.text, 3);

    // confirmacao do cancelamento do item
    // Localizar o item no grid
    if grid.FindText(2, sItem_c, [soCaseInsensitive]) then
    begin
      // Encontrou o item
      iLinha := grid.SelectedRow;
      // Fazer nova busca para achar o mesmo item no grid, caso jah foi cancelado
      if grid.SearchNext(2, sItem_c) then
      begin
        // Comparar o novo item encontrado, verificar se eh o mesmo
        if grid.SelectedRow = iLinha then
        begin
          // Confirmação do cancelamento
          Imprime_display('Cancelar: ' + Zerar(ed_cancelar_item.text, 3) + ' ' +
            copy(grid.Cell[4, grid.SelectedRow].asstring, 1, 15) + ' ' +
            formatfloat('###,###,##0.000', grid.Cell[5, grid.SelectedRow]
            .asfloat) + ' x ' + 'R$ ' + formatfloat('###,###,##0.00',
            grid.Cell[6, grid.SelectedRow].asfloat) + ' = ' + 'R$ ' +
            formatfloat('###,###,##0.00', grid.Cell[9, grid.SelectedRow]
            .asfloat), clBackground, tiExcluir);

          bSair_campo := true;
          // mostra o panel com os botoes SIM e NAO
          ed_cancelar_item.Visible := false;
          lb_cancelar_item.Caption := 'Confirma?';

          pn_cancelar_item_botoes.Visible := true;

          BlockInput(false);
          bt_cancelar_item_sim.setfocus;
        end
        else
        begin
          // item jah foi cancelado, volta para o edit de cancelamento de item
          Imprime_display('ITEM JÁ CANCELADO!', clred, tiErro);
          sleep(1000);
          Imprime_display('CANCELAR ITEM...', clBackground, tiExcluir);
          // selecionar a linha incluida no grid
          grid.SelectLastRow;
          // focar no grid para ele ir para ultima linha incluida
          grid.setfocus;

          BlockInput(false);
          ed_cancelar_item.setfocus;
          ed_cancelar_item.SelectAll;
        end;
      end;

    end
    else
    begin
      // item não encontrado. Volta para o edit de cancelamento de item
      Imprime_display('ITEM NÃO ENCONTRADO!', clred, tiErro);
      sleep(1000);
      Imprime_display('CANCELAR ITEM...', clBackground, tiExcluir);
      BlockInput(false);
      ed_cancelar_item.setfocus;
      ed_cancelar_item.SelectAll;
    end;

  end
  else
  begin
    if Key = #27 then
    begin
      // aborta o cancelamento do item
      bSair_campo := true;
      Imprime_display('INFORME O PRODUTO...', clBackground, tiLivre);
      pn_cancelar_item.Visible := false;
      BlockInput(false);
      ed_barra.setfocus;
    end
    else
    begin
      if iteclado_modelo = 1 then
      begin
        strpcopy(@men, Key);
        DispStr(@men);
      end;
    end;
  end;

  {
    if key = #13 then
    begin
    // confirmacao do cancelamento do item
    // Localizar o item no grid
    if Grid.FindText(2, ed_cancelar_item.text,[soCaseInsensitive])  then
    begin
    // Encontrou o item
    iLinha := grid.SelectedRow;
    // Fazer nova busca para achar o mesmo item no grid, caso jah foi cancelado
    if grid.SearchNext(2,ed_cancelar_item.text) then
    begin
    // Comparar o novo item encontrado, verificar se eh o mesmo
    if grid.SelectedRow = iLinha then
    begin
    //Confirmação do cancelamento
    Imprime_display('Cancelar: '+zerar(ed_cancelar_item.text,3)+' '+
    copy(grid.Cell[4,grid.SelectedRow].asstring,1,15)+' '+
    formatfloat('###,###,##0.000',
    grid.Cell[5,grid.SelectedRow].asfloat)+' x '+
    'R$ '+formatfloat('###,###,##0.00',
    grid.Cell[6,grid.SelectedRow].asfloat)+' = '+
    'R$ '+formatfloat('###,###,##0.00',
    grid.Cell[9,grid.SelectedRow].asfloat),
    clwhite,tiExcluir);


    bsair_campo := true;
    // mostra o panel com os botoes SIM e NAO
    ed_cancelar_item.Visible := false;
    lb_cancelar_item.caption := 'Confirma?';
    pn_cancelar_item_botoes.visible := true;
    bt_cancelar_item_sim.setfocus;
    end
    else
    begin
    // item jah foi cancelado, volta para o edit de cancelamento de item
    Imprime_display('ITEM JÁ CANCELADO!',CLRED,TIERRO);
    SLEEP(1000);
    Imprime_display('CANCELAR ITEM...',CLWHITE,tiExcluir);
    ed_cancelar_item.Setfocus;
    ed_cancelar_item.SelectAll;
    end;
    end;

    end
    else
    begin
    // item não encontrado. Volta para o edit de cancelamento de item
    Imprime_display('ITEM NÃO ENCONTRADO!',CLRED,TIERRO);
    SLEEP(1000);
    Imprime_display('CANCELAR ITEM...',CLWHITE,tiExcluir);
    ed_cancelar_item.Setfocus;
    ed_cancelar_item.SelectAll;
    end;

    end
    else
    begin
    if key = #27 then
    begin
    // aborta o cancelamento do item
    bSair_campo := true;
    Imprime_display('INFORME O PRODUTO...',CLWHITE,tiLivre);
    pn_cancelar_item.Visible := FALSE;
    ED_BARRA.SETFOCUS;
    end
    else
    begin
    if iTeclado_Modelo = 1 then
    begin
    strpcopy(@men,key);
    DispStr(@men);
    end;
    end;
    end;

  }
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.bt_cancelar_item_naoClick(Sender: TObject);
begin
  // aborta o cancelamento do item
  Imprime_display('INFORME O PRODUTO...', clBackground, tiLivre);
  pn_cancelar_item.Visible := false;
  ed_barra.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_barraEnter(Sender: TObject);
begin
  // ativar os atalhos das funcoes OPCOES
  PopupMenu := pop_principal;
  blimpa_edit_display := true;
  ed_barra.SelectAll;
  sProd_barra := '';
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.bt_cancelar_item_simClick(Sender: TObject);
begin
  If bSenha_Cancel_Item then
  begin
    grid.Repaint;
    pn_senha_cancelar.Visible := true;
    lb_cancelar.Caption := 'Cancelar Item';
    ed_senha.text := '';
    ed_senha.setfocus;
  end
  else
  begin
    Cancela_Item(ed_cancelar_item.text);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.MenuFiscal2Click(Sender: TObject);
begin

  if NOT bVenda then
  begin
    // caso nao haja cupom aberto, aciona o menu fiscal
    frmmenu_fiscal := tfrmMenu_fiscal.create(self);
    frmmenu_fiscal.showmodal;
  end
  else
  begin
    // venda aberta, nao permitir o uso do menu fiscal
    Imprime_display('DOCUMENTO SENDO EMITIDO!', clBackground, tiAlerta);
    sleep(1000);
    Imprime_display('INFORME O PRODUTO...', clBackground, tiLivre);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.Retornar1Click(Sender: TObject);
begin
  ed_barra.setfocus;
  if timer_balanca.Enabled then
  begin
    timer_balanca.Enabled := false;
    frmmodulo.Balancas.Ativo := false;
    frmmodulo.Balancas.desativar;
    Imprime_display('Informe o Produto...', clBackground, tiLivre);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.Sair1Click(Sender: TObject);
begin
  if application.messagebox('Confirma a saída do sistema?', 'Atenção',
    mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idyes then
    close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.CancelarCupom1Click(Sender: TObject);
begin
  if bVenda then
  begin
    // Caso exista cupom aberto
    if bSenha_Cancel_Cupom then
    begin
      pn_senha_cancelar.Visible := true;
      pn_senha_cancelar.Left := 298;
       pn_senha_cancelar.Height := 79;
            pn_senha_cancelar.Top := 352;
      lb_cancelar.Caption := 'Cancelar Cupom';
      ed_senha.text := '';
      ed_senha.setfocus;
    end
    else
    begin
      Cancela_cupom_aberto;
    end;
  end
  else
  begin
    sMsg := cECF_Numero_Cupom(iECF_Modelo);
    if length(sMsg) <> 6 then
    begin
      Imprime_display(sMsg, clred, tiErro);
      exit;
    end
    else
      sNumero_Cupom := sMsg;
    // Cupom jah fechado, cancelar o ultimo cupom
    // Caso exista cupom aberto
    if bSenha_Cancel_Cupom then
    begin
      pn_senha_cancelar.Visible := true;
      lb_cancelar.Caption := 'Cancelar Cupom';
      ed_senha.text := '';
      ed_senha.setfocus;
    end
    else
    begin
      Cancela_cupom_fechado;
    end;
  end;

end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_barraExit(Sender: TObject);
begin
  // Desativa os comandos do Menu OPCOES
  PopupMenu := nil;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ED_DESC_ACREEnter(Sender: TObject);
begin

  // liberar a tecla F#
  baltera_tipo_desconto := true;
  // pintar o shape do edit de azul
 // PS_DESC_ACRE.Brush.color := $00DD6F00;
  Imprime_display('Informe o Desconto em %... (F3 Altera)', clBackground, tiPgto);
  if iteclado_modelo = 1 then
  begin
    blimpa_edit_display := true;
    strpcopy(@men, '0,00');
    DispStr(@men);
  end;

end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ED_DESC_ACREExit(Sender: TObject);
begin

  // bloquear a tecla F3
  baltera_tipo_desconto := false;
  // verificar se o pn_fechamento jah fechou
  if not pn_fechamento.Visible then
    exit;

  // Nao permitir lancar valor negativo
  if ED_DESC_ACRE.value < 0 then
  begin
    Imprime_display('Valor não pode ser negativo!', clred, tiErro);
    sleep(2000);
    ED_DESC_ACRE.setfocus;
    Imprime_display_anterior;
    exit;
  end;
  //PS_DESC_ACRE.Brush.color := CLBLACK;

  rTotal_Desconto := 0;
  rTotal_Acrescimo := 0;

  if ED_DESC_ACRE.value > 0 then
  begin
    case cb_desc_acre.ItemIndex of
      0:
        begin // Desconto por %
          if bTruncar_valor then
            rTotal_Desconto :=
              Truncar_Valor(rTotal_Venda * (ED_DESC_ACRE.value / 100))
          else
            rTotal_Desconto := (rTotal_Venda * (ED_DESC_ACRE.value / 100));

          ed_total_pagar.value := rTotal_Venda - rTotal_Desconto;
        end;
      1:
        begin // Desconto por R$
          rTotal_Desconto := ED_DESC_ACRE.value;
          ed_total_pagar.value := rTotal_Venda - rTotal_Desconto;
        end;
      2:
        begin // Acrescimo por %

          if bTruncar_valor then
            rTotal_Acrescimo :=
              Truncar_Valor(rTotal_Venda * (ED_DESC_ACRE.value / 100))
          else
            rTotal_Acrescimo := (rTotal_Venda * (ED_DESC_ACRE.value / 100));
          ed_total_pagar.value := rTotal_Venda + rTotal_Acrescimo;
        end;
      3:
        begin // Acrescimo por R$
          rTotal_Acrescimo := ED_DESC_ACRE.value;
          ed_total_pagar.value := rTotal_Venda + rTotal_Acrescimo;
        end;
    end;
    if bTruncar_valor then
      ed_total_pagar.value := Truncar_Valor(ed_total_pagar.value);
    // alimentar os valores
    ed_troco.value := 0;
    ed_forma1.value := ed_total_pagar.value;
    ed_totalizador.value := ed_total_pagar.value;
    // soh aparecer uma forma de pagametno
    cb_forma2.Visible := false;
    ed_forma2.Visible := false;
    //sp_forma2.Visible := false;
   // img_forma2.Visible := false;
    cb_forma3.Visible := false;
    ed_forma3.Visible := false;
   // sp_forma3.Visible := false;
   // img_forma3.Visible := false;
    ed_forma2.value := 0;
    ed_forma3.value := 0;

  end
  else
  begin
    // alimentar os valores
    ed_total_pagar.value := rTotal_Venda;
    ed_totalizador.value := rTotal_Venda;
    ed_troco.value := 0;
    // soh aparecer uma forma de pagametno
    ed_forma1.value := rTotal_Venda;

    cb_forma2.Visible := false;
    ed_forma2.Visible := false;
    //sp_forma2.Visible := false;
    //img_forma2.Visible := false;
    cb_forma3.Visible := false;
    ed_forma3.Visible := false;
//    sp_forma3.Visible := false;
//    img_forma3.Visible := false;
    ed_forma2.value := 0;
    ed_forma3.value := 0;
  end;

end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.FecharCupom1Click(Sender: TObject);
begin
  if bVenda then
  begin
    // verificar se o valor da venda eh maior que zero
    if rTotal_Venda <= 0 then
    begin
      Imprime_display('CUPOM ESTÁ ZERADO!', clred, tiErro);
      sleep(1000);
      Imprime_display_anterior;
      exit;
    end;

    img_borda.Visible := false;
    // // img_shape.Visible := false;
    img_produto.Visible := false;
    img_fundo.Visible := false;
         //201254693
    pn_fechamento.Enabled := true;
    pn_fechamento.Height := 395;
    pn_fechamento.left := 10;

    cb_desc_acre.ItemIndex := 0;
    ED_DESC_ACRE.value := 0;
    ed_total_pagar.value := rTotal_Venda;
    ed_totalizador.value := rTotal_Venda;
    ed_troco.value := 0;
    ed_forma1.value := rTotal_Venda;

    if bLanca_pre_venda then
    begin
      if rPre_venda_desconto > 0 then
      begin
        cb_desc_acre.ItemIndex := 1;
        ED_DESC_ACRE.value := rPre_venda_desconto;
        ed_total_pagar.value := rTotal_Venda - ED_DESC_ACRE.value;
        ed_totalizador.value := ed_total_pagar.value;
        ed_troco.value := 0;
        ed_forma1.value := ed_total_pagar.value;
      end
      else
      begin
        if rpre_venda_acrescimo > 0 then
        begin
          cb_desc_acre.ItemIndex := 3;
          ED_DESC_ACRE.value := rpre_venda_acrescimo;
          ed_total_pagar.value := rTotal_Venda + ED_DESC_ACRE.value;
          ed_totalizador.value := ed_total_pagar.value;
          ed_troco.value := 0;
          ed_forma1.value := ed_total_pagar.value;
        end;
      end;
    end;
    // soh aparecer uma forma de pagametno
    cb_forma1.ItemIndex := 0;
    cb_forma2.Visible := false;
    ed_forma2.Visible := false;
//    sp_forma2.Visible := false;
//    img_forma2.Visible := false;
    cb_forma3.Visible := false;
    ed_forma3.Visible := false;
//    sp_forma3.Visible := false;
//    img_forma3.Visible := false;

//    sp_forma1.Brush.color := CLBLACK;
//    sp_forma2.Brush.color := CLBLACK;
//    sp_forma3.Brush.color := CLBLACK;

    cb_forma2.ItemIndex := -1;
    cb_forma3.ItemIndex := -2;

    ed_forma2.value := 0;
    ed_forma3.value := 0;
    pn_principal.Enabled := false;
    pn_fechamento.Visible := true;
    ED_DESC_ACRE.DisplayFormat := '##0.00%';
    ED_DESC_ACRE.setfocus;
    // mudar o menu para utilizar as teclas de atalho no fechamento
    frmVenda.PopupMenu := pop_fechamento;
  end
  else
  begin
    Imprime_display('Não há cupom aberto!', clred, tiAlerta);
    sleep(1000);
    Imprime_display_anterior;
  end;
end;

procedure TfrmVenda.flChange(Sender: TObject);
begin

end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_total_pagarEnter(Sender: TObject);
begin
//  sp_total_pagar.Brush.color := $00DD6F00;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_forma1Enter(Sender: TObject);
begin
//  sp_forma1.Brush.color := $00DD6F00;

  Imprime_display('Informe o valor para ' + cb_forma1.text + '...(F11 Retorna)',
    clBackground, tiPgto);

  if iteclado_modelo = 1 then
  begin
    blimpa_edit_display := true;
    strpcopy(@men, formatfloat('###,###,##0.00', ed_forma1.value));
    DispStr(@men);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_forma2Enter(Sender: TObject);
begin
//  sp_forma2.Brush.color := $00DD6F00;
  Imprime_display('Informe o valor para ' + cb_forma2.text + '...(F11 Retorna)',
    clBackground, tiPgto);

  if iteclado_modelo = 1 then
  begin
    strpcopy(@men, formatfloat('###,###,##0.00', ed_forma2.value));
    DispStr(@men);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_forma3Enter(Sender: TObject);
begin
//  sp_forma3.Brush.color := $00DD6F00;
  Imprime_display('Informe o valor para ' + cb_forma3.text + '...(F11 Retorna)',
    clBackground, tiPgto);

  if iteclado_modelo = 1 then
  begin
    strpcopy(@men, formatfloat('###,###,##0.00', ed_forma3.value));
    DispStr(@men);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_totalizadorEnter(Sender: TObject);
begin
//  sp_totalizador.Brush.color := $00DD6F00;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_trocoEnter(Sender: TObject);
begin
//  sp_troco.Brush.color := $00DD6F00;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_total_pagarExit(Sender: TObject);
begin
//  sp_total_pagar.Brush.color := CLBLACK;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_forma1Exit(Sender: TObject);
begin
  try

    // verificar se nao fechou o pn_fechamento para nao dar erro de foco
    if not pn_fechamento.Visible then
      exit;
    if ed_forma1.value >= ed_total_pagar.value then
    begin
      // forma de pagamento atingiu ou ultrapassou o valor da venda
      // esconder os demais edits de forma de pagamento e focar no bota gravar
      ed_totalizador.value := ed_forma1.value;
      cb_forma2.Visible := false;
      ed_forma2.Visible := false;
//      sp_forma2.Visible := false;
//      img_forma2.Visible := false;
      cb_forma3.Visible := false;
      ed_forma3.Visible := false;
//      sp_forma3.Visible := false;
//      img_forma3.Visible := false;
      cb_forma2.ItemIndex := -1;
      cb_forma3.ItemIndex := -2;
      ed_forma2.value := 0;
      ed_forma3.value := 0;
      ed_troco.value := ed_totalizador.value - ed_total_pagar.value;
      bt_confirmar_fechamento.setfocus;
    end
    else
    begin
      ed_totalizador.value := ed_forma1.value + ed_forma2.value +
        ed_forma3.value;

      if not cb_forma2.Visible then
      begin
        cb_forma3.Visible := false;
        ed_forma3.Visible := false;
//        sp_forma3.Visible := false;
//        img_forma3.Visible := false;
        cb_forma3.ItemIndex := -2;
        ed_forma3.value := 0;
        cb_forma2.Visible := true;
        ed_forma2.Visible := true;
//        sp_forma2.Visible := true;
//        img_forma2.Visible := true;

        // acrestar um no combo da forma, caso seja a ultima, retorna para a primeira
        if (cb_forma1.ItemIndex = (cb_forma1.Items.Count - 1)) then
          cb_forma2.ItemIndex := 0
        else
          cb_forma2.ItemIndex := cb_forma1.ItemIndex + 1;

        ed_forma2.value := ed_total_pagar.value - ed_totalizador.value;
      end;
      ed_troco.value := ed_totalizador.value - ed_total_pagar.value;
      cb_forma2.setfocus;
    end;
//    sp_forma1.Brush.color := CLBLACK;
  finally
    if bVolta_foco then
    begin
      cb_forma1.setfocus;
      bVolta_foco := false;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_forma2Exit(Sender: TObject);
begin
  TRY
    // verificar se nao fechou o pn_fechamento para nao dar erro de foco
    if not pn_fechamento.Visible then
      exit;
    if (ed_forma1.value + ed_forma2.value) >= ed_total_pagar.value then
    begin
      // forma de pagamento atingiu ou ultrapassou o valor da venda
      // esconder os demais edits de forma de pagamento e focar no bota gravar
      ed_totalizador.value := ed_forma1.value + ed_forma2.value;
      cb_forma3.Visible := false;
      ed_forma3.Visible := false;
//      sp_forma3.Visible := false;
//      img_forma3.Visible := false;
      cb_forma3.ItemIndex := -2;
      ed_forma3.value := 0;
      ed_troco.value := ed_totalizador.value - ed_total_pagar.value;
      bt_confirmar_fechamento.setfocus;
    end
    else
    begin
      ed_totalizador.value := ed_forma1.value + ed_forma2.value +
        ed_forma3.value;

      if not cb_forma3.Visible then
      begin
        cb_forma3.Visible := true;
        ed_forma3.Visible := true;
//        sp_forma3.Visible := true;
//        img_forma3.Visible := true;

        // acrestar um no combo da forma, caso seja a ultima, retorna para a primeira
        if (cb_forma2.ItemIndex = (cb_forma2.Items.Count - 1)) then
          cb_forma3.ItemIndex := 0
        else
          cb_forma3.ItemIndex := cb_forma2.ItemIndex + 1;

        ed_forma3.value := ed_total_pagar.value - ed_totalizador.value;
      end;
      ed_troco.value := ed_totalizador.value - ed_total_pagar.value;
      cb_forma3.setfocus;
    end;

//    sp_forma2.Brush.color := CLBLACK;
  finally
    if bVolta_foco then
    begin
      cb_forma1.setfocus;
      bVolta_foco := false;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_forma3Exit(Sender: TObject);
begin
//  sp_forma3.Brush.color := CLBLACK;
  ed_totalizador.value := ed_forma1.value + ed_forma2.value + ed_forma3.value;
  ed_troco.value := ed_totalizador.value - ed_total_pagar.value;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_totalizadorExit(Sender: TObject);
begin
//  sp_totalizador.Brush.color := CLBLACK;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_trocoExit(Sender: TObject);
begin
//  sp_troco.Brush.color := CLBLACK;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.cb_desc_acreChange(Sender: TObject);
begin
  case cb_desc_acre.ItemIndex of
    0:
      begin // Desconto por %
        ED_DESC_ACRE.DisplayFormat := '##0.00%';
        Imprime_display('Informe o valor do Desconto em %... (F3 Altera)',
          clBackground, tiPgto);
      end;
    1:
      begin // Desconto por R$
        ED_DESC_ACRE.DisplayFormat := '###,###,##0.00';
        Imprime_display('Informe o valor do Desconto em R$... (F3 Altera)',
          clBackground, tiPgto);
      end;
    2:
      begin // Acrescimo por %
        ED_DESC_ACRE.DisplayFormat := '##0.00%';
        Imprime_display('Informe o valor do Acréscimo em %... (F3 Altera)',
          clBackground, tiPgto);
      end;
    3:
      begin // Acrescimo por R$
        ED_DESC_ACRE.DisplayFormat := '###,###,##0.00';
        Imprime_display('Informe o valor do Acréscimo em R$... (F3 Altera)',
          clBackground, tiPgto);
      end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.DescontoouAcrscimo1Click(Sender: TObject);
begin
  if baltera_tipo_desconto then
  begin
    if cb_desc_acre.ItemIndex = 3 then
      cb_desc_acre.ItemIndex := 0
    else
      cb_desc_acre.ItemIndex := cb_desc_acre.ItemIndex + 1;

    cb_desc_acreChange(frmVenda);
    ED_DESC_ACRE.SelectAll;

  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ED_DESC_ACREKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    cb_forma1.setfocus
  else
  begin
    if iteclado_modelo = 1 then
    begin
      if blimpa_edit_display then
      begin
        CarRet;
        strpcopy(@men, '                       ');
        DispStr(@men);
        CarRet;
        blimpa_edit_display := false;
      end;
      strpcopy(@men, Key);
      DispStr(@men);
    end;
  end;

end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.cb_forma1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ed_forma1.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.cb_forma2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ed_forma2.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.cb_forma3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ed_forma3.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.cb_forma2Exit(Sender: TObject);
begin
  try

    // verificar se nao fechou o pn_fechamento para nao dar erro de foco
    if not pn_fechamento.Visible then
      exit;

    if (cb_forma2.ItemIndex = cb_forma1.ItemIndex) or
      (cb_forma2.ItemIndex = cb_forma3.ItemIndex) then
    begin
      cb_forma2.setfocus;
      Imprime_display('Meio de Pagamento já utilizado!', clred, tiErro);
      sleep(1000);
      Imprime_display_anterior;
      abort;
    end;
  finally
    if bVolta_foco then
    begin
      ed_forma1.setfocus;
      bVolta_foco := false;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.cb_forma3Exit(Sender: TObject);
begin
  try // verificar se nao fechou o pn_fechamento para nao dar erro de foco
    if not pn_fechamento.Visible then
      exit;

    if (cb_forma3.ItemIndex = cb_forma1.ItemIndex) or
      (cb_forma2.ItemIndex = cb_forma3.ItemIndex) then
    begin
      cb_forma3.setfocus;
      Imprime_display('Meio de Pagamento já utilizado!', clred, tiErro);
      sleep(1000);
      Imprime_display_anterior;
      abort;
    end;
  finally
    if bVolta_foco then
    begin
      ed_forma2.setfocus;
      bVolta_foco := false;
    end;
  end;

end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_forma3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bt_confirmar_fechamento.setfocus
  else
  begin
    if iteclado_modelo = 1 then
    begin
      strpcopy(@men, Key);
      DispStr(@men);
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.bt_confirmar_fechamentoEnter(Sender: TObject);
begin
  if ed_troco.value > 0 then
    Imprime_display('Troco: R$ ' + formatfloat('###,###,##0.00', ed_troco.value)
      + '  - [ENTER] Confirmar', clBackground, tiPgto)
  else
    Imprime_display('[ENTER] Confirma o fechamento...', clBackground, tiPgto);
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.bt_cancelar_fechamentoEnter(Sender: TObject);
begin
  Imprime_display('[ENTER] Cancela o fechamento...', clBackground, tiErro);
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.bt_confirmar_fechamentoClick(Sender: TObject);
var
  rValor_Temp: real;
  i, icont: integer;
  rvalor_total_convenio: real;
  NomeArquivo, sCod_Cupom: string;
  bLanca_comprovante_crediario,
    bLanca_Comprovante_Prestacao: boolean;
  sCOO_crediario, sGNF_Crediario: string;
  sCOO_Prestacao, sGNF_Prestacao, sGRG_Prestacao: string;
  sIdentificarVendedor: string;

  str: string;
  SR: TSearchRec;
  Origem, Destino: string;

begin

  ED_FOCUS.SETFOCUS;
  bfinalizado := false;
  try
    if ed_troco.Value < 0 then
    begin
      Imprime_display('Troco não pode ser negativo!', clred, tiErro);
      sleep(1500);
      Imprime_display_anterior;
      bt_confirmar_fechamento.Enabled := true;
      bt_confirmar_fechamento.SetFocus;
      exit;
    end;

    if (ed_forma1.value < 0) or
      (ed_forma2.value < 0) or
      (ed_forma3.value < 0)
      then
    begin
      Imprime_display('Pagamento não pode ser negativo!', clred, tiErro);
      sleep(1500);
      Imprime_display_anterior;
      bt_confirmar_fechamento.Enabled := true;
      bt_confirmar_fechamento.SetFocus;
      exit;
    end;


    if (ED_DESC_ACRE.Value < 0) or
      (ed_total_pagar.Value < 0) or
      (ed_totalizador.Value < 0) then
    begin
      Imprime_display('Existe valor negativo!', clred, tiErro);
      sleep(1500);
      Imprime_display_anterior;
      bt_confirmar_fechamento.Enabled := true;
      bt_confirmar_fechamento.SetFocus;
      exit;
    end;


    bt_confirmar_fechamento.Enabled := false;
    bTef_finaliza := false;

    // Verificar se o total lancado nas formas de pagamento é maior ou igual ao total da venda
    if ed_totalizador.value < ed_total_pagar.value then
    begin
      Imprime_display('Valor lançado é inferior ao total do cupom!', clred, tiErro);
      sleep(1500);
      Imprime_display_anterior;
      bt_confirmar_fechamento.Enabled := true;
      bt_confirmar_fechamento.SetFocus;
      exit;
    end;

    // Verificar se o valor lancado nas formas de pagamento de Cartao não ultrapassa o valor
    // do cupom
    rValor_Total_Cartao := 0;
    icont := 0;
    if ed_forma1.value > 0 then begin
      if (AnsiUpperCase(cb_forma1.text) = AnsiUpperCase(lForma_pgto_Cartao_Debito)) or
         (AnsiUpperCase(cb_forma1.text) = AnsiUpperCase(lForma_pgto_Cartao_Credito)) then
      begin
        rValor_Total_Cartao := rValor_Total_Cartao + ed_forma1.Value;
        inc(icont);
      end;
    end;
    if ed_forma2.value > 0 then
    begin
      if (AnsiUpperCase(cb_forma2.text) = AnsiUpperCase(lForma_pgto_Cartao_Debito)) or
         (AnsiUpperCase(cb_forma2.text) = AnsiUpperCase(lForma_pgto_Cartao_Credito)) then
      begin
        rValor_Total_Cartao := rValor_Total_Cartao + ed_forma2.Value;
        inc(icont);
      end;
    end;
    if ed_forma3.value > 0 then
    begin
      if (AnsiUpperCase(cb_forma3.text) = AnsiUpperCase(lForma_pgto_Cartao_Debito)) or
         (AnsiUpperCase(cb_forma3.text) = AnsiUpperCase(lForma_pgto_Cartao_Credito)) then
      begin
        rValor_Total_Cartao := rValor_Total_Cartao + ed_forma3.Value;
        inc(icont);
      end;
    end;
    // verificar se o pagamento está sendo feito com múltiplos cartões pelo TEF
    if (icont > 1) and (bTef) then
    begin
      application.messagebox('O sistema não permite pagamento com múltiplos cartões pelo TEF!',
        'Erro', mb_ok + mb_iconerror);
      bt_confirmar_fechamento.Enabled := true;
      bt_confirmar_fechamento.SetFocus;
      exit;
    end;


    if rValor_Total_Cartao > (ed_total_pagar.value + 0.0001) then
    begin
      Imprime_display('Valor em Cartão maior que o cupom!', clred, tiErro);
      sleep(1500);
      Imprime_display_anterior;
      bt_confirmar_fechamento.Enabled := true;
      bt_confirmar_fechamento.SetFocus;
      exit;
    end;


    if btef then
    begin
      bContinua := true;
      // rodar as formas de pagamento para verificar se eh cartao
      if (ed_forma1.value > 0) and
        (AnsiUpperCase(cb_forma1.text) = AnsiUpperCase(lForma_pgto_Cartao_Debito)) or
        (AnsiUpperCase(cb_forma1.text) = AnsiUpperCase(lForma_pgto_Cartao_Credito)) then
      begin
        if ed_forma2.Value > 0 then
        begin
          Application.MessageBox('Favor informar a forma de pagamento Cartão ou Cheque (Consultado) por último!', 'Erro',
            MB_OK + mb_iconerror);
          bContinua := false;
        end;
      end
      else
      begin
        if (ed_forma2.value > 0) and
          (AnsiUpperCase(cb_forma2.text) = AnsiUpperCase(lForma_pgto_Cartao_Debito)) or
          (AnsiUpperCase(cb_forma2.text) = AnsiUpperCase(lForma_pgto_Cartao_Credito)) then
        begin
          if (ed_forma3.value > 0) then
          begin
            Application.MessageBox('Favor informar a forma de pagamento Cartão ou Cheque (Consultado) por último!', 'Erro',
              MB_OK + mb_iconerror);
            bContinua := false;
          end;
        end;
      end;

      if not bcontinua then exit;
    end;

    // verificar se tem lancamento para cheque...
    rValor_Total_cheque := 0;
    if ed_forma1.value > 0 then
    begin
      if (AnsiUpperCase(cb_forma1.text) = AnsiUpperCase(lForma_pgto_Cheque_Avista)) or
         (AnsiUpperCase(cb_forma1.text) = AnsiUpperCase(lForma_pgto_Cheque_Aprazo)) then
      begin
        rValor_Total_cheque := rValor_Total_cheque + ed_forma1.Value;
      end;
    end;
    if ed_forma2.value > 0 then
    begin
      if (AnsiUpperCase(cb_forma2.text) = AnsiUpperCase(lForma_pgto_Cheque_Avista)) or
         (AnsiUpperCase(cb_forma2.text) = AnsiUpperCase(lForma_pgto_Cheque_Aprazo)) then
      begin
        rValor_Total_cheque := rValor_Total_cheque + ed_forma2.Value;
      end;
    end;
    if ed_forma3.value > 0 then
    begin
      if (AnsiUpperCase(cb_forma3.text) = AnsiUpperCase(lForma_pgto_Cheque_Avista)) or
         (AnsiUpperCase(cb_forma3.text) = AnsiUpperCase(lForma_pgto_Cheque_Aprazo)) then
      begin
        rValor_Total_cheque := rValor_Total_cheque + ed_forma3.Value;
      end;
    end;
    // verificar se o cheque serah consultado pelo tef e se existe venda no cartao conjugado
    if bTEF then
    begin
      bTEF_Cheque := false;
      if rvalor_total_cheque > 0 then
      begin
        if application.MessageBox('O cheque será consultado via TEF?', 'Mensagem TEF', mb_yesno +
          MB_ICONQUESTION) = idYes then
        begin
          if rValor_Total_Cartao > 0 then
          begin
            if application.MessageBox('O sistema não permite utilizar duas formas' +
              ' de pagamento por TEF! Deseja prosseguir apenas com o cartão?',
              'Atenção', mb_yesno + mb_iconwarning) = idNo then
            begin
              bt_confirmar_fechamento.Enabled := true;
              bt_confirmar_fechamento.SetFocus;
              exit;
            end
            else
              bTef_cheque := false;
          end
          else
            bTEF_Cheque := true;
        end
        else
          bTEF_Cheque := false;
      end;
    end;

    // verificar se tem lancamento para crediario
    rValor_Total_crediario := 0;
    if ed_forma1.value > 0 then
    begin
      if AnsiUpperCase(cb_forma1.text) = AnsiUpperCase(lForma_pgto_Crediario) then
      begin
        rValor_Total_crediario := rValor_Total_crediario + ed_forma1.Value;
        sCrediario_Nome := cb_forma1.text;
      end;
    end;
    if ed_forma2.value > 0 then
    begin
      if AnsiUpperCase(cb_forma2.text) = AnsiUpperCase(lForma_pgto_Crediario) then
      begin
        rValor_Total_crediario := rValor_Total_crediario + ed_forma2.Value;
        sCrediario_Nome := cb_forma2.text;
      end;
    end;
    if ed_forma3.value > 0 then
    begin
      if AnsiUpperCase(cb_forma3.text) = AnsiUpperCase(lForma_pgto_Crediario) then
      begin
        rValor_Total_crediario := rValor_Total_crediario + ed_forma3.Value;
        sCrediario_Nome := cb_forma3.text;
      end;
    end;
    // SADRAQUE: Identificação do Vendedor, caso o parametro para identificação
    // esteja habilidade no programa

    iVendedorCodigo := 0;
    sVendedorNome := '';

    if bIdentificarVendedor then
    begin
      Application.CreateForm(TFrmVendedor, FrmVendedor);

      try
        if FrmVendedor.ShowModal = mrOk then
        begin
          iVendedorCodigo := StrToInt(frmModulo.Query.FieldByName('CODIGO').AsString);
          sVendedorNome := frmModulo.Query.FieldByName('NOME').AsString;
        end
        else
        begin
          bt_confirmar_fechamento.enabled := True;
          bt_confirmar_fechamento.setfocus;
          exit;
        end
      finally

        FreeAndNil(FrmVendedor);
      end;
    end;

    // identificacao do Consumidor


    sCli_Nome := ''; sCli_Endereco := ''; sCli_CPF := ''; sCli_Cidade := '';
    sCli_Placa := ''; sCli_Km := ''; sCli_cep := ''; sCli_uf := ''; sCli_codigo := '';

    if (bCadastra_Crediario) and (rvalor_total_crediario > 0) then
    begin
      // abrir tela de lancamento de cliente e de crediario
      bcontinua := false;

      frmvenda_crediario := tfrmvenda_crediario.Create(self);
      if sConsumidor_CPF <> '' then
        frmVenda_Crediario.ed_cred_cliente.Text := sConsumidor_CPF;
      frmvenda_crediario.ShowModal;


      if not bcontinua then
      begin
        bt_confirmar_fechamento.enabled := true;
        bt_confirmar_fechamento.setfocus;
        exit;
      end;
    end
    else
    begin
       // abrir tela simples de identificacao de Cliente
      bContinua := false;
      frmconsumidor := tfrmconsumidor.create(self);

      if sConsumidor_CPF <> '' then
      begin
        frmConsumidor.ed_consumid_cpf.Text := sConsumidor_CPF;
        if sConsumidor_Nome = '' then
        begin
          sConsumidor_Nome := 'Consumidor Final';
          sCli_Nome := 'Consumidor Final';
        end;

        frmConsumidor.ed_consumid_nome.Text := sConsumidor_Nome;
        frmConsumidor.ed_consumid_endereco.Text := sConsumidor_Endereco;
      end
      else
      begin
        sConsumidor_Nome := 'Consumidor Final';
        sCli_Nome := 'Consumidor Final';
        sCli_codigo := '000001';
      end;

      try
        if not bIdentifica_consumidor and (frmPrincipal.TipoImpressora = Fiscal) then
        begin
          frmconsumidor.showmodal;
        end
        else
          bcontinua := True;

      finally
        FreeAndNil(frmconsumidor);
      end;

      if not bcontinua then
      begin
        bt_confirmar_fechamento.enabled := true;
        bt_confirmar_fechamento.setfocus;
        exit;
      end;
    end;

    application.ProcessMessages;

    // verificar se tem lancamento para convenio
    rValor_Total_convenio := 0;
    if ed_forma1.value > 0 then
    begin
      if AnsiUpperCase(cb_forma1.text) = AnsiUpperCase(lForma_pgto_Convenio) then
      begin
        rValor_Total_convenio := rValor_Total_convenio + ed_forma1.Value;
      end;
    end;
    if ed_forma2.value > 0 then
    begin
      if AnsiUpperCase(cb_forma2.text) = AnsiUpperCase(lForma_pgto_Convenio) then
      begin
        rValor_Total_convenio := rValor_Total_convenio + ed_forma2.Value;
      end;
    end;
    if ed_forma3.value > 0 then
    begin
      if AnsiUpperCase(cb_forma3.text) = AnsiUpperCase(lForma_pgto_Convenio) then
      begin
        rValor_Total_convenio := rValor_Total_convenio + ed_forma3.Value;
      end;
    end;
    (*************** F E C H A M E N T O   D O   C U P O M ********************)
    //---> INÍCIO

    //-----> TOTALIZAR O CUPOM (lancar o desconto e acrescimo e fechar total do cupom);

    if not bTotalizado then
    begin

      // Abrir a gaveta...
      AcionaGaveta1.Click;


      {Desconto - %:
       Desconto - R$:
       Acréscimo - %:
       Acréscimo - R$:
      }

      if frmPrincipal.TipoImpressora = Fiscal then
      begin
        repeat
          case cb_desc_acre.ItemIndex of
            0: sMsg := cECF_Inicia_Fechamento(iECF_Modelo, 'D', '%', ED_DESC_ACRE.value);
            1: sMsg := cECF_Inicia_Fechamento(iECF_Modelo, 'D', '$', ED_DESC_ACRE.value);
            2: sMsg := cECF_Inicia_Fechamento(iECF_Modelo, 'A', '%', ED_DESC_ACRE.value);
            3: sMsg := cECF_Inicia_Fechamento(iECF_Modelo, 'A', '$', ED_DESC_ACRE.value);
          end;

          if sMsg = OK then
          begin
            bTotalizado := true;
            frmModulo.spCupom_Temp_Edit.Close;
            frmModulo.spCupom_Temp_Edit.ParamByName('procedimento').asstring := 'TOTALIZADO';
            frmModulo.spCupom_Temp_Edit.Prepare;
            frmModulo.spCupom_Temp_Edit.execute;
          end
          else
          begin
            if application.messagebox
              (pwidechar('Erro no ECF!' + #13 + 'Mensagem: ' + sMsg + #13 +
              'Deseja tentar outra vez?'), 'Erro', mb_yesno + MB_ICONERROR) = idno
            then
            begin
              break;
            end;
          end;
        until sMsg = OK;

      end
      else // Se nao for fiscal ou sem impressora
      begin
        bTotalizado := true;
        frmModulo.spCupom_Temp_Edit.Close;
        frmModulo.spCupom_Temp_Edit.ParamByName('procedimento').asstring := 'TOTALIZADO';
        frmModulo.spCupom_Temp_Edit.Prepare;
        frmModulo.spCupom_Temp_Edit.execute;

        case cb_desc_acre.ItemIndex of
          0: sMsg := Imp_Inicia_Fechamento(sPortaNaoFiscal, 'D', '%', ED_DESC_ACRE.value);
          1: sMsg := Imp_Inicia_Fechamento(sPortaNaoFiscal, 'D', '$', ED_DESC_ACRE.value);
          2: sMsg := Imp_Inicia_Fechamento(sPortaNaoFiscal, 'A', '%', ED_DESC_ACRE.value);
          3: sMsg := Imp_Inicia_Fechamento(sPortaNaoFiscal, 'A', '$', ED_DESC_ACRE.value);
        end;

      end;



      if sMsg <> OK then
      begin
        Imprime_display(sMsg, clRed, tiErro);
        bt_confirmar_fechamento.enabled := true;
        bt_confirmar_fechamento.SetFocus;
        exit;
      end;
    // habilitar o panel para focar no grid apos a sua atualizacao para ele posicionar na
    // ultima linha registrada
      pn_principal.ENABLED := TRUE;

      Imprime_display('Iniciando o fechamento do Cupom...', clwhite, tiInfo);
      grid.AddRow(1);
      grid.cell[0, grid.LastAddedRow].asstring :=
        '--------------------------------------------------------';
      try
        // verificar se possue desconto ou acrescimo
        if ed_desc_acre.Value > 0 then
        begin
          grid.AddRow(1);
          grid.cell[0, grid.LastAddedRow].asstring := '</i><b>TOTAL DOS PRODUTOS R$' +
            '                        ' +
            texto_justifica(
            formatfloat('###,###,##0.00', rTotal_Venda),
            10, ' ', taDireita) + '</b>';
          case cb_desc_acre.ItemIndex of
            0: begin // Desconto por %
                rValor_Temp := (rTotal_Venda * (ed_desc_acre.value / 100));
                  // registrar o desconto em vermelho no grid
                grid.AddRow(1);
                grid.cell[0, grid.LastAddedRow].asstring := '</b></i><FONT color="#FF0000">' +
                  'DESCONTO R$' +
                  '                                  ' +
                  texto_justifica(
                  formatfloat('###,###,##0.00',
                  -rvalor_temp),
                  10, ' ', taDireita) + '</FONT></b></i>';
              end;
            1: begin // Desconto por R$
                rValor_temp := ed_desc_acre.value;
                  // registrar o desconto em vermelho no grid
                grid.AddRow(1);
                grid.cell[0, grid.LastAddedRow].asstring := '</b></i><FONT color="#FF0000">' +
                  'DESCONTO R$' +
                  '                                  ' +
                  texto_justifica(
                  formatfloat('###,###,##0.00',
                  -rvalor_temp),
                  10, ' ', taDireita) + '</FONT></b></i>';
              end;
            2: begin // Acrescimo por %
                rValor_temp := (rTotal_Venda * (ed_desc_acre.value / 100));
                  // registrar o acrescimo em  no grid
                grid.AddRow(1);
                grid.cell[0, grid.LastAddedRow].asstring := '</b></i>' +
                  'ACRÉSCIMO R$' +
                  '                                 ' +
                  texto_justifica(
                  formatfloat('###,###,##0.00',
                  rvalor_temp),
                  10, ' ', taDireita) + '</b></i>';
              end;
            3: begin // Acrescimo por R$
                rValor_temp := ed_desc_acre.value;
                  // registrar o acrescimo em  no grid
                grid.AddRow(1);
                grid.cell[0, grid.LastAddedRow].asstring := '</b></i>' +
                  'ACRÉSCIMO R$' +
                  '                                 ' +
                  texto_justifica(
                  formatfloat('###,###,##0.00',
                  rvalor_temp),
                  10, ' ', taDireita) + '</b></i>';
              end;
          end;
          grid.AddRow(1);
          grid.cell[0, grid.LastAddedRow].asstring :=
            '                                        ----------------';
        end;
        grid.AddRow(1);
        grid.cell[0, grid.LastAddedRow].asstring := '<b></i>T O T A L   D O   C U P O M   R$' +
          '             ' +
          texto_justifica(
          formatfloat('###,###,##0.00',
          ed_total_pagar.value),
          10, ' ', taDireita) + '</b>';
        grid.SelectLastRow;
        try
          grid.SetFocus;
        except
        end;
        Application.ProcessMessages;
        // mudar o status da variavel para nao permitir nova totalizacao para este cupom
        bTotalizado := true;
        frmModulo.spCupom_Temp_Edit.Close;
        frmModulo.spCupom_Temp_Edit.ParamByName('procedimento').asstring := 'TOTALIZADO';
        frmModulo.spCupom_Temp_Edit.Prepare;
        frmModulo.spCupom_Temp_Edit.execute;

      except
        // funcao gerou erro, nao mudar o status da variavel de totalizacao
        bTotalizado := false;
      end;
    end; // já totalizado

    // zerar variaveis de verificao de formas de pagamento
    bVenda_cheque := false;
    bVenda_Cartao := false;
    bVenda_Crediario := false;


    // verificar se a forma1 jah foi lancado no ecf
    if not bPago1 then
    begin
      // Lancar os meios de pagamento
      // registrar Meio de Pagamento Nº 1
      if ed_forma1.value > 0 then
      begin
         // TEF
        if btef then
        begin
           // rodar as formas de pagamento para verificar se eh cartao
          if (ed_forma1.value > 0) and
            ((AnsiUpperCase(cb_forma1.text) = AnsiUpperCase(lForma_pgto_Cartao_Debito)) or
             (AnsiUpperCase(cb_forma1.text) = AnsiUpperCase(lForma_pgto_Cartao_Credito))) then
          begin
             // armazenar o nome da forma de pagamento para CNFV
            sForma_Temp := cb_forma1.Text;
            Imprime_display('TEF', CLWHITE, tiPgto);
            if not TEF_Pagamento(Tef_Venda_Cartao) then
            begin
              application.messagebox
                (pwidechar
                ('Não foi possível prosseguir com a venda no cartão!' + #13 +
                'Favor tentar outra vez ou utilizar outra' +
                ' forma de pagamento!'), 'Mensagem TEF',
                mb_ok + MB_ICONERROR);
              bt_confirmar_fechamento.Enabled := true;
              bt_confirmar_fechamento.setfocus;
              exit;
            end
            else
            begin
              bTef_finaliza := true;
            end;
          end;
           // verificar se vai consultar o cheque pelo tef
          if bTEF_Cheque then
          begin

             // rodar as formas de pagamento para verificar se eh cheque
            if (ed_forma1.value > 0) and
              ((AnsiUpperCase(cb_forma1.text) = AnsiUpperCase(lForma_pgto_Cheque_Avista)) or
              (AnsiUpperCase(cb_forma1.text) = AnsiUpperCase(lForma_pgto_Cheque_Aprazo))) then
            begin
              Imprime_display('TEF', CLWHITE, tiPgto);
               // armazenar o nome da forma de pagamento para CNFV
              sForma_Temp := cb_forma1.Text;

              if not TEF_Pagamento(Tef_Venda_Cheque) then
              begin
                application.messagebox
                  (pwidechar
                  ('Não foi possível prosseguir com a venda no cartão!' + #13
                  + 'Favor tentar outra vez ou utilizar outra' +
                  ' forma de pagamento!'), 'Mensagem TEF',
                  mb_ok + MB_ICONERROR);
                bt_confirmar_fechamento.Enabled := true;
                bt_confirmar_fechamento.setfocus;
                exit;
              end
              else
              begin
                bTef_finaliza := true;
              end;
            end;
          end;
        end; // final do tef

          // enviar para o ecf
        repeat
          if frmPrincipal.TipoImpressora = Fiscal then
            sMsg := cECF_Forma_Pgto(iECF_Modelo, cb_forma1.Text, ed_forma1.Value)
          else
            sMsg := Imp_Forma_Pgto(sPortaNaoFiscal, cb_forma1.Text, ed_forma1.Value);

          if sMsg = OK then
          begin
            grid.AddRow(1);
            grid.cell[0, grid.LastAddedRow].asstring := '</b></i>' + texto_justifica(
              ansiuppercase(cb_forma1.Text),
              45, ' ', taEsquerda) + texto_justifica(
              formatfloat('###,###,##0.00', ed_forma1.Value),
              10, ' ', taDireita) + '</b></i>';
            grid.SelectLastRow;

            try
              grid.SetFocus;
            except
            end;
            bPago1 := true;
            frmModulo.spCupom_Temp_Edit.Close;
            frmModulo.spCupom_Temp_Edit.ParamByName('procedimento').asstring := 'PAGO1';
            frmModulo.spCupom_Temp_Edit.Prepare;
            frmModulo.spCupom_Temp_Edit.execute;


            Application.ProcessMessages;
          end
          else
          begin
            BlockInput(false);
            if application.messagebox
              (pwidechar('Erro ao lançar o ' + cb_forma1.text + '!' + #13 +
              'Mensagem: ' + sMsg + #13 + 'Deseja tentar outra vez?'), 'Erro',
              mb_yesno + MB_ICONERROR) = idno then
            begin
              // BlockInput(true);
              if bTEF and bTef_finaliza then
              begin
                    // TEF apresentou erro
                Imprime_display('Cancelando TEF', clred, tiErro);
                TEFVerificaGerenciadorAtivo;
                TEFNaoConfirmaOperacao;
                TEFVerificaArquivosPendentes;
                TEFVerificaOperacaoPendente;
              end;
              break;
            end;
          end;
        until sMsg = OK;
      end;

      if sMsg <> OK then
      begin
        Imprime_display(sMsg, clred, tiErro);
        bt_confirmar_fechamento.Enabled := true;
        bt_confirmar_fechamento.SetFocus;
        exit;
      end;
    end;

    // verificar se a forma1 jah foi lancado no ecf
    if not bPago2 then begin
         // TEF
      if btef then begin
           // rodar as formas de pagamento para verificar se eh cartao
        if (ed_forma2.value > 0) and
          ((AnsiUpperCase(cb_forma2.text) = AnsiUpperCase(lForma_pgto_Cartao_Debito)) or
          (AnsiUpperCase(cb_forma2.text) = AnsiUpperCase(lForma_pgto_Cartao_Credito))) then
        begin
          Imprime_display('TEF', CLWHITE, tiPgto);
             // armazenar o nome da forma de pagamento para CNFV
          sForma_Temp := cb_forma2.Text;

          if not TEF_Pagamento(Tef_Venda_Cartao) then
          begin
            BlockInput(false);
            application.messagebox
              (pwidechar('Não foi possível prosseguir com a venda no cartão!'
              + #13 + 'Favor tentar outra vez ou utilizar outra' +
              ' forma de pagamento!'), 'Mensagem TEF', mb_ok + MB_ICONERROR);
            bt_confirmar_fechamento.Enabled := true;
            bt_confirmar_fechamento.setfocus;
            exit;
          end
          else
          begin
            bTef_finaliza := true;
          end;
        end;
           // verificar se vai consultar o cheque pelo tef

        if bTEF_Cheque then
        begin
             // rodar as formas de pagamento para verificar se eh cheque
          if (ed_forma2.value > 0) and
            ((AnsiUpperCase(cb_forma2.text) = AnsiUpperCase(lForma_pgto_Cheque_Avista)) or
            (AnsiUpperCase(cb_forma2.text) = AnsiUpperCase(lForma_pgto_Cheque_Avista))) then
          begin
            Imprime_display('TEF', CLWHITE, tiPgto);
               // armazenar o nome da forma de pagamento para CNFV
            sForma_Temp := cb_forma2.Text;
            if not TEF_Pagamento(Tef_Venda_Cheque) then
            begin
             BlockInput(false);
              application.messagebox
                (pwidechar
                ('Não foi possível prosseguir com a venda no cheque!' + #13 +
                'Favor tentar outra vez ou utilizar outra' +
                ' forma de pagamento!'), 'Mensagem TEF',
                mb_ok + MB_ICONERROR);
              bt_confirmar_fechamento.Enabled := true;
              bt_confirmar_fechamento.setfocus;
              exit;
            end
            else
            begin
              bTef_finaliza := true;
            end;
          end;
        end;
      end; // final do tef


      //BlockInput(true);
     // Lancar os meios de pagamento
      // registrar Meio de Pagamento Nº 2
      if ed_forma2.value > 0 then
      begin
         // enviar para o ecf
        repeat
          if frmPrincipal.TipoImpressora = fiscal then
            sMsg := cECF_Forma_Pgto(iECF_Modelo, cb_forma2.Text, ed_forma2.Value)
          else
            sMsg := Imp_Forma_Pgto(sPortaNaoFiscal, cb_forma2.Text, ed_forma2.Value);

          if sMsg = OK then
          begin
            grid.AddRow(1);
            grid.cell[0, grid.LastAddedRow].asstring := '</b></i>' + texto_justifica(
              ansiuppercase(cb_forma2.Text),
              45, ' ', taEsquerda) + texto_justifica(
              formatfloat('###,###,##0.00',
              ed_forma2.Value),
              10, ' ', taDireita) + '</b></i>';
            grid.SelectLastRow;

            try
              grid.SetFocus;
            except
            end;
            bPago2 := true;
            frmModulo.spCupom_Temp_Edit.Close;
            frmModulo.spCupom_Temp_Edit.ParamByName('procedimento').asstring := 'TOTALIZADO';
            frmModulo.spCupom_Temp_Edit.Prepare;
            frmModulo.spCupom_Temp_Edit.execute;

            Application.ProcessMessages;
          end
          else
          begin
            BlockInput(false);
            if application.messagebox
              (pwidechar('Erro ao lançar o ' + cb_forma2.text + '!' + #13 +
              'Mensagem: ' + sMsg + #13 + 'Deseja tentar outra vez?'), 'Erro',
              mb_yesno + MB_ICONERROR) = idno then
            begin
              break;
            end;
          end;
        until sMsg = ok;
      end;



      //BlockInput(true);
      if sMsg <> OK then
      begin
        Imprime_display(sMsg, clred, tiErro);
        bt_confirmar_fechamento.Enabled := true;
        bt_confirmar_fechamento.SetFocus;
        exit;
      end;
    end;

    // verificar se a forma1 jah foi lancado no ecf
    if not bPago3 then
    begin
         // TEF
      if btef then
      begin
           // rodar as formas de pagamento para verificar se eh cartao

        if (ed_forma3.value > 0) and
          ((AnsiUpperCase(cb_forma3.text) = AnsiUpperCase(lForma_pgto_Cartao_Debito)) or
          (AnsiUpperCase(cb_forma3.text) = AnsiUpperCase(lForma_pgto_Cartao_Debito))) then
        begin
          Imprime_display('TEF', CLWHITE, tiPgto);
             // armazenar o nome da forma de pagamento para CNFV
          sForma_Temp := cb_forma3.Text;

          if not TEF_Pagamento(Tef_Venda_Cartao) then
          begin
            BlockInput(false);
            application.messagebox
              (pwidechar('Não foi possível prosseguir com a venda no cartão!'
              + #13 + 'Favor tentar outra vez ou utilizar outra' +
              ' forma de pagamento!'), 'Mensagem TEF', mb_ok + MB_ICONERROR);
            bt_confirmar_fechamento.Enabled := true;
            bt_confirmar_fechamento.setfocus;
            exit;
          end
          else
          begin
            bTef_finaliza := true;
          end;
        end;

           //BlockInput(true);
           // verificar se vai consultar o cheque pelo tef
        if bTEF_Cheque then
        begin

             // rodar as formas de pagamento para verificar se eh cheque
          if (ed_forma3.value > 0) and
            ((AnsiUpperCase(cb_forma3.text) = AnsiUpperCase(lForma_pgto_Cheque_Avista)) or
            (AnsiUpperCase(cb_forma3.text) = AnsiUpperCase(lForma_pgto_Cheque_Avista))) then
          begin
            Imprime_display('TEF', CLWHITE, tiPgto);
               // armazenar o nome da forma de pagamento para CNFV
            sForma_Temp := cb_forma3.Text;
            if not TEF_Pagamento(Tef_Venda_Cheque) then
            begin
              BlockInput(false);
              application.messagebox
                (pwidechar
                ('Não foi possível prosseguir com a venda no cartão!' + #13 +
                'Favor tentar outra vez ou utilizar outra' +
                ' forma de pagamento!'), 'Mensagem TEF',
                mb_ok + MB_ICONERROR);
              bt_confirmar_fechamento.Enabled := true;
              bt_confirmar_fechamento.setfocus;
              exit;
            end
            else
            begin
              bTef_finaliza := true;
            end;
          end;
        end;
      end; // final do tef



      //BlockInput(true);



      // Lancar os meios de pagamento
      // registrar Meio de Pagamento Nº 3
      if ed_forma3.value > 0 then
      begin
         // enviar para o ecf
        repeat
          if frmPrincipal.TipoImpressora = Fiscal then
            sMsg := cECF_Forma_Pgto(iECF_Modelo, cb_forma3.Text, ed_forma3.Value)
          else
            sMsg := Imp_Forma_Pgto(sPortaNaoFiscal, cb_forma3.Text, ed_forma3.Value);

          if sMsg = OK then
          begin
            grid.AddRow(1);
            grid.cell[0, grid.LastAddedRow].asstring := '</b></i>' + texto_justifica(
              ansiuppercase(cb_forma3.Text),
              45, ' ', taEsquerda) + texto_justifica(
              formatfloat('###,###,##0.00', ed_forma3.Value),
              10, ' ', taDireita) + '</b></i>';
            grid.SelectLastRow;

            try
              grid.SetFocus;
            except
            end;
            bPago3 := true;
            frmModulo.spCupom_Temp_Edit.Close;
            frmModulo.spCupom_Temp_Edit.ParamByName('procedimento').asstring := 'PAGO3';
            frmModulo.spCupom_Temp_Edit.Prepare;
            frmModulo.spCupom_Temp_Edit.execute;

            Application.ProcessMessages;
          end
          else
          begin
            BlockInput(false);
            if application.messagebox
              (pwidechar('Erro ao lançar o ' + cb_forma3.text + '!' + #13 +
              'Mensagem: ' + sMsg + #13 + 'Deseja tentar outra vez?'), 'Erro',
              mb_yesno + MB_ICONERROR) = idno then
            begin
              break;
            end;
          end;
        until sMsg = ok;
      end;


      if sMsg <> OK then
      begin
        Imprime_display(sMsg, clred, tiErro);
        bt_confirmar_fechamento.Enabled := true;
        bt_confirmar_fechamento.SetFocus;
        exit;
      end;
    end;

    //BlockInput(true);

    // TROCO
    if ed_troco.Value > 0 then
    begin
      grid.AddRow(1);
      grid.cell[0, grid.LastAddedRow].asstring := '</b></i><FONT color="#FF0000">' +
        'T R O C O   R$                               ' +
        texto_justifica(
        formatfloat('###,###,##0.00', ed_troco.Value),
        10, ' ', taDireita) + '</b></i></FONT>';

      grid.SelectLastRow;
      try
        grid.SetFocus;
      except
      end;
      Application.ProcessMessages;
    end;



    // GUIO: Caso haja a identificação do vendedor, uma string com os dados
    // será montada para ser impressa no cupom fiscal
    if bIdentificarVendedor then
      sIdentificarVendedor := 'Vendedor ' + texto_justifica(FormatFloat('000', iVendedorCodigo) + ' - ' + sVendedorNome, 37, ' ', taEsquerda)
        + #10
    else
      sIdentificarVendedor := '';

    if frmPrincipal.TipoImpressora = SemImpressora then begin
      try
        Imprime_display('          AGUARDE...  PREPARANDO NFC-E',
          clBackground, tiLivre);
        grid.Repaint;
         PrepararNFCE;
        Imprime_display('          AGUARDE...  GRAVANDO NFC-E NO BANCO',
          clBackground, tiLivre);
        grid.Repaint;
        if nfce_autorizada then
        begin
          // lancar nfce no banco de dados do servidor
          vgerado_nfce := 'S';

          with frmmodulo do
          begin
            if edtPathLogs <> '' then
              NomeArquivo := edtPathLogs
            else
              NomeArquivo := 'C:\Softlogus\PDV\xml';
            if ACBRNFCe.Configuracoes.Arquivos.SepararPorModelo then
              NomeArquivo:=NomeArquivo + '\NFCe\';
            if ACBRNFCe.Configuracoes.Arquivos.SepararPorMes then
              NomeArquivo := NomeArquivo + FormatDateTime('YYYYMM',Date)+'\';
            NomeArquivo := NomeArquivo + copy(ChaveNFCE, 4, 47) + '-nfe.xml';


            spNFCE_Insert.close;
            spNFCE_Insert.ParamByName('pnumero').asinteger := NumeroNFCe;
            spNFCE_Insert.ParamByName('pdata').asdate := Date;
            spNFCE_Insert.ParamByName('phora').asstring := FormatDateTime('HH:MM:SS',Time);
            spNFCE_Insert.ParamByName('ptotal').asfloat := ed_total_pagar.value;
            spNFCE_Insert.ParamByName('pcliente').asstring := sCli_Nome;
            spNFCE_Insert.ParamByName('pchave').asstring := copy(ChaveNFCE, 4, 47);
            spNFCE_Insert.ParamByName('pxml').asstring := NomeArquivo;
            spNFCE_Insert.ParamByName('psituacao').asinteger := 0;
            spNFCE_Insert.ParamByName('ptroco').asfloat := ed_troco.value;
            if frmModulo.ACBRNFCe.Configuracoes.Geral.FormaEmissao = frmtOffLine then begin
              vcontingencia := 'S';
              spNFCE_Insert.ParamByName('pcontingencia').asstring := 'S';
              spNFCE_Insert.ParamByName('pmotivocontingencia').asstring := MotivoContigencia;
            end else begin
              vcontingencia := 'N';
              spNFCE_Insert.ParamByName('pcontingencia').asstring := 'N';
              spNFCE_Insert.ParamByName('pmotivocontingencia').asstring := '';
            end;
            spNFCE_Insert.ParamByName('penviadocontingencia').asstring := 'N';
            spNFCE_Insert.ParamByName('pxmlenvio').LoadFromFile(NomeArquivo,ftBlob);
            spNFCE_Insert.ParamByName('pxmlcacnelamento').asstring := '';
            spNFCE_Insert.Prepared;
            spNFCE_Insert.ExecSQL;

          end;

        end ELSE BEGIN
          Imprime_display('ERRO ' + frmmodulo.ACBRNFCe.WebServices.Enviar.xMotivo,clBackground, tiLivre);
          bt_confirmar_fechamento.Enabled := true;
          bt_confirmar_fechamento.SetFocus;
          exit;
        END;

      Except
        on e: exception do
        begin
          Imprime_display('ERRO NFCE: ' + e.Message, clBackground, tiLivre);
          bt_confirmar_fechamento.Enabled := true;
          bt_confirmar_fechamento.SetFocus;
          exit;
        end;
      end;
    end else begin
      vgerado_nfce := 'N';
      vcontingencia := 'N';
    end;
    // identificacao do consumidor no cupom
    if sCli_nome <> '' then
    begin
      repeat
        if sConsumidor_CPF = '' then
        begin
          if not bCadastra_Placa then
          begin

            if frmPrincipal.TipoImpressora = Fiscal then
              sMsg := cECF_Termina_Fechamento(iECF_Modelo, sPAF_MD5 + #10 + sPre_Venda_Numero + sDav_numero +
                sPosto_rodape + sMesa_numero + #10 + SEPARADOR + sIdentificarVendedor +
                'Cliente: ' + texto_justifica(sCli_nome, 37, ' ', taEsquerda) + #10 +
                'Enderec: ' + texto_justifica(sCli_endereco, 37, ' ', taEsquerda) + #10 +
                'Cida/UF: ' + texto_justifica(sFF + ' ' + sCli_uf, 37, ' ', taEsquerda) + #10 +
                'CPF....: ' + texto_justifica(sCli_cpf, 37, ' ', taEsquerda))
            else
              sMsg := Imp_Termina_Fechamento(sPortaNaoFiscal, sPre_Venda_Numero + sDav_numero +
                sPosto_rodape + sMesa_numero + #10 + SEPARADOR + sIdentificarVendedor +
                'Cliente: ' + texto_justifica(sCli_nome, 37, ' ', taEsquerda) + #10 +
                'Enderec: ' + texto_justifica(sCli_endereco, 37, ' ', taEsquerda) + #10 +
                'Cida/UF: ' + texto_justifica(sCli_cidade + ' ' + sCli_uf, 37, ' ', taEsquerda) + #10 +
                'CPF....: ' + texto_justifica(sCli_cpf, 37, ' ', taEsquerda), ed_totalizador.Value, ed_troco.Value);

          end
          else
          begin

            if frmPrincipal.TipoImpressora = Fiscal then
              sMsg := cECF_Termina_Fechamento(iECF_Modelo,
                sPAF_MD5 + #10 +
                sPre_Venda_Numero + sDav_numero + sPosto_rodape + sMesa_numero + #10 +
                SEPARADOR + sIdentificarVendedor +
                'Cliente: ' + texto_justifica(sCli_nome, 37, ' ', taEsquerda) + #10 +
                'Enderec: ' + texto_justifica(sCli_endereco, 37, ' ', taEsquerda) + #10 +
                'Cida/UF: ' + texto_justifica(sCli_cidade + ' ' + sCli_uf, 37, ' ', taEsquerda) + #10 +
                'CPF....: ' + texto_justifica(sCli_cpf, 37, ' ', taEsquerda) + #10 +
                'Placa..: ' + texto_justifica(sCli_Placa, 10, ' ', taEsquerda) +
                'KM: ' + texto_justifica(sCli_Km, 10, ' ', taEsquerda) +
                'VD: ' + texto_justifica(scli_vendedor, 17, ' ', taEsquerda))
            else
              sMsg := Imp_Termina_Fechamento(sPortaNaoFiscal,
                sPre_Venda_Numero + sDav_numero + sPosto_rodape + sMesa_numero + #10 +
                SEPARADOR + sIdentificarVendedor +
                'Cliente: ' + texto_justifica(sCli_nome, 37, ' ', taEsquerda) + #10 +
                'Enderec: ' + texto_justifica(sCli_endereco, 37, ' ', taEsquerda) + #10 +
                'Cida/UF: ' + texto_justifica(sCli_cidade + ' ' + sCli_uf, 37, ' ', taEsquerda) + #10 +
                'CPF....: ' + texto_justifica(sCli_cpf, 37, ' ', taEsquerda) + #10 +
                'Placa..: ' + texto_justifica(sCli_Placa, 10, ' ', taEsquerda) +
                'KM: ' + texto_justifica(sCli_Km, 10, ' ', taEsquerda) +
                'VD: ' + texto_justifica(scli_vendedor, 17, ' ', taEsquerda), ed_totalizador.Value, ed_troco.Value);

          end;
        end
        else
        begin
          if sConsumidor_Nome = '' then
          begin
            if not bCadastra_Placa then
            begin

              if frmPrincipal.TipoImpressora = Fiscal then
                sMsg := cECF_Termina_Fechamento(iECF_Modelo,
                  sPAF_MD5 + #10 +
                  sPre_Venda_Numero + sDav_numero + sPosto_rodape + sMesa_numero + #10 +
                  SEPARADOR + sIdentificarVendedor +
                  'Cliente: ' + texto_justifica(sCli_nome, 37, ' ', taEsquerda) + #10 +
                  'Enderec: ' + texto_justifica(sCli_endereco, 37, ' ', taEsquerda) + #10 +
                  'Cida/UF: ' + texto_justifica(sCli_cidade + ' ' + sCli_uf, 37, ' ', taEsquerda) + #10 +
                  'CPF....: ' + texto_justifica(sCli_cpf, 37, ' ', taEsquerda))
              else
                sMsg := Imp_Termina_Fechamento(sPortaNaoFiscal,
                  sPre_Venda_Numero + sDav_numero + sPosto_rodape + sMesa_numero + #10 +
                  SEPARADOR + sIdentificarVendedor +
                  'Cliente: ' + texto_justifica(sCli_nome, 37, ' ', taEsquerda) + #10 +
                  'Enderec: ' + texto_justifica(sCli_endereco, 37, ' ', taEsquerda) + #10 +
                  'Cida/UF: ' + texto_justifica(sCli_cidade + ' ' + sCli_uf, 37, ' ', taEsquerda) + #10 +
                  'CPF....: ' + texto_justifica(sCli_cpf, 37, ' ', taEsquerda), ed_totalizador.Value, ed_troco.Value);



            end
            else
            begin

              if frmPrincipal.TipoImpressora = Fiscal then
                sMsg := cECF_Termina_Fechamento(iECF_Modelo,
                  sPAF_MD5 + #10 +
                  sPre_Venda_Numero + sDav_numero + sPosto_rodape + sMesa_numero + #10 +
                  SEPARADOR + sIdentificarVendedor +
                  'Cliente: ' + texto_justifica(sCli_nome, 37, ' ', taEsquerda) + #10 +
                  'Enderec: ' + texto_justifica(sCli_endereco, 37, ' ', taEsquerda) + #10 +
                  'Cida/UF: ' + texto_justifica(sCli_cidade + ' ' + sCli_uf, 37, ' ', taEsquerda) + #10 +
                  'Placa..: ' + texto_justifica(sCli_Placa, 10, ' ', taEsquerda) +
                  'KM: ' + texto_justifica(sCli_Km, 10, ' ', taEsquerda) +
                  'VD: ' + texto_justifica(scli_vendedor, 17, ' ', taEsquerda))
              else
                sMsg := Imp_Termina_Fechamento(sPortaNaoFiscal,
                  sPre_Venda_Numero + sDav_numero + sPosto_rodape + sMesa_numero + #10 +
                  SEPARADOR + sIdentificarVendedor +
                  'Cliente: ' + texto_justifica(sCli_nome, 37, ' ', taEsquerda) + #10 +
                  'Enderec: ' + texto_justifica(sCli_endereco, 37, ' ', taEsquerda) + #10 +
                  'Cida/UF: ' + texto_justifica(sCli_cidade + ' ' + sCli_uf, 37, ' ', taEsquerda) + #10 +
                  'Placa..: ' + texto_justifica(sCli_Placa, 10, ' ', taEsquerda) +
                  'KM: ' + texto_justifica(sCli_Km, 10, ' ', taEsquerda) +
                  'VD: ' + texto_justifica(scli_vendedor, 17, ' ', taEsquerda), ed_totalizador.Value, ed_troco.Value);

            end;
          end
          else
          begin

            if not bCadastra_Placa then
            begin
              if frmPrincipal.TipoImpressora = Fiscal then
                sMsg := cECF_Termina_Fechamento(iECF_Modelo,
                  sPAF_MD5 + #10 +
                  sPre_Venda_Numero + sDav_numero + sPosto_rodape + sMesa_numero + #10
                  + SEPARADOR + sIdentificarVendedor)
              else
                sMsg := Imp_Termina_Fechamento(sPortaNaoFiscal,
                  sPre_Venda_Numero + sDav_numero + sPosto_rodape + sMesa_numero + #10
                  + SEPARADOR + sIdentificarVendedor, ed_totalizador.Value, ed_troco.Value);

            end
            else
            begin
              if frmPrincipal.TipoImpressora = Fiscal then
                sMsg := cECF_Termina_Fechamento(iECF_Modelo,
                  sPAF_MD5 + #10 +
                  sPre_Venda_Numero + sDav_numero + sPosto_rodape + sMesa_numero + #10 +
                  SEPARADOR + sIdentificarVendedor +
                  'Placa..: ' + texto_justifica(sCli_Placa, 10, ' ', taEsquerda) +
                  'KM: ' + texto_justifica(sCli_Km, 10, ' ', taEsquerda) +
                  'VD: ' + texto_justifica(scli_vendedor, 17, ' ', taEsquerda))
              else
                sMsg := Imp_Termina_Fechamento(sPortaNaoFiscal,
                  sPre_Venda_Numero + sDav_numero + sPosto_rodape + sMesa_numero + #10 +
                  SEPARADOR + sIdentificarVendedor +
                  'Placa..: ' + texto_justifica(sCli_Placa, 10, ' ', taEsquerda) +
                  'KM: ' + texto_justifica(sCli_Km, 10, ' ', taEsquerda) +
                  'VD: ' + texto_justifica(scli_vendedor, 17, ' ', taEsquerda), ed_totalizador.Value, ed_troco.Value);

            end;
          end;
        end;

        if sMsg = ok then
        begin
          bFinalizado := true;
          frmmodulo.spCupom_Temp_Edit.close;
          frmmodulo.spCupom_Temp_Edit.ParamByName('procedimento').asstring :=
            'FINALIZADO';
          frmmodulo.spCupom_Temp_Edit.Prepare;
          frmmodulo.spCupom_Temp_Edit.Execute;
        end
        else
        begin
          BlockInput(false);
          if application.messagebox
            (pwidechar('Erro no ECF!' + #13 + 'Mensagem: ' + sMsg + #13 +
            'Deseja tentar outra vez?'), 'Erro', mb_yesno + MB_ICONERROR) = idno
          then
          begin
            break;
          end;
        end;
      until sMsg = ok;


      //BlockInput(true);

      sPre_Venda_Numero := '';
      sDav_numero := '';
      sPosto_rodape := '';
      sMesa_numero := '';


      if sMsg <> OK then
      begin
        bt_confirmar_fechamento.Enabled := true;
        bt_confirmar_fechamento.setfocus;
        Imprime_display(sMsg, clred, tierro);
        exit;
      end;
      grid.AddRow(1);
      grid.cell[0, grid.LastAddedRow].asstring :=
        '--------------------------------------------------------';
      if bIdentificarVendedor then
      begin
        grid.AddRow(1);
        grid.cell[0, grid.LastAddedRow].asstring := 'Vended. '
          + texto_justifica(FormatFloat('000', iVendedorCodigo)
          + ' - ' + sVendedorNome, 47, ' ', taEsquerda);
      end;

      grid.AddRow(1);
      grid.cell[0, grid.LastAddedRow].asstring := 'Cliente ' +
        texto_justifica(sCli_nome, 47, ' ', taEsquerda);
      grid.AddRow(1);
      grid.cell[0, grid.LastAddedRow].asstring := 'Endere: ' +
        texto_justifica(sCli_endereco, 47, ' ', taEsquerda);
      grid.AddRow(1);
      grid.cell[0, grid.LastAddedRow].asstring := 'Cid/UF: ' +
        texto_justifica(sCli_cidade + '/' + sCli_uf + ' ' + scli_cep, 47, ' ', taEsquerda);
      grid.AddRow(1);
      grid.cell[0, grid.LastAddedRow].asstring := 'CPF...: ' +
        texto_justifica(sCli_cpf, 47, ' ', taEsquerda);
      if bCadastra_Placa then
      begin
        GRID.ADDROW(1);
        grid.cell[0, grid.LastAddedRow].asstring := 'Placa.: ' +
          texto_justifica(sCli_placa + '  Km: ' + scli_km + '  Vendedor: ' +
          scli_vendedor, 47, ' ', taEsquerda);
      end;
      grid.AddRow(1);
      grid.cell[0, grid.LastAddedRow].asstring :=
        '--------------------------------------------------------';
      grid.AddRow(1);
      grid.cell[0, grid.LastAddedRow].asstring :=
        '              Obrigado!!! Volte Sempre!!!               ';
    end
    else
    begin


      repeat
        //BlockInput(true);
        if not bCadastra_Placa then
        begin

          if frmPrincipal.TipoImpressora = Fiscal then
            sMsg := cECF_Termina_Fechamento(iECF_Modelo, sPAF_MD5 + #10 + sPre_Venda_Numero + sDav_numero + sPosto_rodape + sMesa_numero
              + SEPARADOR + sIdentificarVendedor)
          else
            sMsg := Imp_Termina_Fechamento(sPortaNaoFiscal, sPre_Venda_Numero + sDav_numero + sPosto_rodape + sMesa_numero
              + SEPARADOR + sIdentificarVendedor, ed_totalizador.Value, ed_troco.Value);

        end
        else
        begin

          if frmPrincipal.TipoImpressora = Fiscal then
            sMsg := cECF_Termina_Fechamento(iECF_Modelo,
              sPAF_MD5 + #10 +
              sPre_Venda_Numero + sDav_numero + sPosto_rodape + sMesa_numero + #10 +
              SEPARADOR + sIdentificarVendedor +
              'Placa..: ' + texto_justifica(sCli_Placa, 10, ' ', taEsquerda) +
              'KM: ' + texto_justifica(sCli_Km, 10, ' ', taEsquerda) +
              'VD: ' + texto_justifica(scli_vendedor, 17, ' ', taEsquerda))
          else
            sMsg := Imp_Termina_Fechamento(sPortaNaoFiscal,
              sPre_Venda_Numero + sDav_numero + sPosto_rodape + sMesa_numero + #10 +
              SEPARADOR + sIdentificarVendedor +
              'Placa..: ' + texto_justifica(sCli_Placa, 10, ' ', taEsquerda) +
              'KM: ' + texto_justifica(sCli_Km, 10, ' ', taEsquerda) +
              'VD: ' + texto_justifica(scli_vendedor, 17, ' ', taEsquerda), ed_totalizador.Value, ed_troco.Value);

        end;

        if sMsg = OK then
        begin
          bFinalizado := true;

          frmModulo.spCupom_Temp_Edit.Close;
          frmModulo.spCupom_Temp_Edit.ParamByName('procedimento').asstring := 'FINALIZADO';
          frmModulo.spCupom_Temp_Edit.Prepare;
          frmModulo.spCupom_Temp_Edit.execute;

        end
        else
        begin
          BlockInput(false);
          if application.messagebox
            (pwidechar('Erro no ECF!' + #13 + 'Mensagem: ' + sMsg + #13 +
            'Deseja tentar outra vez?'), 'Erro', mb_yesno + MB_ICONERROR) = idno
          then
          begin
            break;
          end;
        end;
      until sMsg = ok;

      if sMsg <> OK then
      begin
        bt_confirmar_fechamento.Enabled := true;
        bt_confirmar_fechamento.setfocus;
        Imprime_display(sMsg, clred, tierro);
        exit;
      end;



      // sem consumidor
      grid.AddRow(1);
      grid.cell[0, grid.LastAddedRow].asstring :=
        '--------------------------------------------------------';
      grid.AddRow(1);
      grid.cell[0, grid.LastAddedRow].asstring :=
        '              Obrigado!!! Volte Sempre!!!               ';
    end;

    grid.SelectLastRow;
    try
      grid.SetFocus;
    except
    end;
    Application.ProcessMessages;
    bFinalizado := true;



   // atualizar o totalizador geral do PAF com a do ECF
    if frmPrincipal.TipoImpressora = Fiscal then
    begin
      repeat
        // BlockInput(true);
        sMsg := cECF_Grande_Total(iECF_Modelo);
        iF sMsg = 'ERRO' then
        begin
          BlockInput(false);
          if application.messagebox
            (pwidechar('Erro ao verificar totalizador do ECF!' + #13 +
            'Mensagem: ' + sMsg + #13 + 'Deseja tentar outra vez?'), 'Erro',
            mb_yesno + MB_ICONERROR) = idno then
            break;

        end
        else
          atualiza_totalizador(SMSG);
      until SmSG <> 'ERRO';
    end;


    //---> FIM
    (**************************************************************************)

    //BlockInput(true);

    if bTEF and bTef_finaliza then
    begin
      if (FileExists(sTEFTemp_Path + 'TEF.Imp')) then
      begin
        Imprime_display('Impressão comprovante TEF', clwhite, tiInfo);
        TEFImprimeTransacao('V');
      end;
      if sTEFRetorno = '0' then
      begin
         // TEF ok
        Imprime_display('Confirmando TEF', clwhite, tiInfo);
        TEFVerificaGerenciadorAtivo;
        TEFFechaOperacao;
      end
      else
      begin
        // TEF apresentou erro
        Imprime_display('Cancelando TEF', clred, tiErro);
        TEFVerificaGerenciadorAtivo;
        TEFNaoConfirmaOperacao;
        TEFVerificaArquivosPendentes;
        TEFVerificaOperacaoPendente;
      end;
    end;


    //--> (C U P O M    N A O   F I S C A L )
    bLanca_comprovante_crediario := false;
    // comprovante do crediario
    if (bCadastra_Crediario) and (rvalor_total_crediario > 0) and (iComprovente_Crediario = 1) then
    begin
      Imprime_display('Aguarde! Imprimindo Comprovante...', clwhite, tiInfo);
      bLanca_comprovante_crediario := false;
      sMsg := OK;
      if sMSG = OK then
      begin

        repeat
          //BlockInput(true);
          if frmprincipal.TipoImpressora = fiscal then
          begin
            sMsg := cECF_Abre_Gerencial(iECF_Modelo, 'CREDIÁRIO                                       ');
            sCOO_prestacao := cECF_Numero_Cupom(iECF_Modelo);
            sGNF_prestacao := cECF_Numero_Contador_Operacao_NF(iECF_Modelo);
            sGRG_prestacao := cECF_Numero_Contador_Relatorio_Gerencial(iECF_Modelo);
          end
          else
          begin
            sMsg := Imp_Abre_Gerencial(sPortaNaoFiscal, 'CREDIÁRIO                                       ');
            sCOO_prestacao := snumero_cupom;
            sGNF_prestacao := sGNF;
            sGRG_prestacao := sGRG;
          end;

          if sMsg = 'ERRO' then
          begin
            BlockInput(false);
            if application.messagebox
              (pwidechar('Não foi possível abrir o comprovante de Crediário' +
              #13 + 'Mensagem: ' + sMsg + #13 + 'Deseja tentar outra vez?'),
              'Erro', mb_yesno + MB_ICONERROR) = idno then
            begin
              break;
            end;
          end;
        until sMsg = ok;


        // imprimir o comprovante com os produtos
        if iComprovante_Crediario_produto = 1 then
        begin
          if frmprincipal.TipoImpressora = fiscal then
          begin
            sMsg := cECF_Usa_Gerencial(iECF_Modelo, texto_justifica('S E G U N D A   V I A   D O     C U P O M', 48, ' ', taCentralizado));
            SMsg := cECF_Usa_Gerencial(iECF_Modelo,
              texto_justifica('No: ' + sNumero_Cupom +
              ' Data:' + DateToStr(dData_Sistema) +
              ' Hora:' + TimeToStr(time), 48,
              ' ', taCentralizado));

            SMsg := cECF_Usa_Gerencial(iECF_Modelo, '------------------------------------------------');
            SMsg := cECF_Usa_Gerencial(iECF_Modelo, 'Item Codigo        Descricao');
            SMsg := cECF_Usa_Gerencial(iECF_Modelo, '                    Qtde Un.  Vl.Unit    Vl.Item');
            SMsg := cECF_Usa_Gerencial(iECF_Modelo, '------------------------------------------------');

          end
          else
          begin
            sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal, texto_justifica('S E G U N D A   V I A    D O    C U P O M', 48, ' ', taCentralizado));
            SMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
              texto_justifica('No: ' + sNumero_Cupom +
              ' Data:' + DateToStr(dData_Sistema) +
              ' Hora:' + TimeToStr(time), 48,
              ' ', taCentralizado));

            SMsg := Imp_Usa_Gerencial(sPortaNaoFiscal, '------------------------------------------------');
            SMsg := Imp_Usa_Gerencial(sPortaNaoFiscal, 'Item Codigo        Descricao');
            SMsg := Imp_Usa_Gerencial(sPortaNaoFiscal, '                    Qtde Un.  Vl.Unit    Vl.Item');
            SMsg := Imp_Usa_Gerencial(sPortaNaoFiscal, '------------------------------------------------');

          end;



          for i := 0 to grid.RowCount - 1 do
          begin
            if (grid.Cell[1, i].asinteger = 1) and (grid.cell[13, i].asinteger = 0) then
            begin

              if frmprincipal.TipoImpressora = fiscal then
              begin
                SMsg := cECF_Usa_Gerencial(iECF_Modelo,
                  texto_justifica(GRID.CELL[2, I].ASSTRING, 3, '0', taDireita) + ' ' +
                  texto_justifica(GRID.CELL[3, I].ASSTRING, 13, '0', taDireita) + ' ' +
                  texto_justifica(GRID.CELL[4, I].ASSTRING, 30, ' ', taEsquerda));

                SMsg := cECF_Usa_Gerencial(iECF_Modelo, '              ' +
                  texto_justifica(formatfloat('###,###,##0.000', GRID.CELL[5, I].ASFLOAT), 10, ' ', taDireita) +
                  texto_justifica(GRID.CELL[12, I].ASSTRING, 2, ' ', taEsquerda) + ' ' +
                  texto_justifica(formatfloat('###,###,##0.000', GRID.CELL[6, I].ASFLOAT), 10, ' ', taDireita) +
                  texto_justifica(formatfloat('###,###,##0.00', GRID.CELL[9, I].ASFLOAT), 11, ' ', taDireita));

                if GRID.CELL[7, I].ASFLOAT > 0 then
                begin
                  SMsg := cECF_Usa_Gerencial(iECF_Modelo, '              ' +
                    'Desconto:  -' + texto_justifica(formatfloat('###,###,##0.00', GRID.Cell[7, I].ASFLOAT), 8, ' ', taDireita));
                end;
                if GRID.CELL[8, I].ASFLOAT > 0 then
                begin

                  SMsg := cECF_Usa_Gerencial(iECF_Modelo, '              ' +
                    'Acréscimo: +' + texto_justifica(formatfloat('###,###,##0.00', GRID.CELL[8, I].ASFLOAT), 8, ' ', taDireita));
                end;

              end
              else
              begin
                SMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
                  texto_justifica(GRID.CELL[2, I].ASSTRING, 3, '0', taDireita) + ' ' +
                  texto_justifica(GRID.CELL[3, I].ASSTRING, 13, '0', taDireita) + ' ' +
                  texto_justifica(GRID.CELL[4, I].ASSTRING, 30, ' ', taEsquerda));

                SMsg := Imp_Usa_Gerencial(sPortaNaoFiscal, '              ' +
                  texto_justifica(formatfloat('###,###,##0.000', GRID.CELL[5, I].ASFLOAT), 10, ' ', taDireita) +
                  texto_justifica(GRID.CELL[12, I].ASSTRING, 2, ' ', taEsquerda) + ' ' +
                  texto_justifica(formatfloat('###,###,##0.000', GRID.CELL[6, I].ASFLOAT), 10, ' ', taDireita) +
                  texto_justifica(formatfloat('###,###,##0.00', GRID.CELL[9, I].ASFLOAT), 11, ' ', taDireita));

                if GRID.CELL[7, I].ASFLOAT > 0 then
                begin
                  SMsg := Imp_Usa_Gerencial(sPortaNaoFiscal, '              ' +
                    'Desconto:  -' + texto_justifica(formatfloat('###,###,##0.00', GRID.Cell[7, I].ASFLOAT), 8, ' ', taDireita));
                end;
                if GRID.CELL[8, I].ASFLOAT > 0 then
                begin

                  SMsg := Imp_Usa_Gerencial(sPortaNaoFiscal, '              ' +
                    'Acréscimo: +' + texto_justifica(formatfloat('###,###,##0.00', GRID.CELL[8, I].ASFLOAT), 8, ' ', taDireita));
                end;

              end;

            end;
          end;

          if frmprincipal.TipoImpressora = fiscal then
          begin
            SMsg := cECF_Usa_Gerencial(iECF_Modelo, '------------------------------------------------');
            SMsg := cECF_Usa_Gerencial(iECF_Modelo, '                   Subtotal do Cupom:' + texto_justifica(formatfloat('###,###,##0.00', rTotal_Venda), 11, ' ', taDireita));
            SMsg := cECF_Usa_Gerencial(iECF_Modelo, '                            Desconto:' + texto_justifica(formatfloat('###,###,##0.00', rTotal_Desconto), 11, ' ', taDireita));
            SMsg := cECF_Usa_Gerencial(iECF_Modelo, '                           Acrescimo:' + texto_justifica(formatfloat('###,###,##0.00', rTotal_Acrescimo), 11, ' ', taDireita));
            SMsg := cECF_Usa_Gerencial(iECF_Modelo, '                      Total do Cupom:' + texto_justifica(formatfloat('###,###,##0.00', ed_total_pagar.VALUE), 11, ' ', taDireita));
            SMsg := cECF_Usa_Gerencial(iECF_Modelo, '------------------------------------------------');

            if cb_forma1.Text <> '' then
            begin
              SMsg := cECF_Usa_Gerencial(iECF_Modelo, texto_justifica(cb_forma1.text + ':', 20, ' ', taEsquerda) + ' ' +
                texto_justifica(formatfloat('###,###,##0.00', ed_forma1.value), 11, ' ', taDireita));
            end;
            if cb_forma2.Text <> '' then
            begin
              SMsg := cECF_Usa_Gerencial(iECF_Modelo, texto_justifica(cb_forma2.text + ':', 20, ' ', taEsquerda) + ' ' +
                texto_justifica(formatfloat('###,###,##0.00', ed_forma2.value), 11, ' ', taDireita));
            end;
            if cb_forma3.Text <> '' then
            begin
              SMsg := cECF_Usa_Gerencial(iECF_Modelo, texto_justifica(cb_forma3.text + ':', 20, ' ', taEsquerda) + ' ' +
                texto_justifica(formatfloat('###,###,##0.00', ed_forma3.value), 11, ' ', taDireita));
            end;
            SMsg := cECF_Usa_Gerencial(iECF_Modelo, ' ');
            SMsg := cECF_Usa_Gerencial(iECF_Modelo, ' ');


          end
          else
          begin //Nao Fiscal
            SMsg := Imp_Usa_Gerencial(sPortaNaoFiscal, '------------------------------------------------');
            SMsg := Imp_Usa_Gerencial(sPortaNaoFiscal, '                   Subtotal do Cupom:' + texto_justifica(formatfloat('###,###,##0.00', rTotal_Venda), 11, ' ', taDireita));
            SMsg := Imp_Usa_Gerencial(sPortaNaoFiscal, '                            Desconto:' + texto_justifica(formatfloat('###,###,##0.00', rTotal_Desconto), 11, ' ', taDireita));
            SMsg := Imp_Usa_Gerencial(sPortaNaoFiscal, '                           Acrescimo:' + texto_justifica(formatfloat('###,###,##0.00', rTotal_Acrescimo), 11, ' ', taDireita));
            SMsg := Imp_Usa_Gerencial(sPortaNaoFiscal, '                      Total do Cupom:' + texto_justifica(formatfloat('###,###,##0.00', ed_total_pagar.VALUE), 11, ' ', taDireita));
            SMsg := Imp_Usa_Gerencial(sPortaNaoFiscal, '------------------------------------------------');

            if cb_forma1.Text <> '' then
            begin
              SMsg := Imp_Usa_Gerencial(sPortaNaoFiscal, texto_justifica(cb_forma1.text + ':', 20, ' ', taEsquerda) + ' ' +
                texto_justifica(formatfloat('###,###,##0.00', ed_forma1.value), 11, ' ', taDireita));
            end;
            if cb_forma2.Text <> '' then
            begin
              SMsg := Imp_Usa_Gerencial(sPortaNaoFiscal, texto_justifica(cb_forma2.text + ':', 20, ' ', taEsquerda) + ' ' +
                texto_justifica(formatfloat('###,###,##0.00', ed_forma2.value), 11, ' ', taDireita));
            end;
            if cb_forma3.Text <> '' then
            begin
              SMsg := Imp_Usa_Gerencial(sPortaNaoFiscal, texto_justifica(cb_forma3.text + ':', 20, ' ', taEsquerda) + ' ' +
                texto_justifica(formatfloat('###,###,##0.00', ed_forma3.value), 11, ' ', taDireita));
            end;
            SMsg := Imp_Usa_Gerencial(sPortaNaoFiscal, ' ');
            SMsg := Imp_Usa_Gerencial(sPortaNaoFiscal, ' ');


          end;

        end;

        // rodar conforme a variavel icrediario_prestacao = qtde de prestacoes
        for i := 1 to iCrediario_prestacao do
        begin


          if sMsg = OK then
          begin
            repeat
              if frmprincipal.TipoImpressora = fiscal then
              begin
                  //BlockInput(true);
                sMsg := cECF_Usa_Gerencial(iECF_Modelo,
                  '------------------------------------------------');
                sMsg := cECF_Usa_Gerencial(iECF_Modelo,
                  '             COMPROVANTE DE DÉBITO              ');
                sMsg := cECF_Usa_Gerencial(iECF_Modelo,
                  '------------------------------------------------');
                sMsg := cECF_Usa_Gerencial(iECF_Modelo,
                  Texto_Justifica('CUPOM.....: ' +
                  zerar(sNumero_Cupom, 6), 48, ' ', taEsquerda));
                sMsg := cECF_Usa_Gerencial(iECF_Modelo,
                  Texto_Justifica('DOCUMENTO.: ' +
                  zerar(sNumero_Cupom, 6) + '/' + inttostr(i), 48,
                  ' ', taEsquerda));
                sMsg := cECF_Usa_Gerencial(iECF_Modelo,
                  '------------------------------------------------');
                sMsg := cECF_Usa_Gerencial(iECF_Modelo,
                  Texto_Justifica('CLIENTE...: ' +
                  sCli_codigo + '-' + sCli_Nome, 48, ' ', taEsquerda));
                sMsg := cECF_Usa_Gerencial(iECF_Modelo,
                  Texto_Justifica('ENDERECO..: ' + sCli_Endereco, 48, ' ', taEsquerda));
                sMsg := cECF_Usa_Gerencial(iECF_Modelo,
                  Texto_Justifica('CPF/CNPJ..: ' + sCli_CPF, 48, ' ', taEsquerda));

                sMsg := cECF_Usa_Gerencial(iECF_Modelo,
                  '------------------------------------------------');
                sMsg := cECF_Usa_Gerencial(iECF_Modelo,
                  Texto_Justifica('PARCELA...: ' + Zerar(INTTOSTR(I), 2) + '/' +
                  ZERAR(IntToStr(iCrediario_prestacao), 2), 48, ' ', taEsquerda));
                sMsg := cECF_Usa_Gerencial(iECF_Modelo,
                  Texto_Justifica('VENCIMENTO: ' +
                  datetostr(IncMonth(dData_sistema, i))
                  , 48, ' ', taEsquerda));
                sMsg := cECF_Usa_Gerencial(iECF_Modelo,
                  Texto_Justifica('VALOR.....: ' +
                  FORMATFLOAT('R$ ###,###,##0.00', rvalor_total_crediario /
                  iCrediario_prestacao), 48, ' ', taEsquerda));

                sMsg := cECF_Usa_Gerencial(iECF_Modelo,
                  '------------------------------------------------');
                sMsg := cECF_Usa_Gerencial(iECF_Modelo,
                  '                                                ');
                sMsg := cECF_Usa_Gerencial(iECF_Modelo,
                  '                                                ');
                sMsg := cECF_Usa_Gerencial(iECF_Modelo,
                  '                                                ');
                sMsg := cECF_Usa_Gerencial(iECF_Modelo,
                  '                                                ');
                sMsg := cECF_Usa_Gerencial(iECF_Modelo,
                  '------------------------------------------------');
                sMsg := cECF_Usa_Gerencial(iECF_Modelo,
                  '            Assinatura do Cliente               ');
                sMsg := cECF_Usa_Gerencial(iECF_Modelo,
                  '                                                ');
                sMsg := cECF_Usa_Gerencial(iECF_Modelo,
                  '                                                ');
              end
              else
              begin // Nao Fiscal
                sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
                  '------------------------------------------------');
                sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
                  '             COMPROVANTE DE DÉBITO              ');
                sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
                  '------------------------------------------------');
                sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
                  Texto_Justifica('CUPOM.....: ' +
                  zerar(sNumero_Cupom, 6), 48, ' ', taEsquerda));
                sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
                  Texto_Justifica('DOCUMENTO.: ' +
                  zerar(sNumero_Cupom, 6) + '/' + inttostr(i), 48,
                  ' ', taEsquerda));
                sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
                  '------------------------------------------------');
                sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
                  Texto_Justifica('CLIENTE...: ' +
                  sCli_codigo + '-' + sCli_Nome, 48, ' ', taEsquerda));
                sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
                  Texto_Justifica('ENDERECO..: ' + sCli_Endereco, 48, ' ', taEsquerda));
                sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
                  Texto_Justifica('CPF/CNPJ..: ' + sCli_CPF, 48, ' ', taEsquerda));

                sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
                  '------------------------------------------------');
                sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
                  Texto_Justifica('PARCELA...: ' + Zerar(INTTOSTR(I), 2) + '/' +
                  ZERAR(IntToStr(iCrediario_prestacao), 2), 48, ' ', taEsquerda));
                sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
                  Texto_Justifica('VENCIMENTO: ' +
                  datetostr(IncMonth(dData_sistema, i))
                  , 48, ' ', taEsquerda));
                sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
                  Texto_Justifica('VALOR.....: ' +
                  FORMATFLOAT('R$ ###,###,##0.00', rvalor_total_crediario /
                  iCrediario_prestacao), 48, ' ', taEsquerda));

                sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
                  '------------------------------------------------');
                sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
                  '                                                ');
                sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
                  '                                                ');
                sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
                  '                                                ');
                sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
                  '                                                ');
                sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
                  '------------------------------------------------');
                sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
                  '            Assinatura do Cliente               ');
                sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
                  '                                                ');
                sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
                  '                                                ');

              end;

              if sMsg = 'ERRO' then
              begin
                BlockInput(false);
                if application.messagebox
                  (pwidechar('Não foi possível imprimir o comprovante ' +
                  'de Crediário!' + #13 + 'Mensagem: ' + sMsg + #13 +
                  'Deseja tentar outra vez?'), 'Erro', mb_yesno + MB_ICONERROR)
                  = idno then
                  break;

              end;
            until sMsg = OK;
          end;
        end;

        bLanca_Comprovante_Prestacao := false;


        if sMsg = OK then
        begin
          // fechar o gerencial
          repeat
            //BlockInput(true);
            if frmprincipal.TipoImpressora = fiscal then
              sMsg := cECF_Fecha_Gerencial(iECF_Modelo)
            else
              sMsg := Imp_Fecha_Gerencial(sPortaNaoFiscal);

            if sMsg = 'ERRO' then
            begin
              BlockInput(false);
              if application.messagebox
                (pwidechar('Não foi possível finalizar o comprovante ' +
                'de Crediário!' + #13 + 'Mensagem: ' + sMsg + #13 +
                'Deseja tentar outra vez?'), 'Erro', mb_yesno + MB_ICONERROR) = idno
              then
                break;


            end
            else
            begin
              bLanca_Comprovante_Prestacao := true;
            end;
          until sMsg = OK;
        end
        else
          Imprime_display('Erro na impressaão do crediário!', clRed, tiErro);
      end;
    end;


    //BlockInput(true);

    if bFinalizado then
    begin
      Imprime_display('Aguarde!Finalizando Venda!', clwhite, tiInfo);

      // cadastrar cheques
      if (bCadastra_Cheque) and (rvalor_total_cheque > 0) then
      begin


      end;
      // lancar convenio
      if (bcadastra_convenio) and (rvalor_total_convenio > 0) then
      begin


      end;

      with frmmodulo do
      begin
        // lancamento do cupom no banco de dados
        sNumero_Cupom := sNumero_Venda;
        sCod_Cupom := codifica_cupom;
        spCupom.close;
        spCupom.ParamByName('codigo').asstring := sCod_Cupom;
        if vNumNFCe > 0 then
          spCupom.ParamByName('numero').asstring := IntToStr(vNumNFCe)
        else
          spCupom.ParamByName('numero').asstring := sNumero_Cupom;
        spCupom.ParamByName('ccf').asstring := sNumero_contador_cupom;
        spCupom.ParamByName('ECF').AsString := sECF_Serial;
        spCupom.ParamByName('data').asdate := dData_Sistema;
        spCupom.ParamByName('hora').AsTime := hHora_Cupom;
        spCupom.ParamByName('qtde_item').asinteger := iTotal_Itens;
        spCupom.ParamByName('valor_produto').asfloat := rTotal_Venda;
        spCupom.ParambyName('Valor_Desconto').asfloat := rTotal_Desconto;
        spCupom.ParambyName('Valor_Acrescimo').asfloat := rTotal_Acrescimo;
        spCupom.ParamByName('valor_total').asfloat := ed_total_pagar.Value;
        spCupom.ParamByName('valor_pago').asfloat := ed_totalizador.value;
        spCupom.ParamByName('valor_troco').asfloat := ed_troco.value;
        if sCli_codigo <> '' then
          spCupom.ParamByName('cod_cliente').asstring := sCli_codigo
        else
          spCupom.ParamByName('cod_cliente').Clear;

        spCupom.ParamByName('cancelado').asinteger := 0;
        spcupom.parambyname('cpf_consumidor').asstring := sConsumidor_CPF;
        spcupom.ParamByName('nome_consumidor').asstring := copy(sConsumidor_Nome, 1, 40);
        spcupom.ParamByName('cod_caixa').asinteger := iNumCaixa;
        spCupom.ParamByName('ecf_caixa').asstring := Copy(sECF_Caixa, 1, 3);
        spcupom.ParamByName('cod_vendedor').asinteger := icodigo_Usuario;
        spcupom.parambyname('contingencia').asstring := vcontingencia;
        spcupom.parambyname('gerado_nfce').asstring := vgerado_nfce;
        spCupom.Prepare;
        spCupom.Execute;

        // Excluir os arquivos temporarios
        frmModulo.spCupom_Temp_delete.prepare;
        frmModulo.spCupom_Temp_delete.execute;


        if bLanca_pre_venda then
        begin
          // atualizar situacao da pre-venda para 2 = concluida
          frmModulo.query_servidor.close;
          frmModulo.query_servidor.sql.clear;
          frmModulo.query_servidor.sql.add('update c000074 set situacao = 2 where codigo = ''' +
            Zerar(inttostr(iPre_venda_codigo), 6) + '''');
          frmmodulo.query_servidor.ExecSQL;

          bLanca_pre_venda := false;
        end;
        if blanca_os then
        begin
          // atualizar a situacao da os para FECHADA
          frmModulo.query_servidor.close;
          frmModulo.query_servidor.sql.clear;
          frmModulo.query_servidor.sql.add('update c000051 set situacao = ''FECHADA'' where codigo = ''' +
            Zerar(inttostr(iOS_codigo), 6) + '''');
          frmmodulo.query_servidor.ExecSQL;
          bLanca_OS := false;
        end;

        if bLanca_mesa or bLanca_Comanda then
        begin
          // excluir a mesa e os itens
          frMmodulo.query_servidor.close;
          frmmodulo.query_servidor.sql.clear;
          frmmodulo.query_servidor.sql.add('delete from r000002 where cod_mesa =' + IntToStr(iMesa_codigo));
          frmmodulo.query_servidor.ExecSQL;

          frMmodulo.query_servidor.close;
          frmmodulo.query_servidor.sql.clear;
          frmmodulo.query_servidor.sql.add('delete from r000001 where codigo =' + IntToStr(imesa_codigo));
          frmmodulo.query_servidor.ExecSQL;
          // inserir a liberacao da mesa para nao aparecer no sistema de frente
          try
            frMmodulo.query_servidor.close;
            frmmodulo.query_servidor.sql.clear;
            frmmodulo.query_servidor.sql.add('insert into r000003 (mesa) values (' + IntToStr(imesa_codigo) + ')');
            frmmodulo.query_servidor.ExecSQL;
          except
          end;

        end;

        // lancamento dos items do cupom no banco de dados
        for i := 0 to grid.RowCount - 1 do
        begin
          // situacoes
          // 1 - Venda do Item
          // 3 - Cancelamento do Item
          // 4 - Desconto no Item
          // 5 - Acrescimo no Item

          if grid.Cell[1, i].asinteger = 1 then
          begin
            spCupom_Item.close;
            spCupom_Item.ParamByName('codigo').AsString := codifica_item(grid.Cell[2, i].asinteger);
            spCupom_Item.parambyname('cod_cupom').asstring := sCod_Cupom;
            spCupom_Item.parambyname('item').asinteger := grid.cell[2, i].asinteger;
            spCupom_Item.ParamByName('cod_produto').asinteger := grid.cell[3, i].asinteger;
            spCupom_Item.parambyname('unidade').asstring := grid.cell[12, i].asstring;
            spCupom_Item.parambyname('qtde').asfloat := grid.cell[5, i].asfloat;
            spCupom_Item.parambyname('valor_unitario').asfloat := grid.cell[6, i].asfloat;
            spCupom_Item.parambyname('valor_subtotal').asfloat := grid.cell[5, i].asfloat *
              grid.cell[6, i].asfloat;
            spCupom_Item.parambyname('valor_desconto').asfloat := grid.cell[7, i].asfloat;
            spCupom_Item.parambyname('valor_acrescimo').asfloat := grid.cell[8, i].asfloat;
            spCupom_Item.parambyname('valor_total').asfloat := grid.cell[9, i].asfloat;
            spCupom_Item.parambyname('cst').asstring := grid.cell[11, i].asstring;
            spCupom_Item.parambyname('aliquota').asfloat := grid.cell[10, i].asfloat;
            spCupom_Item.parambyname('cancelado').asinteger := grid.cell[13, i].asinteger;
            spCupom_Item.parambyname('tamanho').AsString := grid.cell[14, i].AsString;
            spCupom_Item.parambyname('cor').AsString := grid.cell[15, i].AsString;

            if (grid.cell[11, i].asstring = '060') or
              (grid.cell[11, i].asstring = '010') or
              (grid.cell[11, i].asstring = '070') then
              spCupom_item.ParamByName('cod_totalizador').asstring := 'F1'
            else
              if (grid.cell[11, i].asstring = '040') or
                (grid.cell[11, i].asstring = '030') then
                spCupom_item.ParamByName('cod_totalizador').asstring := 'I1'
              else
                if (grid.cell[11, i].asstring = '041') or
                  (grid.cell[11, i].asstring = '050') or
                  (grid.cell[11, i].asstring = '051') or
                  (grid.cell[11, i].asstring = '090') then
                  spCupom_item.ParamByName('cod_totalizador').asstring := 'N1'
                else
                  if (grid.cell[11, i].asstring = 'ISS') then
                    spCupom_item.ParamByName('cod_totalizador').asstring := '01S' +
                      Retorna_aliquota(grid.cell[11, i].asstring, grid.cell[10, i].asfloat)
                  else
                    spCupom_item.ParamByName('cod_totalizador').asstring :=
                      retorna_codigo_aliquota(grid.cell[10, i].asfloat);


            spCupom_Item.Prepare;
            spCupom_Item.Execute;
          end;
        end;

        // lancamento das formas de pagamento
        if ed_forma1.Value > 0 then
        begin
          spCupom_Forma.close;
          spCupom_Forma.ParamByName('codigo').asstring := codifica_forma(1);
          spCupom_Forma.ParamByName('cod_cupom').asstring := sCod_Cupom;
          spCupom_Forma.ParamByName('forma').asstring := copy(cb_forma1.text, 1, 30);
          spCupom_Forma.ParamByName('valor').asfloat := ed_forma1.Value;
          spCupom_Forma.ParamByName('prestacao').asinteger := 1;

          if frmPrincipal.TipoImpressora = Fiscal then
            spCupom_Forma.ParamByName('tipo').asstring := 'CUPOM FISCAL'
          else
            spCupom_Forma.ParamByName('tipo').asstring := 'CUPOM NAO FISCAL';

          spCupom_Forma.Prepare;
          spCupom_Forma.Execute;
        end;
        if ed_forma2.Value > 0 then
        begin
          spCupom_Forma.close;
          spCupom_Forma.ParamByName('codigo').asstring := codifica_forma(2);
          spCupom_Forma.ParamByName('cod_cupom').asstring := sCod_Cupom;
          spCupom_Forma.ParamByName('forma').asstring := copy(cb_forma2.text, 1, 30);
          spCupom_Forma.ParamByName('valor').asfloat := ed_forma2.Value;
          spCupom_Forma.ParamByName('prestacao').asinteger := 2;

          if frmPrincipal.TipoImpressora = Fiscal then
            spCupom_Forma.ParamByName('tipo').asstring := 'CUPOM FISCAL'
          else
            spCupom_Forma.ParamByName('tipo').asstring := 'CUPOM NAO FISCAL';

          spCupom_Forma.Prepare;
          spCupom_Forma.Execute;
        end;
        if ed_forma3.Value > 0 then
        begin
          spCupom_Forma.close;
          spCupom_Forma.ParamByName('codigo').asstring := codifica_forma(3);
          spCupom_Forma.ParamByName('cod_cupom').asstring := sCod_Cupom;
          spCupom_Forma.ParamByName('forma').asstring := copy(cb_forma3.text, 1, 30);
          spCupom_Forma.ParamByName('valor').asfloat := ed_forma3.Value;
          spCupom_Forma.ParamByName('prestacao').asinteger := 3;

          if frmPrincipal.TipoImpressora = Fiscal then
            spCupom_Forma.ParamByName('tipo').asstring := 'CUPOM FISCAL'
          else
            spCupom_Forma.ParamByName('tipo').asstring := 'CUPOM NAO FISCAL';

          spCupom_Forma.Prepare;
          spCupom_Forma.Execute;
        end;

        // lancamento do crediario
        if (bCadastra_Crediario) and (rvalor_total_crediario > 0) then
        begin
          // rodar conforme a variavel icrediario_prestacao = qtde de prestacoes
          for i := 1 to iCrediario_prestacao do
          begin
            spCupom_Crediario.close;
            spCupom_Crediario.ParamByName('codigo').asstring := codifica_crediario(i);
            spCupom_Crediario.ParamByName('cod_cupom').asstring := scod_cupom;
            spCupom_Crediario.ParamByName('data').asdate := dData_Sistema;
            spCupom_Crediario.ParamByName('Hora').astime := Time;
            spCupom_Crediario.ParamByName('cod_cliente').asinteger := strtoint(sCli_codigo);
            spCupom_crediario.ParamByName('vencimento').asdatetime := IncMonth(dData_sistema, i);
            spCupom_Crediario.parambyname('valor').asfloat := rvalor_total_crediario /
              iCrediario_prestacao;
            spCupom_Crediario.ParamByName('descricao').asstring := copy(sCrediario_Nome, 1, 30);
            spCupom_Crediario.Prepare;
            spCupom_Crediario.Execute;
          end;
        end;
        // lancamento do comprovante do crediario
        if bLanca_comprovante_crediario then
        begin
          sNumero_Cupom := zerar(somenteNumero(scoo_crediario), 6);

          if sNumero_Cupom <> '000000' then
          begin
            spNao_Fiscal.close;
            spNao_Fiscal.parambyname('codigo').asstring := codifica_cupom;
            spNao_fiscal.ParamByName('ecf').asstring := sECF_Serial;
            spNao_fiscal.ParamByName('data').asdatetime := dData_Sistema;
            spNao_Fiscal.ParamByName('indice').AsString := sTotalizador_Crediario;
            spNao_Fiscal.ParamByName('descricao').AsString := sNome_Totalizador_Crediario;
            spNao_fiscal.ParamByName('valor').asfloat := rvalor_total_crediario;
            spNao_fiscal.ParamByName('hora').Astime := strtotime(copy(cECF_Data_Hora(iECF_Modelo), 12, 8));
            spNao_fiscal.ParamByName('COO').asstring := sCOO_crediario;
            spNao_fiscal.ParamByName('GNF').asstring := sGNF_Crediario;
            spNao_fiscal.ParamByName('CDC').Clear;
            spNao_fiscal.ParamByName('GRG').clear;
            spNao_fiscal.ParamByName('DENOMINACAO').asstring := 'CN';
            spnao_fiscal.Prepare;
            spNao_Fiscal.Execute;
          end;
        end;

        // lancamento do comprovante da prestacao

        if bLanca_Comprovante_Prestacao then
        begin
          sNumero_cupom := zerar(somenteNumero(sCOO_Prestacao), 6);

          if sNumero_Cupom <> '000000' then
          begin
            spNao_Fiscal.close;
            spNao_Fiscal.parambyname('codigo').asstring := codifica_cupom;
            spNao_fiscal.ParamByName('ecf').asstring := sECF_Serial;
            spNao_fiscal.ParamByName('data').asdatetime := dData_Sistema;
            spNao_fiscal.ParamByName('hora').Astime := strtotime(copy(cECF_Data_Hora(iECF_Modelo), 12, 8));
            spNao_fiscal.ParamByName('indice').asstring := 'RG';
            spNao_fiscal.ParamByName('Descricao').asstring := 'RELATÓRIO GERENCIAL';
            spNao_fiscal.ParamByName('valor').asfloat := 0;
            spNao_fiscal.ParamByName('COO').asstring := sCOO_Prestacao;
            spNao_fiscal.ParamByName('GNF').asstring := sGNF_prestacao;
            spNao_fiscal.ParamByName('GRG').asstring := sGRG_prestacao;
            spNao_fiscal.ParamByName('CDC').Clear;
            spNao_fiscal.ParamByName('DENOMINACAO').asstring := 'RG';
            spnao_fiscal.Prepare;
            spNao_Fiscal.Execute;
          end;
        end;

        // lancar os dados do comprador, mesmo sem cadastro ou a vista
        spCupom_consumidor.Close;
        spCupom_consumidor.parambyname('codigo').Asstring := sCod_Cupom;
        if sCli_codigo <> '' then
          spCupom_consumidor.parambyname('cod_cliente').Asinteger := strtoint(scli_codigo)
        else
          spCupom_consumidor.parambyname('cod_cliente').Clear;
        spCupom_consumidor.parambyname('nome').asstring := copy(sCli_Nome, 1, 80);
        spCupom_consumidor.parambyname('endereco').asstring := copy(sCli_Endereco, 1, 80);
        spCupom_consumidor.parambyname('cidade').asstring := copy(sCli_Cidade, 1, 50);
        spCupom_consumidor.parambyname('uf').asstring := copy(sCli_uf, 1, 2);
        spCupom_consumidor.parambyname('cep').asstring := copy(scli_cep, 1, 9);
        spCupom_consumidor.parambyname('cpf').asstring := copy(sCli_CPF, 1, 18);
        spCupom_consumidor.parambyname('placa').asstring := copy(sCli_Placa, 1, 10);
        spCupom_consumidor.parambyname('km').asstring := copy(sCli_Km, 1, 10);
        spCupom_consumidor.parambyname('vendedor').asstring := copy(scli_vendedor, 1, 50);
        spCupom_consumidor.Prepare;
        spCupom_consumidor.Execute;

      end;

      pn_fechamento.Visible := false;
      FRMVENDA.PopupMenu := pop_principal;
      pn_principal.Enabled := true;

      bVenda := false;
      if bBusca_foto_produto then
      begin
        img_produto.Picture := nil;
      end;
      if bBusca_foto_produto then
      begin
        img_borda.Visible := true;
        img_produto.Visible := true;
        img_fundo.visible := true;
      end;

      Limpa_controles;

      if ed_troco.value > 0 then
        Imprime_display('Pago: R$ ' + formatfloat('###,###,##0.00', ed_totalizador.value) + '            ' + 'Troco: R$ ' + formatfloat('###,###,##0.00', ed_troco.value), clwhite, tiPgto)
      else
        Imprime_display('             C A I X A    L I V R E', clWhite, tiLivre);

      TimerTroco.Enabled := true; // Apos 5 segundos

      MostraFotoProduto(false);
      MostraLogoMarca(true);

      if sRamo_Tipo = '3' then
      begin
        if iCodigo_abastecimento > 0 then
        begin
          timer_abastecimento.Enabled := false;
          query.close;
          query.sql.clear;
          query.sql.add('update posto_abastecimento set situacao = 1');
          query.SQL.add('where codigo = ' + inttostr(iCodigo_abastecimento));
          query.ExecSQL;

          grid_abastecimento.DeleteRow(ilinha_abastecimento);
          ilinha_abastecimento := 0;
          iCodigo_abastecimento := 0;
          timer_abastecimento.Enabled := true;
        end;
        PN_POSTO.Visible := true;
        grid_abastecimento.setfocus;
      end
      else
      begin

        if bLanca_Mesa then
          menu_mesaClick(frmvenda)
        else
          if bLanca_Comanda then
            Comandas1Click(frmvenda)
          else
            ED_BARRA.SETFOCUS;

      end;
    end;
  finally
    BlockInput(false);
    bt_confirmar_fechamento.Enabled := true;
  end;

  if bVenda then begin
    gravaINI(sConfiguracoes, 'PDV', 'Aberto', 'SIM');
  end else begin
    gravaINI(sConfiguracoes, 'PDV', 'Aberto', 'NAO');
    CorEditTotaL;
  end;

  {: ACIONAR GUILHOTINA}
  if frmprincipal.TipoImpressora = NaoFiscal then
    AcionarGuilhotinaNaoFiscal;
  vcontingencia := 'N';
  vgerado_nfce := 'N';
  vNumNFCe := 0;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_trocoChange(Sender: TObject);
begin
  if ed_troco.value > 0 then
    ed_troco.Font.color := clred
  else
    ed_troco.Font.color := CLWHITE;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_total_itemKeyPress(Sender: TObject; var Key: Char);

var
  rd: real;
begin
  if Key = #13 then
  begin
    // verificar se o codigo estah em branco
    if sProd_barra = '' then
    begin
      Imprime_display('ERRO! CÓDIGO EM BRANCO!', clred, tiErro);
      sleep(2000);
      exit;
    end;

    // VERIFICAR SE EXISTE ALGUM VALOR ZERADO OU NEGATIVO
    if (ed_unitario.value <= 0) or (ed_qtde.value <= 0) or
      (ed_total_item.value <= 0) then
    begin
      Imprime_display('TOTAL NÃO PODE SER ZERADO OU NEGATIVO!', clred, tiErro);
      sleep(2000);
      exit;
    end;

    ed_barra.text := '';

    // pegar o valor total e dividir pelo valor unitario para achar a qtde
    // modalidade utilizada em postos de combustiveis com bombas analogicas
    if bMuda_total then
    begin
      if bTruncar_valor then
      BEGIN
        rProd_qtde := Truncar_Valor(ed_total_item.value / ed_unitario.value);
        rProd_total := Truncar_Valor(rProd_qtde * ed_unitario.value);
      END
      else
      BEGIN
        rProd_qtde := ed_total_item.value / ed_unitario.value;
        rProd_total := rProd_qtde * ed_unitario.value;
      END;

      if rProd_total < ed_total_item.value then
      begin
        while formatfloat('########0.00', rProd_total) <>
          formatfloat('########0.00', ed_total_item.value) do
        begin

          rProd_qtde := rProd_qtde + 0.001;
          if bTruncar_valor then
          BEGIN
            rProd_total := Truncar_Valor(rProd_qtde * ed_unitario.value);
          END
          else
            rProd_total := rProd_qtde * ed_unitario.value;
        end;
      end
      else
      begin
        if rProd_total > ed_total_item.value then
        begin
          while formatfloat('########0.00', rProd_total) <>
            formatfloat('########0.00', ed_total_item.value) do
          begin
            rProd_qtde := rProd_qtde - 0.001;
            if bTruncar_valor then
            BEGIN
              rProd_total := Truncar_Valor(rProd_qtde * ed_unitario.value);
            END
            else
              rProd_total := rProd_qtde * ed_unitario.value;
          end;
        end;
      end;
      ed_qtde.value := rProd_qtde;
    end
    else
    begin
      rProd_qtde := ed_qtde.value;
      ed_unitario.value := ed_unitario.value;
      rProd_total := ed_total_item.value;
      // verificar seh eh para truncar o valor total
      if bTruncar_valor then
      begin
        rProd_total := Truncar_Valor(rProd_qtde * ed_unitario.value);
      end
      else
      begin
        if rProd_total = 0 then
          rProd_total := rProd_qtde * ed_unitario.value;
      end;
    end;

    // zerar as variaveis de acrescimo e desconto de retorno
    rprod_desconto := 0;
    rprod_acrescimo := 0;
    // verificar se o valo unitario é editável
    if bMuda_unitario then
    begin
      if formatfloat('##########0.00', rProd_preco) <>
        formatfloat('##########0.00', ed_unitario.value) then
      begin
        // verificar seh eh desconto ou acrescimo
        if rProd_preco < ed_unitario.value then
        begin
          // foi acrescimo
          rprod_acrescimo := ed_unitario.value - rProd_preco;
        end
        else
        begin
          // foi desconto
          rprod_desconto := rProd_preco - ed_unitario.value;

          if (isenha_desconto = 1) and (rprod_desconto > 0) then
          begin
            if rDesconto_maximo > 0 then
            begin
              rd := (rprod_desconto / rProd_preco) * 100;

              if rd > rDesconto_maximo then
              begin
                frmsenha_supervisor := tfrmsenha_supervisor.create(self);
                frmsenha_supervisor.showmodal;
                if not bSupervisor_autenticado then
                  exit;
              end;
            end
            else
            begin
              frmsenha_supervisor := tfrmsenha_supervisor.create(self);
              frmsenha_supervisor.showmodal;
              if not bSupervisor_autenticado then
                exit;
            end;
          end;
        end;
      end;
    end;
    // Registrar item no Grid
    Registra_Item;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_qtdeExit(Sender: TObject);
begin
  IF bTruncar_valor THEN
  BEGIN
    ed_total_item.value := Truncar_Valor(ed_unitario.value * ed_qtde.value);
  END
  ELSE
  BEGIN
    ed_total_item.value := ed_unitario.value * ed_qtde.value;

  END;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_qtdeEnter(Sender: TObject);
begin
  // Imprime_display('QUANTIDADE...',CLWHITE,tiInfo);
  // ativar os atalhos das funcoes OPCOES
  PopupMenu := pop_principal;
  // esconder o panel de cancelamento de item, caso esteja visivel
  if pn_cancelar_item.Visible then
  begin
    pn_cancelar_item.Visible := false;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_unitarioEnter(Sender: TObject);
begin
  // Imprime_display('VALOR UNITÁRIO...',CLWHITE,tiInfo);
  // ativar os atalhos das funcoes OPCOES
  PopupMenu := pop_principal;
  // esconder o panel de cancelamento de item, caso esteja visivel
  if pn_cancelar_item.Visible then
  begin
    pn_cancelar_item.Visible := false;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_total_itemEnter(Sender: TObject);
begin
  // Imprime_display('VALOR TOTAL...',CLWHITE,tiInfo);
  // ativar os atalhos das funcoes OPCOES
  PopupMenu := pop_principal;
  // esconder o panel de cancelamento de item, caso esteja visivel
  if pn_cancelar_item.Visible then
  begin
    pn_cancelar_item.Visible := false;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_senhaEnter(Sender: TObject);
begin
  if iteclado_modelo = 1 then
  begin
    LineFeed;
    CarRet;
  end;
  PopupMenu := nil;
  Imprime_display('SENHA/CARTÃO DE CANCELAMENTO...', clBackground, tiAlerta);
  // controlar a saida do edit de cancelamento de item
  bSair_campo := false;
  grid.Repaint;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_senhaExit(Sender: TObject);
begin
  // nao permitir a saida do campo clicando com o mouse em outro lugar
  // ou pressionando tab
  grid.Repaint;
  if not bSair_campo then
    ed_senha.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_senhaKeyPress(Sender: TObject; var Key: Char);
begin

  if Key = #13 then
  begin
    if iteclado_modelo = 1 then
    begin
      // frmModulo.teclado_display.ExibirLinha(2,'',TACBrDISAlinhamento( 2) ) ;
    end;

    if Executa_Login('DELPHOS', ed_senha.text, '') then
    begin
      bSair_campo := true;
      pn_senha_cancelar.Visible := false;
      if lb_cancelar.Caption = 'Cancelar Item' then
        Cancela_Item(ed_cancelar_item.text);
      if lb_cancelar.Caption = 'Cancelar Cupom' then
        if bVenda then
          Cancela_cupom_aberto
        else
          Cancela_cupom_fechado;
    end
    else
    begin
      Imprime_display('NÃO AUTORIZADO!', clred, tiErro);
      sleep(1500);
      Imprime_display_anterior;
      ed_senha.text := '';
    end;
  end
  else
  begin
    if Key = #27 then
    begin
      // aborta o cancelamento do item
      bSair_campo := true;
      pn_senha_cancelar.Visible := false;
      Imprime_display('INFORME O PRODUTO...', clBackground, tiLivre);
      pn_cancelar_item.Visible := false;
      ed_barra.setfocus;
    end
    else
    begin
      if iteclado_modelo = 1 then
      begin
        if Key = #8 then
          strpcopy(@men, Key)
        else
          strpcopy(@men, '*');
        DispStr(@men);
      end;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.timer_balancaTimer(Sender: TObject);
begin
  frmmodulo.Balancas.LePeso(ibal_time);
  Imprime_display('Peso: ' + formatfloat('###,###,##0.000', rBal_peso),
    clBackground, tiPeso);
  application.ProcessMessages;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.AcionaBalana1Click(Sender: TObject);
begin
  if frmmodulo.Balancas.Modelo <>  balNenhum then
 begin
    try
     frmmodulo.Balancas.ativar;
     frmmodulo.Balancas.Ativo := true;
    except
     frmmodulo.Balancas.LePeso(ibal_time);
    end;
     timer_balanca.Enabled := true;
  end
  ELSE
   ShowMessage('Balança não encontrada!');
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.cb_forma1Enter(Sender: TObject);
begin
  Imprime_display('Escolha a Forma de Pagamento...(F11 Retorna)',
    clBackground, tiPgto);
  if iteclado_modelo = 1 then
  begin
    strpcopy(@men, '----> ' +
      trimleft(trimright(tiraacento_display(cb_forma1.text))) +
      '                          ');
    DispStr(@men);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.cb_forma1Change(Sender: TObject);
begin
  if iteclado_modelo = 1 then
  begin
    CarRet;
    strpcopy(@men, '----> ' +
      trimleft(trimright(tiraacento_display(cb_forma1.text))) +
      '                          ');
    DispStr(@men);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.cb_forma2Enter(Sender: TObject);
begin
  Imprime_display('Escolha a 2a. Forma de Pgto...(F11 Retorna)',
    clBackground, tiPgto);
  if iteclado_modelo = 1 then
  begin
    strpcopy(@men, '----> ' +
      trimleft(trimright(tiraacento_display(cb_forma2.text))) +
      '                          ');
    DispStr(@men);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.cb_forma2Change(Sender: TObject);
begin
  if iteclado_modelo = 1 then
  begin
    CarRet;
    strpcopy(@men, '----> ' +
      trimleft(trimright(tiraacento_display(cb_forma2.text))) +
      '                          ');
    DispStr(@men);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.cb_forma3Change(Sender: TObject);
begin
  if iteclado_modelo = 1 then
  begin
    CarRet;
    strpcopy(@men, '----> ' +
      trimleft(trimright(tiraacento_display(cb_forma3.text))) +
      '                          ');
    DispStr(@men);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.cb_forma3Enter(Sender: TObject);
begin
  Imprime_display('Escolha a 3a. Forma de Pgto...(F11 Retorna)',
    clBackground, tiPgto);
  if iteclado_modelo = 1 then
  begin
    strpcopy(@men, '----> ' +
      trimleft(trimright(tiraacento_display(cb_forma3.text))) +
      '                          ');
    DispStr(@men);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_forma1KeyPress(Sender: TObject; var Key: Char);
begin
  if iteclado_modelo = 1 then
  begin
    if blimpa_edit_display then
    begin
      CarRet;
      strpcopy(@men, '                       ');
      DispStr(@men);
      CarRet;
      blimpa_edit_display := false;
    end;
    strpcopy(@men, Key);
    DispStr(@men);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_forma2KeyPress(Sender: TObject; var Key: Char);
begin
  if iteclado_modelo = 1 then
  begin
    strpcopy(@men, Key);
    DispStr(@men);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ConsultadeClientes1Click(Sender: TObject);
begin
  Imprime_display('Consulta Cliente', clBackground, tiCliente);
  frmCliente_consulta := tfrmCliente_consulta.create(self);
  frmCliente_consulta.showmodal;
  FreeAndNil(frmCliente_consulta);
  Imprime_display_anterior;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ConsultadePreos1Click(Sender: TObject);
begin
  Imprime_display('Consulta de Preço', clBackground, tiPgto);
  // abre a tela de consulta de preco
  frmpreco_consulta := tfrmpreco_consulta.create(self);
  frmpreco_consulta.showmodal;
  Imprime_display_anterior;
end;

procedure TfrmVenda.CorEditTotaL;
// Alteracao de cores PDV Fiscal ou Nao Fiscal
begin
  if frmPrincipal.TipoImpressora = SemImpressora then
    frmVenda.Color := clWhite
  else
    frmVenda.Color := $00646464;
end;


// -------------------------------------------------------------------------- //
procedure TfrmVenda.Opes1Click(Sender: TObject);
begin
  // mostrar o panel contendo a legenda dos comandos do menu OPCOES
  pop_principal.Popup(frmVenda.left + 60, frmVenda.top + 330);
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.PesquisadeProdutos1Click(Sender: TObject);
begin
  frmProduto_consulta := TfrmProduto_consulta.create(self);
  iPesquisa_produto := 0;
  frmProduto_consulta.showmodal;

  if iProd_codigo > 0 then
    ed_barra.text := inttostr(iProd_codigo);

end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.Cupons1Click(Sender: TObject);
begin
 
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.Cancelar1Click(Sender: TObject);
begin
  if bBusca_foto_produto then
  begin
    img_borda.Visible := true;
    // img_shape.Visible := true;
    img_produto.Visible := true;
    img_fundo.Visible := true;
  end;

  pn_fechamento.Visible := false;
//  img_fechamento.Visible := false;
  frmVenda.PopupMenu := pop_principal;
  pn_principal.Enabled := true;
  ed_barra.setfocus;
  if not bTotalizado then
    Imprime_display('INFORME O PRODUTO...', clBackground, tiLivre);

end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.bt_cancelar_fechamentoClick(Sender: TObject);
begin
  if bBusca_foto_produto then
  begin
    img_borda.Visible := true;
    // img_shape.Visible := true;
    img_produto.Visible := true;
    img_fundo.Visible := true;
  end;

  pn_fechamento.Visible := false;
//  img_fechamento.Visible := false;
  frmVenda.PopupMenu := pop_principal;
  pn_principal.Enabled := true;
  ed_barra.setfocus;
  if not bTotalizado then
    Imprime_display('INFORME O PRODUTO...', clBackground, tiLivre);
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.AcionaGaveta1Click(Sender: TObject);
begin
  try

    if frmPrincipal.GavetaImpressora = GavImpFiscal then
      cECF_Abre_Gaveta(iECF_Modelo)
    else if frmPrincipal.GavetaImpressora = GavImpNaoFiscal then
      AcionaGavetaNaoFiscal(sPortaGaveta);

  except
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.FecharCaixa1Click(Sender: TObject);
begin
  frmsenha_supervisor := tfrmsenha_supervisor.create(self);
  frmsenha_supervisor.showmodal;
  frmVenda.Imprime_display_anterior;

  if not bSupervisor_autenticado then
    exit;

  try
    pn_tampa.Visible := true;
    frmCaixa_Fechamento := tfrmcaixa_fechamento.create(self);
    frmCaixa_Fechamento.showmodal;
  finally
    pn_tampa.Visible := false;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.FormShow(Sender: TObject);
var
  i: Integer;
  sImgFundo: string;
  sCupomAbertoECF: string;
begin
  frmPrincipal.TipoImpressora := SemImpressora;
  CorEditTotaL;
  CentralizarPanel(pnFundo);
  sCupomAbertoECF := '';

  sImgFundo := ExtractFilePath(application.ExeName) + 'img\fundo_pdv.jpg';

  if FileExists(sImgFundo) then
    imgFundo.Picture.LoadFromFile(sImgFundo);

  bIdentificarVendedor := LerParametro('INFORMAR_VENDEDOR_CHECKOUT',
    'B', false);
  iColunaCOnsultaProdutos := LerParametro('COLUNA_CONSULTA_PRODUTOS', 'I', 0);

  timer_cargaTimer(frmVenda);

  // caso haja cupom nao fiscal aberto ou gerencial fazer o fechamento
  if frmPrincipal.TipoImpressora = Fiscal then
  begin
    cECF_Fecha_Gerencial(iECF_Modelo);
    cECF_Fecha_CNFV(iECF_Modelo);
    bLanca_pre_venda := false;
    bLanca_OS := false;
  end;

  grid.ClearRows;

  frmMsg_Operador.lb_msg.Caption :=
    'Aguarde! Verificando status do Cupom Fiscal...';
  frmMsg_Operador.Show;
  frmMsg_Operador.Refresh;
  application.ProcessMessages;

  if not bCaixa_aberto then
  begin
    frmcaixa_abertura := tfrmcaixa_abertura.create(self);
    frmcaixa_abertura.showmodal;

    if not bCaixa_aberto then
    begin
      application.messagebox(pwidechar('As funções de venda serão bloqueadas!'),
        'Atenção', mb_ok + MB_ICONWARNING);

    end;
  end;

  // verificar se existem cupons abertos e fazer o tratamento //**
  if (frmPrincipal.TipoImpressora = Fiscal) then
    sCupomAbertoECF := cECF_Cupom_Fiscal_Aberto(iECF_Modelo)
  else
    sCupomAbertoECF := LerINi(sConfiguracoes, 'PDV', 'Aberto', 'NAO');

  if (sCupomAbertoECF = 'SIM') or (bcupom_aberto) then
  begin
    frmMsg_Operador.lb_msg.Caption :=
      'Aguarde! Recuperando dados do cupom em aberto...';
    frmMsg_Operador.Show;
    frmMsg_Operador.Refresh;
    application.ProcessMessages;

    query.close;
    query.sql.clear;
    query.sql.add('select * from cupom_temp');
    query.Open;

    if query.recordcount > 0 then
    begin
      sNumero_Cupom := query.fieldbyname('numero').asstring;
      sNumero_Venda := query.fieldbyname('NUMERO').asstring;
      hHora_Cupom := query.fieldbyname('hora').AsDateTime;
      sNumero_contador_cupom := query.fieldbyname('ccf').asstring;

      // alimentar as variaveis de status
      bVenda := true;

      if query.fieldbyname('totalizado').asinteger = 0 then
        bTotalizado := false
      else
        bTotalizado := true;
      if query.fieldbyname('pago1').asinteger = 0 then
        bPago1 := false
      else
        bPago1 := true;

      if query.fieldbyname('pago2').asinteger = 0 then
        bPago2 := false
      else
        bPago2 := true;
      if query.fieldbyname('pago3').asinteger = 0 then
        bPago3 := false
      else
        bPago3 := true;
      if query.fieldbyname('finalizado').asinteger = 0 then
        bFinalizado := false
      else
        bFinalizado := true;
      // alimentar as variaveis de totais
      rTotal_Venda := 0;
      iTotal_Itens := 0;
      lb_item.Caption := '000';
      lb_total.Caption := 'R$ 0,00';
      iItem := 1;
      // imprimir no grid o cabechalho do cupom
      grid_topo.ClearRows;
      grid_topo.AddRow(1);
      grid_topo.Cell[0, grid_topo.LastAddedRow].asstring :=
        datetostr(dData_Sistema) + '  ' + TimeToStr(hHora_Cupom) +
        '                         COO: ' + Zerar(sNumero_Cupom, 6);
      grid_topo.AddRow(1);
      grid_topo.Cell[0, grid_topo.LastAddedRow].asstring :=
        '--------------------------------------------------------';
      grid_topo.AddRow(1);
      grid_topo.Cell[0, grid_topo.LastAddedRow].asstring :=
        '<B><FONT size="12">             CUPOM FISCAL</FONT></B>';
      grid_topo.AddRow(1);
      grid_topo.Cell[0, grid_topo.LastAddedRow].asstring :=
        'ITEM CÓDIGO DESCRIÇÃO            QTDE.   PREÇO    TOTAL';
      grid_topo.AddRow(1);
      grid_topo.Cell[0, grid_topo.LastAddedRow].asstring :=
        '--------------------------------------------------------';
      // limpar o grid dos itens
      grid.ClearRows;

      if bBusca_foto_produto then
      begin
        // img_shape.Visible := true;
        img_produto.Picture := nil;
      end;


      // alimentar o grid...

      query.close;
      query.sql.clear;
      query.sql.add('select item.*, prod.nome produto');
      query.sql.add('from cupom_item_temp item, estoque prod');
      query.sql.add('where item.cod_produto = prod.codigo');
      query.sql.add('order by item.item');
      query.Open;

      query.First;
      while not query.Eof do
      begin
        if query.fieldbyname('cancelado').asinteger = 0 then
        begin
          // Registrar item no Grid
          grid.AddRow(1);
          grid.Cell[0, grid.LastAddedRow].asstring :=
            Zerar(query.fieldbyname('item').asstring, 4) + ' ' +
            Zerar(query.fieldbyname('cod_produto').asstring, 6) + ' ' +
            texto_justifica(query.fieldbyname('produto').asstring, 15, ' ',
            taEsquerda) + ' ' + texto_justifica(query.fieldbyname('unidade')
            .asstring, 2, ' ', taEsquerda) +
            texto_justifica(formatfloat('###,###,##0.000',
            query.fieldbyname('qtde').asfloat), 9, ' ', taDireita) +
            texto_justifica(formatfloat('###,###,##0.00',
            query.fieldbyname('valor_unitario').asfloat), 8, ' ', taDireita) +
            texto_justifica(formatfloat('###,###,##0.00',
            query.fieldbyname('valor_total').asfloat), 8, ' ', taDireita);

          // alimentar os campos invisiveis do grid com as informacoes do produto
          grid.Cell[1, grid.LastAddedRow].asinteger := 1; // venda de item
          grid.Cell[2, grid.LastAddedRow].asstring :=
            Zerar(inttostr(query.fieldbyname('item').asinteger), 3);
          grid.Cell[3, grid.LastAddedRow].asinteger :=
            query.fieldbyname('cod_produto').asinteger;
          grid.Cell[4, grid.LastAddedRow].asstring :=
            query.fieldbyname('produto').asstring;
          grid.Cell[5, grid.LastAddedRow].asfloat :=
            query.fieldbyname('qtde').asfloat;
          grid.Cell[6, grid.LastAddedRow].asfloat :=
            query.fieldbyname('valor_unitario').asfloat;
          grid.Cell[7, grid.LastAddedRow].asfloat :=
            query.fieldbyname('valor_desconto').asfloat;
          grid.Cell[8, grid.LastAddedRow].asfloat :=
            query.fieldbyname('valor_acrescimo').asfloat;
          grid.Cell[9, grid.LastAddedRow].asfloat :=
            query.fieldbyname('valor_total').asfloat;
          grid.Cell[10, grid.LastAddedRow].asfloat :=
            query.fieldbyname('aliquota').asfloat;
          grid.Cell[11, grid.LastAddedRow].asstring :=
            query.fieldbyname('cst').asstring;
          grid.Cell[12, grid.LastAddedRow].asstring :=
            query.fieldbyname('unidade').asstring;
          grid.Cell[13, grid.LastAddedRow].asinteger := 0;
          // registrar o desconto e acrescimo em outra linha
          if query.fieldbyname('valor_desconto').asfloat > 0 then
          begin
            grid.AddRow(1);
            grid.Cell[0, grid.LastAddedRow].asstring :=
              '<i><FONT color="#FF0000">            ' + 'Desconto em R$ ' +
              '          ' + texto_justifica(formatfloat('###,###,##0.00',
              -query.fieldbyname('valor_desconto').asfloat), 9, ' ', taDireita)
              + '</i></FONT>';
            grid.Cell[1, grid.LastAddedRow].asinteger := 4; // desconto
          end;
          if query.fieldbyname('valor_acrescimo').asfloat > 0 then
          begin
            grid.AddRow(1);
            grid.Cell[0, grid.LastAddedRow].asstring :=
              '<i><FONT color="#0000FF">            ' + 'Acréscimo em R$' +
              '          ' + texto_justifica(formatfloat('###,###,##0.00',
              query.fieldbyname('valor_acrescimo').asfloat), 9, ' ', taDireita)
              + '</i></FONT>';
            grid.Cell[1, grid.LastAddedRow].asinteger := 5; // acrescimo
          end;
          // acumluar o item nas variaveis de totalizacao
          rTotal_Venda := rTotal_Venda + query.fieldbyname
            ('valor_total').asfloat;
          Inc(iTotal_Itens);
          Inc(iItem);

        end
        else
        begin
          // I T E M   C A N C E L A D O

          // diminui os totalizadores
          Dec(iTotal_Itens);
          rTotal_Venda := rTotal_Venda - query.fieldbyname
            ('valor_total').asfloat;

          // Registrar item no Grid
          grid.AddRow(1);
          grid.Cell[0, grid.LastAddedRow].asstring :=
            '<FONT color="#FF0000">Cancelamento do Item ' +
            Zerar(query.fieldbyname('item').asstring, 4) + '  ' +
            texto_justifica(formatfloat('###,###,##0.000',
            -query.fieldbyname('qtde').asfloat), 10, ' ', taDireita) +
            texto_justifica(formatfloat('###,###,##0.00',
            query.fieldbyname('valor_unitario').asfloat), 9, ' ', taDireita) +
            texto_justifica(formatfloat('###,###,##0.00',
            -query.fieldbyname('valor_total').asfloat), 9, ' ', taDireita) +
            '</FONT>';

          // alimentar os campos invisiveis do grid com as informacoes do produto

          grid.Cell[1, grid.LastAddedRow].asinteger := 3;
          // cancelamento do item
          grid.Cell[2, grid.LastAddedRow].asstring :=
            Zerar(inttostr(query.fieldbyname('item').asinteger), 3);
          grid.Cell[3, grid.LastAddedRow].asinteger :=
            query.fieldbyname('cod_produto').asinteger;
          grid.Cell[4, grid.LastAddedRow].asstring :=
            query.fieldbyname('produto').asstring;
          grid.Cell[5, grid.LastAddedRow].asfloat :=
            query.fieldbyname('qtde').asfloat;
          grid.Cell[6, grid.LastAddedRow].asfloat :=
            query.fieldbyname('valor_unitario').asfloat;
          grid.Cell[7, grid.LastAddedRow].asfloat :=
            query.fieldbyname('valor_desconto').asfloat;
          grid.Cell[8, grid.LastAddedRow].asfloat :=
            query.fieldbyname('valor_acrescimo').asfloat;
          grid.Cell[9, grid.LastAddedRow].asfloat :=
            query.fieldbyname('valor_total').asfloat;
          grid.Cell[10, grid.LastAddedRow].asfloat :=
            query.fieldbyname('aliquota').asfloat;
          grid.Cell[11, grid.LastAddedRow].asstring :=
            query.fieldbyname('cst').asstring;
          grid.Cell[12, grid.LastAddedRow].asstring :=
            query.fieldbyname('unidade').asstring;
          grid.Cell[13, grid.LastAddedRow].asinteger := 1;

        end;
        query.Next;
      end;
      // atualizar os labels de totais e itens
      lb_item.Caption := inttostr(iTotal_Itens);
      lb_total.Caption := 'R$ ' + formatfloat('###,###,##0.00', rTotal_Venda);

      frmMsg_Operador.hide;

      query.close;
      query.sql.clear;
      query.sql.add('select * from cupom_temp');
      query.Open;

      if application.messagebox
        (pwidechar('Existe um cupom que não foi finalizado!' + #13 + 'Número: '
        + query.fieldbyname('numero').asstring + #13 + 'Data: ' +
        query.fieldbyname('data').asstring + #13 + 'Hora: ' +
        query.fieldbyname('hora').asstring + #13 +
        'Deseja prosseguir com o seu fechamento?'), 'Atenção',
        mb_yesno + MB_ICONWARNING) = idyes then
      begin
        // prosseguir com a edicao do cupom
        ed_barra.setfocus;
      end
      else
      begin
        // cancelar cupom
        Cancela_cupom_aberto;
      end;
    end // if query.RecordCount > 0 then
    else
    begin
      if (frmPrincipal.TipoImpressora = Fiscal) then
      begin
        sNumero_Cupom := cECF_Numero_Cupom(EPSON);
        sNumero_contador_cupom := cECF_Numero_Contador_Cupom(EPSON);
      end
      else
      begin
        sNumero_Cupom := Zerar(FloatToStr(Max('')), 5);
        sNumero_contador_cupom := Zerar(sNumero_Cupom, 5);
      end;

      // GUIO: Caso não tenha itens, simplesmente cancela
      application.messagebox(pwidechar('Existe um cupom que não foi finalizado!'
        + #13 + 'Número: ' + sNumero_Cupom + #13 +
        'O cupom será cancelado automaticamente!'), 'Atenção',
        mb_ok + MB_ICONWARNING);

      Cancela_cupom_aberto;
    end;

  end // final da verificacao do cupom aberto no comando da ecf
  else // NORMAL
    frmMsg_Operador.hide;

  frmMsg_Operador.hide;
  if sRamo_Tipo = '1' then
  begin
    // Menu_os.Enabled := false;
    // Menu_os.Visible := false;
    PN_POSTO.Visible := false;
    ed_barra.setfocus;
  end
  else // AUTO PECAS
    if sRamo_Tipo = '2' then
    begin
      // Menu_os.Enabled := true;
      // Menu_os.Visible := true;
      PN_POSTO.Visible := false;
      ed_barra.setfocus;
    end
    else // POSTO
      if sRamo_Tipo = '3' then
      begin
        bCadastra_Placa := true;

        // Menu_os.Enabled := false;
        // Menu_os.Visible := false;

        PN_POSTO.Visible := true;
        PN_POSTO.top := 103;
        PN_POSTO.left := 27;

        query.close;
        query.sql.clear;
        query.sql.add('select * from posto_config');
        query.Open;

        // Abrir a porta

        sh_status_conexao.Brush.color := clred;
        bPosto_ok := false;
        repeat
          // comport1.Port:='COM' + inttostr(query.fieldbyname('porta').asinteger);
          try
            // comport1.open;

            sh_status_conexao.Brush.color := clLime;
            bPosto_ok := true;
            lb_status_conexao.Caption := 'Concentrador ' +
              query.fieldbyname('concentrador').asstring + ' conectado na COM' +
              query.fieldbyname('PORTA').asstring;

            // alimentação do grid dos BICOS
            query.close;
            query.sql.clear;
            query.sql.add('select * from posto_bico order by bomba, bico');
            query.Open;
            query.First;

            grid_bico.ClearRows;
            grid_abastecimento.ClearRows;

            while not query.Eof do
            begin
              i := grid_bico.AddRow(1);
              grid_bico.Cell[0, i].asstring :=
                query.fieldbyname('tanque').asstring;
              grid_bico.Cell[1, i].asstring :=
                query.fieldbyname('bomba').asstring;
              grid_bico.Cell[2, i].asstring :=
                query.fieldbyname('bico').asstring;
              // COLOQUEI PARA PEGAR A MASCARA DA BOMBA E DO BICO
              // grid_bico.Cell[1,i].AsString := query.fieldbyname('bomba').asstring;
              // grid_bico.Cell[2,i].asstring := query.fieldbyname('bico').asstring;

              grid_bico.Cell[3, i].asstring := 'PRONTA';
              grid_bico.Cell[4, i].asinteger := query.fieldbyname('codigo')
                .asinteger;
              grid_bico.Cell[5, i].asinteger := query.fieldbyname('posicao')
                .asinteger;

              // fazer o lancamento do encerrante inicial no dia
              query3.close;
              query3.sql.clear;
              query3.sql.add('select * from posto_bico_movimento');
              query3.sql.add
                ('where data = (select max(data) from posto_bico_movimento)');
              query3.sql.add('and cod_bico = ' + query.fieldbyname('codigo')
                .asstring);
              query3.Open;
              if query3.recordcount > 0 then
              begin
                if query3.fieldbyname('data').AsDateTime <> dData_Sistema then
                begin
                  query2.close;
                  query2.sql.clear;
                  query2.sql.add('insert into posto_bico_movimento');
                  query2.sql.add('(cod_bico,EI,EF,VOLUME,DATA)');
                  query2.sql.add('values');
                  query2.sql.add('(:cod_bico,:EI,:EF,:VOLUME,:DATA)');
                  query2.ParamByName('cod_bico').asinteger :=
                    query3.fieldbyname('cod_bico').asinteger;
                  query2.ParamByName('EI').asfloat :=
                    query3.fieldbyname('EF').asfloat;
                  query2.ParamByName('EF').asfloat :=
                    query3.fieldbyname('EF').asfloat;
                  query2.ParamByName('volume').asfloat := 0;
                  query2.ParamByName('data').AsDateTime := dData_Sistema;
                  query2.ExecSQL;
                end;
              end
              else
              begin
                query2.close;
                query2.sql.clear;
                query2.sql.add('insert into posto_bico_movimento');
                query2.sql.add('(cod_bico,EI,EF,VOLUME,DATA)');
                query2.sql.add('values');
                query2.sql.add('(:cod_bico,:EI,:EF,:VOLUME,:DATA)');
                query2.ParamByName('cod_bico').asinteger :=
                  query.fieldbyname('codigo').asinteger;
                query2.ParamByName('EI').asfloat := 0;
                query2.ParamByName('EF').asfloat := 0;
                query2.ParamByName('volume').asfloat := 0;
                query2.ParamByName('data').AsDateTime := dData_Sistema;
                query2.ExecSQL;
              end;
              query.Next;
            end;
            iQtde_bico := query.recordcount;

            qrAbastecimento.close;
            qrAbastecimento.sql.clear;
            qrAbastecimento.sql.add
              ('select posto_abastecimento.*, estoque.nome produto');
            qrAbastecimento.sql.add('from posto_abastecimento, estoque');
            qrAbastecimento.sql.add
              ('where posto_abastecimento.cod_produto = estoque.codigo');
            qrAbastecimento.sql.add('and posto_abastecimento.situacao = 0');
            qrAbastecimento.sql.add('order by posto_abastecimento.codigo');
            qrAbastecimento.Open;
            qrAbastecimento.First;
            while not qrAbastecimento.Eof do
            begin
              i := grid_abastecimento.AddRow(1);
              // data
              grid_abastecimento.Cell[0, i].asstring :=
                qrAbastecimento.fieldbyname('data').asstring;
              // hora
              grid_abastecimento.Cell[1, i].asstring :=
                qrAbastecimento.fieldbyname('hora').asstring;
              // bomba
              grid_abastecimento.Cell[2, i].asstring :=
                qrAbastecimento.fieldbyname('bomba').asstring;
              // bico
              grid_abastecimento.Cell[3, i].asstring :=
                qrAbastecimento.fieldbyname('bico').asstring;
              // produto
              grid_abastecimento.Cell[4, i].asstring :=
                qrAbastecimento.fieldbyname('produto').asstring;
              // Quantidade
              grid_abastecimento.Cell[5, i].asfloat :=
                qrAbastecimento.fieldbyname('qtde').asfloat;
              // preco unitario
              grid_abastecimento.Cell[6, i].asfloat :=
                qrAbastecimento.fieldbyname('unitario').asfloat;
              // total
              grid_abastecimento.Cell[7, i].asfloat :=
                qrAbastecimento.fieldbyname('total').asfloat;
              // encerrante inicial
              grid_abastecimento.Cell[8, i].asfloat :=
                qrAbastecimento.fieldbyname('ei').asfloat;
              // encerrante final
              grid_abastecimento.Cell[9, i].asfloat :=
                qrAbastecimento.fieldbyname('ef').asfloat;
              // codigo
              grid_abastecimento.Cell[10, i].asinteger :=
                qrAbastecimento.fieldbyname('codigo').asinteger;
              // tanque
              grid_abastecimento.Cell[11, i].asstring :=
                qrAbastecimento.fieldbyname('tanque').asstring;

              qrAbastecimento.Next;
            end;

            timer_bico.Enabled := true;
            timer_abastecimento.Enabled := true;
            grid_abastecimento.setfocus;
            if grid_abastecimento.RowCount > 0 then
              grid_abastecimento.SelectedRow := 0;

          except
            if application.messagebox
              (pwidechar('Erro na Conexão! Concentrador ' +
              query.fieldbyname('concentrador').asstring + ' - Porta COM' +
              query.fieldbyname('PORTA').asstring + '.' + #13 +
              'Deseja tentar outra vez?'), 'Erro', mb_yesno + MB_ICONERROR) = idno
            then
            begin
              Destroy;
              break;
            end;
          end;
        until bPosto_ok = true;

        grid_abastecimento.setfocus;
      end
      else
        // RESTAURANTES
        if sRamo_Tipo = '4' then
        begin
          // Menu_os.Enabled := false;
          // Menu_os.Visible := false;
          PN_POSTO.Visible := false;
          ed_barra.setfocus;
        end;

end;

procedure TfrmVenda.GerarNFCe(NumNFe: String);
var
  i, nItem: Integer;
  total_desconto, total_produtos, total_icms, total_base, total_trib, PTroco: real;
begin
  try
    with frmmodulo do
    begin
      qrfilial.Open;
      with ACBRNFCe.NotasFiscais.add.NFe do
      begin
        Ide.cNF := strtoint(NumNFe);
        Ide.natOp := 'VENDA AO CONSUMIDOR FINAL';

        if tipo_pgto = 1 then
          Ide.indPag := ipPrazo
        else
          Ide.indPag := ipVista;

        Ide.Modelo := 65;
        //DARLON SANTOS
        Ide.Serie := StrToInt(edtSerie);
        Ide.nNF := strtoint(NumNFe);
        Ide.dEmi := Now;
        Ide.dSaiEnt := Now;
        Ide.hSaiEnt := Now;
        if frmModulo.ACBRNFCe.Configuracoes.Geral.FormaEmissao = frmtOffLine then begin
          Ide.dhCont  := Now;
          Ide.xJust := MotivoContigencia;
        end;
        Ide.tpNF := tnSaida;
        Ide.tpEmis := frmModulo.ACBRNFCe.Configuracoes.Geral.FormaEmissao;
        Ide.tpAmb := ACBRNFCe.Configuracoes.WebServices.Ambiente;
        Ide.cUF := UFtoCUF(edtEmitUF);
        Ide.cMunFG := strtoint(edtEmitCodCidade);
        Ide.finNFe := fnNormal;
        Ide.tpImp := tiNFCe;
        Ide.indFinal := cfConsumidorFinal;
        Ide.indPres := pcPresencial;
        ACBRNFCe.Configuracoes.Geral.ModeloDF := moNFCe;
        ACBRNFCe.Configuracoes.Geral.VersaoDF := ve310;

        Ide.verProc := '1.0';
        Emit.CNPJCPF := edtEmitCNPJ;
        Emit.IE := edtEmitIE;
        Emit.xNome := edtEmitRazao;
        Emit.xFant := edtEmitFantasia;

        Emit.EnderEmit.fone := edtEmitFone;
        Emit.EnderEmit.CEP := strtoint(edtEmitCEP);
        Emit.EnderEmit.xLgr := edtEmitLogradouro;
        Emit.EnderEmit.nro := edtEmitNumero;
        Emit.EnderEmit.xCpl := edtEmitComp;
        Emit.EnderEmit.xBairro := edtEmitBairro;
        Emit.EnderEmit.cMun := strtoint(edtEmitCodCidade);
        Emit.EnderEmit.xMun := edtEmitCidade;
        Emit.EnderEmit.UF := edtEmitUF;
        Emit.EnderEmit.cPais := 1058;
        Emit.EnderEmit.xPais := 'BRASIL';
        Emit.IEST := '';

        // regime tributario da empresa
        // (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)
        if qrfilial.fieldbyname('CRT').asinteger = 1 then
          Emit.CRT := crtSimplesNacional
        else if qrfilial.fieldbyname('CRT').asinteger = 2 then
          Emit.CRT := crtSimplesExcessoReceita
        else
          Emit.CRT := crtRegimeNormal;


        Dest.CNPJCPF := OnlyNumber(sConsumidor_CPF);
        Dest.ISUF := '';
        Dest.xNome := sConsumidor_Nome;
        Dest.indIEDest := inNaoContribuinte;
        Dest.EnderDest.fone := '';
        if scli_cep <> '' then
          Dest.EnderDest.CEP := strtoint(OnlyNumber(scli_cep))
        else
          Dest.EnderDest.CEP := 0;

        Dest.EnderDest.xLgr := '';
        Dest.EnderDest.nro := '';
        Dest.EnderDest.xCpl := '';
        Dest.EnderDest.xBairro := '';
        Dest.EnderDest.cMun := 0; // analisar funcao
        Dest.EnderDest.xMun := sCli_Cidade;
        Dest.EnderDest.UF := sCli_uf;
        Dest.EnderDest.cPais := 1058;
        Dest.EnderDest.xPais := 'BRASIL';

        // Adicionando Produtos
        nItem := 1;
        total_produtos := 0;
        total_icms := 0;
        total_base := 0;
        total_trib := 0;
        total_desconto := 0;

        for i := 0 to grid.RowCount - 1 do
        begin
          // prepar query
          qrProdNCFE.close;
          qrProdNCFE.sql.clear;
          qrProdNCFE.sql.add
            ('select CODIGO, NOME,COD_BARRA,NCM,CST,ALIQNACIONAL,CFOP from ESTOQUE ');
          qrProdNCFE.sql.add('where CODIGO = :pcodigo');
          qrProdNCFE.ParamByName('pcodigo').asinteger :=
            grid.Cell[3, i].asinteger;
          qrProdNCFE.Open;

          if grid.Cell[1, i].asinteger = 1 then
          begin
            // if grid.Cell[13, grid.SelectedRow].asinteger <> 1 then
            with Det.add do
            begin
              Prod.nItem := nItem;
              nItem := nItem + 1;
              Prod.cProd := inttostr(grid.Cell[3, i].asinteger);
              Prod.uCom := grid.Cell[12, i].asstring;
              Prod.uTrib := grid.Cell[12, i].asstring;

              if length(qrProdNCFE.fieldbyname('COD_BARRA').asstring) < 13 then
              begin
                Prod.cEAN := '';
                Prod.cEANTrib := '';
              end
              ELSE
              begin
                Prod.cEAN := qrProdNCFE.fieldbyname('COD_BARRA').asstring;
                Prod.cEANTrib := qrProdNCFE.fieldbyname('COD_BARRA').asstring;
              end;

              Prod.xProd := qrProdNCFE.fieldbyname('NOME').asstring;
              Prod.NCM := somenteNumero(qrProdNCFE.fieldbyname('NCM').asstring);
              // Tabela NCM disponível em  http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm
              Prod.EXTIPI := '';
//              Prod.CFOP := '5101';//iCFOP;
              if trim(qrProdNCFE.fieldbyname('CFOP').AsString)  <> '' then
                Prod.CFOP := trim(qrProdNCFE.fieldbyname('CFOP').AsString)
              else
                Prod.CFOP := edtcfop;

              Prod.qCom := RoundTo(grid.Cell[5, i].asfloat,-2);
              Prod.qTrib := RoundTo(grid.Cell[5, i].asfloat,-2);
                Prod.vUnCom := RoundTo(grid.Cell[6, i].asfloat+grid.Cell[7, i].asfloat ,-2);
              Prod.vUnTrib := RoundTo(grid.Cell[6, i].asfloat+grid.Cell[7, i].asfloat ,-2);
              Prod.vProd := RoundTo(Prod.vUnCom * Prod.qCom,-2);
              Prod.vDesc := RoundTo(grid.Cell[7, i].asfloat,-2);
              if rTotal_Desconto > 0 then
                Prod.vDesc := RoundTo(Prod.vDesc + ((Prod.vProd/rTotal_Venda)*rTotal_Desconto),-2);


              // prepar query
              QRCSOSN.close;
              QRCSOSN.sql.clear;
              QRCSOSN.sql.add('select csosn, aliquota icms, cest from ESTOQUE ');
              QRCSOSN.sql.add('where codigo = :pcodigo');
              QRCSOSN.ParamByName('pcodigo').asstring :=
                IntToStrZero(grid.Cell[3, i].asinteger, 6);
              QRCSOSN.Open;


              if (trim(QRCSOSN.fieldbyname('cest').asstring) <> '') and (trim(QRCSOSN.fieldbyname('cest').asstring)<>'0') then
                Prod.CEST   := QRCSOSN.fieldbyname('cest').asstring;

              Prod.vOutro := 0;
              Prod.vFrete := 0;
              Prod.vSeg := 0;
              total_produtos := RoundTo(total_produtos + Prod.vProd,-2);
              total_desconto := RoundTo(total_desconto + Prod.vDesc,-2);
              with Imposto do
              begin
                vTotTrib := RoundTo((Prod.vProd * qrProdNCFE.fieldbyname('ALIQNACIONAL')
                  .AsFloat) / 100,-2);
                total_trib := total_trib + vTotTrib;
                // simples nacional
                if qrfilial.fieldbyname('CRT').asinteger < 3 then begin
                  with ICMS do begin
                    if (QRCSOSN.fieldbyname('csosn').asstring = '101') then
                      ICMS.CSOSN := csosn101
                    else if (QRCSOSN.fieldbyname('csosn').asstring = '102') then
                      ICMS.CSOSN := csosn102
                    else if (QRCSOSN.fieldbyname('csosn').asstring = '103') then
                      ICMS.CSOSN := csosn103
                    else if (QRCSOSN.fieldbyname('csosn').asstring = '300') then
                     ICMS.CSOSN := csosn300
                    else if (QRCSOSN.fieldbyname('csosn').asstring = '400') then
                      ICMS.CSOSN := csosn400
                    else if (QRCSOSN.fieldbyname('csosn').asstring = '201') then
                      ICMS.CSOSN := csosn201
                    else if (QRCSOSN.fieldbyname('csosn').asstring = '202') then
                      ICMS.CSOSN := csosn202
                    else if (QRCSOSN.fieldbyname('csosn').asstring = '500') then
                      ICMS.CSOSN := csosn500
                    else if (QRCSOSN.fieldbyname('csosn').asstring = '900') then
                      ICMS.CSOSN := csosn900;

                    case ICMS.CSOSN of
                      csosn101:begin
                        ICMS.orig    := oeNacional;
                        ICMS.pCredSN := 0.0; // Colocar o percentual do Crédito
                        ICMS.vCredICMSSN := 0.0; // Colocar o valor do Crédito
                      end;
                     csosn102:
                      begin
                        ICMS.orig    := oeNacional;
                      end;
                      csosn201:
                      begin
                        ICMS.orig    := oeNacional;
                        ICMS.modBCST := dbisMargemValorAgregado;
                        ICMS.pMVAST := 0;
                        ICMS.pRedBCST := 00.00;
                        ICMS.vBCST := 0;
                        ICMS.pICMSST := 00.00;
                        ICMS.vICMSST := 0;
                        ICMS.pCredSN := 0.0; // Colocar o percentual do Crédito
                        ICMS.vCredICMSSN := 0.0; // Colocar o valor do Crédito
                      end;
                      csosn202:
                      begin
                        ICMS.orig    := oeNacional;
                        ICMS.modBCST := dbisMargemValorAgregado;
                        ICMS.pMVAST := 0;
                        ICMS.pRedBCST := 00.00;
                        ICMS.vBCST := 0;
                        ICMS.pICMSST := 00.00;
                        ICMS.vICMSST := 0;
                      end;
                      csosn500:
                      begin
                        ICMS.orig    := oeNacional;
                        ICMS.vBCSTRet := 0;
                        ICMS.vICMSSTRet := 0;
                      end;
                      csosn900:
                      begin
                        ICMS.orig    := oeNacional;
                        ICMS.modBC := dbiValorOperacao;
                        ICMS.vBC := RoundTo(grid.Cell[9, i].asfloat,-2);
                        ICMS.pRedBC := 0;
                        ICMS.pICMS := RoundTo(QRCSOSN.FieldByName('icms').AsFloat,-2);
                        ICMS.vICMS := RoundTo((ICMS.vBC * ICMS.pICMS) / 100,-2);
                        ICMS.modBCST := dbisMargemValorAgregado;
                        ICMS.pMVAST := 0;
                        ICMS.pRedBCST := 00.00;
                        ICMS.vBCST := 0;
                        ICMS.pICMSST := 00.00;
                        ICMS.vICMSST := 0;
                        ICMS.pCredSN := 0.0; // Colocar o percentual do Crédito
                        ICMS.vCredICMSSN := 0.0; // Colocar o valor do Crédito
                      end;
                    end;
                    with ICMSUFDest do
                    begin
                      vBCUFDest      := 0.00;
                      pFCPUFDest     := 0.00;
                      pICMSUFDest    := 0.00;
                      pICMSInter     := 0.00;
                      pICMSInterPart := 0.00;
                      vFCPUFDest     := 0.00;
                      vICMSUFDest    := 0.00;
                      vICMSUFRemet   := 0.00;
                    end;
                  end;
                end else begin
                  with ICMS do begin
                    if (grid.Cell[11, i].asstring = '000') then
                      CST := cst00
                    else if (grid.Cell[11, i].asstring = '010') then
                      CST := cst10
                    else if (grid.Cell[11, i].asstring = '020') then
                      CST := cst20
                    else if (grid.Cell[11, i].asstring = '030') then
                      CST := cst30
                    else if (grid.Cell[11, i].asstring = '040') then
                      CST := cst40
                    else if (grid.Cell[11, i].asstring = '050') then
                      CST := cst50
                    else if (grid.Cell[11, i].asstring = '060') then
                      CST := cst60
                    else if (grid.Cell[11, i].asstring = '070') then
                      CST := cst70
                    else if (grid.Cell[11, i].asstring = '080') then
                      CST := cst80
                    else if (grid.Cell[11, i].asstring = '090') then
                      CST := cst90;
                    case ICMS.CST of
                      cst00:begin
                        ICMS.orig    := oeNacional;
                        ICMS.modBC := dbiValorOperacao;
                        ICMS.vBC := RoundTo(grid.Cell[9, i].asfloat,-2);;
                        ICMS.pICMS := RoundTo(grid.Cell[10, i].asfloat,-2);
                        ICMS.vICMS := RoundTo((ICMS.vBC * ICMS.pICMS) / 100,-2);
                        total_icms := total_icms + ICMS.vICMS;
                        total_base := total_base + ICMS.vBC;
                      end;
                      cst10:begin
                        ICMS.orig    := oeNacional;
                        ICMS.modBC := dbiValorOperacao;
                        ICMS.vBC := RoundTo(grid.Cell[9, i].asfloat,-2);;
                        ICMS.pICMS := RoundTo(grid.Cell[10, i].asfloat,-2);;
                        ICMS.vICMS := RoundTo((ICMS.vBC * ICMS.pICMS) / 100,-2);
                        ICMS.modBCST := dbisMargemValorAgregado;
                        ICMS.pMVAST := 0;
                        ICMS.pRedBCST := 00.00;
                        ICMS.vBCST := 0;
                        ICMS.pICMSST := 00.00;
                        ICMS.vICMSST := 0;
                        total_icms := total_icms + ICMS.vICMS;
                        total_base := total_base + ICMS.vBC;
                      end;
                      cst20:begin
                        ICMS.orig    := oeNacional;
                        ICMS.modBC := dbiValorOperacao;
                        ICMS.pRedBC := 0.00;
                        ICMS.vBC := RoundTo(grid.Cell[9, i].asfloat,-2);;
                        ICMS.pICMS := RoundTo(grid.Cell[10, i].asfloat,-2);;
                        ICMS.vICMS := RoundTo((ICMS.vBC * ICMS.pICMS) / 100,-2);
                        ICMS.vICMSDeson := 0.00;
                        //icms.motDesICMS :=
                        total_icms := total_icms + ICMS.vICMS;
                        total_base := total_base + ICMS.vBC;
                      end;
                      cst30:begin
                        ICMS.orig    := oeNacional;
                        ICMS.modBCST := dbisMargemValorAgregado;
                        ICMS.pMVAST := 0.00;
                        ICMS.pRedBCST := 0.00;
                        ICMS.vBCST := 0;
                        ICMS.pICMSST := 0;
                        ICMS.vICMSST := 0;
                        ICMS.vICMSDeson := 0.00;
                        //icms.motDesICMS :=
                      end;
                      cst40, cst41, cst50:begin
                        ICMS.orig    := oeNacional;
                        ICMS.vICMSDeson := 0.00;
                        //icms.motDesICMS :=
                      end;
                      cst51:begin
                        ICMS.orig    := oeNacional;
                        ICMS.modBC := dbiValorOperacao;
                        ICMS.pRedBC := 0.00;
                        ICMS.vBC := RoundTo(grid.Cell[9, i].asfloat,-2);;
                        ICMS.pICMS := RoundTo(grid.Cell[10, i].asfloat,-2);;
                        ICMS.vICMSOp := 0.00;
                        ICMS.pDif := 0.00;
                        ICMS.vICMSDif := 0.00;
                        ICMS.vICMS :=RoundTo((ICMS.vBC * ICMS.pICMS) / 100,-2);
                        total_icms := total_icms + ICMS.vICMS;
                        total_base := total_base + ICMS.vBC;
                      end;
                      cst60:begin
                        ICMS.orig    := oeNacional;
                        ICMS.vBCSTRet := 0.00;
                        ICMS.vICMSSTRet := 0.00;
                      end;
                      cst70:begin
                        ICMS.orig    := oeNacional;
                        ICMS.modBC := dbiValorOperacao;
                        ICMS.pRedBC := 0.00;
                        ICMS.vBC := RoundTo(grid.Cell[9, i].asfloat,-2);;
                        ICMS.pICMS := RoundTo(grid.Cell[10, i].asfloat,-2);;
                        ICMS.vICMS := RoundTo((ICMS.vBC * ICMS.pICMS) / 100,-2);
                        ICMS.modBCST := dbisMargemValorAgregado;
                        ICMS.pMVAST := 0.00;
                        ICMS.pRedBCST := 0.00;
                        ICMS.vBCST := 0.00;
                        ICMS.pICMSST := 0.00;
                        ICMS.vICMSST := 0.00;
                        ICMS.vICMSDeson := 0.00;
                        //ICMS.motDesICMS
                        total_icms := total_icms + ICMS.vICMS;
                        total_base := total_base + ICMS.vBC;
                      end;
                      cst90:begin
                        ICMS.orig    := oeNacional;
                        ICMS.modBC := dbiValorOperacao;
                        ICMS.vBC := RoundTo(grid.Cell[9, i].asfloat,-2);;
                        ICMS.pRedBC := 0.00;
                        ICMS.pICMS := RoundTo(grid.Cell[10, i].asfloat,-2);;
                        ICMS.vICMS := RoundTo((ICMS.vBC * ICMS.pICMS) / 100,-2);
                        ICMS.modBCST := dbisMargemValorAgregado;
                        ICMS.pMVAST := 0.00;
                        ICMS.pRedBCST := 0.00;
                        ICMS.vBCST := 0.00;
                        ICMS.pICMSST := 0.00;
                        ICMS.vICMSST := 0.00;
                        ICMS.vICMSDeson := 0.00;
                        //ICMS.motDesICMS
                        total_icms := total_icms + ICMS.vICMS;
                        total_base := total_base + ICMS.vBC;
                      end;
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;

        Total.ICMSTot.vBC := total_base;
        Total.ICMSTot.vICMS := total_icms;
        Total.ICMSTot.vBCST := 0;
        Total.ICMSTot.vST := 0;
        Total.ICMSTot.vProd := total_produtos;
        Total.ICMSTot.vFrete := 0;
        Total.ICMSTot.vSeg := 0;
        Total.ICMSTot.vDesc := RoundTo(total_desconto,-2);
        Total.ICMSTot.vII := 0;
        Total.ICMSTot.vIPI := 0;
        Total.ICMSTot.vPIS := 0;
        Total.ICMSTot.vCOFINS := 0;
        Total.ICMSTot.vOutro := 0;
        Total.ICMSTot.vNF := RoundTo(total_produtos-total_desconto,-2);

        // partilha do icms e fundo de pobreza
        Total.ICMSTot.vFCPUFDest   := 0.00;
        Total.ICMSTot.vICMSUFDest  := 0.00;
        Total.ICMSTot.vICMSUFRemet := 0.00;

        Total.ISSQNtot.vServ := 0;
        Total.ISSQNtot.vBC := 0;
        Total.ISSQNtot.vISS := 0;
        Total.ISSQNtot.vPIS := 0;
        Total.ISSQNtot.vCOFINS := 0;
        Total.ICMSTot.vTotTrib := total_trib;

        Transp.modFrete := mfSemFrete; // NFC-e não pode ter FRETE
        PTroco := 0;
        if ed_troco.Value > 0 then begin
          if ed_forma1.value > 0 then begin
            if ed_forma2.value > 0 then begin
              if ed_forma3.value > 0 then begin
                PTroco := (ed_troco.Value/3);
              end else begin
                PTroco := (ed_troco.Value/2);
              end;
            end else begin
              PTroco := ed_troco.Value;
            end;
          end;
        end;



        if ed_forma1.value > 0 then begin
          with pag.add do // PAGAMENTOS apenas para NFC-e
          begin
            if (AnsiUpperCase(cb_forma1.text) = AnsiUpperCase(lForma_pgto_Cheque_Avista)) or
               (AnsiUpperCase(cb_forma1.text) = AnsiUpperCase(lForma_pgto_Cheque_Avista)) then
              tPag := fpCheque;
            if (AnsiUpperCase(cb_forma1.text) = AnsiUpperCase(lForma_pgto_Crediario)) then
              tPag := fpCreditoLoja;
            if (AnsiUpperCase(cb_forma1.text) = AnsiUpperCase(lForma_pgto_Cartao_Debito)) then
              tPag := fpCartaoDebito;
            if (AnsiUpperCase(cb_forma1.text) = AnsiUpperCase(lForma_pgto_Cartao_Credito)) then
              tPag := fpCartaoCredito;
            if (AnsiUpperCase(cb_forma1.text) = AnsiUpperCase(lForma_pgto_dinheiro)) then
              tPag := fpDinheiro;
            if (AnsiUpperCase(cb_forma1.text) = AnsiUpperCase(lForma_pgto_Convenio)) then
              tPag := fpCreditoLoja;
            vPag := ed_forma1.value - PTroco;
          end;
        end;

        if ed_forma2.value > 0 then begin
          with pag.add do // PAGAMENTOS apenas para NFC-e
          begin
            if (AnsiUpperCase(cb_forma2.text) = AnsiUpperCase(lForma_pgto_Cheque_Avista)) or
               (AnsiUpperCase(cb_forma2.text) = AnsiUpperCase(lForma_pgto_Cheque_Avista)) then
              tPag := fpCheque;
            if (AnsiUpperCase(cb_forma2.text) = AnsiUpperCase(lForma_pgto_Crediario)) then
              tPag := fpCreditoLoja;
            if (AnsiUpperCase(cb_forma2.text) = AnsiUpperCase(lForma_pgto_Cartao_Debito)) then
              tPag := fpCartaoDebito;
            if (AnsiUpperCase(cb_forma2.text) = AnsiUpperCase(lForma_pgto_Cartao_Credito)) then
              tPag := fpCartaoCredito;
            if (AnsiUpperCase(cb_forma2.text) = AnsiUpperCase(lForma_pgto_dinheiro)) then
              tPag := fpDinheiro;
            if (AnsiUpperCase(cb_forma2.text) = AnsiUpperCase(lForma_pgto_Convenio)) then
              tPag := fpCreditoLoja;
            vPag := ed_forma2.value - PTroco;
          end;
        end;



        if ed_forma3.value > 0 then begin
          with pag.add do // PAGAMENTOS apenas para NFC-e
          begin
            if (AnsiUpperCase(cb_forma3.text) = AnsiUpperCase(lForma_pgto_Cheque_Avista)) or
               (AnsiUpperCase(cb_forma3.text) = AnsiUpperCase(lForma_pgto_Cheque_Avista)) then
              tPag := fpCheque;
            if (AnsiUpperCase(cb_forma3.text) = AnsiUpperCase(lForma_pgto_Crediario)) then
              tPag := fpCreditoLoja;
            if (AnsiUpperCase(cb_forma3.text) = AnsiUpperCase(lForma_pgto_Cartao_Debito)) then
              tPag := fpCartaoDebito;
            if (AnsiUpperCase(cb_forma3.text) = AnsiUpperCase(lForma_pgto_Cartao_Credito)) then
              tPag := fpCartaoCredito;
            if (AnsiUpperCase(cb_forma3.text) = AnsiUpperCase(lForma_pgto_dinheiro)) then
              tPag := fpDinheiro;
            if (AnsiUpperCase(cb_forma3.text) = AnsiUpperCase(lForma_pgto_Convenio)) then
              tPag := fpCreditoLoja;
            vPag := ed_forma3.value - PTroco;
          end;
        end;
        InfAdic.infCpl := '';
        InfAdic.infAdFisco := '';
      end;
    end;
  except
    on e: exception do
      application.messagebox(pwidechar('Erro na geração da NFCE' + #13 +
        'Erro: ' + e.Message), 'Erro', mb_ok + MB_ICONERROR);
  end;

end;



procedure TfrmVenda.PrepararNFCE;
{ TODO 5 : DARLON SANTOS 22:13 11/01/2018 }
begin
  nfce_autorizada := false;

  frmmodulo.LerConfiguracao;
  if EdFormatoOff = 0 then
    frmtOffLine := teContingencia
  else
    frmtOffLine := teOffLine;

  vAux := frmmodulo.codifica('915');
  vNumNFCe := StrToInt(vAux);
  vSincrono := '1';
  vNumLote := vAux;
  Sincrono := true;
  with frmmodulo do
  begin
    try
      ACBRNFCe.NotasFiscais.clear;

      Imprime_display('          AGUARDE...  GERANDO NFC-E', clBackground, tiLivre);
      grid.Repaint;
      GerarNFCe(vAux);
      Imprime_display('          AGUARDE...  ASSINANDO NFC-E', clBackground, tiLivre);
      grid.Repaint;
      ACBRNFCe.NotasFiscais.Assinar;

      Imprime_display('          AGUARDE...  VALIDANDO NFC-E', clBackground, tiLivre);
      grid.Repaint;
     ACBRNFCe.NotasFiscais.Validar;


      if ACBRNFCe.Configuracoes.Geral.FormaEmissao <> frmtOffLine  then begin
        Imprime_display('          AGUARDE...  ENVIANDO NFC-E', clBackground, tiLivre);
        grid.Repaint;
        ACBRNFCe.Enviar(vNumLote, true, Sincrono);
        if ACBRNFCe.NotasFiscais.Items[0].Confirmada then
        begin
          If ACBRNFCe.WebServices.Enviar.cStat = 100 then
          begin
            cStatus := 100;
            ChaveNFCE := ACBRNFCe.NotasFiscais.Items[0].NFe.infNFe.Id;
            NumeroNFCe := strtoint(vAux);
          end;
        end
        else
        begin
          Imprime_display(ACBRNFCe.WebServices.Enviar.xMotivo, clBackground, tiLivre);
        end;
      end else begin
        ChaveNFCE := ACBRNFCe.NotasFiscais.Items[0].NFe.infNFe.Id;
        NumeroNFCe := strtoint(vAux);
      end;
      ACBRDANFENFCe.FastFile := 'C:\Softlogus\PDV\Schemas\DANFeNFCe.fr3';
      if FileExists(frmPrincipal.LerINi(sConfiguracoes, 'PDV',
        'CAMINHO_LOGO', '')) then
        ACBRDANFENFCe.Logo := frmPrincipal.LerINi(sConfiguracoes, 'PDV',
          'CAMINHO_LOGO', '');
      ACBRDANFENFCe.Detalhado := true;
    //  ACBRDANFENFCe.vTroco := ed_troco.value;

      ACBRDANFENFCe.vTroco := ed_troco.Value;
      ACBRDANFENFCe.Impressora := edImpressora;
      ACBRDANFENFCe.DescricaoViaEstabelec := edDescEsta;
      ACBRDANFENFCe.EspessuraBorda := edMargem;
      ACBRDANFENFCe.MargemDireita  := edMargDir;
      ACBRDANFENFCe.MargemEsquerda := edMargEsq;
      ACBRDANFENFCe.MargemSuperior := edMargSup;
      ACBRDANFENFCe.MargemInferior := edMarginf;
      ACBRDANFENFCe.MostrarPreview := edPreview;
      ACBRNFCe.NotasFiscais.clear;

      if (cStatus = 100) or (frmModulo.ACBRNFCe.Configuracoes.Geral.FormaEmissao = frmtOffLine)  then
        nfce_autorizada := true
      else
        nfce_autorizada := false;
    except
      on e: exception do
      begin
        application.messagebox(pwidechar('Erro na geração da NFCE' + #13 +
          'Erro: ' + e.Message), 'Erro', mb_ok + MB_ICONERROR);
        nfce_autorizada := false;
      end;

    end;

  end;

end;

// -------------------------------------------------------------------------- //

procedure TfrmVenda.Sangria1Click(Sender: TObject);
begin
  if not bVenda then
  begin
    frmsangria := tfrmsangria.create(self);
    frmsangria.showmodal;
  end;
end;

procedure TfrmVenda.SetScreenResolution(AWidth, AHeigth: Integer);
var
DevMode: TDeviceMode;
Hnd: THandle;
begin
Hnd := GetDC(Handle);
EnumDisplaySettings(nil, 0, DevMode);
with DevMode do begin
dmPelsWidth := AWidth;
dmPelsHeight := AHeigth;
dmBitsPerPel := GetDeviceCaps(Hnd, BITSPIXEL);
end;
ChangeDisplaySettings(DevMode, 0);
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.Suprimento1Click(Sender: TObject);
begin
  if not bVenda then
  begin
    frmsuprimento := tfrmsuprimento.create(self);
    frmsuprimento.showmodal;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.EFCancelamento1Click(Sender: TObject);
begin
  if bTef then
  begin
    frmTEF_Cancelamento := tfrmTEF_Cancelamento.create(self);
    frmTEF_Cancelamento.showmodal;
  end
  else
  begin
    application.messagebox('Módulo TEF não foi instalado!', 'Erro',
      mb_ok + MB_ICONERROR);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.EFModoAdministrativo1Click(Sender: TObject);

var
  txt: textfile;
begin
  if bTef then
  begin
    frmTef_bandeira := tfrmTef_Bandeira.create(self);
    frmTef_bandeira.showmodal;

    if (Tef_Bandeira_escolhida = Tef_Redecard) or
      (Tef_Bandeira_escolhida = Tef_visanet) or
      (Tef_Bandeira_escolhida = Tef_amex) then
    begin
      assignfile(txt, sTEFTemp_Path + 'gp.tmp');
      rewrite(txt);
      writeln(txt, 'REDECARD');
      closefile(txt);
      iTEFTecban := 0;
      TEFLimpaVariaveis;
      TEFModoAdministrativo;
      BlockInput(false);

      if (sTEFRetorno = '0') and (FileExists(sTEFTemp_Path + 'TEF.Imp')) then
      begin
        TEFImprimeTransacao('R');
        if sTEFRetorno = '0' then
          TEFFechaOperacao
        else
        begin
          TEFVerificaGerenciadorAtivo;
          TEFNaoConfirmaOperacao;
        end;
      end;
    end;

    if (Tef_Bandeira_escolhida = Tef_TecBan) or
      (Tef_Bandeira_escolhida = Tef_tribanco) then
    begin
      if bTEF_TecBan then
      begin
        assignfile(txt, sTEFTemp_Path + 'gp.tmp');
        rewrite(txt);
        writeln(txt, 'TECBAN');
        closefile(txt);
        iTEFTecban := 1;
        TEFLimpaVariaveis;
        TEFModoAdministrativo;

        if (sTEFRetorno = '0') and (FileExists(sTEFTemp_Path + 'TEF.Imp')) then
        begin
          TEFImprimeTransacao('R');
          if sTEFRetorno = '0' then
            TEFFechaOperacao
          else
          begin
            TEFVerificaGerenciadorAtivo;
            TEFNaoConfirmaOperacao;
          end;
        end;
      end
      else
      begin
        application.messagebox('Módulo do TecBan não foi instalado!', 'Erro',
          mb_ok + MB_ICONERROR);
      end;
    end;
    If Tef_Bandeira_escolhida = Tef_Hipercard then
    begin
      assignfile(txt, sTEFTemp_Path + 'gp.tmp');
      rewrite(txt);
      writeln(txt, 'HIPERCARD');
      closefile(txt);
      iTEFTecban := 2;
      TEFLimpaVariaveis;
      TEFModoAdministrativo;

      if (sTEFRetorno = '0') and (FileExists(sTEFTemp_Path + 'TEF.Imp')) then
      begin
        TEFImprimeTransacao('R');
        if sTEFRetorno = '0' then
          TEFFechaOperacao
        else
        begin
          TEFVerificaGerenciadorAtivo;
          TEFNaoConfirmaOperacao;
        end;
      end;
    end;
  end
  else
  begin
    application.messagebox('Módulo TEF não foi instalado!', 'Erro',
      mb_ok + MB_ICONERROR);
  end;

end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.rocarOperador1Click(Sender: TObject);
begin
  sFuncao_Senha := '001';
  frmsenha := tfrmsenha.create(self);
  frmsenha.showmodal;

  if busuario_Autenticado then
  begin
    // mudar o nome do usuario na tela de venda
    frmVenda.lb_operador.Caption := copy(sNome_Operador, 1, 10);

    if frmPrincipal.TipoImpressora = Fiscal then
    begin
      application.messagebox
        ('Será emitida um leitura X para efeito de conferência de caixa.',
        'Aviso', mb_ok + mb_iconinformation);

      // emitir uma leitura x
      repeat
        sMsg := cECF_LeituraX(iECF_Modelo);
        if sMsg <> ok then
        begin
          if application.messagebox(pwidechar('Erro na impressão da Leitura X' +
            #13 + 'Mensagem: ' + sMsg + #13 + 'Deseja tentar outra vez?'),
            'ECF', mb_yesno + MB_ICONERROR) = idno then
          begin
            break;
          end;
        end;
      until sMsg = ok;

    end; { fim impressora fiscal - leitura X }

    application.messagebox('Troca efetuada com sucesso!', 'Aviso',
      mb_ok + mb_iconinformation);

  end;

end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.CaixaIndisponvel1Click(Sender: TObject);
begin
  if bVenda then
    exit;
  if timer_balanca.Enabled then
    exit;

  frmProtetor_tela := TfrmProtetor_tela.create(self);
  frmProtetor_tela.showmodal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.menu_PrevendaClick(Sender: TObject);
begin
  if menu_Prevenda.Visible = false then
    exit;

  if bVenda then
  begin
    Imprime_display('Venda Aberta!', clred, tiErro);
    sleep(1500);
    Imprime_display_anterior;
    exit;
  end;

  If not bServidor_Conexao then
  begin
    repeat
      try
        frmmodulo.Conexao_Servidor.Connected := false;
        frmmodulo.Conexao_Servidor.Connected := true;
        bServidor_Conexao := true;
      except
        On e: exception do
        begin
          if application.messagebox
            (pwidechar('Erro na conexão com o banco de dados do servidor!' + #13
            + 'Mensagem: ' + e.Message + #13 + 'Deseja tentar outra vez?'),
            'Erro', mb_yesno + MB_ICONERROR) = idno then
          begin
            break;
          end;
        end;
      end;
    until bServidor_Conexao = true;
  end;
  if not bServidor_Conexao then
    exit;

  bLanca_pre_venda := false;

  frmPre_Venda := tfrmPre_venda.create(self);
  frmPre_Venda.showmodal;

  // iniciar a impressao da pre-venda
  if bLanca_pre_venda then
  begin
    Imprime_display('Iniciando impressão da Pré-venda!', clBackground, tiInfo);
    try
      // verificar o serial do ecf
      if frmPrincipal.TipoImpressora = Fiscal then
        if not verifica_ecf then
          exit;
      // Abrir o cupom fiscal
      // bloquear ao teclado
      // BlockInput(true);
      if not Abre_Venda then
      begin
        // Caso o comando de abertura de venda retornou false, abortar o processo;
        Imprime_display('ERRO AO ABRIR O CUPOM!', clred, tiErro);
        exit;
      end;
    finally
      // desbloquear o teclado
      BlockInput(false);
    end;

    // vender os itens
    // rodar a query do modulo filtrada com os produtos da pre-venda
    frmmodulo.query_servidor.First;
    while not frmmodulo.query_servidor.Eof do
    begin
      sProd_nome := frmmodulo.query_servidor.fieldbyname('produto').asstring;
      sProd_unidade := frmmodulo.query_servidor.fieldbyname('unidade').asstring;
      sProd_CST := frmmodulo.query_servidor.fieldbyname('cst').asstring;
      rProd_aliquota := frmmodulo.query_servidor.fieldbyname
        ('aliquota').asfloat;
      iProd_codigo := frmmodulo.query_servidor.fieldbyname('codproduto')
        .asinteger;
      sProd_barra := frmmodulo.query_servidor.fieldbyname('codbarra').asstring;
      rProd_qtde := frmmodulo.query_servidor.fieldbyname('qtde').asfloat;
      rProd_preco := frmmodulo.query_servidor.fieldbyname('unitario').asfloat;
      rProd_total := frmmodulo.query_servidor.fieldbyname('total').asfloat;
      rprod_desconto := frmmodulo.query_servidor.fieldbyname
        ('desconto').asfloat;
      rprod_acrescimo := frmmodulo.query_servidor.fieldbyname
        ('acrescimo').asfloat;
      sProd_Tamanho := '';
      sProd_Cor := '';

      // registrar o item
      Registra_Item;
      application.ProcessMessages;
      frmmodulo.query_servidor.Next;
    end;
    FecharCupom1Click(frmVenda);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.MeiosdePagamento1Click(Sender: TObject);
begin
  frmMeios_pagamento := tfrmMeios_pagamento.create(self);
  frmMeios_pagamento.showmodal;

end;

procedure TfrmVenda.MemoDadosChange(Sender: TObject);
begin

end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.AtualizarPDV1Click(Sender: TObject);
begin
  {
   if bVenda then
    begin
    Imprime_display('CUPOM ABERTO!',clYellow,tiAlerta);
    sleep(1500);
    Imprime_display('INFORME O PRODUTO...',clWhite,tiLivre);
    ed_barra.SetFocus;
    exit;
    end;
    Imprime_display('Aguarde! Atualizando PDV',clYellow,tiAlerta);
    Atualizar_PDV;
    Imprime_display_anterior;
   }
end;

procedure TfrmVenda.AtualizarServidor1Click(Sender: TObject);
begin

end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.Oramento1Click(Sender: TObject);
begin
  if Oramento1.Visible = false then
    exit;

  If not bServidor_Conexao then
  begin
    repeat
      try
        frmmodulo.Conexao_Servidor.Connected := false;
        frmmodulo.Conexao_Servidor.Connected := true;
      except
        if application.messagebox
          (pwidechar('Não foi possível se conectar ao servidor!' + #13 +
          'Deseja tentar outra vez?'), 'Erro', mb_yesno + MB_ICONERROR) = idno
        then
          break;
      end;
    until frmmodulo.Conexao_Servidor.Connected;
  end;

  if not bServidor_Conexao then
    exit;

  bLanca_OS := false;
  frmOrcamento_abrir := tfrmOrcamento_abrir.create(self);
  frmOrcamento_abrir.showmodal;

  // iniciar a impressao da pre-venda
  if bLanca_OS then
  begin
    Imprime_display('Iniciando impressão do Cupom!', clBackground, tiInfo);
    try
      // verificar o serial do ecf
      if frmPrincipal.TipoImpressora = Fiscal then
        if not verifica_ecf then
          exit;
      // Abrir o cupom fiscal
      // bloquear ao teclado
      // BlockInput(true);
      if not Abre_Venda then
      begin
        // Caso o comando de abertura de venda retornou false, abortar o processo;
        Imprime_display('ERRO AO ABRIR O CUPOM!', clred, tiErro);
        exit;
      end;
    finally
      // desbloquear o teclado
      BlockInput(false);
    end;
  // vender os itens
    // rodar a query do modulo filtrada com os produtos da pre-venda
    frmmodulo.query_servidor.First;
    while not frmmodulo.query_servidor.Eof do
    begin
      sProd_nome := frmmodulo.query_servidor.fieldbyname('produto').asstring;
      sProd_unidade := frmmodulo.query_servidor.fieldbyname('unidade').asstring;
      sProd_CST := frmmodulo.query_servidor.fieldbyname('cst').asstring;
      rProd_aliquota := frmmodulo.query_servidor.fieldbyname
        ('aliquota').asfloat;
      iProd_codigo := frmmodulo.query_servidor.fieldbyname('codproduto')
        .asinteger;
      sProd_barra := frmmodulo.query_servidor.fieldbyname('codbarra').asstring;
      rProd_qtde := frmmodulo.query_servidor.fieldbyname('qtde').asfloat;
      rProd_preco := frmmodulo.query_servidor.fieldbyname('unitario').asfloat;
      rProd_total := frmmodulo.query_servidor.fieldbyname('total').asfloat;
      rprod_desconto := frmmodulo.query_servidor.fieldbyname
        ('desconto').asfloat;
      rprod_acrescimo := frmmodulo.query_servidor.fieldbyname
        ('acrescimo').asfloat;
      sProd_Tamanho := '';
      sProd_Cor := '';

      // registrar o item
      Registra_Item;
      application.ProcessMessages;
      frmmodulo.query_servidor.Next;
    end;

    query.close;
    query.sql.clear;
    query.sql.add('UPDATE DAV SET COO_CUPOM_FISCAL = ''' +
      sNumero_Cupom + ''',');
    query.sql.add('CCF = ''' + sNumero_contador_cupom + ''' where numero = ''' +
      SDAV_ATUALIZADO + '''');
    query.ExecSQL;

    frmmodulo.query_servidor.close;
    frmmodulo.query_servidor.sql.clear;
    frmmodulo.query_servidor.sql.add
      ('update c000074 set tipo = 10 where codigo = ''' +
      Zerar(inttostr(iOS_codigo), 6) + '''');
    frmmodulo.query_servidor.ExecSQL;

    FecharCupom1Click(frmVenda);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.Assinararquivo1Click(Sender: TObject);
begin
  frmmodulo.Dlg_arquivo.Filter := 'Arquivo Texto|*.txt';
  frmmodulo.Dlg_arquivo.Title := 'Assinar arquivo';
  if frmmodulo.Dlg_arquivo.Execute then
  begin
    assinatura_digital(frmmodulo.Dlg_arquivo.FileName);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.Recebimento1Click(Sender: TObject);
begin
  If not bServidor_Conexao then
  begin
    repeat
      try
        frmmodulo.Conexao_Servidor.Connected := false;
        frmmodulo.Conexao_Servidor.Connected := true;
      except
        if application.messagebox
          (pwidechar('Não foi possível se conectar ao servidor!' + #13 +
          'Deseja tentar outra vez?'), 'Erro', mb_yesno + MB_ICONERROR) = idno
        then
          break;
      end;
    until frmmodulo.Conexao_Servidor.Connected;
  end;

  if not bServidor_Conexao then
    exit;

  // frmContasReceber := tfrmcontasReceber.create(self);
  application.CreateForm(tfrmcontasReceber, frmcontasReceber);
  frmcontasReceber.showmodal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.Menu_osClick(Sender: TObject);
begin
  if Menu_os.Visible = false then
    exit;

  if bVenda then
  begin
    Imprime_display('Venda Aberta!', clred, tiErro);
    sleep(1500);
    Imprime_display_anterior;
    exit;
  end;

  If not bServidor_Conexao then
  begin
    repeat
      try
        frmmodulo.Conexao_Servidor.Connected := false;
        frmmodulo.Conexao_Servidor.Connected := true;
        bServidor_Conexao := true;
      except
        On e: exception do
        begin
          if application.messagebox
            (pwidechar('Erro na conexão com o banco de dados do servidor!' + #13
            + 'Mensagem: ' + e.Message + #13 + 'Deseja tentar outra vez?'),
            'Erro', mb_yesno + MB_ICONERROR) = idno then
          begin
            break;
          end;
        end;
      end;
    until bServidor_Conexao = true;
  end;
  if not bServidor_Conexao then
    exit;

  bLanca_OS := false;

  frmOS := tfrmOS.create(self);
  frmOS.showmodal;
// iniciar a impressao da pre-venda
  if bLanca_OS then
  begin


    Imprime_display('Iniciando impressão da O.S.!', clBackground, tiInfo);
    try
      // verificar o serial do ecf
      if not verifica_ecf then
        exit;
      // Abrir o cupom fiscal
      // bloquear ao teclado
      // BlockInput(true);
      if not Abre_Venda then
      begin
        // Caso o comando de abertura de venda retornou false, abortar o processo;
        Imprime_display('ERRO AO ABRIR O CUPOM!', clred, tiErro);
        exit;
      end;
    finally
      // desbloquear o teclado
      BlockInput(false);
    end;

    // vender os servicos
    // fazer a soma dos serviso e lancar comO:
    // 9999999999999 Prestação de Serviço Municipal    Valor Unitario R$ 1,00   Nao Tributado

    frmmodulo.query_servidor2.sql.clear;
    frmmodulo.query_servidor2.sql.add('select sum(valor) total from c000053');
    frmmodulo.query_servidor2.sql.add('where codos = ''' +
      Zerar(inttostr(iOS_codigo), 6) + '''');
    frmmodulo.query_servidor2.Open;

    query.close;
    query.sql.clear;
    query.sql.add('UPDATE DAV SET COO_CUPOM_FISCAL = ''' +
      sNumero_Cupom + ''',');
    query.sql.add('CCF = ''' + sNumero_contador_cupom + ''' where numero = ''' +
      SDAV_ATUALIZADO + '''');
    query.ExecSQL;

    if frmmodulo.query_servidor2.fieldbyname('total').asfloat > 0 then
    begin
      sProd_nome := 'PRESTAC.DE SERVICO MUNICIPAL';
      sProd_unidade := 'UN';
      sProd_CST := '041';
      rProd_aliquota := 0;
      iProd_codigo := 999999;
      sProd_barra := '9999999999999';
      rProd_qtde := frmmodulo.query_servidor2.fieldbyname('total').asfloat;
      rProd_preco := 1;
      rProd_total := frmmodulo.query_servidor2.fieldbyname('total').asfloat;
      rprod_desconto := 0;
      rprod_acrescimo := 0;
      sProd_Tamanho := '';
      sProd_Cor := '';

      // registrar o item
      Registra_Item;
      application.ProcessMessages;
    end;

    // vender os itens
    // rodar a query do modulo filtrada com os produtos da pre-venda
    frmmodulo.query_servidor.First;
    while not frmmodulo.query_servidor.Eof do
    begin
      sProd_nome := frmmodulo.query_servidor.fieldbyname('produto').asstring;
      sProd_unidade := frmmodulo.query_servidor.fieldbyname('unidade').asstring;
      sProd_CST := frmmodulo.query_servidor.fieldbyname('cst').asstring;
      rProd_aliquota := frmmodulo.query_servidor.fieldbyname
        ('aliquota').asfloat;
      iProd_codigo := frmmodulo.query_servidor.fieldbyname('codproduto')
        .asinteger;
      sProd_barra := frmmodulo.query_servidor.fieldbyname('codbarra').asstring;
      rProd_qtde := frmmodulo.query_servidor.fieldbyname('qtde').asfloat;
      rProd_preco := frmmodulo.query_servidor.fieldbyname('unitario').asfloat;
      rProd_total := frmmodulo.query_servidor.fieldbyname('total').asfloat;
      rprod_desconto := frmmodulo.query_servidor.fieldbyname
        ('desconto').asfloat;
      rprod_acrescimo := frmmodulo.query_servidor.fieldbyname
        ('acrescimo').asfloat;
      sProd_Tamanho := '';
      sProd_Cor := '';

      // registrar o item
      Registra_Item;
      application.ProcessMessages;
      frmmodulo.query_servidor.Next;
    end;
    FecharCupom1Click(frmVenda);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.timer_bicoTimer(Sender: TObject);

var
  txt: textfile;
  entrada: string;
  X: Integer;
begin
  if not bPosto_ok then
    exit;

  try

    entrada := clipboard.astext;

    if entrada = '' then
      entrada := '1';

    if entrada = '2' then
    begin
      sh_status_conexao.Brush.color := clred;
      for X := 0 to grid_bico.RowCount - 1 do
      begin
        grid_bico.Cell[3, X].asstring := 'FALHA';
      end;
      exit;
    end;
  except
  end;

  EnviaComando('(&S)', 1000);
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.timer_abastecimentoTimer(Sender: TObject);

var
  txt: textfile;
  entrada: string;
  X: Integer;
begin
  if not bPosto_ok then
    exit;

  try

    entrada := clipboard.astext;

    if entrada = '' then
      entrada := '1';

    if entrada = '2' then
    begin
      sPosto_Resposta := 'ERRO';
      sh_status_conexao.Brush.color := clred;
      for X := 0 to grid_bico.RowCount - 1 do
      begin
        grid_bico.Cell[3, X].asstring := 'FALHA';
      end;
      exit;
    end;
  except
  end;

  EnviaComando('(&A)', 1000);
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.grid_abastecimentoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if grid_abastecimento.SelectedRow < 0 then
      exit;

    PN_POSTO.Visible := false;

    // iniciar a impressao do abastecimento
    Imprime_display('Iniciando impressão do Abastecimento!', clBackground, tiInfo);
    try
      // verificar o serial do ecf
      if not verifica_ecf then
        exit;
      // Abrir o cupom fiscal
      // bloquear ao teclado
      BlockInput(true);
      if not Abre_Venda then
      begin
        // Caso o comando de abertura de venda retornou false, abortar o processo;
        Imprime_display('ERRO AO ABRIR O CUPOM!', clred, tiErro);
        exit;
      end;
    finally
      // desbloquear o teclado
      BlockInput(false);
    end;

    // vender os itens
    // rodar a query do modulo filtrada com os produtos da pre-venda

    // qrabastecimento.close;
    // qrAbastecimento.SQL.clear;
    // qrAbastecimento.sql.add('select * from posto_abastecimento where codigo = '+
    // grid_abastecimento.Cell[10,grid_abastecimento.selectedrow].asstring);
    // qrabastecimento.open;
    ilinha_abastecimento := grid_abastecimento.SelectedRow;

    qrAbastecimento.close;
    qrAbastecimento.sql.clear;
    qrAbastecimento.sql.add
      ('select posto_abastecimento.*, estoque.nome produto,');
    qrAbastecimento.sql.add
      ('estoque.unidade,estoque.cst,estoque.aliquota,estoque.cod_barra');
    qrAbastecimento.sql.add('from posto_abastecimento, estoque');
    qrAbastecimento.sql.add
      ('where posto_abastecimento.cod_produto = estoque.codigo');
    qrAbastecimento.sql.add('and posto_abastecimento.situacao = 0');
    qrAbastecimento.sql.add('and posto_abastecimento.codigo = ' +
      grid_abastecimento.Cell[10, ilinha_abastecimento].asstring);
    qrAbastecimento.Open;

    qrAbastecimento.First;
    while not qrAbastecimento.Eof do
    begin
      sProd_nome := qrAbastecimento.fieldbyname('produto').asstring;
      sProd_unidade := qrAbastecimento.fieldbyname('unidade').asstring;
      sProd_CST := qrAbastecimento.fieldbyname('cst').asstring;
      rProd_aliquota := qrAbastecimento.fieldbyname('aliquota').asfloat;
      iProd_codigo := qrAbastecimento.fieldbyname('cod_produto').asinteger;
      sProd_barra := qrAbastecimento.fieldbyname('cod_barra').asstring;
      rProd_qtde := qrAbastecimento.fieldbyname('qtde').asfloat;
      rProd_preco := qrAbastecimento.fieldbyname('unitario').asfloat;
      rProd_total := qrAbastecimento.fieldbyname('total').asfloat;
      rprod_desconto := 0;
      rprod_acrescimo := 0;
      sProd_Tamanho := '';
      sProd_Cor := '';

      // registrar o item
      Registra_Item;
      application.ProcessMessages;
      qrAbastecimento.Next;
    end;
    iCodigo_abastecimento := grid_abastecimento.Cell[10, ilinha_abastecimento]
      .asinteger;
    sPosto_rodape :=
    // 'Tanque'+grid_abastecimento.cell[11,iLinha_abastecimento].asstring+
      'Bomba' + grid_abastecimento.Cell[2, ilinha_abastecimento].asstring +
      'Bico' + grid_abastecimento.Cell[3, ilinha_abastecimento].asstring + 'EI'
      + somenteNumero(Zerar(grid_abastecimento.Cell[8, ilinha_abastecimento]
      .asstring, 6)) + 'EF' + somenteNumero
      (Zerar(grid_abastecimento.Cell[9, ilinha_abastecimento].asstring, 6));

    FecharCupom1Click(frmVenda);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.grid_abastecimentoEnter(Sender: TObject);
begin
  frmVenda.PopupMenu := pop_principal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.menu_mesaClick(Sender: TObject);

var
  nItem: Integer;
begin
  if menu_mesa.Visible = false then
    exit;

  if bVenda then
  begin
    Imprime_display('Venda Aberta!', clred, tiErro);
    sleep(1500);
    Imprime_display_anterior;
    exit;
  end;

  If not bServidor_Conexao then
  begin
    repeat
      try
        frmmodulo.Conexao_Servidor.Connected := false;
        frmmodulo.Conexao_Servidor.Connected := true;
        bServidor_Conexao := true;
      except
        On e: exception do
        begin
          if application.messagebox
            (pwidechar('Erro na conexão com o banco de dados do servidor!' + #13
            + 'Mensagem: ' + e.Message + #13 + 'Deseja tentar outra vez?'),
            'Erro', mb_yesno + MB_ICONERROR) = idno then
          begin
            break;
          end;
        end;
      end;
    until bServidor_Conexao = true;
  end;
  if not bServidor_Conexao then
    exit;

  bLanca_Mesa := false;

  frmMesas := tfrmMesas.create(self);
  frmMesas.showmodal;

  // iniciar a impressao da pre-venda
  if bLanca_Mesa then
  begin
    Imprime_display('Iniciando impressão do Consumo!', clBackground, tiInfo);
    try
      // verificar o serial do ecf

      if frmPrincipal.TipoImpressora = Fiscal then
        if not verifica_ecf then
          exit;
      // Abrir o cupom fiscal
      // bloquear ao teclado
      BlockInput(true);
      if not Abre_Venda then
      begin
        // Caso o comando de abertura de venda retornou false, abortar o processo;
        Imprime_display('ERRO AO ABRIR O CUPOM!', clred, tiErro);
        exit;
      end;
    finally
      // desbloquear o teclado
      BlockInput(false);
    end;

    // vender os itens
    // rodar a query do modulo filtrada com os produtos da pre-venda
    frmmodulo.query_servidor.First;
    nItem := 1;
    while not frmmodulo.query_servidor.Eof do
    begin

      if frmmodulo.query_servidor.fieldbyname('cancelado').asfloat = 0 then
      begin
        sProd_nome := frmmodulo.query_servidor.fieldbyname('produto').asstring;
        sProd_unidade := frmmodulo.query_servidor.fieldbyname
          ('unidade').asstring;
        sProd_CST := frmmodulo.query_servidor.fieldbyname('cst').asstring;
        rProd_aliquota := frmmodulo.query_servidor.fieldbyname
          ('aliquota').asfloat;
        iProd_codigo := frmmodulo.query_servidor.fieldbyname('cod_produto')
          .asinteger;
        sProd_barra := frmmodulo.query_servidor.fieldbyname('codbarra')
          .asstring;
        rProd_qtde := frmmodulo.query_servidor.fieldbyname('qtde').asfloat;
        rProd_preco := frmmodulo.query_servidor.fieldbyname('unitario').asfloat;
        rProd_total := frmmodulo.query_servidor.fieldbyname('total').asfloat;
        rprod_desconto := 0;
        rprod_acrescimo := 0;
        sProd_Tamanho := '';
        sProd_Cor := '';

        // registrar o item
        Registra_Item;
        Inc(nItem);
      end
      else
      begin
        sProd_nome := frmmodulo.query_servidor.fieldbyname('produto').asstring;
        sProd_unidade := frmmodulo.query_servidor.fieldbyname
          ('unidade').asstring;
        sProd_CST := frmmodulo.query_servidor.fieldbyname('cst').asstring;
        rProd_aliquota := frmmodulo.query_servidor.fieldbyname
          ('aliquota').asfloat;
        iProd_codigo := frmmodulo.query_servidor.fieldbyname('cod_produto')
          .asinteger;
        sProd_barra := frmmodulo.query_servidor.fieldbyname('codbarra')
          .asstring;
        rProd_qtde := frmmodulo.query_servidor.fieldbyname('qtde').asfloat;
        rProd_preco := frmmodulo.query_servidor.fieldbyname('unitario').asfloat;
        rProd_total := frmmodulo.query_servidor.fieldbyname('total').asfloat;
        rprod_desconto := 0;
        rprod_acrescimo := 0;
        sProd_Tamanho := '';
        sProd_Cor := '';

        // registrar o item
        Registra_Item;
        // cancelar o item

        sProd_nome := frmmodulo.query_servidor.fieldbyname('produto').asstring;
        sProd_unidade := frmmodulo.query_servidor.fieldbyname
          ('unidade').asstring;
        sProd_CST := frmmodulo.query_servidor.fieldbyname('cst').asstring;
        rProd_aliquota := frmmodulo.query_servidor.fieldbyname
          ('aliquota').asfloat;
        iProd_codigo := frmmodulo.query_servidor.fieldbyname('cod_produto')
          .asinteger;
        sProd_barra := frmmodulo.query_servidor.fieldbyname('codbarra')
          .asstring;
        rProd_qtde := frmmodulo.query_servidor.fieldbyname('qtde').asfloat;
        rProd_preco := frmmodulo.query_servidor.fieldbyname('unitario').asfloat;
        rProd_total := frmmodulo.query_servidor.fieldbyname('total').asfloat;
        rprod_desconto := 0;
        rprod_acrescimo := 0;
        sProd_Tamanho := '';
        sProd_Cor := '';

        ed_cancelar_item.IntValue := nItem;
        Cancela_Item(inttostr(nItem));
        Inc(nItem);
      end;

      application.ProcessMessages;
      frmmodulo.query_servidor.Next;
    end;

    if rTotal_Venda <= 0 then
    begin
      Cancela_cupom_aberto;

      // excluir a mesa e os itens
      frmmodulo.query_servidor.close;
      frmmodulo.query_servidor.sql.clear;
      frmmodulo.query_servidor.sql.add('delete from r000002 where cod_mesa =' +
        inttostr(iMesa_codigo));
      frmmodulo.query_servidor.ExecSQL;

      frmmodulo.query_servidor.close;
      frmmodulo.query_servidor.sql.clear;
      frmmodulo.query_servidor.sql.add('delete from r000001 where codigo =' +
        inttostr(iMesa_codigo));
      frmmodulo.query_servidor.ExecSQL;
      // inserir a liberacao da mesa para nao aparecer no sistema de frente
      try
        frmmodulo.query_servidor.close;
        frmmodulo.query_servidor.sql.clear;
        frmmodulo.query_servidor.sql.add('insert into r000003 (mesa) values (' +
          inttostr(iMesa_codigo) + ')');
        frmmodulo.query_servidor.ExecSQL;
      except
      end;
    end
    else
    begin
      FecharCupom1Click(frmVenda);
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ComPort1RxChar(Sender: TObject; Count: Integer);

var
  stparcial: string;
  S: string;
  X, i: Integer;
  a: byte;

  sBico: string;
  rqtde, rencerrante, rtotal, runitario: real;
  dData: tdatetime;
  sHora: string;
  sNumero_abastecimento: string;
begin
  if sPosto_Resposta <> 'ERRO' then
  begin
    bPosto_ok := true;
    sh_status_conexao.Brush.color := clLime;
  end;

  for a := 1 to Count do
  begin
    // comport1.ReadStr(stparcial,1);
    str := str + stparcial;
    if stparcial = '(' then
      str := '('
    else
    begin
      if stparcial = ')' then
      begin

        sPosto_Resposta := str;
        timer_resposta.Enabled := false;

        // STATUS DOS BICOS

        if (sPosto_Comando = '(&S)') and (copy(sPosto_Resposta, 1, 2) = '(S')
        then
        begin
          sPosto_Resposta := copy(sPosto_Resposta, 3, 32);
          // existe abastecimento
          for X := 0 to grid_bico.RowCount - 1 do
          begin
            S := sPosto_Resposta[grid_bico.Cell[5, X].asinteger];
            if S = 'L' then
              grid_bico.Cell[3, X].asstring := 'LIVRE';
            if S = 'P' then
              grid_bico.Cell[3, X].asstring := 'PRONTA';
            if S = 'F' then
              grid_bico.Cell[3, X].asstring := 'FALHA';
            if S = 'C' then
              grid_bico.Cell[3, X].asstring := 'CONCLUIU';
            if S = 'A' then
              grid_bico.Cell[3, X].asstring := 'ABASTECENDO';
            if S = 'B' then
              grid_bico.Cell[3, X].asstring := 'BLOQUEDA';
            if S = 'E' then
              grid_bico.Cell[3, X].asstring := 'AGUARDANDO';
          end;
        end
        else
        begin
          // abastecimento
          if (sPosto_Comando = '(&A)') and (length(sPosto_Resposta) = 52) then
          begin
            if sPosto_Resposta <> '(0)' then
            begin
              sNumero_abastecimento := copy(Edit1.text, 34, 4);

              // verificar se este abastecimento ja foi lancado

              query.close;
              query.sql.clear;
              query.sql.add('select codigo from  POSTO_ABASTECIMENTO');
              query.sql.add('where data = :data and numero_abastecimento = ''' +
                sNumero_abastecimento + '''');
              query.Open;
              if query.recordcount > 0 then
              begin
                EnviaComando('(&I)', 10);
              end
              else
              begin
                // inputbox('','',sPosto_Resposta);

                sBico := copy(sPosto_Resposta, 24, 2);
                sHora := copy(TimeToStr(time), 1, 5);
                // copy(sposto_resposta,28,2)+':'+copy(sposto_resposta,30,2));
                dData := Date;
                // copy(sposto_resposta,26,2)+'/'+copy(sposto_resposta,32,2)+'/'+copy(datetostr(date,7,4));
                if copy(sPosto_Resposta, 8, 6) <> '000000' then
                  rqtde := Strtofloat(copy(sPosto_Resposta, 8, 6)) / 1000;
                // 3 casas decimais
                if copy(sPosto_Resposta, 2, 6) <> '000000' then
                  rtotal := Strtofloat(copy(sPosto_Resposta, 2, 6)) / 100;
                if copy(sPosto_Resposta, 14, 4) <> '0000' then
                  runitario := Strtofloat(copy(sPosto_Resposta, 14, 4)) / 1000;
                if copy(sPosto_Resposta, 38, 10) <> '0000000000' then
                  rencerrante :=
                    Strtofloat(copy(sPosto_Resposta, 38, 10)) / 100;

                query.close;
                query.sql.clear;
                query.sql.add
                  ('select posto_bico.codigo, posto_bico.tanque, posto_bico.bomba,');
                query.sql.add('posto_bico.cod_produto, estoque.nome produto ');
                query.sql.add('from posto_bico, estoque ');
                query.sql.add('where posto_bico.cod_produto = estoque.codigo');
                query.sql.add('and posto_bico.bico = ''' + sBico + '''');
                query.Open;

                frmmodulo.st_bico_movimento.close;
                frmmodulo.st_bico_movimento.ParamByName('cod_bico').asinteger :=
                  query.fieldbyname('codigo').asinteger;
                frmmodulo.st_bico_movimento.ParamByName('EF').asfloat :=
                  rencerrante;
                frmmodulo.st_bico_movimento.ParamByName('volume')
                  .asfloat := rqtde;
                frmmodulo.st_bico_movimento.ParamByName('data')
                  .AsDateTime := dData;

                frmmodulo.st_bico_movimento.Prepare;
                frmmodulo.st_bico_movimento.Execute;

                frmmodulo.St_Abastecimento_codigo.Prepare;
                frmmodulo.St_Abastecimento_codigo.Execute;

                frmmodulo.St_Abastecimento.close;
                frmmodulo.St_Abastecimento.ParamByName('codigo').asinteger :=
                  frmmodulo.St_Abastecimento_codigo.ParamByName('codigo')
                  .asinteger;
                frmmodulo.St_Abastecimento.ParamByName('data')
                  .AsDateTime := dData;
                // strtodate(ab.data);
                frmmodulo.St_Abastecimento.ParamByName('hora').asstring
                  := sHora;
                // ab.hora;

                // frmmodulo.St_Abastecimento.ParamByName('bomba').asstring := query.fieldbyname('bomba').asstring;
                frmmodulo.St_Abastecimento.ParamByName('bomba').asstring :=
                  query.fieldbyname('bomba').asstring;
                frmmodulo.St_Abastecimento.ParamByName('bico').asstring
                  := sBico;
                frmmodulo.St_Abastecimento.ParamByName('cod_produto').asinteger
                  := query.fieldbyname('cod_produto').asinteger;
                frmmodulo.St_Abastecimento.ParamByName('qtde').asfloat := rqtde;
                frmmodulo.St_Abastecimento.ParamByName('unitario').asfloat :=
                  runitario;
                frmmodulo.St_Abastecimento.ParamByName('total').asfloat
                  := rtotal;
                frmmodulo.St_Abastecimento.ParamByName('tanque').asstring :=
                  query.fieldbyname('tanque').asstring;
                frmmodulo.St_Abastecimento.ParamByName('numero_abastecimento')
                  .asstring := sNumero_abastecimento;

                // if (ab.encerrante - ab.total_litros - (0.01)) < 0 then
                // frmmodulo.St_Abastecimento.ParamByName('ei').asfloat := 0
                // else
                // begin
                frmmodulo.St_Abastecimento.ParamByName('ei').asfloat :=
                  rencerrante - rqtde; // - (0.01);
                // end;

                frmmodulo.St_Abastecimento.ParamByName('ef').asfloat :=
                  rencerrante;
                frmmodulo.St_Abastecimento.ParamByName('situacao')
                  .asinteger := 0;
                frmmodulo.St_Abastecimento.ExecProc;

                i := grid_abastecimento.AddRow(1);
                // data
                grid_abastecimento.Cell[0, i].asstring := datetostr(dData);
                // ab.data;
                // hora
                grid_abastecimento.Cell[1, i].asstring := sHora; // ab.hora;
                // bomba
                grid_abastecimento.Cell[2, i].asstring :=
                  query.fieldbyname('bomba').asstring;
                // bico
                grid_abastecimento.Cell[3, i].asstring := sBico;
                // produto
                grid_abastecimento.Cell[4, i].asstring :=
                  query.fieldbyname('produto').asstring;
                // Quantidade
                grid_abastecimento.Cell[5, i].asfloat := rqtde;
                // preco unitario
                grid_abastecimento.Cell[6, i].asfloat := runitario;
                // total
                grid_abastecimento.Cell[7, i].asfloat := rtotal;
                // encerrante inicial
                // if (ab.encerrante - ab.total_litros - (0.01)) < 0 then
                // grid_abastecimento.cell[8,i].asfloat := 0
                // else
                grid_abastecimento.Cell[8, i].asfloat := rencerrante - rqtde;
                // - (0.01);
                // encerrante final
                grid_abastecimento.Cell[9, i].asfloat := rencerrante;
                // codigo
                grid_abastecimento.Cell[10, i].asinteger :=
                  frmmodulo.St_Abastecimento_codigo.ParamByName('codigo')
                  .asinteger;
                // tanque
                grid_abastecimento.Cell[11, i].asstring :=
                  query.fieldbyname('tanque').asstring;

                if grid_abastecimento.RowCount = 1 then
                begin
                  grid_abastecimento.SelectedRow := 0;
                  grid_abastecimento.setfocus;
                end;
                EnviaComando('(&I)', 10);
              end;
            end;
          end;
        end;
      end;
    end;
  END;

end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.timer_respostaTimer(Sender: TObject);

var
  X: Integer;
  txt: textfile;
  entrada: string;

begin
  timer_resposta.Enabled := false;

  if (sPosto_Comando <> '(&I)') then
  begin
    sPosto_Resposta := 'ERRO';
    sh_status_conexao.Brush.color := clred;
    for X := 0 to grid_bico.RowCount - 1 do
    begin
      grid_bico.Cell[3, X].asstring := 'FALHA';
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.FormDestroy(Sender: TObject);
begin
  TRY
    // comport1.Close;
  EXCEPT
  END;
end;

procedure TfrmVenda.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key = 66) and (Shift = [ssCtrl]) then
    if frmPrincipal.TipoImpressora = SemImpressora then
      frmPrincipal.TipoImpressora := NaoFiscal
    else
     frmPrincipal.TipoImpressora := SemImpressora;
    CorEditTotaL;

end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.Abastecimento1Click(Sender: TObject);
begin
  if sRamo_Tipo = '3' then
  begin
    bCadastra_Placa := true;

    Menu_os.Enabled := false;
    Menu_os.Visible := false;
    PN_POSTO.Visible := true;
    PN_POSTO.top := 103;
    PN_POSTO.left := 27;
    img_logo.Visible := false;
    grid_abastecimento.setfocus;
  end
  else
  begin
    application.messagebox('Atendimento não permitido!', 'Erro',
      mb_ok + MB_ICONERROR);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.Button2Click(Sender: TObject);
begin
  PN_POSTO.Visible := false;
  ed_barra.setfocus;

end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.Fabricao1Click(Sender: TObject);
begin
  If not bServidor_Conexao then
  begin
    repeat
      try
        frmmodulo.Conexao_Servidor.Connected := false;
        frmmodulo.Conexao_Servidor.Connected := true;
        bServidor_Conexao := true;
      except
        On e: exception do
        begin
          if application.messagebox
            (pwidechar('Erro na conexão com o banco de dados do servidor!' + #13
            + 'Mensagem: ' + e.Message + #13 + 'Deseja tentar outra vez?'),
            'Erro', mb_yesno + MB_ICONERROR) = idno then
          begin
            break;
          end;
        end;
      end;
    until bServidor_Conexao = true;
  end;
  if not bServidor_Conexao then
    exit;


  // atualizar os dados no servidor

  frmfabricacao := tfrmfabricacao.create(self);
  frmfabricacao.showmodal;

end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.Voltar1Click(Sender: TObject);
begin

  bVolta_foco := true;
  Perform(WM_NEXTDLGCTL, 0, 0);
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.timer_cargaTimer(Sender: TObject);
begin
  try
    frmmodulo.query.close;
    frmmodulo.query.sql.clear;
    frmmodulo.query.sql.add('select carga_data, carga_hora from config');
    frmmodulo.query.Open;

    frmmodulo.qrconfig.Open;
    lb_carga.Caption := 'Carga: ' + frmmodulo.query.fieldbyname('carga_data')
      .asstring + ' às ' + frmmodulo.query.fieldbyname('carga_hora').asstring;
    frmmodulo.qrconfig.close;

  except

  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda.ed_unitarioKeyPress(Sender: TObject; var Key: Char);
begin
  IF Key IN ['0' .. '9'] THEN
  BEGIN
    If bProd_promocao THEN
    begin
      Imprime_display('PRODUTO EM PROMOÇÃO!', clred, tiErro);
      sleep(1500);
      Imprime_display_anterior;
    end;
  END;
end;

function TfrmVenda.ImgTipoImpressora(i: Integer): TImpressora;
begin
      { TODO : DARLON SANTOS }
  case i of
    0:
      begin // Sem Impressora
        imgImpressora.Picture.Assign(imgCinza.Picture);
        frmPrincipal.TipoImpressora := SemImpressora;
      end;
    1:
      begin // Nao Fiscal
        imgImpressora.Picture.Assign(imgVerde.Picture);
        frmPrincipal.TipoImpressora := NaoFiscal;
      end;
    2:
      begin // Fiscal
        imgImpressora.Picture.Assign(imgAmarela.Picture);
        frmPrincipal.TipoImpressora := Fiscal;
      end;

  end;

  Result := frmPrincipal.TipoImpressora;

end;

procedure TfrmVenda.trocaImpressaoClick(Sender: TObject);
begin

  Inc(iImpressora);

  ImgTipoImpressora(iImpressora);

  frmPrincipal.gravaINI(sConfiguracoes, 'Impressora', 'TIPO',
    inttostr(iImpressora));

  if iImpressora >= 2 then
    iImpressora := -1;

end;

procedure TfrmVenda.act1Execute(Sender: TObject);
begin
  trocaImpressao.Click;
end;

procedure TfrmVenda.Comandas1Click(Sender: TObject);

var
  nItem: Integer;
begin
  if Comandas1.Visible = false then
    exit;

  if bVenda then
  begin
    Imprime_display('Venda Aberta!', clred, tiErro);
    sleep(1500);
    Imprime_display_anterior;
    exit;
  end;

  If not bServidor_Conexao then
  begin
    repeat
      try
        frmmodulo.Conexao_Servidor.Connected := false;
        frmmodulo.Conexao_Servidor.Connected := true;
        bServidor_Conexao := true;
      except
        On e: exception do
        begin
          if application.messagebox
            (pwidechar('Erro na conexão com o banco de dados do servidor!' + #13
            + 'Mensagem: ' + e.Message + #13 + 'Deseja tentar outra vez?'),
            'Erro', mb_yesno + MB_ICONERROR) = idno then
          begin
            break;
          end;
        end;
      end;
    until bServidor_Conexao = true;
  end;
  if not bServidor_Conexao then
    exit;

  bLanca_Comanda := false;

  FComanda := TFComanda.create(self);
  FComanda.showmodal;

  // iniciar a impressao da pre-venda
  if bLanca_Comanda then
  begin
    Imprime_display('Iniciando impressão do Consumo!', clBackground, tiInfo);
    try
      // verificar o serial do ecf

      if frmPrincipal.TipoImpressora = Fiscal then
        if not verifica_ecf then
          exit;
      // Abrir o cupom fiscal
      // bloquear ao teclado
      BlockInput(true);
      if not Abre_Venda then
      begin
        // Caso o comando de abertura de venda retornou false, abortar o processo;
        Imprime_display('ERRO AO ABRIR O CUPOM!', clred, tiErro);
        exit;
      end;
    finally
      // desbloquear o teclado
      BlockInput(false);
    end;

    // vender os itens
    // rodar a query do modulo filtrada com os produtos da pre-venda
    frmmodulo.query_servidor.First;
    nItem := 1;
    while not frmmodulo.query_servidor.Eof do
    begin

      if frmmodulo.query_servidor.fieldbyname('cancelado').asfloat = 0 then
      begin
        sProd_nome := frmmodulo.query_servidor.fieldbyname('produto').asstring;
        sProd_unidade := frmmodulo.query_servidor.fieldbyname
          ('unidade').asstring;
        sProd_CST := frmmodulo.query_servidor.fieldbyname('cst').asstring;
        rProd_aliquota := frmmodulo.query_servidor.fieldbyname
          ('aliquota').asfloat;
        iProd_codigo := frmmodulo.query_servidor.fieldbyname('cod_produto')
          .asinteger;
        sProd_barra := frmmodulo.query_servidor.fieldbyname('codbarra')
          .asstring;
        rProd_qtde := frmmodulo.query_servidor.fieldbyname('qtde').asfloat;
        rProd_preco := frmmodulo.query_servidor.fieldbyname('unitario').asfloat;
        rProd_total := frmmodulo.query_servidor.fieldbyname('total').asfloat;
        rprod_desconto := 0;
        rprod_acrescimo := 0;
        sProd_Tamanho := '';
        sProd_Cor := '';

        // registrar o item
        Registra_Item;
        Inc(nItem);
      end
      else
      begin
        sProd_nome := frmmodulo.query_servidor.fieldbyname('produto').asstring;
        sProd_unidade := frmmodulo.query_servidor.fieldbyname
          ('unidade').asstring;
        sProd_CST := frmmodulo.query_servidor.fieldbyname('cst').asstring;
        rProd_aliquota := frmmodulo.query_servidor.fieldbyname
          ('aliquota').asfloat;
        iProd_codigo := frmmodulo.query_servidor.fieldbyname('cod_produto')
          .asinteger;
        sProd_barra := frmmodulo.query_servidor.fieldbyname('codbarra')
          .asstring;
        rProd_qtde := frmmodulo.query_servidor.fieldbyname('qtde').asfloat;
        rProd_preco := frmmodulo.query_servidor.fieldbyname('unitario').asfloat;
        rProd_total := frmmodulo.query_servidor.fieldbyname('total').asfloat;
        rprod_desconto := 0;
        rprod_acrescimo := 0;
        sProd_Tamanho := '';
        sProd_Cor := '';

        // registrar o item
        Registra_Item;
        // cancelar o item

        sProd_nome := frmmodulo.query_servidor.fieldbyname('produto').asstring;
        sProd_unidade := frmmodulo.query_servidor.fieldbyname
          ('unidade').asstring;
        sProd_CST := frmmodulo.query_servidor.fieldbyname('cst').asstring;
        rProd_aliquota := frmmodulo.query_servidor.fieldbyname
          ('aliquota').asfloat;
        iProd_codigo := frmmodulo.query_servidor.fieldbyname('cod_produto')
          .asinteger;
        sProd_barra := frmmodulo.query_servidor.fieldbyname('codbarra')
          .asstring;
        rProd_qtde := frmmodulo.query_servidor.fieldbyname('qtde').asfloat;
        rProd_preco := frmmodulo.query_servidor.fieldbyname('unitario').asfloat;
        rProd_total := frmmodulo.query_servidor.fieldbyname('total').asfloat;
        rprod_desconto := 0;
        rprod_acrescimo := 0;
        sProd_Tamanho := '';
        sProd_Cor := '';

        ed_cancelar_item.IntValue := nItem;
        Cancela_Item(inttostr(nItem));
        Inc(nItem);
      end;

      application.ProcessMessages;
      frmmodulo.query_servidor.Next;
    end;

    if rTotal_Venda <= 0 then
    begin
      Cancela_cupom_aberto;

      // excluir a mesa e os itens
      frmmodulo.query_servidor.close;
      frmmodulo.query_servidor.sql.clear;
      frmmodulo.query_servidor.sql.add('delete from r000002 where cod_mesa =' +
        inttostr(iMesa_codigo));
      frmmodulo.query_servidor.ExecSQL;

      frmmodulo.query_servidor.close;
      frmmodulo.query_servidor.sql.clear;
      frmmodulo.query_servidor.sql.add('delete from r000001 where codigo =' +
        inttostr(iMesa_codigo));
      frmmodulo.query_servidor.ExecSQL;
      // inserir a liberacao da mesa para nao aparecer no sistema de frente
      try
        frmmodulo.query_servidor.close;
        frmmodulo.query_servidor.sql.clear;
        frmmodulo.query_servidor.sql.add('insert into r000003 (mesa) values (' +
          inttostr(iMesa_codigo) + ')');
        frmmodulo.query_servidor.ExecSQL;
      except
      end;
    end
    else
    begin
      FecharCupom1Click(frmVenda);
    end;
  end;

end;

procedure TfrmVenda.MostraFotoProduto(b: boolean);
begin
  if bBusca_foto_produto then
    if b then
    begin
      {
        img_produto.Left := 65;
        img_produto.Top := 322;

        img_borda.Top := 312;
        img_borda.Left := 52;

        img_shape.Top := 319;
        img_shape.Left := 62;

        img_fundo.Top := 309;
        img_fundo.Left := 51;
      }
      img_fundo.Visible := true;
      img_borda.Visible := true;
      // img_shape.Visible := false;
      img_produto.Visible := true;
      // img_produto.Picture := nil;
    end
    else
    begin
      img_fundo.Visible := false;
      img_borda.Visible := false;
      // img_shape.Visible := false;
      img_produto.Visible := false;
    end;
end;

procedure TfrmVenda.MostraLogoMarca(b: boolean);
begin
  if bHabLogoMarca then
    img_logo.Visible := b;

  if bHabLogoMarca then
    if b then
      if FileExists(sLogoMarca) then
        img_logo.Picture.LoadFromFile(sLogoMarca);

end;

procedure TfrmVenda.AcionarGuilhotinaNaoFiscal;

var
  sModelo: string;
  bHabGuilhotina: boolean;
begin

  bHabGuilhotina := StrToBool(LerINi(sConfiguracoes, 'GUILHOTINA', 'HABILITA',
    BoolToStr(false)));
  sModelo := LerINi(sConfiguracoes, 'GUILHOTINA', 'MODELO', 'PADRÃO');

  if bHabGuilhotina then
    AcionaGuilhotinaNaoFiscal(sPortaNaoFiscal, sModelo);

end;

procedure TfrmVenda.TimerTrocoTimer(Sender: TObject);
begin
  Imprime_display('             C A I X A    L I V R E', clBackground, tiLivre);
  TimerTroco.Enabled := false;
end;

procedure TfrmVenda.CentralizarPanel(p: TPanel);
begin

  p.top := (Height - p.Height) div 2;
  p.left := (Width - p.Width) div 2;

end;

procedure TfrmVenda.FormResize(Sender: TObject);
begin
  CentralizarPanel(pnFundo);
end;





end.
