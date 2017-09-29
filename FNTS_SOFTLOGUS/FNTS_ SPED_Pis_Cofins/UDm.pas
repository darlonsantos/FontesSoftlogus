unit UDm;

interface

uses
  Windows, Forms, System.SysUtils, System.Classes, ZAbstractConnection, ZConnection, ACBrSpedFiscal, Data.DB, ZAbstractRODataset,
  ZAbstractDataset,
  ZDataset, ACBrEFDBlocos,
  Datasnap.DBClient;

type
  TDm = class(TDataModule)
    Conexao: TZConnection;
    ACBrSPEDFiscal1: TACBrSPEDFiscal;
    qrEmpresa: TZQuery;
    qrEmpresaCODIGO: TWideStringField;
    qrEmpresaFILIAL: TWideStringField;
    qrEmpresaNOTAFISCAL: TIntegerField;
    qrEmpresaENDERECO: TWideStringField;
    qrEmpresaCIDADE: TWideStringField;
    qrEmpresaUF: TWideStringField;
    qrEmpresaCEP: TWideStringField;
    qrEmpresaTELEFONE: TWideStringField;
    qrEmpresaCNPJ: TWideStringField;
    qrEmpresaIE: TWideStringField;
    qrEmpresaSEQNF: TIntegerField;
    qrEmpresaFAX: TWideStringField;
    qrEmpresaOBS1: TWideStringField;
    qrEmpresaOBS2: TWideStringField;
    qrEmpresaCONTRIBUINTE_IPI: TWideStringField;
    qrEmpresaSUBSTITUTO_TRIBUTARIO: TWideStringField;
    qrEmpresaEMPRESA_ESTADUAL: TWideStringField;
    qrEmpresaOPTANTE_SIMPLES: TWideStringField;
    qrEmpresaOPTANTE_SUPER_SIMPLES: TWideStringField;
    qrEmpresaECF: TWideStringField;
    qrEmpresaTIPO: TIntegerField;
    qrEmpresaIPI: TFloatField;
    qrEmpresaISS: TFloatField;
    qrEmpresaNUMERO: TWideStringField;
    qrEmpresaRESPONSAVEL: TWideStringField;
    qrEmpresaCOMPLEMENTO: TWideStringField;
    qrEmpresaBAIRRO: TWideStringField;
    qrEmpresaFARMACIA_RESP_TECNICO: TWideStringField;
    qrEmpresaFARMACIA_CRF: TWideStringField;
    qrEmpresaFARMACIA_CPF: TWideStringField;
    qrEmpresaFARMCIA_DATA: TDateTimeField;
    qrEmpresaFARMACIA_UF: TWideStringField;
    qrEmpresaFARMACIA_SENHA: TWideStringField;
    qrEmpresaFARMACIA_EMAIL: TWideStringField;
    qrEmpresaFARMACIA_LOGIN: TWideStringField;
    qrEmpresaFARMACIA_ENVIO: TWideStringField;
    qrEmpresaCONHECIMENTO: TIntegerField;
    qrEmpresaINDUSTRIA: TWideStringField;
    qrEmpresaFARMACIA_NUMEROLICENCA: TWideStringField;
    qrEmpresaCOD_MUNICIPIO_IBGE: TWideStringField;
    qrEmpresaIBGE: TWideStringField;
    qrEmpresaPIS: TFloatField;
    qrEmpresaCOFINS: TFloatField;
    qrEmpresaEMAIL: TWideStringField;
    qrEmpresaATIVIDADE: TWideStringField;
    qrEmpresaCONTADOR_COD_MUNICIPIO_IBGE: TWideStringField;
    qrEmpresaCONTADOR_NOME: TWideStringField;
    qrEmpresaCONTADOR_CPF: TWideStringField;
    qrEmpresaCONTADOR_CRC: TWideStringField;
    qrEmpresaCONTADOR_CNPJ: TWideStringField;
    qrEmpresaCONTADOR_CEP: TWideStringField;
    qrEmpresaCONTADOR_ENDERECO: TWideStringField;
    qrEmpresaCONTADOR_NUMERO: TWideStringField;
    qrEmpresaCONTADOR_COMPLEMENTO: TWideStringField;
    qrEmpresaCONTADOR_BAIRRO: TWideStringField;
    qrEmpresaCONTADOR_FONE: TWideStringField;
    qrEmpresaCONTADOR_FAX: TWideStringField;
    qrEmpresaCONTADOR_EMAIL: TWideStringField;
    qrEmpresaINSC_MUNICIPAL: TWideStringField;
    qrEmpresaDATA_ABERTURA: TDateTimeField;
    qrEmpresaCNAE: TWideStringField;
    qrEmpresaCRT: TWideStringField;
    qrEmpresaCONTADOR_CIDADE: TWideStringField;
    qrEmpresaCONTADOR_COD_MUNICIPIO: TWideStringField;
    qrEmpresaCONTADOR_UF: TWideStringField;
    qrEmpresaPERMITE_CREDITO: TIntegerField;
    qrEmpresaFANTASIA: TWideStringField;
    qrEmpresaDFIXAS: TFloatField;
    qrEmpresaTIPOCALCULO: TIntegerField;
    qrClientes_: TZQuery;
    qrClientes_CODIGO: TWideStringField;
    qrClientes_NOME: TWideStringField;
    qrClientes_APELIDO: TWideStringField;
    qrClientes_ENDERECO: TWideStringField;
    qrClientes_BAIRRO: TWideStringField;
    qrClientes_CIDADE: TWideStringField;
    qrClientes_UF: TWideStringField;
    qrClientes_CEP: TWideStringField;
    qrClientes_COMPLEMENTO: TWideStringField;
    qrClientes_MORADIA: TIntegerField;
    qrClientes_TIPO: TIntegerField;
    qrClientes_SITUACAO: TIntegerField;
    qrClientes_TELEFONE1: TWideStringField;
    qrClientes_TELEFONE2: TWideStringField;
    qrClientes_TELEFONE3: TWideStringField;
    qrClientes_CELULAR: TWideStringField;
    qrClientes_EMAIL: TWideStringField;
    qrClientes_RG: TWideStringField;
    qrClientes_CPF: TWideStringField;
    qrClientes_FILIACAO: TWideStringField;
    qrClientes_ESTADOCIVIL: TWideStringField;
    qrClientes_CONJUGE: TWideStringField;
    qrClientes_PROFISSAO: TWideStringField;
    qrClientes_EMPRESA: TWideStringField;
    qrClientes_RENDA: TFloatField;
    qrClientes_LIMITE: TFloatField;
    qrClientes_REF1: TWideStringField;
    qrClientes_REF2: TWideStringField;
    qrClientes_CODVENDEDOR: TWideStringField;
    qrClientes_DATA_CADASTRO: TDateTimeField;
    qrClientes_DATA_ULTIMACOMPRA: TDateTimeField;
    qrClientes_OBS1: TWideStringField;
    qrClientes_OBS2: TWideStringField;
    qrClientes_OBS3: TWideStringField;
    qrClientes_OBS4: TWideStringField;
    qrClientes_OBS5: TWideStringField;
    qrClientes_OBS6: TWideStringField;
    qrClientes_NASCIMENTO: TWideStringField;
    qrClientes_CODREGIAO: TWideStringField;
    qrClientes_CODCONVENIO: TWideStringField;
    qrClientes_CODUSUARIO: TWideStringField;
    qrClientes_NUMERO: TWideStringField;
    qrClientes_RG_ORGAO: TWideStringField;
    qrClientes_RG_ESTADO: TWideStringField;
    qrClientes_RG_EMISSAO: TDateTimeField;
    qrClientes_SEXO: TWideStringField;
    qrClientes_HISTORICO: TBlobField;
    qrClientes_PREVISAO: TDateTimeField;
    qrClientes_CNAE: TWideStringField;
    qrClientes_COD_MUNICIPIO_IBGE: TWideStringField;
    qrClientes_IBGE: TWideStringField;
    qrClientes_TAMANHO_CALCA: TWideStringField;
    qrClientes_TAMANHO_BLUSA: TWideStringField;
    qrClientes_TAMANHO_SAPATO: TWideStringField;
    qrClientes_CORRESP_ENDERECO: TWideStringField;
    qrClientes_CORRESP_BAIRRO: TWideStringField;
    qrClientes_CORRESP_CIDADE: TWideStringField;
    qrClientes_CORRESP_UF: TWideStringField;
    qrClientes_CORRESP_CEP: TWideStringField;
    qrClientes_CORRESP_COMPLEMENTO: TWideStringField;
    qrClientes_RG_PRODUTOR: TWideStringField;
    qrClientes_RESP1_NOME: TWideStringField;
    qrClientes_RESP1_CPF: TWideStringField;
    qrClientes_RESP1_RG: TWideStringField;
    qrClientes_RESP1_PROFISSAO: TWideStringField;
    qrClientes_RESP1_ESTADO_CIVIL: TWideStringField;
    qrClientes_RESP1_ENDERECO: TWideStringField;
    qrClientes_RESP1_BAIRRO: TWideStringField;
    qrClientes_RESP1_CIDADE: TWideStringField;
    qrClientes_RESP1_UF: TWideStringField;
    qrClientes_RESP1_CEP: TWideStringField;
    qrClientes_RESP2_NOME: TWideStringField;
    qrClientes_RESP2_CPF: TWideStringField;
    qrClientes_RESP2_RG: TWideStringField;
    qrClientes_RESP2_PROFISSAO: TWideStringField;
    qrClientes_RESP2_ESTADO_CIVIL: TWideStringField;
    qrClientes_RESP2_ENDERECO: TWideStringField;
    qrClientes_RESP2_BAIRRO: TWideStringField;
    qrClientes_RESP2_CIDADE: TWideStringField;
    qrClientes_RESP2_UF: TWideStringField;
    qrClientes_RESP2_CEP: TWideStringField;
    qrClientes_FOTO: TWideStringField;
    qrFornecedores_: TZQuery;
    qrFornecedores_CODIGO: TWideStringField;
    qrFornecedores_NOME: TWideStringField;
    qrFornecedores_FANTASIA: TWideStringField;
    qrFornecedores_ENDERECO: TWideStringField;
    qrFornecedores_BAIRRO: TWideStringField;
    qrFornecedores_CIDADE: TWideStringField;
    qrFornecedores_UF: TWideStringField;
    qrFornecedores_CEP: TWideStringField;
    qrFornecedores_COMPLEMENTO: TWideStringField;
    qrFornecedores_TELEFONE1: TWideStringField;
    qrFornecedores_TELEFONE2: TWideStringField;
    qrFornecedores_FAX: TWideStringField;
    qrFornecedores_CONTATO1: TWideStringField;
    qrFornecedores_CONTATO2: TWideStringField;
    qrFornecedores_CELULAR1: TWideStringField;
    qrFornecedores_CELULAR2: TWideStringField;
    qrFornecedores_EMAIL: TWideStringField;
    qrFornecedores_HOMEPAGE: TWideStringField;
    qrFornecedores_CNPJ: TWideStringField;
    qrFornecedores_IE: TWideStringField;
    qrFornecedores_BANCO: TWideStringField;
    qrFornecedores_AGENCIA: TWideStringField;
    qrFornecedores_CONTA: TWideStringField;
    qrFornecedores_OBS1: TWideStringField;
    qrFornecedores_OBS2: TWideStringField;
    qrFornecedores_OBS3: TWideStringField;
    qrFornecedores_DATA: TDateTimeField;
    qrFornecedores_TIPO: TIntegerField;
    qrFornecedores_ASSISTENCIA_TECNICA: TIntegerField;
    qrFornecedores_NUMERO: TWideStringField;
    qrFornecedores_IM: TWideStringField;
    qrFornecedores_REP_NOME: TWideStringField;
    qrFornecedores_REP_TELEFONE: TWideStringField;
    qrFornecedores_REP_ENDERECO: TWideStringField;
    qrFornecedores_REP_BAIRRO: TWideStringField;
    qrFornecedores_REP_COMPLEMENTO: TWideStringField;
    qrFornecedores_REP_CIDADE: TWideStringField;
    qrFornecedores_REP_UF: TWideStringField;
    qrFornecedores_REP_CEP: TWideStringField;
    qrFornecedores_REP_TELEFONE1: TWideStringField;
    qrFornecedores_REP_TELEFONE2: TWideStringField;
    qrFornecedores_REP_TELEFONE3: TWideStringField;
    qrFornecedores_REP_FAX: TWideStringField;
    qrFornecedores_REP_CNPJ: TWideStringField;
    qrFornecedores_REP_IE: TWideStringField;
    qrFornecedores_REP_HOME_PAGE: TWideStringField;
    qrFornecedores_REP_EMAIL: TWideStringField;
    qrFornecedores_CNAE: TWideStringField;
    qrFornecedores_COD_MUNICIPIO_IBGE: TWideStringField;
    qrFornecedores_IBGE: TWideStringField;
    qrUnidades: TZQuery;
    qrProdutos: TZQuery;
    qrContaContabil: TZQuery;
    qrNotasEntradaSaida: TZQuery;
    qrNotasEntradaSaidaTIPO: TWideStringField;
    qrNotasEntradaSaidaCODIGO: TWideStringField;
    qrNotasEntradaSaidaNUMERO: TWideStringField;
    qrNotasEntradaSaidaCODFORNECEDOR: TWideStringField;
    qrNotasEntradaSaidaCODCLIENTE: TWideStringField;
    qrNotasEntradaSaidaMODELO: TWideStringField;
    qrNotasEntradaSaidaSERIE: TWideStringField;
    qrNotasEntradaSaidaCFOP: TWideStringField;
    qrNotasEntradaSaidaDATA_EMISSAO: TDateTimeField;
    qrNotasEntradaSaidaCHAVE: TWideStringField;
    qrNotasEntradaSaidaSTATUS: TWideStringField;
    qrNotasEntradaSaidaVALOR_NOTA: TFloatField;
    qrNotasEntradaSaidaDESCONTO: TFloatField;
    qrNotasEntradaSaidaTOTAL_PRODUTOS: TFloatField;
    qrNotasEntradaSaidaFRETE_CONTA: TWideStringField;
    qrNotasEntradaSaidaFRETE: TFloatField;
    qrNotasEntradaSaidaSEGURO: TFloatField;
    qrNotasEntradaSaidaOUTRAS: TFloatField;
    qrNotasEntradaSaidaBASE_ICMS: TFloatField;
    qrNotasEntradaSaidaVALOR_ICMS: TFloatField;
    qrNotasEntradaSaidaBASE_SUB: TFloatField;
    qrNotasEntradaSaidaVALOR_SUB: TFloatField;
    qrNotasEntradaSaidaIPI: TFloatField;
    qrItensNotas: TZQuery;
    qrContaContabilCODIGO: TIntegerField;
    qrContaContabilCONTA: TWideStringField;
    qrContaContabilDESCRICAO: TWideStringField;
    qrContaContabilNIVEL: TIntegerField;
    qrContaContabilCTAANALITICA: TIntegerField;
    qrContaContabilCODCTASUP: TIntegerField;
    qrContaContabilGRUPO: TIntegerField;
    qrC400_ECF: TZQuery;
    qrProdutosAlterados: TZQuery;
    qrProdutosAlteradosCODIGO: TWideStringField;
    qrProdutosAlteradosDESCR_ANT_ITEM: TWideStringField;
    qrProdutosAlteradosDT_INI: TDateTimeField;
    qrProdutosAlteradosDT_FIM: TDateTimeField;
    qrProdutosAlteradosCOD_ANT_ITEM: TWideStringField;
    qrProdutosAlteradosENVIADO: TIntegerField;
    qrC400_ECFCODIGO: TWideStringField;
    qrC400_ECFREG: TWideStringField;
    qrC400_ECFCOD_MOD: TWideStringField;
    qrC400_ECFECF_MOD: TWideStringField;
    qrC400_ECFECF_FAB_SN: TWideStringField;
    qrC400_ECFECF_CX: TIntegerField;
    qrC405_REDUCOES: TZQuery;
    qrC405_REDUCOESCODIGO: TWideStringField;
    qrC405_REDUCOESCODECF: TWideStringField;
    qrC405_REDUCOESREG: TWideStringField;
    qrC405_REDUCOESDT_DOC: TDateTimeField;
    qrC405_REDUCOESCRO: TIntegerField;
    qrC405_REDUCOESCRZ: TIntegerField;
    qrC405_REDUCOESNUM_COO_FIN: TIntegerField;
    qrC405_REDUCOESGT_FFIN: TFloatField;
    qrC405_REDUCOESVL_BRT: TFloatField;
    qrC420_TOTAISRED: TZQuery;
    qrC420_TOTAISREDCODIGO: TWideStringField;
    qrC420_TOTAISREDCODC405: TWideStringField;
    qrC420_TOTAISREDREG: TWideStringField;
    qrC420_TOTAISREDCOD_TOT_PAR: TWideStringField;
    qrC420_TOTAISREDVLR_ACUM_TOT: TFloatField;
    qrC420_TOTAISREDNR_TOT: TIntegerField;
    qrC420_TOTAISREDDESCR_NR_TOT: TWideStringField;
    qrC460_CUPONS: TZQuery;
    qrC470_ITENSCUPOM: TZQuery;
    qrC490_ECFMOVDIA: TZQuery;
    qrC490_ECFMOVDIACODIGO: TWideStringField;
    qrC490_ECFMOVDIACODC405: TWideStringField;
    qrC490_ECFMOVDIAREG: TWideStringField;
    qrC490_ECFMOVDIACST_ICMS: TWideStringField;
    qrC490_ECFMOVDIACFOP: TWideStringField;
    qrC490_ECFMOVDIAALIQ_ICMS: TFloatField;
    qrC490_ECFMOVDIAVL_OPR: TFloatField;
    qrC490_ECFMOVDIAVL_BC_ICMS: TFloatField;
    qrC490_ECFMOVDIAVL_ICMS: TFloatField;
    qrC490_ECFMOVDIACOD_OBS: TWideStringField;
    qrCMD: TZQuery;
    qrC460_CUPONSCODIGO: TWideStringField;
    qrC460_CUPONSCODC405: TWideStringField;
    qrC460_CUPONSREG: TWideStringField;
    qrC460_CUPONSCOD_MOD: TWideStringField;
    qrC460_CUPONSCOD_SIT: TIntegerField;
    qrC460_CUPONSNUM_DOC: TIntegerField;
    qrC460_CUPONSDT_DOC: TDateTimeField;
    qrC460_CUPONSVL_DOC: TFloatField;
    qrC460_CUPONSVL_PIS: TFloatField;
    qrC460_CUPONSVL_COFINS: TFloatField;
    qrC460_CUPONSCPF_CNPJ: TWideStringField;
    qrC460_CUPONSNOM_ADQ: TWideStringField;
    qrC470_ITENSCUPOMCODIGO: TWideStringField;
    qrC470_ITENSCUPOMCODC460: TWideStringField;
    qrC470_ITENSCUPOMREG: TWideStringField;
    qrC470_ITENSCUPOMCOD_ITEM: TWideStringField;
    qrC470_ITENSCUPOMQTD: TFloatField;
    qrC470_ITENSCUPOMQTD_CANC: TFloatField;
    qrC470_ITENSCUPOMUNID: TWideStringField;
    qrC470_ITENSCUPOMVL_ITEM: TFloatField;
    qrC470_ITENSCUPOMCST_ICMS: TIntegerField;
    qrC470_ITENSCUPOMCFOP: TIntegerField;
    qrC470_ITENSCUPOMALIQ_ICMS: TFloatField;
    qrC470_ITENSCUPOMVL_PIS: TFloatField;
    qrC470_ITENSCUPOMVL_COFINS: TFloatField;
    qrProdutosCODIGO: TWideStringField;
    qrProdutosDT_INI: TDateTimeField;
    qrProdutosDT_FIM: TDateTimeField;
    qrProdutosREG: TWideStringField;
    qrProdutosCOD_ITEM: TWideStringField;
    qrProdutosDESCR_ITEM: TWideStringField;
    qrProdutosCOD_BARRA: TWideStringField;
    qrProdutosCOD_ANT_ITEM: TWideStringField;
    qrProdutosUNID_INV: TWideStringField;
    qrProdutosTIPO_ITEM: TIntegerField;
    qrProdutosCOD_NCM: TWideStringField;
    qrProdutosEX_IPI: TWideStringField;
    qrProdutosCOD_GEN: TIntegerField;
    qrProdutosCOD_LST: TIntegerField;
    qrProdutosALIQ_ICMS: TFloatField;
    qrItensMov: TZQuery;
    qrItensMovTIPO: TWideStringField;
    qrItensMovCOD_ITEM: TWideStringField;
    qrItensMovDESC_ITEM: TWideStringField;
    qrItensMovCOD_BARRA: TWideStringField;
    qrItensMovUNID_INV: TWideStringField;
    qrItensMovCOD_NCM: TWideStringField;
    qrItensMovALIQ_ICMS: TFloatField;
    qrParticipantes: TZQuery;
    qrParticipantesTIPO: TWideStringField;
    qrParticipantesCOD_PART: TWideStringField;
    qrParticipantesNOME: TWideStringField;
    qrParticipantesCOD_PAIS: TWideStringField;
    qrParticipantesCNPJ: TWideStringField;
    qrParticipantesCPF: TWideStringField;
    qrParticipantesIE: TWideStringField;
    qrParticipantesCOD_MUN: TWideStringField;
    qrParticipantesSUFRAMA: TWideStringField;
    qrParticipantesSEND: TWideStringField;
    qrParticipantesNUM: TWideStringField;
    qrParticipantesCOMPL: TWideStringField;
    qrParticipantesBAIRRO: TWideStringField;
    qrUnidadesCODIGO: TWideStringField;
    qrUnidadesDT_INI: TDateTimeField;
    qrUnidadesDT_FIM: TDateTimeField;
    qrUnidadesUNIDADE: TWideStringField;
    qrUnidadesDESCRICAO: TWideStringField;
    qrC190_Analitico: TZQuery;
    qrC190_AnaliticoTIPO: TWideStringField;
    qrC190_AnaliticoCST: TWideStringField;
    qrC190_AnaliticoCFOP: TWideStringField;
    qrC190_AnaliticoICMS_ALIQUOTA: TFloatField;
    qrC190_AnaliticoVL_BC_ICMS: TFloatField;
    qrC190_AnaliticoVL_ICMS: TFloatField;
    qrC190_AnaliticoVL_BC_ICMS_ST: TFloatField;
    qrC190_AnaliticoVL_ICMS_ST: TFloatField;
    qrC190_AnaliticoVL_RED_BC: TFloatField;
    qrC190_AnaliticoVL_IPI: TFloatField;
    qrInventario: TZQuery;
    qrInventarioTotal: TZQuery;
    qrInventarioTotalVALOR_ESTOQUE: TFloatField;
    qrInventarioCODIGO: TWideStringField;
    qrInventarioCODBARRA: TWideStringField;
    qrInventarioUNIDADE: TWideStringField;
    qrInventarioESTOQUE: TFloatField;
    qrInventarioPRECOVENDA: TFloatField;
    qrInventarioVL_ITEM: TFloatField;
    qrInventarioCODFORNECEDOR: TWideStringField;
    qrInventarioPRODUTO: TWideStringField;
    qrInventarioNCM: TWideStringField;
    qrInventarioALIQUOTA: TFloatField;
    qrNotasEntradaSaidaPAGAMENTO: TWideStringField;
    qrItensNotasTIPO: TWideStringField;
    qrItensNotasNUM_ITEM: TWideStringField;
    qrItensNotasCOD_ITEM: TWideStringField;
    qrItensNotasCBARRA: TWideStringField;
    qrItensNotasQTD: TFloatField;
    qrItensNotasUNID: TWideStringField;
    qrItensNotasVL_ITEM: TFloatField;
    qrItensNotasVL_DESC: TFloatField;
    qrItensNotasCST_ICMS: TWideStringField;
    qrItensNotasCFOP: TWideStringField;
    qrItensNotasVL_BC_ICMS: TFloatField;
    qrItensNotasALIQ_ICMS: TFloatField;
    qrItensNotasVL_ICMS: TFloatField;
    qrItensNotasVL_BC_ICMS_ST: TFloatField;
    qrItensNotasALIQ_ST: TWideStringField;
    qrItensNotasVL_ICMS_ST: TFloatField;
    qrItensNotasCST_IPI: TWideStringField;
    qrItensNotasVL_BC_IPI: TWideStringField;
    qrItensNotasALIQ_IPI: TFloatField;
    qrItensNotasVL_IPI: TFloatField;
    qrC400_ECFDT_INI: TDateTimeField;
    qrC400_ECFDT_FIM: TDateTimeField;
  private
    iCOD_VER, iCOD_VERPC, iCOD_FIN, iPERFIL, iINDICADOR: Integer;
    { Private declarations }
  public
    { Public declarations }

    { carregar produtos movimentados no periodo }
    procedure Carregar_Produtos(DT_INI, DT_FIM: TDate);
    procedure Carregar_Unidades(DT_INI, DT_FIM: TDate);
    procedure Carregar_Participantes(DT_INI, DT_FIM: TDate);

    procedure AtualizaMemo;

    procedure DadosBloco_0;
    procedure DadosBloco_C;
    procedure DadosBloco_G;
    procedure DadosBloco_H;
    procedure DadosBloco_E;
    procedure DadosBloco_1;

  end;

