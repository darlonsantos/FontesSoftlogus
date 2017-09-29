unit Transfestoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, TFlatPanelUnit, StdCtrls, ExtCtrls, Mask, RzEdit,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, RzDBEdit, RzDBBnEd,
  RzBtnEdt;

type
  TfrmTranfEstoque = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    LPRODUTO: TLabel;
    Label5: TLabel;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    rqtde: TRzNumericEdit;
    runitario: TRzNumericEdit;
    rtotal: TRzNumericEdit;
    Label6: TLabel;
    Label9: TLabel;
    cborigem: TComboBox;
    qrProduto: TZQuery;
    qrTransf: TZQuery;
    cbDestino: TComboBox;
    qrEstoque: TZQuery;
    eproduto: TRzButtonEdit;
    qrEstoqueCODPRODUTO: TStringField;
    qrEstoqueCODFILIAL: TStringField;
    qrEstoqueESTOQUE_INICIAL: TFloatField;
    qrEstoqueENTRADAS: TFloatField;
    qrEstoqueSAIDAS: TFloatField;
    qrEstoqueESTOQUE_ATUAL: TFloatField;
    qrEstoqueULTIMA_ENTRADA: TDateTimeField;
    qrEstoqueULTIMA_SAIDA: TDateTimeField;
    qrEstoqueNOTA_FISCAL: TStringField;
    qrEstoqueESTOQUE_FISCAL: TFloatField;
    qrEstoqueEST_DEP: TFloatField;
    qrEstoqueEST_EXP: TFloatField;
    qrEstoqueEST_CON: TFloatField;
    qrmovimento: TZQuery;
    procedure RzButtonEdit1ButtonClick(Sender: TObject);
    procedure eprodutoExit(Sender: TObject);
    procedure rqtdeExit(Sender: TObject);
    procedure runitarioExit(Sender: TObject);
    procedure rtotalExit(Sender: TObject);
    procedure eprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure rqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure runitarioKeyPress(Sender: TObject; var Key: Char);
    procedure rtotalKeyPress(Sender: TObject; var Key: Char);
    procedure cborigemKeyPress(Sender: TObject; var Key: Char);
    procedure rqtdeEnter(Sender: TObject);
    procedure runitarioEnter(Sender: TObject);
    procedure rtotalEnter(Sender: TObject);
    procedure eprodutoEnter(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbDestinoKeyPress(Sender: TObject; var Key: Char);
    procedure cbDestinoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTranfEstoque: TfrmTranfEstoque;

implementation

uses modulo, xloc_produto, principal;

{$R *.dfm}

procedure TfrmTranfEstoque.RzButtonEdit1ButtonClick(Sender: TObject);
begin
  frmxloc_produto := tfrmxloc_produto.Create(self);
  frmxloc_produto.ShowModal;
//  frmmodulo.qrBicos.fieldbyname('cod_produto').asstring := frmxloc_combustivel.query.fieldbyname('codigo').asstring;
//  frmmodulo.qrBicos.fieldbyname('preco').AsFloat := frmxloc_combustivel.query.fieldbyname('pr_venda').AsFloat;
  eproduto.Text := frmxloc_produto.query.fieldbyname('codigo').asstring;
  lproduto.Caption := frmxloc_produto.query.fieldbyname('produto').asstring;
  runitario.Value := frmxloc_produto.query.fieldbyname('precovenda').AsFloat;

end;

procedure TfrmTranfEstoque.eprodutoExit(Sender: TObject);
begin
{
  qrProduto.Close;
  qrProduto.SQL.Clear;
  qrProduto.SQL.Add('select * from c000100 where codproduto = :codproduto');
  qrProduto.Params.ParamByName('codproduto').AsString := eproduto.Text;
  qrProduto.ExecSQL;

  if qrProduto.RecordCount > 0 then
     application.messagebox('Produto não encontrado!','Atenção',mb_ok+mb_iconerror)
  else
    lproduto.Caption := qrProduto.fieldbyname('produto').AsString;
}
  qrProduto.Close;
  qrProduto.SQL.Clear;
  qrProduto.SQL.Add('select * from c000025 where codigo = :codigo');
  qrProduto.Params.ParamByName('codigo').AsString := frmprincipal.zerarcodigo(eproduto.Text,6);
  qrProduto.Open;

//  ShowMessage(frmprincipal.zerarcodigo(eproduto.Text,6));
  if qrProduto.RecordCount = 0 then
     application.messagebox('Produto não encontrado!','Atenção',mb_ok+mb_iconerror)
  else
  begin
    eproduto.Text := qrProduto.fieldbyname('codigo').AsString;
    lproduto.Caption := qrProduto.fieldbyname('produto').AsString;
  end;

end;

procedure TfrmTranfEstoque.rqtdeExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  rtotal.value :=
  rqtde.value *
  runitario.value;

end;

procedure TfrmTranfEstoque.runitarioExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;

end;

procedure TfrmTranfEstoque.rtotalExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;

end;

procedure TfrmTranfEstoque.eprodutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmTranfEstoque.rqtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmTranfEstoque.runitarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmTranfEstoque.rtotalKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmTranfEstoque.cborigemKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmTranfEstoque.rqtdeEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;

end;

procedure TfrmTranfEstoque.runitarioEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;

end;

procedure TfrmTranfEstoque.rtotalEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;

end;

procedure TfrmTranfEstoque.eprodutoEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;

end;

procedure TfrmTranfEstoque.bgravarClick(Sender: TObject);
var
  xorigem, xdestino, xteste : string;
  xestq_dep, xestq_exp, xestq_con, xestoque_atual, xsaidas, xentradas  : double;
begin
    xestq_dep := 0;
    xestq_exp := 0;
    xestq_con := 0;
    xestoque_atual := 0;

    if cborigem.ItemIndex = 0 then
      xorigem := 'EST_DEP'
    else if cborigem.ItemIndex = 1 then
      xorigem := 'EST_EXP'
    else if cborigem.ItemIndex = 2 then
      xorigem := 'EST_CON'
    else if cborigem.ItemIndex = 3 then
//      xorigem := 'ESTOQUE_ATUAL';
      xorigem := 'ENTRADAS';


    if cbdestino.ItemIndex = 0 then
      xdestino := 'EST_DEP'
    else if cbdestino.ItemIndex = 1 then
      xdestino := 'EST_EXP'
    else if cbdestino.ItemIndex = 2 then
      xdestino := 'EST_CON'

    else if cbdestino.ItemIndex = 3 then
//      xdestino := 'ESTOQUE_ATUAL';
      xdestino := 'ENTRADAS';




    qrEstoque.Close;
    qrEstoque.SQL.Clear;
    qrEstoque.SQL.Add('select * from  c000100 where codproduto = :codproduto');
    qrEStoque.Params.ParamByName('codproduto').AsString := eproduto.Text;
    qrEstoque.Open;

    xestq_dep := qrEstoque.fieldbyname('est_dep').asfloat;
    xestq_exp := qrEstoque.fieldbyname('est_exp').asfloat;
    xestq_con := qrEstoque.fieldbyname('est_con').asfloat;
    xestoque_atual:= qrEstoque.fieldbyname('entradas').asfloat;
    xsaidas := qrEstoque.fieldbyname('saidas').asfloat;
    xentradas := qrEstoque.fieldbyname('entradas').asfloat;

//    ShowMessage(floattostr(xestq_dep));
    qrEstoque.Close;
    qrEstoque.SQL.Clear;

    if cborigem.ItemIndex = 0 then
      qrEstoque.SQL.Add('update c000100 set est_dep = :est_dep ')
    else if cborigem.ItemIndex = 1 then
      qrEstoque.SQL.Add('update c000100 set est_exp = :est_exp ')
    else if cborigem.ItemIndex = 2 then
    begin
        ShowMessage('Impossivel transferir deste local, escolha a origem POSTO');
        Close;
//        eproduto.setfocus;
    end
    else if cborigem.ItemIndex = 3 then
    begin
        qrEstoque.SQL.Add('update c000100 set ');

          QRmovimento.CLOSE;
          QRmovimento.SQL.CLEAR;
          QRmovimento.SQL.Add('insert into c000032');
          QRmovimento.SQL.add('(codigo,codnota,serial,numeronota,');
          QRmovimento.SQL.add('codproduto,qtde,unitario,movimento_estoque,');
          QRmovimento.SQL.add('total,unidade,aliquota,');
          QRmovimento.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
          QRmovimento.SQL.add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,cst)');
          QRmovimento.SQL.add('values');
          QRmovimento.SQL.add('('''+frmprincipal.codifica('000032')+''',''TRA'',''000000'',''000000'',');
          QRmovimento.SQL.add(''''+eproduto.text+''',:QTDE,:UNITARIO,:movimento_estoque,');
          QRmovimento.SQL.add(':TOTAL, ''UN'',:ALIQUOTA,');
          QRmovimento.SQL.add('''001'',''000000'','''',');
          QRmovimento.SQL.add(''''','''',''000000'',''S/VEND'',10,:datax,''000'')');
          QRmovimento.Params.ParamByName('datax').asdatetime := DATE;
          QRmovimento.Params.ParamByName('UNITARIO').ASFLOAT := RUNITARIO.VALUE;
          QRmovimento.Params.ParamByName('QTDE').ASFLOAT := rqtde.value * (-1);
          QRmovimento.Params.ParamByName('TOTAL').ASFLOAT := RTOTAL.VALUE * (-1);
          QRmovimento.Params.ParamByName('movimento_estoque').ASFLOAT := rqtde.value * (-1);
          QRmovimento.Params.ParamByName('ALIQUOTA').ASFLOAT := 0;
          QRmovimento.ExecSQL;

    end;
//    ShowMessage(qrEstoque.SQL.Text);

    if cbdestino.ItemIndex = 0 then
       if cborigem.itemindex = 1 then
          qrEstoque.SQL.Add(' ,est_dep = :est_dep ')
       else
          qrEstoque.SQL.Add('est_dep = :est_dep ')

    else if cbdestino.ItemIndex = 1 then
      if cborigem.ItemIndex = 0 then
        qrEstoque.SQL.Add(' ,est_exp = :est_exp ')
      else
        qrEstoque.SQL.Add(' est_exp = :est_exp ')

    else if cbdestino.ItemIndex = 2 then
    begin
        ShowMessage('Impossivel transferir para este local, escolha o destino POSTO');
        Close;
//        eproduto.setfocus;
    end
    else if cbdestino.ItemIndex = 3 then
    begin
          QRmovimento.CLOSE;
          QRmovimento.SQL.CLEAR;
          QRmovimento.SQL.Add('insert into c000032');
          QRmovimento.SQL.add('(codigo,codnota,serial,numeronota,');
          QRmovimento.SQL.add('codproduto,qtde,unitario,movimento_estoque,');
          QRmovimento.SQL.add('total,unidade,aliquota,');
          QRmovimento.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
          QRmovimento.SQL.add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,cst)');
          QRmovimento.SQL.add('values');
          QRmovimento.SQL.add('('''+frmprincipal.codifica('000032')+''',''TRA'',''000000'',''000000'',');
          QRmovimento.SQL.add(''''+eproduto.text+''',:QTDE,:UNITARIO,:movimento_estoque,');
          QRmovimento.SQL.add(':TOTAL, ''UN'',:ALIQUOTA,');
          QRmovimento.SQL.add('''001'',''000000'','''',');
          QRmovimento.SQL.add(''''','''',''000000'',''S/VEND'',10,:datax,''000'')');
          QRmovimento.Params.ParamByName('datax').asdatetime := DATE;
          QRmovimento.Params.ParamByName('UNITARIO').ASFLOAT := RUNITARIO.VALUE;
          QRmovimento.Params.ParamByName('QTDE').ASFLOAT := rqtde.value;
          QRmovimento.Params.ParamByName('TOTAL').ASFLOAT := RTOTAL.VALUE;
          QRmovimento.Params.ParamByName('movimento_estoque').ASFLOAT := rqtde.value;
          QRmovimento.Params.ParamByName('ALIQUOTA').ASFLOAT := 0;
          QRmovimento.ExecSQL;

    end;
//    ShowMessage(qrEstoque.SQL.Text);

    qrEstoque.SQL.Add('where codproduto = :codproduto');

    if cborigem.ItemIndex = 0 then
    begin
      qrEStoque.Params.ParamByName('est_dep').AsFloat := xestq_dep - rqtde.Value;
      qrEStoque.Params.ParamByName('codproduto').AsString :=eproduto.Text;
    end
    else if cborigem.ItemIndex = 1 then
    begin
      qrEStoque.Params.ParamByName('est_exp').AsFloat := xestq_exp - rqtde.Value;
      qrEStoque.Params.ParamByName('codproduto').AsString :=eproduto.Text;
    end
    else if cborigem.ItemIndex = 2 then
      qrEStoque.Params.ParamByName('est_con').AsFloat := xestq_con - rqtde.Value
    else if cborigem.ItemIndex = 3  then
    begin
{
      qrEStoque.Params.ParamByName('estoque_atual').AsFloat := xestoque_atual - rqtde.Value;
      qrEStoque.Params.ParamByName('saidas').AsFloat :=  xsaidas + rqtde.Value;
}

    end;

//    qrEstoque.SQL.Add('where codproduto = :codproduto');

    if cbdestino.ItemIndex = 0 then
    begin
      qrEStoque.Params.ParamByName('est_dep').AsFloat := xestq_dep + rqtde.Value;
      qrEStoque.Params.ParamByName('codproduto').AsString :=eproduto.Text;
    end
    else if cbdestino.ItemIndex = 1 then
    begin
      qrEStoque.Params.ParamByName('est_exp').AsFloat := xestq_exp + rqtde.Value;
      qrEStoque.Params.ParamByName('codproduto').AsString :=eproduto.Text;
    end
    else if cbdestino.ItemIndex = 2 then
    begin
      qrEStoque.Params.ParamByName('est_con').AsFloat := xestq_con + rqtde.Value;
      qrEStoque.Params.ParamByName('codproduto').AsString :=eproduto.Text;
    end;

//    ShowMessage(qrEstoque.SQL.Text);
    qrEstoque.ExecSQL;

    frmmodulo.conexao.Commit;

    rqtde.Value := 0;
    runitario.Value := 0;
    rtotal.Value;

    eproduto.SetFocus;



end;

procedure TfrmTranfEstoque.bcancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTranfEstoque.FormShow(Sender: TObject);
begin
  cborigem.ItemIndex := 0;
  cbdestino.ItemIndex := 3;

end;

procedure TfrmTranfEstoque.cbDestinoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmTranfEstoque.cbDestinoExit(Sender: TObject);
begin
  bgravar.setfocus;
end;

end.
