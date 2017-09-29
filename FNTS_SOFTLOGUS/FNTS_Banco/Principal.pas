unit Principal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, DB, XPMan,
  ExtCtrls, Mask, RzEdit, RzBtnEdt, AdvShapeButton, IniFiles, ZConnection,
  PageView, ZAbstractConnection, sSkinManager, RxToolEdit;
type
  Tfrmprincipal = class(TForm)
    Image1: TImage;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    Bevel5: TBevel;
    Button1: TButton;
    Button2: TButton;
    XPManifest1: TXPManifest;
    base: TZConnection;
    dlgOpen1: TOpenDialog;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    pnl1: TPanel;
    rservidor: TRadioButton;
    restacao: TRadioButton;
    btn1: TButton;
    ed_servidor: TEdit;
    ed_base: TRzButtonEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    AdvShapeButton1: TAdvShapeButton;
    lbl1: TLabel;
    lbl4: TLabel;
    chk_ver_deb: TCheckBox;
    chk_alt_cus: TCheckBox;
    chk_des_cli: TCheckBox;
    chk_bus_pre: TCheckBox;
    chk_ver_dad: TCheckBox;
    ed_aju_usu: TEdit;
    lbl6: TLabel;
    chk_lan_tot: TCheckBox;
    chk_usa_nfe: TCheckBox;
    ed_produtos: TDirectoryEdit;
    ed_clientes: TDirectoryEdit;
    gbBlock: TGroupBox;
    MaskEdit1: TMaskEdit;
    lblblock: TLabel;
    cbBlock: TCheckBox;
    PageSheet3: TPageSheet;
    Label31: TLabel;
    edtSmtpHost: TEdit;
    edtSmtpPort: TEdit;
    edtSmtpUser: TEdit;
    edtSmtpPass: TEdit;
    edtEmailAssunto: TEdit;
    cbEmailSSL: TCheckBox;
    mmEmailMsg: TMemo;
    Label36: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    sSkinManager1: TsSkinManager;
    edtFinanceiro: TEdit;
    edtNFe: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure rservidorClick(Sender: TObject);
    procedure restacaoClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure GravaIni(sessao, chave, aTexto, caminho: string);
    function LeInistr(arquivo, sessao, chave, padrao: string): string;
    procedure FormCreate(Sender: TObject);
    procedure ed_baseButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MaskEdit1Change(Sender: TObject);
    procedure cbBlockClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprincipal: Tfrmprincipal;
  bContinua: boolean;

implementation

{$R *.DFM}

function TfrmPrincipal.LeInistr(arquivo, sessao, chave, padrao: string): string;
var
  ArqIni: TIniFile;
begin
  ArqIni := TIniFile.Create(arquivo);
  try
    RESULT := ArqIni.ReadString(sessao, chave, padrao);
  finally
    ArqIni.Free;
  end;
end;

procedure TfrmPrincipal.GravaIni(sessao, chave, aTexto, caminho: string);
var
  ArqIni: TIniFile;
begin
  ArqIni := TIniFile.Create(caminho);
  try
    ArqIni.WriteString(sessao, chave, aTexto);
  finally
    ArqIni.Free;
  end;
end;

procedure Tfrmprincipal.Button2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmprincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if not bContinua then
  begin
    if application.messagebox('Tem certeza que deseja abandonar o processo de configura��o da ' +
      'instala��o do sistema?', 'Aten��o', mb_yesno + mb_iconwarning +
      MB_DEFBUTTON2) = idNo then
      abort;
  end
  else
  begin
    action := cafree;
  end;
end;

procedure Tfrmprincipal.Button1Click(Sender: TObject);
var txt: textfile;
  caminho, entrada, msg: string;
  StreamMemo: TMemoryStream;
