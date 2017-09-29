unit uRotinas_EFD;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, ActnList, Buttons, StdCtrls, CheckLst,
  ACBrSpedFiscal, ACBrEFDBlocos, ACBrUtil, ACBrTXTClass, SqlExpr, DB,
  DBClient, ACBrSpedPisCofins, uDmAcBr, uLibrary;

type
  TSPED_EFD = class(TObject)
  protected
    { Protected declarations }
  private
    { Private declarations }
    procedure InsereItemInventario(var CdsInventario:TClientDataSet; pCod: Integer; pUnid: String; pQuant, pValor: Double);
    function VerificaIPIProdutosNota(pID, pES: Integer): Boolean;
    procedure InsereRegistroUFST(var CdsUFST:TClientDataSet; pUF: String; pCredito,pDebito:Double);
    function VerificaNotaDevolucao(fCodigo: Integer): Boolean;
    procedure RetornaBC_ICMS_Itens(var ValBase,ValICMS:Double;pID,pES: Integer);
    function VerificaSTProdutosNota(pID, pES: Integer): Boolean;
    function RetornaTotalInventario(CdsInventario:TClientDataSet): Double;
    function RetornaUFCliFor(pCodigo, pTipo: Integer): String;
  public
    { Public declarations }
    sDebitos, sCreditos : Double;
    sDebitosST, sCreditosST : Double;
    sControleBlocoG : Boolean;
    sLbMensagem,sLBBlocos : TLabel;
    sProgressBar1,sProgressBar2 : TProgressBar;
    sCNPJEmpresa, sUFEmpresa : String;
    procedure DadosBloco_0(var CdsInventario,
                           CdsUFST,
                           CdsEmpresa,
                           CdsContabil:TClientDataSet;
                           Datai,Dataf:TDateTime;
                           CodEmp:String;
                           ListaBlocosG:Boolean;
                           pCOD_VER,
                           pPERFIL,
                           pINDICADOR,
                           pCOD_FIN:Integer);
    procedure DadosBloco_C(var CdsUFST:TClientDataSet;
                           Notas,BufNotas,CodEmp:String;
                           Datai,Dataf:TDateTime;
                           VerificaSTIPI:Boolean);
    procedure DadosBloco_D;
    procedure DadosBloco_E(CdsUFST:TClientDataSet; Datai,Dataf:TDateTime;CodRec:String;pTruncado:Boolean);
    procedure DadosBloco_G(Datai,Dataf:TDateTime;CodEmp:String);
    procedure DadosBloco_H(var CdsInventario:TClientDataSet; Processar:Boolean; Datai,Dataf:TDateTime);
    procedure DadosBloco_1;
    procedure DadosBloco_9;
    constructor CrieInstancia;
    destructor DestruaInstancia;
  end;



implementation

procedure TSPED_EFD.DadosBloco_0(var CdsInventario,CdsUFST,CdsEmpresa,CdsContabil:TClientDataSet;
  Datai,Dataf:TDateTime;CodEmp:String;ListaBlocosG:Boolean;pCOD_VER,pPERFIL,
  pINDICADOR,pCOD_FIN:Integer);
var aCodVersao : TACBrVersaoLeiaute;
    aPerfil : TACBrPerfil;
    aIndicador : TACBrAtividade;
    aCodFin : TACBrCodFinalidade;
    aControle : Boolean;
    Query : TSQLQuery;
