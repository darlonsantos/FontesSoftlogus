unit uDmSPED;

interface

uses
  SysUtils, Classes, IniFiles, Windows, DBXpress, DB, SqlExpr,
  Messages, Variants, Graphics, Controls, Forms, Dialogs, StdCtrls, Mask,
  DBCtrls, ExtCtrls, ComCtrls, FMTBcd, DBClient, Provider, uRotinas_EFD,
  uRotinas_PisCofins;


type
  TDmSPED = class(TDataModule)
    QryEmpresa: TSQLQuery;
    DspEmpresa: TDataSetProvider;
    CdsEmpresa: TClientDataSet;
    QryEmpresaCD_EMPRESA: TIntegerField;
    QryEmpresaDS_EMPRESA: TStringField;
    QryEmpresaFANTASIA: TStringField;
    QryEmpresaREGISTRO_1: TStringField;
    QryEmpresaREGISTRO_2: TStringField;
    QryEmpresaENDERECO: TStringField;
    QryEmpresaNUMERO: TStringField;
    QryEmpresaBAIRRO: TStringField;
    QryEmpresaCIDADE: TStringField;
    QryEmpresaCEP: TStringField;
    QryEmpresaUF: TStringField;
    QryEmpresaTEL_1: TStringField;
    QryEmpresaTEL_2: TStringField;
    QryEmpresaCODIGO_IBGE: TStringField;
    QryEmpresaCOD_SUFRAMA: TStringField;
    QryEmpresaINSC_MUNICIPAL: TStringField;
    CdsEmpresaCD_EMPRESA: TIntegerField;
    CdsEmpresaDS_EMPRESA: TStringField;
    CdsEmpresaFANTASIA: TStringField;
    CdsEmpresaREGISTRO_1: TStringField;
    CdsEmpresaREGISTRO_2: TStringField;
    CdsEmpresaENDERECO: TStringField;
    CdsEmpresaNUMERO: TStringField;
    CdsEmpresaBAIRRO: TStringField;
    CdsEmpresaCIDADE: TStringField;
    CdsEmpresaCEP: TStringField;
    CdsEmpresaUF: TStringField;
    CdsEmpresaTEL_1: TStringField;
    CdsEmpresaTEL_2: TStringField;
    CdsEmpresaCODIGO_IBGE: TStringField;
    CdsEmpresaCOD_SUFRAMA: TStringField;
    CdsEmpresaINSC_MUNICIPAL: TStringField;
    QryEmpresaE_MAIL: TStringField;
    CdsEmpresaE_MAIL: TStringField;
    QryEmpresaCD_ESCCONTABIL: TIntegerField;
    CdsEmpresaCD_ESCCONTABIL: TIntegerField;
    QryContador: TSQLQuery;
    QryContadorDS_CONTADOR: TStringField;
    QryContadorCPF_CONTADOR: TStringField;
    QryContadorCRC_CONTADOR: TStringField;
    QryContadorREGISTRO_1: TStringField;
    QryContadorCEP: TStringField;
    QryContadorENDERECO: TStringField;
    QryContadorNUMERO: TStringField;
    QryContadorBAIRRO: TStringField;
    QryContadorTEL_1: TStringField;
    QryContadorTEL_2: TStringField;
    QryContadorE_MAIL: TStringField;
    QryContadorCODIGO_IBGE: TStringField;
    DspContador: TDataSetProvider;
    CdsContabil: TClientDataSet;
    CdsContabilDS_CONTADOR: TStringField;
    CdsContabilCPF_CONTADOR: TStringField;
    CdsContabilCRC_CONTADOR: TStringField;
    CdsContabilREGISTRO_1: TStringField;
    CdsContabilCEP: TStringField;
    CdsContabilENDERECO: TStringField;
    CdsContabilNUMERO: TStringField;
    CdsContabilBAIRRO: TStringField;
    CdsContabilTEL_1: TStringField;
    CdsContabilTEL_2: TStringField;
    CdsContabilE_MAIL: TStringField;
    CdsContabilCODIGO_IBGE: TStringField;
    QryClientes: TSQLQuery;
    QryClientesCD_CLIENTE: TIntegerField;
    QryClientesDS_CLIENTE: TStringField;
    QryClientesPAIS: TStringField;
    QryClientesREGISTRO_1: TStringField;
    QryClientesCATEGORIA: TStringField;
    QryClientesREGISTRO_2: TStringField;
    QryClientesCODIGO_IBGE: TStringField;
    QryClientesENDERECO: TStringField;
    QryClientesNUMERO: TStringField;
    QryClientesBAIRRO: TStringField;
    DspClientes: TDataSetProvider;
    CdsClientes: TClientDataSet;
    CdsClientesCD_CLIENTE: TIntegerField;
    CdsClientesDS_CLIENTE: TStringField;
    CdsClientesPAIS: TStringField;
    CdsClientesREGISTRO_1: TStringField;
    CdsClientesCATEGORIA: TStringField;
    CdsClientesREGISTRO_2: TStringField;
    CdsClientesCODIGO_IBGE: TStringField;
    CdsClientesENDERECO: TStringField;
    CdsClientesNUMERO: TStringField;
    CdsClientesBAIRRO: TStringField;
    QryFornecedor: TSQLQuery;
    DspFornecedor: TDataSetProvider;
    CdsFornecedor: TClientDataSet;
    QryFornecedorCD_FORNEC: TIntegerField;
    QryFornecedorDS_FORNEC: TStringField;
    QryFornecedorPAIS: TStringField;
    QryFornecedorREGISTRO_1: TStringField;
    QryFornecedorCATEGORIA: TStringField;
    QryFornecedorREGISTRO_2: TStringField;
    QryFornecedorCODIGO_IBGE: TStringField;
    QryFornecedorENDERECO: TStringField;
    QryFornecedorNUMERO: TStringField;
    QryFornecedorBAIRRO: TStringField;
    CdsFornecedorCD_FORNEC: TIntegerField;
    CdsFornecedorDS_FORNEC: TStringField;
    CdsFornecedorPAIS: TStringField;
    CdsFornecedorREGISTRO_1: TStringField;
    CdsFornecedorCATEGORIA: TStringField;
    CdsFornecedorREGISTRO_2: TStringField;
    CdsFornecedorCODIGO_IBGE: TStringField;
    CdsFornecedorENDERECO: TStringField;
    CdsFornecedorNUMERO: TStringField;
    CdsFornecedorBAIRRO: TStringField;
    QryClientesUF: TStringField;
    CdsClientesUF: TStringField;
    QryFornecedorUF: TStringField;
    CdsFornecedorUF: TStringField;
    QryClientesSTATUS_NFE: TStringField;
    QryFornecedorSTATUS_NFE: TStringField;
    CdsClientesSTATUS_NFE: TStringField;
    CdsFornecedorSTATUS_NFE: TStringField;
    QryClientesCODIGO_PAIS: TStringField;
    CdsClientesCODIGO_PAIS: TStringField;
    QryFornecedorCODIGO_PAIS: TStringField;
    CdsFornecedorCODIGO_PAIS: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    ArqIni : TIniFile;
  public
    { Public declarations }
    oSpedEFD : TSPED_EFD;
    oSpedPC  : TSPED_PC;
    sBUF_LINHA, sBUF_NOTA,sNOTA, sPATH, sCodRec : String;
    sCOD_VER,sCOD_VERPC, sCOD_FIN , sPERFIL, sINDICADOR : Integer;
    sSitEspecial, sIndicadorPC, sTpEscrituracao, sEscrituracao : Integer;
    sNatureza,sIncidencia,sAproCred,sContrApur,sEscrApur : Integer;
    sSenhaAcesso : String;
    sTruncado : Boolean;
    procedure GravaIni;
    procedure LeIni;
    function Dados_Empresa(pCodEmpresa:Integer):Boolean;
    function Dados_Contador(pCodigo:Integer):Boolean;
    function Dados_Clientes(pDatai,pDataf:TDateTime;pEmpresa:Integer):Boolean;
    function Dados_Fornecedores(pDatai,pDataf:TDateTime;pEmpresa:Integer):Boolean;
    function Inscricao(Inscricao, Tipo: String): Boolean;
    function Mascara_Inscricao(Inscricao, Estado: String): String;

  end;

