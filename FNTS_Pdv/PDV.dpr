program PDV;



uses
  Winapi.Windows,
  Vcl.Forms,
  principal in 'principal.pas' {frmPrincipal},
  modulo in 'modulo.pas' {frmModulo: TDataModule},
  funcoes in 'funcoes.pas',
  venda in 'venda.pas' {frmVenda},
  mesas in 'mesas.pas' {frmMesas},
  VendedorConsulta in 'VendedorConsulta.pas' {frmVendedorConsulta},
  preco_consulta in 'preco_consulta.pas' {frmPreco_consulta},
  produto_consulta_normal in 'produto_consulta_normal.pas' {frmProduto_consulta_normal},
  protetor_tela in 'protetor_tela.pas' {frmProtetor_tela},
  venda_crediario in 'venda_crediario.pas' {frmVenda_Crediario},
  Vendedor in 'Vendedor.pas' {frmVendedor},
  unECF in 'unECF.pas',
  msg_Operador in 'msg_Operador.pas' {frmMsg_Operador},
  Leitura_Memoria_Fiscal in 'Leitura_Memoria_Fiscal.pas' {frmLeitura_Memoria_Fiscal},
  Download_MFD in 'Download_MFD.pas' {frmDownload_MFD},
  Identifica in 'Identifica.pas' {frmIdentifica},
  config_ecf in 'config_ecf.pas' {frmConfig_ECF},
  unTEF in 'unTEF.pas',
  mensagem in 'mensagem.pas' {frmMensagem},
  TEF_Cancelamento in 'TEF_Cancelamento.pas' {frmTEF_cancelamento},
  Tef_bandeira in 'Tef_bandeira.pas' {frmTef_Bandeira},
  caixa_fechamento in 'caixa_fechamento.pas' {frmCaixa_Fechamento},
  senha_supervisor in 'senha_supervisor.pas' {frmSenha_Supervisor},
  suprimento in 'suprimento.pas' {frmSuprimento},
  sangria in 'sangria.pas' {frmSangria},
  menu_cupom in 'menu_cupom.pas' {frmCupom_Menu},
  cupom_impressao in 'cupom_impressao.pas' {frmcupom_impressao},
  MD5 in 'MD5.pas',
  Orcamento in 'Orcamento.pas' {frmOrcamento},
  Orcamento_Abrir in 'Orcamento_Abrir.pas' {frmOrcamento_Abrir},
  Orcamento_Item in 'Orcamento_Item.pas' {frmOrcamento_Item},
  produto_consulta in 'produto_consulta.pas' {frmProduto_consulta},
  Arquivo_Fiscal in 'Arquivo_Fiscal.pas' {frmArquivo_Fiscal},
  consulta_estoque in 'consulta_estoque.pas' {frmConsulta_Estoque},
  contasreceber in 's7\contasreceber.pas' {frmcontasreceber},
  contasreceber_boleto_achado in 's7\contasreceber_boleto_achado.pas' {frmcontasreceber_boleto_achado},
  xloc_cliente in 's7\xloc_cliente.pas' {frmxloc_cliente},
  contasreceber_pgto in 's7\contasreceber_pgto.pas' {frmcontasreceber_pgto},
  contasreceber_banco in 's7\contasreceber_banco.pas' {frmContasreceber_banco},
  loc_contacorrent in 's7\loc_contacorrent.pas' {frmloc_contacorrente},
  extenso1 in 's7\extenso1.pas',
  pre_venda in 'pre_venda.pas' {frmPre_Venda},
  caixa_abertura in 'caixa_abertura.pas' {frmCaixa_Abertura},
  notafiscal_menu in 'notafiscal_menu.pas' {frmnotafiscal_menu},
  notafiscal in 'notafiscal.pas' {frmnotafiscal},
  notafiscal_item2 in 'notafiscal_item2.pas' {frmNotaFiscal_Item2},
  loc_filial in 'loc_filial.pas' {frmloc_filial},
  loc_cfop in 'loc_cfop.pas' {frmloc_cfop},
  xloc_cfop in 'xloc_cfop.pas' {frmxloc_cfop},
  xloc_servico in 'xloc_servico.pas' {frmxloc_servico},
  NotaFiscal_Item_grade in 'NotaFiscal_Item_grade.pas' {frmNotaFiscal_Item_grade},
  NotaFiscal_Item_Serial in 'NotaFiscal_Item_Serial.pas' {frmNotaFiscal_Item_Serial},
  xloc_cst in 'xloc_cst.pas' {frmxloc_cst},
  xloc_produto in 'xloc_produto.pas' {frmxloc_produto},
  os in 'os.pas' {frmOS},
  Lista_DAV in 'Lista_DAV.pas' {frmLista_DAV},
  tabela_indice in 'tabela_indice.pas' {frmTabela_Indice},
  prevenda_conciliar in 'prevenda_conciliar.pas' {frmPrevenda_conciliar},
  fabricacao in 'fabricacao.pas' {frmFabricacao},
  config_balanca in 'config_balanca.pas' {frmconfig_balanca},
  Config in 'Config.pas' {frmConfig},
  Constantes in 'Constantes.pas',
  consumidor in 'consumidor.pas' {frmConsumidor},
  cliente_consulta in 'cliente_consulta.pas' {frmCliente_consulta},
  UFuncoes in 'UFuncoes.pas',
  UImpressao in 'UImpressao.pas',
  xloc_modelo in 'xloc_modelo.pas' {frmxloc_modelo},
  Comanda in 'Comanda.pas' {FComanda},
  dllcompanytec in 'dllcompanytec.pas',
  statusNFCE in 'statusNFCE.pas' {frmStatus},
  frmNatOperacao in 'frmNatOperacao.pas' {frmnatureza},
  frmNFCEs in 'frmNFCEs.pas' {frmNotasconsumidor},
  UtiSplash in '..\FNTS_Comuns PDV\UtiSplash.pas' {frmUtiSplash},
  senha in '..\FNTS_Comuns PDV\senha.pas' {frmsenha},
  Unit_ativar in '..\FNTS_Comuns\Unit_ativar.pas' {Form_ativar},
  LockApplicationInterface in '..\FNTS_Comuns\LockApplicationInterface.pas' {Bloqueio},
  LoginWindow_U in '..\FNTS_Comuns\LoginWindow_U.pas' {frmLoginWindow},
  unSintegra in '..\FNTS_Sintegra\unSintegra.pas',
  Unit_Validacao_Sintegra in '..\FNTS_Sintegra\Validacao_Sintegra\Unit_Validacao_Sintegra.pas',
  Valida_NCM in '..\FNTS_Sintegra\Validacao_NCM\Valida_NCM.pas',
  Valida_CFOP in '..\FNTS_Sintegra\Validacao_CFOP\Valida_CFOP.pas',
  ResultadoWebService in 'ResultadoWebService.pas' {frmResultadoWebService},
  Lista_Vendas_Periodo in 'Lista_Vendas_Periodo.pas' {frmLista_Vendas_Periodo},
  justificativa in 'justificativa.pas' {frmjustificativa},
  Thread.CheckConnection in '..\FNTS_Comuns\Thread.CheckConnection.pas',
  Vcl.Themes,
  Vcl.Styles;

var
  Hand : THandle;

{$R *.res}

begin
  Hand := FindWindow('TApplication', 'Softlogus');
  if Hand = 0 then
  begin
    Application.Initialize;
    Application.Title := 'Frente de Caixa';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmMsg_Operador, frmMsg_Operador);
  Application.CreateForm(TfrmStatus, frmStatus);
  Application.CreateForm(Tfrmnatureza, frmnatureza);
  Application.CreateForm(TForm_ativar, Form_ativar);
  Application.Run;
  end

  else
  begin
    application.MessageBox('J� existe uma sess�o aberta deste aplicativo!','Aten��o',mb_ok+MB_ICONERROR );
    ShowWindow(Hand,SW_NORMAL);
    Application.terminate;
  end;
end.
