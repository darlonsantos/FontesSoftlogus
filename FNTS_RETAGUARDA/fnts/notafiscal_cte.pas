unit notafiscal_cte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, ExtCtrls, RzPanel, StdCtrls, sGroupBox,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxTextEdit, DB, DBCtrls,
  Mask, RzEdit, RzDBEdit, RzDBBnEd, Menus, ACBrBase, ACBrEnterTab, dxSkinOffice2013White;

type
  TfrmNf_cte = class(TForm)
    sGroupBox1: TsGroupBox;
    sGroupBox2: TsGroupBox;
    sGroupBox3: TsGroupBox;
    sGroupBox4: TsGroupBox;
    ds1: TDataSource;
    Label1: TLabel;
    edtserie: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label4: TLabel;
    ecfop: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    panel2: TRzPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    DBAdvGlowButton5: TDBAdvGlowButton;
    DBAdvGlowButton6: TDBAdvGlowButton;
    DBAdvGlowButton7: TDBAdvGlowButton;
    DBAdvGlowButton8: TDBAdvGlowButton;
    bfechar: TAdvGlowButton;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    Label13: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    Label14: TLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    Label15: TLabel;
    Label16: TLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    Label92: TLabel;
    cxDBTextEdit73: TcxDBTextEdit;
    Label91: TLabel;
    cxDBTextEdit72: TcxDBTextEdit;
    Label50: TLabel;
    cxDBTextEdit31: TcxDBTextEdit;
    Label51: TLabel;
    cxDBTextEdit32: TcxDBTextEdit;
    Label52: TLabel;
    cxDBTextEdit33: TcxDBTextEdit;
    Label53: TLabel;
    cxDBTextEdit34: TcxDBTextEdit;
    Label56: TLabel;
    cxDBTextEdit37: TcxDBTextEdit;
    Label57: TLabel;
    cxDBTextEdit38: TcxDBTextEdit;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Fechar1: TMenuItem;
    ACBrEnterTab1: TACBrEnterTab;
    pgravar: TRzPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    codcli: TRzDBButtonEdit;
    blocalizar: TAdvGlowButton;
    Label7: TLabel;
    codedit: TcxDBTextEdit;
    DBComboBox1: TDBRadioGroup;
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure codcliKeyPress(Sender: TObject; var Key: Char);
    procedure codcliButtonClick(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNf_cte: TfrmNf_cte;

implementation

uses modulo, principal, xloc_cliente, conhecimento;

{$R *.dfm}

procedure TfrmNf_cte.balterarClick(Sender: TObject);
begin
  if codedit.Text <> '' then
  begin
    frmmodulo.qrnotafiscal_cte.Edit;
    sGroupBox1.Enabled := true;
    pgravar.Visible := true;
    Self.PopupMenu := Pop2;
    edtserie.SetFocus;
  end
  else
  begin
    Showmessage('Nenhum registro foi selecionado!');
  end;
end;

procedure TfrmNf_cte.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir NF', 4) then
  begin
    frmmodulo.qrnotafiscal_cte.Delete;
    frmmodulo.Conexao.commit;
    frmmodulo.qrnotafiscal_cte.Refresh
  end
  else
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;
end;

procedure TfrmNf_cte.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmNf_cte.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrnotafiscal_cte.State = dsinsert) or
    (frmmodulo.qrnotafiscal_cte.State = dsedit) then
    frmmodulo.qrnotafiscal_cte.cancel;

  frmmodulo.Conexao.Rollback;
  frmmodulo.qrnotafiscal_cte.Refresh;

  sGroupBox1.Enabled := false;
  pgravar.Visible := false;
  panel2.Visible := true;
  Self.PopupMenu := Pop1;
  bincluir.SetFocus;
end;

procedure TfrmNf_cte.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrnotafiscal_cte.insert;
  frmmodulo.qrnotafiscal_cte.fieldbyname('codigo').asstring :=
    frmprincipal.codifica('NF_CTE');
  frmmodulo.qrnotafiscal_cte.fieldbyname('codcte').asstring :=
    frmmodulo.qrconhecimento.fieldbyname('NUMERO').asstring;
  sGroupBox1.Enabled := true;
  edtserie.SetFocus;
  pgravar.Visible := true;
  Self.PopupMenu := Pop2;
end;

