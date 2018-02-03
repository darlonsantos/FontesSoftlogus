unit Config;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, DBAccess, IBC, MemDS, Buttons,
  ExtCtrls, EditBtn, PageView, AdvEdit, AdvEdBtn, AdvDirectoryEdit, ExtDlgs,
  pngimage, Spin, wwdbedit, Wwdotdot, Wwdbcomb, XPMan, AdvReflectionImage,
  AdvGlowButton, Vcl.ComCtrls, Vcl.OleCtrls, SHDocVw, uZintBarcode,
  system.IniFiles, filectrl,
  ACBrNFe, pcnConversao, ACBrNFeDANFEClass, ACBrUtil,
  pcnNFeW, pcnNFeRTXT, pcnAuxiliar, ACBrDFeUtil,
  XMLIntf, XMLDoc,  ACBrNFeDANFEFR, Vcl.Grids, Wwdbigrd, Wwdbgrid, Vcl.Printers,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc, ACBrEAD, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  ACBrBase, ACBrDFe;

type
  TfrmConfig = class(TForm)
    qrconfig: TIBCQuery;
    dsconfig: TIBCDataSource;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    PageSheet3: TPageSheet;
    GroupBox2: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    GroupBox4: TGroupBox;
    chkVendedor: TCheckBox;
    GroupBox5: TGroupBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    GroupBox3: TGroupBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    CheckHabilitaFotoProduto: TCheckBox;
    Label5: TLabel;
    EditImgProdutos: TAdvDirectoryEdit;
    GroupBox6: TGroupBox;
    Label7: TLabel;
    CheckLogoMarca: TCheckBox;
    EditLogoMarca: TAdvEditBtn;
    GroupBox7: TGroupBox;
    Combo_Usuario: TComboBox;
    Label8: TLabel;
    EditSenhaUsuario: TEdit;
    Label10: TLabel;
    pnTitulo: TPanel;
    GroupBox8: TGroupBox;
    Label11: TLabel;
    Label9: TLabel;
    Combo_Tesouraria: TComboBox;
    Combo_Caixa: TComboBox;
    btn1: TAdvGlowButton;
    btn2: TAdvGlowButton;
    AdvReflectionImage1: TAdvReflectionImage;
    img2: TAdvReflectionImage;
    PageSheet4: TPageSheet;
    Panel2: TPanel;
    GroupBox9: TGroupBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox10: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    sbtnCaminhoCert: TSpeedButton;
    Label25: TLabel;
    sbtnGetCert: TSpeedButton;
    edtCaminho: TEdit;
    edtSenha: TEdit;
    edtNumSerie: TEdit;
    TabSheet2: TTabSheet;
    GroupBox11: TGroupBox;
    Label14: TLabel;
    sbtnLogoMarca: TSpeedButton;
    sbtnPathSalvar: TSpeedButton;
    edtLogoMarca: TEdit;
    edtPathLogs: TEdit;
    ckSalvar: TCheckBox;
    rgTipoDanfe: TRadioGroup;
    rgFormaEmissao: TRadioGroup;
    TabSheet3: TTabSheet;
    GroupBox12: TGroupBox;
    Label15: TLabel;
    ckVisualizar: TCheckBox;
    cbUF: TComboBox;
    rgTipoAmb: TRadioGroup;
    gbProxy: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    edtProxyHost: TEdit;
    edtProxyPorta: TEdit;
    edtProxyUser: TEdit;
    edtProxySenha: TEdit;
    TabSheet4: TTabSheet;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    edtEmitCNPJ: TEdit;
    edtEmitIE: TEdit;
    edtEmitRazao: TEdit;
    edtEmitFantasia: TEdit;
    edtEmitFone: TEdit;
    edtEmitCEP: TEdit;
    edtEmitLogradouro: TEdit;
    edtEmitNumero: TEdit;
    edtEmitComp: TEdit;
    edtEmitBairro: TEdit;
    edtEmitCodCidade: TEdit;
    edtEmitCidade: TEdit;
    edtEmitUF: TEdit;
    TabSheet7: TTabSheet;
    GroupBox13: TGroupBox;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    edtSmtpHost: TEdit;
    edtSmtpPort: TEdit;
    edtSmtpUser: TEdit;
    edtSmtpPass: TEdit;
    edtEmailAssunto: TEdit;
    cbEmailSSL: TCheckBox;
    mmEmailMsg: TMemo;
    btnSalvarConfig: TBitBtn;
    OpenPictureDialog1: TOpenPictureDialog;
    OpenDialog1: TOpenDialog;
    edtIdToken: TEdit;
    edtNumeroToken: TEdit;
    Label40: TLabel;
    Label41: TLabel;
    tbImpressao: TTabSheet;
    lblImpressao: TLabel;
    edImpressora: TComboBox;
    EdFormatoOff: TRadioGroup;
    Label43: TLabel;
    edDescEsta: TEdit;
    edPreview: TCheckBox;
    Label44: TLabel;
    edMargem: TSpinEdit;
    GroupBox14: TGroupBox;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    edMargDir: TcxCalcEdit;
    edMargEsq: TcxCalcEdit;
    edMargSup: TcxCalcEdit;
    edMarginf: TcxCalcEdit;
    edSchemas: TEdit;
    SpeedButton1: TSpeedButton;
    Label49: TLabel;
    Label50: TLabel;
    edCFOP: TEdit;
    Label42: TLabel;
    edSequencia: TEdit;
    Label51: TLabel;
    edSerie: TEdit;
    btn3: TButton;
    ACBrNFe1: TACBrNFe;
    GroupBox15: TGroupBox;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CheckHabilitaFotoProdutoClick(Sender: TObject);
    procedure EditLogoMarcaClickBtn(Sender: TObject);
    procedure CheckLogoMarcaClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure sbtnCaminhoCertClick(Sender: TObject);
    procedure sbtnGetCertClick(Sender: TObject);
    procedure btnSalvarConfigClick(Sender: TObject);
    procedure sbtnLogoMarcaClick(Sender: TObject);
    procedure sbtnPathSalvarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
    procedure GravaConfiguracoesLocais;
    procedure LerConfiguracoes;
    procedure LerCaixa;

    procedure GravarConfiguracao;
    procedure LerConfiguracao;
  public
    { Public declarations }
  end;

