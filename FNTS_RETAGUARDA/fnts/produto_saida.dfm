object frmproduto_saida: Tfrmproduto_saida
  Left = 107
  Top = 145
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Nota Fiscal de Devolu'#231#227'o/Outras Sa'#237'das'
  ClientHeight = 460
  ClientWidth = 776
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop1
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panel99: TPanel
    Left = 0
    Top = 0
    Width = 776
    Height = 460
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 766
    ExplicitHeight = 450
    object panel22: TPanel
      Left = 1
      Top = 73
      Width = 764
      Height = 252
      BevelOuter = bvNone
      TabOrder = 0
    end
  end
  object Pop1: TPopupMenu
    Left = 760
    Top = 240
    object Incluir1: TMenuItem
      Caption = 'Incluir'
      ShortCut = 113
      OnClick = bincluirClick
    end
    object Alterar1: TMenuItem
      Caption = 'Alterar'
      ShortCut = 114
      OnClick = balterarClick
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 46
      OnClick = bexcluirClick
    end
    object Localizar1: TMenuItem
      Caption = 'Localizar'
      ShortCut = 117
      OnClick = blocalizarClick
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      ShortCut = 118
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bfecharClick
    end
  end
  object Pop2: TPopupMenu
    Left = 792
    Top = 240
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 113
      OnClick = bgravarClick
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Incluiritem1: TMenuItem
      Caption = 'Incluir item'
      ShortCut = 116
      OnClick = bincluir_itemClick
    end
    object Excluiritem1: TMenuItem
      Caption = 'Excluir item'
      ShortCut = 46
      OnClick = bexcluir_itemClick
    end
    object AlterarItem1: TMenuItem
      Caption = 'Alterar Item'
      ShortCut = 118
      OnClick = balterar_itemClick
    end
    object Finalizar1: TMenuItem
      Caption = 'Finalizar'
      ShortCut = 122
      OnClick = BitBtn6Click
    end
  end
  object dssaida_produto2: TDataSource
    DataSet = frmmodulo.qrsaida_produto
    Left = 408
    Top = 160
  end
  object qrsaida_produto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000031')
    Params = <>
    Left = 344
    Top = 160
    object qrsaida_produtofornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codfornecedor'
      Size = 50
      Lookup = True
    end
    object qrsaida_produtoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrsaida_produtoNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object qrsaida_produtoCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object qrsaida_produtoDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrsaida_produtoCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrsaida_produtoVALOR_PRODUTOS: TFloatField
      FieldName = 'VALOR_PRODUTOS'
    end
    object qrsaida_produtoTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
    end
    object qrsaida_produtoBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object qrsaida_produtoVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrsaida_produtoBASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
    end
    object qrsaida_produtoICMS_SUB: TFloatField
      FieldName = 'ICMS_SUB'
    end
    object qrsaida_produtoFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object qrsaida_produtoSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object qrsaida_produtoOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
    end
    object qrsaida_produtoVALOR_TOTAL_IPI: TFloatField
      FieldName = 'VALOR_TOTAL_IPI'
    end
    object qrsaida_produtoITENS: TIntegerField
      FieldName = 'ITENS'
    end
    object qrsaida_produtoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrsaida_produtoMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object qrsaida_produtoSERIE: TWideStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object qrsaida_produtoALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrsaida_produtoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrsaida_produtoMODELO_NF: TWideStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object qrsaida_produtoSERIE_NF: TWideStringField
      FieldName = 'SERIE_NF'
      Size = 3
    end
    object qrsaida_produtoVALOR_ISENTO_ICMS: TFloatField
      FieldName = 'VALOR_ISENTO_ICMS'
    end
    object qrsaida_produtoALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
    end
    object qrsaida_produtoSITUACAO_A: TWideStringField
      FieldName = 'SITUACAO_A'
      Size = 1
    end
  end
  object dssaida_produto: TDataSource
    DataSet = qrsaida_produto
    Left = 448
    Top = 160
  end
  object POP3: TPopupMenu
    Left = 832
    Top = 240
    object InciodoNome1: TMenuItem
      Caption = 'In'#237'cio do Nome'
      ShortCut = 112
    end
    object PartedoNome1: TMenuItem
      Caption = 'Parte do Nome'
      ShortCut = 113
    end
    object FecharLocalizao1: TMenuItem
      Caption = 'Fechar Localiza'#231#227'o'
      ShortCut = 27
      OnClick = FecharLocalizao1Click
    end
  end
  object qrsaida_item: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 312
    Top = 160
    object qrsaida_itemproduto: TStringField
      DisplayLabel = 'PRODUTO'
      DisplayWidth = 43
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'produto'
      KeyFields = 'CODPRODUTO'
      Size = 50
      Lookup = True
    end
    object qrsaida_itemunidade: TStringField
      FieldKind = fkLookup
      FieldName = 'unidade'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'UNIDADE'
      KeyFields = 'codproduto'
      Visible = False
      Size = 5
      Lookup = True
    end
    object qrsaida_itemCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrsaida_itemCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 15
    end
    object qrsaida_itemCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrsaida_itemUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object qrsaida_itemTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrsaida_itemICMS: TFloatField
      FieldName = 'ICMS'
    end
    object qrsaida_itemIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrsaida_itemCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 6
    end
    object qrsaida_itemDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrsaida_itemNUMERONOTA: TWideStringField
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object qrsaida_itemCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrsaida_itemDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrsaida_itemACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qrsaida_itemMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object qrsaida_itemCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrsaida_itemCODGRADE: TWideStringField
      FieldName = 'CODGRADE'
      Size = 6
    end
    object qrsaida_itemSERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrsaida_itemQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrsaida_itemVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrsaida_itemICMS_REDUZIDO: TFloatField
      FieldName = 'ICMS_REDUZIDO'
    end
    object qrsaida_itemBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object qrsaida_itemVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object qrsaida_itemSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrsaida_itemECF_SERIE: TWideStringField
      FieldName = 'ECF_SERIE'
    end
    object qrsaida_itemECF_CAIXA: TWideStringField
      FieldName = 'ECF_CAIXA'
      Size = 10
    end
    object qrsaida_itemCODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Size = 5
    end
    object qrsaida_itemCUPOM_NUMERO: TWideStringField
      FieldName = 'CUPOM_NUMERO'
      Size = 10
    end
    object qrsaida_itemCUPOM_MODELO: TWideStringField
      FieldName = 'CUPOM_MODELO'
      Size = 5
    end
    object qrsaida_itemCUPOM_ITEM: TWideStringField
      FieldName = 'CUPOM_ITEM'
      Size = 5
    end
    object qrsaida_itemALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrsaida_itemCST: TWideStringField
      FieldName = 'CST'
      Size = 3
    end
    object qrsaida_itemLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
      Size = 10
    end
    object qrsaida_itemMOVIMENTO_ESTOQUE: TFloatField
      FieldName = 'MOVIMENTO_ESTOQUE'
    end
    object qrsaida_itemLANCADO: TIntegerField
      FieldName = 'LANCADO'
    end
    object qrsaida_itemVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
    end
    object qrsaida_itemCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 25
    end
    object qrsaida_itemMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object qrsaida_itemCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
    end
    object qrsaida_itemPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrsaida_itemCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrsaida_itemLOJA: TWideStringField
      FieldName = 'LOJA'
      Size = 6
    end
    object qrsaida_itemCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object qrsaida_itemTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrsaida_itemCODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Size = 6
    end
    object qrsaida_itemORIGEM: TWideStringField
      FieldName = 'ORIGEM'
      Size = 40
    end
    object qrsaida_itemDESTINO: TWideStringField
      FieldName = 'DESTINO'
      Size = 40
    end
  end
  object dssaida_item: TDataSource
    DataSet = qrsaida_item
    Left = 376
    Top = 160
  end
  object qrnf: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000031')
    Params = <>
    Left = 248
    Top = 160
    object qrnfCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrnfNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object qrnfCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object qrnfDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrnfCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrnfVALOR_PRODUTOS: TFloatField
      FieldName = 'VALOR_PRODUTOS'
    end
    object qrnfTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
    end
    object qrnfBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object qrnfVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrnfBASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
    end
    object qrnfICMS_SUB: TFloatField
      FieldName = 'ICMS_SUB'
    end
    object qrnfFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object qrnfSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object qrnfOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
    end
    object qrnfVALOR_TOTAL_IPI: TFloatField
      FieldName = 'VALOR_TOTAL_IPI'
    end
    object qrnfITENS: TIntegerField
      FieldName = 'ITENS'
    end
    object qrnfDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrnfMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object qrnfSERIE: TWideStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object qrnfALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrnfSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrnfMODELO_NF: TWideStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object qrnfSERIE_NF: TWideStringField
      FieldName = 'SERIE_NF'
      Size = 3
    end
    object qrnfVALOR_ISENTO_ICMS: TFloatField
      FieldName = 'VALOR_ISENTO_ICMS'
    end
    object qrnfALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
    end
    object qrnfSITUACAO_A: TWideStringField
      FieldName = 'SITUACAO_A'
      Size = 1
    end
  end
  object qrfornecedor: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000009')
    Params = <>
    Left = 280
    Top = 160
  end
  object qrgrade_saida: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000033')
    Params = <>
    Left = 184
    Top = 160
  end
  object qrserial_produto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000022')
    Params = <>
    Left = 216
    Top = 160
  end
end