begin
   CdsInventario.EmptyDataSet;
   CdsUFST.EmptyDataSet;
   Query := TSqlQuery.Create(nil);
   Query.SQLConnection := ConexaoDados;
   // captura versão
   case pCOD_VER of
     0 : aCodVersao := vlVersao100;
     1 : aCodVersao := vlVersao101;
     2 : aCodVersao := vlVersao102;
     3 : aCodVersao := vlVersao103;
   end;
   // captura perfil apresentação
   case pPERFIL of
     0 : aPerfil := pfPerfilA;
     1 : aPerfil := pfPerfilB;
     2 : aPerfil := pfPerfilC;
   end;
   // captura indicador de movimento
   case pINDICADOR of
     0 : aIndicador := atIndustrial;
     1 : aIndicador := atOutros;
   end;
   // captura codigo da finalidade
   case pCOD_FIN of
     0 : aCodFin := raOriginal;
     1 : aCodFin := raSubstituto;
   end;
   // Alimenta o componente com informações para gerar todos os registros do
   // Bloco 0.
   with DmAcBr.ACBrSpedFiscal1.Bloco_0 do
   begin
      // Dados da Empresa
      with Registro0000New do
      begin
         COD_VER    := aCodVersao;
         COD_FIN    := aCodFin;
         NOME       := CdsEmpresa.FieldByName('DS_EMPRESA').AsString;
         CNPJ       := CdsEmpresa.FieldByName('REGISTRO_1').AsString;
         CPF        := '';
         UF         := CdsEmpresa.FieldByName('UF').AsString;
         IE         := Trim(CdsEmpresa.FieldByName('REGISTRO_2').AsString);
         if CdsEmpresa.FieldByName('CODIGO_IBGE').AsString <> '' then
            COD_MUN    := StrToInt(CdsEmpresa.FieldByName('CODIGO_IBGE').AsString)
         else
            COD_MUN    := 0;
         IM         := CdsEmpresa.FieldByName('INSC_MUNICIPAL').AsString;
         SUFRAMA    := CdsEmpresa.FieldByName('COD_SUFRAMA').AsString;
         IND_PERFIL := aPerfil;
         IND_ATIV   := aIndicador;
      end;
      with Registro0001New do
      begin
         IND_MOV := imComDados;
         // Dados complementares da Empresa
         with Registro0005New do
         begin
            FANTASIA   := Trim(CdsEmpresa.FieldByName('FANTASIA').AsString);
            CEP        := Trim(FiltraNumero(CdsEmpresa.FieldByName('CEP').AsString));
            ENDERECO   := Trim(CdsEmpresa.FieldByName('ENDERECO').AsString);
            NUM        := Trim(CdsEmpresa.FieldByName('NUMERO').AsString);
            COMPL      := '';
            BAIRRO     := Trim(CdsEmpresa.FieldByName('BAIRRO').AsString);
            FONE       := Trim(FiltraNumero(CdsEmpresa.FieldByName('TEL_1').AsString));
            FAX        := Trim(FiltraNumero(CdsEmpresa.FieldByName('TEL_2').AsString));
            EMAIL      := Trim(CdsEmpresa.FieldByName('E_MAIL').AsString);
         end;
         // Dados do contador.
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
         // Registro 0150
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
         Query.SQL.Add('and (nfemsg.STATUS_NFE = '+QuotedStr('100')+' or nfemsg.STATUS_NFE is null )');
         Query.SQL.Add('and notasai.nota_cancelada = 0');
         Query.SQL.Add('and notasai.cd_empresa = :pEmpresa');
         Query.SQL.Add('and notasai.num_doc is not null');
         Query.SQL.Add('and natureza.tributar_icms = -1');
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
           if not Registro0150.LocalizaRegistro('C'+IntToStrZero(Query.FieldByName('CD_CLIENTE').AsInteger,5)) then
           begin
             // Clientes
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
                ENDERECO := Copy(Trim(Query.FieldByName('ENDERECO').AsString),1,60);
                NUM      := Trim(Query.FieldByName('NUMERO').AsString);
                COMPL    := '';
                BAIRRO   := Trim(Query.FieldByName('BAIRRO').AsString);
             end;
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
         Query.SQL.Add('and (nfemsg.STATUS_NFE = '+QuotedStr('100')+' or nfemsg.STATUS_NFE is null )');
         Query.SQL.Add('and notaent.nota_cancelada = 0');
         Query.SQL.Add('and notaent.cd_empresa = :pEmpresa');
         Query.SQL.Add('and (notaent.num_fatura is not null or');
         Query.SQL.Add('        notaent.num_doc is not null)');
         Query.SQL.Add('and natureza.tributar_icms = -1');
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
           if not Registro0150.LocalizaRegistro('F'+IntToStrZero(Query.FieldByName('CD_FORNEC').AsInteger,5)) then
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
                ENDERECO := Trim(Query.FieldByName('ENDERECO').AsString);
                NUM      := Trim(Query.FieldByName('NUMERO').AsString);
                COMPL    := '';
                BAIRRO   := Trim(Query.FieldByName('BAIRRO').AsString);
             end;
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
         Query.Params.ParamByName('pDatai').AsDate      := Datai;
         Query.Params.ParamByName('pDataf').AsDate      := Dataf;
         Query.Params.ParamByName('pEmpresa').AsInteger := StrToInt(CodEmp);
         Query.Open;
         while not Query.Eof do
         begin
           if (Query.FieldByName('STATUS_NFE').AsString = '100') or
              (Query.FieldByName('STATUS_NFE').AsString = '') then
           begin
             if Query.FieldByName('chave_nfe').AsString = '' then
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
         Query.SQL.Add('select entprod.cd_produto,entprod.unidade_medida,');
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
         Query.SQL.Add('and natureza.tributar_icms = -1');
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
               if not Registro0200.LocalizaRegistro(IntToStr(Query.FieldByName('cd_produto').AsInteger)) then
               begin
                  with Registro0200New do
                  begin
                     COD_ITEM     := IntToStr(Query.FieldByName('cd_produto').AsInteger);
                     DESCR_ITEM   := Trim(Query.FieldByName('Ds_Produto').AsString);
                     COD_BARRA    := '';
                     COD_ANT_ITEM := '';
                     UNID_INV     := Trim(Query.FieldByName('unidade_medida').AsString);
                     TIPO_ITEM    := tiMercadoriaRevenda;
                     COD_NCM      := '';
                     EX_IPI       := '';
                     COD_GEN      := '';
                     COD_LST      := '';
                     ALIQ_ICMS    := Query.FieldByName('perc_icm').AsCurrency;
                     // adiciona produto ao inventário
                     InsereItemInventario(CdsInventario,
                                          Query.FieldByName('cd_produto').AsInteger,
                                          Query.FieldByName('unidade_medida').AsString,
                                          Query.FieldByName('qtd_atual').AsInteger,
                                          Query.FieldByName('val_custo').AsInteger);
                  end;
               end;
             end;
           end;
           Query.Next;
         end;
         // produtos saidas
         Query.Close;
         Query.SQL.Clear;
         Query.SQL.Add('select saiprod.cd_produto,saiprod.unidade_medida,');
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
         Query.Params.ParamByName('pDatai').AsDate      := Datai;
         Query.Params.ParamByName('pDataf').AsDate      := Dataf;
         Query.Params.ParamByName('pEmpresa').AsInteger := StrToInt(CodEmp);
         Query.Open;
         while not Query.Eof do
         begin
           if (Query.FieldByName('STATUS_NFE').AsString = '100') or
              (Query.FieldByName('STATUS_NFE').AsString = '') then
           begin
             if Query.FieldByName('chave_nfe').AsString = '' then
             begin
               if not Registro0200.LocalizaRegistro(IntToStr(Query.FieldByName('cd_produto').AsInteger)) then
               begin
                  with Registro0200New do
                  begin
                     COD_ITEM     := IntToStr(Query.FieldByName('cd_produto').AsInteger);
                     DESCR_ITEM   := Trim(Query.FieldByName('Ds_Produto').AsString);
                     COD_BARRA    := '';
                     COD_ANT_ITEM := '';
                     UNID_INV     := Trim(Query.FieldByName('unidade_medida').AsString);
                     TIPO_ITEM    := tiMercadoriaRevenda;
                     COD_NCM      := '';
                     EX_IPI       := '';
                     COD_GEN      := '';
                     COD_LST      := '';
                     ALIQ_ICMS    := Query.FieldByName('perc_icm').AsCurrency;
                     // adiciona produto ao inventário
                     InsereItemInventario(CdsInventario,
                                          Query.FieldByName('cd_produto').AsInteger,
                                          Query.FieldByName('unidade_medida').AsString,
                                          Query.FieldByName('qtd_atual').AsInteger,
                                          Query.FieldByName('val_venda').AsInteger)
                  end;
               end;
             end;
           end;
           Query.Next;
         end;
         // produtos saidas ECF
         Query.Close;
         Query.SQL.Clear;
         Query.SQL.Add('select saiprod.cd_produto,saiprod.unidade_medida,');
         Query.SQL.Add('produto.ds_produto,produto.codigo_ean_tributavel,');
         Query.SQL.Add('saiprod.perc_icm,prodemp.qtd_atual,saiprod.val_venda from notasai');
         Query.SQL.Add('left outer join saiprod on saiprod.cd_saida = notasai.cd_saida');
         Query.SQL.Add('left outer join produto on saiprod.cd_produto = produto.cd_produto');
         Query.SQL.Add('left outer join prodemp on produto.cd_produto = prodemp.cd_produto');
         Query.SQL.Add('where notasai.dt_saida between :pDatai and :pDataf');
         Query.SQL.Add('and notasai.nota_cancelada = 0');
         Query.SQL.Add('and notasai.num_ref = '+QuotedStr('CF'));
         Query.SQL.Add('and notasai.cd_empresa = :pEmpresa');
         Query.SQL.Add('group by saiprod.cd_produto,saiprod.unidade_medida,');
         Query.SQL.Add('produto.ds_produto,produto.codigo_ean_tributavel,');
         Query.SQL.Add('saiprod.perc_icm,prodemp.qtd_atual,saiprod.val_venda');
         Query.Params.ParamByName('pDatai').AsDate      := Datai;
         Query.Params.ParamByName('pDataf').AsDate      := Dataf;
         Query.Params.ParamByName('pEmpresa').AsInteger := StrToInt(CodEmp);
         Query.Open;
         while not Query.Eof do
         begin
            if not Registro0200.LocalizaRegistro(IntToStr(Query.FieldByName('cd_produto').AsInteger)) then
            begin
               with Registro0200New do
               begin
                  COD_ITEM     := IntToStr(Query.FieldByName('cd_produto').AsInteger);
                  DESCR_ITEM   := Query.FieldByName('Ds_Produto').AsString;
                  COD_BARRA    := '';
                  COD_ANT_ITEM := '';
                  UNID_INV     := Query.FieldByName('unidade_medida').AsString;
                  TIPO_ITEM    := tiMercadoriaRevenda;
                  COD_NCM      := '';
                  EX_IPI       := '';
                  COD_GEN      := '';
                  COD_LST      := '';
                  ALIQ_ICMS    := Query.FieldByName('perc_icm').AsCurrency;
                  // adiciona produto ao inventário
                  InsereItemInventario(CdsInventario,
                                       Query.FieldByName('cd_produto').AsInteger,
                                       Query.FieldByName('unidade_medida').AsString,
                                       Query.FieldByName('qtd_atual').AsInteger,
                                       Query.FieldByName('val_venda').AsInteger)
               end;
            end;
            Query.Next;
         end;
         sControleBlocoG := false;
         if ListaBlocosG then
         begin
           // Registro 0300
           Query.Close;
           Query.SQL.Clear;
           Query.SQL.Add('select entprod.cd_produto,produto.ds_produto,');
           Query.SQL.Add('produto.tipoprodutobensconsumo,produto.tipoprodutocomponente,');
           Query.SQL.Add('produto.cd_prodprincipal,notaent.cd_conta,notaent.cd_ccusto,');
           Query.SQL.Add('produto.prod_finalidade,produto.prod_vidautil_meses from notaent');
           Query.SQL.Add('left outer join entprod on entprod.cd_entrada = notaent.cd_entrada');
           Query.SQL.Add('left outer join produto on produto.cd_produto = entprod.cd_produto');
           Query.SQL.Add('left outer join natureza on natureza.cd_natureza = notaent.cd_natureza');
           Query.SQL.Add('where notaent.dt_entrada between :pDatai and :pDataf');
           Query.SQL.Add('and notaent.nota_cancelada = 0');
           Query.SQL.Add('and notaent.num_fatura is not null');
           Query.SQL.Add('and notaent.cd_empresa = :pEmpresa');
           Query.SQL.Add('and natureza.apropriar_icms_ativo_permanente = -1');
           Query.SQL.Add('and natureza.tributar_icms = -1');
           Query.Params.ParamByName('pDatai').AsDate      := Datai;
           Query.Params.ParamByName('pDataf').AsDate      := Dataf;
           Query.Params.ParamByName('pEmpresa').AsInteger := StrToInt(CodEmp);
           Query.Open;
           aControle := false;
           while not Query.Eof do
           begin
             sControleBlocoG := true;
             aControle := true;
             with Registro0300New do
             begin
                COD_IND_BEM := IntToStr(Query.FieldByName('cd_produto').AsInteger);
                if Query.FieldByName('tipoprodutobensconsumo').AsInteger = 0 then
                   IDENT_MERC  := 1
                else if Query.FieldByName('tipoprodutocomponente').AsInteger = 0 then
                   IDENT_MERC  := 0;
                DESCR_ITEM  := Query.FieldByName('ds_produto').AsString;
                COD_PRNC    := IntToStr(Query.FieldByName('cd_prodprincipal').AsInteger);
                COD_CTA     := IntToStrZero(Query.FieldByName('cd_conta').AsInteger,6);
                NR_PARC     := 1;
                // adiciona registro 0305
                with Registro0305New do
                begin
                  COD_CCUS  := IntToStrZero(Query.FieldByName('cd_ccusto').AsInteger,3);
                  FUNC      := Query.FieldByName('prod_finalidade').AsString;
                  VIDA_UTIL := Query.FieldByName('prod_vidautil_meses').AsInteger;
                end;
             end;
             Query.Next;
           end;
           // verifica se teve registro 0300
           if aControle then
           begin
             // registro 0500
             Query.Close;
             Query.SQL.Clear;
             Query.SQL.Add('select plancnt.cd_conta,plancnt.cd_contamaster,');
             Query.SQL.Add('plancnt.ds_conta,plancnt.tipo_conta from plancnt');
             Query.SQL.Add('order by plancnt.cd_conta,plancnt.cd_contamaster');
             Query.Open;
             while not Query.Eof do
             begin
               with Registro0500New do
               begin
                 DT_ALT     := Datai;
                 if Query.FieldByName('tipo_conta').AsString = 'C' then
                    COD_NAT_CC := '01'
                 else if Query.FieldByName('tipo_conta').AsString = 'D' then
                    COD_NAT_CC := '02'
                 else
                    COD_NAT_CC := '09';
                 //
                 if Query.FieldByName('cd_contamaster').AsInteger = 0 then
                 begin
                   IND_CTA := 'S';
                   NIVEL   := '01';
                 end
                 else if Query.FieldByName('cd_contamaster').AsInteger = 1 then
                 begin
                   IND_CTA := 'S';
                   NIVEL   := '02';
                 end
                 else if Query.FieldByName('cd_contamaster').AsInteger > 1 then
                 begin
                   IND_CTA := 'A';
                   NIVEL   := '03';
                 end;
                 //
                 COD_CTA    := IntToStrZero(Query.FieldByName('cd_conta').AsInteger,6);
                 NOME_CTA   := Query.FieldByName('ds_conta').AsString;
               end;
               Query.Next;
             end;
             // registro 0600 - Centro de Custo
             Query.Close;
             Query.SQL.Clear;
             Query.SQL.Add('select ccusto.cd_ccusto,ccusto.ds_ccusto from notaent');
             Query.SQL.Add('left outer join natureza on natureza.cd_natureza = notaent.cd_natureza');
             Query.SQL.Add('left outer join ccusto on ccusto.cd_ccusto = notaent.cd_ccusto');
             Query.SQL.Add('where notaent.dt_entrada between :pDatai and :pDataf');
             Query.SQL.Add('and notaent.nota_cancelada = 0');
             Query.SQL.Add('and notaent.num_doc is not null');
             Query.SQL.Add('and notaent.cd_empresa = :pEmpresa');
             Query.SQL.Add('and natureza.apropriar_icms_ativo_permanente = -1');
             Query.Params.ParamByName('pDatai').AsDate      := Datai;
             Query.Params.ParamByName('pDataf').AsDate      := Dataf;
             Query.Params.ParamByName('pEmpresa').AsInteger := StrToInt(CodEmp);
             Query.Open;
             while not Query.Eof do
             begin
               with Registro0600New do
               begin
                 DT_ALT   := Datai;
                 COD_CCUS := IntToStrZero(Query.FieldByName('cd_ccusto').AsInteger,3);
                 CCUS     := Query.FieldByName('ds_ccusto').AsString;
               end;
               Query.Next;
             end;
           end;
         end;
      end;
   end;

