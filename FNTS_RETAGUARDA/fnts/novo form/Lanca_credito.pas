unit Lanca_credito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, AdvGlowButton, TFlatPanelUnit, ToolEdit, CurrEdit,
  StdCtrls, Mask, RzEdit, RzBtnEdt, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, DBCtrls, RXDBCtrl, Menus;

type
  TfrmLancaCredito = class(TForm)
    pficha: TFlatPanel;
    Label14: TLabel;
    Bevel1: TBevel;
    Label17: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    ecliente: TEdit;
    edit4: TRzButtonEdit;
    rdebito: TRxCalcEdit;
    qrCreditos: TZQuery;
    Label2: TLabel;
    ecodigo: TDBEdit;
    dsCreditos: TDataSource;
    qrCreditosCODIGO: TIntegerField;
    qrCreditosDATA_EMISSAO: TDateTimeField;
    qrCreditosCODIGO_CLI: TStringField;
    qrCreditosVALOR_ORIGINAL: TFloatField;
    qrCreditosVALOR_ATUAL: TFloatField;
    qrCreditosDATA_PAGAMENTO: TDateTimeField;
    qrCreditosSITUACAO: TIntegerField;
    Label4: TLabel;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bfechar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Relatrios1: TMenuItem;
    Fechar1: TMenuItem;
    edata: TDateEdit;
    qrCreditosVALOR_PAGO: TFloatField;
    qrCreditosNOME: TStringField;
    procedure FormShow(Sender: TObject);
    procedure edit4ButtonClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure ecodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edataKeyPress(Sender: TObject; var Key: Char);
    procedure edit4KeyPress(Sender: TObject; var Key: Char);
    procedure rdebitoKeyPress(Sender: TObject; var Key: Char);
    procedure ecodigoEnter(Sender: TObject);
    procedure edataEnter(Sender: TObject);
    procedure edit4Enter(Sender: TObject);
    procedure rdebitoEnter(Sender: TObject);
    procedure rdebitoExit(Sender: TObject);
    procedure edit4Exit(Sender: TObject);
    procedure ecodigoExit(Sender: TObject);
    procedure edataExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLancaCredito: TfrmLancaCredito;

implementation

uses xloc_cliente, modulo, principal;

{$R *.dfm}

procedure TfrmLancaCredito.FormShow(Sender: TObject);
begin
  pgravar.visible := false;
  pgravar.Align := alClient;

  qrCreditos.close;
  qrCreditos.SQL.clear;
  qrCreditos.SQL.add('select * from CREDITOS order by codigo');
  qrCreditos.open;
  qrCreditos.first;
//  pficha.Enabled := false;
//  bincluir.SetFocus;
//    edata.Date := StrToDate(frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING);
//    edata.SetFocus;
end;

procedure TfrmLancaCredito.edit4ButtonClick(Sender: TObject);
begin
{
  frmXloc_cliente := tfrmXloc_cliente.create(self);
  frmXloc_cliente.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
//      edit4.text := resultado_pesquisa2;
//      edit2.text := resultado_pesquisa1;
      FRMMODULO.QRCLIENTE.CLOSE;
      FRMMOdULO.QRCLIENTE.SQL.CLEAR;
      FRMMODULO.QRCLIENTe.SQL.ADD('select * from c000007 where codigo = '''+resultado_pesquisa1+'''');
      FRMMODULO.qrcliente.OPEN;
      edit4.Text := FRMMODULO.qrcliente.fieldbyname('nome').AsString;
      ecliente.Text := FRMMODULO.qrcliente.fieldbyname('codigo').AsString;
   end
   else
   begin
     edit4.setfocus;
   end;
}
end;

procedure TfrmLancaCredito.bgravarClick(Sender: TObject);
begin
{
   if ecliente.Text = '' then
   begin
     application.messagebox('Favor informar um cliente válido para este registro!','Atenção',mb_ok+mb_iconerror);
     ecodigo.setfocus;
     exit;
   end;
}

  if (qrCreditos.State = dsinsert) or (qrCreditos.State = dsedit) then
  begin
      qrCreditos.FieldByName('codigo_cli').AsString := ecliente.Text;
      qrCreditos.FieldByName('valor_original').AsFloat := rdebito.Value;
      qrCreditos.FieldByName('valor_atual').AsFloat := rdebito.Value;
      qrCreditos.FieldByName('data_emissao').AsDateTime := edata.Date;
      qrCreditos.FieldByName('situacao').AsInteger := 1;
      qrCreditos.FieldByName('nome').Asstring := edit4.text;
      qrCreditos.post;
  end;

  frmmodulo.Conexao.Commit;
 // pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;

end;

procedure TfrmLancaCredito.bcancelarClick(Sender: TObject);
begin
  if (qrCreditos.State = dsinsert) or (qrCreditos.State = dsedit) then
  begin
        if (qrCreditos.State = dsinsert) then
        begin
          frmprincipal.qrmestre.close;
          frmprincipal.qrmestre.sql.clear;
          frmprincipal.qrmestre.sql.add('update c000000 set sequencia = sequencia - 1 where codigo = ''CREDIT''');
          frmprincipal.qrmestre.ExecSQL;
        end;


      frmmodulo.qrTanque.cancel;

  end;
//  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;

end;

procedure TfrmLancaCredito.bincluirClick(Sender: TObject);
begin
  pficha.Enabled := True;
  pgravar.Visible := true;
  edata.Date := StrToDate(frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING);
  edata.SetFocus;
  qrCreditos.insert;
  qrCreditos.FieldByName('codigo').AsString := frmprincipal.codifica('CREDIT');
  pficha.Enabled := true;
  ecodigo.SetFocus;

  PopupMenu := pop2;

end;

procedure TfrmLancaCredito.balterarClick(Sender: TObject);
begin
  IF ecodigo.Text <> '' THEN
  BEGIN

    qrCreditos.Edit;
    ecodigo.SetFocus;
    pgravar.Visible := true;
    PopupMenu := pop2;
  END
  ELSE
  BEGIN
    Showmessage('Nenhum registro foi selecionado!');
  END;

end;

procedure TfrmLancaCredito.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir registro',4) then
  begin
    qrCreditos.Delete;
    frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;

end;

procedure TfrmLancaCredito.bfecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLancaCredito.ecodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLancaCredito.edataKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLancaCredito.edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLancaCredito.rdebitoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLancaCredito.ecodigoEnter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLancaCredito.edataEnter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLancaCredito.edit4Enter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLancaCredito.rdebitoEnter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLancaCredito.rdebitoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  bgravar.setfocus;

end;

procedure TfrmLancaCredito.edit4Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLancaCredito.ecodigoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLancaCredito.edataExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

end.