var
  frmConfig: TfrmConfig;

implementation

uses modulo, Funcoes, UFuncoes, principal;

{$R *.dfm}

procedure TfrmConfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConfig.BitBtn2Click(Sender: TObject);
begin
  if qrconfig.state = dsedit then
    qrconfig.cancel;
  close;
end;

procedure TfrmConfig.FormShow(Sender: TObject);
var
  I:integer;
begin
  chkVendedor.Checked := LerParametro('INFORMAR_VENDEDOR_CHECKOUT', 'B', False);
  qrconfig.open;
  edImpressora.items.clear;
   for I := 1 to Printer.Printers.Count do
   begin
    edImpressora.items.add(Printer.Printers.Strings[I-1]);
  end;
    with frmModulo do begin
    qradic_mestre.open;
    qradic_mestre.Refresh;
    if qradic_mestre.Locate('codigo', '915', [loCaseInsensitive]) then
      edSequencia.Text := qradic_mestre.FieldByName('sequencias').Text
    else
      edSequencia.Clear;
  end;
  LerConfiguracoes;
  LerConfiguracao;
 end;

procedure TfrmConfig.BitBtn1Click(Sender: TObject);
begin
  GravarParametro('INFORMAR_VENDEDOR_CHECKOUT', 'B', chkVendedor.Checked);

  if qrconfig.state = dsedit then
    qrconfig.post;

  application.messagebox
    ('� necess�rio reiniciar o sistema para atualizar as novas configura��es!',
    'Aviso', mb_ok + MB_ICONINFORMATION);

  GravaConfiguracoesLocais;

  close;

end;

procedure TfrmConfig.CheckHabilitaFotoProdutoClick(Sender: TObject);
begin
  EditImgProdutos.Enabled := CheckHabilitaFotoProduto.Checked;
end;

