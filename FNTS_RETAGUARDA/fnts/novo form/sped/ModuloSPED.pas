unit ModuloSPED;

interface

uses
  SysUtils, Classes, DB, DBAccess, IBC, MemDS;

type
  TfrmModuloSped = class(TDataModule)
    conexao: TIBCConnection;
    qrfilial: TIBCQuery;
    Conexao_Servidor: TIBCConnection;
    query: TIBCQuery;
    qremitente: TIBCQuery;
    qremitenteCODIGO: TStringField;
    qremitenteNOME: TStringField;
    qremitenteFANTASIA: TStringField;
    qremitenteENDERECO: TStringField;
    qremitenteBAIRRO: TStringField;
    qremitenteCIDADE: TStringField;
    qremitenteUF: TStringField;
    qremitenteCEP: TStringField;
    qremitenteTELEFONE: TStringField;
    qremitenteCNPJ: TStringField;
    qremitenteIE: TStringField;
    qremitenteEMAIL: TStringField;
    qremitenteHOMEPAGE: TStringField;
    qremitenteRESPONSAVEL: TStringField;
    qremitenteCELULAR: TStringField;
    qremitenteLOGO: TBlobField;
    qremitenteFAX: TStringField;
    qremitenteNUMERO: TStringField;
    qremitenteCOMPLEMENTO: TStringField;
    qremitenteCONTRIBUINTE_IPI: TStringField;
    qremitenteSUBSTITUTO_TRIBUTARIO: TStringField;
    qremitenteCOMENTARIOS: TStringField;
    qremitenteDATAHORA_INICIAL: TDateTimeField;
    qremitenteDATAHORA_FINAL: TDateTimeField;
    qremitenteDATA_INVENTARIO: TDateTimeField;
    qremitenteESTOQUE: TFloatField;
    qremitenteVALOR: TFloatField;
    qremitenteCONHECIMENTO: TIntegerField;
    qremitenteCPF: TStringField;
    qremitenteRG: TStringField;
    qremitenteDIA_VENCIMENTO_CHAVE: TStringField;
    qremitenteINSC_MUNICIPAL: TStringField;
    qremitenteDATA_ABERTURA: TDateTimeField;
    qremitenteCOD_MUNICIPIO_IBGE: TStringField;
    qremitenteIBGE: TStringField;
    qrfilialCODIGO: TStringField;
    qrfilialFILIAL: TStringField;
    qrfilialNOTAFISCAL: TIntegerField;
    qrfilialENDERECO: TStringField;
    qrfilialCIDADE: TStringField;
    qrfilialUF: TStringField;
    qrfilialCEP: TStringField;
    qrfilialTELEFONE: TStringField;
    qrfilialCNPJ: TStringField;
    qrfilialIE: TStringField;
    qrfilialSEQNF: TIntegerField;
    qrfilialFAX: TStringField;
    qrfilialOBS1: TStringField;
    qrfilialOBS2: TStringField;
    qrfilialCONTRIBUINTE_IPI: TStringField;
    qrfilialSUBSTITUTO_TRIBUTARIO: TStringField;
    qrfilialEMPRESA_ESTADUAL: TStringField;
    qrfilialOPTANTE_SIMPLES: TStringField;
    qrfilialOPTANTE_SUPER_SIMPLES: TStringField;
    qrfilialECF: TStringField;
    qrfilialTIPO: TIntegerField;
    qrfilialIPI: TFloatField;
    qrfilialISS: TFloatField;
    qrfilialNUMERO: TStringField;
    qrfilialRESPONSAVEL: TStringField;
    qrfilialCOMPLEMENTO: TStringField;
    qrfilialBAIRRO: TStringField;
    qrfilialFARMACIA_RESP_TECNICO: TStringField;
    qrfilialFARMACIA_CRF: TStringField;
    qrfilialFARMACIA_CPF: TStringField;
    qrfilialFARMCIA_DATA: TDateTimeField;
    qrfilialFARMACIA_UF: TStringField;
    qrfilialFARMACIA_SENHA: TStringField;
    qrfilialFARMACIA_EMAIL: TStringField;
    qrfilialFARMACIA_LOGIN: TStringField;
    qrfilialFARMACIA_ENVIO: TStringField;
    qrfilialCONHECIMENTO: TIntegerField;
    qrfilialINDUSTRIA: TStringField;
    qrfilialFARMACIA_NUMEROLICENCA: TStringField;
    qrfilialCOD_MUNICIPIO_IBGE: TStringField;
    qrfilialIBGE: TStringField;
    qrfilialPIS: TFloatField;
    qrfilialCOFINS: TFloatField;
    qrfilialEMAIL: TStringField;
    qrfilialATIVIDADE: TStringField;
    qrfilialCONTADOR_COD_MUNICIPIO_IBGE: TStringField;
    qrfilialCONTADOR_NOME: TStringField;
    qrfilialCONTADOR_CPF: TStringField;
    qrfilialCONTADOR_CRC: TStringField;
    qrfilialCONTADOR_CNPJ: TStringField;
    qrfilialCONTADOR_CEP: TStringField;
    qrfilialCONTADOR_ENDERECO: TStringField;
    qrfilialCONTADOR_NUMERO: TStringField;
    qrfilialCONTADOR_COMPLEMENTO: TStringField;
    qrfilialCONTADOR_BAIRRO: TStringField;
    qrfilialCONTADOR_FONE: TStringField;
    qrfilialCONTADOR_FAX: TStringField;
    qrfilialCONTADOR_EMAIL: TStringField;
    qrfilialINSC_MUNICIPAL: TStringField;
    qrfilialDATA_ABERTURA: TDateTimeField;
    qrfilialCNAE: TStringField;
    qrfilialCRT: TStringField;
    qrfilialCONTADOR_CIDADE: TStringField;
    qrfilialCONTADOR_COD_MUNICIPIO: TStringField;
    qrfilialCONTADOR_UF: TStringField;
    qrfilialPERMITE_CREDITO: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModuloSped: TfrmModuloSped;
implementation

{$R *.dfm}

end.
