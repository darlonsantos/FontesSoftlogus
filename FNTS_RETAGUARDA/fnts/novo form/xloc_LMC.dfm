object frmxloc_LMC: Tfrmxloc_LMC
  Left = 192
  Top = 114
  BorderIcons = [biSystemMenu]
  Caption = 'LMC'
  ClientHeight = 356
  ClientWidth = 708
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 0
    Width = 708
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
      Left = 648
      Top = 4
      Width = 2
      Height = 37
    end
    object Label7: TLabel
      Left = 670
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
      Left = 658
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
      ParentFont = False
      TabOrder = 1
      Items.Strings = (
        'DATA'
        'NOME')
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
      ItemIndex = 0
      ParentFont = False
      TabOrder = 2
      Text = 'IN'#205'CIO'
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
    Top = 44
    Width = 708
    Height = 312
    Selected.Strings = (
      'CODIGO'#9'10'#9'CODIGO'
      'DATA'#9'18'#9'DATA'
      'TANQUE'#9'10'#9'TANQUE'
      'BOMBA'#9'10'#9'BOMBA'
      'BICO'#9'10'#9'BICO'
      'COMBUSTIVEL'#9'10'#9'COMBUSTIVEL'
      'NOME_COMBUSTIVEL'#9'30'#9'NOME_COMBUSTIVEL')
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
    TitleAlignment = taCenter
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
  end
  object ds: TDataSource
    DataSet = query
    Left = 424
    Top = 232
  end
  object query: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from LMC')
    Params = <>
    Left = 464
    Top = 232
    object queryCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object queryTANQUE: TIntegerField
      FieldName = 'TANQUE'
    end
    object queryBOMBA: TIntegerField
      FieldName = 'BOMBA'
    end
    object queryBICO: TIntegerField
      FieldName = 'BICO'
    end
    object queryABERTURA: TIntegerField
      FieldName = 'ABERTURA'
    end
    object queryENCERRANTE: TIntegerField
      FieldName = 'ENCERRANTE'
    end
    object queryCOMBUSTIVEL: TIntegerField
      FieldName = 'COMBUSTIVEL'
    end
    object queryDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object queryPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object queryQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object queryTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object querySITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object queryNR_NOTA: TIntegerField
      FieldName = 'NR_NOTA'
    end
    object queryNOTAFISCAL1: TWideStringField
      FieldName = 'NOTAFISCAL1'
      Size = 10
    end
    object queryNOTAFISCAL2: TWideStringField
      FieldName = 'NOTAFISCAL2'
      Size = 10
    end
    object queryNOTAFISCAL3: TWideStringField
      FieldName = 'NOTAFISCAL3'
      Size = 10
    end
    object queryNOTAFISCAL4: TWideStringField
      FieldName = 'NOTAFISCAL4'
      Size = 10
    end
    object queryQUANTNF1: TIntegerField
      FieldName = 'QUANTNF1'
    end
    object queryQUANTNF2: TIntegerField
      FieldName = 'QUANTNF2'
    end
    object queryQUANTNF3: TIntegerField
      FieldName = 'QUANTNF3'
    end
    object queryQUANTNF4: TIntegerField
      FieldName = 'QUANTNF4'
    end
    object queryBICO1: TIntegerField
      FieldName = 'BICO1'
    end
    object queryBICO2: TIntegerField
      FieldName = 'BICO2'
    end
    object queryBICO3: TIntegerField
      FieldName = 'BICO3'
    end
    object queryBICO4: TIntegerField
      FieldName = 'BICO4'
    end
    object queryBICO5: TIntegerField
      FieldName = 'BICO5'
    end
    object queryBICO6: TIntegerField
      FieldName = 'BICO6'
    end
    object queryBICO7: TIntegerField
      FieldName = 'BICO7'
    end
    object queryBICO8: TIntegerField
      FieldName = 'BICO8'
    end
    object queryABER_BICO1: TIntegerField
      FieldName = 'ABER_BICO1'
    end
    object queryABER_BICO2: TIntegerField
      FieldName = 'ABER_BICO2'
    end
    object queryABER_BICO3: TIntegerField
      FieldName = 'ABER_BICO3'
    end
    object queryABER_BICO4: TIntegerField
      FieldName = 'ABER_BICO4'
    end
    object queryABER_BICO5: TIntegerField
      FieldName = 'ABER_BICO5'
    end
    object queryABER_BICO6: TIntegerField
      FieldName = 'ABER_BICO6'
    end
    object queryABER_BICO7: TIntegerField
      FieldName = 'ABER_BICO7'
    end
    object queryABER_BICO8: TIntegerField
      FieldName = 'ABER_BICO8'
    end
    object queryENC_BICO1: TIntegerField
      FieldName = 'ENC_BICO1'
    end
    object queryENC_BICO2: TIntegerField
      FieldName = 'ENC_BICO2'
    end
    object queryENC_BICO3: TIntegerField
      FieldName = 'ENC_BICO3'
    end
    object queryENC_BICO4: TIntegerField
      FieldName = 'ENC_BICO4'
    end
    object queryENC_BICO5: TIntegerField
      FieldName = 'ENC_BICO5'
    end
    object queryENC_BICO6: TIntegerField
      FieldName = 'ENC_BICO6'
    end
    object queryENC_BICO7: TIntegerField
      FieldName = 'ENC_BICO7'
    end
    object queryENC_BICO8: TIntegerField
      FieldName = 'ENC_BICO8'
    end
    object queryAFER_BICO1: TIntegerField
      FieldName = 'AFER_BICO1'
    end
    object queryAFER_BICO2: TIntegerField
      FieldName = 'AFER_BICO2'
    end
    object queryAFER_BICO3: TIntegerField
      FieldName = 'AFER_BICO3'
    end
    object queryAFER_BICO4: TIntegerField
      FieldName = 'AFER_BICO4'
    end
    object queryAFER_BICO5: TIntegerField
      FieldName = 'AFER_BICO5'
    end
    object queryAFER_BICO6: TIntegerField
      FieldName = 'AFER_BICO6'
    end
    object queryAFER_BICO7: TIntegerField
      FieldName = 'AFER_BICO7'
    end
    object queryAFER_BICO8: TIntegerField
      FieldName = 'AFER_BICO8'
    end
    object queryQTEVEND_1: TIntegerField
      FieldName = 'QTEVEND_1'
    end
    object queryQTEVEND_2: TIntegerField
      FieldName = 'QTEVEND_2'
    end
    object queryQTEVEND_3: TIntegerField
      FieldName = 'QTEVEND_3'
    end
    object queryQTEVEND_4: TIntegerField
      FieldName = 'QTEVEND_4'
    end
    object queryQTEVEND_5: TIntegerField
      FieldName = 'QTEVEND_5'
    end
    object queryQTEVEND_6: TIntegerField
      FieldName = 'QTEVEND_6'
    end
    object queryQTEVEND_7: TIntegerField
      FieldName = 'QTEVEND_7'
    end
    object queryQTEVEND_8: TIntegerField
      FieldName = 'QTEVEND_8'
    end
    object queryTOTALVEND_1: TFloatField
      FieldName = 'TOTALVEND_1'
    end
    object queryTOTALVEND_2: TFloatField
      FieldName = 'TOTALVEND_2'
    end
    object queryTOTALVEND_3: TFloatField
      FieldName = 'TOTALVEND_3'
    end
    object queryTOTALVEND_4: TFloatField
      FieldName = 'TOTALVEND_4'
    end
    object queryTOTALVEND_5: TFloatField
      FieldName = 'TOTALVEND_5'
    end
    object queryTOTALVEND_6: TFloatField
      FieldName = 'TOTALVEND_6'
    end
    object queryTOTALVEND_7: TFloatField
      FieldName = 'TOTALVEND_7'
    end
    object queryTOTALVEND_8: TFloatField
      FieldName = 'TOTALVEND_8'
    end
    object queryESTOQ_ABERTURA: TIntegerField
      FieldName = 'ESTOQ_ABERTURA'
    end
    object queryESTOQ_ESCRITURAL: TIntegerField
      FieldName = 'ESTOQ_ESCRITURAL'
    end
    object queryESTOQ_FECHAMENTO: TIntegerField
      FieldName = 'ESTOQ_FECHAMENTO'
    end
    object queryPERDA_SOBRA: TIntegerField
      FieldName = 'PERDA_SOBRA'
    end
    object queryOBSERVACAO: TWideStringField
      FieldName = 'OBSERVACAO'
      Size = 255
    end
    object queryPAGINA: TIntegerField
      FieldName = 'PAGINA'
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
    end
  end
  object qrCombustivel: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from CADCOMBUSTIVEL')
    Params = <>
    Left = 520
    Top = 224
    object qrCombustivelNOME: TWideStringField
      FieldName = 'NOME'
      Size = 30
    end
    object qrCombustivelPR_COMPRA: TFloatField
      FieldName = 'PR_COMPRA'
    end
    object qrCombustivelPR_CUSTO: TFloatField
      FieldName = 'PR_CUSTO'
    end
    object qrCombustivelPR_VENDA: TFloatField
      FieldName = 'PR_VENDA'
    end
    object qrCombustivelCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
  end
end
