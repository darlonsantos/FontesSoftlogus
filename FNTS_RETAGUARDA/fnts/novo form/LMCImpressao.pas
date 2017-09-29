unit LMCImpressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, AdvGlowButton, ExtCtrls,
  TFlatPanelUnit, RzEdit, RzDBEdit, RzDBBnEd, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, RzBtnEdt, RxToolEdit;

type
  TfrmLMCImpressao = class(TForm)
    pgravar: TFlatPanel;
    bcancelar: TAdvGlowButton;
    brelatorio: TAdvGlowButton;
    qrLMC: TZQuery;
    qrCombustiveis: TZQuery;
    GroupBox1: TGroupBox;
    eproduto: TRzButtonEdit;
    Label3: TLabel;
    Label1: TLabel;
    edtini: TDateEdit;
    Label2: TLabel;
    edtfinal: TDateEdit;
    TProduto: TEdit;
    qrLMCCODIGO: TIntegerField;
    qrLMCTANQUE: TIntegerField;
    qrLMCBOMBA: TIntegerField;
    qrLMCBICO: TIntegerField;
    qrLMCABERTURA: TIntegerField;
    qrLMCENCERRANTE: TIntegerField;
    qrLMCCOMBUSTIVEL: TIntegerField;
    qrLMCDATA: TDateTimeField;
    qrLMCPRECO: TFloatField;
    qrLMCQUANTIDADE: TFloatField;
    qrLMCTOTAL: TFloatField;
    qrLMCSITUACAO: TIntegerField;
    qrLMCNR_NOTA: TIntegerField;
    qrLMCNOTAFISCAL1: TWideStringField;
    qrLMCNOTAFISCAL2: TWideStringField;
    qrLMCNOTAFISCAL3: TWideStringField;
    qrLMCNOTAFISCAL4: TWideStringField;
    qrLMCQUANTNF1: TIntegerField;
    qrLMCQUANTNF2: TIntegerField;
    qrLMCQUANTNF3: TIntegerField;
    qrLMCQUANTNF4: TIntegerField;
    qrLMCBICO1: TIntegerField;
    qrLMCBICO2: TIntegerField;
    qrLMCBICO3: TIntegerField;
    qrLMCBICO4: TIntegerField;
    qrLMCBICO5: TIntegerField;
    qrLMCBICO6: TIntegerField;
    qrLMCBICO7: TIntegerField;
    qrLMCBICO8: TIntegerField;
    qrLMCABER_BICO1: TIntegerField;
    qrLMCABER_BICO2: TIntegerField;
    qrLMCABER_BICO3: TIntegerField;
    qrLMCABER_BICO4: TIntegerField;
    qrLMCABER_BICO5: TIntegerField;
    qrLMCABER_BICO6: TIntegerField;
    qrLMCABER_BICO7: TIntegerField;
    qrLMCABER_BICO8: TIntegerField;
    qrLMCENC_BICO1: TIntegerField;
    qrLMCENC_BICO2: TIntegerField;
    qrLMCENC_BICO3: TIntegerField;
    qrLMCENC_BICO4: TIntegerField;
    qrLMCENC_BICO5: TIntegerField;
    qrLMCENC_BICO6: TIntegerField;
    qrLMCENC_BICO7: TIntegerField;
    qrLMCENC_BICO8: TIntegerField;
    qrLMCAFER_BICO1: TIntegerField;
    qrLMCAFER_BICO2: TIntegerField;
    qrLMCAFER_BICO3: TIntegerField;
    qrLMCAFER_BICO4: TIntegerField;
    qrLMCAFER_BICO5: TIntegerField;
    qrLMCAFER_BICO6: TIntegerField;
    qrLMCAFER_BICO7: TIntegerField;
    qrLMCAFER_BICO8: TIntegerField;
    qrLMCQTEVEND_1: TIntegerField;
    qrLMCQTEVEND_2: TIntegerField;
    qrLMCQTEVEND_3: TIntegerField;
    qrLMCQTEVEND_4: TIntegerField;
    qrLMCQTEVEND_5: TIntegerField;
    qrLMCQTEVEND_6: TIntegerField;
    qrLMCQTEVEND_7: TIntegerField;
    qrLMCQTEVEND_8: TIntegerField;
    qrLMCTOTALVEND_1: TFloatField;
    qrLMCTOTALVEND_2: TFloatField;
    qrLMCTOTALVEND_3: TFloatField;
    qrLMCTOTALVEND_4: TFloatField;
    qrLMCTOTALVEND_5: TFloatField;
    qrLMCTOTALVEND_6: TFloatField;
    qrLMCTOTALVEND_7: TFloatField;
    qrLMCTOTALVEND_8: TFloatField;
    qrLMCESTOQ_ABERTURA: TIntegerField;
    qrLMCESTOQ_ESCRITURAL: TIntegerField;
    qrLMCESTOQ_FECHAMENTO: TIntegerField;
    qrLMCPERDA_SOBRA: TIntegerField;
    qrLMCOBSERVACAO: TWideStringField;
    qrLMCPAGINA: TIntegerField;
    procedure bcancelarClick(Sender: TObject);
    procedure edtiniKeyPress(Sender: TObject; var Key: Char);
    procedure edtfinalKeyPress(Sender: TObject; var Key: Char);
    procedure edtfinalEnter(Sender: TObject);
    procedure edtiniEnter(Sender: TObject);
    procedure edtiniExit(Sender: TObject);
    procedure edtfinalExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure brelatorioClick(Sender: TObject);
    procedure eprodutoButtonClick(Sender: TObject);
    procedure eprodutoExit(Sender: TObject);
    procedure eprodutoEnter(Sender: TObject);
    procedure eprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure RzButtonEdit1ButtonClick(Sender: TObject);
    procedure RzButtonEdit1Enter(Sender: TObject);
    procedure RzButtonEdit1Exit(Sender: TObject);
    procedure RzButtonEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLMCImpressao: TfrmLMCImpressao;
  xdata_ini, xdata_fim: TdateTime;
  xcombustivel: string;

