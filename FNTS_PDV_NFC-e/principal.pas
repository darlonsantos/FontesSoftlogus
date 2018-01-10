unit principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan, Registry, ACBrBase, ACBrBAL, ACBrDevice,
  Menus, AdvMenus
  , IBC, Grids, DBGrids, MemDS,
  IniFiles, // unit de leitura do arquivo INI
  ComCtrls, ExtCtrls, RzPanel, AdvGlowButton,
  AdvOfficeStatusBar, ImgList, AdvShapeButton, AdvPanel, TFlatPanelUnit,
  AdvOfficeStatusBarStylers, AdvMenuStylers, DateUtils,
  AdvReflectionImage, RzLabel, NxCollection, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, sSkinManager,
  dxCustomTileControl, cxClasses, dxTileControl, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.Ribbon,
  Vcl.RibbonLunaStyleActnCtrls, Vcl.ActnMenus, Vcl.RibbonActnMenus, Vcl.ActnList, dxStatusBar, dxRibbonStatusBar,
  dxRibbonSkins, dxSkinsdxRibbonPainter, dxSkinsdxBarPainter, cxPC, dxBar, dxDockControl, dxDockPanel, dxRibbon,
  dxRibbonMiniToolbar, dxBarApplicationMenu, dxRibbonGallery, dxBarDBNav, Vcl.PlatformDefaultStyleActnCtrls, cxCalc,
  cxImage, cxBlobEdit, cxBarEditItem, Data.DB, DBAccess, AdvReflectionLabel,
  ExeInfo, dxScreenTip, dxRibbonRadialMenu, dxBarExtItems, JvBaseDlg,
  JvSelectDirectory;

type
  TImpressora = (SemImpressora, NaoFiscal, Fiscal);
  TGaveta = (SemGaveta, GavImpNaoFiscal, GavImpFiscal);

