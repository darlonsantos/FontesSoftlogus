unit principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ImgList, RzTray, NxColumnClasses,
  NxColumns, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid,
  inifiles, ACBrUtil,
  DB, MemDS, DBAccess, IBC, Menus, pngimage, XPMan, sSkinManager, Vcl.AppEvnts, RzPanel, Vcl.Grids, Wwdbigrd, Wwdbgrid,
  Vcl.Imaging.jpeg, System.ImageList;

type
  TfrmPrincipal = class(TForm)
    icone: TRzTrayIcon;
    ImageList1: TImageList;
    Panel2: TPanel;
    Bevel2: TBevel;
    Button1: TButton;
    ImageList2: TImageList;
    conexao_servidor: TIBCConnection;
    qrServidor: TIBCQuery;
    conexao_pdv: TIBCConnection;
    qrPDV: TIBCQuery;
    Timer1: TTimer;
    qrServidor_Tabela: TIBCQuery;
    qrPDV_Tabela: TIBCQuery;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    barra: TProgressBar;
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    grid: TNextGrid;
    NxNumberColumn1: TNxNumberColumn;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxImageColumn1: TNxImageColumn;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    ed_server: TEdit;
    ed_server_database: TEdit;
    Memo1: TMemo;
    Timer3: TTimer;
    PopupMenu1: TPopupMenu;
    Abrir1: TMenuItem;
    Fechar1: TMenuItem;
    s8servidor101: TMenuItem;
    N2: TMenuItem;
    Button2: TButton;
    NxCheckBoxColumn1: TNxCheckBoxColumn;
    Atualizaragora1: TMenuItem;
    qrCrediario: TIBCQuery;
    qrMestre: TIBCQuery;
    qrpdv2: TIBCQuery;
    qrpdv3: TIBCQuery;
    qrForma: TIBCQuery;
    qrconfig: TIBCQuery;
    qrcaixa_mov: TIBCQuery;
    pnlAviso: TPanel;
    pnTitulo: TPanel;
    ApplicationEvents1: TApplicationEvents;
    QRY_IBPT: TIBCQuery;
    pm_Atualizacoes: TPopupMenu;
    A1: TMenuItem;
    C1: TMenuItem;
    S1: TMenuItem;
    il1: TImageList;
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel1: TCategoryPanel;
    btn_atualizar: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Timer3Timer(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Abrir1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure iconeLButtonDblClick(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure S1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
    Function Cript(Action, Src: String): String;
    function codifica(tabela: string; qtde_digitos: integer): string;
    function Zerar(texto: string; qtde: integer): string;
    // Acrescentar Zeros a esquerda em uma String
    function verifica_conexao(tipo: string; server: string;
      base: string): Boolean;
    function verifica_crediario(cod_cliente: string): Real;
    procedure AdicionarCaixas;
    procedure AdicionarUsuarios;
    procedure AdicionarVendedores;

    // atualizacao das estacoes para o servidor
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;
  sDir_sistema: string;
  H: THandle;
  fechar: Boolean;
  XNCM: string;

implementation

uses Math, md52;

{$R *.dfm}

// -------------------------------------------------------------------------- //
Function TfrmPrincipal.Cript(Action, Src: String): String;
Label
  Fim;

var
  KeyLen: integer;
  KeyPos: integer;
  OffSet: integer;
  Dest, Key: String;
  SrcPos: integer;
  SrcAsc: integer;
  TmpSrcAsc: integer;
  Range: integer;

begin
  if (Src = '') Then
  begin
    Result := '';
    Goto Fim;
  end;

  Key := 'YUQL23KL23DF90WI5E1JAS467NMCXXL6JAOAUWWMCL0AOMM4A4VZYW9KHJUI2347EJHJKDF3424SKL K3LAKDJSL9RTIKJ';
  // Key := 'YUQL%%$#%3DF#0WI5E$JA$46#NM@XXL6JAOAUW%$#@0AOMM4$4VZYW&&HJUI23@7E%#@!DF34#4SKL K3LA@DJSL9RTIKJ';
  Dest := '';
  KeyLen := Length(Key);
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 256;

  if (Action = UpperCase('C')) then
  begin
    Randomize;
    OffSet := Random(Range);
    Dest := Format('%1.2x', [OffSet]);
    for SrcPos := 1 to Length(Src) do
    begin
      Application.ProcessMessages;
      SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
      if KeyPos < KeyLen then
        KeyPos := KeyPos + 1
      else
        KeyPos := 1;
      SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      Dest := Dest + Format('%1.2x', [SrcAsc]);
      OffSet := SrcAsc;
    end;
  end
  Else if (Action = UpperCase('D')) then
  begin
    OffSet := StrToInt('$' + copy(Src, 1, 2));
    SrcPos := 3;
    repeat
      SrcAsc := StrToInt('$' + copy(Src, SrcPos, 2));
      if (KeyPos < KeyLen) Then
        KeyPos := KeyPos + 1
      else
        KeyPos := 1;
      TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      if TmpSrcAsc <= OffSet then
        TmpSrcAsc := 255 + TmpSrcAsc - OffSet
      else
        TmpSrcAsc := TmpSrcAsc - OffSet;
      Dest := Dest + Chr(TmpSrcAsc);
      OffSet := SrcAsc;
      SrcPos := SrcPos + 2;
    until (SrcPos >= Length(Src));
  end;
  Result := Dest;
Fim:
END;

// -------------------------------------------------------------------------- //
function TfrmPrincipal.codifica(tabela: string; qtde_digitos: integer): string;
begin
  qrMestre.close;
  qrMestre.sql.Clear;
  qrMestre.sql.add('select * from c000000 where codigo = ''' + tabela + '''');
  qrMestre.Open;
  if qrMestre.RecNo = 1 then
  begin
    if qrMestre.FieldByName('sequencia').asinteger < 1 then
    begin
      Result := '0000000001';
      qrMestre.Edit;
      qrMestre.FieldByName('sequencia').asinteger := 2;
      qrMestre.Post;

    end
    else
    begin
      Result := Zerar(inttostr(qrMestre.FieldByName('sequencia').asinteger),
        qtde_digitos);
      qrMestre.Edit;
      qrMestre.FieldByName('sequencia').asinteger :=
        qrMestre.FieldByName('sequencia').asinteger + 1;
      qrMestre.Post;
    end;
  end
  else
  begin
    Memo1.Lines.add
      ('Erro - Tabela Mestre - Mensagem: Não foi encontrado a entrada ' + tabela
      + ' na tabela de sequencia!');
  end;
end;

// -------------------------------------------------------------------------- //
function TfrmPrincipal.verifica_crediario(cod_cliente: string): Real;
begin
  try
    qrCrediario.close;
    qrCrediario.sql.Clear;
    qrCrediario.sql.add('select sum(valor_atual) as debito');
    qrCrediario.sql.add('from c000049 where codcliente = ''' +
      cod_cliente + '''');
    qrCrediario.sql.add('and situacao = 1');
    qrCrediario.Open;

    Result := qrCrediario.FieldByName('debito').asfloat;
  except
    on E: Exception do
    begin
      Result := 0;
      Memo1.Lines.add('ERRO CREDIARIO - Mensagem: ' + E.message);
    end;
  end;
end;

// -------------------------------------------------------------------------- //
function TfrmPrincipal.Zerar(texto: string; qtde: integer): string;
begin
  while Length(texto) < qtde do
    texto := '0' + texto;
  Result := texto;
end;

// -------------------------------------------------------------------------- //
function TfrmPrincipal.verifica_conexao(tipo: string; server: string;
  base: string): Boolean;
begin
  IF tipo = 'SERVIDOR' then
  begin
    try
      conexao_servidor.Connected := false;
      conexao_servidor.server := server;
      conexao_servidor.Database := base;
      conexao_servidor.Connected := true;
      Result := true;
    except
      Result := false;
    end;
  end
  else
  begin
    try
      conexao_pdv.close;
      conexao_pdv.server := server;
      conexao_pdv.Database := base;
      conexao_pdv.Open;
      Result := true;
    except
      Result := false;
    end;

  end;
end;

// Testes 104 e 105 do PAF-ECF- Estoque e Produtos
procedure Monta_LinhaMD5_Mercadorias;
var
  sLinhaMD5: String;
  sMD5: String;
begin
  sLinhaMD5 := '';
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;
// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.FormShow(Sender: TObject);
var
  arquivo_ini: TIniFile;
  i, x: integer;
  spdv: string;

begin
  if not pnlAviso.Visible then
  begin
    Timer3.enabled := true;
    sDir_sistema := ExtractFileDir(Application.ExeName);
    arquivo_ini := TIniFile.Create(sDir_sistema + '\cfg\servidor.ini');
    ed_server.Text := arquivo_ini.ReadString('SERVIDOR', 'SERVER', '');
    ed_server_database.Text := arquivo_ini.ReadString('SERVIDOR', 'DATABASE', '');
    Timer1.Interval := StrToInt(arquivo_ini.ReadString('TEMPO', 'MINUTOS',
      '3')) * 60000;

    grid.ClearRows;

    for i := 1 to 20 do
    begin
      spdv := 'PDV' + inttostr(i);
      if (arquivo_ini.ReadString('PDV', spdv, '') = 'TRUE') then
      begin
        x := grid.AddRow(1);
        grid.cell[0, x].asinteger := i;
        grid.cell[1, x].asstring := arquivo_ini.ReadString('PDV',spdv + '_COMPUTADOR', '');
        grid.cell[2, x].asstring := arquivo_ini.ReadString('PDV',spdv + '_DATABASE', '');
        if verifica_conexao('PDV', grid.cell[1, x].asstring,
          grid.cell[2, x].asstring) then
        begin
          grid.cell[3, x].asinteger := 0;
          grid.cell[4, x].AsBoolean := true;
        end
        else
        begin
          grid.cell[3, x].asinteger := 1;
          grid.cell[4, x].AsBoolean := false;
        end;

      end;
    end;
    arquivo_ini.Free;

    if verifica_conexao('SERVIDOR', ed_server.Text,
      ed_server_database.Text) THEN
    BEGIN
      ed_server.Color := clLime;
      ed_server_database.Color := clLime;

    END
    ELSE
    BEGIN
      ed_server.Color := clRED;
      ed_server_database.Color := clRED;
    END;

    Timer1.enabled := true;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
VAR
  i, x, y, iprest: integer;
  scst: string;
  bflag: Boolean;
  scod_cupom: string;
  scod_venda: string;
  bachou: Boolean;


  //situacao caixa

  sit_caixa: string;

(* Lista de Formas de Pagamento que exigem tratamento especial no fechamento da venda*)
  lForma_pgto_Cheque_Avista, lForma_pgto_Cheque_Aprazo, lForma_pgto_Crediario,
    lForma_pgto_Cartao_Credito, lForma_pgto_Cartao_Debito, lForma_pgto_dinheiro,
    lForma_pgto_Convenio: String;

//  (* Lista de Formas de Pagamento que exigem tratamento especial no fechamento da venda *)
//  lForma_Cheque, lForma_Crediario, lForma_Cartao_cred, lForma_Cartao_deb, lForma_dinheiro,
//    lForma_Convenio: TStringList;

  rpercentual: Real;

  SCOD_REDUCAO: STRING;

begin
  try
    Timer1.enabled := false;

    FormShow(frmPrincipal);

    IF conexao_servidor.Connected then
    begin
      try

        Screen.Cursor := crAppStart;
        pnlAviso.Left := 2;
        pnlAviso.Width := 450;
        pnlAviso.Visible := true;
        pnlAviso.Repaint;

        Memo1.Lines.add('Iniciando processo de atualização em ' +
          DateToStr(date) + ' as ' + timetostr(time));

        FOR i := 0 TO grid.RowCount - 1 DO
        BEGIN
          if grid.cell[4, i].AsBoolean then
          begin
            If verifica_conexao('PDV', grid.cell[1, i].asstring,
              grid.cell[2, i].asstring) THEN
            BEGIN
              grid.cell[3, i].asinteger := 0;

              // E S T A C A O   PARA   S E R V I D O R

              // ------------- V E N D A S -------------------//
                 //informar situacao caixa no retaguarda

              qrServidor.Close;
              qrServidor.SQL.Clear;
              qrServidor.SQL.Add('update C000045 set situacao = :situacao, data = :data where codigo = :codigo'); //
              qrServidor.ParamByName('codigo').AsString := zerar(grid.Cell[0, I].AsString, 6);


              qrconfig.close;
              qrconfig.sql.clear;
              qrconfig.sql.add('select * from config');
              qrconfig.open;

              if qrconfig.FieldByName('CAIXA_SITUACAO').AsString = 'FECHADO' then
                qrServidor.ParamByName('situacao').AsInteger := 2;

              if qrconfig.FieldByName('CAIXA_SITUACAO').AsString = 'ABERTO' then
                qrServidor.ParamByName('situacao').AsInteger := 1;

              qrServidor.ParamByName('data').AsDate := qrconfig.FieldByName('CAIXA_DATA_MOVTO').AsDateTime;

              qrServidor.ExecSQL;

              qrconfig.close;
              qrconfig.sql.clear;
              qrconfig.sql.add('select * from config');
              qrconfig.open;

              if qrconfig.RecordCount > 0 then
              begin

                lForma_pgto_Cheque_Avista := qrconfig.fieldbyname('forma_cheque').asstring;
                lForma_pgto_Cheque_Aprazo := qrconfig.fieldbyname('forma_cheque_aprazo').asstring;
                lForma_pgto_Cartao_Debito := qrconfig.fieldbyname('forma_cartao').asstring;
                lForma_pgto_Cartao_Credito := qrconfig.fieldbyname('forma_cartao_credito').asstring;
                lForma_pgto_Crediario := qrconfig.fieldbyname('forma_crediario').asstring;
                lForma_pgto_Convenio := qrconfig.fieldbyname('forma_convenio').asstring;
                lForma_pgto_Dinheiro := qrconfig.fieldbyname('forma_dinheiro').asstring;

                sit_caixa := qrconfig.fieldbyname('CAIXA_SITUACAO').asstring;

              end;

                qrPDV.close;
                qrPDV.sql.Clear;
                qrPDV.sql.add('select * from cupom where ex = 0');
                qrPDV.Open;
                qrPDV.first;
                while not qrPDV.eof do
                begin
                  Application.ProcessMessages;

                  scod_cupom := qrPDV.FieldByName('codigo').asstring;
                  scod_venda := codifica('000048', 7);

                  qrServidor.close;
                  qrServidor.sql.Clear;
                  qrServidor.sql.add('insert into c000048');
                  qrServidor.sql.add('(codigo,data,codcliente,codvendedor,');
                  qrServidor.sql.add('codcaixa,total,subtotal,meio_dinheiro,');
                  qrServidor.sql.add
                    ('meio_chequeav, meio_chequeap,meio_cartaocred,');
                  qrServidor.sql.add
                    ('meio_cartaodeb,meio_crediario,meio_convenio, desconto,acrescimo,');
                  qrServidor.sql.add
                    ('cupom_fiscal,numero_cupom_fiscal, ECF_SERIAL, situacao)');
                  qrServidor.sql.add('values');
                  qrServidor.sql.add
                    ('(:codigo,:datax,:codcliente,:codvendedor,');
                  qrServidor.sql.add(':codcaixa,:TOTAL,:SUBTOTAL,:DINHEIRO,');
                  qrServidor.sql.add(':CHEQUEAV,:CHEQUEAP,:CARTAOCRED,');
                  qrServidor.sql.add
                    (':CARTAODEB,:CREDIARIO,:CONVENIO,:DESCONTO,:ACRESCIMO,');
                  qrServidor.sql.add
                    (':cupom_fiscal,:numero_cupom_fiscal, :ECF_SERIAL, :situacao)');

                  qrServidor.Params.ParamByName('codigo').asstring :=
                    scod_venda;
                  qrServidor.Params.ParamByName('codcliente').asstring :=
                    Zerar(qrPDV.FieldByName('cod_cliente').asstring, 6);
                  qrServidor.Params.ParamByName('codCAIXA').asstring :=
                    Zerar(qrPDV.FieldByName('cod_caixa').asstring, 6);
                  qrServidor.Params.ParamByName('numero_cupom_fiscal').asstring
                    := qrPDV.FieldByName('numero').asstring;
                  qrServidor.Params.ParamByName('codvendedor').asstring :=
                    Zerar(qrPDV.FieldByName('cod_vendedor').asstring, 6);
                  qrServidor.Params.ParamByName('cupom_fiscal').asinteger := 1;
                  qrServidor.Params.ParamByName('ecf_serial').asstring :=
                    qrPDV.FieldByName('ecf').asstring;

                  qrServidor.Params.ParamByName('datax').asdatetime :=
                    qrPDV.FieldByName('data').asdatetime;
                  qrServidor.Params.ParamByName('TOTAL').asfloat :=
                    qrPDV.FieldByName('valor_total').asfloat;
                  qrServidor.Params.ParamByName('SUBTOTAL').asfloat :=
                    qrPDV.FieldByName('valor_produto').asfloat;
                  qrServidor.Params.ParamByName('DESCONTO').asfloat :=
                    qrPDV.FieldByName('valor_desconto').asfloat;
                  qrServidor.Params.ParamByName('ACRESCIMO').asfloat :=
                    qrPDV.FieldByName('valor_acrescimo').asfloat;

                  qrServidor.Params.ParamByName('DINHEIRO').asfloat := 0;
                  qrServidor.Params.ParamByName('CHEQUEAV').asfloat := 0;
                  qrServidor.Params.ParamByName('CHEQUEAP').asfloat := 0;
                  qrServidor.Params.ParamByName('CARTAODEB').asfloat := 0;
                  qrServidor.Params.ParamByName('CARTAOCRED').asfloat := 0;
                  qrServidor.Params.ParamByName('CREDIARIO').asfloat := 0;
                  qrServidor.Params.ParamByName('CONVENIO').asfloat := 0;
                  qrServidor.Params.ParamByName('situacao').asinteger :=
                    qrPDV.FieldByName('cancelado').asinteger + 1;

                  qrForma.close;
                  qrForma.sql.Clear;
                  qrForma.sql.add('select * from cupom_forma');
                  qrForma.sql.add('where cod_cupom = ''' + scod_cupom + '''');
                  qrForma.Open;

                   qrforma.first;
                while not qrforma.eof do
                begin
                  Application.ProcessMessages;

                  bachou := false;
                  if not bachou then
                  begin
                    if AnsiUpperCase(qrforma.fieldbyname('forma').asstring) =
                      AnsiUpperCase(lForma_pgto_dinheiro) then
                    begin
                      qrServidor.Params.ParamByName('DINHEIRO').asFLOAT :=
                        qrServidor.Params.ParamByName('DINHEIRO').asFLOAT +
                        qrforma.fieldbyname('valor').asfloat;

                    // lancamento do caixa
                      qrcaixa_mov.close;
                      qrcaixa_mov.sql.clear;
                      qrcaixa_mov.sql.add('insert into c000044');
                      qrcaixa_mov.sql.add('(codigo,codcaixa,codoperador,data,entrada,valor,codconta,movimento,historico)');
                      qrcaixa_mov.sql.add('values');
                      qrcaixa_mov.sql.add('(''' + codifica('000044', 7) + ''',''' + zerar(qrpdv.fieldbyname('cod_caixa').asstring, 6) + ''',''' + zerar(qrpdv.fieldbyname('cod_vendedor').asstring, 6) + ''',:datax,');
                      qrcaixa_mov.sql.add(':VALOR,:VALOR,''100001'',3,''Venda DINHEIRO - ECF No. ' + qrpdv.fieldbyname('numero').asstring + ''')');
                      qrcaixa_mov.Params.ParamByName('datax').asdatetime := qrpdv.fieldbyname('data').asdatetime;

                    // Se a FORMA DINHEIRO for > que o valor total
                      if qrforma.fieldbyname('valor').asfloat > qrpdv.fieldbyname('valor_total').asfloat then
                        QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := qrpdv.fieldbyname('valor_total').asfloat
                      else // Se a FORMA dinheiro for o mesmo valor total
                        if qrforma.fieldbyname('valor').asfloat = qrpdv.fieldbyname('valor_total').asfloat then
                          QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := qrforma.fieldbyname('valor').asfloat
                        else
                          QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := qrforma.fieldbyname('valor').asfloat - qrpdv.fieldbyname('valor_troco').asfloat;

                      qrcaixa_mov.ExecSQL;

                      bachou := true;
                    end;
                  end;
                  if not bachou then
                  begin
                    if (AnsiUpperCase(qrforma.fieldbyname('forma').asstring) = AnsiUpperCase(lForma_pgto_Cheque_Avista)) or
                       (AnsiUpperCase(qrforma.fieldbyname('forma').asstring) = AnsiUpperCase(lForma_pgto_Cheque_Aprazo)) then
                    begin
                      qrServidor.Params.ParamByName('chequeav').asFLOAT :=
                        qrServidor.Params.ParamByName('chequeav').asFLOAT +
                        qrforma.fieldbyname('valor').asfloat;

                    // lancamento do caixa
                      qrcaixa_mov.close;
                      qrcaixa_mov.sql.clear;
                      qrcaixa_mov.sql.add('insert into c000044');
                      qrcaixa_mov.sql.add('(codigo,codcaixa,codoperador,data,entrada,valor,codconta,movimento,historico)');
                      qrcaixa_mov.sql.add('values');
                      qrcaixa_mov.sql.add('(''' + codifica('000044', 7) + ''',''' + zerar(qrpdv.fieldbyname('cod_caixa').asstring, 6) + ''',''' + zerar(qrpdv.fieldbyname('cod_vendedor').asstring, 6) + ''',:datax,');
                      if (AnsiUpperCase(qrforma.fieldbyname('forma').asstring) = AnsiUpperCase(lForma_pgto_Cheque_Avista)) then
                        qrcaixa_mov.sql.add('0,:VALOR,''100002'',5,''Venda CHEQUE AVISTA - ECF No. ' + qrpdv.fieldbyname('numero').asstring + ''')')
                      else
                        qrcaixa_mov.sql.add('0,:VALOR,''100002'',6,''Venda CHEQUE APRAZO - ECF No. ' + qrpdv.fieldbyname('numero').asstring + ''')');
                      qrcaixa_mov.Params.ParamByName('datax').asdatetime := qrpdv.fieldbyname('data').asdatetime;
                      // Se a FORMA cheque for > que o valor total
                      if qrforma.fieldbyname('valor').asfloat > qrpdv.fieldbyname('valor_total').asfloat then
                        QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := qrpdv.fieldbyname('valor_total').asfloat
                      else // Se a FORMA dinheiro for o mesmo valor total
                        if qrforma.fieldbyname('valor').asfloat = qrpdv.fieldbyname('valor_total').asfloat then
                          QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := qrforma.fieldbyname('valor').asfloat
                        else
                          QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := qrforma.fieldbyname('valor').asfloat - qrpdv.fieldbyname('valor_troco').asfloat;
                      qrcaixa_mov.ExecSQL;
                        bachou := true;
                    end;
                  end;
                  if not bachou then
                  begin
                    if (AnsiUpperCase(qrforma.fieldbyname('forma').asstring) = AnsiUpperCase(lForma_pgto_Cartao_Credito)) or
                       (AnsiUpperCase(qrforma.fieldbyname('forma').asstring) = AnsiUpperCase(lForma_pgto_Cartao_Debito)) then
                    begin
                      qrServidor.Params.ParamByName('cartaocred').asFLOAT :=
                        qrServidor.Params.ParamByName('cartaocred').asFLOAT +
                        qrforma.fieldbyname('valor').asfloat;


                    // lancamento do caixa
                      qrcaixa_mov.close;
                      qrcaixa_mov.sql.clear;
                      qrcaixa_mov.sql.add('insert into c000044');
                      qrcaixa_mov.sql.add('(codigo,codcaixa,codoperador,data,entrada,valor,codconta,movimento,historico)');
                      qrcaixa_mov.sql.add('values');
                      qrcaixa_mov.sql.add('(''' + codifica('000044', 7) + ''',''' + zerar(qrpdv.fieldbyname('cod_caixa').asstring, 6) + ''',''' + zerar(qrpdv.fieldbyname('cod_vendedor').asstring, 6) + ''',:datax,');
                      if (AnsiUpperCase(qrforma.fieldbyname('forma').asstring) = AnsiUpperCase(lForma_pgto_Cartao_Credito)) then
                        qrcaixa_mov.sql.add('0,:VALOR,''100003'',7,''Venda CARTAO CREDITO - ECF No. ' + qrpdv.fieldbyname('numero').asstring + ''')')
                      else
                        qrcaixa_mov.sql.add('0,:VALOR,''100003'',8,''Venda CARTAO DEBITO - ECF No. ' + qrpdv.fieldbyname('numero').asstring + ''')');
                      qrcaixa_mov.Params.ParamByName('datax').asdatetime := qrpdv.fieldbyname('data').asdatetime;
                      QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := qrforma.fieldbyname('valor').asfloat;
//                      QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := qrpdv.fieldbyname('valor_total').asfloat;
                      qrcaixa_mov.ExecSQL;


                      bachou := true;

                    end;
                  end;
                  if not bachou then
                  begin
                    if AnsiUpperCase(qrforma.fieldbyname('forma').asstring) =
                      AnsiUpperCase(lForma_pgto_Crediario) then
                    begin
                      qrServidor.Params.ParamByName('crediario').asFLOAT :=
                        qrServidor.Params.ParamByName('crediario').asFLOAT +
                        qrforma.fieldbyname('valor').asfloat;

                    // lancamento do caixa
                      qrcaixa_mov.close;
                      qrcaixa_mov.sql.clear;
                      qrcaixa_mov.sql.add('insert into c000044');
                      qrcaixa_mov.sql.add('(codigo,codcaixa,codoperador,data,entrada,valor,codconta,movimento,historico)');
                      qrcaixa_mov.sql.add('values');
                      qrcaixa_mov.sql.add('(''' + codifica('000044', 7) + ''',''' + zerar(qrpdv.fieldbyname('cod_caixa').asstring, 6) + ''',''' + zerar(qrpdv.fieldbyname('cod_vendedor').asstring, 6) + ''',:datax,');
                      qrcaixa_mov.sql.add('0,:VALOR,''100004'',4,''Venda CREDIARIO - ECF No. ' + qrpdv.fieldbyname('numero').asstring + ''')');
                      qrcaixa_mov.Params.ParamByName('datax').asdatetime := qrpdv.fieldbyname('data').asdatetime;
                      QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := qrforma.fieldbyname('valor').asfloat;
//                      QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := qrpdv.fieldbyname('valor_total').asfloat;
                      qrcaixa_mov.ExecSQL;


                      bachou := true;
                    end;
                  end;
                  if not bachou then
                  begin
                    if AnsiUpperCase(qrforma.fieldbyname('forma').asstring) =
                      AnsiUpperCase(lForma_pgto_Convenio) then
                    begin
                      qrServidor.Params.ParamByName('convenio').asFLOAT :=
                        qrServidor.Params.ParamByName('convenio').asFLOAT +
                        qrforma.fieldbyname('valor').asfloat;

                    // lancamento do caixa
                      qrcaixa_mov.close;
                      qrcaixa_mov.sql.clear;
                      qrcaixa_mov.sql.add('insert into c000044');
                      qrcaixa_mov.sql.add('(codigo,codcaixa,codoperador,data,entrada,valor,codconta,movimento,historico)');
                      qrcaixa_mov.sql.add('values');
                      qrcaixa_mov.sql.add('(''' + codifica('000044', 7) + ''',''' + zerar(qrpdv.fieldbyname('cod_caixa').asstring, 6) + ''',''' + zerar(qrpdv.fieldbyname('cod_vendedor').asstring, 6) + ''',:datax,');
                      qrcaixa_mov.sql.add('0,:VALOR,''100005'',40,''Venda CONVENIO - ECF No. ' + qrpdv.fieldbyname('numero').asstring + ''')');
                      qrcaixa_mov.Params.ParamByName('datax').asdatetime := qrpdv.fieldbyname('data').asdatetime;
                      QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := qrforma.fieldbyname('valor').asfloat;
//                      QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := qrpdv.fieldbyname('valor_total').asfloat;
                      qrcaixa_mov.ExecSQL;


                      bachou := true;
                    end;
                  end;
                  qrforma.next;
                end;
                qrServidor.ExecSQL;


                if qrpdv.fieldbyname('cancelado').asinteger = 0 then
                begin
              // contas a receber
                  qrPDV2.close;
                  qrPDV2.sql.clear;
                  qrPDV2.sql.add('select * from cupom_crediario');
                  qrPDV2.sql.add('where cod_cupom = ''' + scod_cupom + '''');
                  qrPDV2.open;
                  qrPDV2.first;
                  iprest := 1;

                  while not qrPDV2.eof do
                  begin
                    Application.ProcessMessages;

                    qrServidor.Close;
                    qrServidor.SQL.clear;
                    qrServidor.SQL.add('insert into c000049');
                    qrServidor.SQL.add('(codigo,codvenda,codcliente,codvendedor,codcaixa,data_emissao,data_vencimento,valor_original,');
                    qrServidor.SQL.add('valor_atual,documento,tipo,situacao,filtro)');
                    qrServidor.SQL.add('values');
                    qrServidor.SQL.add('(:codigo,:codvenda,:codcliente,:codvendedor,:codcaixa,:data_emissao,:data_vencimento,:valor_original,');
                    qrServidor.SQL.add(':valor_atual,:documento,:tipo,:situacao,:filtro)');

                    qrServidor.Params.ParamByName('codigo').asstring := Scod_venda + '/' + zerar(inttostr(iprest), 2);
                    qrServidor.Params.ParamByName('codvenda').asstring := scod_venda;
                    qrServidor.Params.ParamByName('codcliente').asstring := zerar(qrPDV2.fieldbyname('cod_cliente').asstring, 6);
                    qrServidor.Params.ParamByName('codvendedor').asstring := zerar(qrpdv.FIELDBYNAME('cod_vendedor').ASstring, 6);
                    qrServidor.Params.ParamByName('codcaixa').asstring := zerar(qrpdv.fieldbyname('cod_caixa').asstring, 6);
                    qrServidor.Params.ParamByName('documento').asstring := scod_venda + '/' + zerar(inttostr(iprest), 2);
                    qrServidor.Params.ParamByName('tipo').asstring := COPY(qrPDV2.fieldbyname('descricao').asstring, 1, 20);
                    qrServidor.Params.ParamByName('filtro').asinteger := 0;
                    qrServidor.Params.ParamByName('situacao').asinteger := 1;
                    qrServidor.Params.ParamByName('data_vencimento').asdatetime := qrPDV2.FIELDBYNAME('vencimento').ASDATETIME;
                    qrServidor.Params.ParamByName('data_emissao').asdatetime := qrpdv.fieldbyname('data').asfloat;
                    qrServidor.PARAMS.ParamByName('valor_atual').ASFLOAT := qrPDV2.fieldbyname('valor').asfloat;
                    qrServidor.PARAMS.ParamByName('valor_original').ASFLOAT := qrPDV2.fieldbyname('valor').asfloat;
                    qrServidor.ExecSQL;
                    inc(iprest);
                    qrPDV2.next;
                  end;
                end;
                  // produtos
                  qrPDV3.close;
                qrPDV3.sql.clear;
                qrPDV3.sql.add('select * from CUPOM_ITEM');
                qrPDV3.sql.add('where cod_cupom = ''' + scod_cupom + '''');
                qrPDV3.sql.add('and cancelado = 0');
                qrPDV3.open;
                qrPDV3.first;

  while not qrPDV3.eof do
                begin
                  Application.ProcessMessages;

                  qrServidor.CLOSE;
                  qrServidor.SQL.CLEAR;
                  qrServidor.SQL.Add('insert into c000032');
                  qrServidor.SQL.add('(codigo,codnota,serial,numeronota,');
                  qrServidor.SQL.add('codproduto,qtde,movimento_estoque,unitario,desconto,acrescimo,');
                  qrServidor.SQL.add('total,unidade,aliquota,');
                  qrServidor.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
                  qrServidor.SQL.add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,cst,');
                  qrServidor.sql.add('base_calculo, valor_icms)');
                  qrServidor.SQL.add('values');

                  qrServidor.SQL.add('(:codigo,:codnota,:serial,:numeronota,');
                  qrServidor.SQL.add(':codproduto,:qtde,:movimento_estoque,:unitario,:desconto,:acrescimo,');
                  qrServidor.SQL.add(':total,:unidade,:aliquota,');
                  qrServidor.SQL.add(':cupom_item,:cupom_numero,:cupom_modelo,');
                  qrServidor.SQL.add(':ecf_serie,:ecf_caixa,:codcliente,:codvendedor,:movimento,:data,:cst,');
                  qrServidor.sql.add(':base_calculo, :valor_icms)');

                  qrServidor.Params.ParamByName('CODIGO').ASSTRING := frmPrincipal.codifica('000032', 10);
                  qrServidor.Params.ParamByName('CODNOTA').ASSTRING := scod_venda;
                  qrServidor.Params.ParamByName('SERIAL').ASSTRING := '';
                  qrServidor.Params.ParamByName('NUMERONOTA').ASSTRING := qrpdv.fieldbyname('numero').asstring;
                  qrServidor.Params.ParamByName('CODPRODUTO').ASSTRING := zerar(qrPDV3.fieldbyname('cod_produto').asstring, 6);
                  qrServidor.Params.ParamByName('CODCLIENTE').ASSTRING := zerar(qrpdv.FIELDBYNAME('COD_CLIENTE').ASSTRING, 6);
                  qrServidor.Params.ParamByName('CODVENDEDOR').ASSTRING := zerar(qrpdv.FIELDBYNAME('COD_VENDEDOR').ASSTRING, 6);

                  qrServidor.Params.ParamByName('QTDE').ASFLOAT := qrPDV3.FIELDBYNAME('QTDE').ASFLOAT;
                  qrServidor.Params.ParamByName('MOVIMENTO_ESTOQUE').ASFLOAT := -qrPDV3.FIELDBYNAME('QTDE').ASFLOAT;
                  qrServidor.Params.ParamByName('ALIQUOTA').ASFLOAT := qrPDV3.FIELDBYNAME('ALIQUOTA').ASFLOAT;

                  qrServidor.Params.ParamByName('UNIDADE').ASSTRING := qrPDV3.FIELDBYNAME('UNIDADE').ASSTRING;
                  qrServidor.Params.ParamByName('CST').ASSTRING := qrPDV3.FIELDBYNAME('CST').ASSTRING;
                  qrServidor.Params.ParamByName('MOVIMENTO').ASINTEGER := 2;
                  qrServidor.Params.ParamByName('DATA').ASDATETIME := qrpdv.FIELDBYNAME('DATA').ASDATETIME;
                  qrServidor.Params.ParamByName('ECF_CAIXA').ASSTRING := qrPDV.fieldbyname('ECF_CAIXA').ASSTRING;
                  qrServidor.Params.ParamByName('ECF_SERIE').ASSTRING := qrpdv.FIELDBYNAME('ECF').ASSTRING;
                  qrServidor.Params.ParamByName('CUPOM_NUMERO').ASSTRING := qrpdv.FIELDBYNAME('NUMERO').ASSTRING;
                  qrServidor.Params.ParamByName('CUPOM_ITEM').ASSTRING := zerar(qrPDV3.FIELDBYNAME('ITEM').ASSTRING, 3);
                  qrServidor.Params.ParamByName('CUPOM_MODELO').ASSTRING := '2D';

                  if qrpdv.fieldbyname('valor_desconto').asfloat > 0 then
                  begin
                    qrServidor.params.parambyname('acrescimo').asfloat := qrPDV3.fieldbyname('valor_acrescimo').asfloat;
                    rPercentual := qrpdv.fieldbyname('valor_desconto').asfloat / qrpdv.fieldbyname('valor_produto').asfloat;

                    qrServidor.params.parambyname('desconto').asfloat := qrPDV3.fieldbyname('valor_desconto').asfloat +
                      (qrPDV3.FIELDBYNAME('VALOR_TOTAL').ASFLOAT * rPercentual);
                    qrServidor.Params.ParamByName('UNITARIO').ASFLOAT := qrPDV3.FIELDBYNAME('VALOR_UNITARIO').ASFLOAT;

                    qrServidor.Params.ParamByName('TOTAL').ASFLOAT := qrPDV3.FIELDBYNAME('VALOR_TOTAL').ASFLOAT -
                      (qrPDV3.FIELDBYNAME('VALOR_TOTAL').ASFLOAT * rPercentual);

                    if (qrPDV3.fieldbyname('aliquota').asfloat > 0) and
                      (qrPDV3.fieldbyname('cst').asstring = '000') then
                    begin
                      qrServidor.Params.ParamByName('base_calculo').ASFLOAT := qrServidor.Params.ParamByName('TOTAL').ASFLOAT;
                      qrServidor.Params.ParamByName('valor_icms').ASFLOAT := qrServidor.Params.ParamByName('TOTAL').ASFLOAT * qrPDV3.FIELDBYNAME('aliquota').ASFLOAT / 100;
                    end
                    else
                    begin
                      qrServidor.Params.ParamByName('base_calculo').ASFLOAT := 0;
                      qrServidor.Params.ParamByName('valor_icms').ASFLOAT := 0;
                    end;
                  end
                  else
                  begin
                    if qrpdv.fieldbyname('Valor_acrescimo').asfloat > 0 then
                    begin
                      qrServidor.params.parambyname('desconto').asfloat := qrPDV3.fieldbyname('valor_desconto').asfloat;

                      rPercentual := qrpdv.fieldbyname('valor_acrescimo').asfloat / qrpdv.fieldbyname('valor_produto').asfloat;

                      qrServidor.params.parambyname('acrescimo').asfloat := qrPDV3.fieldbyname('valor_acrescimo').asfloat +
                        (qrPDV3.FIELDBYNAME('VALOR_TOTAL').ASFLOAT * rPercentual);
                      qrServidor.Params.ParamByName('UNITARIO').ASFLOAT := qrPDV3.FIELDBYNAME('VALOR_UNITARIO').ASFLOAT;

                      qrServidor.Params.ParamByName('TOTAL').ASFLOAT := qrPDV3.FIELDBYNAME('VALOR_TOTAL').ASFLOAT +
                        (qrPDV3.FIELDBYNAME('VALOR_TOTAL').ASFLOAT * rPercentual);

                      if (qrPDV3.fieldbyname('aliquota').asfloat > 0) and
                        (qrPDV3.fieldbyname('cst').asstring = '000') then
                      begin
                        qrServidor.Params.ParamByName('base_calculo').ASFLOAT := qrServidor.Params.ParamByName('TOTAL').ASFLOAT;
                        qrServidor.Params.ParamByName('valor_icms').ASFLOAT := qrServidor.Params.ParamByName('TOTAL').ASFLOAT * qrPDV3.FIELDBYNAME('aliquota').ASFLOAT / 100;
                      end
                      else
                      begin
                        qrServidor.Params.ParamByName('base_calculo').ASFLOAT := 0;
                        qrServidor.Params.ParamByName('valor_icms').ASFLOAT := 0;
                      end;
                    end
                    else
                    begin
                      qrServidor.params.parambyname('desconto').asfloat := qrPDV3.fieldbyname('valor_desconto').asfloat;
                      qrServidor.params.parambyname('acrescimo').asfloat := qrPDV3.fieldbyname('valor_acrescimo').asfloat;
                      qrServidor.Params.ParamByName('UNITARIO').ASFLOAT := qrPDV3.FIELDBYNAME('VALOR_UNITARIO').ASFLOAT;
                      qrServidor.Params.ParamByName('TOTAL').ASFLOAT := qrPDV3.FIELDBYNAME('VALOR_TOTAL').ASFLOAT;
                      if (qrPDV3.fieldbyname('aliquota').asfloat > 0) and
                        (qrPDV3.fieldbyname('cst').asstring = '000') then
                      begin
                        qrServidor.Params.ParamByName('base_calculo').ASFLOAT := qrPDV3.FIELDBYNAME('VALOR_TOTAL').ASFLOAT;
                        qrServidor.Params.ParamByName('valor_icms').ASFLOAT := qrPDV3.FIELDBYNAME('VALOR_TOTAL').ASFLOAT * qrPDV3.FIELDBYNAME('aliquota').ASFLOAT / 100;
                      end
                      else
                      begin
                        qrServidor.Params.ParamByName('base_calculo').ASFLOAT := 0;
                        qrServidor.Params.ParamByName('valor_icms').ASFLOAT := 0;
                      end;
                    end;
                  end;
                  qrServidor.ExecSQL;
                  qrPDV3.next;
                end;

                try
                  qrPDV_Tabela.close;
                  qrPDV_Tabela.SQL.clear;
                  qrPDV_Tabela.sql.Add('update cupom set ex = 1 where codigo = ''' + qrpdv.fieldbyname('codigo').asstring + '''');
                  qrPDV_Tabela.ExecSQL;
                except
                  on E: Exception do
                  begin
                    Memo1.Lines.Add('Erro na gravacao do Cupom - Mensagem: ' + E.Message);
                  end;
                end;
                qrpdv.Next;
              end;



              try
            // Atualizacao das reducoes z


                qrPDV.close;
                qrPDV.sql.clear;
                qrPDV.sql.add('select * from reducaoz where ex = 0');
                qrPDV.open;

                qrPDV.first;
                while not qrPDV.eof do
                begin
                  Application.ProcessMessages;

                  qrPDV3.close;
                  qrPDV3.sql.clear;
                  qrPDV3.sql.add('select * from reducaoz_total_parcial');
                  qrPDV3.sql.add('where cod_reducaoz = ''' + qrPDV.fieldbyname('codigo').asstring + '''');
                  qrPDV3.open;

                  qrServidor.CLOSE;
                  qrServidor.SQL.CLEAR;
                  qrServidor.sql.add('insert into SINTEGRA_REG60');
                  qrServidor.SQL.Add('(id, MOVIMENTO,');
                  qrServidor.SQL.Add('CODIGO_EMPRESA,');
                  qrServidor.SQL.Add('CNPJ,');
                  qrServidor.SQL.Add('IE,');
                  qrServidor.SQL.Add('UF,');
                  qrServidor.SQL.Add('DATA_EMISSAO,');
                  qrServidor.SQL.Add('NRO_SERIE_EQP,');
                  qrServidor.SQL.Add('NRO_ORDEM_EQP,');
                  qrServidor.SQL.Add('MODELO_DOC,');
                  qrServidor.SQL.Add('NRO_CONTADOR_INICIO,');
                  qrServidor.SQL.Add('NRO_CONTADOR_FIM,');
                  qrServidor.SQL.Add('NRO_CONTADOR_Z,');
                  qrServidor.SQL.Add('CONTADOR_REINICIO,');
                  qrServidor.SQL.Add('VALOR_VENDA_BRUTA,');
                  qrServidor.SQL.Add('VALOR_TOTAL_GERAL,');
                  qrServidor.SQL.Add('CANCELAMENTO,');
                  qrServidor.SQL.Add('DESCONTO,');
                  qrServidor.SQL.Add('ISSQN,');
                  qrServidor.SQL.Add('SUBSTITUICAO_TRIBUTARIA,');
                  qrServidor.SQL.Add('ISENTO,');
                  qrServidor.SQL.Add('NAO_INCIDENCIA,');

                  qrServidor.SQL.Add('ALIQUOTA01,');
                  qrServidor.SQL.Add('ALIQUOTA02,');
                  qrServidor.SQL.Add('ALIQUOTA03,');
                  qrServidor.SQL.Add('ALIQUOTA04,');
                  qrServidor.SQL.Add('ALIQUOTA05,');
                  qrServidor.SQL.Add('BASE01,');
                  qrServidor.SQL.Add('BASE02,');
                  qrServidor.SQL.Add('BASE03,');
                  qrServidor.SQL.Add('BASE04,');
                  qrServidor.SQL.Add('BASE05,');
                  qrServidor.SQL.Add('VALOR_VENDA_LIQUIDA,');
                  qrServidor.SQL.Add('NRO_CONTADOR_CANCELAMENTO)');

                  qrServidor.sql.add('values');

                  qrServidor.SQL.Add('(:id, :MOVIMENTO,');
                  qrServidor.SQL.Add(':CODIGO_EMPRESA,');
                  qrServidor.SQL.Add(':CNPJ,');
                  qrServidor.SQL.Add(':IE,');
                  qrServidor.SQL.Add(':UF,');
                  qrServidor.SQL.Add(':DATA_EMISSAO,');
                  qrServidor.SQL.Add(':NRO_SERIE_EQP,');
                  qrServidor.SQL.Add(':NRO_ORDEM_EQP,');
                  qrServidor.SQL.Add(':MODELO_DOC,');
                  qrServidor.SQL.Add(':NRO_CONTADOR_INICIO,');
                  qrServidor.SQL.Add(':NRO_CONTADOR_FIM,');
                  qrServidor.SQL.Add(':NRO_CONTADOR_Z,');
                  qrServidor.SQL.Add(':CONTADOR_REINICIO,');
                  qrServidor.SQL.Add(':VALOR_VENDA_BRUTA,');
                  qrServidor.SQL.Add(':VALOR_TOTAL_GERAL,');
                  qrServidor.SQL.Add(':CANCELAMENTO,');
                  qrServidor.SQL.Add(':DESCONTO,');
                  qrServidor.SQL.Add(':ISSQN,');
                  qrServidor.SQL.Add(':SUBSTITUICAO_TRIBUTARIA,');
                  qrServidor.SQL.Add(':ISENTO,');
                  qrServidor.SQL.Add(':NAO_INCIDENCIA,');

                  qrServidor.SQL.Add(':ALIQUOTA01,');
                  qrServidor.SQL.Add(':ALIQUOTA02,');
                  qrServidor.SQL.Add(':ALIQUOTA03,');
                  qrServidor.SQL.Add(':ALIQUOTA04,');
                  qrServidor.SQL.Add(':ALIQUOTA05,');
                  qrServidor.SQL.Add(':BASE01,');
                  qrServidor.SQL.Add(':BASE02,');
                  qrServidor.SQL.Add(':BASE03,');
                  qrServidor.SQL.Add(':BASE04,');
                  qrServidor.SQL.Add(':BASE05,');
                  qrServidor.SQL.Add(':VALOR_VENDA_LIQUIDA,');
                  qrServidor.SQL.Add(':NRO_CONTADOR_CANCELAMENTO)');



                  qrServidor.Params.ParamByName('id').ASSTRING := codifica('000032', 6);
                  qrServidor.Params.ParamByName('MOVIMENTO').asinteger := 1;
                  qrServidor.Params.ParamByName('CODIGO_EMPRESA').asinteger := 1;
                  qrServidor.Params.ParamByName('CNPJ').asstring := '';
                  qrServidor.Params.ParamByName('IE').asstring := '';
                  qrServidor.Params.ParamByName('UF').asstring := '';
                  qrServidor.Params.ParamByName('DATA_EMISSAO').asdatetime := qrPDV.fieldbyname('data_movimento').asdatetime;
                  qrServidor.Params.ParamByName('NRO_SERIE_EQP').asstring := qrPDV.fieldbyname('ecf').asstring;
                  qrServidor.Params.ParamByName('NRO_ORDEM_EQP').asinteger := qrPDV.fieldbyname('ecf_caixa').asinteger;
                  qrServidor.Params.ParamByName('MODELO_DOC').asstring := '2D';

                  qrServidor.Params.ParamByName('NRO_CONTADOR_INICIO').asinteger := strtoint(qrconfig.fieldbyname('CAIXA_COO_INICIAL').asstring);
                  qrServidor.Params.ParamByName('NRO_CONTADOR_FIM').asInteger := strtoint(qrPDV.fieldbyname('coo').asstring);
                  qrServidor.Params.ParamByName('NRO_CONTADOR_Z').asinteger := strtoint(qrPDV.fieldbyname('crz').asstring);
                  qrServidor.Params.ParamByName('CONTADOR_REINICIO').asinteger := strtoint(qrPDV.fieldbyname('cro').asstring);

                  qrServidor.Params.ParamByName('VALOR_VENDA_BRUTA').asfloat := qrPDV.fieldbyname('venda_bruta').asfloat;
                  qrServidor.Params.ParamByName('VALOR_TOTAL_GERAL').asfloat := qrPDV.fieldbyname('totalizador_geral').asfloat;
                  qrServidor.Params.ParamByName('CANCELAMENTO').asfloat := qrPDV.fieldbyname('cancelamento_icms').asfloat;
                  qrServidor.Params.ParamByName('DESCONTO').asfloat := qrPDV.fieldbyname('desconto_icms').asfloat;
                  qrServidor.Params.ParamByName('ISSQN').asfloat := qrPDV.fieldbyname('total_iss').asfloat;

                  x := 1;
                  qrPDV3.first;
                  while not qrPDV3.eof do
                  begin
                  // substituicao tributaria
                    if qrPDV3.FieldByName('totalizador').asstring = 'F1' then
                      qrServidor.Params.ParamByName('SUBSTITUICAO_TRIBUTARIA').asfloat :=
                        qrPDV3.fieldbyname('valor').asfloat;

                  // isento
                    if qrPDV3.FieldByName('totalizador').asstring = 'I1' then
                      qrServidor.Params.ParamByName('ISENTO').asfloat :=
                        qrPDV3.fieldbyname('valor').asfloat;

                  // NAO TRIBUTADO
                    if qrPDV3.FieldByName('totalizador').asstring = 'N1' then
                      qrServidor.Params.ParamByName('NAO_INCIDENCIA').asfloat :=
                        qrPDV3.fieldbyname('valor').asfloat;

                  // TRIBUTADOS
                    if (COPY(qrPDV3.FieldByName('TOTALIZADOR').ASSTRING, 6, 2) = '00') and
                      (qrPDV3.fieldbyname('valor').asfloat > 0) then
                    begin
                      case x of
                        1: begin
                            qrServidor.Params.ParamByName('ALIQUOTA01').asfloat :=
                              strtofloat(COPY(qrPDV3.FieldByName('TOTALIZADOR').ASSTRING, 4, 4)) / 100;
                            qrServidor.Params.ParamByName('BASE01').asfloat :=
                              qrPDV3.fieldbyname('valor').asfloat;
                            inc(x);
                          end;
                        2: begin
                            qrServidor.Params.ParamByName('ALIQUOTA02').asfloat :=
                              strtofloat(COPY(qrPDV3.FieldByName('TOTALIZADOR').ASSTRING, 4, 4)) / 100;
                            qrServidor.Params.ParamByName('BASE02').asfloat :=
                              qrPDV3.fieldbyname('valor').asfloat;
                            inc(x);
                          end;
                        3: begin
                            qrServidor.Params.ParamByName('ALIQUOTA03').asfloat :=
                              strtofloat(COPY(qrPDV3.FieldByName('TOTALIZADOR').ASSTRING, 4, 4)) / 100;
                            qrServidor.Params.ParamByName('BASE03').asfloat :=
                              qrPDV3.fieldbyname('valor').asfloat;
                            inc(x);
                          end;
                        4: begin
                            qrServidor.Params.ParamByName('ALIQUOTA04').asfloat :=
                              strtofloat(COPY(qrPDV3.FieldByName('TOTALIZADOR').ASSTRING, 4, 4)) / 100;
                            qrServidor.Params.ParamByName('BASE04').asfloat :=
                              qrPDV3.fieldbyname('valor').asfloat;
                            inc(x);
                          end;
                        5: begin
                            qrServidor.Params.ParamByName('ALIQUOTA05').asfloat :=
                              strtofloat(COPY(qrPDV3.FieldByName('TOTALIZADOR').ASSTRING, 4, 4)) / 100;
                            qrServidor.Params.ParamByName('BASE05').asfloat :=
                              qrPDV3.fieldbyname('valor').asfloat;
                            inc(x);
                          end;
                      end;
                    end;
                    qrPDV3.next;
                  end;
                  qrServidor.Params.ParamByName('VALOR_VENDA_LIQUIDA').asfloat := qrPDV.fieldbyname('venda_liquida').asfloat;
                  qrServidor.Params.ParamByName('NRO_CONTADOR_CANCELAMENTO').asfloat := 0;
                  qrServidor.execsql;

                  qrPDV.next;
                end;
                try
                  qrPDV.close;
                  qrPDV.sql.clear;
                  qrPDV.sql.add('update reducaoz set ex = 1');
                  qrPDV.ExecSQL;
                except
                  on e: exception do
                  begin
                    Memo1.Lines.Add('Erro na gravacao da reducao z - Mensagem: ' + e.Message);
                  end;
                end;

              except

              end;


              // S E R V I D O R   PARA  E S T A C A O

              try
                // 1 - PRODUTO
                qrServidor.close;
                qrServidor.sql.Clear;
                qrServidor.sql.add('select * from c000058');
                qrServidor.sql.add('where tiporegistro = 1');
                qrServidor.sql.add('and C' + Zerar(grid.cell[0, i].asstring, 2)
                  + ' = 0');
                qrServidor.sql.add('order by codigo');
                qrServidor.Open;
                qrServidor.first;

                while not qrServidor.eof do
                begin
                  Application.ProcessMessages;

                  bflag := true;
                  case qrServidor.FieldByName('movimento').asinteger of
                    1: { inclusao }
                      begin
                        Memo1.Lines.add('PDV' + grid.cell[0, i].asstring +
                          ' - INC - PRODUTO - ' + qrServidor.FieldByName
                          ('codregistro').asstring);

                        qrServidor_Tabela.close;
                        qrServidor_Tabela.sql.Clear;
                        qrServidor_Tabela.sql.add
                          ('select c000025.*, c000100.Estoque_atual');
                        qrServidor_Tabela.sql.add('from c000025, c000100');
                        qrServidor_Tabela.sql.add
                          ('where c000025.codigo = c000100.codproduto');
                        qrServidor_Tabela.sql.add('and c000025.codigo = ''' +
                          qrServidor.FieldByName('codregistro')
                          .asstring + '''');
                        qrServidor_Tabela.Open;

                        if qrServidor_Tabela.RecordCount > 0 then
                        begin
                          try
                            qrPDV.close;
                            qrPDV.sql.Clear;
                            qrPDV.sql.add('insert into ESTOQUE (');
                            qrPDV.sql.add('CODIGO,');
                            qrPDV.sql.add('COD_BARRA,');
                            qrPDV.sql.add('NOME,');
                            qrPDV.sql.add('UNIDADE,');
                            qrPDV.sql.add('PRECO_VENDA,');
                            qrPDV.sql.add('PRECO_PROMOCAO,');
                            qrPDV.sql.add('INICIO_PROMOCAO,');
                            qrPDV.sql.add('FINAL_PROMOCAO,');
                            qrPDV.sql.add('CST,');
                            qrPDV.sql.add('ALIQUOTA,');
                            qrPDV.sql.add('DESCONTO_MAXIMO,');
                            qrPDV.sql.add('ST,');
                            qrPDV.sql.add('ESTOQUE,');
                            qrPDV.sql.add('IAT,');
                            qrPDV.sql.add('IPPT,');
                            qrPDV.sql.add('SITUACAO,'); // mizael
                            qrPDV.sql.add('NCM,');
                            qrPDV.sql.add('ALIQNACIONAL,');
                            qrPDV.SQL.Add('CSOSN'); // DARLON SANTOS 28/10/2017

                            qrPDV.sql.add(') values (');

                            qrPDV.sql.add(':CODIGO,');
                            qrPDV.sql.add(':COD_BARRA,');
                            qrPDV.sql.add(':NOME,');
                            qrPDV.sql.add(':UNIDADE,');
                            qrPDV.sql.add(':PRECO_VENDA,');
                            qrPDV.sql.add(':PRECO_PROMOCAO,');
                            qrPDV.sql.add(':INICIO_PROMOCAO,');
                            qrPDV.sql.add(':FINAL_PROMOCAO,');
                            qrPDV.sql.add(':CST,');
                            qrPDV.sql.add(':ALIQUOTA,');
                            qrPDV.sql.add(':DESCONTO_MAXIMO,');
                            qrPDV.sql.add(':ST,');
                            qrPDV.sql.add(':ESTOQUE,');
                            qrPDV.sql.add(':IAT,');
                            qrPDV.sql.add(':IPPT,');
                            qrPDV.sql.add(':SITUACAO,');
                            qrPDV.sql.add(':NCM,');
                            qrPDV.sql.add(':ALIQNACIONAL,');
                            qrPDV.SQL.Add(':CSOSN');  //DARLON SANTOS 28/10/2017

                            qrPDV.sql.add(')');
//                             DARLON SANTOS
                            qrPDV.ParamByName('CODIGO').asstring := qrServidor_Tabela.FieldByName('codigo').asstring;
                            qrPDV.ParamByName('COD_BARRA').asstring := copy(qrServidor_Tabela.FieldByName('codbarra').asstring, 1, 15);
                            qrPDV.ParamByName('NOME').asstring := copy(qrServidor_Tabela.FieldByName('produto').asstring, 1, 80);
                            qrPDV.ParamByName('UNIDADE').asstring := qrServidor_Tabela.FieldByName('unidade').asstring;
                            qrPDV.ParamByName('PRECO_VENDA').asfloat :=  qrServidor_Tabela.FieldByName('precovenda').asfloat;
                            qrPDV.ParamByName('PRECO_PROMOCAO').asfloat :=  qrServidor_Tabela.FieldByName('preco_promocao').asfloat;
                            qrPDV.ParamByName('INICIO_PROMOCAO').asdatetime :=  qrServidor_Tabela.FieldByName('data_promocao').asdatetime;
                            qrPDV.ParamByName('FINAL_PROMOCAO').asdatetime := qrServidor_Tabela.FieldByName('fim_promocao').asdatetime;
                            qrPDV.ParamByName('CST').asstring := qrServidor_Tabela.FieldByName('cst').asstring;
                            qrPDV.ParamByName('ALIQUOTA').asfloat :=  qrServidor_Tabela.FieldByName('aliquota').asfloat;
                            qrPDV.ParamByName('DESCONTO_MAXIMO').asfloat := 0;
                            scst := qrServidor_Tabela.FieldByName('cst').asstring;
                              if (scst = '060') or (scst = '010') or (scst = '070')
                            then
                              qrPDV.Params.ParamByName('st').asstring := 'F'
                            else if (scst = '040') or (scst = '030') then
                              qrPDV.Params.ParamByName('st').asstring := 'I'
                            else if (scst = '041') or (scst = '050') or
                              (scst = '051') or (scst = '090') then
                              qrPDV.Params.ParamByName('st').asstring := 'N'
                            else
                            qrPDV.ParamByName('st').asstring := 'T';
                            qrPDV.ParamByName('ESTOQUE').asfloat :=  qrServidor_Tabela.FieldByName('estoque_atual').asfloat;
                            qrPDV.ParamByName('IAT').asstring := qrServidor_Tabela.FieldByName('IAT').asstring;
                            qrPDV.ParamByName('IPPT').asstring :=  qrServidor_Tabela.FieldByName('IPPT').asstring;
                            qrPDV.ParamByName('SITUACAO').asinteger := 0;
                           if (qrServidor_Tabela.FieldByName('CLASSIFICACAO_FISCAL').asstring = 'null') or (qrServidor_Tabela.FieldByName('CLASSIFICACAO_FISCAL').asstring = '') then
                              qrPDV.ParamByName('NCM').asstring := '0101.90.00'
                            else
                             qrPDV.ParamByName('NCM').asstring := OnlyNumber(qrServidor_Tabela.FieldByName('CLASSIFICACAO_FISCAL').asstring);
                             XNCM := qrPDV.ParamByName('NCM').asstring;
                             QRY_IBPT.close;
                            QRY_IBPT.sql.Clear;
                            QRY_IBPT.sql.add('SELECT * FROM IBPT_ALIQUOTAS WHERE NCM = :NCM');
                            QRY_IBPT.ParamByName('NCM').asstring := OnlyNumber(XNCM);
                            QRY_IBPT.Open();
                            if not QRY_IBPT.IsEmpty then
                            begin
                              qrPDV.ParamByName('ALIQNACIONAL').Value := QRY_IBPT.FieldByName('ALIQNAC').Value;
                              end
                            else
                             qrPDV.ParamByName('ALIQNACIONAL').Value := 4.2;
                             qrPDV.ParamByName('CSOSN').Value := qrServidor_Tabela.FieldByName('CSOSN').Value;  //DARLON SANTOS 28/10/2017


                            qrPDV.ExecSQL;
                          except
                            on E: Exception do
                            begin
                              Memo1.Lines.add('PDV' + grid.cell[0, i].asstring +
                                ' ERRO - INC - PRODUTO - ' +
                                qrServidor.FieldByName('codregistro').asstring);

                              qrPDV.close;
                              qrPDV.sql.Clear;
                              qrPDV.sql.add('select codigo from estoque');
                              qrPDV.sql.add('where codigo = ' +
                                inttostr(StrToInt(qrServidor.FieldByName
                                ('codregistro').asstring)));
                              qrPDV.Open;
                              if qrPDV.RecordCount = 0 then
                                bflag := false;
                            end;
                          end;
                        end;

                      end;
                    2: { alteracao }
                      begin

                        qrServidor_Tabela.close;
                        qrServidor_Tabela.sql.Clear;
                        qrServidor_Tabela.sql.add
                          ('select c000025.*, c000100.Estoque_atual');
                        qrServidor_Tabela.sql.add('from c000025, c000100');
                        qrServidor_Tabela.sql.add
                          ('where c000025.codigo = c000100.codproduto');
                        qrServidor_Tabela.sql.add('and c000025.codigo = ''' +
                          qrServidor.FieldByName('codregistro')
                          .asstring + '''');
                        qrServidor_Tabela.Open;

                        if qrServidor_Tabela.RecordCount > 0 then
                        begin
//                        DARLON SANTOS 28/10/2017
                          qrPDV_Tabela.close;
                          qrPDV_Tabela.sql.Clear;
                          qrPDV_Tabela.sql.add
                            ('select * from ESTOQUE where codigo = ' +  inttostr(StrToInt(qrServidor_Tabela.FieldByName('codigo').asstring)));
                          qrPDV_Tabela.Open;
                           if qrPDV_Tabela.RecordCount > 0 then
                          begin
                            // achou o registro e processar com a atualizacao
                            Memo1.Lines.add('PDV' + grid.cell[0, i].asstring +
                              ' - ALT - PRODUTO - ' + qrServidor.FieldByName
                              ('codregistro').asstring);
                            try
                              qrPDV.close;
                              qrPDV.sql.Clear;
                              qrPDV.sql.add('update ESTOQUE set');
                              qrPDV.sql.add('COD_BARRA = :COD_BARRA,');
                              qrPDV.sql.add('NOME = :NOME,');
                              qrPDV.sql.add('UNIDADE = :UNIDADE,');
                              qrPDV.sql.add('PRECO_VENDA = :PRECO_VENDA,');
                              qrPDV.sql.add('PRECO_PROMOCAO = :PRECO_PROMOCAO,');
                              qrPDV.sql.add('INICIO_PROMOCAO = :INICIO_PROMOCAO,');
                              qrPDV.sql.add('FINAL_PROMOCAO = :FINAL_PROMOCAO,');
                              qrPDV.sql.add('CST = :CST,');
                              qrPDV.sql.add('ALIQUOTA = :ALIQUOTA,');
                              qrPDV.sql.add('DESCONTO_MAXIMO = :DESCONTO_MAXIMO,');
                              qrPDV.sql.add('ST = :ST,');
                              qrPDV.sql.add('ESTOQUE = :ESTOQUE,');
                              qrPDV.sql.add('IAT = :IAT,');
                              qrPDV.sql.add('IPPT = :IPPT,');
                              qrPDV.sql.add('SITUACAO = :SITUACAO,');
                              qrPDV.sql.add('NCM = :NCM,');
                              qrPDV.sql.add('ALIQNACIONAL = :ALIQNACIONAL,');
                              qrPDV.SQL.Add('CSOSN = :CSOSN'); //DARLON SANTOS 28/10/2017
                              qrPDV.sql.add('where codigo = :codigo');
                                     //DARLON SANTOS
                              qrPDV.ParamByName('CODIGO').asinteger :=  StrToInt(qrServidor_Tabela.FieldByName('codigo').asstring);
                              qrPDV.ParamByName('COD_BARRA').asstring := copy(qrServidor_Tabela.FieldByName('codbarra').asstring, 1, 15);
                              qrPDV.ParamByName('NOME').asstring := copy(qrServidor_Tabela.FieldByName('produto').asstring, 1, 80);
                              qrPDV.ParamByName('UNIDADE').asstring := qrServidor_Tabela.FieldByName('unidade').asstring;
                              qrPDV.ParamByName('PRECO_VENDA').asfloat := qrServidor_Tabela.FieldByName('precovenda').asfloat;
                              qrPDV.ParamByName('PRECO_PROMOCAO').asfloat := qrServidor_Tabela.FieldByName('preco_promocao').asfloat;
                              qrPDV.ParamByName('INICIO_PROMOCAO').asdatetime := qrServidor_Tabela.FieldByName('data_promocao').asdatetime;
                              qrPDV.ParamByName('FINAL_PROMOCAO').asdatetime := qrServidor_Tabela.FieldByName('fim_promocao').asdatetime;
                              qrPDV.ParamByName('CST').asstring := qrServidor_Tabela.FieldByName('cst').asstring;
                              qrPDV.ParamByName('ALIQUOTA').asfloat := qrServidor_Tabela.FieldByName('aliquota').asfloat;
                              qrPDV.ParamByName('DESCONTO_MAXIMO').asfloat := 0;
                                scst := qrServidor_Tabela.FieldByName('cst').asstring;
                              if (scst = '060') or (scst = '010') or (scst = '070') then
                                qrPDV.Params.ParamByName('st').asstring := 'F'
                              else if (scst = '040') or (scst = '030') then
                                qrPDV.Params.ParamByName('st').asstring := 'I'
                              else if (scst = '041') or (scst = '050') or
                                (scst = '051') or (scst = '090') then
                                qrPDV.Params.ParamByName('st').asstring := 'N'
                              else
                                qrPDV.ParamByName('st').asstring := 'T';
                                qrPDV.ParamByName('ESTOQUE').asfloat :=  qrServidor_Tabela.FieldByName('estoque_atual').asfloat;
                                qrPDV.ParamByName('IAT').asstring := qrServidor_Tabela.FieldByName('IAT').asstring;
                                qrPDV.ParamByName('IPPT').asstring := qrServidor_Tabela.FieldByName('IPPT').asstring;
                                qrPDV.ParamByName('SITUACAO').asinteger := qrServidor_Tabela.FieldByName('SITUACAO').asinteger;
                               if (qrServidor_Tabela.FieldByName('CLASSIFICACAO_FISCAL').asstring = 'null') or (qrServidor_Tabela.FieldByName('CLASSIFICACAO_FISCAL').asstring = '') then
                                qrPDV.ParamByName('NCM').asstring :='0101.90.00'
                               else
                                qrPDV.ParamByName('NCM').asstring := OnlyNumber(qrServidor_Tabela.FieldByName('CLASSIFICACAO_FISCAL').asstring);
                                XNCM := qrPDV.ParamByName('NCM').asstring;
                                QRY_IBPT.close;
                                QRY_IBPT.sql.Clear;
                                QRY_IBPT.sql.add
                                ('SELECT * FROM IBPT_ALIQUOTAS WHERE NCM = :NCM');
                              QRY_IBPT.ParamByName('NCM').asstring := OnlyNumber(XNCM);
                              QRY_IBPT.Open();
                              if not QRY_IBPT.IsEmpty then
                              begin
                                qrPDV.ParamByName('ALIQNACIONAL').Value := QRY_IBPT.FieldByName('ALIQNAC').Value;
                                qrPDV.ParamByName('CSOSN').Value := qrServidor_Tabela.FieldByName('CSOSN').Value;  //DARLON SANTOS 28/10/2017

                               end
                              else
                                qrPDV.ParamByName('ALIQNACIONAL').Value := 4.2;

                                qrPDV.ExecSQL;
                            except
                              Memo1.Lines.add('PDV' + grid.cell[0, i].asstring +
                                ' ERRO - ALT - PRODUTO - ' +
                                qrServidor.FieldByName('codregistro').asstring);
                              bflag := false;
                            end;
                          end
                          else
                          begin
                            // nao existe este registro no pdv... fazer a inclusao

                            try
                            //DARLON SANTOS
                              Memo1.Lines.add('PDV' + grid.cell[0, i].asstring +
                                ' - INC - PRODUTO - ' + qrServidor.FieldByName
                                ('codregistro').asstring);
                              qrPDV.close;
                              qrPDV.sql.Clear;
                              qrPDV.sql.add('insert into ESTOQUE (');
                              qrPDV.sql.add('CODIGO,');
                              qrPDV.sql.add('COD_BARRA,');
                              qrPDV.sql.add('NOME,');
                              qrPDV.sql.add('UNIDADE,');
                              qrPDV.sql.add('PRECO_VENDA,');
                              qrPDV.sql.add('PRECO_PROMOCAO,');
                              qrPDV.sql.add('INICIO_PROMOCAO,');
                              qrPDV.sql.add('FINAL_PROMOCAO,');
                              qrPDV.sql.add('CST,');
                              qrPDV.sql.add('ALIQUOTA,');
                              qrPDV.sql.add('DESCONTO_MAXIMO,');
                              qrPDV.sql.add('ST,');
                              qrPDV.sql.add('ESTOQUE,');
                              qrPDV.sql.add('IAT,');
                              qrPDV.sql.add('IPPT,');
                              qrPDV.sql.add('SITUACAO,');
                              qrPDV.sql.add('NCM,');
                              qrPDV.sql.add('ALIQNACIONAL,');
                              qrPDV.SQL.Add('CSOSN');

                              qrPDV.sql.add(') values (');

                              qrPDV.sql.add(':CODIGO,');
                              qrPDV.sql.add(':COD_BARRA,');
                              qrPDV.sql.add(':NOME,');
                              qrPDV.sql.add(':UNIDADE,');
                              qrPDV.sql.add(':PRECO_VENDA,');
                              qrPDV.sql.add(':PRECO_PROMOCAO,');
                              qrPDV.sql.add(':INICIO_PROMOCAO,');
                              qrPDV.sql.add(':FINAL_PROMOCAO,');
                              qrPDV.sql.add(':CST,');
                              qrPDV.sql.add(':ALIQUOTA,');
                              qrPDV.sql.add(':DESCONTO_MAXIMO,');
                              qrPDV.sql.add(':ST,');
                              qrPDV.sql.add(':ESTOQUE,');
                              qrPDV.sql.add(':IAT,');
                              qrPDV.sql.add(':IPPT,');
                              qrPDV.sql.add(':SITUACAO,');
                              qrPDV.sql.add(':NCM,');
                              qrPDV.sql.add(':ALIQNACIONAL,');
                              qrPDV.SQL.Add(':CSOSN');
                               qrPDV.sql.add(')');
//                              PARAMETROS
                              qrPDV.ParamByName('CODIGO').asstring := qrServidor_Tabela.FieldByName('codigo').asstring;
                              qrPDV.ParamByName('COD_BARRA').asstring := copy(qrServidor_Tabela.FieldByName('codbarra').asstring, 1, 15);
                              qrPDV.ParamByName('NOME').asstring := copy(qrServidor_Tabela.FieldByName('produto').asstring, 1, 80);
                              qrPDV.ParamByName('UNIDADE').asstring := qrServidor_Tabela.FieldByName('unidade').asstring;
                              qrPDV.ParamByName('PRECO_VENDA').asfloat := qrServidor_Tabela.FieldByName('precovenda').asfloat;
                              qrPDV.ParamByName('PRECO_PROMOCAO').asfloat := qrServidor_Tabela.FieldByName('preco_promocao').asfloat;
                              qrPDV.ParamByName('INICIO_PROMOCAO').asdatetime := qrServidor_Tabela.FieldByName('data_promocao').asdatetime;
                              qrPDV.ParamByName('FINAL_PROMOCAO').asdatetime := qrServidor_Tabela.FieldByName('fim_promocao').asdatetime;
                              qrPDV.ParamByName('CST').asstring := qrServidor_Tabela.FieldByName('cst').asstring;
                              qrPDV.ParamByName('ALIQUOTA').asfloat := qrServidor_Tabela.FieldByName('aliquota').asfloat;
                              qrPDV.ParamByName('DESCONTO_MAXIMO').asfloat := 0;
                               scst := qrServidor_Tabela.FieldByName('cst').asstring;
                              if (scst = '060') or (scst = '010') or (scst = '070') then
                                qrPDV.Params.ParamByName('st').asstring := 'F'
                              else if (scst = '040') or (scst = '030') then
                                qrPDV.Params.ParamByName('st').asstring := 'I'
                              else if (scst = '041') or (scst = '050') or
                                (scst = '051') or (scst = '090') then
                                qrPDV.Params.ParamByName('st').asstring := 'N'
                              else
                              qrPDV.ParamByName('st').asstring := 'T';
                              qrPDV.ParamByName('ESTOQUE').asfloat := qrServidor_Tabela.FieldByName('estoque_atual').asfloat;
                              qrPDV.ParamByName('IAT').asstring := qrServidor_Tabela.FieldByName('IAT').asstring;
                              qrPDV.ParamByName('IPPT').asstring := qrServidor_Tabela.FieldByName('IPPT').asstring;
                              qrPDV.ParamByName('SITUACAO').asinteger :=  qrServidor_Tabela.FieldByName('SITUACAO').asinteger;
                              if (qrServidor_Tabela.FieldByName('CLASSIFICACAO_FISCAL').asstring = 'null') or (qrServidor_Tabela.FieldByName('CLASSIFICACAO_FISCAL').asstring = '') then
                                qrPDV.ParamByName('NCM').asstring :='0101.90.00'
                              else
                                qrPDV.ParamByName('NCM').asstring := OnlyNumber(qrServidor_Tabela.FieldByName('CLASSIFICACAO_FISCAL').asstring);
                                XNCM := qrPDV.ParamByName('NCM').asstring;
                                QRY_IBPT.close;
                               QRY_IBPT.sql.Clear;
                               QRY_IBPT.sql.add
                                ('SELECT * FROM IBPT_ALIQUOTAS WHERE NCM = :NCM');
                                QRY_IBPT.ParamByName('NCM').asstring := OnlyNumber(XNCM);
                                QRY_IBPT.Open();
                              if not QRY_IBPT.IsEmpty then
                              begin
                                qrPDV.ParamByName('ALIQNACIONAL').Value := QRY_IBPT.FieldByName('ALIQNAC').Value;
                                qrPDV.ParamByName('CSOSN').Value := qrServidor_Tabela.FieldByName('CSOSN').Value;  //DARLON SANTOS 28/10/2017
                              end
                              else
                                qrPDV.ParamByName('ALIQNACIONAL').Value := 4.2;


                              qrPDV.ExecSQL;
                            except
                              Memo1.Lines.add('PDV' + grid.cell[0, i].asstring +
                                ' ERRO - INC - PRODUTO - ' +
                                qrServidor.FieldByName('codregistro').asstring);
                              qrPDV.close;
                              qrPDV.sql.Clear;
                              qrPDV.sql.add('select codigo from estoque');
                              qrPDV.sql.add('where codigo = ' +
                                inttostr(StrToInt(qrServidor.FieldByName
                                ('codregistro').asstring)));
                              qrPDV.Open;
                              if qrPDV.RecordCount = 0 then
                                bflag := false;
                            end;
                          end;
                        end;
                      end;
                    3: { exclusao }
                      begin
                        try
                          Memo1.Lines.add('PDV' + grid.cell[0, i].asstring +
                            ' - EXC - PRODUTO - ' + qrServidor.FieldByName
                            ('codregistro').asstring);
                          qrPDV.close;
                          qrPDV.sql.Clear;
                          qrPDV.sql.add
                            ('delete from estoque where codigo = :codigo');
                          qrPDV.ParamByName('CODIGO').asinteger :=
                            StrToInt(qrServidor.FieldByName('codregistro')
                            .asstring);
                          qrPDV.ExecSQL;
                        except
                          Memo1.Lines.add('PDV' + grid.cell[0, i].asstring +
                            ' ERRO - EXC - PRODUTO - ' + qrServidor.FieldByName
                            ('codregistro').asstring);
                          bflag := false;
                        end;
                      end;
                  end;

                  IF bflag THEN
                  BEGIN
                    try

                      // atualizar a flag no servidor
                      qrServidor_Tabela.close;
                      qrServidor_Tabela.sql.Clear;
                      qrServidor_Tabela.sql.add('update c000058 set');
                      qrServidor_Tabela.sql.add
                        ('C' + Zerar(grid.cell[0, i].asstring, 2) + ' = 1');
                      qrServidor_Tabela.sql.add
                        ('where codigo = ' + qrServidor.FieldByName('codigo')
                        .asstring);
                      qrServidor_Tabela.ExecSQL;
                      Memo1.Lines.add('PDV' + grid.cell[0, i].asstring +
                        ' - ATUALIZOU PRODUTO - ' + qrServidor.FieldByName
                        ('codREGISTRO').asstring);

                    except
                      ON E: Exception DO
                        Memo1.Lines.add('PDV' + grid.cell[0, i].asstring +
                          ' - ERRO: ' + E.message);
                    end;
                  END;
                  qrServidor.next
                end;

                // 2 - CLIENTE
                qrServidor.close;
                qrServidor.sql.Clear;
                qrServidor.sql.add('select * from c000058');
                qrServidor.sql.add('where tiporegistro = 4');
                qrServidor.sql.add('and C' + Zerar(grid.cell[0, i].asstring, 2)
                  + ' = 0');
                qrServidor.sql.add('order by codigo');
                qrServidor.Open;
                qrServidor.first;

                while not qrServidor.eof do
                begin
                  Application.ProcessMessages;

                  bflag := true;
                  case qrServidor.FieldByName('movimento').asinteger of
                    1: { inclusao }
                      begin
                        Memo1.Lines.add('PDV' + grid.cell[0, i].asstring +
                          ' - INC - CLIENTE - ' + qrServidor.FieldByName
                          ('codregistro').asstring);
                        qrServidor_Tabela.close;
                        qrServidor_Tabela.sql.Clear;
                        qrServidor_Tabela.sql.add('select *');
                        qrServidor_Tabela.sql.add('from C000007');
                        qrServidor_Tabela.sql.add('where codigo =  ''' +
                          qrServidor.FieldByName('codregistro')
                          .asstring + '''');
                        qrServidor_Tabela.Open;

                        TRY
                          if qrServidor_Tabela.RecordCount > 0 then
                          begin
                            qrPDV.close;
                            qrPDV.sql.Clear;
                            qrPDV.sql.add('insert into CLIENTE (');

                            qrPDV.sql.add('CODIGO,');
                            qrPDV.sql.add('NOME,');
                            qrPDV.sql.add('CPF,');
                            qrPDV.sql.add('ENDERECO,');
                            qrPDV.sql.add('COMPLEMENTO,');
                            qrPDV.sql.add('BAIRRO,');
                            qrPDV.sql.add('CIDADE,');
                            qrPDV.sql.add('UF,');
                            qrPDV.sql.add('CEP,');
                            qrPDV.sql.add('SITUACAO,');
                            qrPDV.sql.add('OBS,');
                            qrPDV.sql.add('LIMITE,');
                            qrPDV.sql.add('UTILIZADO,');
                            qrPDV.sql.add('DISPONIVEL,');
                            qrPDV.sql.add('ATUALIZADO');
                            qrPDV.sql.add(') values (');

                            qrPDV.sql.add(':CODIGO,');
                            qrPDV.sql.add(':NOME,');
                            qrPDV.sql.add(':CPF,');
                            qrPDV.sql.add(':ENDERECO,');
                            qrPDV.sql.add(':COMPLEMENTO,');
                            qrPDV.sql.add(':BAIRRO,');
                            qrPDV.sql.add(':CIDADE,');
                            qrPDV.sql.add(':UF,');
                            qrPDV.sql.add(':CEP,');
                            qrPDV.sql.add(':SITUACAO,');
                            qrPDV.sql.add(':OBS,');
                            qrPDV.sql.add(':LIMITE,');
                            qrPDV.sql.add(':UTILIZADO,');
                            qrPDV.sql.add(':DISPONIVEL,');
                            qrPDV.sql.add(':ATUALIZADO');

                            qrPDV.sql.add(')');

                            qrPDV.ParamByName('CODIGO').asstring :=
                              qrServidor_Tabela.FieldByName('codigo').asstring;
                            qrPDV.ParamByName('NOME').asstring :=
                              qrServidor_Tabela.FieldByName('nome').asstring;
                            qrPDV.ParamByName('CPF').asstring :=
                              qrServidor_Tabela.FieldByName('cpf').asstring;
                            qrPDV.ParamByName('ENDERECO').asstring :=
                              qrServidor_Tabela.FieldByName('endereco')
                              .asstring;
                            qrPDV.ParamByName('COMPLEMENTO').asstring :=
                              qrServidor_Tabela.FieldByName
                              ('complemento').asstring;
                            qrPDV.ParamByName('BAIRRO').asstring :=
                              qrServidor_Tabela.FieldByName('bairro').asstring;
                            qrPDV.ParamByName('CIDADE').asstring :=
                              qrServidor_Tabela.FieldByName('cidade').asstring;
                            qrPDV.ParamByName('UF').asstring :=
                              qrServidor_Tabela.FieldByName('uf').asstring;
                            qrPDV.ParamByName('CEP').asstring :=
                              qrServidor_Tabela.FieldByName('cep').asstring;
                            qrPDV.ParamByName('SITUACAO').asstring :=
                              qrServidor_Tabela.FieldByName('situacao')
                              .asstring;
                            qrPDV.ParamByName('OBS').Value :=
                              qrServidor_Tabela.FieldByName('obs1').asstring +
                              #13 + qrServidor_Tabela.FieldByName('obs2')
                              .asstring + #13 + qrServidor_Tabela.FieldByName
                              ('obs3').asstring + #13 +
                              qrServidor_Tabela.FieldByName('obs4').asstring +
                              #13 + qrServidor_Tabela.FieldByName('obs5')
                              .asstring + #13 + qrServidor_Tabela.FieldByName
                              ('obs6').asstring;
                            qrPDV.ParamByName('LIMITE').asfloat :=
                              qrServidor_Tabela.FieldByName('LIMITE').asfloat;
                            qrPDV.ParamByName('UTILIZADO').asfloat :=
                              verifica_crediario
                              (qrServidor_Tabela.FieldByName('codigo')
                              .asstring);
                            qrPDV.ParamByName('DISPONIVEL').asfloat :=
                              qrPDV.ParamByName('LIMITE').asfloat -
                              qrPDV.ParamByName('UTILIZADO').asfloat;
                            qrPDV.ParamByName('ATUALIZADO').asstring :=
                              DateToStr(date) + ' AS ' + timetostr(time);
                            qrPDV.ExecSQL;
                          end;
                        except
                          Memo1.Lines.add('PDV' + grid.cell[0, i].asstring +
                            ' ERRO - INC - CLIENTE - ' + qrServidor.FieldByName
                            ('codregistro').asstring);
                          qrPDV.close;
                          qrPDV.sql.Clear;
                          qrPDV.sql.add('select codigo from CLIENTE');
                          qrPDV.sql.add('where codigo = ' +
                            inttostr(StrToInt(qrServidor.FieldByName
                            ('codregistro').asstring)));
                          qrPDV.Open;
                          if qrPDV.RecordCount = 0 then
                            bflag := false;
                        end;
                      end;
                    2: { alteracao }
                      begin
                        qrServidor_Tabela.close;
                        qrServidor_Tabela.sql.Clear;
                        qrServidor_Tabela.sql.add('select *');
                        qrServidor_Tabela.sql.add('from C000007');
                        qrServidor_Tabela.sql.add('where codigo =  ''' +
                          qrServidor.FieldByName('codregistro')
                          .asstring + '''');
                        qrServidor_Tabela.Open;

                        if qrServidor_Tabela.RecordCount > 0 then
                        begin
                          qrPDV_Tabela.close;
                          qrPDV_Tabela.sql.Clear;
                          qrPDV_Tabela.sql.add
                            ('select codigo from cliente where codigo = ' +
                            inttostr(StrToInt(qrServidor_Tabela.FieldByName
                            ('codigo').asstring)));
                          qrPDV_Tabela.Open;

                          if qrPDV_Tabela.RecordCount > 0 then
                          begin
                            try
                              Memo1.Lines.add('PDV' + grid.cell[0, i].asstring +
                                ' - ALT - CLIENTE - ' + qrServidor.FieldByName
                                ('codregistro').asstring);
                              qrPDV.close;
                              qrPDV.sql.Clear;
                              qrPDV.sql.add('update CLIENTE set');

                              qrPDV.sql.add('CODIGO = :CODIGO,');
                              qrPDV.sql.add('NOME = :NOME,');
                              qrPDV.sql.add('CPF = :CPF,');
                              qrPDV.sql.add('ENDERECO = :ENDERECO,');
                              qrPDV.sql.add('COMPLEMENTO = :COMPLEMENTO,');
                              qrPDV.sql.add('BAIRRO = :BAIRRO,');
                              qrPDV.sql.add('CIDADE = :CIDADE,');
                              qrPDV.sql.add('UF = :UF,');
                              qrPDV.sql.add('CEP = :CEP,');
                              qrPDV.sql.add('SITUACAO = :SITUACAO,');
                              qrPDV.sql.add('OBS = :OBS,');
                              qrPDV.sql.add('LIMITE = :LIMITE,');
                              qrPDV.sql.add('UTILIZADO = :UTILIZADO,');
                              qrPDV.sql.add('DISPONIVEL = :DISPONIVEL,');
                              qrPDV.sql.add('ATUALIZADO = :ATUALIZADO');
                              qrPDV.sql.add('where codigo = :codigo');

                              qrPDV.ParamByName('CODIGO').asstring :=
                                qrServidor_Tabela.FieldByName('codigo')
                                .asstring;
                              qrPDV.ParamByName('NOME').asstring :=
                                qrServidor_Tabela.FieldByName('nome').asstring;
                              qrPDV.ParamByName('CPF').asstring :=
                                qrServidor_Tabela.FieldByName('cpf').asstring;
                              qrPDV.ParamByName('ENDERECO').asstring :=
                                qrServidor_Tabela.FieldByName
                                ('endereco').asstring;
                              qrPDV.ParamByName('COMPLEMENTO').asstring :=
                                qrServidor_Tabela.FieldByName
                                ('complemento').asstring;
                              qrPDV.ParamByName('BAIRRO').asstring :=
                                qrServidor_Tabela.FieldByName('bairro')
                                .asstring;
                              qrPDV.ParamByName('CIDADE').asstring :=
                                qrServidor_Tabela.FieldByName('cidade')
                                .asstring;
                              qrPDV.ParamByName('UF').asstring :=
                                qrServidor_Tabela.FieldByName('uf').asstring;
                              qrPDV.ParamByName('CEP').asstring :=
                                qrServidor_Tabela.FieldByName('cep').asstring;
                              qrPDV.ParamByName('SITUACAO').asstring :=
                                qrServidor_Tabela.FieldByName
                                ('situacao').asstring;
                              qrPDV.ParamByName('OBS').Value :=
                                qrServidor_Tabela.FieldByName('obs1').asstring +
                                #13 + qrServidor_Tabela.FieldByName('obs2')
                                .asstring + #13 + qrServidor_Tabela.FieldByName
                                ('obs3').asstring + #13 +
                                qrServidor_Tabela.FieldByName('obs4').asstring +
                                #13 + qrServidor_Tabela.FieldByName('obs5')
                                .asstring + #13 + qrServidor_Tabela.FieldByName
                                ('obs6').asstring;
                              qrPDV.ParamByName('LIMITE').asfloat :=
                                qrServidor_Tabela.FieldByName('LIMITE').asfloat;
                              qrPDV.ParamByName('UTILIZADO').asfloat :=
                                verifica_crediario
                                (qrServidor_Tabela.FieldByName('codigo')
                                .asstring);
                              qrPDV.ParamByName('DISPONIVEL').asfloat :=
                                qrPDV.ParamByName('LIMITE').asfloat -
                                qrPDV.ParamByName('UTILIZADO').asfloat;
                              qrPDV.ParamByName('ATUALIZADO').asstring :=
                                DateToStr(date) + ' AS ' + timetostr(time);
                              qrPDV.ExecSQL;
                            except
                              Memo1.Lines.add('PDV' + grid.cell[0, i].asstring +
                                ' ERRO - ALT - CLIENTE - ' +
                                qrServidor.FieldByName('codregistro').asstring);
                              bflag := false;
                            end;
                          end
                          else
                          begin
                            TRY
                              if qrServidor_Tabela.RecordCount > 0 then
                              begin
                                qrPDV.close;
                                qrPDV.sql.Clear;
                                qrPDV.sql.add('insert into CLIENTE (');
                                qrPDV.sql.add('CODIGO,');
                                qrPDV.sql.add('NOME,');
                                qrPDV.sql.add('CPF,');
                                qrPDV.sql.add('ENDERECO,');
                                qrPDV.sql.add('COMPLEMENTO,');
                                qrPDV.sql.add('BAIRRO,');
                                qrPDV.sql.add('CIDADE,');
                                qrPDV.sql.add('UF,');
                                qrPDV.sql.add('CEP,');
                                qrPDV.sql.add('SITUACAO,');
                                qrPDV.sql.add('OBS,');
                                qrPDV.sql.add('LIMITE,');
                                qrPDV.sql.add('UTILIZADO,');
                                qrPDV.sql.add('DISPONIVEL,');
                                qrPDV.sql.add('ATUALIZADO');
                                qrPDV.sql.add(') values (');
                                qrPDV.sql.add(':CODIGO,');
                                qrPDV.sql.add(':NOME,');
                                qrPDV.sql.add(':CPF,');
                                qrPDV.sql.add(':ENDERECO,');
                                qrPDV.sql.add(':COMPLEMENTO,');
                                qrPDV.sql.add(':BAIRRO,');
                                qrPDV.sql.add(':CIDADE,');
                                qrPDV.sql.add(':UF,');
                                qrPDV.sql.add(':CEP,');
                                qrPDV.sql.add(':SITUACAO,');
                                qrPDV.sql.add(':OBS,');
                                qrPDV.sql.add(':LIMITE,');
                                qrPDV.sql.add(':UTILIZADO,');
                                qrPDV.sql.add(':DISPONIVEL,');
                                qrPDV.sql.add(':ATUALIZADO');
                                qrPDV.sql.add(')');
                                qrPDV.ParamByName('CODIGO').asstring :=
                                  qrServidor_Tabela.FieldByName
                                  ('codigo').asstring;
                                qrPDV.ParamByName('NOME').asstring :=
                                  qrServidor_Tabela.FieldByName('nome')
                                  .asstring;
                                qrPDV.ParamByName('CPF').asstring :=
                                  qrServidor_Tabela.FieldByName('cpf').asstring;
                                qrPDV.ParamByName('ENDERECO').asstring :=
                                  qrServidor_Tabela.FieldByName
                                  ('endereco').asstring;
                                qrPDV.ParamByName('COMPLEMENTO').asstring :=
                                  qrServidor_Tabela.FieldByName
                                  ('complemento').asstring;
                                qrPDV.ParamByName('BAIRRO').asstring :=
                                  qrServidor_Tabela.FieldByName
                                  ('bairro').asstring;
                                qrPDV.ParamByName('CIDADE').asstring :=
                                  qrServidor_Tabela.FieldByName
                                  ('cidade').asstring;
                                qrPDV.ParamByName('UF').asstring :=
                                  qrServidor_Tabela.FieldByName('uf').asstring;
                                qrPDV.ParamByName('CEP').asstring :=
                                  qrServidor_Tabela.FieldByName('cep').asstring;
                                qrPDV.ParamByName('SITUACAO').asstring :=
                                  qrServidor_Tabela.FieldByName
                                  ('situacao').asstring;
                                qrPDV.ParamByName('OBS').Value :=
                                  qrServidor_Tabela.FieldByName('obs1').asstring
                                  + #13 + qrServidor_Tabela.FieldByName('obs2')
                                  .asstring + #13 +
                                  qrServidor_Tabela.FieldByName('obs3').asstring
                                  + #13 + qrServidor_Tabela.FieldByName('obs4')
                                  .asstring + #13 +
                                  qrServidor_Tabela.FieldByName('obs5').asstring
                                  + #13 + qrServidor_Tabela.FieldByName
                                  ('obs6').asstring;
                                qrPDV.ParamByName('LIMITE').asfloat :=
                                  qrServidor_Tabela.FieldByName
                                  ('LIMITE').asfloat;
                                qrPDV.ParamByName('UTILIZADO').asfloat :=
                                  verifica_crediario
                                  (qrServidor_Tabela.FieldByName('codigo')
                                  .asstring);
                                qrPDV.ParamByName('DISPONIVEL').asfloat :=
                                  qrPDV.ParamByName('LIMITE').asfloat -
                                  qrPDV.ParamByName('UTILIZADO').asfloat;
                                qrPDV.ParamByName('ATUALIZADO').asstring :=
                                  DateToStr(date) + ' AS ' + timetostr(time);
                                qrPDV.ExecSQL;
                              end;
                            except
                              on E: Exception do
                              begin
                                Memo1.Lines.add('PDV' + grid.cell[0, i].asstring
                                  + ' ERRO - INC - CLIENTE - ' +
                                  qrServidor.FieldByName('codregistro')
                                  .asstring);
                                Memo1.Lines.add('* ' + E.message);
                                qrPDV.close;
                                qrPDV.sql.Clear;
                                qrPDV.sql.add('select codigo from CLIENTE');
                                qrPDV.sql.add('where codigo = ' +
                                  inttostr(StrToInt(qrServidor.FieldByName
                                  ('codregistro').asstring)));
                                qrPDV.Open;
                                if qrPDV.RecordCount = 0 then
                                  bflag := false;
                              end;
                            end;
                          end;
                        end;

                      end;
                    3: { exclusao }
                      begin
                        TRY
                          Memo1.Lines.add('PDV' + grid.cell[0, i].asstring +
                            ' - EXC - CLIENTE - ' + qrServidor.FieldByName
                            ('codregistro').asstring);
                          qrPDV.close;
                          qrPDV.sql.Clear;
                          qrPDV.sql.add
                            ('delete from cliente where codigo = :codigo');
                          qrPDV.ParamByName('CODIGO').asinteger :=
                            StrToInt(qrServidor.FieldByName('codregistro')
                            .asstring);
                          qrPDV.ExecSQL;
                        EXCEPT
                          On E: Exception do
                          begin
                            Memo1.Lines.add('PDV' + grid.cell[0, i].asstring +
                              ' ERRO - EXC - CLIENTE - ' +
                              qrServidor.FieldByName('codregistro').asstring);
                            bflag := false;

                            if POS('FOREIGN', AnsiUpperCase(E.message)) > 0 then
                              Memo1.Lines.add
                                ('*** Cliente acima não pode ser apagado, pois existe cupom em seu nome!');

                          end;
                        end;
                      end;
                  end;

                  IF bflag then
                  BEGIN
                    try
                      // atualizar a flag no servidor
                      qrServidor_Tabela.close;
                      qrServidor_Tabela.sql.Clear;
                      qrServidor_Tabela.sql.add('update c000058 set');
                      qrServidor_Tabela.sql.add
                        ('C' + Zerar(grid.cell[0, i].asstring, 2) + ' = 1');
                      qrServidor_Tabela.sql.add
                        ('where codigo = ' + qrServidor.FieldByName('codigo')
                        .asstring);
                      qrServidor_Tabela.ExecSQL;
                      Memo1.Lines.add('PDV' + grid.cell[0, i].asstring +
                        ' - ATUALIZOU CLIENTE - ' + qrServidor.FieldByName
                        ('codREGISTRO').asstring);
                    except
                      ON E: Exception DO
                        Memo1.Lines.add('PDV' + grid.cell[0, i].asstring +
                          ' - ERRO: ' + E.message);
                    end;
                  END;
                  qrServidor.next

                end;
              except
                ON E: Exception DO
                  Memo1.Lines.add('PDV' + grid.cell[0, i].asstring + ' - ERRO: '
                    + E.message);
              end;

              qrServidor.close;

              try
                qrPDV.close;
                qrPDV.sql.Clear;
                qrPDV.sql.add('update config set carga_data = ''' +
                  DateToStr(date) + ''',');
                qrPDV.sql.add('carga_hora = ''' + timetostr(time) + '''');
                qrPDV.ExecSQL;
              except

              end;
            END
            ELSE
            BEGIN
              grid.cell[3, i].asinteger := 1;
              Continue;
            END;

            AdicionarCaixas;
            AdicionarUsuarios;
            AdicionarVendedores;
          end;

        END; //

      finally
        Screen.Cursor := crArrow;
        pnlAviso.Visible := false;
      end;
    end
    else
    begin
      verifica_conexao('SERVIDOR', ed_server.Text, ed_server_database.Text);
    end;

  finally
    Timer1.enabled := true;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if CanClose then
    CanClose := false;

  H := FindWindow(nil, '..:: brServidor::..');
  ShowWindow(H, SW_HIDE);
  hide;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.Timer3Timer(Sender: TObject);
begin
  if not fechar then
  begin
    close;
    fechar := true;
    Timer3.enabled := false;
  end
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.Fechar1Click(Sender: TObject);
begin
  Application.Terminate;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.Abrir1Click(Sender: TObject);
begin
  Show;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.Button2Click(Sender: TObject);
VAR
  i: integer;
  scst: string;
  bflag: Boolean;
  LimpaDados: Boolean;

begin
  if pnlAviso.Visible then
    Exit;

  try
    if Application.MessageBox('Deseja Limpar os dados existentes nas tabelas antes da Carga Geral?','Atenção!',MB_ICONQUESTION+MB_YESNO)=mrYes then
      LimpaDados := True
    else
    LimpaDados := False;
    Screen.Cursor := crAppStart;
    pnlAviso.Left := 2;
    pnlAviso.Width := 450;
    pnlAviso.Visible := true;
    pnlAviso.Repaint;

    Timer1.enabled := false;

    if conexao_servidor.Connected then
    begin
      Memo1.Lines.add('Iniciando processo de atualização GERAL em ' +
        DateToStr(date) + ' as ' + timetostr(time));
      FOR i := 0 TO grid.RowCount - 1 DO
      BEGIN
        if grid.cell[4, i].AsBoolean then
        begin
          If verifica_conexao('PDV', grid.cell[1, i].asstring,
            grid.cell[2, i].asstring) THEN
          BEGIN
            grid.cell[3, i].asinteger := 0;

            qrServidor_Tabela.close;
            qrServidor_Tabela.sql.Clear;
            qrServidor_Tabela.sql.add('select A.*, B.Estoque_atual');
            qrServidor_Tabela.sql.add('from c000025 A, c000100 B');
            qrServidor_Tabela.sql.add('where A.codigo = B.codproduto');
            qrServidor_Tabela.sql.add('order by B.codigo');
            qrServidor_Tabela.Open;
            qrServidor_Tabela.first;


             if LimpaDados then begin
              memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' - DEL - PRODUTOS');
              try
                qrpdv.close;
                qrpdv.sql.clear;
                qrpdv.sql.add('delete from ESTOQUE');
                qrpdv.ExecSQL;
              except
                on E: Exception do
                begin
                  memo1.lines.add('PDV' + grid.CELL[0, I].ASSTRING + ' ERRO - DEL - PRODUTOS');
                  Memo1.LINES.Add('Mensagem: ' + E.message);
                end;
              end;
            end;



            while not qrServidor_Tabela.eof do
            begin
              Application.ProcessMessages;

              qrPDV.close;
              qrPDV.sql.Clear;
              qrPDV.sql.add('select codigo from estoque');
              qrPDV.sql.add('where codigo = ' +
                inttostr(StrToInt(qrServidor_Tabela.FieldByName('codigo')
                .asstring)));
              qrPDV.Open;
              if qrPDV.RecordCount = 0 then
              begin
                try
                 //DARLON SANTOS
                  Memo1.Lines.add('PDV' + grid.cell[0, i].asstring +
                    ' - INC - PRODUTO - ' + qrServidor_Tabela.FieldByName
                    ('codigo').asstring);
                  qrPDV.close;
                  qrPDV.sql.Clear;
                  qrPDV.sql.add('insert into ESTOQUE (');
                  qrPDV.sql.add('CODIGO,');
                  qrPDV.sql.add('COD_BARRA,');
                  qrPDV.sql.add('NOME,');
                  qrPDV.sql.add('UNIDADE,');
                  qrPDV.sql.add('PRECO_VENDA,');
                  qrPDV.sql.add('PRECO_PROMOCAO,');
                  qrPDV.sql.add('INICIO_PROMOCAO,');
                  qrPDV.sql.add('FINAL_PROMOCAO,');
                  qrPDV.sql.add('CST,');
                  qrPDV.sql.add('ALIQUOTA,');
                  qrPDV.sql.add('DESCONTO_MAXIMO,');
                  qrPDV.sql.add('ST,');
                  qrPDV.sql.add('ESTOQUE,');
                  qrPDV.sql.add('IAT,');
                  qrPDV.sql.add('IPPT,');
                  qrPDV.sql.add('SITUACAO,');
                  qrPDV.sql.add('NCM,');
                  qrPDV.sql.add('ALIQNACIONAL,');
                  qrPDV.SQL.Add('CSOSN,');
                  qrPDV.SQL.Add('CEST,');
                  qrPDV.SQL.Add('CFOP');

                  qrPDV.sql.add(') values (');

                  qrPDV.sql.add(':CODIGO,');
                  qrPDV.sql.add(':COD_BARRA,');
                  qrPDV.sql.add(':NOME,');
                  qrPDV.sql.add(':UNIDADE,');
                  qrPDV.sql.add(':PRECO_VENDA,');
                  qrPDV.sql.add(':PRECO_PROMOCAO,');
                  qrPDV.sql.add(':INICIO_PROMOCAO,');
                  qrPDV.sql.add(':FINAL_PROMOCAO,');
                  qrPDV.sql.add(':CST,');
                  qrPDV.sql.add(':ALIQUOTA,');
                  qrPDV.sql.add(':DESCONTO_MAXIMO,');
                  qrPDV.sql.add(':ST,');
                  qrPDV.sql.add(':ESTOQUE,');
                  qrPDV.sql.add(':IAT,');
                  qrPDV.sql.add(':IPPT,');
                  qrPDV.sql.add(':SITUACAO,');
                  qrPDV.sql.add(':NCM,');
                  qrPDV.sql.add(':ALIQNACIONAL,');
                  qrPDV.SQL.Add(':CSOSN,');
                  qrPDV.SQL.Add(':CEST,');
                  qrPDV.SQL.Add(':CFOP');


                  qrPDV.sql.add(')');
                               //DARLON SANTOS
                  qrPDV.ParamByName('CODIGO').asstring :=qrServidor_Tabela.FieldByName('codigo').asstring;
                  qrPDV.ParamByName('COD_BARRA').asstring := copy(qrServidor_Tabela.FieldByName('codbarra').asstring, 1, 15);
                  qrPDV.ParamByName('NOME').asstring := copy(qrServidor_Tabela.FieldByName('produto').asstring, 1, 80);
                  qrPDV.ParamByName('UNIDADE').asstring := qrServidor_Tabela.FieldByName('unidade').asstring;
                  qrPDV.ParamByName('PRECO_VENDA').asfloat := qrServidor_Tabela.FieldByName('precovenda').asfloat;
                  qrPDV.ParamByName('PRECO_PROMOCAO').asfloat :=qrServidor_Tabela.FieldByName('preco_promocao').asfloat;
                  qrPDV.ParamByName('INICIO_PROMOCAO').asdatetime := qrServidor_Tabela.FieldByName('data_promocao').asdatetime;
                  qrPDV.ParamByName('FINAL_PROMOCAO').asdatetime := qrServidor_Tabela.FieldByName('fim_promocao').asdatetime;
                  qrPDV.ParamByName('CST').asstring := qrServidor_Tabela.FieldByName('cst').asstring;
                  qrPDV.ParamByName('ALIQUOTA').asfloat := qrServidor_Tabela.FieldByName('aliquota').asfloat;
                  qrPDV.ParamByName('DESCONTO_MAXIMO').asfloat := 0;

                  scst := qrServidor_Tabela.FieldByName('cst').asstring;

                  if (scst = '060') or (scst = '010') or (scst = '070') then
                    qrPDV.Params.ParamByName('st').asstring := 'F'
                  else if (scst = '040') or (scst = '030') then
                    qrPDV.Params.ParamByName('st').asstring := 'I'
                  else if (scst = '041') or (scst = '050') or (scst = '051') or
                    (scst = '090') then
                    qrPDV.Params.ParamByName('st').asstring := 'N'
                  else
                    qrPDV.ParamByName('st').asstring := 'T';
                   qrPDV.ParamByName('ESTOQUE').asfloat := qrServidor_Tabela.FieldByName('estoque_atual').asfloat;
                   qrPDV.ParamByName('IAT').asstring := qrServidor_Tabela.FieldByName('IAT').asstring;
                    qrPDV.ParamByName('IPPT').asstring := qrServidor_Tabela.FieldByName('IPPT').asstring;
                    qrPDV.ParamByName('SITUACAO').asinteger := qrServidor_Tabela.FieldByName('SITUACAO').asinteger;
                    if (qrServidor_Tabela.FieldByName('CLASSIFICACAO_FISCAL')
                    .asstring = 'null') or
                    (qrServidor_Tabela.FieldByName('CLASSIFICACAO_FISCAL')
                    .asstring = '') then
                    qrPDV.ParamByName('NCM').asstring := '0101.90.00'
                  else
                    qrPDV.ParamByName('NCM').asstring :=
                      OnlyNumber
                      (qrServidor_Tabela.FieldByName('CLASSIFICACAO_FISCAL')
                      .asstring);

                  XNCM := qrPDV.ParamByName('NCM').asstring;

                  QRY_IBPT.close;
                  QRY_IBPT.sql.Clear;
                  QRY_IBPT.sql.add
                    ('SELECT * FROM IBPT_ALIQUOTAS WHERE NCM = :NCM');
                  QRY_IBPT.ParamByName('NCM').asstring := XNCM;
                  QRY_IBPT.Open();

                  if not QRY_IBPT.IsEmpty then
                  begin
                    qrPDV.ParamByName('ALIQNACIONAL').Value := QRY_IBPT.FieldByName('ALIQNAC').Value;
                    end
                  else
                   //DARLON SANTOS
                    qrPDV.ParamByName('ALIQNACIONAL').Value := 4.2;
                    qrPDV.ParamByName('CSOSN').Value := qrServidor_Tabela.FieldByName('CSOSN').Value;
                    qrPDV.ParamByName('CEST').Value := qrServidor_Tabela.FieldByName('CEST').Value;
                    qrPDV.ParamByName('CFOP').Value := qrServidor_Tabela.FieldByName('IND_CFOP_NFCE').Value;

                  qrPDV.ExecSQL;


                except
                  on E: Exception do
                  begin
                    Memo1.Lines.add('PDV' + grid.cell[0, i].asstring +
                      ' ERRO - INC - PRODUTO - ' + qrServidor_Tabela.FieldByName
                      ('codigo').asstring);
                    Memo1.Lines.add('Mensagem: ' + E.message);
                  end;
                end;
              end
              else
              begin
                Memo1.Lines.add('PDV' + grid.cell[0, i].asstring +
                  ' - ALT - PRODUTO - ' + qrServidor_Tabela.FieldByName
                  ('codigo').asstring);
                try
                  qrPDV.close;
                  qrPDV.sql.Clear;
                  qrPDV.sql.add('update ESTOQUE set');
                  qrPDV.sql.add('COD_BARRA = :COD_BARRA,');
                  qrPDV.sql.add('NOME = :NOME,');
                  qrPDV.sql.add('UNIDADE = :UNIDADE,');
                  qrPDV.sql.add('PRECO_VENDA = :PRECO_VENDA,');
                  qrPDV.sql.add('PRECO_PROMOCAO = :PRECO_PROMOCAO,');
                  qrPDV.sql.add('INICIO_PROMOCAO = :INICIO_PROMOCAO,');
                  qrPDV.sql.add('FINAL_PROMOCAO = :FINAL_PROMOCAO,');
                  qrPDV.sql.add('CST = :CST,');
                  qrPDV.sql.add('ALIQUOTA = :ALIQUOTA,');
                  qrPDV.sql.add('DESCONTO_MAXIMO = :DESCONTO_MAXIMO,');
                  qrPDV.sql.add('ST = :ST,');
                  qrPDV.sql.add('ESTOQUE = :ESTOQUE,');
                  qrPDV.sql.add('IAT = :IAT,');
                  qrPDV.sql.add('IPPT = :IPPT, ');
                  qrPDV.sql.add('SITUACAO = :SITUACAO,');
                  qrPDV.sql.add('NCM = :NCM,');
                  qrPDV.sql.add('ALIQNACIONAL = :ALIQNACIONAL,');
                  qrPDV.SQL.Add('CSOSN = :CSOSN,');
                  qrPDV.SQL.Add('CEST = :CEST,');
                  qrPDV.SQL.Add('CFOP = :CFOP'); // DARLON SANTOS 28/10/2017
                  qrPDV.sql.add('where codigo = :codigo');

                  qrPDV.ParamByName('CODIGO').asinteger := StrToInt(qrServidor_Tabela.FieldByName('codigo').asstring);
                  qrPDV.ParamByName('COD_BARRA').asstring := copy(qrServidor_Tabela.FieldByName('codbarra').asstring, 1, 15);
                  qrPDV.ParamByName('NOME').asstring := copy(qrServidor_Tabela.FieldByName('produto').asstring, 1, 80);
                  qrPDV.ParamByName('UNIDADE').asstring := qrServidor_Tabela.FieldByName('unidade').asstring;
                  qrPDV.ParamByName('PRECO_VENDA').asfloat := qrServidor_Tabela.FieldByName('precovenda').asfloat;
                  qrPDV.ParamByName('PRECO_PROMOCAO').asfloat := qrServidor_Tabela.FieldByName('preco_promocao').asfloat;
                  qrPDV.ParamByName('INICIO_PROMOCAO').asdatetime := qrServidor_Tabela.FieldByName('data_promocao').asdatetime;
                  qrPDV.ParamByName('FINAL_PROMOCAO').asdatetime := qrServidor_Tabela.FieldByName('fim_promocao').asdatetime;
                  qrPDV.ParamByName('CST').asstring := qrServidor_Tabela.FieldByName('cst').asstring;
                  qrPDV.ParamByName('ALIQUOTA').asfloat := qrServidor_Tabela.FieldByName('aliquota').asfloat;
                  qrPDV.ParamByName('DESCONTO_MAXIMO').asfloat := 0;
                    scst := qrServidor_Tabela.FieldByName('cst').asstring;
                  if (scst = '060') or (scst = '010') or (scst = '070') then
                    qrPDV.Params.ParamByName('st').asstring := 'F'
                  else if (scst = '040') or (scst = '030') then
                    qrPDV.Params.ParamByName('st').asstring := 'I'
                  else if (scst = '041') or (scst = '050') or (scst = '051') or
                    (scst = '090') then
                    qrPDV.Params.ParamByName('st').asstring := 'N'
                  else
                  qrPDV.ParamByName('st').asstring := 'T';
                  qrPDV.ParamByName('ESTOQUE').asfloat := qrServidor_Tabela.FieldByName('estoque_atual').asfloat;
                  qrPDV.ParamByName('IAT').asstring := qrServidor_Tabela.FieldByName('IAT').asstring;
                  qrPDV.ParamByName('IPPT').asstring := qrServidor_Tabela.FieldByName('IPPT').asstring;
                  qrPDV.ParamByName('SITUACAO').asinteger := qrServidor_Tabela.FieldByName('SITUACAO').asinteger;
                    //DARLON SANTOS

                  if (qrServidor_Tabela.FieldByName('CLASSIFICACAO_FISCAL').asstring = 'null') or (qrServidor_Tabela.FieldByName('CLASSIFICACAO_FISCAL').asstring = '') then
                    qrPDV.ParamByName('NCM').asstring := '0101.90.00'
                  else
                    qrPDV.ParamByName('NCM').asstring :=
                      OnlyNumber
                      (qrServidor_Tabela.FieldByName('CLASSIFICACAO_FISCAL')
                      .asstring);
                     XNCM := qrPDV.ParamByName('NCM').asstring;
                     QRY_IBPT.close;
                     QRY_IBPT.sql.Clear;
                     QRY_IBPT.sql.add
                    ('SELECT * FROM IBPT_ALIQUOTAS WHERE NCM = :NCM');
                  QRY_IBPT.ParamByName('NCM').asstring := OnlyNumber(XNCM);
                  QRY_IBPT.Open();

                  if not QRY_IBPT.IsEmpty then
                  begin
                    qrPDV.ParamByName('ALIQNACIONAL').Value := QRY_IBPT.FieldByName('ALIQNAC').Value;

                  end
                  else
                    qrPDV.ParamByName('ALIQNACIONAL').Value := 4.2;
                    qrPDV.ParamByName('CSOSN').Value := qrServidor_Tabela.FieldByName('CSOSN').Value;
                     qrPDV.ParamByName('CEST').Value := qrServidor_Tabela.FieldByName('CEST').Value;
                    qrPDV.ParamByName('CFOP').Value := qrServidor_Tabela.FieldByName('IND_CFOP_NFCE').Value;

                  qrPDV.ExecSQL;
                except
                 on E: Exception do
                  begin
                    Memo1.Lines.add('PDV' + grid.cell[0, i].asstring +
                      ' ERRO - ALT - PRODUTO - ' + qrServidor_Tabela.FieldByName
                      ('codigo').asstring);
                    Memo1.Lines.add('Mensagem: ' + E.message);
                  end;
                end;
              end;
              qrServidor_Tabela.next;
            end;

            qrServidor_Tabela.close;
            qrServidor_Tabela.sql.Clear;
            qrServidor_Tabela.sql.add('select *');
            qrServidor_Tabela.sql.add('from C000007');
            qrServidor_Tabela.sql.add('order by codigo');
            qrServidor_Tabela.Open;
            qrServidor_Tabela.first;

            while not qrServidor_Tabela.eof do
            begin
              Application.ProcessMessages;

              qrPDV.close;
              qrPDV.sql.Clear;
              qrPDV.sql.add('select codigo from cliente where codigo = ' +
                inttostr(StrToInt(qrServidor_Tabela.FieldByName('codigo')
                .asstring)));
              qrPDV.Open;
              if qrPDV.RecordCount = 0 then
              begin
                try
                  Memo1.Lines.add('PDV' + grid.cell[0, i].asstring +
                    ' - INC - CLIENTE - ' + qrServidor_Tabela.FieldByName
                    ('codigo').asstring);
                  qrPDV.close;
                  qrPDV.sql.Clear;
                  qrPDV.sql.add('insert into CLIENTE (');

                  qrPDV.sql.add('CODIGO,');
                  qrPDV.sql.add('NOME,');
                  qrPDV.sql.add('CPF,');
                  qrPDV.sql.add('ENDERECO,');
                  qrPDV.sql.add('COMPLEMENTO,');
                  qrPDV.sql.add('BAIRRO,');
                  qrPDV.sql.add('CIDADE,');
                  qrPDV.sql.add('UF,');
                  qrPDV.sql.add('CEP,');
                  qrPDV.sql.add('SITUACAO,');
                  qrPDV.sql.add('OBS,');
                  qrPDV.sql.add('LIMITE,');
                  qrPDV.sql.add('UTILIZADO,');
                  qrPDV.sql.add('DISPONIVEL,');
                  qrPDV.sql.add('ATUALIZADO');
                  qrPDV.sql.add(') values (');

                  qrPDV.sql.add(':CODIGO,');
                  qrPDV.sql.add(':NOME,');
                  qrPDV.sql.add(':CPF,');
                  qrPDV.sql.add(':ENDERECO,');
                  qrPDV.sql.add(':COMPLEMENTO,');
                  qrPDV.sql.add(':BAIRRO,');
                  qrPDV.sql.add(':CIDADE,');
                  qrPDV.sql.add(':UF,');
                  qrPDV.sql.add(':CEP,');
                  qrPDV.sql.add(':SITUACAO,');
                  qrPDV.sql.add(':OBS,');
                  qrPDV.sql.add(':LIMITE,');
                  qrPDV.sql.add(':UTILIZADO,');
                  qrPDV.sql.add(':DISPONIVEL,');
                  qrPDV.sql.add(':ATUALIZADO');

                  qrPDV.sql.add(')');

                  qrPDV.ParamByName('CODIGO').asstring :=
                    qrServidor_Tabela.FieldByName('codigo').asstring;
                  qrPDV.ParamByName('NOME').asstring :=
                    qrServidor_Tabela.FieldByName('nome').asstring;
                  qrPDV.ParamByName('CPF').asstring :=
                    qrServidor_Tabela.FieldByName('cpf').asstring;
                  qrPDV.ParamByName('ENDERECO').asstring :=
                    qrServidor_Tabela.FieldByName('endereco').asstring;
                  qrPDV.ParamByName('COMPLEMENTO').asstring :=
                    qrServidor_Tabela.FieldByName('complemento').asstring;
                  qrPDV.ParamByName('BAIRRO').asstring :=
                    qrServidor_Tabela.FieldByName('bairro').asstring;
                  qrPDV.ParamByName('CIDADE').asstring :=
                    qrServidor_Tabela.FieldByName('cidade').asstring;
                  qrPDV.ParamByName('UF').asstring :=
                    qrServidor_Tabela.FieldByName('uf').asstring;
                  qrPDV.ParamByName('CEP').asstring :=
                    qrServidor_Tabela.FieldByName('cep').asstring;
                  qrPDV.ParamByName('SITUACAO').asstring :=
                    qrServidor_Tabela.FieldByName('situacao').asstring;
                  qrPDV.ParamByName('OBS').Value :=
                    qrServidor_Tabela.FieldByName('obs1').asstring + #13 +
                    qrServidor_Tabela.FieldByName('obs2').asstring + #13 +
                    qrServidor_Tabela.FieldByName('obs3').asstring + #13 +
                    qrServidor_Tabela.FieldByName('obs4').asstring + #13 +
                    qrServidor_Tabela.FieldByName('obs5').asstring + #13 +
                    qrServidor_Tabela.FieldByName('obs6').asstring;
                  qrPDV.ParamByName('LIMITE').asfloat :=
                    qrServidor_Tabela.FieldByName('LIMITE').asfloat;
                  qrPDV.ParamByName('UTILIZADO').asfloat :=
                    verifica_crediario(qrServidor_Tabela.FieldByName('codigo')
                    .asstring);
                  qrPDV.ParamByName('DISPONIVEL').asfloat :=
                    qrPDV.ParamByName('LIMITE').asfloat -
                    qrPDV.ParamByName('UTILIZADO').asfloat;
                  qrPDV.ParamByName('ATUALIZADO').asstring := DateToStr(date) +
                    ' AS ' + timetostr(time);
                  qrPDV.ExecSQL;
                except
                  on E: Exception do
                  begin
                    Memo1.Lines.add('PDV' + grid.cell[0, i].asstring +
                      ' ERRO - INC - CLIENTE - ' + qrServidor_Tabela.FieldByName
                      ('codigo').asstring);
                    Memo1.Lines.add('Mensagem: ' + E.message);
                  end;
                end;
              end
              else
              begin
                try
                  Memo1.Lines.add('PDV' + grid.cell[0, i].asstring +
                    ' - ALT - CLIENTE - ' + qrServidor_Tabela.FieldByName
                    ('codigo').asstring);
                  qrPDV.close;
                  qrPDV.sql.Clear;
                  qrPDV.sql.add('update CLIENTE set');

                  qrPDV.sql.add('CODIGO = :CODIGO,');
                  qrPDV.sql.add('NOME = :NOME,');
                  qrPDV.sql.add('CPF = :CPF,');
                  qrPDV.sql.add('ENDERECO = :ENDERECO,');
                  qrPDV.sql.add('COMPLEMENTO = :COMPLEMENTO,');
                  qrPDV.sql.add('BAIRRO = :BAIRRO,');
                  qrPDV.sql.add('CIDADE = :CIDADE,');
                  qrPDV.sql.add('UF = :UF,');
                  qrPDV.sql.add('CEP = :CEP,');
                  qrPDV.sql.add('SITUACAO = :SITUACAO,');
                  qrPDV.sql.add('OBS = :OBS,');
                  qrPDV.sql.add('LIMITE = :LIMITE,');
                  qrPDV.sql.add('UTILIZADO = :UTILIZADO,');
                  qrPDV.sql.add('DISPONIVEL = :DISPONIVEL,');
                  qrPDV.sql.add('ATUALIZADO = :ATUALIZADO');
                  qrPDV.sql.add('where codigo = :codigo');

                  qrPDV.ParamByName('CODIGO').asstring :=
                    qrServidor_Tabela.FieldByName('codigo').asstring;
                  qrPDV.ParamByName('NOME').asstring :=
                    qrServidor_Tabela.FieldByName('nome').asstring;
                  qrPDV.ParamByName('CPF').asstring :=
                    qrServidor_Tabela.FieldByName('cpf').asstring;
                  qrPDV.ParamByName('ENDERECO').asstring :=
                    qrServidor_Tabela.FieldByName('endereco').asstring;
                  qrPDV.ParamByName('COMPLEMENTO').asstring :=
                    qrServidor_Tabela.FieldByName('complemento').asstring;
                  qrPDV.ParamByName('BAIRRO').asstring :=
                    qrServidor_Tabela.FieldByName('bairro').asstring;
                  qrPDV.ParamByName('CIDADE').asstring :=
                    qrServidor_Tabela.FieldByName('cidade').asstring;
                  qrPDV.ParamByName('UF').asstring :=
                    qrServidor_Tabela.FieldByName('uf').asstring;
                  qrPDV.ParamByName('CEP').asstring :=
                    qrServidor_Tabela.FieldByName('cep').asstring;
                  qrPDV.ParamByName('SITUACAO').asstring :=
                    qrServidor_Tabela.FieldByName('situacao').asstring;
                  qrPDV.ParamByName('OBS').Value :=
                    qrServidor_Tabela.FieldByName('obs1').asstring + #13 +
                    qrServidor_Tabela.FieldByName('obs2').asstring + #13 +
                    qrServidor_Tabela.FieldByName('obs3').asstring + #13 +
                    qrServidor_Tabela.FieldByName('obs4').asstring + #13 +
                    qrServidor_Tabela.FieldByName('obs5').asstring + #13 +
                    qrServidor_Tabela.FieldByName('obs6').asstring;
                  qrPDV.ParamByName('LIMITE').asfloat :=
                    qrServidor_Tabela.FieldByName('LIMITE').asfloat;
                  qrPDV.ParamByName('UTILIZADO').asfloat :=
                    verifica_crediario(qrServidor_Tabela.FieldByName('codigo')
                    .asstring);
                  qrPDV.ParamByName('DISPONIVEL').asfloat :=
                    qrPDV.ParamByName('LIMITE').asfloat -
                    qrPDV.ParamByName('UTILIZADO').asfloat;
                  qrPDV.ParamByName('ATUALIZADO').asstring := DateToStr(date) +
                    ' AS ' + timetostr(time);
                  qrPDV.ExecSQL;
                except
                  on E: Exception do
                  begin
                    Memo1.Lines.add('PDV' + grid.cell[0, i].asstring +
                      ' ERRO - ALT - CLIENTE - ' + qrServidor_Tabela.FieldByName
                      ('codigo').asstring);
                    Memo1.Lines.add('Mensagem: ' + E.message);
                  end;
                end;
              end;

              qrServidor_Tabela.next;
            end;

            AdicionarCaixas;
            AdicionarUsuarios;
            AdicionarVendedores;

          END
          ELSE
          BEGIN
            grid.cell[3, i].asinteger := 1;
          END;
        end;
      END;
    end
    else
    begin
      verifica_conexao('SERVIDOR', ed_server.Text, ed_server_database.Text);
    end;

  finally
    Screen.Cursor := crArrow;
    pnlAviso.Visible := false;

    Timer1.enabled := true;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.Button3Click(Sender: TObject);
begin
  if not pnlAviso.Visible then
    Timer1Timer(frmPrincipal);
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.iconeLButtonDblClick(Sender: TObject);
begin
  Show;
end;

procedure TfrmPrincipal.S1Click(Sender: TObject);
begin

end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.AdicionarUsuarios;
var
  y: integer;

begin
  qrServidor.close;
  qrServidor.sql.Clear;
  qrServidor.sql.add('select * from c000003 where nivel = 4');
  qrServidor.Open;
  qrServidor.first;

  y := 1;

  while not qrServidor.eof do
  begin
    qrPDV.close;
    qrPDV.sql.Clear;
    qrPDV.sql.add('insert into adm (');
    qrPDV.sql.add('codigo, info1, info2, info3) values (');
    qrPDV.sql.add(':codigo, :info1, :info2, :info3)');
    qrPDV.ParamByName('codigo').asinteger :=
      StrToInt('991' + Zerar(inttostr(y), 3));
    qrPDV.ParamByName('info1').asstring := 'DELPHOS_' + inttostr(y);
    qrPDV.ParamByName('info2').asstring :=
      Cript('D', qrServidor.FieldByName('senha').asstring);
    qrPDV.ParamByName('info3').asstring := '4';
    qrPDV.ExecSQL;

    inc(y);

    qrServidor.next;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.AdicionarVendedores;
begin
  // CGT: Nome dos Vendedores/Caixas cadastrados no retaguarda
  qrServidor.close;
  qrServidor.sql.Clear;
  qrServidor.sql.add('select c000008.CODIGO, c000008.NOME from c000008 ' +
    ' where (c000008.F_VENDEDOR = 1) order by c000008.codigo');
  qrServidor.Open;
  qrServidor.first;

  qrPDV.close;
  qrPDV.sql.Clear;
  qrPDV.sql.add('delete from VENDEDORES');
  qrPDV.ExecSQL;

  while not qrServidor.eof do
  begin
    Application.ProcessMessages;

    qrPDV.close;
    qrPDV.sql.Clear;
    qrPDV.sql.add('insert into VENDEDORES (');
    qrPDV.sql.add('CODIGO, NOME) values (');
    qrPDV.sql.add(':CODIGO, :NOME)');
    qrPDV.ParamByName('CODIGO').asstring :=
      qrServidor.FieldByName('CODIGO').asstring;
    qrPDV.ParamByName('NOME').asstring :=
      qrServidor.FieldByName('nome').asstring;

    qrPDV.ExecSQL;

    qrServidor.next;
  end;
end;

procedure TfrmPrincipal.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
var
  LogErros: string;
  Arquivo: TextFile;
begin
  // mizael funcao para gerar log e nao parar a atualizacao.
  if E.ClassName = 'EIBCError' then
  begin

    LogErros := sDir_sistema + '\LogErrosServidor.txt';
    AssignFile(Arquivo, LogErros);
    if not FileExists(LogErros) then
      Rewrite(Arquivo);
    Append(Arquivo);
    WriteLn(Arquivo, 'Data..........: ' + DateTimeToStr(Now));
    WriteLn(Arquivo, 'Mensagem......: ' + E.message);
    WriteLn(Arquivo, 'Tipo Erro.....: ' + E.ClassName);
    CloseFile(Arquivo);
  end;
end;

procedure TfrmPrincipal.btn1Click(Sender: TObject);
begin

end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.AdicionarCaixas;
begin
  qrServidor.close;
  qrServidor.sql.Clear;
  qrServidor.sql.add
    ('select c000045.*, c000008.nome from c000045, c000008 where c000045.codfuncionario = c000008.codigo order by c000045.codigo');
  qrServidor.Open;
  qrServidor.first;

  Memo1.Lines.add('Encontrado ' + inttostr(qrServidor.RecordCount) +
    ' caixa(s)');

  qrPDV.close;
  qrPDV.sql.Clear;
  qrPDV.sql.add('delete from adm');
  qrPDV.ExecSQL;

  while not qrServidor.eof do
  begin
    Application.ProcessMessages;

    qrPDV.close;
    qrPDV.sql.Clear;
    qrPDV.sql.add('insert into adm (');
    qrPDV.sql.add('codigo, info1, info2, info3) values (');
    qrPDV.sql.add(':codigo, :info1, :info2, :info3)');
    qrPDV.ParamByName('codigo').asinteger := qrServidor.FieldByName('codigo')
      .asinteger;
    qrPDV.ParamByName('info1').asstring :=
      qrServidor.FieldByName('nome').asstring;
    qrPDV.ParamByName('info2').asstring :=
      Cript('D', qrServidor.FieldByName('senha').asstring);
    qrPDV.ParamByName('info3').asstring := '3';

    qrPDV.ExecSQL;

    qrServidor.next;
  end;
end;

end.