var
  Dm: TDm;

implementation

{ %CLASSGROUP 'System.Classes.TPersistent' }

uses UPrincipal, UFuncoes, UEFDImporta;

{$R *.dfm}
{ TDm }

{ TDm }

procedure TDm.AtualizaMemo;
begin
  FPrincipal.MemoLog.Lines.Clear;
  if FileExists(ACBrSPEDFiscal1.Path + ACBrSPEDFiscal1.Arquivo) then
    FPrincipal.MemoLog.Lines.LoadFromFile(ACBrSPEDFiscal1.Path + ACBrSPEDFiscal1.Arquivo);

end;

procedure TDm.Carregar_Participantes(DT_INI, DT_FIM: TDate);
begin
  qrParticipantes.close;
  qrParticipantes.Params.ParamByName('DATAi').Value := StrToDate(DateToStr(DT_INI));
  qrParticipantes.Params.ParamByName('DATAf').Value := StrToDate(DateToStr(DT_FIM));
  qrParticipantes.Open;
  qrParticipantes.RecordCount;
  FPrincipal.IconListView(FPrincipal.ListSPED.Items.Count - 1, icOK);
end;

procedure TDm.Carregar_Produtos(DT_INI, DT_FIM: TDate);
begin
  qrItensMov.close;
  qrItensMov.Params.ParamByName('DATAi').Value := StrToDate(DateToStr(DT_INI));
  qrItensMov.Params.ParamByName('DATAf').Value := StrToDate(DateToStr(DT_FIM));
  qrItensMov.Open;

  qrProdutos.close;
  qrProdutos.Params.ParamByName('DT_INI').Value := StrToDate(DateToStr(DT_INI));
  qrProdutos.Params.ParamByName('DT_FIM').Value := StrToDate(DateToStr(DT_FIM));
  qrProdutos.Open;

  qrItensMov.First;
  while not qrItensMov.Eof do
  begin
    if (not qrProdutos.Locate('COD_ITEM', qrItensMovCOD_ITEM.AsString, [loCaseInsensitive])) then
    begin
      qrProdutos.Insert;
      qrProdutosCODIGO.Value := inc('SPED_0200', 'CODIGO', '');
      qrProdutosDT_INI.Value := StrToDate(DateToStr(DT_INI));
      qrProdutosDT_FIM.Value := StrToDate(DateToStr(DT_FIM));
      qrProdutosREG.Value := '0200';
      qrProdutosCOD_ITEM.Value := qrItensMovCOD_ITEM.AsString;
      qrProdutosDESCR_ITEM.Value := qrItensMovDESC_ITEM.AsString;
      qrProdutosCOD_BARRA.Value := qrItensMovCOD_BARRA.AsString;
      // qrProdutosCOD_ANT_ITEM.Value := '';
      qrProdutosUNID_INV.Value := qrItensMovUNID_INV.AsString;
      qrProdutosTIPO_ITEM.Value := 99;
      qrProdutosCOD_NCM.Value := qrItensMovCOD_NCM.AsString;
      // qrProdutosEX_IPI.Value := qrItensMov;
      qrProdutosCOD_GEN.Value := 0;
      qrProdutosCOD_LST.Value := 0;
      qrProdutosALIQ_ICMS.Value := qrItensMovALIQ_ICMS.AsFloat;
      qrProdutos.Post;
    end;

    qrItensMov.Next;
    Application.ProcessMessages;
  end;

  { informar os itens do inventario no 0200 }
  if FPrincipal.CheckInventario.Checked then
  begin
    qrInventario.close;
    qrInventario.Open;

    qrInventario.First;
    while not qrInventario.Eof do
    begin
      if (not qrProdutos.Locate('COD_ITEM', qrInventarioCODIGO.AsString, [loCaseInsensitive])) then
      begin
        qrProdutos.Insert;
        qrProdutosCODIGO.Value := inc('SPED_0200', 'CODIGO', '');
        qrProdutosDT_INI.Value := StrToDate(DateToStr(DT_INI));
        qrProdutosDT_FIM.Value := StrToDate(DateToStr(DT_FIM));
        qrProdutosREG.Value := '0200';
        qrProdutosCOD_ITEM.Value := qrInventarioCODIGO.AsString;
        qrProdutosDESCR_ITEM.Value := qrInventarioPRODUTO.AsString;
        qrProdutosCOD_BARRA.Value := qrInventarioCODBARRA.AsString;
        // qrProdutosCOD_ANT_ITEM.Value := '';
        qrProdutosUNID_INV.Value := qrInventarioUNIDADE.AsString;
        qrProdutosTIPO_ITEM.Value := 99;
        qrProdutosCOD_NCM.Value := qrInventarioNCM.AsString;
        qrProdutosCOD_GEN.Value := 0;
        qrProdutosCOD_LST.Value := 0;
        qrProdutosALIQ_ICMS.Value := qrInventarioALIQUOTA.AsFloat;
        qrProdutos.Post;
      end;

      qrInventario.Next;
      Application.ProcessMessages;
    end;

  end;

  FPrincipal.IconListView(FPrincipal.ListSPED.Items.Count - 1, icOK);

