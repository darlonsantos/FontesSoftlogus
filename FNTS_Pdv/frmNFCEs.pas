unit frmNFCEs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Data.DB,
  ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, NxDBColumns,
  NxColumns,XMLIntf, XMLDoc, zlib, ACBrUtil,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, Vcl.ImgList,
  Wwdbigrd, Wwdbgrid, Vcl.Mask, sMaskEdit, sCustomComboEdit, sTooledit,
  pcnConversao, System.ImageList, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel, MemDS, DBAccess, Uni, pcnAuxiliar, Vcl.OleCtrls,
  SHDocVw, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, JvExDBGrids, JvDBGrid,
  AdvGlowButton, cxContainer, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxGroupBox, cxRadioGroup;

type
  TfrmNotasconsumidor = class(TForm)
    Panel2: TPanel;
    ds_nfce: TDataSource;
    edt_Numero: TEdit;
    ImageList2: TImageList;
    dataini: TsDateEdit;
    datafin: TsDateEdit;
    qrNFCE: TUniQuery;
    JvDBGrid1: TJvDBGrid;
    qrNFCENUMERO: TIntegerField;
    qrNFCEDATA: TDateField;
    qrNFCETOTAL: TFloatField;
    qrNFCECLIENTE: TStringField;
    qrNFCECHAVE: TStringField;
    qrNFCEXML: TStringField;
    qrNFCESITUACAO: TIntegerField;
    qrNFCETROCO: TFloatField;
    qrNFCEDES_SIT: TStringField;
    Panel3: TPanel;
    Panel4: TPanel;
    lbEnvio: TLabel;
    lbCancelamento: TLabel;
    qrNFCEENVIADOCONTINGENCIA: TStringField;
    qrNFCEMOTIVOCONTIGENCIA: TStringField;
    qrNFCEXMLENVIO: TBlobField;
    qrNFCEXMLCACNELAMENTO: TBlobField;
    qrNFCEHORA: TStringField;
    qrNFCECONTINGENCIA: TStringField;
    qrNFCEXML_CANCELAMENTO: TStringField;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label4: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    blocalizar: TAdvGlowButton;
    bitbtn5: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    bgravar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    cxRadioGroup1: TcxRadioGroup;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure FormShow(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure qrNFCEAfterScroll(DataSet: TDataSet);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bitbtn5Click(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure edt_NumeroKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
  public
    { Public declarations }
  end;

var
  frmNotasconsumidor: TfrmNotasconsumidor;

implementation

{$R *.dfm}

uses modulo, principal, ResultadoWebService, senha_supervisor, justificativa,
  Config;

procedure TfrmNotasconsumidor.AdvMetroButton1Click(Sender: TObject);
begin
 Close;
end;

procedure TfrmNotasconsumidor.bcancelarClick(Sender: TObject);
var
  Chave, idLote, CNPJ, Protocolo, Justificativa: string;
begin
  if qrNFCE.RecordCount > 0 then
  begin
    if qrNFCE.FieldByName('situacao').AsInteger = 0 then
    begin
      if Application.MessageBox('Deseja realmente cancelar esta NFC-e, este processo é irreversível?','Atenção',MB_ICONQUESTION+MB_YESNO) <> mrYes then
        Exit;
      Application.CreateForm(TfrmSenha_Supervisor,frmSenha_Supervisor);
      frmSenha_Supervisor.ShowModal;
      FreeAndNil(frmSenha_Supervisor);
      if not bSupervisor_autenticado then begin
        Exit;
      end;
      Chave := qrNFCE.FieldByName('chave').AsString;
      idLote := '1';
      CNPJ := copy(Chave, 7, 14);
      Protocolo := '';
      Application.CreateForm(Tfrmjustificativa, frmjustificativa);
      frmjustificativa.ShowModal;
      Justificativa := frmjustificativa.edTexto.Lines.Text;
      FreeAndNil(frmjustificativa);
      with frmModulo do begin
        LerConfiguracao;
        ACBRNFCe.NotasFiscais.Clear;
        ACBRNFCe.NotasFiscais.LoadFromFile(qrNFCE.FieldByName('xml').AsString);

        idLote := '1';
        ACBRNFCe.EventoNFe.Evento.Clear;
        ACBRNFCe.EventoNFe.idLote := strtoint(idLote);
        with ACBRNFCe.EventoNFe.Evento.Add do begin
          infEvento.dhEvento := now;
          infEvento.tpEvento := teCancelamento;
          infEvento.detEvento.xJust := Justificativa;
        end;
        ACBRNFCe.EnviarEvento(strtoint(idLote));

        Application.CreateForm(TfrmResultadoWebService,frmResultadoWebService);
        LoadXML(ACBRNFCe.WebServices.EnvEvento.RetornoWS, frmResultadoWebService.WBResposta);
        frmResultadoWebService.pnTexto.Caption := IntToStr(ACBRNFCe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0]
          .RetInfEvento.cStat) + ' - ' + ACBRNFCe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0]
          .RetInfEvento.xMotivo;
        frmResultadoWebService.ShowModal;
        FreeAndNil(frmResultadoWebService);
        if ACBRNFCe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0]
          .RetInfEvento.cStat = 135 then begin
          qrNFCE.Edit;
          qrNFCE.FieldByName('situacao').AsInteger := 1;
          qrNFCE.FieldByName('xml_cancelamento').AsString := ACBRNFCe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.NomeArquivo;
          qrNFCE.Post;
          qrNFCE.ApplyUpdates;
          Conexao_Servidor.Commit;
          blocalizar.Click;
        end;
      end;
    end else begin
      Application.MessageBox('NFC-e ja está cancelada.','Atenção!',MB_ICONINFORMATION);
      Exit;
    end;
  end;