type
  TfrmPrincipal = class(TForm)
    XPManifest1: TXPManifest;
    IBCDataSource1: TIBCDataSource;
    query2: TIBCQuery;
    query3: TIBCQuery;
    query: TIBCQuery;
    qrForma: TIBCQuery;
    Bevel1: TBevel;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvPanelStyler1: TAdvPanelStyler;
    dxDockPanel1: TdxDockPanel;
    dxFloatDockSite1: TdxFloatDockSite;
    lbl1: TLabel;
    ExeInfo1: TExeInfo;
    lblVersao: TAdvReflectionLabel;
    ActionManager1: TActionManager;
    actVendas: TAction;
    cxImageList1: TcxImageList;
    dxBarManager1: TdxBarManager;
    dxRibbon1: TdxRibbon;
    dxRibbonPopupMenu1: TdxRibbonPopupMenu;
    dxBarApplicationMenu1: TdxBarApplicationMenu;
    status: TdxRibbonStatusBar;
    dxRibbonMiniToolbar1: TdxRibbonMiniToolbar;
    dxRibbonRadialMenu1: TdxRibbonRadialMenu;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarGroup1: TdxBarGroup;
    dxBarGroup2: TdxBarGroup;
    dxBarGroup3: TdxBarGroup;
    dxRibbon1Tab3: TdxRibbonTab;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    actRelatorio: TAction;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton4: TdxBarLargeButton;
    actConfiguracoes: TAction;
    imgm_imagens: TImage;
    DIretorio: TJvSelectDirectory;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ECF1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure NotaFiscalMod2SerieD1Click(Sender: TObject);
    procedure MenuFiscal1Click(Sender: TObject);
    procedure Balana1Click(Sender: TObject);
    procedure Geral1Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton175Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure CarregaSistemaVenda;
    procedure VendasPDV1Click(Sender: TObject);
    procedure tlResearchClick(Sender: TdxTileControlItem);
    procedure tlPhotosClick(Sender: TdxTileControlItem);
    procedure dxtlcntrltmTileItem1Click(Sender: TdxTileControlItem);
    procedure tlUserManagementClick(Sender: TdxTileControlItem);
    procedure tlSystemInformationClick(Sender: TdxTileControlItem);
    procedure dxTileItem1Click(Sender: TdxTileControlItem);
    procedure tlAgentsClick(Sender: TdxTileControlItem);
    procedure pstatusClick(Sender: TObject);
    procedure act_vendasExecute(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure AdvSmoothToggleButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure actVendasExecute(Sender: TObject);
    procedure actRelatorioExecute(Sender: TObject);
    procedure actConfiguracoesExecute(Sender: TObject);
  private
    iImpressora, iGaveta: Integer;
    { Private declarations }
    function LerFormasPagto: Boolean;

  public
    { Public declarations }
    TipoImpressora: TImpressora;
    GavetaImpressora: TGaveta;

    procedure GravaIni(sArquivo, Secao, Linha, Valor: String);
    Function LerIni(sArquivo, Secao, Linha: String; Def: String): String;

    function ApenasNumerosStr(pStr: String): String;

    function IsInteger(s: string): Integer;

    // Funcoes Softlogus
    // procedure Atualizar_servidor();
    function codifica(Tabela: string; qtde_digitos: Integer): string;
    // Final funcoes Softlogus

  end;

type
  Tbandeira_tef = (Tef_Redecard, Tef_Visanet, Tef_Amex, Tef_TecBan,
    Tef_Hipercard, Tef_Tribanco); // tipo de bandeira tef

var
  frmPrincipal: TfrmPrincipal;

  // configura��es

  bPermite_DAV_ECF, // ativa/desativa impressao do dav no ECF
  bPermite_DAV_NF, // ativa/desativa impressao do dav em equipamento nao fiscal
  bPermite_Prevenda, // ativa/desativa fechamento de pre-venda
  bPermite_OS // ativa/desativa ordem de servico
    : Boolean;

  // retorno da busca de produtos
  sProd_nome, sProd_barra, sProd_unidade, sProd_CST: string;
  iProd_codigo: Integer;
  rProd_aliquota, rProd_Estoque, rProd_preco, rProd_qtde, rProd_total,
    rProd_desconto_maximo: real;
  // armazenar o desconto maximo permitido por produto
  rProd_desconto, rProd_acrescimo: real;
  // armazenar o desconto e acrescimo no item
  bProd_promocao: Boolean; // armazenar se o produto estah em promocao
  sProd_Tamanho: String;
  sProd_Cor: String;

  (* Retorno do ECF *)
  sMsg: string;

  (* Lista de aliquotas *)
  laliquota: TstringList;
  (* Lista de Formas de Pagamento que exigem tratamento especial no fechamento da venda *)
  lForma_Cheque, lForma_Cheque_ap,  lForma_Crediario, lForma_Cartao_cred,lForma_Cartao_deb, lForma_dinheiro,
    lForma_Convenio: TstringList;
  (* Dados do ECF *)
  sECF_Serial: string; // numero de serie do ECF registrado no sistema
  sECF_Caixa: string; // numero do caixa do ECF
  sECF_Operador: string; // numero do operadoro do ECF
  iECF_Modelo: Integer; // modelo do ECF - 1 Bema / 2 Daruma / 3 Sweda
  sECF_Codigo_Sefa: string; // Cod do ECf na Sefa - Ver sistema VALIDADOR ECF
  sECF_MF_Adicional: string;
  // Letra indicativa da MF adicional do ECF (geralmente em branco)
  sECF_Tipo: string; // tipo do ecf ECF-IF ou ECF-PDV
  sECF_Marca: string; // Marcao do Ecf
  sECF_Modelo: String; // Modelo do ECF
  sECF_Versao_SB: string; // Versao do Software Basico do ECF
  sECF_Data_SB: string; // data de instalacao do Software basico do ecf
  sECF_Hora_SB: string; // hora de instalacao do software basico
  sECF_Porta: string;
  sECF_usuario: string;
  sECF_Desconto_Iss: string;
  sECF_Diretorio_MFD: string;
  // diretorio onde serah gravado o arquivo mdf feito por sistema
  // externo
  (* Informacoes temporarias do ECF *)
  dData_Sistema: Tdatetime;
  dData_Movimento: Tdatetime;
  hHora_Cupom: Tdatetime;
  sNumero_Cupom: string; // numero do coo atual
  sNumero_Venda: string; // Numero do cupom fiscal atual
  sNumero_contador_cupom: string; // numero de contador do cupom fiscal atual
  sCOO, sGNF, sGRG, sCDC, sCER: string; // outros contadores do ecf
  (* Display do Teclado *)
  men: array [0 .. 40] of byte;
  // armazenar dados para impressao no display do teclado
  (* Dados da empresa *)
  sEmpresa_CNPJ, sEmpresa_Nome, sEmpresa_IE, sEmpresa_IM, sEmpresa_Endereco,
    sempresa_Rua, sempresa_Numero, sempresa_Bairro, sEmpresa_Cidade,
    sempresa_complemento, sempresa_CEP, sempresa_telefone, sempresa_fax,
    sempresa_email, sEmpresa_UF, sempresa_Codigo, sempresa_ibge: string;
  (* Dados da Sistema / Empresa Desenvolvedora *)
  sPAF_Nome: string;
  sPAF_Versao: string;
  sPAF_Executavel: string;
  sPAF_Empresa: string;
  sPAF_CNPJ: string;
  sPAF_IE: string;
  sPAF_IM: string;
  sPAF_Endereco: string;
  sPAF_Telefone: string;
  sPAF_Contato: string;
  sPAF_Laudo: string;
  sPAF_MD5: string;
  (* Classificar o tipo de venda do sistema *)
  iTipo_Venda: Integer; // 1 Super 2 Prevenda 3 Posto
  (* Configura�oes do Banco de Dados *)
  iTamanho_codigo_balanca: Integer; // tamanho do codigo da balaca 4 ou 5
  bTruncar_valor: Boolean;
  // config para nao permitir arredondamento do valor total do item
  bMuda_qtde: Boolean; // configuracao para permitir a edicao da qtde
  bMuda_unitario: Boolean;
  // configuracao para permitir a edicao do preco unitario
  bMuda_total: Boolean;
  // config para permitir a edicao do valor total (POSTO DE COMBUSTIVEL)
  bSenha_Cancel_Item: Boolean; // exigir senha no cancelamento do item
  bSenha_Cancel_Cupom: Boolean; // exigir senha no cancelamento do cupom

  iBal_time: Integer; // configuracao de time out da balanca
  sBal_Resposta: string; // resposta da balanca
  rBal_peso: real; // peso lido na balanca

  iTeclado_Modelo: Integer; // modelo do teclado
  sTeclado_porta: string; // porta do teclado
  sPasta_foto_produto: string; // pasta onde estao as fotos dos produtos
  sPasta_config: string;
  sArquivo_config: string;
  sPasta_sistema: string;

  bHabLogoMarca: Boolean; // Logo Marca PDV
  sLogoMarca: string; // Caminho Logo marca

  bBusca_foto_produto: Boolean; // buscar foto do produto
  iPesquisa_produto: Integer;
  // listar no grid do form produto_consulta os itens filtrados
  // 0 - pesquisa feita no form de pesquisa
  // 1 - pesquisa feita na venda
  // 2 - pesquisa feita no form de consulta de preco

  SDAV_ATUALIZADO: STRING;

  (* Dados do Consumidor *)
  sCli_Nome, sCli_Endereco, sCli_CPF, sCli_Cidade, sCli_Placa, sCli_Km, sCli_uf,
    sCli_codigo, scli_cep, scli_vendedor: string;

  (* Controles de venda *)
  bVenda_Cartao, bVenda_Crediario, bVenda_Cheque, bVenda_dinheiro,
    bVenda_Convenio: Boolean;
  // verificar se foi vendido nas formas de pagamento que exigem
  // tratamento especial
  bConsulta_crediario: Boolean;
  // verificar se a consulta na tela de clientes eh para o
  // crediario;
  iCrediario_prestacao: Integer; // armazenar a qtde de prestacoes no crediario
  sCrediario_Nome: string; // nome da forma de pagamento de creadiario

  bCadastra_Cheque, bCadastra_Placa, bCadastra_Convenio, bCadastra_Crediario
    : Boolean; // verificar cadastramentos no final da venda

  sTotalizador_Crediario, sNome_Totalizador_Crediario: string;
  // nome do totalizador gravado no ecf para emissao de compro-
  // vante nao fiscal no final da venda em crediario.

  sTotalizador_Recebimento, sNome_Totalizador_Recebimento: string;
  // nome do totalizador gravado no ecf para emissao de compro-
  // vante nao fiscal no final da venda em crediario.

  sIndice_Sangria, sIndice_Suprimento: string;
  // numero do indice gravado na impressora da
  // sangria e do suprimento
  iComprovente_Crediario, iComprovante_Crediario_produto: Integer;
  // Imprimir comprovante nao fiscal do crediairo

  (* T E F *)
  bTEF, // verificar se utiliza TEF
  bTEF_Cheque, // Utiliza Consulta de Cheque por TEF
  bTEF_TecBan: Boolean; // Utiliza bandeira TECBAN
  sForma_Temp: string;
  // armezar temporariamente a forma de pagamento a ser lancada no tef
  // armazenar bandeira escolhida do tef
  Tef_Bandeira_escolhida: Tbandeira_tef;

  (* Outras *)
  bContinua: Boolean; // Continuar ou nao um procedimento/funcao
  bSair_campo: Boolean; // for�ar a edicao do campo
  bSupervisor_autenticado: Boolean; // verifiar se o supervisor foi logado

  (* Usuario e Senha *)
  sFuncao_Senha: string; // determinar a funcao para a tela de senha
  busuario_autenticado: Boolean; // verificar se o usuario foi autenticado
  icodigo_Usuario: Integer; // codigo do usuario logado
  sNome_Operador: string; // nome do operador
  iNumCaixa: Integer; // Identifica��o do caixa
  iCFOP: string; // cfop de venda paf mizaelrocha2014@outlook.com

  (* Identificacao do consumidor no inicio da venda --> CAt52 *)
  bIdentifica_consumidor: Boolean;
  sConsumidor_CPF, sConsumidor_Nome, sConsumidor_Endereco: string;

  (* variaveis de comunicao com o servidor *)
  sServidor_host, sServidor_Base: string;
  bServidor_Conexao: Boolean;

  (* Pre venda *)
  bLanca_pre_venda: Boolean; // flag para fazer o fechamento da pre-venda
  sPre_Venda_Numero: string;
  // armazenar o numero da prevenda para ser impresso no final do cupom
  iPre_venda_codigo, iPre_Venda_Vendedor, iPre_venda_cliente: Integer;
  // codigo do vendedor e do cliente
  rPre_venda_desconto, rPre_venda_acrescimo: real;
  // acrescimo e desconto no fechamento

  (* OS *)
  bLanca_OS: Boolean; // flag para fazer o fechamento da OS
  sOS_Numero: string;
  // armazenar o numero da prevenda para ser impresso no final do cupom
  iOS_codigo, iOS_Vendedor, iOS_cliente: Integer;
  // codigo do vendedor e do cliente
  rOS_desconto, rOS_acrescimo: real; // acrescimo e desconto no fechamento

  (* Abasteciento *)
  bLanca_Abastecimento: Boolean;
  // flag para fazer o fechamento do abastecimento

  (* Mesas *)
  bLanca_Mesa: Boolean; // flag para fazer o fechamento da Mesa
  bLanca_Comanda: Boolean; // flag para fazer o fechamento da Comanda/Mesa
  sMesa_Numero: string;
  // armazenar o numero da mesa para ser impresso no final do cupom
  iMesa_codigo: Integer; // codigo da Mesa

  (* dav *)
  sDav_numero: string;
  // armazenar o numero do dav caso for ser impresso no final do cupom
  iDav_Os_tipo: Integer; // tipo de os 0 -> Comum, 1 -> Mecanica

  (* atualizacao de dados *)
  sCarga_data, scarga_hora: string;
  // data e hora da ultima atualizacao de dados
  Arquivo_ini: TIniFile; // nome do arquivo .ini

  (* flag de retorno da situacao do caixa e da venda *)
  bCaixa_aberto: Boolean;
  bativa_venda: Boolean;

  // ramo de atividade
  sRamo_Tipo: string;

  // posto - rodape do cupom fiscal
  sPosto_rodape: string;
  iCodigo_abastecimento, ilinha_abastecimento: Integer;

  // posto - porta de comunicacao com Concentrador
  iPosto_porta: Integer;

  // habilitar mensagem de apuracao de erro no tef
  bHabilita_msg: Boolean;

  // verificar se o cupom estah aberto, caso o comando direto da ecf falhe
  bcupom_aberto: Boolean;

  // verificar se pede senha ao dar desconto
  isenha_desconto: Integer;
  rDesconto_maximo: real;

  // GUIO: Identifica o �ndice de Substitui��o, Isento e N�o Incid�ncia
  // de acordo com o ECF
  sFF: String; // Substituicao
  sNN: String; // N�o Incid�ncia
  sII: String; // Isento

  // GUIO: Verificar se vai pedir para identificar o vendedor no fechamento
  // da venda ou n�o
  bIdentificarVendedor: Boolean;

  // GUIO: Identifica qual o campo ser� mostrado na coluna onde �tem o c�digo
  // de barras na consulta do produto
  // 0 - C�digo de Barras, 1 - Refer�ncia, 2 - Refer�ncia+Tamanho+Cor
  iColunaCOnsultaProdutos: Integer;

  sPortaNaoFiscal, sPortaGaveta: string;
  // Porta de Impressora e gaveta nao Fiscal
  iQtdLinhasFinal: Integer; // quantidade de linhas no final da nota 40c

implementation

uses modulo, funcoes, venda, senha, unECF, msg_Operador, config_ecf, unTEF,
  TEF_Cancelamento, Orcamento, produto_consulta, Orcamento_Abrir, Math,
  caixa_abertura, menu_fiscal, notafiscal_menu, config_balanca, Config,
  UtiSplash, UFuncoes, GerarNotaFiscalPaulista, frmNFCEs, senha_supervisor;

{$R *.dfm}
(*
  procedure TfrmPrincipal.Atualizar_servidor();
  var atualiza_serv : boolean;
  i, iprest : integer;
  bachou : boolean;
  scod_venda, scod_cupom : string;
  rPercentual : real;
  begin
  // transmitir os dados para o servidor


  frmMsg_Operador.lb_msg.caption := 'Aguarde! Atualizando Servidor!';
  frmMsg_Operador.show;
  frmMsg_Operador.Refresh;

  atualiza_serv := false;

  try
  if frmmodulo.Conexao_servidor.Connected = false then
  begin
  if application.messagebox('Falha ao conectar ao servidor! Deseja tentar novamente?','Transimiss�o de Dados',mb_yesno+mb_iconerror) = idyes then
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
  frmmodulo.query_servidor.SQL.add('codproduto,qtde,movimento_estoque,unitario,desconto,');
  frmmodulo.query_servidor.SQL.add('total,unidade,aliquota,');
  frmmodulo.query_servidor.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
  frmmodulo.query_servidor.SQL.add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,cst,');
  frmmodulo.query_servidor.sql.add('base_calculo, valor_icms)');
  frmmodulo.query_servidor.SQL.add('values');

  frmmodulo.query_servidor.SQL.add('(:codigo,:codnota,:serial,:numeronota,');
  frmmodulo.query_servidor.SQL.add(':codproduto,:qtde,:movimento_estoque,:unitario,:desconto,');
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

  if query.fieldbyname('valor_desconto').asfloat > 0 then
  begin
  rPercentual := query.fieldbyname('valor_desconto').asfloat /query.fieldbyname('valor_produto').asfloat;

  frmmodulo.query_servidor.params.parambyname('desconto').asfloat := query3.fieldbyname('valor_desconto').asfloat +
  (query3.FIELDBYNAME('VALOR_TOTAL').ASFLOAT * rPercentual);
  frmmodulo.query_servidor.Params.ParamByName('UNITARIO').ASFLOAT := query3.FIELDBYNAME('VALOR_UNITARIO').ASFLOAT;

  frmmodulo.query_servidor.Params.ParamByName('TOTAL').ASFLOAT := query3.FIELDBYNAME('VALOR_TOTAL').ASFLOAT -
  (query3.FIELDBYNAME('VALOR_TOTAL').ASFLOAT * rPercentual);

  if (query3.fieldbyname('aliquota').asfloat > 0) and
  (query3.fieldbyname('cst').asstring = '000') then
  begin
  frmmodulo.query_servidor.Params.ParamByName('base_calculo').ASFLOAT := frmmodulo.query_servidor.Params.ParamByName('TOTAL').ASFLOAT;
  frmmodulo.query_servidor.Params.ParamByName('valor_icms').ASFLOAT := frmmodulo.query_servidor.Params.ParamByName('TOTAL').ASFLOAT* query3.FIELDBYNAME('aliquota').ASFLOAT / 100;
  end
  else
  begin
  frmmodulo.query_servidor.Params.ParamByName('base_calculo').ASFLOAT := 0;
  frmmodulo.query_servidor.Params.ParamByName('valor_icms').ASFLOAT := 0;
  end;
  end
  else
  begin
  frmmodulo.query_servidor.params.parambyname('desconto').asfloat := query3.fieldbyname('valor_desconto').asfloat;
  frmmodulo.query_servidor.Params.ParamByName('UNITARIO').ASFLOAT := query3.FIELDBYNAME('VALOR_UNITARIO').ASFLOAT;
  frmmodulo.query_servidor.Params.ParamByName('TOTAL').ASFLOAT := query3.FIELDBYNAME('VALOR_TOTAL').ASFLOAT;
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
  APPLICATION.MESSAGEBOX('Erro na atualiza��o do Servidor!','Erro',mb_ok+mb_iconerror);
  end;
  ///


  frmMsg_Operador.hide;




  //
  end;


*)

// -------------------------------------------------------------------------- //
function TfrmPrincipal.codifica(Tabela: string; qtde_digitos: Integer): string;
begin
  frmmodulo.qrmestre.close;
  frmmodulo.qrmestre.sql.Clear;
  frmmodulo.qrmestre.sql.add('select * from c000000 where codigo = ''' +
    Tabela + '''');
  frmmodulo.qrmestre.Open;
  if frmmodulo.qrmestre.RecNo = 1 then
  begin
    if frmmodulo.qrmestre.FieldByName('sequencia').asinteger < 1 then
    begin
      result := '0000000001';
      frmmodulo.qrmestre.Edit;
      frmmodulo.qrmestre.FieldByName('sequencia').asinteger := 2;
      frmmodulo.qrmestre.Post;

    end
    else
    begin
      result := zerar(inttostr(frmmodulo.qrmestre.FieldByName('sequencia')
        .asinteger), qtde_digitos);
      frmmodulo.qrmestre.Edit;
      frmmodulo.qrmestre.FieldByName('sequencia').asinteger :=
        frmmodulo.qrmestre.FieldByName('sequencia').asinteger + 1;
      frmmodulo.qrmestre.Post;
    end;
  end
  else
  begin
    Showmessage('N�o foi poss�vel concluir com a opera��o!' + #13 +
      'Erro: C�digo de sequ�ncia n�o encontrado na tabela de c�digos.');
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Application.MessageBox('Confirma o encerramento do sistema?', 'Aviso',
    mb_yesno + MB_ICONWARNING) = idNo then
  begin
    abort;
  end
  else
  begin
    // liberar array da memoria
    Finalize(men);
    Finalize(tbTotalizador);

    // liberar sistema da memoria
    Action := cafree;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
  Registro: TRegistry;
begin
  // Configura��es para gaveta e tipo de impressora - nao remover o extractfilepath
  iImpressora :=
    StrToInt(frmPrincipal.LerIni(ExtractFilePath(Application.ExeName) +
    'CFG\cfg.ini', 'IMPRESSORA', 'TIPO', '0'));
  iGaveta := StrToInt(frmPrincipal.LerIni(ExtractFilePath(Application.ExeName) +
    'CFG\cfg.ini', 'GAVETA', 'LOCAL', '0'));
       //DARLON SANTOS
  case iImpressora of
    0:
      begin // Sem Impressora
        TipoImpressora := SemImpressora;
      end;
    1:
      begin // Nao Fiscal
        TipoImpressora := NaoFiscal;
      end;
    2:
      begin // Fiscal
        TipoImpressora := Fiscal;
      end;

  end;

  case iGaveta of
    0:
      begin // Sem Gaveta
        GavetaImpressora := SemGaveta;
      end;
    1:
      begin // Gaveta Impressora Nao Fiscal
        GavetaImpressora := GavImpNaoFiscal;
      end;
    2:
      begin // Gaveta Impressora Fiscal
        GavetaImpressora := GavImpFiscal;
      end;

  end;

  Top := 0;
  Left := 0;

  frmmodulo := TfrmModulo.Create(self);

  try
    frmmodulo.conexao.Connected := false;
    frmmodulo.conexao.Database := frmPrincipal.LerIni
      (ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'Dados',
      'Local_Base', '0');
    frmmodulo.conexao.Connected := true;

    try
      if frmPrincipal.LerIni(ExtractFilePath(Application.ExeName) +
        'CFG\cfg.ini', 'Dados', 'Servidor_Ativo', 'SIM') = 'SIM' then
      begin
        frmmodulo.Conexao_Servidor.Connected := false;
        frmmodulo.Conexao_Servidor.Server :=
          frmPrincipal.LerIni(ExtractFilePath(Application.ExeName) +
          'CFG\cfg.ini', 'Dados', 'Servidor_Host', '');
        frmmodulo.Conexao_Servidor.Database :=
          frmPrincipal.LerIni(ExtractFilePath(Application.ExeName) +
          'CFG\cfg.ini', 'Dados', 'Servidor_Base', '');
        frmmodulo.Conexao_Servidor.Connected := true;
        bServidor_Conexao := true;

        frmmodulo.conBASE.Connected := false;
        frmmodulo.conBASE.HostName :=  LerIni(ExtractFilePath(Application.ExeName) +  'CFG\cfg.ini', 'Dados', 'Servidor_Host', '');
        frmmodulo.conBASE.Database :=  LerIni(ExtractFilePath(Application.ExeName) +  'CFG\cfg.ini', 'Dados', 'Servidor_Base', '');
        frmmodulo.conBASE.Connected := true;

      end
      else
      begin
        bServidor_Conexao := false;
      end;

      // balanca
      frmmodulo.Balancas.Desativar;
      // Modelos --> 0 --> Nenhum , 1 --> Filizola, 2 --> Toledo
      IF StrToInt(frmPrincipal.LerIni(ExtractFilePath(Application.ExeName) +
        'CFG\cfg.ini', 'Balanca', 'Modelo', '0')) <> 0 THEN
      BEGIN
        frmmodulo.Balancas.Modelo :=
          TACBrBALModelo
          (StrToInt(frmPrincipal.LerIni(ExtractFilePath(Application.ExeName) +
          'CFG\cfg.ini', 'Balanca', 'Modelo', '0')));
        frmmodulo.Balancas.Device.HandShake :=
          TACBrHandShake
          (StrToInt(frmPrincipal.LerIni(ExtractFilePath(Application.ExeName) +
          'CFG\cfg.ini', 'Balanca', 'Handshaking', '-1')));
        frmmodulo.Balancas.Device.Parity :=
          TACBrSerialParity
          (StrToInt(frmPrincipal.LerIni(ExtractFilePath(Application.ExeName) +
          'CFG\cfg.ini', 'Balanca', 'Parity', '2')));
        frmmodulo.Balancas.Device.Stop :=
          TACBrSerialStop
          (StrToInt(frmPrincipal.LerIni(ExtractFilePath(Application.ExeName) +
          'CFG\cfg.ini', 'Balanca', 'Stopbits', '2')));
        frmmodulo.Balancas.Device.Porta :=
          frmPrincipal.LerIni(ExtractFilePath(Application.ExeName) +
          'CFG\cfg.ini', 'Balanca', 'Porta', 'COM1');
        frmmodulo.Balancas.Device.Data :=
          StrToInt(frmPrincipal.LerIni(ExtractFilePath(Application.ExeName) +
          'CFG\cfg.ini', 'Balanca', 'Databits', '8'));
        frmmodulo.Balancas.Device.Baud :=
          StrToInt(frmPrincipal.LerIni(ExtractFilePath(Application.ExeName) +
          'CFG\cfg.ini', 'Balanca', 'Baudrate', '8'));
        iBal_time :=
          StrToInt(frmPrincipal.LerIni(ExtractFilePath(Application.ExeName) +
          'CFG\cfg.ini', 'Balanca', 'Timeout', ''));
      END;

      // ecf porta
      sECF_Porta := frmPrincipal.LerIni(ExtractFilePath(Application.ExeName) +
        'CFG\cfg.ini', 'Impressora', 'Porta', '');
    except
      bServidor_Conexao := false;
    end;
  except
    Application.MessageBox
      (pwidechar('N�o foi poss�vel conectar ao banco de dados local!' + #13 +
      'Caminho: ' + frmPrincipal.LerIni(ExtractFilePath(Application.ExeName) +
      'CFG\cfg.ini', 'Dados', 'Local_Base', '0') + #13 +
      ' O sistema ser� finalizado!'), 'Erro', mb_ok + mb_iconerror);
    Application.Terminate;
    exit;
  end;

  // bHabilita_msg := true;

  try
    AcertaPadraoData;
  except
  end;

  // abrir arquivo .ini
  Arquivo_ini := TIniFile.Create('.\cfg\Paf.ini');

  // [PAF]
  // NOME
  sPAF_Nome := Cript('D', Arquivo_ini.ReadString('D37DEB63', 'C84EC847C0', ''));
  // VERSAO
  sPAF_Versao := Cript('D', Arquivo_ini.ReadString('D37DEB63',
    '49C659FA0271F3', ''));
  // MD5
  sPAF_MD5 := Cript('D', Arquivo_ini.ReadString('D37DEB63', '2329383C', ''));
  // LAUDO
  sPAF_Laudo := Cript('D', Arquivo_ini.ReadString('D37DEB63', '2329383D', ''));

   //darlon santos
  //  pstatus.Panels[1].Text := sPAF_Nome + ' - ' + sPAF_Versao;
//  pstatus.Panels[2].Text := 'Laudo PAF-ECF: ' + sPAF_Laudo;

  // EXECUTAVEL
  sPAF_Executavel := Cript('D', Arquivo_ini.ReadString('D37DEB63',
    '75E369FF0F569991D64CD1', ''));

  // [EMPRESA DESENVOLVEDORA]
  // NOME
  sPAF_Empresa := Cript('D',
    Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1',
    '61F613313A', ''));
  // CNPJ
  sPAF_CNPJ := Cript('D',
    Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1',
    '031F38D968', ''));
  // IE
  sPAF_IE := Cript('D', Arquivo_ini.ReadString
    ('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1', '75E778', ''));
  // IM
  sPAF_IM := Cript('D', Arquivo_ini.ReadString
    ('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1', '8696B6', ''));
  // TELEFONE
  sPAF_Telefone := Cript('D',
    Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1',
    '8FBA55F07AF271F40B', ''));
  // ENDERECO
  sPAF_Endereco := Cript('D',
    Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1',
    '8FBA55F07AF271F40c', ''));
  // CONTATO
  sPAF_Contato := Cript('D',
    Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1',
    '8FBA55F07AF271F40D', ''));

  // [ECF]
  // MARCA
  sECF_Marca := Cript('D', Arquivo_ini.ReadString('B9A7BF57',
    '13392FD058AB', ''));
  // COD DO ECF
  iECF_Modelo := StrToInt(Cript('D', Arquivo_ini.ReadString('B9A7BF57',
    '13392FD058AC', '0')));
  // MODELO
  sECF_Modelo := Cript('D', Arquivo_ini.ReadString('B9A7BF57',
    'A4A8A2B7B0CE2D', ''));
  // TIPO
  sECF_Tipo := Cript('D', Arquivo_ini.ReadString('B9A7BF57', '6E9BB153EE', ''));
  // SERIAL
  sECF_Serial :=
    Trim(TrimLeft(TrimRight(Cript('D', Arquivo_ini.ReadString('B9A7BF57',
    'D875EF1310639C', '')))));
  // NUMERO
  sECF_Caixa := Cript('D', Arquivo_ini.ReadString('B9A7BF57',
    '7299BB58D11656', ''));
  // CNIF
  sECF_Codigo_Sefa := Cript('D', Arquivo_ini.ReadString('B9A7BF57',
    '5CC640D853', ''));
  // USUARIO
  sECF_usuario := Cript('D', Arquivo_ini.ReadString('B9A7BF57',
    'B655FD020F53AFB5', ''));
  // PERMITE_ISSQN
  sECF_Desconto_Iss := Cript('D', Arquivo_ini.ReadString('B9A7BF57',
    'B058C84ADB1758D607001A38CF27', ''));
  // DIRETORIO_:= Cript('D',Arquivo_FISCAL
  sECF_Diretorio_MFD := Cript('D', Arquivo_ini.ReadString('B9A7BF57',
    'BC58F41617599BA6DE7E948094DC020A2526D354D36AE6609C', ''));


  // [USUARIO]

  // NOME
  sEmpresa_Nome := Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF',
    '5EF5100C1D', ''));
  // CNPJ
  sEmpresa_CNPJ := Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF',
    'C855F6162C', ''));
  // IE
  sEmpresa_IE := Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF',
    '292B25', ''));
  // IM
  sEmpresa_IM := Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF',
    '3ADA7D', ''));
  // ENDERECO
  sEmpresa_Endereco := Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF',
    '3ADA7E', '')) + ' ' +
  { BAIRRO } Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF', '3ADA7F',
    '')) + ' ' +
  { CIDADE } Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF', '3ADA7G',
    '')) + ' ' +
  { UF } Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF', '3ADA7H',
    '')) + ' ' +
  { CEP } Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF', '3ADA7I', ''));
  // UF
  sEmpresa_UF := Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF',
    '3ADA7H', ''));

  // TIPO DE ATIVIDADE
  // 1 NORMAL, 2 AUTOPECAS , 3 POSTO , 4 RESTAURANTE
  sRamo_Tipo := Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF',
    '3ADA80', ''));

  // [OUTRAS OPCOES]
  // PRE-VENDA
  if Cript('D', Arquivo_ini.ReadString('43CB7499A7DA1D76F41511353CB6',
    'D67E859B84E81D2055C6', '')) = 'ATIVADO' then
    bPermite_Prevenda := true
  else
    bPermite_Prevenda := false;

  // DAV_ECF
  if Cript('D', Arquivo_ini.ReadString('43CB7499A7DA1D76F41511353CB6',
    '78E57299B4CB3CC9', '')) = 'ATIVADO' then
    bPermite_DAV_ECF := true
  ELSE
    bPermite_DAV_ECF := false;

  // DAV_NF
  if Cript('D', Arquivo_ini.ReadString('43CB7499A7DA1D76F41511353CB6',
    '6AF76C93BE3FB6', '')) = 'ATIVADO' then
    bPermite_DAV_NF := true
  ELSE
    bPermite_DAV_NF := false;

  // OS
  if Cript('D', Arquivo_ini.ReadString('43CB7499A7DA1D76F41511353CB6',
    '6AF76C93BE3FB7', '')) = 'ATIVADO' then
    bPermite_OS := true
  ELSE
    bPermite_OS := false;

  // OS  - tipo de dav
  if Cript('D', Arquivo_ini.ReadString('43CB7499A7DA1D76F41511353CB6',
    '6AF76C93BE3FC8', '')) = 'ATIVADO' then
    iDav_Os_tipo := 1
  ELSE
    iDav_Os_tipo := 0;
  {
    bPermite_DAV_NF := true;
    bPermite_OS := true;
    iDav_Os_tipo := 1;
    bPermite_DAV_ECF := true;
  }

  // liberar arquivo ini da memoria
  Arquivo_ini.Free;

  // codigo da empresa
  IF bServidor_Conexao THEN
  BEGIN
    frmmodulo.qrfilial.Open;
    sempresa_Codigo := frmmodulo.qrfilial.FieldByName('codigo').asstring;
    sempresa_ibge := frmmodulo.qrfilial.FieldByName
      ('COD_MUNICIPIO_IBGE').asstring;
    sempresa_Rua := frmmodulo.qrfilial.FieldByName('endereco').asstring;
    sempresa_Numero := frmmodulo.qrfilial.FieldByName('numero').asstring;
    sempresa_Bairro := frmmodulo.qrfilial.FieldByName('bairro').asstring;
    sEmpresa_Cidade := frmmodulo.qrfilial.FieldByName('cidade').asstring;
    sempresa_complemento := frmmodulo.qrfilial.FieldByName
      ('complemento').asstring;
    sempresa_CEP := frmmodulo.qrfilial.FieldByName('Cep').asstring;
    sempresa_telefone := frmmodulo.qrfilial.FieldByName('telefone').asstring;
    sempresa_fax := frmmodulo.qrfilial.FieldByName('fax').asstring;
    sempresa_email := frmmodulo.qrfilial.FieldByName('email').asstring;
  END
  ELSE
  BEGIN
    sempresa_Codigo := '';
    sempresa_ibge := '';
    sempresa_Rua := '';
    sempresa_Numero := '';
    sempresa_Bairro := '';
    sEmpresa_Cidade := '';
    sempresa_complemento := '';
    sempresa_CEP := '';
    sempresa_telefone := '';
    sempresa_fax := '';
    sempresa_email := '';
  END;

  // abrir banco de dados de configuracoes local
  frmmodulo.query.close;
  frmmodulo.query.sql.Clear;
  frmmodulo.query.sql.add('select * from config');
  frmmodulo.query.Open;

  isenha_desconto := frmmodulo.query.FieldByName('senha_desconto').asinteger;
  rDesconto_maximo := frmmodulo.query.FieldByName('desconto_maximo').asfloat;

  iComprovente_Crediario := frmmodulo.query.FieldByName('COMPROVANTE_CREDIARIO')
    .asinteger;
  iComprovante_Crediario_produto := frmmodulo.query.FieldByName
    ('COMPROVANTE_CREDIARIO_PRODUTO').asinteger;

  sTotalizador_Crediario := frmmodulo.query.FieldByName
    ('TOTALIZADOR_NF_CREDIARIO').asstring;
  sNome_Totalizador_Crediario := frmmodulo.query.FieldByName
    ('Nome_TOTALIZADOR_NF_CREDIARIO').asstring;

  sTotalizador_Recebimento := frmmodulo.query.FieldByName
    ('TOTALIZADOR_NF_RECEBIMENTO').asstring;
  sNome_Totalizador_Recebimento := frmmodulo.query.FieldByName
    ('Nome_TOTALIZADOR_NF_RECEBIMENTO').asstring;

  sIndice_Sangria := frmmodulo.query.FieldByName('totalizador_sangria')
    .asstring;
  sIndice_Suprimento := frmmodulo.query.FieldByName
    ('totalizador_suprimento').asstring;

  // alimentar as variaveis com as formas de pagamentos pre-definidas que exigem tratamentos
  // especiais no fechamento da venda
  if frmmodulo.query.RecordCount > 0 then
  begin
    lForma_Cheque := TstringList.Create;
    lForma_Cheque.CommaText := frmmodulo.query.FieldByName
      ('forma_cheque').asstring;


    lForma_Cartao_cred := TstringList.Create;
    lForma_Cartao_cred.CommaText := frmmodulo.query.FieldByName
      ('forma_cartao_cred').asstring;

      lForma_Cartao_deb := TstringList.Create;
    lForma_Cartao_deb.CommaText := frmmodulo.query.FieldByName
      ('forma_cartao_deb').asstring;



    lForma_Crediario := TstringList.Create;
    lForma_Crediario.CommaText := frmmodulo.query.FieldByName
      ('forma_crediario').asstring;

    lForma_Convenio := TstringList.Create;
    lForma_Convenio.CommaText := frmmodulo.query.FieldByName
      ('forma_convenio').asstring;

    lForma_dinheiro := TstringList.Create;
    lForma_dinheiro.CommaText := frmmodulo.query.FieldByName
      ('forma_dinheiro').asstring;
  end;

  LerFormasPagto;

  // alimentando as variaveis globais do sistema

  bTruncar_valor := true;

  If frmmodulo.query.FieldByName('muda_qtde').asinteger = 1 then
    bMuda_qtde := true
  else
    bMuda_qtde := false;

  if frmmodulo.query.FieldByName('muda_unitario').asinteger = 1 then
    bMuda_unitario := true
  else
    bMuda_unitario := false;
  if frmmodulo.query.FieldByName('muda_total').asinteger = 1 then
    bMuda_total := true
  else
    bMuda_total := false; // somente qdo for posto de combustivel

  bSenha_Cancel_Item := true;
  bSenha_Cancel_Cupom := true;

  bCadastra_Cheque := true;

  bCadastra_Crediario := true;

  sPasta_config := ExtractFilePath(Application.ExeName) + '\cfg';
  sArquivo_config := 'cfg.ini';
  sConfiguracoes := sPasta_config + '\' + sArquivo_config;

  iTamanho_codigo_balanca := StrToInt(LerIni(sConfiguracoes, 'BALANCA',
    'NDIGITOS', '5'));

  bBusca_foto_produto := StrToBool(LerIni(sConfiguracoes, 'PDV', 'HAB_IMG',
    BoolToStr(false)));
  sPasta_foto_produto := LerIni(sConfiguracoes, 'PDV', 'CAMINHO_IMG',
    ExtractFilePath(Application.ExeName) + '\img\produtos\');

  bHabLogoMarca := StrToBool(LerIni(sConfiguracoes, 'PDV', 'HAB_LOGO',
    BoolToStr(false)));
  sLogoMarca := LerIni(sConfiguracoes, 'PDV', 'CAMINHO_LOGO', '');

  sPasta_sistema := ExtractFilePath(Application.ExeName);

  // TEF
  if frmmodulo.query.FieldByName('usa_tef').asinteger = 1 then
  begin
    bTEF := true;
    if frmmodulo.query.FieldByName('usa_tef_tecban').asinteger = 1 then
      bTEF_TecBan := true
    else
      bTEF_TecBan := false;
  end
  else
  begin
    bTEF := false;
    bTEF_TecBan := false;
  end;


  // alimentacao das variaveis de identificaco de consumidor para atender
  // CAT52 - Nf paulista

  if frmmodulo.query.FieldByName('nf_paulista').asinteger = 1 then
    bIdentifica_consumidor := true
  else
    bIdentifica_consumidor := false;
  // iTeclado_Modelo := 0;

  {
    0 NENHUM
    1 BEMATECH
    2 DARUMA
    3 SWEDA
    4 EPSON
  }


  // tipo da venda
  // 1 - VENDA DE SUPERMERCADO
  // 2 - PREVENDA
  // 3 - MECANICA
  // 4 - POSTO DE COMBUSTIVEL
  // 5 - RESTAURANTE

  iTipo_Venda := 1;

  {
    Registro1.Empresa.CNPJ :=  ApenasNumerosStr(emitente_cnpj);
    Registro1.Empresa.NomeFantasia := emitente_fantasia;
    Registro1.BancoDados.Banco := frmModulo.Conexao_Servidor.Server + ':' + frmModulo.Conexao_Servidor.Database;
    Registro1.Executar;

    Registro2.Visible := (Registro1.Licenca.TipoLicenca = LicTrial) or
    (DaysBetween(Date, Registro1.Licenca.DataValidade) <= Registro1.Licenca.AvisarFaltanto );
  }
  { TODO -oMizael -cNFC-e : No projeto nfce nao imprime na impressora fiscal }
  {201254691}
  TipoImpressora := SemImpressora;

end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
 //DARLON SANTOS
 imgm_imagens.Picture.LoadFromFile('C:\Softlogus\server\img\logo.jpg');
  Brush.Style := bsClear;
  lblVersao.HTMLText.Clear;
  lblVersao.HTMLText.Add('<P align=' + QuotedStr('right')
    + '>Vers�o ' + ExeInfo1.FileVersion + '</P>');
   status.Panels.Items[0].Text := 'Vers�o do Sistema:';
       status.Panels.Items[1].Text := lblVersao.Text;
 end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.ECF1Click(Sender: TObject);
begin
  frmConfig_ecf := tfrmConfig_ECF.Create(self);
  frmConfig_ecf.showmodal;
end;
// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.FormDestroy(Sender: TObject);
begin
  cECF_Fecha(iECF_Modelo);
end;
// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.NotaFiscalMod2SerieD1Click(Sender: TObject);
begin
  frmNotafiscal_menu := tfrmNotaFiscal_menu.Create(self);
  frmNotafiscal_menu.showmodal;
end;

procedure TfrmPrincipal.pstatusClick(Sender: TObject);
begin

end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.MenuFiscal1Click(Sender: TObject);
begin
  frmMenu_fiscal := tfrmMenu_fiscal.Create(self);
  frmMenu_fiscal.showmodal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.Balana1Click(Sender: TObject);
begin
  frmconfig_balanca := tfrmconfig_balanca.Create(self);
  frmconfig_balanca.showmodal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.Geral1Click(Sender: TObject);
begin
  frmconfig := tfrmconfig.Create(self);
  frmconfig.showmodal;
  frmconfig.Free;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.AdvGlowButton3Click(Sender: TObject);
begin
  
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.actConfiguracoesExecute(Sender: TObject);
begin
// frmsenha_supervisor := tfrmsenha_supervisor.create(self);
//  frmsenha_supervisor.showmodal;
//
//  if not bSupervisor_autenticado then
//    Exit;
  frmconfig := tfrmconfig.create(self);
  frmconfig.showmodal;
// frmconfig := tfrmconfig.Create(self);
//  frmconfig.showmodal;
end;

procedure TfrmPrincipal.actRelatorioExecute(Sender: TObject);
begin
// frmsenha_supervisor := tfrmsenha_supervisor.create(self);
//  frmsenha_supervisor.showmodal;
//
//  if not bSupervisor_autenticado then
//    Exit;

  frmNotasconsumidor := tfrmNotasconsumidor.create(self);
  frmNotasconsumidor.showmodal;
  FreeAndNil(frmNotasconsumidor);
end;

procedure TfrmPrincipal.actVendasExecute(Sender: TObject);
begin
CarregaSistemaVenda;
end;

procedure TfrmPrincipal.act_vendasExecute(Sender: TObject);
begin
  CarregaSistemaVenda;
end;

procedure TfrmPrincipal.AdvGlowButton175Click(Sender: TObject);
begin
  frmconfig := tfrmconfig.Create(self);
  frmconfig.showmodal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.AdvGlowButton1Click(Sender: TObject);
begin
  frmNotafiscal_menu := tfrmNotaFiscal_menu.Create(self);
  frmNotafiscal_menu.showmodal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.AdvGlowButton2Click(Sender: TObject);
begin
  frmMenu_fiscal := tfrmMenu_fiscal.Create(self);
  frmMenu_fiscal.showmodal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.AdvGlowButton4Click(Sender: TObject);
begin
  close;
end;

procedure TfrmPrincipal.AdvGlowButton5Click(Sender: TObject);
begin
   CarregaSistemaVenda;
end;

procedure TfrmPrincipal.AdvSmoothToggleButton1Click(Sender: TObject);
begin
frmNotafiscal_menu := tfrmNotaFiscal_menu.Create(self);
  frmNotafiscal_menu.showmodal;
end;

procedure TfrmPrincipal.CarregaSistemaVenda;
var
  sForma: string;
  i, x: Integer;
  // variaveis para acertar a data e hora
  dDataHora: TSystemTime;
  Ano, Mes, Dia, H, M, s, Mil: word;
  sLinha: string;
  txt: textFile;

begin
  bativa_venda := true;
  sPortaNaoFiscal := LerIni(sConfiguracoes, 'IMPRESSORA', 'impnaof', 'LPT1');
  sPortaGaveta := LerIni(sConfiguracoes, 'GAVETA', 'gavnaof', 'LPT1');
  iQtdLinhasFinal := IsInteger(LerIni(sConfiguracoes, 'IMPRESSORA',
    'qtdlfin', '8'));

  sFuncao_Senha := '001';
  frmSenha := tfrmSenha.Create(self);

  if Length(LerIni(sConfiguracoes, 'LOGIN', 'USUARIO', '')) = 0 then
    frmSenha.showmodal
  else
    frmSenha.LogarAutomaticamente;

  if busuario_autenticado then
    frmSenha.Free;

  iNumCaixa := IsInteger(LerIni(sConfiguracoes, 'CAIXA', 'NUMERO', '99'));
  iCFOP := (LerIni(sConfiguracoes, 'Emitente', 'CFOP', ''));
  if iNumCaixa = 0 then
  begin
    Application.MessageBox('N�mero do caixa nao definido, favor verificar',
      'Mensagem');
    exit;
  end;

  try
    Application.CreateForm(TFrmUtiSplash, frmUtiSplash);
    frmUtiSplash.Show;

    // TEF
    // tem que ser verificado antes da ecf

    IF bTEF THEN
    BEGIN
      frmUtiSplash.lb_msg.caption := 'Aguarde! Preparando ambiente TEF...';
      frmUtiSplash.p.Percent := 9;
      frmUtiSplash.Show;
      frmUtiSplash.Refresh;

      sLinha := '';
      if FileExists(sTEFTemp_Path + 'gp.tmp') then
      begin
        begin
          assignfile(txt, sTEFTemp_Path + 'gp.tmp');
          reset(txt);
          readln(txt, sLinha);
          closefile(txt);
        end;
      end;

      if sLinha = 'TECBAN' then
      begin
        itefTecban := 1;
        sTEFPath := SystemDrive + '\TEF_DISC\'
      end
      else
      begin
        if sLinha = 'HIPERCARD' then
        begin
          itefTecban := 2;
          sTEFPath := SystemDrive + '\HiperTEF\HiperLINK\'
        end
        else
        begin
          sTEFPath := SystemDrive + '\TEF_DIAL\';
          itefTecban := 0;
        end;
      end;

      TEFVerificaGerenciadorAtivo;
      TEFVerificaArquivosPendentes;
      TEFVerificaOperacaoPendente;
      // frmUtiSplash.Hide;
    end;

    if busuario_autenticado then
    begin
      // antes de iniciar a tela venda, verificar as configuracoes necessarias

      if TipoImpressora = Fiscal then
      begin
        frmUtiSplash.Hide;
        frmUtiSplash.Show;
        frmUtiSplash.lb_msg.caption := 'Carregando o sistema....';
        frmUtiSplash.Refresh;
        // VERIFICAR ECF
        // abrir porta serial
        repeat
          sMsg := cECF_Abre(iECF_Modelo, sECF_Porta);
          if sMsg <> 'OK' then
          begin
            frmUtiSplash.Hide;

            if Application.MessageBox
              (pwidechar('Erro ao tentar abrir a porta - ' + sECF_Porta + #13 +
              'Deseja tentar outra vez?'), 'ECF', mb_yesno + mb_iconerror) = idNo
            then
            begin
              Application.Terminate;
              exit;
            end;

            frmUtiSplash.Show;
            frmUtiSplash.Refresh;
          end;
        until sMsg = 'OK';

        frmUtiSplash.Hide;

        frmUtiSplash.lb_msg.caption := 'Aguarde! Localizando o ECF...';
        frmUtiSplash.p.Percent := 9 * 2;
        frmUtiSplash.Show;
        frmUtiSplash.Refresh;

        bativa_venda := true;

        // liberar/bloquear porta caso o ecf seja daruma
        if iECF_Modelo = 2 then
          cECF_Daruma_Libera_Porta('NAO')
        else
          cECF_Daruma_Libera_Porta('SIM');

        bcupom_aberto := false;

        // verificando se o ECF esta ligado
        repeat
          sMsg := cECF_Ligada(iECF_Modelo);
          if sMsg <> 'OK' then
          begin
            IF sMsg <> ' Cupom Aberto' then
            begin
              frmUtiSplash.Hide;
              if Application.MessageBox
                (pwidechar('ECF desligado ou n�o conectado!' + #13 +
                'Mensagem: ' + sMsg + #13 + 'Deseja tentar outra vez?'), 'ECF',
                mb_yesno + mb_iconerror) = idNo then
              begin
                break;
              end
              else
              begin
                frmUtiSplash.Show;
                frmUtiSplash.Refresh;
              end;
            end
            else
            begin
              bcupom_aberto := true;
              sMsg := 'OK';
            end;
          end;
        until sMsg = 'OK';

        if sMsg = 'OK' then
        begin
          // desligar as janelas da sweda
          sMsg := cECF_Desliga_Janelas(iECF_Modelo);

          frmUtiSplash.lb_msg.caption :=
            'Aguarde! Veficando n�mero de s�rie do ECF...';
          frmUtiSplash.p.Percent := 9 * 3;
          frmUtiSplash.Show;
          frmUtiSplash.Refresh;
          // Numero de Serie do ECF
          repeat
            sMsg := Trim(TrimLeft(TrimRight(cECF_Numero_Serie(iECF_Modelo))));
            if sMsg = 'ERRO' then
            begin
              frmUtiSplash.Hide;
              if Application.MessageBox
                ('Erro ao tentar obter o n�mero de s�rie do ECF!' + #13 +
                'Deseja tentar outra vez?', 'ECF', mb_yesno + mb_iconerror) = idNo
              then
              begin
                bativa_venda := false;
                break;
              end
              else
              begin
                frmUtiSplash.Show;
                frmUtiSplash.Refresh;
              end;
            end
            else
            begin
              if sMsg <> sECF_Serial then
              begin
                frmUtiSplash.Hide;

                Application.MessageBox
                  (pwidechar
                  ('O n�mero de s�rie da ECF n�o confere com o registrado no PAF-ECF!'
                  + #13 + 'ECF: ' + sMsg + #13 + 'PAF: ' + sECF_Serial + #13 +
                  'As fun��es de venda ser�o bloqueadas!'), 'Erro',
                  mb_ok + mb_iconerror);
                bativa_venda := false;
                break;
              end;

              frmUtiSplash.Show;
              frmUtiSplash.Refresh;
            end;
          until sMsg <> 'ERRO';

          // Numero do caixa do ECF
          if sMsg <> 'ERRO' then
          begin
            frmUtiSplash.lb_msg.caption :=
              'Aguarde! Lendo n�mero do caixa do ECF...';
            frmUtiSplash.p.Percent := 9 * 4;
            frmUtiSplash.Show;
            frmUtiSplash.Refresh;
            repeat
              sMsg := cECF_Numero_Caixa(iECF_Modelo);
              if sMsg = 'ERRO' then
              begin
                frmUtiSplash.Hide;
                if Application.MessageBox
                  ('Erro ao tentar obter o n�mero do caixa do ECF!' + #13 +
                  'Deseja tentar outra vez?', 'ECF', mb_yesno + mb_iconerror) = idNo
                then
                begin
                  bativa_venda := false;
                  break;
                end
                else
                begin
                  frmUtiSplash.Show;
                  frmUtiSplash.Refresh;
                end;
              end
              else
              begin
                if sMsg <> sECF_Caixa then
                begin
                  frmUtiSplash.Hide;

                  Application.MessageBox
                    (pwidechar
                    ('O n�mero do ECF n�o confere com o registrado no PAF-ECF!'
                    + #13 + 'ECF: ' + sMsg + #13 + 'PAF: ' + sECF_Caixa + #13 +
                    'O sistema ser� finalizado!'), 'Erro',
                    mb_ok + mb_iconerror);
                  bativa_venda := false;
                  break;

                end;

                frmUtiSplash.Show;
                frmUtiSplash.Refresh;
              end;
            until sMsg <> 'ERRO';
          end;

          // verificar a data e hora do ecf
          if sMsg <> 'ERRO' then
          begin
            frmUtiSplash.lb_msg.caption :=
              'Aguarde! Lendo data e hora do ECF...';
            frmUtiSplash.p.Percent := 9 * 5;
            frmUtiSplash.Show;
            frmUtiSplash.Refresh;
            repeat
              sMsg := cECF_Data_Hora(iECF_Modelo);
              if sMsg = 'ERRO' then
              begin
                frmUtiSplash.Hide;
                if Application.MessageBox
                  ('Erro ao tentar obter a data e hora do ECF!' + #13 +
                  'Deseja tentar outra vez?', 'ECF', mb_yesno + mb_iconerror) = idNo
                then
                begin
                  bativa_venda := false;
                  break;
                end
                else
                begin
                  frmUtiSplash.Show;
                  frmUtiSplash.Refresh;
                end;
              end
              else
              begin
                try
                  dData_Sistema := strtodate(copy(sMsg, 1, 10));
                except
                  on E: exception do
                  begin
                    frmUtiSplash.Hide;

                    Application.MessageBox
                      (pwidechar('Erro ao extrair data do ecf!' + #13 +
                      'Mensagem:' + E.Message + #13 +
                      'O sistema bloquear� as fun��es de venda!'), 'Erro',
                      mb_ok + mb_iconerror);
                    bativa_venda := false;
                    exit;

                    frmUtiSplash.Show;
                    frmUtiSplash.Refresh;
                  end;
                end;

                if dData_Sistema <> Date then
                begin

                  frmUtiSplash.Hide;

                  if Application.MessageBox
                    (pwidechar
                    ('A data do computador est� diferente da data do ECF!' + #13
                    + 'ECF: ' + DateToStr(dData_Sistema) + #13 + 'Computador: '
                    + DateToStr(Date) + #13 +
                    'Deseja corrigir a data computador'), 'Erro',
                    mb_yesno + MB_ICONWARNING) = idYes then
                  begin
                    DecodeDate(dData_Sistema, Ano, Mes, Dia);
                    DecodeTime(strtotime(copy(cECF_Data_Hora(iECF_Modelo), 12,
                      8)), H, M, s, Mil);
                    with dDataHora do
                    begin
                      wYear := Ano;
                      wMonth := Mes;
                      wDay := Dia;
                      wHour := H;
                      wMinute := M;
                      wSecond := s;
                      wMilliseconds := Mil;
                    end;
                    SetLocalTime(dDataHora);
                  end
                  else
                  begin
                    Application.MessageBox('O sistema ser� finalizado!', 'Erro',
                      mb_ok + mb_iconerror);
                    bativa_venda := false;
                    exit;
                  end;

                  frmUtiSplash.Show;
                  frmUtiSplash.Refresh;
                end
                else
                begin
                  // verificar se a hora tem diferenca de 5 minutos
                  if ((time - strtotime(copy(cECF_Data_Hora(iECF_Modelo), 12, 8)
                    )) > strtotime('00:05:00')) or
                    ((strtotime(copy(cECF_Data_Hora(iECF_Modelo), 12, 8)) -
                    time) > strtotime('00:05:00')) then
                  begin
                    frmUtiSplash.Hide;

                    if Application.MessageBox
                      (pwidechar
                      ('A hora do computador est� diferente da hora do ECF!' +
                      #13 + 'ECF: ' + copy(cECF_Data_Hora(iECF_Modelo), 12,
                      8) + #13 + 'Computador: ' + timetostr(time) + #13 +
                      'Deseja corrigir a hora do computador'), 'Erro',
                      mb_yesno + MB_ICONWARNING) = idYes then
                    begin

                      DecodeDate(dData_Sistema, Ano, Mes, Dia);
                      DecodeTime(strtotime(copy(cECF_Data_Hora(iECF_Modelo), 12,
                        8)), H, M, s, Mil);
                      with dDataHora do
                      begin
                        wYear := Ano;
                        wMonth := Mes;
                        wDay := Dia;
                        wHour := H;
                        wMinute := M;
                        wSecond := s;
                        wMilliseconds := Mil;
                      end;
                      SetLocalTime(dDataHora);
                    end
                    else
                    begin
                      // verificar se a diferenca eh maior q 59 minutos (permitido)
                      if (time - strtotime(copy(cECF_Data_Hora(iECF_Modelo), 12,
                        8)) > strtotime('00:59:59')) then
                      begin
                        Application.MessageBox('O sistema ser� finalizado!',
                          'Erro', mb_ok + mb_iconerror);
                        bativa_venda := false;
                        exit;
                      end;
                    end;

                    frmUtiSplash.Show;
                    frmUtiSplash.Refresh;
                  end;
                end;
              end;
            until sMsg <> 'ERRO';
          end;

          // verificar se a data do movimento eh igual ao do sistema
          if sMsg <> 'ERRO' then
          begin
            frmUtiSplash.lb_msg.caption :=
              'Aguarde! Extraindo data do Movimento...';
            frmUtiSplash.p.Percent := 9 * 6;
            frmUtiSplash.Show;
            frmUtiSplash.Refresh;

            repeat
              sMsg := cECF_Data_Movimento(iECF_Modelo);
              if sMsg = 'ERRO' then
              begin
                frmUtiSplash.Hide;
                if Application.MessageBox
                  ('Erro ao tentar obter a data do movimento do ECF!' + #13 +
                  'Deseja tentar outra vez?', 'ECF', mb_yesno + mb_iconerror) = idNo
                then
                begin
                  bativa_venda := false;
                  break;
                end
                else
                begin
                  frmUtiSplash.Show;
                  frmUtiSplash.Refresh;
                end;
              end
              else
              begin

                if sMsg = '00/00/2000' then
                begin
                  // sem movimento no dia
                  dData_Movimento := dData_Sistema;
                end
                else
                begin
                  try
                    dData_Movimento := strtodate(sMsg);
                  except
                    on E: exception do
                    begin
                      frmUtiSplash.Hide;

                      Application.MessageBox
                        (pwidechar
                        ('Erro ao tentar obter a data do movimento do ECF!' +
                        #13 + 'Mensagem retornada: ' + E.Message + #13 +
                        'As fun��es de venda ser�o bloqueadas!'), 'Erro',
                        mb_ok + mb_iconerror);
                      bativa_venda := false;
                      sMsg := 'ERRO';

                      frmUtiSplash.Show;
                      frmUtiSplash.Refresh;
                    end;
                  end;
                end;
              end;
            until sMsg <> 'ERRO';
          end;

          // formas de pagamento do ECF
          if sMsg <> 'ERRO' then
          begin
            frmUtiSplash.lb_msg.caption :=
              'Aguarde! Lendo as formas de Pagamento do ECF...';
            frmUtiSplash.p.Percent := 9 * 7;
            frmUtiSplash.Show;
            frmUtiSplash.Refresh;

            repeat
              sMsg := cECF_Le_Formas_Pgto(iECF_Modelo);
              if sMsg = 'ERRO' then
              begin
                frmUtiSplash.Hide;
                if Application.MessageBox
                  ('Erro ao tentar obter as formas de pagamento do ECF!' + #13 +
                  'Deseja tentar outra vez?', 'ECF', mb_yesno + mb_iconerror) = idNo
                then
                begin
                  bativa_venda := false;
                  break;
                end
                else
                begin
                  frmUtiSplash.Show;
                  frmUtiSplash.Refresh;
                end;
              end;
            until sMsg <> 'ERRO';
          end;

          // Verificar o status do caixa
          bCaixa_aberto := true;

          if sMsg <> 'ERRO' then
          begin
            frmUtiSplash.lb_msg.caption :=
              'Aguarde! Extraindo data do movimento da Redu��o Z...';
            frmUtiSplash.p.Percent := 9 * 8;
            frmUtiSplash.Show;
            frmUtiSplash.Refresh;

            repeat
              sMsg := cECF_ReducaoZ_Data_Movimento(iECF_Modelo);
              if sMsg = 'ERRO' then
              begin
                frmUtiSplash.Hide;
                if Application.MessageBox
                  ('Erro ao tentar obter a data do movimento ' +
                  'da �ltima Redu��o Z!' + #13 + 'Deseja tentar outra vez?',
                  'ECF', mb_yesno + mb_iconerror) = idNo then
                begin
                  bativa_venda := false;
                  break;
                end
                else
                begin
                  frmUtiSplash.Show;
                  frmUtiSplash.Refresh;
                end;
              end
              else
              begin // **
                insert('/', sMsg, 3);
                insert('/', sMsg, 6);
                frmmodulo.query.close;
                frmmodulo.query.sql.Clear;
                frmmodulo.query.sql.add('select * from config');
                frmmodulo.query.Open;

                if (strtodate(sMsg) = dData_Sistema) and
                  (strtodate(sMsg) = frmmodulo.query.FieldByName
                  ('caixa_data_movto').asdatetime) and
                  (frmmodulo.query.FieldByName('caixa_situacao')
                  .asstring = 'FECHADO') then
                begin
                  frmUtiSplash.Hide;

                  Application.MessageBox
                    (pwidechar('ECF j� foi emitido a Redu��o Z!' + #13 +
                    'Data do Movimento: ' + DateToStr(dData_Sistema) + #13 +
                    'Data da Redu��o Z: ' + sMsg + #13 +
                    'As fun��es de venda ser�o bloqueadas!'), 'Aten��o',
                    mb_ok + MB_ICONWARNING);

                  bativa_venda := false;

                  frmUtiSplash.Show;
                  frmUtiSplash.Refresh;
                end
                else
                begin
                  frmUtiSplash.Hide;

                  try
                    if (strtodate(sMsg) < dData_Sistema) and
                      (strtodate(sMsg) = frmmodulo.query.FieldByName
                      ('caixa_data_movto').asdatetime) and
                      (frmmodulo.query.FieldByName('caixa_situacao')
                      .asstring = 'FECHADO') then
                    begin
                      if Application.MessageBox
                        (pwidechar('C A I X A   F E C H A D O!' + #13 +
                        'Deseja realizar a sua abertura?'), 'Aviso',
                        mb_yesno + MB_ICONQUESTION) = idYes then
                      begin
                        bCaixa_aberto := false;

                      end
                      else
                      begin
                        Application.MessageBox
                          (pwidechar('As fun��es de venda ser�o bloqueadas!'),
                          'Aten��o', mb_ok + MB_ICONWARNING);
                        bativa_venda := false;
                      end;
                    end;
                  finally
                    frmUtiSplash.Show;
                    frmUtiSplash.Refresh;
                  end;
                end;
              end;
            until sMsg <> 'ERRO';
          end;

          // Verificar dos do Cadastros do sistema se eh igual ao do ecf
          sECF_Operador := zerar(inttostr(icodigo_Usuario), 6);

          if sMsg <> 'ERRO' then
          begin
            frmUtiSplash.lb_msg.caption :=
              'Aguarde! Montando tabela de al�quotas...';
            frmUtiSplash.p.Percent := 9 * 9;
            frmUtiSplash.Show;
            frmUtiSplash.Refresh;
            repeat
              sMsg := cECF_Verifica_Aliquotas(iECF_Modelo);

              if sMsg = 'ERRO' then
              begin
                frmUtiSplash.Hide;

                if Application.MessageBox
                  (pwidechar('Erro ao extrair al�quotas do ECF!' + #13 +
                  'Deseja tentar outra vez?'), 'Erro', mb_yesno + mb_iconerror)
                  = idNo then
                begin
                  bativa_venda := false;
                  break;
                end;

                frmUtiSplash.Show;
                frmUtiSplash.Refresh;
              end
              else
              begin
                frmmodulo.tbAliquota.Open;
                frmmodulo.tbAliquota.Refresh;
                laliquota := TstringList.Create;
                laliquota.CommaText := sMsg;
                for i := 0 to laliquota.Count - 1 do
                begin
                  frmmodulo.tbAliquota.insert;
                  frmmodulo.tbAliquota.FieldByName('codigo').asstring :=
                    zerar(inttostr(i + 1), 2) + 'T' + laliquota[i];
                  frmmodulo.tbAliquota.FieldByName('aliquota').asfloat :=
                    strtofloat(laliquota[i]) / 100;
                  frmmodulo.tbAliquota.Post;
                end;
                frmUtiSplash.Hide;
              end;
            until sMsg <> 'ERRO';
          end;

          // versao do software basico
          if sMsg <> 'ERRO' then
          begin
            frmUtiSplash.lb_msg.caption :=
              'Aguarde! Lendo dados do Software B�sico do ECF...';
            frmUtiSplash.p.Percent := 9 * 10;
            frmUtiSplash.Show;
            frmUtiSplash.Refresh;

            repeat
              sMsg := cECF_Versao_SB(iECF_Modelo);
              if sMsg = 'ERRO' then
              begin
                frmUtiSplash.Hide;
                if Application.MessageBox
                  ('Erro ao tentar obter vers�o do software b�sico!' + #13 +
                  'Deseja tentar outra vez?', 'ECF', mb_yesno + mb_iconerror) = idNo
                then
                begin
                  bativa_venda := false;
                  break;
                end
                else
                begin
                  frmUtiSplash.Show;
                  frmUtiSplash.Refresh;
                end;
              end
              else
                sECF_Versao_SB := sMsg;
            until sMsg <> 'ERRO';
          end;
          // versao do software basico
          if sMsg <> 'ERRO' then
          begin
            frmUtiSplash.lb_msg.caption :=
              'Aguarde! Lendo dados do Software B�sico do ECF...';
            frmUtiSplash.p.Percent := 9 * 11;
            frmUtiSplash.Show;
            frmUtiSplash.Refresh;

            repeat
              sMsg := cECF_Data_Hora_SB(iECF_Modelo);
              if sMsg = 'ERRO' then
              begin
                frmUtiSplash.Hide;
                if Application.MessageBox
                  ('Erro ao tentar obter data e hora do software b�sico!' + #13
                  + 'Deseja tentar outra vez?', 'ECF', mb_yesno + mb_iconerror)
                  = idNo then
                begin
                  bativa_venda := false;
                  break;
                end
                else
                begin
                  frmUtiSplash.Show;
                  frmUtiSplash.Refresh;
                end;
              end
              else // 25072008081622
              begin
                sECF_Data_SB := copy(sMsg, 5, 4) + copy(sMsg, 3, 2) +
                  copy(sMsg, 1, 2);
                sECF_Hora_SB := copy(sMsg, 9, 6);
              end;
            until sMsg <> 'ERRO';
          end;

          // GUIO: Extrai e armazena em buffer os nomes dos relat�rios gerenciais
          if sMsg <> 'ERRO' then
          begin
            frmUtiSplash.lb_msg.caption :=
              'Aguarde! Montando tabela de Relat�rios Gerenciais...';
            frmUtiSplash.p.Percent := 100;
            frmUtiSplash.Show;
            frmUtiSplash.Refresh;

            repeat
              sMsg := cECF_VerificarRelatoriosGerenciais(iECF_Modelo);

              if sMsg = 'ERRO' then
              begin
                frmUtiSplash.Hide;

                if Application.MessageBox
                  (pwidechar
                  ('Erro ao verificar relat�rios gerenciais cadastrados no ECF!'
                  + #13 + 'Deseja tentar outra vez?'), 'Erro',
                  mb_yesno + mb_iconerror) = idNo then
                begin
                  bativa_venda := false;
                  break;
                end;

                frmUtiSplash.Show;
                frmUtiSplash.Refresh;
              end;
            until sMsg <> 'ERRO';
          end;

          // GUIO: Oculta o Splash caso ainda esteja visivel
          frmUtiSplash.Hide;

        end
        else
        begin
          bativa_venda := false;
        end;

        // verificar nas configuracoes qual o tipo de venda
        if iTipo_Venda = 1 then // venda PDV SUPERMERCADO
        BEGIN
          if bativa_venda then
          begin
            if not bcupom_aberto then
            begin
              sMsg := cECF_Cupom_Fiscal_Aberto(iECF_Modelo);

              if (sMsg <> 'SIM') then
              begin
                if not compara_totalizador then
                begin
                  Application.MessageBox
                    ('N�o foi poss�vel recompor o totalizador do PAF ECF!' + #13
                    + 'As fun��es de vendas ser�o bloqueadas!' + #13 +
                    'Favor entrar em contato com o suporte t�cnico para ' +
                    'resolver esta situa��o!', 'Erro', mb_ok + mb_iconerror);

                  exit;
                end;
              END;
            end;

            FRMVENDA := TFRMVENDA.Create(self);
            FRMVENDA.lb_numero_serie.caption := sECF_Serial;
            FRMVENDA.lb_ecf_caixa.caption := sECF_Caixa;
            FRMVENDA.lb_operador.caption := copy(sNome_Operador, 1, 10);
            FRMVENDA.showmodal;
          end
          else
          begin
            Application.MessageBox
              ('ECF n�o est� pronto! As fun��es de venda ser�o bloqueadas!',
              'Aten��o', mb_ok + MB_ICONWARNING);

          end;
        END;
      end
      else
      begin // � nao fiscal ou sem impressora impressora

        dData_Sistema := Date;
        dData_Movimento := dData_Sistema;
        frmmodulo.query.close;
        frmmodulo.query.sql.Clear;
        frmmodulo.query.sql.add('select * from config');
        frmmodulo.query.Open;
        bCaixa_aberto := true;

        try
          if (Date = frmmodulo.query.FieldByName('caixa_data_movto').asdatetime)
            and (frmmodulo.query.FieldByName('caixa_situacao')
            .asstring = 'FECHADO') then
            if (Date = frmmodulo.query.FieldByName('caixa_data_movto')
              .asdatetime) and (frmmodulo.query.FieldByName('caixa_situacao')
              .asstring = 'FECHADO') then
            begin

              if Application.MessageBox
                (pwidechar('C A I X A   F E C H A D O!' + #13 +
                'Deseja realizar a sua abertura?'), 'Aviso',
                mb_yesno + MB_ICONQUESTION) = idYes then
              begin
                bCaixa_aberto := false;
                bativa_venda := true;
              end
              else
              begin
                Application.MessageBox
                  (pwidechar('As fun��es de venda ser�o bloqueadas!'),
                  'Aten��o', mb_ok + MB_ICONWARNING);
                bativa_venda := false;
              end;

            end;
        finally
          frmUtiSplash.Show;
          frmUtiSplash.Refresh;
        end;

        if bativa_venda then
        begin
          FRMVENDA := TFRMVENDA.Create(self);
          FRMVENDA.lb_numero_serie.caption := sECF_Serial;
          FRMVENDA.lb_ecf_caixa.caption := sECF_Caixa;
          FRMVENDA.lb_operador.caption := copy(sNome_Operador, 1, 10);
          FRMVENDA.showmodal;
        end;
      end;

    end
    else
    begin // Se o Usuario nao foi altenticado Finaliza
      Application.Terminate;
    end;

  finally
    FreeAndNil(frmUtiSplash);
  end;

end;

procedure TfrmPrincipal.VendasPDV1Click(Sender: TObject);
begin
  CarregaSistemaVenda;
end;

procedure TfrmPrincipal.GravaIni(sArquivo, Secao, Linha, Valor: String);
var
  Ini: TIniFile;
  Arquivo: String;
begin

  Arquivo := sArquivo;
  Ini := TIniFile.Create(Arquivo);
  Ini.WriteString(Secao, Linha, Valor);
  Ini.Free;

end;

function TfrmPrincipal.LerIni(sArquivo, Secao, Linha, Def: String): String;
var
  Ini: TIniFile;
begin

  Ini := TIniFile.Create(sArquivo);
  result := Ini.ReadString(Secao, Linha, Def);
  Ini.Free;

end;

function TfrmPrincipal.LerFormasPagto: Boolean;
var
  formas: string;
begin
  try
    result := false;
    frmmodulo.tbForma_pgto.close;
    frmmodulo.tbForma_pgto.Open;

    if frmmodulo.tbForma_pgto.RecordCount > 0 then
      frmmodulo.tbForma_pgto.Delete;

    // Dinheiro
    frmmodulo.tbForma_pgto.insert;
    frmmodulo.tbForma_Pgtoid.Value := 1;
    if Pos(',', lForma_dinheiro.CommaText) > 0 then
      frmmodulo.tbForma_PgtoNome.Value := copy(lForma_dinheiro.CommaText, 1,
        Pos(',', lForma_dinheiro.CommaText) - 1)
    else
      frmmodulo.tbForma_PgtoNome.Value := copy(lForma_dinheiro.CommaText, 1,
        Length(lForma_dinheiro.CommaText));
    frmmodulo.tbForma_pgto.Post;

    // Cheque  a vista {DARLON SANTOS}
    frmmodulo.tbForma_pgto.insert;
    frmmodulo.tbForma_Pgtoid.Value := 2;
    if Pos(',', lForma_Cheque.CommaText) > 0 then
      frmmodulo.tbForma_PgtoNome.Value := copy(lForma_Cheque.CommaText, 1,
        Pos(',', lForma_Cheque.CommaText) - 1)
    else
      frmmodulo.tbForma_PgtoNome.Value := copy(lForma_Cheque.CommaText, 1,
        Length(lForma_Cheque.CommaText));
    frmmodulo.tbForma_pgto.Post;

    // Cartao de cred   //DARLON SANTOS
    frmmodulo.tbForma_pgto.insert;
    frmmodulo.tbForma_Pgtoid.Value := 3;
    if Pos(',', lForma_Cartao_cred.CommaText) > 0 then
      frmmodulo.tbForma_PgtoNome.Value := copy(lForma_Cartao_cred.CommaText, 1,
        Pos(',', lForma_Cartao_cred.CommaText) - 1)
    else
       frmmodulo.tbForma_PgtoNome.Value := copy(lForma_Cartao_cred.CommaText, 1,
       Length(lForma_Cartao_cred.CommaText));
       frmmodulo.tbForma_pgto.Post;
          // Cartao de deb //DARLON SANTOS
      frmmodulo.tbForma_pgto.insert;
      frmmodulo.tbForma_Pgtoid.Value := 3;
      if Pos(',', lForma_Cartao_deb.CommaText) > 0 then
       frmmodulo.tbForma_PgtoNome.Value := copy(lForma_Cartao_deb.CommaText, 1,
        Pos(',', lForma_Cartao_deb.CommaText) - 1)
     else
        frmmodulo.tbForma_PgtoNome.Value := copy(lForma_Cartao_deb.CommaText, 1,
        Length(lForma_Cartao_deb.CommaText));
        frmmodulo.tbForma_pgto.Post;


    // Crediario
    frmmodulo.tbForma_pgto.insert;
    frmmodulo.tbForma_Pgtoid.Value := 4;
    if Pos(',', lForma_Crediario.CommaText) > 0 then
      frmmodulo.tbForma_PgtoNome.Value := copy(lForma_Crediario.CommaText, 1,
        Pos(',', lForma_Crediario.CommaText) - 1)
    else
      frmmodulo.tbForma_PgtoNome.Value := copy(lForma_Crediario.CommaText, 1,
        Length(lForma_Crediario.CommaText));
    frmmodulo.tbForma_pgto.Post;

    // Convenio
    frmmodulo.tbForma_pgto.insert;
    frmmodulo.tbForma_Pgtoid.Value := 5;
    if Pos(',', lForma_Convenio.CommaText) > 0 then
      frmmodulo.tbForma_PgtoNome.Value := copy(lForma_Convenio.CommaText, 1,
        Pos(',', lForma_Convenio.CommaText) - 1)
    else
      frmmodulo.tbForma_PgtoNome.Value := copy(lForma_Convenio.CommaText, 1,
        Length(lForma_Convenio.CommaText));
    frmmodulo.tbForma_pgto.Post;

    result := true;
  except
    result := false;
    Showmessage('Erro ao carregar formas de pagamento');

  end;

  {

    for i := 1 to 919 do Formas := Formas + ' ';
    iRetorno := Bematech_FI_VerificaFormasPagamentoMFD( Formas );

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
    begin
    sRet := cECF_Retorno_Impressora(cod_ecf);
    if sRet = OK then
    begin
    // limpar a tabela de forma de pagamento
    Y := 0;

    for i := 1 to length(Formas) do
    begin
    if Y > 30 then break;
    if i = 1 then // inicio da variavel
    x := 1
    else
    if i >= length(Formas) then // final da variavel
    begin
    frmModulo.tbForma_Pgto.Insert;
    frmModulo.tbForma_Pgto.FieldByName('id').asinteger := y;
    frmModulo.tbForma_Pgto.FieldByName('Nome').asstring := copy(Formas,x,16);
    svalor := copy(Formas,x+16,20);
    if svalor <> '' then
    begin
    svalor := floattostr(strtofloat(svalor));
    if strtofloat(svalor) > 0 then
    svalor := floattostr(strtofloat(svalor)/100);
    end
    else
    svalor := '0';

    frmModulo.tbForma_pgto.fieldbyname('Valor_Acumulado').asfloat
    := strtofloat(svalor);

    svalor := copy(Formas,x+26,20);
    if svalor <> '' then
    begin
    svalor := floattostr(strtofloat(svalor));
    if strtofloat(svalor) > 0 then
    svalor := floattostr(strtofloat(svalor)/100);
    end
    else
    svalor := '0';

    frmModulo.tbForma_Pgto.FieldByName('Valor_Ultimo_Cupom').asfloat
    := strtofloat(svalor);
    frmModulo.tbForma_Pgto.Post;
    INC(Y);
    end
    else
    begin
    if Formas[i] = ',' then
    begin
    frmModulo.tbForma_Pgto.Insert;
    frmModulo.tbForma_Pgto.FieldByName('id').asinteger := y;
    frmModulo.tbForma_Pgto.FieldByName('Nome').asstring := copy(Formas,x,16);
    svalor := copy(Formas,x+16,20);
    if svalor <> '' then
    begin
    svalor := floattostr(strtofloat(svalor));
    if strtofloat(svalor) > 0 then
    svalor := floattostr(strtofloat(svalor)/100);
    end
    else
    svalor := '0';
    frmModulo.tbForma_Pgto.FieldByName('Valor_Acumulado').asfloat
    := strtofloat(svalor);
    svalor := copy(Formas,x+26,20);
    if svalor <> '' then
    begin
    svalor := floattostr(strtofloat(svalor));
    if strtofloat(svalor) > 0 then
    svalor := floattostr(strtofloat(svalor)/100);
    end
    else
    svalor := '0';
    frmModulo.tbForma_Pgto.FieldByName('Valor_Ultimo_Cupom').asfloat
    := strtofloat(svalor);
    INC(Y);
    x := i + 1;
    end;
    end;
    end;
    Result := OK;
    end

  }

end;

function TfrmPrincipal.ApenasNumerosStr(pStr: String): String;
Var
  i: Integer;
begin

  result := '';

  For i := 1 To Length(pStr) do
    if pStr[i] In ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0'] Then
      result := result + pStr[i];

end;

function TfrmPrincipal.IsInteger(s: string): Integer;
begin
  try
    result := StrToInt(s);

  except
    result := 0;
  end;
end;

procedure TfrmPrincipal.tlResearchClick(Sender: TdxTileControlItem);
begin
  Application.CreateForm(TFGerarNFP, FGerarNFP);
  FGerarNFP.showmodal;
  FGerarNFP.Free;

end;

procedure TfrmPrincipal.tlAgentsClick(Sender: TdxTileControlItem);
begin
  frmNotasconsumidor := TfrmNotasconsumidor.Create(self);
  frmNotasconsumidor.showmodal
end;

procedure TfrmPrincipal.tlPhotosClick(Sender: TdxTileControlItem);
begin
  CarregaSistemaVenda;
end;

procedure TfrmPrincipal.dxtlcntrltmTileItem1Click(Sender: TdxTileControlItem);
begin
  frmconfig := tfrmconfig.Create(self);
  frmconfig.showmodal;

end;

procedure TfrmPrincipal.tlUserManagementClick(Sender: TdxTileControlItem);
begin
  frmMenu_fiscal := tfrmMenu_fiscal.Create(self);
  frmMenu_fiscal.showmodal;
end;

procedure TfrmPrincipal.tlSystemInformationClick(Sender: TdxTileControlItem);
begin
  frmconfig_balanca := tfrmconfig_balanca.Create(self);
  frmconfig_balanca.showmodal;

end;

procedure TfrmPrincipal.dxBarButton2Click(Sender: TObject);
begin
    CarregaSistemaVenda;
end;

procedure TfrmPrincipal.dxBarButton3Click(Sender: TObject);
begin
  frmOrcamento := tfrmOrcamento.create(self);
  frmOrcamento.ShowModal;
end;

procedure TfrmPrincipal.dxBarLargeButton3Click(Sender: TObject);
begin
   CarregaSistemaVenda;
end;

procedure TfrmPrincipal.dxTileItem1Click(Sender: TdxTileControlItem);
begin
  close;
end;

end.
