unit modulo;

interface

uses
  SysUtils, Classes,
  IniFiles {Unit de arquivo ini} ,
  forms, DB, MemDS, DBAccess, IBC, ACBrBase, ACBrBAL, AdvMenus,
  AdvMenuStylers, ACBrValidador, VirtualTable, Dialogs,
  ACBrNFe, pcnConversao,
  ACBrNFeDANFEClass, ACBrNFeDANFERave, ACBrUtil,
  pcnNFeW, pcnNFeRTXT, pcnAuxiliar, ACBrDFeUtil,
  XMLIntf, XMLDoc, ACBrNFeDANFERaveCB, ACBrNFeDANFEFR, ACBrEAD,
  ZAbstractConnection, ZConnection,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZStoredProcedure,
  ACBrNFeDANFEFRDM;

type
  TfrmModulo = class(TDataModule)
    conexao: TIBCConnection;
    query: TIBCQuery;
    estilo_menu: TAdvMenuOfficeStyler;
    spCupom: TIBCStoredProc;
    spCupom_Crediario: TIBCStoredProc;
    spCupom_Forma: TIBCStoredProc;
    spCupom_Consumidor: TIBCStoredProc;
    spCodigo_Global: TIBCStoredProc;
    docValidador: TACBrValidador;
    tbForma_Pgto: TVirtualTable;
    tbForma_PgtoNome: TStringField;
    tbForma_PgtoValor_Acumulado: TFloatField;
    tbForma_PgtoValor_Ultimo_Cupom: TFloatField;
    tbForma_Pgtoid: TIntegerField;
    spNao_Fiscal: TIBCStoredProc;
    spReducaoZ: TIBCStoredProc;
    spReducaoZ_Total_Parcial: TIBCStoredProc;
    tbAliquota: TVirtualTable;
    tbAliquotaCodigo: TStringField;
    tbAliquotaAliquota: TFloatField;
    Conexao_Servidor: TIBCConnection;
    query_servidor: TIBCQuery;
    spCupom_Temp: TIBCStoredProc;
    spCupom_Temp_delete: TIBCStoredProc;
    spCupom_Temp_Edit: TIBCStoredProc;
    qrtotalizador: TIBCQuery;
    qrMestre: TIBCQuery;
    Dlg_arquivo: TOpenDialog;
    qrcliente: TIBCQuery;
    qrcontasreceber: TIBCQuery;
    qrconfig: TIBCQuery;
    qrcaixa_operador: TIBCQuery;
    qrcaixa_mov: TIBCQuery;
    qrbanco: TIBCQuery;
    qrcontacorrente: TIBCQuery;
    qrcontacorrenteCONTA: TStringField;
    qrcontacorrentebanco: TStringField;
    qrcontacorrenteAGENCIA: TStringField;
    qrcontacorrenteTITULAR: TStringField;
    qrcontacorrenteCODIGO: TStringField;
    qrcontacorrenteCODBANCO: TStringField;
    qrcontacorrenteSALDO: TFloatField;
    qrcontacorrenteNOME_AGENCIA: TStringField;
    qrlancamento_conta: TIBCQuery;
    spDav_Codigo: TIBCStoredProc;
    spDAV: TIBCStoredProc;
    query_servidor2: TIBCQuery;
    qrfilial: TIBCQuery;
    qrtransportador: TIBCQuery;
    qrcfop: TIBCQuery;
    qrfiscal_modelo: TIBCQuery;
    qrgrupo: TIBCQuery;
    qrsubgrupo: TIBCQuery;
    qrmarca: TIBCQuery;
    qrfornecedor: TIBCQuery;
    qrproduto: TIBCQuery;
    qrproduto_mov: TIBCQuery;
    qrgrade_produto: TIBCQuery;
    St_Abastecimento_codigo: TIBCStoredProc;
    St_Abastecimento: TIBCStoredProc;
    st_bico_movimento: TIBCStoredProc;
    spCupom_Item_Temp: TIBCStoredProc;
    spCupom_Item: TIBCStoredProc;
    Qremitente: TIBCQuery;
    QremitenteCODIGO: TStringField;
    QremitenteNOME: TStringField;
    QremitenteFANTASIA: TStringField;
    QremitenteENDERECO: TStringField;
    QremitenteBAIRRO: TStringField;
    QremitenteCIDADE: TStringField;
    QremitenteUF: TStringField;
    QremitenteCEP: TStringField;
    QremitenteTELEFONE: TStringField;
    QremitenteCNPJ: TStringField;
    QremitenteIE: TStringField;
    QremitenteEMAIL: TStringField;
    QremitenteHOMEPAGE: TStringField;
    QremitenteRESPONSAVEL: TStringField;
    QremitenteCELULAR: TStringField;
    QremitenteLOGO: TBlobField;
    QremitenteFAX: TStringField;
    QremitenteNUMERO: TStringField;
    QremitenteCOMPLEMENTO: TStringField;
    QremitenteCONTRIBUINTE_IPI: TStringField;
    QremitenteSUBSTITUTO_TRIBUTARIO: TStringField;
    QremitenteCOMENTARIOS: TStringField;
    QremitenteDATAHORA_INICIAL: TDateTimeField;
    QremitenteDATAHORA_FINAL: TDateTimeField;
    QremitenteDATA_INVENTARIO: TDateTimeField;
    QremitenteESTOQUE: TFloatField;
    QremitenteVALOR: TFloatField;
    QremitenteCONHECIMENTO: TIntegerField;
    QremitenteCPF: TStringField;
    QremitenteRG: TStringField;
    QremitenteDIA_VENCIMENTO_CHAVE: TStringField;
    QremitenteINSC_MUNICIPAL: TStringField;
    QremitenteDATA_ABERTURA: TDateTimeField;
    QremitenteCOD_MUNICIPIO_IBGE: TStringField;
    QremitenteIBGE: TStringField;
    ACBRNFCe: TACBrNFe;
    ACBRDANFENFCe: TACBrNFeDANFEFR;
    ACBrEAD1: TACBrEAD;
    conBASE: TZConnection;
    qradic_mestre_odl: TZQuery;
    spNFCE_Insert: TIBCStoredProc;
    qradic_mestre: TIBCQuery;
    Balancas: TACBrBAL;
    //procedure ACBrBAL1LePeso(Peso: Double; Resposta: String);
    procedure DataModuleCreate(Sender: TObject);
    procedure ACBRNFCeStatusChange(Sender: TObject);
    procedure BalancasLePeso(Peso: Double; Resposta: AnsiString);
  private
  FRespostaList: TStringList;
    { Private declarations }
  public
    { Public declarations }
    procedure LerConfiguracao;
    function Iif(Condicao: Boolean; Verdadeiro, Falso: Variant): Variant;
    function GetSiteConsulta(UF: string; Ambiente: TpcnTipoAmbiente): string;
    function StrToHex(const S: String): String;
    function codifica(TABELA: string): string;

  end;

