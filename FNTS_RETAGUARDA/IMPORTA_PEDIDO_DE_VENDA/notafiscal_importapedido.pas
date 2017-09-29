unit notafiscal_importapedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, ExtCtrls, RzPanel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxMemo, cxMaskEdit, cxDropDownEdit,
  AdvShapeButton, StdCtrls, ComCtrls, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  Tfrmnotafiscal_importapedido = class(TForm)
    RzPanel1: TRzPanel;
    bconfirma: TAdvGlowButton;
    bcancela: TAdvGlowButton;
    Label1: TLabel;
    Label2: TLabel;
    batualiza_versao: TAdvShapeButton;
    cxMemo1: TcxMemo;
    ecupom: TcxTextEdit;
    ProgressBar1: TProgressBar;
    query: TZQuery;
    qrnotafiscal_item: TZQuery;
    qrnotafiscal_itemCODNOTA: TStringField;
    qrnotafiscal_itemCODPRODUTO: TStringField;
    qrnotafiscal_itemQTDE: TFloatField;
    qrnotafiscal_itemUNITARIO: TFloatField;
    qrnotafiscal_itemTOTAL: TFloatField;
    qrnotafiscal_itemIPI: TFloatField;
    qrnotafiscal_itemICMS: TFloatField;
    qrnotafiscal_itemCFOP: TStringField;
    qrnotafiscal_itemCODGRADE: TStringField;
    qrnotafiscal_itemSERIAL: TStringField;
    qrnotafiscal_itemVALOR_IPI: TFloatField;
    qrnotafiscal_itemCLASSIFICACAO_FISCAL: TStringField;
    qrnotafiscal_itemCST: TStringField;
    qrnotafiscal_itemVALOR_ICMS: TFloatField;
    qrnotafiscal_itemICMS_REDUZIDO: TFloatField;
    qrnotafiscal_itemBASE_CALCULO: TFloatField;
    qrnotafiscal_itemMARGEM_AGREGADA: TFloatField;
    qrnotafiscal_itemBASE_SUB: TFloatField;
    qrnotafiscal_itemICMS_SUB: TFloatField;
    qrnotafiscal_itemISENTO: TFloatField;
    qrnotafiscal_itemCODLANCAMENTO: TStringField;
    qrnotafiscal_itemDESCONTO: TFloatField;
    qrnotafiscal_itemSUBTOTAL: TFloatField;
    qrnotafiscal_itemPESO_BRUTO: TFloatField;
    qrnotafiscal_itemPESO_LIQUIDO: TFloatField;
    qrnotafiscal_itemCOMPLEMENTO: TBlobField;
    qrnotafiscal_itemITEM: TIntegerField;
    qrnotafiscal_itemCODIGO: TStringField;
    qrnotafiscal_itemGRADE: TStringField;
    qrnotafiscal_itemPIS_ALIQUOTA: TFloatField;
    qrnotafiscal_itemPIS_BASE: TFloatField;
    qrnotafiscal_itemPIS_VALOR: TFloatField;
    qrnotafiscal_itemCOFINS_ALIQUOTA: TFloatField;
    qrnotafiscal_itemCOFINS_BASE: TFloatField;
    qrnotafiscal_itemCOFINS_VALOR: TFloatField;
    qrnotafiscal_itemCODBARRA: TStringField;
    dsnotafiscal_item: TDataSource;
    qrproduto: TZQuery;
    qrprodutoCODIGO: TStringField;
    qrprodutoCODBARRA: TStringField;
    qrprodutoPRODUTO: TStringField;
    qrprodutoUNIDADE: TStringField;
    qrprodutoPESO: TFloatField;
    qrprodutoPESO_LIQUIDO: TFloatField;
    qrprodutoPISCOFINS: TStringField;
    qrprodutoALIQUOTA: TFloatField;
    qrprodutoCST: TStringField;
    pop1: TPopupMenu;
    ok1: TMenuItem;
    cancela1: TMenuItem;
    qrprodutoCLASSIFICACAO_FISCAL: TStringField;
    procedure bcancelaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ecupomExit(Sender: TObject);
    procedure ecupomKeyPress(Sender: TObject; var Key: Char);
    procedure bconfirmaClick(Sender: TObject);
    procedure cancela1Click(Sender: TObject);
    procedure ok1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnotafiscal_importapedido: Tfrmnotafiscal_importapedido;