var
  DmSPED: TDmSPED;

implementation

uses uDmConexao, uLibrary;

{$R *.dfm}

function TDmSPED.Dados_Empresa(pCodEmpresa: Integer): Boolean;
begin
  CdsEmpresa.Close;
  CdsEmpresa.Params.ParamByName('pCdEmp').AsInteger := pCodEmpresa;
  CdsEmpresa.Open;
  // resultado
  Result := false;
  if CdsEmpresa.RecordCount > 0 then
     Result := true;
     
end;

function TDmSPED.Dados_Contador(pCodigo: Integer): Boolean;
begin
  CdsContabil.Close;
  CdsContabil.Params.ParamByName('pCodigo').AsInteger := pCodigo;
  CdsContabil.Open;
  // resultado
  Result := false;
  if CdsContabil.RecordCount > 0 then
     Result := true;
     
end;

function TDmSPED.Dados_Clientes(pDatai, pDataf: TDateTime;pEmpresa:Integer): Boolean;
begin
  CdsClientes.Close;
  CdsClientes.Params.ParamByName('pDatai').AsDateTime  := pDatai;
  CdsClientes.Params.ParamByName('pDataf').AsDateTime  := pDataf;
  CdsClientes.Params.ParamByName('pEmpresa').AsInteger := pEmpresa;
  CdsClientes.Open;
  // resultado
  Result := false;
  if CdsClientes.RecordCount > 0 then
     Result := true;