const
  sPAF_Versao_ER: string = '0103';

var
  frmModulo: TfrmModulo;
  sConfiguracoes: string;
  emitente_uf, emitente_nome, emitente_fantasia, emitente_endereco,
    emitente_cidade, emitente_cep, emitente_cnpj, emitente_telefone,
    emitente_ie: string;

  resultado_pesquisa1, resultado_pesquisa2, resultado_pesquisa3,
    resultado_pesquisa4, resultado_pesquisa5, resultado_pesquisa6,
    resultado_pesquisa7, resultado_pesquisa8: string;

  resultado_valor1, resultado_valor2: real;

  parametro_pesquisa: string;

  StreamMemo: TMemoryStream;
  edtNumSerie: string;
  edtProxyHost: string;
  edtProxyPorta: string;
  edtProxyUser: string;
  edtProxySenha: string;
  edtLogoMarca: string;
  edtEmitCNPJ: string;
  edtEmitIE: string;
  edtEmitRazao: string;
  edtEmitFantasia: string;
  edtEmitFone: string;
  edtEmitCEP: string;
  edtEmailAssunto: string;
  edtSmtpPass: string;
  edtSmtpUser: string;
  edtSmtpPort: string;
  edtSmtpHost: string;
  edtEmitUF: string;
  edtEmitCidade: string;
  edtEmitCodCidade: string;
  edtEmitBairro: string;
  edtEmitLogradouro: string;
  edtEmitNumero: string;
  edtEmitComp: string;
  edtIdToken: string;
  edtTokenNumero: string;
  edtNatOperacao: string;

implementation

uses funcoes, principal, ufrmStatus;

{$R *.dfm}