end;

procedure TDm.Carregar_Unidades(DT_INI, DT_FIM: TDate);
begin
  // try
  qrProdutos.close;
  qrProdutos.Params.ParamByName('DT_INI').Value := StrToDate(DateToStr(DT_INI));
  qrProdutos.Params.ParamByName('DT_FIM').Value := StrToDate(DateToStr(DT_FIM));
  qrProdutos.Open;

  qrUnidades.close;
  qrUnidades.Params.ParamByName('DT_INI').Value := StrToDate(DateToStr(DT_INI));
  qrUnidades.Params.ParamByName('DT_FIM').Value := StrToDate(DateToStr(DT_FIM));
  qrUnidades.Open;

  qrProdutos.First;
  while not qrProdutos.Eof do
  begin
    if (not qrUnidades.Locate('UNIDADE', qrProdutosUNID_INV.AsString, [loCaseInsensitive])) then
    begin
      qrUnidades.Insert;
      qrUnidadesCODIGO.Value := inc('SPED_0190', 'CODIGO', '');
      qrUnidadesDT_INI.Value := StrToDate(DateToStr(DT_INI));
      qrUnidadesDT_FIM.Value := StrToDate(DateToStr(DT_FIM));
      qrUnidadesUNIDADE.Value := copy(qrProdutosUNID_INV.AsString, 1, 3);
      qrUnidadesDESCRICAO.Value := 'Sem Descricao';
      qrUnidades.Post
    end;

    qrProdutos.Next;
    Application.ProcessMessages;
  end;

  qrItensMov.close;
  qrItensMov.Params.ParamByName('DATAi').Value := StrToDate(DateToStr(DT_INI));
  qrItensMov.Params.ParamByName('DATAf').Value := StrToDate(DateToStr(DT_FIM));
  qrItensMov.Open;

  qrItensMov.First;
  while not qrItensMov.Eof do
  begin
    if (not qrUnidades.Locate('UNIDADE', qrItensMovUNID_INV.AsString, [loCaseInsensitive])) then
    begin
      qrUnidades.Insert;
      qrUnidadesCODIGO.Value := inc('SPED_0190', 'CODIGO', '');
      qrUnidadesDT_INI.Value := StrToDate(DateToStr(DT_INI));
      qrUnidadesDT_FIM.Value := StrToDate(DateToStr(DT_FIM));
      qrUnidadesUNIDADE.Value := qrItensMovUNID_INV.AsString;
      qrUnidadesDESCRICAO.Value := 'Sem Descri��o';
      qrUnidades.Post
    end;

    qrItensMov.Next;
    Application.ProcessMessages;
  end;
  FPrincipal.IconListView(FPrincipal.ListSPED.Items.Count - 1, icOK);

  { except
    FPrincipal.IconListView(FPrincipal.ListSPED.Items.Count - 1, icErro);
    end;
  }