end;

function TDmSPED.Dados_Fornecedores(pDatai, pDataf: TDateTime;pEmpresa:Integer): Boolean;
begin
  CdsFornecedor.Close;
  CdsFornecedor.Params.ParamByName('pDatai').AsDateTime  := pDatai;
  CdsFornecedor.Params.ParamByName('pDataf').AsDateTime  := pDataf;
  CdsFornecedor.Params.ParamByName('pEmpresa').AsInteger := pEmpresa;
  CdsFornecedor.Open;
  // resultado
  Result := false;
  if CdsFornecedor.RecordCount > 0 then
     Result := true;

end;

Function TDmSPED.Inscricao(Inscricao, Tipo : String ) : Boolean;
Var Contador, Casos, Digitos : ShortInt;
    Tabela_1, Tabela_2, Tabela_3 : String;
    Base_1, Base_2, Base_3 : String;
    Valor_1 : ShortInt;
    Soma_1, Soma_2 : Integer;
    Erro_1, Erro_2, Erro_3 : ShortInt;
    Posicao_1, Posicao_2 : String;
    Tabela, Rotina : String;
    Modulo : ShortInt;
    Peso : String;
    Digito    : ShortInt;
    Resultado : String;
    Retorno   : Boolean;
Begin
  Try
  Tabela_1 := ' ';
  Tabela_2 := ' ';
  Tabela_3 := ' ';
  {                                                                               }                                                                                                                 {                                                                                                }
  {         Valores possiveis para os digitos (j)                                 }
  {                                                                               }
  { 0 a 9 = Somente o digito indicado.                                            }
  {     N = Numeros 0 1 2 3 4 5 6 7 8 ou 9                                        }
  {     A = Numeros 1 2 3 4 5 6 7 8 ou 9                                          }
  {     B = Numeros 0 3 5 7 ou 8                                                  }
  {     C = Numeros 4 ou 7                                                        }
  {     D = Numeros 3 ou 4                                                        }
  {     E = Numeros 0 ou 8                                                        }
  {     F = Numeros 0 1 ou 5                                                      }
  {     G = Numeros 1 7 8 ou 9                                                    }
  {     H = Numeros 0 1 2 ou 3                                                    }
  {     I = Numeros 0 1 2 3 ou 4                                                  }
  {     J = Numeros 0 ou 9                                                        }
  {     K = Numeros 1 2 3 ou 9                                                    }
  {                                                                               }
  { -------------------------------------------------------- }
  {                                                                               }
  {         Valores possiveis para as rotinas (d) e (g)                           }
  {                                                                               }
  { A a E = Somente a Letra indicada.                                             }
  {     0 = B e D                                                                 }
  {     1 = C e E                                                                 }
  {     2 = A e E                                                                 }
  {                                                                               }
  { -------------------------------------------------------- }
  {                                                                               }
  {                                  C T  F R M  P  R M  P                        }
  {                                  A A  A O O  E  O O  E                        }
  {                                  S M  T T D  S  T D  S                        }
  {                                                                               }
  {                                  a b  c d e  f  g h  i  jjjjjjjjjjjjjj        }
  {                                  0000000001111111111222222222233333333        }
  {                                  1234567890123456789012345678901234567        }

  IF Tipo = 'AC'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     01NNNNNNX.14.00';
  IF Tipo = 'AC'   Then Tabela_2 := '2.13.0.E.11.02.E.11.01. 01NNNNNNNNNXY.13.14';
  IF Tipo = 'AL'   Then Tabela_1 := '1.09.0.0.11.01. .  .  .     24BNNNNNX.14.00';
  IF Tipo = 'AP'   Then Tabela_1 := '1.09.0.1.11.01. .  .  .     03NNNNNNX.14.00';
  IF Tipo = 'AP'   Then Tabela_2 := '2.09.1.1.11.01. .  .  .     03NNNNNNX.14.00';
  IF Tipo = 'AP'   Then Tabela_3 := '3.09.0.E.11.01. .  .  .     03NNNNNNX.14.00';
  IF Tipo = 'AM'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     0CNNNNNNX.14.00';
  IF Tipo = 'BA'   Then Tabela_1 := '1.08.0.E.10.02.E.10.03.      NNNNNNYX.14.13';
  IF Tipo = 'BA'   Then Tabela_2 := '2.08.0.E.11.02.E.11.03.      NNNNNNYX.14.13';
  IF Tipo = 'CE'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     0NNNNNNNX.14.13';
  IF Tipo = 'DF'   Then Tabela_1 := '1.13.0.E.11.02.E.11.01. 07DNNNNNNNNXY.13.14';
  IF Tipo = 'ES'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     0ENNNNNNX.14.00';
  IF Tipo = 'GO'   Then Tabela_1 := '1.09.1.E.11.01. .  .  .     1FNNNNNNX.14.00';
  IF Tipo = 'GO'   Then Tabela_2 := '2.09.0.E.11.01. .  .  .     1FNNNNNNX.14.00';
  IF Tipo = 'MA'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     12NNNNNNX.14.00';
  IF Tipo = 'MT'   Then Tabela_1 := '1.11.0.E.11.01. .  .  .   NNNNNNNNNNX.14.00';
  IF Tipo = 'MS'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     28NNNNNNX.14.00';
  IF Tipo = 'MG'   Then Tabela_1 := '1.13.0.2.10.10.E.11.11. NNNNNNNNNNNXY.13.14';
  IF Tipo = 'PA'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     15NNNNNNX.14.00';
  IF Tipo = 'PB'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     16NNNNNNX.14.00';
  IF Tipo = 'PR'   Then Tabela_1 := '1.10.0.E.11.09.E.11.08.    NNNNNNNNXY.13.14';
  IF Tipo = 'PE'   Then Tabela_1 := '1.14.1.E.11.07. .  .  .18ANNNNNNNNNNX.14.00';
  IF Tipo = 'PI'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     19NNNNNNX.14.00';
  IF Tipo = 'RJ'   Then Tabela_1 := '1.08.0.E.11.08. .  .  .      GNNNNNNX.14.00';
  IF Tipo = 'RN'   Then Tabela_1 := '1.09.0.0.11.01. .  .  .     20HNNNNNX.14.00';
  IF Tipo = 'RS'   Then Tabela_1 := '1.10.0.E.11.01. .  .  .    INNNNNNNNX.14.00';
  IF Tipo = 'RO'   Then Tabela_1 := '1.09.1.E.11.04. .  .  .     ANNNNNNNX.14.00';
  IF Tipo = 'RO'   Then Tabela_2 := '2.14.0.E.11.01. .  .  .NNNNNNNNNNNNNX.14.00';
  IF Tipo = 'RR'   Then Tabela_1 := '1.09.0.D.09.05. .  .  .     24NNNNNNX.14.00';
  IF Tipo = 'SC'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     NNNNNNNNX.14.00';
  IF Tipo = 'SP'   Then Tabela_1 := '1.12.0.D.11.12.D.11.13.  NNNNNNNNXNNY.11.14';
  IF Tipo = 'SP'   Then Tabela_2 := '2.12.0.D.11.12. .  .  .  NNNNNNNNXNNN.11.00';
  IF Tipo = 'SE'   Then Tabela_1 := '1.09.0.E.11.01. .  .  .     NNNNNNNNX.14.00';
  IF Tipo = 'TO'   Then Tabela_1 := '1.11.0.E.11.06. .  .  .   29JKNNNNNNX.14.00';
  IF Tipo = 'CNPJ' Then Tabela_1 := '1.14.0.E.11.21.E.11.22.NNNNNNNNNNNNXY.13.14';
  IF Tipo = 'CPF'  Then Tabela_1 := '1.11.0.E.11.31.E.11.32.   NNNNNNNNNXY.13.14';
  { Deixa somente os numeros }
  Base_1 := '';
  For Contador := 1 TO 30 Do IF Pos( Copy( Inscricao, Contador, 1 ), '0123456789' ) <> 0 Then Base_1 := Base_1 + Copy( Inscricao, Contador, 1 );
  { Repete 3x - 1 para cada caso possivel  }
  Casos  := 0;
  Erro_1 := 0;
  Erro_2 := 0;
  Erro_3 := 0;
  While Casos < 3 Do
  Begin
    Casos := Casos + 1;
    IF Casos = 1 Then Tabela := Tabela_1;
    IF Casos = 2 Then Erro_1 := Erro_3  ;
    IF Casos = 2 Then Tabela := Tabela_2;
    IF Casos = 3 Then Erro_2 := Erro_3  ;
    IF Casos = 3 Then Tabela := Tabela_3;
    Erro_3 := 0 ;
    IF Copy( Tabela, 1, 1 ) <> ' ' Then
    Begin
      { Verifica o Tamanho }
      IF Length( Trim( Base_1 ) ) <> ( StrToInt( Copy( Tabela,  3,  2 ) ) ) Then Erro_3 := 1;
      IF Erro_3 = 0 Then
      Begin
        { Ajusta o Tamanho }
        Base_2 := Copy( '              ' + Base_1, Length( '              ' + Base_1 ) - 13, 14 );
        { Compara com valores possivel para cada uma da 14 posições }
        Contador := 0 ;
        While ( Contador < 14 ) AND ( Erro_3 = 0 ) Do
        Begin
          Contador := Contador + 1;
          Posicao_1 := Copy( Copy( Tabela, 24, 14 ), Contador, 1 );
          Posicao_2 := Copy( Base_2                , Contador, 1 );
          IF ( Posicao_1  = ' '        ) AND (      Posicao_2                 <> ' ' ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'N'        ) AND ( Pos( Posicao_2, '0123456789' )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'A'        ) AND ( Pos( Posicao_2, '123456789'  )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'B'        ) AND ( Pos( Posicao_2, '03578'      )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'C'        ) AND ( Pos( Posicao_2, '47'         )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'D'        ) AND ( Pos( Posicao_2, '34'         )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'E'        ) AND ( Pos( Posicao_2, '08'         )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'F'        ) AND ( Pos( Posicao_2, '015'        )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'G'        ) AND ( Pos( Posicao_2, '1789'       )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'H'        ) AND ( Pos( Posicao_2, '0123'       )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'I'        ) AND ( Pos( Posicao_2, '01234'      )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'J'        ) AND ( Pos( Posicao_2, '09'         )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1  = 'K'        ) AND ( Pos( Posicao_2, '1239'       )  =   0 ) Then Erro_3 := 1;
          IF ( Posicao_1 <>  Posicao_2 ) AND ( Pos( Posicao_1, '0123456789' )  >   0 ) Then Erro_3 := 1;
        End;
        { Calcula os Digitos }
        Rotina  := ' ';
        Digitos := 000;
        Digito  := 000;
        While ( Digitos < 2 ) AND ( Erro_3 = 0 ) Do
        Begin
          Digitos := Digitos + 1;
          { Carrega peso }
          Peso := Copy( Tabela, 5 + ( Digitos * 8 ), 2 );
          IF Peso <> '  ' Then
          Begin
            Rotina :=           Copy( Tabela, 0 + ( Digitos * 8 ), 1 )  ;
            Modulo := StrToInt( Copy( Tabela, 2 + ( Digitos * 8 ), 2 ) );
            IF Peso = '01' Then Peso := '06.05.04.03.02.09.08.07.06.05.04.03.02.00';
            IF Peso = '02' Then Peso := '05.04.03.02.09.08.07.06.05.04.03.02.00.00';
            IF Peso = '03' Then Peso := '06.05.04.03.02.09.08.07.06.05.04.03.00.02';
            IF Peso = '04' Then Peso := '00.00.00.00.00.00.00.00.06.05.04.03.02.00';
            IF Peso = '05' Then Peso := '00.00.00.00.00.01.02.03.04.05.06.07.08.00';
            IF Peso = '06' Then Peso := '00.00.00.09.08.00.00.07.06.05.04.03.02.00';
            IF Peso = '07' Then Peso := '05.04.03.02.01.09.08.07.06.05.04.03.02.00';
            IF Peso = '08' Then Peso := '08.07.06.05.04.03.02.07.06.05.04.03.02.00';
            IF Peso = '09' Then Peso := '07.06.05.04.03.02.07.06.05.04.03.02.00.00';
            IF Peso = '10' Then Peso := '00.01.02.01.01.02.01.02.01.02.01.02.00.00';
            IF Peso = '11' Then Peso := '00.03.02.11.10.09.08.07.06.05.04.03.02.00';
            IF Peso = '12' Then Peso := '00.00.01.03.04.05.06.07.08.10.00.00.00.00';
            IF Peso = '13' Then Peso := '00.00.03.02.10.09.08.07.06.05.04.03.02.00';
            IF Peso = '21' Then Peso := '05.04.03.02.09.08.07.06.05.04.03.02.00.00';
            IF Peso = '22' Then Peso := '06.05.04.03.02.09.08.07.06.05.04.03.02.00';
            IF Peso = '31' Then Peso := '00.00.00.10.09.08.07.06.05.04.03.02.00.00';
            IF Peso = '32' Then Peso := '00.00.00.11.10.09.08.07.06.05.04.03.02.00';
            { Multiplica }
            Base_3 := Copy( ( '0000000000000000' + Trim( Base_2 ) ), Length( ( '0000000000000000' + Trim( Base_2 ) ) ) - 13, 14 );
            Soma_1 := 0;
            Soma_2 := 0;
            For Contador := 1 To 14 Do
            Begin
              Valor_1 := ( StrToInt( Copy( Base_3, Contador, 01 ) ) * StrToInt( Copy( Peso, Contador * 3 - 2, 2 ) ) );
              Soma_1  := Soma_1 + Valor_1;
              IF Valor_1 > 9 Then Valor_1 := Valor_1 - 9;
              Soma_2  := Soma_2 + Valor_1;
            End;
            { Ajusta valor da soma }
            IF Pos( Rotina, 'A2'  ) > 0 Then Soma_1 := Soma_2;
            IF Pos( Rotina, 'B0'  ) > 0 Then Soma_1 := Soma_1 * 10;
            IF Pos( Rotina, 'C1'  ) > 0 Then Soma_1 := Soma_1 + ( 5 + 4 * StrToInt( Copy( Tabela, 6, 1 ) ) );
            { Calcula o Digito }
            IF Pos( Rotina, 'D0'  ) > 0 Then Digito := Soma_1 Mod Modulo;
            IF Pos( Rotina, 'E12' ) > 0 Then Digito := Modulo - ( Soma_1 Mod Modulo);
            IF Digito < 10 Then Resultado := IntToStr( Digito );
            IF Digito = 10 Then Resultado := '0';
            IF Digito = 11 Then Resultado := Copy( Tabela, 6, 1 );
            { Verifica o Digito }
            IF ( Copy( Base_2, StrToInt( Copy( Tabela, 36 + ( Digitos * 3 ), 2 ) ), 1 ) <> Resultado ) Then Erro_3 := 1;
          End;
        End;
      End;
    End;
  End;
  { Retorna o resultado da Verificação }
  Retorno := FALSE;
  IF ( Trim( Tabela_1 ) <> '' ) AND ( ERRO_1 = 0 ) Then Retorno := TRUE;
  IF ( Trim( Tabela_2 ) <> '' ) AND ( ERRO_2 = 0 ) Then Retorno := TRUE;
  IF ( Trim( Tabela_3 ) <> '' ) AND ( ERRO_3 = 0 ) Then Retorno := TRUE;
  IF Trim( Inscricao ) = 'ISENTO' Then Retorno := TRUE;
  Result := Retorno;
  Except
    Result := False;
  End;