end;

procedure TSPED_EFD.DadosBloco_1;
begin
   // Alimenta o componente com informações para gerar todos os registros do
   // Bloco 1.
   with DmAcBr.ACBrSpedFiscal1.Bloco_1 do
   begin
      with Registro1001New do
      begin
        IND_MOV := imSemDados;
      end;
   end;

end;

procedure TSPED_EFD.DadosBloco_9;
begin
   DmAcBr.ACBrSPEDFiscal1.WriteBloco_9;

end;

procedure TSPED_EFD.DadosBloco_C(var CdsUFST:TClientDataSet; Notas,BufNotas,CodEmp:String;
  Datai,Dataf:TDateTime; VerificaSTIPI:Boolean);
var AuxStr, aUF, aSitTribIPI : String;
    AuxAliq, AuxValor, AuxFrete, aValBaseICMS, aValICMS, aIndiceDespAcess : Double;
    aContador, AuxInt, IItens, NNotas, BNotas, i: Integer;
    QNota,QItem,QTrib : TSQLQuery;
    Q400,Q405,Q420,Q460,Q470,Q490 : TSQLQuery;
    aControle : Boolean;
    aNumReg, aRegAtual : Integer;
begin
   QNota := TSqlQuery.Create(nil);
   QItem := TSqlQuery.Create(nil);
   QTrib := TSqlQuery.Create(nil);
   Q400 := TSqlQuery.Create(nil);
   Q405 := TSqlQuery.Create(nil);
   Q420 := TSqlQuery.Create(nil);
   Q460 := TSqlQuery.Create(nil);
   Q470 := TSqlQuery.Create(nil);
   Q490 := TSqlQuery.Create(nil);
   QNota.SQLConnection := ConexaoDados;
   QItem.SQLConnection := ConexaoDados;
   QTrib.SQLConnection := ConexaoDados;
   Q400.SQLConnection := ConexaoDados;
   Q405.SQLConnection := ConexaoDados;
   Q420.SQLConnection := ConexaoDados;
   Q460.SQLConnection := ConexaoDados;
   Q470.SQLConnection := ConexaoDados;
   Q490.SQLConnection := ConexaoDados;
   // zera dados da apuração
   sDebitos := 0;
   sCreditos := 0;
   sDebitosST := 0;
   sCreditosST := 0;
   // Alimenta o componente com informações para gerar todos os registros do
   // Bloco C.
   NNotas := StrToInt64Def(Notas,1);
   BNotas := StrToInt64Def(BufNotas,1);

   with DmAcBr.ACBrSpedFiscal1.Bloco_C do
   begin
      with RegistroC001New do
      begin
         IND_MOV := imComDados;
         // notas de entrada
         QNota.Close;
         QNota.SQL.Clear;
         QNota.SQL.Add('select distinct notaent.cd_entrada,notaent.cd_fornec,notaent.num_doc,');
         QNota.SQL.Add('notaent.dt_entrada,notaent.tipo_frete,nfemsg.STATUS_NFE,notaent.num_fatura,');
         QNota.SQL.Add('notaent.total_entrada,notaent.val_desconto_fatura,notaent.perc_desc,');
         QNota.SQL.Add('notaent.total_produtos,notaent.val_base_icms,notaent.val_icms,');
         QNota.SQL.Add('notaent.val_base_icms_sub,notaent.val_icms_sub,notaent.val_ipi,notaent.despesas_acessorias,');
         QNota.SQL.Add('notaent.val_pis,notaent.val_cofins,nfemsg.CHAVE_NFE,notaent.frete from notaent');
         QNota.SQL.Add('left outer join natureza on notaent.cd_natureza = natureza.cd_natureza');
         QNota.SQL.Add('left outer join nfemsg on nfemsg.cd_entrada = notaent.cd_entrada');
         QNota.SQL.Add('where notaent.dt_entrada between :pDatai and :pDataf');
         QNota.SQL.Add('and notaent.nota_cancelada = 0');
         QNota.SQL.Add('and (notaent.num_fatura is not null or');
         QNota.SQL.Add('     notaent.num_doc is not null)');
         QNota.SQL.Add('and notaent.cd_empresa = :pEmpresa');
         QNota.SQL.Add('and natureza.apropriar_icms_ativo_permanente = 0');
         QNota.SQL.Add('and natureza.tributar_icms = -1');
         // SQL Itens
         QItem.Close;
         QItem.SQL.Clear;
         QItem.SQL.Add('select entprod.cd_produto,entprod.unidade_medida,entprod.perc_desc,');
         QItem.SQL.Add('entprod.perc_icm,entprod.perc_icm_sub,entprod.perc_ipi,');
         QItem.SQL.Add('entprod.perc_pis,entprod.perc_retido_pis,entprod.perc_cofins,');
         QItem.SQL.Add('entprod.perc_retido_cofins,natureza.codigo_fiscal,');
         QItem.SQL.Add('entprod.situacao_tributaria_icms,entprod.SITUACAO_TRIBUTARIA_IPI,');
         QItem.SQL.Add('sum(entprod.qtd_produto) as qtd_produto,');
         QItem.SQL.Add('avg(entprod.val_custo) as val_custo ,');
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
         QItem.SQL.Add('group by entprod.cd_produto,entprod.unidade_medida,entprod.perc_desc,entprod.perc_icm,');
         QItem.SQL.Add('entprod.perc_icm_sub,entprod.perc_ipi,entprod.perc_pis,');
         QItem.SQL.Add('entprod.perc_retido_pis,entprod.perc_cofins,entprod.perc_retido_cofins,');
         QItem.SQL.Add('natureza.codigo_fiscal,entprod.situacao_tributaria_icms,entprod.SITUACAO_TRIBUTARIA_IPI');
         // SQL Tributação
         QTrib.Close;
         QTrib.SQL.Clear;
         QTrib.SQL.Add('select entprod.situacao_tributaria_icms,natureza.codigo_fiscal,entprod.perc_icm,');
         QTrib.SQL.Add('sum(entprod.qtd_produto * entprod.val_custo) as total_produto,');
         QTrib.SQL.Add('sum(entprod.val_base_icms) as val_base_icms,');
         QTrib.SQL.Add('sum(entprod.val_icms) as val_icms,');
         QTrib.SQL.Add('sum(entprod.val_base_icms_sub) as val_base_icms_sub,');
         QTrib.SQL.Add('sum(entprod.val_icms_sub) as val_icms_sub,');
         QTrib.SQL.Add('sum(entprod.val_ipi) as val_ipi from notaent');
         QTrib.SQL.Add('left outer join entprod on entprod.cd_entrada = notaent.cd_entrada');
         QTrib.SQL.Add('left outer join natureza on entprod.cd_natureza = natureza.cd_natureza');
         QTrib.SQL.Add('where notaent.cd_entrada = :pCD_Entrada');
         QTrib.SQL.Add('group by entprod.situacao_tributaria_icms,natureza.codigo_fiscal,entprod.perc_icm');
         // seleciona Dados
         QNota.Params.ParamByName('pDatai').AsDate      := Datai;
         QNota.Params.ParamByName('pDataf').AsDate      := Dataf;
         QNota.Params.ParamByName('pEmpresa').AsInteger := StrToInt(CodEmp);
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
                 if VerificaNotaDevolucao(QNota.FieldByName('cd_fornec').AsInteger) then
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
//               RetornaBC_ICMS_Itens(aValBaseICMS,aValICMS,QNota.FieldByName('CD_ENTRADA').AsInteger,0);
//               VL_BC_ICMS    := aValBaseICMS;
//               VL_ICMS       := aValICMS;
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
                      AuxValor    := (QItem.FieldByName('val_custo').AsFloat * (100 - QItem.FieldByName('perc_desc').AsFloat) / 100);
                      if QNota.FieldByName('perc_desc').AsFloat > 0 then
                         AuxValor  := (AuxValor * (100 - QNota.FieldByName('perc_desc').AsFloat) / 100);
                      VL_ITEM          := (AuxValor*QItem.FieldByName('qtd_produto').AsFloat);
                      VL_DESC          := QItem.FieldByName('val_desc').AsFloat;
                      IND_MOV          := mfNao;
                      CST_ICMS         := ZeroEsquerda(Trim(QItem.FieldByName('situacao_tributaria_icms').AsString),3);
                      CFOP             := QItem.FieldByName('codigo_fiscal').AsString;
                      COD_NAT          := '';
                      VL_BC_ICMS       := QItem.FieldByName('val_base_icms').AsFloat*aIndiceDespAcess;
                      ALIQ_ICMS        := QItem.FieldByName('perc_icm').AsFloat;
                      VL_ICMS          := QItem.FieldByName('val_icms').AsFloat*aIndiceDespAcess;
                      VL_BC_ICMS_ST    := QItem.FieldByName('val_base_icms_sub').AsFloat;
                      ALIQ_ST          := QItem.FieldByName('perc_icm_sub').AsFloat;
                      VL_ICMS_ST       := QItem.FieldByName('val_icms_sub').AsFloat;
                      IND_APUR         := iaMensal;
                      aSitTribIPI      := '49';
                      if QItem.FieldByName('SITUACAO_TRIBUTARIA_IPI').AsString <> '' then
                         aSitTribIPI := QItem.FieldByName('SITUACAO_TRIBUTARIA_IPI').AsString;
                      CST_IPI          := aSitTribIPI;
                      COD_ENQ          := '';
                      VL_BC_IPI        := QItem.FieldByName('val_base_ipi').AsFloat;
                      ALIQ_IPI         := QItem.FieldByName('perc_ipi').AsFloat;
                      VL_IPI           := QItem.FieldByName('val_ipi').AsFloat;
                      CST_PIS          := pisOutrasOperacoes;
                      VL_BC_PIS        := QItem.FieldByName('val_base_pis').AsFloat;
                      ALIQ_PIS_PERC    := QItem.FieldByName('perc_pis').AsFloat;
                      QUANT_BC_PIS     := 0;
                      ALIQ_PIS_R       := QItem.FieldByName('perc_retido_pis').AsFloat;
                      VL_PIS           := QItem.FieldByName('val_pis').AsFloat;
                      CST_COFINS       := cofinsOutrasOperacoes;
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
               //c190
               QTrib.Close;
               QTrib.Params.ParamByName('pCD_Entrada').AsInteger := QNota.FieldByName('CD_ENTRADA').AsInteger;
               QTrib.Open;
               while not QTrib.Eof do
               begin
                 with RegistroC190New do
                 begin
                    // calcula valor operacao
                    if QNota.FieldByName('perc_desc').AsFloat > 0 then
                       AuxValor := (QTrib.FieldByName('total_produto').AsFloat * (100 - QNota.FieldByName('perc_desc').AsFloat) / 100)
                    else
                       AuxValor := QTrib.FieldByName('total_produto').AsFloat;
                    AuxValor := AuxValor + QTrib.FieldByName('val_icms_sub').AsFloat;
                    if AuxFrete > 0 then
                    begin
                      AuxValor := AuxValor + AuxFrete;
                      AuxFrete := 0;
                    end;
                    CST_ICMS      := ZeroEsquerda(Trim(QTrib.FieldByName('situacao_tributaria_icms').AsString),3);
                    CFOP          := QTrib.FieldByName('codigo_fiscal').AsString;
                    VL_OPR        := AuxValor*aIndiceDespAcess;
                    ALIQ_ICMS     := QTrib.FieldByName('perc_icm').AsFloat;
                    VL_BC_ICMS    := QTrib.FieldByName('val_base_icms').AsFloat*aIndiceDespAcess;
                    VL_ICMS       := QTrib.FieldByName('val_icms').AsFloat*aIndiceDespAcess;
                    VL_BC_ICMS_ST := QTrib.FieldByName('val_base_icms_sub').AsFloat;
                    VL_ICMS_ST    := QTrib.FieldByName('val_icms_sub').AsFloat;
                    VL_RED_BC     := 0;
                    VL_IPI        := QTrib.FieldByName('val_ipi').AsFloat;
                    COD_OBS       := '';
                    // soma ao total de creditos
                    if (QTrib.FieldByName('situacao_tributaria_icms').AsString = '00') or
                       (QTrib.FieldByName('situacao_tributaria_icms').AsString = '10') or
                       (QTrib.FieldByName('situacao_tributaria_icms').AsString = '20') or
                       (QTrib.FieldByName('situacao_tributaria_icms').AsString = '70') then
                    begin
                      sCreditos := sCreditos + (QTrib.FieldByName('val_icms').AsFloat*aIndiceDespAcess);
                    end;
                    // soma ao total de creditos ST
                    if (QTrib.FieldByName('situacao_tributaria_icms').AsString = '10') or
                       (QTrib.FieldByName('situacao_tributaria_icms').AsString = '30') or
                       (QTrib.FieldByName('situacao_tributaria_icms').AsString = '60') or
                       (QTrib.FieldByName('situacao_tributaria_icms').AsString = '70') then
                    begin
                      sCreditosST := sCreditosST + QTrib.FieldByName('val_icms_sub').AsFloat;
                      aUF := RetornaUFCliFor(QNota.FieldByname('cd_fornec').AsInteger,0);
                      InsereRegistroUFST(CdsUFST,aUF,QTrib.FieldByName('val_icms_sub').AsFloat,0);
                    end;
                 end;
                 QTrib.Next;
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
         QNota.SQL.Add('notasai.total_produtos,notasai.val_base_icms,notasai.val_icms,');
         QNota.SQL.Add('notasai.val_base_icms_sub,notasai.val_icms_sub,notasai.val_ipi,');
         QNota.SQL.Add('notasai.val_pis,notasai.val_cofins,nfemsg.CHAVE_NFE,notasai.frete from notasai');
         QNota.SQL.Add('left outer join natureza on notasai.cd_natureza = natureza.cd_natureza');
         QNota.SQL.Add('left outer join nfemsg on nfemsg.cd_saida = notasai.cd_saida');
         QNota.SQL.Add('where notasai.dt_saida between :pDatai and :pDataf');
         QNota.SQL.Add('and notasai.nota_cancelada = 0');
         QNota.SQL.Add('and notasai.num_doc is not null');
         QNota.SQL.Add('and notasai.cd_empresa = :pEmpresa');
         QNota.SQL.Add('and natureza.apropriar_icms_ativo_permanente = 0');
         QNota.SQL.Add('and natureza.tributar_icms = -1');
         // SQL Itens
         QItem.Close;
         QItem.SQL.Clear;
         QItem.SQL.Add('select saiprod.cd_produto,saiprod.unidade_medida,');
         QItem.SQL.Add('saiprod.perc_icm,saiprod.perc_icm_sub,saiprod.perc_ipi,');
         QItem.SQL.Add('saiprod.perc_pis,saiprod.perc_retido_pis,saiprod.perc_cofins,');
         QItem.SQL.Add('saiprod.perc_retido_cofins,natureza.codigo_fiscal,');
         QItem.SQL.Add('saiprod.situacao_tributaria_icms,saiprod.SITUACAO_TRIBUTARIA_IPI,');
         QItem.SQL.Add('sum(saiprod.qtd_produto) as qtd_produto,');
         QItem.SQL.Add('avg(saiprod.val_venda) as val_venda,');
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
         QItem.SQL.Add('saiprod.situacao_tributaria_icms,saiprod.SITUACAO_TRIBUTARIA_IPI');
         // SQL Tributação
         QTrib.Close;
         QTrib.SQL.Clear;
         QTrib.SQL.Add('select natureza.codigo_fiscal,saiprod.situacao_tributaria_icms,');
         QTrib.SQL.Add('saiprod.perc_icm,');
         QTrib.SQL.Add('sum(saiprod.qtd_produto * saiprod.val_venda) as total_produto,');
         QTrib.SQL.Add('sum(saiprod.val_base_icms) as val_base_icms,');
         QTrib.SQL.Add('sum(saiprod.val_icms) as val_icms,');
         QTrib.SQL.Add('sum(saiprod.val_base_icms_sub) as val_base_icms_sub,');
         QTrib.SQL.Add('sum(saiprod.val_icms_sub) as val_icms_sub,');
         QTrib.SQL.Add('sum(saiprod.val_ipi) as val_ipi from notasai');
         QTrib.SQL.Add('left outer join saiprod on saiprod.cd_saida = notasai.cd_saida');
         QTrib.SQL.Add('left outer join natureza on saiprod.cd_natureza = natureza.cd_natureza');
         QTrib.SQL.Add('where notasai.cd_saida = :pCD_Saida');
         QTrib.SQL.Add('group by natureza.codigo_fiscal,saiprod.situacao_tributaria_icms,');
         QTrib.SQL.Add('saiprod.perc_icm');
         // seleciona Dados
         QNota.Params.ParamByName('pDatai').AsDate      := Datai;
         QNota.Params.ParamByName('pDataf').AsDate      := Dataf;
         QNota.Params.ParamByName('pEmpresa').AsInteger := StrToInt(CodEmp);
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
//               RetornaBC_ICMS_Itens(aValBaseICMS,aValICMS,QNota.FieldByName('CD_SAIDA').AsInteger,1);
//               VL_BC_ICMS    := aValBaseICMS;
//               VL_ICMS       := aValICMS;
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
               if QNota.FieldByName('CHAVE_NFE').AsString = '' then
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
                      CST_ICMS         := ZeroEsquerda(Trim(QItem.FieldByName('situacao_tributaria_icms').AsString),3);
                      CFOP             := QItem.FieldByName('codigo_fiscal').AsString;
                      COD_NAT          := '';
                      VL_BC_ICMS       := QItem.FieldByName('val_base_icms').AsFloat*aIndiceDespAcess;
                      ALIQ_ICMS        := QItem.FieldByName('perc_icm').AsFloat;
                      VL_ICMS          := QItem.FieldByName('val_icms').AsFloat*aIndiceDespAcess;
                      VL_BC_ICMS_ST    := QItem.FieldByName('val_base_icms_sub').AsFloat;
                      ALIQ_ST          := QItem.FieldByName('perc_icm_sub').AsFloat;
                      VL_ICMS_ST       := QItem.FieldByName('val_icms_sub').AsFloat;
                      IND_APUR         := iaMensal;
                      aSitTribIPI      := '99';
                      if QItem.FieldByName('SITUACAO_TRIBUTARIA_IPI').AsString <> '' then
                         aSitTribIPI := QItem.FieldByName('SITUACAO_TRIBUTARIA_IPI').AsString;
                      CST_IPI          := aSitTribIPI;
                      COD_ENQ          := '';
                      VL_BC_IPI        := QItem.FieldByName('val_base_ipi').AsFloat;
                      ALIQ_IPI         := QItem.FieldByName('perc_ipi').AsFloat;
                      VL_IPI           := QItem.FieldByName('val_ipi').AsFloat;
                      CST_PIS          := pisOutrasOperacoes;
                      VL_BC_PIS        := QItem.FieldByName('val_base_pis').AsFloat;
                      ALIQ_PIS_PERC    := QItem.FieldByName('perc_pis').AsFloat;
                      QUANT_BC_PIS     := 0;
                      ALIQ_PIS_R       := QItem.FieldByName('perc_retido_pis').AsFloat;
                      VL_PIS           := QItem.FieldByName('val_pis').AsFloat;
                      CST_COFINS       := cofinsOutrasOperacoes;
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
               //c190
               QTrib.Close;
               QTrib.Params.ParamByName('pCD_Saida').AsInteger := QNota.FieldByName('CD_SAIDA').AsInteger;
               QTrib.Open;
               while not QTrib.Eof do
               begin
                 with RegistroC190New do
                 begin
                    // calcula valor operacao
                    if QNota.FieldByName('perc_desc').AsFloat > 0 then
                       AuxValor := (QTrib.FieldByName('total_produto').AsFloat * (100 - QNota.FieldByName('perc_desc').AsFloat) / 100)
                    else
                       AuxValor := QTrib.FieldByName('total_produto').AsFloat;
                    AuxValor := AuxValor + QTrib.FieldByName('val_icms_sub').AsFloat;
                    if AuxFrete > 0 then
                    begin
                      AuxValor := AuxValor + AuxFrete;
                      AuxFrete := 0;
                    end;
                    //
                    CST_ICMS := ZeroEsquerda(Trim(QTrib.FieldByName('situacao_tributaria_icms').AsString),3);
                    CFOP     := QTrib.FieldByName('codigo_fiscal').AsString;
                    VL_OPR   := AuxValor*aIndiceDespAcess;
                    ALIQ_ICMS   := QTrib.FieldByName('perc_icm').AsFloat;
                    VL_BC_ICMS  := QTrib.FieldByName('val_base_icms').AsFloat*aIndiceDespAcess;
                    VL_ICMS     := QTrib.FieldByName('val_icms').AsFloat*aIndiceDespAcess;
                    VL_BC_ICMS_ST := QTrib.FieldByName('val_base_icms_sub').AsFloat;
                    VL_ICMS_ST    := QTrib.FieldByName('val_icms_sub').AsFloat;
                    VL_RED_BC     := 0;
                    VL_IPI        := QTrib.FieldByName('val_ipi').AsFloat;
                    COD_OBS       := '';
                    // soma ao total de debitos
                    if (QTrib.FieldByName('situacao_tributaria_icms').AsString = '00') or
                       (QTrib.FieldByName('situacao_tributaria_icms').AsString = '10') or
                       (QTrib.FieldByName('situacao_tributaria_icms').AsString = '20') or
                       (QTrib.FieldByName('situacao_tributaria_icms').AsString = '70') then
                    begin
                      sDebitos := sDebitos + QTrib.FieldByName('val_icms').AsFloat*aIndiceDespAcess;
                    end;
                    // soma ao total de debitos ST
                    if (QTrib.FieldByName('situacao_tributaria_icms').AsString = '10') or
                       (QTrib.FieldByName('situacao_tributaria_icms').AsString = '30') or
                       (QTrib.FieldByName('situacao_tributaria_icms').AsString = '60') or
                       (QTrib.FieldByName('situacao_tributaria_icms').AsString = '70') then
                    begin
                      sDebitosST := sDebitosST + QTrib.FieldByName('val_icms_sub').AsFloat;
                      aUF := RetornaUFCliFor(QNota.FieldByname('cd_cliente').AsInteger,1);
                      InsereRegistroUFST(CdsUFST,aUF,0,QTrib.FieldByName('val_icms_sub').AsFloat);
                    end;
                 end;
                 QTrib.Next;
               end;
             end;
           end;
           Inc(aRegAtual);
           sProgressBar1.Position := aRegAtual;
           Application.ProcessMessages;
           //
           QNota.Next;
         end;
         // registro C400
         Q400.Close;
         Q400.SQL.Clear;
         Q400.SQL.Add('select registro60m.serial_ecf,registro60m.caixa from registro60m');
         Q400.SQL.Add('where registro60m.data_movimento between :pDatai and :pDataf');
         Q400.SQL.Add('and registro60m.cd_empresa = :pEmpresa');
         Q400.SQL.Add('group by registro60m.serial_ecf,registro60m.caixa');
         // SQL Registro C405
         Q405.Close;
         Q405.SQL.Clear;
         Q405.SQL.Add('select registro60m.cd_registro60m,registro60m.data_movimento,');
         Q405.SQL.Add('registro60m.coo_final,registro60m.contador_reducao,');
         Q405.SQL.Add('registro60m.venda_bruta,registro60m.contador_reinicio,');
         Q405.SQL.Add('registro60m.grande_total,registro60m.coo_inicial from registro60m');
         Q405.SQL.Add('where registro60m.serial_ecf = :pSerial');
         Q405.SQL.Add('and registro60m.data_movimento between :pDatai and :pDataf');
         Q405.SQL.Add('and registro60m.cd_empresa = :pEmpresa');
         Q405.SQL.Add('group by registro60m.cd_registro60m,registro60m.data_movimento,');
         Q405.SQL.Add('registro60m.coo_final,registro60m.contador_reducao,');
         Q405.SQL.Add('registro60m.venda_bruta,registro60m.contador_reinicio,');
         Q405.SQL.Add('registro60m.grande_total,registro60m.coo_inicial');
         // SQL Registro C420
         Q420.Close;
         Q420.SQL.Clear;
         Q420.SQL.Add('select registro60a.aliquota_trib,registro60a.totalizador from registro60m');
         Q420.SQL.Add('left outer join registro60a on registro60m.cd_registro60m = registro60a.cd_registro60m');
         Q420.SQL.Add('where registro60m.cd_registro60m = :pCodigo');
         // SQL Registro C460
         Q460.Close;
         Q460.SQL.Clear;
         Q460.SQL.Add('select notasai.coo_ecf,notasai.dt_saida,notasai.total_saida,');
         Q460.SQL.Add('notasai.val_pis,notasai.val_cofins,cliente.registro_1,');
         Q460.SQL.Add('cliente.ds_cliente,notasai.cd_saida from notasai');
         Q460.SQL.Add('left outer join cliente on cliente.cd_cliente = notasai.cd_cliente');
         Q460.SQL.Add('where notasai.coo_ecf = :pCupom');
         // SQL Registro C470
         Q470.Close;
         Q470.SQL.Clear;
         Q470.SQL.Add('select saiprod.cd_produto,saiprod.qtd_produto,saiprod.unidade_medida,');
         Q470.SQL.Add('saiprod.val_venda,saiprod.perc_icm,saiprod.perc_icm_sub,saiprod.val_pis,');
         Q470.SQL.Add('saiprod.val_cofins,natureza.codigo_fiscal,saiprod.situacao_tributaria_icms');
         Q470.SQL.Add('from saiprod');
         Q470.SQL.Add('left outer join natureza on saiprod.cd_natureza = natureza.cd_natureza');
         Q470.SQL.Add('where saiprod.cd_saida = :pCodigo');
         // SQL Registro C490
         Q490.close;
         Q490.SQL.Clear;
         Q490.SQL.Add('select registro60a.aliquota_trib,registro60a.totalizador from registro60a');
         Q490.SQL.Add('where registro60a.cd_registro60m = :pCodigo');
         Q490.SQL.Add('group by registro60a.aliquota_trib,registro60a.totalizador');
         // repassa dados para o compoente
         Q400.Params.ParamByName('pDatai').AsDate      := Datai;
         Q400.Params.ParamByName('pDataf').AsDate      := Dataf;
         Q400.Params.ParamByName('pEmpresa').AsInteger := StrToInt(CodEmp);
         Q400.Open;
         while not Q400.Eof do
         begin
           with RegistroC400New do
           begin
             COD_MOD := '2D';
             ECF_MOD := 'ECF';
             ECF_FAB := Q400.FieldByName('serial_ecf').AsString;
             ECF_CX  := Q400.FieldByName('caixa').AsString;
             // registro C405
             Q405.Close;
             Q405.Params.ParamByName('pSerial').AsString   := Q400.FieldByname('serial_ecf').AsString;
             Q405.Params.ParamByName('pDatai').AsDate      := Datai;
             Q405.Params.ParamByName('pDataf').AsDate      := Dataf;
             Q405.Params.ParamByName('pEmpresa').AsInteger := StrToInt(CodEmp);
             Q405.Open;
             aNumReg := RetornaQtdRegDBX(Q405);
             sLbMensagem.Caption := 'Registros do ECF';
             sProgressBar1.Max := aNumReg;
             Application.ProcessMessages;
             aRegAtual := 0;
             while not Q405.Eof do
             begin
               with RegistroC405New do
               begin
                 DT_DOC      := Q405.FieldByName('data_movimento').AsDateTime;
                 CRO         := Q405.FieldByName('contador_reinicio').AsInteger;
                 CRZ         := Q405.FieldByName('contador_reducao').AsInteger;
                 NUM_COO_FIN := Q405.FieldByName('coo_final').AsInteger;
                 GT_FIN      := Q405.FieldByName('grande_total').AsFloat;
                 VL_BRT      := Q405.FieldByName('venda_bruta').AsFloat;
                 // registro C420
                 Q420.Close;
                 Q420.Params.ParamByName('pCodigo').AsInteger := Q405.FieldByName('cd_registro60m').AsInteger;
                 Q420.Open;
                 aContador := 1;
                 AuxInt := 1;
                 while not Q420.Eof do
                 begin
                   aControle := false;
                   if Q420.FieldByName('totalizador').AsFloat > 0 then
                   begin
                     AuxStr := '';
                     if (UpperCase(Trim(Q420.FieldByName('aliquota_trib').AsString)) = 'F') or
                        (UpperCase(Trim(Q420.FieldByName('aliquota_trib').AsString)) = 'FF') then
                     begin
                       AuxStr := AuxStr + 'F' + IntToStr(aContador);
                       Inc(aContador);
                     end
                     else if (UpperCase(Trim(Q420.FieldByName('aliquota_trib').AsString)) = 'I') or
                             (UpperCase(Trim(Q420.FieldByName('aliquota_trib').AsString)) = 'II') then
                     begin
                       AuxStr := AuxStr + 'I' + IntToStr(aContador);
                       Inc(aContador);
                     end
                     else if (UpperCase(Trim(Q420.FieldByName('aliquota_trib').AsString)) = 'N') or
                             (UpperCase(Trim(Q420.FieldByName('aliquota_trib').AsString)) = 'NN') then
                     begin
                       AuxStr := AuxStr + 'N' + IntToStr(aContador);
                       Inc(aContador);
                     end
                     else if (UpperCase(Trim(Q420.FieldByName('aliquota_trib').AsString)) = 'FS') then
                     begin
                       AuxStr := AuxStr + 'FS' + IntToStr(aContador);
                       Inc(aContador);
                     end
                     else if (UpperCase(Trim(Q420.FieldByName('aliquota_trib').AsString)) = 'NS') then
                     begin
                       AuxStr := AuxStr + 'NS' + IntToStr(aContador);
                       Inc(aContador);
                     end
                     else if (UpperCase(Trim(Q420.FieldByName('aliquota_trib').AsString)) = 'IS') then
                     begin
                       AuxStr := AuxStr + 'IS' + IntToStr(aContador);
                       Inc(aContador);
                     end
                     else if (UpperCase(Q420.FieldByName('aliquota_trib').AsString) = 'DESC') then
                        AuxStr := AuxStr + 'DT'
                     else if (UpperCase(Q420.FieldByName('aliquota_trib').AsString) = 'ACRE') then
                        AuxStr := AuxStr + 'AT'
                     else if (UpperCase(Q420.FieldByName('aliquota_trib').AsString) = 'CANC') then
                        AuxStr := AuxStr + 'Can-T'
                     else
                     begin
                       AuxStr := AuxStr + AlinhaTXT(ZeroEsquerda(IntToStr(AuxInt),2)+'T'+FiltraNumero(Q420.FieldByName('aliquota_trib').AsString),1,7);
                       aControle := true;
                       Inc(AuxInt);
                     end;
                     //
                     with RegistroC420New do
                     begin
                       COD_TOT_PAR  := AuxStr;
                       VLR_ACUM_TOT := Q420.FieldByName('totalizador').AsFloat;
                       //
                       if aControle then
                          NR_TOT := AuxInt-1
                       else
                          NR_TOT := 0;
                       DESCR_NR_TOT := '';
                     end;
                   end;
                   Q420.Next;
                 end;
                 // registro C460
                 for i:=Q405.FieldByName('coo_inicial').AsInteger to Q405.FieldByName('coo_final').AsInteger do
                 begin
                   Q460.Close;
                   Q460.Params.ParamByName('pCupom').AsString := IntToStrZero(i,6);
                   Q460.Open;
                   while not Q460.Eof do
                   begin
                     with RegistroC460New do
                     begin
                       COD_MOD   := '2D';
                       COD_SIT   := sdRegular;
                       NUM_DOC   := IntToStrZero(Q460.FieldByName('coo_ecf').AsInteger,6);
                       DT_DOC    := Q460.FieldByName('dt_saida').AsDateTime;
                       VL_DOC    := Q460.FieldByName('total_saida').AsFloat;
                       VL_PIS    := Q460.FieldByName('val_pis').AsFloat;
                       VL_COFINS := Q460.FieldByName('val_cofins').AsFloat;
                       CPF_CNPJ  := Q460.FieldByName('registro_1').AsString;
                       NOM_ADQ   := Q460.FieldByName('ds_cliente').AsString;
                       // registro C470
                       Q470.Close;
                       Q470.Params.ParamByName('pCodigo').AsInteger := Q460.FieldByName('cd_saida').AsInteger;
                       Q470.Open;
                       while not Q470.Eof do
                       begin
                         if (Q470.FieldByName('perc_icm').AsFloat > 0) and
                            (Q470.FieldByName('perc_icm_sub').AsFloat = 0) then
                         begin
                           with RegistroC470New do
                           begin
                             COD_ITEM  := IntToStr(Q470.FieldByName('cd_produto').AsInteger);
                             QTD       := Q470.FieldByName('qtd_produto').AsFloat;
                             QTD_CANC  := 0;
                             UNID      := Q470.FieldByName('unidade_medida').AsString;
                             VL_ITEM   := Q470.FieldByName('val_venda').AsFloat;
                             // verifica tributação
                             CST_ICMS  := ZeroEsquerda(Trim(Q470.FieldByName('perc_icm').AsString),3);
                             CFOP      := Q470.FieldByName('codigo_fiscal').AsString;
                             ALIQ_ICMS := Q470.FieldByName('perc_icm').AsFloat;
                             VL_PIS    := Q470.FieldByName('val_pis').AsFloat;
                             VL_COFINS := Q470.FieldByName('val_cofins').AsFloat;
                           end;
                         end;
                         Q470.Next;
                       end;
                     end;
                     Q460.Next;
                   end;
                 end;
                 // registro 490
                 Q490.Close;
                 Q490.Params.ParamByName('pCodigo').AsInteger := Q405.FieldByName('CD_REGISTRO60M').AsInteger;
                 Q490.Open;
                 while not Q490.Eof do
                 begin
                   if (Q490.FieldByName('TOTALIZADOR').AsFloat > 0) and
                      (UpperCase(Trim(Q490.FieldByName('aliquota_trib').AsString)) <> 'CANC') and
                      (UpperCase(Trim(Q490.FieldByName('aliquota_trib').AsString)) <> 'DESC') and
                      (UpperCase(Trim(Q490.FieldByName('aliquota_trib').AsString)) <> 'ACRES') then
                   begin
                     with RegistroC490New do
                     begin
                       ALIQ_ICMS  := 0;
                       VL_BC_ICMS := 0;
                       VL_ICMS    := 0;
                       if (UpperCase(Trim(Q490.FieldByName('aliquota_trib').AsString)) = 'F') or
                          (UpperCase(Trim(Q490.FieldByName('aliquota_trib').AsString)) = 'FS') or
                          (UpperCase(Trim(Q490.FieldByName('aliquota_trib').AsString)) = 'FF') then
                       begin
                         CST_ICMS   := '060';
                         CFOP       := '5403';
                       end
                       else if (UpperCase(Trim(Q490.FieldByName('aliquota_trib').AsString)) = 'I') or
                               (UpperCase(Trim(Q490.FieldByName('aliquota_trib').AsString)) = 'N') or
                               (UpperCase(Trim(Q490.FieldByName('aliquota_trib').AsString)) = 'II') or
                               (UpperCase(Trim(Q490.FieldByName('aliquota_trib').AsString)) = 'NN') or
                               (UpperCase(Trim(Q490.FieldByName('aliquota_trib').AsString)) = 'NS') or
                               (UpperCase(Trim(Q490.FieldByName('aliquota_trib').AsString)) = 'IS') then
                       begin
                         CST_ICMS   := '040';
                         CFOP       := '5403';
                       end
                       else
                       begin
                         if (UpperCase(Trim(Q490.FieldByName('aliquota_trib').AsString)) <> 'CANC') and
                            (UpperCase(Trim(Q490.FieldByName('aliquota_trib').AsString)) <> 'DESC') and
                            (UpperCase(Trim(Q490.FieldByName('aliquota_trib').AsString)) <> 'ACRES') then
                         begin
                           AuxAliq := (StrToFloat(Q490.FieldByName('aliquota_trib').AsString) / 100);
                           CST_ICMS   := '000';
                           CFOP       := '5102';
                           ALIQ_ICMS  := AuxAliq;
                           VL_BC_ICMS := Q490.FieldByName('TOTALIZADOR').AsFloat;
                           VL_ICMS    := (Q490.FieldByName('TOTALIZADOR').AsFloat*AuxAliq)/100;
                           // soma ao total de debitos
                           sDebitos := sDebitos + ((Q490.FieldByName('totalizador').AsFloat*AuxAliq)/100) ;
                         end;
                       end;
                       VL_OPR     := Q490.FieldByName('TOTALIZADOR').AsFloat;
                       COD_OBS    := '';
                     end;
                   end;
                   Q490.Next;
                 end;
               end;
               Inc(aRegAtual);
               sProgressBar1.Position := aRegAtual;
               Application.ProcessMessages;
               //
               Q405.Next;
             end;
           end;
           Q400.Next;
         end;
      end;
   end;