procedure TfrmModulo.BalancasLePeso(Peso: Double; Resposta: AnsiString);
var valid : integer;  //darlon santos
begin
   //darlon santos
   // Objeto para armazenar as leituras
    if (not Assigned(FRespostaList)) then
      FRespostaList := TStringList.Create;
     if FRespostaList.Count > 0 then
      FRespostaList.Add(StringOfChar('-', 80));
  // Buscar o Peso nas balancas PDV's
  if Peso > 0 then
  begin
    // Leitura OK
    sBal_Resposta := 'Peso Estável';
    rBal_peso := Peso;
  end
  else
  begin
    // Leitura retornou ERRO
  valid := Trunc(Balancas.UltimoPesoLido);
    case Trunc(Balancas.UltimoPesoLido) of
      0:
        sBal_Resposta := 'Coloque o produto sobre a Balança!';
      -1:
        sBal_Resposta := 'Peso Instavel!';
      -2:
        sBal_Resposta := 'Peso Negativo!';
      -10:
        sBal_Resposta := 'Sobrepeso!';
    end;

  end;

end;

procedure TfrmModulo.ACBRNFCeStatusChange(Sender: TObject);
begin
  case ACBRNFCe.Status of
    stIdle:
      begin
        if (frmStatus <> nil) then
          frmStatus.Hide;
      end;
    stNFeStatusServico:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Verificando Status do servico...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFeRecepcao:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando dados da NFCe...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNfeRetRecepcao:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Recebendo dados da NFCe...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNfeConsulta:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Consultando NFCe...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNfeCancelamento:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando cancelamento de NFCe...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNfeInutilizacao:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando pedido de Inutilização...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFeRecibo:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Consultando Recibo de Lote...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFeCadastro:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Consultando Cadastro...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFeEnvDPEC:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando DPEC...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFeConsultaDPEC:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Consultando DPEC...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFeEmail:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando Email...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFeCCe:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando Carta de Correção...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFeEvento:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando Evento...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
  end;
  Application.ProcessMessages;
end;

//procedure TfrmModulo.ACBrBAL1LePeso(Peso: Double; Resposta: String);
//var valid : integer;  //darlon santos
//begin
//   //darlon santos
//   // Objeto para armazenar as leituras
//    if (not Assigned(FRespostaList)) then
//      FRespostaList := TStringList.Create;
//     if FRespostaList.Count > 0 then
//      FRespostaList.Add(StringOfChar('-', 80));
//  // Buscar o Peso nas balancas PDV's
//  if Peso > 0 then
//  begin
//    // Leitura OK
//    sBal_Resposta := 'Peso Estável';
//    rBal_peso := Peso;
//  end
//  else
//  begin
//    // Leitura retornou ERRO
//  valid := Trunc(Balancas.UltimoPesoLido);
//    case Trunc(Balancas.UltimoPesoLido) of
//      0:
//        sBal_Resposta := 'Coloque o produto sobre a Balança!';
//      -1:
//        sBal_Resposta := 'Peso Instavel!';
//      -2:
//        sBal_Resposta := 'Peso Negativo!';
//      -10:
//        sBal_Resposta := 'Sobrepeso!';
//    end;
//
//  end;
//end;

function TfrmModulo.codifica(TABELA: string): string;
begin
 //DARLON SANTOS 29/10/2017
  qradic_mestre.open;
  qradic_mestre.Refresh;
  if qradic_mestre.Locate('codigo', TABELA, [loCaseInsensitive]) then
  begin
     if qradic_mestre.FIELDBYNAME('sequencias').AsInteger < 1 then
    begin
      result := '000001';
      qradic_mestre.Edit;
      qradic_mestre.FIELDBYNAME('sequencias').AsInteger := 2;
      qradic_mestre.Post;
    end
    else
    begin
      result := Zerar(IntToStr(frmModulo.qradic_mestre.FIELDBYNAME('sequencias')
        .AsInteger), 6);
      qradic_mestre.Edit;
      qradic_mestre.FIELDBYNAME('sequencias').AsInteger :=
      qradic_mestre.FIELDBYNAME('sequencias').AsInteger + 1;
      qradic_mestre.Post;

    end;
    conexao.Commit;
  end
  else
  begin
    showmessage('Não foi possível concluir com a operação!' + #13 +
      'Erro: Código de sequência não encontrado na tabela de códigos.');
    conBASE.Rollback;
  end;

end;

