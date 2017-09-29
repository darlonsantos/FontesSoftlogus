unit contasreceber_pgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, ExtCtrls, Collection, Mask,
  TFlatPanelUnit, AdvGlowButton, AdvShapeButton, ComCtrls,
  wwdbdatetimepicker, RxToolEdit, RxCurrEdit;

type
  Tfrmcontasreceber_pgto = class(TForm)
    FlatPanel1: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    rdesconto2: TRxCalcEdit;
    rjuros: TRxCalcEdit;
    rdesconto1: TRxCalcEdit;
    Panel1: TPanel;
    rliquido: TRxCalcEdit;
    Panel2: TPanel;
    rtotal: TRxCalcEdit;
    Label15: TLabel;
    rdias: TRxCalcEdit;
    FlatPanel2: TFlatPanel;
    Label10: TLabel;
    rcaixa: TRadioButton;
    rbanco: TRadioButton;
    Label16: TLabel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    AdvShapeButton1: TAdvShapeButton;
    Bevel3: TBevel;
    bitbtn2: TAdvGlowButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    rmeio: TPanel;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    N1: TMenuItem;
    ZerarJuros1: TMenuItem;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edinheiro: TShape;
    echequeav: TShape;
    echequeap: TShape;
    ecartao: TShape;
    eboleto: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Label11: TLabel;
    Label12: TLabel;
    Shape15: TShape;
    Label13: TLabel;
    Shape17: TShape;
    Label14: TLabel;
    rdinheiro: TRxCalcEdit;
    rchequeav: TRxCalcEdit;
    rchequeap: TRxCalcEdit;
    rcartao: TRxCalcEdit;
    rboleto: TRxCalcEdit;
    FlatPanel3: TFlatPanel;
    Shape16: TShape;
    Shape18: TShape;
    rsoma: TRxCalcEdit;
    rdiferenca: TRxCalcEdit;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    Bevel4: TBevel;
    Label17: TLabel;
    edata: TwwDBDateTimePicker;
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rdesconto1Enter(Sender: TObject);
    procedure rdesconto1Exit(Sender: TObject);
    procedure rdesconto2Exit(Sender: TObject);
    procedure rdesconto1KeyPress(Sender: TObject; var Key: Char);
    procedure rjurosExit(Sender: TObject);
    procedure rjurosKeyPress(Sender: TObject; var Key: Char);
    procedure rdinheiroExit(Sender: TObject);
    procedure rchequeavExit(Sender: TObject);
    procedure rchequeapExit(Sender: TObject);
    procedure rcartaoExit(Sender: TObject);
    procedure rboletoExit(Sender: TObject);
    procedure rdinheiroEnter(Sender: TObject);
    procedure rchequeavEnter(Sender: TObject);
    procedure rchequeapEnter(Sender: TObject);
    procedure rcartaoEnter(Sender: TObject);
    procedure rboletoEnter(Sender: TObject);
    procedure rboletoKeyPress(Sender: TObject; var Key: Char);
    procedure rcaixaKeyPress(Sender: TObject; var Key: Char);
    procedure rbancoKeyPress(Sender: TObject; var Key: Char);
    procedure rdiasExit(Sender: TObject);
    procedure rbancoClick(Sender: TObject);
    procedure rcaixaClick(Sender: TObject);
    procedure rjurosEnter(Sender: TObject);
    procedure rdiasKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontasreceber_pgto: Tfrmcontasreceber_pgto;
  continua_banco: boolean;
  JUROS_A_MAIS: REAL;
  valor_anterior: REAL;

  juros_valor, juros_desconto: REAL;

implementation

uses contasreceber, modulo, principal, Math, contasreceber_banco, unECF,
  funcoes, extenso1, senha_supervisor, UFuncoes;

{$R *.dfm}

procedure Tfrmcontasreceber_pgto.bgravarClick(Sender: TObject);
var
  texto: pansichar;
  qtde_conta: integer;
  CREDITO, TROCO: REAL;
  nome_cliente, documento: string;
  percentual: REAL;
  numero_contas: string;
var
  i, vqtde_parcelas, vqtde_parcelas1, vgera_parcela, vgera_parcela1: integer;
  vdesconto, vvalor_pago, vvalor_pago1: double;

  diferenca_juro: REAL;
