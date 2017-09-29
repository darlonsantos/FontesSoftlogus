unit uiprevenda_item;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Collection, StdCtrls, Mask, ToolEdit, CurrEdit, ExtCtrls,
  TFlatPanelUnit, Buttons, DB, Grids, Wwdbigrd, Wwdbgrid, Wwkeycb,
  ZAbstractRODataset, ZDataset, Menus, ZAbstractDataset, AdvGlowButton,
  RzEdit, IBDatabase, IBCustomDataSet, IBQuery, MemDS, DBAccess, IBC,
  DBCtrls, RzDBEdit, RzDBBnEd;

type
  Tfrmprevenda_item = class(TForm)
    dsproduto: TDataSource;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    qrproduto: TZQuery;
    qrprodutoCODIGO: TStringField;
    qrprodutoCODBARRA: TStringField;
    qrprodutoPRODUTO: TStringField;
    qrprodutoUNIDADE: TStringField;
    qrprodutoDATA_CADASTRO: TDateTimeField;
    qrprodutoCODGRUPO: TStringField;
    qrprodutoCODSUBGRUPO: TStringField;
    qrprodutoCODFORNECEDOR: TStringField;
    qrprodutoCODMARCA: TStringField;
    qrprodutoDATA_ULTIMACOMPRA: TDateTimeField;
    qrprodutoNOTAFISCAL: TStringField;
    qrprodutoPRECOCUSTO: TFloatField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoDATA_ULTIMAVENDA: TDateTimeField;
    qrprodutoESTOQUE: TFloatField;
    qrprodutoESTOQUEMINIMO: TFloatField;
    qrprodutoCODALIQUOTA: TStringField;
    qrprodutoAPLICACAO: TMemoField;
    qrprodutoLOCALICAZAO: TStringField;
    qrprodutoPESO: TFloatField;
    qrprodutoVALIDADE: TStringField;
    qrprodutoCOMISSAO: TFloatField;
    qrprodutoUSA_BALANCA: TIntegerField;
    qrprodutoUSA_SERIAL: TIntegerField;
    qrprodutoUSA_GRADE: TIntegerField;
    qrprodutoCODRECEITA: TStringField;
    qrprodutoFOTO: TStringField;
    qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField;
    qrprodutoNOTAFISCAL_ANTERIOR: TStringField;
    qrprodutoCODFORNECEDOR_ANTERIOR: TStringField;
    qrprodutoPRECOCUSTO_ANTERIOR: TFloatField;
    qrprodutoPRECOVENDA_ANTERIOR: TFloatField;
    qrprodutoCUSTOMEDIO: TFloatField;
    qrprodutoAUTO_APLICACAO: TStringField;
    qrprodutoAUTO_COMPLEMENTO: TStringField;
    qrprodutoDATA_REMARCACAO_CUSTO: TDateTimeField;
    qrprodutoDATA_REMARCACAO_VENDA: TDateTimeField;
    qrprodutoPRECO_PROMOCAO: TFloatField;
    qrprodutoDATA_PROMOCAO: TDateTimeField;
    qrprodutoFIM_PROMOCAO: TDateTimeField;
    qrprodutoCST: TStringField;
    qrprodutoALIQUOTA: TFloatField;
    qrprodutofornecedor: TStringField;
    QUERY: TZQuery;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel1: TBevel;
    FlatPanel5: TFlatPanel;
    Label1: TLabel;
    eproduto: TEdit;
    Label2: TLabel;
    Label8: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label9: TLabel;
    lserial: TLabel;
    lfornecedor: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    rqtde: TRxCalcEdit;
    runitario: TRxCalcEdit;
    rdesconto2: TRxCalcEdit;
    rdesconto1: TRxCalcEdit;
    FlatPanel4: TFlatPanel;
    rtotal: TRxCalcEdit;
    FlatPanel3: TFlatPanel;
    rsubtotal: TRxCalcEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Panel1: TPanel;
    Bevel6: TBevel;
    Label5: TLabel;
    ecst: TRzEdit;
    Label13: TLabel;
    ealiquota: TRzNumericEdit;
    restoque: TRxCalcEdit;
    qrprodutoSITUACAO: TIntegerField;
    qrvendido: TZQuery;
    qrestoque: TZQuery;
    qrprodutoPISCOFINS: TStringField;
    Panel2: TPanel;
    Label68: TLabel;
    esubgrupo: TRzDBButtonEdit;
    enomesubgrupo: TDBEdit;
    Label14: TLabel;
    ecomplemento: TEdit;
    dsproduto1: TDataSource;
    qrprodutosubgrupo: TStringField;
    qrprevenda: TZQuery;
    qrproduto_grade: TZQuery;
    qrproduto_gradeNUMERACAO: TStringField;
    qrproduto_gradeESTOQUE: TFloatField;
    qrproduto_gradeCOR: TStringField;
    qrproduto_gradeCODBARRA: TStringField;
    qrproduto_gradeCODIGO: TStringField;
    qrproduto_gradeCODPRODUTO: TStringField;
    qrproduto_serial: TZQuery;
    qrproduto_serialSERIAL: TStringField;
    qrproduto_serialNUMERONOTA: TStringField;
    qrproduto_serialESTOQUE: TFloatField;
    qrproduto_serialDATACOMPRA: TDateTimeField;
    qrproduto_serialPRECOCUSTO: TFloatField;
    qrproduto_serialPRECOVENDA: TFloatField;
    qrproduto_serialCLIENTE: TStringField;
    qrproduto_serialDATAVENDA: TDateTimeField;
    qrproduto_serialCODNOTA: TStringField;
    qrproduto_serialCODIGO: TStringField;
    qrproduto_serialCODPRODUTO: TStringField;
    qrproduto_serialCODCLIENTE: TStringField;
    qrproduto_serialSITUACAO: TIntegerField;
    qrproduto_serialCODITEM: TStringField;
    qrproduto_serialCODFORNECEDOR: TStringField;
    qrproduto_serialCODVENDA_ITEM: TStringField;
    qrproduto_serialFILTRO: TIntegerField;
    qrproduto_serialCODVENDA: TStringField;
    procedure bcancelarClick(Sender: TObject);
    procedure rqtdeEnter(Sender: TObject);
    procedure rqtdeExit(Sender: TObject);
    procedure runitarioEnter(Sender: TObject);
    procedure rdesconto1Enter(Sender: TObject);
    procedure rdesconto2Enter(Sender: TObject);
    procedure runitarioExit(Sender: TObject);
    procedure rdesconto1Exit(Sender: TObject);
    procedure rdesconto2Exit(Sender: TObject);
    procedure rqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure rdesconto2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure eprodutoEnter(Sender: TObject);
    procedure eprodutoExit(Sender: TObject);
    procedure EPRODUTOKeyPress(Sender: TObject; var Key: Char);
    procedure ecodigoExit(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ecstKeyPress(Sender: TObject; var Key: Char);
    procedure ealiquotaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure esubgrupoButtonClick(Sender: TObject);
    procedure esubgrupoEnter(Sender: TObject);
    procedure esubgrupoKeyPress(Sender: TObject; var Key: Char);
    procedure esubgrupoExit(Sender: TObject);
    procedure ealiquotaExit(Sender: TObject);
    procedure ecomplementoExit(Sender: TObject);
  private
    { Private declarations }
    procedure atualizarProduto;
  public
    { Public declarations }
    procedure setCodNota(c:String);
    procedure setCodVendedor(v:String);
    procedure setCodCliente(c:String);
    procedure setCodigo(c:String);
    procedure setOperacao(p:String);
    procedure setCodProduto(p:String);
  end;

var
  frmprevenda_item: Tfrmprevenda_item;
  VER_PRODUTO,executar : BOOLEAN;
  codnota,codvendedor,codcliente,codigo,operacao,codproduto:string;
  serial_grade : integer; // 0 - nenhum
                          // 1 - serial
                          // 2 - grade
  codigo_serial_grade : string;



implementation

uses modulo, principal ,xloc_produto, loc_produto_venda_auto,
  venda_grade, venda_serial, loc_subgrupo, prevenda;

{$R *.dfm}

procedure Tfrmprevenda_item.bcancelarClick(Sender: TObject);
begin


    eproduto.text := '';
    restoque.value := 0;
    lserial.caption := '';
    lfornecedor.Caption := '';
    ecst.text := '';
    ealiquota.value := 0;
    runitario.value := 0;
    rsubtotal.value := 0;
    rdesconto1.value := 0;
    rdesconto2.value := 0;
    rtotal.value := 0;
    rqtde.value := 0;
    eproduto.setfocus;

  close;
end;

procedure Tfrmprevenda_item.rqtdeEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure Tfrmprevenda_item.rqtdeExit(Sender: TObject);
begin

  tedit(sender).color := clwindow;




          IF NOT ESTOQUE_NEGATIVO THEN
          BEGIN
            IF restoque.value < rqtde.value THEN
            BEGIN
              APPLICATION.MESSAGEBOX('Este produto não possue esta quantidade em estoque!','Atenção',mb_ok+MB_ICONWARNING);
              rqtde.setfocus;
              exit;
            END;
          END;



  rsubtotal.Value := rqtde.value * runitario.value;
  rtotal.value    := rsubtotal.value - rdesconto2.value;
end;

procedure Tfrmprevenda_item.runitarioEnter(Sender: TObject);
begin

  tedit(sender).color := $00A8FFFF;


end;

procedure Tfrmprevenda_item.rdesconto1Enter(Sender: TObject);
begin

  tedit(sender).color := $00A8FFFF;


end;

procedure Tfrmprevenda_item.rdesconto2Enter(Sender: TObject);
begin

  tedit(sender).color := $00A8FFFF;


end;

procedure Tfrmprevenda_item.runitarioExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;

  rsubtotal.Value := rqtde.value * runitario.value;
  rtotal.value    := rsubtotal.value - rdesconto2.value;

end;

procedure Tfrmprevenda_item.rdesconto1Exit(Sender: TObject);
begin


  tedit(sender).color := clwindow;



  if rdesconto1.value <> 0 then
  begin
    rdesconto2.Value := rsubtotal.value * (rdesconto1.Value / 100);
  end;
  rtotal.value    := rsubtotal.value - rdesconto2.value;

end;

procedure Tfrmprevenda_item.rdesconto2Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;


  if rsubtotal.value <> 0 then
  begin
    rdesconto1.Value := (rdesconto2.Value * 100)/rsubtotal.value;
  end;


  rtotal.value    := rsubtotal.value - rdesconto2.value;
end;

procedure Tfrmprevenda_item.rqtdeKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
  if rqtde.value = 0 then
  begin
              APPLICATION.MESSAGEBOX('Favor informar uma quantidade válida!','Atenção',mb_ok+MB_ICONWARNING);
              rqtde.setfocus;
              exit;
  end;
  perform(wm_nextdlgctl,0,0);
end;
end;

procedure Tfrmprevenda_item.rdesconto2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmprevenda_item.FormCreate(Sender: TObject);
begin
{   if (Screen.Width = 1024) and (screen.Height = 768) then
   begin
     TOP := Top + 260;
     LEFT := Left + 490;
   end
   else
   begin
     TOP := Top + 140;
     LEFT := Left + 350;
   end;

}

  RQTDE.DisplayFormat := mascara_qtde;
  RQTDE.DecimalPlaces := decimal_qtde;

  if decimal_valor > 3 then
  else
    begin
      RUNITARIO.DisplayFormat := mascara_valor;
      RUNITARIO.DecimalPlaces := decimal_valor;
    end;
end;

procedure Tfrmprevenda_item.eprodutoEnter(Sender: TObject);
begin
    TEDIT(SENDER).COLOR := $00A8FFFF;
end;

procedure Tfrmprevenda_item.eprodutoExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmprevenda_item.EPRODUTOKeyPress(Sender: TObject; var Key: Char);
var a, cod_serial, TIPO, codigo : string;
achou : boolean;
i : integer;
begin

  if (key = #13)  then
  begin
    IF EPRODUTO.TEXT <> '' THEN
    BEGIN
      achou := false;
      cod_serial := '';
      TIPO := '';
      // procurar pelo codigo  de barras
      CODIGO := EPRODUTO.TEXT;

      qrproduto.Close;
      qrproduto.sql.clear;
      qrproduto.SQL.Add('select * from c000025 where situacao = 0 and codbarra ='''+CODIGO+'''');
      qrproduto.Open;

      CODIGO := '';
      if qrproduto.RecordCount > 0 then achou := true;
      if not achou then
      begin
        // procurar pelo codigo
        CODIGO := FRMPRINCIPAL.zerarcodigo(CODIGO,6);
        qrproduto.Close;
        qrproduto.sql.clear;
        qrproduto.SQL.Add('select * from c000025 where situacao = 0 and  codigo ='''+FRMPRINCIPAL.ZERARCODIGO(eproduto.text,6)+'''');
        qrproduto.Open;
        if qrproduto.RecordCount > 0 then achou := true;
      end;
      if not achou then
      begin
        // procurar pelo serial
        QUERY.Close;
        QUERY.sql.clear;
        QUERY.SQL.Add('select * from c000022 where serial ='''+eproduto.text+'''');
        QUERY.Open;
        if QUERY.RecordCount > 0 then achou := true;
        if achou then
        begin
          a := QUERY.fieldbyname('codproduto').asstring;
          cod_serial := QUERY.fieldbyname('serial').asstring;
          TIPO := 'SERIAL';
          qrproduto.Close;
          qrproduto.sql.clear;
          qrproduto.SQL.Add('select * from c000025 where situacao = 0 and  codigo ='''+a+'''');
          qrproduto.Open;
          if qrproduto.RecordCount > 0 then achou := true else achou := false;
        end;
      end;

      if not achou then
      begin

        // procurar pelo codigo de barras da grade
        QUERY.Close;
        QUERY.sql.clear;
        QUERY.SQL.Add('select * from c000021 where codbarra ='''+eproduto.text+'''');
        QUERY.Open;
        if QUERY.RecordCount > 0 then
        begin
          if ESTOQUE_NEGATIVO then
            achou := true
          else
          begin
            if QUERY.FieldByName('estoque').asfloat > 0 then
              achou := true
            else
            begin
              application.messagebox('Este produto não possue estoque para esta grade!','Atenção!',mb_ok+MB_ICONERROR);
              eproduto.text := '';
              eproduto.SetFocus;
              exit;
            end;
            end;
        end;

        if achou then
        begin
          a := QUERY.fieldbyname('codproduto').asstring;
          cod_serial := QUERY.fieldbyname('codigo').asstring;
          TIPO := 'GRADE';
          qrproduto.Close;
          qrproduto.sql.clear;
          qrproduto.SQL.Add('select * from c000025 where situacao = 0 and  codigo ='''+a+'''');
          qrproduto.Open;
          if qrproduto.RecordCount > 0 then achou := true else achou := false;
        end;
      end;

      if not achou then
      begin
        codigo := eproduto.text;
        a :=  copy(codigo,1,1);
        for I := 1 To Length(A) Do
        begin
          if (A[I] in ['A'..'Z']) then
          begin
            produto_loc := '';
            qrproduto.Close;
            qrproduto.sql.clear;
            qrproduto.SQL.Add('select * from c000025 where situacao = 0 and  produto like ''%'+eproduto.text+'%''');
            qrproduto.Open;
            if qrproduto.RecordCount = 0 then
            begin
              application.messagebox('Produto não encontrado!','Aviso',mb_ok+MB_ICONWARNING);
              eproduto.text := '';
              exit;
            end
            else
            begin
              if qrproduto.RecordCount = 1 then
              begin
                achou := true;
              end
              else
              begin

               frmmodulo.qrconfig.Open;
               IF FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'PECAS' then
               begin
                frmloc_venda_produto_auto := tfrmloc_venda_produto_auto.create(self);
                frmloc_venda_produto_auto.eproduto.text := eproduto.Text;
                frmloc_venda_produto_auto.ShowModal;
                if produto_loc <> '' then
                begin
                  qrproduto.Close;
                  qrproduto.sql.clear;
                  qrproduto.SQL.Add('select * from c000025 where situacao = 0 and  codigo like ''%'+produto_loc+'%''');
                  qrproduto.Open;
                  if qrproduto.RecordCount > 0 then achou := true else achou := false;
                end;
               end
               else
               begin



                frmxloc_produto := tfrmxloc_produto.create(self);
                frmxloc_produto.loc.Text := eproduto.text;
                frmxloc_produto.showmodal;
                produto_loc := resultado_pesquisa1;


                if produto_loc <> '' then
                begin
                  qrproduto.Close;
                  qrproduto.sql.clear;
                  qrproduto.SQL.Add('select * from c000025 where situacao = 0 and  codigo like ''%'+produto_loc+'%''');
                  qrproduto.Open;
                  if qrproduto.RecordCount > 0 then achou := true else achou := false;
                end;
               end;
              end;
            end;
          end;
        END;
      end;









       qrproduto.Open;
       if qrproduto.RecordCount > 0 then
       begin

          eproduto.text  := qrproduto.fieldbyname('codigo').asstring + ' '+qrproduto.fieldbyname('produto').asstring;
          runitario.Value := qrproduto.fieldbyname('precovenda').asfloat;
          rqtde.value := 1;
          eproduto.Text := qrproduto.fieldbyname('produto').asstring;

          qrestoque.close;
          qrestoque.sql.clear;
          qrestoque.sql.add('select * from c000100 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
          qrestoque.open;

          qrvendido.close;
          qrvendido.sql.clear;
          qrvendido.SQL.Add('select sum(qtde) quant from CL00001 where codproduto = '+QuotedStr(qrproduto.fieldbyname('codigo').asstring));
          qrvendido.Open;



          if qrestoque.recordcount > 0 then
            restoque.Value := (qrestoque.fieldbyname('estoque_atual').asfloat - qrvendido.fieldbyname('quant').asfloat) else
            restoque.Value := qrvendido.fieldbyname('quant').asfloat * (-1);

         IF NOT ESTOQUE_NEGATIVO THEN
          BEGIN
            IF restoque.Value < 0.01 THEN
            BEGIN
              APPLICATION.MESSAGEBOX('Este produto não possue ESTOQUE!','Atenção',mb_ok+MB_ICONWARNING);
              eproduto.text := '';
              eproduto.setfocus;
              exit;
            END;
          END;

          lfornecedor.Caption := qrproduto.fieldbyname('fornecedor').asstring;
          ecst.Text := qrproduto.fieldbyname('cst').asstring;
          ealiquota.value := qrproduto.fieldbyname('aliquota').asfloat;
          lserial.Caption := '---';

          rsubtotal.value := qrproduto.fieldbyname('precovenda').asfloat;
          rdesconto1.value := 0;
          rdesconto2.value := 0;
          rtotal.value := qrproduto.fieldbyname('precovenda').asfloat;

          serial_grade := 0;
          codigo_serial_grade := '';

          RQTDE.Enabled := TRUE;

          //// verificar se produto usa grade

          if qrproduto.FieldByName('usa_grade').asinteger = 1 then
          begin
            IF (cod_serial <> '') AND (TIPO = 'GRADE') THEN
            BEGIN
              qrproduto_grade.close;
              qrproduto_grade.sql.clear;
              qrproduto_grade.sql.Add('select * from c000021 where codigo = '''+cod_serial+'''');
              qrproduto_grade.open;
              if qrproduto_grade.RecordCount > 0 then
              begin
                lserial.Caption := qrproduto_grade.fieldbyname('numeracao').asstring;
                serial_grade := 2;
                codigo_serial_grade := qrproduto_grade.fieldbyname('codigo').asstring;
                RQTDE.SETFOCUS;
              end
              else
              begin
                APPLICATION.MESSAGEBOX('Grade não encontrada!','Atenção',mb_ok+MB_ICONWARNING);
                eproduto.text := '';
                eproduto.setfocus;
                exit;
              end;


            END
            ELSE
            BEGIN
              qrproduto_grade.close;
              qrproduto_grade.sql.clear;
              if estoque_negativo then
                qrproduto_grade.sql.Add('select * from c000021 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+''' order by codigo')
              else
                qrproduto_grade.sql.Add('select * from c000021 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+''' and estoque > 0 order by codigo');
              qrproduto_grade.open;

              if qrproduto_grade.RecordCount = 0 then
              begin
                application.messagebox('Não foi encontrado nenhum registro de grade para este produto!','Erro',mb_ok+mb_iconerror);
                eproduto.text := '';
                eproduto.setfocus;

                restoque.value := 0;
                lserial.caption := '';
                lfornecedor.Caption := '';
                ecst.text := '';
                ealiquota.value := 0;
                rqtde.value := 0;
                runitario.value := 0;
                rsubtotal.value := 0;
                rdesconto1.value := 0;
                rdesconto2.value := 0;
                rtotal.value := 0;
                exit;
              end;

              frmvenda_grade := tfrmvenda_grade.create(self);
              frmvenda_grade.showmodal;


            END;
          end
          else
          begin
            /// verificar se produto utiliza controle de seriais
            if qrproduto.FieldByName('usa_serial').asinteger = 1 then
            begin
              IF (cod_serial <> '') AND (TIPO = 'SERIAL') THEN
              BEGIN
                qrproduto_serial.close;
                qrproduto_serial.sql.clear;
                qrproduto_serial.sql.Add('select * from c000022 where codigo = '''+COD_serial+''' and situacao = 1 ');
                qrproduto_serial.open;
                if qrproduto_serial.Recordcount > 0 then
                begin
                  lserial.Caption := qrproduto_serial.fieldbyname('serial').asstring;
                  serial_grade := 1;
                  codigo_serial_grade := qrproduto_serial.fieldbyname('codigo').asstring;
                  RQTDE.Enabled := FALSE;
                  RUNITARIO.SETFOCUS;
                end
                else
                begin
                              APPLICATION.MESSAGEBOX('Serial não encontrado!','Atenção',mb_ok+MB_ICONWARNING);
                              eproduto.text := '';
                              eproduto.setfocus;
                              exit;
                end;
              end
              else
              begin
                qrproduto_serial.close;
                qrproduto_serial.sql.clear;
                qrproduto_serial.sql.Add('select * from c000022 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+''' and situacao = 1 order by codigo');
                qrproduto_serial.open;

               if qrproduto_serial.recordcount = 0 then
                begin
                              APPLICATION.MESSAGEBOX('Produto utiliza controle de serial mas não tem nenhum serial cadastrado!','Atenção',mb_ok+MB_ICONWARNING);
                              eproduto.text := '';
                              eproduto.setfocus;
                              exit;


                end;

                frmvenda_serial := tfrmvenda_serial.create(self);
                frmvenda_serial.showmodal;

                panel2.Visible := True;

              end;
            end
            else
            begin
              rqtde.setfocus;
            end;
          end;

        end
        else
        begin
          application.messagebox('Produto não encontrado!','Aviso',mb_ok+MB_ICONWARNING);
          eproduto.text := '';
          eproduto.SetFocus;
        end;
    END
    ELSE
    BEGIN
      Eproduto.SetFocus;
    END;

  end;
end;

procedure Tfrmprevenda_item.ecodigoExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmprevenda_item.bgravarClick(Sender: TObject);
var
  aliquota : string;
  unidade : string;
  CODIGO_CONFIG : STRING;
  TEXTO : STRING;
  I : INTEGER;
  tot : real;
  qry:TZQuery;
  qry2:TZQuery;  
begin

  panel2.Visible := False;

  if eproduto.text <> '' then
  begin

     IF RDESCONTO1.VALUE > 0 THEN
     BEGIN
         FRMMODULO.QRCONFIG.OPEN;
         IF FRMMODULO.QRCONFIG.FIELDBYNAME('DESCONTO_PRODUTO').ASFLOAT > 0 THEN
         BEGIN
           IF RDESCONTO1.VALUE > FRMMODULO.QRCONFIG.FIELDBYNAME('DESCONTO_PRODUTO').ASFLOAT THEN
           BEGIN
             if frmprincipal.autentica('Desconto Item',4) then
             begin

             end
             else
             begin
               Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
               exit;
             end;
           END;
         END;
     END;


  rsubtotal.Value := rqtde.value * runitario.value;
  rtotal.value    := rsubtotal.value - rdesconto2.value;

  FRMMODULO.QRCONFIG.OPEN;

  unidade := qrproduto.fieldbyname('unidade').asstring;
  if unidade = '' then unidade := 'UN';

 if operacao = 'I' then
 begin
    qrprevenda.Insert;
    qrprevenda.FieldByName('codigo').asstring       := frmprincipal.codifica('000032');
    qrprevenda.FieldByName('codnota').asstring      := codnota; // Código da venda;
    qrprevenda.FieldByName('codproduto').asstring   := qrproduto.fieldbyname('codigo').asstring;
    qrprevenda.FieldByName('cod_barras').asstring   := qrproduto.fieldbyname('codbarra').asstring;
    qrprevenda.FieldByName('numeroNota').asstring   := codnota;
    qrprevenda.FieldByName('unidade').asstring      := unidade;
    qrprevenda.FieldByName('ICMS').asFLOAT          := qrproduto.fieldbyname('ALIQUOTA').asFLOAT;
    qrprevenda.FieldByName('qtde').asfloat          := rqtde.value;
    qrprevenda.FieldByName('unitario').asfloat      := runitario.value;
    //qrprevenda.FieldByName('subtotal').asfloat      := rsubtotal.value;
    qrprevenda.FieldByName('total').asfloat         := rtotal.value;
    qrprevenda.FieldByName('desconto').asfloat      := rdesconto2.value;
    qrprevenda.FieldByName('acrescimo').asfloat     := 0;
    qrprevenda.FieldByName('movimento').asinteger   := 2;
    qrprevenda.FieldByName('codvendedor').asstring  := codvendedor;
    qrprevenda.FieldByName('data').AsDateTime       := now;

    if serial_grade = 1 then // serial
    begin
      qrprevenda.fieldbyname('serial').asstring := lserial.CAPTION;
      qrprevenda.fieldbyname('codgrade').asstring := qrPRODUTO_SERIAL.fieldbyname('codigo').asstring;
      qrprevenda.FieldByName('tipo_serial').asinteger := 1;

      QRPRODUTO_SERIAL.Edit;
      QRPRODUTO_SERIAL.fieldbyname('situacao').AsInteger  := 2;
      QRPRODUTO_SERIAL.fieldbyname('cliente').asstring    := frmPrevenda.qrorcamentocliente.AsString;
      QRPRODUTO_SERIAL.fieldbyname('codcliente').asstring := frmPrevenda.qrorcamentoCODCLIENTE.AsString;
      QRPRODUTO_SERIAL.FieldByName('DATAVENDA').ASSTRING  := frmPrevenda.qrorcamentoDATA.AsString;
      qrproduto_serial.fieldbyname('codvenda').asstring   := frmPrevenda.qrorcamentoCODIGO.AsString;
      qrproduto_serial.fieldbyname('precovenda').asfloat  := runitario.value;
      QRPRODUTO_SERIAL.post;
    end;

    if serial_grade = 2 then // grade
    begin
      qrprevenda.fieldbyname('serial').asstring := lserial.CAPTION;
      qrprevenda.fieldbyname('codgrade').asstring := QRPRODUTO_GRADE.fieldbyname('codigo').asstring;
      qrprevenda.FieldByName('tipo_serial').asinteger := 2;

      QRPRODUTO_GRADE.Edit;
      QRPRODUTO_GRADE.fieldbyname('estoque').asfloat := QRPRODUTO_GRADE.fieldbyname('estoque').asfloat - rqtde.value;
      QRPRODUTO_GRADE.post;
    end;
 end;

 if operacao = 'A' then
 begin
    qrprevenda.Edit;
    //qrprevenda.FieldByName('codigo').asstring       := frmprincipal.codifica('000032');
    //qrprevenda.FieldByName('codnota').asstring      := codnota; // Código da venda;
    qrprevenda.FieldByName('codproduto').asstring   := qrproduto.fieldbyname('codigo').asstring;
    qrprevenda.FieldByName('cod_barras').asstring   := qrproduto.fieldbyname('codbarra').asstring;
    //qrprevenda.FieldByName('numeroNota').asstring   := codnota;
    qrprevenda.FieldByName('unidade').asstring      := unidade;
    qrprevenda.FieldByName('ICMS').asFLOAT          := qrproduto.fieldbyname('ALIQUOTA').asFLOAT;
    qrprevenda.FieldByName('qtde').asfloat          := rqtde.value;
    qrprevenda.FieldByName('unitario').asfloat      := runitario.value;
    qrprevenda.FieldByName('total').asfloat         := rtotal.value;
    //qrprevenda.FieldByName('subtotal').asfloat      := rsubtotal.value;
    qrprevenda.FieldByName('desconto').asfloat      := rdesconto2.value;
    qrprevenda.FieldByName('acrescimo').asfloat     := 0;
    //qrprevenda.FieldByName('movimento').asinteger   := 2;
    //qrprevenda.FieldByName('codvendedor').asstring  := codvendedor;
    //qrprevenda.FieldByName('data').AsDateTime       := now;

    if serial_grade = 1 then // serial
    begin

      qrprevenda.fieldbyname('serial').asstring := lserial.CAPTION;
      qrprevenda.fieldbyname('codgrade').asstring := qrPRODUTO_SERIAL.fieldbyname('codigo').asstring;
      qrprevenda.FieldByName('tipo_serial').asinteger := 1;

      QRPRODUTO_SERIAL.Edit;
      QRPRODUTO_SERIAL.fieldbyname('situacao').AsInteger  := 2;
      QRPRODUTO_SERIAL.fieldbyname('cliente').asstring    := frmPrevenda.qrorcamentocliente.AsString;
      QRPRODUTO_SERIAL.fieldbyname('codcliente').asstring := frmPrevenda.qrorcamentoCODCLIENTE.AsString;
      QRPRODUTO_SERIAL.FieldByName('DATAVENDA').ASSTRING  := frmPrevenda.qrorcamentoDATA.AsString;
      qrproduto_serial.fieldbyname('codvenda').asstring   := frmPrevenda.qrorcamentoCODIGO.AsString;
      qrproduto_serial.fieldbyname('precovenda').asfloat  := runitario.value;
      QRPRODUTO_SERIAL.post;

    end;

    if serial_grade = 2 then // grade
    begin
      qrprevenda.fieldbyname('serial').asstring := lserial.CAPTION;
      qrprevenda.fieldbyname('codgrade').asstring := QRPRODUTO_GRADE.fieldbyname('codigo').asstring;
      qrprevenda.FieldByName('tipo_serial').asinteger := 2;

      QRPRODUTO_GRADE.Edit;
      QRPRODUTO_GRADE.fieldbyname('estoque').asfloat := QRPRODUTO_GRADE.fieldbyname('estoque').asfloat - rqtde.value;
      QRPRODUTO_GRADE.post;
    end;

 end;


 qrprevenda.post;


      //ibtrans_item.Commit;

  frmmodulo.Conexao.Commit;

  qry:=TZQuery.Create(self);
  qry.Connection:=frmmodulo.Conexao;
  qry2:=TZQuery.Create(self);
  qry2.Connection:=frmmodulo.Conexao;

  qry2.SQL.Text:='select sum(total) as total, sum(desconto) as desconto, sum(acrescimo) as acrescimo from  c000075 where codnota = '+QuotedStr(codnota);
  qry2.Open;

  qry.SQL.Text:='update c000074 set subtotal = :subtotal, desconto = :desconto, acrescimo = :acrescimo, TOTAL = :total where codigo = '+QuotedStr(codnota);
  qry.ParamByName('total').AsFloat:=qry2.fieldByName('total').AsFloat;
  qry.ParamByName('desconto').AsFloat:=qry2.fieldByName('desconto').AsFloat;
  qry.ParamByName('acrescimo').AsFloat:=qry2.fieldByName('acrescimo').AsFloat;
  qry.ParamByName('subtotal').AsFloat:=(qry2.fieldByName('total').AsFloat-qry2.fieldByName('desconto').AsFloat)+qry2.fieldByName('acrescimo').AsFloat;
  qry.ExecSQL;

  frmmodulo.Conexao.Commit;

  FreeAndNil(qry);
  FreeAndNil(qry2);

    eproduto.text := '';
    restoque.value := 0;
    lserial.caption := '';
    lfornecedor.Caption := '';
    ecst.text := '';
    ealiquota.value := 0;
    rqtde.value := 0;
    runitario.value := 0;
    rsubtotal.value := 0;
    rdesconto1.value := 0;
    rdesconto2.value := 0;
    rtotal.value := 0;


   frmmodulo.qrconfig.Open;


    eproduto.setfocus;
  end
  else
  begin
    application.messagebox('Favor informar o produto!','Atenção!',mb_ok+MB_ICONWARNING);
    eproduto.setfocus;
  end;

end;

procedure Tfrmprevenda_item.FormShow(Sender: TObject);
begin
  panel2.Visible := False;

  RUNITARIO.Enabled := ALTERA_UNITARIO;
  rdesconto1.Value := 0;
  rdesconto2.Value := 0;
  EPRODUTO.SETFOCUS;


  if operacao = 'A' then
     begin
       executar:=true;
       qrprevenda.Close;
         qrprevenda.sql.Text:='select * from c000075 where codigo = '+QuotedStr(codigo);
       qrprevenda.Open;
       eproduto.Text:=codproduto;

       atualizarProduto;
       rqtde.Value     :=qrprevenda.fieldByName('qtde').AsFloat;
       runitario.Value :=qrprevenda.fieldByName('unitario').AsFloat;
       rdesconto2.Value:=qrprevenda.fieldByName('desconto').AsFloat;
       rqtdeExit(self);
       runitarioExit(self);
       rdesconto2Exit(self);
       rqtde.setFocus;
       executar:=false;
     end else
     begin

       qrprevenda.Close;
         qrprevenda.sql.Text:='select * from c000075 where codigo = '+QuotedStr('999999');
       qrprevenda.Open;

     end;

end;

procedure Tfrmprevenda_item.ecstKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmprevenda_item.ealiquotaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmprevenda_item.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
  qrprevenda.Close;
end;

procedure Tfrmprevenda_item.esubgrupoButtonClick(Sender: TObject);
begin

  try

    frmmodulo.qrSUBGRUPO.close;
    frmmodulo.qrSUBGRUPO.sql.clear;
    frmmodulo.qrSUBGRUPO.SQL.add('select * from c000018 where codgrupo = '''+qrproduto.fieldbyname('codgrupo').asstring+''' order by SUBGRUPO');
    frmmodulo.qrSUBGRUPO.open;
    frmmodulo.qrSUBGRUPO.IndexFieldNames := 'SUBGRUPO';

    frmloc_subgrupo := tfrmloc_subgrupo.create(self);
    frmloc_subgrupo.showmodal;

    qrproduto.Edit;
    qrprodutoCODSUBGRUPO.AsString := frmmodulo.qrsubgrupo.fieldbyname('codigo').asstring;
    qrprodutosubgrupo.AsString    := frmmodulo.qrsubgrupo.fieldbyname('subgrupo').asstring;
    
    Application.ProcessMessages;

  except
  end;

  ecomplemento.setfocus;

end;

procedure Tfrmprevenda_item.esubgrupoEnter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;
try
  frmmodulo.qrSUBGRUPO.close;
  frmmodulo.qrSUBGRUPO.sql.clear;
  frmmodulo.qrSUBGRUPO.SQL.add('select * from c000018 where codgrupo = '''+qrproduto.fieldbyname('codgrupo').asstring+''' order by SUBGRUPO');
  frmmodulo.qrSUBGRUPO.open;
  frmmodulo.qrSUBGRUPO.IndexFieldNames := 'SUBGRUPO';
except
end;

end;

procedure Tfrmprevenda_item.esubgrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    begin
      tedit(sender).Color := clwindow;
      esubgrupo.Text := frmprincipal.zerarcodigo(esubgrupo.text,6);
      if esubgrupo.text <> '000000' then
        if not FrmPrincipal.Locregistro(frmmodulo.qrsubgrupo,esubgrupo.text,'codigo') then
          begin
              application.messagebox('Subgrupo não cadastrado!','Atenção',mb_ok+mb_iconerror);
              esubgrupo.setfocus;
              exit;
          end
        else
          ecomplemento.setfocus
      else
          esubgrupoButtonClick(frmprevenda_item);;
    end;
end;

procedure Tfrmprevenda_item.esubgrupoExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmprevenda_item.ealiquotaExit(Sender: TObject);
begin
  rqtde.SetFocus;
end;

procedure Tfrmprevenda_item.ecomplementoExit(Sender: TObject);
begin
  if rqtde.Enabled = false then rqtde.Enabled := True;
  rqtde.SetFocus;
end;

procedure Tfrmprevenda_item.setCodNota(c: String);
begin
   codnota :=c;
end;

procedure Tfrmprevenda_item.setCodVendedor(v: String);
begin
   codvendedor := v;
end;

procedure Tfrmprevenda_item.setCodCliente(c: String);
begin
  codcliente:=c;
end;

procedure Tfrmprevenda_item.setCodigo(c: String);
begin
  codigo :=c;
end;

procedure Tfrmprevenda_item.setOperacao(p: String);
begin
  operacao :=p;
end;

procedure Tfrmprevenda_item.setCodProduto(p: String);
begin
   codproduto:=p;
end;

procedure Tfrmprevenda_item.atualizarProduto;
var a, cod_serial, TIPO, codigo : string;
achou : boolean;
i : integer;
begin

    IF EPRODUTO.TEXT <> '' THEN
    BEGIN
      achou := false;
      cod_serial := '';
      TIPO := '';
      // procurar pelo codigo  de barras
      CODIGO := EPRODUTO.TEXT;

      qrproduto.Close;
      qrproduto.sql.clear;
      qrproduto.SQL.Add('select * from c000025 where situacao = 0 and codbarra ='''+CODIGO+'''');
      qrproduto.Open;

      CODIGO := '';
      if qrproduto.RecordCount > 0 then achou := true;
      if not achou then
      begin
        // procurar pelo codigo
        CODIGO := FRMPRINCIPAL.zerarcodigo(CODIGO,6);
        qrproduto.Close;
        qrproduto.sql.clear;
        qrproduto.SQL.Add('select * from c000025 where situacao = 0 and  codigo ='''+FRMPRINCIPAL.ZERARCODIGO(eproduto.text,6)+'''');
        qrproduto.Open;
        if qrproduto.RecordCount > 0 then achou := true;
      end;
      if not achou then
      begin
        // procurar pelo serial
        QUERY.Close;
        QUERY.sql.clear;
        QUERY.SQL.Add('select * from c000022 where serial ='''+eproduto.text+'''');
        QUERY.Open;
        if QUERY.RecordCount > 0 then achou := true;
        if achou then
        begin
          a := QUERY.fieldbyname('codproduto').asstring;
          cod_serial := QUERY.fieldbyname('serial').asstring;
          TIPO := 'SERIAL';
          qrproduto.Close;
          qrproduto.sql.clear;
          qrproduto.SQL.Add('select * from c000025 where situacao = 0 and  codigo ='''+a+'''');
          qrproduto.Open;
          if qrproduto.RecordCount > 0 then achou := true else achou := false;
        end;
      end;

      if not achou then
      begin

        // procurar pelo codigo de barras da grade
        QUERY.Close;
        QUERY.sql.clear;
        QUERY.SQL.Add('select * from c000021 where codbarra ='''+eproduto.text+'''');
        QUERY.Open;
        if QUERY.RecordCount > 0 then
        begin
          if ESTOQUE_NEGATIVO then
            achou := true
          else
          begin
            if QUERY.FieldByName('estoque').asfloat > 0 then
              achou := true
            else
            begin
              application.messagebox('Este produto não possue estoque para esta grade!','Atenção!',mb_ok+MB_ICONERROR);
              eproduto.text := '';
              eproduto.SetFocus;
              exit;
            end;
            end;
        end;

        if achou then
        begin
          a := QUERY.fieldbyname('codproduto').asstring;
          cod_serial := QUERY.fieldbyname('codigo').asstring;
          TIPO := 'GRADE';
          qrproduto.Close;
          qrproduto.sql.clear;
          qrproduto.SQL.Add('select * from c000025 where situacao = 0 and  codigo ='''+a+'''');
          qrproduto.Open;
          if qrproduto.RecordCount > 0 then achou := true else achou := false;
        end;
      end;

      if not achou then
      begin
        codigo := eproduto.text;
        a :=  copy(codigo,1,1);
        for I := 1 To Length(A) Do
        begin
          if (A[I] in ['A'..'Z']) then
          begin
            produto_loc := '';
            qrproduto.Close;
            qrproduto.sql.clear;
            qrproduto.SQL.Add('select * from c000025 where situacao = 0 and  produto like ''%'+eproduto.text+'%''');
            qrproduto.Open;
            if qrproduto.RecordCount = 0 then
            begin
              application.messagebox('Produto não encontrado!','Aviso',mb_ok+MB_ICONWARNING);
              eproduto.text := '';
              exit;
            end
            else
            begin
              if qrproduto.RecordCount = 1 then
              begin
                achou := true;
              end
              else
              begin

               frmmodulo.qrconfig.Open;
               IF FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'PECAS' then
               begin
                frmloc_venda_produto_auto := tfrmloc_venda_produto_auto.create(self);
                frmloc_venda_produto_auto.eproduto.text := eproduto.Text;
                frmloc_venda_produto_auto.ShowModal;
                if produto_loc <> '' then
                begin
                  qrproduto.Close;
                  qrproduto.sql.clear;
                  qrproduto.SQL.Add('select * from c000025 where situacao = 0 and  codigo like ''%'+produto_loc+'%''');
                  qrproduto.Open;
                  if qrproduto.RecordCount > 0 then achou := true else achou := false;
                end;
               end
               else
               begin



                frmxloc_produto := tfrmxloc_produto.create(self);
                frmxloc_produto.loc.Text := eproduto.text;
                frmxloc_produto.showmodal;
                produto_loc := resultado_pesquisa1;


                if produto_loc <> '' then
                begin
                  qrproduto.Close;
                  qrproduto.sql.clear;
                  qrproduto.SQL.Add('select * from c000025 where situacao = 0 and  codigo like ''%'+produto_loc+'%''');
                  qrproduto.Open;
                  if qrproduto.RecordCount > 0 then achou := true else achou := false;
                end;
               end;
              end;
            end;
          end;
        END;
      end;









       qrproduto.Open;
       if qrproduto.RecordCount > 0 then
       begin

          eproduto.text  := qrproduto.fieldbyname('codigo').asstring + ' '+qrproduto.fieldbyname('produto').asstring;
          runitario.Value := qrproduto.fieldbyname('precovenda').asfloat;
          rqtde.value := 1;
          eproduto.Text := qrproduto.fieldbyname('produto').asstring;

          qrestoque.close;
          qrestoque.sql.clear;
          qrestoque.sql.add('select * from c000100 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
          qrestoque.open;

          qrvendido.close;
          qrvendido.sql.clear;
          qrvendido.SQL.Add('select sum(qtde) quant from CL00001 where codproduto = '+QuotedStr(qrproduto.fieldbyname('codigo').asstring));
          qrvendido.Open;



          if qrestoque.recordcount > 0 then
            restoque.Value := (qrestoque.fieldbyname('estoque_atual').asfloat - qrvendido.fieldbyname('quant').asfloat) else
            restoque.Value := qrvendido.fieldbyname('quant').asfloat * (-1);

         IF NOT ESTOQUE_NEGATIVO THEN
          BEGIN
            IF restoque.Value < 0.01 THEN
            BEGIN
              APPLICATION.MESSAGEBOX('Este produto não possue ESTOQUE!','Atenção',mb_ok+MB_ICONWARNING);
              eproduto.text := '';
              eproduto.setfocus;
              exit;
            END;
          END;

          lfornecedor.Caption := qrproduto.fieldbyname('fornecedor').asstring;
          ecst.Text := qrproduto.fieldbyname('cst').asstring;
          ealiquota.value := qrproduto.fieldbyname('aliquota').asfloat;
          lserial.Caption := '---';

          rsubtotal.value := qrproduto.fieldbyname('precovenda').asfloat;
          rdesconto1.value := 0;
          rdesconto2.value := 0;
          rtotal.value := qrproduto.fieldbyname('precovenda').asfloat;

          serial_grade := 0;
          codigo_serial_grade := '';

          RQTDE.Enabled := TRUE;

          //// verificar se produto usa grade

          if qrproduto.FieldByName('usa_grade').asinteger = 1 then
          begin
            IF (cod_serial <> '') AND (TIPO = 'GRADE') THEN
            BEGIN
              qrproduto_grade.close;
              qrproduto_grade.sql.clear;
              qrproduto_grade.sql.Add('select * from c000021 where codigo = '''+cod_serial+'''');
              qrproduto_grade.open;
              if qrproduto_grade.RecordCount > 0 then
              begin
                lserial.Caption := qrproduto_grade.fieldbyname('numeracao').asstring;
                serial_grade := 2;
                codigo_serial_grade := qrproduto_grade.fieldbyname('codigo').asstring;
                RQTDE.SETFOCUS;
              end
              else
              begin
                APPLICATION.MESSAGEBOX('Grade não encontrada!','Atenção',mb_ok+MB_ICONWARNING);
                eproduto.text := '';
                eproduto.setfocus;
                exit;
              end;


            END
            ELSE
            BEGIN
              qrproduto_grade.close;
              qrproduto_grade.sql.clear;
              if estoque_negativo then
                qrproduto_grade.sql.Add('select * from c000021 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+''' order by codigo')
              else
                qrproduto_grade.sql.Add('select * from c000021 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+''' and estoque > 0 order by codigo');
              qrproduto_grade.open;

              if qrproduto_grade.RecordCount = 0 then
              begin
                application.messagebox('Não foi encontrado nenhum registro de grade para este produto!','Erro',mb_ok+mb_iconerror);
                eproduto.text := '';
                eproduto.setfocus;

                restoque.value := 0;
                lserial.caption := '';
                lfornecedor.Caption := '';
                ecst.text := '';
                ealiquota.value := 0;
                rqtde.value := 0;
                runitario.value := 0;
                rsubtotal.value := 0;
                rdesconto1.value := 0;
                rdesconto2.value := 0;
                rtotal.value := 0;
                exit;
              end;

              frmvenda_grade := tfrmvenda_grade.create(self);
              frmvenda_grade.showmodal;


            END;
          end
          else
          begin
            /// verificar se produto utiliza controle de seriais
            if qrproduto.FieldByName('usa_serial').asinteger = 1 then
            begin
              IF (cod_serial <> '') AND (TIPO = 'SERIAL') THEN
              BEGIN
                qrproduto_serial.close;
                qrproduto_serial.sql.clear;
                qrproduto_serial.sql.Add('select * from c000022 where codigo = '''+COD_serial+''' and situacao = 1 ');
                qrproduto_serial.open;
                if qrproduto_serial.Recordcount > 0 then
                begin
                  lserial.Caption := qrproduto_serial.fieldbyname('serial').asstring;
                  serial_grade := 1;
                  codigo_serial_grade := qrproduto_serial.fieldbyname('codigo').asstring;
                  RQTDE.Enabled := FALSE;
                  RUNITARIO.SETFOCUS;
                end
                else
                begin
                              APPLICATION.MESSAGEBOX('Serial não encontrado!','Atenção',mb_ok+MB_ICONWARNING);
                              eproduto.text := '';
                              eproduto.setfocus;
                              exit;
                end;
              end
              else
              begin
                qrproduto_serial.close;
                qrproduto_serial.sql.clear;
                qrproduto_serial.sql.Add('select * from c000022 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+''' and situacao = 1 order by codigo');
                qrproduto_serial.open;

               if qrproduto_serial.recordcount = 0 then
                begin
                              APPLICATION.MESSAGEBOX('Produto utiliza controle de serial mas não tem nenhum serial cadastrado!','Atenção',mb_ok+MB_ICONWARNING);
                              eproduto.text := '';
                              eproduto.setfocus;
                              exit;


                end;

                frmvenda_serial := tfrmvenda_serial.create(self);
                frmvenda_serial.showmodal;

                panel2.Visible := True;

              end;
            end
            else
            begin
              rqtde.setfocus;
            end;
          end;

        end
        else
        begin
          application.messagebox('Produto não encontrado!','Aviso',mb_ok+MB_ICONWARNING);
          eproduto.text := '';
          eproduto.SetFocus;
        end;
    END
    ELSE
    BEGIN
      Eproduto.SetFocus;
    END;


end;

end.