begin
  //mudanca pra salvar na pasta dll
  caminho := ExtractFilePath(ParamStr(0)) + 'ini\com.ini';
  //caminho := ExtractFilePath(ParamStr(0)) + 'com.ini';
  GravaIni('BANCO', '999-001', ed_base.Text, caminho);
  GravaIni('BANCO', '999-002', ed_servidor.Text, caminho);
  GravaIni('BANCO', '999-003', ed_base.Text, caminho);
  GravaIni('IMAGENS', 'img-001', ed_produtos.Text, caminho);
  GravaIni('IMAGENS', 'img-002', ed_clientes.Text, caminho);
  if chk_ver_deb.Checked then
    GravaIni('OPERACIONAIS', 'ver_deb', '1', caminho)
  else
    GravaIni('OPERACIONAIS', 'ver_deb', '2', caminho);
  if chk_alt_cus.Checked then
    GravaIni('OPERACIONAIS', 'alt_cus', '1', caminho)
  else
    GravaIni('OPERACIONAIS', 'alt_cus', '2', caminho);
  if chk_des_cli.Checked then
    GravaIni('OPERACIONAIS', 'des_cli', '1', caminho)
  else
    GravaIni('OPERACIONAIS', 'des_cli', '2', caminho);
  if chk_bus_pre.Checked then
    GravaIni('OPERACIONAIS', 'bus-pre', '1', caminho)
  else
    GravaIni('OPERACIONAIS', 'bus-pre', '2', caminho);
  if chk_ver_dad.Checked then
    GravaIni('OPERACIONAIS', 'ver-dad', '1', caminho)
  else
    GravaIni('OPERACIONAIS', 'ver-dad', '2', caminho);
  if chk_usa_nfe.Checked then
    GravaIni('OPERACIONAIS', 'usa-nfe', '1', caminho)
  else
    GravaIni('OPERACIONAIS', 'usa-nfe', '2', caminho);
  if chk_lan_tot.Checked then
    GravaIni('OPERACIONAIS', 'lan_tot', '1', caminho)
  else
    GravaIni('OPERACIONAIS', 'lan_tot', '2', caminho);
  GravaIni('OPERACIONAIS', 'aju-usu', ed_aju_usu.Text, caminho);
  if cbBlock.Checked then
  begin
    GravaIni('OPERACIONAIS', 'blk-app', '1', caminho);
    GravaIni('OPERACIONAIS', 'tmp-blk', MaskEdit1.Text, caminho);
  end
  else
  begin
    GravaIni('OPERACIONAIS', 'blk-app', '2', caminho);
  end;

  GravaIni('Email', 'Host', edtSmtpHost.Text, caminho);
  GravaIni('Email', 'Port', edtSmtpPort.Text, caminho);
  GravaIni('Email', 'User', edtSmtpUser.Text, caminho);
  GravaIni('Email', 'Pass', edtSmtpPass.Text, caminho);
  GravaIni('Email', 'Assunto', edtEmailAssunto.Text, caminho);
  GravaIni('Email', 'PadraoFinanceiro', edtFinanceiro.Text, caminho);
  GravaIni('Email', 'PadraoNFe', edtNFe.Text, caminho);

  if cbEmailSSL.Checked then
  begin
    GravaIni('Email', 'SSL', 'S', caminho);
  end
  else
    GravaIni('Email', 'SSL', 'N', caminho);
  msg := mmEmailMsg.Lines.Text;
  GravaIni('Email', 'Mensagem', msg, caminho);

  bContinua := true;
  Close;
end;

procedure Tfrmprincipal.rservidorClick(Sender: TObject);
begin
  ed_servidor.Text := 'LOCALHOST';
  ed_servidor.Enabled := False;
end;

procedure Tfrmprincipal.restacaoClick(Sender: TObject);
begin
  ed_servidor.Enabled := True;
end;

procedure Tfrmprincipal.btn1Click(Sender: TObject);
begin
  try
    base.Disconnect;
    base.Database := ed_base.Text;
    base.HostName := ed_servidor.Text;
    base.User := 'SYSDBA';
    base.Password := 'masterkey';
    base.Connect;
    APPLICATION.MESSAGEBOX('Conectado com sucesso!', 'Aten��o', mb_ok + mb_IconInformation {mb_IconExclamation});
  except
    APPLICATION.MESSAGEBOX('Houve falha ao tentar se conectar ao banco de dados! Favor verificar o caminho informado!', 'Aten��o', mb_ok + mb_Iconerror);
  end;
end;