procedure TfrmModulo.DataModuleCreate(Sender: TObject);
begin
  Qremitente.open;
  emitente_nome := Qremitente.FIELDBYNAME('nome').asstring;
  emitente_fantasia := Qremitente.FIELDBYNAME('fantasia').asstring;
  emitente_endereco := Qremitente.FIELDBYNAME('endereco').asstring + ' - ' +
    Qremitente.FIELDBYNAME('bairro').asstring;
  emitente_cidade := Qremitente.FIELDBYNAME('cidade').asstring + '/' +
    Qremitente.FIELDBYNAME('uf').asstring;
  emitente_cep := Qremitente.FIELDBYNAME('cep').asstring;
  emitente_telefone := Qremitente.FIELDBYNAME('telefone').asstring;
  emitente_cnpj := Qremitente.FIELDBYNAME('cnpj').asstring;
  emitente_ie := Qremitente.FIELDBYNAME('ie').asstring;
  emitente_uf := Qremitente.FIELDBYNAME('uf').asstring;
  Qremitente.Close;
end;

function TfrmModulo.GetSiteConsulta(UF: string;
  Ambiente: TpcnTipoAmbiente): string;
const
  site_uf_prod: array [0 .. 6] of string =
    ('http://www.sefaznet.ac.gov.br/nfe/NFe.jsp?opc=3',
    'http://sistemas.sefaz.am.gov.br/nfceweb/consultarNFCe.jsp',
    'http://www.nfce.sefaz.ma.gov.br/portal/consultarNFCe.jsp',
    'http://www.sefaz.mt.gov.br/nfe/portal/consultanfce',
    'http://www.nfe.rn.gov.br/portal/consultarNFCe.jsp',
    'https://www.sefaz.rs.gov.br/NFCE/NFCE-COM.aspx',
    'http://www.nfe.se.gov.br/portal/consultarNFCe.jsp');
  site_uf_hom: array [0 .. 6] of string = ('http://hml.sefaznet.ac.gov.br',
    'http://homnfe.sefaz.am.gov.br/nfceweb/consultarNFCe.jsp',
    'http://www.hom.nfce.sefaz.ma.gov.br/portal/consultarNFCe.jsp',
    'http://homologacao.sefaz.mt.gov.br/nfce/consultanfce',
    'http://www.hom.nfe.rn.gov.br/portal/consultarNFCe.jsp',
    'https://www.sefaz.rs.gov.br/NFCE/NFCE-COM.aspx',
    'http://www.hom.nfe.se.gov.br/portal/consultarNFCe.jsp');
begin
  case Ambiente of
    taProducao:
      begin
        if UF = 'AC' then
          result := site_uf_prod[0]
        else if UF = 'AM' then
          result := site_uf_prod[1]
        else if UF = 'MA' then
          result := site_uf_prod[2]
        else if UF = 'MT' then
          result := site_uf_prod[3]
        else if UF = 'RN' then
          result := site_uf_prod[4]
        else if UF = 'RS' then
          result := site_uf_prod[5]
        else if UF = 'SE' then
          result := site_uf_prod[6]
      end;
    taHomologacao:
      begin
        if UF = 'AC' then
          result := site_uf_hom[0]
        else if UF = 'AM' then
          result := site_uf_hom[1]
        else if UF = 'MA' then
          result := site_uf_hom[2]
        else if UF = 'MT' then
          result := site_uf_hom[3]
        else if UF = 'RN' then
          result := site_uf_hom[4]
        else if UF = 'RS' then
          result := site_uf_hom[5]
        else if UF = 'SE' then
          result := site_uf_hom[6]
      end;
  end;

end;

function TfrmModulo.Iif(Condicao: Boolean; Verdadeiro, Falso: Variant): Variant;
begin
  if Condicao then
    result := Verdadeiro
  else
    result := Falso;
end;

procedure TfrmModulo.LerConfiguracao;
Var
  IniFile: String;
  Ini: TIniFile;
  Ok: Boolean;