procedure TfrmNf_cte.bgravarClick(Sender: TObject);
begin
  if (frmmodulo.qrnotafiscal_cte.State = dsinsert) or
    (frmmodulo.qrnotafiscal_cte.State = dsedit) then
  begin
    frmmodulo.qrnotafiscal_cte.post;
    frmmodulo.qrnotafiscal_cte.Refresh
  end;

  frmmodulo.Conexao.commit;
  Self.PopupMenu := Pop1;
  pgravar.Visible := false;
 // bincluir.SetFocus;
  sGroupBox1.Enabled := false;

end;

procedure TfrmNf_cte.DBComboBox1Change(Sender: TObject);
begin
  if DBComboBox1.ItemIndex = 0 then
  begin
    blocalizar.Enabled := true;
    blocalizar.SetFocus
  end
  else
  begin
    blocalizar.Enabled := false;
    edtserie.SetFocus;
    frmmodulo.qrnotafiscal_cte.Edit;
    frmmodulo.qrnotafiscal_cteCODRETIRADA_DIFERENTE.asstring := '';
    frmmodulo.qrnotafiscal_cte.Refresh

  end
end;

procedure TfrmNf_cte.FormShow(Sender: TObject);
begin
  frmmodulo.qrnotafiscal_cte.close;
  frmmodulo.qrnotafiscal_cte.SQL.Clear;
  frmmodulo.qrnotafiscal_cte.SQL.Add
    ('select * from NF_CTE where codcte = :codcte');
  frmmodulo.qrnotafiscal_cte.ParamByName('codcte').asstring :=
    frmmodulo.qrconhecimento.fieldbyname('numero').asstring;
  frmmodulo.qrnotafiscal_cte.Open;
end;

procedure TfrmNf_cte.codcliKeyPress(Sender: TObject; var Key: Char);
begin
  codcli.Text := frmprincipal.zerarcodigo(codcli.Text, 6);
  if Key = #13 then
  begin
    if frmmodulo.qrnotafiscal_cte.State <> dsedit then
      if frmmodulo.qrnotafiscal_cte.State <> dsinsert then
        exit;
    codcli.Text := frmprincipal.zerarcodigo(codcli.Text, 6);

    if codcli.Text <> '000000' then
    begin
      frmmodulo.qrcliente.close;
      frmmodulo.qrcliente.SQL.Clear;
      frmmodulo.qrcliente.SQL.Add('select * from c000007 where codigo = ''' +
        codcli.Text + '''');
      frmmodulo.qrcliente.Open;
      if frmmodulo.qrcliente.recordcount = 0 then
      begin
        Application.messagebox('Remetente não cadastrado!', 'Aviso',
          mb_ok + mb_iconwarning);
        codcli.Text := '';
        if sGroupBox1.Enabled then
          codcli.SetFocus;
        exit;
      end
      else
      begin
        Perform(wm_nextdlgctl, 0, 0);
        frmmodulo.qrnotafiscal_cte.fieldbyname('CODRETIRADA_DIFERENTE').asstring
          := frmprincipal.zerarcodigo(codcli.Text, 6);
        frmmodulo.qrnotafiscal_cte.Refresh
      end;
    end
    else
    begin
      codcliButtonClick(frmNf_cte);
    end;
  end;
end;

procedure TfrmNf_cte.codcliButtonClick(Sender: TObject);
begin
  frmXloc_cliente := tfrmXloc_cliente.create(Self);
  frmXloc_cliente.showmodal;
  frmmodulo.qrnotafiscal_cte.Edit;
  frmmodulo.qrnotafiscal_cte.fieldbyname('CODRETIRADA_DIFERENTE').asstring :=
    resultado_pesquisa1;
  codcli.Text := resultado_pesquisa1;
  edtserie.SetFocus;
  frmmodulo.qrnotafiscal_cte.Refresh
end;

procedure TfrmNf_cte.blocalizarClick(Sender: TObject);
begin
  frmXloc_cliente := tfrmXloc_cliente.create(Self);
  frmXloc_cliente.showmodal;
  frmmodulo.qrnotafiscal_cte.Edit;
  frmmodulo.qrnotafiscal_cte.fieldbyname('CODRETIRADA_DIFERENTE').asstring :=
    resultado_pesquisa1;
  codcli.Text := resultado_pesquisa1;
  edtserie.SetFocus;
  frmmodulo.qrnotafiscal_cte.Refresh
end;

end.
