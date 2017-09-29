unit Transferencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, AdvGlowButton, TFlatPanelUnit, Mask, RzEdit,
  RzBtnEdt, ToolEdit, CurrEdit, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset;

type
  TfrmTransferencia = class(TForm)
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    pficha: TFlatPanel;
    Label14: TLabel;
    Bevel1: TBevel;
    Label4: TLabel;
    edit1: TRzButtonEdit;
    Label17: TLabel;
    Edit3: TEdit;
    Label1: TLabel;
    edit4: TRzButtonEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    rdebito: TRxCalcEdit;
    qrReceber: TZQuery;
    qrApoio: TZQuery;
    procedure bcancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edit4ButtonClick(Sender: TObject);
    procedure edit4Enter(Sender: TObject);
    procedure edit4KeyPress(Sender: TObject; var Key: Char);
    procedure edit4Exit(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure rdebitoEnter(Sender: TObject);
    procedure rdebitoExit(Sender: TObject);
    procedure rdebitoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTransferencia: TfrmTransferencia;
  xvaltransf: double;
  xdataemissao, xdatavencimento : TDateTime;
  xnovovaltransf : double;

implementation

uses contasreceber, xloc_cliente, modulo, principal;

{$R *.dfm}

procedure TfrmTransferencia.bcancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTransferencia.FormShow(Sender: TObject);
begin
  xdataemissao    := frmcontasreceber.qrcontasreceber.fieldbyname('data_emissao').AsDateTime;
  xdatavencimento := frmcontasreceber.qrcontasreceber.fieldbyname('data_vencimento').AsDateTime;
  xvaltransf := frmcontasreceber.rselecao.Value;
  edit1.Text := frmcontasreceber.edit1.Text;
  edit3.Text := frmcontasreceber.edit3.Text;
  rdebito.Value := frmcontasreceber.rselecao.Value;
  edit4.SetFocus;

end;

procedure TfrmTransferencia.edit4ButtonClick(Sender: TObject);
begin
  frmXloc_cliente := tfrmXloc_cliente.create(self);
  frmXloc_cliente.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
      edit4.text := resultado_pesquisa2;
      edit2.text := resultado_pesquisa1;
      FRMMODULO.QRCLIENTE.CLOSE;
      FRMMOdULO.QRCLIENTE.SQL.CLEAR;
      FRMMODULO.QRCLIENTe.SQL.ADD('select * from c000007 where codigo = '''+resultado_pesquisa1+'''');
      FRMMODULO.qrcliente.OPEN;
   end
   else
   begin
     edit4.setfocus;
   end;

end;

procedure TfrmTransferencia.edit4Enter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;

end;

procedure TfrmTransferencia.edit4KeyPress(Sender: TObject; var Key: Char);
var xcli : string;
begin
//  if key = #13 then perform(wm_nextdlgctl,0,0);

  if key = #13 then
  begin
    xcli := frmprincipal.zerarcodigo(eDIT4.text,6);
    if xcli <> '000000' then
    begin
      FRMMODULO.QRCLIENTE.CLOSE;
      FRMMOdULO.QRCLIENTE.SQL.CLEAR;
      FRMMODULO.QRCLIENTe.SQL.ADD('select * from c000007 where codigo = '''+xcli+''' order by nome');
      FRMMODULO.qrcliente.OPEN;
      IF FRMMODULO.qrcliente.RecNo = 1 THEN
      BEGIN
        edit4.text := frmmodulo.qrcliente.fieldbyname('nome').asstring;

        resultado_pesquisa1 := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
        edit2.text := resultado_pesquisa1;
        exit;
      END;
    end;
    FRMMODULO.QRCLIENTE.CLOSE;
    FRMMOdULO.QRCLIENTE.SQL.CLEAR;
    FRMMODULO.QRCLIENTe.SQL.ADD('select * from c000007 where upper(nome) like '''+ANSIUPPERCASE(edit4.text)+'%'' order by nome');
    FRMMODULO.qrcliente.OPEN;
    if frmmodulo.qrcliente.recordcount > 0 then
    begin
      if frmmodulo.qrcliente.RecordCount = 1 then
      begin
        edit4.text := frmmodulo.qrcliente.fieldbyname('nome').asstring;
        edit2.Text := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
//        bfiltrarClick(frmcontasreceber);
        exit;
      end
      else
      begin
        parametro_pesquisa := frmmodulo.qrcliente.sql.text;
        frmXloc_cliente := tfrmXloc_cliente.create(self);
        frmXloc_cliente.showmodal;

        if resultado_pesquisa1 <> '' then
        begin
          edit4.text := RESULTADO_PESQUISA2;
          edit2.text := resultado_pesquisa1;

          FRMMODULO.QRCLIENTE.CLOSE;
          FRMMOdULO.QRCLIENTE.SQL.CLEAR;
          FRMMODULO.QRCLIENTe.SQL.ADD('select * from c000007 where codigo = '''+resultado_pesquisa1+'''');
          FRMMODULO.qrcliente.OPEN;

//          bfiltrarClick(frmcontasreceber);
          exit;
        end;
      end;
      perform(wm_nextdlgctl,0,0); 
   end
   else
   begin
      application.messagebox('Cliente não encontrado!','Atenção!', MB_OK+MB_ICONERROR);
      edit4.setfocus;
      exit;
    end;
  end;

end;

procedure TfrmTransferencia.edit4Exit(Sender: TObject);
begin
 tedit(sender).color := clwindow;

end;

procedure TfrmTransferencia.bgravarClick(Sender: TObject);
var
  xdoc, xcliente, jalancado : string;
  xvalorbaixa : double;
begin
  xvalorbaixa := 0;
  jalancado := 'N';
  xdoc := '';
  xcliente := '';

  frmcontasreceber.QRCr.First;
  While not frmcontasreceber.QRCr.eof do
  begin
    if frmcontasreceber.QRCr.FieldByName('filtro').AsInteger = 1 then
    begin
      xdoc := frmcontasreceber.QRCr.fieldbyname('codigo').AsString;
      xcliente := frmcontasreceber.edit3.Text;
//      xvalorbaixa := xvalorbaixa +  frmcontasreceber.QRCr.fieldbyname('restante').AsFloat;
//      ShowMessage(xdoc);
//      ShowMessage(xcliente);

      if rdebito.value < xvaltransf then
      begin
        qrReceber.Close;
        qrReceber.SQL.Clear;
        qrReceber.SQL.Add('select * from c000049');
        qrReceber.Open;

        if jalancado = 'N' then
        begin
          qrReceber.Insert;
          qrReceber.fieldbyname('codigo').asstring := frmprincipal.codifica('000049')+'/TRA';
          qrReceber.fieldbyname('codvendedor').asstring := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
          qrReceber.fieldbyname('codcliente').AsString := edit2.Text;
          qrReceber.fieldbyname('data_emissao').AsDateTime := xdataemissao;
          qrReceber.fieldbyname('data_vencimento').AsDateTime := xdatavencimento;
          qrReceber.fieldbyname('situacao').asinteger := 1;
          qrReceber.fieldbyname('filtro').asinteger := 0;
          qrReceber.fieldbyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
          qrReceber.fieldbyname('valor_original').asfloat := rdebito.value;
          qrReceber.fieldbyname('valor_atual').asfloat := rdebito.value;
          qrReceber.fieldbyname('posto').asinteger := 1;
          qrReceber.Post;
          jalancado := 'S';
        end;

        qrApoio.Close;
        qrApoio.SQL.Clear;
        qrApoio.SQL.Add('select * from c000049 where codigo = :codigo and codcliente = :codcliente and situacao = 1');
        qrApoio.Params.ParamByName('codigo').AsString := xdoc;
        qrApoio.Params.ParamByName('codcliente').AsString := xcliente;
        qrApoio.Open;

        if qrApoio.RecordCount > 0 then
        begin
          if xvalorbaixa < xnovovaltransf then
          begin
            xvalorbaixa := xvalorbaixa + qrApoio.fieldbyname('valor_atual').AsFloat;
            if xvalorbaixa <= xnovovaltransf then
            begin
                qrApoio.Delete;
            end
            else if xvalorbaixa > xnovovaltransf then
            begin
              qrApoio.Edit;
              qrApoio.fieldbyname('valor_atual').AsFloat := (xvalorbaixa - xnovovaltransf);
              qrApoio.Post;
            end;
          end;
        end;
      end
      else
      begin
        qrReceber.Close;
        qrReceber.SQL.Clear;
        qrReceber.SQL.Add('select * from c000049 where codigo = :codigo and codcliente = :codcliente and situacao = 1');
        qrReceber.Params.ParamByName('codigo').AsString := xdoc;
        qrReceber.Params.ParamByName('codcliente').AsString := xcliente;
        qrReceber.Open;

        if qrReceber.RecordCount > 0 then
        begin
          qrReceber.Edit;
          qrReceber.fieldbyname('codcliente').AsString := edit2.Text;
          qrReceber.Post;
       end;
      end;
    end;
      frmcontasreceber.QRCr.Next;
  end;
  frmmodulo.Conexao.Commit;
  Close;
end;

procedure TfrmTransferencia.rdebitoEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;

end;

procedure TfrmTransferencia.rdebitoExit(Sender: TObject);
begin
 tedit(sender).color := clwindow;
 bgravar.setfocus;
 xnovovaltransf := rdebito.Value;
end;

procedure TfrmTransferencia.rdebitoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

end.