procedure Tfrmprincipal.FormCreate(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
end;

procedure Tfrmprincipal.ed_baseButtonClick(Sender: TObject);
begin
  if dlgOpen1.Execute then
    ed_base.Text := dlgOpen1.FileName;
end;

procedure Tfrmprincipal.FormShow(Sender: TObject);
var txt: textfile;
  caminho, entrada, tmpblk: string;
begin
  //mudanca pra salvar na pasta dll
  caminho := ExtractFilePath(ParamStr(0)) + 'ini\com.ini';
  //caminho := ExtractFilePath(ParamStr(0)) + 'com.ini';
  entrada := ExtractFilePath(ParamStr(0));
  ed_base.Text := LeInistr(caminho, 'BANCO', '999-001', entrada + 'bd\base.fdb');
  ed_servidor.Text := LeInistr(caminho, 'BANCO', '999-002', '127.0.0.1');
  if ed_servidor.Text <> 'LOCALHOST' then
    restacao.Checked := True
  else
    rservidor.Checked := True;
  ed_base.Text := LeInistr(caminho, 'BANCO', '999-003', 'C:\Digimac\Server\bd\BASE.FDB');
  if LeInistr(caminho, 'OPERACIONAIS', 'ver_deb', '') = '1' then
    chk_ver_deb.Checked := True
  else
    chk_ver_deb.Checked := False;
  if LeInistr(caminho, 'OPERACIONAIS', 'alt_cus', '') = '1' then
    chk_alt_cus.Checked := True
  else
    chk_alt_cus.Checked := False;
  if LeInistr(caminho, 'OPERACIONAIS', 'des_cli', '') = '1' then
    chk_des_cli.Checked := True
  else
    chk_des_cli.Checked := False;
  if LeInistr(caminho, 'OPERACIONAIS', 'bus-pre', '') = '1' then
    chk_bus_pre.Checked := True
  else
    chk_bus_pre.Checked := False;
  if LeInistr(caminho, 'OPERACIONAIS', 'ver-dad', '') = '1' then
    chk_ver_dad.Checked := True
  else
    chk_ver_dad.Checked := False;
  if LeInistr(caminho, 'OPERACIONAIS', 'usa-nfe', '') = '1' then
    chk_usa_nfe.Checked := True
  else
    chk_usa_nfe.Checked := False;
  if LeInistr(caminho, 'OPERACIONAIS', 'lan_tot', '') = '1' then
    chk_lan_tot.Checked := True
  else
    chk_lan_tot.Checked := False;
  ed_aju_usu.Text := LeInistr(caminho, 'OPERACIONAIS', 'aju-usu', '');
  if LeInistr(caminho, 'OPERACIONAIS', 'blk-app', '') = '1' then
  begin
    cbBlock.Checked := True;
    MaskEdit1.Enabled := True;
    MaskEdit1.Text := LeInistr(caminho, 'OPERACIONAIS', 'tmp-blk', '');
  end
  else
  begin
    cbBlock.Checked := False;
    MaskEdit1.Text := LeInistr(caminho, 'OPERACIONAIS', 'tmp-blk', '');
  end;


  edtSmtpHost.Text := LeInistr(caminho, 'Email', 'Host', '');
  edtSmtpPort.Text := LeInistr(caminho, 'Email', 'Port', '');
  edtSmtpUser.Text := LeInistr(caminho, 'Email', 'User', '');
  edtSmtpPass.Text := LeInistr(caminho, 'Email', 'Pass', '');
  edtEmailAssunto.Text := LeInistr(caminho, 'Email', 'Assunto', '');
  edtFinanceiro.Text := LeInistr(caminho, 'Email', 'PadraoFinanceiro', '');
  edtNFe.Text := LeInistr(caminho, 'Email', 'PadraoNFe', '');

  if LeInistr(caminho, 'Email', 'SSL', '') = 'S' then
  begin
    cbEmailSSL.Checked := True
  end
  else
    cbEmailSSL.Checked := False;
  mmEmailMsg.Lines.Add(LeInistr(caminho, 'Email', 'Mensagem', ''));


  ed_produtos.Text := LeInistr(caminho, 'IMAGENS', 'img-001', '');
  ed_clientes.Text := LeInistr(caminho, 'IMAGENS', 'img-002', '');
end;

procedure Tfrmprincipal.MaskEdit1Change(Sender: TObject);
begin
  if MaskEdit1.Text < '00:00:59' then
    lblblock.Caption := 'segundos ocioso'
  else
    if MaskEdit1.Text < '00:59:00' then
      lblblock.Caption := 'minuto(s) ocioso'
    else
      if MaskEdit1.Text > '00:59:00' then
        lblblock.Caption := 'hora(s) ocioso';
end;

procedure Tfrmprincipal.cbBlockClick(Sender: TObject);
begin
  if cbBlock.Checked = True then
  begin
    MaskEdit1.Enabled := True;
  end
  else
    if cbBlock.Checked = False then
    begin
      MaskEdit1.Enabled := False;
      MaskEdit1.Text := '00:00:00'
    end;
end;

end.

