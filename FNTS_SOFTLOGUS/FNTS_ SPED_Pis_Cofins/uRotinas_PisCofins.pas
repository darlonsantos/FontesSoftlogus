unit uRotinas_PisCofins;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, ActnList, Buttons, StdCtrls, CheckLst,
  ACBrSpedFiscal, ACBrEPCBlocos, ACBrUtil, ACBrTXTClass, SqlExpr, DB,
  DBClient, ACBrSpedPisCofins, uDmAcBr, uLibrary;

type
  TSPED_PC = class(TObject)
  protected
    { Protected declarations }
  private
    { Private declarations }
    CdsClientes : TClientDataSet;
    function VerificaMovimentoPisCofins(pIDEMpresa:Integer;pDatai,pDataf:TDateTime):Boolean;
    function VerificaECFMovimentoPisCofins(pIDEMpresa:Integer;pDatai,pDataf:TDateTime):Boolean;
    function VerificaNotaDevolucao(fCodigo: Integer;pCNPJEmpresa:String): Boolean;
    function VerificaSTProdutosNota(pID, pES: Integer): Boolean;
    function VerificaIPIProdutosNota(pID, pES: Integer): Boolean;
    procedure CriaPreparaTabelaClientes;

  public
    { Public declarations }
    sLbMensagem,sLBBlocos : TLabel;
    sProgressBar1,sProgressBar2 : TProgressBar;
    procedure DadosBlocoPC_0(CdsEmpresa,CdsContabil:TClientDataSet;
                             Datai,Dataf:TDateTime;
                             pCOD_VERPC,pSitEspecial,pIndicadorPC,pCOD_FIN:Integer;
                             pNumeroRecAnterior,CodEmp:String;
                             pIncidencia,pAproCred,pContrApur,pEscrApur : Integer);
    procedure DadosBlocoPC_A(CdsEmpresa:TClientDataSet;
                             pDatai,pDataf:TDateTime;
                             CodEmp:Integer);
    procedure DadosBlocoPC_C(CdsEmpresa:TClientDataSet;
                             pDatai,pDataf:TDateTime;
                             CodEmp:Integer;
                             VerificaSTIPI:Boolean);
    procedure DadosBlocoPC_D;
    procedure DadosBlocoPC_F(CdsEmpresa:TClientDataSet;
                             pDatai,pDataf:TDateTime;
                             CodEmp:Integer);
    procedure DadosBlocoPC_M;
    procedure DadosBlocoPC_1;
    procedure DadosBlocoPC_9;
    constructor CrieInstancia;
    destructor DestruaInstancia;
  end;


implementation

uses ACBrEPCBloco_0, ACBrEPCBloco_C, ACBrEPCBloco_C_Class,
  ACBrEPCBloco_A_Class, ACBrEPCBloco_A;

constructor TSPED_PC.CrieInstancia;
begin

end;

procedure TSPED_PC.DadosBlocoPC_0(CdsEmpresa,CdsContabil:TClientDataSet;Datai,
  Dataf:TDateTime;pCOD_VERPC,pSitEspecial,pIndicadorPC,pCOD_FIN:Integer;
  pNumeroRecAnterior,CodEmp:String;pIncidencia,pAproCred,pContrApur,pEscrApur : Integer);
var aCodVersao : TACBrVersaoLeiaute;
    aSitEspecial : TACBrIndicadorSituacaoEspecial;
    aPerfil : TACBrPerfil;
    aIndicador : TACBrAtividade;
    aCodFin : TACBrTipoEscrituracao;
    aControle : Boolean;
    Query : TSQLQuery;
begin
   CriaPreparaTabelaClientes;
   Query := TSqlQuery.Create(nil);
   Query.SQLConnection := ConexaoDados;
   // captura versão
   case pCOD_VERPC of
     0 : aCodVersao := vlVersao100;
     1 : aCodVersao := vlVersao101;
   end;
   // captura Situação Especial
   case pSitEspecial of
     0 : aSitEspecial := indSitAbertura;      // 0 - Abertura
     1 : aSitEspecial := indSitCisao;         // 1 - Cisão
     2 : aSitEspecial := indSitFusao;         // 2 - Fusão
     3 : aSitEspecial := indSitIncorporacao;  // 3 - Incorporação
     4 : aSitEspecial := indSitEncerramento;  // 4 - Encerramento
     5 : aSitEspecial := indNenhum;           // 5 - Vazio
   end;
   // captura indicador de movimento
   case pIndicadorPC of
     0 : aIndicador := atIndustrial;          // 0 – Industrial ou equiparado a industrial
     1 : aIndicador := atPrestadorDeServicos; // 1 - Prestador de serviços
     2 : aIndicador := atComercio;            // 2 - Atividade de comércio
     3 : aIndicador := atFinanceira;          // 3 - Atividade financeira
     4 : aIndicador := atImobiliaria;         // 4 - Atividade imobiliaria
     5 : aIndicador := atOutros;              // 9 - Outros
   end;
   // captura codigo da finalidade
   case pCOD_FIN of
     0 : aCodFin := tpEscrOriginal;
     1 : aCodFin := tpEscrRetificadora;
   end;
   // Alimenta o componente com informações para gerar todos os registros do
   // Bloco 0.
   with DmAcBr.ACBrSPEDPisCofins1.Bloco_0 do
   begin
      // Dados da Empresa
      with Registro0000New do
      begin
         COD_VER          := aCodVersao;
         TIPO_ESCRIT      := tpEscrOriginal;
         IND_SIT_ESP      := aSitEspecial;
         NUM_REC_ANTERIOR := pNumeroRecAnterior;
         DT_INI           := Datai;
         DT_FIN           := Dataf;
         NOME             := Trim(CdsEmpresa.FieldByName('DS_EMPRESA').AsString);
         CNPJ             := FiltraNumero(CdsEmpresa.FieldByName('REGISTRO_1').AsString);
         UF               := CdsEmpresa.FieldByName('UF').AsString;
         if CdsEmpresa.FieldByName('CODIGO_IBGE').AsString <> '' then
            COD_MUN    := StrToInt(CdsEmpresa.FieldByName('CODIGO_IBGE').AsString)
         else
            COD_MUN    := 0;
         SUFRAMA          := CdsEmpresa.FieldByName('COD_SUFRAMA').AsString;
         IND_NAT_PJ       := indNatPJSocEmpresariaGeral;
         IND_ATIV         := indAtivIndustrial;
      end;
      with Registro0001New do
      begin
         IND_MOV := imComDados;
         // FILHO - Dados do contador.
         with Registro0100New do
         begin
            NOME       := Trim(CdsContabil.FieldByName('DS_CONTADOR').AsString);
            CPF        := Trim(CdsContabil.FieldByName('CPF_CONTADOR').AsString); // Deve ser uma informação valida
            CRC        := Trim(CdsContabil.FieldByName('CRC_CONTADOR').AsString);
            CNPJ       := Trim(CdsContabil.FieldByName('REGISTRO_1').AsString);
            CEP        := Trim(FiltraNumero(CdsContabil.FieldByName('CEP').AsString));
            ENDERECO   := Trim(CdsContabil.FieldByName('ENDERECO').AsString);
            NUM        := Trim(CdsContabil.FieldByName('NUMERO').AsString);
            COMPL      := '';
            BAIRRO     := Trim(CdsContabil.FieldByName('BAIRRO').AsString);
            FONE       := Trim(FiltraNumero(CdsContabil.FieldByName('TEL_1').AsString));
            FAX        := Trim(FiltraNumero(CdsContabil.FieldByName('TEL_2').AsString));
            EMAIL      := Trim(CdsContabil.FieldByName('E_MAIL').AsString);
            if CdsContabil.FieldByName('CODIGO_IBGE').AsString <> '' then
               COD_MUN    := StrToInt(CdsContabil.FieldByName('CODIGO_IBGE').AsString)
            else
               COD_MUN    := 0;
         end;
         // FILHO - Regime de Apuração
         with Registro0110New do
         begin
           case pIncidencia of
             0: COD_INC_TRIB := codEscrOpIncNaoCumulativo;
             1: COD_INC_TRIB := codEscrOpIncCumulativo;
             2: COD_INC_TRIB := codEscrOpIncAmbos;
           end;
           case pAproCred of
             0: IND_APRO_CRED := indMetodoApropriacaoDireta;
             1: IND_APRO_CRED := indMetodoDeRateioProporcional;
           end;
           case pContrApur of
             0: COD_TIPO_CONT := codIndTipoConExclAliqBasica;
             1: COD_TIPO_CONT := codIndTipoAliqEspecificas;
           end;
           case pEscrApur of
             0: IND_REG_CUM := codRegimeCaixa;
             1: IND_REG_CUM := codRegimeCompetEscritConsolidada;
             2: IND_REG_CUM := codRegimeCompetEscritDetalhada;
           end;
         end;
         //
         CdsEmpresa.First;
         while not CdsEmpresa.Eof do
         begin
//           if VerificaMovimentoPisCofins(CdsEmpresa.FieldByName('cd_empresa').AsInteger,Datai,Dataf) then
           begin
             with Registro0140New do
             begin
               COD_EST := IntToStrZero(CdsEmpresa.FieldByName('CD_EMPRESA').AsInteger,6);
               NOME    := Trim(CdsEmpresa.FieldByName('DS_EMPRESA').AsString);
               CNPJ    := FiltraNumero(CdsEmpresa.FieldByName('REGISTRO_1').AsString);
               UF      := CdsEmpresa.FieldByName('UF').AsString;
               IE      := Trim(CdsEmpresa.FieldByName('REGISTRO_2').AsString);
               if CdsEmpresa.FieldByName('CODIGO_IBGE').AsString <> '' then
                  COD_MUN    := StrToInt(CdsEmpresa.FieldByName('CODIGO_IBGE').AsString)
               else
                  COD_MUN    := 0;
               IM         := CdsEmpresa.FieldByName('INSC_MUNICIPAL').AsString;
               SUFRAMA    := CdsEmpresa.FieldByName('COD_SUFRAMA').AsString;
               // registro 0150 clientes
               Query.Close;
               Query.SQL.Clear;
               Query.SQL.Add('select cliente.cd_cliente,cliente.ds_cliente,cliente.pais,');
               Query.SQL.Add('cliente.registro_1,cliente.categoria,cliente.registro_2,');
               Query.SQL.Add('cidade.codigo_ibge,cliente.endereco,cliente.numero,');
               Query.SQL.Add('cliente.bairro,cliente.uf,nfemsg.STATUS_NFE,cliente.codigo_pais from notasai');
               Query.SQL.Add('left outer join cliente on cliente.cd_cliente = notasai.cd_cliente');
               Query.SQL.Add('left outer join cidade on cliente.cd_cidade = cidade.cd_cidade');
               Query.SQL.Add('left outer join nfemsg on nfemsg.cd_saida = notasai.cd_saida');
               Query.SQL.Add('left outer join natureza on notasai.cd_natureza = natureza.cd_natureza');
               Query.SQL.Add('where notasai.dt_saida between :pDatai and :pDataf');
//               Query.SQL.Add('and (nfemsg.STATUS_NFE = '+QuotedStr('100')+' or nfemsg.STATUS_NFE is null )');
               Query.SQL.Add('and notasai.nota_cancelada = 0');
               Query.SQL.Add('and notasai.cd_empresa = :pEmpresa');
               Query.SQL.Add('and notasai.num_doc is not null');
               Query.SQL.Add('and natureza.apropriar_icms_ativo_permanente = 0');
               Query.SQL.Add('and natureza.tributar_icms = -1');
//               Query.SQL.Add('and (notasai.val_pis > 0 or notasai.val_cofins > 0)');
               Query.SQL.Add('group by cliente.cd_cliente,cliente.ds_cliente,cliente.pais,');
               Query.SQL.Add('cliente.registro_1,cliente.categoria,cliente.registro_2,');
               Query.SQL.Add('cidade.codigo_ibge,cliente.endereco,cliente.numero,');
               Query.SQL.Add('cliente.bairro,cliente.uf,nfemsg.STATUS_NFE,cliente.codigo_pais');
               Query.Params.ParamByName('pDatai').AsDate      := Datai;
               Query.Params.ParamByName('pDataf').AsDate      := Dataf;
               Query.Params.ParamByName('pEmpresa').AsInteger := StrToInt(CodEmp);
               Query.Open;
               while not Query.Eof do
               begin
                 // Clientes
                 if not CdsClientes.Locate('CNPJCPF;TIPO',VarArrayOf([FiltraNumero(Query.FieldByName('REGISTRO_1').AsString),1]),[]) then
                 begin
                   with Registro0150New do
                   begin
                     COD_PART := 'C'+IntToStrZero(Query.FieldByName('CD_CLIENTE').AsInteger,5);
                     NOME     := Trim(Query.FieldByName('DS_CLIENTE').AsString);
                     if Trim(Query.FieldByName('CODIGO_PAIS').AsString) <> '' then
                        COD_PAIS := Trim(Query.FieldByName('CODIGO_PAIS').AsString)
                     else
                        COD_PAIS :=    '01058';
                     if Length(FiltraNumero(Query.FieldByName('REGISTRO_1').AsString)) <= 11 then
                     begin
                       CNPJ   := '';
                       CPF    := FiltraNumero(Query.FieldByName('REGISTRO_1').AsString);
                     end
                     else
                     begin
                       CNPJ   := FiltraNumero(Query.FieldByName('REGISTRO_1').AsString);
                       CPF    := '';
                     end;
                     if Trim(Query.FieldByName('REGISTRO_2').AsString) <> 'ISENTO' then
                        IE       := Trim(Query.FieldByName('REGISTRO_2').AsString)
                     else
                        IE       := '';
                     if Query.FieldByName('CODIGO_IBGE').AsString <> '' then
                        COD_MUN  := StrToInt(Query.FieldByName('CODIGO_IBGE').AsString)
                     else
                        COD_MUN  := 0;
                     SUFRAMA  := '';
                     ENDERECO := Copy(Trim(Query.FieldByName('ENDERECO').AsString),1,59);
                     NUM      := Trim(Query.FieldByName('NUMERO').AsString);
                     COMPL    := '';
                     BAIRRO   := Trim(Query.FieldByName('BAIRRO').AsString);
                   end;
                   // insere regisro na tabela de clientes temporária
                   CdsClientes.Append;
                   CdsClientes.FieldByName('ID').AsInteger     := Query.FieldByName('CD_CLIENTE').AsInteger;
                   CdsClientes.FieldByName('NOME').AsString    := Trim(Query.FieldByName('DS_CLIENTE').AsString);
                   CdsClientes.FieldByName('CNPJCPF').AsString := FiltraNumero(Query.FieldByName('REGISTRO_1').AsString);
                   CdsClientes.FieldByName('TIPO').AsInteger   := 1;
                   CdsClientes.Post;
                 end;
                 Query.Next;
               end;
               // fornecedores
               Query.Close;
               Query.SQL.Clear;
               Query.SQL.Add('select fornec.cd_fornec,fornec.ds_fornec,fornec.pais,');
               Query.SQL.Add('fornec.registro_1,fornec.categoria,fornec.registro_2,');
               Query.SQL.Add('cidade.codigo_ibge,fornec.endereco,fornec.numero,');
               Query.SQL.Add('fornec.bairro,fornec.uf,nfemsg.STATUS_NFE,fornec.codigo_pais from notaent');
               Query.SQL.Add('left outer join fornec on fornec.cd_fornec = notaent.cd_fornec');
               Query.SQL.Add('left outer join cidade on fornec.cd_cidade = cidade.cd_cidade');
               Query.SQL.Add('left outer join nfemsg on nfemsg.cd_entrada = notaent.cd_entrada');
               Query.SQL.Add('left outer join natureza on notaent.cd_natureza = natureza.cd_natureza');
               Query.SQL.Add('where notaent.dt_entrada between :pDatai and :pDataf');
//               Query.SQL.Add('and (nfemsg.STATUS_NFE = '+QuotedStr('100')+' or nfemsg.STATUS_NFE is null )');
               Query.SQL.Add('and notaent.nota_cancelada = 0');
               Query.SQL.Add('and notaent.cd_empresa = :pEmpresa');
               Query.SQL.Add('and (notaent.num_fatura is not null or');
               Query.SQL.Add('        notaent.num_doc is not null)');
               Query.SQL.Add('and natureza.apropriar_icms_ativo_permanente = 0');
               Query.SQL.Add('and natureza.tributar_icms = -1');
