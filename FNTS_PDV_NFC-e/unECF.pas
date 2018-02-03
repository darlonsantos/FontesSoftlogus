unit unECF;

interface

uses
  Windows, SysUtils, Controls, Messages, Forms, Dialogs, Classes,
  Shellapi;

type
  // Matrizes (Records)
  tipo_parametro = Record
    Nome: string;
    Conteudo: string;
    Tipo: integer;
  end;

  // Totalizadores Parciais (aliquotas) retornado do ECF
  TTotalizador = Record
    Nome: String[20];
    Valor: Real;
  end;

var
  (* Retorno do ECF *)
  IRetorno: integer;
  BRetorno: Boolean;
  iACK, iST1, iST2: integer;
  Handle: THandle;
  ecfMSG: string;
  nporta: integer;
  sMsg: string;

  (* Arrays Diversos *)
  tbTotalizador: array [1 .. 50] of TTotalizador;
  aRelatoriosGerenciais: array [1 .. 50, 1 .. 2] of String;

function Executa_programa(const FileName, Params: string;
  const WindowState: Word): Boolean;
(* **************************** FUNCOES *************************************** *)

// Retornos
function cECF_Analisa_Retorno(COD_ECF: integer): string;
function cECF_Retorno_Impressora(COD_ECF: integer): string;
// Inicializacao

function cECF_Abre(COD_ECF: integer; Porta: string): string;
function cECF_Fecha(COD_ECF: integer): string;

// Informacoes e Status
function cECF_Ligada(COD_ECF: integer): string;
function cECF_Numero_Serie(COD_ECF: integer): string;
function cECF_Numero_Caixa(COD_ECF: integer): string;
function cECF_Numero_Cupom(COD_ECF: integer): string;
function cECF_COO_Nao_Fiscal(COD_ECF: integer): string;
function cECF_Numero_Contador_Cupom(COD_ECF: integer): string;
function cECF_Numero_Contador_Relatorio_Gerencial(COD_ECF: integer): string;
function cECF_Numero_Contador_Operacao_NF(COD_ECF: integer): string;
function cECF_Numero_Contador_Comprovante_CD(COD_ECF: integer): string;
function cECF_Numero_Contador_Gerencial(COD_ECF: integer): string;
function cECF_Data_Hora(COD_ECF: integer): string;

function cECF_Download(COD_ECF: integer; Tipo: string; Inicio: String;
  Fim: string): string;

function cECF_Registro60A(COD_ECF: integer): string;
function cECF_Registro60M(COD_ECF: integer): string;
function cECF_Le_Formas_Pgto(COD_ECF: integer): string;
function cECF_Arquivo_Fiscal_CAT52(COD_ECF: integer;
  Tipo, Inicio, Fim: string): string;
function cECF_Marca_ECF(COD_ECF: integer): string;
function cECF_Modelo_ECF(COD_ECF: integer): string;
function cECF_Tipo_ECF(COD_ECF: integer): string;
function cECF_MF_Adicional(COD_ECF: integer): string;
function cECF_Versao_SB(COD_ECF: integer): string;
function cECF_Data_Hora_SB(COD_ECF: integer): string;
function cECF_Total_Cupom(COD_ECF: integer): Real;
function cECF_Verifica_Z_automatico(COD_ECF: integer): string;
function cECF_Verifica_Horario_Verao(COD_ECF: integer): string;
function cECF_Verifica_Aliquotas(COD_ECF: integer): string;
function cECF_Verifica_Totalizadores_NF(COD_ECF: integer): string;
function cECF_Data_Movimento(COD_ECF: integer): string;
function cECF_Cupom_Fiscal_Aberto(COD_ECF: integer): string;
function cECF_Grande_Total(COD_ECF: integer): string;
function cECF_VerificarRelatoriosGerenciais(COD_ECF: integer): String;

// Informacoes ref. reducao Z
function cECF_ReducaoZ_Contador_CRZ(COD_ECF: integer): string;
function cECF_ReducaoZ_Contador_COO(COD_ECF: integer): string;
function cECF_ReducaoZ_Contador_CRO(COD_ECF: integer): string;
function cECF_ReducaoZ_DataHora(COD_ECF: integer): string;
function cECF_ReducaoZ_Data_Movimento(COD_ECF: integer): string;
function cECF_ReducaoZ_Venda_Bruta(COD_ECF: integer): string;
function cECF_ReducaoZ_Total_ISS(COD_ECF: integer): string;
function cECF_ReducaoZ_Totalizador_Geral(COD_ECF: integer): string;
function cECF_ReducaoZ_Totalizador_Parcial(COD_ECF: integer): string;
// Relatorios
function cECF_LeituraX(COD_ECF: integer): string;
function cECF_ReducaoZ(COD_ECF: integer): string;
function cECF_Leitura_Memoria_Fiscal(COD_ECF: integer; Tipo: STRING;
  // DATA ou CRZ
  Analitica_ou_Sintetica: STRING; // A ou S
  Ecf_ou_Arquivo: String; // ECF ou ARQUIVO
  Inicio: string; Fim: STRING): STRING;
// Cupom
function cECF_Abre_Cupom(COD_ECF: integer; CPF, Nome, Endereco: String;
  pbImprimirNoCabecalho: Boolean = False): string;
function cECF_Vende_item(COD_ECF: integer; Codigo, produto, unidade,
  aliquota: string; quantidade, valor_unitario, valor_desconto: Real;
  valor_acrescimo: Real; tipo_desconto_acrescimo: string; total: Real): string;
function cECF_Inicia_Fechamento(COD_ECF: integer; Acrescimo_ou_Desconto: string;
  Tipo: string; Valor: Real): string;
function cECF_Forma_Pgto(COD_ECF: integer; forma_pgto: string;
  Valor: Real): string;
function cECF_Termina_Fechamento(COD_ECF: integer; mensagem: string): string;
function cECF_Fecha_Cupom_Resumido(COD_ECF: integer; forma_pgto: string;
  mensagem: string; Valor: Currency = 0.00): string;
function cECF_Cancela_Cupom(COD_ECF: integer): string;
function cECF_Cancela_Item(COD_ECF: integer; Item: string): string;
// Operações Não Fiscal
function cECF_Abre_Gerencial(COD_ECF: integer; Texto: String): string;
function cECF_Usa_Gerencial(COD_ECF: integer; Texto: String): string;
function cECF_Fecha_Gerencial(COD_ECF: integer): string;
function cECF_Abre_CNFV(COD_ECF: integer; forma_pgto: string; Valor: Real;
  Numero_Cupom: string): string;
function cECF_Usa_CNFV(COD_ECF: integer; Texto: string): string;
function cECF_Fecha_CNFV(COD_ECF: integer): string;
function cECF_Sangria(COD_ECF: integer; Valor: Real): string;
function cECF_Suprimento(COD_ECF: integer; Valor: Real;
  forma_pgto: String): string;
function cECF_Recebimento(COD_ECF: integer; Totalizador: string; Valor: Real;
  forma_pgto: string): string;
// Programacao
function cECF_Programa_Horario_Verao(COD_ECF: integer): string;
function cECF_Programa_Aliquota(COD_ECF: integer; aliquota: Real;
  ICMS_ou_ISS: string): string;
function cECF_Programa_Totalizador(COD_ECF: integer; Indice: integer;
  descricao: string): string;
function cECF_Programa_Forma_Pgto(COD_ECF: integer; forma_pgto: string;
  Vinculado: string): string;
function cECF_Daruma_Libera_Porta(SIM_NAO: STRING): string;
function cECF_Programa_Z_Automatico(COD_ECF: integer; SIM_NAO: string): string;
// Outros
function cECF_Status_Gaveta(COD_ECF: integer): string;
function cECF_Abre_Gaveta(COD_ECF: integer): string;
function cECF_Desliga_Janelas(COD_ECF: integer): string;
(* **************************************************************************** *)

