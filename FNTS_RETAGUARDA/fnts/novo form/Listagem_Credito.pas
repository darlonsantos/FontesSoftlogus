unit Listagem_Credito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ExtCtrls,
  QuickRpt, QRCtrls;

type
  TfrmListagemCredito = class(TForm)
    QuickRep1: TQuickRep;
    qrCreditos: TZQuery;
    qrClientes: TZQuery;
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData2: TQRSysData;
    QRBand2: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    qrCreditosCODIGO: TIntegerField;
    qrCreditosDATA_EMISSAO: TDateTimeField;
    qrCreditosCODIGO_CLI: TStringField;
    qrCreditosVALOR_ORIGINAL: TFloatField;
    qrCreditosVALOR_ATUAL: TFloatField;
    qrCreditosDATA_PAGAMENTO: TDateTimeField;
    qrCreditosSITUACAO: TIntegerField;
    qrClientesCODIGO: TStringField;
    qrClientesNOME: TStringField;
    qrClientesAPELIDO: TStringField;
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
    qrClientesENDPAIMAE: TStringField;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    qrCreditosNOME_CLI: TStringField;
    QRBand4: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    lbini: TQRLabel;
    lbfim: TQRLabel;
    QRExpr1: TQRExpr;
    qrCreditosVALOR_PAGO: TFloatField;
    qrCreditosNOME: TStringField;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListagemCredito: TfrmListagemCredito;

implementation

uses modulo, RelCredito;

{$R *.dfm}

procedure TfrmListagemCredito.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 if xtipo_rel = 'Listagem de Créditos Lançados' then
 begin
  qrCreditos.Close;
  qrCreditos.SQL.Clear;
  qrCreditos.SQL.Add('select * from CREDITOS where data_emissao >= :data_ini ');
//  qrCreditos.SQL.Add('and data_emissao <= :data_fim and situacao = 1');
//  qrCreditos.SQL.Add('and data_emissao <= :data_fim ');
  qrCreditos.Params.ParamByName('data_ini').AsDate := xdata_ini;
//  qrCreditos.Params.ParamByName('data_fim').AsDate := xdata_fim;
  qrCreditos.Open;
  qrdbtext3.DataField := 'VALOR_ORIGINAL';
  qrExpr1.Expression := 'SUM(qrCreditos.VALOR_ORIGINAL)';
 end
 else
 begin
  qrCreditos.Close;
  qrCreditos.SQL.Clear;
  qrCreditos.SQL.Add('select * from CREDITOS where data_pagamento >= :data_ini ');
  qrCreditos.SQL.Add('and data_pagamento <= :data_fim ');
  qrCreditos.Params.ParamByName('data_ini').AsDate := xdata_ini;
  qrCreditos.Params.ParamByName('data_fim').AsDate := xdata_fim;
  qrCreditos.Open;
 end;

  if qrCreditos.RecordCount =0 then
    ShowMessage('nada');


  lbini.Caption := DateToStr(xdata_ini);
  lbfim.Caption := DateToStr(xdata_fim);
  lbtitulo.Caption := xtipo_rel;

end;

end.