End;

{ Mascara_Inscricao __________________________________}

Function TDmSPED.Mascara_Inscricao( Inscricao, Estado : String ) : String;
Var Mascara     : String;
    Contador_1, Contador_2  : Integer;
Begin
  IF Estado = 'AC' Then Mascara := '**.***.***/***-**' ;
  IF Estado = 'AL' Then Mascara := '*********'         ;
  IF Estado = 'AP' Then Mascara := '*********'         ;
  IF Estado = 'AM' Then Mascara := '**.***.***-*'      ;
  IF Estado = 'BA' Then Mascara := '******-**'         ;
  IF Estado = 'CE' Then Mascara := '********-*'        ;
  IF Estado = 'DF' Then Mascara := '***********-**'    ;
  IF Estado = 'ES' Then Mascara := '*********'         ;
  IF Estado = 'GO' Then Mascara := '**.***.***-*'      ;
  IF Estado = 'MA' Then Mascara := '*********'         ;
  IF Estado = 'MT' Then Mascara := '**********-*'      ;
  IF Estado = 'MS' Then Mascara := '*********'         ;
  IF Estado = 'MG' Then Mascara := '***.***.***/****'  ;
  IF Estado = 'PA' Then Mascara := '**-******-*'       ;
  IF Estado = 'PB' Then Mascara := '********-*'        ;
  IF Estado = 'PR' Then Mascara := '********-**'       ;
  IF Estado = 'PE' Then Mascara := '**.*.***.*******-*';
  IF Estado = 'PI' Then Mascara := '*********'         ;
  IF Estado = 'RJ' Then Mascara := '**.***.**-*'       ;
  IF Estado = 'RN' Then Mascara := '**.***.***-*'      ;
  IF Estado = 'RS' Then Mascara := '***/*******'       ;
  IF Estado = 'RO' Then Mascara := '***.*****-*'       ;
  IF Estado = 'RR' Then Mascara := '********-*'        ;
  IF Estado = 'SC' Then Mascara := '***.***.***'       ;
  IF Estado = 'SP' Then Mascara := '***.***.***.***'   ;
  IF Estado = 'SE' Then Mascara := '*********-*'       ;
  IF Estado = 'TO' Then Mascara := '***********'       ;
  Contador_2  := 1;
  Result      := '';
  Mascara     := Mascara + '****';
  For Contador_1 := 1 To Length( Mascara ) Do Begin
    IF Copy( Mascara, Contador_1, 1 ) =  '*' Then Result := Result + Copy( Inscricao, Contador_2, 1 );
    IF Copy( Mascara, Contador_1, 1 ) <> '*' Then Result := Result + Copy( Mascara  , Contador_1, 1 );
    IF Copy( Mascara, Contador_1, 1 ) =  '*' Then Contador_2 := Contador_2 + 1;
  End;
  Result := Trim( Result );