end;

procedure TSPED_EFD.DadosBloco_D;
begin
   // Alimenta o componente com informações para gerar todos os registros do
   // Bloco D.
   with DmAcBr.ACBrSpedFiscal1.Bloco_D do
   begin
      with RegistroD001New do
      begin
        IND_MOV := imSemDados;
      end;
   end;

end;

procedure TSPED_EFD.DadosBloco_E(CdsUFST:TClientDataSet;Datai,Dataf:TDateTime;
  CodRec:String;pTruncado:Boolean);
var aSaldo : Double;
    aMesAno : String;
    Dia, Mes, Ano : Word;
begin
   // Alimenta o componente com informações para gerar todos os registros do
   // Bloco E.
   with DmAcBr.ACBrSpedFiscal1.Bloco_E do
   begin
      // Abertura do Bloco E
      with RegistroE001New do
      begin
         IND_MOV := imComDados;
         // registro E100
         with RegistroE100New do
         begin
           DT_INI := Datai;
           DT_FIN := Dataf;
         end;
         DecodeDate(Datai,Ano,Mes,Dia);
         aMesAno := IntToStrZero(Mes,2)+IntToStrZero(Ano,4);
         //
         with RegistroE110New do
         begin
            VL_TOT_DEBITOS := sDebitos;
            VL_AJ_DEBITOS := 0;
            VL_TOT_AJ_DEBITOS := 0;
            VL_ESTORNOS_CRED := 0;
            VL_TOT_CREDITOS := sCreditos;
            VL_AJ_CREDITOS := 0;
            VL_TOT_AJ_CREDITOS := 0;
            VL_ESTORNOS_DEB := 0;
            VL_SLD_CREDOR_ANT := 0;
            // apura o ICMS
            aSaldo := sDebitos - sCreditos;
            if pTruncado then
               aSaldo := TruncaValor(aSaldo,2);
            if (aSaldo > 0) then // devedor
            begin
              VL_SLD_APURADO := aSaldo;
              VL_TOT_DED := 0;
              VL_ICMS_RECOLHER := aSaldo;
              VL_SLD_CREDOR_TRANSPORTAR := 0;
            end
            else // credor
            begin
              VL_SLD_APURADO := 0;
              VL_TOT_DED := 0;
              VL_ICMS_RECOLHER := 0;
              VL_SLD_CREDOR_TRANSPORTAR := aSaldo*-1;
            end;
            DEB_ESP := 0;
         end;
         // registro E116
         if aSaldo > 0 then
         begin
           with RegistroE116New do
           begin
             COD_OR    := '000';
             VL_OR     := aSaldo;
             DT_VCTO   := Dataf;
             COD_REC   := CodRec;
             NUM_PROC  := '';
             IND_PROC  := opNenhum;
             PROC      := '';
             MES_REF   := aMesAno;
             TXT_COMPL := '';
           end;
         end;
         //
         if CdsUFST.RecordCount > 0 then
         begin
           // registro E200
           CdsUFST.First;
           while not CdsUFST.Eof do
           begin
             with RegistroE200New do
             begin
               UF := CdsUFST.FieldByName('UF').AsString;
               DT_INI := Datai;
               DT_FIN := Dataf;
               aSaldo := CdsUFST.FieldByName('CREDITO').AsFloat - CdsUFST.FieldByName('DEBITO').AsFloat;

               // E210
               with RegistroE210New do
               begin
                 IND_MOV_ST         := mstComOperacaoST;
                 VL_SLD_CRED_ANT_ST := 0;
                 VL_DEVOL_ST        := 0;
                 VL_RESSARC_ST      := 0;
                 VL_OUT_CRED_ST     := CdsUFST.FieldByName('CREDITO').AsFloat;
                 VL_AJ_CREDITOS_ST  := 0;
                 VL_RETENCAO_ST     := 0;
                 VL_OUT_DEB_ST      := CdsUFST.FieldByName('DEBITO').AsFloat;
                 VL_AJ_DEBITOS_ST   := 0;
                 VL_SLD_DEV_ANT_ST  := 0;
                 VL_DEDUCOES_ST     := 0;
                 if aSaldo < 0 then
                 begin
                   VL_ICMS_RECOL_ST   := (aSaldo*-1);
                   VL_SLD_CRED_ST_TRANSPORTAR := 0;
                   DEB_ESP_ST         := 0;
                 end
                 else
                 begin
                   VL_ICMS_RECOL_ST   := 0;
                   VL_SLD_CRED_ST_TRANSPORTAR := aSaldo;
                   DEB_ESP_ST         := 0;
                 end;
               end
             end;
             CdsUFST.Next;
           end;
         end;
      end;
   end;

