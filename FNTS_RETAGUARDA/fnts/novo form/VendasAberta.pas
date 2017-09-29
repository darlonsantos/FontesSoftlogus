unit VendasAberta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, AdvGlowButton, ExtCtrls,
  TFlatPanelUnit;

type
  TfrmVendas_Abertas = class(TForm)
    DBAdvGrid1: TDBAdvGrid;
    dsVendasAbertas: TDataSource;
    qrClientes: TZQuery;
    qrClientesCODIGO: TStringField;
    qrClientesNOME: TStringField;
    qrClientesAPELIDO: TStringField;
    qrVendasAbertas: TZQuery;
    qrVendasAbertasCODIGO: TStringField;
    qrVendasAbertasCODVENDEDOR: TStringField;
    qrVendasAbertasDATA: TDateTimeField;
    qrVendasAbertasCODCLIENTE: TStringField;
    qrVendasAbertasTOTAL: TFloatField;
    qrVendasAbertasCLIENTE: TStringField;
    FlatPanel1: TFlatPanel;
    advFechar: TAdvGlowButton;
    qrVendedor: TZQuery;
    qrVendedorCODIGO: TStringField;
    qrVendedorNOME: TStringField;
    qrVendedorENDERECO: TStringField;
    qrVendedorBAIRRO: TStringField;
    qrVendedorCIDADE: TStringField;
    qrVendedorUF: TStringField;
    qrVendedorCEP: TStringField;
    qrVendedorTELEFONE: TStringField;
    qrVendedorCELULAR: TStringField;
    qrVendedorEMAIL: TStringField;
    qrVendedorCPF: TStringField;
    qrVendedorRG: TStringField;
    qrVendedorCTPS: TStringField;
    qrVendedorFUNCAO: TStringField;
    qrVendedorDATA_ADMISSAO: TDateTimeField;
    qrVendedorDATA_DEMISSAO: TDateTimeField;
    qrVendedorSITUACAO: TIntegerField;
    qrVendedorSALARIO: TFloatField;
    qrVendedorCOMISSAO: TFloatField;
    qrVendedorOBS1: TStringField;
    qrVendedorOBS2: TStringField;
    qrVendedorOBS3: TStringField;
    qrVendedorNASCIMENTO: TDateTimeField;
    qrVendedorF_CAIXA: TIntegerField;
    qrVendedorF_VENDEDOR: TIntegerField;
    qrVendedorF_TECNICO: TIntegerField;
    qrVendedorNUMERO: TStringField;
    qrVendasAbertasVENDEDOR: TStringField;
    qrClientesENDERECO: TStringField;
    qrClientesBAIRRO: TStringField;
    qrClientesCIDADE: TStringField;
    qrClientesUF: TStringField;
    qrClientesCEP: TStringField;
    qrClientesCOMPLEMENTO: TStringField;
    qrClientesMORADIA: TIntegerField;
    qrClientesTIPO: TIntegerField;
    qrClientesSITUACAO: TIntegerField;
    qrClientesTELEFONE1: TStringField;
    qrClientesTELEFONE2: TStringField;
    qrClientesTELEFONE3: TStringField;
    qrClientesCELULAR: TStringField;
    qrClientesEMAIL: TStringField;
    qrClientesRG: TStringField;
    qrClientesCPF: TStringField;
    qrClientesFILIACAO: TStringField;
    qrClientesESTADOCIVIL: TStringField;
    qrClientesCONJUGE: TStringField;
    qrClientesPROFISSAO: TStringField;
    qrClientesEMPRESA: TStringField;
    qrClientesRENDA: TFloatField;
    qrClientesLIMITE: TFloatField;
    qrClientesREF1: TStringField;
    qrClientesREF2: TStringField;
    qrClientesCODVENDEDOR: TStringField;
    qrClientesDATA_CADASTRO: TDateTimeField;
    qrClientesDATA_ULTIMACOMPRA: TDateTimeField;
    qrClientesOBS1: TStringField;
    qrClientesOBS2: TStringField;
    qrClientesOBS3: TStringField;
    qrClientesOBS4: TStringField;
    qrClientesOBS5: TStringField;
    qrClientesOBS6: TStringField;
    qrClientesNASCIMENTO: TStringField;
    qrClientesCODREGIAO: TStringField;
    qrClientesCODCONVENIO: TStringField;
    qrClientesCODUSUARIO: TStringField;
    qrClientesNUMERO: TStringField;
    qrClientesRG_ORGAO: TStringField;
    qrClientesRG_ESTADO: TStringField;
    qrClientesRG_EMISSAO: TDateTimeField;
    qrClientesSEXO: TStringField;
    qrClientesHISTORICO: TBlobField;
    qrClientesPREVISAO: TDateTimeField;
    qrClientesCNAE: TStringField;
    qrClientesCOD_MUNICIPIO_IBGE: TStringField;
    qrClientesIBGE: TStringField;
    qrClientesTAMANHO_CALCA: TStringField;
    qrClientesTAMANHO_BLUSA: TStringField;
    qrClientesTAMANHO_SAPATO: TStringField;
    qrClientesCORRESP_ENDERECO: TStringField;
    qrClientesCORRESP_BAIRRO: TStringField;
    qrClientesCORRESP_CIDADE: TStringField;
    qrClientesCORRESP_UF: TStringField;
    qrClientesCORRESP_CEP: TStringField;
    qrClientesCORRESP_COMPLEMENTO: TStringField;
    qrClientesRG_PRODUTOR: TStringField;
    qrClientesRESP1_NOME: TStringField;
    qrClientesRESP1_CPF: TStringField;
    qrClientesRESP1_RG: TStringField;
    qrClientesRESP1_PROFISSAO: TStringField;
    qrClientesRESP1_ESTADO_CIVIL: TStringField;
    qrClientesRESP1_ENDERECO: TStringField;
    qrClientesRESP1_BAIRRO: TStringField;
    qrClientesRESP1_CIDADE: TStringField;
    qrClientesRESP1_UF: TStringField;
    qrClientesRESP1_CEP: TStringField;
    qrClientesRESP2_NOME: TStringField;
    qrClientesRESP2_CPF: TStringField;
    qrClientesRESP2_RG: TStringField;
    qrClientesRESP2_PROFISSAO: TStringField;
    qrClientesRESP2_ESTADO_CIVIL: TStringField;
    qrClientesRESP2_ENDERECO: TStringField;
    qrClientesRESP2_BAIRRO: TStringField;
    qrClientesRESP2_CIDADE: TStringField;
    qrClientesRESP2_UF: TStringField;
    qrClientesRESP2_CEP: TStringField;
    qrClientesFOTO: TStringField;
    qrClientesPAI: TStringField;
    qrClientesMAE: TStringField;
    qrClientesTIPO_MORADIA: TStringField;
    qrVendasAbertasCONCLUIDO: TStringField;
    qrVendasAbertasEMALTERACAO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure DBAdvGrid1DblClick(Sender: TObject);
    procedure advFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendas_Abertas: TfrmVendas_Abertas;
  emCliente, emVenda, emVendedor, emNomeVendedor,emCpfCli : string;
  emLimite : double;
  emData : Tdate;