implementation


uses principal, modulo, notafiscal, notafiscal_menu, rxToolEdit, RzDBEdit;

{$R *.dfm}

procedure Tfrmnotafiscal_importapedido.bcancelaClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmnotafiscal_importapedido.FormShow(Sender: TObject);
begin

  frmmodulo.qrFilial.Open;

  qrproduto.sql.clear;
  qrproduto.SQL.add('select codigo,codbarra,produto,unidade,peso,peso_liquido,piscofins,aliquota,cst, classificacao_fiscal from c000025');
  qrproduto.open;
  ecupom.SetFocus;
end;

procedure Tfrmnotafiscal_importapedido.ecupomExit(Sender: TObject);
begin
  ecupom.Text := frmprincipal.zerarcodigo(ecupom.Text,6);
  bconfirma.SetFocus;

end;

procedure Tfrmnotafiscal_importapedido.ecupomKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure Tfrmnotafiscal_importapedido.bconfirmaClick(Sender: TObject);
var
  vtotal,vsubtotal,vdesconto,vbaseicms,vvaloricms : double;
  vitem : integer;
  vcodvendedor, vnumero_nota, vcfop, vcodcliente, vcodfilial ,vmodelo,vserie : string;
  vemissao , vsaida : TDateTime;
begin

  if ecupom.Text <> '' then
    begin

      vtotal := 0;
      vsubtotal := 0;
      vdesconto := 0;
      vbaseicms := 0;
      vvaloricms := 0;

      ProgressBar1.Position := 0;
      cxMemo1.Text := '';
      cxMemo1.Lines.Add('Aguarde, Verificando a Exitência da Nota Fiscal!');

      query.Close;
      query.SQL.Clear;
      query.SQL.Add('select NUMERONOTA from c000032 where NUMERONOTA = '''+ecupom.Text+'''');
      query.SQL.Add('and nfe_emitida = 1');

      query.Open;
      if query.RecordCount > 0 then
        begin
          Application.messagebox('Já Foi Emitido Uma Nota Fiscal Para Esse Pedido!','Atenção!',mb_ok+MB_ICONEXCLAMATION);
          ecupom.Text := '';
          ecupom.SetFocus;
          cxMemo1.Text := '';
          exit;
        end;


      query.Close;
      query.SQL.Clear;
      query.SQL.Add('select * from c000032 where NUMERONOTA = '''+ecupom.Text+'''');
      //query.SQL.Add('and nfe_emitida = 0');
      query.SQL.Add('order by CODPRODUTO descending');
      query.Open;

      numero_pedido :=  query.fieldbyname('NUMERONOTA').AsString;

   //   importoupedido := 'S';

      if query.RecordCount > 0 then
      begin

          ProgressBar1.Max := query.RecordCount;
          cxMemo1.Text := '';

          vnumero_nota          := frmnotafiscal.ENUMERO.Text;
          vnumero_inclui_cupom  := query.fieldbyname('cupom_numero').AsString;
          vnumero_inclui_nota   := frmprincipal.codifica('000061'); //frmmodulo.qrnotafiscal.fieldbyname('codigo').asstring;
          vcfop                 := frmnotafiscal.ecfop.Text;
          vcodcliente           := frmnotafiscal.ecliente.Text;
          vcodfilial            := frmnotafiscal.efilial.Text;
          vmodelo               := frmnotafiscal.ecodmodelo.Text;
          vserie                := frmnotafiscal.eserie.Text;
          vemissao              := frmnotafiscal.edata_cadastro.Date;
          vsaida                := frmnotafiscal.EDATA_SAIDA.Date;
          vcodvendedor          := query.fieldbyname('codvendedor').AsString;

          frmnotafiscal.qrnotafiscal_item.Open;
          while not query.Eof do begin
            cxMemo1.Lines.Add(query.fieldbyname('codproduto').AsString+ ' ' +frmmodulo.qrnotafiscal.fieldbyname('numero').asstring+' '+formatfloat('#,###,##0.00',query.fieldbyname('total').AsFloat));


            if qrproduto.Locate('codigo',query.fieldbyname('codproduto').AsString,[loCaseInsensitive]) then
              begin
                FrmNotaFiscal.qrnotafiscal_item.close;
                FrmNotaFiscal.qrnotafiscal_item.sql.clear;
                FrmNotaFiscal.qrnotafiscal_item.SQL.add('insert into c000062');
                FrmNotaFiscal.qrnotafiscal_item.SQL.add('(CODNOTA,CODPRODUTO,');
                FrmNotaFiscal.qrnotafiscal_item.sql.add('QTDE,UNITARIO,TOTAL,IPI,ICMS,');
                FrmNotaFiscal.qrnotafiscal_item.sql.add('CFOP,CSOSN,CODGRADE,SERIAL,VALOR_IPI,');
                FrmNotaFiscal.qrnotafiscal_item.sql.add('CLASSIFICACAO_FISCAL,CST,VALOR_ICMS,');
                FrmNotaFiscal.qrnotafiscal_item.sql.add('ICMS_REDUZIDO,BASE_CALCULO,MARGEM_AGREGADA,');
                FrmNotaFiscal.qrnotafiscal_item.sql.add('BASE_SUB,ICMS_SUB,ISENTO,CODLANCAMENTO,');
                FrmNotaFiscal.qrnotafiscal_item.sql.add('DESCONTO,SUBTOTAL,PESO_BRUTO,PESO_LIQUIDO,Item,codigo,grade,complemento,');
                FrmNotaFiscal.qrnotafiscal_item.sql.add('pis_base,pis_valor,pis_aliquota,cofins_base,cofins_valor,cofins_aliquota,codbarra,OUTRAS)');
                FrmNotaFiscal.qrnotafiscal_item.sql.add('VALUES');
                FrmNotaFiscal.qrnotafiscal_item.SQL.add('(:CODNOTA,:CODPRODUTO,');
                FrmNotaFiscal.qrnotafiscal_item.sql.add(':QTDE,:UNITARIO,:TOTAL,:IPI,:ICMS,');
                FrmNotaFiscal.qrnotafiscal_item.sql.add(':CFOP,:CSOSN,:CODGRADE,:SERIAL,:VALOR_IPI,');
                FrmNotaFiscal.qrnotafiscal_item.sql.add(':CLASSIFICACAO_FISCAL,:CST,:VALOR_ICMS,');
                FrmNotaFiscal.qrnotafiscal_item.sql.add(':ICMS_REDUZIDO,:BASE_CALCULO,:MARGEM_AGREGADA,');
                FrmNotaFiscal.qrnotafiscal_item.sql.add(':BASE_SUB,:ICMS_SUB,:ISENTO,:CODLANCAMENTO,');
                FrmNotaFiscal.qrnotafiscal_item.sql.add(':DESCONTO,:SUBTOTAL,:PESO_BRUTO,:PESO_LIQUIDO,:ITEM,:codigo,:grade,:complemento,');
                FrmNotaFiscal.qrnotafiscal_item.sql.add(':pis_base,:pis_valor,:pis_aliquota,:cofins_base,:cofins_valor,:cofins_aliquota,:cbarra,:OUTRAS)');
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CODNOTA'             ).asstring := vnumero_inclui_nota;
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CODPRODUTO'          ).asstring := query.fieldbyname('CODPRODUTO').AsString;
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('QTDE'                ).asfloat  := query.fieldbyname('qtde').AsFloat;
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('UNITARIO'            ).asfloat  := query.fieldbyname('unitario').AsFloat;
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('TOTAL'               ).asfloat  := query.fieldbyname('total').AsFloat;
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('IPI'                 ).asfloat  := query.fieldbyname('ipi').AsFloat;
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('ICMS'                ).asfloat  := qrproduto.fieldbyname('aliquota').AsFloat;
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CFOP'                ).asstring := frmnotafiscal.ecfop.Text;
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CSOSN'               ).asstring := '102';
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CODGRADE'            ).asstring := query.fieldbyname('codgrade').AsString;
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('SERIAL'              ).asstring := query.fieldbyname('serial').AsString;
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('VALOR_IPI'           ).asfloat  := query.fieldbyname('valor_ipi').AsFloat;
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CLASSIFICACAO_FISCAL').asstring := qrproduto.fieldbyname('classificacao_fiscal').asstring;
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CST'                 ).asstring := qrproduto.fieldbyname('cst').AsString;
//                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('VALOR_ICMS'          ).asfloat  := query.fieldbyname('total').AsFloat*query.fieldbyname('aliquota').AsFloat/100;
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('VALOR_ICMS'          ).asfloat  := 0;
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('ICMS_REDUZIDO'       ).asfloat  := query.fieldbyname('icms_reduzido').AsFloat;
//                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('BASE_CALCULO'        ).asfloat  := query.fieldbyname('total').AsFloat;
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('BASE_CALCULO'        ).asfloat  := 0;
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('MARGEM_AGREGADA'     ).asfloat  := 0;
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('BASE_SUB'            ).asfloat  := 0;
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('ICMS_SUB'            ).asfloat  := 0;
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('ISENTO'              ).asfloat  := 0;
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('OUTRAS'              ).asfloat  := 0;
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('CODLANCAMENTO'       ).asstring := frmnotafiscal.qrnotafiscal_item.FieldByName('CODIGO').ASSTRING;
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('DESCONTO'            ).asfloat  := 0;
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('SUBTOTAL'            ).asfloat  := query.fieldbyname('total').AsFloat;
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('PESO_BRUTO'          ).asfloat  := qrproduto.fieldbyname('PESO').AsFloat;
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('PESO_LIQUIDO'        ).asfloat  := qrproduto.fieldbyname('PESO_LIQUIDO').AsFloat;
                frmNotaFiscal.qrnotafiscal_item.Params.Parambyname('Item'                ).asinteger:= StrToInt(query.fieldbyname('CODPRODUTO').AsString);
                frmNotaFiscal.qrnotafiscal_item.Params.Parambyname('codigo'              ).asstring := frmprincipal.codifica('000062');
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('GRADE'               ).asstring := query.fieldbyname('codgrade').AsString;
//                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('COMPLEMENTO'         ).AsBlob := ED_COMPLEMENTO.Lines.Text;

                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('pis_base'            ).asfloat  := 0;
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('pis_valor'           ).asfloat  := 0;
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('pis_aliquota'        ).asfloat  := 0;
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('cofins_base'         ).asfloat  := 0;
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('cofins_valor'        ).asfloat  := 0;
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('cofins_aliquota'     ).asfloat  := 0;
//                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('cbarra'              ).AsString  := query.fieldbyname('CODBARRA').AsString;
                FrmNotaFiscal.qrnotafiscal_item.Params.Parambyname('cbarra'              ).AsString  := '9788578571090';

                FrmNotaFiscal.qrnotafiscal_item.ExecSQL;

           {
                frmnotafiscal.qrnotafiscal_item.Insert;
                frmnotafiscal.qrnotafiscal_item.FieldByName('CODIGO').ASSTRING := frmprincipal.codifica('000032');
                frmnotafiscal.qrnotafiscal_item.FieldByName('CODPRODUTO').ASSTRING := query.fieldbyname('codproduto').AsString;
                //qrnotafiscal_item.FieldByName('PRODUTO').ASSTRING := qrproduto.fieldbyname('PRODUTO').AsString;
               // qrnotafiscal_item.FieldByName('UNIDADE').ASSTRING := qrproduto.fieldbyname('UNIDADE').AsString;
                //frmnotafiscal.qrnotafiscal_item.FieldByName('CODBARRA').Value := ''; //query.fieldbyname('CODBARRA').AsString;
                frmnotafiscal.qrnotafiscal_item.FieldByName('codnota').asstring := vnumero_inclui_nota;
                frmnotafiscal.qrnotafiscal_item.FieldByName('CODLANCAMENTO').ASSTRING := frmnotafiscal.qrnotafiscal_item.FieldByName('CODIGO').ASSTRING;
                frmnotafiscal.qrnotafiscal_item.FieldByName('PESO_BRUTO').AsFloat := qrproduto.fieldbyname('PESO').AsFloat;
                frmnotafiscal.qrnotafiscal_item.FieldByName('PESO_LIQUIDO').AsFloat := qrproduto.fieldbyname('PESO_LIQUIDO').AsFloat;
                frmnotafiscal.qrnotafiscal_item.FieldByName('qtde').AsFloat := query.fieldbyname('qtde').AsFloat;
                frmnotafiscal.qrnotafiscal_item.FieldByName('UNITARIO').AsFloat := query.fieldbyname('unitario').AsFloat;
                frmnotafiscal.qrnotafiscal_item.FieldByName('TOTAL').AsFloat := query.fieldbyname('total').AsFloat;
                frmnotafiscal.qrnotafiscal_item.FieldByName('IPI').AsFloat := query.fieldbyname('ipi').AsFloat;
                frmnotafiscal.qrnotafiscal_item.FieldByName('ICMS').AsFloat := qrproduto.fieldbyname('aliquota').AsFloat;
                frmnotafiscal.qrnotafiscal_item.FieldByName('CFOP').AsString := frmnotafiscal.ecfop.Text;
                frmnotafiscal.qrnotafiscal_item.FieldByName('CODGRADE').AsString := query.fieldbyname('codgrade').AsString;
                frmnotafiscal.qrnotafiscal_item.FieldByName('SERIAL').AsString := query.fieldbyname('serial').AsString;
                frmnotafiscal.qrnotafiscal_item.FieldByName('VALOR_IPI').AsFloat := query.fieldbyname('valor_ipi').AsFloat;
                frmnotafiscal.qrnotafiscal_item.FieldByName('CLASSIFICACAO_FISCAL').AsString := '';
                frmnotafiscal.qrnotafiscal_item.FieldByName('CST').AsString := qrproduto.fieldbyname('cst').AsString;

                if query.fieldbyname('aliquota').AsFloat > 0 then
                  begin
                    frmnotafiscal.qrnotafiscal_item.FieldByName('VALOR_ICMS').AsFloat := query.fieldbyname('total').AsFloat*query.fieldbyname('aliquota').AsFloat/100;
                    frmnotafiscal.qrnotafiscal_item.FieldByName('BASE_CALCULO').AsFloat := query.fieldbyname('total').AsFloat;
                  end
                else
                  begin
                    frmnotafiscal.qrnotafiscal_item.FieldByName('VALOR_ICMS').AsFloat := 0;
                    frmnotafiscal.qrnotafiscal_item.FieldByName('BASE_CALCULO').AsFloat := 0;
                  end;

                frmnotafiscal.qrnotafiscal_item.FieldByName('ICMS_REDUZIDO').AsFloat := query.fieldbyname('icms_reduzido').AsFloat;
                frmnotafiscal.qrnotafiscal_item.FieldByName('MARGEM_AGREGADA').AsFloat := 0;
                frmnotafiscal.qrnotafiscal_item.FieldByName('BASE_SUB').AsFloat := 0;
                frmnotafiscal.qrnotafiscal_item.FieldByName('ICMS_SUB').AsFloat := 0;
                frmnotafiscal.qrnotafiscal_item.FieldByName('ISENTO').AsFloat := 0;
                frmnotafiscal.qrnotafiscal_item.FieldByName('DESCONTO').AsFloat := 0; //query.fieldbyname('desconto').AsFloat;
                frmnotafiscal.qrnotafiscal_item.FieldByName('SUBTOTAL').AsFloat := query.fieldbyname('total').AsFloat;
                frmnotafiscal.qrnotafiscal_item.FieldByName('ITEM').AsString := query.fieldbyname('cupom_item').AsString;
                frmnotafiscal.qrnotafiscal_item.FieldByName('GRADE').AsString := '';

                if qrproduto.FieldByName('piscofins').AsString = 'S' then
                  begin
                    frmnotafiscal.qrnotafiscal_item.FieldByName('PIS_ALIQUOTA').AsFloat := frmmodulo.qrFilialPIS.AsFloat;
                    frmnotafiscal.qrnotafiscal_item.FieldByName('PIS_BASE').AsFloat := query.fieldbyname('total').AsFloat;
                    frmnotafiscal.qrnotafiscal_item.FieldByName('PIS_VALOR').AsFloat := (query.fieldbyname('total').AsFloat*frmmodulo.qrFilialPIS.AsFloat/100);
                    frmnotafiscal.qrnotafiscal_item.FieldByName('COFINS_ALIQUOTA').AsFloat := frmmodulo.qrFilialCOFINS.AsFloat;
                    frmnotafiscal.qrnotafiscal_item.FieldByName('COFINS_BASE').AsFloat := query.fieldbyname('total').AsFloat;
                    frmnotafiscal.qrnotafiscal_item.FieldByName('COFINS_VALOR').AsFloat := (query.fieldbyname('total').AsFloat*frmmodulo.qrFilialCOFINS.AsFloat/100);
                  end
                else
                  begin
                    frmnotafiscal.qrnotafiscal_item.FieldByName('PIS_ALIQUOTA').AsFloat := 0;
                    frmnotafiscal.qrnotafiscal_item.FieldByName('PIS_BASE').AsFloat := 0;
                    frmnotafiscal.qrnotafiscal_item.FieldByName('PIS_VALOR').AsFloat := 0;
                    frmnotafiscal.qrnotafiscal_item.FieldByName('COFINS_ALIQUOTA').AsFloat := 0;
                    frmnotafiscal.qrnotafiscal_item.FieldByName('COFINS_BASE').AsFloat := 0;
                    frmnotafiscal.qrnotafiscal_item.FieldByName('COFINS_VALOR').AsFloat := 0;
                  end;

                //frmnotafiscal.qrnotafiscal_item.FieldByName('CREDITO_ICMS').AsFloat := query.fieldbyname('credito_icms').AsFloat;
//                qrnotafiscal_item.Post;


           }
                Application.ProcessMessages;
              end;

            vtotal    := vtotal+(query.fieldbyname('total').AsFloat);

            vsubtotal := vsubtotal+(query.fieldbyname('TOTAL').AsFloat-query.fieldbyname('desconto').AsFloat);
            vdesconto := vdesconto+(query.fieldbyname('desconto').AsFloat);

            if query.fieldbyname('aliquota').AsFloat > 0 then
              begin
                vbaseicms := vbaseicms+(query.fieldbyname('total').AsFloat-query.fieldbyname('desconto').AsFloat);
                vvaloricms := vvaloricms+(vbaseicms*query.fieldbyname('aliquota').AsFloat/100);
              end;

            query.Next;
            vitem := vitem + 1;

            ProgressBar1.Position := ProgressBar1.Position + 1;
            Application.ProcessMessages;
          end;

          frmmodulo.conexao.commit;

          frmnotafiscal_menu.qrnota.Close;
          frmnotafiscal_menu.qrnota.SQL.Clear;
          frmnotafiscal_menu.qrnota.SQL.Add('select * from c000061');
          frmnotafiscal_menu.qrnota.Open;

          frmnotafiscal_menu.qrnota.Insert;
          frmnotafiscal_menu.qrnota.FieldByName('codigo').asstring := vnumero_inclui_nota;
          frmnotafiscal_menu.qrnota.FieldByName('codfilial').asstring := vcodfilial;
          frmnotafiscal_menu.qrnota.FieldByName('numero').asstring := vnumero_nota;
          frmnotafiscal_menu.qrnota.FieldByName('cfop').asstring := vcfop;
          frmnotafiscal_menu.qrnota.FieldByName('data').AsDateTime := vemissao;
          frmnotafiscal_menu.qrnota.FieldByName('data_saida').AsDateTime := vsaida;
          frmnotafiscal_menu.qrnota.FieldByName('codcliente').AsString := vcodcliente;
          frmnotafiscal_menu.qrnota.FieldByName('hora').AsString := TimeToStr(time);
          frmnotafiscal_menu.qrnota.FieldByName('modelo_nf').AsString := vmodelo;
          frmnotafiscal_menu.qrnota.FieldByName('serie_nf').AsString := vserie;
          frmnotafiscal_menu.qrnota.FieldByName('tipo').AsString := 'S';
          frmnotafiscal_menu.qrnota.FieldByName('codvendedor').asstring := vcodvendedor;

          frmnotafiscal_menu.qrnota.fieldbyname('situacao').asinteger := 1;
          frmnotafiscal_menu.qrnota.fieldbyname('baixa_estoque').asstring := 'S';
          frmnotafiscal_menu.qrnota.fieldbyname('sit').asstring := 'N';
          frmnotafiscal_menu.qrnota.fieldbyname('movimento').asstring := 'S';

          frmnotafiscal_menu.qrnota.FieldByName('INF1').AsString:= 'DOCUMENTO EMITIDO POR ME OU EPP';
          frmnotafiscal_menu.qrnota.FieldByName('INF2').AsString:= 'OPTANTE PELO SIMPLES NACIONAL';
          frmnotafiscal_menu.qrnota.FieldByName('INF3').AsString:= 'NAO GERA DIREITO A CREDITO FISCAL DE ICMS E DE ISS';
          frmnotafiscal_menu.qrnota.FieldByName('INF4').AsString:= '';
          frmnotafiscal_menu.qrnota.FieldByName('INF5').AsString := 'NOTA 3.0';

          frmnotafiscal_menu.qrnota.FieldByName('BAIXA_ESTOQUE').AsString := 'N';
          frmnotafiscal_menu.qrnota.FieldByName('itens').asinteger := vitem;
          frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').asfloat := vbaseicms;
          frmnotafiscal_menu.qrnota.fieldbyname('VALOR_ICMS').asfloat := vvaloricms;
          frmnotafiscal_menu.qrnota.FieldByName('VALOR_TOTAL_IPI').asfloat := query.fieldbyname('valor_ipi').asfloat;
          frmnotafiscal_menu.qrnota.FieldByName('VALOR_PRODUTOS').asfloat := vtotal;
          frmnotafiscal_menu.qrnota.FieldByName('DESCONTO').asfloat := vdesconto;
          frmnotafiscal_menu.qrnota.FieldByName('TOTAL_NOTA').asfloat := vtotal-vdesconto;
          //frmnotafiscal_menu.qrnota.Post;
          ProgressBar1.Position := 0;
          close;
        end
      else
        begin
          Application.messagebox('Pedido Não Encontrado!','Atenção!',mb_ok+MB_ICONEXCLAMATION);
          ecupom.Text := '';
          ecupom.SetFocus;
      end;

      end;
     frmmodulo.conexao.commit;
end;

procedure Tfrmnotafiscal_importapedido.cancela1Click(Sender: TObject);
begin
  bcancelaClick(frmnotafiscal_importapedido);

end;

procedure Tfrmnotafiscal_importapedido.ok1Click(Sender: TObject);
begin
  bconfirmaClick(frmnotafiscal_importapedido);

end;

end.