begin

  try

    FRMMODULO.QRCAIXA_MOV.CLOSE;
    FRMMODULO.QRCAIXA_MOV.SQL.CLEAR;
    FRMMODULO.QRCAIXA_MOV.SQL.ADD
      ('select * from c000044 where codigo = ''999999''');
    FRMMODULO.QRCAIXA_MOV.open;

    FRMMODULO.QRCONFIG.open;
    IF FRMMODULO.QRCONFIG.FieldByName('CONTASRECEBER_DESCONTO_PERMITIR')
      .ASINTEGER = 0 THEN
    BEGIN
      IF rdesconto2.VALUE > 0 THEN
      BEGIN
        Application.messagebox
          ('Não é permitido dar desconto no recebimento! Favor se informar com a gerência!',
          'Atenção', mb_ok + MB_ICONWARNING);
        rdesconto2.setfocus;
        EXIT;
      END;
    END
    ELSE
    BEGIN
      IF FRMMODULO.QRCONFIG.FieldByName('CONTASRECEBER_DESCONTO_PERMITIR')
        .ASINTEGER = 1 THEN
      BEGIN
        IF rdesconto1.VALUE > FRMMODULO.QRCONFIG.FieldByName
          ('CONTASRECEBER_DESCONTO_percent').ASfloat THEN
        BEGIN
          texto := pansichar('Desconto máximo permito:' + #13 + ' ---> R$ ' +
            formatfloat('###,###,##0.00',
            FRMMODULO.QRCONFIG.FieldByName('CONTASRECEBER_DESCONTO_percent')
            .ASfloat) + '%  <--- ' + #13 +
            'É necessário autorização para prosseguir! ' + #13 +
            'Deseja continuar?');
          if Application.messagebox(pwidechar(texto), 'Atenção', mb_yesno + MB_ICONWARNING)
            = idyes then
          begin
            // verificar se o supervisor foi logado
            frmsenha_supervisor := tfrmsenha_supervisor.create(self);
            frmsenha_supervisor.showmodal;

            if bSupervisor_autenticado then
            begin
              Application.messagebox('Desculpe! Seu acesso não foi autorizado!',
                'Aviso', mb_ok + MB_ICONERROR);
              rdesconto1.setfocus;
              EXIT;
            end;
          end
          else
          begin
            rdesconto1.setfocus;
            EXIT;
          end;
        END;
      END;
    END;

    nome_cliente := copy(FRMMODULO.qrcliente.FieldByName('nome')
      .asstring, 1, 20);

    numero_contas := '''';
    frmcontasreceber.qrcr.First;
    while not frmcontasreceber.qrcr.Eof do
    begin
      if frmcontasreceber.qrcr.FieldByName('filtro').ASINTEGER = 1 then
        numero_contas := numero_contas + frmcontasreceber.qrcr.FieldByName
          ('codigo').asstring + ''',''';
      frmcontasreceber.qrcr.Next;

    end;

    i := length(numero_contas);

    delete(numero_contas, i - 1, 2);

    frmcontasreceber.qrcontasreceber.CLOSE;
    frmcontasreceber.qrcontasreceber.SQL.CLEAR;
    frmcontasreceber.qrcontasreceber.SQL.ADD
      ('select * from c000049 where codcliente = ''' +
      FRMMODULO.qrcliente.FieldByName('codigo').asstring +
      ''' and situacao = 1 and codigo in (' + numero_contas +
      ') order by data_vencimento');
    frmcontasreceber.qrcontasreceber.open;

    // #################### 01 conta ############################\\
    // #################### 01 conta ############################\\
    // #################### 01 conta ############################\\
    // #################### 01 conta ############################\\

    if frmcontasreceber.qrcontasreceber.RecordCount = 1 then
    begin
      PRESTACOES := frmcontasreceber.qrcontasreceber.FieldByName
        ('CODIGO').asstring;
      if rbanco.Checked then
      begin
        rsoma.VALUE := rtotal.VALUE;
        rdiferenca.VALUE := 0;
        continua_banco := false;
        frmcontasreceber_banco := tfrmcontasreceber_banco.create(self);
        frmcontasreceber_banco.dateedit1.date := edata.DateTime;
        // frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
        frmcontasreceber_banco.Edit1.Text := 'Recebto. ' + nome_cliente +
          ' - Docto: ' + frmcontasreceber.qrcontasreceber.FieldByName
          ('documento').asstring;
        frmcontasreceber_banco.showmodal;
        if not continua_banco then
          EXIT;
      end;
      if rcaixa.Checked then
      begin
        if rsoma.VALUE = 0 then
        begin
          Application.messagebox('Favor informar o meio do recebimento!',
            'Atenção', mb_ok + MB_ICONWARNING);
          EXIT;
        end;
      end;
      frmcontasreceber.qrcontasreceber.edit;
      frmcontasreceber.qrcontasreceber.FieldByName('DATA_PAGAMENTO').asdatetime
        := edata.DateTime;
      // frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;

      if rdiferenca.VALUE < 0 then
      begin
        if Application.messagebox('A diferença será lançada como crédito?',
          'Atenção', mb_yesno + MB_DEFBUTTON2 + mb_iconquestion) = idyes then
        begin
          frmcontasreceber.qrcontasreceber.FieldByName('VALOR_PAGO').ASfloat :=
            frmcontasreceber.qrcontasreceber.FieldByName('VALOR_PAGO').ASfloat +
            rsoma.VALUE;
          frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').ASfloat :=
            frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').ASfloat
            + rjuros.VALUE - rdesconto2.VALUE - rsoma.VALUE;
          CREDITO := rdiferenca.VALUE * (-1);
          TROCO := 0;
        end
        else
        begin
          Showmessage('T R O C O ' + #13 + formatfloat('###,###,##0.00',
            (rdiferenca.VALUE) * (-1)));
          frmcontasreceber.qrcontasreceber.FieldByName('VALOR_PAGO').ASfloat :=
            frmcontasreceber.qrcontasreceber.FieldByName('VALOR_PAGO').ASfloat +
            rsoma.VALUE + rdiferenca.VALUE;
          frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').ASfloat :=
            (frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').ASfloat
            + rjuros.VALUE) - (rdesconto2.VALUE + rsoma.VALUE +
            rdiferenca.VALUE);
          TROCO := rdiferenca.VALUE * (-1);
          CREDITO := 0;

          // RDINHEIRO.VALUE := RDINHEIRO.VALUE + RDIFERENCA.VALUE;
          // RDIFERENCA.VALUE := 0;

          // showmessage('deilson '+ floattostr(RDINHEIRO.VALUE));

        end;
      end
      else
      begin
        frmcontasreceber.qrcontasreceber.FieldByName('VALOR_PAGO').ASfloat :=
          frmcontasreceber.qrcontasreceber.FieldByName('VALOR_PAGO').ASfloat +
          rsoma.VALUE;
        frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').ASfloat :=
          STRTOFLOAT(formatfloat('########0.00',
          (frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').ASfloat +
          rjuros.VALUE - rdesconto2.VALUE - rsoma.VALUE)));
      end;

      if (frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').ASfloat <
        0.02) and (frmcontasreceber.qrcontasreceber.FieldByName('valor_atual')
        .ASfloat > (-0.02)) then
      begin
        frmcontasreceber.qrcontasreceber.FieldByName('valor_atual')
          .ASfloat := 0;
        frmcontasreceber.qrcontasreceber.FieldByName('situacao').ASINTEGER := 2;
        frmcontasreceber.qrcontasreceber.FieldByName('filtro').ASINTEGER := 0;
      end;
      WITH frmcontasreceber.qrcontasreceber_pgto DO
      BEGIN

        CLOSE;
        SQL.CLEAR;
        SQL.ADD('insert into c000050');
        SQL.ADD('(codconta,data,valor_parcela,valor_juros,valor_desconto,valor_pago,dinheiro,chequeav,chequeap,cartao,boleto,troco,credito,codcliente,caixa_banco)');
        SQL.ADD('values');
        SQL.ADD('(:codconta,:data,:valor_parcela,:valor_juros,:valor_desconto,:valor_pago,:dinheiro,:chequeav,:chequeap,:cartao,:boleto,:troco,:credito,:codcliente,:caixa_banco)');
        params.parambyname('codconta').asstring :=
          copy(frmcontasreceber.qrcontasreceber.FieldByName('codigo')
          .asstring, 1, 9);
        params.parambyname('data').asdatetime := edata.DateTime;
        // frmcontasreceber.qrcontasreceber.fieldbyname('data_pagamento').asdatetime;
        params.parambyname('valor_parcela').ASfloat := rliquido.VALUE;
        params.parambyname('valor_juros').ASfloat := rjuros.VALUE;
        params.parambyname('valor_desconto').ASfloat := rdesconto2.VALUE;
        params.parambyname('valor_pago').ASfloat := rsoma.VALUE;
        params.parambyname('dinheiro').ASfloat := rdinheiro.VALUE;
        params.parambyname('chequeav').ASfloat := rchequeav.VALUE;
        params.parambyname('chequeap').ASfloat := rchequeap.VALUE;
        params.parambyname('cartao').ASfloat := rcartao.VALUE;
        params.parambyname('boleto').ASfloat := rboleto.VALUE;
        params.parambyname('troco').ASfloat := TROCO;
        params.parambyname('credito').ASfloat := CREDITO;
        params.parambyname('CODCLIENTE').asstring :=
          frmcontasreceber.qrcontasreceber.FieldByName('CODCLIENTE').asstring;
        if rcaixa.Checked then
          params.parambyname('CAIXA_BANCO').ASINTEGER := 1
        else
          params.parambyname('CAIXA_BANCO').ASINTEGER := 2;
        execsql;

      END;
      if rcaixa.Checked then
      begin
        if (rdinheiro.VALUE) <> 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmprincipal.codifica('000044', 8);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            Zerar(IntToStr(iNumCaixa), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            Zerar(IntToStr(icodigo_Usuario), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          if TROCO <> 0 then
          begin
            FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat :=
              rdinheiro.VALUE - TROCO;
            FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat :=
              rdinheiro.VALUE - TROCO;
          end
          else
          begin
            FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat :=
              rdinheiro.VALUE - TROCO;
            FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat :=
              rdinheiro.VALUE - TROCO;
          end;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 9;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring := 'Recebto. '
            + nome_cliente + ' - Docto: ' + frmcontasreceber.qrcontasreceber.
            FieldByName('documento').asstring;
          FRMMODULO.QRCAIXA_MOV.post;
          TROCO := 0;
        end;
        if rchequeav.VALUE <> 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmprincipal.codifica('000044', 8);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            Zerar(IntToStr(iNumCaixa), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            Zerar(IntToStr(icodigo_Usuario), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := rchequeav.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 10;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring := 'Recebto. '
            + nome_cliente + ' - Docto: ' + frmcontasreceber.qrcontasreceber.
            FieldByName('documento').asstring;
          FRMMODULO.QRCAIXA_MOV.post;
          if TROCO <> 0 then
          begin
            FRMMODULO.QRCAIXA_MOV.open;
            FRMMODULO.QRCAIXA_MOV.insert;
            FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
              frmprincipal.codifica('000044', 8);
            FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
              Zerar(IntToStr(iNumCaixa), 6);
            FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
              Zerar(IntToStr(icodigo_Usuario), 6);
            FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
              FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
            FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := TROCO * (-1);
            FRMMODULO.QRCAIXA_MOV.FieldByName('saida').ASfloat := TROCO;
            FRMMODULO.QRCONFIG.open;
            FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
              FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO')
              .asstring;

            FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 9;
            FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring :=
              'Troco no Recebto. ' + nome_cliente + ' - Docto: ' +
              frmcontasreceber.qrcontasreceber.FieldByName('documento')
              .asstring;
            FRMMODULO.QRCAIXA_MOV.post;
          end;
          TROCO := 0;
        end;
        if rchequeap.VALUE <> 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmprincipal.codifica('000044', 8);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            Zerar(IntToStr(iNumCaixa), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            Zerar(IntToStr(icodigo_Usuario), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := rchequeap.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 11;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring := 'Recebto. '
            + nome_cliente + ' - Docto: ' + frmcontasreceber.qrcontasreceber.
            FieldByName('documento').asstring;
          FRMMODULO.QRCAIXA_MOV.post;
          if TROCO <> 0 then
          begin
            FRMMODULO.QRCAIXA_MOV.open;
            FRMMODULO.QRCAIXA_MOV.insert;
            FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
              frmprincipal.codifica('000044', 8);
            FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
              Zerar(IntToStr(iNumCaixa), 6);
            FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
              Zerar(IntToStr(icodigo_Usuario), 6);
            FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
              FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
            FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := TROCO * (-1);
            FRMMODULO.QRCAIXA_MOV.FieldByName('saida').ASfloat := TROCO;
            FRMMODULO.QRCONFIG.open;
            FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
              FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO')
              .asstring;

            FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 9;
            FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring :=
              'Troco no Recebto. ' + nome_cliente + ' - Docto: ' +
              frmcontasreceber.qrcontasreceber.FieldByName('documento')
              .asstring;
            FRMMODULO.QRCAIXA_MOV.post;
          end;
          TROCO := 0;

        end;
        if rcartao.VALUE <> 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmprincipal.codifica('000044', 8);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            Zerar(IntToStr(iNumCaixa), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            Zerar(IntToStr(icodigo_Usuario), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := rcartao.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 12;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring := 'Recebto. '
            + nome_cliente + ' - Docto: ' + frmcontasreceber.qrcontasreceber.
            FieldByName('documento').asstring;
          FRMMODULO.QRCAIXA_MOV.post;
          if TROCO <> 0 then
          begin
            FRMMODULO.QRCAIXA_MOV.open;
            FRMMODULO.QRCAIXA_MOV.insert;
            FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
              frmprincipal.codifica('000044', 8);
            FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
              Zerar(IntToStr(iNumCaixa), 6);
            FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
              Zerar(IntToStr(icodigo_Usuario), 6);
            FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
              FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
            FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := TROCO * (-1);
            FRMMODULO.QRCAIXA_MOV.FieldByName('saida').ASfloat := TROCO;
            FRMMODULO.QRCONFIG.open;
            FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
              FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO')
              .asstring;

            FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 9;
            FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring :=
              'Troco no Recebto. ' + nome_cliente + ' - Docto: ' +
              frmcontasreceber.qrcontasreceber.FieldByName('documento')
              .asstring;
            FRMMODULO.QRCAIXA_MOV.post;
          end;
          TROCO := 0;
        end;
        if rboleto.VALUE <> 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmprincipal.codifica('000044', 8);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            Zerar(IntToStr(iNumCaixa), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            Zerar(IntToStr(icodigo_Usuario), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := rboleto.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 15;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring := 'Recebto. '
            + nome_cliente + ' - Docto: ' + frmcontasreceber.qrcontasreceber.
            FieldByName('documento').asstring;
          FRMMODULO.QRCAIXA_MOV.post;
          if TROCO <> 0 then
          begin
            FRMMODULO.QRCAIXA_MOV.open;
            FRMMODULO.QRCAIXA_MOV.insert;
            FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
              frmprincipal.codifica('000044', 8);
            FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
              Zerar(IntToStr(iNumCaixa), 6);
            FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
              Zerar(IntToStr(icodigo_Usuario), 6);
            FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
              FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
            FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := TROCO * (-1);
            FRMMODULO.QRCAIXA_MOV.FieldByName('saida').ASfloat := TROCO;
            FRMMODULO.QRCONFIG.open;
            FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
              FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO')
              .asstring;

            FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 9;
            FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring :=
              'Troco no Recebto. ' + nome_cliente + ' - Docto: ' +
              frmcontasreceber.qrcontasreceber.FieldByName('documento')
              .asstring;
            FRMMODULO.QRCAIXA_MOV.post;
          end;
          TROCO := 0;
        end;

        if rdesconto2.VALUE > 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            IntToStr(iNumCaixa);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmprincipal.codifica('000044', 8);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            Zerar(IntToStr(icodigo_Usuario), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat :=
            rdesconto2.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 14;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring :=
            'Desc.Recebto. ' + nome_cliente + ' - Docto: ' +
            frmcontasreceber.qrcontasreceber.FieldByName('documento').asstring;
          FRMMODULO.QRCAIXA_MOV.post;
        end;
        if rjuros.VALUE > 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmprincipal.codifica('000044', 8);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            Zerar(IntToStr(iNumCaixa), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            Zerar(IntToStr(icodigo_Usuario), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := rjuros.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 13;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring :=
            'Juros Recebido ' + nome_cliente + ' - Docto: ' +
            frmcontasreceber.qrcontasreceber.FieldByName('documento').asstring;
          FRMMODULO.QRCAIXA_MOV.post;
        end;
      end; // caixa
      if rbanco.Checked then
      begin
        FRMMODULO.QRCAIXA_MOV.open;
        FRMMODULO.QRCAIXA_MOV.insert;
        FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
          frmprincipal.codifica('000044', 8);
        FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
          Zerar(IntToStr(iNumCaixa), 6);
        FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
          Zerar(IntToStr(icodigo_Usuario), 6);
        FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
          FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
        FRMMODULO.QRCAIXA_MOV.FieldByName('saida').ASfloat := 0;
        FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
        FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := rtotal.VALUE;
        FRMMODULO.QRCONFIG.open;
        FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
          FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

        FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 15;
        // BOLETO
        FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring := 'Recebto. ' +
          nome_cliente + ' - Docto: ' + frmcontasreceber.qrcontasreceber.
          FieldByName('documento').asstring;
        FRMMODULO.QRCAIXA_MOV.post;
        if rdesconto2.VALUE > 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmprincipal.codifica('000044', 8);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            Zerar(IntToStr(iNumCaixa), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            Zerar(IntToStr(icodigo_Usuario), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat :=
            rdesconto2.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 14;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring :=
            'Desc.Recebto. ' + nome_cliente + ' - Docto: ' +
            frmcontasreceber.qrcontasreceber.FieldByName('documento').asstring;
          FRMMODULO.QRCAIXA_MOV.post;
        end;
        if rjuros.VALUE > 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmprincipal.codifica('000044', 8);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            Zerar(IntToStr(iNumCaixa), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            Zerar(IntToStr(icodigo_Usuario), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := rjuros.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 13;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring :=
            'Juros Recebido ' + nome_cliente + ' - Docto: ' +
            frmcontasreceber.qrcontasreceber.FieldByName('documento').asstring;
          FRMMODULO.QRCAIXA_MOV.post;
        end;
      end; // banco
      frmcontasreceber.qrcontasreceber.post;

      frmcontasreceber.qrcontasreceber.Refresh;
    end
    else
    begin // apenas 01 conta
      /// ///////////////////////////////////////////////////////////////////////////
      /// ///////////////////////////////////////////////////////////////////////////
      /// ///////////////////////////////////////////////////////////////////////////
      /// ///////////////////////////////////////////////////////////////////////////
      /// ///////////////////////////////////////////////////////////////////////////
      /// ///////////////////////////////////////////////////////////////////////////
      /// //////////////  V A R I A S   C O N T A S  ////////////////////////////////
      /// ///////////////////////////////////////////////////////////////////////////
      /// ///////////////////////////////////////////////////////////////////////////
      /// ///////////////////////////////////////////////////////////////////////////
      /// ///////////////////////////////////////////////////////////////////////////
      /// ///////////////////////////////////////////////////////////////////////////

      if vqtde_parcelas > 1 then
        vdesconto := rdesconto2.VALUE / vqtde_parcelas;

      if rbanco.Checked then
      begin
        rsoma.VALUE := rtotal.VALUE;
        rdiferenca.VALUE := 0;
        continua_banco := false;
        frmcontasreceber_banco := tfrmcontasreceber_banco.create(self);
        frmcontasreceber_banco.dateedit1.date := edata.DateTime;
        // frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
        frmcontasreceber_banco.Edit1.Text := 'Recebto. ' + nome_cliente;
        frmcontasreceber_banco.showmodal;
        if not continua_banco then
          EXIT;
      end;
      if rcaixa.Checked then
      begin
        if rsoma.VALUE = 0 then
        begin
          Application.messagebox('Favor informar o meio do recebimento!',
            'Atenção', mb_ok + MB_ICONWARNING);
          EXIT;
        end;
      end;

      if rdiferenca.VALUE < 0 then
      begin
        if Application.messagebox('A diferença será lançada como crédito?',
          'Atenção', mb_yesno + MB_DEFBUTTON2 + mb_iconquestion) = idyes then
        begin
          CREDITO := rdiferenca.VALUE * (-1);
          TROCO := 0;
        end
        else
        begin
          Showmessage('T R O C O ' + #13 + formatfloat('###,###,##0.00',
            (rdiferenca.VALUE) * (-1)));
          TROCO := rdiferenca.VALUE * (-1);
          CREDITO := 0;

          rdinheiro.VALUE := rdinheiro.VALUE + rdiferenca.VALUE;
          rdiferenca.VALUE := 0;

          // showmessage('deilson '+ floattostr(RDINHEIRO.VALUE));

        end;
      end;

      vgera_parcela := 0;
      vgera_parcela1 := 0;

      if rdiferenca.VALUE <> 0 then
      begin
        if Application.messagebox
          ('Deseja Gerar uma parcela do restante do Débito?', 'Aviso',
          mb_yesno + MB_ICONWARNING) = idyes then
          vgera_parcela := 1;
      end;

      frmcontasreceber.qrcontasreceber_pgto.CLOSE;
      frmcontasreceber.qrcontasreceber_pgto.SQL.CLEAR;
      frmcontasreceber.qrcontasreceber_pgto.SQL.ADD
        ('select * from c000050 where codcliente = ''' +
        frmcontasreceber.qrcontasreceber.FieldByName('CODCLIENTE')
        .asstring + '''');
      frmcontasreceber.qrcontasreceber_pgto.open;
      // repassar as contas para dar baixa
      PRESTACOES := '';

      vvalor_pago := (rsoma.VALUE + total_credito) + rdesconto2.VALUE;
      // total pago pelo cliente
      vqtde_parcelas := frmcontasreceber.qrcontasreceber.RecordCount;

      vvalor_pago1 := (rsoma.VALUE + total_credito) + rdesconto2.VALUE;
      // total pago pelo cliente

      vqtde_parcelas1 := frmcontasreceber.qrcontasreceber.RecordCount;

      frmcontasreceber.qrcontasreceber.First;

      while not frmcontasreceber.qrcontasreceber.Eof do
      begin
        PRESTACOES := PRESTACOES + ', ' + frmcontasreceber.qrcontasreceber.
          FieldByName('CODIGO').asstring;
        frmcontasreceber.qrcontasreceber.edit;

        WITH frmcontasreceber.qrcontasreceber_pgto DO
        BEGIN
          insert;
          FieldByName('codconta').asstring :=
            frmcontasreceber.qrcontasreceber.FieldByName('codigo').asstring;
          FieldByName('data').asdatetime := edata.DateTime;
          // frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
          FieldByName('valor_parcela').ASfloat :=
            frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').ASfloat;
          if rjuros.VALUE <> 0 then
          begin
            FieldByName('valor_juros').ASfloat :=
              (frmcontasreceber.qrcontasreceber.FieldByName('VALOR_ATUAL')
              .ASfloat * JUROS_A_MAIS) + frmcontasreceber.qrcontasreceber.
              FieldByName('VALOR_juros').ASfloat;
          end
          else
          begin
            FieldByName('valor_juros').ASfloat := 0;
          end;

          if rdesconto1.VALUE <> 0 then
          begin
            FieldByName('valor_desconto').ASfloat :=
              frmcontasreceber.qrcontasreceber.FieldByName('VALOR_atual')
              .ASfloat * (rdesconto1.VALUE / 100);
          end
          else
          begin
            FieldByName('valor_desconto').ASfloat;
          end;

          (* ********************************* *)
          if vgera_parcela = 0 then
          begin
            if vvalor_pago1 > 0 then
            begin

              if (vvalor_pago1 >= frmcontasreceber.qrcontasreceber.FieldByName
                ('valor_atual').ASfloat) then
              begin
                FieldByName('valor_pago').ASfloat := FieldByName('valor_pago')
                  .ASfloat + STRTOFLOAT(formatfloat('##########0.00',
                  frmcontasreceber.qrcontasreceber.FieldByName('valor_atual')
                  .ASfloat));
                vvalor_pago1 := vvalor_pago1 -
                  frmcontasreceber.qrcontasreceber.FieldByName
                  ('valor_atual').ASfloat;
              end
              else
              begin
                FieldByName('valor_pago').ASfloat := FieldByName('valor_pago')
                  .ASfloat + STRTOFLOAT(formatfloat('##########0.00',
                  vvalor_pago1));
                vvalor_pago1 := 0;
              end;
            end;
          end
          else
          begin
            FieldByName('valor_pago').ASfloat := FieldByName('valor_pago')
              .ASfloat + STRTOFLOAT(formatfloat('##########0.00',
              frmcontasreceber.qrcontasreceber.FieldByName('valor_atual')
              .ASfloat));
          end;
          (* ******************************** *)

          percentual :=
            ((frmcontasreceber.qrcontasreceber.FieldByName('valor_atual')
            .ASfloat + FieldByName('valor_juros').ASfloat -
            FieldByName('valor_desconto').ASfloat) * 100) / rtotal.VALUE;

          if rdinheiro.VALUE <> 0 then
            FieldByName('dinheiro').ASfloat :=
              (rdinheiro.VALUE * (percentual / 100));
          if rchequeav.VALUE <> 0 then
            FieldByName('chequeav').ASfloat :=
              (rchequeav.VALUE * (percentual / 100));
          if rchequeap.VALUE <> 0 then
            FieldByName('chequeap').ASfloat :=
              (rchequeap.VALUE * (percentual / 100));
          if rcartao.VALUE <> 0 then
            FieldByName('cartao').ASfloat :=
              (rcartao.VALUE * (percentual / 100));
          if rboleto.VALUE <> 0 then
            FieldByName('boleto').ASfloat :=
              (rboleto.VALUE * (percentual / 100));
          if rdiferenca.VALUE <> 0 then
            FieldByName('troco').ASfloat :=
              (rdiferenca.VALUE * (percentual / 100));
          if CREDITO <> 0 then
            FieldByName('credito').ASfloat := (CREDITO * (percentual / 100));
          FieldByName('CODCLIENTE').asstring :=
            frmcontasreceber.qrcontasreceber.FieldByName('CODCLIENTE').asstring;
          if rcaixa.Checked then
            FieldByName('CAIXA_BANCO').ASINTEGER := 1
          else
            FieldByName('CAIXA_BANCO').ASINTEGER := 2;
          post;

          vqtde_parcelas1 := vqtde_parcelas1 - 1;

        END;

        if (vgera_parcela = 0) and (rdiferenca.VALUE <> 0) then
        begin
          if vvalor_pago > 0 then
          begin

            if rjuros.VALUE > 0 then
            begin

              if ((vvalor_pago + juros_desconto) >=
                frmcontasreceber.qrcontasreceber.FieldByName('restante').ASfloat)
              then
              begin

                frmcontasreceber.qrcontasreceber.FieldByName('valor_pago')
                  .ASfloat := frmcontasreceber.qrcontasreceber.FieldByName
                  ('valor_pago').ASfloat + frmcontasreceber.qrcontasreceber.
                  FieldByName('valor_atual').ASfloat;

                vvalor_pago := vvalor_pago - frmcontasreceber.qrcontasreceber.
                  FieldByName('RESTANTE').ASfloat;
                frmcontasreceber.qrcontasreceber.FieldByName('valor_atual')
                  .ASfloat := 0;
                frmcontasreceber.qrcontasreceber.FieldByName('situacao')
                  .ASINTEGER := 2;
              end
              else
              begin

                frmcontasreceber.qrcontasreceber.FieldByName('valor_pago')
                  .ASfloat := frmcontasreceber.qrcontasreceber.FieldByName
                  ('valor_pago').ASfloat + vvalor_pago;

                // deilson showmessage(' menor restante DA COMPRA '+floattostr(frmcontasreceber.qrcontasreceber.FieldByName('restante').asfloat)+ ' VALOR PAGP' + floattostr(VVALOR_PAGO));

                if vvalor_pago < frmcontasreceber.qrcontasreceber.FieldByName
                  ('restante').ASfloat then
                begin
                  frmcontasreceber.qrcontasreceber.FieldByName('valor_atual')
                    .ASfloat := frmcontasreceber.qrcontasreceber.FieldByName
                    ('restante').ASfloat - vvalor_pago;
                end
                else
                begin
                  vvalor_pago := 0;
                  frmcontasreceber.qrcontasreceber.FieldByName('valor_atual')
                    .ASfloat :=
                    STRTOFLOAT(formatfloat('##########0.00',
                    frmcontasreceber.qrcontasreceber.FieldByName('restante')
                    .ASfloat - frmcontasreceber.qrcontasreceber.FieldByName
                    ('valor_pago').ASfloat));
                end;

              end;

            end
            else
            begin

              if (vvalor_pago >= frmcontasreceber.qrcontasreceber.FieldByName
                ('valor_atual').ASfloat) then
              begin
                frmcontasreceber.qrcontasreceber.FieldByName('valor_pago')
                  .ASfloat := frmcontasreceber.qrcontasreceber.FieldByName
                  ('valor_pago').ASfloat + frmcontasreceber.qrcontasreceber.
                  FieldByName('valor_atual').ASfloat;
                vvalor_pago := vvalor_pago - frmcontasreceber.qrcontasreceber.
                  FieldByName('valor_atual').ASfloat;
                frmcontasreceber.qrcontasreceber.FieldByName('valor_atual')
                  .ASfloat := 0;
                frmcontasreceber.qrcontasreceber.FieldByName('situacao')
                  .ASINTEGER := 2;
              end
              else
              begin

                frmcontasreceber.qrcontasreceber.FieldByName('valor_pago')
                  .ASfloat := frmcontasreceber.qrcontasreceber.FieldByName
                  ('valor_pago').ASfloat + vvalor_pago;

                vvalor_pago := 0;

                if frmcontasreceber.qrcontasreceber.FieldByName('valor_pago')
                  .ASfloat < 0 then
                begin
                  frmcontasreceber.qrcontasreceber.FieldByName('valor_atual')
                    .ASfloat := 0;
                  frmcontasreceber.qrcontasreceber.FieldByName('situacao')
                    .ASINTEGER := 2;
                  vvalor_pago1 := vvalor_pago1 -
                    (frmcontasreceber.qrcontasreceber.FieldByName('valor_atual')
                    .ASfloat * (-1));

                end
                else
                  frmcontasreceber.qrcontasreceber.FieldByName('valor_atual')
                    .ASfloat :=
                    STRTOFLOAT(formatfloat('##########0.00',
                    frmcontasreceber.qrcontasreceber.FieldByName('valor_atual')
                    .ASfloat - frmcontasreceber.qrcontasreceber.FieldByName
                    ('valor_pago').ASfloat));
              end;

            end;

          end;

        end
        else
        begin
          // gerar uma nova prestacao no restante

          frmcontasreceber.qrcontasreceber.FieldByName('valor_pago').ASfloat :=
            frmcontasreceber.qrcontasreceber.FieldByName('valor_pago').ASfloat +
            frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').ASfloat;
          frmcontasreceber.qrcontasreceber.FieldByName('valor_atual')
            .ASfloat := 0;
          frmcontasreceber.qrcontasreceber.FieldByName('situacao')
            .ASINTEGER := 2;

        end;

        if frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').ASfloat < 0
        then
        begin
          frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').ASfloat :=
            0; // frmcontasreceber.qrcontasreceber.FieldByName('valor_parcela').asfloat - frmcontasreceber.qrcontasreceber.FieldByName('valor_pago').asfloat;
          frmcontasreceber.qrcontasreceber.FieldByName('situacao')
            .ASINTEGER := 2;
        end;


        // showmessage(' valor atual ' + floattostr(frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').asfloat));

        frmcontasreceber.qrcontasreceber.FieldByName('DATA_PAGAMENTO')
          .asdatetime := edata.DateTime;
        // frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
        frmcontasreceber.qrcontasreceber.FieldByName('filtro').ASINTEGER := 0;
        frmcontasreceber.qrcontasreceber.post;

        // aqui

        if (frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').ASfloat
          <= 0) and (frmcontasreceber.qrcontasreceber.FieldByName('situacao')
          .ASINTEGER = 1) then

        begin

          frmcontasreceber.qrcontasreceber.edit;
          frmcontasreceber.qrcontasreceber.FieldByName('situacao')
            .ASINTEGER := 2;
          frmcontasreceber.qrcontasreceber.post;
        end;


        // showmessage(floattostr(frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').asfloat));
        // showmessage(floattostr(frmcontasreceber.qrcontasreceber.FieldByName('valor_pago').asfloat));

        frmcontasreceber.qrcontasreceber.Next;

        vqtde_parcelas := vqtde_parcelas - 1;

      end;

      // if rdiferenca.Value > 0 then
      if vgera_parcela = 1 then
      begin
        if Application.messagebox
          ('Será feito um lançamento do restante do débito!', 'Atenção',
          MB_okCANCEL + MB_ICONASTERISK) = IDok then
        begin

          frmcontasreceber.qrcontasreceber.insert;
          frmcontasreceber.qrcontasreceber.FieldByName('codigo').asstring :=
            frmprincipal.codifica('000049', 6) + '/RE';
          frmcontasreceber.qrcontasreceber.FieldByName('codvenda').asstring
            := 'RESTAN';
          frmcontasreceber.qrcontasreceber.FieldByName('codcliente').asstring :=
            FRMMODULO.qrcliente.FieldByName('CODIGO').asstring;
          frmcontasreceber.qrcontasreceber.FieldByName('codvendedor').asstring
            := Zerar(IntToStr(icodigo_Usuario), 6);
          frmcontasreceber.qrcontasreceber.FieldByName('codcaixa').asstring :=
            IntToStr(iNumCaixa);
          frmcontasreceber.qrcontasreceber.FieldByName('data_emissao').asstring
            := FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          frmcontasreceber.qrcontasreceber.FieldByName('data_vencimento')
            .asstring := FRMMODULO.qrcaixa_operador.FieldByName('DATA')
            .asstring;
          frmcontasreceber.qrcontasreceber.FieldByName('valor_original').ASfloat
            := rdiferenca.VALUE;
          frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').ASfloat :=
            rdiferenca.VALUE;
          frmcontasreceber.qrcontasreceber.FieldByName('documento').asstring :=
            'RESTANTE DEBITO';
          frmcontasreceber.qrcontasreceber.FieldByName('tipo').asstring :=
            'CARTEIRA';
          frmcontasreceber.qrcontasreceber.FieldByName('situacao')
            .ASINTEGER := 1;
          frmcontasreceber.qrcontasreceber.FieldByName('filtro').ASINTEGER := 0;
          frmcontasreceber.qrcontasreceber.post;
        end
        else
        begin
          Showmessage('Cancelado pelo usuário.');
          EXIT;
        end;
      end;

      if rcaixa.Checked then
      begin
        if rdinheiro.VALUE <> 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmprincipal.codifica('000044', 8);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            Zerar(IntToStr(iNumCaixa), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            Zerar(IntToStr(icodigo_Usuario), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := rdinheiro.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat :=
            rdinheiro.VALUE;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 9;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring := 'Recebto. '
            + nome_cliente;
          FRMMODULO.QRCAIXA_MOV.post;
        end;
        if rchequeav.VALUE <> 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmprincipal.codifica('000044', 8);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            Zerar(IntToStr(iNumCaixa), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            Zerar(IntToStr(icodigo_Usuario), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := rchequeav.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 10;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring := 'Recebto. '
            + nome_cliente;
          FRMMODULO.QRCAIXA_MOV.post;
        end;
        if rchequeap.VALUE <> 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmprincipal.codifica('000044', 8);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            Zerar(IntToStr(iNumCaixa), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            Zerar(IntToStr(icodigo_Usuario), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := rchequeap.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 11;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring := 'Recebto. '
            + nome_cliente;
          FRMMODULO.QRCAIXA_MOV.post;
        end;
        if rcartao.VALUE <> 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmprincipal.codifica('000044', 8);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            Zerar(IntToStr(iNumCaixa), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            Zerar(IntToStr(icodigo_Usuario), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := rcartao.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 12;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring := 'Recebto. '
            + nome_cliente;
          FRMMODULO.QRCAIXA_MOV.post;
        end;
        if rboleto.VALUE <> 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmprincipal.codifica('000044', 8);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            Zerar(IntToStr(iNumCaixa), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            Zerar(IntToStr(icodigo_Usuario), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := rboleto.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 15;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring := 'Recebto. '
            + nome_cliente;
          FRMMODULO.QRCAIXA_MOV.post;
        end;
        if rdesconto2.VALUE > 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmprincipal.codifica('000044', 8);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            Zerar(IntToStr(iNumCaixa), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            Zerar(IntToStr(icodigo_Usuario), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat :=
            rdesconto2.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 14;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring :=
            'Desc.Recebto. ' + nome_cliente;
          FRMMODULO.QRCAIXA_MOV.post;
        end;
        if rjuros.VALUE > 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmprincipal.codifica('000044', 8);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            Zerar(IntToStr(iNumCaixa), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            Zerar(IntToStr(icodigo_Usuario), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := rjuros.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;

          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 13;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring :=
            'Juros Recebido ' + nome_cliente;
          FRMMODULO.QRCAIXA_MOV.post;
        end;
      end;

      if rbanco.Checked then
      begin
        FRMMODULO.QRCAIXA_MOV.open;
        FRMMODULO.QRCAIXA_MOV.insert;
        FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
          frmprincipal.codifica('000044', 8);
        FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
          Zerar(IntToStr(iNumCaixa), 6);
        FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
          Zerar(IntToStr(icodigo_Usuario), 6);
        FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
          FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
        FRMMODULO.QRCAIXA_MOV.FieldByName('saida').ASfloat := 0;
        FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
        FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := rtotal.VALUE;

        FRMMODULO.QRCONFIG.open;
        FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
          FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

        FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 15;
        // BOLETO
        FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring := 'Recebto. ' +
          nome_cliente;
        FRMMODULO.QRCAIXA_MOV.post;
        if rdesconto2.VALUE > 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmprincipal.codifica('000044', 8);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            Zerar(IntToStr(iNumCaixa), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            Zerar(IntToStr(icodigo_Usuario), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat :=
            rdesconto2.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 14;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring :=
            'Desc.Recebto. ' + nome_cliente;
          FRMMODULO.QRCAIXA_MOV.post;
        end;
        if rjuros.VALUE > 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmprincipal.codifica('000044', 8);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            Zerar(IntToStr(iNumCaixa), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            Zerar(IntToStr(icodigo_Usuario), 6);
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := rjuros.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 13;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring :=
            'Juros Recebido ' + nome_cliente;
          FRMMODULO.QRCAIXA_MOV.post;
        end;
      end;
      frmcontasreceber.qrcontasreceber.Refresh;
    end;

    try
      BitBtn1.OnClick(frmcontasreceber_pgto);
    except

    end;

  except
    on e: exception do
      Showmessage('Houve erro no processamento!' + #13#10 + e.Message);

  end;
  CLOSE;
end;

procedure Tfrmcontasreceber_pgto.bcancelarClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmcontasreceber_pgto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmcontasreceber_pgto.rdesconto1Enter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmcontasreceber_pgto.rdesconto1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if rdesconto1.VALUE <> 0 then
  begin
    rdesconto2.VALUE := rliquido.VALUE * (rdesconto1.VALUE / 100);
  end;
  rtotal.VALUE := rliquido.VALUE - rdesconto2.VALUE + rjuros.VALUE;
end;

procedure Tfrmcontasreceber_pgto.rdesconto2Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if rliquido.VALUE <> 0 then
  begin
    rdesconto1.VALUE := (rdesconto2.VALUE * 100) / rliquido.VALUE;
  end;
  rtotal.VALUE := rliquido.VALUE - rdesconto2.VALUE + rjuros.VALUE;
end;

procedure Tfrmcontasreceber_pgto.rdesconto1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcontasreceber_pgto.rjurosExit(Sender: TObject);
var
  vj: REAL;
begin

  tedit(Sender).Color := clwindow;

  if valor_anterior <> rjuros.VALUE then
  begin
    if rjuros.VALUE <> 0 then
    begin
      vj := rjuros.VALUE - total_juros;
      vj := vj * 100 / rliquido.VALUE;
      JUROS_A_MAIS := vj / 100;
    end;
    juros_desconto := juros_valor - rjuros.VALUE;
  end;
  rtotal.VALUE := rliquido.VALUE - rdesconto2.VALUE + rjuros.VALUE;
end;

procedure Tfrmcontasreceber_pgto.rjurosKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    rcaixa.setfocus;
end;

procedure Tfrmcontasreceber_pgto.rdinheiroExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  edinheiro.Brush.Color := clwindow;

  rsoma.VALUE := rdinheiro.VALUE + rchequeav.VALUE + rchequeap.VALUE +
    rcartao.VALUE + rboleto.VALUE;
  rdiferenca.VALUE := rtotal.VALUE - rsoma.VALUE;
end;

procedure Tfrmcontasreceber_pgto.rchequeavExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  echequeav.Brush.Color := clwindow;

  rsoma.VALUE := rdinheiro.VALUE + rchequeav.VALUE + rchequeap.VALUE +
    rcartao.VALUE + rboleto.VALUE;
  rdiferenca.VALUE := rtotal.VALUE - rsoma.VALUE;
end;

procedure Tfrmcontasreceber_pgto.rchequeapExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  echequeap.Brush.Color := clwindow;

  rsoma.VALUE := rdinheiro.VALUE + rchequeav.VALUE + rchequeap.VALUE +
    rcartao.VALUE + rboleto.VALUE;
  rdiferenca.VALUE := rtotal.VALUE - rsoma.VALUE;
end;

procedure Tfrmcontasreceber_pgto.rcartaoExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  ecartao.Brush.Color := clwindow;

  rsoma.VALUE := rdinheiro.VALUE + rchequeav.VALUE + rchequeap.VALUE +
    rcartao.VALUE + rboleto.VALUE;
  rdiferenca.VALUE := rtotal.VALUE - rsoma.VALUE;
end;

procedure Tfrmcontasreceber_pgto.rboletoExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  eboleto.Brush.Color := clwindow;

  rsoma.VALUE := rdinheiro.VALUE + rchequeav.VALUE + rchequeap.VALUE +
    rcartao.VALUE + rboleto.VALUE;
  rdiferenca.VALUE := rtotal.VALUE - rsoma.VALUE;
end;

procedure Tfrmcontasreceber_pgto.rdinheiroEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  edinheiro.Brush.Color := $00A0FAF8;
end;

procedure Tfrmcontasreceber_pgto.rchequeavEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  echequeav.Brush.Color := $00A0FAF8;

end;

procedure Tfrmcontasreceber_pgto.rchequeapEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  echequeap.Brush.Color := $00A0FAF8;

end;

procedure Tfrmcontasreceber_pgto.rcartaoEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  ecartao.Brush.Color := $00A0FAF8;

end;

procedure Tfrmcontasreceber_pgto.rboletoEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  eboleto.Brush.Color := $00A0FAF8;

end;

procedure Tfrmcontasreceber_pgto.rboletoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmcontasreceber_pgto.rcaixaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    rdinheiro.setfocus;
end;

procedure Tfrmcontasreceber_pgto.rbancoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmcontasreceber_pgto.rdiasExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;

  // calculo de juros
  rjuros.VALUE := total_juros;

  if rdias.VALUE <> 0 then
  begin
    if juro_taxa <> 0 then
    begin
      JUROS_A_MAIS := (rdias.VALUE * (juro_taxa / 100));
      rjuros.VALUE := rliquido.VALUE * (rdias.VALUE * (juro_taxa / 100));
      rjuros.VALUE := total_juros + rjuros.VALUE;
    end;
  end;
  //
  rtotal.VALUE := rliquido.VALUE + rjuros.VALUE - rdesconto2.VALUE;

end;

procedure Tfrmcontasreceber_pgto.rbancoClick(Sender: TObject);
begin

  Height := 249;
  rmeio.visible := false;
end;

procedure Tfrmcontasreceber_pgto.rcaixaClick(Sender: TObject);
begin

  Height := 451;
  rmeio.visible := true;
end;

procedure Tfrmcontasreceber_pgto.rjurosEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  valor_anterior := rjuros.VALUE;
end;

procedure Tfrmcontasreceber_pgto.rdiasKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    rcaixa.setfocus;
end;

procedure Tfrmcontasreceber_pgto.BitBtn1Click(Sender: TObject);
var
  sCOO_crediario, sGNF_Crediario: string;
begin

  if frmprincipal.TipoImpressora = Fiscal then
  begin
    repeat
      sCOO_crediario := cECF_COO_Nao_Fiscal(iECF_Modelo);

      sMsg := cECF_Recebimento(iECF_Modelo, sTotalizador_recebimento,
        rtotal.VALUE, 'Dinheiro');
      sGNF_Crediario := cECF_Numero_Contador_Operacao_NF(iECF_Modelo);
      if sMsg <> 'OK' then
      begin
        If Application.messagebox
          (pwidechar('Erro no lançamento do Crediário no ECF!' + #13 +
          'Mensagem: ' + sMsg + #13 + 'Deseja tentar outra vez?'), 'Erro',
          mb_yesno + MB_ICONERROR) = idno theN
        BEGIN
          break;
        end
        else
        begin
          sTotalizador_recebimento := inputbox('Recebimento',
            'Informe o nome do Totalizador:', sTotalizador_Crediario);
        end;
      end
      else
      begin
        sNumero_Cupom := sCOO_crediario;
        FRMMODULO.spNao_Fiscal.CLOSE;
        FRMMODULO.spNao_Fiscal.parambyname('codigo').asstring := codifica_cupom;
        FRMMODULO.spNao_Fiscal.parambyname('ecf').asstring := sECF_Serial;
        FRMMODULO.spNao_Fiscal.parambyname('data').asdatetime := dData_Sistema;
        FRMMODULO.spNao_Fiscal.parambyname('indice').asstring :=
          sTotalizador_recebimento;
        FRMMODULO.spNao_Fiscal.parambyname('descricao').asstring :=
          sNome_Totalizador_Recebimento;
        FRMMODULO.spNao_Fiscal.parambyname('valor').ASfloat := rtotal.VALUE;
        FRMMODULO.spNao_Fiscal.parambyname('hora').Astime :=
          strtotime(copy(cECF_Data_Hora(iECF_Modelo), 12, 8));
        FRMMODULO.spNao_Fiscal.parambyname('COO').asstring := sCOO_crediario;
        FRMMODULO.spNao_Fiscal.parambyname('GNF').asstring := sGNF_Crediario;
        FRMMODULO.spNao_Fiscal.parambyname('CDC').CLEAR;
        FRMMODULO.spNao_Fiscal.parambyname('GRG').CLEAR;
        FRMMODULO.spNao_Fiscal.parambyname('DENOMINACAO').asstring := 'CN';
        FRMMODULO.spNao_Fiscal.parambyname('codvendedor').ASINTEGER :=
          icodigo_Usuario;
        FRMMODULO.spNao_Fiscal.Prepare;
        FRMMODULO.spNao_Fiscal.Execute;

      end;
    until sMsg = 'OK';
  end
  else
  begin // Nao Fiscal
    sNumero_Cupom := Zerar(FloatToStr(Max('')), 5);;
    FRMMODULO.spNao_Fiscal.CLOSE;
    FRMMODULO.spNao_Fiscal.parambyname('codigo').asstring := codifica_cupom;
    FRMMODULO.spNao_Fiscal.parambyname('ecf').asstring := 'NAO FISCAL';
    FRMMODULO.spNao_Fiscal.parambyname('data').asdatetime := dData_Sistema;
    FRMMODULO.spNao_Fiscal.parambyname('indice').asstring :=
      sTotalizador_recebimento;
    FRMMODULO.spNao_Fiscal.parambyname('descricao').asstring :=
      sNome_Totalizador_Recebimento;
    FRMMODULO.spNao_Fiscal.parambyname('valor').ASfloat := rtotal.VALUE;
    FRMMODULO.spNao_Fiscal.parambyname('hora').Astime :=
      strtotime(copy(cECF_Data_Hora(iECF_Modelo), 12, 8));
    FRMMODULO.spNao_Fiscal.parambyname('COO').asstring := sCOO_crediario;
    FRMMODULO.spNao_Fiscal.parambyname('GNF').asstring := sGNF_Crediario;
    FRMMODULO.spNao_Fiscal.parambyname('CDC').CLEAR;
    FRMMODULO.spNao_Fiscal.parambyname('GRG').CLEAR;
    FRMMODULO.spNao_Fiscal.parambyname('DENOMINACAO').asstring := 'CN';
    FRMMODULO.spNao_Fiscal.parambyname('codvendedor').ASINTEGER :=
      icodigo_Usuario;
    FRMMODULO.spNao_Fiscal.Prepare;
    FRMMODULO.spNao_Fiscal.Execute;

  end;

  if frmprincipal.TipoImpressora = Fiscal then
  begin
    if Application.messagebox('Deseja imprimir o recibo?', 'Aviso',
      mb_yesno + mb_iconquestion) = idyes then
    begin

      repeat
        sMsg := cECF_Abre_Gerencial(iECF_Modelo, 'RECIBO');
        sNumero_Cupom := cECF_Numero_Cupom(iECF_Modelo);
        if sMsg <> 'OK' then
        begin
          if Application.messagebox
            (pwidechar('Erro no ECF!' + #13 + 'Mensagem: ' + sMsg + #13 +
            'Deseja tentar outra vez?'), 'Erro', mb_yesno + MB_ICONERROR) = idno
          then
          begin
            break;
          end;
        end
        else
        begin
          // extrair do ecf o numero dos contadores
          sGNF := cECF_Numero_Contador_Operacao_NF(iECF_Modelo);
          sGRG := cECF_Numero_Contador_Relatorio_Gerencial(iECF_Modelo);

        end;
      until sMsg = 'OK';

      if sMsg = 'OK' then
      begin
        repeat
          sMsg := cECF_Usa_Gerencial(iECF_Modelo,
            '<e>   RECIBO DE PAGAMENTO</e>');
          sMsg := cECF_Usa_Gerencial(iECF_Modelo,
            '------------------------------------------------');
          sMsg := cECF_Usa_Gerencial(iECF_Modelo,
            'Cliente: <b>' + copy(FRMMODULO.qrcliente.FieldByName('nome')
            .asstring, 1, 38) + '</b>');
          sMsg := cECF_Usa_Gerencial(iECF_Modelo,
            'CPF: <b>' + FRMMODULO.qrcliente.FieldByName('cpf').asstring
            + '</b>');
          sMsg := cECF_Usa_Gerencial(iECF_Modelo,
            '------------------------------------------------');
          sMsg := cECF_Usa_Gerencial(iECF_Modelo,
            'Recebemos do cliente acima informado, a importância' + 'de <b>(' +
            extenso1.extenso(frmcontasreceber_pgto.rtotal.VALUE) + ')</b>' +
            'referente ao recebimento da(s) prestção(ões) abaixo relacionada(s):');
          sMsg := cECF_Usa_Gerencial(iECF_Modelo,
            '------------------------------------------------');
          sMsg := cECF_Usa_Gerencial(iECF_Modelo,
            'Vencimento  Cupom      Documento      Valor - R$');
          sMsg := cECF_Usa_Gerencial(iECF_Modelo,
            '------------------------------------------------');

          frmcontasreceber.qrcr.open;
          frmcontasreceber.qrcr.First;
          while not frmcontasreceber.qrcr.Eof do
          begin
            if frmcontasreceber.qrcr.FieldByName('FILTRO').ASINTEGER = 1 then
            begin
              sMsg := cECF_Usa_Gerencial(iECF_Modelo,
                frmcontasreceber.qrcr.FieldByName('DATA_VENCIMENTO').asstring +
                '  ' + texto_justifica(frmcontasreceber.qrcr.FieldByName
                ('codvenda').asstring, 6, '0', taDireita) + '    ' +
                texto_justifica(frmcontasreceber.qrcr.FieldByName('DOCUMENTO')
                .asstring, 10, ' ', taEsquerda) + '    ' +
                texto_justifica(formatfloat('###,###,##0.00',
                frmcontasreceber.qrcr.FieldByName('VALOR_ATUAL').ASfloat), 12,
                ' ', taDireita));

            end;
            frmcontasreceber.qrcr.Next;
          end;

          sMsg := cECF_Usa_Gerencial(iECF_Modelo,
            '------------------------------------------------');
          sMsg := cECF_Usa_Gerencial(iECF_Modelo,
            '                                TOTAL:' +
            texto_justifica(formatfloat('###,###,##0.00',
            frmcontasreceber_pgto.rliquido.VALUE), 10, ' ', taDireita));
          sMsg := cECF_Usa_Gerencial(iECF_Modelo,
            '                             DESCONTO:' +
            texto_justifica(formatfloat('###,###,##0.00',
            frmcontasreceber_pgto.rdesconto2.VALUE), 10, ' ', taDireita));
          sMsg := cECF_Usa_Gerencial(iECF_Modelo,
            '                            ACRESCIMO:' +
            texto_justifica(formatfloat('###,###,##0.00',
            frmcontasreceber_pgto.rjuros.VALUE), 10, ' ', taDireita));
          sMsg := cECF_Usa_Gerencial(iECF_Modelo,
            '                            PAGAMENTO:' +
            texto_justifica(formatfloat('###,###,##0.00',
            frmcontasreceber_pgto.rsoma.VALUE), 10, ' ', taDireita));
          sMsg := cECF_Usa_Gerencial(iECF_Modelo,
            '                             RESTANTE:' +
            texto_justifica(formatfloat('###,###,##0.00',
            frmcontasreceber_pgto.rdiferenca.VALUE), 10, ' ', taDireita));
          sMsg := cECF_Usa_Gerencial(iECF_Modelo,
            '------------------------------------------------');
          sMsg := cECF_Usa_Gerencial(iECF_Modelo,
            'Para maior clareza firmamos o presente.         ');
          sMsg := cECF_Usa_Gerencial(iECF_Modelo, '');
          sMsg := cECF_Usa_Gerencial(iECF_Modelo,
            FormatDateTime('dddd", "d" de "mmmm" de "yyyy', date) + '.');
          sMsg := cECF_Usa_Gerencial(iECF_Modelo, '');
          sMsg := cECF_Usa_Gerencial(iECF_Modelo, '');
          sMsg := cECF_Usa_Gerencial(iECF_Modelo, '');
          sMsg := cECF_Usa_Gerencial(iECF_Modelo,
            '------------------------------------------------');
          sMsg := cECF_Usa_Gerencial(iECF_Modelo,
            '          Assinatura do Funcionário');

          if sMsg <> 'OK' then
          begin
            if Application.messagebox
              (pwidechar('Erro no ECF!' + #13 + 'Mensagem: ' + sMsg + #13 +
              'Deseja tentar outra vez?'), 'Erro', mb_yesno + MB_ICONERROR) = idno
            then
            begin
              break;
            end;
          end
          until sMsg = 'OK';

        end;

        repeat
          sMsg := cECF_Fecha_Gerencial(iECF_Modelo);
          if sMsg <> 'OK' then
          begin
            if Application.messagebox
              (pwidechar('Erro no ECF!' + #13 + 'Mensagem: ' + sMsg + #13 +
              'Deseja tentar outra vez?'), 'Erro', mb_yesno + MB_ICONERROR) = idno
            then
            begin
              break;
            end;
          end
          else
          begin
            // registrar Gerencial no banco de dados
            with FRMMODULO do
            begin
              spNao_Fiscal.CLOSE;
              spNao_Fiscal.parambyname('codigo').asstring := codifica_cupom;
              spNao_Fiscal.parambyname('ecf').asstring := sECF_Serial;
              spNao_Fiscal.parambyname('data').asdatetime := dData_Sistema;
              spNao_Fiscal.parambyname('hora').Astime :=
                strtotime(copy(cECF_Data_Hora(iECF_Modelo), 12, 8));
              spNao_Fiscal.parambyname('indice').asstring := 'RG';
              spNao_Fiscal.parambyname('Descricao').asstring :=
                'RELATÓRIO GERENCIAL';
              spNao_Fiscal.parambyname('valor').ASfloat := 0;
              spNao_Fiscal.parambyname('COO').asstring := sNumero_Cupom;
              spNao_Fiscal.parambyname('GNF').asstring := sGNF;
              spNao_Fiscal.parambyname('GRG').asstring := sGRG;
              spNao_Fiscal.parambyname('CDC').CLEAR;
              spNao_Fiscal.parambyname('DENOMINACAO').asstring := 'RG';
              spNao_Fiscal.parambyname('codvendedor').ASINTEGER :=
                icodigo_Usuario;
              spNao_Fiscal.Prepare;
              spNao_Fiscal.Execute;
            end;
          end;
        until sMsg = 'OK';
      end; // deseja imprimir

    end
    else
    begin // Nao Fiscal

      sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
        '<e>   RECIBO DE PAGAMENTO</e>');
      sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
        '------------------------------------------------');
      sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
        'Cliente: <b>' + copy(FRMMODULO.qrcliente.FieldByName('nome').asstring,
        1, 38) + '</b>');
      sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
        'CPF: <b>' + FRMMODULO.qrcliente.FieldByName('cpf').asstring + '</b>');
      sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
        '------------------------------------------------');
      sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
        'Recebemos do cliente acima informado, a importância' + 'de <b>(' +
        extenso1.extenso(frmcontasreceber_pgto.rtotal.VALUE) + ')</b>' +
        'referente ao recebimento da(s) prestção(ões) abaixo relacionada(s):');
      sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
        '------------------------------------------------');
      sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
        'Vencimento  Cupom      Documento      Valor - R$');
      sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
        '------------------------------------------------');

      frmcontasreceber.qrcr.open;
      frmcontasreceber.qrcr.First;
      while not frmcontasreceber.qrcr.Eof do
      begin
        if frmcontasreceber.qrcr.FieldByName('FILTRO').ASINTEGER = 1 then
        begin
          sMsg := cECF_Usa_Gerencial(iECF_Modelo,
            frmcontasreceber.qrcr.FieldByName('DATA_VENCIMENTO').asstring + '  '
            + texto_justifica(frmcontasreceber.qrcr.FieldByName('codvenda')
            .asstring, 6, '0', taDireita) + '    ' +
            texto_justifica(frmcontasreceber.qrcr.FieldByName('DOCUMENTO')
            .asstring, 10, ' ', taEsquerda) + '    ' +
            texto_justifica(formatfloat('###,###,##0.00',
            frmcontasreceber.qrcr.FieldByName('VALOR_ATUAL').ASfloat), 12, ' ',
            taDireita));

        end;
        frmcontasreceber.qrcr.Next;
      end;

      sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
        '------------------------------------------------');
      sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
        '                                TOTAL:' +
        texto_justifica(formatfloat('###,###,##0.00',
        frmcontasreceber_pgto.rliquido.VALUE), 10, ' ', taDireita));
      sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
        '                             DESCONTO:' +
        texto_justifica(formatfloat('###,###,##0.00',
        frmcontasreceber_pgto.rdesconto2.VALUE), 10, ' ', taDireita));
      sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
        '                            ACRESCIMO:' +
        texto_justifica(formatfloat('###,###,##0.00',
        frmcontasreceber_pgto.rjuros.VALUE), 10, ' ', taDireita));
      sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
        '                            PAGAMENTO:' +
        texto_justifica(formatfloat('###,###,##0.00',
        frmcontasreceber_pgto.rsoma.VALUE), 10, ' ', taDireita));
      sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
        '                             RESTANTE:' +
        texto_justifica(formatfloat('###,###,##0.00',
        frmcontasreceber_pgto.rdiferenca.VALUE), 10, ' ', taDireita));
      sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
        '------------------------------------------------');
      sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
        'Para maior clareza firmamos o presente.         ');
      sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal, '');
      sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
        FormatDateTime('dddd", "d" de "mmmm" de "yyyy', date) + '.');
      sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal, '');
      sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal, '');
      sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal, '');
      sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
        '------------------------------------------------');
      sMsg := Imp_Usa_Gerencial(sPortaNaoFiscal,
        '          Assinatura do Funcionário');

      // registrar Gerencial no banco de dados
      with FRMMODULO do
      begin
        spNao_Fiscal.CLOSE;
        spNao_Fiscal.parambyname('codigo').asstring := codifica_cupom;
        spNao_Fiscal.parambyname('ecf').asstring := 'NAO FISCAL';
        spNao_Fiscal.parambyname('data').asdatetime := dData_Sistema;
        spNao_Fiscal.parambyname('hora').Astime :=
          strtotime(copy(cECF_Data_Hora(iECF_Modelo), 12, 8));
        spNao_Fiscal.parambyname('indice').asstring := 'RG';
        spNao_Fiscal.parambyname('Descricao').asstring := 'RELATÓRIO GERENCIAL';
        spNao_Fiscal.parambyname('valor').ASfloat := 0;
        spNao_Fiscal.parambyname('COO').asstring := sNumero_Cupom;
        spNao_Fiscal.parambyname('GNF').asstring := sGNF;
        spNao_Fiscal.parambyname('GRG').asstring := sGRG;
        spNao_Fiscal.parambyname('CDC').CLEAR;
        spNao_Fiscal.parambyname('DENOMINACAO').asstring := 'RG';
        spNao_Fiscal.parambyname('codvendedor').ASINTEGER := icodigo_Usuario;
        spNao_Fiscal.Prepare;
        spNao_Fiscal.Execute;
      end;

    end;

  end;

  procedure Tfrmcontasreceber_pgto.BitBtn2Click(Sender: TObject);
  begin
    // verisificar se o supervisor foi logado
    frmsenha_supervisor := tfrmsenha_supervisor.create(self);
    frmsenha_supervisor.showmodal;
    if bSupervisor_autenticado then
    begin
      Application.messagebox('Não autorizado!', 'Atenção!',
        mb_ok + MB_ICONERROR);
      rdinheiro.setfocus;
      EXIT;
    end;

    rjuros.Enabled := true;
    rjuros.setfocus;
  end;

  procedure Tfrmcontasreceber_pgto.FormShow(Sender: TObject);
  begin
    juros_valor := rjuros.VALUE;
    juros_desconto := 0;
    edata.DateTime := FRMMODULO.qrcaixa_operador.FieldByName('data').asdatetime;
    rdesconto1.setfocus;
  end;

end.