begin

  qrfilial.open;
  IniFile := sConfiguracoes;

  Ini := TIniFile.Create(IniFile);
  try
    edtNumSerie := Ini.ReadString('Certificado', 'NumSerie', '');
    edtIdToken := Ini.ReadString('Certificado', 'IDToken', '');
    edtTokenNumero := Ini.ReadString('Certificado', 'TokenNumero', '');

    ACBRNFCe.Configuracoes.Certificados.NumeroSerie := edtNumSerie;
    edtNumSerie := ACBRNFCe.Configuracoes.Certificados.NumeroSerie;

    ACBRNFCe.Configuracoes.WebServices.UF := qrfilial.FIELDBYNAME('UF')
      .asstring;
       {DEPOIS ALTERAR PARA MODO DE PRODUÇÃO}
    if Ini.ReadInteger('WebService', 'Ambiente', 0) = 0 then
     BEGIN
     ACBRNFCe.Configuracoes.WebServices.Ambiente := taProducao;
     END
    else
     BEGIN
      ACBRNFCe.Configuracoes.WebServices.Ambiente := taHomologacao;
     END;


    ACBRDANFENFCe.FastFile := 'C:\Softlogus\PDV\DANFeNFCe.fr3';

    edtProxyHost := Ini.ReadString('Proxy', 'Host', '');
    edtProxyPorta := Ini.ReadString('Proxy', 'Porta', '');
    edtProxyUser := Ini.ReadString('Proxy', 'User', '');
    edtProxySenha := Ini.ReadString('Proxy', 'Pass', '');
    ACBRNFCe.Configuracoes.WebServices.ProxyHost := edtProxyHost;
    ACBRNFCe.Configuracoes.WebServices.ProxyPort := edtProxyPorta;
    ACBRNFCe.Configuracoes.WebServices.ProxyUser := edtProxyUser;
    ACBRNFCe.Configuracoes.WebServices.ProxyPass := edtProxySenha;
    ACBRNFCe.Configuracoes.Geral.PathSchemas := 'C:\Softlogus\PDV\Schemas';
    edtLogoMarca := Ini.ReadString('Geral', 'LogoMarca', '');

    if ACBRNFCe.DANFE <> nil then
    begin
      ACBRNFCe.DANFE.TipoDANFE := tiNFCe;
      ACBRNFCe.DANFE.Logo := edtLogoMarca;
    end;

    edtEmitCNPJ := Ini.ReadString('Emitente', 'CNPJ', '');
    edtEmitIE := Ini.ReadString('Emitente', 'IE', '');
    edtEmitRazao := Ini.ReadString('Emitente', 'RazaoSocial', '');
    edtEmitFantasia := Ini.ReadString('Emitente', 'Fantasia', '');
    edtEmitFone := Ini.ReadString('Emitente', 'Fone', '');
    edtEmitCEP := Ini.ReadString('Emitente', 'CEP', '');
    edtEmitLogradouro := Ini.ReadString('Emitente', 'Logradouro', '');
    edtEmitNumero := Ini.ReadString('Emitente', 'Numero', '');
    edtEmitComp := Ini.ReadString('Emitente', 'Complemento', '');
    edtEmitBairro := Ini.ReadString('Emitente', 'Bairro', '');
    edtEmitCodCidade := Ini.ReadString('Emitente', 'CodCidade', '');
    edtEmitCidade := Ini.ReadString('Emitente', 'Cidade', '');
    edtEmitUF := Ini.ReadString('Emitente', 'UF', '');

    edtSmtpHost := Ini.ReadString('Email', 'Host', '');
    edtSmtpPort := Ini.ReadString('Email', 'Port', '');
    edtSmtpUser := Ini.ReadString('Email', 'User', '');
    edtSmtpPass := Ini.ReadString('Email', 'Pass', '');
    edtEmailAssunto := Ini.ReadString('Email', 'Assunto', '');

    StreamMemo := TMemoryStream.Create;
    Ini.ReadBinaryStream('Email', 'Mensagem', StreamMemo);
    StreamMemo.Free;
  finally
    Ini.Free;
  end;

end;

function TfrmModulo.StrToHex(const S: String): String;
const
  HexDigits: array [0 .. 15] of Char = '0123456789ABCDEF';
var
  i: Integer;
  P1: PChar;
  P2: PChar;
  B: Byte;
begin

  SetLength(result, length(S) * 2);
  P1 := @S[1];
  P2 := @result[1];

  for i := 1 to length(S) do
  begin
    B := Byte(P1^);
    P2^ := HexDigits[B shr 4];
    Inc(P2);
    P2^ := HexDigits[B and $F];
    Inc(P1);
    Inc(P2);
  end;

end;

end.

  Nome: String[20]; Valor_Acumulado: real; Valor_Ultimo_Cupom: real;