procedure TfrmConfig.GravaConfiguracoesLocais;
begin
  { : FOTO PRODUTOS }
  GravaINI(sConfiguracoes, 'PDV', 'HAB_IMG',
    BoolToStr(CheckHabilitaFotoProduto.Checked));
  GravaINI(sConfiguracoes, 'PDV', 'CAMINHO_IMG', EditImgProdutos.Text);

  { : LOGO MARCA }
  GravaINI(sConfiguracoes, 'PDV', 'HAB_LOGO',
    BoolToStr(CheckLogoMarca.Checked));
  GravaINI(sConfiguracoes, 'PDV', 'CAMINHO_LOGO', EditLogoMarca.Text);

  { : USUARIO }
  GravaINI(sConfiguracoes, 'LOGIN', 'USUARIO', Combo_Usuario.Text);
  GravaINI(sConfiguracoes, 'LOGIN', 'SENHA', Cript('C', EditSenhaUsuario.Text));

  { : CAIXA }
  GravaINI(sConfiguracoes, 'CAIXA', 'NUMERO', Combo_Caixa.Text);
  GravaINI(sConfiguracoes, 'CAIXA', 'TESOURARIA', Combo_Tesouraria.Text);

end;

procedure TfrmConfig.GravarConfiguracao;
Var
  IniFile: String;
  Ini: TIniFile;
  StreamMemo: TMemoryStream;
begin

    if (edSchemas.Text = '') or not(DirectoryExists(edSchemas.Text)) then begin
      Application.MessageBox('A Pasta e Schemas informada no Config � inv�lida!','Aten��o!',MB_ICONINFORMATION);
      Exit;
    end;

  IniFile := sConfiguracoes;
  Ini := TIniFile.Create(IniFile);
  try
    Ini.WriteString('Certificado', 'Caminho', edtCaminho.Text);
    Ini.WriteString('Certificado', 'Senha', edtSenha.Text);
    Ini.WriteString('Certificado', 'NumSerie', edtNumSerie.Text);
    Ini.WriteString('Certificado', 'IDToken', edtIdToken.Text);
    Ini.WriteString('Certificado', 'TokenNumero', edtNumeroToken.Text);

    Ini.WriteInteger('Geral', 'DANFE', rgTipoDanfe.ItemIndex);
    Ini.WriteInteger('Geral', 'FormaEmissao', rgFormaEmissao.ItemIndex);
    Ini.WriteString('Geral', 'LogoMarca', edtLogoMarca.Text);
    Ini.WriteBool('Geral', 'Salvar', ckSalvar.Checked);
    Ini.WriteString('Geral', 'PathSalvar', edtPathLogs.Text);
     //DARLON SANTOS
    Ini.WriteString('Geral', 'PathSchemas', edSchemas.Text);
    Ini.WriteString('Geral', 'CFOP_PADRAO', edCFOP.Text);

    Ini.WriteString('WebService', 'UF', cbUF.Text);
    Ini.WriteInteger('WebService', 'Ambiente', rgTipoAmb.ItemIndex);
    Ini.WriteBool('WebService', 'Visualizar', ckVisualizar.Checked);
    Ini.WriteInteger('WebService', 'FormatoOFF', EdFormatoOff.ItemIndex);

    Ini.WriteString('Proxy', 'Host', edtProxyHost.Text);
    Ini.WriteString('Proxy', 'Porta', edtProxyPorta.Text);
    Ini.WriteString('Proxy', 'User', edtProxyUser.Text);
    Ini.WriteString('Proxy', 'Pass', edtProxySenha.Text);

    Ini.WriteString('Emitente', 'CNPJ', edtEmitCNPJ.Text);
    Ini.WriteString('Emitente', 'IE', edtEmitIE.Text);
    Ini.WriteString('Emitente', 'RazaoSocial', edtEmitRazao.Text);
    Ini.WriteString('Emitente', 'Fantasia', edtEmitFantasia.Text);
    Ini.WriteString('Emitente', 'Fone', edtEmitFone.Text);
    Ini.WriteString('Emitente', 'CEP', edtEmitCEP.Text);
    Ini.WriteString('Emitente', 'Logradouro', edtEmitLogradouro.Text);
    Ini.WriteString('Emitente', 'Numero', edtEmitNumero.Text);
    Ini.WriteString('Emitente', 'Complemento', edtEmitComp.Text);
    Ini.WriteString('Emitente', 'Bairro', edtEmitBairro.Text);
    Ini.WriteString('Emitente', 'CodCidade', edtEmitCodCidade.Text);
    Ini.WriteString('Emitente', 'Cidade', edtEmitCidade.Text);
    Ini.WriteString('Emitente', 'UF', edtEmitUF.Text);
    Ini.WriteString('Emitente', 'Serie', edSerie.Text);
    //Ini.WriteString('Emitente', 'CFOP', CFOP.Text);
    //configura��es de email   DARLON SANTOS
    Ini.WriteString('Email', 'Host', edtSmtpHost.Text);
    Ini.WriteString('Email', 'Port', edtSmtpPort.Text);
    Ini.WriteString('Email', 'User', edtSmtpUser.Text);
    Ini.WriteString('Email', 'Pass', edtSmtpPass.Text);
    Ini.WriteString('Email', 'Assunto', edtEmailAssunto.Text);
    Ini.WriteBool('Email', 'SSL', cbEmailSSL.Checked);
   //configura��es da impressoras   DARLON SANTOS
    Ini.WriteString('Impressao', 'Impressora', edImpressora.Text);
    Ini.WriteString('Impressao', 'Descricao via estabelecimento', edDescEsta.Text);
    Ini.WriteBool('Impressao', 'Preview', edPreview.Checked);
    Ini.WriteInteger('Impressao', 'Espessura Margem', edMargem.Value);
    Ini.WriteFloat('Impressao', 'Margem Esquerda', edMargEsq.Value);
    Ini.WriteFloat('Impressao', 'Margem Direita', edMargDir.Value);
    Ini.WriteFloat('Impressao', 'Margem Superior', edMargSup.Value);
    Ini.WriteFloat('Impressao', 'Margem Inferior', edMarginf.Value);

    StreamMemo := TMemoryStream.Create;
    mmEmailMsg.Lines.SaveToStream(StreamMemo);
    StreamMemo.Seek(0, soFromBeginning);
    Ini.WriteBinaryStream('Email', 'Mensagem', StreamMemo);
    StreamMemo.Free;
  finally
    Ini.Free;
  end;