//               Query.SQL.Add('and (notaent.val_pis > 0 or notaent.val_cofins > 0)');
               Query.SQL.Add('group by fornec.cd_fornec,fornec.ds_fornec,fornec.pais,');
               Query.SQL.Add('fornec.registro_1,fornec.categoria,fornec.registro_2,');
               Query.SQL.Add('cidade.codigo_ibge,fornec.endereco,fornec.numero,');
               Query.SQL.Add('fornec.bairro,fornec.uf,nfemsg.STATUS_NFE,fornec.codigo_pais');
               Query.Params.ParamByName('pDatai').AsDate      := Datai;
               Query.Params.ParamByName('pDataf').AsDate      := Dataf;
               Query.Params.ParamByName('pEmpresa').AsInteger := StrToInt(CodEmp);
               Query.Open;
               while not Query.Eof do
               begin
                 if not CdsClientes.Locate('CNPJCPF;TIPO',VarArrayOf([FiltraNumero(Query.FieldByName('REGISTRO_1').AsString),0]),[]) then
                 begin
                   with Registro0150New do
                   begin
                      COD_PART := 'F'+IntToStrZero(Query.FieldByName('CD_FORNEC').AsInteger,5);
                      NOME     := Trim(Query.FieldByName('DS_FORNEC').AsString);
                      if Trim(Query.FieldByName('CODIGO_PAIS').AsString) <> '' then
                         COD_PAIS := Trim(Query.FieldByName('CODIGO_PAIS').AsString)
                      else
                         COD_PAIS :=    '01058';
                      if Length(FiltraNumero(Query.FieldByName('REGISTRO_1').AsString)) <= 11 then
                      begin
                        CNPJ   := '';
                        CPF    := FiltraNumero(Query.FieldByName('REGISTRO_1').AsString);
                      end
                      else
                      begin
                        CNPJ   := FiltraNumero(Query.FieldByName('REGISTRO_1').AsString);
                        CPF    := '';
                      end;
                      if Trim(Query.FieldByName('REGISTRO_2').AsString) <> 'ISENTO' then
                         IE       := Trim(Query.FieldByName('REGISTRO_2').AsString)
                      else
                         IE       := '';
                      if Query.FieldByName('CODIGO_IBGE').AsString <> '' then
                         COD_MUN  := StrToInt(Query.FieldByName('CODIGO_IBGE').AsString)
                      else
                         COD_MUN  := 0;
                      SUFRAMA  := '';
                      ENDERECO := Copy(Trim(Query.FieldByName('ENDERECO').AsString),1,59);
                      NUM      := Trim(Query.FieldByName('NUMERO').AsString);
                      COMPL    := '';
                      BAIRRO   := Trim(Query.FieldByName('BAIRRO').AsString);
                   end;
                   // insere regisro na tabela de clientes temporária
                   CdsClientes.Append;
                   CdsClientes.FieldByName('ID').AsInteger     := Query.FieldByName('CD_FORNEC').AsInteger;
                   CdsClientes.FieldByName('NOME').AsString    := Trim(Query.FieldByName('DS_FORNEC').AsString);
                   CdsClientes.FieldByName('CNPJCPF').AsString := FiltraNumero(Query.FieldByName('REGISTRO_1').AsString);
                   CdsClientes.FieldByName('TIPO').AsInteger   := 0;
                   CdsClientes.Post;
                 end;
                 Query.Next;
               end;
               // Unidades de Medida entrada
               Query.Close;
               Query.SQL.Clear;
               Query.SQL.Add('select entprod.unidade_medida,chave_nfe,');
               Query.SQL.Add('nfemsg.STATUS_NFE from notaent');
               Query.SQL.Add('left outer join entprod on entprod.cd_entrada = notaent.cd_entrada');
               Query.SQL.Add('left outer join natureza on natureza.cd_natureza = notaent.cd_natureza');
               Query.SQL.Add('left outer join nfemsg on nfemsg.cd_entrada = notaent.cd_entrada');
               Query.SQL.Add('where notaent.dt_entrada between :pDatai and :pDataf');
               Query.SQL.Add('and notaent.nota_cancelada = 0');
               Query.SQL.Add('and (notaent.num_fatura is not null or');
               Query.SQL.Add('     notaent.num_doc is not null)');
               Query.SQL.Add('and notaent.cd_empresa = :pEmpresa');
               Query.SQL.Add('and natureza.tributar_icms = -1');
//               Query.SQL.Add('and (notaent.val_pis > 0 or notaent.val_cofins > 0)');
               Query.Params.ParamByName('pDatai').AsDate      := Datai;
               Query.Params.ParamByName('pDataf').AsDate      := Dataf;
               Query.Params.ParamByName('pEmpresa').AsInteger := StrToInt(CodEmp);
               Query.Open;
               while not Query.Eof do
               begin
                 if (Query.FieldByName('STATUS_NFE').AsString = '100') or
                    (Query.FieldByName('STATUS_NFE').AsString = '') then
                 begin
      //             if Query.FieldByName('chave_nfe').AsString = '' then
                   begin
                     if not Registro0190.LocalizaRegistro(Trim(Query.FieldByName('UNIDADE_MEDIDA').AsString)) then
                     begin
                        with Registro0190New do
                        begin
                          UNID  := Trim(Query.FieldByName('UNIDADE_MEDIDA').AsString);
                          DESCR := 'Descricao ' + Trim(Query.FieldByName('UNIDADE_MEDIDA').AsString);
                        end;
                     end;
                   end;
                 end;
                 Query.Next;
               end;
               // Unidades de Medida saida
               Query.Close;
               Query.SQL.Clear;
               Query.SQL.Add('select saiprod.unidade_medida,nfemsg.STATUS_NFE,');
               Query.SQL.Add('nfemsg.chave_nfe from notasai');
               Query.SQL.Add('left outer join natureza on natureza.cd_natureza = notasai.cd_natureza');
               Query.SQL.Add('left outer join saiprod on saiprod.cd_saida = notasai.cd_saida');
               Query.SQL.Add('left outer join nfemsg on nfemsg.cd_saida = notasai.cd_saida');
               Query.SQL.Add('where notasai.dt_saida between :pDatai and :pDataf');
               Query.SQL.Add('and notasai.nota_cancelada = 0');
               Query.SQL.Add('and notasai.num_doc is not null');
               Query.SQL.Add('and notasai.cd_empresa = :pEmpresa');
               Query.SQL.Add('and natureza.tributar_icms = -1');
//               Query.SQL.Add('and (notasai.val_pis > 0 or notasai.val_cofins > 0)');
               Query.Params.ParamByName('pDatai').AsDate      := Datai;
               Query.Params.ParamByName('pDataf').AsDate      := Dataf;
               Query.Params.ParamByName('pEmpresa').AsInteger := StrToInt(CodEmp);
               Query.Open;
               while not Query.Eof do
               begin
                 if (Query.FieldByName('STATUS_NFE').AsString = '100') or
                    (Query.FieldByName('STATUS_NFE').AsString = '') then
                 begin
//                   if Query.FieldByName('chave_nfe').AsString = '' then
                   begin
                     if not Registro0190.LocalizaRegistro(Trim(Query.FieldByName('UNIDADE_MEDIDA').AsString)) then
                     begin
                        with Registro0190New do
                        begin
                           UNID  := Trim(Query.FieldByName('UNIDADE_MEDIDA').AsString);
                           DESCR := 'Descricao ' + Trim(Query.FieldByName('UNIDADE_MEDIDA').AsString);
                        end;
                     end;
                   end;
                 end;
                 Query.Next;
               end;
               // Unidades de Medida saida ECF
               Query.Close;
               Query.SQL.Clear;
               Query.SQL.Add('select saiprod.unidade_medida from notasai');
               Query.SQL.Add('left outer join saiprod on saiprod.cd_saida = notasai.cd_saida');
               Query.SQL.Add('left outer join produto on saiprod.cd_produto = produto.cd_produto');
               Query.SQL.Add('where notasai.dt_saida between :pDatai and :pDataf');
               Query.SQL.Add('and notasai.nota_cancelada = 0');
               Query.SQL.Add('and notasai.num_ref = '+QuotedStr('CF'));
               Query.SQL.Add('and notasai.cd_empresa = :pEmpresa');
//               Query.SQL.Add('and (notasai.val_pis > 0 or notasai.val_cofins > 0)');
               Query.SQL.Add('group by saiprod.unidade_medida');
               Query.Params.ParamByName('pDatai').AsDate      := Datai;
               Query.Params.ParamByName('pDataf').AsDate      := Dataf;
               Query.Params.ParamByName('pEmpresa').AsInteger := StrToInt(CodEmp);
               Query.Open;
               while not Query.Eof do
               begin
                  if not Registro0190.LocalizaRegistro(Trim(Query.FieldByName('UNIDADE_MEDIDA').AsString)) then
                  begin
                     with Registro0190New do
                     begin
                        UNID  := Trim(Query.FieldByName('UNIDADE_MEDIDA').AsString);
                        DESCR := 'Descricao ' + Trim(Query.FieldByName('UNIDADE_MEDIDA').AsString);
                     end;
                  end;
                  Query.Next;
               end;
               // produtos entradas
               Query.Close;
               Query.SQL.Clear;
               Query.SQL.Add('select entprod.cd_produto,entprod.unidade_medida,entprod.codigo_ncm,');
               Query.SQL.Add('produto.ds_produto,produto.codigo_ean_tributavel,');
               Query.SQL.Add('entprod.perc_icm,prodemp.qtd_atual,entprod.val_custo, ');
               Query.SQL.Add('nfemsg.STATUS_NFE,nfemsg.chave_nfe from notaent');
               Query.SQL.Add('left outer join nfemsg on nfemsg.cd_entrada = notaent.cd_entrada');
               Query.SQL.Add('left outer join natureza on natureza.cd_natureza = notaent.cd_natureza');
               Query.SQL.Add('left outer join entprod on entprod.cd_entrada = notaent.cd_entrada');
               Query.SQL.Add('left outer join produto on entprod.cd_produto = produto.cd_produto');
               Query.SQL.Add('left outer join prodemp on produto.cd_produto = prodemp.cd_produto');
               Query.SQL.Add('where notaent.dt_entrada between :pDatai and :pDataf');
               Query.SQL.Add('and notaent.nota_cancelada = 0');
               Query.SQL.Add('and (notaent.num_fatura is not null or');
               Query.SQL.Add('     notaent.num_doc is not null)');
               Query.SQL.Add('and notaent.cd_empresa = :pEmpresa');
               Query.SQL.Add('and natureza.apropriar_icms_ativo_permanente = 0');
               Query.SQL.Add('and natureza.tributar_icms = -1');
//               Query.SQL.Add('and (notaent.val_pis > 0 or notaent.val_cofins > 0)');
               Query.Params.ParamByName('pDatai').AsDate      := Datai;
               Query.Params.ParamByName('pDataf').AsDate      := Dataf;
               Query.Params.ParamByName('pEmpresa').AsInteger := StrToInt(CodEmp);
               Query.Open;
               while not Query.Eof do
               begin
                 if (Query.FieldByName('STATUS_NFE').AsString = '100') or
                    (Query.FieldByName('STATUS_NFE').AsString = '') then
                 begin
      //             if Query.FieldByName('chave_nfe').AsString = '' then
                   begin
                     if not registro0200.LocalizaRegistro(IntToStr(Query.FieldByName('cd_produto').AsInteger)) then
                     begin
                        with Registro0200New do
                        begin
                           COD_ITEM     := IntToStr(Query.FieldByName('cd_produto').AsInteger);
                           DESCR_ITEM   := Trim(Query.FieldByName('Ds_Produto').AsString);
                           COD_BARRA    := '';
                           COD_ANT_ITEM := '';
                           UNID_INV     := Trim(Query.FieldByName('unidade_medida').AsString);
                           TIPO_ITEM    := tiMercadoriaRevenda;
                           COD_NCM      := Trim(Query.FieldByName('codigo_ncm').AsString);
                           EX_IPI       := '';
                           COD_GEN      := '';
                           COD_LST      := '';
                           ALIQ_ICMS    := Query.FieldByName('perc_icm').AsFloat;
                        end;
                     end;
                   end;
                 end;
                 Query.Next;
               end;
               // produtos saidas
               Query.Close;
               Query.SQL.Clear;
               Query.SQL.Add('select saiprod.cd_produto,saiprod.unidade_medida,saiprod.codigo_ncm,');
               Query.SQL.Add('produto.ds_produto,produto.codigo_ean_tributavel,');
               Query.SQL.Add('saiprod.perc_icm,prodemp.qtd_atual,saiprod.val_venda,');
               Query.SQL.Add('nfemsg.STATUS_NFE,nfemsg.chave_nfe from notasai');
               Query.SQL.Add('left outer join natureza on natureza.cd_natureza = notasai.cd_natureza');
               Query.SQL.Add('left outer join nfemsg on nfemsg.cd_saida = notasai.cd_saida');
               Query.SQL.Add('left outer join saiprod on saiprod.cd_saida = notasai.cd_saida');
               Query.SQL.Add('left outer join produto on saiprod.cd_produto = produto.cd_produto');
               Query.SQL.Add('left outer join prodemp on produto.cd_produto = prodemp.cd_produto');
               Query.SQL.Add('where notasai.dt_saida between :pDatai and :pDataf');
               Query.SQL.Add('and notasai.nota_cancelada = 0');
               Query.SQL.Add('and notasai.num_doc is not null');
               Query.SQL.Add('and notasai.cd_empresa = :pEmpresa');
               Query.SQL.Add('and natureza.tributar_icms = -1');
//               Query.SQL.Add('and (notasai.val_pis > 0 or notasai.val_cofins > 0)');
               Query.Params.ParamByName('pDatai').AsDate      := Datai;
               Query.Params.ParamByName('pDataf').AsDate      := Dataf;
               Query.Params.ParamByName('pEmpresa').AsInteger := StrToInt(CodEmp);
               Query.Open;
               while not Query.Eof do
               begin
                 if (Query.FieldByName('STATUS_NFE').AsString = '100') or
                    (Query.FieldByName('STATUS_NFE').AsString = '') then
                 begin
//                   if Query.FieldByName('chave_nfe').AsString = '' then
                   begin
                     if not registro0200.LocalizaRegistro(IntToStr(Query.FieldByName('cd_produto').AsInteger)) then
                     begin
                        with Registro0200New do
                        begin
                           COD_ITEM     := IntToStr(Query.FieldByName('cd_produto').AsInteger);
                           DESCR_ITEM   := Trim(Query.FieldByName('Ds_Produto').AsString);
                           COD_BARRA    := '';
                           COD_ANT_ITEM := '';
                           UNID_INV     := Trim(Query.FieldByName('unidade_medida').AsString);
                           TIPO_ITEM    := tiMercadoriaRevenda;
                           COD_NCM      := Trim(Query.FieldByName('codigo_ncm').AsString);
                           EX_IPI       := '';
                           COD_GEN      := '';
                           COD_LST      := '';
                           ALIQ_ICMS    := Query.FieldByName('perc_icm').AsCurrency;
                        end;
                     end;
                   end;
                 end;
                 Query.Next;
               end;
               // produtos saidas ECF
               Query.Close;
               Query.SQL.Clear;
               Query.SQL.Add('select saiprod.cd_produto,saiprod.unidade_medida,saiprod.codigo_ncm,');
               Query.SQL.Add('produto.ds_produto,produto.codigo_ean_tributavel,');
               Query.SQL.Add('saiprod.perc_icm,prodemp.qtd_atual,saiprod.val_venda from notasai');
               Query.SQL.Add('left outer join saiprod on saiprod.cd_saida = notasai.cd_saida');
               Query.SQL.Add('left outer join produto on saiprod.cd_produto = produto.cd_produto');
               Query.SQL.Add('left outer join prodemp on produto.cd_produto = prodemp.cd_produto');
               Query.SQL.Add('where notasai.dt_saida between :pDatai and :pDataf');
               Query.SQL.Add('and notasai.nota_cancelada = 0');
               Query.SQL.Add('and notasai.num_ref = '+QuotedStr('CF'));
               Query.SQL.Add('and notasai.cd_empresa = :pEmpresa');
               Query.SQL.Add('group by saiprod.cd_produto,saiprod.unidade_medida,saiprod.codigo_ncm,');
               Query.SQL.Add('produto.ds_produto,produto.codigo_ean_tributavel,');
               Query.SQL.Add('saiprod.perc_icm,prodemp.qtd_atual,saiprod.val_venda');
               Query.Params.ParamByName('pDatai').AsDate      := Datai;
               Query.Params.ParamByName('pDataf').AsDate      := Dataf;
               Query.Params.ParamByName('pEmpresa').AsInteger := StrToInt(CodEmp);
               Query.Open;
               while not Query.Eof do
               begin
                  if not registro0200.LocalizaRegistro(IntToStr(Query.FieldByName('cd_produto').AsInteger)) then
                  begin
                     with Registro0200New do
                     begin
                        COD_ITEM     := IntToStr(Query.FieldByName('cd_produto').AsInteger);
                        DESCR_ITEM   := Query.FieldByName('Ds_Produto').AsString;
                        COD_BARRA    := '';
                        COD_ANT_ITEM := '';
                        UNID_INV     := Trim(Query.FieldByName('unidade_medida').AsString);
                        TIPO_ITEM    := tiMercadoriaRevenda;
                        COD_NCM      := Trim(Query.FieldByName('codigo_ncm').AsString);
                        EX_IPI       := '';
                        COD_GEN      := '';
                        COD_LST      := '';
                        ALIQ_ICMS    := Query.FieldByName('perc_icm').AsCurrency;
                     end;
                  end;
                  Query.Next;
               end;
             end;
           end;
           CdsEmpresa.Next;
         end;
      end;
   end;

end;

procedure TSPED_PC.DadosBlocoPC_1;
begin
   // Alimenta o componente com informações para gerar todos os registros do
   // Bloco 1.
   with DmAcBr.ACBrSPEDPisCofins1.Bloco_1 do
   begin
      with Registro1001New do
      begin
        IND_MOV := imSemDados;
      end;
   end;

end;

procedure TSPED_PC.DadosBlocoPC_9;
begin
  DmAcBr.ACBrSPEDPisCofins1.WriteBloco_9;
  // clientes
  CdsClientes.Close;
  CdsClientes.Destroy;

end;

procedure TSPED_PC.DadosBlocoPC_A(CdsEmpresa:TClientDataSet;pDatai,pDataf:TDateTime;CodEmp:Integer);
var AuxStr, aUF, aSitTribIPI : String;
    AuxAliq, AuxValor, AuxFrete, aValBaseICMS, aValICMS, aIndiceDespAcess : Double;
    aContador, AuxInt, IItens, NNotas, BNotas, i: Integer;
    QNota,QItem : TSQLQuery;
    aControle : Boolean;
    aNumReg, aRegAtual, aCodProAtual, aCST_PIS, aCST_COFINS : Integer;
