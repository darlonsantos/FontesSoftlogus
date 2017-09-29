unit principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, IBC, IbDacVcl, StdCtrls, ExtCtrls, Buttons,
  Grids, Wwdbigrd, Wwdbgrid, Mask, RzEdit, ComCtrls, IBServices;

type
  Tbalanco = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    lservidor: TLabel;
    Label3: TLabel;
    lbase: TLabel;
    Label5: TLabel;
    lsituacao: TLabel;
    Button1: TButton;
    config: TIBCConnectDialog;
    eConexao: TIBCConnection;
    qrproduto: TIBCQuery;
    Panel2: TPanel;
    Bevel2: TBevel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    loc: TRzEdit;
    grid: TwwDBGrid;
    Bevel3: TBevel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    dsproduto: TIBCDataSource;
    query: TIBCQuery;
    query2: TIBCQuery;
    query3: TIBCQuery;
    qrprodutoCODIGO: TStringField;
    qrprodutoCODBARRA: TStringField;
    qrprodutoPRODUTO: TStringField;
    qrprodutoUNIDADE: TStringField;
    qrprodutoESTOQUE: TFloatField;
    qrprodutoPRECOVENDA: TFloatField;
    Button3: TButton;
    qrprodutoSITUACAO: TIntegerField;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    efiltro: TRzEdit;
    barra: TProgressBar;
    Backup: TIBBackupService;
    Button2: TButton;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure eConexaoAfterConnect(Sender: TObject);
    procedure eConexaoAfterDisconnect(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure locChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure gridTitleButtonClick(Sender: TObject; AFieldName: String);
    procedure Button3Click(Sender: TObject);
    procedure efiltroChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    function efetua_Backup:boolean;
  public
    { Public declarations }
  end;

var
  balanco: Tbalanco;

implementation

{$R *.dfm}

function Tbalanco.Efetua_Backup:boolean;
begin
  //DARLON SANTOS ALTER��O NA LINHA DE BACKUP
    {
  try

    eConexao.Connected := false;
    Backup.DatabaseName := eConexao.Database;
    BAckup.ServerName   := eConexao.Server;
    application.ProcessMessages;

    Backup.BackupFile.Clear;
    Backup.BackupFile.Add(ChangeFileExt('\VISION\server\bkp\' + FormatDateTime('yyyymmddnnhh', now), '.fbk'));
    Backup.Active := true;

    listbox1.Clear;
    listbox1.Items.Add(Format('Backup Iniciado �s %s horas', [FormatDateTime('hh:nn:ss', now)]));
    listbox1.Items.add('Local: \VISION\server\bkp\');

    listbox1.visible := true;
    application.ProcessMessages;

    Backup.ServiceStart;
    While not BackUp.Eof do
    begin
      listbox1.Items.add(BackUp.GetNextLine);
      ListBox1.Update;
      ListBox1.ItemIndex := ListBox1.Items.Count -1;

      Application.ProcessMessages;
    end;
    Backup.Active := false;
    listbox1.items.add(Format('Backup Finalizado �s %s horas', [FormatDateTime('hh:nn:ss', now)]));
    showmessage('Processamento finalizado!');
    econexao.Connected := true;
    listbox1.visible := false;
    application.processmessages;
    result := true;

  except
    result := false;
  end;
       }


end;



procedure Tbalanco.Button1Click(Sender: TObject);
begin
  if config.Execute then
  begin
    lservidor.caption := eConexao.server;
    lbase.caption := eConexao.Database;


    qrproduto.close;
    qrproduto.sql.clear;
    qrproduto.SQL.add('select codigo, situacao, codbarra, produto, unidade, estoque, precovenda');
    qrproduto.sql.add('from c000025');
    qrproduto.sql.add('order by produto');
    qrproduto.open;
  end;
end;

procedure Tbalanco.eConexaoAfterConnect(Sender: TObject);
begin
  lsituacao.Caption := 'Conectado';
  lsituacao.Font.Color := clblue;
end;

procedure Tbalanco.eConexaoAfterDisconnect(Sender: TObject);
begin
  lsituacao.Caption := 'Desconectado';
  lsituacao.Font.Color := clRed;
end;

procedure Tbalanco.FormShow(Sender: TObject);
var txt : textfile;
entrada : string;
begin
  econexao.Connected := false;
  assignfile(txt,'c:\Softlogus\server\dll\com.ini');
  reset(txt);
  while not eof(txt) do
  begin
    readln(txt,entrada);
    if copy(entrada,1,7) = '999-001' then econexao.database := trim(copy(entrada,9,50));
    if copy(entrada,1,7) = '999-002' then econexao.Server   := trim(copy(entrada,9,50));
  end;
  try
    econexao.Connected := true;
  except
    lsituacao.Caption := 'N�o conectado';
    lsituacao.Font.color := clred;
  end;

  closefile(txt);

  lservidor.caption := econexao.Server;
  lbase.caption := econexao.Database;

  if econexao.connected then
  begin
    application.ProcessMessages;

{    if application.messagebox('Deseja ajustar o estoque?','Aviso',mb_yesno+mb_iconquestion) = idyes then
    begin
      query.close;
      query.sql.clear;
      query.sql.add('select * from c000100 order by codproduto');
      query.open;
      query.first;
      while not query.eof do
      begin
        query2.close;
        query2.sql.clear;
        query2.sql.add('update c000025 set estoque = :estoque');
        query2.sql.add('where codigo = '''+query.fieldbyname('codproduto').asstring+'''');
        query2.params.ParamByName('estoque').asfloat := query.fieldbyname('estoque_atual').asfloat;
        query2.ExecSQL;
        query.next;
      end;
      econexao.commit;
      econexao.Connected := true;
    end;

}    qrproduto.close;
    qrproduto.sql.clear;
    qrproduto.SQL.add('select codigo, situacao, codbarra, produto, unidade, estoque, precovenda');
    qrproduto.sql.add('from c000025');
    qrproduto.sql.add('order by produto');
    qrproduto.open;



    grid.setfocus;
  end;

end;

procedure Tbalanco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  econexao.Connected := false;
  action := cafree;
end;

procedure Tbalanco.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure Tbalanco.locChange(Sender: TObject);
begin
  if combobox1.itemindex = 0 then qrproduto.locate('produto',loc.text,[loPartialKey]);
  if combobox1.itemindex = 1 then qrproduto.locate('codigo',loc.text,[loPartialKey]);
  if combobox1.itemindex = 2 then qrproduto.locate('codbarra',loc.text,[loPartialKey]);
end;

procedure Tbalanco.BitBtn2Click(Sender: TObject);
var cod : integer;
codx : string;
begin
  if application.messagebox('Confirma o zeramento do estoque?','Aviso',mb_yesno+mb_iconwarning) = idyes then
  begin


      query.close;
      query.sql.clear;
      query.sql.add('select sequencia from c000000 where codigo = ''000032''');
      query.open;
      cod := query.fieldbyname('sequencia').asinteger + 1;




      query.close;
      query.sql.clear;
      query.sql.add('select * from c000100 order by codproduto');
      query.open;
      query.first;
      while not query.eof do
      begin
          CODX := INTTOSTR(COD);
          WHILE LENGTH(CODX) < 6 DO CODX := '0'+CODX;
          COD := COD+1;
          query2.CLOSE;
          query2.SQL.CLEAR;
          query2.SQL.Add('insert into c000032');
          query2.SQL.add('(codigo,codnota,serial,numeronota,');
          query2.SQL.add('codproduto,qtde,unitario,movimento_estoque,');
          query2.SQL.add('total,unidade,aliquota,');
          query2.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
          query2.SQL.add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,cst)');
          query2.SQL.add('values');
          query2.SQL.add('('''+CODX+''',''000000'',''000000'',''000000'',');
          query2.SQL.add(''''+QUERY.FIELDBYNAME('CODPRODUTO').ASSTRING+''',:QTDE,:UNITARIO,:movimento_estoque,');
          query2.SQL.add(':TOTAL,'''',:ALIQUOTA,');
          query2.SQL.add('''001'',''000000'','''',');
          query2.SQL.add('''000000'',''000000'',''000000'',''S/VEND'',10,:datax,''000'')');
          query2.Params.ParamByName('datax').asdatetime := date;
          query2.Params.ParamByName('UNITARIO').ASFLOAT := 0;
          query2.Params.ParamByName('QTDE').ASFLOAT := query.fieldbyname('estoque_atual').asfloat * (-1);
          query2.Params.ParamByName('TOTAL').ASFLOAT := 0;
          query2.Params.ParamByName('movimento_estoque').ASFLOAT := query.fieldbyname('estoque_atual').asfloat * (-1);
          query2.Params.ParamByName('ALIQUOTA').ASFLOAT := 0;
          query2.ExecSQL;
        query.next;
      end;

      query.close;
      query.sql.clear;
      query.sql.add('update c000000 set sequencia = '+INTTOSTR(COD)+' WHERE CODIGO = ''000032''');
      query.EXECSQL;



      econexao.commit;

     query.close;
      query.sql.clear;
      query.sql.add('select * from c000100 order by codproduto');
      query.open;
      query.first;
      while not query.eof do
      begin
        query2.close;
        query2.sql.clear;
        query2.sql.add('update c000025 set estoque = :estoque');
        query2.sql.add('where codigo = '''+query.fieldbyname('codproduto').asstring+'''');
        query2.params.ParamByName('estoque').asfloat := query.fieldbyname('estoque_atual').asfloat;
        query2.ExecSQL;
        query.next;
      end;
      econexao.commit;


      qrproduto.close;
      qrproduto.sql.clear;
      qrproduto.SQL.add('select codigo, situacao, codbarra, produto, unidade, estoque, precovenda');
      qrproduto.sql.add('from c000025');
      qrproduto.sql.add('order by produto');
      qrproduto.open;




  end;
end;

procedure Tbalanco.BitBtn1Click(Sender: TObject);
var cod:integer;
codx : string;
begin
  if application.messagebox('Confirma a atualiza��o do estoque?','Aviso',mb_yesno+mb_iconwarning) = idyes then
  begin


      query.close;
      query.sql.clear;
      query.sql.add('select sequencia from c000000 where codigo = ''000032''');
      query.open;

      cod := query.fieldbyname('sequencia').asinteger + 1;

      query.close;
      query.sql.clear;
      query.sql.add('select * from c000100 order by codproduto');
      query.open;



      query.first;
      query.last;
      barra.Max := query.recordcount;
      barra.position := 0;
      query.first;
      while not query.eof do
      begin
          CODX := INTTOSTR(COD);
          WHILE LENGTH(CODX) < 6 DO CODX := '0'+CODX;
          COD := COD+1;
          query2.CLOSE;
          query2.SQL.CLEAR;
          query2.SQL.Add('insert into c000032');
          query2.SQL.add('(codigo,codnota,serial,numeronota,');
          query2.SQL.add('codproduto,qtde,unitario,movimento_estoque,');
          query2.SQL.add('total,unidade,aliquota,');
          query2.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
          query2.SQL.add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,cst)');
          query2.SQL.add('values');
          query2.SQL.add('('''+CODX+''',''000000'',''000000'',''000000'',');
          query2.SQL.add(''''+QUERY.FIELDBYNAME('CODPRODUTO').ASSTRING+''',:QTDE,:UNITARIO,:movimento_estoque,');
          query2.SQL.add(':TOTAL,'''',:ALIQUOTA,');
          query2.SQL.add('''001'',''000000'','''',');
          query2.SQL.add('''000000'',''000000'',''000000'',''S/VEND'',10,:datax,''000'')');
          query2.Params.ParamByName('datax').asdatetime := date;
          query2.Params.ParamByName('UNITARIO').ASFLOAT := 0;
          query2.Params.ParamByName('QTDE').ASFLOAT := query.fieldbyname('estoque_atual').asfloat * (-1);
          query2.Params.ParamByName('TOTAL').ASFLOAT := 0;
          query2.Params.ParamByName('movimento_estoque').ASFLOAT := query.fieldbyname('estoque_atual').asfloat * (-1);
          query2.Params.ParamByName('ALIQUOTA').ASFLOAT := 0;
          query2.ExecSQL;
          barra.Position := barra.position + 1;
          application.ProcessMessages;
          query.next;

      end;

      query.close;
      query.sql.clear;
      query.sql.add('update c000000 set sequencia = '+INTTOSTR(COD)+' WHERE CODIGO = ''000032''');
      query.EXECSQL;




      econexao.commit;
      qrproduto.close;
      qrproduto.sql.clear;
      qrproduto.SQL.add('select codigo, situacao, codbarra, produto, unidade, estoque, precovenda');
      qrproduto.sql.add('from c000025');
      qrproduto.sql.add('order by produto');
      qrproduto.open;

      caption := caption + '   Processando...';



    qrproduto.first;
    qrproduto.last;



      barra.position := 0;
      barra.Max := qrproduto.recordcount;
      application.ProcessMessages;
    qrproduto.first;
    while not qrproduto.eof do
    begin
          CODX := INTTOSTR(COD);
          WHILE LENGTH(CODX) < 6 DO CODX := '0'+CODX;
          COD := COD+1;
          query2.CLOSE;
          query2.SQL.CLEAR;
          query2.SQL.Add('insert into c000032');
          query2.SQL.add('(codigo,codnota,serial,numeronota,');
          query2.SQL.add('codproduto,qtde,unitario,movimento_estoque,');
          query2.SQL.add('total,unidade,aliquota,');
          query2.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
          query2.SQL.add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,cst)');
          query2.SQL.add('values');
          query2.SQL.add('('''+CODX+''',''000000'',''000000'',''000000'',');
          query2.SQL.add(''''+qrproduto.FIELDBYNAME('CODIGO').ASSTRING+''',:QTDE,:UNITARIO,:movimento_estoque,');
          query2.SQL.add(':TOTAL,'''',:ALIQUOTA,');
          query2.SQL.add('''001'',''000000'','''',');
          query2.SQL.add('''000000'',''000000'',''000000'',''S/VEND'',10,:datax,''000'')');
          query2.Params.ParamByName('datax').asdatetime := date;
          query2.Params.ParamByName('UNITARIO').ASFLOAT := qrproduto.fieldbyname('precovenda').asfloat;
          query2.Params.ParamByName('QTDE').ASFLOAT := qrproduto.fieldbyname('estoque').asfloat;
          query2.Params.ParamByName('TOTAL').ASFLOAT := 0;
          query2.Params.ParamByName('movimento_estoque').ASFLOAT := qrproduto.fieldbyname('estoque').asfloat;
          query2.Params.ParamByName('ALIQUOTA').ASFLOAT := 0;
          query2.ExecSQL;


          qrproduto.next;

          barra.Position := barra.position + 1;
          application.ProcessMessages;



    end;


      query.close;
      query.sql.clear;
      query.sql.add('update c000000 set sequencia = '+INTTOSTR(COD)+' WHERE CODIGO = ''000032''');
      query.EXECSQL;
      econexao.commit;

     query.close;
      query.sql.clear;
      query.sql.add('select * from c000100 order by codproduto');
      query.open;
      query.first;
      while not query.eof do
      begin
        query2.close;
        query2.sql.clear;
        query2.sql.add('update c000025 set estoque = :estoque');
        query2.sql.add('where codigo = '''+query.fieldbyname('codproduto').asstring+'''');
        query2.params.ParamByName('estoque').asfloat := query.fieldbyname('estoque_atual').asfloat;
        query2.ExecSQL;
        query.next;
      end;

      econexao.commit;


      qrproduto.close;
      qrproduto.sql.clear;
      qrproduto.SQL.add('select codigo, situacao, codbarra, produto, unidade, estoque, precovenda');
      qrproduto.sql.add('from c000025');
      qrproduto.sql.add('order by produto');
      qrproduto.open;

      APPLICATION.MESSAGEBOX('Processamento Conclu�do com sucesso','Aviso',mb_ok+mb_iconinformation);

  end;
end;

procedure Tbalanco.gridTitleButtonClick(Sender: TObject; AFieldName: String);
begin
  qrproduto.indexfieldnames := afieldname;
end;

procedure Tbalanco.Button3Click(Sender: TObject);
begin
  if application.messagebox('Confirma a altera��o do produto?','Aviso',mb_yesno+mb_iconquestion) = idyes then
  begin
    if qrproduto.fieldbyname('situacao').asinteger = 0 then
    begin
      qrproduto.edit;
      qrproduto.fieldbyname('situacao').asinteger := 1;
      qrproduto.post;
    end
    else
    begin
      qrproduto.edit;
      qrproduto.fieldbyname('situacao').asinteger := 0;
      qrproduto.post;
    end;
  end;
end;

procedure Tbalanco.efiltroChange(Sender: TObject);
begin
  qrproduto.close;
  qrproduto.sql.clear;
  qrproduto.SQL.add('select codigo, situacao, codbarra, produto, unidade, estoque, precovenda');
  qrproduto.sql.add('from c000025');
  if combobox1.itemindex = 0 then qrproduto.sql.add('where upper(produto) like '''+efiltro.Text+'%''');
  if combobox1.itemindex = 1 then qrproduto.sql.add('where codigo like '''+efiltro.Text+'%''');
  if combobox1.itemindex = 2 then qrproduto.sql.add('where codbarra like '''+efiltro.Text+'%''');
  qrproduto.sql.add('order by produto');
  qrproduto.open;

end;

procedure Tbalanco.Button2Click(Sender: TObject);
begin
     if efetua_Backup = false then
    begin
     if  application.MessageBox('Erro ao efetuar backup! Deseja prosseguir com a atualiza��o?','Aviso',mb_yesno+mb_iconwarning) = idno then exit;
    end;
      qrproduto.close;
      qrproduto.sql.clear;
      qrproduto.SQL.add('select codigo, situacao, codbarra, produto, unidade, estoque, precovenda');
      qrproduto.sql.add('from c000025');
      qrproduto.sql.add('order by produto');
      qrproduto.open;
end;

end.