end;

procedure TfrmConfig.LerConfiguracao;
Var
  IniFile: String;
  Ini: TIniFile;
  Ok: Boolean;
  StreamMemo: TMemoryStream;
begin
  IniFile := sConfiguracoes;
  Ini := TIniFile.Create(IniFile);
  with frmModulo do
  begin
    try
{$IFDEF ACBrNFeOpenSSL}
      edtCaminho.Text := Ini.ReadString('Certificado', 'Caminho', '');
      edtSenha.Text := Ini.ReadString('Certificado', 'Senha', '');
      ACBRNFCe.Configuracoes.Certificados.Certificado := edtCaminho.Text;
      ACBRNFCe.Configuracoes.Certificados.Senha := edtSenha.Text;
      edtNumSerie.Visible := False;
      Label25.Visible := False;
      sbtnGetCert.Visible := False;
{$ELSE}
      edtNumSerie.Text := Ini.ReadString('Certificado', 'NumSerie', '');
      edtCaminho.Text := Ini.ReadString('Certificado', 'Caminho', '');
      edtSenha.Text := Ini.ReadString('Certificado', 'Senha', '');
      ACBRNFCe.Configuracoes.Certificados.NumeroSerie := edtNumSerie.Text;
      edtNumSerie.Text := ACBRNFCe.Configuracoes.Certificados.NumeroSerie;
{$ENDIF}
      edtIdToken.Text := Ini.ReadString('Certificado', 'IDToken', '');
      edtNumeroToken.Text := Ini.ReadString('Certificado', 'TokenNumero', '');
      rgFormaEmissao.ItemIndex := Ini.ReadInteger('Geral', 'FormaEmissao', 0);
      ckSalvar.Checked := Ini.ReadBool('Geral', 'Salvar', True);
      edtPathLogs.Text := Ini.ReadString('Geral', 'PathSalvar', '');
      edSchemas.Text := Ini.ReadString('Geral', 'PathSchemas', '');
      edCFOP.Text := Ini.ReadString('Geral', 'CFOP_PADRAO', '5101');
      ACBRNFCe.Configuracoes.Geral.FormaEmissao :=
        StrToTpEmis(Ok, IntToStr(rgFormaEmissao.ItemIndex + 1));
      ACBRNFCe.Configuracoes.Arquivos.Salvar := ckSalvar.Checked;
      ACBRNFCe.Configuracoes.Arquivos.PathSalvar := edtPathLogs.Text;

      cbUF.ItemIndex := cbUF.Items.IndexOf(Ini.ReadString('WebService',
        'UF', 'SP'));
      rgTipoAmb.ItemIndex := Ini.ReadInteger('WebService', 'Ambiente', 0);
      ckVisualizar.Checked := Ini.ReadBool('WebService', 'Visualizar', False);
      ACBRNFCe.Configuracoes.WebServices.UF := cbUF.Text;
      ACBRNFCe.Configuracoes.WebServices.Ambiente := StrToTpAmb(Ok, IntToStr(rgTipoAmb.ItemIndex + 1));
 ACBRNFCe.Configuracoes.WebServices.Visualizar := ckVisualizar.Checked;
      EdFormatoOff.ItemIndex := Ini.ReadInteger('WebService', 'FormatoOFF', 0);

      edtProxyHost.Text := Ini.ReadString('Proxy', 'Host', '');
      edtProxyPorta.Text := Ini.ReadString('Proxy', 'Porta', '');
      edtProxyUser.Text := Ini.ReadString('Proxy', 'User', '');
      edtProxySenha.Text := Ini.ReadString('Proxy', 'Pass', '');
      ACBRNFCe.Configuracoes.WebServices.ProxyHost := edtProxyHost.Text;
      ACBRNFCe.Configuracoes.WebServices.ProxyPort := edtProxyPorta.Text;
      ACBRNFCe.Configuracoes.WebServices.ProxyUser := edtProxyUser.Text;
      ACBRNFCe.Configuracoes.WebServices.ProxyPass := edtProxySenha.Text;

      rgTipoDanfe.ItemIndex := Ini.ReadInteger('Geral', 'DANFE', 0);
      edtLogoMarca.Text := Ini.ReadString('Geral', 'LogoMarca', '');
      if ACBRNFCe.DANFE <> nil then
      begin
         ACBRNFCe.DANFE.TipoDANFE :=
          StrToTpImp(Ok, IntToStr(rgTipoDanfe.ItemIndex + 1));
         ACBRNFCe.DANFE.Logo := edtLogoMarca.Text;
      end;

      edtEmitCNPJ.Text := Ini.ReadString('Emitente', 'CNPJ', '');
      edtEmitIE.Text := Ini.ReadString('Emitente', 'IE', '');
      edtEmitRazao.Text := Ini.ReadString('Emitente', 'RazaoSocial', '');
      edtEmitFantasia.Text := Ini.ReadString('Emitente', 'Fantasia', '');
      edtEmitFone.Text := Ini.ReadString('Emitente', 'Fone', '');
      edtEmitCEP.Text := Ini.ReadString('Emitente', 'CEP', '');
      edtEmitLogradouro.Text := Ini.ReadString('Emitente', 'Logradouro', '');
      edtEmitNumero.Text := Ini.ReadString('Emitente', 'Numero', '');
      edtEmitComp.Text := Ini.ReadString('Emitente', 'Complemento', '');
      edtEmitBairro.Text := Ini.ReadString('Emitente', 'Bairro', '');
      edtEmitCodCidade.Text := Ini.ReadString('Emitente', 'CodCidade', '');
      edtEmitCidade.Text := Ini.ReadString('Emitente', 'Cidade', '');
      edtEmitUF.Text := Ini.ReadString('Emitente', 'UF', '');
      edSerie.Text := Ini.ReadString('Emitente', 'Serie', '1');


      edtSmtpHost.Text := Ini.ReadString('Email', 'Host', '');
      edtSmtpPort.Text := Ini.ReadString('Email', 'Port', '');
      edtSmtpUser.Text := Ini.ReadString('Email', 'User', '');
      edtSmtpPass.Text := Ini.ReadString('Email', 'Pass', '');
      edtEmailAssunto.Text := Ini.ReadString('Email', 'Assunto', '');
      cbEmailSSL.Checked := Ini.ReadBool('Email', 'SSL', False);

    edImpressora.Text := Ini.ReadString('Impressao', 'Impressora', '');
    edDescEsta.Text := Ini.ReadString('Impressao', 'Descricao via estabelecimento', 'Via do Consumidor');
    edPreview.Checked := Ini.ReadBool('Impressao', 'Preview', True);
    edMargem.Value := Ini.ReadInteger('Impressao', 'Espessura Margem', 1);
    edMargEsq.Value := Ini.ReadFloat('Impressao', 'Margem Esquerda', 0.6);
    edMargDir.Value := Ini.ReadFloat('Impressao', 'Margem Direita', 0.51);
    edMargSup.Value := Ini.ReadFloat('Impressao', 'Margem Superior', 0.8);
    edMarginf.Value := Ini.ReadFloat('Impressao', 'Margem Inferior', 0.8);




      StreamMemo := TMemoryStream.Create;
      Ini.ReadBinaryStream('Email', 'Mensagem', StreamMemo);
      mmEmailMsg.Lines.LoadFromStream(StreamMemo);
      StreamMemo.Free;
    finally
      Ini.Free;
    end;
  end;