begin
   QNota := TSqlQuery.Create(nil);
   QItem := TSqlQuery.Create(nil);
   QNota.SQLConnection := ConexaoDados;
   QItem.SQLConnection := ConexaoDados;
   //
   sProgressBar1.Max     := 0;
   sProgressBar1.Position:= 0 ;
   with DmAcBr.ACBrSPEDPisCofins1.Bloco_A do
   begin
      with RegistroA001New do
      begin
         IND_MOV := imSemDados;
         //
         CdsEmpresa.First;
         while not CdsEmpresa.Eof do
         begin
           with RegistroA010New do
           begin
             FiltraNumero(CdsEmpresa.FieldByName('REGISTRO_1').AsString);
             // notas de serviços
             QNota.Close;
             QNota.SQL.Clear;
             QNota.SQL.Add('select distinct notasai.cd_saida,notasai.cd_cliente,nfemsg.STATUS_NFE,');
             QNota.SQL.Add('notasai.num_doc,notasai.dt_saida,notasai.tipo_frete,notasai.despesas_acessorias,');
             QNota.SQL.Add('notasai.total_saida,notasai.val_desconto_fatura,notasai.perc_desc,');
             QNota.SQL.Add('notasai.total_produtos,notasai.val_base_icms,notasai.val_icms,');
             QNota.SQL.Add('notasai.val_base_icms_sub,notasai.val_icms_sub,notasai.val_ipi,cliente.REGISTRO_1,');
             QNota.SQL.Add('notasai.val_pis,notasai.val_cofins,nfemsg.CHAVE_NFE,notasai.frete from notasai');
             QNota.SQL.Add('left outer join natureza on notasai.cd_natureza = natureza.cd_natureza');
             QNota.SQL.Add('left outer join nfemsg on nfemsg.cd_saida = notasai.cd_saida');
             QNota.SQL.Add('left outer join cliente on cliente.cd_cliente = notasai.cd_cliente');
             QNota.SQL.Add('where notasai.dt_saida between :pDatai and :pDataf');
             QNota.SQL.Add('and notasai.nota_cancelada = 0');
             QNota.SQL.Add('and notasai.num_doc is not null');
             QNota.SQL.Add('and notasai.cd_empresa = :pEmpresa');
             QNota.SQL.Add('and natureza.apropriar_icms_ativo_permanente = 0');
             QNota.SQL.Add('and natureza.tributar_icms = -1');
//             QNota.SQL.Add('and (notasai.val_pis > 0 or notasai.val_cofins > 0)');
             // SQL Itens
             QItem.Close;
             QItem.SQL.Clear;
             QItem.SQL.Add('select saiserv.cd_servico,servico.unidade,servico.perc_iss,');
             QItem.SQL.Add('saiserv.perc_pis,saiserv.perc_cofins,natureza.codigo_fiscal,');
             QItem.SQL.Add('saiserv.situacao_tributaria_pis,saiserv.situacao_tributaria_cofins,');
             QItem.SQL.Add('sum(saiserv.qtd_servico) as qtd_produto,');
             QItem.SQL.Add('sum(saiserv.val_servico) as val_venda,');
             QItem.SQL.Add('sum(saiserv.total_servico) as total_produto,');
             QItem.SQL.Add('sum(saiserv.val_deducoes) as val_desc,');
             QItem.SQL.Add('sum(saiserv.val_base_iss) as val_base_iss,');
             QItem.SQL.Add('sum(saiserv.val_iss) as val_iss,');
             QItem.SQL.Add('sum(saiserv.val_base_pis) as val_base_pis,');
             QItem.SQL.Add('sum(saiserv.val_pis) as val_pis,');
             QItem.SQL.Add('sum(saiserv.val_base_cofins) as val_base_cofins,');
             QItem.SQL.Add('sum(saiserv.val_cofins) as val_cofins from notasai');
             QItem.SQL.Add('inner join saiserv on saiserv.cd_saida = notasai.cd_saida');
             QItem.SQL.Add('inner join natureza on saiserv.cd_natureza = natureza.cd_natureza');
             QItem.SQL.Add('inner join servico on servico.cd_servico = saiserv.cd_servico');
             QItem.SQL.Add('where saiserv.cd_saida = :pCD_Saida');
             QItem.SQL.Add('group by saiserv.cd_servico,servico.unidade,servico.perc_iss,');
             QItem.SQL.Add('saiserv.perc_pis,saiserv.perc_cofins,natureza.codigo_fiscal,');
             QItem.SQL.Add('saiserv.situacao_tributaria_pis,saiserv.situacao_tributaria_cofins');
             // seleciona Dados
             QNota.Params.ParamByName('pDatai').AsDate      := pDatai;
             QNota.Params.ParamByName('pDataf').AsDate      := pDataf;
             QNota.Params.ParamByName('pEmpresa').AsInteger := CdsEmpresa.FieldByName('CD_Empresa').AsInteger;
             QNota.Open;
             //
             aNumReg := RetornaQtdRegDBX(QNota);
             sLbMensagem.Caption := 'Registros de Saidas';
             sProgressBar1.Max := aNumReg;
             Application.ProcessMessages;
             aRegAtual := 0;
             while not QNota.Eof do
             begin
               AuxFrete := 0;
               if (QNota.FieldByName('STATUS_NFE').AsString = '100') or
                  (QNota.FieldByName('STATUS_NFE').AsString = '') then
               begin
                 AuxFrete := QNota.FieldByName('Frete').AsFloat;
                 with RegistroA100New do
                 begin
                   COD_PART      := 'C'+IntToStrZero(QNota.FieldByName('cd_cliente').AsInteger,5);
                   IND_EMIT      := iedfProprio;
                   IND_OPER      := itoPrestado;
                   COD_SIT       := sdfRegular;
                   SER           := '';
                   NUM_DOC       := IntToStr(QNota.FieldByName('num_doc').AsInteger);
                   CHV_NFSE      := QNota.FieldByName('CHAVE_NFE').AsString;
                   DT_DOC        := QNota.FieldByName('dt_saida').AsDateTime;
                   DT_EXE_SERV   := QNota.FieldByName('dt_saida').AsDateTime;
                   AuxValor      := ((QNota.FieldByName('Total_saida').AsFloat - QNota.FieldByName('val_icms_sub').AsFloat) - QNota.FieldByName('val_ipi').AsFloat);
                   AuxValor      := AuxValor;
                   VL_DOC        := AuxValor;
                   IND_PGTO      := tpSemPagamento;
                   VL_DESC       := QNota.FieldByName('val_desconto_fatura').AsFloat;
                   VL_DOC        := QNota.FieldByName('total_produtos').AsFloat;
                   aIndiceDespAcess := 1;
                   if QNota.FieldByName('despesas_acessorias').AsFloat > 0 then
                      aIndiceDespAcess := (((QNota.FieldByName('VAL_BASE_ICMS').AsFloat * 100)/ QNota.FieldByName('total_produtos').AsFloat)/100);
                   VL_ISS       := QNota.FieldByName('VAL_ICMS').AsFloat;
                   //
                   VL_PIS        := QNota.FieldByName('val_pis').AsFloat;
                   VL_COFINS     := QNota.FieldByName('val_Cofins').AsFloat;
                   VL_PIS_RET    := 0;
                   VL_COFINS_RET := 0;
                   // Registro C170
//                   if QNota.FieldByName('CHAVE_NFE').AsString = '' then
                   begin
                     QItem.Close;
                     QItem.Params.ParamByName('pCD_Saida').AsInteger := QNota.FieldByName('CD_SAIDA').AsInteger;
                     QItem.Open;
                     IItens := 0;
                     while not QItem.Eof do
                     begin
                       Inc(IItens);
                       with RegistroA170New do   //Inicio Adicionar os Itens:
                       begin
                          NUM_ITEM    := IItens;
                          COD_ITEM    := IntToStr(QItem.FieldByName('cd_produto').AsInteger);
                          DESCR_COMPL := '';
                          if QNota.FieldByName('perc_desc').AsFloat > 0 then
                             AuxValor  := (QItem.FieldByName('val_venda').AsFloat * (100 - QNota.FieldByName('perc_desc').AsFloat) / 100)
                          else
                             AuxValor  := QItem.FieldByName('val_venda').AsFloat;
                          VL_ITEM          := (AuxValor*QItem.FieldByName('qtd_produto').AsFloat);
                          VL_DESC          := QItem.FieldByName('val_desc').AsFloat;
                          VL_ISS           := QItem.FieldByName('val_icms').AsFloat*aIndiceDespAcess;
                          aCST_PIS := QItem.FieldByname('situacao_tributaria_pis').AsInteger;
                          if aCST_PIS = 0 then
                             aCST_PIS := 50;
                          case aCST_PIS of
                            01 : CST_PIS := stpisValorAliquotaNormal;
                            02 : CST_PIS := stpisValorAliquotaDiferenciada;
                            03 : CST_PIS := stpisQtdeAliquotaUnidade;
                            04 : CST_PIS := stpisMonofaticaAliquotaZero;
                            05 : CST_PIS := stpisValorAliquotaPorST;
                            06 : CST_PIS := stpisAliquotaZero;
                            07 : CST_PIS := stpisIsentaContribuicao;
                            08 : CST_PIS := stpisSemIncidenciaContribuicao;
                            09 : CST_PIS := stpisSuspensaoContribuicao;
                            49 : CST_PIS := stpisOutrasOperacoesSaida;
                            50 : CST_PIS := stpisOperCredExcRecTribMercInt;
                            51 : CST_PIS := stpisOperCredExcRecNaoTribMercInt;
                            52 : CST_PIS := stpisOperCredExcRecExportacao;
                            53 : CST_PIS := stpisOperCredRecTribNaoTribMercInt;
                            54 : CST_PIS := stpisOperCredRecTribMercIntEExportacao;
                            55 : CST_PIS := stpisOperCredRecNaoTribMercIntEExportacao;
                            56 : CST_PIS := stpisOperCredRecTribENaoTribMercIntEExportacao;
                            60 : CST_PIS := stpisCredPresAquiExcRecTribMercInt;
                            61 : CST_PIS := stpisCredPresAquiExcRecNaoTribMercInt;
                            62 : CST_PIS := stpisCredPresAquiExcExcRecExportacao;
                            63 : CST_PIS := stpisCredPresAquiRecTribNaoTribMercInt;
                            64 : CST_PIS := stpisCredPresAquiRecTribMercIntEExportacao;
                            65 : CST_PIS := stpisCredPresAquiRecNaoTribMercIntEExportacao;
                            66 : CST_PIS := stpisCredPresAquiRecTribENaoTribMercIntEExportacao;
                            70 : CST_PIS := stpisOperAquiSemDirCredito;
                            71 : CST_PIS := stpisOperAquiComIsensao;
                            72 : CST_PIS := stpisOperAquiComSuspensao;
                            73 : CST_PIS := stpisOperAquiAliquotaZero;
                            74 : CST_PIS := stpisOperAqui_SemIncidenciaContribuicao;
                            75 : CST_PIS := stpisOperAquiPorST;
                            98 : CST_PIS := stpisOutrasOperacoesEntrada;
                            99 : CST_PIS := stpisOutrasOperacoes;
                          end;
                          VL_BC_PIS := QItem.FieldByName('val_base_pis').AsFloat;
                          VL_PIS    := QItem.FieldByName('val_pis').AsFloat;
                          //
                          aCST_COFINS := QItem.FieldByName('situacao_tributaria_cofins').AsInteger;
                          if aCST_COFINS = 0 then
                             aCST_COFINS := 50;
                          case aCST_PIS of
                            01 : CST_COFINS := stcofinsValorAliquotaNormal;
                            02 : CST_COFINS := stcofinsValorAliquotaDiferenciada;
                            03 : CST_COFINS := stcofinsQtdeAliquotaUnidade;
                            04 : CST_COFINS := stcofinsMonofaticaAliquotaZero;
                            05 : CST_COFINS := stcofinsValorAliquotaPorST;
                            06 : CST_COFINS := stcofinsAliquotaZero;
                            07 : CST_COFINS := stcofinsIsentaContribuicao;
                            08 : CST_COFINS := stcofinsSemIncidenciaContribuicao;
                            09 : CST_COFINS := stcofinsSuspensaoContribuicao;
                            49 : CST_COFINS := stcofinsOutrasOperacoesSaida;
                            50 : CST_COFINS := stcofinsOperCredExcRecTribMercInt;
                            51 : CST_COFINS := stcofinsOperCredExcRecNaoTribMercInt;
                            52 : CST_COFINS := stcofinsOperCredExcRecExportacao;
                            53 : CST_COFINS := stcofinsOperCredRecTribNaoTribMercInt;
                            54 : CST_COFINS := stcofinsOperCredRecTribMercIntEExportacao;
                            55 : CST_COFINS := stcofinsOperCredRecNaoTribMercIntEExportacao;
                            56 : CST_COFINS := stcofinsOperCredRecTribENaoTribMercIntEExportacao;
                            60 : CST_COFINS := stcofinsCredPresAquiExcRecTribMercInt;
                            61 : CST_COFINS := stcofinsCredPresAquiExcRecNaoTribMercInt;
                            62 : CST_COFINS := stcofinsCredPresAquiExcExcRecExportacao;
                            63 : CST_COFINS := stcofinsCredPresAquiRecTribNaoTribMercInt;
                            64 : CST_COFINS := stcofinsCredPresAquiRecTribMercIntEExportacao;
                            65 : CST_COFINS := stcofinsCredPresAquiRecNaoTribMercIntEExportacao;
                            66 : CST_COFINS := stcofinsCredPresAquiRecTribENaoTribMercIntEExportacao;
                            70 : CST_COFINS := stcofinsOperAquiSemDirCredito;
                            71 : CST_COFINS := stcofinsOperAquiComIsensao;
                            72 : CST_COFINS := stcofinsOperAquiComSuspensao;
                            73 : CST_COFINS := stcofinsOperAquiAliquotaZero;
                            74 : CST_COFINS := stcofinsOperAqui_SemIncidenciaContribuicao;
                            75 : CST_COFINS := stcofinsOperAquiPorST;
                            98 : CST_COFINS := stcofinsOutrasOperacoesEntrada;
                            99 : CST_COFINS := stcofinsOutrasOperacoes;
                          end;
                          VL_BC_COFINS     := QItem.FieldByName('val_base_cofins').AsFloat;
                          VL_COFINS        := QItem.FieldByName('val_cofins').AsFloat;
                          COD_CTA          := '';
                        end; //Fim dos Itens;
                        QItem.Next;
                     end;
                   end;
                 end;
               end;
               Inc(aRegAtual);
               sProgressBar1.Position := aRegAtual;
               Application.ProcessMessages;
               //
               QNota.Next;
             end;
           end;
           CdsEmpresa.Next; 
         end;
      end;
   end;


end;

procedure TSPED_PC.DadosBlocoPC_C(CdsEmpresa:TClientDataSet;pDatai,
  pDataf:TDateTime;CodEmp:Integer; VerificaSTIPI:Boolean);
var AuxStr, aUF, aSitTribIPI : String;
    AuxAliq, AuxValor, AuxFrete, aValBaseICMS, aValICMS, aIndiceDespAcess : Double;
    aContador, AuxInt, IItens, NNotas, BNotas, i, aCST_PIS, aCST_COFINS: Integer;
    QNota,QItem : TSQLQuery;
    Q400,Q405,Q481,Q485,Q490 : TSQLQuery;
    aControle : Boolean;
    aDataMov : TDateTime;
    aNumReg, aRegAtual : Integer;
begin
   // Alimenta o componente com informações para gerar todos os registros do
   // Bloco C.
   QNota := TSqlQuery.Create(nil);
   QItem := TSqlQuery.Create(nil);
   Q400 := TSqlQuery.Create(nil);
   Q405 := TSqlQuery.Create(nil);
   Q481 := TSqlQuery.Create(nil);
   Q485 := TSqlQuery.Create(nil);
   Q490 := TSqlQuery.Create(nil);
   QNota.SQLConnection := ConexaoDados;
   QItem.SQLConnection := ConexaoDados;
   Q400.SQLConnection := ConexaoDados;
   Q405.SQLConnection := ConexaoDados;
   Q481.SQLConnection := ConexaoDados;
   Q485.SQLConnection := ConexaoDados;
   Q490.SQLConnection := ConexaoDados;
   //
   sProgressBar1.Max     := 0;
   sProgressBar1.Position:= 0 ;
   with DmAcBr.ACBrSPEDPisCofins1.Bloco_C do
   begin
      with RegistroC001New do
      begin
         IND_MOV := imComDados;
         //
         CdsEmpresa.First;
         while not CdsEmpresa.Eof do
         begin
//           if VerificaMovimentoPisCofins(CdsEmpresa.FieldByName('CD_Empresa').AsInteger,pDatai,pDataf) then
           begin
             with RegistroC010New do
             begin
               CNPJ      := FiltraNumero(CdsEmpresa.FieldByName('REGISTRO_1').AsString);
               IND_ESCRI := IndEscriConsolidado;
               // notas de entrada
               QNota.Close;
               QNota.SQL.Clear;
               QNota.SQL.Add('select distinct notaent.cd_entrada,notaent.cd_fornec,notaent.num_doc,');
               QNota.SQL.Add('notaent.dt_entrada,notaent.tipo_frete,nfemsg.STATUS_NFE,notaent.num_fatura,');
               QNota.SQL.Add('notaent.total_entrada,notaent.val_desconto_fatura,notaent.perc_desc,');
               QNota.SQL.Add('notaent.total_produtos,notaent.val_base_icms,notaent.val_icms,fornec.REGISTRO_1,');
               QNota.SQL.Add('notaent.val_base_icms_sub,notaent.val_icms_sub,notaent.val_ipi,notaent.despesas_acessorias,');
               QNota.SQL.Add('notaent.val_pis,notaent.val_cofins,nfemsg.CHAVE_NFE,notaent.frete from notaent');
               QNota.SQL.Add('left outer join natureza on notaent.cd_natureza = natureza.cd_natureza');
               QNota.SQL.Add('left outer join nfemsg on nfemsg.cd_entrada = notaent.cd_entrada');
               QNota.SQL.Add('left outer join fornec on fornec.cd_fornec = notaent.cd_fornec');
               QNota.SQL.Add('where notaent.dt_entrada between :pDatai and :pDataf');
               QNota.SQL.Add('and notaent.nota_cancelada = 0');
               QNota.SQL.Add('and (notaent.num_fatura is not null or');
               QNota.SQL.Add('     notaent.num_doc is not null)');
               QNota.SQL.Add('and notaent.cd_empresa = :pEmpresa');
               QNota.SQL.Add('and natureza.apropriar_icms_ativo_permanente = 0');
               QNota.SQL.Add('and natureza.tributar_icms = -1');