end;

procedure TDm.DadosBloco_0;
var
  aCodVersao: TACBrVersaoLeiaute;
  aPerfil: TACBrPerfil;
  aIndicador: TACBrAtividade;
  aCodFin: TACBrCodFinalidade;

  int0150: Integer; { participantes }
  int0175: Integer; { altera��es participantes }
  int0200: Integer; { identifica��o dos produtos }
  int0300: Integer;
  int0190: Integer;
  int0500: Integer;
  int0600: Integer;
begin

  FPrincipal.ProgressBloco.Position := 0;
  FPrincipal.LbBlocos.Caption := 'BLOCO 0';
  qrEmpresa.close;
  qrEmpresa.Open;

  // qrClientes.close;
  // qrClientes.Open;

  // qrFornecedores.close;
  // qrFornecedores.Open;

  { qrParticipantes.close;
    qrParticipantes.Params.ParamByName('DATAi').Value := StrToDate(DateToStr(FPrincipal.Datai.Date));
    qrParticipantes.Params.ParamByName('DATAf').Value := StrToDate(DateToStr(FPrincipal.Dataf.Date));
    qrParticipantes.Open;
  }
  qrContaContabil.close;
  qrContaContabil.Open;

  qrProdutos.close;
  qrProdutos.Params.ParamByName('DT_INI').Value := StrToDate(DateToStr(FPrincipal.Datai.Date));
  qrProdutos.Params.ParamByName('DT_FIM').Value := StrToDate(DateToStr(FPrincipal.Dataf.Date));
  qrProdutos.Open;

  qrUnidades.close;
  qrUnidades.Params.ParamByName('DT_INI').Value := StrToDate(DateToStr(FPrincipal.Datai.Date));
  qrUnidades.Params.ParamByName('DT_FIM').Value := StrToDate(DateToStr(FPrincipal.Dataf.Date));
  qrUnidades.Open;


  // Alimenta o componente com informa��es para gerar todos os registros do
  // Bloco 0.

  { versao arquivo }
  case FPrincipal.ComboVersao.ItemIndex of
    0:
      aCodVersao := vlVersao100;
    1:
      aCodVersao := vlVersao101;
    2:
      aCodVersao := vlVersao101;
    3:
      aCodVersao := vlVersao103;
    4:
      aCodVersao := vlVersao104;
    5:
      aCodVersao := vlVersao105;
  end;

  { finalidade }
  case FPrincipal.RadioFinalidade.ItemIndex of
    0:
      aCodFin := raOriginal;
    1:
      aCodFin := raSubstituto;
  end;

  { indicador }
  case FPrincipal.RadioIndicador.ItemIndex of
    0:
      aIndicador := atIndustrial;
    1:
      aIndicador := atOutros;
  end;

  { perfil empresa }
  case FPrincipal.RadioPerfil.ItemIndex of
    0:
      aPerfil := pfPerfilA;
    1:
      aPerfil := pfPerfilB;
    2:
      aPerfil := pfPerfilC;
  end;

  // Definindo
  with ACBrSPEDFiscal1 do
  begin
    DT_INI := FPrincipal.Datai.Date;
    DT_FIN := FPrincipal.Dataf.Date;
  end;

  with ACBrSPEDFiscal1 do
  begin
    IniciaGeracao;
    AtualizaMemo;
  end;

  { gera��o do BLOCO 0 }
  with ACBrSPEDFiscal1.Bloco_0 do
  begin
    // Dados da Empresa
    with Registro0000New do
    begin
      COD_VER := aCodVersao;
      COD_FIN := aCodFin;
      NOME := qrEmpresaFILIAL.AsString;
      CNPJ := sn(qrEmpresaCNPJ.AsString);
      CPF := '';
      UF := qrEmpresaUF.AsString;
      IE := sn(qrEmpresaIE.AsString);
      COD_MUN := isInteger(qrEmpresaCOD_MUNICIPIO_IBGE.AsString);
      IM := '';
      SUFRAMA := '';
      IND_PERFIL := aPerfil;
      IND_ATIV := aIndicador;
    end;

    with Registro0001New do
    begin
      IND_MOV := imComDados;

      // FILHO - Dados complementares da Empresa
      with Registro0005New do
      begin
        FANTASIA := qrEmpresaFANTASIA.AsString;
        CEP := sn(qrEmpresaCEP.AsString);
        ENDERECO := qrEmpresaENDERECO.AsString;
        NUM := qrEmpresaNUMERO.AsString;
        COMPL := qrEmpresaCOMPLEMENTO.AsString;
        BAIRRO := qrEmpresaBAIRRO.AsString;
        FONE := sn(qrEmpresaTELEFONE.AsString);
        FAX := sn(qrEmpresaFAX.AsString);
        EMAIL := qrEmpresaEMAIL.AsString;
      end;
      //
      // with Registro0015New do
      // begin
      // UF_ST := 'SC';
      // IE_ST := '254504230';
      // end;
      //
      // FILHO - Dados do contador.
      with Registro0100New do
      begin
        NOME := qrEmpresaCONTADOR_NOME.AsString;
        CPF := sn(qrEmpresaCONTADOR_CPF.AsString);
        CRC := sn(qrEmpresaCONTADOR_CRC.AsString);
        CNPJ := sn(qrEmpresaCONTADOR_CNPJ.AsString);
        CEP := sn(qrEmpresaCONTADOR_CEP.AsString);
        ENDERECO := qrEmpresaCONTADOR_ENDERECO.AsString;
        NUM := qrEmpresaCONTADOR_NUMERO.AsString;
        COMPL := qrEmpresaCONTADOR_COMPLEMENTO.AsString;
        BAIRRO := qrEmpresaCONTADOR_BAIRRO.AsString;
        FONE := sn(qrEmpresaCONTADOR_FONE.AsString);
        FAX := sn(qrEmpresaCONTADOR_FAX.AsString);
        EMAIL := qrEmpresaCONTADOR_EMAIL.AsString;
        COD_MUN := isInteger(qrEmpresaCONTADOR_COD_MUNICIPIO.AsString);
      end;

      // FILHO - participantes

      FPrincipal.ProgressBar1.Max := qrParticipantes.RecordCount;
      qrParticipantes.First;
      while not qrParticipantes.Eof do
      begin
        // 10 Clientes
        with Registro0150New do
        begin
          COD_PART := qrParticipantesTIPO.AsString + qrParticipantesCOD_PART.AsString; // TIPO + CODIGO ex: F000001 OU C000001
          NOME := qrParticipantesNOME.AsString;
          COD_PAIS := '1058';

          if Length(sn(qrParticipantesCNPJ.AsString)) > 11 then
            CNPJ := sn(qrParticipantesCNPJ.AsString)
          else
            CPF := sn(qrParticipantesCNPJ.AsString);

          IE := sn(qrParticipantesIE.AsString);
          COD_MUN := isInteger(qrParticipantesCOD_MUN.AsString);
          SUFRAMA := qrParticipantesSUFRAMA.AsString;
          ENDERECO := qrParticipantesSEND.AsString;
          NUM := qrParticipantesNUM.AsString;
          COMPL := qrParticipantesCOMPL.AsString;
          BAIRRO := qrParticipantesBAIRRO.AsString;
          //
          // FILHO - 1 Altera��o para cada cliente de 2 a 3
          {
            if (int0150 = 2) or (int0150 = 3) then
            begin
            with Registro0175New do
            begin
            DT_ALT := DT_INI + 1;
            NR_CAMPO := '1';
            CONT_ANT := 'CAMPO ANTERIOR ' + '1';
            end;
            end;
          }

        end;
        qrParticipantes.Next;
        FPrincipal.LbBlocos.Caption := 'BLOCO 0 - 150 > Participantes';
        FPrincipal.ProgressBloco.Position := FPrincipal.ProgressBloco.Position + 1;
        FPrincipal.ProgressBar1.Position := FPrincipal.ProgressBar1.Position + 1;
        Application.ProcessMessages;
      end;

      // FILHO
      // 4 Unidades de medida
      FPrincipal.ProgressBar1.Max := qrUnidades.RecordCount;
      qrUnidades.First;
      while not qrUnidades.Eof do
      begin
        if not Registro0190.LocalizaRegistro(qrUnidadesUNIDADE.AsString) then
        begin
          with Registro0190New do
          begin
            UNID := qrUnidadesUNIDADE.AsString;
            DESCR := qrUnidadesDESCRICAO.AsString;
          end;
        end;
        qrUnidades.Next;
        FPrincipal.LbBlocos.Caption := 'BLOCO 0 - 190 > Unidades de Medidas';
        FPrincipal.ProgressBloco.Position := FPrincipal.ProgressBloco.Position + 1;
        FPrincipal.ProgressBar1.Position := FPrincipal.ProgressBar1.Position + 1;
        Application.ProcessMessages;
      end;

      { identifica��o dos produtos }

      FPrincipal.ProgressBar1.Max := qrProdutos.RecordCount;
      qrProdutos.First;
      while not qrProdutos.Eof do
      begin
        if not Registro0200.LocalizaRegistro(qrProdutosCOD_ITEM.AsString) then
        begin
          with Registro0200New do
          begin
            COD_ITEM := qrProdutosCOD_ITEM.AsString;
            DESCR_ITEM := qrProdutosDESCR_ITEM.AsString;
            COD_BARRA := qrProdutosCOD_BARRA.AsString;
            UNID_INV := qrProdutosUNID_INV.AsString;

            // if qrProdutosTIPO.AsString = 'VENDA' then
            TIPO_ITEM := tiMercadoriaRevenda;
            // else
            // TIPO_ITEM := tiMaterialConsumo;

            COD_NCM := qrProdutosCOD_NCM.AsString;
            COD_GEN := qrProdutosCOD_GEN.AsString;
            ALIQ_ICMS := qrProdutosALIQ_ICMS.AsFloat;

            // REGISTRO 0206: C�DIGO DE PRODUTO CONFORME TABELA PUBLICADA PELA ANP (COMBUST�VEIS)
            // With Registro0206New do
            // begin
            // COD_COMB := '910101001';
            // end;

          end;
        end;
        qrProdutos.Next;
        FPrincipal.LbBlocos.Caption := 'BLOCO 0 - 200 > Identifica��o dos produtos';
        FPrincipal.ProgressBloco.Position := FPrincipal.ProgressBloco.Position + 1;
        FPrincipal.ProgressBar1.Position := FPrincipal.ProgressBar1.Position + 1;
        Application.ProcessMessages;
      end;

      // FILHO
      {
        for int0300 := 1 to 10 do
        begin
        // 10 Bens Imobilizados
        with Registro0300New do
        begin
        COD_IND_BEM := FormatFloat('000000', int0300);
        IDENT_MERC := 1;
        DESCR_ITEM := 'DESCRI��O DO ITEM';
        COD_PRNC := '';
        COD_CTA := '';
        NR_PARC := 10;
        // FILHO
        with Registro0305New do
        begin
        COD_CCUS := '1';
        // FUNC := 'BREVE DESCRI��O DA FUN��O DO IMOBILIZADO ' +FormatFloat('000000', int0300);;
        VIDA_UTIL := 60;
        end;
        end;
        end;
      }
      {
        with Registro0400New do
        begin
        COD_NAT := '12020';
        DESCR_NAT := 'DESCRI��O DA NATUREZA DE OPERA��O 12020';
        end;

        with Registro0450New do
        begin
        COD_INF := '000001';
        TXT := 'INFORMA��O COMPLEMENTAR DO DOCUMENTO FISCAL';
        end;

        with Registro0460New do
        begin
        COD_OBS := '000001';
        TXT := 'TEXTO DE OBSERVA��O DO DOCUMENTO FISCAL ';
        end;
      }

      { plano de conta contabil }

      FPrincipal.ProgressBar1.Max := qrContaContabil.RecordCount;
      qrContaContabil.First;
      while not qrContaContabil.Eof do
      begin
        with Registro0500New do
        begin
          DT_ALT := DT_INI;

          COD_NAT_CC := zerarcodigo(copy(qrContaContabilCONTA.AsString, 1, 1), 2);

          if qrContaContabilCTAANALITICA.AsInteger = 1 then
            IND_CTA := 'A'
          else
            IND_CTA := 'S';

          NIVEL := qrContaContabilNIVEL.AsString;
          COD_CTA := qrContaContabilCONTA.AsString;
          NOME_CTA := copy(qrContaContabilDESCRICAO.AsString, 1, 59);
        end;
        qrContaContabil.Next;
        FPrincipal.LbBlocos.Caption := 'BLOCO 0 - 500 > Planos de Contas';
        FPrincipal.ProgressBloco.Position := FPrincipal.ProgressBloco.Position + 1;
        FPrincipal.ProgressBar1.Position := FPrincipal.ProgressBar1.Position + 1;
        Application.ProcessMessages;
      end;
      { centro de custos }
      {
        for int0600 := 1 to 10 do
        begin
        with Registro0600New do
        begin
        DT_ALT := StrToDate('30/11/2011');
        COD_CCUS := IntToStr(int0600);
        CCUS := 'CENTRO DE CUSTOS ' + IntToStr(int0600);
        end;
        end;
      }
    end;

  end;

  // if cbConcomitante.Checked then
  begin
    ACBrSPEDFiscal1.WriteBloco_0;
    AtualizaMemo;
  end;
  FPrincipal.IconListView(FPrincipal.ListSPED.Items.Count - 1, icOK);