end;

procedure TDmSPED.GravaIni;
begin
  if sSenhaAcesso = '' then
     sSenhaAcesso := Criptografa('123',10);
  ArqIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'config.ini');
  ArqINI.WriteInteger('SPED','COD_VER',sCOD_VER);
  ArqINI.WriteInteger('SPED','COD_FIN',sCOD_FIN);
  ArqINI.WriteInteger('SPED','PERFIL',sPERFIL);
  ArqINI.WriteInteger('SPED','INDICADOR',sINDICADOR);
  ArqINI.WriteString('SPED','BUF_LINHA',sBUF_LINHA);
  ArqINI.WriteString('SPED','BUF_NOTA',sBUF_NOTA);
  ArqINI.WriteString('SPED','NOTA',sNOTA);
  ArqINI.WriteString('SPED','PATH',sPATH);
  ArqINI.WriteString('SPED','CODREC',sCodRec);
  ArqINI.WriteBool('SPED','TRUNCADO',sTruncado);
  ArqINI.WriteString('SENHA','PASSWORD',sSenhaAcesso);
  ArqINI.WriteInteger('SPEDPC','COD_VERPC',sCOD_VERPC);
  ArqINI.WriteInteger('SPEDPC','SITESPECIAL',sSitEspecial);
  ArqINI.WriteInteger('SPEDPC','INDICADORPC',sIndicadorPC);
  ArqINI.WriteInteger('SPEDPC','TPESCRITURACAO',sTpEscrituracao);
  ArqINI.WriteInteger('SPEDPC','ESCRITURACAO',sEscrituracao);
  ArqINI.WriteInteger('SPEDPC','NATUREZA',sNatureza);
    // Regime Apuração
  ArqINI.WriteInteger('REGIME_APURACAO','INCIDENCIA',sIncidencia);
  ArqINI.WriteInteger('REGIME_APURACAO','APROPRIACRED',sAproCred);
  ArqINI.WriteInteger('REGIME_APURACAO','CONTROLEAPUR',sContrApur);
  ArqINI.WriteInteger('REGIME_APURACAO','ESCRITURAAPUR',sEscrApur);
  ArqIni.Free;