//               QNota.SQL.Add('and (notaent.val_pis > 0 or notaent.val_cofins > 0)');
               // SQL Itens
               QItem.Close;
               QItem.SQL.Clear;
               QItem.SQL.Add('select entprod.cd_produto,entprod.unidade_medida,');
               QItem.SQL.Add('entprod.perc_icm,entprod.perc_icm_sub,entprod.perc_ipi,');
               QItem.SQL.Add('entprod.perc_pis,entprod.perc_retido_pis,entprod.perc_cofins,');
               QItem.SQL.Add('entprod.perc_retido_cofins,natureza.codigo_fiscal,');
               QItem.SQL.Add('entprod.situacao_tributaria_icms,entprod.SITUACAO_TRIBUTARIA_IPI,');
               QItem.SQL.Add('entprod.situacao_tributaria_pis,entprod.SITUACAO_TRIBUTARIA_COFINS,');
               QItem.SQL.Add('sum(entprod.qtd_produto) as qtd_produto,');
               QItem.SQL.Add('sum(entprod.val_custo) as val_custo ,');
               QItem.SQL.Add('sum(entprod.total_produto) as total_produto,');
               QItem.SQL.Add('sum(entprod.val_desc) as val_desc,');
               QItem.SQL.Add('sum(entprod.val_base_icms) as val_base_icms,');
               QItem.SQL.Add('sum(entprod.val_icms) as val_icms,');
               QItem.SQL.Add('sum(entprod.val_base_icms_sub) as val_base_icms_sub,');
               QItem.SQL.Add('sum(entprod.val_icms_sub) as val_icms_sub,');
               QItem.SQL.Add('sum(entprod.val_base_ipi) as val_base_ipi,');
               QItem.SQL.Add('sum(entprod.val_ipi) as val_ipi,');
               QItem.SQL.Add('sum(entprod.val_base_pis) as val_base_pis,');
               QItem.SQL.Add('sum(entprod.val_pis) as val_pis,');
               QItem.SQL.Add('sum(entprod.val_base_cofins) as val_base_cofins,');
               QItem.SQL.Add('sum(entprod.val_cofins) as val_cofins from notaent');
               QItem.SQL.Add('left outer join entprod on entprod.cd_entrada = notaent.cd_entrada');
               QItem.SQL.Add('left outer join natureza on entprod.cd_natureza = natureza.cd_natureza');
               QItem.SQL.Add('where notaent.cd_entrada = :pCD_Entrada');
               QItem.SQL.Add('group by entprod.cd_produto,entprod.unidade_medida,entprod.perc_icm,');
               QItem.SQL.Add('entprod.perc_icm_sub,entprod.perc_ipi,entprod.perc_pis,');
               QItem.SQL.Add('entprod.perc_retido_pis,entprod.perc_cofins,entprod.perc_retido_cofins,');
               QItem.SQL.Add('natureza.codigo_fiscal,entprod.situacao_tributaria_icms,entprod.SITUACAO_TRIBUTARIA_IPI,');
               QItem.SQL.Add('entprod.situacao_tributaria_pis,entprod.SITUACAO_TRIBUTARIA_COFINS');
               // seleciona Dados
               QNota.Params.ParamByName('pDatai').AsDate      := pDatai;
               QNota.Params.ParamByName('pDataf').AsDate      := pDataf;
               QNota.Params.ParamByName('pEmpresa').AsInteger := CdsEmpresa.FieldByName('CD_Empresa').AsInteger;
               QNota.Open;
               aNumReg := RetornaQtdRegDBX(QNota);
               sLbMensagem.Caption := 'Registros de Entrada';
               sProgressBar1.Max := aNumReg;
               Application.ProcessMessages;
               aRegAtual := 0;
               while not QNota.Eof do
               begin
                 AuxFrete := 0;
                 if (QNota.FieldByName('STATUS_NFE').AsString = '100') or
                    (QNota.FieldByName('STATUS_NFE').AsString = '') then
                 begin
                   AuxFrete := QNota.FieldByName('Frete').AsFloat;
                   with RegistroC100New do
                   begin
                     COD_PART      := 'F'+IntToStrZero(QNota.FieldByName('cd_fornec').AsInteger,5);
                     if QNota.FieldByName('num_doc').AsString <> '' then
                     begin
                       if VerificaNotaDevolucao(QNota.FieldByName('cd_fornec').AsInteger,
                                                CdsEmpresa.FieldByName('Registro_1').AsString) then
                          IND_EMIT      := edEmissaoPropria
                       else
                          IND_EMIT      := edTerceiros;
                        NUM_DOC       := IntToStr(QNota.FieldByName('num_doc').AsInteger);
                     end
                     else
                     begin
                        IND_EMIT      := edTerceiros;
                        NUM_DOC       := IntToStr(QNota.FieldByName('num_fatura').AsInteger);
                     end;
                     IND_OPER      := tpEntradaAquisicao;
                     if QNota.FieldByName('CHAVE_NFE').AsString <> '' then
                        COD_MOD       := '55'
                     else
                        COD_MOD       := '01';
                     COD_SIT       := sdRegular;
                     SER           := '';
                     CHV_NFE       := QNota.FieldByName('CHAVE_NFE').AsString;
                     DT_DOC        := QNota.FieldByName('DT_Entrada').AsDateTime;
                     DT_E_S        := QNota.FieldByName('DT_Entrada').AsDateTime;
                     if (VerificaSTIPI) and
                        (not VerificaSTProdutosNota(QNota.FieldByName('CD_ENTRADA').AsInteger,0)) then
                     begin
                       AuxValor := ((QNota.FieldByName('Total_Entrada').AsFloat - QNota.FieldByName('val_icms_sub').AsFloat) - QNota.FieldByName('val_ipi').AsFloat);
                       AuxValor := AuxValor;
                       VL_DOC        := AuxValor;
                       VL_BC_ICMS_ST := 0;
                       VL_ICMS_ST    := 0;
                     end
                     else
                     begin
                       AuxValor := (QNota.FieldByName('Total_Entrada').AsFloat - QNota.FieldByName('val_ipi').AsFloat);
                       AuxValor := AuxValor;
                       VL_DOC        := AuxValor;
                       VL_BC_ICMS_ST := QNota.FieldByName('val_base_icms_sub').AsFloat;
                       VL_ICMS_ST    := QNota.FieldByName('val_icms_sub').AsFloat;
                     end;
                     IND_PGTO      := tpSemPagamento;
                     VL_DESC       := QNota.FieldByName('val_desconto_fatura').AsFloat;
                     VL_ABAT_NT    := 0;
                     VL_MERC       := QNota.FieldByName('total_produtos').AsFloat;
                     IND_FRT       := tfSemCobrancaFrete;
                     VL_SEG        := 0;
                     VL_OUT_DA     := QNota.FieldByName('despesas_acessorias').AsFloat;
                     aIndiceDespAcess := 1;
                     if QNota.FieldByName('despesas_acessorias').AsFloat > 0 then
                        aIndiceDespAcess := (((QNota.FieldByName('VAL_BASE_ICMS').AsFloat * 100)/ QNota.FieldByName('total_produtos').AsFloat)/100);
                     VL_BC_ICMS    := QNota.FieldByName('VAL_BASE_ICMS').AsFloat;
                     VL_ICMS       := QNota.FieldByName('VAL_ICMS').AsFloat;
                     //
                     if (VerificaSTIPI) and
                        (not VerificaIPIProdutosNota(QNota.FieldByName('CD_ENTRADA').AsInteger,0)) then
                        VL_IPI     := 0
                     else
                        VL_IPI     := QNota.FieldByName('val_ipi').AsFloat;
                     VL_PIS        := QNota.FieldByName('val_pis').AsFloat;
                     VL_COFINS     := QNota.FieldByName('val_Cofins').AsFloat;
                     VL_PIS_ST     := 0;
                     VL_COFINS_ST  := 0;
                     // Registro C170
      //               if QNota.FieldByName('CHAVE_NFE').AsString = '' then
                     begin
                       QItem.Close;
                       QItem.Params.ParamByName('pCD_Entrada').AsInteger := QNota.FieldByName('CD_ENTRADA').AsInteger;
                       QItem.Open;
                       IItens := 0;
                       while not QItem.Eof do
                       begin
                         Inc(IItens);
                         with RegistroC170New do   //Inicio Adicionar os Itens:
                         begin
                            NUM_ITEM    := FormatFloat('000', IItens);
                            COD_ITEM    := IntToStr(QItem.FieldByName('cd_produto').AsInteger);
                            DESCR_COMPL := '';
                            QTD         := QItem.FieldByName('qtd_produto').AsFloat;
                            UNID        := QItem.FieldByName('unidade_medida').AsString;
                            if QNota.FieldByName('perc_desc').AsFloat > 0 then
                               AuxValor  := (QItem.FieldByName('val_custo').AsFloat * (100 - QNota.FieldByName('perc_desc').AsFloat) / 100)
                            else
                               AuxValor  := QItem.FieldByName('val_custo').AsFloat;
                            VL_ITEM          := (AuxValor*QItem.FieldByName('qtd_produto').AsFloat);
                            VL_DESC          := QItem.FieldByName('val_desc').AsFloat;
                            IND_MOV          := mfNao;
                            //
                            case StrToInt(QItem.FieldByName('situacao_tributaria_icms').AsString) of
                               0: CST_ICMS   := sticmsTributadaIntegralmente;
                              10: CST_ICMS   := sticmsTributadaComCobracaPorST;
                              20: CST_ICMS   := sticmsComReducao;
                              40: CST_ICMS   := sticmsIsenta;
                              41: CST_ICMS   := sticmsNaoTributada;
                              60: CST_ICMS   := sticmsCobradoAnteriormentePorST;
                              70: CST_ICMS   := sticmsComReducaoPorST;
                            end;
                            CFOP             := QItem.FieldByName('codigo_fiscal').AsString;
                            COD_NAT          := '';
                            VL_BC_ICMS       := QItem.FieldByName('val_base_icms').AsFloat*aIndiceDespAcess;
                            ALIQ_ICMS        := QItem.FieldByName('perc_icm').AsFloat;
                            VL_ICMS          := QItem.FieldByName('val_icms').AsFloat*aIndiceDespAcess;
                            VL_BC_ICMS_ST    := QItem.FieldByName('val_base_icms_sub').AsFloat;
                            ALIQ_ST          := QItem.FieldByName('perc_icm_sub').AsFloat;
                            VL_ICMS_ST       := QItem.FieldByName('val_icms_sub').AsFloat;
                            IND_APUR         := iaMensal;
                            aSitTribIPI      := QItem.FieldByName('SITUACAO_TRIBUTARIA_IPI').AsString;
                            if aSitTribIPI = '' then
                               aSitTribIPI := '49';
                            case StrToInt(aSitTribIPI) of
                               0 : CST_IPI := stipiEntradaRecuperacaoCredito;
                               1 : CST_IPI := stipiEntradaTributradaZero;
                               2 : CST_IPI := stipiEntradaIsenta;
                               3 : CST_IPI := stipiEntradaNaoTributada;
                               4 : CST_IPI := stipiEntradaImune;
                               5 : CST_IPI := stipiEntradaComSuspensao;
                              49 : CST_IPI := stipiOutrasEntradas;
                              50 : CST_IPI := stipiSaidaTributada;
                              51 : CST_IPI := stipiSaidaTributadaZero;
                              52 : CST_IPI := stipiSaidaIsenta;
                              53 : CST_IPI := stipiSaidaNaoTributada;
                              54 : CST_IPI := stipiSaidaImune;
                              55 : CST_IPI := stipiSaidaComSuspensao;
                              99 : CST_IPI := stipiOutrasSaidas;
                            end;
                            COD_ENQ          := '';
                            VL_BC_IPI        := QItem.FieldByName('val_base_ipi').AsFloat;
                            ALIQ_IPI         := QItem.FieldByName('perc_ipi').AsFloat;
                            VL_IPI           := QItem.FieldByName('val_ipi').AsFloat;
                            aCST_PIS := QItem.FieldByname('situacao_tributaria_pis').AsInteger;
                            if aCST_PIS = 0 then
                               aCST_PIS := 50;
                            case aCST_PIS of
                              01 : CST_PIS := stpisValorAliquotaNormal;
                              02 : CST_PIS := stpisValorAliquotaDiferenciada;
                              03 : CST_PIS := stpisQtdeAliquotaUnidade;
                              04 : CST_PIS := stpisMonofaticaAliquotaZero;
                              05 : CST_PIS := stpisValorAliquotaPorST;
                              06 : CST_PIS := stpisAliquotaZero;
                              07 : CST_PIS := stpisIsentaContribuicao;
                              08 : CST_PIS := stpisSemIncidenciaContribuicao;
                              09 : CST_PIS := stpisSuspensaoContribuicao;
                              49 : CST_PIS := stpisOutrasOperacoesSaida;
                              50 : CST_PIS := stpisOperCredExcRecTribMercInt;
                              51 : CST_PIS := stpisOperCredExcRecNaoTribMercInt;
                              52 : CST_PIS := stpisOperCredExcRecExportacao;
                              53 : CST_PIS := stpisOperCredRecTribNaoTribMercInt;
                              54 : CST_PIS := stpisOperCredRecTribMercIntEExportacao;
                              55 : CST_PIS := stpisOperCredRecNaoTribMercIntEExportacao;
                              56 : CST_PIS := stpisOperCredRecTribENaoTribMercIntEExportacao;
                              60 : CST_PIS := stpisCredPresAquiExcRecTribMercInt;
                              61 : CST_PIS := stpisCredPresAquiExcRecNaoTribMercInt;
                              62 : CST_PIS := stpisCredPresAquiExcExcRecExportacao;
                              63 : CST_PIS := stpisCredPresAquiRecTribNaoTribMercInt;
                              64 : CST_PIS := stpisCredPresAquiRecTribMercIntEExportacao;
                              65 : CST_PIS := stpisCredPresAquiRecNaoTribMercIntEExportacao;
                              66 : CST_PIS := stpisCredPresAquiRecTribENaoTribMercIntEExportacao;
                              70 : CST_PIS := stpisOperAquiSemDirCredito;
                              71 : CST_PIS := stpisOperAquiComIsensao;
                              72 : CST_PIS := stpisOperAquiComSuspensao;
                              73 : CST_PIS := stpisOperAquiAliquotaZero;
                              74 : CST_PIS := stpisOperAqui_SemIncidenciaContribuicao;
                              75 : CST_PIS := stpisOperAquiPorST;
                              98 : CST_PIS := stpisOutrasOperacoesEntrada;
                              99 : CST_PIS := stpisOutrasOperacoes;
                            end;
                            VL_BC_PIS        := QItem.FieldByName('val_base_pis').AsFloat;
                            ALIQ_PIS_PERC    := QItem.FieldByName('perc_pis').AsFloat;
                            QUANT_BC_PIS     := 0;
                            ALIQ_PIS_R       := QItem.FieldByName('perc_retido_pis').AsFloat;
                            VL_PIS           := QItem.FieldByName('val_pis').AsFloat;
                            aCST_COFINS := QItem.FieldByName('situacao_tributaria_cofins').AsInteger;
                            if aCST_COFINS = 0 then
                               aCST_COFINS := 50;
                            case aCST_PIS of
                              01 : CST_COFINS := stcofinsValorAliquotaNormal;
                              02 : CST_COFINS := stcofinsValorAliquotaDiferenciada;
                              03 : CST_COFINS := stcofinsQtdeAliquotaUnidade;
                              04 : CST_COFINS := stcofinsMonofaticaAliquotaZero;
                              05 : CST_COFINS := stcofinsValorAliquotaPorST;
                              06 : CST_COFINS := stcofinsAliquotaZero;
                              07 : CST_COFINS := stcofinsIsentaContribuicao;
                              08 : CST_COFINS := stcofinsSemIncidenciaContribuicao;
                              09 : CST_COFINS := stcofinsSuspensaoContribuicao;
                              49 : CST_COFINS := stcofinsOutrasOperacoesSaida;
                              50 : CST_COFINS := stcofinsOperCredExcRecTribMercInt;
                              51 : CST_COFINS := stcofinsOperCredExcRecNaoTribMercInt;
                              52 : CST_COFINS := stcofinsOperCredExcRecExportacao;
                              53 : CST_COFINS := stcofinsOperCredRecTribNaoTribMercInt;
                              54 : CST_COFINS := stcofinsOperCredRecTribMercIntEExportacao;
                              55 : CST_COFINS := stcofinsOperCredRecNaoTribMercIntEExportacao;
                              56 : CST_COFINS := stcofinsOperCredRecTribENaoTribMercIntEExportacao;
                              60 : CST_COFINS := stcofinsCredPresAquiExcRecTribMercInt;
                              61 : CST_COFINS := stcofinsCredPresAquiExcRecNaoTribMercInt;
                              62 : CST_COFINS := stcofinsCredPresAquiExcExcRecExportacao;
                              63 : CST_COFINS := stcofinsCredPresAquiRecTribNaoTribMercInt;
                              64 : CST_COFINS := stcofinsCredPresAquiRecTribMercIntEExportacao;
                              65 : CST_COFINS := stcofinsCredPresAquiRecNaoTribMercIntEExportacao;
                              66 : CST_COFINS := stcofinsCredPresAquiRecTribENaoTribMercIntEExportacao;
                              70 : CST_COFINS := stcofinsOperAquiSemDirCredito;
                              71 : CST_COFINS := stcofinsOperAquiComIsensao;
                              72 : CST_COFINS := stcofinsOperAquiComSuspensao;
                              73 : CST_COFINS := stcofinsOperAquiAliquotaZero;
                              74 : CST_COFINS := stcofinsOperAqui_SemIncidenciaContribuicao;
                              75 : CST_COFINS := stcofinsOperAquiPorST;
                              98 : CST_COFINS := stcofinsOutrasOperacoesEntrada;
                              99 : CST_COFINS := stcofinsOutrasOperacoes;
                            end;
                            VL_BC_COFINS     := QItem.FieldByName('val_base_cofins').AsFloat;
                            ALIQ_COFINS_PERC := QItem.FieldByName('perc_cofins').AsFloat;
                            QUANT_BC_COFINS  := 0;
                            ALIQ_COFINS_R    := QItem.FieldByName('perc_retido_cofins').AsFloat;
                            VL_COFINS        := QItem.FieldByName('val_cofins').AsFloat;
                            COD_CTA          := '';
                         end; //Fim dos Itens;
                         QItem.Next;
                       end;
                     end;
                   end;
                 end;
                 Inc(aRegAtual);
                 sProgressBar1.Position := aRegAtual;
                 Application.ProcessMessages;
                 //
                 QNota.Next;
               end;
      // ************************************************************************************** //
               // notas de saidas
               QNota.Close;
               QNota.SQL.Clear;
               QNota.SQL.Add('select distinct notasai.cd_saida,notasai.cd_cliente,nfemsg.STATUS_NFE,');
               QNota.SQL.Add('notasai.num_doc,notasai.dt_saida,notasai.tipo_frete,notasai.despesas_acessorias,');
               QNota.SQL.Add('notasai.total_saida,notasai.val_desconto_fatura,notasai.perc_desc,');
               QNota.SQL.Add('notasai.total_produtos,notasai.val_base_icms,notasai.val_icms,cliente.REGISTRO_1,');
               QNota.SQL.Add('notasai.val_base_icms_sub,notasai.val_icms_sub,notasai.val_ipi,');
               QNota.SQL.Add('notasai.val_pis,notasai.val_cofins,nfemsg.CHAVE_NFE,notasai.frete from notasai');
               QNota.SQL.Add('left outer join natureza on notasai.cd_natureza = natureza.cd_natureza');
               QNota.SQL.Add('left outer join nfemsg on nfemsg.cd_saida = notasai.cd_saida');
               QNota.SQL.Add('left outer join cliente on cliente.cd_cliente = notasai.cd_cliente');
               QNota.SQL.Add('where notasai.dt_saida between :pDatai and :pDataf');
               QNota.SQL.Add('and notasai.nota_cancelada = 0');
               QNota.SQL.Add('and notasai.num_doc is not null');
               QNota.SQL.Add('and notasai.cd_empresa = :pEmpresa');
               QNota.SQL.Add('and natureza.apropriar_icms_ativo_permanente = 0');
               QNota.SQL.Add('and natureza.tributar_icms = -1');