end;


procedure TfrmNotasconsumidor.bexcluirClick(Sender: TObject);
  //Botao inutilizacao da NFC-e ( Concluir Depois )
var
 Modelo, Serie, Ano, NumeroInicial, NumeroFinal, Justificativa : String;
begin
 if not(InputQuery('WebServices Inutilização ', 'Ano',    Ano)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Modelo', Modelo)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Serie',  Serie)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Número Inicial', NumeroInicial)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Número Final', NumeroFinal)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Justificativa', Justificativa)) then
    exit;
  frmconfig.ACBrNFe1.WebServices.Inutiliza(frmconfig.edtEmitCNPJ.Text, Justificativa, StrToInt(Ano), StrToInt(Modelo), StrToInt(Serie), StrToInt(NumeroInicial), StrToInt(NumeroFinal));
end;
procedure TfrmNotasconsumidor.bgravarClick(Sender: TObject);
begin
  if qrNFCE.RecordCount > 0 then
  begin
    with frmModulo do
    begin
      LerConfiguracao;
      ACBRNFCe.WebServices.Consulta.NFeChave :=
        qrNFCE.FieldByName('chave').AsString;
      if ACBRNFCe.WebServices.Consulta.Executar then begin
       Application.CreateForm(TfrmResultadoWebService,frmResultadoWebService);
       LoadXML(ACBRNFCe.WebServices.Consulta.RetornoWS, frmResultadoWebService.WBResposta);
       frmResultadoWebService.pnTexto.Caption := IntToStr(ACBRNFCe.WebServices.Consulta.cStat) + ' - ' + ACBRNFCe.WebServices.Consulta.xMotivo;
       frmResultadoWebService.ShowModal;
       FreeAndNil(frmResultadoWebService);
      end else begin
        Application.MessageBox('Ocorreu um erro ao efetuar a consulta.','Atenção!',MB_ICONINFORMATION);
      end;
    end;
  end;
end;

procedure TfrmNotasconsumidor.bitbtn5Click(Sender: TObject);
var
  bc: TBitmap;
begin
  if qrNFCE.RecordCount > 0 then
  begin
    if qrNFCE.FieldByName('situacao').AsInteger = 0 then
    begin
      with frmModulo do
      begin
        ACBRNFCe.NotasFiscais.Clear;
        ACBRNFCe.NotasFiscais.LoadFromFile(qrNFCE.FieldByName('xml').AsString);
        ACBRDANFENFCe.FastFile := 'C:\Softlogus\PDV\DANFeNFCe.fr3';
        if FileExists(frmPrincipal.LerIni(sConfiguracoes, 'PDV',
          'CAMINHO_LOGO', '')) then
          ACBRDANFENFCe.Logo := frmPrincipal.LerIni(sConfiguracoes, 'PDV',
            'CAMINHO_LOGO', '');
        ACBRDANFENFCe.vTroco := qrNFCETROCO.AsFloat;
        ACBRDANFENFCe.Detalhado := False;
        ACBRNFCe.NotasFiscais.Imprimir;
      end;
    end;
  end;
end;
procedure TfrmNotasconsumidor.blocalizarClick(Sender: TObject);
var
  filtro:String;
begin

   if dataini.Date > datafin.Date then
    begin
      ShowMessage('A data de inicio não pode ser maior do que a data de finalização.');
      Exit;
    end
     else
    qrNFCE.Close;
   qrNFCE.SQL.Clear;
   qrNFCE.SQL.Add('select nf.*, case when situacao = 0 then ' + QuotedStr('Emitido') + ' else ' + QuotedStr('Cancelado') + ' end des_sit ');
   qrNFCE.SQL.Add('from NFCE nf where 1=1 ');
  if Length(edt_Numero.Text) > 0 then begin
    qrNFCE.SQL.Add('and numero = :pnumero ');
    qrNFCE.ParamByName('pnumero').AsInteger := strtoint(edt_Numero.Text);
  end;

  if dataini.Date > 0 then begin
    qrNFCE.SQL.Add('and data >= :pdataini ');
    qrNFCE.ParamByName('pdataini').AsDateTime := dataini.Date;
  end;

  if datafin.Date > 0 then begin
    qrNFCE.SQL.Add('and data <= :pdatafin ');
    qrNFCE.ParamByName('pdatafin').AsDateTime := datafin.Date;
  end;
  qrNFCE.SQL.Add('order by numero');
  qrNFCE.Open;
  qrNFCE.First;
end;

procedure TfrmNotasconsumidor.edt_NumeroKeyPress(Sender: TObject;
  var Key: Char);
begin
 if  key = #13 then
  begin
    blocalizar.Click;
  end;

end;

procedure TfrmNotasconsumidor.FormShow(Sender: TObject);
begin
  dataini.Date := now;
  datafin.Date := now;
  blocalizar.Click;
end;


procedure TfrmNotasconsumidor.LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
begin
  ACBrUtil.WriteToTXT( PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml',
                        ACBrUtil.ConverteXMLtoUTF8( RetWS ), False, False);
  MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml');
end;

procedure TfrmNotasconsumidor.qrNFCEAfterScroll(DataSet: TDataSet);
begin
  lbEnvio.Caption := 'XML de Envio: ' + qrNFCEXML.AsString;
  lbCancelamento.Caption := 'XML de Cancelamento: ' + qrNFCEXMLCACNELAMENTO.AsString;
end;

end.
