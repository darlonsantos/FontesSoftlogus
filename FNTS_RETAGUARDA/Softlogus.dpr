program Softlogus;

uses
  Forms,
  Windows,
  Dialogs,
  principal in 'fnts\principal.pas' {frmPrincipal},
  modulo in 'fnts\modulo.pas' {frmmodulo: TDataModule},
  senha_caixa in 'fnts\senha_caixa.pas' {frmsenha_caixa},
  splash in 'fnts\splash.pas' {frmsplash},
  papelparede in 'fnts\papelparede.pas' {frmPapelParede},
  setor in 'fnts\setor.pas' {frmSetor},
  loc_setor in 'fnts\loc_setor.pas' {frmloc_setor},
  loc_grupo_servico in 'fnts\loc_grupo_servico.pas' {frmloc_grupo_servico},
  convenio in 'fnts\convenio.pas' {frmconvenio},
  funcionario in 'fnts\funcionario.pas' {frmfuncionario},
  industrializacao in 'fnts\industrializacao.pas' {frmindustrializacao},
  contacorrente in 'fnts\contacorrente.pas' {frmcontacorrente},
  banco in 'fnts\banco.pas' {frmbanco},
  cheque_avulso in 'fnts\cheque_avulso.pas' {frmcheque_avulso},
  condpgto in 'fnts\condpgto.pas' {frmcondpgto},
  produto_saida in 'fnts\produto_saida.pas' {frmproduto_saida},
  aliquota in 'fnts\aliquota.pas' {frmAliquota},
  agenda in 'fnts\agenda.pas' {frmagenda},
  loc_regiao in 'fnts\loc_regiao.pas' {frmloc_regiao},
  loc_receita in 'fnts\loc_receita.pas' {frmloc_receita},
  loc_aliquota in 'fnts\loc_aliquota.pas' {frmloc_aliquota},
  loc_conta in 'fnts\loc_conta.pas' {frmloc_conta},
  filial in 'fnts\filial.pas' {frmfilial},
  loc_cfop in 'fnts\loc_cfop.pas' {frmloc_cfop},
  webcam in 'fnts\webcam.pas' {frmwebcam},
  plano in 'fnts\plano.pas' {frmplano},
  fornecedor in 'fnts\fornecedor.pas' {frmfornecedor},
  produto_saida_item in 'fnts\produto_saida_item.pas' {frmproduto_saida_item},
  loc_cliente_VENDA in 'fnts\loc_cliente_VENDA.pas' {frmloc_cliente_VENDA},
  produto_preco in 'fnts\produto_preco.pas' {frmproduto_preco},
  produto_grade_saida in 'fnts\produto_grade_saida.pas' {frmproduto_grade_saida},
  produto_serial_entrada in 'fnts\produto_serial_entrada.pas' {frmproduto_serial_entrada},
  agenda_ficha in 'fnts\agenda_ficha.pas' {frmagenda_ficha},
  Calculad in 'fnts\Calculad.Pas' {frmcalc},
  caixa_operador in 'fnts\caixa_operador.pas' {frmCaixa_operador},
  produto_pedido in 'fnts\produto_pedido.pas' {frmproduto_pedido},
  produto_pedido_item in 'fnts\produto_pedido_item.pas' {frmproduto_pedido_item},
  produto_grade_pedido in 'fnts\produto_grade_pedido.pas' {frmproduto_grade_pedido},
  produto_serialF in 'fnts\produto_serialF.pas' {frmproduto_serialF},
  notafiscalE in 'fnts\notafiscalE.pas' {frmnotafiscalE},
  notafiscalE_item in 'fnts\notafiscalE_item.pas' {frmnotafiscalE_item},
  empresa in 'fnts\empresa.pas' {frmempresa},
  loc_transportador in 'fnts\loc_transportador.pas' {frmloc_transportador},
  loc_fornecedor in 'fnts\loc_fornecedor.pas' {frmLoc_fornecedor},
  Cheque_baixa in 'fnts\Cheque_baixa.pas' {frmcheque_baixa},
  cliente_veiculo in 'fnts\cliente_veiculo.pas' {frmcliente_veiculo},
  contacorrente_lancamento2 in 'fnts\contacorrente_lancamento2.pas' {frmcontacorrente_lancamento2},
  contacorrente_ficha in 'fnts\contacorrente_ficha.pas' {frmcontacorrente_ficha},
  loc_contacorrent in 'fnts\loc_contacorrent.pas' {frmloc_contacorrente},
  loc_banco in 'fnts\loc_banco.pas' {frmloc_banco},
  contacorrente_lancamento in 'fnts\contacorrente_lancamento.pas' {frmcontacorrente_lancamento},
  servico in 'fnts\servico.pas' {frmservico},
  caixa_abertura_individual in 'fnts\caixa_abertura_individual.pas' {frmcaixa_abertura_individual},
  caixa_abertura in 'fnts\caixa_abertura.pas' {frmcaixa_abertura},
  caixa_fechamento in 'fnts\caixa_fechamento.pas' {frmcaixa_fechamento},
  caixa_ficha in 'fnts\caixa_ficha.pas' {frmcaixa_ficha},
  contaspagar in 'fnts\contaspagar.pas' {frmcontaspagar},
  contaspagar_fichaalteracao in 'fnts\contaspagar_fichaalteracao.pas' {frmcontaspagar_fichaAlteracao},
  contaspagar_ficha_entrada in 'fnts\contaspagar_ficha_entrada.pas' {frmcontaspagar_ficha_entrada},
  contaspagar_pgto in 'fnts\contaspagar_pgto.pas' {frmcontaspagar_pgto},
  contaspagar_cheque in 'fnts\contaspagar_cheque.pas' {frmcontaspagar_cheque},
  venda in 'fnts\venda.pas' {frmvenda},
  venda_inicio in 'fnts\venda_inicio.pas' {frmvenda_inicio},
  os_serial in 'fnts\os_serial.pas' {frmos_serial},
  venda_grade in 'fnts\venda_grade.pas' {frmvenda_grade},
  os_fechamento_auto in 'fnts\os_fechamento_auto.pas' {frmos_fechamento_auto},
  os_contasreceber_auto in 'fnts\os_contasreceber_auto.pas' {frmos_contasreceber_auto},
  troco in 'fnts\troco.pas' {frmvenda_troco},
  notas_venda_impressao in 'fnts\notas_venda_impressao.pas' {frmnotas_venda_impressao},
  venda_troca in 'fnts\venda_troca.pas' {frmvenda_troca},
  config_bobina in 'fnts\config_bobina.pas' {frmconfig_bobina},
  produto_etiqueta_codbarra in 'fnts\produto_etiqueta_codbarra.pas' {frmProduto_etiqueta_codbarra},
  contasreceber in 'fnts\contasreceber.pas' {frmcontasreceber},
  convenio_pgto in 'fnts\convenio_pgto.pas' {frmconvenio_pgto},
  contasreceber_banco in 'fnts\contasreceber_banco.pas' {frmContasreceber_banco},
  contasreceber_alterar in 'fnts\contasreceber_alterar.pas' {frmcontasreceber_alterar},
  contasreceber_ficha in 'fnts\contasreceber_ficha.pas' {frmcontasreceber_ficha},
  boleto_avulso in 'fnts\boleto_avulso.pas' {frmboleto_avulso},
  contasreceber_juros in 'fnts\contasreceber_juros.pas' {frmcontasreceber_juros},
  notas_venda in 'fnts\notas_venda.pas' {frmnotas_venda},
  os_impressao in 'fnts\os_impressao.pas' {frmos_impressao},
  os_ecf in 'fnts\os_ecf.pas' {frmos_ecf},
  os_auto in 'fnts\os_auto.pas' {frmOS_Auto},
  loc_veiculo in 'fnts\loc_veiculo.pas' {frmloc_veiculo},
  os_menu in 'fnts\os_menu.pas' {frmOs_menu},
  venda_serial in 'fnts\venda_serial.pas' {frmvenda_serial},
  cfop in 'fnts\cfop.pas' {frmcfop},
  loc_filial in 'fnts\loc_filial.pas' {frmloc_filial},
  prevenda_fechamento in 'fnts\prevenda_fechamento.pas' {frmprevenda_fechamento},
  prevenda_contasreceber in 'fnts\prevenda_contasreceber.pas' {frmprevenda_contasreceber},
  notafiscalE_impressao in 'fnts\notafiscalE_impressao.pas' {frmnotafiscalE_impressao},
  os_ecf_leituraMemoria in 'fnts\os_ecf_leituraMemoria.pas' {frmos_ecf_leituraMemoria},
  loc_convenio in 'fnts\loc_convenio.pas' {frmloc_convenio},
  produto_ligth in 'fnts\produto_ligth.pas' {frmproduto_ligth},
  loc_produto_ligth in 'fnts\loc_produto_ligth.pas' {frmloc_produto_ligth},
  transf_dados in 'fnts\transf_dados.pas' {frmtransf_dados},
  logo in 'fnts\logo.pas' {frmlogo},
  orcamento_localizar in 'fnts\orcamento_localizar.pas' {frmOrcamento_localizar},
  produto_entrada in 'fnts\produto_entrada.pas' {frmproduto_entrada},
  produto_entrada_item in 'fnts\produto_entrada_item.pas' {frmproduto_entrada_item},
  loc_caixa in 'fnts\loc_caixa.pas' {frmloc_caixa},
  FmxUtils in 'fnts\FmxUtils.pas',
  cliente_financeiro in 'fnts\cliente_financeiro.pas' {frmcliente_financeiro},
  veiculo in 'fnts\veiculo.pas' {frmveiculo},
  os in 'fnts\os.pas' {frmos},
  os_fechamento in 'fnts\os_fechamento.pas' {frmos_fechamento},
  os_contasreceber in 'fnts\os_contasreceber.pas' {frmos_contasreceber},
  notas_venda_ecf in 'fnts\notas_venda_ecf.pas' {frmnotas_venda_ecf},
  notas_venda_ecf_leituraMemoria in 'fnts\notas_venda_ecf_leituraMemoria.pas' {frmnotas_venda_ecf_leituraMemoria},
  boleto in 'fnts\boleto.pas' {frmboleto},
  config_cobranca in 'fnts\config_cobranca.pas' {frmconfig_cobranca},
  contasreceber_duplicata in 'fnts\contasreceber_duplicata.pas' {frmcontasreceber_duplicata},
  contasreceber_tipoboleto in 'fnts\contasreceber_tipoboleto.pas' {frmcontasreceber_tipoboleto},
  contasreceber_cedente in 'fnts\contasreceber_cedente.pas' {frmcontasreceber_cedente},
  os_relatorio in 'fnts\os_relatorio.pas' {frmos_relatorio},
  sintegra_gerar in 'fnts\sintegra_gerar.pas' {frmsintegra_gerar},
  Sintegra in 'fnts\Sintegra.pas',
  produto_importar in 'fnts\produto_importar.pas' {frmproduto_importar},
  produto_exportar in 'fnts\produto_exportar.pas' {frmproduto_exportar},
  usuario_menu in 'fnts\usuario_menu.pas' {frmusuario_menu},
  produto_total in 'fnts\produto_total.pas' {frmproduto_total},
  usuario in 'fnts\usuario.pas' {frmusuario},
  conhecimento in 'fnts\conhecimento.pas' {frmconhecimento},
  loc_conhecimento in 'fnts\loc_conhecimento.pas' {frmloc_conhecimento},
  loc_cliente2 in 'fnts\loc_cliente2.pas' {frmloc_cliente2},
  contasreceber_ficha_varios in 'fnts\contasreceber_ficha_varios.pas' {frmcontasreceber_ficha_varios},
  loc_grupo in 'fnts\loc_grupo.pas' {frmloc_grupo},
  loc_subgrupo in 'fnts\loc_subgrupo.pas' {frmloc_subgrupo},
  loc_marca in 'fnts\loc_marca.pas' {frmloc_marca},
  loc_produto_venda_auto in 'fnts\loc_produto_venda_auto.pas' {frmloc_venda_produto_auto},
  loc_produto_industria in 'fnts\loc_produto_industria.pas' {frmloc_produto_industria},
  loc_produto_auto in 'fnts\loc_produto_auto.pas' {frmloc_produto_auto},
  lista_transportador2 in 'fnts\lista_transportador2.pas' {frmlista_transportador2},
  loc_cliente in 'fnts\loc_cliente.pas' {frmloc_cliente},
  xloc_funcionario in 'fnts\xloc_funcionario.pas' {frmxloc_Funcionario},
  lista_venda2 in 'fnts\lista_venda2.pas' {frmlista_venda2},
  lista_produto2 in 'fnts\lista_produto2.pas' {frmlista_produto2},
  extenso1 in 'fnts\extenso1.pas',
  xloc_cliente in 'fnts\xloc_cliente.pas' {frmxloc_cliente},
  lista_cliente2 in 'fnts\lista_cliente2.pas' {frmlista_cliente2},
  xloc_produto_entrada in 'fnts\xloc_produto_entrada.pas' {frmxloc_produto_entrada},
  xloc_banco in 'fnts\xloc_banco.pas' {frmxloc_banco},
  xloc_transportador in 'fnts\xloc_transportador.pas' {frmxloc_transportador},
  xloc_subgrupo in 'fnts\xloc_subgrupo.pas' {frmxloc_subgrupo},
  xloc_pessoas in 'fnts\xloc_pessoas.pas' {frmxloc_Pessoas},
  xloc_fornecedor in 'fnts\xloc_fornecedor.pas' {frmxloc_fornecedor},
  lista_ecf_reducao in 'fnts\lista_ecf_reducao.pas' {frmlista_ecf_reducao},
  xloc_servico in 'fnts\xloc_servico.pas' {frmxloc_servico},
  xloc_empresa in 'fnts\xloc_empresa.pas' {frmxloc_empresa},
  xloc_gruposervico in 'fnts\xloc_gruposervico.pas' {frmxloc_gruposervico},
  lista_servicos_periodicos in 'fnts\lista_servicos_periodicos.pas' {frmlista_servicos_periodicos},
  processo in 'fnts\processo.pas' {frmprocesso},
  lista_servicos2 in 'fnts\lista_servicos2.pas' {frmlista_servicos2},
  lista_planocontas2 in 'fnts\lista_planocontas2.pas' {frmlista_planocontas2},
  xloc_grupo in 'fnts\xloc_grupo.pas' {frmxloc_grupo},
  lista_funcionario2 in 'fnts\lista_funcionario2.pas' {frmlista_funcionario2},
  lista_banco2 in 'fnts\lista_banco2.pas' {frmlista_banco2},
  venda_obs in 'fnts\venda_obs.pas' {frmvenda_obs},
  lista_caixa2 in 'fnts\lista_caixa2.pas' {frmlista_caixa2},
  lista_os in 'fnts\lista_os.pas' {frmlista_os},
  lista_cheque2 in 'fnts\lista_cheque2.pas' {frmlista_cheque2},
  notafiscal_item in 'fnts\notafiscal_item.pas' {frmnotafiscal_item},
  lista_pagar2 in 'fnts\lista_pagar2.pas' {frmlista_pagar2},
  xloc_notafiscal in 'fnts\xloc_notafiscal.pas' {frmxloc_notafiscal},
  contasreceber_impressao in 'fnts\contasreceber_impressao.pas' {frmcontasreceber_impressao},
  prevenda_impressao in 'fnts\prevenda_impressao.pas' {frmprevenda_impressao},
  Emitente in 'fnts\Emitente.pas' {frmemitente},
  config in 'fnts\config.pas' {frmconfig},
  xloc_conta in 'fnts\xloc_conta.pas' {frmxloc_CONTA},
  marca in 'fnts\marca.pas' {frmmarca},
  loc_funci_venda in 'fnts\loc_funci_venda.pas' {frmloc_funci_venda},
  venda_impressao2 in 'fnts\venda_impressao2.pas' {frmvenda_impressao2},
  balanca in 'fnts\balanca.pas' {frmbalanca},
  conhecimento_impressao in 'fnts\conhecimento_impressao.pas' {frmconhecimento_impressao},
  log in 'fnts\log.pas' {frmlog},
  suprimentocaixa in 'fnts\suprimentocaixa.pas' {frmsuprimentocaixa},
  sangriacaixa in 'fnts\sangriacaixa.pas' {frmsangriacaixa},
  buscapreco in 'fnts\buscapreco.pas' {frmbuscapreco},
  lang in 'fnts\lang.pas',
  produto_atualizapreco in 'fnts\produto_atualizapreco.pas' {frmproduto_atualizapreco},
  ecfserver in 'fnts\ecfserver.pas' {frmecfserver},
  xloc_veiculo in 'fnts\xloc_veiculo.pas' {frmxloc_veiculo},
  produto_consultapreco in 'fnts\produto_consultapreco.pas' {frmproduto_consultapreco},
  cheque_conta in 'fnts\cheque_conta.pas' {frmcheque_conta},
  lista_receber2 in 'fnts\lista_receber2.pas' {frmlista_receber2},
  produto_falta in 'fnts\produto_falta.pas' {frmproduto_falta},
  contaspagar_data in 'fnts\contaspagar_data.pas' {frmcontaspagar_data},
  convenio_receber in 'fnts\convenio_receber.pas' {frmconvenio_receber},
  contasreceber_pgto in 'fnts\contasreceber_pgto.pas' {frmcontasreceber_pgto},
  transportador in 'fnts\transportador.pas' {frmtransportador},
  xloc_cheque in 'fnts\xloc_cheque.pas' {frmxloc_cheque},
  ecfs in 'fnts\ecfs.pas' {frmecf},
  cst in 'fnts\cst.pas' {frmcst},
  modelo_fiscal in 'fnts\modelo_fiscal.pas' {frmmodelo_fiscal},
  xloc_convenio in 'fnts\xloc_convenio.pas' {frmxloc_convenio},
  sintegra_menu in 'fnts\sintegra_menu.pas' {frmsintegra_menu},
  xloc_modelo in 'fnts\xloc_modelo.pas' {frmxloc_modelo},
  ECF_REDUCAO in 'fnts\ECF_REDUCAO.pas' {FRMECF_REDUCAO},
  prevenda in 'fnts\prevenda.pas' {frmPrevenda},
  venda_fechamento in 'fnts\venda_fechamento.pas' {frmvenda_fechamento},
  venda_contasreceber in 'fnts\venda_contasreceber.pas' {frmvenda_contasreceber},
  venda_nf in 'fnts\venda_nf.pas' {frmvenda_nf},
  produto_serial in 'fnts\produto_serial.pas' {frmproduto_serial},
  produto_gradeF in 'fnts\produto_gradeF.pas' {frmproduto_gradeF},
  produto_gradeFS in 'fnts\produto_gradeFS.pas' {frmproduto_gradeFS},
  compra in 'fnts\compra.pas' {frmcompra},
  compra_item in 'fnts\compra_item.pas' {frmcompra_item},
  notafiscal_menu in 'fnts\notafiscal_menu.pas' {frmnotafiscal_menu},
  venda_impressao in 'fnts\venda_impressao.pas' {frmvenda_impressao},
  etiqueta_grade in 'fnts\etiqueta_grade.pas' {frmetiqueta_grade},
  ecf_cupom in 'fnts\ecf_cupom.pas' {frmecf_cupom},
  lista_fornecedor2 in 'fnts\lista_fornecedor2.pas' {frmlista_fornecedor2},
  exporta_dados in 'fnts\exporta_dados.pas' {frmexporta},
  lista_notaentrada in 'fnts\lista_notaentrada.pas' {frmlista_notaentrada},
  ecf_reducao_menu in 'fnts\ecf_reducao_menu.pas' {frmecf_reducao_menu},
  lista_entrada_sintegra in 'fnts\lista_entrada_sintegra.pas' {frmlista_entrada_sintegra},
  lista_notasaida in 'fnts\lista_notasaida.pas' {frmlista_notasaida},
  lista_pedcompra in 'fnts\lista_pedcompra.pas' {FRMLISTA_PEDCOMPRA},
  lista_notacompra in 'fnts\lista_notacompra.pas' {frmlista_notacompra},
  memorando_impressao in 'fnts\memorando_impressao.pas' {frmmemorando_impressao},
  contasreceber_boleto in 'fnts\contasreceber_boleto.pas' {frmcontasreceber_boleto},
  compra_menu in 'fnts\compra_menu.pas' {frmcompra_menu},
  notafiscal in 'fnts\notafiscal.pas' {frmnotafiscal},
  caixa in 'fnts\caixa.pas' {frmcaixa},
  cliente in 'fnts\cliente.pas' {frmcliente},
  produto_farma_preco in 'fnts\produto_farma_preco.pas' {frmproduto_farma_preco},
  venda_farma in 'fnts\venda_farma.pas' {frmvenda_farma},
  venda_farma_fechamento in 'fnts\venda_farma_fechamento.pas' {frmvenda_farma_fechamento},
  venda_farma_final in 'fnts\venda_farma_final.pas' {frmvenda_farma_final},
  venda_farma_impressao in 'fnts\venda_farma_impressao.pas' {frmvenda_farma_impressao},
  venda_farma_produto in 'fnts\venda_farma_produto.pas' {frmvenda_farma_produto},
  venda_farma_vidalink in 'fnts\venda_farma_vidalink.pas' {frmvenda_farma_vidalink},
  venda_fechamento_datasus in 'fnts\venda_fechamento_datasus.pas' {frmvenda_fechamento_datasus},
  venda_fechamento_vidalink in 'fnts\venda_fechamento_vidalink.pas' {frmvenda_fechamento_vidalink},
  venda_fechamento_especial in 'fnts\venda_fechamento_especial.pas' {frmvenda_fechamento_especial},
  mensagem_inventario in 'fnts\mensagem_inventario.pas' {frmmensagem_inventario},
  lista_autorizacao in 'fnts\lista_autorizacao.pas' {frmlista_autorizacao},
  produto_pdv in 'fnts\produto_pdv.pas' {frmproduto_pdv},
  grupo in 'fnts\grupo.pas' {frmgrupo},
  produto_farma in 'fnts\produto_farma.pas' {frmproduto_farma},
  loc_materiaprima in 'fnts\loc_materiaprima.pas' {frmloc_materiaprima},
  produto_gradeI in 'fnts\produto_gradeI.pas' {frmproduto_gradeI},
  produto_rentabilidade in 'fnts\produto_rentabilidade.pas' {frmproduto_rentabilidade},
  etiquetador in 'fnts\etiquetador.pas' {frmetiquetador},
  memorando_menu in 'fnts\memorando_menu.pas' {frmmemorando_menu},
  memorando in 'fnts\memorando.pas' {frmmemorando},
  notafiscal_impressao in 'fnts\notafiscal_impressao.pas' {frmnotafiscal_impressao},
  dados_inventario in 'fnts\dados_inventario.pas' {frmdados_inventario},
  os_servicosperiodicos in 'fnts\os_servicosperiodicos.pas' {frmos_servicosperiodicos},
  fornecedor_compras in 'fnts\fornecedor_compras.pas' {frmfornecedor_compras},
  lista_cliente_financeiro in 'fnts\lista_cliente_financeiro.pas' {frmlista_cliente_financeiro: venda_item_2},
  baixa_estoque in 'fnts\baixa_estoque.pas' {frmbaixa_estoque},
  orcamento in 'fnts\orcamento.pas' {frmOrcamento},
  orcamento_impressao in 'fnts\orcamento_impressao.pas' {frmorcamento_impressao},
  progresso in 'fnts\progresso.pas' {frmprogresso},
  dados_cliente in 'fnts\dados_cliente.pas' {frmdados_cliente},
  baixaestoque_impressao in 'fnts\baixaestoque_impressao.pas' {frmbaixaestoque_impressao},
  xloc_produto in 'fnts\xloc_produto.pas' {frmxloc_produto},
  venda_devolucao in 'fnts\venda_devolucao.pas' {frmvenda_devolucao},
  xloc_marca in 'fnts\xloc_marca.pas' {frmxloc_marca},
  grupo_servico in 'fnts\grupo_servico.pas' {frmgrupo_servico},
  produto in 'fnts\produto.pas' {frmproduto},
  produto_auto in 'fnts\produto_auto.pas' {frmproduto_auto},
  xloc_cliente_veiculo in 'fnts\xloc_cliente_veiculo.pas' {frmxloc_cliente_veiculo},
  Produto_consultaserial in 'fnts\Produto_consultaserial.pas' {frmProduto_consultaserial},
  xloc_cfop in 'fnts\xloc_cfop.pas' {frmxloc_cfop},
  cheque_menu in 'fnts\cheque_menu.pas' {frmcheque_menu},
  cheque in 'fnts\cheque.pas' {frmcheque},
  produto_movimentar in 'fnts\produto_movimentar.pas' {frmproduto_movimentar},
  tamanho in 'fnts\tamanho.pas' {frmtamanho},
  receita in 'fnts\receita.pas' {frmreceita},
  cnae in 'fnts\cnae.pas' {frmCnae},
  venda_impressaoCP in 'fnts\venda_impressaoCP.pas' {frmvenda_impressaoCP},
  prevenda_nf_loja in 'fnts\prevenda_nf_loja.pas' {frmprevenda_nf_loja},
  prevenda_impressao_loja in 'fnts\prevenda_impressao_loja.pas' {frmprevenda_impressao_loja},
  prevenda_fechamento_loja in 'fnts\prevenda_fechamento_loja.pas' {frmprevenda_fechamento_loja},
  produto_foto in 'fnts\produto_foto.pas' {frmproduto_foto},
  notafiscal_cancelar in 'fnts\notafiscal_cancelar.pas' {frmnotafiscal_cancelar},
  contaspagar_nf in 'fnts\contaspagar_nf.pas' {frmcontaspagar_nf},
  contasreceber_renegociar in 'fnts\contasreceber_renegociar.pas' {frmcontasreceber_renegociar},
  contasreceber_recibo2 in 'fnts\contasreceber_recibo2.pas' {frmcontasreceber_recibo2},
  inventario in 'fnts\inventario.pas' {frmInventario},
  inventario_ficha in 'fnts\inventario_ficha.pas' {frminventario_ficha},
  produto_importanf in 'fnts\produto_importanf.pas' {frmproduto_importanf},
  loc_funci in 'fnts\loc_funci.pas' {frmloc_funci},
  industrializacao_pedido_inclui in 'fnts\industrializacao_pedido_inclui.pas' {frmindustrializacao_pedido_inclui},
  produto_pdv2 in 'fnts\produto_pdv2.pas' {frmproduto_pdv2},
  nf_obs in 'fnts\nf_obs.pas' {frmnf_obs},
  entrega_ficha in 'fnts\entrega_ficha.pas' {frmEntrega_ficha},
  entrega in 'fnts\entrega.pas' {frmentrega},
  venda_entrega in 'fnts\venda_entrega.pas' {frmVenda_Entrega},
  contasreceber_recibo in 'fnts\contasreceber_recibo.pas' {frmcontasreceber_recibo},
  contasreceber_movimentacao in 'fnts\contasreceber_movimentacao.pas' {frmcontasreceber_movimentacao},
  baixa_localizar in 'fnts\baixa_localizar.pas' {frmbaixa_localizar},
  lista_conhecimento in 'fnts\lista_conhecimento.pas' {frmlista_conhecimento},
  ecf_download in 'fnts\ecf_download.pas' {frmecf_download},
  ecf_texto in 'fnts\ecf_texto.pas' {frmecf_texto},
  notafiscal_item2 in 'fnts\notafiscal_item2.pas' {frmNotaFiscal_Item2},
  NotaFiscal_Item_grade in 'fnts\NotaFiscal_Item_grade.pas' {frmNotaFiscal_Item_grade},
  NotaFiscal_Item_serial in 'fnts\NotaFiscal_Item_serial.pas' {frmNotaFiscal_Item_Serial},
  copia_arquivo in 'fnts\copia_arquivo.pas' {frmcopia_arquivo},
  contaspagar_ficha in 'fnts\contaspagar_ficha.pas' {frmcontaspagar_ficha},
  venda_financeira in 'fnts\venda_financeira.pas' {frmvenda_financeira},
  financeira_ficha in 'fnts\financeira_ficha.pas' {frmfinanceira_ficha},
  financeira in 'fnts\financeira.pas' {frmFinanceira},
  financeira_pgto in 'fnts\financeira_pgto.pas' {frmFinanceira_Pgto},
  xloc_financeira in 'fnts\xloc_financeira.pas' {frmxloc_financeira},
  financeira_alterar in 'fnts\financeira_alterar.pas' {frmfinanceira_alterar},
  lista_financeira in 'fnts\lista_financeira.pas' {frmlista_financeira},
  usuario_log in 'fnts\usuario_log.pas' {frmusuario_log},
  orcamento_abrir in 'fnts\orcamento_abrir.pas' {frmOrcamento_Abrir},
  regiao in 'fnts\regiao.pas' {frmregiao},
  unNFe2 in 'fnts\unNFe2.pas',
  cliente_inicio in 'fnts\cliente_inicio.pas' {frmcliente_inicio},
  unFuncoesTEF in 'fnts\unFuncoesTEF.pas',
  msgcheque in 'fnts\msgcheque.pas' {frmmsgcheque},
  msgcartao in 'fnts\msgcartao.pas' {frmmsgcartao},
  unMensagem in 'fnts\unMensagem.pas' {frmMensagemTEF},
  Tef in 'fnts\Tef.pas' {frmTef},
  unCancelarTEF in 'fnts\unCancelarTEF.pas' {frmCancelarTEF},
  consulta_cheque in 'fnts\consulta_cheque.pas' {frmconsulta_cheque},
  cartao in 'fnts\cartao.pas' {frmCartao},
  cartao_alterar in 'fnts\cartao_alterar.pas' {frmcartao_alterar},
  cartao_ficha in 'fnts\cartao_ficha.pas' {frmcartao_ficha},
  cartao_pgto in 'fnts\cartao_pgto.pas' {frmCartao_PGTO},
  lista_cartao in 'fnts\lista_cartao.pas' {frmlista_cartao},
  xloc_cartao in 'fnts\xloc_cartao.pas' {frmxloc_cartao},
  produto_serial_ficha in 'fnts\produto_serial_ficha.pas' {frmProduto_serial_ficha},
  notafiscal_importacupom in 'fnts\notafiscal_importacupom.pas' {frmnotafiscal_importacupom},
  produto_serial_saida in 'fnts\produto_serial_saida.pas' {frmproduto_serial_saida},
  xloc_cst in 'fnts\xloc_cst.pas' {frmxloc_cst},
  xloc_cidade in 'fnts\xloc_cidade.pas' {frmxloc_cidade},
  cidade in 'fnts\cidade.pas' {frmCidade},
  industrializacao_pedido in 'fnts\industrializacao_pedido.pas' {frmindustrializacao_pedido},
  venda_item_2 in 'fnts\venda_item_2.pas' {frmvenda_item_2},
  formapgto in 'fnts\formapgto.pas' {frmFormaPgto},
  cor in 'fnts\cor.pas' {frmcor},
  fornecedor_codigo in 'fnts\fornecedor_codigo.pas' {frmfornecedor_codigo},
  duplicata_impressao in 'fnts\duplicata_impressao.pas' {frmDuplicata_Impressao},
  Lista_ABC_Marca_Grupo in 'fnts\Lista_ABC_Marca_Grupo.pas' {frmLista_ABC_Marca_Grupo},
  contrato_reserva in 'fnts\contrato_reserva.pas' {frmContrato_reserva},
  prevenda_cliente in 'fnts\prevenda_cliente.pas' {frmprevenda_cliente},
  fluxo_caixa in 'fnts\fluxo_caixa.pas' {frmFluxo_Caixa},
  DRE in 'fnts\DRE.pas' {frmDRE},
  lista_frete in 'fnts\lista_frete.pas' {frmlista_frete},
  status in 'fnts\status.pas' {frmStatus},
  nfe_legenda in 'fnts\nfe_legenda.pas' {frmNFE_legenda},
  email in 'fnts\email.pas',
  mensagem in 'fnts\mensagem.pas' {frmmensagem},
  produto_validade in 'fnts\produto_validade.pas' {frmproduto_validade},
  produto_grade in 'fnts\produto_grade.pas' {frmproduto_grade},
  venda_reimpressao in 'fnts\venda_reimpressao.pas' {frmvenda_reimpressao},
  webcam2 in 'fnts\webcam2.pas' {frmwebcam2},
  Ncm in 'fnts\Ncm.pas' {frmNcm},
  xloc_csosn in 'fnts\xloc_csosn.pas' {frmxloc_csosn},
  entrada in 'fnts\entrada.pas' {frmentrada},
  consulta_lote in 'fnts\consulta_lote.pas' {frmConsultaLote},
  OpFaturar in 'fnts\OpFaturar.pas' {frmOpFaturar},
  sobre in 'fnts\sobre.pas' {Form_sobre},
  form_ativacaoicloud in 'fnts\form_ativacaoicloud.pas' {Form_ativacao},
  xloc_cnae in 'fnts\xloc_cnae.pas' {frmxloc_cnae},
  OpNatureza in 'fnts\OpNatureza.pas' {frmOpNatureza},
  historico in 'fnts\historico.pas' {frmHistorico},
  UFuncoes in 'fnts\UFuncoes.pas',
  ecf in 'fnts\ecf.pas',
  daruma_300 in 'fnts\daruma_300.pas',
  senha in 'fnts\senha.pas' {frmsenha},
  orcamento_grade in 'fnts\orcamento_grade.pas' {frmorcamento_grade},
  orcamento_serial in 'fnts\orcamento_serial.pas' {frmOrcamento_serial},
  formas_pgto in 'fnts\formas_pgto.pas' {frmFormas},
  os_item_3 in 'fnts\os_item_3.pas' {frmOS_item},
  Vcl.Themes,
  Vcl.Styles,
  passagem_cte in 'fnts\passagem_cte.pas' {frmPassagem_cte},
  notafiscal_cte in 'fnts\notafiscal_cte.pas' {frmNf_cte},
  nfe_cte in 'fnts\nfe_cte.pas' {frmnfe_cte},
  obs_cont_cte in 'fnts\obs_cont_cte.pas' {frmObs_cont_cte},
  Obs_fisco_cte in 'fnts\Obs_fisco_cte.pas' {frmObs_fisco},
  out_docs_cte in 'fnts\out_docs_cte.pas' {frmout_docs},
  comp_cte in 'fnts\comp_cte.pas' {frmcomp_cte},
  inf_conteiner_cte in 'fnts\inf_conteiner_cte.pas' {frmInf_Conteiner_cte},
  infcarga_cte in 'fnts\infcarga_cte.pas' {frmInfcarga_cte},
  lacre_conteiner_cte in 'fnts\lacre_conteiner_cte.pas' {frmlacre_conteiner},
  doc_ant_cte in 'fnts\doc_ant_cte.pas' {frmDoc_ante_cte},
  doc_ant_nfe in 'fnts\doc_ant_nfe.pas' {frmDoc_ant_nfe},
  doc_ant_papel_cte in 'fnts\doc_ant_papel_cte.pas' {frmDoc_papel_cte},
  seguro_cte in 'fnts\seguro_cte.pas' {frmseguro_cte},
  prod_perigoso_cte in 'fnts\prod_perigoso_cte.pas' {frmProd_perigoso_cte},
  veiculo_novo_cte in 'fnts\veiculo_novo_cte.pas' {frmVeiculo_novo},
  mercadorias_cte in 'fnts\mercadorias_cte.pas' {frm_mercadorias_cte},
  tabela_preco in 'fnts\tabela_preco.pas' {frm_tb_preco},
  xloc_combustivel in 'fnts\novo form\xloc_combustivel.pas' {frmxloc_combustivel},
  Tanque in 'fnts\novo form\Tanque.pas' {frmTanque},
  AberFechLMC in 'fnts\novo form\AberFechLMC.pas' {frmLivroLMC},
  LMC in 'fnts\novo form\LMC.pas' {frmLMC},
  xloc_LMC in 'fnts\novo form\xloc_LMC.pas' {frmxloc_LMC},
  RelLMC in 'fnts\novo form\RelLMC.pas' {frmRelLmc},
  Encerrantes in 'fnts\novo form\Encerrantes.pas' {frmEncerrantes},
  LancaEncerrantes in 'fnts\novo form\LancaEncerrantes.pas' {frmLancaEncerrantes},
  loc_bico in 'fnts\novo form\loc_bico.pas' {frmloc_bico},
  AlteraEncerrantes in 'fnts\novo form\AlteraEncerrantes.pas' {frmAlteraEncerrantes},
  Combustivel in 'fnts\novo form\Combustivel.pas' {frmCombustivel},
  Bicos in 'fnts\novo form\Bicos.pas' {frmBicos},
  Bombas in 'fnts\novo form\Bombas.pas' {frmBombas},
  TermoLMC in 'fnts\novo form\TermoLMC.pas' {frmTermoLMC},
  LMCImpressao in 'fnts\novo form\LMCImpressao.pas' {frmLMCImpressao},
  ACBrHTMLtoXML in 'fnts\novo form\RecuperarXML\ACBrHTMLtoXML.pas',
  uBuscaXml in 'fnts\novo form\uBuscaXml.pas' {frmBuscarXML},
  MargemLucro in 'fnts\novo form\MargemLucro.pas' {FMargemLucro},
  importa_nfe in 'fnts\importa_nfe.pas' {frmimporta_nfe},
  UAguarde in 'fnts\UAguarde.pas' {FAguarde},
  CNPJ in 'fnts\novo form\CNPJ\CNPJ.pas' {FCNPJ},
  uopc in 'fnts\novo form\uopc.pas' {frmOPC},
  USincronizaManifestacao in 'fnts\USincronizaManifestacao.pas',
  UfrmManifestacao in 'fnts\UfrmManifestacao.pas' {frmManifestacao},
  msg_Operador in 'fnts\msg_Operador.pas' {frmMsg_Operador},
  Func in 'fnts\Protecao\Func.pas',
  UDialog in 'fnts\Protecao\UDialog.pas' {frmDialog},
  os_item_2 in 'fnts\os_item_2.pas' {frmOS_item_2},
  ubackup in 'fnts\ubackup.pas' {frmbackup};

{$R *.res}

var
  HprevHist: HWND;
begin
  Application.Initialize;
  Application.Title := 'Softlogus Sistemas';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(Tfrmsplash, frmsplash);
  Application.CreateForm(Tfrmbackup, frmbackup);
  frmsplash.ShowModal;
  Application.CreateForm(TFCNPJ, FCNPJ);
  Application.CreateForm(TfrmOPC, frmOPC);
  Application.CreateForm(Tfrmmodulo, frmmodulo);
  Application.CreateForm(TfrmMsg_Operador, frmMsg_Operador);
  Application.CreateForm(TfrmDialog, frmDialog);
  application.ProcessMessages;
  Application.Run;
end.

