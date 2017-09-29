unit BaixaCredito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, ExtCtrls, TFlatPanelUnit, ToolEdit, DBCtrls,
  CurrEdit, Mask, RzEdit, RzBtnEdt, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TfrmBaixaCredito = class(TForm)
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel2: TBevel;
    pficha: TFlatPanel;
    Label14: TLabel;
    Bevel1: TBevel;
    Label17: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    ecliente: TEdit;
    edit4: TRzButtonEdit;
    rdebito: TRxCalcEdit;
    edata: TDateEdit;
    ecodigo: TEdit;
    qrCreditos: TZQuery;
    dsCreditos: TDataSource;
    qrCliente: TZQuery;
    qrCreditosCODIGO: TIntegerField;
    qrCreditosDATA_EMISSAO: TDateTimeField;
    qrCreditosCODIGO_CLI: TStringField;
    qrCreditosVALOR_ORIGINAL: TFloatField;
    qrCreditosVALOR_ATUAL: TFloatField;
    qrCreditosDATA_PAGAMENTO: TDateTimeField;
    qrCreditosSITUACAO: TIntegerField;
    qrCreditosVALOR_PAGO: TFloatField;
    qrCreditosNOME: TStringField;
    procedure FormShow(Sender: TObject);
    procedure ecodigoExit(Sender: TObject);
    procedure edataKeyPress(Sender: TObject; var Key: Char);
    procedure ecodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edit4KeyPress(Sender: TObject; var Key: Char);
    procedure rdebitoKeyPress(Sender: TObject; var Key: Char);
    procedure ecodigoEnter(Sender: TObject);
    procedure edit4Enter(Sender: TObject);
    procedure rdebitoEnter(Sender: TObject);
    procedure edit4Exit(Sender: TObject);
    procedure rdebitoExit(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBaixaCredito: TfrmBaixaCredito;

implementation

uses modulo;

{$R *.dfm}

procedure TfrmBaixaCredito.FormShow(Sender: TObject);
begin
  ecodigo.SetFocus;
  edata.Date := date;
end;

procedure TfrmBaixaCredito.ecodigoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  qrCreditos.Close;
  qrCreditos.SQL.Clear;
  qrCreditos.SQL.Add('select * from CREDITOS where codigo = :codigo and situacao = 1');
  qrCreditos.Params.ParamByName('codigo').AsInteger  := StrToInt(ecodigo.Text);
  qrCreditos.Open;

  if qrCreditos.RecordCount > 0 then
  begin
      edata.Date := qrCreditos.fieldbyname('data_emissao').AsDateTime;
      FRMMODULO.QRCLIENTE.CLOSE;
      FRMMOdULO.QRCLIENTE.SQL.CLEAR;
      FRMMODULO.QRCLIENTe.SQL.ADD('select * from c000007 where codigo = :codigo');
      FRMMODULO.QRCLIENTE.Params.ParamByName('codigo').AsString := qrCreditos.fieldbyname('codigo_cli').AsString;
      FRMMODULO.qrcliente.OPEN;
//      edit4.Text := FRMMODULO.qrcliente.fieldbyname('nome').AsString;
      edit4.Text := qrCreditos.fieldbyname('nome').AsString;
      ecliente.Text := FRMMODULO.qrcliente.fieldbyname('codigo').AsString;
      rdebito.Value := qrCreditos.fieldbyname('valor_atual').AsFloat;

      bgravar.Enabled := True;
  end
  else
  begin
     application.messagebox('Documento já Baixado. Verifique!','Atenção',mb_ok+mb_iconinformation);
     ecodigo.SetFocus;
     bgravar.Enabled := False;
  end;
end;

procedure TfrmBaixaCredito.edataKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmBaixaCredito.ecodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmBaixaCredito.edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmBaixaCredito.rdebitoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmBaixaCredito.ecodigoEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure TfrmBaixaCredito.edit4Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure TfrmBaixaCredito.rdebitoEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure TfrmBaixaCredito.edit4Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure TfrmBaixaCredito.rdebitoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  bgravar.SetFocus;
end;

procedure TfrmBaixaCredito.bcancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmBaixaCredito.bgravarClick(Sender: TObject);
begin
  qrCreditos.Edit;
  if rdebito.Value < qrCreditos.FieldByName('valor_original').AsFloat  then
  begin
      qrCreditos.FieldByName('valor_atual').AsFloat := qrCreditos.FieldByName('valor_atual').AsFloat -
                                                       rdebito.Value;
      qrCreditos.FieldByName('valor_pago').AsFloat := rdebito.Value;
      qrCreditos.FieldByName('data_pagamento').AsDateTime := edata.Date;

      if qrCreditos.FieldByName('valor_atual').AsFloat = 0 then
      begin
        qrCreditos.FieldByName('situacao').AsFloat := 2;
        qrCreditos.FieldByName('data_pagamento').AsDateTime := edata.Date;
        qrCreditos.FieldByName('valor_pago').AsFloat := rdebito.Value;
      end;
    qrCreditos.Post;
  end
  else
  begin
    qrCreditos.FieldByName('valor_atual').AsFloat := 0;
    qrCreditos.FieldByName('situacao').AsFloat := 2;
    qrCreditos.FieldByName('data_pagamento').AsDateTime := edata.Date;
    qrCreditos.FieldByName('valor_pago').AsFloat := rdebito.Value;
    qrCreditos.Post;
  end;
    frmmodulo.Conexao.Commit;
    bgravar.Enabled := False;
end;

end.