end;

procedure TSPED_EFD.DadosBloco_G(Datai,Dataf:TDateTime;CodEmp:String);
var Qry110, Qry125, Qry130, Qry140 : TSQLQuery;
    aItem : Integer;
begin
   Qry110 := TSQLQuery.Create(nil);
   Qry125 := TSQLQuery.Create(nil);
   Qry130 := TSQLQuery.Create(nil);
   Qry140 := TSQLQuery.Create(nil);
   try
     Qry110.SQLConnection := ConexaoDados;
     Qry125.SQLConnection := ConexaoDados;
     Qry130.SQLConnection := ConexaoDados;
     Qry140.SQLConnection := ConexaoDados;
     // Alimenta o componente com informações para gerar todos os registros do Bloco G.
     with DmAcBr.ACBrSpedFiscal1.Bloco_G do
     begin
        with RegistroG001New do
        begin
          if not sControleBlocoG then
          begin
             IND_MOV := imSemDados;
          end
          else
          begin
             IND_MOV := imComDados;
             // registro G110
             Qry110.Close;
             Qry110.SQL.Clear;
             Qry110.SQL.Add('select sum(notaent.val_icms) as total from notaent');
             Qry110.SQL.Add('left outer join natureza on natureza.cd_natureza = notaent.cd_natureza');
             Qry110.SQL.Add('where notaent.dt_entrada between :pDatai and :pDataf');
             Qry110.SQL.Add('and notaent.nota_cancelada = 0');
             Qry110.SQL.Add('and notaent.num_doc is not null');
             Qry110.SQL.Add('and notaent.cd_empresa = :pEmpresa');
             Qry110.SQL.Add('and natureza.apropriar_icms_ativo_permanente = -1');
             Qry110.Params.ParamByName('pDatai').AsDate := Datai;
             Qry110.Params.ParamByName('pDataf').AsDate := Dataf;
             Qry110.Params.ParamByName('pEmpresa').AsInteger := StrToInt(CodEmp);
             Qry110.Open;
             if not Qry110.IsEmpty then
             begin
               with RegistroG110New do
               begin
                 DT_INI        := Datai;
                 DT_FIN        := Dataf;
                 MODO_CIAP     := '';
                 SALDO_IN_ICMS := 0;
                 SALDO_FN_ICMS := 0;
                 SOM_PARC      := Qry110.FieldByName('total').AsFloat;
                 VL_TRIB_EXP   := 0;
                 VL_TOTAL      := 0;
                 IND_PER_SAI   := 0;
                 ICMS_APROP    := 0;
                 SOM_ICMS_OC   := 0;
                 // registro G125
                 Qry125.Close;
                 Qry125.SQL.Clear;
                 Qry125.SQL.Add('select entprod.cd_produto,notaent.dt_entrada,');
                 Qry125.SQL.Add('entprod.val_icms,entprod.val_icms_sub from notaent');
                 Qry125.SQL.Add('left outer join entprod on entprod.cd_entrada = notaent.cd_entrada');
                 Qry125.SQL.Add('left outer join produto on produto.cd_produto = entprod.cd_produto');
                 Qry125.SQL.Add('left outer join natureza on natureza.cd_natureza = notaent.cd_natureza');
                 Qry125.SQL.Add('where notaent.dt_entrada between :pDatai and :pDataf');
                 Qry125.SQL.Add('and notaent.nota_cancelada = 0');
                 Qry125.SQL.Add('and notaent.num_doc is not null');
                 Qry125.SQL.Add('and notaent.cd_empresa = :pEmpresa');
                 Qry125.SQL.Add('and natureza.apropriar_icms_ativo_permanente = -1');
                 Qry125.Params.ParamByName('pDatai').AsDate := Datai;
                 Qry125.Params.ParamByName('pDataf').AsDate := Dataf;
                 Qry125.Params.ParamByName('pEmpresa').AsInteger := StrToInt(CodEmp);
                 Qry125.Open;
                 while not Qry125.Eof do
                 begin
                   with RegistroG125New do
                   begin
                     COD_IND_BEM       := IntToStr(Qry125.FieldByName('cd_produto').AsInteger);
                     DT_MOV            := Qry125.FieldByName('dt_entrada').AsDateTime;
                     TIPO_MOV          := mbcIM;
                     VL_IMOB_ICMS_OP   := Qry125.FieldByName('val_icms').AsFloat;
                     VL_IMOB_ICMS_ST   := Qry125.FieldByName('val_icms_sub').AsFloat;
                     VL_IMOB_ICMS_FRT  := 0;
                     VL_IMOB_ICMS_DIF  := 0;
                     NUM_PARC          := 0;
                     VL_PARC_PASS      := 0;
                     VL_PARC_APROP     := Qry125.FieldByName('val_icms').AsFloat;
                     // registro G130
                     Qry130.Close;
                     Qry130.SQL.Clear;
                     Qry130.SQL.Add('select notaent.cd_fornec,nfemsg.chave_nfe,');
                     Qry130.SQL.Add('notaent.dt_entrada,notaent.num_doc from notaent');
                     Qry130.SQL.Add('left outer join entprod on entprod.cd_entrada = notaent.cd_entrada');
                     Qry130.SQL.Add('left outer join produto on produto.cd_produto = entprod.cd_produto');
                     Qry130.SQL.Add('left outer join nfemsg on nfemsg.cd_entrada = notaent.cd_entrada');
                     Qry130.SQL.Add('left outer join natureza on natureza.cd_natureza = notaent.cd_natureza');
                     Qry130.SQL.Add('where notaent.dt_entrada between :pDatai and :pDataf');
                     Qry130.SQL.Add('and notaent.nota_cancelada = 0');
                     Qry130.SQL.Add('and notaent.num_doc is not null');
                     Qry130.SQL.Add('and notaent.cd_empresa = :pEmpresa');
                     Qry130.SQL.Add('and natureza.apropriar_icms_ativo_permanente = -1');
                     Qry130.Params.ParamByName('pDatai').AsDate := Datai;
                     Qry130.Params.ParamByName('pDataf').AsDate := Dataf;
                     Qry130.Params.ParamByName('pEmpresa').AsInteger := StrToInt(CodEmp);
                     Qry130.Params.ParamByName('pProduto').AsInteger := Qry125.FieldByname('cd_produto').AsInteger;
                     Qry130.Open;
                     while not Qry130.Eof do
                     begin
                       with RegistroG130New do
                       begin
                         IND_EMIT    := edTerceiros;
                         COD_PART    := 'F'+IntToStrZero(Qry130.FieldByName('CD_FORNEC').AsInteger,5);
                         if Qry130.FieldByName('CHAVE_NFE').AsString <> '' then
                            COD_MOD  := '55'
                         else
                            COD_MOD  := '01';
                         SERIE       := '1';
                         NUM_DOC     := Qry130.FieldByName('NUM_DOC').AsString;
                         CHV_NFE_CTE := Qry130.FieldByName('CHAVE_NFE').AsString;
                         DT_DOC      := Qry130.FieldByName('DT_ENTRADA').AsDateTime;
                         // registro G140
                         Qry140.Close;
                         Qry140.SQL.Clear;
                         Qry140.SQL.Add('select entprod.cd_produto from entprod');
                         Qry140.SQL.Add('where entprod.cd_entrada = :pCodigo');
                         Qry140.Params.ParamByName('pCodigo').AsInteger := Qry130.FieldByName('cd_entrada').AsInteger;
                         Qry140.Open;
                         aItem := 0;
                         while not Qry140.Eof do
                         begin
                           Inc(aItem);
                           with RegistroG140New do
                           begin
                             NUM_ITEM := IntToStrZero(aItem,2);
                             COD_ITEM := IntToStr(Qry140.FieldByName('cd_produto').AsInteger);
                           end;
                           Qry140.Next
                         end;
                       end;
                       Qry130.Next;
                     end;
                   end;
                   Qry125.Next;
                 end;
               end;
             end;
          end;
        end;
     end;
   finally
     FreeAndNil(Qry110);
     FreeAndNil(Qry125);
     FreeAndNil(Qry130);
     FreeAndNil(Qry140);
   end;