//               QNota.SQL.Add('and (notasai.val_pis > 0 or notasai.val_cofins > 0)');
               // SQL Itens
               QItem.Close;
               QItem.SQL.Clear;
               QItem.SQL.Add('select saiprod.cd_produto,saiprod.unidade_medida,');
               QItem.SQL.Add('saiprod.perc_icm,saiprod.perc_icm_sub,saiprod.perc_ipi,');
               QItem.SQL.Add('saiprod.perc_pis,saiprod.perc_retido_pis,saiprod.perc_cofins,');
               QItem.SQL.Add('saiprod.perc_retido_cofins,natureza.codigo_fiscal,');
               QItem.SQL.Add('saiprod.situacao_tributaria_icms,saiprod.SITUACAO_TRIBUTARIA_IPI,');
               QItem.SQL.Add('saiprod.situacao_tributaria_pis,saiprod.SITUACAO_TRIBUTARIA_COFINS,');
               QItem.SQL.Add('sum(saiprod.qtd_produto) as qtd_produto,');
               QItem.SQL.Add('sum(saiprod.val_venda) as val_venda,');
               QItem.SQL.Add('sum(saiprod.total_produto) as total_produto,');
               QItem.SQL.Add('sum(saiprod.val_desc) as val_desc,');
               QItem.SQL.Add('sum(saiprod.val_base_icms) as val_base_icms,');
               QItem.SQL.Add('sum(saiprod.val_icms) as val_icms,');
               QItem.SQL.Add('sum(saiprod.val_base_icms_sub) as val_base_icms_sub,');
               QItem.SQL.Add('sum(saiprod.val_icms_sub) as val_icms_sub,');
               QItem.SQL.Add('sum(saiprod.val_base_ipi) as val_base_ipi,');
               QItem.SQL.Add('sum(saiprod.val_ipi) val_ipi,');
               QItem.SQL.Add('sum(saiprod.val_base_pis) as val_base_pis,');
               QItem.SQL.Add('sum(saiprod.val_pis) as val_pis,');
               QItem.SQL.Add('sum(saiprod.val_base_cofins) as val_base_cofins,');
               QItem.SQL.Add('sum(saiprod.val_cofins) as val_cofins from notasai');
               QItem.SQL.Add('left outer join saiprod on saiprod.cd_saida = notasai.cd_saida');
               QItem.SQL.Add('left outer join natureza on saiprod.cd_natureza = natureza.cd_natureza');
               QItem.SQL.Add('where saiprod.cd_saida = :pCD_Saida');
               QItem.SQL.Add('group by saiprod.cd_produto,saiprod.unidade_medida,');
               QItem.SQL.Add('saiprod.perc_icm,saiprod.perc_icm_sub,saiprod.perc_ipi,');
               QItem.SQL.Add('saiprod.perc_pis,saiprod.perc_retido_pis,saiprod.perc_cofins,');
               QItem.SQL.Add('saiprod.perc_retido_cofins,natureza.codigo_fiscal,');
               QItem.SQL.Add('saiprod.situacao_tributaria_icms,saiprod.SITUACAO_TRIBUTARIA_IPI,');
               QItem.SQL.Add('saiprod.situacao_tributaria_pis,saiprod.SITUACAO_TRIBUTARIA_COFINS');
               // seleciona Dados
               QNota.Params.ParamByName('pDatai').AsDate      := pDatai;
               QNota.Params.ParamByName('pDataf').AsDate      := pDataf;
               QNota.Params.ParamByName('pEmpresa').AsInteger := CdsEmpresa.FieldByName('CD_Empresa').AsInteger;
               QNota.Open;
               //
               aNumReg := RetornaQtdRegDBX(QNota);
               sLbMensagem.Caption := 'Registros de Saidas';
               sProgressBar1.Max := aNumReg;
               Application.ProcessMessages;
               aRegAtual := 0;
               while not QNota.Eof do
               begin
                 AuxFrete := 0;
                 if (QNota.FieldByName('STATUS_NFE').AsString = '100') or
                    (QNota.FieldByName('STATUS_NFE').AsString = '') then
                 begin
                   AuxFrete := QNota.FieldByName('Frete').AsFloat;
                   with RegistroC100New do
                   begin
                     COD_PART      := 'C'+IntToStrZero(QNota.FieldByName('cd_cliente').AsInteger,5);
                     IND_EMIT      := edEmissaoPropria;
                     IND_OPER      := tpSaidaPrestacao;
                     if QNota.FieldByName('CHAVE_NFE').AsString <> '' then
                        COD_MOD       := '55'
                     else
                        COD_MOD       := '01';
                     COD_SIT       := sdRegular;
                     SER           := '';
                     NUM_DOC       := IntToStr(QNota.FieldByName('num_doc').AsInteger);
                     CHV_NFE       := QNota.FieldByName('CHAVE_NFE').AsString;
                     DT_DOC        := QNota.FieldByName('DT_Saida').AsDateTime;
                     DT_E_S        := QNota.FieldByName('DT_Saida').AsDateTime;
                     if (VerificaSTIPI) and
                        (not VerificaSTProdutosNota(QNota.FieldByName('CD_SAIDA').AsInteger,1)) then
                     begin
                       AuxValor := ((QNota.FieldByName('Total_saida').AsFloat - QNota.FieldByName('val_icms_sub').AsFloat) - QNota.FieldByName('val_ipi').AsFloat);
                       AuxValor := AuxValor;
                       VL_DOC        := AuxValor;
                       VL_BC_ICMS_ST := 0;
                       VL_ICMS_ST    := 0;
                     end
                     else
                     begin
                       AuxValor := (QNota.FieldByName('Total_saida').AsFloat - QNota.FieldByName('val_ipi').AsFloat);
                       AuxValor := AuxValor;
                       VL_DOC        := AuxValor;
                       VL_BC_ICMS_ST := QNota.FieldByName('val_base_icms_sub').AsFloat;
                       VL_ICMS_ST    := QNota.FieldByName('val_icms_sub').AsFloat;
                     end;
                     IND_PGTO      := tpSemPagamento;
                     VL_DESC       := QNota.FieldByName('val_desconto_fatura').AsFloat;
                     VL_ABAT_NT    := 0;
                     VL_MERC       := QNota.FieldByName('total_produtos').AsFloat;
                     IND_FRT       := tfSemCobrancaFrete;
                     VL_SEG        := 0;
                     VL_OUT_DA     := QNota.FieldByName('despesas_acessorias').AsFloat;
                     aIndiceDespAcess := 1;
                     if QNota.FieldByName('despesas_acessorias').AsFloat > 0 then
                        aIndiceDespAcess := (((QNota.FieldByName('VAL_BASE_ICMS').AsFloat * 100)/ QNota.FieldByName('total_produtos').AsFloat)/100);
                     VL_BC_ICMS    := QNota.FieldByName('VAL_BASE_ICMS').AsFloat;
                     VL_ICMS       := QNota.FieldByName('VAL_ICMS').AsFloat;

                     if (VerificaSTIPI) and
                        (not VerificaIPIProdutosNota(QNota.FieldByName('CD_SAIDA').AsInteger,1)) then
                        VL_IPI     := 0
                     else
                        VL_IPI     := QNota.FieldByName('val_ipi').AsFloat;
                     //
                     VL_PIS        := QNota.FieldByName('val_pis').AsFloat;
                     VL_COFINS     := QNota.FieldByName('val_Cofins').AsFloat;
                     VL_PIS_ST     := 0;
                     VL_COFINS_ST  := 0;
                     // Registro C170