end;

procedure TfrmConfig.LerConfiguracoes;
begin

  { : FOTO PRODUTOS }
  CheckHabilitaFotoProduto.Checked :=
    StrToBool(LerINI(sConfiguracoes, 'PDV', 'HAB_IMG', BoolToStr(False)));
  EditImgProdutos.Text := LerINI(sConfiguracoes, 'PDV', 'CAMINHO_IMG',
    ExtractFilePath(application.ExeName) + '\img\produtos\');

  { : LOGO MARCA }
  CheckLogoMarca.Checked := StrToBool(LerINI(sConfiguracoes, 'PDV', 'HAB_LOGO',
    BoolToStr(False)));
  EditLogoMarca.Text := LerINI(sConfiguracoes, 'PDV', 'CAMINHO_LOGO', '');

  LerCaixa;

end;

procedure TfrmConfig.sbtnCaminhoCertClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o Certificado';
  OpenDialog1.DefaultExt := '*.pfx';
  OpenDialog1.Filter :=
    'Arquivos PFX (*.pfx)|*.pfx|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if OpenDialog1.Execute then
  begin
    edtCaminho.Text := OpenDialog1.FileName;
  end;
end;

procedure TfrmConfig.sbtnGetCertClick(Sender: TObject);
begin
{$IFNDEF ACBrNFeOpenSSL}
  edtNumSerie.Text := frmModulo.ACBRNFCe.SSL.SelecionarCertificado;
{$ENDIF}
end;

procedure TfrmConfig.sbtnLogoMarcaClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o Logo';
  OpenDialog1.DefaultExt := '*.bmp';
  OpenDialog1.Filter :=
    'Arquivos BMP (*.bmp)|*.bmp|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if OpenDialog1.Execute then
  begin
    edtLogoMarca.Text := OpenDialog1.FileName;
  end;
end;

procedure TfrmConfig.sbtnPathSalvarClick(Sender: TObject);
var
  Dir: string;
begin
  if length(edtPathLogs.Text) <= 0 then
    Dir := ExtractFileDir(application.ExeName)
  else
    Dir := edtPathLogs.Text;

  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt], 1) then
    edtPathLogs.Text := Dir;