end;

procedure TSPED_EFD.DadosBloco_H(var CdsInventario:TClientDataSet; Processar:Boolean;
  Datai,Dataf:TDateTime);
var aTotalInvent : Double;
begin
   // Alimenta o componente com informações para gerar todos os registros do
   // Bloco H.
   with DmAcBr.ACBrSPEDFiscal1.Bloco_H do
   begin
     with RegistroH001New do
     begin
       if Processar then
       begin
         IND_MOV := imComDados;
         //
         with RegistroH005New do
         begin
            aTotalInvent := RetornaTotalInventario(CdsInventario);
            DT_INV := Dataf;
            VL_INV := aTotalInvent;
            // registro H010
            if aTotalInvent > 0 then
            begin
              CdsInventario.First;
              while not CdsInventario.Eof do
              begin
                 with RegistroH010New do
                 begin
                    COD_ITEM  := IntToStr(CdsInventario.FieldByName('cd_produto').AsInteger);
                    UNID      := CdsInventario.FieldByName('unidade').AsString;
                    QTD       := CdsInventario.FieldByName('quantidade').AsFloat;
                    VL_UNIT   := CdsInventario.FieldByName('valor').AsFloat;
                    VL_ITEM   := CdsInventario.FieldByName('total').AsFloat;
                    IND_PROP  := piInformante;
                    COD_PART  := '';
                    TXT_COMPL := '';
                    COD_CTA   := '00000';
                 end;
                 CdsInventario.Next;
              end;
            end;
         end;
       end
       else
       begin
         IND_MOV := imSemDados;
       end;
     end;
   end;