(* ************************* IMPRESSORAS IMPLEMENTADAS *************************
  1  - Bematech - Todos os Modelos
  2  - Daruma
  3  - SWEDA???
  4  - EPSON

  // -------------------------------------------------------------------------- //
  // -------------------------------------------------------------------------- //
  // -------------------------------------------------------------------------- //
  // -------------------------------------------------------------------------- //
  // -------------------------------------------------------------------------- //

  (**************************        bematech           ************************ *)
// Retornos
function Bematech_FI_RetornoImpressora(Var ACK: integer; Var ST1: integer;
  Var ST2: integer): integer; StdCall; External 'BEMAFI32.DLL';
// Informacoes e Status
function Bematech_FI_NumeroSerieMFD(NumeroSerie: string): integer; StdCall;
  External 'BEMAFI32.DLL';
function Bematech_FI_SubTotal(SubTotal: String): integer; StdCall;
  External 'BEMAFI32.DLL';
function Bematech_FI_NumeroCupom(NumeroCupom: String): integer; StdCall;
  External 'BEMAFI32.DLL';
function Bematech_FI_ContadorCupomFiscalMFD(CuponsEmitidos: string): integer;
  StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorRelatoriosGerenciaisMFD(Relatorios: String)
  : integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroOperacoesNaoFiscais(NumeroOperacoes: String)
  : integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorComprovantesCreditoMFD(Comprovantes: string)
  : integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroCaixa(NumeroCaixa: String): integer; StdCall;
  External 'BEMAFI32.DLL';
function Bematech_FI_DataHoraImpressora(Data: String; Hora: String): integer;
  StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaEstadoImpressora(Var ACK: integer;
  Var ST1: integer; Var ST2: integer): integer; StdCall;
  External 'BEMAFI32.DLL';
function Bematech_FI_VerificaRelatorioGerencialMFD(Relatorios: string): integer;
  StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaImpressoraLigada: integer; StdCall;
  External 'BEMAFI32.DLL' Name 'Bematech_FI_VerificaImpressoraLigada';
function Bematech_FI_DownloadMFD(Arquivo: String; TipoDownload: String;
  ParametroInicial: String; ParametroFinal: String; UsuarioECF: String)
  : integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FormatoDadosMFD(ArquivoOrigem: String;
  ArquivoDestino: String; TipoFormato: String; TipoDownload: String;
  ParametroInicial: String; ParametroFinal: String; UsuarioECF: String)
  : integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RelatorioTipo60Analitico: integer; StdCall;
  External 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60Analitico';
function Bematech_FI_RelatorioTipo60Mestre: integer; StdCall;
  External 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60Mestre';
function Bematech_FI_MarcaModeloTipoImpressoraMFD(Marca, Modelo, Tipo: string)
  : integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataHoraGravacaoUsuarioSWBasicoMFAdicional(dataUsuario,
  dataSWBasico, MFAdicional: string): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VersaoFirmwareMFD(VersaoFirmware: string): integer;
  StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DadosUltimaReducaoMFD(DadosReducao: string): integer;
  StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaFormasPagamentoMFD(FormasPagamento: string)
  : integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataHoraReducao(Data: String; Hora: String): integer;
  StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VendaBruta(Valor: string): integer; StdCall;
  External 'BEMAFI32.DLL';
function Bematech_FI_MapaResumoMFD: integer; StdCall;
  External 'BEMAFI32.DLL' Name 'Bematech_FI_MapaResumoMFD';
function Bematech_FI_VerificaAliquotasIss(Flag: String): integer; StdCall;
  External 'BEMAFI32.DLL';
function Bematech_FI_VerificaReducaoZAutomatica(Flag: SHORT): integer; StdCall;
  External 'BEMAFI32.DLL';
function Bematech_FI_FlagsFiscais(Var Flag: integer): integer; StdCall;
  External 'BEMAFI32.DLL';
function Bematech_FI_RetornoAliquotas(Aliquotas: String): integer; StdCall;
  External 'BEMAFI32.DLL';
function Bematech_FI_VerificaTotalizadoresNaoFiscais(Totalizadores: String)
  : integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataMovimento(Data: String): integer; StdCall;
  External 'BEMAFI32.DLL';
function Bematech_FI_GrandeTotal(GrandeTotal: String): integer; StdCall;
  External 'BEMAFI32.DLL';
// Ato Cotepe
function Bematech_FI_HabilitaDesabilitaRetornoEstendidoMFD(FlagRetorno: string)
  : integer; StdCall; External 'BEMAFI32.DLL';
function BemaGeraRegistrosTipoE(cArqMFD: string; cArqTXT: string;
  cDataInicial: string; cDataFinal: string; cRazao: string; cEndereco: string;
  cPAR1: string; cCMD: string; cPAR2: string; cPAR3: string; cPAR4: string;
  cPAR5: string; cPAR6: string; cPAR7: string; cPAR8: string; cPAR9: string;
  cPAR10: string; cPAR11: string; cPAR12: string; cPAR13: string;
  cPAR14: string): integer; StdCall; External 'BemaMFD2.dll';
function Bematech_FI_RetornoImpressoraMFD(Var ACK: integer; Var ST1: integer;
  Var ST2: integer; Var ST3: integer): integer; StdCall;
  External 'BEMAFI32.DLL';
// Relatorios Gerenciais
function Bematech_FI_LeituraX: integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ReducaoZ(Data: String; Hora: String): integer; StdCall;
  External 'BEMAFI32.DLL';

function Bematech_FI_LeituraMemoriaFiscalDataMFD(DataInicial, DataFinal,
  FlagLeitura: string): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalReducaoMFD(ReducaoInicial,
  ReducaoFinal, FlagLeitura: string): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialDataMFD(DataInicial, DataFinal,
  FlagLeitura: string): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialReducaoMFD(ReducaoInicial,
  ReducaoFinal, FlagLeitura: string): integer; StdCall; External 'BEMAFI32.DLL';

function Bematech_FI_GeraRegistrosCAT52MFDEx(Arquivo: String; Data: String;
  cArqDestino: string): integer; StdCall; External 'BEMAFI32.DLL';
// Cupom
function Bematech_FI_AbreCupomMFD(CGC: string; Nome: string; Endereco: string)
  : integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VendeItemDepartamento(Codigo: String; descricao: String;
  aliquota: String; ValorUnitario: String; quantidade: String;
  Acrescimo: String; Desconto: String; IndiceDepartamento: String;
  UnidadeMedida: String): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaItemGenerico(NumeroItem: String): integer; StdCall;
  External 'BEMAFI32.DLL';
function Bematech_FI_CancelaCupom: integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_IniciaFechamentoCupom(AcrescimoDesconto: String;
  TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String): integer;
  StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EfetuaFormaPagamento(FormaPagamento: String;
  ValorFormaPagamento: String): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TerminaFechamentoCupom(mensagem: String): integer; StdCall;
  External 'BEMAFI32.DLL';
function Bematech_FI_FechaCupomResumido(FormaPagamento: String;
  mensagem: String): integer; StdCall; External 'BEMAFI32.DLL';
// Operações Não Fiscal
function Bematech_FI_AbreComprovanteNaoFiscalVinculado(FormaPagamento: String;
  Valor: String; NumeroCupom: String): integer; StdCall;
  External 'BEMAFI32.DLL';
function Bematech_FI_UsaComprovanteNaoFiscalVinculado(Texto: String): integer;
  StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaComprovanteNaoFiscalVinculado: integer; StdCall;
  External 'BEMAFI32.DLL';
function Bematech_FI_Sangria(Valor: String): integer; StdCall;
  External 'BEMAFI32.DLL';
function Bematech_FI_Suprimento(Valor: String; FormaPagamento: String): integer;
  StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RecebimentoNaoFiscal(IndiceTotalizador: String;
  Valor: String; FormaPagamento: String): integer; StdCall;
  External 'BEMAFI32.DLL';
function Bematech_FI_RelatorioGerencial(Texto: String): integer; StdCall;
  External 'BEMAFI32.DLL';
function Bematech_FI_FechaRelatorioGerencial: integer; StdCall;
  External 'BEMAFI32.DLL';

// Configuração / Programação
function Bematech_FI_ProgramaAliquota(aliquota: String; ICMS_ISS: integer)
  : integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaHorarioVerao: integer; StdCall;
  External 'BEMAFI32.DLL';
function Bematech_FI_NomeiaTotalizadorNaoSujeitoIcms(Indice: integer;
  Totalizador: String): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaFormaPagamentoMFD(FormaPagto, OperacaoTef: String)
  : integer; StdCall; External 'BEMAFI32.DLL';

// Outros
function Bematech_FI_AcionaGaveta: integer; StdCall;
  External 'BEMAFI32.DLL' Name 'Bematech_FI_AcionaGaveta';
function Bematech_FI_VerificaEstadoGaveta(Var EstadoGaveta: integer): integer;
  StdCall; External 'BEMAFI32.DLL';

// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //

(* *************************        daruma             ************************ *)
// Inicializacao
function Daruma_FI_AbrePortaSerial: integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_FechaPortaSerial: integer; StdCall; External 'Daruma32.dll'
// Retornos
  function Daruma_FI_RetornoImpressora(Var ACK: integer; Var ST1: integer;
  Var ST2: integer): integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaErroExtendido(ErroExtendido: String): integer;
  StdCall; External 'Daruma32.dll';
// Informacoes e Status
function Daruma_FI_NumeroSerie(NumeroSerie: String): integer; StdCall;
  External 'Daruma32.dll';
function Daruma_FI_SubTotal(SubTotal: String): integer; StdCall;
  External 'Daruma32.dll';
function Daruma_FI_NumeroCupom(NumeroCupom: String): integer; StdCall;
  External 'Daruma32.dll';
function Daruma_FI_NumeroCaixa(NumeroCaixa: String): integer; StdCall;
  External 'Daruma32.dll';
function Daruma_FI_DataHoraImpressora(Data: String; Hora: String): integer;
  StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaEstadoImpressora(Var ACK: integer; Var ST1: integer;
  Var ST2: integer): integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaImpressoraLigada: integer; StdCall;
  External 'Daruma32.dll' function Daruma_FIMFD_DownloadDaMFD(CoInicial: String;
  CoFinal: String): integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RelatorioTipo60Analitico: integer; StdCall;
  External 'Daruma32.dll' Name 'Daruma_FI_RelatorioTipo60Analitico';
function Daruma_FI_RelatorioTipo60Mestre: integer; StdCall;
  External 'Daruma32.dll' Name 'Daruma_FI_RelatorioTipo60Mestre';
function Daruma_FI_VerificaFormasPagamentoEx(FormasEx: String): integer;
  StdCall; External 'Daruma32.dll';
function Daruma_FIMFD_RetornaInformacao(Indice: String; Valor: String): integer;
  StdCall; External 'Daruma32.dll';
function Daruma_FI_DataHoraReducao(Data: String; Hora: String): integer;
  StdCall; External 'Daruma32.dll';
function Daruma_FI_LerAliquotasComIndice(AliquotasComIndice: String): integer;
  StdCall; External 'Daruma32.dll';
function Daruma_FI_SaldoAPagar(SaldoAPagar: String): integer; StdCall;
  External 'Daruma32.dll';
function Daruma_Registry_RetornaValor(produto: String; Chave: String;
  Valor: String): integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaHorarioVerao(HoraioVerao: String): integer; StdCall;
  External 'Daruma32.dll';
function Daruma_FI_RetornoAliquotas(Aliquotas: String): integer; StdCall;
  External 'Daruma32.dll';
function Daruma_FI_VerificaTotalizadoresNaoFiscais(Totalizadores: String)
  : integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_DataMovimento(Data: String): integer; StdCall;
  External 'Daruma32.dll';
function Daruma_FI_StatusCupomFiscal(StatusCupomFiscal: String): integer;
  StdCall; External 'Daruma32.dll';
function Daruma_FI_GrandeTotal(GrandeTotal: String): integer; StdCall;
  External 'Daruma32.dll';

// Relatorios Gerenciais
function Daruma_FI_LeituraX: integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ReducaoZ(Data: String; Hora: String): integer; StdCall;
  External 'Daruma32.dll';
function Daruma_FI_LeituraMemoriaFiscalData(Data_Inicial: String;
  Data_Final: String): integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LeituraMemoriaFiscalReducao(Reducao_Inicial: String;
  Reducao_Final: String): integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LeituraMemoriaFiscalSerialData(Data_Inicial: String;
  Data_Final: String): integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LeituraMemoriaFiscalSerialReducao(Reducao_Inicial: String;
  Reducao_Final: String): integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_MFD_LeituraMFCompleta(Valor: String): integer; StdCall;
  External 'Daruma32.dll' function Daruma_FI_MapaResumo: integer; StdCall;
  External 'Daruma32.dll' Name 'Daruma_FI_MapaResumo';
// Cupom
function Daruma_FI_AbreCupom(CPF_ou_CNPJ: String): integer; StdCall;
  External 'Daruma32.dll';
function Daruma_FI_VendeItemDepartamento(Codigo: String; descricao: String;
  aliquota: String; valor_unitario: String; quantidade: String;
  Valor_do_Desconto: String; Valor_do_Acrescimo: String;
  Indice_Departamento: String; Unidade_Medida: String): integer; StdCall;
  External 'Daruma32.dll';
function Daruma_FI_CancelaItemGenerico(Numero_Item: String): integer; StdCall;
  External 'Daruma32.dll';
function Daruma_FI_CancelaCupom: integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_IniciaFechamentoCupom(Acrescimo_ou_Desconto: String;
  Tipo_do_Acrescimo_ou_Desconto: String; Valor_do_Acrescimo_ou_Desconto: String)
  : integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_EfetuaFormaPagamento(Descricao_da_Forma_Pagamento: String;
  Valor_da_Forma_Pagamento: String): integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_TerminaFechamentoCupom(Mensagem_Promocional: String)
  : integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_IdentificaConsumidor(Nome_do_Consumidor: String;
  Endereco: String; CPF_ou_CNPJ: String): integer; StdCall;
  External 'Daruma32.dll';
function Daruma_FI_FechaCupomResumido(Descricao_da_Forma_de_Pagamento: String;
  Mensagem_Promocional: String): integer; StdCall; External 'Daruma32.dll';
// Operações Não Fiscal
function Daruma_FI_AbreComprovanteNaoFiscalVinculado(Forma_de_Pagamento: String;
  Valor_Pago: String; Numero_do_Cupom: String): integer; StdCall;
  External 'Daruma32.dll';
function Daruma_FI_UsaComprovanteNaoFiscalVinculado(Texto_Livre: String)
  : integer; StdCall;
  External 'Daruma32.dll' function Daruma_FI_FechaComprovanteNaoFiscalVinculado
  : integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_Sangria(Valor_da_Sangria: String): integer; StdCall;
  External 'Daruma32.dll';
function Daruma_FI_Suprimento(Valor_do_Suprimento: String;
  Forma_de_Pagamento: String): integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RecebimentoNaoFiscal(Indice_do_Totalizador: String;
  Valor_do_Recebimento: String; Forma_de_Pagamento: String): integer; StdCall;
  External 'Daruma32.dll';
function Daruma_FI_RelatorioGerencial(Texto_Livre: String): integer; StdCall;
  External 'Daruma32.dll';
function Daruma_FI_FechaRelatorioGerencial: integer; StdCall;
  External 'Daruma32.dll';

// Configuração / Programação
function Daruma_FI_ProgramaAliquota(Valor_Aliquota: String;
  Tipo_Aliquota: integer): integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ProgramaHorarioVerao: integer; StdCall;
  External 'Daruma32.dll';
function Daruma_FI_NomeiaTotalizadorNaoSujeitoIcms(Indice_do_Totalizador
  : integer; Nome_do_Totalizador: String): integer; StdCall;
  External 'Daruma32.dll';
function Daruma_Registry_AlteraRegistry(Chave: String; ValorChave: String)
  : integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_ZAutomatica(ZAutomatica: String): integer; StdCall;
  External 'Daruma32.dll';
function Daruma_FI_CfgRedZAutomatico(Flag: String): integer; StdCall;
  External 'Daruma32.dll';
function Daruma_FI_ProgramaFormasPagamento(Descricao_das_Formas_Pagamento
  : String): integer; StdCall; External 'Daruma32.dll';

// Outros
function Daruma_FI_AcionaGaveta: integer; StdCall;
  External 'Daruma32.dll' function Daruma_FI_VerificaEstadoGaveta
  (Var Estado_Gaveta: integer): integer; StdCall; External 'Daruma32.dll';
// RSA
function Daruma_RSA_CarregaChavePrivada_Arquivo(Arquivo: String): integer;
  StdCall; External 'Daruma32.dll';
function Daruma_RSA_RetornaChavePublica(N: String; E: String): integer; StdCall;
  External 'Daruma32.dll';
function Daruma_RSA_CodificaInformacao(Texto: String; Codigo: String): integer;
  StdCall; External 'Daruma32.dll';
function Daruma_RSA_DecodificaInformacao(Codigo: String; Texto: String)
  : integer; StdCall; External 'Daruma32.dll';
function Daruma_RSA_CodificaInformacao_Hexa(Texto: String; Codigo: String)
  : integer; StdCall; External 'Daruma32.dll';
function Daruma_RSA_DecodificaInformacao_Hexa(Codigo: String; Texto: String)
  : integer; StdCall; External 'Daruma32.dll';
function Daruma_RSA_CriarAssinatura(caminhoDoArquivo: string; sMD5: String;
  sAssinaturaEletronica: string): integer; StdCall; External 'Daruma32.dll';

// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //

(* *************************       SWEDA               ************************ *)
// Inicializacao
function ECF_AbrePortaSerial: integer; StdCall; External 'CONVECF.dll';
function ECF_FechaPortaSerial: integer; StdCall; External 'CONVECF.dll';
// Retornos
function ECF_RetornoImpressora(Var ACK: integer; Var ST1: integer;
  Var ST2: integer): integer; StdCall; External 'CONVECF.DLL';
// Informacoes e Status
function ECF_NumeroSerie(NumeroSerie: String): integer; StdCall;
  External 'CONVECF.DLL';
function ECF_NumeroSerieMFD(NumeroSerie: String): integer; StdCall;
  External 'CONVECF.DLL';
function ECF_SubTotal(SubTotal: String): integer; StdCall;
  External 'CONVECF.DLL';
function ECF_NumeroCupom(NumeroCupom: String): integer; StdCall;
  External 'CONVECF.DLL';
function ECF_NumeroCaixa(NumeroCaixa: String): integer; StdCall;
  External 'CONVECF.DLL';
function ECF_DataHoraImpressora(Data: String; Hora: String): integer; StdCall;
  External 'CONVECF.DLL';
function ECF_VerificaEstadoImpressora(Var ACK: integer; Var ST1: integer;
  Var ST2: integer): integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaImpressoraLigada: integer; StdCall;
  External 'CONVECF.DLL' Name 'ECF_VerificaImpressoraLigada';
function ECF_DownloadMFD(Arquivo: String; TipoDownload: String;
  ParametroInicial: String; ParametroFinal: String; UsuarioECF: String)
  : integer; StdCall; External 'CONVECF.DLL';
function ECF_FormatoDadosMFD(ArquivoOrigem: String; ArquivoDestino: String;
  TipoFormato: String; TipoDownload: String; ParametroInicial: String;
  ParametroFinal: String; UsuarioECF: String): integer; StdCall;
  External 'CONVECF.DLL';
function ECF_RelatorioTipo60Analitico: integer; StdCall;
  External 'CONVECF.DLL' Name 'ECF_RelatorioTipo60Analitico';
function ECF_RelatorioTipo60Mestre: integer; StdCall;
  External 'CONVECF.DLL' Name 'ECF_RelatorioTipo60Mestre';
function ECF_DataMovimento(Livre: String): integer; StdCall;
  External 'CONVECF.DLL';
function ECF_RetornoAliquotas(Aliquotas: Pchar): integer; StdCall;
  External 'CONVECF.DLL';
function ECF_VersaoFirmwareMFD(Versao: String): integer; StdCall;
  External 'CONVECF.DLL';
function ECF_VerificaFormasPagamentoEx(FormasPag: string): integer; StdCall;
  External 'CONVECF.DLL';
function ECF_DataHoraGravacaoUsuarioSWBasicoMFAdicional(dataUsuario,
  dataSWBasico, MFAdicional: string): integer; StdCall; External 'CONVECF.DLL';
function ECF_GrandeTotal(Texto: String): integer; StdCall;
  External 'CONVECF.DLL';
function ECF_MapaResumoMFD: integer; StdCall; External 'CONVECF.DLL';
function ECF_ContadorCupomFiscalMFD(Valor: String): integer; StdCall;
  External 'CONVECF.DLL';
function ECF_ContadorRelatoriosGerenciaisMFD(Valor: String): integer; StdCall;
  External 'CONVECF.DLL';
function ECF_VerificaRelatorioGerencialMFD(Relats: string): integer; StdCall;
  External 'CONVECF.DLL';
function ECF_NumeroOperacoesNaoFiscais(Valor: String): integer; StdCall;
  External 'CONVECF.DLL';
function ECF_ContadorComprovantesCreditoMFD(Valor: String): integer; StdCall;
  External 'CONVECF.DLL';
function ECF_MarcaModeloTipoImpressoraMFD(Marca: String; Modelo: String;
  Tipo: String): integer; StdCall; External 'CONVECF.DLL';
function ECF_Registry_RetornaValor(produto: String; Chave: String;
  Valor: String): integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaHorarioVerao(Tipo: String): integer; StdCall;
  External 'CONVECF.DLL';
function ECF_VerificaTotalizadoresNaoFiscaisEx(Nomes: Pchar): integer; StdCall;
  External 'CONVECF.DLL';
function ECF_StatusCupomFiscal(Tipo: String): integer; StdCall;
  External 'CONVECF.DLL';
function ECF_VerificaAliquotasIss(Flag: String): integer; StdCall;
  External 'CONVECF.DLL';
// Ato copete 17/04
function ECF_ReproduzirMemoriaFiscalMFD(Tipo, FxaIni, FxaFim, PatTxt,
  PatBin: STRING): integer; StdCall; External 'CONVECF.DLL';
function ECF_DownloadMF(Nome: String): integer; StdCall; External 'CONVECF.dll';

// Informacoes da ultima reducao z
function ECF_DadosUltimaReducaoMFD(Texto: Pchar): integer; StdCall;
  External 'CONVECF.DLL';
function ECF_DataHoraReducao(Data: String; Hora: String): integer; StdCall;
  External 'CONVECF.DLL';

// Relatorios Gerenciais
function ECF_LeituraX: integer; StdCall; External 'CONVECF.DLL';
function ECF_ReducaoZ(Data: String; Hora: String): integer; StdCall;
  External 'CONVECF.DLL';

function ECF_LeituraMemoriaFiscalReducaoMFD(cCRZi: String; cCRZf: String;
  Tipo: String): integer; StdCall; External 'CONVECF.dll';
function ECF_LeituraMemoriaFiscalDataMFD(cDatai: String; cDataf: String;
  Tipo: String): integer; StdCall; External 'CONVECF.dll';
function ECF_LeituraMemoriaFiscalSerialDataMFD(cDatai: String; cDataf: String;
  Tipo: String): integer; StdCall; External 'CONVECF.dll';
function ECF_LeituraMemoriaFiscalSerialReducaoMFD(cCRZi: String; cCRZf: String;
  Tipo: String): integer; StdCall; External 'CONVECF.dll';
function ECF_LeituraMemoriaFiscalData(DataInicial: String; DataFinal: String)
  : integer; StdCall; External 'CONVECF.DLL';
function ECF_LeituraMemoriaFiscalReducao(ReducaoInicial: String;
  ReducaoFinal: String): integer; StdCall; External 'CONVECF.DLL';
// Cupom
function ECF_AbreCupom(CGC_CPF: String): integer; StdCall;
  External 'CONVECF.DLL';
function ECF_AbreCupomMFD(CGC_CPF, Nome, Endereco: String): integer; StdCall;
  External 'CONVECF.dll';
function ECF_VendeItemDepartamento(Codigo: String; descricao: String;
  aliquota: String; quantidade: String; ValorUnitario: String;
  Acrescimo: String; Desconto: String; IndiceDepto: String; UM: String)
  : integer; StdCall; External 'CONVECF.dll';
function ECF_CancelaItemGenerico(NumeroItem: String): integer; StdCall;
  External 'CONVECF.DLL';
function ECF_CancelaCupom: integer; StdCall; External 'CONVECF.DLL';
function ECF_IniciaFechamentoCupom(AcrescimoDesconto: String;
  TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String): integer;
  StdCall; External 'CONVECF.DLL';
function ECF_EfetuaFormaPagamento(FormaPagamento: String;
  ValorFormaPagamento: String): integer; StdCall; External 'CONVECF.DLL';
function ECF_TerminaFechamentoCupom(mensagem: String): integer; StdCall;
  External 'CONVECF.DLL';
function ECF_FechaCupomResumido(FormaPagamento: String; mensagem: String)
  : integer; StdCall; External 'CONVECF.dll';
// Operações Não Fiscal
function ECF_AbreComprovanteNaoFiscalVinculado(FormaPagamento: String;
  Valor: String; NumeroCupom: String): integer; StdCall; External 'CONVECF.DLL';
function ECF_UsaComprovanteNaoFiscalVinculado(Texto: String): integer; StdCall;
  External 'CONVECF.DLL';
function ECF_FechaComprovanteNaoFiscalVinculado: integer; StdCall;
  External 'CONVECF.DLL';
function ECF_Sangria(Valor: String): integer; StdCall; External 'CONVECF.DLL';
function ECF_Suprimento(Valor: String; FormaPagamento: String): integer;
  StdCall; External 'CONVECF.DLL';
function ECF_RecebimentoNaoFiscal(IndiceTotalizador: String; Valor: String;
  FormaPagamento: String): integer; StdCall; External 'CONVECF.DLL';
function ECF_RelatorioGerencial(Texto: String): integer; StdCall;
  External 'CONVECF.DLL';
function ECF_FechaRelatorioGerencial: integer; StdCall; External 'CONVECF.DLL';

// Configuração / Programação
function ECF_ProgramaAliquota(aliquota: String; ICMS_ISS: integer): integer;
  StdCall; External 'CONVECF.DLL';
function ECF_ProgramaHorarioVerao: integer; StdCall; External 'CONVECF.DLL';
function ECF_NomeiaTotalizadorNaoSujeitoIcms(Indice: integer;
  Totalizador: String): integer; StdCall; External 'CONVECF.DLL';
function ECF_ProgramaFormasPagamento(formas: Pchar): integer; StdCall;
  External 'CONVECF.DLL';
// Outros
function ECF_AcionaGaveta: integer; StdCall; External 'CONVECF.dll';
function ECF_VerificaEstadoGaveta(Var EstadoGaveta: integer): integer; StdCall;
  External 'CONVECF.DLL';
function ECF_ZAUTO(Flag: String): integer; StdCall; External 'CONVECF.DLL';
function ECF_LigaDesligaJanelas(papel: string; outros: string): integer;
  StdCall; External 'CONVECF.DLL';

// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //

// =================================================================================================
// EPSON_Serial
// =================================================================================================
function EPSON_Serial_Abrir_Porta(dwVelocidade: integer; wPorta: integer)
  : integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_Serial_Abrir_Fechar_Porta_CMD(dwVelocidade: integer;
  wPorta: integer): integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_Serial_Abrir_PortaAD(pszVelocidade: Pchar; pszPorta: Pchar)
  : integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_Serial_Abrir_PortaEx(): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Serial_Fechar_Porta(): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Serial_Obter_Estado_Com(): integer; StdCall;
  External 'InterfaceEpson.dll';
// =================================================================================================
// EPSON_Fiscal
// =================================================================================================
function EPSON_Fiscal_Abrir_Cupom(pszCNPJ: Pchar; pszRazaoSocial: Pchar;
  pszEndereco1: Pchar; pszEndereco2: Pchar; dwPosicao: integer): integer;
  StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Dados_Usuario(pszCGC: Pchar; pszSocialReason: Pchar;
  pszAddress1: Pchar; pszAddress2: Pchar; dwPosition: integer): integer;
  StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Vender_Item(pszCodigo: Pchar; pszDescricao: Pchar;
  pszQuantidade: Pchar; dwQuantCasasDecimais: integer; pszUnidade: Pchar;
  pszPrecoUnidade: Pchar; dwPrecoCasasDecimais: integer; pszAliquotas: Pchar;
  dwLinhas: integer): integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Obter_SubTotal(pszSubTotal: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Fiscal_Pagamento(pszNumeroPagamento: Pchar;
  pszValorPagamento: Pchar; dwCasasDecimais: integer; pszDescricao1: Pchar;
  pszDescricao2: Pchar): integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Desconto_Acrescimo_Item(pszValor: Pchar;
  dwCasasDecimais: integer; bDesconto: Boolean; bPercentagem: Boolean): integer;
  StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Desconto_Acrescimo_Subtotal(pszValor: Pchar;
  dwCasasDecimais: integer; bDesconto: Boolean; bPercentagem: Boolean): integer;
  StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Cancelar_Cupom(): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Fiscal_Cancelar_Item(pszNumeroItem: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Fiscal_Cancelar_Ultimo_Item(): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Fiscal_Cancelar_Desconto_Acrescimo_Item(bDesconto: Boolean)
  : integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Cancelar_Acrescimo_Desconto_Subtotal(bDesconto: Boolean)
  : integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Cancelar_Item_Parcial(pszNumeroItem: Pchar;
  pszQuantidade: Pchar; dwQuantCasasDecimais: integer): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Fiscal_Imprimir_Mensagem(pszLinhaTexto1: Pchar;
  pszLinhaTexto2: Pchar; pszLinhaTexto3: Pchar; pszLinhaTexto4: Pchar;
  pszLinhaTexto5: Pchar; pszLinhaTexto6: Pchar; pszLinhaTexto7: Pchar;
  pszLinhaTexto8: Pchar): integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Imprimir_MensagemEX(pszText: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Fiscal_Configurar_Codigo_Barras_Mensagem(dwLinha: integer;
  dwTipo: integer; dwAltura: integer; dwLargura: integer; dwPosicao: integer;
  dwCaracter: integer): integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Fechar_CupomEx(pszTotalCupom: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Fiscal_Fechar_Cupom(bCortarPapel: Boolean; bAdicional: Boolean)
  : integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Mensagem_Aplicacao(pszLinha01: Pchar; pszLinha02: Pchar)
  : integer; StdCall; External 'InterfaceEpson.dll';
// =================================================================================================
// EPSON_NaoFiscal
// =================================================================================================
function EPSON_NaoFiscal_Abrir_Comprovante(pszCNPJ: Pchar;
  pszRazaoSocial: Pchar; pszEndereco1: Pchar; pszEndereco2: Pchar;
  dwPosicao: integer): integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Vender_Item(pszNumeroOperacao: Pchar;
  pszValorOperacao: Pchar; dwCasasDecimais: integer): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Obter_SubTotal(pszSubTotal: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Desconto_Acrescimo_Item(pszValor: Pchar;
  dwCasasDecimais: integer; bDesconto: Boolean; bPercentagem: Boolean): integer;
  StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Desconto_Acrescimo_Subtotal(pszValor: Pchar;
  dwCasasDecimais: integer; bDesconto: Boolean; bPercentagem: Boolean): integer;
  StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Pagamento(pszNumeroPagamento: Pchar;
  pszValorPagamento: Pchar; dwCasasDecimais: integer; pszDescricao1: Pchar;
  pszDescricao2: Pchar): integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Cancelar_Item(pszItem: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Cancelar_Ultimo_Item(): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Cancelar_Desconto_Acrescimo_Item(bDesconto: Boolean)
  : integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Cancelar_Desconto_Acrescimo_Subtotal
  (bDesconto: Boolean): integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Cancelar_Comprovante(): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Fechar_Comprovante(bCortarPapel: Boolean): integer;
  StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Abrir_CCD(pszNumeroPagamento: Pchar; pszValor: Pchar;
  dwCasasDecimais: integer; pszParcelas: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Abrir_Relatorio_Gerencial(pszNumeroRelatorio: Pchar)
  : integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Imprimir_LinhaEX(pszLinha: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Imprimir_Linha(pszLinha: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Imprimir_15Linhas(pszLinha00: Pchar; pszLinha01: Pchar;
  pszLinha02: Pchar; pszLinha03: Pchar; pszLinha04: Pchar; pszLinha05: Pchar;
  pszLinha06: Pchar; pszLinha07: Pchar; pszLinha08: Pchar; pszLinha09: Pchar;
  pszLinha10: Pchar; pszLinha11: Pchar; pszLinha12: Pchar; pszLinha13: Pchar;
  pszLinha014: Pchar): integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Fechar_CCD(bCortarPapel: Boolean): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Fechar_Relatorio_Gerencial(bCortarPapel: Boolean)
  : integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Cancelar_CCD(pszNumeroPagamento: Pchar;
  pszValor: Pchar; dwCasasDecimais: integer; pszParcelas: Pchar;
  pszNumeroCupom: Pchar): integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Cancelar_Pagamento(pszFormaPagamento: Pchar;
  pszNovaFormaPagamento: Pchar; pszValor: Pchar; dwCasasDecimais: integer)
  : integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Nova_Parcela_CCD(): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Nova_Via_CCD(): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Reimprimir_CCD(): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Sangria(pszValor: Pchar; dwCasasDecimais: integer)
  : integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Fundo_Troco(pszValor: Pchar; dwCasasDecimais: integer)
  : integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Imprimir_Codigo_Barras(dwTipo: integer;
  dwAltura: integer; dwLargura: integer; dwPosicao: integer;
  dwCaracter: integer; pszCodigo: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
// =================================================================================================
// EPSON_RelatorioFiscal
// =================================================================================================
function EPSON_RelatorioFiscal_LeituraX(): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_RelatorioFiscal_RZ(pszData: Pchar; pszHora: Pchar;
  dwHorarioVerao: integer; pszCRZ: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_RelatorioFiscal_RZEx(dwHorarioVerao: integer): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_RelatorioFiscal_Leitura_MF(pszInicio: Pchar; pszFim: Pchar;
  dwTipoImpressao: integer; pszBuffer: Pchar; pszArquivo: Pchar;
  pdwTamanhoBuffer: PInteger; dwTamBuffer: integer): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_RelatorioFiscal_Salvar_LeituraX(pszArquivo: Pchar): integer;
  StdCall; External 'InterfaceEpson.dll';
function EPSON_RelatorioFiscal_Abrir_Dia(): integer; StdCall;
  External 'InterfaceEpson.dll';
// =================================================================================================
// EPSON_Obter
// =================================================================================================
function EPSON_Obter_Dados_Usuario(pszDadosUsuario: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Obter_Tabela_Aliquotas(pszTabelaAliquotas: Pchar): integer;
  StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Jornada(chOption: Pchar; pszZnumber: Pchar;
  pszData: Pchar): integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Tabela_Pagamentos(pszTabelaPagamentos: Pchar): integer;
  StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Tabela_NaoFiscais(pszTabelaNaoFiscais: Pchar): integer;
  StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Tabela_Relatorios_Gerenciais(pszTabelaRelatoriosGerenciais
  : Pchar): integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Cancelado(pszTotalCancelado: Pchar): integer;
  StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Aliquotas(pszAliquotasTotal: Pchar): integer;
  StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Bruto(pszVendaBruta: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Descontos(pszTotalDescontos: Pchar): integer;
  StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Troco(pszTotalTroco: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Acrescimos(pszTotalAcrescimos: Pchar): integer;
  StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Dados_Impressora(pszDadosImpressora: Pchar): integer;
  StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Cliche_Usuario(pszDadosUsuario: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Obter_Data_Hora_Jornada(pszDataHora: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Obter_Numero_ECF_Loja(pszDados: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Obter_Hora_Relogio(pszDados: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Obter_Simbolo_Moeda(pszDados: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Obter_Casas_Decimais(pszDados: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Obter_Contadores(pszDados: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Obter_Estado_Impressora(pszDados: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Obter_GT(pszDados: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Obter_Linhas_Impressas(pszDados: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Obter_Linhas_Impressas_RG(pszDados: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Obter_Linhas_Impressas_CCD(pszDados: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Obter_Linhas_Impressas_Vendas(pszLinhasImpressas: Pchar)
  : integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Linhas_Impressas_Pagamentos(pszLinhasImpressas: Pchar)
  : integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Itens_Vendidos(pszItens: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Obter_Estado_Memoria_Fiscal(pszEstado: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Obter_Estado_MFD(pszEstado: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Leituras_X_Impressas(pszLeituras: Pchar): integer;
  StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Dados_Jornada(pszDados: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Obter_Caracteres_Linha(pszDados: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Obter_Operador(pszDados: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Obter_Numero_Ultimo_Item(pszDados: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Obter_Informacao_Item(pszNumeroItem: Pchar; pszDadosItem: Pchar)
  : integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Estado_Cupom(pszEstado: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Obter_Informacao_Ultimo_Documento(pszInfo: Pchar): integer;
  StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Estado_Corte_Papel(Var bHabilitado: Boolean): integer;
  StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Estado_Horario_Verao(Var bEstado: Boolean): integer;
  StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Venda_Bruta(pszBrutAmount: Pchar; pszLastBrutAmount: Pchar)
  : integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Mensagem_Erro(pszCodigoErro: Pchar; pszMensagemErro: Pchar)
  : integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Dados_MF_MFD(pszInicio: Pchar; pszFinal: Pchar;
  dwTipoEntrada: integer; dwEspelhos: integer; dwAtoCotepe: integer;
  dwSintegra: integer; pszArquivoSaida: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Obter_Versao_DLL(pszVersao: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Obter_Total_JornadaEX(pszOption: Pchar; pszZnumber: Pchar;
  pszData: Pchar): integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Dados_Arquivos_MF_MFD(pszInicio: Pchar; pszFim: Pchar;
  dwTipoEntrada: integer; dwEspelhos: integer; dwAtoCotepe: integer;
  dwSintegra: integer; pszArquivoSaida: Pchar; pszArquivoMF: Pchar;
  pszArquivoMFD: Pchar): integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_Separar_AtoCOTEPE(pszFileName: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Salvar_Binario_MF(pszArquivo: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Obter_Arquivo_Binario_MFD(pszFileName: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Obter_Dados_Ultima_RZ(pszLastRZData: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Obter_Versao_SWBasicoEX(pszVersion: Pchar; pszDate: Pchar;
  pszTime: Pchar): integer; StdCall; External 'InterfaceEpson.dll';
// =================================================================================================
// EPSON_Config
// =================================================================================================
function EPSON_Config_Aliquota(pszTaxa: Pchar; bTipoISS: Boolean): integer;
  StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Relatorio_Gerencial(pszReportDescription: Pchar): integer;
  StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Forma_Pagamento(bVinculado: Boolean; pszNumeroMeio: Pchar;
  pszDescricao: Pchar): integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Totalizador_NaoFiscal(pszDescricao: Pchar;
  Var pdwNumeroTotalizador: integer): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Config_Corte_Papel(bHabilitado: Boolean): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Config_Horario_Verao(): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Config_Espaco_Entre_Documentos(pszLinhas: Pchar): integer;
  StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Espaco_Entre_Linhas(pszEspacos: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Config_Logotipo(pszDados: Pchar; dwTamDados: integer;
  pszLinha: Pchar): integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Habilita_Logotipo(bHabilita: Boolean): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Config_Operador(pszDados: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Config_OperadorEX(pszDados: Pchar; dwReport: integer): integer;
  StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Serial_Impressora(pszVelocidade: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Config_Dados_Sintegra(pszRazaoSocial: Pchar;
  pszLogradouro: Pchar; pszNumero: Pchar; pszComplemento: Pchar;
  pszBairro: Pchar; pszMunicipio: Pchar; pszCEP: Pchar; pszUF: Pchar;
  pszFax: Pchar; pszFone: Pchar; pszNomeContato: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Download_Segmentado_MFD(bHabilita: Boolean): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Config_Habilita_EAD(bHabilitado: Boolean): integer; StdCall;
  External 'InterfaceEpson.dll';
// =================================================================================================
// EPSON_Cheque
// =================================================================================================
function EPSON_Cheque_Configurar_Moeda(pszSingular: Pchar; pszPlural: Pchar)
  : integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_Cheque_Configurar_Parametros1(pszNumeroRegistro: Pchar;
  pszValorX: Pchar; pszValorY: Pchar; pszDescricao1X: Pchar;
  pszDescricao1Y: Pchar; pszDescricao2X: Pchar; pszDescricao2Y: Pchar): integer;
  StdCall; External 'InterfaceEpson.dll';
function EPSON_Cheque_Configurar_Parametros2(pszNumeroRegistro: Pchar;
  pszParaX: Pchar; pszParaY: Pchar; pszCidadeX: Pchar; pszCidadeY: Pchar;
  pszOffsetDia: Pchar; pszOffsetMes: Pchar; pszOffsetAno: Pchar;
  pszAdicionalX: Pchar; pszAdicionalY: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Cheque_Imprimir(pszNumeroRegistro: Pchar; pszValor: Pchar;
  dwCasasDecimais: integer; ByValpszPara: Pchar; pszCidade: Pchar;
  pszDados: Pchar; pszTexto: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Cheque_ImprimirEX(pszNumeroRegistro: Pchar; pszValor: Pchar;
  dwCasasDecimais: integer; pszPara: Pchar; pszCidade: Pchar; pszDados: Pchar;
  pszTexto: Pchar): integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_Cheque_Preparar_Endosso(): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Endosso_Estacao_Cheque(pszToX: Pchar; pszToY: Pchar;
  dwHorizontal: integer): integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_Cheque_Imprimir_Endosso(pszLinhaTexto: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Cheque_Ejetar_Endosso(): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Cheque_Cancelar_Impressao(): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Endosso_Estacao_ChequeEX(pszToX: Pchar; pszToY: Pchar;
  dwHorizontal: integer; pszText: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Cheque_Ler_MICR(pszMICR: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
// =================================================================================================
// EPSON_Impressora
// =================================================================================================
function EPSON_Impressora_Abrir_Gaveta(): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Impressora_Avancar_Papel(dwLines: integer): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Impressora_Cortar_Papel(): integer; StdCall;
  External 'InterfaceEpson.dll';
// =================================================================================================
// EPSON_Autenticar
// =================================================================================================
function EPSON_Autenticar_Imprimir(pszMensagem: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Autenticar_Reimprimir(): integer; StdCall;
  External 'InterfaceEpson.dll';
// =================================================================================================
// EPSON_Sys
// =================================================================================================
function EPSON_Sys_Informar_Handle_Janela(HWNDHandle: THandle): integer;
  StdCall; External 'InterfaceEpson.dll';
function EPSON_Sys_Atualizar_Janela(): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Sys_Aguardar_Arquivo(pszArquivo: Pchar; dwTimeout: integer;
  bBloqueiaEntradas: Boolean; bSincrono: Boolean): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Sys_Bloquear_Entradas(bBloqueiaEntradas: Boolean): integer;
  StdCall; External 'InterfaceEpson.dll';
function EPSON_Sys_Log(pszPath: Pchar; dwAction: integer): integer; StdCall;
  External 'InterfaceEpson.dll';
// =================================================================================================
// EPSON_Display
// =================================================================================================
function EPSON_Display_Enviar_Texto(pszTexto: Pchar): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Display_Set_Cursor(dwAcao: integer; dwColuna: integer;
  dwLinha: integer): integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_Display_Apagar_Texto(dwLinha: integer): integer; StdCall;
  External 'InterfaceEpson.dll';
function EPSON_Display_Configurar(dwBrilho: integer; dwLampejo: integer;
  dwRolagem: integer): integer; StdCall; External 'InterfaceEpson.dll';
function EPSON_Display_Inicializar(dwAcao: integer): integer; StdCall;
  External 'InterfaceEpson.dll';
// =================================================================================================
// Funções diversas
function FormatarValor(peValor: Currency; piDecimais: integer;
  pbRemovePonto: Boolean = True): String;
function EPSON_CupomNaoFiscalAberto: Boolean;
function EPSON_CupomFiscalAberto: Boolean;
function EPSON_ECFLigada: String;
function EPSON_NumeroSerie: String;
function EPSON_NumeroCaixa: String;
function EPSON_VersaoSoftwareBasico: String;
function EPSON_DataHoraSoftwareBasico: String;
function EPSON_GavetaAberta: Boolean;

// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //

implementation

uses funcoes, Constantes, Modulo, Principal, UFuncoes;

// -------------------------------------------------------------------------- //
function FormatarValor(peValor: Currency; piDecimais: integer;
  pbRemovePonto: Boolean = True): String;
var
  I: integer;
  sDecimais: String;

begin
  sDecimais := '';
  for I := 1 to piDecimais do
  begin
    sDecimais := sDecimais + '0';
  end;

  Result := FormatFloat('########0.' + sDecimais, peValor);

  if (sDecimais = '') or pbRemovePonto then
  begin
    if Pos(FormatSettings.DecimalSeparator, Result) > 0 then
      Delete(Result, Pos(FormatSettings.DecimalSeparator, Result), 1);
  end;
end;

// -------------------------------------------------------------------------- //
function Executa_programa(const FileName, Params: string;
  const WindowState: Word): Boolean;

var
  SUInfo: TStartupInfo;
  ProcInfo: TProcessInformation;
  CmdLine: string;

begin
  { Coloca o nome do arquivo entre aspas. Isto é necessário devido aos espaços contidos em nomes longos }
  CmdLine := '"' + FileName + '"' + Params;
  FillChar(SUInfo, SizeOf(SUInfo), #0);

  with SUInfo do
  begin
    cb := SizeOf(SUInfo);
    dwFlags := STARTF_USESHOWWINDOW;
    wShowWindow := WindowState;
  end;

  Result := CreateProcess(nil, Pchar(CmdLine), nil, nil, False,
    CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil,
    Pchar(ExtractFilePath(FileName)), SUInfo, ProcInfo);

  { Aguarda até ser finalizado }
  if Result then
  begin
    WaitForSingleObject(ProcInfo.hProcess, INFINITE);

    { Libera os Handles }
    CloseHandle(ProcInfo.hProcess);
    CloseHandle(ProcInfo.hThread);
  end;
end;

// -------------------------------------------------------------------------- //
// Retorno de Comunicacao com ECF
function cECF_Analisa_Retorno(COD_ECF: integer): string;
begin
  if COD_ECF = BEMATECH then
  begin
    Result := OK;
    if IRetorno = 0 THEN
      Result := 'Erro de Comunicação!';
    If IRetorno = -1 THEN
      Result := 'Erro de Execução na Função. Verifique!';
    if IRetorno = -2 THEN
      Result := 'Parâmetro Inválido!';
    if IRetorno = -3 THEN
      Result := 'Alíquota não programada!';
    If IRetorno = -4 THEN
      Result := 'Arquivo BemaFI32.INI não encontrado. Verifique!';
    If IRetorno = -5 THEN
      Result := 'Erro ao Abrir a Porta de Comunicação!';
    If IRetorno = -6 THEN
      Result := 'Impressora Desligada ou Desconectada!';
    If IRetorno = -7 THEN
      Result := 'Banco Não Cadastrado no Arquivo BemaFI32.ini!';
    If IRetorno = -8 THEN
      Result := 'Erro ao Criar ou Gravar no Arquivo Retorno.txt ou Status.txt!';
    if IRetorno = -18 THEN
      Result := 'Não foi possível abrir arquivo INTPOS.001';
    if IRetorno = -19 THEN
      Result := 'Parâmetro diferentes!';
    if IRetorno = -20 THEN
      Result := 'Transação cancelada pelo Operador!';
    if IRetorno = -21 THEN
      Result := 'A Transação não foi aprovada!';
    if IRetorno = -22 THEN
      Result := 'Não foi possível terminar a Impressão!';
    if IRetorno = -23 THEN
      Result := 'Não foi possível terminar a Operação!';
    if IRetorno = -24 THEN
      Result := 'Forma de pagamento não programada.';
    if IRetorno = -25 THEN
      Result := 'Totalizador não fiscal não programado.';
    if IRetorno = -26 THEN
      Result := 'Transação já Efetuada!';
    if IRetorno = -28 THEN
      Result := 'Não há Informações para serem Impressas!';
  end
  else if COD_ECF = DARUMA then
  begin
    if IRetorno = 1 then
      Result := OK
    else
      Result := 'Erro de Comunicação!';
  end
  else if COD_ECF = SWEDA then
  begin
    Result := OK;
    if IRetorno = 0 THEN
      Result := 'Erro de Comunicação!';
    If IRetorno = -1 THEN
      Result := 'Erro de Execução na Função. Verifique!';
    if IRetorno = -2 THEN
      Result := 'Parâmetro Inválido!';
    if IRetorno = -3 THEN
      Result := 'Alíquota não programada!';
    If IRetorno = -4 THEN
      Result := 'Arquivo INI não encontrado. Verifique!';
    If IRetorno = -5 THEN
      Result := 'Erro ao Abrir a Porta de Comunicação!';
    If IRetorno = -6 THEN
      Result := 'Impressora Desligada ou Desconectada!';
    If IRetorno = -7 THEN
      Result := 'Banco Não Cadastrado no Arquivo BemaFI32.ini!';
    If IRetorno = -8 THEN
      Result := 'Erro ao Criar ou Gravar no Arquivo Retorno.txt ou Status.txt!';
    if IRetorno = -18 THEN
      Result := 'Não foi possível abrir arquivo INTPOS.001';
    if IRetorno = -19 THEN
      Result := 'Parâmetro diferentes!';
    if IRetorno = -20 THEN
      Result := 'Transação cancelada pelo Operador!';
    if IRetorno = -21 THEN
      Result := 'A Transação não foi aprovada!';
    if IRetorno = -22 THEN
      Result := 'Não foi possível terminal a Impressão!';
    if IRetorno = -23 THEN
      Result := 'Não foi possível terminal a Operação!';
    if IRetorno = -24 THEN
      Result := 'Forma de pagamento não programada.';
    if IRetorno = -25 THEN
      Result := 'Totalizador não fiscal não programado.';
    if IRetorno = -26 THEN
      Result := 'Transação já Efetuada!';
    if IRetorno = -28 THEN
      Result := 'Não há Informações para serem Impressas!';
  end
  else if COD_ECF = EPSON then
  begin
    if IRetorno = 0 then
      Result := OK
    else
      Result := cECF_Retorno_Impressora(COD_ECF);
  end
  else if COD_ECF = 5 then
  begin
    if IRetorno < 0 then
      Result := 'Erro de Comunicação!'
    else
      Result := OK;
  end;
end;

// -------------------------------------------------------------------------- //
// Retorno de tratamento do comando
function cECF_Retorno_Impressora(COD_ECF: integer): String;
var
  mensagem: string;
  sErro: string;
  ST1err, ST1field, ST2, ST3, ST4, ST5, Temp: String;
  iST3, iST4, iST5, iConta: integer;
  flagB15, flagB14, flagB12, flagB11, flagB10, flagB09, flagB07: Boolean;
  sMensagemErro: String;
  iPos: integer;

begin
  if COD_ECF = BEMATECH then
  begin
    iACK := 0;
    iST1 := 0;
    iST2 := 0;
    IRetorno := Bematech_FI_RetornoImpressora(iACK, iST1, iST2);
    mensagem := '';
    If iACK = 21 Then
      Result := 'A Impressora retornou NAK. O programa será abortado!';
    If iACK = 6 then
    begin
      // Verifica ST1
      IF iST1 >= 128 Then
      begin
        iST1 := iST1 - 128;
        mensagem := mensagem + ' ' + 'Fim do Papel!'
      end;
      IF iST1 >= 64 Then
      begin
        iST1 := iST1 - 64;
      end;
      IF iST1 >= 32 Then
      begin
        iST1 := iST1 - 32;
        mensagem := mensagem + ' ' + 'Erro no relógio!'
      end;
      IF iST1 >= 16 Then
      begin
        iST1 := iST1 - 16;
        mensagem := mensagem + ' ' + 'Impressora em ERRO!'
      end;
      IF iST1 >= 8 Then
      begin
        iST1 := iST1 - 8;
        mensagem := mensagem + ' ' + 'CMD não iniciado com ESC!'
      end;
      IF iST1 >= 4 Then
      begin
        iST1 := iST1 - 4;
        mensagem := mensagem + ' ' + 'Comando Inexistente!'
      end;
      IF iST1 >= 2 Then
      begin
        iST1 := iST1 - 2;
        mensagem := mensagem + ' ' + 'Cupom Aberto'
      end;
      IF iST1 >= 1 Then
      begin
        iST1 := iST1 - 1;
        mensagem := mensagem + ' ' + 'Nº de Parâmetros Inválidos!'
      end;

      // Verifica ST2
      IF iST2 >= 128 Then
      begin
        iST2 := iST2 - 128;
        mensagem := mensagem + ' ' + 'Tipo de Parâmetro Inválido!'
      end;
      IF iST2 >= 64 Then
      begin
        iST2 := iST2 - 64;
        mensagem := mensagem + ' ' + 'Memória Fiscal Lotada.'
      end;
      IF iST2 >= 32 Then
      begin
        iST2 := iST2 - 32;
        mensagem := mensagem + ' ' + 'CMOS não Volátil!'
      end;
      IF iST2 >= 16 Then
      begin
        iST2 := iST2 - 16;
        mensagem := mensagem + ' ' + 'Alíquota Não Programada.'
      end;
      IF iST2 >= 8 Then
      begin
        iST2 := iST2 - 8;
        mensagem := mensagem + ' ' + 'Alíquotas lotadas.'
      end;
      IF iST2 >= 4 Then
      begin
        iST2 := iST2 - 4;
        mensagem := mensagem + ' ' + 'Cancelamento não Permitido.'
      end;
      IF iST2 >= 2 Then
      begin
        iST2 := iST2 - 2;
        mensagem := mensagem + ' ' + 'CGC/IE não Programados.'
      end;
      IF iST2 >= 1 Then
      begin
        iST2 := iST2 - 1;
        mensagem := mensagem + ' ' + 'Comando não Executado.'
      end;
    end;
    if mensagem = '' then
      Result := OK
    else
      Result := mensagem;
  end
  else if COD_ECF = DARUMA then
  begin
    iACK := 0;
    iST1 := 0;
    iST2 := 0;
    IRetorno := Daruma_FI_RetornoImpressora(iACK, iST1, iST2);
    SetLength(sErro, 4);
    IRetorno := Daruma_FI_RetornaErroExtendido(sErro);

    sErro := TrimLeft(TrimRight(sErro));

    mensagem := '';
    if sErro = '00' then
      mensagem := 'IF em modo Manutenção. Foi ligada sem o Jumper de Operação.';
    if sErro = '01' then
      mensagem := 'Método disponível somente em modo Manutenção.';
    if sErro = '02' then
      mensagem := 'Erro durante a gravação da Memória Fiscal.';
    if sErro = '03' then
      mensagem := 'Memória Fiscal esgotada.';
    if sErro = '04' then
      mensagem := 'Erro no relógio interno da IF.';
    if sErro = '05' then
      mensagem := 'Falha mecânica na IF.';
    if sErro = '06' then
      mensagem := 'Erro durante a leitura da Memória Fiscal.';
    if sErro = '07' then
      mensagem := 'Metodo permitido apenas em modo fiscal (IF sem jmper).';
    if sErro = '10' then
      mensagem := 'Documento sendo emitido.';
    if sErro = '11' then
      mensagem := 'Documento não foi aberto.';
    if sErro = '12' then
      mensagem := 'Não existe documento a cancelar.';
    if sErro = '13' then
      mensagem :=
        'Dígito não numérico não esperado, foi encontrado nos Parâmetros do Método.';
    if sErro = '14' then
      mensagem := 'Não há mais memória disponível para esta operação.';
    if sErro = '15' then
      mensagem := 'Item a cancelar não foi encontrado.';
    if sErro = '16' then
      mensagem := 'Erro de sintaxe no método.';
    if sErro = '17' then
      mensagem := '"Estouro" de capacidade numérica (overflow).';
    if sErro = '18' then
      mensagem :=
        'Selecionado totalizador tributado com alíquota de imposto não definida.';
    if sErro = '19' then
      mensagem := 'Memória Fiscal vazia.';
    if sErro = '20' then
      mensagem := 'Não existem campos que requerem atualização.';
    // if sErro = '21' then Mensagem :=  'Detectado proximidade do final da bobina de papel';
    if sErro = '22' then
      mensagem :=
        'Cupom de Redução Z já foi emitido. IF inoperante até 0:00h do próximo dia.';
    if sErro = '23' then
      mensagem :=
        'Redução Z do período anterior ainda pendente. IF inoperante.';
    if sErro = '24' then
      mensagem := 'Valor de desconto ou acréscimo inválido (limitado a 100%).';
    if sErro = '25' then
      mensagem :=
        'Caráctere inválido foi encontrado nos Parâmetros do Métodos.';
    if sErro = '26' then
      mensagem := 'Médoto não pode ser executado.';
    if sErro = '27' then
      mensagem := 'Nenhum periférico conectado a interface auxiliar.';
    if sErro = '28' then
      mensagem := 'Foi encontrado um campo em zero.';
    if sErro = '29' then
      mensagem :=
        'Documento anterior não foi Cupom Fiscal. Não pode emitir Cupom Adicional.';
    if sErro = '30' then
      mensagem :=
        'Acumulador Não Fiscal selecionado não é válido ou não está disponível.';
    if sErro = '31' then
      mensagem :=
        'Não pode autenticar. Excedeu 4 repetições ou não é permitida nesta fase.';
    if sErro = '32' then
      mensagem := 'Cupom adicional inibido por configuração.';
    if sErro = '35' then
      mensagem := 'Relógio Interno Inoperante.';
    if sErro = '36' then
      mensagem :=
        'Versão do firmware gravada na Memória Fiscal não é a esperada.';
    if sErro = '37' then
      mensagem := 'Alíquota de imposto informada já está carregada na memória.';
    if sErro = '38' then
      mensagem := 'Forma de pagamento selecionada não é válida.';
    if sErro = '39' then
      mensagem := 'Erro na seqüência de fechamento do Cupom Fiscal.';
    if sErro = '40' then
      mensagem :=
        'IF em Jornada Fiscal. Alteração da configuração não é permitida.';
    if sErro = '41' then
      mensagem :=
        'Data inválida. Data fornecida é inferior à última gravada na Memória Fiscal.';
    if sErro = '42' then
      mensagem := 'Leitura X inicial ainda não foi emitida.';
    if sErro = '43' then
      mensagem := 'Não pode emitir Comprovante Vinculado.';
    if sErro = '44' then
      mensagem := 'Cupom de Orçamento não permitido para este estabelecimento.';
    if sErro = '45' then
      mensagem := 'Campo obrigatório em branco.';
    if sErro = '48' then
      mensagem := 'Não pode estornar.';
    if sErro = '49' then
      mensagem := 'Forma de pagamento indicada não encontrada.';
    if sErro = '50' then
      mensagem := 'Fim da bobina de papel.';
    if sErro = '51' then
      mensagem := 'Nenhum usuário cadastrado na MF.';
    if sErro = '52' then
      mensagem := 'MF não instalada ou não inicializada.';
    if sErro = '56' then
      mensagem := 'Documento já aberto.';
    if sErro = '61' then
      mensagem := 'Queda de energia durante a emissão de Cupom Fiscal.';
    if sErro = '76' then
      mensagem :=
        'Desconto em ISS não permitido neste ECF (a programação deverá ser feita por meio de intervenção técnica e caso o Estado permita).';
    if sErro = '75' then
      mensagem :=
        'Operação com ISS não permitida (se a sua impressora for uma FS600 ou FS2100T, então será preciso ter uma inscrição municipal gravada em sua impressora para que seja possível programar/utilizar alíquota de serviço).';
    if sErro = '77' then
      mensagem := 'Acréscimo em IOF inibido.';
    if sErro = '80' then
      mensagem := 'Periférico na interface auxiliar não pode ser reconhecido.';
    if sErro = '81' then
      mensagem := 'Solicitado preenchimento de cheque de banco desconhecido.';
    if sErro = '82' then
      mensagem :=
        'Solicitado transmissão de mensagem nula pela interface auxiliar.';
    if sErro = '83' then
      mensagem := 'Extenso do cheque não cabe no espaço disponível.';
    if sErro = '84' then
      mensagem := 'Erro na comunicação com a interface auxiliar.';
    if sErro = '85' then
      mensagem :=
        'Erro no dígito verificador durante comunicação com a PertoCheck.';
    if sErro = '86' then
      mensagem := 'Falha na carga de geometria de folha de cheque.';
    if sErro = '87' then
      mensagem :=
        'Parâmetros do Método: invállido para o campo de data do cheque.';
    if sErro = '90' then
      mensagem := 'Sequência de validação de número de série inválida.';
    if sErro = '180' then
      mensagem :=
        'Mensagem do aplicativo não programada. (Esta mensagem não é opcional e sim uma exigência da legislação e deverá ser programada para que o ECF seja liberado para a emissão de documentos fiscais.';
    if sErro = '181' then
      mensagem :=
        'Não é possivel realizar Redução Z entre 00:00am e 02:00am (Meia Noite e Duas da Manhã) nesta versão de firmware da FS600 (está limitação existe nas versões 1.1 pra baixo.';
    if sErro = '999' then
      mensagem :=
        'Impressora Fiscal não responde. Verifique se está ligada ou o cabo está conectado corretamente.';

    if mensagem = '' then
      Result := OK
    else
      Result := mensagem;
  end
  else if COD_ECF = SWEDA then
  begin
    iACK := 0;
    iST1 := 0;
    iST2 := 0;
    IRetorno := ECF_RetornoImpressora(iACK, iST1, iST2);
    mensagem := '';
    If iACK = 21 Then
      Result := 'A Impressora retornou NAK. O programa será abortado!';
    If iACK = 6 then
    begin
      // Verifica ST1
      IF iST1 >= 128 Then
      begin
        iST1 := iST1 - 128;
        mensagem := mensagem + ' ' + 'Fim do Papel!'
      end;
      IF iST1 >= 64 Then
      begin
        iST1 := iST1 - 64;
      end;
      IF iST1 >= 32 Then
      begin
        iST1 := iST1 - 32;
        mensagem := mensagem + ' ' + 'Erro no relógio!'
      end;
      IF iST1 >= 16 Then
      begin
        iST1 := iST1 - 16;
        mensagem := mensagem + ' ' + 'Impressora em ERRO!'
      end;
      IF iST1 >= 8 Then
      begin
        iST1 := iST1 - 8;
        mensagem := mensagem + ' ' + 'CMD não iniciado com ESC!'
      end;
      IF iST1 >= 4 Then
      begin
        iST1 := iST1 - 4;
        mensagem := mensagem + ' ' + 'Comando Inexistente!'
      end;
      IF iST1 >= 2 Then
      begin
        iST1 := iST1 - 2;
        mensagem := mensagem + ' ' + 'Cupom Aberto'
      end;
      IF iST1 >= 1 Then
      begin
        iST1 := iST1 - 1;
        mensagem := mensagem + ' ' + 'Nº de Parâmetros Inválidos!'
      end;

      // Verifica ST2
      IF iST2 >= 128 Then
      begin
        iST2 := iST2 - 128;
        mensagem := mensagem + ' ' + 'Tipo de Parâmetro Inválido!'
      end;
      IF iST2 >= 64 Then
      begin
        iST2 := iST2 - 64;
        mensagem := mensagem + ' ' + 'Memória Fiscal Lotada.'
      end;
      IF iST2 >= 32 Then
      begin
        iST2 := iST2 - 32;
        mensagem := mensagem + ' ' + 'CMOS não Volátil!'
      end;
      IF iST2 >= 16 Then
      begin
        iST2 := iST2 - 16;
        mensagem := mensagem + ' ' + 'Alíquota Não Programada.'
      end;
      IF iST2 >= 8 Then
      begin
        iST2 := iST2 - 8;
        mensagem := mensagem + ' ' + 'Alíquotas lotadas.'
      end;
      IF iST2 >= 4 Then
      begin
        iST2 := iST2 - 4;
        mensagem := mensagem + ' ' + 'Cancelamento não Permitido.'
      end;
      IF iST2 >= 2 Then
      begin
        iST2 := iST2 - 2;
        mensagem := mensagem + ' ' + 'CGC/IE não Programados.'
      end;
      IF iST2 >= 1 Then
      begin
        iST2 := iST2 - 1;
        mensagem := mensagem + ' ' + 'Comando não Executado.'
      end;
    end;
    if mensagem = '' then
      Result := OK
    else
      Result := mensagem;
  end
  else if COD_ECF = EPSON then
  begin
    mensagem := '';
    Result := OK;

    For iConta := 1 To 2 Do
      ST1err := ST1err + ' ';

    For iConta := 1 To 2 Do
      ST1field := ST1field + ' ';

    For iConta := 1 To 4 Do
      ST2 := ST2 + ' ';

    For iConta := 1 To 4 Do
      ST3 := ST3 + ' ';

    For iConta := 1 To 4 Do
      ST4 := ST4 + ' ';

    For iConta := 1 To 4 Do
      ST5 := ST5 + ' ';

    For iConta := 1 To 20 Do
      Temp := Temp + ' ';

    IRetorno := EPSON_Obter_Estado_Impressora(Pchar(Temp));

    If IRetorno <> 0 Then
      Result := ERRO
    else
    begin
      If IRetorno <> 0 Then
        Result := ERRO
      Else
        Result := OK;

      ST1err := Copy(Temp, 1, 2);
      ST1field := Copy(Temp, 3, 2);
      ST2 := Copy(Temp, 5, 4);
      ST3 := Copy(Temp, 9, 4);
      ST4 := Copy(Temp, 13, 4);
      ST5 := Copy(Temp, 17, 4);

      // ==============================================================================
      // Parâmetros do último comando
      // ==============================================================================
      Case StrToInt(ST1err) of
        0:
          mensagem := mensagem + '';
        1:
          mensagem := mensagem + 'Campo deve ser um ponteiro para string.';
        2:
          mensagem := mensagem + 'String com data inválida.';
        3:
          mensagem := mensagem + 'String com hora inválida.';
        4:
          mensagem := mensagem +
            'String não está vazia ou contém data inválida.';
        5:
          mensagem := mensagem +
            'String não está vazia ou contém hora inválida.';
        6:
          mensagem := mensagem + 'String não pode ser vazia.';
      else
        // Mensagem := Mensagem + 'Erro não mapeado.';
      end;

      // ==============================================================================
      // Estado da Comunicação
      // ==============================================================================
      Case StrToInt('$' + ST2) of
        0:
          mensagem := mensagem + '';
        1:
          mensagem := mensagem + 'Porta já está aberta.';
        2:
          mensagem := mensagem + 'Porta usada por outra aplicação.';
        4:
          mensagem := mensagem + 'Número de porta inválido.';
        5:
          mensagem := mensagem + 'Velocidade inválida.';
        16:
          mensagem := mensagem +
            'String não está vazia ou contém hora inválida.';
      else
        mensagem := mensagem + 'Erro interno da biblioteca.';
      end;

      // ==============================================================================
      // Estado da Impressora
      // ==============================================================================
      flagB09 := False;
      flagB10 := False;
      iST3 := StrToInt('$' + ST3);
      // ****************************************************************************
      // TRATAMENTO DO BIT 15                                *
      // ****************************************************************************
      If (iST3 >= 32768) Then
      begin
        mensagem := mensagem + 'Impressora Desligada.';
        iST3 := iST3 - 32768;
      end;

      // ****************************************************************************
      // TRATAMENTO DO BIT 14                                *
      // ****************************************************************************
      If (iST3 >= 16384) Then
      begin
        mensagem := mensagem + 'Erro de impressão.';
        iST3 := iST3 - 16384;
      end;

      // ****************************************************************************
      // TRATAMENTO DO BIT 13                                *
      // ****************************************************************************
      If (iST3 >= 8192) Then
      begin
        mensagem := mensagem + 'Tampa superior aberta.';
        iST3 := iST3 - 8192;
      end;

      // ****************************************************************************
      // TRATAMENTO DO BIT 12                                *
      // ****************************************************************************
      If (iST3 >= 4096) Then
      begin
        mensagem := mensagem + 'Gaveta Aberta.';
        iST3 := iST3 - 4096;
      end;

      // ****************************************************************************
      // TRATAMENTO DOS BITS 10 E 9                          *
      // ****************************************************************************
      If (iST3 >= 1024) Then
      begin
        flagB10 := True;
        iST3 := iST3 - 1024;
      end;

      If (iST3 >= 512) Then
      begin
        flagB09 := True;
        iST3 := iST3 - 512;
      end;

      // ****************************************************************************
      // TRATAMENTO DO BIT 8                                 *
      // ****************************************************************************
      If (iST3 >= 256) Then
      begin
        // Mensagem := Mensagem + 'Aguardando retirada do papel.';
        iST3 := iST3 - 256;
      end;

      // ****************************************************************************
      // TRATAMENTO DO BIT 7                                 *
      // ****************************************************************************
      If (iST3 >= 128) Then
      begin
        mensagem := mensagem + 'Aguardando inserção do papel.';
        iST3 := iST3 - 128;
      end;

      // ****************************************************************************
      // TRATAMENTO DO BIT 6                                 *
      // ****************************************************************************
      If (iST3 >= 64) Then
      begin
        // T4.Text := T4.Text + 'Estado do sensor inferior da estação de cheque = 1 - ';
        iST3 := iST3 - 64;
      end;

      // ****************************************************************************
      // TRATAMENTO DO BIT 5                                 *
      // ****************************************************************************
      If (iST3 >= 32) Then
      begin
        // T4.Text := T4.Text + 'Estado do sensor superior da estação do cheque = 1 - ';
        iST3 := iST3 - 32;
      end;

      // ****************************************************************************
      // TRATAMENTO DO BIT 4                                 *
      // ****************************************************************************
      If (iST3 >= 16) Then
      begin
        // T4.Text := T4.Text + 'Estado do sensor de autenticação = 1 - ';
        iST3 := iST3 - 16;
      end;

      // ****************************************************************************
      // TRATAMENTO DO BIT 3                                 *
      // ****************************************************************************
      If (iST3 >= 8) Then
      begin
        mensagem := mensagem + 'Impressora sem papel.';
        iST3 := iST3 - 8;
      end;

      // ****************************************************************************
      // TRATAMENTO DO BIT 2                                 *
      // ****************************************************************************
      If (iST3 >= 4) Then
      begin
        // T4.Text := T4.Text + 'Pouco papel - ';
        iST3 := iST3 - 4;
      end;

      // ****************************************************************************
      // TRATAMENTO DO BIT 1                                 *
      // ****************************************************************************
      If (iST3 >= 2) Then
      begin
        mensagem := mensagem + 'Impressora sem papel.';
        iST3 := iST3 - 2;
      end;

      // ****************************************************************************
      // TRATAMENTO DO BIT 0                                 *
      // ****************************************************************************
      If (iST3 >= 1) Then
      begin
        // T4.Text := T4.Text + 'Pouco papel - ';
      end;

      // ==============================================================================
      // Estado fiscal
      // ==============================================================================
      flagB15 := False;
      flagB14 := False;
      flagB11 := False;
      flagB10 := False;

      iST4 := StrToInt('$' + ST4);

      // ****************************************************************************
      // TRATAMENTO DOS BITS 15 E 14                         *
      // ****************************************************************************
      If (iST4 >= 32768) Then
      begin
        flagB15 := True;
        iST4 := iST4 - 32768;
      end;

      If (iST4 >= 16384) Then
      begin
        flagB14 := True;
        iST4 := iST4 - 16384;
      end;

      {
        If ((flagB15 = True) And (flagB14 = True)) Then
        T5.Text := T5.Text + 'Modo Fiscalizado - '
        Else If ((flagB15 = True) And (flagB14 = False)) Then
        T5.Text := T5.Text + 'Modo manufatura (Não-Fiscalizado) - '
        Else If ((flagB15 = False) And (flagB14 = False)) Then
        T5.Text := T5.Text + 'Modo bloqueado - ';


        //****************************************************************************

        //****************************************************************************
        //                           TRATAMENTO DO BITS 12                           *
        //****************************************************************************
        If (iST4 >= 4096) Then
        begin
        T5.Text := T5.Text + 'Modo de Intervenção Técnica - ';
        iST4 := iST4 - 4096;
        END
        Else
        T5.Text := T5.Text + 'Modo de operação normal - ';
        //****************************************************************************
      }

      // ****************************************************************************
      // TRATAMENTO DOS BITS 11 E 10                         *
      // ****************************************************************************
      If (iST4 >= 2048) Then
      begin
        flagB11 := True;
        iST4 := iST4 - 2048;
      end;

      If (iST4 >= 1024) Then
      begin
        flagB10 := True;
        iST4 := iST4 - 1024;
      end;

      If ((flagB11 = True) And (flagB10 = True)) Then
        mensagem := mensagem + 'Erro de leitura/escrita da Memória Fiscal.'
      Else If ((flagB11 = True) And (flagB10 = False)) Then
        mensagem := mensagem + 'Memória Fiscal cheia.'
      Else If ((flagB11 = False) And (flagB10 = True)) Then
        mensagem := mensagem + 'Memória Fiscal em esgotamento.';

      // ****************************************************************************

      // ****************************************************************************
      // TRATAMENTO DO BIT7                              *
      // ****************************************************************************
      If (iST4 >= 128) Then
      begin
        // Mensagem := Mensagem + 'Período de vendas aberto.';
        iST4 := iST4 - 128;
      END
      ELSE
        mensagem := mensagem + 'Período de vendas fechado.';

      // ****************************************************************************

      // ****************************************************************************
      // TRATAMENTO DOS BITS 3,2,1 E 0                       *
      // ****************************************************************************
      { If iST4 = 9 Then
        Mensagem := Mensagem + 'Cheque ou autenticação (TMH6000 e TMU675).'
        Else If iST4 = 8 Then
        T5.Text := T5.Text + 'Comprovante Não-Fiscal - '
        Else If iST4 = 4 Then
        T5.Text := T5.Text + 'Relatório Gerencial - '
        Else If iST4 = 3 Then
        T5.Text := T5.Text + 'Estorno de Comprovante de Crédito ou Débito - '
        Else If iST4 = 2 Then
        T5.Text := T5.Text + 'Comprovante de Crédito ou Débito - '
        Else If iST4 = 1 Then
        T5.Text := T5.Text + 'Cupom Fiscal aberto - '
        Else If iST4 = 0 Then
        T5.Text := T5.Text + 'Documento fechado - '; }

      // ****************************************************************************

      // ==============================================================================
      // Estado de execução do último comando
      // ==============================================================================
      ST5 := UpperCase(ST5);
      iST5 := StrToInt('$' + ST5);
      Case iST5 of
        $0000:
          mensagem := mensagem + 'Resultado sem erro.';
        $0001:
          mensagem := mensagem + 'Erro interno.';
        $0002:
          mensagem := mensagem + 'Erro de iniciação do equipamento.';
        $0003:
          mensagem := mensagem + 'Erro de processo interno.';
        $0101:
          mensagem := mensagem + 'Comando inválido para o estado atual.';
        $0102:
          mensagem := mensagem + 'Comando inválido para o documento atual.';
        $0106:
          mensagem := mensagem + 'Comando aceito apenas fora de intervenção.';
        $0107:
          mensagem := mensagem + 'Comando aceito apenas dentro de intervenção.';
        $0108:
          mensagem := mensagem + 'Comando inválido durante processo de scan.';
        $0109:
          mensagem := mensagem + 'Excesso de intervenções.';
        $0201:
          mensagem := mensagem + 'Comando com frame inválido.';
        $0202:
          mensagem := mensagem + 'Comando inválido.';
        $0203:
          mensagem := mensagem + 'Campos em excesso.';
        $0204:
          mensagem := mensagem + 'Campos em falta.';
        $0205:
          mensagem := mensagem + 'Campo não opcional.';
        $0206:
          mensagem := mensagem + 'Campo alfanumérico inválido.';
        $0207:
          mensagem := mensagem + 'Campo alfabético inválido.';
        $0208:
          mensagem := mensagem + 'Campo numérico inválido.';
        $0209:
          mensagem := mensagem + 'Campo binário inválido.';
        $020A:
          mensagem := mensagem + 'Campo imprimível inválido.';
        $020B:
          mensagem := mensagem + 'Campo hexadecimal inválido.';
        $020C:
          mensagem := mensagem + 'Campo data inválido.';
        $020D:
          mensagem := mensagem + 'Campo hora inválido.';
        $020E:
          mensagem := mensagem + 'Campo com atributos de impressão inválidos.';
        $020F:
          mensagem := mensagem + 'Campo booleano inválido.';
        $0210:
          mensagem := mensagem + 'Campo com tamanho inválido.';
        $0211:
          mensagem := mensagem + 'Extensão de comando inválida.';
        $0212:
          mensagem := mensagem + 'Código de barra não permitido.';
        $0213:
          mensagem := mensagem + 'Atributos de impressão não permitidos.';
        $0214:
          mensagem := mensagem + 'Atributos de impressão inválidos.';
        $0215:
          mensagem := mensagem + 'Código de barras incorretamente definido.';
        $0217:
          mensagem := mensagem + 'Comando invalido para a porta selecionada.';
        $0301:
          mensagem := mensagem + 'Erro de hardware.';
        $0302:
          mensagem := mensagem + 'Impressora não está pronta.';
        $0303:
          mensagem := mensagem + 'Erro de Impressão.';
        $0304:
          mensagem := mensagem + 'Falta de papel.';
        $0305:
          mensagem := mensagem + 'Pouco papel disponível.';
        $0306:
          mensagem := mensagem + 'Erro em carga ou expulsão do papel.';
        $0307:
          mensagem := mensagem +
            'Característica não suportada pela impressora.';
        $0308:
          mensagem := mensagem + 'Erro de display.';
        $0309:
          mensagem := mensagem + 'Seqüência de scan inválida.';
        $300A:
          mensagem := mensagem + 'Número de área de recorte inválido.';
        $300B:
          mensagem := mensagem + 'Scanner não preparado.';
        $300C:
          mensagem := mensagem +
            'Qualidade de Logotipo não suportada pela impressora.';
        $030E:
          mensagem := mensagem + 'Erro de leitura do microcódigo.';
        $0401:
          mensagem := mensagem + 'Número de série inválido.';
        $0402:
          mensagem := mensagem +
            'Requer dados de fiscalização já configurados.';
        $0501:
          mensagem := mensagem + 'Data / Hora não configurada.';
        $0502:
          mensagem := mensagem + 'Data inválida.';
        $0503:
          mensagem := mensagem + 'Data em intervalo inválido.';
        $0504:
          mensagem := mensagem + 'Nome operador inválido.';
        $0505:
          mensagem := mensagem + 'Número de caixa inválido.';
        $0508:
          mensagem := mensagem + 'Dados de Cabeçalho ou rodapé inválidos.';
        $0509:
          mensagem := mensagem + 'Excesso de fiscalização.';
        $500C:
          mensagem := mensagem +
            'Número máximo de meios de pagamento já definidos.';
        $050D:
          mensagem := mensagem + 'Meio de pagamento já definido.';
        $050E:
          mensagem := mensagem + 'Meio de pagamento inválido.';
        $050F:
          mensagem := mensagem + 'Descrição do meio de pagamento inválido.';
        $0510:
          mensagem := mensagem + 'Valor máximo de desconto inválido.';
        $0513:
          mensagem := mensagem + 'Logotipo do usuário inválido.';
        $0514:
          mensagem := mensagem + 'Seqüência de logotipo inválido.';
        $0515:
          mensagem := mensagem + 'Configuração de display inválida.';
        $0516:
          mensagem := mensagem + 'Dados do MICR inválidos.';
        $0517:
          mensagem := mensagem + 'Campo de endereço inválido.';
        $0518:
          mensagem := mensagem + 'Nome da loja não definido.';
        $0519:
          mensagem := mensagem + 'Dados fiscais não definidos.';
        $510A:
          mensagem := mensagem + 'Número seqüencial do ECF inválido.';
        $510B:
          mensagem := mensagem +
            'Simbologia do GT inválida, devem ser todos diferentes.';
        $510C:
          mensagem := mensagem + 'Número de CNPJ inválido.';
        $051D:
          mensagem := mensagem + 'Senha de fiscalização inválida.';
        $051E:
          mensagem := mensagem + 'Último documento deve ser uma redução Z.';
        $051F:
          mensagem := mensagem +
            'Símbolo da moeda igual ao atualmente cadastrado.';
        $0520:
          mensagem := mensagem + 'Identificação da alíquota não cadastrada.';
        $0521:
          mensagem := mensagem + 'Alíquota não cadastrada.';
        $0601:
          mensagem := mensagem + 'Memória de Fita-detalhe esgotada.';
        $0605:
          mensagem := mensagem +
            'Número de série invalido para a Memória de Fita-detalhe.';
        $0606:
          mensagem := mensagem + 'Memória de Fita-detalhe não iniciada.';
        $0607:
          mensagem := mensagem +
            'Memória de Fita-detalhe não pode estar iniciada.';
        $0608:
          mensagem := mensagem +
            'Número de série da Memória de Fita-detalhe não confere.';
        $0609:
          mensagem := mensagem + 'Erro Interno na Memória de Fita-detalhe.';
        $0701:
          mensagem := mensagem + 'Valor inválido para o número do registro.';
        $0702:
          mensagem := mensagem + 'Valor inválido para o número do item.';
        $0703:
          mensagem := mensagem + 'Intervalo inválido para a leitura da MFD.';
        $0704:
          mensagem := mensagem + 'Número de usuário inválido para MFD.';
        $0801:
          mensagem := mensagem + 'Comando inválido com jornada fiscal fechada.';
        $0802:
          mensagem := mensagem + 'Comando inválido com jornada fiscal aberta.';
        $0803:
          mensagem := mensagem + 'Memória Fiscal esgotada.';
        $0804:
          mensagem := mensagem + 'Jornada fiscal deve ser fechada.';
        $0805:
          mensagem := mensagem + 'Não há meios de pagamento definidos.';
        $0806:
          mensagem := mensagem +
            'Excesso de meios de pagamento utilizados na jornada fiscal.';
        $0807:
          mensagem := mensagem + 'Jornada fiscal sem movimento de vendas.';
        $0808:
          mensagem := mensagem + 'Intervalo de jornada fiscal inválido.';
        $0809:
          mensagem := mensagem + 'Existem mais dados para serem lidos.';
        $800A:
          mensagem := mensagem + 'Não existem mais dados para serem lidos.';
        $800B:
          mensagem := mensagem + 'Não pode abrir jornada fiscal.';
        $800C:
          mensagem := mensagem + 'Não pode fechar jornada fiscal.';
        $080D:
          mensagem := mensagem + 'Limite máximo do período fiscal atingido.';
        $080E:
          mensagem := mensagem +
            'Limite máximo do período fiscal não atingido.';
        $080F:
          mensagem := mensagem + 'Abertura da jornada fiscal não permitida.';
        $0901:
          mensagem := mensagem + 'Valor muito grande.';
        $0902:
          mensagem := mensagem + 'Valor muito pequeno.';
        $0903:
          mensagem := mensagem + 'Itens em excesso.';
        $0904:
          mensagem := mensagem + 'Alíquotas em excesso.';
        $0905:
          mensagem := mensagem + 'Desconto ou acréscimos em excesso.';
        $0906:
          mensagem := mensagem + 'Meios de pagamento em excesso.';
        $0907:
          mensagem := mensagem + 'Item não encontrado.';
        $0908:
          mensagem := mensagem + 'Meio de pagamento não encontrado.';
        $0909:
          mensagem := mensagem + 'Total nulo.';
        $900C:
          mensagem := mensagem + 'Tipo de pagamento não definido.';
        $090F:
          mensagem := mensagem + 'Alíquota não encontrada.';
        $0910:
          mensagem := mensagem + 'Alíquota inválida.';
        $0911:
          mensagem := mensagem + 'Excesso de meios de pagamento com CDC.';
        $0912:
          mensagem := mensagem + 'Meio de pagamento com CDC já emitido.';
        $0913:
          mensagem := mensagem + 'Meio de pagamento com CDC ainda não emitido.';
        $0914:
          mensagem := mensagem +
            'Leitura da Memória Fiscal – intervalo CRZ inválido.';
        $0915:
          mensagem := mensagem +
            'Leitura da Memória Fiscal – intervalo de data inválido.';
        $0A01:
          mensagem := mensagem +
            'Operação não permitida após desconto / acréscimo.';
        $0A02:
          mensagem := mensagem +
            'Operação não permitida após registro de pagamentos.';
        $0A03:
          mensagem := mensagem + 'Tipo de item inválido.';
        $0A04:
          mensagem := mensagem + 'Linha de descrição em branco.';
        $0A05:
          mensagem := mensagem + 'Quantidade muito pequena.';
        $0A06:
          mensagem := mensagem + 'Quantidade muito grande.';
        $0A07:
          mensagem := mensagem + 'Total do item com valor muito alto.';
        $0A08:
          mensagem := mensagem +
            'Operação não permitida antes do registro de pagamentos.';
        $0A09:
          mensagem := mensagem + 'Registro de pagamento incompleto.';
        $0A0A:
          mensagem := mensagem + 'Registro de pagamento finalizado.';
        $0A0B:
          mensagem := mensagem + 'Valor pago inválido.';
        $0A0C:
          mensagem := mensagem +
            'Valor de desconto ou acréscimo não permitido.';
        $0A0E:
          mensagem := mensagem + 'Valor não pode ser zero.';
        $0A0F:
          mensagem := mensagem +
            'Operação não permitida antes do registro de itens.';
        $0A11:
          mensagem := mensagem +
            'Cancelamento de desconto e acréscimo somente para item atual.';
        $0A12:
          mensagem := mensagem +
            'Não foi possível cancelar último Cupom Fiscal.';
        $0A13:
          mensagem := mensagem + 'Último Cupom Fiscal não encontrado.';
        $0A14:
          mensagem := mensagem +
            'Último Comprovante Não-Fiscal não encontrado.';
        $0A15:
          mensagem := mensagem + 'Cancelamento de CDC necessária.';
        $0A16:
          mensagem := mensagem + 'Número de item em Cupom Fiscal inválido.';
        $0A17:
          mensagem := mensagem +
            'Operação somente permitida após subtotalização.';
        $0A18:
          mensagem := mensagem +
            'Operação somente permitida durante a venda de itens.';
        $0A19:
          mensagem := mensagem +
            'Operação não permitida em item com desconto ou acréscimo.';
        $0A1A:
          mensagem := mensagem + 'Dígitos de quantidade inválidos.';
        $0A1B:
          mensagem := mensagem + 'Dígitos de valor unitário inválido.';
        $0A1C:
          mensagem := mensagem + 'Não há desconto ou acréscimo a cancelar.';
        $0A1D:
          mensagem := mensagem + 'Não há item para cancelar.';
        $0A1E:
          mensagem := mensagem + 'Desconto ou acréscimo somente no item atual.';
        $0A1F:
          mensagem := mensagem + 'Desconto ou acréscimo já efetuado.';
        $0A20:
          mensagem := mensagem + 'Desconto ou acréscimo nulo não permitido.';
        $0A21:
          mensagem := mensagem + 'Valor unitário inválido.';
        $0A22:
          mensagem := mensagem + 'Quantidade inválida.';
        $0A23:
          mensagem := mensagem + 'Código de item inválido.';
        $0A24:
          mensagem := mensagem + 'Descrição inválida.';
        $0A25:
          mensagem := mensagem +
            'Operação de desconto ou acréscimo não permitida.';
        $0A26:
          mensagem := mensagem + 'Mensagem promocional já impressa.';
        $0A27:
          mensagem := mensagem + 'Linhas adicionais não podem ser impressas.';
        $0A28:
          mensagem := mensagem + 'Dados do consumidor já impresso.';
        $0A29:
          mensagem := mensagem +
            'Dados do consumidor somente no fim do documento.';
        $0A2A:
          mensagem := mensagem +
            'Dados do consumidor somente no inicio do documento.';
        $0A2B:
          mensagem := mensagem + 'Comando Inválido para o item.';
        $0E01:
          mensagem := mensagem + 'Número de linhas em documento excedido.';
        $0E02:
          mensagem := mensagem + 'Número do relatório inválido.';
        $0E03:
          mensagem := mensagem +
            'Operação não permitida após registro de itens.';
        $0E04:
          mensagem := mensagem + 'Registro de valor nulo não permitido.';
        $0E05:
          mensagem := mensagem + 'Não há desconto a cancelar.';
        $0E06:
          mensagem := mensagem + 'Não há acréscimo a cancelar.';
        $0E07:
          mensagem := mensagem +
            'Operação somente permitida após subtotalização.';
        $0E08:
          mensagem := mensagem +
            'Operação somente permitida durante registro de itens.';
        $0E09:
          mensagem := mensagem + 'Operação não-fiscal inválida.';
        $0E0A:
          mensagem := mensagem +
            'Último comprovante Não-Fiscal não encontrado.';
        $0E0B:
          mensagem := mensagem + 'Meio de pagamento não encontrado.';
        $0E0C:
          mensagem := mensagem + 'Não foi possível imprimir nova via.';
        $0E0D:
          mensagem := mensagem + 'Não foi possível realizar reimpressão.';
        $0E0E:
          mensagem := mensagem + 'Não foi possível imprimir nova parcela.';
        $0E0F:
          mensagem := mensagem + 'Não há mais parcelas a imprimir.';
        $0E10:
          mensagem := mensagem + 'Registro de item Não-Fiscal inválido.';
        $0E11:
          mensagem := mensagem + 'Desconto ou acréscimo já efetuado.';
        $0E12:
          mensagem := mensagem + 'Valor de desconto ou acréscimo inválido.';
        $0E13:
          mensagem := mensagem + 'Não foi possível cancelar o item.';
        $0E14:
          mensagem := mensagem + 'Itens em excesso.';
        $0E15:
          mensagem := mensagem + 'Operação Não-Fiscal não cadastrada.';
        $0E16:
          mensagem := mensagem +
            'Excesso de relatórios / operações não-fiscais cadastradas.';
        $0E17:
          mensagem := mensagem + 'Relatório não encontrado.';
        $0E18:
          mensagem := mensagem + 'Comando não permitido.';
        $0E19:
          mensagem := mensagem +
            'Comando não permitido em operações não-fiscais para movimento de monetário.';
        $0E1A:
          mensagem := mensagem +
            'Comando permitido apenas em operações não-fiscais para movimento de monetário.';
        $0E1B:
          mensagem := mensagem +
            'Número de parcelas inválido para a emissão de CCD.';
        $0E1C:
          mensagem := mensagem + 'Operação não fiscal já cadastrada.';
        $0E1D:
          mensagem := mensagem + 'Relatório gerencial já cadastrado.';
        $0E1E:
          mensagem := mensagem + 'Relatório Gerencial Inválido.';
        $3001:
          mensagem := mensagem + 'Configuração de cheque não registrada.';
        $3002:
          mensagem := mensagem + 'Configuração de cheque não encontrada.';
        $3003:
          mensagem := mensagem + 'Valor do cheque já impresso.';
        $3004:
          mensagem := mensagem + 'Nominal ao cheque já impresso.';
        $3005:
          mensagem := mensagem + 'Linhas adicionais no cheque já impresso.';
        $3006:
          mensagem := mensagem + 'Autenticação já impressa.';
        $3007:
          mensagem := mensagem + 'Número máximo de autenticações já impresso.';
      else
        mensagem := mensagem + 'Erro desconhecido.';
      end;
    end;

    if mensagem <> '' then
      Result := mensagem;
  end;
end;

// -------------------------------------------------------------------------- //
// Abrir porta Serial do ECF
function cECF_Abre(COD_ECF: integer; Porta: string): string;
var
  sVelocidade: String;
  sPorta: String;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
    Result := OK
  else if COD_ECF = DARUMA then
    Result := OK
  else if COD_ECF = SWEDA then
    Result := OK
  else if COD_ECF = EPSON then
  begin
    Result := OK;

    SetLength(sVelocidade, 8);
    SetLength(sPorta, 4);
    IRetorno := EPSON_Serial_Abrir_PortaAD(Pchar(sVelocidade), Pchar(sPorta));

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON);
  end
  else if COD_ECF = EPSON then
  begin
    Result := OK;

    SetLength(sVelocidade, 8);
    SetLength(sPorta, 4);
    IRetorno := EPSON_Serial_Abrir_PortaAD(Pchar(sVelocidade), Pchar(sPorta));

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON);

  end;
end;

// -------------------------------------------------------------------------- //
// Fechar porta Serial do ECF
function cECF_Fecha(COD_ECF: integer): string;
begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
    Result := OK
  else if COD_ECF = DARUMA then
    Result := OK
  else if COD_ECF = SWEDA then
    IRetorno := ECF_FechaPortaSerial()
  else if COD_ECF = EPSON then
  begin
    IRetorno := EPSON_Serial_Fechar_Porta;
    Result := cECF_Analisa_Retorno(EPSON);
  end
  else if COD_ECF = EPSON then
  begin
    IRetorno := EPSON_Serial_Fechar_Porta;

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := OK;
  end;
end;

// -------------------------------------------------------------------------- //
// INFORMACAOES
// Verificar Impressora Ligada
function cECF_Ligada(COD_ECF: integer): string;
begin
  Result := ERRO;
  if COD_ECF = BEMATECH then
  begin
    IRetorno := Bematech_FI_VerificaImpressoraLigada();
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    IRetorno := Daruma_FI_VerificaImpressoraLigada();
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    IRetorno := ECF_VerificaImpressoraLigada();
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    Result := EPSON_ECFLigada;
  end;
end;

// -------------------------------------------------------------------------- //
// Retornar o numero de Serie do ECF
function cECF_Numero_Serie(COD_ECF: integer): string;
var
  sRet: string;
  I: integer;
  Numero: string;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    // no arquivo bemafi.ini mude a chave da impressora para 1
    For I := 1 To 20 Do
      Numero := Numero + ' ';
    IRetorno := Bematech_FI_NumeroSerieMFD(Numero);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);

    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
      begin
        if Pos(#0, Numero) > 0 then
          Numero := Copy(Numero, 1, Pos(#0, Numero));

        Result := Numero
      end
      else
      begin
        Result := sRet;
      end;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    For I := 1 To 20 Do
      Numero := Numero + ' ';
    IRetorno := Daruma_FIMFD_RetornaInformacao('78', Numero);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := Numero
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    For I := 1 To 20 Do
      Numero := Numero + ' ';
    IRetorno := ECF_NumeroSerieMFD(Numero);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := Numero
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    Result := EPSON_NumeroSerie;
  end;
end;

// -------------------------------------------------------------------------- //
// Verificar Numero do Caixa
function cECF_Numero_Caixa(COD_ECF: integer): string;
var
  sRet: string;
  I: integer;
  Numero: string;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    For I := 1 To 4 Do
      Numero := Numero + ' ';
    IRetorno := Bematech_FI_NumeroCaixa(Numero);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := Copy(Numero, 2, 3)
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    For I := 1 To 4 Do
      Numero := Numero + ' ';
    IRetorno := Daruma_FI_NumeroCaixa(Numero);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := Copy(Numero, 2, 3)
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    For I := 1 To 4 Do
      Numero := Numero + ' ';
    IRetorno := ECF_NumeroCaixa(Numero);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := Copy(Numero, 2, 3)
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    Result := EPSON_NumeroCaixa;
  end;
end;

// -------------------------------------------------------------------------- //
// Retornar Numero do Cupom Fiscal (COO)
function cECF_Numero_Cupom(COD_ECF: integer): string;
var
  sRet: string;
  I: integer;
  Numero: string;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    For I := 1 To 6 Do
      Numero := Numero + ' ';
    IRetorno := Bematech_FI_NumeroCupom(Numero);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := Numero
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    For I := 1 To 6 Do
      Numero := Numero + ' ';
    IRetorno := Daruma_FI_NumeroCupom(Numero);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := Numero
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    For I := 1 To 6 Do
      Numero := Numero + ' ';
    IRetorno := ECF_NumeroCupom(Numero);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := Numero
      else
        Result := sRet;
    end
    else
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    SetLength(sRet, 84);
    IRetorno := EPSON_Obter_Contadores(Pchar(sRet));

    if IRetorno <> 0 then
      Result := cECF_Retorno_Impressora(EPSON)
    else
      Result := Copy(sRet, 1, 6);
  end;
end;

// -------------------------------------------------------------------------- //
// Retornar Numero do COO para comprovantes nao fiscal SUPRIMENTO, SANGRIA, RECEBIMENTO....
// devido a diferenca da posicao que o comando eh acionado pelo aplicativo
// bematech, sweda e EPSON acrescentar 1
function cECF_COO_Nao_Fiscal(COD_ECF: integer): string;
var
  sRet: string;
  I: integer;
  Numero: string;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    For I := 1 To 6 Do
      Numero := Numero + ' ';
    IRetorno := Bematech_FI_NumeroCupom(Numero);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
      begin
        I := StrToInt(Numero) + 1;
        Numero := zerar(IntToStr(I), 6);
        Result := Numero;
      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    For I := 1 To 6 Do
      Numero := Numero + ' ';
    IRetorno := Daruma_FI_NumeroCupom(Numero);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := Numero
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    For I := 1 To 6 Do
      Numero := Numero + ' ';
    IRetorno := ECF_NumeroCupom(Numero);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
      begin
        I := StrToInt(Numero) + 1;
        Numero := zerar(IntToStr(I), 6);
        Result := Numero;
      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then // CGT: Está pegando o COO Geral
  begin
    SetLength(sRet, 84);
    IRetorno := EPSON_Obter_Contadores(Pchar(sRet));

    if IRetorno <> 0 then
      Result := cECF_Retorno_Impressora(EPSON)
    else
      Result := Copy(sRet, 1, 6);

    {
      For i := 1 To 85 Do
      sRet := sRet + ' ';

      iRetorno := EPSON_Obter_Contadores(pchar(sRet));

      if iRetorno <> 0 then
      Result := cECF_Retorno_Impressora(EPSON)
      else
      Result := Copy(sRet, 31, 6); }

  end;
end;

// -------------------------------------------------------------------------- //
// Retornar numero do contador de cupom fiscal - CCF
function cECF_Numero_Contador_Cupom(COD_ECF: integer): string;
var
  sRet: string;
  I: integer;
  Numero: string;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    For I := 1 To 6 Do
      Numero := Numero + ' ';
    IRetorno := Bematech_FI_ContadorCupomFiscalMFD(Numero);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := Numero
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    For I := 1 To 6 Do
      Numero := Numero + ' ';
    IRetorno := Daruma_FIMFD_RetornaInformacao('30', Numero);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := Numero
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    For I := 1 To 6 Do
      Numero := Numero + ' ';
    IRetorno := ECF_ContadorCupomFiscalMFD(Numero);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      Result := Numero
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    SetLength(sRet, 84);

    IRetorno := EPSON_Obter_Contadores(Pchar(sRet));

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := Copy(sRet, 43, 6);

  end;
end;

// -------------------------------------------------------------------------- //
// Retornar numero do contador de relatorio gerencial
function cECF_Numero_Contador_Relatorio_Gerencial(COD_ECF: integer): string;
var
  sRet: string;
  I: integer;
  Numero: string;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    For I := 1 To 6 Do
      Numero := Numero + ' ';
    IRetorno := Bematech_FI_ContadorRelatoriosGerenciaisMFD(Numero);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := Numero
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    For I := 1 To 6 Do
      Numero := Numero + ' ';
    IRetorno := Daruma_FIMFD_RetornaInformacao('33', Numero);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := Numero
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    For I := 1 To 6 Do
      Numero := Numero + ' ';
    IRetorno := ECF_ContadorRelatoriosGerenciaisMFD(Numero);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := Numero
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    SetLength(sRet, 84);
    IRetorno := EPSON_Obter_Contadores(Pchar(sRet));

    if IRetorno <> 0 then
      Result := cECF_Retorno_Impressora(EPSON)
    else
      Result := Copy(sRet, 37, 6);

  end;
end;

// -------------------------------------------------------------------------- //
// Retornar numero do contador de operacoes nao fiscais - CNF
function cECF_Numero_Contador_Operacao_NF(COD_ECF: integer): string;
var
  sRet: string;
  I: integer;
  Numero: string;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    For I := 1 To 6 Do
      Numero := Numero + ' ';
    IRetorno := Bematech_FI_NumeroOperacoesNaoFiscais(Numero);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := Numero
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    For I := 1 To 6 Do
      Numero := Numero + ' ';
    IRetorno := Daruma_FIMFD_RetornaInformacao('28', Numero);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := Numero
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    For I := 1 To 6 Do
      Numero := Numero + ' ';
    IRetorno := ECF_NumeroOperacoesNaoFiscais(Numero);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := Numero
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    SetLength(sRet, 84);
    IRetorno := EPSON_Obter_Contadores(Pchar(sRet));

    if IRetorno <> 0 then
      Result := cECF_Retorno_Impressora(EPSON)
    else
      Result := Copy(sRet, 19, 6);

  end;
end;

// -------------------------------------------------------------------------- //
// Retornar numero do contador de comprovante de credito
function cECF_Numero_Contador_Comprovante_CD(COD_ECF: integer): string;
var
  sRet: string;
  I: integer;
  Numero: string;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    For I := 1 To 4 Do
      Numero := Numero + ' ';
    IRetorno := Bematech_FI_ContadorComprovantesCreditoMFD(Numero);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := Numero
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    For I := 1 To 4 Do
      Numero := Numero + ' ';
    IRetorno := Daruma_FIMFD_RetornaInformacao('45', Numero);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := Numero
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    For I := 1 To 4 Do
      Numero := Numero + ' ';
    IRetorno := ECF_ContadorComprovantesCreditoMFD(Numero);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := Numero
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    SetLength(sRet, 84);
    IRetorno := EPSON_Obter_Contadores(Pchar(sRet));

    if IRetorno <> 0 then
      Result := cECF_Retorno_Impressora(EPSON)
    else
      Result := Copy(sRet, 25, 6);

  end;
end;

// -------------------------------------------------------------------------- //
function cECF_Numero_Contador_Gerencial(COD_ECF: integer): string;
var
  sRet: string;
  I: integer;
  Numero: string;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    For I := 1 To 659 Do
      Numero := Numero + ' ';
    IRetorno := Bematech_FI_VerificaRelatorioGerencialMFD(Numero);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := Copy(Numero, 1, 4)
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    For I := 1 To 80 Do
      Numero := Numero + ' ';
    IRetorno := Daruma_FIMFD_RetornaInformacao('44', Numero);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      Result := Copy(Numero, 1, 4)
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    For I := 3 To 659 Do
      Numero := Numero + ' ';
    IRetorno := ECF_VerificaRelatorioGerencialMFD(Numero);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := Copy(Numero, 1, 4)
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    SetLength(sRet, 84);
    IRetorno := EPSON_Obter_Contadores(Pchar(sRet));

    if IRetorno <> 0 then
      Result := cECF_Retorno_Impressora(EPSON)
    else
      Result := Copy(sRet, 37, 6);

  end;
end;

// -------------------------------------------------------------------------- //
// Retornar DATA e HORA impressora
function cECF_Data_Hora(COD_ECF: integer): string;
var
  sDados: string;
  I: integer;
  Data, Hora: string;
begin
  Result := ERRO;

  if frmPrincipal.TipoImpressora <> fiscal then
  begin
    Result := DateTimeToStr(Now);
    Exit;
  end;

  if COD_ECF = BEMATECH then
  begin
    For I := 1 To 6 Do
      Data := Data + ' ';
    For I := 1 To 6 Do
      Hora := Hora + ' ';
    IRetorno := Bematech_FI_DataHoraImpressora(Data, Hora);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sDados := cECF_Retorno_Impressora(COD_ECF);
      if sDados = OK then
      begin
        insert('/', Data, 3);
        insert('/20', Data, 6);
        insert(':', Hora, 3);
        insert(':', Hora, 6);
        Result := Data + ' ' + Hora;
      end
      else
        Result := sDados;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    For I := 1 To 6 Do
      Data := Data + ' ';
    For I := 1 To 6 Do
      Hora := Hora + ' ';
    IRetorno := Daruma_FI_DataHoraImpressora(Data, Hora);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sDados := cECF_Retorno_Impressora(COD_ECF);
      if sDados = OK then
      begin
        insert('/', Data, 3);
        insert('/20', Data, 6);
        insert(':', Hora, 3);
        insert(':', Hora, 6);
        Result := Data + ' ' + Hora;
      end
      else
        Result := sDados;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    For I := 1 To 6 Do
      Data := Data + ' ';
    For I := 1 To 6 Do
      Hora := Hora + ' ';
    IRetorno := ECF_DataHoraImpressora(Data, Hora);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sDados := cECF_Retorno_Impressora(COD_ECF);
      if sDados = OK then
      begin
        insert('/', Data, 3);
        insert('/20', Data, 6);
        insert(':', Hora, 3);
        insert(':', Hora, 6);
        Result := Data + ' ' + Hora;
      end
      else
        Result := sDados;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    SetLength(sDados, 14);
    IRetorno := EPSON_Obter_Hora_Relogio(Pchar(sDados));

    Data := Copy(sDados, 1, 8);
    Hora := Copy(sDados, 9, 6);

    insert('/', Data, 3);
    insert('/', Data, 6);
    insert(':', Hora, 3);
    insert(':', Hora, 6);

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := Data + ' ' + Hora;

  end;
end;

// -------------------------------------------------------------------------- //
// Fazer o Download da MFD
function cECF_Download(COD_ECF: integer; Tipo: string; Inicio: String;
  Fim: string): string;
var
  sArq: String;
  sArqTroca: String;
  iTipo: integer;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    if Tipo = 'DATA' THEN
      Tipo := '1';
    if Tipo = 'COO' THEN
      Tipo := '2';

    IRetorno := Bematech_FI_DownloadMFD(Pchar(SystemDrive + '\DOWNLOAD.MFD'),
      Pchar(Tipo), Pchar(Inicio), Pchar(Fim), Pchar('01'));

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);

    if ecfMSG = OK then
    begin
      IRetorno := Bematech_FI_FormatoDadosMFD
        (Pchar(SystemDrive + '\DOWNLOAD.MFD'),
        Pchar(SystemDrive + '\RETORNO.TXT'), '0', Pchar(Tipo), Pchar(Inicio),
        Pchar(Fim), Pchar('01'));
      ecfMSG := cECF_Analisa_Retorno(COD_ECF);

      if ecfMSG = OK then
        Result := cECF_Retorno_Impressora(COD_ECF)
      ELSE
        Result := ecfMSG;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    if Tipo = 'DATA' then
    begin
      // formatar a data para: dd/mm/aa
      if length(Inicio) = 10 then
        Inicio := Copy(Inicio, 1, 6) + Copy(Inicio, 9, 2);
      if length(Fim) = 10 then
        Fim := Copy(Fim, 1, 6) + Copy(Fim, 9, 2);
    end;

    IRetorno := Daruma_FIMFD_DownloadDaMFD(Pchar(Inicio), Pchar(Fim));

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);

    if ecfMSG = OK then
    begin
      Result := cECF_Retorno_Impressora(COD_ECF)
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    if Tipo = 'DATA' THEN
      Tipo := '1';
    if Tipo = 'COO' THEN
      Tipo := '2';
    IRetorno := ECF_DownloadMFD(Pchar('DOWNLOAD.MFD'), Pchar(Tipo),
      Pchar(Inicio), Pchar(Fim), Pchar('01'));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      ecfMSG := cECF_Retorno_Impressora(COD_ECF);
      IF ecfMSG = OK then
      begin
        IRetorno := ECF_FormatoDadosMFD(Pchar('DOWNLOAD.MFD'),
          Pchar('RETORNO.TXT'), '0', Pchar(Tipo), Pchar(Inicio), Pchar(Fim),
          Pchar('01'));
        ecfMSG := cECF_Analisa_Retorno(COD_ECF);
        if ecfMSG = OK then
          Result := cECF_Retorno_Impressora(COD_ECF)
        ELSE
          Result := ecfMSG;
      end
      else
        Result := ecfMSG;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    if Tipo = 'DATA' then
    begin
      try
        Inicio := FormatDateTime('ddmmyyyy', StrToDate(Inicio));
      except
        Result := 'Data inicial inválida!';
        Exit;
      end;

      try
        Fim := FormatDateTime('ddmmyyyy', StrToDate(Fim));
      except
        Result := 'Data final inválida!';
        Exit;
      end;
    end;

    sArq := SystemDrive + '\Retorno.txt';

    if FileExists(sArq) then
      DeleteFile(sArq);

    if Tipo = 'DATA' then
      iTipo := 0 // Por Data
    else
      iTipo := 2; // Por COO

    // CGT: Desabilita a assinatura digital do Arquivo
    IRetorno := EPSON_Config_Habilita_EAD(False);

    IRetorno := EPSON_Obter_Dados_MF_MFD(Pchar(Inicio), Pchar(Fim), iTipo,
      65535, 0, 0, Pchar(SystemDrive + '\Retorno'));

    if IRetorno <> 0 then
    begin
      Result := cECF_Analisa_Retorno(EPSON);
    end
    else
    begin
      sArqTroca := Copy(sArq, 1, Pos('.', sArq) - 1) + '_ESP.txt';

      RenameFile(sArqTroca, sArq);

      if FileExists(sArq) then
        Result := OK
      else
        Result := 'ERRO! Arquivo não encontrado.';

    end;
  end;
end;

// -------------------------------------------------------------------------- //
// Criar o registro 60A (sintegra)
function cECF_Registro60A(COD_ECF: integer): string;
var
  sArq: String;
  sArqTroca: String;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    IRetorno := Bematech_FI_RelatorioTipo60Analitico();
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    IRetorno := Daruma_FI_RelatorioTipo60Analitico();
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    IRetorno := ECF_RelatorioTipo60Analitico();
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    sArq := SystemDrive + '\Retorno.txt';

    if FileExists(sArq) then
      DeleteFile(sArq);

    IRetorno := EPSON_Obter_Dados_MF_MFD(Pchar('000000'), Pchar('000000'), 2, 0,
      0, 2, Pchar(SystemDrive + '\Retorno'));

    if IRetorno <> 0 then
    begin
      Result := cECF_Analisa_Retorno(EPSON);
    end
    else
    begin
      sArqTroca := Copy(sArq, 1, Pos('.', sArq) - 1) + '_SIN.txt';

      RenameFile(sArqTroca, sArq);

      if FileExists(sArq) then
        Result := OK
      else
        Result := 'ERRO! Arquivo não encontrado.';

    end;
  end;
end;

// -------------------------------------------------------------------------- //
// Criar o registro 60M (sintegra)
function cECF_Registro60M(COD_ECF: integer): string;
var
  sArq: String;
  sArqTroca: String;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    IRetorno := Bematech_FI_RelatorioTipo60Mestre();
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end;
  if COD_ECF = DARUMA then
  begin
    IRetorno := Daruma_FI_RelatorioTipo60Mestre();
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end;
  if COD_ECF = SWEDA then
  begin
    IRetorno := ECF_RelatorioTipo60Mestre();
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    sArq := SystemDrive + '\Retorno.txt';

    if FileExists(sArq) then
      DeleteFile(sArq);

    IRetorno := EPSON_Obter_Dados_MF_MFD(Pchar('000000'), Pchar('000000'), 2, 0,
      0, 1, Pchar(SystemDrive + '\Retorno'));

    if IRetorno <> 0 then
    begin
      Result := cECF_Analisa_Retorno(EPSON);
    end
    else
    begin
      sArqTroca := Copy(sArq, 1, Pos('.', sArq) - 1) + '_SIN.txt';

      RenameFile(sArqTroca, sArq);

      if FileExists(sArq) then
        Result := OK
      else
        Result := 'ERRO! Arquivo não encontrado.';

    end;
  end;
end;

// -------------------------------------------------------------------------- //
// Lê as formas de pagamento
function cECF_Le_Formas_Pgto(COD_ECF: integer): string;
var
  sRet: string;
  I, x, Y: integer;
  formas, sretorno_forma, svalor: string;

begin
  Result := ERRO;
  frmmodulo.tbForma_Pgto.Open;
  frmmodulo.tbForma_Pgto.Refresh;

  if COD_ECF = BEMATECH then
  begin
    for I := 1 to 919 do
      formas := formas + ' ';
    IRetorno := Bematech_FI_VerificaFormasPagamentoMFD(formas);

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
      begin
        // limpar a tabela de forma de pagamento
        Y := 0;

        for I := 1 to length(formas) do
        begin
          if Y > 30 then
            break;
          if I = 1 then // inicio da variavel
            x := 1
          else if I >= length(formas) then // final da variavel
          begin
            frmmodulo.tbForma_Pgto.insert;
            frmmodulo.tbForma_Pgto.FieldByName('id').asinteger := Y;
            frmmodulo.tbForma_Pgto.FieldByName('Nome').asstring :=
              Copy(formas, x, 16);
            svalor := Copy(formas, x + 16, 20);
            if svalor <> '' then
            begin
              svalor := floattostr(strtofloat(svalor));
              if strtofloat(svalor) > 0 then
                svalor := floattostr(strtofloat(svalor) / 100);
            end
            else
              svalor := '0';

            frmmodulo.tbForma_Pgto.FieldByName('Valor_Acumulado').asfloat :=
              strtofloat(svalor);

            svalor := Copy(formas, x + 26, 20);
            if svalor <> '' then
            begin
              svalor := floattostr(strtofloat(svalor));
              if strtofloat(svalor) > 0 then
                svalor := floattostr(strtofloat(svalor) / 100);
            end
            else
              svalor := '0';

            frmmodulo.tbForma_Pgto.FieldByName('Valor_Ultimo_Cupom').asfloat :=
              strtofloat(svalor);
            frmmodulo.tbForma_Pgto.Post;
            INC(Y);
          end
          else
          begin
            if formas[I] = ',' then
            begin
              frmmodulo.tbForma_Pgto.insert;
              frmmodulo.tbForma_Pgto.FieldByName('id').asinteger := Y;
              frmmodulo.tbForma_Pgto.FieldByName('Nome').asstring :=
                Copy(formas, x, 16);
              svalor := Copy(formas, x + 16, 20);
              if svalor <> '' then
              begin
                svalor := floattostr(strtofloat(svalor));
                if strtofloat(svalor) > 0 then
                  svalor := floattostr(strtofloat(svalor) / 100);
              end
              else
                svalor := '0';
              frmmodulo.tbForma_Pgto.FieldByName('Valor_Acumulado').asfloat :=
                strtofloat(svalor);
              svalor := Copy(formas, x + 26, 20);
              if svalor <> '' then
              begin
                svalor := floattostr(strtofloat(svalor));
                if strtofloat(svalor) > 0 then
                  svalor := floattostr(strtofloat(svalor) / 100);
              end
              else
                svalor := '0';
              frmmodulo.tbForma_Pgto.FieldByName('Valor_Ultimo_Cupom').asfloat
                := strtofloat(svalor);
              INC(Y);
              x := I + 1;
            end;
          end;
        end;
        Result := OK;
      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    For I := 1 To 1027 Do
      formas := formas + ' ';
    IRetorno := Daruma_FI_VerificaFormasPagamentoEx(formas);

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
      begin
        Y := 0;

        for I := 1 to length(formas) do
        begin
          if Y > 30 then
            break;
          if I = 1 then // inicio da variavel
            x := 1
          else if I >= length(formas) then // final da variavel
          begin
            frmmodulo.tbForma_Pgto.insert;
            frmmodulo.tbForma_Pgto.FieldByName('id').asinteger := Y;
            frmmodulo.tbForma_Pgto.FieldByName('Nome').asstring :=
              Copy(formas, x, 16);
            svalor := Copy(formas, x + 16, 20);
            if svalor <> '' then
            begin
              svalor := floattostr(strtofloat(svalor));
              if strtofloat(svalor) > 0 then
                svalor := floattostr(strtofloat(svalor) / 100);
            end
            else
              svalor := '0';
            frmmodulo.tbForma_Pgto.FieldByName('Valor_Acumulado').asfloat :=
              strtofloat(svalor);

            svalor := Copy(formas, x + 26, 20);
            if svalor <> '' then
            begin
              svalor := floattostr(strtofloat(svalor));
              if strtofloat(svalor) > 0 then
                svalor := floattostr(strtofloat(svalor) / 100);
            end
            else
              svalor := '0';
            frmmodulo.tbForma_Pgto.FieldByName('Valor_Ultimo_Cupom').asfloat :=
              strtofloat(svalor);
            INC(Y);
          end
          else
          begin
            if formas[I] = ',' then
            begin

              frmmodulo.tbForma_Pgto.insert;
              frmmodulo.tbForma_Pgto.FieldByName('id').asinteger := Y;
              frmmodulo.tbForma_Pgto.FieldByName('Nome').asstring :=
                Copy(formas, x, 16);
              svalor := Copy(formas, x + 16, 20);
              if svalor <> '' then
              begin
                svalor := floattostr(strtofloat(svalor));
                if strtofloat(svalor) > 0 then
                  svalor := floattostr(strtofloat(svalor) / 100);
              end
              else
                svalor := '0';
              frmmodulo.tbForma_Pgto.FieldByName('Valor_Acumulado').asfloat :=
                strtofloat(svalor);
              svalor := Copy(formas, x + 26, 20);
              if svalor <> '' then
              begin
                svalor := floattostr(strtofloat(svalor));
                if strtofloat(svalor) > 0 then
                  svalor := floattostr(strtofloat(svalor) / 100);
              end
              else
                svalor := '0';
              frmmodulo.tbForma_Pgto.FieldByName('Valor_Ultimo_Cupom').asfloat
                := strtofloat(svalor);
              INC(Y);
              x := I + 1;
            end;
          end;
        end;
        Result := OK;
      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    For I := 1 To 1045 Do
      formas := formas + ' ';
    IRetorno := ECF_VerificaFormasPagamentoEx(formas);

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
      begin
        Y := 0;

        for I := 1 to length(formas) do
        begin
          if Y > 30 then
            break;
          if I = 1 then // inicio da variavel
            x := 1
          else if I >= length(formas) then // final da variavel
          begin
            frmmodulo.tbForma_Pgto.insert;
            frmmodulo.tbForma_Pgto.FieldByName('id').asinteger := Y;
            frmmodulo.tbForma_Pgto.FieldByName('Nome').asstring :=
              Copy(formas, x, 16);
            svalor := Copy(formas, x + 16, 20);
            if svalor <> '' then
            begin
              svalor := floattostr(strtofloat(svalor));
              if strtofloat(svalor) > 0 then
                svalor := floattostr(strtofloat(svalor) / 100);
            end
            else
              svalor := '0';
            frmmodulo.tbForma_Pgto.FieldByName('Valor_Acumulado').asfloat :=
              strtofloat(svalor);

            svalor := Copy(formas, x + 26, 20);
            if svalor <> '' then
            begin
              svalor := floattostr(strtofloat(svalor));
              if strtofloat(svalor) > 0 then
                svalor := floattostr(strtofloat(svalor) / 100);
            end
            else
              svalor := '0';
            frmmodulo.tbForma_Pgto.FieldByName('Valor_Ultimo_Cupom').asfloat :=
              strtofloat(svalor);
            INC(Y);
          end
          else
          begin
            if formas[I] = ',' then
            begin

              frmmodulo.tbForma_Pgto.insert;
              frmmodulo.tbForma_Pgto.FieldByName('id').asinteger := Y;
              frmmodulo.tbForma_Pgto.FieldByName('Nome').asstring :=
                Copy(formas, x, 16);
              svalor := Copy(formas, x + 16, 20);
              if svalor <> '' then
              begin
                svalor := floattostr(strtofloat(svalor));
                if strtofloat(svalor) > 0 then
                  svalor := floattostr(strtofloat(svalor) / 100);
              end
              else
                svalor := '0';
              frmmodulo.tbForma_Pgto.FieldByName('Valor_Acumulado').asfloat :=
                strtofloat(svalor);
              svalor := Copy(formas, x + 26, 20);
              if svalor <> '' then
              begin
                svalor := floattostr(strtofloat(svalor));
                if strtofloat(svalor) > 0 then
                  svalor := floattostr(strtofloat(svalor) / 100);
              end
              else
                svalor := '0';
              frmmodulo.tbForma_Pgto.FieldByName('Valor_Ultimo_Cupom').asfloat
                := strtofloat(svalor);
              INC(Y);
              x := I + 1;
            end;
          end;
        end;
        Result := OK;
      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;

  end
  else if COD_ECF = EPSON then
  begin
    Result := OK;
    SetLength(formas, 881);

    IRetorno := EPSON_Obter_Tabela_Pagamentos(Pchar(formas));

    if IRetorno = 0 then
    begin
      while trim(formas) <> '' do
      begin
        with frmmodulo.tbForma_Pgto do
        begin
          if trim(Copy(formas, 3, 15)) <> '' then
          begin
            insert;
            FieldByName('id').asinteger := StrToInt(Copy(formas, 1, 2));
            FieldByName('Nome').asstring := Copy(formas, 3, 15);

            svalor := Copy(formas, 18, 11) + FormatSettings.DecimalSeparator +
              Copy(formas, 29, 2);
            FieldByName('Valor_Acumulado').AsCurrency := strtofloat(svalor);

            svalor := Copy(formas, 31, 11) + FormatSettings.DecimalSeparator +
              Copy(formas, 42, 2);
            FieldByName('Valor_Ultimo_Cupom').AsCurrency := strtofloat(svalor);
          end;
        end;

        Delete(formas, 1, 44);
      end;

      Result := OK;
    end
    else
      Result := ecfMSG;

  end;
end;

// -------------------------------------------------------------------------- //
// Criar o registro CAT52
// 1 - Bematech --> OK
// 2 - Daruma   --> utiliza sistema UDECODER.exe
// 3 - Sweda    --> utiliza sistema SWmfd.exe
// 4 - Epson    --> OK

function cECF_Arquivo_Fiscal_CAT52(COD_ECF: integer;
  Tipo, Inicio, Fim: string): string;
var
  sArq: String;
  sArqTroca: String;
  cArqDestino, sEntrada, sArquivo: string;
  I, dias, x: integer;
  Arquivo, sRet: string;
  txt_mfd, txt_Cotepe, txt: textfile;
  dInicial, dFinal: TDate;
  cFlag, cDownload, cTipo, cTipoDow, cUsuario: string;
  iACK: integer;
  iST1: integer;
  iST2: integer;
  iST3: integer;
  E01, E02: String;
  E03, E04, E05, E06, E07, E08, E09, E10, E11, E12, E13, E14, E15, E16, E17,
    E18, E19, E20, E21, E22, E23, E24, E25: Array [0 .. 10000] of string;
  cArqMFD: string;
  cArqTXT: string;
  cFormato: string;
  cTipoDownload: string;
  cLinha: string;
  cDataInicial: string;
  cDataFinal: string;
  cArq1704: string;
  cCMD: string;
  cArqTemp: textfile;
  cArqTempTXT: textfile;
  Texto: TStringList;

  // CTP_00107810_090507151646.txt

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    if Tipo = 'DATA' then
    begin
      cFlag := '1';
      cDownload := 'Download.mfd';
      cTipo := '2';
      cTipoDow := '1';
      cUsuario := '1';

      IRetorno := Bematech_FI_DownloadMFD(Pchar(cDownload), Pchar(cTipoDow),
        Pchar(Inicio), Pchar(Fim), Pchar(cUsuario));

      sArquivo := '.\txt\CTP' + zerar(sECF_Serial, 20) + '_' +
        somenteNumero(datetostr(dData_sistema)) + somenteNumero(timetostr(time)
        ) + '.TXT';

      IRetorno := Bematech_FI_HabilitaDesabilitaRetornoEstendidoMFD(cFlag);
      IRetorno := Bematech_FI_RetornoImpressoraMFD(iACK, iST1, iST2, iST3);

      IRetorno := BemaGeraRegistrosTipoE(cDownload, sArquivo, Inicio, Fim,
        sEmpresa_Nome, sEmpresa_Endereco, '', cTipo, '', '', '', '', '', '', '',
        '', '', '', '', '', '');
      Result := sArquivo;
    end
    else
    begin
      cArqMFD := 'Download.MFD';
      cTipo := '2';
      cUsuario := '1';

      // Função que executa o download da MFD da impressora por COO.
      IRetorno := Bematech_FI_DownloadMFD(Pchar(cArqMFD), Pchar(cTipo), Inicio,
        Fim, Pchar(cUsuario));
      cArqTXT := 'Espelho.TXT';
      cFormato := '0';
      cTipoDownload := '0';

      // Função que formata os dados da MFD para texto.
      IRetorno := Bematech_FI_FormatoDadosMFD(Pchar(cArqMFD), Pchar(cArqTXT),
        Pchar(cFormato), Pchar(cTipoDownload), Pchar(''), Pchar(''), Pchar(''));

      // Abre o arquivo Espelho.TXT com a imagem dos cupons capturados.
      AssignFile(cArqTemp, 'Espelho.TXT');
      Reset(cArqTemp);

      // Cria o arquivo EspelhoTMP.TXT para guardar a imagens dos cupons
      // capturados, retirando as linhas em branco.
      AssignFile(cArqTempTXT, 'EspelhoTMP.TXT');
      Rewrite(cArqTempTXT);

      cLinha := '';
      while not EOF(cArqTemp) do
      begin
        Readln(cArqTemp, cLinha);

        if (cLinha <> '') then
        begin
          Writeln(cArqTempTXT, cLinha);
        end;
      end;

      CloseFile(cArqTemp);
      CloseFile(cArqTempTXT);

      AssignFile(txt, 'EspelhoTMP.TXT');
      Reset(txt);

      while not EOF(txt) do
      begin
        Readln(txt, sEntrada);

        if Copy(sEntrada, 39, 10) = 'COO:' + zerar(Inicio, 6) then
          cDataInicial := Copy(sEntrada, 1, 10);
        if Copy(sEntrada, 39, 10) = 'COO:' + zerar(Fim, 6) then
          cDataFinal := Copy(sEntrada, 1, 10);
      end;

      { // Cria um objeto do tipo TStringList.

        Texto := TStringList.Create;
        Texto.LoadFromFile( 'EspelhoTMP.TXT' );

        // Copia as informações de data inicial e final, dentro do objeto Texto.

        cDataInicial := copy( Texto.Strings[ 7 ], 1, 10 );
        cDataFinal   := copy( Texto.Strings[ Texto.Count - 2 ], 20, 10 );

        // Função que executa a geração do arquivo no layout do Ato Cotepe 17/04
        // para o PAF-ECF, por intervalo de datas previamente capturadas.



        //         showmessage(cDataInicial+' '+cDataFinal);

      }
      cArq1704 := '.\txt\CTP1704.txt';
      cCMD := '2';

      IRetorno := BemaGeraRegistrosTipoE(Pchar(cArqMFD), Pchar(cArq1704),
        Pchar(cDataInicial), Pchar(cDataFinal), sEmpresa_Nome,
        sEmpresa_Endereco, '', Pchar(cCMD), '', '', '', '', '', '', '', '', '',
        '', '', '', '');

      DeleteFile('Download.MFD');
      DeleteFile('Espelho.TXT');
      DeleteFile('EspelhoTMP.TXT');

      Result := cArq1704;
    end;
  end
  else if COD_ECF = DARUMA then
  begin
    // executar o UnDecoder da DAruma
    try
      if FileExists('WIN_uDecoder.exe') then
      begin
        Executa_programa('WIN_uDecoder.exe', '', SW_SHOW);

        sMsg := cECF_Ligada(COD_ECF);

        if sECF_Diretorio_mfd <> '' then
        begin
          try
            frmmodulo.Dlg_arquivo.InitialDir := sECF_Diretorio_mfd;
            frmmodulo.Dlg_arquivo.Filter := 'Arquivo Texto|*.txt';
            frmmodulo.Dlg_arquivo.Title := 'Assinar arquivo';
            if frmmodulo.Dlg_arquivo.Execute then
            begin
              sArquivo := frmmodulo.Dlg_arquivo.FileName;
              TirarEAD(sArquivo);
              assinatura_digital(sArquivo);
              Result := 'OK! Arquivo criado com sucesso!' + #13 + 'Local: '
                + sArquivo;
            end
            else
              Result := 'Erro! Arquivo não assinado!';

          except
            Result := 'Erro ao acessar diretório de gravação do arquivo MFD!';
          end;
        end
        else
          Result := 'Não foi configurado o diretório de gravação do arquivo MFD!';
      end
      else
        Result := 'Função não suportada pelo modelo de ECF utilizado';
    except

    end;
  end
  else if COD_ECF = SWEDA then
  begin
    if Tipo = 'DATA' THEN
      Tipo := '1';
    if Tipo = 'COO' THEN
    begin
      zerar(Inicio, 7);
      zerar(Fim, 7);

      Tipo := '2';
    end;

    IRetorno := ECF_DownloadMF(SystemDrive + '\SWEDA\MF.BIN');
    sArquivo := '.\txt\CTP' + zerar(sECF_Serial, 20) + '_' +
      somenteNumero(datetostr(dData_sistema)) + somenteNumero(timetostr(time)
      ) + '.TXT';
    IRetorno := ECF_ReproduzirMemoriaFiscalMFD('2', Inicio, Fim, sArquivo,
      SystemDrive + '\SWEDA\MF.BIN');

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      Result := sArquivo;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    sArq := SystemDrive + '\Retorno.txt';

    if FileExists(sArq) then
      DeleteFile(sArq);

    if Tipo = 'DATA' then
    begin
      I := 0; // Por Data

      try
        Inicio := FormatDateTime('ddmmyyyy', StrToDate(Inicio));
      except
        Result := 'Data inicial inválida!';
        Exit;
      end;

      try
        Fim := FormatDateTime('ddmmyyyy', StrToDate(Fim));
      except
        Result := 'Data final inválida!';
        Exit;
      end;
    end
    else
    begin
      // GUIO: ATENÇÃO - A opção Arq. MFD do menu fiscal pede que  o invtervalo
      // para gerar o arquivo seja de DATA ou COO. Na impressora EPSON
      // o Ato Cotepe 17/04 não pode ser gerado pelo COO. O mesmo somente
      // pode ser gerado pela DATA ou pelo o CRZ. O valor 2 da variável I indica
      // que a busca será feita pelo COO, logo, a linha está desabilitada.
      // Deixei no software aparecer õ nome COO na tela, porém a busca esta
      // sendo feita pelo CRZ até arrumar uma solução

      // I := 2; // Por COO desabilitado temporariamente

      I := 1; // Por CRZ
    end;

    // CGT: Desabilita a assinatura digital do Arquivo
    IRetorno := EPSON_Config_Habilita_EAD(False);

    IRetorno := EPSON_Obter_Dados_MF_MFD(Pchar(Inicio), Pchar(Fim), I, 0, 11, 0,
      Pchar(SystemDrive + '\Retorno'));

    if IRetorno <> 0 then
    begin
      Result := cECF_Analisa_Retorno(EPSON);
    end
    else
    begin
      sArqTroca := Copy(sArq, 1, Pos('.', sArq) - 1) + '_CTP.txt';
      sArq := '.\txt\CTP' + zerar(sECF_Serial, 20) + '_' +
        somenteNumero(datetostr(dData_sistema)) + somenteNumero(timetostr(time)
        ) + '.TXT';

      RenameFile(sArqTroca, sArq);
      Result := sArq;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
// Retorna a MARCA do ECF
function cECF_Marca_ECF(COD_ECF: integer): string;
var
  sMarca, sRet, sModelo, sTipo: string;
  I: integer;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    for I := 1 to 15 do
      sMarca := sMarca + ' ';
    for I := 1 to 20 do
      sModelo := sModelo + ' ';
    for I := 1 to 7 do
      sTipo := sTipo + ' ';

    IRetorno := Bematech_FI_MarcaModeloTipoImpressoraMFD(sMarca,
      sModelo, sTipo);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := sMarca
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    For I := 1 To 20 Do
      sMarca := sMarca + ' ';
    IRetorno := Daruma_FIMFD_RetornaInformacao('80', sMarca);

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := sMarca
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    for I := 1 to 15 do
      sMarca := sMarca + ' ';
    for I := 1 to 20 do
      sModelo := sModelo + ' ';
    for I := 1 to 7 do
      sTipo := sTipo + ' ';

    IRetorno := ECF_MarcaModeloTipoImpressoraMFD(sMarca, sModelo, sTipo);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := sMarca
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    SetLength(sRet, 108);

    IRetorno := EPSON_Obter_Dados_Impressora(Pchar(sRet));

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := Copy(sRet, 41, 10);

  end;
end;

// -------------------------------------------------------------------------- //
// Retorna a MODELO do ECF
function cECF_Modelo_ECF(COD_ECF: integer): string;
var
  sMarca, sRet, sModelo, sTipo: string;
  I: integer;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    for I := 1 to 15 do
      sMarca := sMarca + ' ';
    for I := 1 to 20 do
      sModelo := sModelo + ' ';
    for I := 1 to 7 do
      sTipo := sTipo + ' ';

    IRetorno := Bematech_FI_MarcaModeloTipoImpressoraMFD(sMarca,
      sModelo, sTipo);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := sModelo
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    For I := 1 To 20 Do
      sModelo := sModelo + ' ';
    IRetorno := Daruma_FIMFD_RetornaInformacao('81', sModelo);

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := sModelo
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    for I := 1 to 15 do
      sMarca := sMarca + ' ';
    for I := 1 to 20 do
      sModelo := sModelo + ' ';
    for I := 1 to 7 do
      sTipo := sTipo + ' ';

    IRetorno := ECF_MarcaModeloTipoImpressoraMFD(sMarca, sModelo, sTipo);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := sModelo
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    SetLength(sRet, 108);
    IRetorno := EPSON_Obter_Dados_Impressora(Pchar(sRet));

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := Copy(sRet, 61, 10);

  end;
end;

// -------------------------------------------------------------------------- //
// Retorna o TIPO do ECF
function cECF_Tipo_ECF(COD_ECF: integer): string;
var
  sMarca, sRet, sModelo, sTipo: string;
  I: integer;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    for I := 1 to 15 do
      sMarca := sMarca + ' ';
    for I := 1 to 20 do
      sModelo := sModelo + ' ';
    for I := 1 to 7 do
      sTipo := sTipo + ' ';

    IRetorno := Bematech_FI_MarcaModeloTipoImpressoraMFD(sMarca,
      sModelo, sTipo);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := sTipo
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    For I := 1 To 7 Do
      sTipo := sTipo + ' ';
    IRetorno := Daruma_FIMFD_RetornaInformacao('79', sTipo);

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := sTipo
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    for I := 1 to 15 do
      sMarca := sMarca + ' ';
    for I := 1 to 20 do
      sModelo := sModelo + ' ';
    for I := 1 to 7 do
      sTipo := sTipo + ' ';

    IRetorno := ECF_MarcaModeloTipoImpressoraMFD(sMarca, sModelo, sTipo);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := sTipo
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    SetLength(sRet, 108);
    IRetorno := EPSON_Obter_Dados_Impressora(Pchar(sRet));

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := Copy(sRet, 81, 10);

  end;
end;

// -------------------------------------------------------------------------- //
// Retorna o numero da Memoria fiscal adicional
function cECF_MF_Adicional(COD_ECF: integer): string;
var
  I: integer;
  dataUsuario, dataSWBasico, MFAdicional, sRet: string;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    SetLength(dataUsuario, 20);
    SetLength(dataSWBasico, 20);
    SetLength(MFAdicional, 5);
    IRetorno := Bematech_FI_DataHoraGravacaoUsuarioSWBasicoMFAdicional
      (dataUsuario, dataSWBasico, MFAdicional);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := Copy(MFAdicional, 1, 1)
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    // Daruma retorna em branco
    Result := ' ';
  end;
  if COD_ECF = SWEDA then
  begin
    SetLength(dataUsuario, 20);
    SetLength(dataSWBasico, 20);
    SetLength(MFAdicional, 5);
    IRetorno := ECF_DataHoraGravacaoUsuarioSWBasicoMFAdicional(dataUsuario,
      dataSWBasico, MFAdicional);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := Copy(MFAdicional, 1, 1)
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    // Retorna em branco
    Result := ' ';
  end;
end;

// -------------------------------------------------------------------------- //
// Retorna a versao do software basico
function cECF_Versao_SB(COD_ECF: integer): string;
var
  sVersao, sRet: string;
  I: integer;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    for I := 1 to 6 do
      sVersao := sVersao + ' ';
    IRetorno := Bematech_FI_VersaoFirmwareMFD(sVersao);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := sVersao
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    For I := 1 To 6 Do
      sVersao := sVersao + ' ';
    IRetorno := Daruma_FIMFD_RetornaInformacao('84', sVersao);

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := sVersao
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    for I := 1 to 6 do
      sVersao := sVersao + ' ';
    IRetorno := ECF_VersaoFirmwareMFD(sVersao);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := sVersao
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    Result := EPSON_VersaoSoftwareBasico;
  end;
end;

// -------------------------------------------------------------------------- //
// Retorna a data e hora da gravacao do software basico
function cECF_Data_Hora_SB(COD_ECF: integer): string;
var
  I: integer;
  dataUsuario, sdataHora, MFAdicional, sRet: string;
begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    SetLength(dataUsuario, 20);
    SetLength(sdataHora, 20);
    SetLength(MFAdicional, 5);
    IRetorno := Bematech_FI_DataHoraGravacaoUsuarioSWBasicoMFAdicional
      (dataUsuario, sdataHora, MFAdicional);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := somenteNumero(sdataHora)
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    For I := 1 To 14 Do
      sdataHora := sdataHora + ' ';
    IRetorno := Daruma_FIMFD_RetornaInformacao('85', sdataHora);

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := sdataHora + '00'
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    SetLength(dataUsuario, 20);
    SetLength(sdataHora, 20);
    SetLength(MFAdicional, 5);
    IRetorno := ECF_DataHoraGravacaoUsuarioSWBasicoMFAdicional(dataUsuario,
      sdataHora, MFAdicional);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := somenteNumero(sdataHora)
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    Result := EPSON_DataHoraSoftwareBasico;
  end;
end;

// -------------------------------------------------------------------------- //
// Retornar o total do cupom
// CGT: função ainda não ´pe utilizada em nunhum lugar
function cECF_Total_Cupom(COD_ECF: integer): Real;
var
  svalor: string;
  I: integer;
  rValor: Real;
  sRet: string;

begin
  if COD_ECF = DARUMA then
  begin
    For I := 1 To 18 Do
      svalor := svalor + ' ';
    IRetorno := Daruma_FI_SaldoAPagar(svalor);

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
      begin
        rValor := strtofloat(svalor);
        if rValor > 0 then
          rValor := rValor / 100;
        Result := rValor;
      end
      else
        Result := 0;
    end
    ELSE
      Result := 0;

  end;
end;

// -------------------------------------------------------------------------- //
// vERIFICAR se a reducao z estah automatica
function cECF_Verifica_Z_automatico(COD_ECF: integer): string;
var
  svalor: string;
  I: integer;
  sRet: string;
begin

  if COD_ECF = BEMATECH then
  begin
    I := 0;
    IRetorno := Bematech_FI_VerificaReducaoZAutomatica(I);

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
      begin
        if I = 1 then
          Result := 'SIM'
        else
          Result := 'NAO';
      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;

  end
  else if COD_ECF = DARUMA then
  begin
    svalor := StringOFChar(#0, 50);
    IRetorno := Daruma_Registry_RetornaValor('ECF', 'ZAutomatica', svalor);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
      begin
        if Copy(svalor, 1, 1) = '1' then
          Result := 'SIM'
        else
          Result := 'NAO';
      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;

  end
  else if COD_ECF = SWEDA then
  begin
    SetLength(svalor, 50);
    IRetorno := ECF_Registry_RetornaValor('ECF', 'Zauto', svalor);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      if Copy(svalor, 1, 1) = '1' then
        Result := 'SIM'
      else
        Result := 'NAO';
    end
    ELSE
      Result := ecfMSG;

  end
  else if COD_ECF = EPSON then
  begin
    // CGT: Ao que parece a EPSON não emite a Redução Z automaticamente
    Result := 'NAO'
  end;
end;

// -------------------------------------------------------------------------- //
// verificar se impressora esta com horario de verao programado
function cECF_Verifica_Horario_Verao(COD_ECF: integer): STRING;
var
  svalor: string;
  I: integer;
  sRet: string;
  bHorarioVeraoAtivado: Boolean;

begin
  if COD_ECF = BEMATECH then
  begin
    I := 0;
    IRetorno := Bematech_FI_FlagsFiscais(I);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
      begin
        if I >= 128 then
          I := I - 128;
        if I >= 64 then
          I := I - 64;
        if I >= 32 then
          I := I - 32;
        if I >= 16 then
          I := I - 16;
        if I >= 8 then
          I := I - 8;
        if I IN [4, 5, 6, 7] then
          Result := 'SIM'
        else
        begin
          Result := 'NAO';
        end;
      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    SetLength(svalor, 2);
    IRetorno := Daruma_FI_VerificaHorarioVerao(svalor);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
      begin
        if Copy(svalor, 1, 1) = '1' then
          Result := 'SIM'
        else
          Result := 'NAO';
      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    SetLength(svalor, 2);
    IRetorno := ECF_VerificaHorarioVerao(svalor);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      if Copy(svalor, 1, 1) = '1' then
        Result := 'SIM'
      else
        Result := 'NAO';
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    IRetorno := EPSON_Obter_Estado_Horario_Verao(bHorarioVeraoAtivado);

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
    begin
      if bHorarioVeraoAtivado then
        Result := 'SIM'
      else
        Result := 'NAO';
    end;
  end;
end;

// -------------------------------------------------------------------------- //
// retornar as aliquotas cadastradas
function cECF_Verifica_Aliquotas(COD_ECF: integer): string;
var
  sContador, sRet: string;
  I: integer;

begin
  if COD_ECF = BEMATECH then
  begin
    For I := 1 To 79 Do
      sContador := sContador + ' ';
    IRetorno := Bematech_FI_RetornoAliquotas(sContador);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := sContador
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;

  end
  else if COD_ECF = DARUMA then
  begin
    For I := 1 To 79 Do
      sContador := sContador + ' ';
    IRetorno := Daruma_FI_RetornoAliquotas(sContador);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := sContador
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;

  end
  else if COD_ECF = SWEDA then
  begin
    For I := 1 To 79 Do
      sContador := sContador + ' ';
    IRetorno := ECF_RetornoAliquotas(Pchar(sContador));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := sContador
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    for I := 0 to 553 do
      sRet := sRet + ' ';

    IRetorno := EPSON_Obter_Tabela_Aliquotas(Pchar(sRet));

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
    begin
      sContador := '';
      I := 0;

      // GUIO: Separa as aliquotas
      while True do
      begin
        if (trim(sRet) = '') or (trim(sRet) = #0) then
          break;

        sContador := sContador + ' ' + Copy(sRet, 3, 4);
        Delete(sRet, 1, 23);
        INC(I);
      end;

      Result := sContador;
    end;

  end;
end;

// -------------------------------------------------------------------------- //
// retorna os totalizadores nao fiscais
function cECF_Verifica_Totalizadores_NF(COD_ECF: integer): string;
var
  sContador, sRet: string;
  I: integer;
begin
  if COD_ECF = BEMATECH then
  begin
    For I := 1 To 179 Do
      sContador := sContador + ' ';
    IRetorno := Bematech_FI_VerificaTotalizadoresNaoFiscais(sContador);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := sContador
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    For I := 1 To 300 Do
      sContador := sContador + ' ';
    IRetorno := Daruma_FI_VerificaTotalizadoresNaoFiscais(sContador);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := sContador
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    For I := 1 To 300 Do
      sContador := sContador + ' ';
    IRetorno := ECF_VerificaTotalizadoresNaoFiscaisEx(Pchar(sContador));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := sContador
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;

  end
  else if COD_ECF = EPSON then
  begin
    For I := 0 to 681 do
      sRet := sRet + ' ';

    IRetorno := EPSON_Obter_Tabela_NaoFiscais(Pchar(sRet));

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := sRet;

  end;
end;

// -------------------------------------------------------------------------- //
// Retorna a data do Movimento do ECF
function cECF_Data_Movimento(COD_ECF: integer): string;
var
  sContador, sRet: string;
  I: integer;

begin
  if COD_ECF = BEMATECH then
  begin
    For I := 1 To 6 Do
      sContador := sContador + ' ';
    IRetorno := Bematech_FI_DataMovimento(sContador);

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      Result := Copy(sContador, 1, 2) + '/' + Copy(sContador, 3, 2) + '/' + '20'
        + Copy(sContador, 5, 2);
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    For I := 1 To 6 Do
      sContador := sContador + ' ';
    IRetorno := Daruma_FI_DataMovimento(sContador);

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);

    if ecfMSG = OK then
    begin
      Result := Copy(sContador, 1, 2) + '/' + Copy(sContador, 3, 2) + '/' + '20'
        + Copy(sContador, 5, 2);
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    For I := 1 To 6 Do
      sContador := sContador + ' ';
    IRetorno := ECF_DataMovimento(sContador);

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);

    if ecfMSG = OK then
    begin
      Result := Copy(sContador, 1, 2) + '/' + Copy(sContador, 3, 2) + '/' + '20'
        + Copy(sContador, 5, 2);
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    SetLength(sRet, 14);

    IRetorno := EPSON_Obter_Data_Hora_Jornada(Pchar(sRet));

    if IRetorno = 0 then
      Result := Copy(sRet, 1, 2) + '/' + Copy(sRet, 3, 2) + '/' +
        Copy(sRet, 5, 4)
    else
      Result := cECF_Analisa_Retorno(EPSON);

  end;
end;

// -------------------------------------------------------------------------- //
// Verificar se existe cupom fiscal aberto
function cECF_Cupom_Fiscal_Aberto(COD_ECF: integer): string;
var
  svalor: string;
  sRet: string;
  I: integer;
begin
  if COD_ECF = BEMATECH then
  begin
    I := 0;
    IRetorno := Bematech_FI_FlagsFiscais(I);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
      begin
        if I >= 128 then
          I := I - 128;
        if I >= 64 then
          I := I - 64;
        if I >= 32 then
          I := I - 32;
        if I >= 16 then
          I := I - 16;
        if I >= 8 then
          I := I - 8;
        if I = 1 then
          Result := 'SIM'
        else
        begin
          Result := 'NAO';
        end;
      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    SetLength(svalor, 2);
    IRetorno := Daruma_FI_StatusCupomFiscal(svalor);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
      begin
        if Copy(svalor, 1, 1) = '1' then
          Result := 'SIM'
        else
          Result := 'NAO';
      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    SetLength(svalor, 2);
    IRetorno := ECF_StatusCupomFiscal(svalor);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      if Copy(svalor, 1, 1) = '1' then
        Result := 'SIM'
      else
        Result := 'NAO';
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    if EPSON_CupomFiscalAberto then
      Result := 'SIM'
    else
      Result := 'NAO';
  end;

end;

// -------------------------------------------------------------------------- //
// Retorna o totalizador geral
function cECF_Grande_Total(COD_ECF: integer): string;
var
  sContador, sRet: string;
  I: integer;
  rValor: Real;

begin
  if COD_ECF = BEMATECH then
  begin
    For I := 1 To 18 Do
      sContador := sContador + ' ';
    IRetorno := Bematech_FI_GrandeTotal(sContador);

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
      begin

        rValor := strtofloat(sContador);
        if rValor > 0 then
          Result := floattostr(rValor / 100)
        else
          Result := '0';

      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    For I := 1 To 18 Do
      sContador := sContador + ' ';
    IRetorno := Daruma_FI_GrandeTotal(sContador);

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
      begin
        rValor := strtofloat(sContador);
        if rValor > 0 then
          Result := floattostr(rValor / 100)
        else
          Result := '0';
      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    For I := 1 To 18 Do
      sContador := sContador + ' ';
    IRetorno := ECF_GrandeTotal(sContador);

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
      begin

        rValor := strtofloat(sContador);
        if rValor > 0 then
          Result := floattostr(rValor / 100)
        else
          Result := '0';

      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    SetLength(sContador, 18);

    IRetorno := EPSON_Obter_GT(Pchar(sContador));

    if IRetorno = 0 then
    begin
      rValor := strtofloat(sContador);
      if rValor > 0 then
        Result := floattostr(rValor / 100)
      else
        Result := '0';
    end
    else
      Result := ERRO;

  end;
end;

// -------------------------------------------------------------------------- //
// Informacoes referente a ultima reducao Z
// Contador de Reducoes impresso na ultima reducao z
function cECF_ReducaoZ_Contador_CRZ(COD_ECF: integer): string;
var
  sContador, sRet: string;
  I: integer;

begin
  if COD_ECF = BEMATECH then
  begin
    For I := 1 To 1278 Do
      sContador := sContador + ' ';
    IRetorno := Bematech_FI_DadosUltimaReducaoMFD(sContador);

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := Copy(somenteNumero(sContador), 7, 4)
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    For I := 1 To 4 Do
      sContador := sContador + ' ';
    IRetorno := Daruma_FIMFD_RetornaInformacao('24', sContador);

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := sContador
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    For I := 1 To 1278 Do
      sContador := sContador + ' ';
    IRetorno := ECF_DadosUltimaReducaoMFD(Pchar(sContador));

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := Copy(somenteNumero(sContador), 7, 4)
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    SetLength(sRet, 1167);

    IRetorno := EPSON_Obter_Dados_Ultima_RZ(Pchar(sRet));

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := Copy(sRet, 27, 6);

  end;
end;

// -------------------------------------------------------------------------- //
// Contador de COO impresso na ultima reducao z
function cECF_ReducaoZ_Contador_COO(COD_ECF: integer): string;
var
  sContador, sRet: string;
  I: integer;
begin

  if COD_ECF = BEMATECH then
  begin
    For I := 1 To 1278 Do
      sContador := sContador + ' ';
    IRetorno := Bematech_FI_DadosUltimaReducaoMFD(sContador);

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := Copy(somenteNumero(sContador), 11, 6)
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    For I := 1 To 1164 Do
      sContador := sContador + ' ';
    IRetorno := Daruma_FIMFD_RetornaInformacao('140', sContador);

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := Copy(sContador, 935, 6)
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    For I := 1 To 1278 Do
      sContador := sContador + ' ';
    IRetorno := ECF_DadosUltimaReducaoMFD(Pchar(sContador));

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := Copy(somenteNumero(sContador), 11, 6)
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;

  end
  else if COD_ECF = EPSON then
  begin
    SetLength(sRet, 1167);

    IRetorno := EPSON_Obter_Dados_Ultima_RZ(Pchar(sRet));

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := Copy(sRet, 21, 6);

  end;
end;

// -------------------------------------------------------------------------- //
// Contador de CRO (REINICIO DE OPERACOES) impresso na ultima reducao z
function cECF_ReducaoZ_Contador_CRO(COD_ECF: integer): string;
var
  sContador, sRet: String;
  I: integer;
begin

  if COD_ECF = BEMATECH then
  begin
    For I := 1 To 1278 Do
      sContador := sContador + ' ';
    IRetorno := Bematech_FI_DadosUltimaReducaoMFD(sContador);

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := Copy(somenteNumero(sContador), 3, 4)
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    For I := 1 To 3 Do
      sContador := sContador + ' ';
    IRetorno := Daruma_FIMFD_RetornaInformacao('23', sContador);

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := sContador
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    For I := 1 To 1278 Do
      sContador := sContador + ' ';
    IRetorno := ECF_DadosUltimaReducaoMFD(Pchar(sContador));

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := Copy(somenteNumero(sContador), 3, 4)
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    SetLength(sRet, 1167);

    IRetorno := EPSON_Obter_Dados_Ultima_RZ(Pchar(sRet));

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := Copy(sRet, 33, 6);

  end;
end;

// -------------------------------------------------------------------------- //
// DATA E HORA da emissao da ultima reducao z
function cECF_ReducaoZ_DataHora(COD_ECF: integer): string;
var
  sHora, sData, sRet: string;
  I: integer;

begin
  if COD_ECF = BEMATECH then
  begin
    SetLength(sData, 6);
    SetLength(sHora, 6);
    IRetorno := Bematech_FI_DataHoraReducao(sData, sHora);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := sData + ' ' + sHora
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    SetLength(sData, 6);
    SetLength(sHora, 6);
    IRetorno := Daruma_FI_DataHoraReducao(sData, sHora);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := sData + ' ' + sHora
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    SetLength(sData, 6);
    SetLength(sHora, 6);
    IRetorno := ECF_DataHoraReducao(sData, sHora);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
        Result := sData + ' ' + sHora
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    SetLength(sRet, 1167);

    IRetorno := EPSON_Obter_Dados_Ultima_RZ(Pchar(sRet));

    if IRetorno = 0 then
    begin
      sData := Copy(sRet, 1, 8);
      sHora := Copy(sRet, 9, 6);

      Result := sData + ' ' + sHora;
    end
    else
      Result := cECF_Analisa_Retorno(EPSON);
  end;
end;

// -------------------------------------------------------------------------- //
// DATA do movimento da ultima reducao z
function cECF_ReducaoZ_Data_Movimento(COD_ECF: integer): string;
var
  sContador, sRet: string;
  I: integer;
  sData: String;

begin
  if COD_ECF = BEMATECH then
  begin
    For I := 1 To 1278 Do
      sContador := sContador + ' ';
    IRetorno := Bematech_FI_DadosUltimaReducaoMFD(sContador);

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
      begin
        sRet := Copy(somenteNumero(sContador), 1237, 6);
        if sRet = '000000' then
          // caso o ecf retorne a data zerada, informar a data do sistema
          Result := Copy(datetostr(dData_sistema), 1, 2) +
            Copy(datetostr(dData_sistema), 4, 2) +
            Copy(datetostr(dData_sistema), 9, 2)
        else
          Result := Copy(sRet, 1, 4) + '20' + Copy(sRet, 5, 2);
      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    For I := 1 To 1164 Do
      sContador := sContador + ' ';
    IRetorno := Daruma_FIMFD_RetornaInformacao('140', sContador);

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);

    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
      begin
        if sRet = '00000000' then
          Result := Copy(datetostr(dData_sistema), 1, 2) +
            Copy(datetostr(dData_sistema), 4, 2) +
            Copy(datetostr(dData_sistema), 7, 4)
        else
          Result := Copy(sContador, 1, 8);
      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    For I := 1 To 1278 Do
      sContador := sContador + ' ';
    IRetorno := ECF_DadosUltimaReducaoMFD(Pchar(sContador));

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
      begin
        sRet := Copy(somenteNumero(sContador), 1237, 6);

        if sRet = '000000' then
          // caso o ecf retorne a data zerada, informar a data do sistema
          Result := Copy(datetostr(dData_sistema), 1, 2) +
            Copy(datetostr(dData_sistema), 4, 2) +
            Copy(datetostr(dData_sistema), 9, 2)
        else
          Result := Copy(sRet, 1, 4) + '20' + Copy(sRet, 5, 2);

      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    SetLength(sRet, 1167);

    IRetorno := EPSON_Obter_Dados_Ultima_RZ(Pchar(sRet));

    if IRetorno = 0 then
    begin
      sData := Copy(sRet, 1160, 8);

      // caso o ecf retorne a data zerada, informar a data do sistema
      if (trim(sData) = '') or (Copy(trim(sData), 1, 2) = '00') then
      begin
        sData := FormatDateTime('ddmmyyyy', dData_sistema);
      end;

      Result := sData;
    end
    else
      Result := cECF_Analisa_Retorno(EPSON);
  end;
end;

// -------------------------------------------------------------------------- //
// valor da venda bruta da ultima reducao z
function cECF_ReducaoZ_Venda_Bruta(COD_ECF: integer): string;
var
  sContador, sRet: string;
  I: integer;
  txt: textfile;
  sVendaBrutaAtual: String;
  sVendaBrutaAnterior: String;

begin
  if COD_ECF = BEMATECH then
  begin
    IRetorno := Bematech_FI_MapaResumoMFD();

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
      begin
        if FileExists(SystemDrive + '\Retorno.txt') then
        begin
          sRet := '0';
          AssignFile(txt, SystemDrive + '\Retorno.txt');
          Reset(txt);
          while not EOF(txt) do
          begin
            Readln(txt, sRet);
            if Copy(sRet, 1, 10) = 'Venda Brut' then
            begin
              sRet := somenteNumero(Copy(sRet, 34, 16));
              break;
            end;
          end;
          CloseFile(txt);
          sRet := floattostr(strtofloat(sRet));
          if sRet <> '0' then
            sRet := floattostr(strtofloat(sRet) / 100);
          Result := sRet;
        end
        else
          Result := 'Arquivo ' + SystemDrive + '\Retorno.txt não encontrado!';
      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    For I := 1 To 1164 Do
      sContador := sContador + ' ';
    IRetorno := Daruma_FIMFD_RetornaInformacao('140', sContador);

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
      begin
        // Pegar o Totalizador Geral Atual - Totalizador Geral Inicial
        sRet := floattostr(strtofloat(Copy(sContador, 9, 18)) -
          strtofloat(Copy(sContador, 27, 18)));
        if sRet <> '0' then
          sRet := floattostr(strtofloat(sRet) / 100);
        Result := sRet;
      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    IRetorno := ECF_MapaResumoMFD();

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
      begin
        if FileExists(SystemDrive + '\Retorno.txt') then
        begin
          sRet := '0';
          AssignFile(txt, SystemDrive + '\Retorno.txt');
          Reset(txt);
          while not EOF(txt) do
          begin
            Readln(txt, sRet);
            if Copy(sRet, 1, 10) = 'Venda Brut' then
            begin
              sRet := somenteNumero(Copy(sRet, 45, 16));
              break;
            end;
          end;
          CloseFile(txt);
          sRet := floattostr(strtofloat(sRet));
          if sRet <> '0' then
            sRet := floattostr(strtofloat(sRet) / 100);
          Result := sRet;
        end
        else
          Result := 'Arquivo ' + SystemDrive + ' Retorno.txt não encontrado!';
      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    SetLength(sVendaBrutaAtual, 15);
    SetLength(sVendaBrutaAnterior, 15);

    IRetorno := EPSON_Obter_Venda_Bruta(Pchar(sVendaBrutaAtual),
      Pchar(sVendaBrutaAnterior));

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := floattostr((strtofloat(sVendaBrutaAtual) / 100));

  end;
end;

// -------------------------------------------------------------------------- //
// total do iss da ultima reducao z
function cECF_ReducaoZ_Total_ISS(COD_ECF: integer): string;
var
  sContador, sRet: string;
  I: integer;
  txt: textfile;
  sReducaoZ: String;
  rISS: Currency;
  sAliquota: String;
  svalor: String;

begin
  if COD_ECF = BEMATECH then
  begin
    IRetorno := Bematech_FI_MapaResumoMFD();

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
      begin
        if FileExists(SystemDrive + '\Retorno.txt') then
        begin
          sRet := '0';
          AssignFile(txt, SystemDrive + '\Retorno.txt');
          Reset(txt);
          while not EOF(txt) do
          begin
            Readln(txt, sRet);
            if Copy(sRet, 1, 3) = 'ISS' then
            begin
              sRet := somenteNumero(Copy(sRet, 34, 16));
              break;
            end;
          end;
          CloseFile(txt);
          sRet := floattostr(strtofloat(sRet));
          if sRet <> '0' then
            sRet := floattostr(strtofloat(sRet) / 100);
          Result := sRet;
        end
        else
          Result := 'Arquivo ' + SystemDrive + ' Retorno.txt não encontrado!';
      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    IRetorno := Daruma_FI_MapaResumo();

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);

    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);

      if sRet = OK then
      begin
        if FileExists(SystemDrive + '\Retorno.txt') then
        begin
          sRet := '0';
          AssignFile(txt, SystemDrive + '\Retorno.txt');
          Reset(txt);

          while not EOF(txt) do
          begin
            Readln(txt, sRet);
            if Copy(sRet, 1, 3) = 'ISS' then
            begin
              sRet := somenteNumero(Copy(sRet, 25, 16));
              break;
            end;
          end;

          CloseFile(txt);
          sRet := floattostr(strtofloat(sRet));

          if sRet <> '0' then
            sRet := floattostr(strtofloat(sRet) / 100);

          Result := sRet;
        end
        else
          Result := 'Arquivo ' + SystemDrive + ' Retorno.txt não encontrado!';
      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    IRetorno := ECF_MapaResumoMFD();

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
      begin
        if FileExists(SystemDrive + '\Retorno.txt') then
        begin
          sRet := '0';
          AssignFile(txt, SystemDrive + ' Retorno.txt');
          Reset(txt);
          while not EOF(txt) do
          begin
            Readln(txt, sRet);
            if Copy(sRet, 1, 3) = 'ISS' then
            begin
              sRet := somenteNumero(Copy(sRet, 45, 16));
              break;
            end;
          end;
          CloseFile(txt);
          sRet := floattostr(strtofloat(sRet));
          if sRet <> '0' then
            sRet := floattostr(strtofloat(sRet) / 100);
          Result := sRet;
        end
        else
          Result := 'Arquivo c:\Retorno.txt não encontrado!';
      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    { ReducaoZ := cECF_ReducaoZ_Contador_COO(EPSON);

      SetLength(sRet, 602);

      // GUIO: O copy abaixo é para poder pegar apenas 4 dígitos do número da redução
      // pois o parametro pede 4 digitos, porém o retorno da função cECF_Reducao_Z_Contador_COO
      // retorna 6 digitos
      iRetorno := EPSON_Obter_Total_JornadaEX('I', pchar(copy(sReducaoZ, 3,4)),
      PChar(sRet));

      if iRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
      else
      Result := FloatToStr((StrToFloat(copy(sRet, 239, 13))/100)); }

    rISS := 0.00;

    for I := 1 to 1167 do
      sRet := sRet + ' ';

    IRetorno := EPSON_Obter_Dados_Ultima_RZ(Pchar(sRet));

    if IRetorno <> 0 then
    begin
      Result := cECF_Analisa_Retorno(EPSON);
    end
    else
    begin
      sAliquota := Copy(sRet, 258, 120);
      svalor := Copy(sRet, 384, 408);
      I := 1;

      // GUIO: Totalizadores Fiscais buscando apenas ISS
      while (trim(sAliquota) <> '') do
      begin
        if Copy(sAliquota, 1, 1) = 'S' then
          rISS := rISS + (strtofloat(Copy(svalor, 1, 17)) / 100);

        sAliquota := Copy(sAliquota, 6, length(sAliquota));
        svalor := Copy(svalor, 18, length(svalor));
      end;

      Result := floattostr(rISS);
    end;
  end;
end;

// -------------------------------------------------------------------------- //
// totalizador geral da ultima reducao z
function cECF_ReducaoZ_Totalizador_Geral(COD_ECF: integer): string;
var
  sContador, sRet: string;
  I: integer;
  rValor: Real;

begin
  if COD_ECF = BEMATECH then
  begin
    For I := 1 To 1278 Do
      sContador := sContador + ' ';
    IRetorno := Bematech_FI_DadosUltimaReducaoMFD(sContador);

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
      begin

        rValor := strtofloat(Copy(somenteNumero(sContador), 301, 18));
        if rValor > 0 then
          Result := floattostr(rValor / 100)
        else
          Result := '0';

      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    For I := 1 To 1164 Do
      sContador := sContador + ' ';
    IRetorno := Daruma_FIMFD_RetornaInformacao('140', sContador);

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
      begin
        rValor := strtofloat(Copy(sContador, 9, 18));
        if rValor > 0 then
          Result := floattostr(rValor / 100)
        else
          Result := '0';
      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    For I := 1 To 1278 Do
      sContador := sContador + ' ';
    IRetorno := ECF_DadosUltimaReducaoMFD(Pchar(sContador));

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
      begin

        rValor := strtofloat(Copy(somenteNumero(sContador), 301, 18));
        if rValor > 0 then
          Result := floattostr(rValor / 100)
        else
          Result := '0';

      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    SetLength(sRet, 1167);

    IRetorno := EPSON_Obter_Dados_Ultima_RZ(Pchar(sRet));

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := floattostr((strtofloat(Copy(sRet, 87, 18)) / 100));
  end;
end;

// -------------------------------------------------------------------------- //
// totalizadores parciais da ultima reducao z
function cECF_ReducaoZ_Totalizador_Parcial(COD_ECF: integer): string;
var
  sRet: string;
  I, x, Y, w: integer;
  sTotalizador, svalor, sTexto: string;
  sAliquota, sIss: string;
  rSoma: Real;
  iPosNome: integer;
  iPosValor: integer;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    // LER A RELACAO DE ALIQUOTAS DE ISS
    For I := 1 to 79 do
      sIss := sIss + ' ';
    IRetorno := Bematech_FI_VerificaAliquotasIss(sIss);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
      begin
        For I := 1 To 1278 Do
          sTotalizador := sTotalizador + ' ';
        IRetorno := Bematech_FI_DadosUltimaReducaoMFD(sTotalizador);
        ecfMSG := cECF_Analisa_Retorno(COD_ECF);
        if ecfMSG = OK then
        begin
          sRet := cECF_Retorno_Impressora(COD_ECF);
          if sRet = OK then
          begin
            sTotalizador := somenteNumero(sTotalizador);
            sAliquota := Copy(sTotalizador, 1173, 64);
            svalor := Copy(sTotalizador, 319, 224);

            x := 1;
            w := 1;
            // rodar as 16 posicoes de aliquotas e alimentar o Array
            for I := 1 to 16 do
            begin
              sTexto := Copy(sAliquota, x, 4);
              // Aliquota de Icms Tributado valido
              if sTexto <> '0000' then
              begin
                if Pos(sTexto, sIss) = 0 then
                begin
                  sTexto := zerar(IntToStr(I), 2) + 'T' + sTexto;
                end
                else
                begin
                  sTexto := zerar(IntToStr(I), 2) + 'S' + sTexto;
                end;
              end;
              tbTotalizador[I].Nome := sTexto;

              sTexto := floattostr(strtofloat(Copy(svalor, w, 14)));
              if strtofloat(sTexto) > 0 then
                sTexto := floattostr(strtofloat(sTexto) / 100);

              tbTotalizador[I].Valor := strtofloat(sTexto);
              x := x + 4;
              w := w + 14;
            end;

            // copiar a aliquota de substituicao tributaria

            sTexto := floattostr(strtofloat(Copy(sTotalizador, 571, 14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto) / 100);
            tbTotalizador[I].Nome := 'F1';
            tbTotalizador[I].Valor := strtofloat(sTexto);

            I := I + 1;
            tbTotalizador[I].Nome := 'F2';
            tbTotalizador[I].Valor := 0;

            // copiar a aliquota Isento
            I := I + 1;
            sTexto := floattostr(strtofloat(Copy(sTotalizador, 543, 14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto) / 100);
            tbTotalizador[I].Nome := 'I1';
            tbTotalizador[I].Valor := strtofloat(sTexto);

            I := I + 1;
            tbTotalizador[I].Nome := 'I2';
            tbTotalizador[I].Valor := 0;

            // copiar a aliquota Nao Tributado
            I := I + 1;
            sTexto := floattostr(strtofloat(Copy(sTotalizador, 557, 14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto) / 100);
            tbTotalizador[I].Nome := 'N1';
            tbTotalizador[I].Valor := strtofloat(sTexto);

            I := I + 1;
            tbTotalizador[I].Nome := 'N2';
            tbTotalizador[I].Valor := 0;

            // ----- I S S Q N


            // copiar a aliquota de substituicao tributaria

            sTexto := floattostr(strtofloat(Copy(sTotalizador, 613, 14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto) / 100);
            tbTotalizador[I].Nome := 'FS1';
            tbTotalizador[I].Valor := strtofloat(sTexto);

            I := I + 1;
            tbTotalizador[I].Nome := 'FS2';
            tbTotalizador[I].Valor := 0;

            // copiar a aliquota Isento
            I := I + 1;
            sTexto := floattostr(strtofloat(Copy(sTotalizador, 585, 14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto) / 100);
            tbTotalizador[I].Nome := 'IS1';
            tbTotalizador[I].Valor := strtofloat(sTexto);

            I := I + 1;
            tbTotalizador[I].Nome := 'IS2';
            tbTotalizador[I].Valor := 0;

            // copiar a aliquota Nao Tributado
            I := I + 1;
            sTexto := floattostr(strtofloat(Copy(sTotalizador, 599, 14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto) / 100);
            tbTotalizador[I].Nome := 'NS1';
            tbTotalizador[I].Valor := strtofloat(sTexto);

            I := I + 1;
            tbTotalizador[I].Nome := 'NS2';
            tbTotalizador[I].Valor := 0;

            // N A O   F I S C A L
            I := I + 1;
            rSoma := 0;
            x := 711;
            for w := 1 to 28 do
            begin
              rSoma := rSoma + strtofloat(Copy(sTotalizador, x, 14));
              x := x + 14;
            end;
            // sangria +
            rSoma := rSoma + strtofloat(Copy(sTotalizador, 1103, 14));
            // suprimento +
            rSoma := rSoma + strtofloat(Copy(sTotalizador, 1117, 14));

            if rSoma > 0 then
              rSoma := rSoma / 100;
            tbTotalizador[I].Nome := 'OPNF';
            tbTotalizador[I].Valor := rSoma;

            // Desconto ICMS
            I := I + 1;
            sTexto := floattostr(strtofloat(Copy(sTotalizador, 627, 14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto) / 100);
            tbTotalizador[I].Nome := 'DT';
            tbTotalizador[I].Valor := strtofloat(sTexto);

            // Desconto ISS
            I := I + 1;
            sTexto := floattostr(strtofloat(Copy(sTotalizador, 641, 14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto) / 100);
            tbTotalizador[I].Nome := 'DS';
            tbTotalizador[I].Valor := strtofloat(sTexto);

            // Acrescimo ICMS
            I := I + 1;
            sTexto := floattostr(strtofloat(Copy(sTotalizador, 655, 14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto) / 100);
            tbTotalizador[I].Nome := 'AT';
            tbTotalizador[I].Valor := strtofloat(sTexto);

            // Acrescimo ISS
            I := I + 1;
            sTexto := floattostr(strtofloat(Copy(sTotalizador, 669, 14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto) / 100);
            tbTotalizador[I].Nome := 'AS';
            tbTotalizador[I].Valor := strtofloat(sTexto);

            // CAncelamento ICMS
            I := I + 1;
            sTexto := floattostr(strtofloat(Copy(sTotalizador, 683, 14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto) / 100);
            tbTotalizador[I].Nome := 'Can-T';
            tbTotalizador[I].Valor := strtofloat(sTexto);

            // Cancelamento ISS
            I := I + 1;
            sTexto := floattostr(strtofloat(Copy(sTotalizador, 697, 14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto) / 100);
            tbTotalizador[I].Nome := 'Can-S';
            tbTotalizador[I].Valor := strtofloat(sTexto);

            Result := OK;
          end
          else
            Result := sRet;

        end
        else
          Result := ecfMSG;

      end
      else
        Result := sRet;

    end
    else
      Result := ecfMSG;

  end
  else if COD_ECF = DARUMA then
  begin
    For I := 1 To 1164 Do
      sTotalizador := sTotalizador + ' ';
    IRetorno := Daruma_FIMFD_RetornaInformacao('140', sTotalizador);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);

      if sRet = OK then
      begin
        sAliquota := Copy(sTotalizador, 843, 80);
        svalor := Copy(sTotalizador, 129, 224);

        x := 1;
        w := 1;

        // rodar as 16 posicoes de aliquotas e alimentar o Array
        for I := 1 to 16 do
        begin
          sTexto := Copy(sAliquota, x, 5);
          // Aliquota de Icms Tributado valido
          if Copy(sTexto, 1, 1) = '1' then
          begin
            sTexto := zerar(IntToStr(I), 2) + 'T' + Copy(sTexto, 2, 4);
          end;
          // Aliquota de ISS Tributado valido
          if Copy(sTexto, 1, 1) = '2' then
          begin
            sTexto := zerar(IntToStr(I), 2) + 'S' + Copy(sTexto, 2, 4);
          end;
          tbTotalizador[I].Nome := sTexto;

          sTexto := floattostr(strtofloat(Copy(svalor, w, 14)));
          if strtofloat(sTexto) > 0 then
            sTexto := floattostr(strtofloat(sTexto) / 100);

          tbTotalizador[I].Valor := strtofloat(sTexto);
          x := x + 5;
          w := w + 14;
        end;

        // copiar a aliquota de substituicao tributaria
        sTexto := floattostr(strtofloat(Copy(sTotalizador, 353, 14)));
        if strtofloat(sTexto) > 0 then
          sTexto := floattostr(strtofloat(sTexto) / 100);
        tbTotalizador[I].Nome := 'F1';
        tbTotalizador[I].Valor := strtofloat(sTexto);

        I := I + 1;
        sTexto := floattostr(strtofloat(Copy(sTotalizador, 367, 14)));
        if strtofloat(sTexto) > 0 then
          sTexto := floattostr(strtofloat(sTexto) / 100);
        tbTotalizador[I].Nome := 'F2';
        tbTotalizador[I].Valor := strtofloat(sTexto);

        // copiar a aliquota Isento
        I := I + 1;
        sTexto := floattostr(strtofloat(Copy(sTotalizador, 381, 14)));
        if strtofloat(sTexto) > 0 then
          sTexto := floattostr(strtofloat(sTexto) / 100);
        tbTotalizador[I].Nome := 'I1';
        tbTotalizador[I].Valor := strtofloat(sTexto);

        I := I + 1;
        sTexto := floattostr(strtofloat(Copy(sTotalizador, 395, 14)));
        if strtofloat(sTexto) > 0 then
          sTexto := floattostr(strtofloat(sTexto) / 100);
        tbTotalizador[I].Nome := 'I2';
        tbTotalizador[I].Valor := strtofloat(sTexto);

        // copiar a aliquota Nao Tributado
        I := I + 1;
        sTexto := floattostr(strtofloat(Copy(sTotalizador, 409, 14)));
        if strtofloat(sTexto) > 0 then
          sTexto := floattostr(strtofloat(sTexto) / 100);
        tbTotalizador[I].Nome := 'N1';
        tbTotalizador[I].Valor := strtofloat(sTexto);

        I := I + 1;
        sTexto := floattostr(strtofloat(Copy(sTotalizador, 423, 14)));
        if strtofloat(sTexto) > 0 then
          sTexto := floattostr(strtofloat(sTexto) / 100);
        tbTotalizador[I].Nome := 'N2';
        tbTotalizador[I].Valor := strtofloat(sTexto);

        // ----- I S S Q N

        // copiar a aliquota de substituicao tributaria

        sTexto := floattostr(strtofloat(Copy(sTotalizador, 437, 14)));
        if strtofloat(sTexto) > 0 then
          sTexto := floattostr(strtofloat(sTexto) / 100);
        tbTotalizador[I].Nome := 'FS1';
        tbTotalizador[I].Valor := strtofloat(sTexto);

        I := I + 1;
        sTexto := floattostr(strtofloat(Copy(sTotalizador, 451, 14)));
        if strtofloat(sTexto) > 0 then
          sTexto := floattostr(strtofloat(sTexto) / 100);
        tbTotalizador[I].Nome := 'FS2';
        tbTotalizador[I].Valor := strtofloat(sTexto);

        // copiar a aliquota Isento
        I := I + 1;
        sTexto := floattostr(strtofloat(Copy(sTotalizador, 465, 14)));
        if strtofloat(sTexto) > 0 then
          sTexto := floattostr(strtofloat(sTexto) / 100);
        tbTotalizador[I].Nome := 'IS1';
        tbTotalizador[I].Valor := strtofloat(sTexto);

        I := I + 1;
        sTexto := floattostr(strtofloat(Copy(sTotalizador, 479, 14)));
        if strtofloat(sTexto) > 0 then
          sTexto := floattostr(strtofloat(sTexto) / 100);
        tbTotalizador[I].Nome := 'IS2';
        tbTotalizador[I].Valor := strtofloat(sTexto);

        // copiar a aliquota Nao Tributado
        I := I + 1;
        sTexto := floattostr(strtofloat(Copy(sTotalizador, 493, 14)));
        if strtofloat(sTexto) > 0 then
          sTexto := floattostr(strtofloat(sTexto) / 100);
        tbTotalizador[I].Nome := 'NS1';
        tbTotalizador[I].Valor := strtofloat(sTexto);

        I := I + 1;
        sTexto := floattostr(strtofloat(Copy(sTotalizador, 507, 14)));
        if strtofloat(sTexto) > 0 then
          sTexto := floattostr(strtofloat(sTexto) / 100);
        tbTotalizador[I].Nome := 'NS2';
        tbTotalizador[I].Valor := strtofloat(sTexto);

        // N A O   F I S C A L
        I := I + 1;
        rSoma := 0;
        x := 521;
        for w := 1 to 20 do
        begin
          rSoma := rSoma + strtofloat(Copy(sTotalizador, x, 14));
          x := x + 14;
        end;
        if rSoma > 0 then
          rSoma := rSoma / 100;
        tbTotalizador[I].Nome := 'OPNF';
        tbTotalizador[I].Valor := rSoma;

        // Desconto ICMS
        I := I + 1;
        sTexto := floattostr(strtofloat(Copy(sTotalizador, 45, 14)));
        if strtofloat(sTexto) > 0 then
          sTexto := floattostr(strtofloat(sTexto) / 100);
        tbTotalizador[I].Nome := 'DT';
        tbTotalizador[I].Valor := strtofloat(sTexto);

        // Desconto ISS
        I := I + 1;
        sTexto := floattostr(strtofloat(Copy(sTotalizador, 59, 14)));
        if strtofloat(sTexto) > 0 then
          sTexto := floattostr(strtofloat(sTexto) / 100);
        tbTotalizador[I].Nome := 'DS';
        tbTotalizador[I].Valor := strtofloat(sTexto);

        // Acrescimo ICMS
        I := I + 1;
        sTexto := floattostr(strtofloat(Copy(sTotalizador, 101, 14)));
        if strtofloat(sTexto) > 0 then
          sTexto := floattostr(strtofloat(sTexto) / 100);
        tbTotalizador[I].Nome := 'AT';
        tbTotalizador[I].Valor := strtofloat(sTexto);

        // Acrescimo ISS
        I := I + 1;
        sTexto := floattostr(strtofloat(Copy(sTotalizador, 115, 14)));
        if strtofloat(sTexto) > 0 then
          sTexto := floattostr(strtofloat(sTexto) / 100);
        tbTotalizador[I].Nome := 'AS';
        tbTotalizador[I].Valor := strtofloat(sTexto);

        // CAncelamento ICMS
        I := I + 1;
        sTexto := floattostr(strtofloat(Copy(sTotalizador, 73, 14)));
        if strtofloat(sTexto) > 0 then
          sTexto := floattostr(strtofloat(sTexto) / 100);
        tbTotalizador[I].Nome := 'Can-T';
        tbTotalizador[I].Valor := strtofloat(sTexto);

        // Cancelamento ISS
        I := I + 1;
        sTexto := floattostr(strtofloat(Copy(sTotalizador, 87, 14)));
        if strtofloat(sTexto) > 0 then
          sTexto := floattostr(strtofloat(sTexto) / 100);
        tbTotalizador[I].Nome := 'Can-S';
        tbTotalizador[I].Valor := strtofloat(sTexto);

        Result := OK;
      end
      else
        Result := sRet;
    end
    else
      Result := ecfMSG;

  end
  else if COD_ECF = SWEDA then
  begin
    // LER A RELACAO DE ALIQUOTAS DE ISS
    For I := 1 to 79 do
      sIss := sIss + ' ';
    IRetorno := ECF_VerificaAliquotasIss(sIss);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(COD_ECF);
      if sRet = OK then
      begin
        For I := 1 To 1278 Do
          sTotalizador := sTotalizador + ' ';
        IRetorno := ECF_DadosUltimaReducaoMFD(Pchar(sTotalizador));
        ecfMSG := cECF_Analisa_Retorno(COD_ECF);
        if ecfMSG = OK then
        begin
          sRet := cECF_Retorno_Impressora(COD_ECF);
          if sRet = OK then
          begin
            sTotalizador := somenteNumero(sTotalizador);
            sAliquota := Copy(sTotalizador, 1173, 64);
            svalor := Copy(sTotalizador, 319, 224);

            x := 1;
            w := 1;
            // rodar as 16 posicoes de aliquotas e alimentar o Array
            for I := 1 to 16 do
            begin
              sTexto := Copy(sAliquota, x, 4);
              // Aliquota de Icms Tributado valido
              if sTexto <> '0000' then
              begin
                if Pos(sTexto, sIss) = 0 then
                begin
                  sTexto := zerar(IntToStr(I), 2) + 'T' + sTexto;
                end
                else
                begin
                  sTexto := zerar(IntToStr(I), 2) + 'S' + sTexto;
                end;
              end;
              tbTotalizador[I].Nome := sTexto;

              sTexto := floattostr(strtofloat(Copy(svalor, w, 14)));
              if strtofloat(sTexto) > 0 then
                sTexto := floattostr(strtofloat(sTexto) / 100);

              tbTotalizador[I].Valor := strtofloat(sTexto);
              x := x + 4;
              w := w + 14;
            end;


            // copiar a aliquota de substituicao tributaria

            sTexto := floattostr(strtofloat(Copy(sTotalizador, 571, 14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto) / 100);
            tbTotalizador[I].Nome := 'F1';
            tbTotalizador[I].Valor := strtofloat(sTexto);

            I := I + 1;
            tbTotalizador[I].Nome := 'F2';
            tbTotalizador[I].Valor := 0;

            // copiar a aliquota Isento
            I := I + 1;
            sTexto := floattostr(strtofloat(Copy(sTotalizador, 543, 14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto) / 100);
            tbTotalizador[I].Nome := 'I1';
            tbTotalizador[I].Valor := strtofloat(sTexto);

            I := I + 1;
            tbTotalizador[I].Nome := 'I2';
            tbTotalizador[I].Valor := 0;

            // copiar a aliquota Nao Tributado
            I := I + 1;
            sTexto := floattostr(strtofloat(Copy(sTotalizador, 557, 14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto) / 100);
            tbTotalizador[I].Nome := 'N1';
            tbTotalizador[I].Valor := strtofloat(sTexto);

            I := I + 1;
            tbTotalizador[I].Nome := 'N2';
            tbTotalizador[I].Valor := 0;


            // ----- I S S Q N


            // copiar a aliquota de substituicao tributaria

            sTexto := floattostr(strtofloat(Copy(sTotalizador, 613, 14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto) / 100);
            tbTotalizador[I].Nome := 'FS1';
            tbTotalizador[I].Valor := strtofloat(sTexto);

            I := I + 1;
            tbTotalizador[I].Nome := 'FS2';
            tbTotalizador[I].Valor := 0;

            // copiar a aliquota Isento
            I := I + 1;
            sTexto := floattostr(strtofloat(Copy(sTotalizador, 585, 14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto) / 100);
            tbTotalizador[I].Nome := 'IS1';
            tbTotalizador[I].Valor := strtofloat(sTexto);

            I := I + 1;
            tbTotalizador[I].Nome := 'IS2';
            tbTotalizador[I].Valor := 0;

            // copiar a aliquota Nao Tributado
            I := I + 1;
            sTexto := floattostr(strtofloat(Copy(sTotalizador, 599, 14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto) / 100);
            tbTotalizador[I].Nome := 'NS1';
            tbTotalizador[I].Valor := strtofloat(sTexto);

            I := I + 1;
            tbTotalizador[I].Nome := 'NS2';
            tbTotalizador[I].Valor := 0;

            // N A O   F I S C A L
            I := I + 1;
            rSoma := 0;
            x := 711;
            for w := 1 to 28 do
            begin
              rSoma := rSoma + strtofloat(Copy(sTotalizador, x, 14));
              x := x + 14;
            end;
            // sangria +
            rSoma := rSoma + strtofloat(Copy(sTotalizador, 1103, 14));
            // suprimento +
            rSoma := rSoma + strtofloat(Copy(sTotalizador, 1117, 14));

            if rSoma > 0 then
              rSoma := rSoma / 100;
            tbTotalizador[I].Nome := 'OPNF';
            tbTotalizador[I].Valor := rSoma;

            // Desconto ICMS
            I := I + 1;
            sTexto := floattostr(strtofloat(Copy(sTotalizador, 627, 14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto) / 100);
            tbTotalizador[I].Nome := 'DT';
            tbTotalizador[I].Valor := strtofloat(sTexto);

            // Desconto ISS
            I := I + 1;
            sTexto := floattostr(strtofloat(Copy(sTotalizador, 641, 14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto) / 100);
            tbTotalizador[I].Nome := 'DS';
            tbTotalizador[I].Valor := strtofloat(sTexto);

            // Acrescimo ICMS
            I := I + 1;
            sTexto := floattostr(strtofloat(Copy(sTotalizador, 655, 14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto) / 100);
            tbTotalizador[I].Nome := 'AT';
            tbTotalizador[I].Valor := strtofloat(sTexto);

            // Acrescimo ISS
            I := I + 1;
            sTexto := floattostr(strtofloat(Copy(sTotalizador, 669, 14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto) / 100);
            tbTotalizador[I].Nome := 'AS';
            tbTotalizador[I].Valor := strtofloat(sTexto);

            // CAncelamento ICMS
            I := I + 1;
            sTexto := floattostr(strtofloat(Copy(sTotalizador, 683, 14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto) / 100);
            tbTotalizador[I].Nome := 'Can-T';
            tbTotalizador[I].Valor := strtofloat(sTexto);

            // Cancelamento ISS
            I := I + 1;
            sTexto := floattostr(strtofloat(Copy(sTotalizador, 697, 14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto) / 100);
            tbTotalizador[I].Nome := 'Can-S';
            tbTotalizador[I].Valor := strtofloat(sTexto);

            Result := OK;

          end
          else
            Result := sRet;
        end
        else
          Result := ecfMSG;
      end
      else
        Result := sRet;
    end
    else
      Result := ecfMSG;

  end
  else if COD_ECF = EPSON then
  begin
    for I := 1 to 1167 do
      sRet := sRet + ' ';

    IRetorno := EPSON_Obter_Dados_Ultima_RZ(Pchar(sRet));

    if IRetorno <> 0 then
    begin
      Result := cECF_Analisa_Retorno(EPSON);
    end
    else
    begin
      sAliquota := Copy(sRet, 258, 120);
      svalor := Copy(sRet, 384, 408);
      I := 1;

      // GUIO: Totalizadores Fiscais
      while (trim(sAliquota) <> '') do
      begin
        tbTotalizador[I].Nome := Copy(sAliquota, 1, 5);
        tbTotalizador[I].Valor := (strtofloat(Copy(svalor, 1, 17)) / 100);

        sAliquota := Copy(sAliquota, 6, length(sAliquota));
        svalor := Copy(svalor, 18, length(svalor));

        INC(I);
      end;

      // GUIO: Totalizadores Não Fiscais
      svalor := Copy(sRet, 818, 340);
      rSoma := 0.00;

      while (trim(svalor) <> '') do
      begin
        rSoma := rSoma + strtofloat(Copy(svalor, 1, 13));
        svalor := Copy(svalor, 18, length(svalor));
      end;

      if rSoma > 0.00 then
      begin
        tbTotalizador[I].Nome := 'OPNF';
        tbTotalizador[I].Valor := (rSoma / 100);
        INC(I);
      end;

      // GUIO: Desconto ICMS
      svalor := Copy(sRet, 156, 17);

      tbTotalizador[I].Nome := 'DT';
      tbTotalizador[I].Valor := (strtofloat(svalor) / 100);
      INC(I);

      // GUIO: Desconto ISS
      svalor := Copy(sRet, 173, 17);

      tbTotalizador[I].Nome := 'DS';
      tbTotalizador[I].Valor := (strtofloat(svalor) / 100);
      INC(I);

      // GUIO: Acréscimo ICMS
      svalor := Copy(sRet, 207, 17);

      tbTotalizador[I].Nome := 'AT';
      tbTotalizador[I].Valor := (strtofloat(svalor) / 100);
      INC(I);

      // GUIO: Acréscimo ISS
      svalor := Copy(sRet, 224, 17);

      tbTotalizador[I].Nome := 'AS';
      tbTotalizador[I].Valor := (strtofloat(svalor) / 100);
      INC(I);

      // GUIO: Cancelamento ICMS
      svalor := Copy(sRet, 105, 17);

      tbTotalizador[I].Nome := 'Can-T';
      tbTotalizador[I].Valor := (strtofloat(svalor) / 100);
      INC(I);

      // GUIO: Cancelamento ISS
      svalor := Copy(sRet, 122, 17);

      tbTotalizador[I].Nome := 'Can-S';
      tbTotalizador[I].Valor := (strtofloat(svalor) / 100);
      INC(I);

      Result := OK;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
// LEITURA X
function cECF_LeituraX(COD_ECF: integer): string;
begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    IRetorno := Bematech_FI_LeituraX();
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
      // retorna OK ou a Mensagem de Erro;
    ELSE
      Result := ecfMSG; // retorna o Erro de falha de comunicação com o ECF
  end
  else if COD_ECF = DARUMA then
  begin
    IRetorno := Daruma_FI_LeituraX();
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    IRetorno := ECF_LeituraX();
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;

  end
  else if COD_ECF = EPSON then
  begin
    IRetorno := EPSON_RelatorioFiscal_Abrir_Dia();

    // CGT: Se houve falha na abertura do dia, executa apenas a leitura X
    if IRetorno <> 0 then
      IRetorno := EPSON_RelatorioFiscal_LeituraX();

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := OK;

  end
end;

// -------------------------------------------------------------------------- //
// REDUCAO Z
function cECF_ReducaoZ(COD_ECF: integer): string;
var
  sCRZ: String;

begin
  Result := ERRO;
  if COD_ECF = BEMATECH then
  begin
    IRetorno := Bematech_FI_ReducaoZ(Pchar(''), Pchar(''));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    IRetorno := Daruma_FI_ReducaoZ(Pchar(''), Pchar(''));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    IRetorno := ECF_ReducaoZ(Pchar(''), Pchar(''));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    SetLength(sCRZ, 4);
    IRetorno := EPSON_RelatorioFiscal_RZ('', '', 2, Pchar(sCRZ));

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := OK;

  end
end;

// -------------------------------------------------------------------------- //
function cECF_Leitura_Memoria_Fiscal(COD_ECF: integer; Tipo: STRING;
  // DATA ou CRZ
  Analitica_ou_Sintetica: STRING; // A ou S
  Ecf_ou_Arquivo: String; // ECF ou ARQUIVO
  Inicio: string; Fim: STRING): STRING;
var
  sTipo: string;
  sDados: String;
  iTipo: integer;
  sArq: String;
  iBuffer: integer;

begin
  sTipo := AnsiLowerCase(Analitica_ou_Sintetica);

  if Tipo = 'DATA' then
  begin
    Result := ERRO;

    if COD_ECF = BEMATECH then
    begin
      if sTipo = 'a' then
        sTipo := 'c';

      if Ecf_ou_Arquivo = 'ECF' then
        IRetorno := Bematech_FI_LeituraMemoriaFiscalDataMFD(Pchar(Inicio),
          Pchar(Fim), Pchar(sTipo))
      else
        IRetorno := Bematech_FI_LeituraMemoriaFiscalSerialDataMFD(Pchar(Inicio),
          Pchar(Fim), Pchar(sTipo));

      ecfMSG := cECF_Analisa_Retorno(COD_ECF);
      if ecfMSG = OK then
        Result := cECF_Retorno_Impressora(COD_ECF)
      ELSE
        Result := ecfMSG;
    end
    else if COD_ECF = DARUMA then
    begin
      if Analitica_ou_Sintetica = 'A' then
        Daruma_Registry_MFD_LeituraMFCompleta('1') // analitica
      else
        Daruma_Registry_MFD_LeituraMFCompleta('0'); // sintetica

      if Ecf_ou_Arquivo = 'ECF' then
        IRetorno := Daruma_FI_LeituraMemoriaFiscalData(Pchar(Inicio),
          Pchar(Fim))
      else
        IRetorno := Daruma_FI_LeituraMemoriaFiscalSerialData(Pchar(Inicio),
          Pchar(Fim));

      ecfMSG := cECF_Analisa_Retorno(COD_ECF);
      if ecfMSG = OK then
      begin
        Result := cECF_Retorno_Impressora(COD_ECF);
      end
      ELSE
        Result := ecfMSG;
    end
    else if COD_ECF = SWEDA then
    begin
      if sTipo = 'a' then
        sTipo := 'c';

      if Ecf_ou_Arquivo = 'ECF' then
        IRetorno := ECF_LeituraMemoriaFiscalDataMFD(Pchar(Inicio), Pchar(Fim),
          Pchar(sTipo))
      else
        IRetorno := ECF_LeituraMemoriaFiscalSerialDataMFD(Pchar(Inicio),
          Pchar(Fim), Pchar(sTipo));

      ecfMSG := cECF_Analisa_Retorno(COD_ECF);
      if ecfMSG = OK then
        Result := cECF_Retorno_Impressora(COD_ECF)
      ELSE
        Result := ecfMSG;
    end
    else if COD_ECF = EPSON then
    begin
      // CGT: Desabilita a assinatura digital do Arquivo
      IRetorno := EPSON_Config_Habilita_EAD(False);
      iBuffer := 0;
      sArq := '';

      SetLength(sDados, 10000);

      if Analitica_ou_Sintetica = 'A' then
        iTipo := 1 // Completo por Data
      else
        iTipo := 3; // Simplificado por Data

      // GUIO: Caso seja por data, faz a validação das datas
      if (iTipo = 1) or (iTipo = 2) then
      begin
        try
          Inicio := FormatDateTime('ddmmyyyy', StrToDate(Inicio));
        except
          Result := 'Data inicial inválida!';
          Exit;
        end;

        try
          Fim := FormatDateTime('ddmmyyyy', StrToDate(Fim));
        except
          Result := 'Data final inválida!';
          Exit;
        end;
      end;

      if Ecf_ou_Arquivo = 'ECF' then
        INC(iTipo, 4) // Imprimi no ECF
      else
      begin
        INC(iTipo, 16); // Grava em Arquivo
        sArq := SystemDrive + '\Retorno.txt';
      end;

      if sArq <> '' then
        IRetorno := EPSON_RelatorioFiscal_Leitura_MF(Pchar(Inicio), Pchar(Fim),
          iTipo, Pchar(sDados), Pchar(sArq), @iBuffer, 10000)
      else
        IRetorno := EPSON_RelatorioFiscal_Leitura_MF(Pchar(Inicio), Pchar(Fim),
          iTipo, Pchar(sDados), '', @iBuffer, 10000);

      if IRetorno <> 0 then
        Result := cECF_Analisa_Retorno(EPSON)
      else
        Result := OK;

    end
  end
  else
  begin
    Result := ERRO;

    if COD_ECF = BEMATECH then
    begin
      if sTipo = 'a' then
        sTipo := 'c';
      if Ecf_ou_Arquivo = 'ECF' then
        IRetorno := Bematech_FI_LeituraMemoriaFiscalReducaoMFD(Pchar(Inicio),
          Pchar(Fim), Pchar(sTipo))
      else
        IRetorno := Bematech_FI_LeituraMemoriaFiscalSerialReducaoMFD
          (Pchar(Inicio), Pchar(Fim), Pchar(sTipo));
      ecfMSG := cECF_Analisa_Retorno(COD_ECF);
      if ecfMSG = OK then
        Result := cECF_Retorno_Impressora(COD_ECF)
      ELSE
        Result := ecfMSG;
    end
    else if COD_ECF = DARUMA then
    begin
      if Analitica_ou_Sintetica = 'A' then
        Daruma_Registry_MFD_LeituraMFCompleta('1') // analitica
      else
        Daruma_Registry_MFD_LeituraMFCompleta('0'); // sintecica
      if Ecf_ou_Arquivo = 'ECF' then
        IRetorno := Daruma_FI_LeituraMemoriaFiscalReducao(Pchar(Inicio),
          Pchar(Fim))
      else
        IRetorno := Daruma_FI_LeituraMemoriaFiscalSerialReducao(Pchar(Inicio),
          Pchar(Fim));
      ecfMSG := cECF_Analisa_Retorno(COD_ECF);
      if ecfMSG = OK then
        Result := cECF_Retorno_Impressora(COD_ECF)
      ELSE
        Result := ecfMSG;
    end
    else if COD_ECF = SWEDA then
    begin
      if sTipo = 'a' then
        sTipo := 'c';
      if Ecf_ou_Arquivo = 'ECF' then
        IRetorno := ECF_LeituraMemoriaFiscalReducaoMFD(Pchar(Inicio),
          Pchar(Fim), Pchar(sTipo))
      else
        IRetorno := ECF_LeituraMemoriaFiscalSerialReducaoMFD(Pchar(Inicio),
          Pchar(Fim), Pchar(sTipo));
      ecfMSG := cECF_Analisa_Retorno(COD_ECF);
      if ecfMSG = OK then
        Result := cECF_Retorno_Impressora(COD_ECF)
      ELSE
        Result := ecfMSG;
    end
    else if COD_ECF = EPSON then
    begin
      // CGT: Desabilita a assinatura digital do Arquivo
      IRetorno := EPSON_Config_Habilita_EAD(False);
      iBuffer := 0;
      sArq := '';

      SetLength(sDados, 10000);

      if Analitica_ou_Sintetica = 'A' then
        iTipo := 0 // Completo por CRZ
      else
        iTipo := 2; // Simplificado por CRZ

      if Ecf_ou_Arquivo = 'ECF' then
        INC(iTipo, 4) // Imprimi no ECF
      else
      begin
        INC(iTipo, 16); // Grava em Arquivo
        sArq := SystemDrive + '\Retorno.txt';
      end;

      if sArq <> '' then
        IRetorno := EPSON_RelatorioFiscal_Leitura_MF(Pchar(Inicio), Pchar(Fim),
          iTipo, Pchar(sDados), Pchar(sArq), @iBuffer, 10000)
      else
        IRetorno := EPSON_RelatorioFiscal_Leitura_MF(Pchar(Inicio), Pchar(Fim),
          iTipo, Pchar(sDados), '', @iBuffer, 10000);

      if IRetorno <> 0 then
        Result := cECF_Analisa_Retorno(EPSON)
      else
        Result := OK;

    end;
  end;
end;

// -------------------------------------------------------------------------- //
// CUPOM FISCAL
function cECF_Abre_Cupom(COD_ECF: integer; CPF, Nome, Endereco: string;
  pbImprimirNoCabecalho: Boolean = False): string;
var
  iOpcao: integer;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    IRetorno := Bematech_FI_AbreCupomMFD(Pchar(Copy(CPF, 1, 29)),
      Pchar(Copy(Nome, 1, 30)), Pchar(Copy(Endereco, 1, 80)));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    IRetorno := Daruma_FI_AbreCupom(Pchar(Copy(CPF, 1, 29)));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
    begin
      if CPF <> '' then
      begin
        IRetorno := Daruma_FI_IdentificaConsumidor(Pchar(Copy(Nome, 1, 48)),
          Pchar(Copy(Endereco, 1, 48)), Pchar(Copy(CPF, 1, 42)));
        ecfMSG := cECF_Analisa_Retorno(COD_ECF);
        if ecfMSG = OK then
          Result := cECF_Retorno_Impressora(COD_ECF)
        ELSE
          Result := ecfMSG;
      end
      else
        Result := cECF_Retorno_Impressora(COD_ECF)
    end
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    IRetorno := ECF_AbreCupomMFD(Pchar(Copy(CPF, 1, 29)),
      Pchar(Copy(Nome, 1, 30)), Pchar(Copy(Endereco, 1, 80)));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    if pbImprimirNoCabecalho then
      iOpcao := 2
    else
      iOpcao := 3;

    IRetorno := EPSON_Fiscal_Abrir_Cupom(Pchar(Copy(CPF, 1, 20)),
      Pchar(Copy(Nome, 1, 30)), Pchar(Copy(Endereco, 1, 40)),
      Pchar(Copy(Endereco, 41, 39)), iOpcao);

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := OK;

  end;
end;

// -------------------------------------------------------------------------- //
// VENDE ITEM
function cECF_Vende_item(COD_ECF: integer; Codigo, produto, unidade,
  aliquota: string; quantidade, valor_unitario, valor_desconto: Real;
  valor_acrescimo: Real; tipo_desconto_acrescimo: string; total: Real): string;
var
  Sqtde, svalor, Sdesconto, stipo_qtde, sacrescimo: string;

begin
  try
    Result := ERRO;

    if unidade = '' then
      unidade := 'UN';

    Codigo := TrimLeft(TrimRight(Copy(Codigo, 1, 13)));
    produto := TrimLeft(TrimRight(Copy(produto, 1, 29)));
    Sqtde := FormatFloat('########0.000', quantidade);
    svalor := FormatFloat('########0.000', valor_unitario);
    sacrescimo := FormatFloat('########0.00', valor_acrescimo);
    Sdesconto := FormatFloat('########0.00', valor_desconto);
    stipo_qtde := 'F';

    if COD_ECF = BEMATECH then
    begin
      IRetorno := Bematech_FI_VendeItemDepartamento(Pchar(Codigo),
        Pchar(produto), Pchar(aliquota), Pchar(svalor), Pchar(Sqtde),
        Pchar(sacrescimo), Pchar(Sdesconto), '01', Pchar(unidade));

      ecfMSG := cECF_Analisa_Retorno(COD_ECF);

      if ecfMSG = OK then
        Result := cECF_Retorno_Impressora(COD_ECF)
      ELSE
        Result := ecfMSG;

    end
    else if COD_ECF = DARUMA then
    begin
      IRetorno := Daruma_FI_VendeItemDepartamento(Pchar(Codigo), Pchar(produto),
        Pchar(aliquota), Pchar(svalor), Pchar(Sqtde), Pchar(sacrescimo),
        Pchar(Sdesconto), '01', Pchar(unidade));

      ecfMSG := cECF_Analisa_Retorno(COD_ECF);

      if ecfMSG = OK then
        Result := cECF_Retorno_Impressora(COD_ECF)
      ELSE
        Result := ecfMSG;

    end
    else if COD_ECF = SWEDA then
    begin
      IRetorno := ECF_VendeItemDepartamento(Pchar(Codigo), Pchar(produto),
        Pchar(aliquota), Pchar(svalor), Pchar(Sqtde), Pchar(sacrescimo),
        Pchar(Sdesconto), '01', Pchar(unidade));
      ecfMSG := cECF_Analisa_Retorno(COD_ECF);

      if ecfMSG = OK then
        Result := cECF_Retorno_Impressora(COD_ECF)
      ELSE
        Result := ecfMSG;
    end
    else if COD_ECF = EPSON then
    begin
      IRetorno := EPSON_Fiscal_Vender_Item(Pchar(Codigo), Pchar(produto),
        Pchar(FormatarValor(quantidade, 3)), 3, Pchar(unidade),
        Pchar(FormatarValor(valor_unitario, 2)), 2, Pchar(aliquota), 1);

      if IRetorno <> 0 then
        Result := cECF_Analisa_Retorno(EPSON)
      else
        Result := OK;

      if Result = OK then
      begin
        // GUIO: Caso tenha desconto ou acréscimo
        if Sdesconto <> '0,00' then
          IRetorno := EPSON_Fiscal_Desconto_Acrescimo_Item
            (Pchar(FormatarValor(valor_desconto, 2)), 2, True, False)
        else if sacrescimo <> '0,00' then
          IRetorno := EPSON_Fiscal_Desconto_Acrescimo_Item
            (Pchar(FormatarValor(valor_acrescimo, 2)), 2, False, False);

        if IRetorno <> 0 then
          Result := cECF_Analisa_Retorno(EPSON)
        else
          Result := OK;

      end;
    end;
  except
    Result := ERRO;
  end;
end;

// -------------------------------------------------------------------------- //
// incio do fechamento do cupom
function cECF_Inicia_Fechamento(COD_ECF: integer; Acrescimo_ou_Desconto: string;
  Tipo: string; Valor: Real): string;
var
  svalor: string;
  bDesconto: Boolean;
  bPercentual: Boolean;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    svalor := FormatFloat('#########0.00', Valor);
    IRetorno := Bematech_FI_IniciaFechamentoCupom(Pchar(Acrescimo_ou_Desconto),
      Pchar(Tipo), Pchar(svalor));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    svalor := FormatFloat('#########0.00', Valor);
    IRetorno := Daruma_FI_IniciaFechamentoCupom(Pchar(Acrescimo_ou_Desconto),
      Pchar(Tipo), Pchar(svalor));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    svalor := FormatFloat('#########0.00', Valor);
    IRetorno := ECF_IniciaFechamentoCupom(Pchar(Acrescimo_ou_Desconto),
      Pchar(Tipo), Pchar(svalor));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    if Valor <> 0.00 then
    begin
      bDesconto := (UpperCase(Acrescimo_ou_Desconto) = 'D');
      bPercentual := (Tipo = '%');

      IRetorno := EPSON_Fiscal_Desconto_Acrescimo_Subtotal
        (Pchar(FormatarValor(Valor, 2)), 2, bDesconto, bPercentual);

      if IRetorno <> 0 then
        Result := cECF_Analisa_Retorno(EPSON)
      else
        Result := OK;

    end
    else
      Result := OK;

  end;
end;

// -------------------------------------------------------------------------- //
// lancamento do pagamento
function cECF_Forma_Pgto(COD_ECF: integer; forma_pgto: string;
  Valor: Real): string;
var
  svalor: string;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    svalor := FormatFloat('#########0.00', Valor);
    IRetorno := Bematech_FI_EfetuaFormaPagamento(Pchar(forma_pgto),
      Pchar(svalor));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    svalor := FormatFloat('#########0.00', Valor);
    IRetorno := Daruma_FI_EfetuaFormaPagamento(Pchar(forma_pgto),
      Pchar(svalor));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    svalor := FormatFloat('#########0.00', Valor);
    IRetorno := ECF_EfetuaFormaPagamento(Pchar(forma_pgto), Pchar(svalor));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    IRetorno := EPSON_Fiscal_Pagamento(Pchar(forma_pgto),
      Pchar(FormatarValor(Valor, 2)), 2, '', '');

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := OK;

  end;
end;

// -------------------------------------------------------------------------- //
// termina o fechamento do cupom
function cECF_Termina_Fechamento(COD_ECF: integer; mensagem: string): string;
begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    IRetorno := Bematech_FI_TerminaFechamentoCupom(Pchar(mensagem));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    IRetorno := Daruma_FI_TerminaFechamentoCupom(Pchar(mensagem));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    IRetorno := ECF_TerminaFechamentoCupom(Pchar(mensagem));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    IRetorno := EPSON_Fiscal_Imprimir_MensagemEX(Pchar(mensagem));
    IRetorno := EPSON_Fiscal_Fechar_Cupom(True, False);

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := OK;

  end;
end;

// -------------------------------------------------------------------------- //
// fechamento do cupom resumido
function cECF_Fecha_Cupom_Resumido(COD_ECF: integer; forma_pgto: string;
  mensagem: string; Valor: Currency = 0.00): string;
begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    IRetorno := Bematech_FI_FechaCupomResumido(Pchar(forma_pgto),
      Pchar(mensagem));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    IRetorno := Daruma_FI_FechaCupomResumido(Pchar(forma_pgto),
      Pchar(mensagem));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    IRetorno := ECF_FechaCupomResumido(Pchar(forma_pgto), Pchar(mensagem));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    IRetorno := EPSON_Fiscal_Imprimir_MensagemEX(Pchar(mensagem));
    IRetorno := EPSON_Fiscal_Fechar_CupomEx
      (Pchar(FormatFloat('############0.00', Valor)));

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := OK;

  end;
end;

// -------------------------------------------------------------------------- //
// cancelar cupom
function cECF_Cancela_Cupom(COD_ECF: integer): string;
begin
  Result := ERRO;
  if COD_ECF = BEMATECH then
  begin
    IRetorno := Bematech_FI_CancelaCupom();
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    IRetorno := Daruma_FI_CancelaCupom();
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    IRetorno := ECF_CancelaCupom();
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    IRetorno := EPSON_Fiscal_Cancelar_Cupom();

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := OK;

  end;
end;

// -------------------------------------------------------------------------- //
// cancelar item
function cECF_Cancela_Item(COD_ECF: integer; Item: string): string;
begin
  Result := ERRO;

  Item := IntToStr(StrToInt(Item));

  if COD_ECF = BEMATECH then
  begin
    IRetorno := Bematech_FI_CancelaItemGenerico(Pchar(Item));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    IRetorno := Daruma_FI_CancelaItemGenerico(Pchar(Item));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    IRetorno := ECF_CancelaItemGenerico(Pchar(Item));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    IRetorno := EPSON_Fiscal_Cancelar_Item(Pchar(Item));

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := OK;

  end;
end;

// -------------------------------------------------------------------------- //
// OPERACOES NAO FISCAL
// abertura do relatorio gerencial
function cECF_Abre_Gerencial(COD_ECF: integer; Texto: String): string;
begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    IRetorno := Bematech_FI_RelatorioGerencial(Pchar(Texto + char(10)));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    IRetorno := Daruma_FI_RelatorioGerencial(Pchar(Texto));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    IRetorno := ECF_RelatorioGerencial(Pchar(Texto));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    // CGT: Verifica função
    IRetorno := EPSON_NaoFiscal_Abrir_Relatorio_Gerencial('1');

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := OK;

    if Result = OK then
    begin
      IRetorno := EPSON_NaoFiscal_Imprimir_LinhaEX(Pchar(Texto));

      if IRetorno <> 0 then
        Result := cECF_Analisa_Retorno(EPSON)
      else
        Result := OK;

    end;
  end;
end;

// -------------------------------------------------------------------------- //
// usar o relatorio gerencial
function cECF_Usa_Gerencial(COD_ECF: integer; Texto: String): string;
begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    IRetorno := { Bematech_FI_RelatorioGerencial(pchar(texto));// }
      Bematech_FI_RelatorioGerencial(Pchar(Texto + chr(10)));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    IRetorno := Daruma_FI_RelatorioGerencial(Pchar(Texto));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    IRetorno := ECF_RelatorioGerencial(Pchar(Texto));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    IRetorno := EPSON_NaoFiscal_Imprimir_LinhaEX(Pchar(Texto));

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := OK;

  end;
end;

// -------------------------------------------------------------------------- //
// fechamento do relatorio gerencial
function cECF_Fecha_Gerencial(COD_ECF: integer): string;
begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    IRetorno := Bematech_FI_FechaRelatorioGerencial();
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    IRetorno := Daruma_FI_FechaRelatorioGerencial();
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    IRetorno := ECF_FechaRelatorioGerencial();
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    IRetorno := EPSON_NaoFiscal_Fechar_Relatorio_Gerencial(True);

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := OK;

  end;
end;

// -------------------------------------------------------------------------- //
// abertura do CNFV - Comprovante nao fiscal vinculado
function cECF_Abre_CNFV(COD_ECF: integer; forma_pgto: string; Valor: Real;
  Numero_Cupom: string): string;
var
  svalor: string;
  sQtdeParcelas: String;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    if Valor > 0 then
      svalor := FormatFloat('#############0.00', Valor)
    else
      svalor := '';
    IRetorno := Bematech_FI_AbreComprovanteNaoFiscalVinculado(Pchar(forma_pgto),
      Pchar(svalor), Pchar(Numero_Cupom));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    if Valor > 0 then
      svalor := FormatFloat('#############0.00', Valor)
    else
      svalor := '';
    IRetorno := Daruma_FI_AbreComprovanteNaoFiscalVinculado(Pchar(forma_pgto),
      Pchar(svalor), Pchar(Numero_Cupom));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    if Valor > 0 then
      svalor := FormatFloat('#############0.00', Valor)
    else
      svalor := '';
    IRetorno := ECF_AbreComprovanteNaoFiscalVinculado(Pchar(forma_pgto),
      Pchar(svalor), Pchar(Numero_Cupom));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    sQtdeParcelas := FormatFloat('000', 1);
    svalor := FormatarValor(Valor, 2);

    IRetorno := EPSON_NaoFiscal_Abrir_CCD(Pchar(forma_pgto), Pchar(svalor), 2,
      Pchar(sQtdeParcelas));

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := OK;

  end;
end;

// -------------------------------------------------------------------------- //
// usar o CNFV - Comprovante nao fiscal vinculado
function cECF_Usa_CNFV(COD_ECF: integer; Texto: string): string;
begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    IRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado
      (Pchar(Texto + chr(10)));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    IRetorno := Daruma_FI_UsaComprovanteNaoFiscalVinculado(Pchar(Texto));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    IRetorno := ECF_UsaComprovanteNaoFiscalVinculado(Pchar(Texto));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    IRetorno := EPSON_NaoFiscal_Imprimir_Linha(Pchar(Texto));

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := OK;

  end;
end;

// -------------------------------------------------------------------------- //
// fechar o CNFV - Comprovante nao fiscal vinculado
function cECF_Fecha_CNFV(COD_ECF: integer): string;
begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    IRetorno := Bematech_FI_FechaComprovanteNaoFiscalVinculado();
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    IRetorno := Daruma_FI_FechaComprovanteNaoFiscalVinculado();
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    IRetorno := ECF_FechaComprovanteNaoFiscalVinculado();
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    if EPSON_CupomNaoFiscalAberto then
    begin
      IRetorno := EPSON_NaoFiscal_Fechar_CCD(True);

      if IRetorno <> 0 then
        Result := cECF_Analisa_Retorno(EPSON)
      else
        Result := OK;
    end
    else
      Result := ERRO;

  end;
end;

// -------------------------------------------------------------------------- //
// Sangria
function cECF_Sangria(COD_ECF: integer; Valor: Real): string;
var
  svalor: string;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    svalor := FormatFloat('#############0.00', Valor);
    IRetorno := Bematech_FI_Sangria(Pchar(svalor));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    svalor := FormatFloat('#############0.00', Valor);
    IRetorno := Daruma_FI_Sangria(Pchar(svalor));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    svalor := FormatFloat('#############0.00', Valor);
    IRetorno := ECF_Sangria(Pchar(svalor));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    svalor := FormatarValor(Valor, 2);

    IRetorno := EPSON_NaoFiscal_Sangria(Pchar(svalor), 2);

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := OK;

  end;
end;

// -------------------------------------------------------------------------- //
// Suprimento
function cECF_Suprimento(COD_ECF: integer; Valor: Real;
  forma_pgto: String): string;
var
  svalor: string;
begin

  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    svalor := FormatFloat('#############0.00', Valor);
    IRetorno := Bematech_FI_Suprimento(Pchar(svalor), Pchar(forma_pgto));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    svalor := FormatFloat('#############0.00', Valor);
    IRetorno := Daruma_FI_Suprimento(Pchar(svalor), Pchar(forma_pgto));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    svalor := FormatFloat('#############0.00', Valor);
    IRetorno := ECF_Suprimento(Pchar(svalor), Pchar(forma_pgto));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    svalor := FormatarValor(Valor, 2);

    IRetorno := EPSON_NaoFiscal_Fundo_Troco(Pchar(svalor), 2);

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := OK;

  end;
end;

// -------------------------------------------------------------------------- //
// recebimento nao fiscal
function cECF_Recebimento(COD_ECF: integer; Totalizador: string; Valor: Real;
  forma_pgto: string): string;
var
  svalor: string;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    svalor := FormatFloat('#############0.00', Valor);
    IRetorno := Bematech_FI_RecebimentoNaoFiscal(Pchar(Totalizador),
      Pchar(svalor), Pchar(forma_pgto));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    svalor := FormatFloat('#############0.00', Valor);
    IRetorno := Daruma_FI_RecebimentoNaoFiscal(Pchar(Totalizador),
      Pchar(svalor), Pchar(forma_pgto));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    svalor := FormatFloat('#############0.00', Valor);
    IRetorno := ECF_RecebimentoNaoFiscal(Pchar(Totalizador), Pchar(svalor),
      Pchar(forma_pgto));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    IRetorno := EPSON_NaoFiscal_Abrir_CCD(Pchar(forma_pgto),
      Pchar(FormatarValor(Valor, 2)), 2, '1');

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := OK;

  end;
end;

// -------------------------------------------------------------------------- //
// programar horario de verao
function cECF_Programa_Horario_Verao(COD_ECF: integer): string;
begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    IRetorno := Bematech_FI_ProgramaHorarioVerao();
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    IRetorno := Daruma_FI_ProgramaHorarioVerao();
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    IRetorno := ECF_ProgramaHorarioVerao();
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    IRetorno := EPSON_Config_Horario_Verao;

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := OK;

  end;
end;

// -------------------------------------------------------------------------- //
// programar aliquota
function cECF_Programa_Aliquota(COD_ECF: integer; aliquota: Real;
  ICMS_ou_ISS: STRING): string;
VAR
  iTipo: integer;
  sAliquota: string;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    if ICMS_ou_ISS = 'ICMS' then
      iTipo := 0;
    if ICMS_ou_ISS = 'ISS' then
      iTipo := 1;

    sAliquota := somenteNumero(FormatFloat('#0.00', aliquota));
    IRetorno := Bematech_FI_ProgramaAliquota(Pchar(sAliquota), iTipo);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    if ICMS_ou_ISS = 'ICMS' then
      iTipo := 0;
    if ICMS_ou_ISS = 'ISS' then
      iTipo := 1;

    sAliquota := somenteNumero(FormatFloat('#0.00', aliquota));
    IRetorno := Daruma_FI_ProgramaAliquota(Pchar(sAliquota), iTipo);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    if ICMS_ou_ISS = 'ICMS' then
      iTipo := 0;
    if ICMS_ou_ISS = 'ISS' then
      iTipo := 1;

    sAliquota := somenteNumero(FormatFloat('#0.00', aliquota));
    IRetorno := ECF_ProgramaAliquota(Pchar(sAliquota), iTipo);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    sAliquota := FormatarValor(aliquota, 2);

    if ICMS_ou_ISS = 'ICMS' then
      IRetorno := EPSON_Config_Aliquota(Pchar(sAliquota), False)
    else if ICMS_ou_ISS = 'ISS' then
      IRetorno := EPSON_Config_Aliquota(Pchar(sAliquota), True)
    else
      ShowMessage('Comando não executado!');

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := OK;

  end;
end;

// -------------------------------------------------------------------------- //
// abrir gaveta
function cECF_Abre_Gaveta(COD_ECF: integer): string;
begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    IRetorno := Bematech_FI_AcionaGaveta();
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    IRetorno := Daruma_FI_AcionaGaveta();
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    IRetorno := ECF_AcionaGaveta();
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    IRetorno := EPSON_Impressora_Abrir_Gaveta;

    if IRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := OK;
  end;
end;

// -------------------------------------------------------------------------- //
// status da gaveta
function cECF_Status_Gaveta(COD_ECF: integer): string;
var
  iEstado: integer;
begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    IRetorno := Bematech_FI_VerificaEstadoGaveta(iEstado);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := IntToStr(iEstado)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = DARUMA then
  begin
    IRetorno := Daruma_FI_VerificaEstadoGaveta(iEstado);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := IntToStr(iEstado)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = SWEDA then
  begin
    IRetorno := ECF_VerificaEstadoGaveta(iEstado);
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := IntToStr(iEstado)
    ELSE
      Result := ecfMSG;
  end
  else if COD_ECF = EPSON then
  begin
    if EPSON_GavetaAberta then
      Result := OK
    else
      Result := cECF_Analisa_Retorno(EPSON);

  end;
end;

// -------------------------------------------------------------------------- //
// programar totalizador nao fiscal
function cECF_Programa_Totalizador(COD_ECF: integer; Indice: integer;
  descricao: string): string;
begin
  Result := ERRO;
  if COD_ECF = BEMATECH then
  begin
    IRetorno := Bematech_FI_NomeiaTotalizadorNaoSujeitoIcms(Indice,
      Pchar(descricao));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end;
  if COD_ECF = DARUMA then
  begin
    IRetorno := Daruma_FI_NomeiaTotalizadorNaoSujeitoIcms(Indice,
      Pchar(descricao));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end;
  if COD_ECF = SWEDA then
  begin
    IRetorno := ECF_NomeiaTotalizadorNaoSujeitoIcms(Indice, Pchar(descricao));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end;
end;

// -------------------------------------------------------------------------- //
// programar forma de pagamento
function cECF_Programa_Forma_Pgto(COD_ECF: integer; forma_pgto: string;
  Vinculado: string): string;
var
  sVinc: string;
begin
  Result := ERRO;
  if COD_ECF = BEMATECH then
  begin
    if Vinculado = 'SIM' then
      sVinc := '1'
    else
      sVinc := '0';

    IRetorno := Bematech_FI_ProgramaFormaPagamentoMFD(Pchar(forma_pgto),
      Pchar(sVinc));

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end;

  if COD_ECF = DARUMA then
  begin
    IRetorno := Daruma_FI_ProgramaFormasPagamento(Pchar(forma_pgto));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end;

  if COD_ECF = SWEDA then
  begin
    IRetorno := ECF_ProgramaFormasPagamento(Pchar(forma_pgto));
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end;
end;

// -------------------------------------------------------------------------- //
// liberar porta serial
function cECF_Daruma_Libera_Porta(SIM_NAO: STRING): string;
begin
  IF SIM_NAO = 'SIM' THEN
  begin
    // QTDE de instancias serah permitido na porta utilizada pela daruma
    IRetorno := Daruma_Registry_AlteraRegistry('ControlePorta', '0');
    // bloquear a porta pela dll
    IRetorno := Daruma_Registry_AlteraRegistry('ThreadNoStartup', '0');
  END
  ELSE
  begin
    IRetorno := Daruma_Registry_AlteraRegistry('ControlePorta', '2');
    IRetorno := Daruma_Registry_AlteraRegistry('ThreadNoStartup', '0');
  end;
end;

// -------------------------------------------------------------------------- //
// programar z automatico
function cECF_Programa_Z_Automatico(COD_ECF: integer; SIM_NAO: string): string;
begin
  Result := ERRO;
  if COD_ECF = DARUMA then
  begin
    if SIM_NAO = 'SIM' then
    begin
      IRetorno := Daruma_Registry_ZAutomatica('1');
      IRetorno := Daruma_FI_CfgRedZAutomatico('1');
    end
    else
    begin
      IRetorno := Daruma_Registry_ZAutomatica('0');
      IRetorno := Daruma_FI_CfgRedZAutomatico('0');
    end;
    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end;

  if COD_ECF = SWEDA then
  begin
    if SIM_NAO = 'SIM' then
      IRetorno := ECF_ZAUTO('1')
    else
      IRetorno := ECF_ZAUTO('0');

    ecfMSG := cECF_Analisa_Retorno(COD_ECF);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(COD_ECF)
    ELSE
      Result := ecfMSG;
  end;
end;

// -------------------------------------------------------------------------- //
function cECF_Desliga_Janelas(COD_ECF: integer): string;
begin
  if COD_ECF = SWEDA then
  begin
    IRetorno := ECF_LigaDesligaJanelas('0', '0');
    Result := OK;
  end;
end;

// -------------------------------------------------------------------------- //
function EPSON_CupomNaoFiscalAberto: Boolean;
var
  sDados: String;
  ST4: String;
  iST4: integer;

begin
  SetLength(sDados, 56);
  Result := False;

  IRetorno := EPSON_Obter_Estado_Cupom(Pchar(sDados));

  if IRetorno <> 0 then
    cECF_Analisa_Retorno(EPSON);

  // CGT: Cupom Não FIscal Aberto
  if Copy(sDados, 1, 2) = '05' then
    Result := True;

end;

// -------------------------------------------------------------------------- //
function EPSON_CupomFiscalAberto: Boolean;
var
  sDados: String;

begin
  SetLength(sDados, 56);
  Result := False;

  IRetorno := EPSON_Obter_Estado_Cupom(Pchar(sDados));

  if IRetorno <> 0 then
    cECF_Analisa_Retorno(EPSON)
  else
    // CGT: Cupom FIscal Aberto
    if Copy(sDados, 1, 2) = '01' then
      Result := True;

end;

// -------------------------------------------------------------------------- //
function EPSON_ECFLigada: String;
var
  ST3: String;
  iST3: integer;
  sDados: String;
  I: integer;

begin
  Result := OK;

  for I := 1 to 20 do
    sDados := sDados + ' ';

  IRetorno := EPSON_Obter_Estado_Impressora(Pchar(sDados));

  ST3 := Copy(sDados, 9, 4);
  iST3 := StrToInt('$' + ST3);

  if (iST3 >= 32768) Then
    Result := 'Impressora Desligada!'
  else if IRetorno <> 0 then
    Result := cECF_Analisa_Retorno(EPSON);

end;

// -------------------------------------------------------------------------- //
function EPSON_NumeroSerie: String;
var
  sDados: String;

begin
  SetLength(sDados, 108);

  IRetorno := EPSON_Obter_Dados_Impressora(Pchar(sDados));

  if IRetorno = 0 then
    Result := Copy(sDados, 1, 20)
  else
    Result := cECF_Analisa_Retorno(EPSON);

end;

// -------------------------------------------------------------------------- //
function EPSON_NumeroCaixa: String;
var
  sDados: String;

begin
  SetLength(sDados, 8);

  IRetorno := EPSON_Obter_Numero_ECF_Loja(Pchar(sDados));

  if IRetorno = 0 then
    Result := Copy(sDados, 1, 3)
  else
    Result := cECF_Analisa_Retorno(EPSON);

end;

// -------------------------------------------------------------------------- //
function EPSON_VersaoSoftwareBasico: String;
var
  sVersao: array [0 .. 9] of char;
  sData: array [0 .. 9] of char;
  sHora: array [0 .. 7] of char;

begin
  IRetorno := EPSON_Obter_Versao_SWBasicoEX(sVersao, sData, sHora);

  if IRetorno = 0 then
    Result := sVersao
  else
    Result := cECF_Analisa_Retorno(EPSON);
end;

// -------------------------------------------------------------------------- //
function EPSON_DataHoraSoftwareBasico: String;
var
  sVersao: array [0 .. 9] of char;
  sData: array [0 .. 9] of char;
  sHora: array [0 .. 7] of char;

begin
  // mizaelrocha2014@outlook.com
  // iRetorno := EPSON_Obter_Versao_SWBasicoEX(sVersao, sData, sHora);
  //
  // if iRetorno = 0 then
  // Result := sData+sHora
  // else
  // Result := cECF_Analisa_Retorno(EPSON);
end;

// -------------------------------------------------------------------------- //
function EPSON_GavetaAberta: Boolean;
var
  ST3: String;
  iST3: integer;
  sDados: String;
  I: integer;
  sMensagem: String;

begin
  Result := False;

  for I := 1 to 20 do
    sDados := sDados + ' ';

  IRetorno := EPSON_Obter_Estado_Impressora(Pchar(sDados));

  if (IRetorno = 0) then
  begin
    ST3 := Copy(sDados, 9, 4);
    iST3 := StrToInt('$' + ST3);

    if (iST3 >= 32768) Then
      iST3 := iST3 - 32768;

    if (iST3 >= 16384) Then
      iST3 := iST3 - 16384;

    if (iST3 >= 8192) Then
      iST3 := iST3 - 8192;

    if (iST3 >= 4096) Then
      Result := True;

  end;
end;

// -------------------------------------------------------------------------- //
function cECF_VerificarRelatoriosGerenciais(COD_ECF: integer): String;
var
  sRet: String;
  I: integer;

begin
  case COD_ECF of
    BEMATECH:
      Result := ''; // Implementar

    DARUMA:
      begin
        // Result := DARUMA_FIMFD_VerificaRelatoriosGerenciais()
      end;

    SWEDA:
      Result := ''; // Implementar
    EPSON:
      begin
        SetLength(sRet, 421);
        IRetorno := EPSON_Obter_Tabela_Relatorios_Gerenciais(Pchar(sRet));

        if IRetorno = 0 then
        begin
          Result := OK;
          I := 1;

          while sRet <> '' do
          begin
            // GUIO: Indice do Relatório
            aRelatoriosGerenciais[I][1] := Copy(sRet, 1, 2);
            aRelatoriosGerenciais[I][2] := Copy(sRet, 3, 15);
            INC(I);

            Delete(sRet, 1, 21);

            if trim(Copy(sRet, 3, 15)) = '' then
              break;
          end;
        end
        else
          Result := cECF_Analisa_Retorno(EPSON);

      end;
  end;
end;

end.