end;

procedure TDm.DadosBloco_1;
begin

  with ACBrSPEDFiscal1.Bloco_1 do
  begin
    with Registro1001New do
    begin
      IND_MOV := imSemDados;
    end;
  end;

  ACBrSPEDFiscal1.WriteBloco_1;
  AtualizaMemo;

end;

procedure TDm.DadosBloco_C;
var
  INotas: Integer;
  IItens: Integer;
  NNotas: Integer;
  BNotas: Integer;
  dVL_OPR, dVL_IPI, dVL_SEG, dVL_OUT_DA, dVL_BC_ICMS, dVL_ICMS, dVL_BC_ICMS_ST, dVL_ICMS_ST: double;
begin

  qrNotasEntradaSaida.close;
  qrNotasEntradaSaida.Params.ParamByName('DATAi').Value := StrToDate(DateToStr(FPrincipal.Datai.Date));
  qrNotasEntradaSaida.Params.ParamByName('DATAf').Value := StrToDate(DateToStr(FPrincipal.Dataf.Date));
  qrNotasEntradaSaida.Open;

  qrItensNotas.close;
  qrItensNotas.Params.ParamByName('CODNOTA').Value := qrNotasEntradaSaidaCODIGO.AsString;
  qrItensNotas.Open;

  // Bloco C.
  with ACBrSPEDFiscal1.Bloco_C do
  begin

    with RegistroC001New do
    begin
      IND_MOV := imComDados;
      //

      FPrincipal.ProgressBar1.Max := qrNotasEntradaSaida.RecordCount;
      qrNotasEntradaSaida.First;
      while not qrNotasEntradaSaida.Eof do
      begin

        dVL_SEG := 0;
        dVL_OUT_DA := 0;
        dVL_BC_ICMS := 0;
        dVL_ICMS := 0;
        dVL_BC_ICMS_ST := 0;
        dVL_ICMS_ST := 0;
        dVL_OPR := 0;
        dVL_IPI := 0;

        with RegistroC100New do
        begin
          if qrNotasEntradaSaidaTIPO.AsString = 'E' then
            IND_OPER := tpEntradaAquisicao
          else
            IND_OPER := tpSaidaPrestacao;

          if qrNotasEntradaSaidaTIPO.AsString = 'S' then
            IND_EMIT := edEmissaoPropria
          else
            IND_EMIT := edTerceiros; { * observar quando for entrada propria }

          if qrNotasEntradaSaidaTIPO.AsString = 'E' then
            COD_PART := 'F' + qrNotasEntradaSaidaCODFORNECEDOR.AsString
          else
            COD_PART := 'C' + qrNotasEntradaSaidaCODCLIENTE.AsString;

          COD_MOD := qrNotasEntradaSaidaMODELO.AsString;

          if qrNotasEntradaSaidaTIPO.AsString = 'E' then
            IND_PGTO := tpPrazo
          else
            IND_PGTO := tpVista;

          case qrNotasEntradaSaidaSTATUS.AsInteger of
            6:
              COD_SIT := sdRegular;
            8:
              COD_SIT := sdCancelado;
          else
            COD_SIT := sdRegular;
          end;

          SER := qrNotasEntradaSaidaSERIE.AsString;

          NUM_DOC := qrNotasEntradaSaidaNUMERO.AsString;
          CHV_NFE := qrNotasEntradaSaidaCHAVE.AsString;

          DT_DOC := qrNotasEntradaSaidaDATA_EMISSAO.AsDateTime;
          DT_E_S := qrNotasEntradaSaidaDATA_EMISSAO.AsDateTime;

          VL_DOC := qrNotasEntradaSaidaVALOR_NOTA.AsFloat;
          dVL_OPR := dVL_OPR + qrNotasEntradaSaidaVALOR_NOTA.AsFloat;

          if qrNotasEntradaSaidaPAGAMENTO.AsString = 'P' then
            IND_PGTO := tpPrazo
          else if qrNotasEntradaSaidaPAGAMENTO.AsString = 'V' then
            IND_PGTO := tpVista
          else
            IND_PGTO := tpSemPagamento;

          VL_DESC := qrNotasEntradaSaidaDESCONTO.AsFloat;
          VL_ABAT_NT := 0;
          VL_MERC := qrNotasEntradaSaidaTOTAL_PRODUTOS.AsFloat;

          if Length(qrNotasEntradaSaidaFRETE_CONTA.AsString) > 0 then
            case isInteger(qrNotasEntradaSaidaFRETE_CONTA.AsString) of
              0:
                IND_FRT := tfPorContaEmitente;
              1:
                IND_FRT := tfPorContaDestinatario;
            else
              IND_FRT := tfSemCobrancaFrete;
            end
          else
            IND_FRT := tfSemCobrancaFrete;

          VL_SEG := qrNotasEntradaSaidaSEGURO.AsFloat;
          dVL_SEG := dVL_SEG + qrNotasEntradaSaidaSEGURO.AsFloat;

          VL_OUT_DA := qrNotasEntradaSaidaOUTRAS.AsFloat;
          dVL_OUT_DA := dVL_OUT_DA + qrNotasEntradaSaidaOUTRAS.AsFloat;

          VL_BC_ICMS := qrNotasEntradaSaidaBASE_ICMS.AsFloat;
          dVL_BC_ICMS := dVL_BC_ICMS + qrNotasEntradaSaidaBASE_ICMS.AsFloat;

          VL_ICMS := qrNotasEntradaSaidaVALOR_ICMS.AsFloat;
          dVL_ICMS := dVL_ICMS + qrNotasEntradaSaidaVALOR_ICMS.AsFloat;

          VL_BC_ICMS_ST := qrNotasEntradaSaidaBASE_SUB.AsFloat;
          dVL_BC_ICMS_ST := dVL_BC_ICMS_ST + qrNotasEntradaSaidaBASE_SUB.AsFloat;

          VL_ICMS_ST := qrNotasEntradaSaidaVALOR_SUB.AsFloat;
          dVL_ICMS_ST := dVL_ICMS_ST + qrNotasEntradaSaidaVALOR_SUB.AsFloat;

          VL_IPI := qrNotasEntradaSaidaIPI.AsFloat;
          dVL_IPI := dVL_IPI + qrNotasEntradaSaidaIPI.AsFloat;

          VL_PIS := 0;
          VL_COFINS := 0;
          VL_PIS_ST := 0;
          VL_COFINS_ST := 0;

          { Gera registros espec�ficos para notas emitidas por terceiros }
          { if IND_EMIT = edTerceiros then
            begin
            With RegistroC110New do
            begin
            COD_INF := '000001';
            TXT_COMPL := '';
            end;
            end;
          }
          { Gera o registro de importa��o apenas para notas de entrada }
          {
            if IND_OPER = tpEntradaAquisicao then
            begin
            with RegistroC120New do
            begin
            COD_DOC_IMP := diSimplificadaImport;
            NUM_DOC__IMP := '1024879531';
            PIS_IMP := 0.00;
            COFINS_IMP := 0.00;
            NUM_ACDRAW := '';
            end;
            end;
          }

          { Gera registros espec�ficos para notas emitidas por terceiros e de presta��o }
          if (IND_EMIT = edTerceiros) and (IND_OPER = tpSaidaPrestacao) then
          begin
            with RegistroC130New do
            begin
              VL_SERV_NT := 10.12;
              VL_BC_ISSQN := 10.12;
              VL_ISSQN := 10.12;
              VL_BC_IRRF := 10.12;
              VL_IRRF := 10.12;
              VL_BC_PREV := 10.12;
              VL_PREV := 10.12;
            end;
          end;

          // REGISTRO C170: ITENS DO DOCUMENTO (C�DIGO 01, 1B, 04 e 55).
          qrItensNotas.close;
          qrItensNotas.Params.ParamByName('CODNOTA').Value := qrNotasEntradaSaidaCODIGO.AsString;
          qrItensNotas.Open;

          qrItensNotas.First;
          while not qrItensNotas.Eof do
          begin

            { informar o item conforme a nota tipo E ou S }
            if IND_EMIT <> edEmissaoPropria then { s� informar os registro 176 se nao for emissao propria }
              if qrNotasEntradaSaidaTIPO.AsString = qrItensNotasTIPO.AsString then
              begin

                with RegistroC170New do // Inicio Adicionar os Itens:
                begin
                  NUM_ITEM := qrItensNotasNUM_ITEM.AsString;
                  COD_ITEM := qrItensNotasCOD_ITEM.AsString;
                  DESCR_COMPL := '';
                  QTD := qrItensNotasQTD.AsFloat;
                  UNID := qrItensNotasUNID.AsString;
                  VL_ITEM := qrItensNotasVL_ITEM.AsFloat;
                  VL_DESC := qrItensNotasVL_DESC.AsFloat;
                  IND_MOV := mfNao;
                  CST_ICMS := qrItensNotasCST_ICMS.AsString;
                  CFOP := qrItensNotasCFOP.AsString;
                  COD_NAT := '';
                  VL_BC_ICMS := qrItensNotasVL_BC_ICMS.AsFloat;
                  ALIQ_ICMS := qrItensNotasALIQ_ICMS.AsFloat;
                  VL_ICMS := qrItensNotasVL_ICMS.AsFloat;
                  VL_BC_ICMS_ST := qrItensNotasVL_BC_ICMS_ST.AsFloat;
                  ALIQ_ST := qrItensNotasALIQ_ST.AsFloat;
                  VL_ICMS_ST := qrItensNotasVL_ICMS_ST.AsFloat;
                  IND_APUR := iaMensal;
                  if qrItensNotasTIPO.AsString = 'E' then
                    CST_IPI := ipiEntradaIsenta
                  else
                    CST_IPI := ipiSaidaIsenta;
                  COD_ENQ := '';
                  VL_BC_IPI := isFloat(qrItensNotasVL_BC_IPI.AsString);
                  ALIQ_IPI := isFloat(qrItensNotasALIQ_IPI.AsString);
                  VL_IPI := isFloat(qrItensNotasVL_IPI.AsString);

                  CST_PIS := pisOutrasOperacoes;

                  VL_BC_PIS := 0;
                  ALIQ_PIS_PERC := 0;
                  QUANT_BC_PIS := 0;
                  ALIQ_PIS_R := 0;
                  VL_PIS := 0;
                  CST_COFINS := cofinsOutrasOperacoes;
                  VL_BC_COFINS := 0;
                  ALIQ_COFINS_PERC := 0;
                  QUANT_BC_COFINS := 0;
                  ALIQ_COFINS_R := 0;
                  VL_COFINS := 0;
                  COD_CTA := '';

                  // REGISTRO C171: ARMAZENAMENTO DE COMBUSTIVEIS (c�digo 01, 55)
                  { S� gera para opera��es de aquisi��o }
                  // if IND_OPER = tpEntradaAquisicao then
                  // begin
                  // with RegistroC171New do
                  // begin
                  // NUM_TANQUE := '115';
                  // QTDE := 1.00;
                  // end;
                  // end;

                  // REGISTRO C176: RESSARCIMENTO DE ICMS EM OPERA��ES COM
                  // SUBSTITUI��O TRIBUT�RIA (C�DIGO 01, 55).
                  // with RegistroC176New do
                  // begin
                  // COD_MOD_ULT_E := '55';
                  // NUM_DOC_ULT_E := '124567';
                  // SER_ULT_E := '1';
                  // DT_ULT_E := Now;
                  // COD_PART_ULT_E := '000001';
                  // QUANT_ULT_E := 10.00;
                  // VL_UNIT_ULT_E := 1.00;
                  // VL_UNIT_BC_ST := 5.00;
                  // end;
                end; // Fim dos Itens;

              end;

            qrItensNotas.Next;
            FPrincipal.LbBlocos.Caption := 'BLOCO C - 170 - Informando os itens das notas';
            Application.ProcessMessages;
          end;

        end;

        // REGISTRO C190: REGISTRO ANAL�TICO DO DOCUMENTO (C�DIGO 01, 1B, 04 E 55).
        FiltrarTabela(tbC190, qrNotasEntradaSaidaCODIGO.AsString, FPrincipal.Datai.Date, FPrincipal.Dataf.Date);
        qrC190_Analitico.First;
        while not qrC190_Analitico.Eof do
        begin
          // if qrC190_AnaliticoTIPO.AsString = qrNotasEntradaSaidaTIPO.AsString then
          begin

            with RegistroC190New do
            begin
              CST_ICMS := qrC190_AnaliticoCST.AsString;
              CFOP := qrC190_AnaliticoCFOP.AsString;;
              ALIQ_ICMS := qrC190_AnaliticoICMS_ALIQUOTA.AsFloat;
              VL_OPR := dVL_OPR;
              VL_BC_ICMS := dVL_BC_ICMS;
              VL_ICMS := dVL_ICMS;
              VL_BC_ICMS_ST := dVL_BC_ICMS_ST;
              VL_ICMS_ST := dVL_ICMS_ST;
              VL_RED_BC := qrC190_AnaliticoVL_RED_BC.AsFloat;
              VL_IPI := dVL_IPI;

              COD_OBS := '';
            end; // Fim dos Itens;

          end;
          qrC190_Analitico.Next;
        end;

        qrNotasEntradaSaida.Next;
        FPrincipal.LbBlocos.Caption := 'BLOCO C - C100 - NOTAS FISCAIS';
        Application.ProcessMessages;
      end;

      // if cbConcomitante.Checked then
      begin
        // if (INotas mod BNotas) = 0 then // Gravar a cada N notas
        begin
          // Grava registros na memoria para o TXT, e limpa memoria
          ACBrSPEDFiscal1.WriteBloco_C(False); // False, NAO fecha o Bloco

          Application.ProcessMessages;
        end;
      end;

      // REGISTRO C400 - EQUIPAMENTO ECF (C�DIGO 02 e 2D).

      qrC400_ECF.close;
      qrC400_ECF.Params.ParamByName('DT_INI').Value := StrToDate(DateToStr(DT_INI));
      qrC400_ECF.Params.ParamByName('DT_FIM').Value := StrToDate(DateToStr(DT_FIN));
      qrC400_ECF.Open;
      qrC400_ECF.First;

      FPrincipal.LbBlocos.Caption := 'BLOCO C - C400 - CUPOM FISCAL';
      while not qrC400_ECF.Eof do
      begin
        With RegistroC400New do
        begin
          COD_MOD := qrC400_ECFCOD_MOD.AsString;
          ECF_MOD := qrC400_ECFECF_MOD.AsString;
          ECF_FAB := qrC400_ECFECF_FAB_SN.AsString;
          ECF_CX := zerarcodigo(qrC400_ECFECF_CX.AsString, 3);

          FiltrarTabela(TBc405, qrC400_ECFCODIGO.AsString, FPrincipal.Datai.Date, FPrincipal.Dataf.Date);
          qrC405_REDUCOES.First;
          while not qrC405_REDUCOES.Eof do
          begin
            With RegistroC405New do
            begin
              DT_DOC := qrC405_REDUCOESDT_DOC.AsDateTime;
              CRO := isInteger(qrC405_REDUCOESCRO.AsString);
              CRZ := isInteger(qrC405_REDUCOESCRZ.AsString);
              NUM_COO_FIN := isInteger(qrC405_REDUCOESNUM_COO_FIN.AsString);;
              GT_FIN := isFloat(qrC405_REDUCOESGT_FFIN.AsString);;
              VL_BRT := isFloat(qrC405_REDUCOESVL_BRT.AsString);;;

              With RegistroC410New do
              begin
                VL_PIS := 0.00;
                VL_COFINS := 0.00;
              end;

              FiltrarTabela(tbC420, qrC405_REDUCOESCODIGO.AsString, FPrincipal.Datai.Date, FPrincipal.Dataf.Date);
              qrC420_TOTAISRED.First;
              while not qrC420_TOTAISRED.Eof do
              begin
                With RegistroC420New do
                begin
                  COD_TOT_PAR := qrC420_TOTAISREDCOD_TOT_PAR.AsString;
                  VLR_ACUM_TOT := isFloat(qrC420_TOTAISREDVLR_ACUM_TOT.AsString);
                  NR_TOT := isInteger(qrC420_TOTAISREDNR_TOT.AsString);
                  DESCR_NR_TOT := qrC420_TOTAISREDDESCR_NR_TOT.AsString;

                  { Gera este registro somente para empresas do pergil B de apresenta��o }

                  if Bloco_0.Registro0000.IND_PERFIL = pfPerfilB then
                  begin
                    With RegistroC425New do
                    begin
                      COD_ITEM := '000001';
                      QTD := 1;
                      UNID := 'PC';
                      VL_ITEM := 100.00;
                      VL_PIS := 0.00;
                      VL_COFINS := 0.00;
                    end;
                  end;
                  //
                end;
                qrC420_TOTAISRED.Next;
                Application.ProcessMessages;
              end;

              if Bloco_0.Registro0000.IND_PERFIL <> pfPerfilB then
              begin
                FiltrarTabela(tbC460, qrC405_REDUCOESCODIGO.AsString, FPrincipal.Datai.Date, FPrincipal.Dataf.Date);
                qrC460_CUPONS.First;
                while not qrC460_CUPONS.Eof do
                begin
                  with REgistroC460New do
                  begin
                    case qrC460_CUPONSCOD_SIT.AsInteger of
                      0: // regular
                        begin
                          COD_MOD := qrC460_CUPONSCOD_MOD.AsString;
                          COD_SIT := sdRegular;
                          NUM_DOC := qrC460_CUPONSNUM_DOC.AsString;
                          DT_DOC := qrC460_CUPONSDT_DOC.AsDateTime;
                          VL_DOC := isFloat(qrC460_CUPONSVL_DOC.AsString);
                          VL_PIS := isFloat(qrC460_CUPONSVL_PIS.AsString);
                          VL_COFINS := isFloat(qrC460_CUPONSVL_COFINS.AsString);
                          CPF_CNPJ := sn(qrC460_CUPONSCPF_CNPJ.AsString);
                          NOM_ADQ := qrC460_CUPONSNOM_ADQ.AsString;
                        end;
                      2: // se for cancelado
                        begin { REG + COD_MOD+COD_SIT+NUM_DOC }
                          COD_MOD := qrC460_CUPONSCOD_MOD.AsString;
                          COD_SIT := sdCancelado;
                          NUM_DOC := qrC460_CUPONSNUM_DOC.AsString;
                        end;
                    end;

                    FiltrarTabela(tbC470, qrC460_CUPONSCODIGO.AsString, FPrincipal.Datai.Date, FPrincipal.Dataf.Date);
                    qrC470_ITENSCUPOM.First;
                    while not qrC470_ITENSCUPOM.Eof do
                    begin
                      with RegistroC470New do
                      begin
                        COD_ITEM := qrC470_ITENSCUPOMCOD_ITEM.AsString;
                        QTD := isFloat(qrC470_ITENSCUPOMQTD.AsString);
                        QTD_CANC := isFloat(qrC470_ITENSCUPOMQTD_CANC.AsString);
                        UNID := qrC470_ITENSCUPOMUNID.AsString;
                        VL_ITEM := isFloat(qrC470_ITENSCUPOMVL_ITEM.AsString);
                        CST_ICMS := qrC470_ITENSCUPOMCST_ICMS.AsString;
                        CFOP := qrC470_ITENSCUPOMCFOP.AsString;
                        ALIQ_ICMS := isFloat(qrC470_ITENSCUPOMALIQ_ICMS.AsString);
                        VL_PIS := isFloat(qrC470_ITENSCUPOMVL_PIS.AsString);
                        VL_COFINS := isFloat(qrC470_ITENSCUPOMVL_COFINS.AsString);
                      end;
                      qrC470_ITENSCUPOM.Next;
                      FPrincipal.LbMensagem.Caption := 'C470 - ITENS CUPOM FISCAL';
                      Application.ProcessMessages;
                    end;
                  end;
                  qrC460_CUPONS.Next;
                  Application.ProcessMessages;
                end;
              end;

              FiltrarTabela(tbC490, qrC405_REDUCOESCODIGO.AsString, FPrincipal.Datai.Date, FPrincipal.Dataf.Date);
              qrC490_ECFMOVDIA.First;
              while not qrC490_ECFMOVDIA.Eof do
              begin
                with RegistroC490New do
                begin
                  CST_ICMS := qrC490_ECFMOVDIACST_ICMS.AsString;
                  CFOP := qrC490_ECFMOVDIACFOP.AsString;
                  ALIQ_ICMS := isFloat(qrC490_ECFMOVDIAALIQ_ICMS.AsString);
                  VL_BC_ICMS := isFloat(qrC490_ECFMOVDIAVL_BC_ICMS.AsString);
                  VL_ICMS := isFloat(qrC490_ECFMOVDIAVL_ICMS.AsString);
                  VL_OPR := isFloat(qrC490_ECFMOVDIAVL_OPR.AsString);;
                  COD_OBS := qrC490_ECFMOVDIACOD_OBS.AsString;
                end;
                qrC490_ECFMOVDIA.Next;
              end;

              // S� envia este registro se o contribuinte for da BA
              if Bloco_0.Registro0000.UF = 'BA' then
              begin
                with RegistroC495New do
                begin
                  ALIQ_ICMS := 17.00;
                  COD_ITEM := '000001';
                  QTD := 1.00;
                  QTD_CANC := 0.00;
                  UNID := 'UN';
                  VL_ITEM := 100.00;
                  VL_DESC := 0.00;
                  VL_CANC := 0.00;
                  VL_ACMO := 0.00;
                  VL_BC_ICMS := 100.00;
                  VL_ICMS := 17.00;
                  VL_ISEN := 0.00;
                  VL_ICMS_ST := 0.00;
                end;
              end;

            end;
            qrC405_REDUCOES.Next;
            FPrincipal.LbMensagem.Caption := 'C405 - REDU��ES Z';
            Application.ProcessMessages;
          end;

        end;

        qrC400_ECF.Next;
        FPrincipal.LbMensagem.Caption := 'C400 - EMISSOR DE CUPOM FISCAL';
        Application.ProcessMessages;
      end; // fim ECF

    end;

  end;

  // if cbConcomitante.Checked then
  begin
    ACBrSPEDFiscal1.WriteBloco_C(True); // True, fecha o Bloco
    AtualizaMemo;
  end;
  FPrincipal.IconListView(FPrincipal.ListSPED.Items.Count - 1, icOK);