end;

procedure TSPED_EFD.InsereItemInventario(var CdsInventario:TClientDataSet; pCod: Integer;
  pUnid: String; pQuant, pValor: Double);
begin
  try
    if pQuant < 0 then
       pQuant := 0;
    CdsInventario.Append;
    CdsInventario.FieldByName('cd_produto').AsInteger := pCod;
    CdsInventario.FieldByName('unidade').AsString     := pUnid;
    CdsInventario.FieldByName('quantidade').AsFloat   := pQuant;
    CdsInventario.FieldByName('valor').AsFloat        := pValor;
    CdsInventario.FieldByName('total').AsFloat        := pQuant*pValor;
    CdsInventario.Post;
  except
    MessageDlg('Erro ao gravar inventário. Verifique!', mtError, [mbOK], 0);
  end;
end;

function TSPED_EFD.VerificaIPIProdutosNota(pID, pES: Integer): Boolean;
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

procedure TSPED_EFD.InsereRegistroUFST(var CdsUFST:TClientDataSet; pUF: String; pCredito,pDebito:Double);
begin
  if not CdsUFST.Locate('UF',pUF,[]) then
  begin
     CdsUFST.Append;
     CdsUFST.FieldByname('UF').AsString := pUF;
  end
  else
     CdsUFST.Edit;
  // soma valos
  CdsUFST.FieldByname('CREDITO').AsFloat := CdsUFST.FieldByname('CREDITO').AsFloat + pCredito;
  CdsUFST.FieldByname('DEBITO').AsFloat  := CdsUFST.FieldByname('DEBITO').AsFloat  + pDebito;
  CdsUFST.Post;