end;

procedure TDmSPED.LeIni;
begin
  ArqIni     := TIniFile.Create(ExtractFilePath(Application.ExeName)+'config.ini');
  sCOD_VER   := ArqINI.ReadInteger('SPED','COD_VER',0);
  sCOD_FIN   := ArqINI.ReadInteger('SPED','COD_FIN',0);
  sPERFIL    := ArqINI.ReadInteger('SPED','PERFIL',0);
  sINDICADOR := ArqINI.ReadInteger('SPED','INDICADOR',0);
  sBUF_LINHA := ArqINI.ReadString('SPED','BUF_LINHA','1000');
  sBUF_NOTA  := ArqINI.ReadString('SPED','BUF_NOTA','1000');
  sNOTA      := ArqINI.ReadString('SPED','NOTA','10');
  sPATH      := ArqINI.ReadString('SPED','PATH','C:\');
  sCodRec    := ArqINI.ReadString('SPED','CODREC','');
  sTruncado  := ArqINI.ReadBool('SPED','TRUNCADO',FALSE);
  sSenhaAcesso    := ArqINI.ReadString('SENHA','PASSWORD','');
  sCOD_VERPC      := ArqINI.ReadInteger('SPEDPC','COD_VERPC',0);
  sSitEspecial    := ArqINI.ReadInteger('SPEDPC','SITESPECIAL',0);
  sIndicadorPC    := ArqINI.ReadInteger('SPEDPC','INDICADORPC',0);
  sTpEscrituracao := ArqINI.ReadInteger('SPEDPC','TPESCRITURACAO',0);
  sEscrituracao   := ArqINI.ReadInteger('SPEDPC','ESCRITURACAO',0);
  sNatureza       := ArqINI.ReadInteger('SPEDPC','NATUREZA',0);
  if sSenhaAcesso = '' then
     sSenhaAcesso := Criptografa('123',10);
    // Regime Apuração
  sIncidencia := ArqINI.ReadInteger('REGIME_APURACAO','INCIDENCIA',0);
  sAproCred   := ArqINI.ReadInteger('REGIME_APURACAO','APROPRIACRED',0);
  sContrApur  := ArqINI.ReadInteger('REGIME_APURACAO','CONTROLEAPUR',0);
  sEscrApur   := ArqINI.ReadInteger('REGIME_APURACAO','ESCRITURAAPUR',0);
  ArqIni.Free;
end;


procedure TDmSPED.DataModuleCreate(Sender: TObject);
begin
  oSpedEFD := TSPED_EFD.CrieInstancia;
  oSpedPC  := TSPED_PC.CrieInstancia;

end;

procedure TDmSPED.DataModuleDestroy(Sender: TObject);
begin
  oSpedEFD.DestruaInstancia;
  oSpedPC.DestruaInstancia;

end;

end.
