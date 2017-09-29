object frmcontaspagar: Tfrmcontaspagar
  Left = 341
  Top = 157
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Contas a Pagar'
  ClientHeight = 594
  ClientWidth = 812
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel5: TBevel
    Left = 0
    Top = 27
    Width = 812
    Height = 3
    Align = alTop
  end
  object Bevel8: TBevel
    Left = 0
    Top = 548
    Width = 812
    Height = 3
    Align = alBottom
    ExplicitTop = 534
  end
  object Bevel9: TBevel
    Left = 0
    Top = 500
    Width = 812
    Height = 3
    Align = alBottom
    ExplicitTop = 486
  end
  object Bevel10: TBevel
    Left = 0
    Top = 472
    Width = 812
    Height = 3
    Align = alBottom
    ExplicitTop = 458
  end
  object Bevel12: TBevel
    Left = 0
    Top = 443
    Width = 812
    Height = 3
    Align = alBottom
    ExplicitTop = 429
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 30
    Width = 812
    Height = 413
    ControlType.Strings = (
      'FILTRO;CheckBox;1;0'
      'SITUACAO;ImageIndex;Original Size'
      'situacao2;ImageIndex;Original Size')
    Selected.Strings = (
      'FILTRO'#9'4'#9'S'
      'situacao2'#9'3'#9' ?'
      'DATA_VENCIMENTO'#9'10'#9'Vencimento'
      'fornecedor'#9'28'#9'Fornecedor'
      'HISTORICO'#9'33'#9'Hist'#243'rico'
      'NOTAFISCAL'#9'6'#9'NF'
      'DOCUMENTO'#9'13'#9'Documento'
      'ESPECIE'#9'10'#9'Esp'#233'cie'
      'VALOR'#9'11'#9'Valor - R$')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dscontaspagar
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    RowHeightPercent = 107
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = True
    OnTitleButtonClick = wwDBGrid1TitleButtonClick
    OnDblClick = wwDBGrid1DblClick
    OnEnter = wwDBGrid1Enter
    OnExit = wwDBGrid1Exit
    OnKeyPress = wwDBGrid1KeyPress
    ImageList = ImageList1
    PaintOptions.AlternatingRowColor = 16053492
    PaintOptions.ActiveRecordColor = clBlack
    ExplicitHeight = 399
  end
  object DBEdit1: TDBEdit
    Left = 536
    Top = 176
    Width = 121
    Height = 21
    DataField = 'CODIGO'
    DataSource = dscontaspagar
    TabOrder = 1
    Visible = False
    OnChange = DBEdit1Change
  end
  object FlatPanel7: TFlatPanel
    Left = 0
    Top = 475
    Width = 812
    Height = 25
    Color = 15461355
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 461
    object Label12: TLabel
      Left = 352
      Top = 5
      Width = 11
      Height = 13
      Caption = 'C:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 396
      Top = 5
      Width = 10
      Height = 13
      Caption = 'E:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label14: TLabel
      Left = 433
      Top = 4
      Width = 33
      Height = 13
      Caption = 'Conta:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText8: TDBText
      Left = 470
      Top = 4
      Width = 142
      Height = 15
      DataField = 'conta'
      DataSource = dscontaspagar
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel6: TBevel
      Left = 617
      Top = 2
      Width = 2
      Height = 20
    end
    object Bevel7: TBevel
      Left = 345
      Top = 2
      Width = 2
      Height = 19
    end
    object Bevel11: TBevel
      Left = 260
      Top = 3
      Width = 2
      Height = 19
    end
    object DBText6: TDBText
      Left = 369
      Top = 4
      Width = 20
      Height = 15
      Alignment = taCenter
      DataField = 'C'
      DataSource = dscontaspagar
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText7: TDBText
      Left = 409
      Top = 4
      Width = 20
      Height = 15
      Alignment = taCenter
      DataField = 'E'
      DataSource = dscontaspagar
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 6
      Top = 5
      Width = 67
      Height = 13
      Caption = 'F6 | Localizar:'
    end
    object pselecao: TFlatPanel
      Left = 622
      Top = 2
      Width = 159
      Height = 21
      Color = clRed
      ColorHighLight = clRed
      ColorShadow = clRed
      TabOrder = 0
      object Label19: TLabel
        Left = 8
        Top = 3
        Width = 50
        Height = 13
        Caption = 'Sele'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object rselecao: TRxCalcEdit
        Left = 64
        Top = 3
        Width = 89
        Height = 18
        Margins.Left = 1
        Margins.Top = 0
        AutoSize = False
        BorderStyle = bsNone
        Color = clRed
        DisplayFormat = 'R$ ###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ButtonWidth = 0
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 0
        OnChange = rselecaoChange
      end
    end
    object bnf: TAdvGlowButton
      Left = 270
      Top = 1
      Width = 66
      Height = 20
      Hint = 'Nota Fiscal de Compra'
      Caption = 'NF'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000001D84944415478DA
        62FCFFFF3F0325002080584044C294F385404A1E886D80D898810168EA7F0646
        867FFF19989818198088E1DFBF7F0CFFFE327C6065F97F475D86CF04245712AC
        C10810400C2017C44F3E37FB3F89A073D53510C50010402C5097D88288985561
        408BFF31FC079AFE17642310FFFDFB178881F4BFBF6036486C67E63E861B8F3E
        FC04E90108208801FFFE4B80A85FBF7F31884B09E0F5F3CD6B0FC1F4F71FBFD9
        40344000810D003A850B44FFFEFD9BE1C9C3D7606F011D017409C8C6FF10FF83
        82054A83F5FCFDCB08A201020862C0BFFF607A7DC256A243FF1FD05B20001040
        3003C0A68536EC65F801B68581616BB32BC3FD671FB16A5694E207BB0E040002
        88096200C4B437DF7F33986B8A33BCFBFE07AE98978B0D05C3C0FF3F10030002
        086A00C45F9F7FFC65F80DF4E3B79F7F506CFCFDF73F18A378E11F440D400081
        0D6084BAE0E7CFDF0CDF7F03A3EBC76F8261F0FFCF2F300D104090306040988E
        2D65B33233621AF01FE2028000021BF0EF0FD80F6055DB8F3E4051F8F9DB2FEC
        2E80C6274000810D00A63A902EC5CB330230421BA717FEFF7F0FA20102089212
        FFFEDB185ABB4F0D2868090C1D417000FDFF078EAAFF60F65F704C41722E88F8
        F7998181E93A482B400031529A9D01020C00544729AC885B7611000000004945
        4E44AE426082}
      Transparent = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bnfClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object combo_loc: TComboBox
      Left = 78
      Top = 2
      Width = 79
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 2
      Text = 'Documento'
      OnKeyPress = combo_locKeyPress
      Items.Strings = (
        'Documento'
        'Nota Fiscal')
    end
    object LOC: TwwIncrementalSearch
      Left = 160
      Top = 2
      Width = 94
      Height = 21
      DataSource = dscontaspagar
      TabOrder = 3
      OnEnter = LOCEnter
      OnExit = LOCExit
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 812
    Height = 27
    Align = alTop
    BevelOuter = bvNone
    Color = 15574106
    ParentBackground = False
    TabOrder = 3
    object Bevel2: TBevel
      Left = 261
      Top = 4
      Width = 89
      Height = 19
    end
    object Bevel3: TBevel
      Left = 461
      Top = 4
      Width = 89
      Height = 19
    end
    object Bevel4: TBevel
      Left = 685
      Top = 4
      Width = 89
      Height = 19
    end
    object Bevel1: TBevel
      Left = 109
      Top = 4
      Width = 89
      Height = 19
    end
    object Label3: TLabel
      Left = 4
      Top = 7
      Width = 99
      Height = 13
      Caption = 'Data do Pagamento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText1: TDBText
      Left = 112
      Top = 7
      Width = 83
      Height = 17
      Cursor = crHandPoint
      Hint = 'Clique aqui para alterar a data de pagamento'
      Alignment = taCenter
      DataField = 'DATA_PAGAMENTO'
      DataSource = dscontaspagar
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      ParentShowHint = False
      Transparent = True
      ShowHint = True
      OnClick = DBText1Click
    end
    object Label4: TLabel
      Left = 228
      Top = 7
      Width = 30
      Height = 13
      Caption = 'Juros:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText2: TDBText
      Left = 264
      Top = 7
      Width = 81
      Height = 17
      Alignment = taRightJustify
      DataField = 'ACRESCIMO'
      DataSource = dscontaspagar
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 404
      Top = 7
      Width = 49
      Height = 13
      Caption = 'Desconto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText3: TDBText
      Left = 464
      Top = 7
      Width = 81
      Height = 17
      Alignment = taRightJustify
      DataField = 'DESCONTO'
      DataSource = dscontaspagar
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 620
      Top = 7
      Width = 55
      Height = 13
      Caption = 'Valor Pago:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText4: TDBText
      Left = 688
      Top = 7
      Width = 81
      Height = 17
      Alignment = taRightJustify
      DataField = 'VALORPAGO'
      DataSource = dscontaspagar
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 503
    Width = 812
    Height = 45
    Align = alBottom
    BevelOuter = bvNone
    Color = 2211435
    ParentBackground = False
    TabOrder = 4
    ExplicitTop = 489
    object Label7: TLabel
      Left = 6
      Top = 17
      Width = 50
      Height = 13
      Caption = 'F8 | Filtro:'
    end
    object Label18: TLabel
      Left = 140
      Top = 17
      Width = 59
      Height = 13
      Caption = 'Fornecedor:'
    end
    object Label20: TLabel
      Left = 380
      Top = 17
      Width = 40
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object Label21: TLabel
      Left = 599
      Top = 17
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object combo_situacao: TComboBox
      Left = 64
      Top = 13
      Width = 73
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Text = 'A Pagar'
      OnKeyPress = combo_situacaoKeyPress
      Items.Strings = (
        'A Pagar'
        'Pagas'
        'Todas')
    end
    object COMBOFORNECEDOR: TwwDBLookupCombo
      Left = 203
      Top = 13
      Width = 171
      Height = 21
      DropDownAlignment = taLeftJustify
      LookupTable = frmmodulo.qrfornecedor
      LookupField = 'NOME'
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnEnter = COMBOFORNECEDOREnter
      OnExit = COMBOFORNECEDORExit
      OnKeyPress = COMBOFORNECEDORKeyPress
    end
    object combo_periodo: TComboBox
      Left = 424
      Top = 13
      Width = 81
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 2
      Text = 'Vencimento'
      OnKeyPress = combo_periodoKeyPress
      Items.Strings = (
        'Vencimento'
        'Emiss'#227'o'
        'Pagamento')
    end
    object DateEdit1: TDateEdit
      Left = 509
      Top = 13
      Width = 86
      Height = 21
      GlyphKind = gkCustom
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
        8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
        F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
        D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
        BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
        F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
        8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
        CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
        F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
        95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
        E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
        F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
        A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
        FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
        FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
        B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
        FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
        FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
        F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
        F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
        7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 1
      TabOrder = 3
      Text = '01/01/2001'
      OnEnter = DateEdit1Enter
      OnExit = DateEdit1Exit
      OnKeyPress = DateEdit1KeyPress
    end
    object DateEdit2: TDateEdit
      Left = 611
      Top = 13
      Width = 87
      Height = 21
      GlyphKind = gkCustom
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
        8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
        F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
        D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
        BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
        F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
        8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
        CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
        F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
        95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
        E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
        F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
        A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
        FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
        FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
        B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
        FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
        FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
        F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
        F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
        7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 1
      TabOrder = 4
      Text = '31/12/2099'
      OnEnter = DateEdit1Enter
      OnExit = DateEdit1Exit
      OnKeyPress = DateEdit2KeyPress
    end
    object bitbtn1: TAdvGlowButton
      Left = 704
      Top = 10
      Width = 90
      Height = 27
      Caption = 'Filtrar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B000002A9494441544889
        AD954F888E5114C67F8F99301AA230D813126527CA580C1622CD42E4BB57187F
        9A2436165264A758208D523A9732A32924B1B0C142CA92EC280B16983EA5FC9B
        712CBEFB8DB76FE69D197136EF39A7739EE79EF39E7BAEDC9D894808A10DD82E
        69BDBB2F9234C3DDABC02B49F7DDBD37A5546DCCD3780431C6C9EE7E1C3802B4
        4A92BB7BFD0B90F501E0B4A40B663634218218E32CE016B07642658203B7811D
        66F66D4C8210C214E0A1A435FE27A82AA9D7DD9F491A70F736A043D266779F52
        A8A61FD89652FAD53CC6694E00AB0B763FD06D661F1AE2AEC4181703D78195D9
        D70974019747AD20C6D806BC015AB2AB17D859ECED2839338147C0F2EC7A072C
        2CAB20B8FB54C0257D70F70329A552700033AB8610F6487AEAEE4DC07C499BCA
        08D617F4AB29A5CF6381D725A5F43CC6F80468CFAE8E3282259294F5C713012F
        C86349EBB2BE780441086192A4D6C28C37FED4F1E4632177FA088294D2AF18E3
        17604676CDFD4B823905BD5AD6A297C082ACB703F7FE82605D417F5536A64780
        73D9FC042C32B381F190638CAB80274053766D292398EBEEAF8169F966DEA276
        337F9681871066038F242DCDFFE08DA4A5A5AB22C6F800D8904DA7D6A67D66F6
        7E94D815D46EF2B242FC7633EB1B4190A7E88CBB1F85E1DD520FFA2AA93FEFA2
        4FEE3E8FDA2EDAE8EE930AF13D29A58300CD8DE0C059E07049275A80005400E5
        93D2A05F060ED513862B88310A380F74E784BA0C01066C0566951003BC058E01
        7D6636DC16B93B2184264917DD7D7F435B06257599998510A6039D923AF28BD6
        9A5FB417F945BB3BDA10A852A93401972475D5ABC9043F80BD29A56B639C7A5C
        6996D403ECC9B875FFA0A45D6676E35FC0019ADD7D373574725B7E480A6676F3
        5FC1A13645A78093D9FE0E54CCACFF7F8043AD45A7A94D4AB7A4836676E77F81
        03FC064CBD449B10DE8C1C0000000049454E44AE426082}
      Transparent = True
      TabOrder = 5
      OnClick = BitBtn1Click
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 551
    Width = 812
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 5
    ExplicitTop = 550
    object bincluir: TAdvGlowButton
      Left = 10
      Top = 4
      Width = 87
      Height = 32
      Caption = 'F2 | Incluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B00000264494441544889
        CD94D14B535118C07FC7DD24F72246C1E64BF6E0831ABE2D6A8B89CF19C42531
        E8A588200385106E25046552B4B0078365427FC0446E42317A0822DB6694BE44
        6D0561BE2D30586BB41973F7F4B0DDEDEEA6605E8CBEA77BCFEF9CEFF79DEF1C
        8E085E79F21370B341BCBCDD277AAE3E75C415C02DA59400420861FDAECC73C4
        1580F6D6661E0D07CD05E2DCE43C9FD33FAA9538E10A40B0CB23B044B0CB5397
        C009572A63524A69DD62DD02275C6187A32C10B5331342883FEA73C0CB0269DB
        A2B4A570C0FF518B765CF09F9FC17324EFA494520871504A1944D25427C8158A
        D5054208912B14EBF26FC025F070400F357A7C3C8B6693C1E86304F062E4F089
        B3B942F132305C15CCC496E54C6C79B3B7C6CE0DE0BCF750CA05E480464B2DC7
        275ECFDD0446A0F34CAD4520BC2D6E54FF01F4C41791CEE46D4DAEE3D3B42FB9
        8069139EEC08604803FDE302C02E60D2E34B5E82BEB2C0DBE2E6FE053FABD935
        7ABBBD0C4D25F8FABD50CD6EE1BFDAF68BF17B8B4BCB567B7F478075A3640ACC
        B83BA087A61500D5DFC66A768D8B0FE2840703A8FE36C2D15475A685CF7B7CC9
        53B6B66C160AA029007A6285DEEE56C28301F635EF464FACD4CDB4F0F7638BC9
        1EB32DFD1D815AB6061711550320F2E115FAA70580A30A403A9367682A61F698
        74268FE58CADDC001AB650BD194201F240533A93271C4D566F11B527D7CA3B3D
        3E62C0B1D9549CD954BC5CB1AAB16E94383D376117BC11B57C5B8B013DE406B2
        589E994D042560EF5F0B2A120DB863FEDBAEA9193722AA767D5B828A64141803
        5C366400B722AA760D60DB828A640F300A1CA90CBD05C623AAF6CD9CF31BC8BC
        79F17028A33D0000000049454E44AE426082}
      Transparent = True
      TabOrder = 0
      OnClick = bincluirClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object balterar: TAdvGlowButton
      Left = 98
      Top = 4
      Width = 87
      Height = 32
      Caption = 'F3 | Alterar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B00000262494441544889
        B594BD4B5B5118879FB75C41333438081A178D5407C1A4632389097611324890
        3A3A74D1D2244397FA1738D7426A878E1DEAC75D2AD96DF476F4164497E2C7D2
        4805AF517A23083D1DCC4D6E62EA07575FB8DCC379CEEFF7BEE7BC8723B1B75F
        FF003E9AC4DA5C524666573D710DF029A5148088887B5C59E7896B004F027E3E
        65628E405ECE7FE367F1B45A8917AE01C4063B0557C4063BEB0CBC70AD32A794
        52EE2DD609BC708D078ECB0452EB9988C895FA3CF0CB04AA618BAAC1C2037F88
        23B2800DA0E521126C02CFA746FB8FA746FBA925B89F1EFC00C644E4389CD515
        80F92E25F7D5834DA5545C444E1DE3705657E1ACAE3480B3F2455520227256BE
        A8D3DFC0CDB3F24542444EDD953B493480C5F55DB5B8BEFBBFB7E6261E7F9D1C
        2C39E600E1ACAE9C244E93A5ABDD472AD28B6EEC49D1B21B0EB9293701D6E692
        75E64E8CCCAE06D6E692BF3480AE761FEFA7231C95CE490C75915E30383C2957
        1737E1E6E14939EE54DB683E10F0771F9E940B409F06908AF470543AE7D5870D
        7233C3A4223DE4F23B5541033753919EF864B4AF69E59FDF24BAB70E8E0BB9FC
        4E102AD75437F6490C05C8CD0CD3E16F4537F6EB442E6E76F85BAF35EFF0B716
        74633FE8CC690045CB26BD6038674CD1B271F5D8E1662AD21B9F8C069B9A0F04
        FCDD5B07564137F6826EBD06D8405BD1B2C9E5B7ABB784DA936B03BF8B963D36
        190D96C299E571E4519DF9E3B69640D1B20BB9FC76F08A5E2975EB2F945EFA5E
        F98F87322B2A9459513769EE9620B3FCD7310DA597C66FA391DA8EAE8FA759FD
        8B42BD00CE51CA34E7279EDD467797D7348A521FCDF989E93B68F8076C820F3F
        0EDA78CB0000000049454E44AE426082}
      Transparent = True
      TabOrder = 1
      OnClick = balterarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object bexcluir: TAdvGlowButton
      Left = 186
      Top = 4
      Width = 87
      Height = 32
      Caption = 'Del | Excluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B00000258494441544889
        D595BF6E134110C67FB3BB17DB97B353E08837A0A0A044A24034A991E8E0116C
        A54F859012D1A4CC5340C3134015898257499138B6734ED6BB4391BBD3F9ECE4
        22080553CD7EFA66BED9D93F23AA4A9BED1D9DBEBB9E9D7F33C6841863149124
        E90DBEFEF8F4E67D5BAC6BCD7E6BE3FA425503F0F62181A2AAEC1D9DFE045EDD
        45F2571380002820056C927447364728205FBE7F7CFDC1015CCFCE9F19830281
        88011403C43255E11BA4C220FAABF326473044302EC6F81C8A1675B29D270067
        6767B72D6B265E15A126B28963769FEE02E645D5A2C6DE1EC3AAD6AD1CF2783C
        26CFF3B29E7ABF4BBF89D1E4F4FB7D73727252E55C11E8F7FB18634219A8AA51
        44B0D64A0821024655438125C0D27B1F4504E79C8410B4DBED9A7ACEB56B6AAD
        15EFBD1B0E8778EFB9BCBC0420C6B81C0E87EABD97E9740A409D379D4EB1D606
        91D58BB526B05C2E35CB320E0F0F01D8DFDF278440815980D1681400068341C5
        1B8D4600DA7CB86B02AA4AB7DBADD649927073735362026892248410E8743A15
        6F6B6B8B104233DDE6975CAFA2F4377D299B78AD02C6983B5E67BB1963A4F50C
        628C7FFC1642085155EDBD027FB3036BADF9A73B8831B6DFA2C7B6FFEB901FDC
        A27A15A5FF50AC696B02CE39B9B8B80020CF73F23CC7394781699EE72C160B92
        2461329954BCC56241A7D3596BD1CA3C383838D0F97CEE8B2001B4D7EB61AD4D
        5495F97C8E8890A6292282AA2E67B3998A08DBDBDB1263244D53777C7CBC791E
        D42DCB32092154EA22429665ABD51562855FCE8B7B5BF4CB5AFB92DB018FB5B6
        FCDB9777D421D6DAAA5A6BAD1391CF75C26F811B1AE2CFD9697F000000004945
        4E44AE426082}
      Transparent = True
      TabOrder = 2
      OnClick = bexcluirClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object bpagamento: TAdvGlowButton
      Left = 274
      Top = 4
      Width = 116
      Height = 32
      Caption = 'F4 | Pagamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B0000034C494441544889
        9D956D88945514C77FE73C8F33CE6EBBBA2E64AE569048D087AC1D97B2A28512
        0D76650B0BEA83E090D89BB47D88844891107AF9204810848815415804D6E687
        AD259212931D274A0A5BFD601AB3F432BAE3EE36CDCC33E7F6A179A699D99DDD
        592F5C7878B8F7FF3FE777CF3D579C735CCB18EDEB4EABEA0A33330055D5BAEF
        9C886C906B3118EDEB766521EA44A9FA0F905DB0C1E9CDEBE6DAB02F3E94DC7D
        7AF3BAA3C00080BF50F172648DB0EC292F7DDDCC0600D77406A37DDDAE1A4903
        8311609FAA1E34B3358035651062B16211171410F590451144152B1651DF0791
        59F7CE8B288C3C989AB48E7B1ED0CE8D0396FFED02E90F0F125C9DD0650FF65B
        F6D4710455736E06BA393308AB85429EE58F25ECA61D2F2A65FECE39C68F1CD2
        AEC7B7DBD95DDB99FA31A94EB5DE401A1A54AAC539AC18D033FC0300F9DFD364
        BEFA9C154FEC40804B870F907EF72DFCF6A5CD230AB1940A0513DF034FC3C8F5
        E23B6F9AF811CAC4F5C6C4A0FD397404CBE7D421F577626C46062116979B66E9
        FD1B6DE2E4D7502CE8ADFBDFB72577DCA5C1DFD3E6B7B4CAD8EEE79C78BEAED9
        7BC072BF9EE74CA24F25D65A63D0732C25351984585C216F5D891774D5D66748
        6DB997D2F414E7F70E123FFA1D7E4B2BD9D44997F9F253241261D5B69D14FEFA
        03C40B6514A0E7584A6A1085E2AA8AA96A309101D05B76BDC64F4F6F61656250
        438125DDEBE9E87D88C9EF4F716ECF4ECDA52FE1C76220A200F1A164A566C539
        376B6F294D5FD5DBDF1BB6969B5773E5DB11EDB86F83FDF2D293DAB5ED796BBB
        6D2D5367CFF0F3B38FAA2C8E19A23558AAA948B23F9E0722F507EDAC840501F1
        CF9278D12899E3C38CBDFC14777E7282C537ACA4387199D4C377E3B7B557F654
        471E0E3F3E948C963370AA2A61062E9FD7E58F6C352F1A2598CC6A67EF265B7F
        E282BAF23D18FFF8301A89543A687DE43588A0AED73823B2EC7A5DFBC11776EE
        D541AE7C33A2AB5FD96F9DBD9B14B0F18F0E71F1ED37F0DBDAD4CC3514AF31A8
        3E6800170478D7B513642F238B22D83F39C4F3F8AF29195E2C06C8AC581A1A84
        995470954A8648E5EAAB48D86F6A4A7141063370F17F6FA97EB59A116F680073
        BF5CF36169CA00EA7099A1AA0B129FD72034091FF166B1D40CE7DCBC33D91FCF
        34B36EB6F92F6FA42B7590C5996B0000000049454E44AE426082}
      Transparent = True
      TabOrder = 3
      OnClick = bpagamentoClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object brelatorio: TAdvGlowButton
      Left = 392
      Top = 4
      Width = 103
      Height = 32
      Caption = 'F7 | Relat'#243'rios'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B000001A6494441544889
        B595B152C2401086BF953883854FA035B58DB63A0E63031456B63C8195452E3D
        5E7C0867AC6DD506B4B0F511AC7D03471806642D4C32C9710908F837B77797DB
        FF76F7BF8DA82A3E846138030450111155CDC6F41B1191D4B6D68ACF4F50E27C
        0B90388E49487C6306638CF792A50422522B8BECAFF0128CD8D9AE33FC4702AD
        4FEA0C515544A430A6C8AF5741DC541C9BC7B572F36ADB05C6C018F3A2AA2780
        F47ABD94B0A0982A15E5BF0150D5591445A2AA53E03E004E81CD54B4881A7011
        E4D9131B12293AEB736B55F364AC0500B9B03791224DFC28382A9A4C26748EF6
        F5E1EDC3F7A8CA1E5A366F1FEEE9743A2D6C160806830197AD33AECE0F568A60
        3C1ED3EFF78BEC6118FE47818B11B8372DB31745E0B37D2AAAB4AB54E4B3B31A
        A4EDD618A3EE6DD78D400131C6CCD5228EE3A5545451C7EF0078025AF9836E1A
        16C1973E119901B781B5B6E33B948FE8EEF97DAE9708D06D36805F91884860AD
        9DB97EBCEDDA45EA68152C45B028822435CBFF935D749B0D7C2A4A9D267BDE42
        57117C02BB99A7927790604449CBAF22B836C6447992127C89C88DB5D64BF003
        9BE715E0B5D2BA0A0000000049454E44AE426082}
      Transparent = True
      TabOrder = 4
      OnClick = brelatorioClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object bextornar: TAdvGlowButton
      Left = 501
      Top = 3
      Width = 100
      Height = 32
      Caption = 'F9 | Extornar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B00000309494441544889
        B5964F681D6514C57F273EFA4FC5A445A45590A885528A161517822E2A6F1004
        1175866C6CA1620BA250100A4233D399BA515AA40B75515404419DD9480B0567
        D0EE44C43F0B51CC421453110DA40A566C5ED2D3C59B17C697F79227D8BB99EF
        63EE39E7DEFBDDEFCEC8360041912D9461BC8E86B5F37403F0A8A4C76DDF27E9
        16DB63C06FC057924EDBCEAB28F9932126DB0445D6B17DB18A92F19A5892A66C
        BF044C4A926DF79ECBE0EE7E0E7859D2C9328C175708B4F3B4032C02636518AF
        0F8A6C13F03AB017D0B0C806D83960AA0CE3DFFB05166CB780454937D83E03EC
        69447B51D2BBB6CF489AB1BD044C0281A4FDB66F6C6433033C5045C95C53C035
        D16549A76C1F6C003E029EA9A2647650C841914DD87E0578BA11D039494119C6
        4B00AD1E1930061CA8D700EF4BDA5786F1C2B09A94617C2128B203C079E0688D
        DD031C024EF46740238ACF243D38E8D0865950646FDBDE57F3FC61FB8E2A4AE6
        5B839CAB28B97F54E286BD003C0CDC044C00FB81E36AE7A9578581819BCB30FE
        752D85A0C88E0249BDFDB20CE37B5B00034AD43B17DBBEBD8A9235C96B9E0298
        963466FBCE769E6E1958A206607715253F8E425EDB0C7001D842B781B6AB7131
        AF8AAD9AC1FF221014D993B6730049DF94617CD77F21088AACD3E31A28007CDF
        B85CDB8322DB5C86F1FC88E40B4007D838CCA705CCD8FE05D82669A3EDC780B7
        4624FFCBF638E0FE0E5C5EDBA69DA72781E7EB17DF017757517269942C9AD6CE
        D3CBFD02BD59F41A7010582F6927300D1C19953828B209E08B46A97BF788E536
        6DE7E9AB920ED5CA4B92F69661FCDE08515F077C28E9A1C654BEE65F25EA394A
        FADCF68E3A828EEDE3C0B12A4AFE1912F94EDBEF00F734CAF286A4675708D480
        DB804F805B1B3C3F00A7808F8159BA1DB30B7802980236347CDF048E013FD5FB
        F91537B99DA793C06949BBFABB62C837D974BBE884ED1781AD92666DCF491A1F
        382ADA797AADA469DBCF019BD610F816385C45C9D91ABB55D2D7C0E6328CD7AD
        3A8B8222DB063C053C02EC06AEA73BBE7F063E053E00CE9661DC69605AC0DFBD
        5FA02B5745AA749BC9C8F30000000049454E44AE426082}
      Transparent = True
      TabOrder = 5
      OnClick = bextornarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Enabled = False
    end
    object bfechar: TAdvGlowButton
      Left = 706
      Top = 4
      Width = 106
      Height = 32
      Caption = 'ESC | Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B00000271494441544889
        B595CF4B545118869FD7B92B2504A145FE03D524D44C08416D74220C6A716F3F
        74D92A5C39D3A6949432312910E6EEDA15B472D10C41A510D63FA0F79242919B
        76B92842B268A3F3B5F028379D9944C7B339DC7BBEFBBCE73BF73BEF2733A3D6
        C816CA69A017C801278056B7B4022C02B3C05454F43FD762A89A40265F4A4B7A
        6466178126493233934432DEBD5F035E49BA1315FDA5FF0A64F2A57E605252B3
        FBF88DA49299CD4B5A76F1ED40A7A4C0CC7ADC267E9BD9401C064F6B0A640BE5
        5160C43DCE00856ABB4A0E778C21701EA800C351D19FD82190C9976E4A7A6266
        156054D27854F42BF5E089AC53921E98D92080A41B51D17FBE2590C9978E02F3
        EE58EEC56130B61B7015A187C0A0A455333B1587C117CF293E065A806949E37B
        813BCE087006E8923401F429932FA5CD6C0130491DF54A6E97599C941499D93A
        70CC03AE034DC0EBFDC201E230F8902D94DF03DDC0350FC8491250DE2F3C31CA
        927240B7071CB78D529A6BA0C09C63A63DA0CD65F0B58102CB8E79D803B07A86
        B4C7B1C9F4801F401B1BD7FF7B83F847DCFCCD033E0167812CB0D02081D36EFE
        E801B392CE015780670D1208DC3F7877E0176DD38B5E029725CD98D9A5380C2A
        890F0EC561B05A0D962D945351D15F4FC4A680B792BACC6C2A0E83BE4D2FBACD
        46D7EA917417D832BB5A708024DC71C6802EE0A7A421A86DD7F79D5DEFAA7C33
        F95293B3EB2127F4AF5D27521E35B31117346D66B7E230584AACB798D99F6D47
        980642493957FBC37118EC6C3809483F300934036BC034F0029807965D583BD0
        095C052E0029E017301015FDDA2D33B9AB036BFADB85805E49DD66D621A9D5C5
        AF008B92665DB5D42CEDBFC465552860CF4DD40000000049454E44AE426082}
      Transparent = True
      TabOrder = 6
      OnClick = bfecharClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
  end
  object bdesliga_filtro: TBitBtn
    Left = 166
    Top = 148
    Width = 179
    Height = 25
    Caption = 'Desligar filtro'
    TabOrder = 6
    Visible = False
    OnClick = bdesliga_filtroClick
  end
  object Panel4: TPanel
    Left = 0
    Top = 446
    Width = 812
    Height = 26
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    Enabled = False
    ParentBackground = False
    TabOrder = 7
    ExplicitTop = 432
    object Label16: TLabel
      Left = 433
      Top = 6
      Width = 62
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'A pagar:'
    end
    object Label17: TLabel
      Left = 622
      Top = 5
      Width = 38
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Pagas:'
    end
    object Label2: TLabel
      Left = 27
      Top = 6
      Width = 43
      Height = 13
      Caption = 'A vencer'
    end
    object Image2: TImage
      Left = 6
      Top = 5
      Width = 15
      Height = 15
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        000010000000010018000000000000030000C40E0000C40E0000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E7
        E3CAAA9BA16A508F573D8D563D996851C5A99BEEE7E3FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFDFC8BDA26547B17F56D4B692DAC2A5D9C2A5D1B38F
        AA7951915F47D8C6BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2CCBDA25B3BCAA6
        7CD7BA9EC29B76B58961B3855FBD9571D0B296C4A27688563DD8C6BDFFFFFFFF
        FFFFFFFFFFF4ECE4B37749CEA980D9BBA1BD9065B98B61B6885EB2835DB0825C
        AF825BCCA98CC5A478946148EFE8E4FFFFFFFFFFFFDBBC9BBE905DDFC1A7C495
        6BC19068E0CAB7FDFCFBFEFEFDE9DBCFB3845DB2845DD3B498AD7A55C7A99BFF
        FFFFFFFFFFC58F51DABB9BD4AC88C6976BC29468C09266ECDED2F9F6F3BA8A62
        B88962B78961C49C77D1B7929F6951FFFFFFFFFFFFC0823BE2C6AECFA175C498
        6AC39669C39568EDDFD3FAF6F3BE8F65BD8E64BD8E63BD9168DEC5A995553AFF
        FFFFFFFFFFC68841E3C8AFCFA279CB9C70C6996BC4976AFEFEFEFEFEFDC29568
        C09367C19367C2976CDEC4AA98583AFFFFFFFFFFFFD19D5BDFBB9EDAB292CE9F
        74CC9D71CA9B70DCBEA2DCBEA1C4986AC4986AC3976AD0AA84D7B996AB6D51FF
        FFFFFFFFFFE6C8A4CC9B67E6CAB3D3A479CF9F76CE9D73FAF7F4FAF7F4CA9D70
        CA9C70CCA076DEBFA4B8895AD2AE9AFFFFFFFFFFFFF9F0E7D29959D8B18BE5C9
        B2D5A87CD0A478E1C3A7E0C2A7CFA175D0A376DCBCA1CFAB84B37549F3EAE4FF
        FFFFFFFFFFFFFFFFF1DCC5D0914ED8B18BE5CCB7DFB99CD6AA84D5A881D8B290
        E0C1AAD3AD85B3703DE5D0BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1DDC5D59B
        5ACF9F69DFBE9FE2C4ADE2C4ADDEBB9EC79661C38948E9D5BDFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF1E7E9CBA7D7A164CE904DCC9049D09B5A
        E3C6A1F7EEE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF}
      Stretch = True
      Transparent = True
    end
    object Bevel15: TBevel
      Left = 76
      Top = 3
      Width = 2
      Height = 19
    end
    object Label15: TLabel
      Left = 107
      Top = 6
      Width = 72
      Height = 13
      Caption = 'Vencendo Hoje'
    end
    object Image6: TImage
      Left = 86
      Top = 5
      Width = 16
      Height = 15
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        000010000000010018000000000000030000C40E0000C40E0000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7AC8EC2CA6DF2AA3DE28A0DC269D
        DB249AD92297D81F92D51A8BD21584CE107DCB0C76C80870C5056BC20267C05D
        9CD647B5E5BDE2F4F3FBFDEEFAFDEDFAFDEDFAFDEEFBFDEEFBFDEEFAFDEDFAFD
        ECFAFDECFAFDEBFAFDF1FBFDAACDEA297ECAC3E7F761BEE7F3FBFDB4EEF957D9
        F457D9F456D7F257D6F157D5F156D8F350D7F44DD6F361D9F5E9FAFD4392D1B5
        D4EDFFFFFF5DC0EA9CD6F0E6F8FC8AE4F759DAF55AD9F33CA0D43CA0D453D5F1
        51D7F44FD5F3D7F5FB87BEE454A0D8FFFFFFFFFFFFE2F4FB36B1E4F2FAFDC2F1
        FA5BDBF55BD9F363DEF556CAEA54D5F153D8F493E6F7E2F3FA1B89D0DEEDF8FF
        FFFFFFFFFFFFFFFF78CCEE8BD1EFE9FAFD93E5F75BD9F346B0DC3CA0D455D6F1
        5BDAF4DDF7FC7CBFE687C3E8FFFFFFFFFFFFFFFFFFFFFFFFF6FCFE44B9E7C7E9
        F6E5F9FC5CD9F33CA0D43CA0D456D6F1C6F2FBBFE2F33AA3DCF5FAFDFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFB8E5F770C7ECF8FDFE5DDBF33DA1D43DA1D45BD8F3
        ECFAFD67BAE4B2DCF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF59C2
        EBA8DEF3ECF8FC3DA2D53DA2D5D3F4FBA1D6F05CB8E5FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDAF2FB39B7E7F8FCFE93E8F89DEAF9EBF9FD
        30A9E0D7EEF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF73CDEF93D7F1F2FBFDE6F9FD8ED2EF85CEEEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FAFE43BDE9F0F9FCD4EEF942B7E7
        F1F9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF8CD7F384D3F081D0EFACE0F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFF5CC6EE68C9EEFDFEFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF}
      Stretch = True
      Transparent = True
    end
    object Image7: TImage
      Left = 199
      Top = 5
      Width = 15
      Height = 15
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        000010000000010018000000000000030000C40E0000C40E0000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E6
        F79AA6E34C61CB354EC4334CC2455CC694A1DEE1E4F5FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFBFC7EF4B62D05163D3838FE6949FED949EEC828DE4
        4B5CCD3C53C3B8C0E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1CAF1465FD47483
        E2A0ABF37E8AEB5B66E35A65E27C86E99EA7F06E7BDC314AC1B8C1E9FFFFFFFF
        FFFFFFFFFFE7EAFA586FDD7787E5A2AFF45666E65564E58891EC8791EB525EE1
        515CE09EA8F16E7CDC4056C6E2E6F6FFFFFFFFFFFFA7B4F05F72DFA3B2F6596D
        EA586BE95768E7FEFEFEFEFEFE5461E45360E2525EE19EA8F14F60D097A3E0FF
        FFFFFFFFFF6A81E88D9EEF8398F35B72ED5A6FEB596DEA8F9CF0A5AEF25666E6
        5564E55461E47C88EA8490E64D63CDFFFFFFFFFFFF5C75E99FB2F6647FF15E77
        EF5C75EE5B72EDD2D8F9FEFEFE586BE95768E75666E65C6BE698A4F03B54CBFF
        FFFFFFFFFF607AEDA0B5F76683F35F7BF25E79F05E77EFFEFEFEFEFEFE5A6FEB
        596DEA586BE95E6EE89AA7F04058CFFFFFFFFFFFFF758CF290A5F287A0F7617F
        F3607DF25F7BF2FEFEFEFEFEFE5C75EE5B72ED5A6FEB8192F08897EB586FD7FF
        FFFFFFFFFFB1BFFA6B80EBA8BCFA6281F46180F4617FF3FEFEFEFEFEFE5E79F0
        5E77EF5C75EEA4B4F75C6FDCA2AEEBFFFFFFFFFFFFEBEEFE748BF68296EFA8BC
        FA6281F46281F4FEFEFEFEFEFE607DF25F7BF2A5B8F87A8CE95C73E0E6EAFAFF
        FFFFFFFFFFFFFFFFCED6FD6C85F78396F0A8BCFA89A2F76A88F56A88F588A1F7
        A7BBF97E91EB5971E4C5CEF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCED7FD768D
        F96D82ED91A5F39FB3F79FB3F790A5F2677CE86880ECC8D0F8FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEEFEB5C2FC7C93F96B85F66983F5768EF4
        B0BDF8E9ECFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF}
      Stretch = True
      Transparent = True
    end
    object Bevel14: TBevel
      Left = 188
      Top = 3
      Width = 2
      Height = 19
    end
    object Label22: TLabel
      Left = 219
      Top = 6
      Width = 42
      Height = 13
      Caption = 'Vencidas'
    end
    object Bevel13: TBevel
      Left = 272
      Top = 3
      Width = 2
      Height = 19
    end
    object Label23: TLabel
      Left = 303
      Top = 6
      Width = 29
      Height = 13
      Caption = 'Pagas'
    end
    object Image8: TImage
      Left = 282
      Top = 5
      Width = 15
      Height = 15
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        000010000000010018000000000000030000C40E0000C40E0000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0EE
        E08FBF913A8C3E2479282476283A843E8FB991E0EBE0FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFB5D9B6308E34419F5186C9999AD2AA9AD1AA82C695
        3C964B307B33B4D0B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5DBBA248E296CBD
        82A7DAB486CB9765BB7C63B97B85CA97A4D8B365B67C237126B4D0B6FFFFFFFF
        FFFFFFFFFFE1F2E432A04371C186A7DAB15FBB765BB97258B76F58B46E57B46E
        5AB673A4D8B268B77E307F34E0ECE1FFFFFFFFFFFF8FD29F4BAF63A9DCB363C0
        785EBD7074C484D3EBD889CC9855B56B57B46D5BB673A5D9B3409A4D8EBB90FF
        FFFFFFFFFF3EB45C90D19E8CD39963C27378C886F1F9F3FEFEFEFCFDFC85CA95
        56B66C5AB87184CB9686C6993A8A3EFFFFFFFFFFFF26AF48A5DBAE6FC97E72C9
        7FEFF8F0FEFEFEEAF6ECFEFEFEFAFCFB87CC955AB87066BD7C9FD6AE227E25FF
        FFFFFFFFFF2DB650A6DCB071CB7F65C672AFE0B6D1EDD562C06FB7E2BEFEFEFE
        FAFCFB8BCF9868C07DA0D6AD228325FFFFFFFFFFFF4AC46B94D6A090D69A68C8
        7563C56E60C36D60C26E60C16EB8E3BFFEFEFEE2F3E58AD0988ACD9C3B983FFF
        FFFFFFFFFF9ADEAC56BE6FAEE0B66CCB7967C77164C66F62C46D61C36D62C370
        B5E2BD6EC67DABDEB447A85D8EC793FFFFFFFFFFFFE4F7E948C4657ECD8FADE0
        B46CCB7969C97567C77167C77367C7746AC878ABDEB375C38832A042E1F1E3FF
        FFFFFFFFFFFFFFFFBFECCA3CC25B7ECD8FAEE0B691D79C76CD8276CD8291D79C
        ADE0B477C78A26A03AB5DFBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0ECCB49C7
        6858C17395D6A2A4DBADA4DBAD94D5A04FB86934B254B6E3C1FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F7E99EE2B054CA713ABF5B36BD5948C26A
        97DBAAE1F5E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF}
      Stretch = True
      Transparent = True
    end
    object Bevel16: TBevel
      Left = 345
      Top = 3
      Width = 2
      Height = 19
    end
    object rpagar: TRxCalcEdit
      Left = 502
      Top = 2
      Width = 111
      Height = 21
      Margins.Left = 1
      Margins.Top = 1
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
    object rpaga: TRxCalcEdit
      Left = 666
      Top = 2
      Width = 111
      Height = 21
      Margins.Left = 1
      Margins.Top = 1
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
  end
  object btotal: TButton
    Left = 592
    Top = 352
    Width = 75
    Height = 25
    Caption = 'totalizacao'
    TabOrder = 8
    Visible = False
    OnClick = btotalClick
  end
  object qrcontaspagar: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrcontaspagarCalcFields
    AfterInsert = qrcontaspagarAfterInsert
    SQL.Strings = (
      'select * from c000046')
    Params = <>
    Left = 280
    Top = 280
    object qrcontaspagarFILTRO: TIntegerField
      DisplayLabel = 'S'
      DisplayWidth = 4
      FieldName = 'FILTRO'
    end
    object qrcontaspagarsituacao2: TIntegerField
      DisplayLabel = ' ?'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'situacao2'
      Calculated = True
    end
    object qrcontaspagarDATA_VENCIMENTO: TDateTimeField
      DisplayLabel = 'Vencimento'
      DisplayWidth = 10
      FieldName = 'DATA_VENCIMENTO'
    end
    object qrcontaspagarfornecedor: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 28
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODFORNECEDOR'
      Size = 50
      Lookup = True
    end
    object qrcontaspagarHISTORICO: TWideStringField
      DisplayLabel = 'Hist'#243'rico'
      DisplayWidth = 33
      FieldName = 'HISTORICO'
      Size = 60
    end
    object qrcontaspagarNOTAFISCAL: TWideStringField
      DisplayLabel = 'NF'
      DisplayWidth = 6
      FieldName = 'NOTAFISCAL'
      Size = 10
    end
    object qrcontaspagarDOCUMENTO: TWideStringField
      DisplayLabel = 'Documento'
      DisplayWidth = 13
      FieldName = 'DOCUMENTO'
    end
    object qrcontaspagarESPECIE: TWideStringField
      DisplayLabel = 'Esp'#233'cie'
      DisplayWidth = 10
      FieldName = 'ESPECIE'
    end
    object qrcontaspagarVALOR: TFloatField
      DisplayLabel = 'Valor - R$'
      DisplayWidth = 11
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontaspagarconta: TStringField
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'conta'
      LookupDataSet = frmmodulo.qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CONTA'
      KeyFields = 'codconta'
      Visible = False
      Size = 40
      Lookup = True
    end
    object qrcontaspagarCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrcontaspagarDATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
      Visible = False
    end
    object qrcontaspagarDATA_PAGAMENTO: TDateTimeField
      FieldName = 'DATA_PAGAMENTO'
      Visible = False
    end
    object qrcontaspagarCODCONTA: TWideStringField
      FieldName = 'CODCONTA'
      Visible = False
      Size = 6
    end
    object qrcontaspagarCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 6
    end
    object qrcontaspagarVALORPAGO: TFloatField
      FieldName = 'VALORPAGO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontaspagarLIQUIDO: TFloatField
      FieldName = 'LIQUIDO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontaspagarDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontaspagarACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontaspagarC: TWideStringField
      FieldName = 'C'
      Visible = False
      Size = 1
    end
    object qrcontaspagarE: TWideStringField
      FieldName = 'E'
      Visible = False
      Size = 1
    end
    object qrcontaspagarSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrcontaspagarCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Visible = False
      Size = 6
    end
    object qrcontaspagarMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
      Visible = False
    end
    object qrcontaspagarCODCAIXA: TWideStringField
      FieldName = 'CODCAIXA'
      Visible = False
      Size = 6
    end
  end
  object dscontaspagar: TDataSource
    DataSet = qrcontaspagar
    Left = 432
    Top = 240
  end
  object PopupMenu1: TPopupMenu
    Left = 464
    Top = 240
    object Incluir1: TMenuItem
      Caption = 'Incluir'
      ShortCut = 113
      OnClick = bincluirClick
    end
    object Alterar1: TMenuItem
      Caption = 'Alterar'
      ShortCut = 114
      OnClick = Alterar1Click
    end
    object Pagamento1: TMenuItem
      Caption = 'Pagamento'
      ShortCut = 115
      OnClick = Pagamento1Click
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 46
      OnClick = bexcluirClick
    end
    object Localizar1: TMenuItem
      Caption = 'Localizar'
      ShortCut = 117
      OnClick = Localizar1Click
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      ShortCut = 118
      OnClick = brelatorioClick
    end
    object Filtro1: TMenuItem
      Caption = 'Filtro'
      ShortCut = 119
      OnClick = Filtro1Click
    end
    object Extornar1: TMenuItem
      Caption = 'Extornar'
      ShortCut = 120
      OnClick = Extornar1Click
    end
    object otalizar1: TMenuItem
      Caption = 'Totalizar'
      ShortCut = 121
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
  end
  object ImageList1: TImageList
    DrawingStyle = dsTransparent
    Height = 15
    Width = 15
    Left = 432
    Top = 208
    Bitmap = {
      494C0101050009000C000F000F00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000003C0000001E0000000100200000000000201C
      0000000000000000000000000000000000007AC8EC002CA6DF002AA3DE0028A0
      DC00269DDB00249AD9002297D8001F92D5001A8BD2001584CE00107DCB000C76
      C8000870C500056BC2000267C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000047B5E500BDE2F400F3FBFD00EEFAFD00EDFAFD00EDFAFD00EEFBFD00EEFB
      FD00EEFAFD00EDFAFD00ECFAFD00ECFAFD00EBFAFD00F1FBFD00AACDEA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3E7F70061BEE700F3FBFD00B4EE
      F90057D9F40057D9F40056D7F20057D6F10057D5F10056D8F30050D7F4004DD6
      F30061D9F500E9FAFD004392D100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005DC0EA009CD6F000E6F8FC008AE4F70059DAF5005AD9F3003CA0
      D4003CA0D40053D5F10051D7F4004FD5F300D7F5FB0087BEE40054A0D8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E2F4FB0036B1E400F2FA
      FD00C2F1FA005BDBF5005BD9F30063DEF50056CAEA0054D5F10053D8F40093E6
      F700E2F3FA001B89D000DEEDF800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000078CCEE008BD1EF00E9FAFD0093E5F7005BD9F30046B0
      DC003CA0D40055D6F1005BDAF400DDF7FC007CBFE60087C3E800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F6FCFE0044B9
      E700C7E9F600E5F9FC005CD9F3003CA0D4003CA0D40056D6F100C6F2FB00BFE2
      F3003AA3DC00F5FAFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B8E5F70070C7EC00F8FDFE005DDBF3003DA1
      D4003DA1D4005BD8F300ECFAFD0067BAE400B2DCF20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000059C2EB00A8DEF300ECF8FC003DA2D5003DA2D500D3F4FB00A1D6F0005CB8
      E500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DAF2FB0039B7E700F8FCFE0093E8
      F8009DEAF900EBF9FD0030A9E000D7EEF9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000073CDEF0093D7F100F2FBFD00E6F9FD008ED2EF0085CEEE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1FAFE0043BDE900F0F9
      FC00D4EEF90042B7E700F1F9FD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008CD7F30084D3F00081D0EF00ACE0F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFEFF005CC6
      EE0068C9EE00FDFEFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1E7E300CAAA9B00A16A50008F573D008D56
      3D0099685100C5A99B00EEE7E300000000000000000000000000000000000000
      00000000000000000000E0EEE0008FBF91003A8C3E0024792800247628003A84
      3E008FB99100E0EBE00000000000000000000000000000000000000000000000
      000000000000E3E6F7009AA6E3004C61CB00354EC400334CC200455CC60094A1
      DE00E1E4F500000000000000000000000000A97151A9C38E68FFC08B66FFBE88
      64FFBB8561FFB9835FFFB47E5CFFB27C5AFFB17B58FFAE7957FFAD7656FFAB75
      54FFA97353FFA97151FFA97151A9000000000000000000000000DFC8BD00A265
      4700B17F5600D4B69200DAC2A500D9C2A500D1B38F00AA795100915F4700D8C6
      BD000000000000000000000000000000000000000000B5D9B600308E3400419F
      510086C999009AD2AA009AD1AA0082C695003C964B00307B3300B4D0B6000000
      000000000000000000000000000000000000BFC7EF004B62D0005163D300838F
      E600949FED00949EEC00828DE4004B5CCD003C53C300B8C0E900000000000000
      0000C8926CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA97251FF0000
      000000000000E2CCBD00A25B3B00CAA67C00D7BA9E00C29B7600B5896100B385
      5F00BD957100D0B29600C4A2760088563D00D8C6BD0000000000000000000000
      0000B5DBBA00248E29006CBD8200A7DAB40086CB970065BB7C0063B97B0085CA
      9700A4D8B30065B67C0023712600B4D0B600000000000000000000000000C1CA
      F100465FD4007483E200A0ABF3007E8AEB005B66E3005A65E2007C86E9009EA7
      F0006E7BDC00314AC100B8C1E90000000000CA946EFFFFFFFFFFFFFFFFFFFFFF
      FEFFFFFFFDFFFEFEFDFFFEFEFCFFFEFEFCFFFEFEFCFFFEFEFCFFFEFEFAFFFEFE
      FAFFFCFCF9FFFFFFFFFFAA7353FF00000000F4ECE400B3774900CEA98000D9BB
      A100BD906500B98B6100B6885E00B2835D00B0825C00AF825B00CCA98C00C5A4
      780094614800EFE8E40000000000E1F2E40032A0430071C18600A7DAB1005FBB
      76005BB9720058B76F0058B46E0057B46E005AB67300A4D8B20068B77E00307F
      3400E0ECE10000000000E7EAFA00586FDD007787E500A2AFF4005666E6005564
      E5008891EC008791EB00525EE100515CE0009EA8F1006E7CDC004056C600E2E6
      F600CC976FFFFFFFFFFFFFFFFCFFFFFFFDFFFEFEFCFFFEFEFCFFFEFEFBFFFDFD
      FAFFFDFDFAFFFDFDFAFFFDFDFAFFFCFCF7FFFBFBF6FFFFFFFFFFAC7554FF0000
      0000DBBC9B00BE905D00DFC1A700C4956B00C1906800E0CAB700FDFCFB00FEFE
      FD00E9DBCF00B3845D00B2845D00D3B49800AD7A5500C7A99B00000000008FD2
      9F004BAF6300A9DCB30063C078005EBD700074C48400D3EBD80089CC980055B5
      6B0057B46D005BB67300A5D9B300409A4D008EBB900000000000A7B4F0005F72
      DF00A3B2F600596DEA00586BE9005768E700FEFEFE00FEFEFE005461E4005360
      E200525EE1009EA8F1004F60D00097A3E000D19C73FFFFFFFFFFFEFEFCFFFEFE
      FCFFFEFEFCFFFDFDFBFFFDFDFBFFFDFDFAFFFDFDF8FFFBFBF9FFFBFAF7FFFBFA
      F6FFFBF8F4FFFFFFFFFFB07A58FF00000000C58F5100DABB9B00D4AC8800C697
      6B00C2946800C0926600ECDED200F9F6F300BA8A6200B8896200B7896100C49C
      7700D1B792009F695100000000003EB45C0090D19E008CD3990063C2730078C8
      8600F1F9F300FEFEFE00FCFDFC0085CA950056B66C005AB8710084CB960086C6
      99003A8A3E00000000006A81E8008D9EEF008398F3005B72ED005A6FEB00596D
      EA008F9CF000A5AEF2005666E6005564E5005461E4007C88EA008490E6004D63
      CD00D49E75FFFFFFFFFFFEFEFCFFFDFDFBFFFDFDFCFFFDFDFBFFFDFDF9FFFCFC
      F8FFFBF9F7FFFBF9F5FFFBF8F4FFFBF7F2FFFBF5F2FFFFFFFFFFB27C5AFF0000
      0000C0823B00E2C6AE00CFA17500C4986A00C3966900C3956800EDDFD300FAF6
      F300BE8F6500BD8E6400BD8E6300BD916800DEC5A90095553A000000000026AF
      4800A5DBAE006FC97E0072C97F00EFF8F000FEFEFE00EAF6EC00FEFEFE00FAFC
      FB0087CC95005AB8700066BD7C009FD6AE00227E2500000000005C75E9009FB2
      F600647FF1005E77EF005C75EE005B72ED00D2D8F900FEFEFE00586BE9005768
      E7005666E6005C6BE60098A4F0003B54CB00D5A076FFFFFFFFFFFDFDFCFFFDFD
      FBFFFDFDFAFFFCFCF9FFFCFBF7FFFBF9F5FFFBF8F4FFFBF7F3FFFBF5F2FFFAF3
      EFFFF8F2ECFFFFFFFFFFB57E5CFF00000000C6884100E3C8AF00CFA27900CB9C
      7000C6996B00C4976A00FEFEFE00FEFEFD00C2956800C0936700C1936700C297
      6C00DEC4AA0098583A00000000002DB65000A6DCB00071CB7F0065C67200AFE0
      B600D1EDD50062C06F00B7E2BE00FEFEFE00FAFCFB008BCF980068C07D00A0D6
      AD002283250000000000607AED00A0B5F7006683F3005F7BF2005E79F0005E77
      EF00FEFEFE00FEFEFE005A6FEB00596DEA00586BE9005E6EE8009AA7F0004058
      CF00D8A279FFFFFFFFFFFDFDFAFFFCFCFAFFFCFBF9FFFBFAF6FFFBF8F5FFFBF7
      F4FFFBF6F1FFF8F4EEFFF7F2EBFFF7F0EAFFF6ECE8FFFFFFFFFFB7815EFF0000
      0000D19D5B00DFBB9E00DAB29200CE9F7400CC9D7100CA9B7000DCBEA200DCBE
      A100C4986A00C4986A00C3976A00D0AA8400D7B99600AB6D5100000000004AC4
      6B0094D6A00090D69A0068C8750063C56E0060C36D0060C26E0060C16E00B8E3
      BF00FEFEFE00E2F3E5008AD098008ACD9C003B983F0000000000758CF20090A5
      F20087A0F700617FF300607DF2005F7BF200FEFEFE00FEFEFE005C75EE005B72
      ED005A6FEB008192F0008897EB00586FD700D9A379FFFFFFFFFFFCFBF9FFFCFB
      F8FFFBF9F7FFFBF7F4FFFAF7F2FFF9F5F0FFF7F3EDFFF6EFEAFFF5EBE7FFF3EA
      E4FFF2E7DEFFFFFFFFFFBA8560FF00000000E6C8A400CC9B6700E6CAB300D3A4
      7900CF9F7600CE9D7300FAF7F400FAF7F400CA9D7000CA9C7000CCA07600DEBF
      A400B8895A00D2AE9A00000000009ADEAC0056BE6F00AEE0B6006CCB790067C7
      710064C66F0062C46D0061C36D0062C37000B5E2BD006EC67D00ABDEB40047A8
      5D008EC7930000000000B1BFFA006B80EB00A8BCFA006281F4006180F400617F
      F300FEFEFE00FEFEFE005E79F0005E77EF005C75EE00A4B4F7005C6FDC00A2AE
      EB00DBA47AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD8763FF0000
      0000F9F0E700D2995900D8B18B00E5C9B200D5A87C00D0A47800E1C3A700E0C2
      A700CFA17500D0A37600DCBCA100CFAB8400B3754900F3EAE40000000000E4F7
      E90048C465007ECD8F00ADE0B4006CCB790069C9750067C7710067C7730067C7
      74006AC87800ABDEB30075C3880032A04200E1F1E30000000000EBEEFE00748B
      F6008296EF00A8BCFA006281F4006281F400FEFEFE00FEFEFE00607DF2005F7B
      F200A5B8F8007A8CE9005C73E000E6EAFA00DCA77BFFDCA77BFFDCA77BFFDCA7
      7BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA7
      7BFFDCA77BFFDCA77BFFC08B66FF0000000000000000F1DCC500D0914E00D8B1
      8B00E5CCB700DFB99C00D6AA8400D5A88100D8B29000E0C1AA00D3AD8500B370
      3D00E5D0BD00000000000000000000000000BFECCA003CC25B007ECD8F00AEE0
      B60091D79C0076CD820076CD820091D79C00ADE0B40077C78A0026A03A00B5DF
      BD00000000000000000000000000CED6FD006C85F7008396F000A8BCFA0089A2
      F7006A88F5006A88F50088A1F700A7BBF9007E91EB005971E400C5CEF5000000
      0000DDAC85FDE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B9
      92FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFC1906FFD0000
      00000000000000000000F1DDC500D59B5A00CF9F6900DFBE9F00E2C4AD00E2C4
      AD00DEBB9E00C7966100C3894800E9D5BD000000000000000000000000000000
      000000000000C0ECCB0049C7680058C1730095D6A200A4DBAD00A4DBAD0094D5
      A0004FB8690034B25400B6E3C100000000000000000000000000000000000000
      0000CED7FD00768DF9006D82ED0091A5F3009FB3F7009FB3F70090A5F200677C
      E8006880EC00C8D0F8000000000000000000A971516BDDB18DF4DCA77BFFDCA6
      7AFFDAA47AFFD8A279FFD5A076FFD49E75FFD29D73FFCF9A72FFCE9970FFCB96
      6FFFC9946CFFC49A7AF4A971516B00000000000000000000000000000000FAF1
      E700E9CBA700D7A16400CE904D00CC904900D09B5A00E3C6A100F7EEE4000000
      0000000000000000000000000000000000000000000000000000E5F7E9009EE2
      B00054CA71003ABF5B0036BD590048C26A0097DBAA00E1F5E700000000000000
      00000000000000000000000000000000000000000000EAEEFE00B5C2FC007C93
      F9006B85F6006983F500768EF400B0BDF800E9ECFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      280000003C0000001E0000000100010000000000F00000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      000000000000000080000000000000008000000000000000C002000000000000
      C002000000000000E006000000000000F00E000000000000F00E000000000000
      F81E000000000000F81E000000000000FC3E000000000000FC3E000000000000
      FFFE000000000000FFFFE01FC03F80700001C00F801F003000018007000E0010
      0001000200040000000100020004000000010002000400000001000200040000
      0001000200040000000100020004000000010002000400000001000200040000
      00018007000E00100001C00F801F00300001E01FC03F8070FFFFFFFFFFFFFFF0
      00000000000000000000000000000000000000000000}
  end
  object Qrsoma: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select sum(entrada) total_entrada, sum(saida) total_saida, '
      '(select sum(entrada) from c000044 where movimento = 08),'
      '(select sum(saida) from c000044 where movimento = 08)'
      'from c000044')
    Params = <>
    Left = 192
    Top = 72
  end
  object UCControls1: TUCControls
    GroupName = 'Form.Contas a Pagar'
    UserControl = frmPrincipal.iCloud
    NotAllowed = naDisabled
    Left = 712
    Top = 336
  end
end