end;

function TSPED_EFD.VerificaNotaDevolucao(fCodigo: Integer): Boolean;
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
       Trim(FiltraNumero(sCNPJEmpresa)) then
       Result := true;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;

procedure TSPED_EFD.RetornaBC_ICMS_Itens(var ValBase,ValICMS:Double;pID,pES: Integer);
var Q : TSQLQuery;
begin
  Q := TSQLQuery.Create(nil);
  try
    Q.SQLConnection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    if pES = 0 then // erntrada
    begin
      Q.SQL.Add('select sum(val_base_icms) as valbase,');
      Q.SQL.Add('sum(val_icms) as valicms from entprod');
      Q.SQL.Add('where entprod.cd_entrada = :pID');
      Q.SQL.Add('and entprod.perc_icm > 0');
      Q.SQL.Add('and (entprod.situacao_tributaria_icms = '+QuotedStr('00')+' or');
      Q.SQL.Add('     entprod.situacao_tributaria_icms = '+QuotedStr('10')+' or');
      Q.SQL.Add('     entprod.situacao_tributaria_icms = '+QuotedStr('20')+' or');
      Q.SQL.Add('     entprod.situacao_tributaria_icms = '+QuotedStr('70')+')');
    end
    else if pES = 1 then // saida
    begin
      Q.SQL.Add('select sum(val_base_icms) as valbase,');
      Q.SQL.Add('sum(val_icms) as valicms from saiprod');
      Q.SQL.Add('where saiprod.cd_saida = :pID');
      Q.SQL.Add('and saiprod.perc_icm > 0');
      Q.SQL.Add('and (saiprod.situacao_tributaria_icms = '+QuotedStr('00')+' or');
      Q.SQL.Add('     saiprod.situacao_tributaria_icms = '+QuotedStr('10')+' or');
      Q.SQL.Add('     saiprod.situacao_tributaria_icms = '+QuotedStr('20')+' or');
      Q.SQL.Add('     saiprod.situacao_tributaria_icms = '+QuotedStr('70')+')');
    end;
    Q.Params.ParamByName('pID').AsInteger := pID;
    Q.Open;
    // repassa resultado
    ValBase := Q.FieldByName('valbase').AsFloat;
    ValICMS := Q.FieldByName('valicms').AsFloat;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;


function TSPED_EFD.VerificaSTProdutosNota(pID, pES: Integer): Boolean;
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

function TSPED_EFD.RetornaTotalInventario(CdsInventario:TClientDataSet): Double;
begin
  Result := 0;
  CdsInventario.First;
  while not CdsInventario.Eof do
  begin
    Result := Result + CdsInventario.FieldByname('total').AsFloat;
    CdsInventario.Next;
  end;

end;

function TSPED_EFD.RetornaUFCliFor(pCodigo, pTipo: Integer): String;
var Q : TSQLQuery;
begin
  Q := TSQLQuery.Create(nil);
  try
    Q.SQLConnection := ConexaoDados;
    Q.Close;
    Q.SQL.Clear;
    if pTipo = 0 then // fornecedore
    begin
      Q.SQL.Add('select f.uf from fornec f');
      Q.SQL.Add('where f.cd_fornec = :pCodigo');
    end
    else if pTipo = 1 then // Cliente
    begin
      Q.SQL.Add('select c.uf from cliente c');
      Q.SQL.Add('where c.cd_cliente = :pCodigo');
    end;
    Q.Params.ParamByName('pCodigo').AsInteger := pCodigo;
    Q.Open;
    //
    Result := Q.FieldByName('UF').AsString;
    Q.Close;
  finally
    FreeAndNil(Q);
  end;

end;


constructor TSPED_EFD.CrieInstancia;
begin

end;

destructor TSPED_EFD.DestruaInstancia;
begin

end;

end.
