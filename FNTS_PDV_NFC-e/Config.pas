unit Config;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, DBAccess, IBC, MemDS, Buttons,
  ExtCtrls, EditBtn, PageView, AdvEdit, AdvEdBtn, AdvDirectoryEdit, ExtDlgs,
  pngimage, Spin, wwdbedit, Wwdotdot, Wwdbcomb, XPMan, AdvReflectionImage,
  AdvGlowButton, Vcl.ComCtrls, Vcl.OleCtrls, SHDocVw, uZintBarcode,
  system.IniFiles, filectrl,
  ACBrNFe, pcnConversao, ACBrNFeDANFEClass, ACBrNFeDANFERave, ACBrUtil,
  pcnNFeW, pcnNFeRTXT, pcnAuxiliar, ACBrDFeUtil,
  XMLIntf, XMLDoc, ACBrNFeDANFERaveCB, ACBrNFeDANFEFR, Vcl.Grids, Wwdbigrd, Wwdbgrid,
  ACBrECF, ACBrBase, ACBrGAV;

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
    Image5: TImage;
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
    Panel3: TPanel;
    OpenPictureDialog1: TOpenPictureDialog;
    OpenDialog1: TOpenDialog;
    edtIdToken: TEdit;
    edtNumeroToken: TEdit;
    Label40: TLabel;
    Label41: TLabel;
    CFOP: TEdit;
    Label42: TLabel;
    img3: TImage;
    wwDBGrid1: TwwDBGrid;
    gbGaveta: TGroupBox;
    Label43: TLabel;
    cbxModelo: TComboBox;
    cbxPorta: TComboBox;
    Label44: TLabel;
    ACBrGAV1: TACBrGAV;
    ACBrECF1: TACBrECF;
    btTestar: TBitBtn;
    btEstado: TBitBtn;
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
    procedure btTestarClick(Sender: TObject);
    procedure btEstadoClick(Sender: TObject);
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
begin
  chkVendedor.Checked := LerParametro('INFORMAR_VENDEDOR_CHECKOUT', 'B', False);
  qrconfig.open;

  LerConfiguracoes;
  LerConfiguracao;

end;
procedure TfrmConfig.BitBtn1Click(Sender: TObject);
begin
  GravarParametro('INFORMAR_VENDEDOR_CHECKOUT', 'B', chkVendedor.Checked);

  if qrconfig.state = dsedit then
    qrconfig.post;

  application.messagebox
    ('É necessário reiniciar o sistema para atualizar as novas configurações!',
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

    Ini.WriteString('WebService', 'UF', cbUF.Text);
    Ini.WriteInteger('WebService', 'Ambiente', rgTipoAmb.ItemIndex);
    Ini.WriteBool('WebService', 'Visualizar', ckVisualizar.Checked);

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
    Ini.WriteString('Emitente', 'CFOP', CFOP.Text);
    Ini.WriteString('Email', 'Host', edtSmtpHost.Text);
    Ini.WriteString('Email', 'Port', edtSmtpPort.Text);
    Ini.WriteString('Email', 'User', edtSmtpUser.Text);
    Ini.WriteString('Email', 'Pass', edtSmtpPass.Text);
    Ini.WriteString('Email', 'Assunto', edtEmailAssunto.Text);
    Ini.WriteBool('Email', 'SSL', cbEmailSSL.Checked);
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
      ACBRNFCe.Configuracoes.Certificados.NumeroSerie := edtNumSerie.Text;
      edtNumSerie.Text := ACBRNFCe.Configuracoes.Certificados.NumeroSerie;
      Label1.Caption := 'Informe o número de série do certificado'#13 +
        'Disponível no Internet Explorer no menu'#13 +
        'Ferramentas - Opções da Internet - Conteúdo '#13 +
        'Certificados - Exibir - Detalhes - '#13 + 'Número do certificado';
      Label2.Visible := False;
      edtCaminho.Visible := False;
      edtSenha.Visible := False;
      sbtnCaminhoCert.Visible := False;
{$ENDIF}
      edtIdToken.Text := Ini.ReadString('Certificado', 'IDToken', '');
      edtNumeroToken.Text := Ini.ReadString('Certificado', 'TokenNumero', '');
      rgFormaEmissao.ItemIndex := Ini.ReadInteger('Geral', 'FormaEmissao', 0);
      ckSalvar.Checked := Ini.ReadBool('Geral', 'Salvar', True);
      edtPathLogs.Text := Ini.ReadString('Geral', 'PathSalvar', '');
      ACBRNFCe.Configuracoes.Geral.FormaEmissao :=
        StrToTpEmis(Ok, IntToStr(rgFormaEmissao.ItemIndex + 1));
      ACBRNFCe.Configuracoes.Geral.Salvar := ckSalvar.Checked;
      ACBRNFCe.Configuracoes.Geral.PathSalvar := edtPathLogs.Text;

      cbUF.ItemIndex := cbUF.Items.IndexOf(Ini.ReadString('WebService',
        'UF', 'SP'));
      rgTipoAmb.ItemIndex := Ini.ReadInteger('WebService', 'Ambiente', 0);
      ckVisualizar.Checked := Ini.ReadBool('WebService', 'Visualizar', False);
      ACBRNFCe.Configuracoes.WebServices.UF := cbUF.Text;
      ACBRNFCe.Configuracoes.WebServices.Ambiente :=
        StrToTpAmb(Ok, IntToStr(rgTipoAmb.ItemIndex + 1));
      ACBRNFCe.Configuracoes.WebServices.Visualizar := ckVisualizar.Checked;

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
      CFOP.Text := Ini.ReadString('Emitente', 'CFOP', '');

      edtSmtpHost.Text := Ini.ReadString('Email', 'Host', '');
      edtSmtpPort.Text := Ini.ReadString('Email', 'Port', '');
      edtSmtpUser.Text := Ini.ReadString('Email', 'User', '');
      edtSmtpPass.Text := Ini.ReadString('Email', 'Pass', '');
      edtEmailAssunto.Text := Ini.ReadString('Email', 'Assunto', '');
      cbEmailSSL.Checked := Ini.ReadBool('Email', 'SSL', False);
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
  edtNumSerie.Text := frmModulo.ACBRNFCe.Configuracoes.Certificados.
    SelecionarCertificado;
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

procedure TfrmConfig.btTestarClick(Sender: TObject);
begin
  btTestar.Enabled := false ;
  try
     ACBrGAV1.AbreGaveta ;
     btEstadoClick(Sender);
  finally
     btTestar.Enabled := True ;
  end ;
end;

procedure TfrmConfig.btEstadoClick(Sender: TObject);
begin
//DARLON SANTOS FUNÇÃO ABRIR E FECHAR A GAVETA DO CAIXA.
  if not ACBrGAV1.Ativo then
     ACBrGAV1.Ativar ;
  if ACBrGAV1.GavetaAberta then
   begin
     ShowMessage('GAVETA ABERTA') ;
   end
  else
   begin
   ShowMessage('GAVETA FECHADA');
   end ;
end;

procedure TfrmConfig.btn1Click(Sender: TObject);
begin
  GravarParametro('INFORMAR_VENDEDOR_CHECKOUT', 'B', chkVendedor.Checked);
  if qrconfig.state = dsedit then
    qrconfig.post;
  application.messagebox
    ('É necessário reiniciar o sistema para atualizar as novas configurações!',
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

procedure TfrmConfig.btnSalvarConfigClick(Sender: TObject);
begin
  GravarConfiguracao;
  LerConfiguracao;
end;

end.