end;

procedure TDm.DadosBloco_E;
var
  I: Integer;
begin

  with ACBrSPEDFiscal1.Bloco_E do
  begin
    with RegistroE001New do
    begin
      IND_MOV := imComDados;

      with RegistroE100New do
      begin
        DT_INI := FPrincipal.Datai.Date;
        DT_FIN := FPrincipal.Datai.Date;

        with RegistroE110New do
        begin
          VL_TOT_DEBITOS := 17.00;
          VL_AJ_DEBITOS := 0.00;
          VL_TOT_AJ_DEBITOS := 0.00;
          VL_ESTORNOS_CRED := 0;
          VL_TOT_CREDITOS := 17.00;
          VL_AJ_CREDITOS := 0;
          VL_TOT_AJ_CREDITOS := 0;
          VL_ESTORNOS_DEB := 0;
          VL_SLD_CREDOR_ANT := 0;
          VL_SLD_APURADO := 0.00;
          VL_TOT_DED := 0.00;
          VL_ICMS_RECOLHER := 0.00;
          VL_SLD_CREDOR_TRANSPORTAR := 0;
          DEB_ESP := 0;

          // with RegistroE111New do begin
          // COD_AJ_APUR    := 'RS009999';
          // DESCR_COMPL_AJ := '';
          // VL_AJ_APUR     := 1.00;
          //
          // with RegistroE112New do begin
          // NUM_DA    := '123';
          // NUM_PROC  := '123';
          // IND_PROC  := opOutros;
          // PROC      := 'DESCRI��O RESUMIDA';
          // TXT_COMPL := 'COMPLEMENTO';
          // end;
          //
          // with RegistroE113New do begin
          // COD_PART := '000001';
          // COD_MOD  := '01';
          // SER      := 'SERI';
          // SUB      := '';
          // NUM_DOC  := '123456789';
          // DT_DOC   := Now;
          // COD_ITEM := '000001';
          // VL_AJ_ITEM := 0;
          // end;
          // end;

          { Rio Grande do Sul n�o possui as tabelas do registro E115, ent�o este n�o precisa ser gerado }
          // with RegistroE115New do begin
          // COD_INF_ADIC   := 'RS000001';
          // VL_INF_ADIC    := 0;
          // DESCR_COMPL_AJ := '';
          // end;

          with RegistroE116New do
          begin
            COD_OR := '000';
            VL_OR := 0;
            DT_VCTO := Now;
            COD_REC := '123';
            NUM_PROC := '10';
            IND_PROC := opSefaz;
            PROC := 'DESCRI��O DO PROCESSO';
            TXT_COMPL := '';
            MES_REF := '112011';
          end;
        end;
      end;

      { Gera um registro E200 e filhos para cada estado onde o contribuinte possui inscri��o estadual }
      // for I := Low(ESTADOS) to High(ESTADOS) do
      begin
        with RegistroE200New do
        begin
          DT_INI := StrToDate('01/11/2011');
          DT_FIN := StrToDate('30/11/2011');
          // UF := ESTADOS[I];

          with RegistroE210New do
          begin
            IND_MOV_ST := mstSemOperacaoST;
            VL_SLD_CRED_ANT_ST := 0;
            VL_DEVOL_ST := 0;
            VL_RESSARC_ST := 0;
            VL_OUT_CRED_ST := 0;
            VL_AJ_CREDITOS_ST := 0;
            VL_SLD_DEV_ANT_ST := 0.00;
            VL_DEDUCOES_ST := 0;
            VL_ICMS_RECOL_ST := 0.00;
            VL_SLD_CRED_ST_TRANSPORTAR := 0;
            VL_OUT_DEB_ST := 0.00;
            DEB_ESP_ST := 0;

            // with RegistroE220New do begin
            // COD_AJ_APUR    := 'RS109999';
            // DESCR_COMPL_AJ := '';
            // VL_AJ_APUR     := 0.00;
            //
            // with RegistroE230New do begin
            // NUM_DA    := '123';
            // NUM_PROC  := '123';
            // IND_PROC  := opOutros;
            // PROC      := 'DESCRI��O RESUMIDA';
            // TXT_COMPL := 'COMPLEMENTO';
            // end;
            //
            // with RegistroE240New do begin
            // COD_PART   := '000001';
            // COD_MOD    := '01';
            // SER        := 'SERI';
            // SUB        := '';
            // NUM_DOC    := '123456789';
            // DT_DOC     := Now;
            // COD_ITEM   := '000001';
            // VL_AJ_ITEM := 0;
            // end;
            // end;

            with RegistroE250New do
            begin
              COD_OR := '000';
              VL_OR := 0;
              DT_VCTO := Now;
              COD_REC := '123';
              NUM_PROC := '1020304050';
              IND_PROC := opOutros;
              PROC := 'DESCRI��O RESUMIDA';
              TXT_COMPL := '';
              MES_REF := '112011';
            end;
          end;
        end;
      end;

      with RegistroE500New do
      begin
        IND_APUR := iaMensal;
        DT_INI := StrToDate('01/11/2011');
        DT_FIN := StrToDate('30/11/2011');

        with RegistroE510New do
        begin
          CFOP := '5120';
          CST_IPI := '50';
          VL_CONT_IPI := 0;
          VL_BC_IPI := 0;
          VL_IPI := 0;
        end;

        with RegistroE520New do
        begin
          VL_SD_ANT_IPI := 0;
          VL_DEB_IPI := 0;
          VL_CRED_IPI := 0;
          VL_OD_IPI := 10.00;
          VL_OC_IPI := 0;
          VL_SC_IPI := 0;
          VL_SD_IPI := 10.00;

          with RegistroE530New do
          begin
            IND_AJ := ajDebito;
            VL_AJ := 10;
            COD_AJ := '001';
            IND_DOC := odOutros;
            NUM_DOC := '123';
            DESCR_AJ := 'DESCRI��O DETALHADA';
          end;
        end;
        { fim registro E500 }
      end;
    end;
  end;

  begin
    ACBrSPEDFiscal1.WriteBloco_E;
    AtualizaMemo;
  end;

