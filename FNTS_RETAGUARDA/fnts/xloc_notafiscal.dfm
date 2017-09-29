object frmxloc_notafiscal: Tfrmxloc_notafiscal
  Left = 31
  Top = 318
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'NOTA FISCAL DE SA'#205'DA | Localizar'
  ClientHeight = 307
  ClientWidth = 769
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel3: TBevel
    Left = 0
    Top = 44
    Width = 769
    Height = 3
    Align = alTop
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 0
    Width = 769
    Height = 44
    Color = clWhite
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 3
      Width = 114
      Height = 12
      Caption = 'F3 | LOCALIZAR POR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 136
      Top = 3
      Width = 94
      Height = 12
      Caption = 'F4 | REFER'#202'NCIA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 248
      Top = 4
      Width = 2
      Height = 37
    end
    object Label4: TLabel
      Left = 6
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 136
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F4'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 264
      Top = 3
      Width = 253
      Height = 12
      Caption = 'F5 | INFORME OS PAR'#194'METROS DA PESQUISA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 264
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F5'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = 704
      Top = 4
      Width = 2
      Height = 37
    end
    object Label7: TLabel
      Left = 726
      Top = 11
      Width = 18
      Height = 12
      Caption = 'ESC'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lvoltar: TLabel
      Left = 714
      Top = 24
      Width = 44
      Height = 12
      Caption = 'FECHAR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object combo_localizar: TComboBox
      Left = 5
      Top = 17
      Width = 118
      Height = 20
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = 'N'#218'MERO'
      Items.Strings = (
        'N'#218'MERO'
        'CLIENTE'
        'DATA')
    end
    object combo_referencia: TComboBox
      Left = 136
      Top = 17
      Width = 97
      Height = 20
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ItemIndex = 1
      ParentFont = False
      TabOrder = 2
      Text = 'PARTE'
      Items.Strings = (
        'IN'#205'CIO'
        'PARTE')
    end
    object loc: TEdit
      Left = 264
      Top = 17
      Width = 369
      Height = 20
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = locChange
      OnEnter = locEnter
      OnExit = locExit
      OnKeyDown = locKeyDown
      OnKeyPress = locKeyPress
    end
  end
  object GRID: TwwDBGrid
    Left = 0
    Top = 47
    Width = 769
    Height = 260
    Selected.Strings = (
      'NUMERO'#9'6'#9'N'#218'MERO'
      'DATA'#9'9'#9'DATA'
      'CFOP'#9'5'#9'CFOP'
      'CLIENTE'#9'68'#9'CLIENTE'
      'TOTAL_NOTA'#9'14'#9'TOTAL-R$')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -9
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = GRIDDblClick
    OnEnter = GRIDEnter
    OnExit = GRIDExit
    OnKeyPress = GRIDKeyPress
    PaintOptions.AlternatingRowColor = 16250871
    PaintOptions.ActiveRecordColor = clBlack
    ExplicitHeight = 264
  end
  object PPROCURA: TFlatPanel
    Left = 264
    Top = 37
    Width = 369
    Height = 257
    Color = clWindow
    Visible = False
    ColorHighLight = clWindow
    ColorShadow = clWindow
    TabOrder = 2
    object wwDBGrid1: TwwDBGrid
      Left = 0
      Top = 0
      Width = 369
      Height = 255
      Selected.Strings = (
        'CODIGO'#9'7'#9'CODIGO'
        'NOME'#9'42'#9'NOME'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clWindow
      FixedCols = 0
      ShowHorzScrollBar = True
      BorderStyle = bsNone
      DataSource = DS2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      Options = [dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgHideBottomDataLine]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnEnter = wwDBGrid1Enter
      OnExit = wwDBGrid1Exit
      OnKeyPress = wwDBGrid1KeyPress
      FooterColor = clWindow
      FooterCellColor = clWindow
      PaintOptions.ActiveRecordColor = clRed
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 552
    Top = 256
    object Localizarpor1: TMenuItem
      Caption = 'Localizar por...'
      ShortCut = 114
      OnClick = Localizarpor1Click
    end
    object Referncia1: TMenuItem
      Caption = 'Refer'#234'ncia da Pesquisa'
      ShortCut = 115
      OnClick = Referncia1Click
    end
    object ParmetrosdaPesquisa1: TMenuItem
      Caption = 'Par'#226'metros da Pesquisa'
      ShortCut = 116
      OnClick = ParmetrosdaPesquisa1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar/Voltar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
  end
  object ds: TDataSource
    DataSet = query
    Left = 464
    Top = 200
  end
  object query: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000061')
    Params = <>
    Left = 464
    Top = 232
    object queryCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object queryNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object queryCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object queryDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object queryCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object queryVALOR_PRODUTOS: TFloatField
      FieldName = 'VALOR_PRODUTOS'
    end
    object queryTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
    end
    object queryBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object queryVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object queryBASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
    end
    object queryICMS_SUB: TFloatField
      FieldName = 'ICMS_SUB'
    end
    object queryFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object querySEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object queryOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
    end
    object queryVALOR_TOTAL_IPI: TFloatField
      FieldName = 'VALOR_TOTAL_IPI'
    end
    object queryITENS: TIntegerField
      FieldName = 'ITENS'
    end
    object queryDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object queryCODTRANSPORTADOR: TWideStringField
      FieldName = 'CODTRANSPORTADOR'
      Size = 6
    end
    object queryFRETE_CONTA: TIntegerField
      FieldName = 'FRETE_CONTA'
    end
    object queryPLACA: TWideStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object queryPLACA_UF: TWideStringField
      FieldName = 'PLACA_UF'
      Size = 2
    end
    object queryVOL_QTDE: TFloatField
      FieldName = 'VOL_QTDE'
    end
    object queryVOL_ESPECIE: TWideStringField
      FieldName = 'VOL_ESPECIE'
    end
    object queryVOL_MARCA: TWideStringField
      FieldName = 'VOL_MARCA'
    end
    object queryVOL_NUMERO: TWideStringField
      FieldName = 'VOL_NUMERO'
    end
    object queryPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object queryPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
    object querySITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object queryMOTIVO: TWideStringField
      FieldName = 'MOTIVO'
      Size = 40
    end
    object queryFATURAMENTO_DATA1: TDateTimeField
      FieldName = 'FATURAMENTO_DATA1'
    end
    object queryFATURAMENTO_DATA2: TDateTimeField
      FieldName = 'FATURAMENTO_DATA2'
    end
    object queryFATURAMENTO_DATA3: TDateTimeField
      FieldName = 'FATURAMENTO_DATA3'
    end
    object queryFATURAMENTO_DATA4: TDateTimeField
      FieldName = 'FATURAMENTO_DATA4'
    end
    object queryFATURAMENTO_NUMERO1: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO1'
      Size = 15
    end
    object queryFATURAMENTO_NUMERO2: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO2'
      Size = 15
    end
    object queryFATURAMENTO_NUMERO3: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO3'
      Size = 15
    end
    object queryFATURAMENTO_NUMERO4: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO4'
      Size = 15
    end
    object queryFATURAMENTO_VALOR1: TFloatField
      FieldName = 'FATURAMENTO_VALOR1'
    end
    object queryFATURAMENTO_VALOR2: TFloatField
      FieldName = 'FATURAMENTO_VALOR2'
    end
    object queryFATURAMENTO_VALOR3: TFloatField
      FieldName = 'FATURAMENTO_VALOR3'
    end
    object queryFATURAMENTO_VALOR4: TFloatField
      FieldName = 'FATURAMENTO_VALOR4'
    end
    object queryCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
      Size = 6
    end
    object queryOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object queryOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object queryOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object queryINF1: TWideStringField
      FieldName = 'INF1'
      Size = 80
    end
    object queryINF2: TWideStringField
      FieldName = 'INF2'
      Size = 80
    end
    object queryINF3: TWideStringField
      FieldName = 'INF3'
      Size = 80
    end
    object queryINF4: TWideStringField
      FieldName = 'INF4'
      Size = 80
    end
    object queryINF5: TWideStringField
      FieldName = 'INF5'
      Size = 80
    end
    object queryDATA_SAIDA: TDateTimeField
      FieldName = 'DATA_SAIDA'
    end
    object queryHORA: TWideStringField
      FieldName = 'HORA'
      Size = 5
    end
    object querySITUACAO_A: TWideStringField
      FieldName = 'SITUACAO_A'
      Size = 1
    end
    object queryMODELO_NF: TWideStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object querySERIE_NF: TWideStringField
      FieldName = 'SERIE_NF'
      Size = 3
    end
    object queryVALOR_ISENTO_ICMS: TFloatField
      FieldName = 'VALOR_ISENTO_ICMS'
    end
    object queryALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
    end
    object querySIT: TWideStringField
      FieldName = 'SIT'
      Size = 1
    end
    object queryCODLANCAMENTO: TWideStringField
      FieldName = 'CODLANCAMENTO'
      Size = 10
    end
    object queryMOVIMENTO: TWideStringField
      FieldName = 'MOVIMENTO'
      Size = 1
    end
    object queryBAIXA_ESTOQUE: TWideStringField
      FieldName = 'BAIXA_ESTOQUE'
      Size = 1
    end
    object queryTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object queryOS_COD1: TWideStringField
      FieldName = 'OS_COD1'
      Size = 10
    end
    object queryOS_COD2: TWideStringField
      FieldName = 'OS_COD2'
      Size = 10
    end
    object queryOS_COD3: TWideStringField
      FieldName = 'OS_COD3'
      Size = 10
    end
    object queryOS_COD4: TWideStringField
      FieldName = 'OS_COD4'
      Size = 10
    end
    object queryOS_COD5: TWideStringField
      FieldName = 'OS_COD5'
      Size = 10
    end
    object queryOS_COD6: TWideStringField
      FieldName = 'OS_COD6'
      Size = 10
    end
    object queryOS_SERV1: TWideStringField
      FieldName = 'OS_SERV1'
      Size = 60
    end
    object queryOS_SERV2: TWideStringField
      FieldName = 'OS_SERV2'
      Size = 60
    end
    object queryOS_SERV3: TWideStringField
      FieldName = 'OS_SERV3'
      Size = 60
    end
    object queryOS_SERV4: TWideStringField
      FieldName = 'OS_SERV4'
      Size = 60
    end
    object queryOS_SERV5: TWideStringField
      FieldName = 'OS_SERV5'
      Size = 60
    end
    object queryOS_SERV6: TWideStringField
      FieldName = 'OS_SERV6'
      Size = 60
    end
    object queryOS_COMP1: TWideStringField
      FieldName = 'OS_COMP1'
      Size = 60
    end
    object queryOS_COMP2: TWideStringField
      FieldName = 'OS_COMP2'
      Size = 60
    end
    object queryOS_COMP3: TWideStringField
      FieldName = 'OS_COMP3'
      Size = 60
    end
    object queryOS_COMP4: TWideStringField
      FieldName = 'OS_COMP4'
      Size = 60
    end
    object queryOS_COMP5: TWideStringField
      FieldName = 'OS_COMP5'
      Size = 60
    end
    object queryOS_COMP6: TWideStringField
      FieldName = 'OS_COMP6'
      Size = 60
    end
    object queryOS_QTDE1: TFloatField
      FieldName = 'OS_QTDE1'
    end
    object queryOS_QTDE2: TFloatField
      FieldName = 'OS_QTDE2'
    end
    object queryOS_QTDE3: TFloatField
      FieldName = 'OS_QTDE3'
    end
    object queryOS_QTDE4: TFloatField
      FieldName = 'OS_QTDE4'
    end
    object queryOS_QTDE5: TFloatField
      FieldName = 'OS_QTDE5'
    end
    object queryOS_QTDE6: TFloatField
      FieldName = 'OS_QTDE6'
    end
    object queryOS_UNIT1: TFloatField
      FieldName = 'OS_UNIT1'
    end
    object queryOS_UNIT2: TFloatField
      FieldName = 'OS_UNIT2'
    end
    object queryOS_UNIT3: TFloatField
      FieldName = 'OS_UNIT3'
    end
    object queryOS_UNIT4: TFloatField
      FieldName = 'OS_UNIT4'
    end
    object queryOS_UNIT5: TFloatField
      FieldName = 'OS_UNIT5'
    end
    object queryOS_UNIT6: TFloatField
      FieldName = 'OS_UNIT6'
    end
    object queryOS_TOTAL1: TFloatField
      FieldName = 'OS_TOTAL1'
    end
    object queryOS_TOTAL2: TFloatField
      FieldName = 'OS_TOTAL2'
    end
    object queryOS_TOTAL3: TFloatField
      FieldName = 'OS_TOTAL3'
    end
    object queryOS_TOTAL4: TFloatField
      FieldName = 'OS_TOTAL4'
    end
    object queryOS_TOTAL5: TFloatField
      FieldName = 'OS_TOTAL5'
    end
    object queryOS_TOTAL6: TFloatField
      FieldName = 'OS_TOTAL6'
    end
    object queryOS_ISS: TFloatField
      FieldName = 'OS_ISS'
    end
    object queryOS_TOTAL_GERAL: TFloatField
      FieldName = 'OS_TOTAL_GERAL'
    end
    object queryOS_TOTAL_ISS: TFloatField
      FieldName = 'OS_TOTAL_ISS'
    end
    object queryDESCONTO_ITEM: TFloatField
      FieldName = 'DESCONTO_ITEM'
    end
    object queryOBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object queryOBS5: TWideStringField
      FieldName = 'OBS5'
      Size = 80
    end
    object queryCODIGOMODELO: TWideStringField
      FieldName = 'CODIGOMODELO'
      Size = 6
    end
    object queryCUSTO_VENDA: TWideStringField
      FieldName = 'CUSTO_VENDA'
      Size = 1
    end
    object queryFAT_FORMA_PGTO: TWideStringField
      FieldName = 'FAT_FORMA_PGTO'
      Size = 50
    end
    object queryFAT_CONDI_PGTO: TWideStringField
      FieldName = 'FAT_CONDI_PGTO'
      Size = 50
    end
    object queryFAT_QTDE_PRESTACAO: TIntegerField
      FieldName = 'FAT_QTDE_PRESTACAO'
    end
    object queryFAT_GERAR_RECEBER: TIntegerField
      FieldName = 'FAT_GERAR_RECEBER'
    end
    object queryFAT_GERAR_DUPLICATA: TIntegerField
      FieldName = 'FAT_GERAR_DUPLICATA'
    end
    object queryPIS: TFloatField
      FieldName = 'PIS'
    end
    object queryCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object queryFAT_TIPO: TIntegerField
      FieldName = 'FAT_TIPO'
    end
    object queryCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object queryOPERACAO: TWideStringField
      FieldName = 'OPERACAO'
      Size = 1
    end
    object queryINTEGRACAO: TIntegerField
      FieldName = 'INTEGRACAO'
    end
    object queryNFE_SITUACAO: TIntegerField
      FieldName = 'NFE_SITUACAO'
    end
    object queryNFE_XML: TWideStringField
      FieldName = 'NFE_XML'
      Size = 240
    end
    object queryVAREJO_ATACADO: TWideStringField
      FieldName = 'VAREJO_ATACADO'
      Size = 1
    end
    object queryINDUSTRIALIZACAO: TWideStringField
      FieldName = 'INDUSTRIALIZACAO'
      Size = 1
    end
    object queryPERDA: TWideStringField
      FieldName = 'PERDA'
      Size = 1
    end
    object queryFATURAMENTO_DATA5: TDateTimeField
      FieldName = 'FATURAMENTO_DATA5'
    end
    object queryFATURAMENTO_DATA6: TDateTimeField
      FieldName = 'FATURAMENTO_DATA6'
    end
    object queryFATURAMENTO_NUMERO5: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO5'
      Size = 15
    end
    object queryFATURAMENTO_NUMERO6: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO6'
      Size = 15
    end
    object queryFATURAMENTO_VALOR5: TFloatField
      FieldName = 'FATURAMENTO_VALOR5'
    end
    object queryFATURAMENTO_VALOR6: TFloatField
      FieldName = 'FATURAMENTO_VALOR6'
    end
    object queryFATURAMENTO_DATA7: TDateTimeField
      FieldName = 'FATURAMENTO_DATA7'
    end
    object queryFATURAMENTO_DATA8: TDateTimeField
      FieldName = 'FATURAMENTO_DATA8'
    end
    object queryFATURAMENTO_DATA9: TDateTimeField
      FieldName = 'FATURAMENTO_DATA9'
    end
    object queryFATURAMENTO_NUMERO7: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO7'
      Size = 15
    end
    object queryFATURAMENTO_NUMERO8: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO8'
      Size = 15
    end
    object queryFATURAMENTO_NUMERO9: TWideStringField
      FieldName = 'FATURAMENTO_NUMERO9'
      Size = 15
    end
    object queryFATURAMENTO_VALOR7: TFloatField
      FieldName = 'FATURAMENTO_VALOR7'
    end
    object queryFATURAMENTO_VALOR8: TFloatField
      FieldName = 'FATURAMENTO_VALOR8'
    end
    object queryFATURAMENTO_VALOR9: TFloatField
      FieldName = 'FATURAMENTO_VALOR9'
    end
    object queryCHAVE: TWideStringField
      FieldName = 'CHAVE'
      Size = 50
    end
    object queryNATUREZA: TWideStringField
      FieldName = 'NATUREZA'
    end
  end
  object QUERY2: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 528
    Top = 184
  end
  object DS2: TDataSource
    DataSet = QUERY2
    Left = 560
    Top = 184
  end
end