//                     if QNota.FieldByName('CHAVE_NFE').AsString = '' then
                     begin
                       QItem.Close;
                       QItem.Params.ParamByName('pCD_Saida').AsInteger := QNota.FieldByName('CD_SAIDA').AsInteger;
                       QItem.Open;
                       IItens := 0;
                       while not QItem.Eof do
                       begin
                         Inc(IItens);
                         with RegistroC170New do   //Inicio Adicionar os Itens:
                         begin
                            NUM_ITEM    := FormatFloat('000', IItens);
                            COD_ITEM    := IntToStr(QItem.FieldByName('cd_produto').AsInteger);
                            DESCR_COMPL := '';
                            QTD         := QItem.FieldByName('qtd_produto').AsFloat;
                            UNID        := QItem.FieldByName('unidade_medida').AsString;
                            if QNota.FieldByName('perc_desc').AsFloat > 0 then
                               AuxValor  := (QItem.FieldByName('val_venda').AsFloat * (100 - QNota.FieldByName('perc_desc').AsFloat) / 100)
                            else
                               AuxValor  := QItem.FieldByName('val_venda').AsFloat;
                            VL_ITEM          := (AuxValor*QItem.FieldByName('qtd_produto').AsFloat);
                            VL_DESC          := QItem.FieldByName('val_desc').AsFloat;
                            IND_MOV          := mfNao;
                            case StrToInt(QItem.FieldByName('situacao_tributaria_icms').AsString) of
                               0: CST_ICMS   := sticmsTributadaIntegralmente;
                              10: CST_ICMS   := sticmsTributadaComCobracaPorST;
                              20: CST_ICMS   := sticmsComReducao;
                              40: CST_ICMS   := sticmsIsenta;
                              41: CST_ICMS   := sticmsNaoTributada;
                              60: CST_ICMS   := sticmsCobradoAnteriormentePorST;
                              70: CST_ICMS   := sticmsComReducaoPorST;
                            end;
                            CFOP             := QItem.FieldByName('codigo_fiscal').AsString;
                            COD_NAT          := '';
                            VL_BC_ICMS       := QItem.FieldByName('val_base_icms').AsFloat*aIndiceDespAcess;
                            ALIQ_ICMS        := QItem.FieldByName('perc_icm').AsFloat;
                            VL_ICMS          := QItem.FieldByName('val_icms').AsFloat*aIndiceDespAcess;
                            VL_BC_ICMS_ST    := QItem.FieldByName('val_base_icms_sub').AsFloat;
                            ALIQ_ST          := QItem.FieldByName('perc_icm_sub').AsFloat;
                            VL_ICMS_ST       := QItem.FieldByName('val_icms_sub').AsFloat;
                            IND_APUR         := iaMensal;
                            if aSitTribIPI = '' then
                               aSitTribIPI := '99';
                            case StrToInt(aSitTribIPI) of
                               0 : CST_IPI := stipiEntradaRecuperacaoCredito;
                               1 : CST_IPI := stipiEntradaTributradaZero;
                               2 : CST_IPI := stipiEntradaIsenta;
                               3 : CST_IPI := stipiEntradaNaoTributada;
                               4 : CST_IPI := stipiEntradaImune;
                               5 : CST_IPI := stipiEntradaComSuspensao;
                              49 : CST_IPI := stipiOutrasEntradas;
                              50 : CST_IPI := stipiSaidaTributada;
                              51 : CST_IPI := stipiSaidaTributadaZero;
                              52 : CST_IPI := stipiSaidaIsenta;
                              53 : CST_IPI := stipiSaidaNaoTributada;
                              54 : CST_IPI := stipiSaidaImune;
                              55 : CST_IPI := stipiSaidaComSuspensao;
                              99 : CST_IPI := stipiOutrasSaidas;
                           end;
                            COD_ENQ          := '';
                            VL_BC_IPI        := QItem.FieldByName('val_base_ipi').AsFloat;
                            ALIQ_IPI         := QItem.FieldByName('perc_ipi').AsFloat;
                            VL_IPI           := QItem.FieldByName('val_ipi').AsFloat;
                            aCST_PIS := QItem.FieldByname('situacao_tributaria_pis').AsInteger;
                            if aCST_PIS = 0 then
                               aCST_PIS := 50;
                            case aCST_PIS of
                              01 : CST_PIS := stpisValorAliquotaNormal;
                              02 : CST_PIS := stpisValorAliquotaDiferenciada;
                              03 : CST_PIS := stpisQtdeAliquotaUnidade;
                              04 : CST_PIS := stpisMonofaticaAliquotaZero;
                              05 : CST_PIS := stpisValorAliquotaPorST;
                              06 : CST_PIS := stpisAliquotaZero;
                              07 : CST_PIS := stpisIsentaContribuicao;
                              08 : CST_PIS := stpisSemIncidenciaContribuicao;
                              09 : CST_PIS := stpisSuspensaoContribuicao;
                              49 : CST_PIS := stpisOutrasOperacoesSaida;
                              50 : CST_PIS := stpisOperCredExcRecTribMercInt;
                              51 : CST_PIS := stpisOperCredExcRecNaoTribMercInt;
                              52 : CST_PIS := stpisOperCredExcRecExportacao;
                              53 : CST_PIS := stpisOperCredRecTribNaoTribMercInt;
                              54 : CST_PIS := stpisOperCredRecTribMercIntEExportacao;
                              55 : CST_PIS := stpisOperCredRecNaoTribMercIntEExportacao;
                              56 : CST_PIS := stpisOperCredRecTribENaoTribMercIntEExportacao;
                              60 : CST_PIS := stpisCredPresAquiExcRecTribMercInt;
                              61 : CST_PIS := stpisCredPresAquiExcRecNaoTribMercInt;
                              62 : CST_PIS := stpisCredPresAquiExcExcRecExportacao;
                              63 : CST_PIS := stpisCredPresAquiRecTribNaoTribMercInt;
                              64 : CST_PIS := stpisCredPresAquiRecTribMercIntEExportacao;
                              65 : CST_PIS := stpisCredPresAquiRecNaoTribMercIntEExportacao;
                              66 : CST_PIS := stpisCredPresAquiRecTribENaoTribMercIntEExportacao;
                              70 : CST_PIS := stpisOperAquiSemDirCredito;
                              71 : CST_PIS := stpisOperAquiComIsensao;
                              72 : CST_PIS := stpisOperAquiComSuspensao;
                              73 : CST_PIS := stpisOperAquiAliquotaZero;
                              74 : CST_PIS := stpisOperAqui_SemIncidenciaContribuicao;
                              75 : CST_PIS := stpisOperAquiPorST;
                              98 : CST_PIS := stpisOutrasOperacoesEntrada;
                              99 : CST_PIS := stpisOutrasOperacoes;
                            end;
                            VL_BC_PIS        := QItem.FieldByName('val_base_pis').AsFloat;
                            ALIQ_PIS_PERC    := QItem.FieldByName('perc_pis').AsFloat;
                            QUANT_BC_PIS     := 0;
                            ALIQ_PIS_R       := QItem.FieldByName('perc_retido_pis').AsFloat;
                            VL_PIS           := QItem.FieldByName('val_pis').AsFloat;
                            aCST_COFINS := QItem.FieldByName('situacao_tributaria_cofins').AsInteger;
                            if aCST_COFINS = 0 then
                               aCST_COFINS := 50;
                            case aCST_PIS of
                              01 : CST_COFINS := stcofinsValorAliquotaNormal;
                              02 : CST_COFINS := stcofinsValorAliquotaDiferenciada;
                              03 : CST_COFINS := stcofinsQtdeAliquotaUnidade;
                              04 : CST_COFINS := stcofinsMonofaticaAliquotaZero;
                              05 : CST_COFINS := stcofinsValorAliquotaPorST;
                              06 : CST_COFINS := stcofinsAliquotaZero;
                              07 : CST_COFINS := stcofinsIsentaContribuicao;
                              08 : CST_COFINS := stcofinsSemIncidenciaContribuicao;
                              09 : CST_COFINS := stcofinsSuspensaoContribuicao;
                              49 : CST_COFINS := stcofinsOutrasOperacoesSaida;
                              50 : CST_COFINS := stcofinsOperCredExcRecTribMercInt;
                              51 : CST_COFINS := stcofinsOperCredExcRecNaoTribMercInt;
                              52 : CST_COFINS := stcofinsOperCredExcRecExportacao;
                              53 : CST_COFINS := stcofinsOperCredRecTribNaoTribMercInt;
                              54 : CST_COFINS := stcofinsOperCredRecTribMercIntEExportacao;
                              55 : CST_COFINS := stcofinsOperCredRecNaoTribMercIntEExportacao;
                              56 : CST_COFINS := stcofinsOperCredRecTribENaoTribMercIntEExportacao;
                              60 : CST_COFINS := stcofinsCredPresAquiExcRecTribMercInt;
                              61 : CST_COFINS := stcofinsCredPresAquiExcRecNaoTribMercInt;
                              62 : CST_COFINS := stcofinsCredPresAquiExcExcRecExportacao;
                              63 : CST_COFINS := stcofinsCredPresAquiRecTribNaoTribMercInt;
                              64 : CST_COFINS := stcofinsCredPresAquiRecTribMercIntEExportacao;
                              65 : CST_COFINS := stcofinsCredPresAquiRecNaoTribMercIntEExportacao;
                              66 : CST_COFINS := stcofinsCredPresAquiRecTribENaoTribMercIntEExportacao;
                              70 : CST_COFINS := stcofinsOperAquiSemDirCredito;
                              71 : CST_COFINS := stcofinsOperAquiComIsensao;
                              72 : CST_COFINS := stcofinsOperAquiComSuspensao;
                              73 : CST_COFINS := stcofinsOperAquiAliquotaZero;
                              74 : CST_COFINS := stcofinsOperAqui_SemIncidenciaContribuicao;
                              75 : CST_COFINS := stcofinsOperAquiPorST;
                              98 : CST_COFINS := stcofinsOutrasOperacoesEntrada;
                              99 : CST_COFINS := stcofinsOutrasOperacoes;
                            end;
                            VL_BC_COFINS     := QItem.FieldByName('val_base_cofins').AsFloat;
                            ALIQ_COFINS_PERC := QItem.FieldByName('perc_cofins').AsFloat;
                            QUANT_BC_COFINS  := 0;
                            ALIQ_COFINS_R    := QItem.FieldByName('perc_retido_cofins').AsFloat;
                            VL_COFINS        := QItem.FieldByName('val_cofins').AsFloat;
                            COD_CTA          := '';
                          end; //Fim dos Itens;
                          QItem.Next;
                       end;
                     end;
                   end;
                 end;
                 Inc(aRegAtual);
                 sProgressBar1.Position := aRegAtual;
                 Application.ProcessMessages;
                 //
                 QNota.Next;
               end;
               // Registro C180 referente a vendas
               QNota.Close;
               QNota.SQL.Clear;
               QNota.SQL.Add('select saiprod.cd_produto,saiprod.codigo_ncm,');
               QNota.SQL.Add('sum((saiprod.val_venda*(100-saiprod.perc_desc/100)*saiprod.qtd_produto)) as val_prod');
               QNota.SQL.Add('from notasai');
               QNota.SQL.Add('inner join saiprod on saiprod.cd_saida = notasai.cd_saida');
               QNota.SQL.Add('left outer join natureza on notasai.cd_natureza = natureza.cd_natureza');
               QNota.SQL.Add('where notasai.dt_saida between :pDatai and :pDataf');
               QNota.SQL.Add('and notasai.nota_cancelada = 0');
               QNota.SQL.Add('and notasai.num_doc is not null');
               QNota.SQL.Add('and notasai.cd_empresa = :pEmpresa');
               QNota.SQL.Add('and natureza.apropriar_icms_ativo_permanente = 0');
               QNota.SQL.Add('and natureza.tributar_icms = -1');
               QNota.SQL.Add('group by saiprod.cd_produto,saiprod.codigo_ncm');
               // seleciona Dados
               QNota.Params.ParamByName('pDatai').AsDate      := pDatai;
               QNota.Params.ParamByName('pDataf').AsDate      := pDataf;
               QNota.Params.ParamByName('pEmpresa').AsInteger := CdsEmpresa.FieldByName('CD_Empresa').AsInteger;
               QNota.Open;
               while not QNota.Eof do
               begin
                 with RegistroC180New do
                 begin
                   COD_MOD     := '55';
                   DT_DOC_INI  := pDatai;
                   DT_DOC_FIN  := pDataf;
                   COD_ITEM    := IntToStr(QNota.FieldByname('CD_PRODUTO').AsInteger);
                   COD_NCM     := Trim(QNota.FieldByname('CODIGO_NCM').AsString);
                   EX_IPI      := '';
                   VL_TOT_ITEM := QNota.FieldByname('val_prod').AsFloat;
                   // registro C181
                   QItem.Close;
                   QItem.SQL.Clear;
                   QItem.SQL.Add('select saiprod.situacao_tributaria_pis,natureza.codigo_fiscal,saiprod.perc_pis,');
                   QItem.SQL.Add('sum((saiprod.val_venda*(100-saiprod.perc_desc/100)*saiprod.qtd_produto)) as val_prod,');
                   QItem.SQL.Add('sum((saiprod.val_venda*(100-saiprod.perc_desc/100))) as val_desc,');
                   QItem.SQL.Add('sum(saiprod.val_pis) as val_pis from notasai');
                   QItem.SQL.Add('inner join saiprod on saiprod.cd_saida = notasai.cd_saida');
                   QItem.SQL.Add('left outer join natureza on notasai.cd_natureza = natureza.cd_natureza');
                   QItem.SQL.Add('where notasai.dt_saida between :pDatai and :pDataf');
                   QItem.SQL.Add('and notasai.nota_cancelada = 0');
                   QItem.SQL.Add('and notasai.num_doc is not null');
                   QItem.SQL.Add('and notasai.cd_empresa = :pEmpresa');
                   QItem.SQL.Add('and natureza.apropriar_icms_ativo_permanente = 0');
                   QItem.SQL.Add('and natureza.tributar_icms = -1');
                   QItem.SQL.Add('and saiprod.cd_produto = :pCd_Prod');
                   QItem.SQL.Add('group by saiprod.situacao_tributaria_pis,natureza.codigo_fiscal,saiprod.perc_pis');
                   QItem.Params.ParamByName('pDatai').AsDate      := pDatai;
                   QItem.Params.ParamByName('pDataf').AsDate      := pDataf;
                   QItem.Params.ParamByName('pEmpresa').AsInteger := CdsEmpresa.FieldByName('CD_Empresa').AsInteger;
                   QItem.Params.ParamByName('pCd_Prod').AsInteger := QNota.FieldByname('CD_PRODUTO').AsInteger;
                   QItem.Open;
                   while not QItem.Eof do
                   begin
                     with RegistroC181New do
                     begin
                       aCST_PIS := QItem.FieldByName('situacao_tributaria_pis').AsInteger;
                       if aCST_PIS = 0 then
                          aCST_PIS := 50;
                       case aCST_PIS of
                         01 : CST_PIS := stpisValorAliquotaNormal;
                         02 : CST_PIS := stpisValorAliquotaDiferenciada;
                         03 : CST_PIS := stpisQtdeAliquotaUnidade;
                         04 : CST_PIS := stpisMonofaticaAliquotaZero;
                         05 : CST_PIS := stpisValorAliquotaPorST;
                         06 : CST_PIS := stpisAliquotaZero;
                         07 : CST_PIS := stpisIsentaContribuicao;
                         08 : CST_PIS := stpisSemIncidenciaContribuicao;
                         09 : CST_PIS := stpisSuspensaoContribuicao;
                         49 : CST_PIS := stpisOutrasOperacoesSaida;
                         50 : CST_PIS := stpisOperCredExcRecTribMercInt;
                         51 : CST_PIS := stpisOperCredExcRecNaoTribMercInt;
                         52 : CST_PIS := stpisOperCredExcRecExportacao;
                         53 : CST_PIS := stpisOperCredRecTribNaoTribMercInt;
                         54 : CST_PIS := stpisOperCredRecTribMercIntEExportacao;
                         55 : CST_PIS := stpisOperCredRecNaoTribMercIntEExportacao;
                         56 : CST_PIS := stpisOperCredRecTribENaoTribMercIntEExportacao;
                         60 : CST_PIS := stpisCredPresAquiExcRecTribMercInt;
                         61 : CST_PIS := stpisCredPresAquiExcRecNaoTribMercInt;
                         62 : CST_PIS := stpisCredPresAquiExcExcRecExportacao;
                         63 : CST_PIS := stpisCredPresAquiRecTribNaoTribMercInt;
                         64 : CST_PIS := stpisCredPresAquiRecTribMercIntEExportacao;
                         65 : CST_PIS := stpisCredPresAquiRecNaoTribMercIntEExportacao;
                         66 : CST_PIS := stpisCredPresAquiRecTribENaoTribMercIntEExportacao;
                         70 : CST_PIS := stpisOperAquiSemDirCredito;
                         71 : CST_PIS := stpisOperAquiComIsensao;
                         72 : CST_PIS := stpisOperAquiComSuspensao;
                         73 : CST_PIS := stpisOperAquiAliquotaZero;
                         74 : CST_PIS := stpisOperAqui_SemIncidenciaContribuicao;
                         75 : CST_PIS := stpisOperAquiPorST;
                         98 : CST_PIS := stpisOutrasOperacoesEntrada;
                         99 : CST_PIS := stpisOutrasOperacoes;
                       end;
                       CFOP           := QItem.FieldByName('codigo_fiscal').AsString;
                       VL_ITEM        := QItem.FieldByName('Val_Prod').AsFloat;
                       VL_DESC        := QItem.FieldByName('Val_Desc').AsFloat;
                       VL_BC_PIS      := QItem.FieldByName('Val_Prod').AsFloat;
                       ALIQ_PIS       := QItem.FieldByName('perc_pis').AsFloat;
                       QUANT_BC_PIS   := 0;
                       ALIQ_PIS_QUANT := 0;
                       VL_PIS         := QItem.FieldByName('val_pis').AsFloat;
                       COD_CTA        := '';
                     end;
                     QItem.Next;
                   end;
                   // registro C185
                   QItem.Close;
                   QItem.SQL.Clear;
                   QItem.SQL.Add('select saiprod.situacao_tributaria_cofins,natureza.codigo_fiscal,saiprod.perc_cofins,');
                   QItem.SQL.Add('sum((saiprod.val_venda*(100-saiprod.perc_desc/100)*saiprod.qtd_produto)) as val_prod,');
                   QItem.SQL.Add('sum((saiprod.val_venda*(100-saiprod.perc_desc/100))) as val_desc,');
                   QItem.SQL.Add('sum(saiprod.val_cofins) as val_cofins from notasai');
                   QItem.SQL.Add('inner join saiprod on saiprod.cd_saida = notasai.cd_saida');
                   QItem.SQL.Add('left outer join natureza on notasai.cd_natureza = natureza.cd_natureza');
                   QItem.SQL.Add('where notasai.dt_saida between :pDatai and :pDataf');
                   QItem.SQL.Add('and notasai.nota_cancelada = 0');
                   QItem.SQL.Add('and notasai.num_doc is not null');
                   QItem.SQL.Add('and notasai.cd_empresa = :pEmpresa');
                   QItem.SQL.Add('and natureza.apropriar_icms_ativo_permanente = 0');
                   QItem.SQL.Add('and natureza.tributar_icms = -1');
                   QItem.SQL.Add('and saiprod.cd_produto = :pCd_Prod');
                   QItem.SQL.Add('group by saiprod.situacao_tributaria_cofins,natureza.codigo_fiscal,saiprod.perc_cofins');
                   QItem.Params.ParamByName('pDatai').AsDate      := pDatai;
                   QItem.Params.ParamByName('pDataf').AsDate      := pDataf;
                   QItem.Params.ParamByName('pEmpresa').AsInteger := CdsEmpresa.FieldByName('CD_Empresa').AsInteger;
                   QItem.Params.ParamByName('pCd_Prod').AsInteger := QNota.FieldByname('CD_PRODUTO').AsInteger;
                   QItem.Open;
                   while not QItem.Eof do
                   begin
                     with RegistroC185New do
                     begin
                       aCST_PIS := QItem.FieldByName('situacao_tributaria_cofins').AsInteger;
                       if aCST_PIS = 0 then
                          aCST_PIS := 50;
                       case aCST_PIS of
                         01 : CST_COFINS := stcofinsValorAliquotaNormal;
                         02 : CST_COFINS := stcofinsValorAliquotaDiferenciada;
                         03 : CST_COFINS := stcofinsQtdeAliquotaUnidade;
                         04 : CST_COFINS := stcofinsMonofaticaAliquotaZero;
                         05 : CST_COFINS := stcofinsValorAliquotaPorST;
                         06 : CST_COFINS := stcofinsAliquotaZero;
                         07 : CST_COFINS := stcofinsIsentaContribuicao;
                         08 : CST_COFINS := stcofinsSemIncidenciaContribuicao;
                         09 : CST_COFINS := stcofinsSuspensaoContribuicao;
                         49 : CST_COFINS := stcofinsOutrasOperacoesSaida;
                         50 : CST_COFINS := stcofinsOperCredExcRecTribMercInt;
                         51 : CST_COFINS := stcofinsOperCredExcRecNaoTribMercInt;
                         52 : CST_COFINS := stcofinsOperCredExcRecExportacao;
                         53 : CST_COFINS := stcofinsOperCredRecTribNaoTribMercInt;
                         54 : CST_COFINS := stcofinsOperCredRecTribMercIntEExportacao;
                         55 : CST_COFINS := stcofinsOperCredRecNaoTribMercIntEExportacao;
                         56 : CST_COFINS := stcofinsOperCredRecTribENaoTribMercIntEExportacao;
                         60 : CST_COFINS := stcofinsCredPresAquiExcRecTribMercInt;
                         61 : CST_COFINS := stcofinsCredPresAquiExcRecNaoTribMercInt;
                         62 : CST_COFINS := stcofinsCredPresAquiExcExcRecExportacao;
                         63 : CST_COFINS := stcofinsCredPresAquiRecTribNaoTribMercInt;
                         64 : CST_COFINS := stcofinsCredPresAquiRecTribMercIntEExportacao;
                         65 : CST_COFINS := stcofinsCredPresAquiRecNaoTribMercIntEExportacao;
                         66 : CST_COFINS := stcofinsCredPresAquiRecTribENaoTribMercIntEExportacao;
                         70 : CST_COFINS := stcofinsOperAquiSemDirCredito;
                         71 : CST_COFINS := stcofinsOperAquiComIsensao;
                         72 : CST_COFINS := stcofinsOperAquiComSuspensao;
                         73 : CST_COFINS := stcofinsOperAquiAliquotaZero;
                         74 : CST_COFINS := stcofinsOperAqui_SemIncidenciaContribuicao;
                         75 : CST_COFINS := stcofinsOperAquiPorST;
                         98 : CST_COFINS := stcofinsOutrasOperacoesEntrada;
                         99 : CST_COFINS := stcofinsOutrasOperacoes;
                       end;
                       CFOP              := QItem.FieldByName('codigo_fiscal').AsString;
                       VL_ITEM           := QItem.FieldByName('Val_Prod').AsFloat;
                       VL_DESC           := QItem.FieldByName('Val_Desc').AsFloat;
                       VL_BC_COFINS      := QItem.FieldByName('Val_Prod').AsFloat;
                       ALIQ_COFINS       := QItem.FieldByName('perc_cofins').AsFloat;
                       QUANT_BC_COFINS   := 0;
                       ALIQ_COFINS_QUANT := 0;
                       VL_COFINS         := QItem.FieldByName('val_cofins').AsFloat;
                       COD_CTA           := '';
                     end;
                     QItem.Next;
                   end;
                 end;
                 QNota.Next;
               end;
               // Registro C190 referente a compras
               QNota.Close;
               QNota.SQL.Clear;
               QNota.SQL.Add('select entprod.cd_produto,entprod.codigo_ncm,');
               QNota.SQL.Add('sum((entprod.val_custo*(100-entprod.perc_desc/100)*entprod.qtd_produto)) as val_prod');
               QNota.SQL.Add('from notaent');
               QNota.SQL.Add('inner join entprod on entprod.cd_entrada = notaent.cd_entrada');
               QNota.SQL.Add('left outer join natureza on notaent.cd_natureza = natureza.cd_natureza');
               QNota.SQL.Add('where notaent.dt_entrada between :pDatai and :pDataf');
               QNota.SQL.Add('and notaent.nota_cancelada = 0');
               QNota.SQL.Add('and notaent.num_doc is not null');
               QNota.SQL.Add('and notaent.cd_empresa = :pEmpresa');
               QNota.SQL.Add('and natureza.apropriar_icms_ativo_permanente = 0');
               QNota.SQL.Add('and natureza.tributar_icms = -1');
               QNota.SQL.Add('group by entprod.cd_produto,entprod.codigo_ncm');
               // seleciona Dados
               QNota.Params.ParamByName('pDatai').AsDate      := pDatai;
               QNota.Params.ParamByName('pDataf').AsDate      := pDataf;
               QNota.Params.ParamByName('pEmpresa').AsInteger := CdsEmpresa.FieldByName('CD_Empresa').AsInteger;
               QNota.Open;
               while not QNota.Eof do
               begin
                 with RegistroC190New do
                 begin
                   COD_MOD     := '55';
                   DT_REF_INI  := pDatai;
                   DT_REF_FIN  := pDataf;
                   COD_ITEM    := IntToStr(QNota.FieldByname('CD_PRODUTO').AsInteger);
                   COD_NCM     := Trim(QNota.FieldByname('CODIGO_NCM').AsString);
                   EX_IPI      := '';
                   VL_TOT_ITEM := QNota.FieldByname('val_prod').AsFloat;
                   // registro C191
                   QItem.Close;
                   QItem.SQL.Clear;
                   QItem.SQL.Add('select fornec.registro_1,entprod.situacao_tributaria_pis,natureza.codigo_fiscal,entprod.perc_pis,');
                   QItem.SQL.Add('sum((entprod.val_custo*(100-entprod.perc_desc/100)*entprod.qtd_produto)) as val_prod,');
                   QItem.SQL.Add('sum((entprod.val_custo*(100-entprod.perc_desc/100))) as val_desc,');
                   QItem.SQL.Add('sum(entprod.val_pis) as val_pis from notaent');
                   QItem.SQL.Add('inner join entprod on entprod.cd_entrada = notaent.cd_entrada');
                   QItem.SQL.Add('left outer join fornec on notaent.cd_fornec = fornec.cd_fornec');
                   QItem.SQL.Add('left outer join natureza on notaent.cd_natureza = natureza.cd_natureza');
                   QItem.SQL.Add('where notaent.dt_entrada between :pDatai and :pDataf');
                   QItem.SQL.Add('and notaent.nota_cancelada = 0');
                   QItem.SQL.Add('and notaent.num_doc is not null');
                   QItem.SQL.Add('and notaent.cd_empresa = :pEmpresa');
                   QItem.SQL.Add('and natureza.apropriar_icms_ativo_permanente = 0');
                   QItem.SQL.Add('and natureza.tributar_icms = -1');
                   QItem.SQL.Add('and entprod.cd_produto = :pCd_Prod');
                   QItem.SQL.Add('group by fornec.registro_1,entprod.situacao_tributaria_pis,natureza.codigo_fiscal,entprod.perc_pis');
                   QItem.Params.ParamByName('pDatai').AsDate      := pDatai;
                   QItem.Params.ParamByName('pDataf').AsDate      := pDataf;
                   QItem.Params.ParamByName('pEmpresa').AsInteger := CdsEmpresa.FieldByName('CD_Empresa').AsInteger;
                   QItem.Params.ParamByName('pCd_Prod').AsInteger := QNota.FieldByname('CD_PRODUTO').AsInteger;
                   QItem.Open;
                   while not QItem.Eof do
                   begin
                     with RegistroC191New do
                     begin
                       CNPJ_CPF_PART := FiltraNumero(QItem.FieldByName('registro_1').AsString);
                       aCST_PIS      := QItem.FieldByName('situacao_tributaria_pis').AsInteger;
                       if aCST_PIS = 0 then
                          aCST_PIS := 50;
                       case aCST_PIS of
                         01 : CST_PIS := stpisValorAliquotaNormal;
                         02 : CST_PIS := stpisValorAliquotaDiferenciada;
                         03 : CST_PIS := stpisQtdeAliquotaUnidade;
                         04 : CST_PIS := stpisMonofaticaAliquotaZero;
                         05 : CST_PIS := stpisValorAliquotaPorST;
                         06 : CST_PIS := stpisAliquotaZero;
                         07 : CST_PIS := stpisIsentaContribuicao;
                         08 : CST_PIS := stpisSemIncidenciaContribuicao;
                         09 : CST_PIS := stpisSuspensaoContribuicao;
                         49 : CST_PIS := stpisOutrasOperacoesSaida;
                         50 : CST_PIS := stpisOperCredExcRecTribMercInt;
                         51 : CST_PIS := stpisOperCredExcRecNaoTribMercInt;
                         52 : CST_PIS := stpisOperCredExcRecExportacao;
                         53 : CST_PIS := stpisOperCredRecTribNaoTribMercInt;
                         54 : CST_PIS := stpisOperCredRecTribMercIntEExportacao;
                         55 : CST_PIS := stpisOperCredRecNaoTribMercIntEExportacao;
                         56 : CST_PIS := stpisOperCredRecTribENaoTribMercIntEExportacao;
                         60 : CST_PIS := stpisCredPresAquiExcRecTribMercInt;
                         61 : CST_PIS := stpisCredPresAquiExcRecNaoTribMercInt;
                         62 : CST_PIS := stpisCredPresAquiExcExcRecExportacao;
                         63 : CST_PIS := stpisCredPresAquiRecTribNaoTribMercInt;
                         64 : CST_PIS := stpisCredPresAquiRecTribMercIntEExportacao;
                         65 : CST_PIS := stpisCredPresAquiRecNaoTribMercIntEExportacao;
                         66 : CST_PIS := stpisCredPresAquiRecTribENaoTribMercIntEExportacao;
                         70 : CST_PIS := stpisOperAquiSemDirCredito;
                         71 : CST_PIS := stpisOperAquiComIsensao;
                         72 : CST_PIS := stpisOperAquiComSuspensao;
                         73 : CST_PIS := stpisOperAquiAliquotaZero;
                         74 : CST_PIS := stpisOperAqui_SemIncidenciaContribuicao;
                         75 : CST_PIS := stpisOperAquiPorST;
                         98 : CST_PIS := stpisOutrasOperacoesEntrada;
                         99 : CST_PIS := stpisOutrasOperacoes;
                       end;
                       CFOP           := QItem.FieldByName('codigo_fiscal').AsInteger;
                       VL_ITEM        := QItem.FieldByName('Val_Prod').AsFloat;
                       VL_DESC        := QItem.FieldByName('Val_Desc').AsFloat;
                       VL_BC_PIS      := QItem.FieldByName('Val_Prod').AsFloat;
                       ALIQ_PIS       := QItem.FieldByName('perc_pis').AsFloat;
                       QUANT_BC_PIS   := 0;
                       ALIQ_PIS_QUANT := 0;
                       VL_PIS         := QItem.FieldByName('val_pis').AsFloat;
                       COD_CTA        := '';
                     end;
                     QItem.Next;
                   end;
                   // registro C195
                   QItem.Close;
                   QItem.SQL.Clear;
                   QItem.SQL.Add('select fornec.registro_1,entprod.situacao_tributaria_cofins,natureza.codigo_fiscal,entprod.perc_cofins,');
                   QItem.SQL.Add('sum((entprod.val_custo*(100-entprod.perc_desc/100)*entprod.qtd_produto)) as val_prod,');
                   QItem.SQL.Add('sum((entprod.val_custo*(100-entprod.perc_desc/100))) as val_desc,');
                   QItem.SQL.Add('sum(entprod.val_cofins) as val_cofins from notaent');
                   QItem.SQL.Add('inner join entprod on entprod.cd_entrada = notaent.cd_entrada');
                   QItem.SQL.Add('left outer join fornec on notaent.cd_fornec = fornec.cd_fornec');
                   QItem.SQL.Add('left outer join natureza on notaent.cd_natureza = natureza.cd_natureza');
                   QItem.SQL.Add('where notaent.dt_entrada between :pDatai and :pDataf');
                   QItem.SQL.Add('and notaent.nota_cancelada = 0');
                   QItem.SQL.Add('and notaent.num_doc is not null');
                   QItem.SQL.Add('and notaent.cd_empresa = :pEmpresa');
                   QItem.SQL.Add('and natureza.apropriar_icms_ativo_permanente = 0');
                   QItem.SQL.Add('and natureza.tributar_icms = -1');
                   QItem.SQL.Add('and entprod.cd_produto = :pCd_Prod');
                   QItem.SQL.Add('group by fornec.registro_1,entprod.situacao_tributaria_cofins,natureza.codigo_fiscal,entprod.perc_cofins');
                   QItem.Params.ParamByName('pDatai').AsDate      := pDatai;
                   QItem.Params.ParamByName('pDataf').AsDate      := pDataf;
                   QItem.Params.ParamByName('pEmpresa').AsInteger := CdsEmpresa.FieldByName('CD_Empresa').AsInteger;
                   QItem.Params.ParamByName('pCd_Prod').AsInteger := QNota.FieldByname('CD_PRODUTO').AsInteger;
                   QItem.Open;
                   while not QItem.Eof do
                   begin
                     with RegistroC195New do
                     begin
                       CNPJ_CPF_PART := FiltraNumero(QItem.FieldByName('registro_1').AsString);
                       aCST_PIS      := QItem.FieldByName('situacao_tributaria_cofins').AsInteger;
                       if aCST_PIS = 0 then
                          aCST_PIS := 50;
                       case aCST_PIS of
                         01 : CST_COFINS := stcofinsValorAliquotaNormal;
                         02 : CST_COFINS := stcofinsValorAliquotaDiferenciada;
                         03 : CST_COFINS := stcofinsQtdeAliquotaUnidade;
                         04 : CST_COFINS := stcofinsMonofaticaAliquotaZero;
                         05 : CST_COFINS := stcofinsValorAliquotaPorST;
                         06 : CST_COFINS := stcofinsAliquotaZero;
                         07 : CST_COFINS := stcofinsIsentaContribuicao;
                         08 : CST_COFINS := stcofinsSemIncidenciaContribuicao;
                         09 : CST_COFINS := stcofinsSuspensaoContribuicao;
                         49 : CST_COFINS := stcofinsOutrasOperacoesSaida;
                         50 : CST_COFINS := stcofinsOperCredExcRecTribMercInt;
                         51 : CST_COFINS := stcofinsOperCredExcRecNaoTribMercInt;
                         52 : CST_COFINS := stcofinsOperCredExcRecExportacao;
                         53 : CST_COFINS := stcofinsOperCredRecTribNaoTribMercInt;
                         54 : CST_COFINS := stcofinsOperCredRecTribMercIntEExportacao;
                         55 : CST_COFINS := stcofinsOperCredRecNaoTribMercIntEExportacao;
                         56 : CST_COFINS := stcofinsOperCredRecTribENaoTribMercIntEExportacao;
                         60 : CST_COFINS := stcofinsCredPresAquiExcRecTribMercInt;
                         61 : CST_COFINS := stcofinsCredPresAquiExcRecNaoTribMercInt;
                         62 : CST_COFINS := stcofinsCredPresAquiExcExcRecExportacao;
                         63 : CST_COFINS := stcofinsCredPresAquiRecTribNaoTribMercInt;
                         64 : CST_COFINS := stcofinsCredPresAquiRecTribMercIntEExportacao;
                         65 : CST_COFINS := stcofinsCredPresAquiRecNaoTribMercIntEExportacao;
                         66 : CST_COFINS := stcofinsCredPresAquiRecTribENaoTribMercIntEExportacao;
                         70 : CST_COFINS := stcofinsOperAquiSemDirCredito;
                         71 : CST_COFINS := stcofinsOperAquiComIsensao;
                         72 : CST_COFINS := stcofinsOperAquiComSuspensao;
                         73 : CST_COFINS := stcofinsOperAquiAliquotaZero;
                         74 : CST_COFINS := stcofinsOperAqui_SemIncidenciaContribuicao;
                         75 : CST_COFINS := stcofinsOperAquiPorST;
                         98 : CST_COFINS := stcofinsOutrasOperacoesEntrada;
                         99 : CST_COFINS := stcofinsOutrasOperacoes;
                       end;
                       CFOP              := QItem.FieldByName('codigo_fiscal').AsInteger;
                       VL_ITEM           := QItem.FieldByName('Val_Prod').AsFloat;
                       VL_DESC           := QItem.FieldByName('Val_Desc').AsFloat;
                       VL_BC_COFINS      := QItem.FieldByName('Val_Prod').AsFloat;
                       ALIQ_COFINS       := QItem.FieldByName('perc_cofins').AsFloat;
                       QUANT_BC_COFINS   := 0;
                       ALIQ_COFINS_QUANT := 0;
                       VL_COFINS         := QItem.FieldByName('val_cofins').AsFloat;
                       COD_CTA           := '';
                     end;
                     QItem.Next;
                   end;
                 end;
                 QNota.Next;
               end;
               //  processa os dados dos cupons fiscais
               QNota.Close;
               QNota.SQL.Clear;
               QNota.SQL.Add('select saiprod.cd_produto from notasai');
               QNota.SQL.Add('left outer join saiprod on saiprod.cd_saida = notasai.cd_saida');
               QNota.SQL.Add('where notasai.dt_saida between :pDatai and :pDataf');
               QNota.SQL.Add('and notasai.nota_cancelada = 0');
               QNota.SQL.Add('and notasai.num_ref = '+QuotedStr('CF'));
               QNota.SQL.Add('and notasai.cd_empresa = :pEmpresa');
               QNota.Params.ParamByName('pDatai').AsDate      := pDatai;
               QNota.Params.ParamByName('pDataf').AsDate      := pDataf;
               QNota.Params.ParamByName('pEmpresa').AsInteger := CdsEmpresa.FieldByName('CD_Empresa').AsInteger;
               QNota.Open;
               if not QNota.IsEmpty then
               begin
                 if not QNota.IsEmpty then
                 begin
                   with RegistroC490New do
                   begin
                     DT_DOC_INI := pDatai;
                     DT_DOC_FIN := pDataf;
                     COD_MOD    := '2D';
                     Application.ProcessMessages;
                     sProgressBar2.Position := 25;
                     // grava registro C491 - Consolidação Pis
                     QItem.Close;
                     QItem.SQL.Clear;
                     QItem.SQL.Add('select saiprod.cd_produto,saiprod.situacao_tributaria_pis,');
                     QItem.SQL.Add('natureza.codigo_fiscal,saiprod.perc_pis,');
                     QItem.SQL.Add('sum((saiprod.val_venda*(100-saiprod.perc_desc/100)*saiprod.qtd_produto)) as val_prod,');
                     QItem.SQL.Add('sum((saiprod.val_venda*(100-saiprod.perc_desc/100))) as val_desc,');
                     QItem.SQL.Add('sum(saiprod.val_pis) as val_pis from notasai');
                     QItem.SQL.Add('inner join saiprod on saiprod.cd_saida = notasai.cd_saida');
                     QItem.SQL.Add('left outer join natureza on notasai.cd_natureza = natureza.cd_natureza');
                     QItem.SQL.Add('where notasai.dt_saida between :pDatai and :pDataf');
                     QItem.SQL.Add('and notasai.nota_cancelada = 0');
                     QItem.SQL.Add('and notasai.num_doc is not null');
                     QItem.SQL.Add('and notasai.cd_empresa = :pEmpresa');
                     QItem.SQL.Add('and natureza.apropriar_icms_ativo_permanente = 0');
                     QItem.SQL.Add('and natureza.tributar_icms = -1');
                     QItem.SQL.Add('group by saiprod.cd_produto,saiprod.situacao_tributaria_pis,');
                     QItem.SQL.Add('natureza.codigo_fiscal,saiprod.perc_pis');
                     QItem.Open;
                     while not QItem.Eof do
                     begin
                       with RegistroC491New do
                       begin
                         COD_ITEM := QItem.FieldByName('cd_produto').AsString;
                         aCST_PIS := StrToInt(QItem.FieldByName('situacao_tributaria_pis').AsString);
                         if aCST_PIS = 0 then
                            aCST_PIS := 99;
                         case aCST_PIS of
                           01 : CST_PIS := stpisValorAliquotaNormal;
                           02 : CST_PIS := stpisValorAliquotaDiferenciada;
                           03 : CST_PIS := stpisQtdeAliquotaUnidade;
                           04 : CST_PIS := stpisMonofaticaAliquotaZero;
                           05 : CST_PIS := stpisValorAliquotaPorST;
                           06 : CST_PIS := stpisAliquotaZero;
                           07 : CST_PIS := stpisIsentaContribuicao;
                           08 : CST_PIS := stpisSemIncidenciaContribuicao;
                           09 : CST_PIS := stpisSuspensaoContribuicao;
                           49 : CST_PIS := stpisOutrasOperacoesSaida;
                           50 : CST_PIS := stpisOperCredExcRecTribMercInt;
                           51 : CST_PIS := stpisOperCredExcRecNaoTribMercInt;
                           52 : CST_PIS := stpisOperCredExcRecExportacao;
                           53 : CST_PIS := stpisOperCredRecTribNaoTribMercInt;
                           54 : CST_PIS := stpisOperCredRecTribMercIntEExportacao;
                           55 : CST_PIS := stpisOperCredRecNaoTribMercIntEExportacao;
                           56 : CST_PIS := stpisOperCredRecTribENaoTribMercIntEExportacao;
                           60 : CST_PIS := stpisCredPresAquiExcRecTribMercInt;
                           61 : CST_PIS := stpisCredPresAquiExcRecNaoTribMercInt;
                           62 : CST_PIS := stpisCredPresAquiExcExcRecExportacao;
                           63 : CST_PIS := stpisCredPresAquiRecTribNaoTribMercInt;
                           64 : CST_PIS := stpisCredPresAquiRecTribMercIntEExportacao;
                           65 : CST_PIS := stpisCredPresAquiRecNaoTribMercIntEExportacao;
                           66 : CST_PIS := stpisCredPresAquiRecTribENaoTribMercIntEExportacao;
                           70 : CST_PIS := stpisOperAquiSemDirCredito;
                           71 : CST_PIS := stpisOperAquiComIsensao;
                           72 : CST_PIS := stpisOperAquiComSuspensao;
                           73 : CST_PIS := stpisOperAquiAliquotaZero;
                           74 : CST_PIS := stpisOperAqui_SemIncidenciaContribuicao;
                           75 : CST_PIS := stpisOperAquiPorST;
                           98 : CST_PIS := stpisOutrasOperacoesEntrada;
                           99 : CST_PIS := stpisOutrasOperacoes;
                         end;
                         CFOP           := QItem.FieldByName('codigo_fiscal').AsInteger;
                         VL_ITEM        := QItem.FieldByName('val_prod').AsFloat;
                         VL_BC_PIS      := QItem.FieldByName('val_prod').AsFloat;
                         ALIQ_PIS       := QItem.FieldByName('perc_pis').AsFloat;
                         QUANT_BC_PIS   := 0;
                         ALIQ_PIS_QUANT := 0;
                         VL_PIS         := QItem.FieldByName('val_pis').AsFloat;
                         COD_CTA        := '';
                       end;
                       Application.ProcessMessages;
                       sProgressBar2.Position := 29;
                       QItem.Next;
                     end;
                     // grava registro C495 - Consolidação Cofins
                     QItem.Close;
                     QItem.SQL.Clear;
                     QItem.SQL.Add('select saiprod.cd_produto,saiprod.situacao_tributaria_cofins,');
                     QItem.SQL.Add('natureza.codigo_fiscal,saiprod.perc_cofins,');
                     QItem.SQL.Add('sum((saiprod.val_venda*(100-saiprod.perc_desc/100)*saiprod.qtd_produto)) as val_prod,');
                     QItem.SQL.Add('sum((saiprod.val_venda*(100-saiprod.perc_desc/100))) as val_desc,');
                     QItem.SQL.Add('sum(saiprod.val_cofins) as val_cofins from notasai');
                     QItem.SQL.Add('inner join saiprod on saiprod.cd_saida = notasai.cd_saida');
                     QItem.SQL.Add('left outer join natureza on notasai.cd_natureza = natureza.cd_natureza');
                     QItem.SQL.Add('where notasai.dt_saida between :pDatai and :pDataf');
                     QItem.SQL.Add('and notasai.nota_cancelada = 0');
                     QItem.SQL.Add('and notasai.num_doc is not null');
                     QItem.SQL.Add('and notasai.cd_empresa = :pEmpresa');
                     QItem.SQL.Add('and natureza.apropriar_icms_ativo_permanente = 0');
                     QItem.SQL.Add('and natureza.tributar_icms = -1');
                     QItem.SQL.Add('and saiprod.cd_produto = :pCd_Prod');
                     QItem.SQL.Add('group by saiprod.cd_produto,saiprod.situacao_tributaria_cofins,');
                     QItem.SQL.Add('natureza.codigo_fiscal,saiprod.perc_cofins');
                     QItem.Open;
                     while not QItem.Eof do
                     begin
                       with RegistroC495New do
                       begin
                         COD_ITEM    := QItem.FieldByName('cd_produto').AsString;
                         aCST_COFINS := StrToInt(QItem.FieldByName('situacao_tributaria_cofins').AsString);
                         if aCST_COFINS = 0 then
                            aCST_COFINS := 50;
                         case aCST_COFINS of
                           01 : CST_COFINS := stcofinsValorAliquotaNormal;
                           02 : CST_COFINS := stcofinsValorAliquotaDiferenciada;
                           03 : CST_COFINS := stcofinsQtdeAliquotaUnidade;
                           04 : CST_COFINS := stcofinsMonofaticaAliquotaZero;
                           05 : CST_COFINS := stcofinsValorAliquotaPorST;
                           06 : CST_COFINS := stcofinsAliquotaZero;
                           07 : CST_COFINS := stcofinsIsentaContribuicao;
                           08 : CST_COFINS := stcofinsSemIncidenciaContribuicao;
                           09 : CST_COFINS := stcofinsSuspensaoContribuicao;
                           49 : CST_COFINS := stcofinsOutrasOperacoesSaida;
                           50 : CST_COFINS := stcofinsOperCredExcRecTribMercInt;
                           51 : CST_COFINS := stcofinsOperCredExcRecNaoTribMercInt;
                           52 : CST_COFINS := stcofinsOperCredExcRecExportacao;
                           53 : CST_COFINS := stcofinsOperCredRecTribNaoTribMercInt;
                           54 : CST_COFINS := stcofinsOperCredRecTribMercIntEExportacao;
                           55 : CST_COFINS := stcofinsOperCredRecNaoTribMercIntEExportacao;
                           56 : CST_COFINS := stcofinsOperCredRecTribENaoTribMercIntEExportacao;
                           60 : CST_COFINS := stcofinsCredPresAquiExcRecTribMercInt;
                           61 : CST_COFINS := stcofinsCredPresAquiExcRecNaoTribMercInt;
                           62 : CST_COFINS := stcofinsCredPresAquiExcExcRecExportacao;
                           63 : CST_COFINS := stcofinsCredPresAquiRecTribNaoTribMercInt;
                           64 : CST_COFINS := stcofinsCredPresAquiRecTribMercIntEExportacao;
                           65 : CST_COFINS := stcofinsCredPresAquiRecNaoTribMercIntEExportacao;
                           66 : CST_COFINS := stcofinsCredPresAquiRecTribENaoTribMercIntEExportacao;
                           70 : CST_COFINS := stcofinsOperAquiSemDirCredito;
                           71 : CST_COFINS := stcofinsOperAquiComIsensao;
                           72 : CST_COFINS := stcofinsOperAquiComSuspensao;
                           73 : CST_COFINS := stcofinsOperAquiAliquotaZero;
                           74 : CST_COFINS := stcofinsOperAqui_SemIncidenciaContribuicao;
                           75 : CST_COFINS := stcofinsOperAquiPorST;
                           98 : CST_COFINS := stcofinsOutrasOperacoesEntrada;
                           99 : CST_COFINS := stcofinsOutrasOperacoes;
                         end;
                         CFOP              := QItem.FieldByName('codigo_fiscal').AsInteger;
                         VL_ITEM           := QItem.FieldByName('val_prod').AsFloat;
                         VL_BC_COFINS      := QItem.FieldByName('val_prod').AsFloat;
                         ALIQ_COFINS       := QItem.FieldByName('perc_cofins').AsFloat;
                         QUANT_BC_COFINS   := 0;
                         ALIQ_COFINS_QUANT := 0;
                         VL_COFINS         := QItem.FieldByName('val_cofins').AsFloat;
                         COD_CTA           := '';
                       end;
                       Application.ProcessMessages;
                       sProgressBar2.Position := 30;
                       //
                       QItem.Next;
                     end;
                   end;
                 end;
               end;
             end;
           end;
           CdsEmpresa.Next;
         end;
      end;
   end;