end;

procedure TDm.DadosBloco_G;
begin
  // Bloco C.
  with ACBrSPEDFiscal1.Bloco_G do
  begin

    with RegistroG001New do
    begin
      IND_MOV := imSemDados;
    end;

  end;

  ACBrSPEDFiscal1.WriteBloco_G;
  FPrincipal.IconListView(FPrincipal.ListSPED.Items.Count - 1, icOK);
end;

procedure TDm.DadosBloco_H;
begin

  with Dm do
  begin
    qrInventario.close;
    qrInventario.Open;
    qrInventario.First;
    qrInventarioTotal.close;
    qrInventarioTotal.Open;

    // Bloco H.
    with ACBrSPEDFiscal1.Bloco_H do
    begin
      with RegistroH001New do
      begin
        if qrInventario.RecordCount > 0 then
          IND_MOV := imComDados
        else
          IND_MOV := imSemDados;

        with RegistroH005New do
        begin
          DT_INV := FPrincipal.Datai.Date;
          // o valor informado no campo deve ser menor ou igual ao valor no campo DT_FIN do registro 0000
          VL_INV := qrInventarioTotalVALOR_ESTOQUE.AsFloat;

          // Itens do inventario
          while not qrInventario.Eof do
          begin
            with RegistroH010New do
            begin
              COD_ITEM := qrInventarioCODIGO.AsString;
              UNID := qrInventarioUNIDADE.AsString;
              QTD := qrInventarioESTOQUE.AsFloat;
              VL_UNIT := qrInventarioPRECOVENDA.AsFloat;
              VL_ITEM := qrInventarioVL_ITEM.AsFloat;
              IND_PROP := piInformante;
              COD_PART := '';
              TXT_COMPL := '';
              COD_CTA := '1.01.03.01.01';
            end;
            qrInventario.Next;
            Application.ProcessMessages;
            FPrincipal.LbMensagem.Caption := 'Informando invent�rio';
          end;
        end;
      end;
    end;

    begin
      ACBrSPEDFiscal1.WriteBloco_H;
      AtualizaMemo;
    end;
  end;
  FPrincipal.IconListView(FPrincipal.ListSPED.Items.Count - 1, icOK);
end;

end.