implementation

uses modulo, venda;

{$R *.dfm}

procedure TfrmVendas_Abertas.FormShow(Sender: TObject);
begin
    veioparafechar := 'S';
    emCliente:= '';
    emVenda := '';
    emVendedor:='';
    qrVendasAbertas.Close;
    qrVendasAbertas.SQL.Clear;
    qrVendasAbertas.SQL.Add('select * from TEMPVENDA ');
    qrVendasAbertas.Open;
end;

procedure TfrmVendas_Abertas.DBAdvGrid1DblClick(Sender: TObject);
begin
  emAberta := 'N';
  emCliente:= qrVendasAbertas.fieldbyname('codcliente').AsString;
  emVenda := qrVendasAbertas.fieldbyname('codigo').AsString;
  emVendedor:=qrVendasAbertas.fieldbyname('codvendedor').AsString;
//  emCpfCli:= qrVendasAbertas.fieldbyname('cpf').AsString;
  jaAlterado := qrVendasAbertas.fieldbyname('emalteracao').AsString;
  emNomeVendedor := qrVendasAbertas.fieldbyname('vendedor').AsString;
  emData := qrVendasAbertas.fieldbyname('data').AsDateTime;
//  showMessage(emVenda);
  veioparafechar := 'S';
  frmVenda := tfrmVenda.Create(self);
  frmvenda.ShowModal;
  Close;
end;

procedure TfrmVendas_Abertas.advFecharClick(Sender: TObject);
begin
  Close;
end;

end.