end;

procedure TSPED_PC.DadosBlocoPC_D;
begin
   // Alimenta o componente com informações para gerar todos os registros do
   // Bloco D.
   with DmAcBr.ACBrSPEDPisCofins1.Bloco_D do
   begin
      with RegistroD001New do
      begin
        IND_MOV := imSemDados;
      end;
   end;

end;

procedure TSPED_PC.DadosBlocoPC_F(CdsEmpresa:TClientDataSet;pDatai,
  pDataf:TDateTime;CodEmp:Integer);
begin
   // Alimenta o componente com informações para gerar todos os registros do
   // Bloco F.
   with DmAcBr.ACBrSPEDPisCofins1.Bloco_F do
   begin
      with RegistroF001New do
      begin
        IND_MOV := imSemDados;
{        with RegistroF010New do
        begin
           CNPJ := '123456789';
           with RegistroF100New do
           begin
              IND_OPER      := indRepCustosDespesasEncargos;
              COD_PART      := '001';
              COD_ITEM      := '000'; //Codigo do Item no registro 0200
              DT_OPER       := Date();
              VL_OPER       := 0;
              CST_PIS       := stpisOutrasOperacoesSaida;
              VL_BC_PIS     := 0;
              ALIQ_PIS      := 0;
              VL_PIS        := 0;
              CST_COFINS    := stcofinsOutrasOperacoesSaida;
              VL_BC_COFINS  := 0;
              ALIQ_COFINS   := 0;
              VL_COFINS     := 0;
              NAT_BC_CRED   := bccAqBensRevenda;
              IND_ORIG_CRED := opcMercadoInterno;
              COD_CTA       := '';
              COD_CCUS      := '123';
              DESC_DOC_OPER := '';
           end;
        end;  }
      end;
   end;

