unit prevenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids,
  Wwdbigrd, Wwdbgrid, ExtCtrls, Collection, StdCtrls, Buttons,
  TFlatPanelUnit, Menus, DBGrids, DBCtrls, RxMemDS, AdvGlowButton,
  PageView, AdvShapeButton;

type
  TfrmPrevenda = class(TForm)
    dsorcamento: TDataSource;
    qrproduto: TZQuery;
    qrorcamento_receber: TZQuery;
    qrorcamento: TZQuery;
    qrorcamentoCODIGO: TStringField;
    qrorcamentoDATA: TDateTimeField;
    qrorcamentoTOTAL: TFloatField;
    qrorcamentoRETIRADO: TStringField;
    qrorcamentovendedor: TStringField;
    qrorcamentoCODVENDEDOR: TStringField;
    qrorcamentoCODCAIXA: TStringField;
    qrorcamentoCODCLIENTE: TStringField;
    qrorcamentoOBS: TStringField;
    qrorcamentoMEIO_DINHEIRO: TFloatField;
    qrorcamentoMEIO_CHEQUEAV: TFloatField;
    qrorcamentoMEIO_CHEQUEAP: TFloatField;
    qrorcamentoMEIO_CARTAOCRED: TFloatField;
    qrorcamentoMEIO_CARTAODEB: TFloatField;
    qrorcamentoMEIO_CREDIARIO: TFloatField;
    qrorcamentoSUBTOTAL: TFloatField;
    qrorcamentoDESCONTO: TFloatField;
    qrorcamentoACRESCIMO: TFloatField;
    qrorcamentoCUPOM_FISCAL: TIntegerField;
    qrorcamentoNUMERO_CUPOM_FISCAL: TStringField;
    Timer1: TTimer;
    qrorcamentoTIPO: TIntegerField;
    qrorcamentocliente: TStringField;
    FlatPanel1: TFlatPanel;
    LCODCAIXA: TLabel;
    LCAIXA: TLabel;
    qrcontasreceber: TZQuery;
    qrvenda_contasreceber: TZQuery;
    qrvenda_contasreceberPRESTACAO: TIntegerField;
    qrvenda_contasreceberVENCIMENTO: TDateTimeField;
    qrvenda_contasreceberTIPO: TStringField;
    qrvenda_contasreceberDOCUMENTO: TStringField;
    qrvenda_contasreceberVALOR: TFloatField;
    PopupMenu1: TPopupMenu;
    Fechamento1: TMenuItem;
    Excluir1: TMenuItem;
    Fechar1: TMenuItem;
    Panel1: TPanel;
    qrorcamentoMEIO_CONVENIO: TFloatField;
    etipo: TLabel;
    dsorcamento_produtos: TDataSource;
    Query1: TZQuery;
    eretirado: TLabel;
    qrorcamento_produto: TZQuery;
    qrorcamento_produtoCODIGO: TStringField;
    qrorcamento_produtoCODNOTA: TStringField;
    qrorcamento_produtoCODPRODUTO: TStringField;
    qrorcamento_produtoUNITARIO: TFloatField;
    qrorcamento_produtoTOTAL: TFloatField;
    qrorcamento_produtoICMS: TFloatField;
    qrorcamento_produtoIPI: TFloatField;
    qrorcamento_produtoCFOP: TStringField;
    qrorcamento_produtoDATA: TDateTimeField;
    qrorcamento_produtoNUMERONOTA: TStringField;
    qrorcamento_produtoCODCLIENTE: TStringField;
    qrorcamento_produtoDESCONTO: TFloatField;
    qrorcamento_produtoACRESCIMO: TFloatField;
    qrorcamento_produtoMOVIMENTO: TIntegerField;
    qrorcamento_produtoCODVENDEDOR: TStringField;
    qrorcamento_produtoCODGRADE: TStringField;
    qrorcamento_produtoSERIAL: TStringField;
    qrorcamento_produtoUNIDADE: TStringField;
    qrorcamento_produtoQTDE: TFloatField;
    qrorcamento_produtoVALOR_ICMS: TFloatField;
    qrorcamento_produtoICMS_REDUZIDO: TFloatField;
    qrorcamento_produtoBASE_CALCULO: TFloatField;
    qrorcamento_produtoVALOR_IPI: TFloatField;
    qrorcamento_produtoSITUACAO: TIntegerField;
    lvenda_data: TLabel;
    Visualizar1: TMenuItem;
    rocarCliente1: TMenuItem;
    qrcliente: TRxMemoryData;
    qrclienteNOME: TStringField;
    qrclienteCODIGO: TStringField;
    qrclienteCPF: TStringField;
    qrclienteENDERECO: TStringField;
    qrclienteAPELIDO: TStringField;
    qrclienteBAIRRO: TStringField;
    qrclienteCIDADE: TStringField;
    qrclienteUF: TStringField;
    qrclienteCEP: TStringField;
    qrclienteCOMPLEMENTO: TStringField;
    qrclienteTELEFONE1: TStringField;
    qrclienteCELULAR: TStringField;
    qrclienteRG: TStringField;
    Bevel1: TBevel;
    AdvShapeButton1: TAdvShapeButton;
    Bevel2: TBevel;
    Label11: TLabel;
    Label12: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Label1: TLabel;
    Bevel6: TBevel;
    Label6: TLabel;
    Bevel7: TBevel;
    lvenda: TLabel;
    Label13: TLabel;
    Bevel8: TBevel;
    PageView2: TPageView;
    PageSheet10: TPageSheet;
    PageSheet11: TPageSheet;
    wwDBGrid1: TwwDBGrid;
    Bevel9: TBevel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Bevel10: TBevel;
    bitbtn1: TAdvGlowButton;
    bvisualizar: TAdvGlowButton;
    bimprimir: TAdvGlowButton;
    bitbtn3: TAdvGlowButton;
    btroca_cliente: TAdvGlowButton;
    bitbtn2: TAdvGlowButton;
    wwDBGrid2: TwwDBGrid;
    Panel2: TPanel;
    Bevel11: TBevel;
    Label2: TLabel;
    ltotal_cupom: TLabel;
    Bevel12: TBevel;
    qrapoio: TZQuery;
    qrapoioCODPRODUTO: TStringField;
    qrapoioPRODUTO: TStringField;
    qrapoioCF: TStringField;
    qrapoioSTR: TStringField;
    qrapoioUN: TStringField;
    qrapoioQTDE: TStringField;
    qrapoioUNITARIO: TStringField;
    qrapoioTOTAL: TStringField;
    qrapoioICMS: TStringField;
    qrapoioIPI: TStringField;
    qrapoioIPI_ALIQUOTA: TStringField;
    qrapoioTEXTO1: TStringField;
    qrapoioTEXTO2: TStringField;
    qrapoioTEXTO3: TStringField;
    qrapoioTEXTO4: TStringField;
    qrapoioTEXTO6: TStringField;
    qrapoioTEXTO7: TStringField;
    qrapoioTEXTO8: TStringField;
    qrapoioTEXTO9: TStringField;
    qrapoioTEXTO10: TStringField;
    qrproduto_grade: TZQuery;
    qrproduto_gradeNUMERACAO: TStringField;
    qrproduto_gradeESTOQUE: TFloatField;
    qrproduto_gradeCOR: TStringField;
    qrproduto_gradeCODBARRA: TStringField;
    qrproduto_gradeCODIGO: TStringField;
    qrproduto_gradeCODPRODUTO: TStringField;
    qrorcamento_produtoCOMISSAO: TFloatField;
    Relaodeatendimentos1: TMenuItem;
    qrvenda_contasreceberTERMINAL: TStringField;
    qrorcamento_produtoPRODUTO: TStringField;
    qrorcamento_produtoCODBARRA: TStringField;
    qrorcamento_produtoCST: TStringField;
    qrorcamento_produtoALIQUOTA: TFloatField;
    AbrirGaveta1: TMenuItem;
    PTEF: TFlatPanel;
    bver_limite: TBitBtn;
    lcliente_limite: TLabel;
    Label3: TLabel;
    bincluir_item: TAdvGlowButton;
    bitbtn9: TAdvGlowButton;
    bexcluir_item: TAdvGlowButton;
    IncluirItem1: TMenuItem;
    AlterarItem1: TMenuItem;
    ExcluirItem1: TMenuItem;
    Imprimir1: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure dsorcamentoDataChange(Sender: TObject; Field: TField);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure gridKeyPress(Sender: TObject; var Key: Char);
    procedure bvisualizarClick(Sender: TObject);
    procedure Visualizar1Click(Sender: TObject);
    procedure btroca_clienteClick(Sender: TObject);
    procedure rocarCliente1Click(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Relaodeatendimentos1Click(Sender: TObject);
    procedure PageView2Change(Sender: TObject);
    procedure qrvenda_contasreceberBeforePost(DataSet: TDataSet);
    procedure AbrirGaveta1Click(Sender: TObject);
    procedure bver_limiteClick(Sender: TObject);
    procedure bincluir_itemClick(Sender: TObject);
    procedure bexcluir_itemClick(Sender: TObject);
    procedure bitbtn9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrevenda: TfrmPrevenda;
  limite_disponivel : real;
  cupom_fiscal : boolean;
  cod_apoio : integer;
  continuar : boolean;
  numero_terminal : string;

  spvc_nome, spvc_endereco, spvc_cidade, spvc_bairro, spvc_uf, spvc_cpf : string; // variaveis de armazenamento dos dados clientes para imprimir no cupom fiscal (cliente sem cadastro)

implementation

uses modulo, prevenda_fechamento, principal, loc_cliente, dados_cliente,
  prevenda_fechamento_loja, ecf, xloc_cliente, unFuncoesTEF,
  uiprevenda_item;

{$R *.dfm}

procedure TfrmPrevenda.Timer1Timer(Sender: TObject);
var
  vrecno : integer;
begin
  vrecno := qrorcamento.RecNo;
  qrorcamento.Refresh;
  qrorcamento.RecNo := vrecno;
end;

procedure TfrmPrevenda.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TfrmPrevenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure TfrmPrevenda.FormShow(Sender: TObject);
var  slinha : string;
f : textfile;
begin
   if USA_TEF then
   begin
    ptef.Enabled := true;
    ptef.Color := $0000F900;

        if FileExists(sTEFKoneKPath+'gp.tmp') then
        begin
          begin
           assignfile(f,sTEFKoneKPath+'gp.tmp');
           reset(f);
           readln(f,slinha);
           closefile(f);
          end;
        end;

        if slinha = 'TECBAN' then
        begin
          itefTecban := 1 ;
          sTEFPath := 'C:\TEF_DISC\'
        end
        else
        begin
          sTEFPath := 'C:\TEF_DIAL\';
          itefTecban := 0;
        end;



      TEFVerificaGerenciadorAtivo;
      TEFVerificaArquivosPendentes;
      TEFVerificaOperacaoPendente;
   end
   else
   begin
     ptef.Enabled := false;
   end;


    frmmodulo.qrconfig.open;
    numero_terminal := registro_terminal;
    if numero_terminal = '' then
    begin
      application.messagebox('Não foi configurado o número do terminal! Esta venda será finalizada!','Erro',mb_ok+mb_iconerror);
      close;
      exit;
    end;



  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.sql.clear;
  frmmodulo.qrcliente.sql.Add('select * from c000007 order by nome');
  frmmodulo.qrcliente.Open;

  QRORCAMENTO.CLOSE;
  QRORCAMENTO.SQL.CLEAR;
  QRORCAMENTO.SQL.ADD('SELECT * FROM C000074 WHERE tipo <> 9 ORDER BY CODIGO');
  QRORCAMENTO.OPEN;

  WWDBGRID1.SetFocus;
end;

procedure TfrmPrevenda.wwDBGrid1DblClick(Sender: TObject);
begin
  BitBtn1Click(frmprevenda);


end;

procedure TfrmPrevenda.BitBtn1Click(Sender: TObject);
begin

  JA_ABERTO := FALSE;

  TIMER1.Enabled := FALSE;

 //   qrorcamento_produto.Close;
 //   QRORCAMENTO_PRODUTO.SQL.CLEAR;
 //   QRORCAMENTO_PRODUTO.SQL.ADD('select orc.*, prod.produto, prod.codbarra, prod.cst, prod.aliquota from c000075 orc,');
 //   QRORCAMENTO_PRODUTO.SQL.ADD('c000025 prod where orc.codproduto = prod.codigo and codnota = '''+qrorcamento.fieldbyname('codigo').asstring+''' order by codigo');
 //   QRORCAMENTO_PRODUTO.OPEN;
                                               //202604  09/02/08
  qrorcamento_produto.Close;
  qrorcamento_produto.SQL.Clear;
  qrorcamento_produto.SQL.Add('select orc.*, prod.produto, prod.codbarra, prod.cst, prod.aliquota from c000075 orc,');
  qrorcamento_produto.sql.add('c000025 prod where orc.codproduto = prod.codigo and numeronota = '''+qrorcamento.fieldbyname('codigo').asstring+'''');
  //qrorcamento_produto.SQL.Add('and data = :vdat');
  //qrorcamento_produto.params.ParamByName('vdat').AsDateTime := qrorcamento.fieldbyname('data').AsDateTime;
  qrorcamento_produto.Open;

  if QRORCAMENTO_PRODUTO.RecordCount = 0 then
    begin
      Application.messagebox('Não Há Informação Para Fechamento!','Atenção!',mb_ok+MB_ICONEXCLAMATION);
      exit;
    end;

  FRMMODULO.qrconfig.OPEN;
  IF FRMMODULO.QRCONFIG.FIELDBYNAME('ESTOQUE_NEGATIVO').ASINTEGER = 0 THEN
  BEGIN
    QRORCAMENTO_PRODUTO.First;
    WHILE NOT QRORCAMENTO_PRODUTO.Eof DO
    BEGIN
      Query1.CLOSE;
      QUERY1.SQL.CLEAR;
      QUERY1.SQL.ADD('SELECT ESTOQUE_ATUAL FROM C000100');
      QUERY1.SQL.ADD('WHERE CODPRODUTO = '''+QRORCAMENTO_PRODUTO.FIELDBYNAME('CODPRODUTO').ASSTRING+'''');
      QUERY1.OPEN;
      IF QUERY1.FIELDBYNAME('ESTOQUE_ATUAL').ASFLOAT < QRORCAMENTO_PRODUTO.FIELDBYNAME('QTDE').ASFLOAT THEN
      BEGIN
        APPLICATION.MESSAGEBOX(PANSICHAR('O produto '+qrorcamento_produto.fieldbyname('codproduto').asstring+' - '+
                                                      qrorcamento_produto.fieldbyname('produto').asstring+' não possue estoque suficiente!'+#13+
                                                      'Quantidade vendida: '+qrorcamento_produto.fieldbyname('qtde').asstring+#13+
                                                      'Quantidade em Estoque: '+query1.fieldbyname('estoque_atual').asstring),
                                                      'Estoque',mb_ok+mb_iconerror);
        exit;
      END;
      QRORCAMENTO_PRODUTO.NEXT;
    END;
  END;

  frmmodulo.qrcliente.CLOSE;
  FRMMODULO.QRCLIENTE.SQL.CLEAR;
  FRMMODULO.QRCLIENTE.SQL.ADD('SELECT * FROM C000007 WHERE CODIGO = '''+qrorcamento.fieldbyname('codcliente').asstring+'''');
  FRMMODULO.QRCLIENTE.OPEN;

  qrcontasreceber.close;
  qrcontasreceber.sql.clear;
  qrcontasreceber.sql.add('select SUM(VALOR_ATUAL) TOTAL_CLIENTE from c000049 where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+''' and situacao = 1');
  qrcontasreceber.Open;

  limite_disponivel := FRMMODULO.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT - QRCONTASRECEBER.FIELDBYNAME('TOTAL_CLIENTE').ASFLOAT;

  // verifica limite dos clientes
  bver_limiteClick(frmPrevenda);

  if CONTINUAR = False then
    Exit;

  if prevenda_tipo = '1' then // para o pdv loja
  begin
    frmprevenda_fechamento_loja := tfrmprevenda_fechamento_loja.create(self);
    frmprevenda_fechamento_loja.rsubtotal.value := qrorcamento.fieldbyname('subtotal').asfloat;
    frmprevenda_fechamento_loja.rdesconto2.value := qrorcamento.fieldbyname('desconto').asfloat;
    frmprevenda_fechamento_loja.racrescimo2.value := 0;
    frmprevenda_fechamento_loja.rtotal.value := qrorcamento.fieldbyname('total').asfloat;
    frmprevenda_fechamento_loja.rdinheiro.value := qrorcamento.fieldbyname('meio_dinheiro').asfloat;
    frmprevenda_fechamento_loja.rchequeav.value := qrorcamento.fieldbyname('meio_chequeav').asfloat;
    frmprevenda_fechamento_loja.rchequeap.value := qrorcamento.fieldbyname('meio_chequeap').asfloat;
    frmprevenda_fechamento_loja.rcartaocred.value := qrorcamento.fieldbyname('meio_cartaocred').asfloat;
    frmprevenda_fechamento_loja.rcartaodeb.value := qrorcamento.fieldbyname('meio_cartaodeb').asfloat;
    frmprevenda_fechamento_loja.rcrediario.value := qrorcamento.fieldbyname('meio_crediario').asfloat;
    frmprevenda_fechamento_loja.showmodal;
  end
  else
  begin
    frmprevenda_fechamento := tfrmprevenda_fechamento.create(self);
    frmprevenda_fechamento.rsubtotal.value := qrorcamento.fieldbyname('subtotal').asfloat;
    frmprevenda_fechamento.rdesconto2.value := qrorcamento.fieldbyname('desconto').asfloat;
    frmprevenda_fechamento.racrescimo2.value := qrorcamento.fieldbyname('acrescimo').asfloat;
    frmprevenda_fechamento.rtotal.value := qrorcamento.fieldbyname('total').asfloat;

    frmprevenda_fechamento.rdinheiro.value := qrorcamento.fieldbyname('meio_dinheiro').asfloat;
    frmprevenda_fechamento.rchequeav.value := qrorcamento.fieldbyname('meio_chequeav').asfloat;
    frmprevenda_fechamento.rchequeap.value := qrorcamento.fieldbyname('meio_chequeap').asfloat;
    frmprevenda_fechamento.rcartaocred.value := qrorcamento.fieldbyname('meio_cartaocred').asfloat;
    frmprevenda_fechamento.rcartaodeb.value := qrorcamento.fieldbyname('meio_cartaodeb').asfloat;
    frmprevenda_fechamento.rcrediario.value := qrorcamento.fieldbyname('meio_crediario').asfloat;
    frmprevenda_fechamento.rconvenio.value := qrorcamento.fieldbyname('meio_convenio').asfloat;

    frmprevenda_fechamento.showmodal;
  end;

  frmmodulo.qrcliente.CLOSE;
  FRMMODULO.QRCLIENTE.SQL.CLEAR;
  FRMMODULO.QRCLIENTE.SQL.ADD('SELECT * FROM C000007');
  FRMMODULO.QRCLIENTE.OPEN;

  FRMMODULO.QRPRODUTO.CLOSE;
  FRMMODULO.QRPRODUTO.SQL.CLEAR;
  FRMMODULO.QRPRODUTO.SQL.ADD('SELECT * FROM C000025');
  FRMMODULO.QRPRODUTO.OPEN;

  TIMER1.ENABLED := TRUE;

  QRORCAMENTO.CLOSE;
  QRORCAMENTO.SQL.CLEAR;
  QRORCAMENTO.SQL.ADD('SELECT * FROM C000074 where tipo <> 9 ORDER BY CODIGO');
  QRORCAMENTO.OPEN;

  if qrcliente.RecordCount > 0 then qrcliente.Delete;

  WWDBGRID1.SetFocus;





end;

procedure TfrmPrevenda.BitBtn2Click(Sender: TObject);
begin

  TIMER1.Enabled := FALSE;


  if frmprincipal.autentica('Excluir PRE-VENDA',4) then
  begin
    QRORCAMENTO_PRODUTO.Close;
    QRORCAMENTO_PRODUTO.SQL.Clear;
    QRORCAMENTO_PRODUTO.SQL.ADD('DELETE FROM C000075 WHERE CODNOTA = '''+qrorcamento.fieldbyname('codigo').asstring+'''');
    QRORCAMENTO_PRODUTO.EXECSQL;
    QRORCAMENTO.DELETE;
    FRMMODULO.Conexao.Commit;

  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;








  TIMER1.Enabled := true;
end;

procedure TfrmPrevenda.Edit1KeyPress(Sender: TObject; var Key: Char);
var cod : string;
begin
  if key = #13 then
  begin
     cod := frmPrincipal.zerarcodigo(edit1.text,6);
     qrorcamento.locate('codigo',cod,[loPartialKey]);
  end;
end;

procedure TfrmPrevenda.dsorcamentoDataChange(Sender: TObject;
  Field: TField);
begin
  if qrorcamento.FieldByName('MEIO_CONVENIO').AsFloat > 0 then
    etipo.Caption := 'CONVÊNIO'
  else if qrorcamento.FieldByName('MEIO_CREDIARIO').AsFloat > 0 then
    etipo.Caption := 'CREDIÁRIO'
  else if qrorcamento.FieldByName('MEIO_DINHEIRO').AsFloat > 0 then
    etipo.Caption := 'DINHEIRO'
  else if qrorcamento.FieldByName('MEIO_CHEQUEAV').AsFloat > 0 then
    etipo.Caption := 'CH.VISTA'
  else if qrorcamento.FieldByName('MEIO_CHEQUEAP').AsFloat > 0 then
    etipo.Caption := 'CH.PRAZO'
  else if qrorcamento.FieldByName('MEIO_CARTAOCRED').AsFloat > 0 then
    etipo.Caption := 'CARTÃO CRÉDITO'
  else if qrorcamento.FieldByName('MEIO_CARTAODEB').AsFloat > 0 then
    etipo.Caption := 'CARTÃO DÉBITO'
  else
    etipo.Caption := '';

  eretirado.Caption := qrorcamento.FieldByName('RETIRADO').AsString;
  lvenda_data.Caption := qrorcamento.FieldByName('DATA').AsString;
  lvenda.caption := qrorcamento.fieldbyname('codigo').asstring;

end;

procedure TfrmPrevenda.wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  bvisualizarClick(frmprevenda);
end;

procedure TfrmPrevenda.gridKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin

  end;

end;

procedure TfrmPrevenda.bvisualizarClick(Sender: TObject);
begin
     pageview2.ActivePageIndex := 1;
end;

procedure TfrmPrevenda.Visualizar1Click(Sender: TObject);
begin
  bvisualizarClick(frmPrevenda);
end;

procedure TfrmPrevenda.btroca_clienteClick(Sender: TObject);
begin
  if Application.messagebox(pchar('CLIENTE ATUAL : ' + qrorcamento.fieldbyname('cliente').asstring + #13 +
  '      Deseja Realmente Fazer a Troca Desse Cliente?'),'Pré-Venda',mb_yesno+mb_iconquestion) = idYes then
    begin


      RESULTADO_PESQUISA1 := '';



      frmXloc_cliente := TfrmXloc_cliente.create(self);
      frmXloc_cliente.showmodal;




      IF RESULTADO_PESQUISA1 <> '' THEN
      BEGIN
        qrorcamento.Edit;
        qrorcamentoCODCLIENTE.AsString := RESULTADO_PESQUISA1;
        qrorcamento.Post;
        QUERY1.CLOSE;
        QUERY1.SQL.CLEAR;
        QUERY1.SQL.ADD('UPDATE C000075 SET CODCLIENTE = '''+RESULTADO_PESQUISA1+'''');
        QUERY1.SQL.ADD('WHERE numeronota = '''+qrorcamento.fieldbyname('codigo').asstring+'''');
        QUERY1.SQL.Add('and data = :vdat');
        QUERY1.params.ParamByName('vdat').AsDateTime := qrorcamento.fieldbyname('data').AsDateTime;
        QUERY1.EXECSQL;
        frmmodulo.Conexao.Commit;
      END;
    end;

    wwDBGrid1.SetFocus;
end;

procedure TfrmPrevenda.rocarCliente1Click(Sender: TObject);
begin
  btroca_clienteClick(frmPrevenda);
end;

procedure TfrmPrevenda.bimprimirClick(Sender: TObject);
begin
  qrcliente.Open;
  if qrcliente.RecordCount = 0 then
    begin
      FRMMODULO.QRCLIENTE.SQL.CLEAR;
      FRMMODULO.QRCLIENTE.SQL.ADD('SELECT * FROM C000007 WHERE CODIGO = '''+qrorcamento.fieldbyname('codcliente').asstring+'''');
      FRMMODULO.QRCLIENTE.OPEN;
      if FRMMODULO.QRCLIENTE.RecordCount > 0 then
        begin
          qrcliente.Insert;
          qrcliente.fieldbyname('codigo').asstring := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
          qrcliente.fieldbyname('nome').asstring := frmmodulo.qrcliente.fieldbyname('nome').asstring;
          qrcliente.fieldbyname('endereco').asstring := frmmodulo.qrcliente.fieldbyname('endereco').asstring;
          qrcliente.fieldbyname('complemento').asstring := frmmodulo.qrcliente.fieldbyname('complemento').asstring;
          qrcliente.fieldbyname('bairro').asstring := frmmodulo.qrcliente.fieldbyname('bairro').asstring;
          qrcliente.fieldbyname('cidade').asstring := frmmodulo.qrcliente.fieldbyname('cidade').asstring;
          qrcliente.fieldbyname('uf').asstring := frmmodulo.qrcliente.fieldbyname('uf').asstring;
          qrcliente.fieldbyname('cpf').asstring := frmmodulo.qrcliente.fieldbyname('cpf').asstring;
          qrcliente.fieldbyname('rg').asstring := frmmodulo.qrcliente.fieldbyname('rg').asstring;
          qrcliente.Post;
        end;
      qrcliente.Open;
    end;

  if qrcliente.RecordCount > 0 then
    begin
      qrcliente.Edit;
      frmdados_cliente := tfrmdados_cliente.create(self);
      frmdados_cliente.showmodal;
    end
  else
    Application.messagebox('Não Há Informação Para Imprimir!','Atenção!',mb_ok+MB_ICONEXCLAMATION);

end;

procedure TfrmPrevenda.Imprimir1Click(Sender: TObject);
begin
  bimprimirClick(frmPrevenda);
end;

procedure TfrmPrevenda.Relaodeatendimentos1Click(Sender: TObject);
begin
  PageView2.ActivePageIndex := 0;
end;

procedure TfrmPrevenda.PageView2Change(Sender: TObject);
begin


  if pageview2.ActivePageIndex = 1 then
  begin

    qrorcamento_produto.Close;
    qrorcamento_produto.SQL.Clear;
    qrorcamento_produto.SQL.Add('select orc.*, prod.produto, prod.codbarra, prod.cst, prod.aliquota from c000075 orc,');
    qrorcamento_produto.sql.add('c000025 prod where orc.codproduto = prod.codigo and numeronota = '''+qrorcamento.fieldbyname('codigo').asstring+'''');
    // - Tirei a data do filtro, pq gostaria de registrar a data em que o novo item foi incluido!
    //  Para que se saiba quais são os itens novos e quais são os itens do orçamento original.
   // qrorcamento_produto.SQL.Add('and data = :vdat');
   // qrorcamento_produto.params.ParamByName('vdat').AsDateTime := qrorcamento.fieldbyname('data').AsDateTime;
    qrorcamento_produto.Open;

    if qrorcamento_produto.RecordCount = 0 then
      begin
        Application.messagebox('Não Há Informação Para Visualizar!','Atenção!',mb_ok+MB_ICONEXCLAMATION);
        exit;
      end;
    if qrorcamento.RecordCount > 0 then
      begin
      if qrorcamento.FieldByName('MEIO_CONVENIO').AsFloat > 0 then
          etipo.Caption := 'CONVÊNIO'
      else if qrorcamento.FieldByName('MEIO_CREDIARIO').AsFloat > 0 then
          etipo.Caption := 'CREDIÁRIO'
      else if qrorcamento.FieldByName('MEIO_DINHEIRO').AsFloat > 0 then
          etipo.Caption := 'DINHEIRO'
      else if qrorcamento.FieldByName('MEIO_CHEQUEAV').AsFloat > 0 then
          etipo.Caption := 'CH.VISTA'
      else if qrorcamento.FieldByName('MEIO_CHEQUEAP').AsFloat > 0 then
          etipo.Caption := 'CH.PRAZO'
      else if qrorcamento.FieldByName('MEIO_CARTAOCRED').AsFloat > 0 then
          etipo.Caption := 'CARTÃO CRÉDITO'
      else if qrorcamento.FieldByName('MEIO_CARTAODEB').AsFloat > 0 then
          etipo.Caption := 'CARTÃO DÉBITO'
      else
          etipo.Caption := '';

     eretirado.Caption := qrorcamento.FieldByName('RETIRADO').AsString;
     Ltotal_cupom.Caption := FORMATFLOAT('###,###,##0.00',qrorcamento.FIELDBYNAME('TOTAL').ASFLOAT);





      end;
  end;
end;

procedure TfrmPrevenda.qrvenda_contasreceberBeforePost(DataSet: TDataSet);
begin
  qrvenda_contasreceber.fieldbyname('terminal').asstring := numero_terminal;
end;

procedure TfrmPrevenda.AbrirGaveta1Click(Sender: TObject);
begin
  ecf_abre_gaveta(ecf_modelo);
end;

procedure TfrmPrevenda.bver_limiteClick(Sender: TObject);
var texto : pansichar;
Data: TDateTime;
dia, mes, ano: Word;

begin
    ////////


  CONTINUAR := TRUE;
  qrcontasreceber.close;
  qrcontasreceber.sql.clear;
  qrcontasreceber.sql.add('select SUM(VALOR_ATUAL) TOTAL_CLIENTE from c000049 where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+''' and situacao = 1');
  qrcontasreceber.Open;

  limite_disponivel := FRMMODULO.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT - QRCONTASRECEBER.FIELDBYNAME('TOTAL_CLIENTE').ASFLOAT;

  lcliente_limite.caption := formatfloat('###,###,##0.00',(FRMMODULO.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT - QRCONTASRECEBER.FIELDBYNAME('TOTAL_CLIENTE').ASFLOAT));

  FRMMODULO.QRCONFIG.OPEN;
  IF FRMMODULO.QRCONFIG.FieldByName('VENDA_LIMITE_CLIENTE').ASINTEGER = 1 THEN
  BEGIN
      if (frmmodulo.qrcliente.FieldByName('situacao').asinteger = 3)  then
      begin
        texto := pansichar('Cliente com crédito bloqueado!, Deseja continuar?');
        if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONERROR) = idyes then
        begin
          if not frmPrincipal.autentica('Liberar venda',4) then
          begin
            application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
            bitbtn1.SetFocus;
            CONTINUAR := FALSE;
            exit;
          end;
        end
        else
        begin
          bitbtn1.setfocus;
          CONTINUAR := FALSE;
          exit;

        end;

      end
      ELSE
      BEGIN
        if (frmmodulo.qrcliente.FieldByName('situacao').asinteger = 2)  then
        begin

          texto := pansichar('Cliente com crédito em Observação!, Deseja continuar?');
          if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONERROR) = idyes then
          begin
            if not frmPrincipal.autentica('Liberar venda',4) then
            begin
              application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
              bitbtn1.SetFocus;
              CONTINUAR := FALSE;
              exit;
            end;
          end
          else
          begin
            bitbtn1.setfocus;
            CONTINUAR := FALSE;
            exit;

          end;
        END
        ELSE
        BEGIN
          if (frmmodulo.qrcliente.FieldByName('situacao').asinteger = 5)  then
          begin
            texto := pansichar('Cliente com nome no SPC!, Deseja continuar?');
            if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONERROR) = idyes then
            begin
              if not frmPrincipal.autentica('Liberar venda',4) then
              begin
                application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
                bitbtn1.SetFocus;
                CONTINUAR := FALSE;
                exit;
              end;
            end
            else
            begin
              //Ecliente.TEXT := '';
              bitbtn1.setfocus;
              CONTINUAR := FALSE;
              exit;
            end;
          END;
        end;
      END;
  end;


     if FRMMODULO.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT <> 0 then
      begin
        IF limite_disponivel <= 0 THEN
        BEGIN
          texto := pansichar('Este cliente possue um limite disponível de:'+#13+' ---> R$ '+lcliente_limite.caption+'  <--- '+#13+'É necessário autorização para prosseguir! '+#13+'Deseja continuar?');
          if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
            begin
              if not frmPrincipal.autentica('Liberar venda',4) then
              begin
                application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
                bitbtn1.SetFocus;
                CONTINUAR := FALSE;
                exit;
              end
              else
              begin
                //comboforma.SetFocus;
                exit;
              end;
            end
          else
            begin
              bitbtn1.SetFocus;
              CONTINUAR := FALSE;
              exit;
          end;
        END;
    END;

    /////////

end;

procedure TfrmPrevenda.bincluir_itemClick(Sender: TObject);
begin
   frmmodulo.qrconfig.Open;
   IF FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'PECAS' then
   BEGIN
     IF VENDA_VEICULO THEN
     BEGIN
       application.messagebox('Venda de veículo não pode conter outros produtos!','Atenção',mb_ok+mb_iconerror);
       exit;
     END;
  END;


        frmprevenda_item := tfrmprevenda_item.create(self);
        frmprevenda_item.setCodNota(qrorcamentoCODIGO.AsString );
        frmprevenda_item.setCodVendedor(qrorcamentoCODVENDEDOR.AsString);
        frmprevenda_item.setCodCliente(qrorcamentoCODCLIENTE.AsString );
        frmprevenda_item.setOperacao('I');
        frmprevenda_item.showmodal;


 qrorcamento_produto.Refresh;
 qrorcamento.Refresh;

 Ltotal_cupom.Caption := FORMATFLOAT('###,###,##0.00',qrorcamento.FIELDBYNAME('TOTAL').ASFLOAT);

 
end;

procedure TfrmPrevenda.bexcluir_itemClick(Sender: TObject);

var
  qry,qry2:TZQuery;

begin
  if frmprincipal.autentica('Excluir item',4) then
  begin
      qry:=TZQuery.Create(self);
      qry.Connection:=frmmodulo.Conexao;

      qry2:=TZQuery.Create(self);
      qry2.Connection:=frmmodulo.Conexao;


      qry.Close;
      qry.SQL.Clear;
      qry.SQL.ADD('DELETE FROM C000075 WHERE CODNOTA = '+QuotedStr(qrorcamento.fieldbyname('codigo').asstring)+' and codigo = '+QuotedStr(qrorcamento_produto.fieldbyname('codigo').asstring) );
      qry.EXECSQL;
    FRMMODULO.Conexao.Commit;

       qry2.SQL.Text:='select sum(total) as total, sum(desconto) as desconto, sum(acrescimo) as acrescimo from  c000075 where codnota = '+QuotedStr(qrorcamento.fieldbyname('codigo').asstring);
       qry2.Open;

       qry.SQL.Text:='update c000074 set subtotal = :subtotal, desconto = :desconto, acrescimo = :acrescimo, TOTAL = :total where codigo = '+QuotedStr(qrorcamento.fieldbyname('codigo').asstring);
       qry.ParamByName('total').AsFloat:=qry2.fieldByName('total').AsFloat;
       qry.ParamByName('desconto').AsFloat:=qry2.fieldByName('desconto').AsFloat;
       qry.ParamByName('acrescimo').AsFloat:=qry2.fieldByName('acrescimo').AsFloat;
       qry.ParamByName('subtotal').AsFloat:=(qry2.fieldByName('total').AsFloat-qry2.fieldByName('desconto').AsFloat)+qry2.fieldByName('acrescimo').AsFloat;


      qry.ExecSQL;

      frmmodulo.Conexao.Commit;

      FreeAndNil(qry);
      FreeAndNil(qry2);

      qrorcamento.Refresh;
      qrorcamento_produto.Refresh;

      Ltotal_cupom.Caption := FORMATFLOAT('###,###,##0.00',qrorcamento.FIELDBYNAME('TOTAL').ASFLOAT);
      
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;

end;

procedure TfrmPrevenda.bitbtn9Click(Sender: TObject);
begin

   frmmodulo.qrconfig.Open;
   IF FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'PECAS' then
   BEGIN
     IF VENDA_VEICULO THEN
     BEGIN
       application.messagebox('Venda de veículo não pode conter outros produtos!','Atenção',mb_ok+mb_iconerror);
       exit;
     END;
  END;

        if qrorcamento_produtoCODIGO.isNull then
        begin
           application.messagebox('Nenhum item selecionado para alteração!','Atenção',mb_ok+mb_iconerror);
           exit;
        end;

        frmprevenda_item := tfrmprevenda_item.create(self);
        frmprevenda_item.setCodNota(qrorcamentoCODIGO.AsString );
        frmprevenda_item.setCodVendedor(qrorcamentoCODVENDEDOR.AsString);
        frmprevenda_item.setCodCliente(qrorcamentoCODCLIENTE.AsString );
        frmprevenda_item.setCodigo(qrorcamento_produtoCODIGO.AsString );
        frmprevenda_item.setCodProduto(qrorcamento_produtoCODPRODUTO.AsString );
        frmprevenda_item.setOperacao('A');

        frmprevenda_item.showmodal;


 qrorcamento_produto.Refresh;
 qrorcamento.Refresh;

 Ltotal_cupom.Caption := FORMATFLOAT('###,###,##0.00',qrorcamento.FIELDBYNAME('TOTAL').ASFLOAT);


end;

end.