end;

procedure TfrmConfig.SpeedButton1Click(Sender: TObject);
var
  Dir: string;
begin
  if length(edSchemas.Text) <= 0 then
    Dir := ExtractFileDir(application.ExeName)
  else
    Dir := edSchemas.Text;
   //PathClick(edtPathLogs);
  if frmPrincipal.DIretorio.Execute then
    edSchemas.Text := frmPrincipal.DIretorio.Directory;
end;
procedure TfrmConfig.EditLogoMarcaClickBtn(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
    EditLogoMarca.Text := OpenPictureDialog1.FileName;
end;

procedure TfrmConfig.CheckLogoMarcaClick(Sender: TObject);
begin
  EditLogoMarca.Enabled := CheckLogoMarca.Checked;
end;

procedure TfrmConfig.LerCaixa;
begin

  frmModulo.query.close;
  frmModulo.query.sql.clear;
  frmModulo.query.sql.add('select * from adm');
  frmModulo.query.sql.add('where codigo < ' + QuotedStr('100'));
  frmModulo.query.sql.add('order by codigo');
  frmModulo.query.open;

  Combo_Usuario.Items.clear;

  Combo_Caixa.Items.clear;
  Combo_Tesouraria.Items.clear;
  Combo_Tesouraria.Items.add('DESATIVADO');

  while not frmModulo.query.Eof do
  begin
    IF frmModulo.query.Fieldbyname('INFO1').AsString <> 'DELPHOS_1' THEN
      Combo_Usuario.Items.add(frmModulo.query.Fieldbyname('INFO1').AsString);

    Combo_Caixa.Items.add(frmModulo.query.Fieldbyname('CODIGO').AsString);

    Combo_Tesouraria.Items.add(frmModulo.query.Fieldbyname('CODIGO').AsString);
    frmModulo.query.Next;
    application.ProcessMessages;
  end;

  Combo_Usuario.Text := LerINI(sConfiguracoes, 'LOGIN', 'USUARIO', '');
  EditSenhaUsuario.Text := Cript('D', LerINI(sConfiguracoes, 'LOGIN',
    'SENHA', ''));

  Combo_Tesouraria.Text := LerINI(sConfiguracoes, 'CAIXA', 'TESOURARIA', '');
  Combo_Caixa.Text := LerINI(sConfiguracoes, 'CAIXA', 'NUMERO', '99');
  iNumCaixa := frmPrincipal.IsInteger(Combo_Caixa.Text);

end;

procedure TfrmConfig.btn1Click(Sender: TObject);
begin
  // NOVAS IMPLEMETA��ES DARLON SANTOS
  if Trim(edtEmitCNPJ.Text) = '' then begin
    Application.MessageBox('Informe o CNPJ do Emitente','Aten��o!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet4;
    edtEmitCNPJ.SetFocus;
    exit;
  end;
  if Trim(edtEmitRazao.Text) = '' then begin
    Application.MessageBox('Informe a Raz�o do Emitente','Aten��o!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet4;
    edtEmitRazao.SetFocus;
    exit;
  end;
  if Trim(edtEmitFantasia.Text) = '' then begin
    Application.MessageBox('Informe o Nome Fantasia  do Emitente','Aten��o!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet4;
    edtEmitFantasia.SetFocus;
    exit;
  end;
  if Trim(edtEmitCodCidade.Text) = '' then begin
    Application.MessageBox('Informe o C�digo da Cidade do Emitente','Aten��o!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet4;
    edtEmitCodCidade.SetFocus;
    exit;
  end;
  if Trim(edtEmitCodCidade.Text) = '' then begin
    Application.MessageBox('Informe o C�digo da Cidade do Emitente','Aten��o!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet4;
    edtEmitCodCidade.SetFocus;
    exit;
  end;
  if Trim(edtEmitCidade.Text) = '' then begin
    Application.MessageBox('Informe o a Cidade do Emitente','Aten��o!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet4;
    edtEmitCidade.SetFocus;
    exit;
  end;
  if Trim(edtNumSerie.Text) = '' then begin
    Application.MessageBox('Informe o N�mero de S�rie do Certificado clicando no Bot�o na frente do campos','Aten��o!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet4;
    edtNumSerie.SetFocus;
    exit;
  end;

  if (rgTipoAmb.ItemIndex = 0) and  (Trim(edtNumeroToken.Text) = '') then begin
    Application.MessageBox('Informe o N�mero CSC para emiss�o em Produ��o','Aten��o!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet4;
    edtNumeroToken.SetFocus;
    exit;
  end;

  if (rgTipoAmb.ItemIndex = 0) and  (Trim(edtIdToken.Text) = '') then begin
    Application.MessageBox('Informe o ID CSC para emiss�o em Produ��o','Aten��o!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet4;
    edtIdToken.SetFocus;
    exit;
  end;

  { TODO 1 : TESTE DE DESENVOLVIMENTO }
  if (ckSalvar.Checked) and  (Trim(edtPathLogs.Text) = '') then begin
    Application.MessageBox('Informe o Caminho para salvar os XMLs','Aten��o!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet4;
     edtPathLogs.SetFocus;
    exit;
  end;

  if (ckSalvar.Checked) and  not(DirectoryExists(Trim(edtPathLogs.Text))) then begin
    Application.MessageBox('Informe um Caminho valido para salvar os XMLs','Aten��o!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet4;
     edtPathLogs.SetFocus;
    exit;
  end;

  if (Trim(edSchemas.Text) = '') or not(DirectoryExists(Trim(edSchemas.Text))) then begin
    Application.MessageBox('Informe um Caminho valido de localiza��o do Schemas','Aten��o!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet4;
    edSchemas.SetFocus;
    exit;
  end;


  if Trim(edtEmitUF.Text) = '' then begin
    Application.MessageBox('Informe o UF do Emitente','Aten��o!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet4;
   edtEmitUF.SetFocus;
    exit;
  end;

  if Trim(edSequencia.Text) = '' then begin
    Application.MessageBox('Informe a Sequencia da NFC-e','Aten��o!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet4;
    edSequencia.SetFocus;
    exit;
  end;
  if Trim(edSerie.Text) = '' then begin
    Application.MessageBox('Informe a S�rie da NFC-e','Aten��o!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet4;
    edSerie.SetFocus;
    exit;
  end;
  if Trim(edCFOP.Text) = '' then begin
    Application.MessageBox('Informe o CFOP Padr�o','Aten��o!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet4;
    edCFOP.SetFocus;
    exit;
  end;

  try
    StrToInt(edSequencia.Text);
  except
    Application.MessageBox('Informe uma Sequencia da NFC-e V�lida','Aten��o!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet4;
   edSequencia.SetFocus;
    exit;
  end;
  if edImpressora.Text = '' then begin
     pageview1.ActivePage := PageSheet4;
    edImpressora.SetFocus;
    exit;
  end;

  { TODO 5 : grava e ler os configura��es em arquivos.ini }
  GravarConfiguracao;
  LerConfiguracao;
   { TODO 5 : Configura��o no numero seguencial da Nfce de cada caixa }
   with frmModulo do begin
    qradic_mestre.open;
    qradic_mestre.Refresh;
    if qradic_mestre.Locate('codigo', '915', [loCaseInsensitive]) then begin
      if qradic_mestre.FIELDBYNAME('sequencias').AsInteger <> StrToInt(edSequencia.Text) then begin
        qradic_mestre.Edit;
        qradic_mestre.FIELDBYNAME('sequencias').AsInteger := StrToInt(edSequencia.Text);
        qradic_mestre.Post;
      end;
      conexao.Commit;
    end else begin
      qradic_mestre.Edit;
      qradic_mestre.FIELDBYNAME('CODIGO').AsString := '915';
      qradic_mestre.FIELDBYNAME('sequencias').AsInteger := StrToInt(edSequencia.Text);
      qradic_mestre.UpdateRecord;
    end;
  end;




  GravarParametro('INFORMAR_VENDEDOR_CHECKOUT', 'B', chkVendedor.Checked);
  if qrconfig.state = dsedit then
  qrconfig.post;
  application.messagebox
  ('� necess�rio reiniciar o sistema para atualizar as novas configura��es!',
  'Aviso', mb_ok + MB_ICONINFORMATION);
  GravaConfiguracoesLocais;
  close;

 end;

procedure TfrmConfig.btn2Click(Sender: TObject);
begin
  if qrconfig.state = dsedit then
    qrconfig.cancel;
  close;

end;

procedure TfrmConfig.btn3Click(Sender: TObject);
var
 Modelo, Serie, Ano, NumeroInicial, NumeroFinal, Justificativa : String;
begin
 if not(InputQuery('WebServices Inutiliza��o ', 'Ano',    Ano)) then
    exit;
 if not(InputQuery('WebServices Inutiliza��o ', 'Modelo', Modelo)) then
    exit;
 if not(InputQuery('WebServices Inutiliza��o ', 'Serie',  Serie)) then
    exit;
 if not(InputQuery('WebServices Inutiliza��o ', 'N�mero Inicial', NumeroInicial)) then
    exit;
 if not(InputQuery('WebServices Inutiliza��o ', 'N�mero Final', NumeroFinal)) then
    exit;
 if not(InputQuery('WebServices Inutiliza��o ', 'Justificativa', Justificativa)) then
    exit;
  frmconfig.ACBrNFe1.WebServices.Inutiliza(frmconfig.edtEmitCNPJ.Text, Justificativa, StrToInt(Ano), StrToInt(Modelo), StrToInt(Serie), StrToInt(NumeroInicial), StrToInt(NumeroFinal));
end;

procedure TfrmConfig.btnSalvarConfigClick(Sender: TObject);
begin
  GravarConfiguracao;
  LerConfiguracao;
end;

end.