end;

procedure TSPED_PC.DadosBlocoPC_M;
begin
   // Alimenta o componente com informações para gerar todos os registros do
   // Bloco M.
   with DmAcBr.ACBrSPEDPisCofins1.Bloco_M do
   begin
      with RegistroM001New do
      begin
        IND_MOV := imSemDados;
{         with RegistroM100New do
         begin
            COD_CRED       := '';
            IND_CRED_ORI   := TACBrIndCredOri(0);
            VL_BC_PIS      := 0;
            ALIQ_PIS       := 0;
            QUANT_BC_PIS   := 0;
            ALIQ_PIS_QUANT := 0;
            VL_CRED        := 0;
            VL_AJUS_ACRES  := 0;
            VL_AJUS_REDUC  := 0;
            VL_CRED_DIF    := 0;
            VL_CRED_DISP   := 0;
            IND_DESC_CRED  := TACBrIndDescCred(0);
            VL_CRED_DESC   := 0;
            SLD_CRED       := 0;
         end;  }
      end;
   end;

end;


destructor TSPED_PC.DestruaInstancia;
begin

end;

function TSPED_PC.VerificaMovimentoPisCofins(pIDEMpresa: Integer;pDatai,
  pDataf:TDateTime): Boolean;
var SQL : TSQLQuery;
begin
  Result := false;
  SQL := TSQLQuery.Create(nil);
  try
    SQL.SQLConnection := ConexaoDados;
    // verifica movimento de Pis/Cofins na entrada
    SQL.Close;
    SQL.SQL.Clear;
    SQL.SQL.Add('select sum(notaent.val_pis) as val_pis,');
    SQL.SQL.Add('sum(notaent.val_cofins) as val_cofins from notaent');
    SQL.SQL.Add('where notaent.dt_entrada between :pDatai and :pDataf');
    SQL.SQL.Add('and notaent.cd_empresa = :pEmpresa');
    SQL.Params.ParamByName('pDatai').AsDate      := pDatai;
    SQL.Params.ParamByName('pDataf').AsDate      := pDataf;
    SQL.Params.ParamByName('pEmpresa').AsInteger := pIDEMpresa;
    SQL.Open;
    if (SQL.FieldByName('val_pis').AsFloat > 0) or
       (SQL.FieldByName('val_cofins').AsFloat > 0) then
    begin
      Result := true;
    end;
    SQL.Close;
    // verifica movimento de Pis/Cogins da Saida
    if not Result then
    begin
      SQL.Close;
      SQL.SQL.Clear;
      SQL.SQL.Add('select sum(notasai.val_pis) as val_pis,');
      SQL.SQL.Add('sum(notasai.val_cofins) as val_cofins from notasai');
      SQL.SQL.Add('where notasai.dt_entrega between :pDatai and :pDataf');
      SQL.SQL.Add('and notasai.cd_empresa = :pEmpresa');
      SQL.Params.ParamByName('pDatai').AsDate      := pDatai;
      SQL.Params.ParamByName('pDataf').AsDate      := pDataf;
      SQL.Params.ParamByName('pEmpresa').AsInteger := pIDEMpresa;
      SQL.Open;
      if (SQL.FieldByName('val_pis').AsFloat > 0) or
         (SQL.FieldByName('val_cofins').AsFloat > 0) then
      begin
        Result := true;
      end;
      SQL.Close;
    end;
  finally
    FreeAndNil(SQL);
  end;

end;

function TSPED_PC.VerificaNotaDevolucao(fCodigo: Integer;pCNPJEmpresa:String): Boolean;
var Q : TSQLQuery;
begin
  Q := TSQLQuery.Create(nil);
  try
    Q.SQLConnection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add('select fornec.registro_1 from fornec');
    Q.SQL.Add('where fornec.cd_fornec = :Codigo');
    Q.Params.ParamByName('Codigo').AsInteger := fCodigo;
    Q.Open;
    //
    Result := false;
    if Trim(FiltraNumero(Q.FieldByname('registro_1').AsString)) =
       Trim(FiltraNumero(pCNPJEmpresa)) then
       Result := true;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TSPED_PC.VerificaSTProdutosNota(pID, pES: Integer): Boolean;
var Q : TSQLQuery;
begin
  Q := TSQLQuery.Create(nil);
  try
    Q.SQLConnection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    if pES = 0 then // erntrada
    begin
      Q.SQL.Add('select entprod.cd_entrada from entprod');
      Q.SQL.Add('where entprod.cd_entrada = :pID');
      Q.SQL.Add('and entprod.val_base_icms_sub > 0');
      Q.SQL.Add('and (entprod.situacao_tributaria_icms = '+QuotedStr('10')+' or');
      Q.SQL.Add('     entprod.situacao_tributaria_icms = '+QuotedStr('60')+' or');
      Q.SQL.Add('     entprod.situacao_tributaria_icms = '+QuotedStr('70')+')');
    end
    else if pES = 1 then // saida
    begin
      Q.SQL.Add('select saiprod.cd_saida from saiprod');
      Q.SQL.Add('where saiprod.cd_saida = :pID');
      Q.SQL.Add('and saiprod.val_base_icms_sub > 0');
      Q.SQL.Add('and (saiprod.situacao_tributaria_icms = '+QuotedStr('10')+' or');
      Q.SQL.Add('     saiprod.situacao_tributaria_icms = '+QuotedStr('60')+' or');
      Q.SQL.Add('     saiprod.situacao_tributaria_icms = '+QuotedStr('70')+')');
    end;
    Q.Params.ParamByName('pID').AsInteger := pID;
    Q.Open;
    Result := false;
    if not Q.IsEmpty then
       Result := true;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

function TSPED_PC.VerificaIPIProdutosNota(pID, pES: Integer): Boolean;
var Q : TSQLQuery;
begin
  Q := TSQLQuery.Create(nil);
  try
    Q.SQLConnection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    if pES = 0 then // erntrada
    begin
      Q.SQL.Add('select entprod.cd_entrada from entprod');
      Q.SQL.Add('where entprod.cd_entrada = :pID');
      Q.SQL.Add('and entprod.val_IPI > 0');
    end
    else if pES = 1 then // saida
    begin
      Q.SQL.Add('select saiprod.cd_saida from saiprod');
      Q.SQL.Add('where saiprod.cd_saida = :pID');
      Q.SQL.Add('and saiprod.val_IPI > 0');
    end;
    Q.Params.ParamByName('pID').AsInteger := pID;
    Q.Open;
    Result := false;
    if not Q.IsEmpty then
       Result := true;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;


function TSPED_PC.VerificaECFMovimentoPisCofins(pIDEMpresa: Integer;
  pDatai, pDataf: TDateTime): Boolean;
var SQL : TSQLQuery;
begin
  Result := false;
  SQL := TSQLQuery.Create(nil);
  try
    SQL.SQLConnection := ConexaoDados;
    SQL.Close;
    SQL.SQL.Clear;
    SQL.SQL.Add('select sum(notasai.val_pis) as val_pis,');
    SQL.SQL.Add('sum(notasai.val_cofins) as val_cofins from notasai');
    SQL.SQL.Add('where notasai.dt_entrega between :pDatai and :pDataf');
    SQL.SQL.Add('and notasai.cd_empresa = :pEmpresa');
    SQL.SQL.Add('and notasai.num_ref = '+QuotedStr('CF'));
    SQL.Params.ParamByName('pDatai').AsDate      := pDatai;
    SQL.Params.ParamByName('pDataf').AsDate      := pDataf;
    SQL.Params.ParamByName('pEmpresa').AsInteger := pIDEMpresa;
    SQL.Open;
    if (SQL.FieldByName('val_pis').AsFloat > 0) or
       (SQL.FieldByName('val_cofins').AsFloat > 0) then
    begin
      Result := true;
    end;
    SQL.Close;
  finally
    FreeAndNil(SQL);
  end;

end;

procedure TSPED_PC.CriaPreparaTabelaClientes;
begin
  CdsClientes := TClientDataSet.Create(nil);
  try
    CdsClientes.FieldDefs.Add('ID', ftInteger, 0, False);
    CdsClientes.FieldDefs.Add('NOME', ftString, 50, False);
    CdsClientes.FieldDefs.Add('CNPJCPF', ftString, 18, False);
    CdsClientes.FieldDefs.Add('TIPO', ftInteger, 0, False);
    if not CdsClientes.Active then
       CdsClientes.CreateDataSet;
    CdsClientes.AddIndex('IDXIDCLI','ID',[IxUnique]);
    CdsClientes.IndexName := 'IDXIDCLI';
  finally
    CdsClientes.EmptyDataSet;
  end;

end;

end.