implementation

uses modulo, RelLMC, xloc_combustivel;

{$R *.dfm}

procedure TfrmLMCImpressao.bcancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLMCImpressao.edtiniKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMCImpressao.edtfinalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMCImpressao.edtfinalEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMCImpressao.edtiniEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMCImpressao.edtiniExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMCImpressao.edtfinalExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure TfrmLMCImpressao.FormShow(Sender: TObject);
begin
  edtini.Date := StrToDate(frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING);
  edtfinal.Date := StrToDate(frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING);
  edtini.SetFocus;
end;

procedure TfrmLMCImpressao.brelatorioClick(Sender: TObject);
begin
  xdata_ini := edtini.Date;
  xdata_fim := edtfinal.Date;
  xcombustivel := eproduto.Text;
  frmRelLMC := TfrmRelLmc.create(self);
  frmRelLMC.QuickRep1.Preview;
end;

procedure TfrmLMCImpressao.eprodutoButtonClick(Sender: TObject);
begin
  frmxloc_combustivel := tfrmxloc_combustivel.Create(self);
  frmxloc_combustivel.ShowModal;
  eproduto.Text := IntToStr(frmxloc_combustivel.query.fieldbyname('codigo').AsInteger);
//  lbproduto.Caption := frmxloc_combustivel.query.fieldbyname('nome').AsString;
  TProduto.Text := frmxloc_combustivel.query.fieldbyname('nome').AsString;
end;

procedure TfrmLMCImpressao.eprodutoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

  qrCombustiveis.Close;
  qrCombustiveis.SQL.Clear;
  qrCombustiveis.SQL.Add('select * from CADCOMBUSTIVEL where codigo = :codigo');
  qrCombustiveis.Params.ParamByName('codigo').AsInteger := StrToInt(Trim(eproduto.Text));
  qrCombustiveis.Open;

  if qrCombustiveis.RecordCount = 0 then
  begin
       application.messagebox('Produto não encontrado! Verifique...!','Atenção',mb_ok+mb_iconerror);
       eproduto.SetFocus;
  end
  else

//    lbproduto.caption := qrCombustiveis.fieldbyname('nome').AsString;
    Tproduto.Text := qrCombustiveis.fieldbyname('nome').AsString;
end;

procedure TfrmLMCImpressao.eprodutoEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMCImpressao.eprodutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmLMCImpressao.RzButtonEdit1ButtonClick(Sender: TObject);
begin
  frmxloc_combustivel := tfrmxloc_combustivel.Create(self);
  frmxloc_combustivel.ShowModal;
  eproduto.Text := IntToStr(frmxloc_combustivel.query.fieldbyname('codigo').AsInteger);
//  lbproduto.Caption := frmxloc_combustivel.query.fieldbyname('nome').AsString;
  Tproduto.Text := frmxloc_combustivel.query.fieldbyname('nome').AsString;
end;

procedure TfrmLMCImpressao.RzButtonEdit1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmLMCImpressao.RzButtonEdit1Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

  qrCombustiveis.Close;
  qrCombustiveis.SQL.Clear;
  qrCombustiveis.SQL.Add('select * from CADCOMBUSTIVEL where codigo = :codigo');
  qrCombustiveis.Params.ParamByName('codigo').AsInteger := StrToInt(Trim(eproduto.Text));
  qrCombustiveis.Open;

  if qrCombustiveis.RecordCount = 0 then
  begin
       application.messagebox('Produto não encontrado! Verifique...!','Atenção',mb_ok+mb_iconerror);
       eproduto.SetFocus;
  end
  else

 //   lbproduto.caption := qrCombustiveis.fieldbyname('nome').AsString;
    Tproduto.Text := frmxloc_combustivel.query.fieldbyname('nome').AsString;
    brelatorio.setfocus;
end;

procedure TfrmLMCImpressao.RzButtonEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

end.
