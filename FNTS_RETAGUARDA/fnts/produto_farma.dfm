object frmproduto_farma: Tfrmproduto_farma
  Left = 300
  Top = 104
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'PRODUTO FARMA | Ficha de Cadastro'
  ClientHeight = 512
  ClientWidth = 845
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 6
    Top = 12
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 117
    Top = 12
    Width = 56
    Height = 13
    Caption = 'Refer'#234'ncia:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label58: TLabel
    Left = 337
    Top = 12
    Width = 65
    Height = 13
    Caption = 'Classifica'#231#227'o:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 572
    Top = 12
    Width = 27
    Height = 13
    Caption = 'Data:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 52
    Width = 73
    Height = 12
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Produto:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 4
    Top = 76
    Width = 78
    Height = 12
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Unidade:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label68: TLabel
    Left = 8
    Top = 125
    Width = 73
    Height = 12
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Se'#231#227'o:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label69: TLabel
    Left = 8
    Top = 173
    Width = 73
    Height = 12
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Fornecedor:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object label7: TLabel
    Left = 8
    Top = 149
    Width = 73
    Height = 12
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Laborat'#243'rio:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel4: TBevel
    Left = 0
    Top = 40
    Width = 778
    Height = 3
  end
  object Bevel10: TBevel
    Left = 0
    Top = 461
    Width = 845
    Height = 3
    Align = alBottom
    ExplicitTop = 460
    ExplicitWidth = 789
  end
  object Label12: TLabel
    Left = 8
    Top = 100
    Width = 73
    Height = 12
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Princ'#237'pio Ativo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label14: TLabel
    Left = 136
    Top = 76
    Width = 81
    Height = 12
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Apresenta'#231#227'o:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel5: TBevel
    Left = 0
    Top = 213
    Width = 845
    Height = 3
    Align = alBottom
    ExplicitTop = 212
    ExplicitWidth = 789
  end
  object Bevel3: TBevel
    Left = 435
    Top = 74
    Width = 2
    Height = 119
  end
  object pfichas: TFlatPanel
    Left = -520
    Top = 728
    Width = 1713
    Height = 922
    ParentColor = True
    Visible = False
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    TabOrder = 13
    object Label6: TLabel
      Left = 350
      Top = 60
      Width = 65
      Height = 12
      Caption = 'SUBGRUPO:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 725
      Top = 184
      Width = 26
      Height = 12
      Caption = 'CST:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object bservicos: TBitBtn
      Left = 744
      Top = 464
      Width = 75
      Height = 25
      Caption = 'bservicos'
      TabOrder = 0
      OnClick = bservicosClick
    end
  end
  object DBEdit1: TDBEdit
    Left = 48
    Top = 8
    Width = 57
    Height = 21
    DataField = 'CODIGO'
    DataSource = dsproduto2
    TabOrder = 0
    OnChange = DBEdit1Change
    OnEnter = DBEdit1Enter
    OnExit = DBEdit1Exit
    OnKeyPress = DBEdit1KeyPress
  end
  object combo_tipo: TwwDBComboBox
    Left = 408
    Top = 8
    Width = 157
    Height = 21
    ShowButton = True
    Style = csDropDownList
    MapList = False
    AllowClearKey = False
    DataField = 'TIPO'
    DataSource = dsproduto2
    DropDownCount = 8
    ItemHeight = 0
    Items.Strings = (
      '00 - Mercadoria para Revenda'
      '01 - Materia-Prima'
      '02 - Embalagem'
      '03 - Produto em Processo'
      '04 - Produto Acabado'
      '05 - Subproduto'
      '06 - Produto Intermediario'
      '07 - Material de Uso e Consumo'
      '08 - Ativo Imobilizado'
      '10 - Outros Insumos'
      '99 - Outras'
      ''
      '')
    ItemIndex = 0
    Sorted = False
    TabOrder = 1
    UnboundDataType = wwDefault
    OnEnter = combo_tipoEnter
    OnExit = combo_tipoExit
    OnKeyPress = combo_tipoKeyPress
  end
  object combocodbarra: TComboBox
    Left = 181
    Top = 7
    Width = 148
    Height = 21
    Style = csSimple
    CharCase = ecUpperCase
    TabOrder = 14
    Text = 'COMBOCODBARRA'
    OnEnter = combocodbarraEnter
    OnExit = combocodbarraExit
    OnKeyPress = combocodbarraKeyPress
  end
  object edata_cadastro: TDBDateEdit
    Left = 608
    Top = 8
    Width = 73
    Height = 21
    DataField = 'DATA_CADASTRO'
    DataSource = dsproduto2
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
    ButtonWidth = 0
    NumGlyphs = 1
    TabOrder = 2
    OnEnter = edata_cadastroEnter
    OnExit = Edit1Exit
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit2: TDBEdit
    Left = 85
    Top = 48
    Width = 684
    Height = 21
    CharCase = ecUpperCase
    DataField = 'PRODUTO'
    DataSource = dsproduto2
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnEnter = DBEdit1Enter
    OnExit = DBEdit2Exit
    OnKeyPress = DBEdit2KeyPress
  end
  object DBEdit7: TDBEdit
    Left = 86
    Top = 72
    Width = 41
    Height = 21
    CharCase = ecUpperCase
    DataField = 'UNIDADE'
    DataSource = dsproduto2
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnEnter = DBEdit1Enter
    OnExit = DBEdit7Exit
    OnKeyPress = DBEdit7KeyPress
  end
  object esubgrupo: TRzDBButtonEdit
    Left = 85
    Top = 121
    Width = 81
    Height = 21
    DataSource = dsproduto2
    DataField = 'CODSUBGRUPO'
    FocusColor = 10550008
    TabOrder = 7
    OnEnter = esubgrupoEnter
    OnKeyPress = esubgrupoKeyPress
    AltBtnWidth = 15
    ButtonWidth = 15
    OnButtonClick = esubgrupoButtonClick
  end
  object DBEdit8: TDBEdit
    Left = 168
    Top = 121
    Width = 257
    Height = 21
    Color = clBtnFace
    DataField = 'subgrupo'
    DataSource = dsproduto2
    TabOrder = 15
    OnEnter = DBEdit1Enter
    OnExit = DBEdit1Exit
    OnKeyPress = DBEdit1KeyPress
  end
  object efornecedor: TRzDBButtonEdit
    Left = 85
    Top = 169
    Width = 81
    Height = 21
    DataSource = dsproduto2
    DataField = 'CODFORNECEDOR'
    FocusColor = 10550008
    TabOrder = 9
    OnKeyPress = efornecedorKeyPress
    AltBtnWidth = 15
    ButtonWidth = 15
    OnButtonClick = efornecedorButtonClick
  end
  object DBEdit9: TDBEdit
    Left = 168
    Top = 169
    Width = 257
    Height = 21
    Color = clBtnFace
    DataField = 'fornecedor'
    DataSource = dsproduto2
    TabOrder = 16
    OnEnter = DBEdit1Enter
    OnExit = DBEdit1Exit
    OnKeyPress = DBEdit1KeyPress
  end
  object emarca: TRzDBButtonEdit
    Left = 85
    Top = 145
    Width = 81
    Height = 21
    DataSource = dsproduto2
    DataField = 'CODMARCA'
    FocusColor = 10550008
    TabOrder = 8
    OnKeyPress = emarcaKeyPress
    AltBtnWidth = 15
    ButtonWidth = 15
    OnButtonClick = emarcaButtonClick
  end
  object DBEdit63: TDBEdit
    Left = 168
    Top = 145
    Width = 257
    Height = 21
    Color = clBtnFace
    DataField = 'marca'
    DataSource = dsproduto2
    TabOrder = 17
    OnEnter = DBEdit1Enter
    OnExit = DBEdit1Exit
    OnKeyPress = DBEdit1KeyPress
  end
  object PageView1: TPageView
    Left = 0
    Top = 216
    Width = 845
    Height = 245
    ActivePage = PageSheet9
    ActivePageIndex = 0
    AdaptiveColors = True
    Align = alBottom
    BackgroundColor = clBtnFace
    BackgroundKind = bkSolid
    Indent = 2
    Margin = 0
    Options = [pgBoldActiveTab]
    ShowTabs = True
    Spacing = 0
    TabHeight = 17
    TabOrder = 18
    TabStyle = tsWhidbey
    TopIndent = 3
    OnChange = PageView1Change
    object PageSheet9: TPageSheet
      Left = 0
      Top = 21
      Width = 845
      Height = 224
      Caption = ' Estoque'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 0
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object PageView2: TPageView
        Left = 0
        Top = 0
        Width = 845
        Height = 250
        ActivePage = PageSheet10
        ActivePageIndex = 0
        AdaptiveColors = True
        Align = alTop
        BackgroundColor = 13230308
        BackgroundKind = bkSolid
        Indent = 2
        Margin = 0
        Options = [pgBoldActiveTab]
        ShowTabs = True
        Spacing = 0
        TabHeight = 17
        TabOrder = 0
        TabStyle = tsWhidbey
        TopIndent = 3
        OnKeyPress = combo_tipoKeyPress
        OnChange = PageView2Change
        object PageSheet10: TPageSheet
          Left = 0
          Top = 21
          Width = 845
          Height = 229
          Caption = 'Posi'#231#227'o do Estoque / Informa'#231#245'es'
          Color = 15461355
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 0
          ParentColor = False
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object Bevel6: TBevel
            Left = 256
            Top = 8
            Width = 2
            Height = 191
          end
          object Bevel7: TBevel
            Left = 0
            Top = 226
            Width = 845
            Height = 3
            Align = alBottom
            ExplicitWidth = 789
          end
          object Label18: TLabel
            Left = 270
            Top = 82
            Width = 100
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Validade:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label35: TLabel
            Left = 561
            Top = 53
            Width = 67
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Comiss'#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 270
            Top = 22
            Width = 100
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Classifica'#231#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 562
            Top = 21
            Width = 67
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Gen'#233'rico?'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 561
            Top = 85
            Width = 67
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Fra'#231#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label31: TLabel
            Left = 270
            Top = 106
            Width = 100
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Controlado?'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label32: TLabel
            Left = 270
            Top = 126
            Width = 100
            Height = 26
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Registro no '#13#10'Minist'#233'rio da Sa'#250'de:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label33: TLabel
            Left = 270
            Top = 161
            Width = 100
            Height = 26
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Pre'#231'o M'#225'ximo '#13#10'ao Consumidor:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 544
            Top = 135
            Width = 84
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Estoque M'#237'nimo:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 517
            Top = 157
            Width = 112
            Height = 26
            Caption = 'Quantidade Por '#13#10'Embalagem (COMPRA):'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label34: TLabel
            Left = 270
            Top = 50
            Width = 100
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CF / NCM:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object FlatPanel1: TFlatPanel
            Left = 8
            Top = 8
            Width = 121
            Height = 25
            Caption = 'Estoque Inicial:  '
            Color = 11647157
            ColorHighLight = 10776320
            ColorShadow = 10776320
            Alignment = taRightJustify
            TabOrder = 12
            object Image1: TImage
              Left = 8
              Top = 5
              Width = 16
              Height = 16
              Picture.Data = {
                07544269746D617036030000424D360300000000000036000000280000001000
                000010000000010018000000000000030000C40E0000C40E0000000000000000
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF5E8E60FAFBFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0DFD12B6D2F417944FFFFFFFFFFFFFF
                FFFFFFFFFF60BD6C5CB76757B06152A85B4CA05546984E4090483A8741347F3A
                3E874458A05D438A484A804CFFFFFFFFFFFFFFFFFF64C2709FD6A89BD4A497D2
                A093CF9C8FCD978ACA9286C88D81C5887DC28379C07F75BD7B448B49548656FF
                FFFFFFFFFF67C673A4D9ADA1D7AA9DD5A699D3A295D19E92CE998DCB9488C98F
                84C68A80C4867CC18149904F528856FFFFFFFFFFFF67C67367C67364C27060BD
                6C5CB76757B06152A85B4CA05546984E40904859A261549C5B549059FFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF46934E56985CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77B37DFBFCFBFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFF}
              Transparent = True
            end
          end
          object FlatPanel2: TFlatPanel
            Left = 8
            Top = 40
            Width = 121
            Height = 25
            Caption = 'Entradas:  '
            Color = 11647157
            ColorHighLight = 10776320
            ColorShadow = 10776320
            Alignment = taRightJustify
            TabOrder = 13
            object Image3: TImage
              Left = 8
              Top = 5
              Width = 16
              Height = 16
              Picture.Data = {
                07544269746D617036030000424D360300000000000036000000280000001000
                000010000000010018000000000000030000C40E0000C40E0000000000000000
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F0
                E79FC8A5559B5E3F8E483B8C444C955297C19BE1EDE2FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFC3DDC8569F6340984F7CC18E95CFA595CEA577BD88
                358C41408C47B9D5BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6DFCB549F6363B3
                77A7DAB486CB9765BB7C63B97B85CA97A4D8B357A96A34853CB9D5BBFFFFFFFF
                FFFFFFFFFFE9F3EB66AB7569B87CA7DAB15FBB765BB97258B76F58B46E57B46E
                5AB673A4D8B259A96B418E48E2EEE3FFFFFFFFFFFFAED4B852AA67A9DCB363C0
                785EBD705FBB76FEFEFEFEFEFE58B76F57B46D5BB673A5D9B3378E4296C19AFF
                FFFFFFFFFF76B78889CB9788D2956AC57962C06F54AA64FEFEFEFEFEFE58B76F
                58B76F5AB87184CB967ABD8C4C9554FFFFFFFFFFFF69B17EA8DCB27CCE8974CB
                80FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE58B76F66BD7C9BD3AA3A8B43FF
                FFFFFFFFFF6DB482B5E1BD8AD49679C885FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFE58B76F68C07D9CD3A93E8E48FFFFFFFFFFFF81BF94ABDCB5A5DEAE80CA
                8B7BC8856DBC78FEFEFEFEFEFE5AAB695FBB765BB9728AD0987FC491579D60FF
                FFFFFFFFFFB8DBC384C696D1EDD694D89F89D2937EC788FEFEFEFEFEFE78CC84
                6AC27B6EC67DABDEB4449D56A0C8A6FFFFFFFFFFFFECF6EF7EBE92A9D9B6D7F0
                DB91D79C87CC9283CB8D8AD39589D39482D18DAEDFB66AB87C5AA266E6F1E8FF
                FFFFFFFFFFFFFFFFD1E9D975BA8BAEDBBADBF1DFB5E3BC9ADAA495D89FA4DEAE
                BFE7C478C18957A165C4DEC9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1E9D97EBE
                9293CDA3C2E5CACEEAD3C8E8CDAEDCB76CB87E67AD77C7E0CDFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFECF6EFB9DCC482BF9570B6856DB48178B989
                B1D5BAE8F3EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFF}
              Transparent = True
            end
          end
          object FlatPanel11: TFlatPanel
            Left = 8
            Top = 64
            Width = 121
            Height = 25
            Caption = 'Sa'#237'das:  '
            Color = 11647157
            ColorHighLight = 10776320
            ColorShadow = 10776320
            Alignment = taRightJustify
            TabOrder = 14
            object Image4: TImage
              Left = 8
              Top = 5
              Width = 16
              Height = 16
              Picture.Data = {
                07544269746D617036030000424D360300000000000036000000280000001000
                000010000000010018000000000000030000C40E0000C40E0000000000000000
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E7
                F79EA9E1536AC63E58BF3953BE4B66C197A7DBE1E6F5FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFC2C8ED5465CB3B51CB7479E78E91ED8E91ED7077E3
                324CC03F5BBDB9C4E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C9EE505FCC5B64
                DFA0A5F47D85EE5A62E8585CE67C83ED9D9FF3505CD63351B9B9C4E7FFFFFFFF
                FFFFFFFFFFE8EAF96470D3606AE2A0ABF4535EEB4F5BE94C58E84D58E54B55E5
                4F55E59DA1F3535FD53F5CBEE2E7F5FFFFFFFFFFFFACB0E94A55DAA1AAF55563
                EF5165ED4C58E84C58E84C58E84C58E84B57E55159E59EA2F4334FC395A5DBFF
                FFFFFFFFFF7277DC808BED7D90F65C72F24C58E84C58E84C58E84C58E84C58E8
                4C58E84E5AE87A82EF747AE14B64C3FFFFFFFFFFFF6468DAA0AAF66F85F76781
                F5FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE4C58E85B65E9959BF03855BDFF
                FFFFFFFFFF696DDBAEB8F87E92F96F84EFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
                FEFEFE4C58E85D69ED959CF03C54BFFFFFFFFFFFFF7C7EE2A4AEF49CAAF9768B
                EF535EEB535EEB535EEB535EEB535EEB535EEB6276F1808DF3777EE8556AC8FF
                FFFFFFFFFFB5B4EF7C82E9CCD3FB8A9CF97D92F67489ED6B83F56B83F56B83F5
                6B83F56278F2A3AEF73D4ECF9FAAE0FFFFFFFFFFFFEBEBFB7877E2A2A6F2D3DA
                FC8699F97E90EF798DF07E93F77D91F8758BF7A7B5F7626DE25767CCE6E8F7FF
                FFFFFFFFFFFFFFFFCFCFF66F6FE0A9ACF1D7DBFCADB9F990A2F98A9CF99BA8FA
                B9C6FB6F7AE85361CDC3C8EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFF67878
                E18D92ECBDC2F7CBD2F8C3CAF8A9B3F3656FE1636DD5C6CAEFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBFBB6B5F07C7EE1696ADD676ADB7378DE
                AEB2EAE8E9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFF}
              Transparent = True
            end
          end
          object FlatPanel13: TFlatPanel
            Left = 8
            Top = 96
            Width = 121
            Height = 25
            Caption = 'Estoque Atual:  '
            Color = 11647157
            ColorHighLight = 10776320
            ColorShadow = 10776320
            Alignment = taRightJustify
            TabOrder = 15
            object Image6: TImage
              Left = 8
              Top = 5
              Width = 16
              Height = 16
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
              Transparent = True
            end
          end
          object FlatPanel14: TFlatPanel
            Left = 128
            Top = 8
            Width = 121
            Height = 25
            Color = clWindow
            Enabled = False
            ColorHighLight = 10776320
            ColorShadow = 10776320
            Alignment = taRightJustify
            TabOrder = 16
            object RINICIAL: TRxCalcEdit
              Left = 2
              Top = 4
              Width = 116
              Height = 20
              Margins.Top = 0
              AutoSize = False
              BorderStyle = bsNone
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clGreen
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ButtonWidth = 0
              NumGlyphs = 2
              ParentFont = False
              TabOrder = 0
            end
          end
          object FlatPanel15: TFlatPanel
            Left = 128
            Top = 40
            Width = 121
            Height = 25
            Color = clWindow
            Enabled = False
            ColorHighLight = 10776320
            ColorShadow = 10776320
            Alignment = taRightJustify
            TabOrder = 17
            object rentrada: TRxCalcEdit
              Left = 2
              Top = 4
              Width = 116
              Height = 20
              Margins.Top = 0
              AutoSize = False
              BorderStyle = bsNone
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ButtonWidth = 0
              NumGlyphs = 2
              ParentFont = False
              TabOrder = 0
            end
          end
          object FlatPanel16: TFlatPanel
            Left = 128
            Top = 64
            Width = 121
            Height = 25
            Color = clWindow
            Enabled = False
            ColorHighLight = 10776320
            ColorShadow = 10776320
            Alignment = taRightJustify
            TabOrder = 18
            object rsaida: TRxCalcEdit
              Left = 2
              Top = 4
              Width = 116
              Height = 20
              Margins.Top = 0
              AutoSize = False
              BorderStyle = bsNone
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ButtonWidth = 0
              NumGlyphs = 2
              ParentFont = False
              TabOrder = 0
            end
          end
          object FlatPanel18: TFlatPanel
            Left = 128
            Top = 96
            Width = 121
            Height = 25
            Color = clWindow
            Enabled = False
            ColorHighLight = 10776320
            ColorShadow = 10776320
            Alignment = taRightJustify
            TabOrder = 19
            object restoque: TRxCalcEdit
              Left = 1
              Top = 4
              Width = 114
              Height = 20
              Margins.Left = 0
              Margins.Top = 0
              AutoSize = False
              BorderStyle = bsNone
              DisplayFormat = '###,###,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ButtonWidth = 0
              NumGlyphs = 2
              ParentFont = False
              TabOrder = 0
            end
          end
          object DBEdit11: TDBEdit
            Left = 638
            Top = 130
            Width = 100
            Height = 21
            DataField = 'ESTOQUEMINIMO'
            DataSource = dsproduto2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit18: TDBEdit
            Left = 720
            Top = 178
            Width = 121
            Height = 21
            DataField = 'VALIDADE'
            DataSource = dsproduto2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            Visible = False
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit62: TDBEdit
            Left = 638
            Top = 50
            Width = 101
            Height = 21
            DataField = 'COMISSAO'
            DataSource = dsproduto2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit62KeyPress
          end
          object combo_classificacao: TwwDBComboBox
            Left = 384
            Top = 18
            Width = 121
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = False
            AllowClearKey = False
            DataField = 'AUTO_COMPLEMENTO'
            DataSource = dsproduto2
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'CORRELATO'
              'LIBERADO'
              'MONITORADO'
              'N'#195'O MONITORADO'
              'OUTROS')
            Sorted = False
            TabOrder = 0
            UnboundDataType = wwDefault
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object combo_generico: TwwDBComboBox
            Left = 638
            Top = 18
            Width = 102
            Height = 21
            ShowButton = True
            Style = csDropDownList
            MapList = False
            AllowClearKey = False
            DataField = 'CODRECEITA'
            DataSource = dsproduto2
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'SIM'
              'N'#195'O')
            Sorted = False
            TabOrder = 3
            UnboundDataType = wwDefault
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit10: TDBEdit
            Left = 638
            Top = 81
            Width = 99
            Height = 21
            DataField = 'PRECO_PROMOCAO'
            DataSource = dsproduto2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit10KeyPress
          end
          object wwDBComboBox1: TwwDBComboBox
            Left = 384
            Top = 105
            Width = 64
            Height = 21
            ShowButton = True
            Style = csDropDownList
            MapList = False
            AllowClearKey = False
            DataField = 'FARMACIA_CONTROLADO'
            DataSource = dsproduto2
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'S'
              'N')
            Sorted = False
            TabOrder = 6
            UnboundDataType = wwDefault
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit15: TDBEdit
            Left = 384
            Top = 134
            Width = 101
            Height = 21
            DataField = 'FARMACIA_REGISTRO_MEDICAMENTO'
            DataSource = dsproduto2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit17: TDBEdit
            Left = 384
            Top = 163
            Width = 105
            Height = 21
            DataField = 'FARMACIA_PMC'
            DataSource = dsproduto2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit17KeyPress
          end
          object DBEdit12: TDBEdit
            Left = 638
            Top = 163
            Width = 100
            Height = 21
            DataField = 'FARMACIA_APRESENTACAO'
            DataSource = dsproduto2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 10
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit17KeyPress
          end
          object DBDateEdit1: TDBDateEdit
            Left = 384
            Top = 77
            Width = 70
            Height = 21
            Margins.Left = 4
            Margins.Top = 1
            DataField = 'LOTE_VALIDADE'
            DataSource = dsproduto2
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
            ButtonWidth = 0
            NumGlyphs = 1
            TabOrder = 2
            OnEnter = edata_cadastroEnter
            OnExit = Edit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit14: TDBEdit
            Left = 384
            Top = 47
            Width = 101
            Height = 21
            DataField = 'CLASSIFICACAO_FISCAL'
            DataSource = dsproduto2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
        end
        object PageSheet11: TPageSheet
          Left = 0
          Top = 21
          Width = 845
          Height = 229
          Caption = 'Entradas'
          Color = 15461355
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 1
          ParentColor = False
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object Bevel8: TBevel
            Left = 0
            Top = 155
            Width = 845
            Height = 2
            Align = alTop
            ExplicitWidth = 789
          end
          object GroupBox1: TGroupBox
            Left = 4
            Top = 160
            Width = 605
            Height = 41
            Caption = 'Filtro | Per'#237'odo'
            TabOrder = 0
            object Label4: TLabel
              Left = 112
              Top = 16
              Width = 6
              Height = 13
              Caption = 'a'
            end
            object di_entrada: TDateEdit
              Left = 7
              Top = 14
              Width = 98
              Height = 21
              NumGlyphs = 2
              TabOrder = 0
              OnKeyPress = di_entradaKeyPress
            end
            object df_entrada: TDateEdit
              Left = 127
              Top = 14
              Width = 98
              Height = 21
              NumGlyphs = 2
              TabOrder = 1
              OnKeyPress = df_entradaKeyPress
            end
            object bfiltro_entrada: TAdvGlowButton
              Left = 512
              Top = 11
              Width = 84
              Height = 23
              Caption = 'Filtrar...'
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
                650041646F626520496D616765526561647971C9653C0000030B4944415478DA
                62FCFFFF3F032500208058B009EEDDBB971D68B01F1047FEFBF74F0348AB0231
                90F9EF0A90BE03A4E702F1DE808080BF0001C488EE02A0662DA0D8725151513D
                090909066E6E6E062E2E2E0690BA8F1F3F327CFEFC99E1D1A3470CAF5FBF3E02
                148B000820B00432DEB56BD7FE870F1F82ACFB8F0BFCFEFDFBFFF9F3E7FFAF5C
                B972214000C1BDF0E6ACBDF3FFBFFF276B70F3AB71BCE66478F39281E1FFDF7F
                0CFFFEFC666064E2661031EA6760E61087BB545A5A9AE1C68D1B9E0001C402D5
                CC0CD41CCC296CA6C9C32606D6F4FFF75F867FBFBE337C7F779D8143268CE10F
                031FC3EB172FC0DE78FFFE3D83BCBC3C03D0950C00010436E0DFDF7FB2400362
                58B91518FE7C3CC3C0C461C8F0E7CF1B861F1F6E313CFF63C5F0F7AD2CC3DF57
                9719DEBC79C3C0C4C4040F1390010001C4F2EA942D1BD0A9299C4206BC0C0CCC
                0CFFBEBF606060F9C9F0E1F16E064689440661212F0616161606A0BFC1F4D7AF
                5FC15E0069FEFBF72F034000B100351B02713A3B9F2AC3FF3FDF816648320055
                33FCFF0734ECCB6386BF9F6633FCFDFF87E12F0317C33F6663A0143BD8153017
                000410CBFF3FFF26738A9A8A7C7F7303E895FF0C6C5C2A40E3591804249D81FE
                BFCDF0EFF72F862F6F2E33FC97CF63F8F58F1DEC12666666B00120170004100B
                D0FFABBE3C3D7EE8FF9FBFBF816CD6DF7F2E168AC8BB31FDFDF181E1F7B7B70C
                5F99941898F5E731FC631565F80D0CC4DFBFBFC1A31C64184000B148399CEC81
                45CDC34DBA7C0C7F7E147D7F7395E1CB87E70CBF452319FE083A30707270025D
                F21B6E2B2C0C7EFDFAC50010402849F9DF9F7FEB39382518BFFE116410739AC2
                F0EAED57863FDFBFC3E5191919192425251964656519EEDDBB0776014000C10D
                B8BF56CB13E805A5C71F845BEEFD772AD47CF0821B14D7ECECEC608D20DB419A
                4149F9CA952B0C172E5C78F1E7CF1F3F800082E785BB2B35F4FEFFFDFB4F25EA
                F695254B9628029D5803C4C1C010E707C53B5031C3BB77EF187EFCF801D2B818
                E8959ECACACA570001C448283BCF9A358B17A841058881C1F0FB467171F14F64
                7980000300E768D347C7AF4C950000000049454E44AE426082}
              Transparent = True
              TabOrder = 2
              OnClick = bfiltro_entradaClick
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
            object combo_entrada: TComboBox
              Left = 241
              Top = 12
              Width = 264
              Height = 21
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 3
              Text = '** TODAS AS ENTRADAS **'
              Items.Strings = (
                '** TODAS AS ENTRADAS **'
                '0 - IMPLANTA'#199#195'O DE SALDO'
                '1 - COMPRA'
                '7 - DEVOL.DE VENDA'
                '8 - RETORNO SERIAL'
                '10-ACERTO ESTOQUE'
                '13-ENTRADA PRODUTO ACABADO'
                '16-ENTRADA DA RENTABILIDADE')
            end
          end
          object GroupBox13: TGroupBox
            Left = 640
            Top = 160
            Width = 121
            Height = 41
            Caption = 'Totalizador'
            TabOrder = 1
            object eentrada: TLabel
              Left = 9
              Top = 17
              Width = 104
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = '0,00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object wwDBGrid4: TwwDBGrid
            Left = 0
            Top = 0
            Width = 845
            Height = 155
            Selected.Strings = (
              'MOVIMENTO'#9'4'#9'C'#211'D.'#9'F'#9'MOVIMENTO'
              'MOV'#9'23'#9'DESCRI'#199#195'O'#9'F'#9'MOVIMENTO'
              'cliente'#9'28'#9'FORNECEDOR'#9'F'
              'DATA'#9'11'#9'DATA/FABR'#9#9
              'NUMERONOTA'#9'7'#9'N.FISCAL'#9#9
              'QTDE'#9'10'#9'QTDE.'#9#9
              'UNITARIO'#9'8'#9'UNIT'#193'RIO'#9#9
              'TOTAL'#9'9'#9'TOTAL'#9#9
              'CODNOTA'#9'8'#9'CD.NOTA'#9#9
              'LOTE_FABRICACAO'#9'7'#9'LOTE'#9#9)
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alTop
            DataSource = dsmov_entrada
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
            ParentFont = False
            TabOrder = 2
            TitleAlignment = taCenter
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -9
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 2
            TitleButtons = False
            UseTFields = False
          end
        end
        object PageSheet12: TPageSheet
          Left = 0
          Top = 21
          Width = 845
          Height = 229
          Caption = 'Sa'#237'das'
          Color = 15461355
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 2
          ParentColor = False
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object Bevel9: TBevel
            Left = 0
            Top = 155
            Width = 845
            Height = 2
            Align = alTop
            ExplicitWidth = 789
          end
          object wwDBGrid5: TwwDBGrid
            Left = 0
            Top = 0
            Width = 845
            Height = 155
            Selected.Strings = (
              'MOVIMENTO'#9'4'#9'C'#211'D.'#9'F'#9'MOVIMENTO'
              'MOV'#9'23'#9'DESCRI'#199#195'O'#9'F'#9'MOVIMENTO'
              'cliente'#9'28'#9'CLIENTE'#9#9
              'DATA'#9'11'#9'DATA/FABR'#9#9
              'NUMERONOTA'#9'7'#9'N.FISCAL'#9#9
              'QTDE'#9'10'#9'QTDE.'#9#9
              'UNITARIO'#9'8'#9'UNIT'#193'RIO'#9#9
              'TOTAL'#9'9'#9'TOTAL'#9#9
              'CODNOTA'#9'8'#9'CD.NOTA'#9#9
              'LOTE_FABRICACAO'#9'7'#9'LOTE'#9#9)
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alTop
            DataSource = dsmov_saida
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
            ParentFont = False
            TabOrder = 0
            TitleAlignment = taCenter
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -9
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 2
            TitleButtons = False
            UseTFields = False
          end
          object GroupBox14: TGroupBox
            Left = 4
            Top = 160
            Width = 605
            Height = 41
            Caption = 'Filtro | Per'#237'odo'
            TabOrder = 1
            object Label9: TLabel
              Left = 112
              Top = 16
              Width = 6
              Height = 13
              Caption = 'a'
            end
            object di_saida: TDateEdit
              Left = 7
              Top = 14
              Width = 98
              Height = 21
              NumGlyphs = 2
              TabOrder = 0
              OnKeyPress = di_entradaKeyPress
            end
            object df_saida: TDateEdit
              Left = 127
              Top = 14
              Width = 98
              Height = 21
              NumGlyphs = 2
              TabOrder = 1
              OnKeyPress = df_saidaKeyPress
            end
            object bfiltro_saida: TAdvGlowButton
              Left = 512
              Top = 11
              Width = 84
              Height = 23
              Caption = 'Filtrar...'
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
                650041646F626520496D616765526561647971C9653C0000030B4944415478DA
                62FCFFFF3F032500208058B009EEDDBB971D68B01F1047FEFBF74F0348AB0231
                90F9EF0A90BE03A4E702F1DE808080BF0001C488EE02A0662DA0D8725151513D
                090909066E6E6E062E2E2E0690BA8F1F3F327CFEFC99E1D1A3470CAF5FBF3E02
                148B000820B00432DEB56BD7FE870F1F82ACFB8F0BFCFEFDFBFFF9F3E7FFAF5C
                B972214000C1BDF0E6ACBDF3FFBFFF276B70F3AB71BCE66478F39281E1FFDF7F
                0CFFFEFC666064E2661031EA6760E61087BB545A5A9AE1C68D1B9E0001C402D5
                CC0CD41CCC296CA6C9C32606D6F4FFF75F867FBFBE337C7F779D8143268CE10F
                031FC3EB172FC0DE78FFFE3D83BCBC3C03D0950C00010436E0DFDF7FB2400362
                58B91518FE7C3CC3C0C461C8F0E7CF1B861F1F6E313CFF63C5F0F7AD2CC3DF57
                9719DEBC79C3C0C4C4040F1390010001C4F2EA942D1BD0A9299C4206BC0C0CCC
                0CFFBEBF606060F9C9F0E1F16E064689440661212F0616161606A0BFC1F4D7AF
                5FC15E0069FEFBF72F034000B100351B02713A3B9F2AC3FF3FDF816648320055
                33FCFF0734ECCB6386BF9F6633FCFDFF87E12F0317C33F6663A0143BD8153017
                000410CBFF3FFF26738A9A8A7C7F7303E895FF0C6C5C2A40E3591804249D81FE
                BFCDF0EFF72F862F6F2E33FC97CF63F8F58F1DEC12666666B00120170004100B
                D0FFABBE3C3D7EE8FF9FBFBF816CD6DF7F2E168AC8BB31FDFDF181E1F7B7B70C
                5F99941898F5E731FC631565F80D0CC4DFBFBFC1A31C64184000B148399CEC81
                45CDC34DBA7C0C7F7E147D7F7395E1CB87E70CBF452319FE083A30707270025D
                F21B6E2B2C0C7EFDFAC50010402849F9DF9F7FEB39382518BFFE116410739AC2
                F0EAED57863FDFBFC3E5191919192425251964656519EEDDBB0776014000C10D
                B8BF56CB13E805A5C71F845BEEFD772AD47CF0821B14D7ECECEC608D20DB419A
                4149F9CA952B0C172E5C78F1E7CF1F3F800082E785BB2B35F4FEFFFDFB4F25EA
                F695254B9628029D5803C4C1C010E707C53B5031C3BB77EF187EFCF801D2B818
                E8959ECACACA570001C448283BCF9A358B17A841058881C1F0FB467171F14F64
                7980000300E768D347C7AF4C950000000049454E44AE426082}
              Transparent = True
              TabOrder = 2
              OnClick = bfiltro_saidaClick
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
            object combo_saida: TComboBox
              Left = 241
              Top = 12
              Width = 264
              Height = 21
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 3
              Text = '** TODAS AS SA'#205'DAS **'
              Items.Strings = (
                '** TODAS AS SA'#205'DAS **'
                '2 - VENDA'
                '3 - DEVOL.DE COMPRA'
                '4 - SA'#205'DA'
                '5 - BAIXA DE SERIAL'
                '6 - EXCLUS'#195'O SERIAL'
                '9 - VENDA EM O.S'
                '11-BAIXA MAT'#201'RIA-PRIMA'
                '12-ESTORNA MAT'#201'RIA-PRIMA'
                '14-ESTORNA PRODUTO ACABADO'
                '15-BAIXA PARA RENTABILIDADE'
                '17-INSTALA'#199#195'O'
                '18-GARANTIA DE SERVI'#199'O'
                '19-SAIDA PARA OFICINA'
                '20-DOA'#199#195'O'
                '99-SAIDA SEM BAIXAR ESTOQUE')
            end
          end
          object GroupBox15: TGroupBox
            Left = 640
            Top = 160
            Width = 121
            Height = 41
            Caption = 'Totalizador'
            TabOrder = 2
            object esaida: TLabel
              Left = 9
              Top = 17
              Width = 104
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = '0,00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
      end
    end
    object PageSheet7: TPageSheet
      Left = 0
      Top = 21
      Width = 845
      Height = 224
      Caption = 'C'#225'lculo Pre'#231'o'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 1
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object ppreco: TPanel
        Left = 0
        Top = 0
        Width = 845
        Height = 224
        Align = alClient
        BevelOuter = bvNone
        Color = 15461355
        ParentBackground = False
        TabOrder = 0
        object GroupBox3: TGroupBox
          Left = 7
          Top = 3
          Width = 226
          Height = 142
          Caption = 'Custo de Compra'
          TabOrder = 0
          object Label19: TLabel
            Left = 8
            Top = 20
            Width = 70
            Height = 26
            Caption = 'Valor Pago na '#13#10#250'ltima compra:'
          end
          object Label20: TLabel
            Left = 8
            Top = 60
            Width = 86
            Height = 26
            Caption = 'Frete + IPI + '#13#10'Outras Despesas:'
          end
          object Bevel1: TBevel
            Left = 0
            Top = 100
            Width = 226
            Height = 2
          end
          object Label21: TLabel
            Left = 8
            Top = 114
            Width = 87
            Height = 13
            Caption = 'Custo de Compra:'
          end
          object DBEdit19: TDBEdit
            Left = 120
            Top = 24
            Width = 97
            Height = 21
            DataField = 'VALOR_ULTIMA_COMPRA'
            DataSource = dspreco
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnEnter = DBEdit1Enter
            OnExit = DBEdit19Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit20: TDBEdit
            Left = 120
            Top = 64
            Width = 97
            Height = 21
            DataField = 'FRETE_IPI_OUTRAS'
            DataSource = dspreco
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnEnter = DBEdit1Enter
            OnExit = DBEdit19Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit21: TDBEdit
            Left = 120
            Top = 110
            Width = 97
            Height = 21
            DataField = 'CUSTO_COMPRA'
            DataSource = dspreco
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
        end
        object GroupBox4: TGroupBox
          Left = 236
          Top = 3
          Width = 317
          Height = 188
          TabOrder = 1
          object Label22: TLabel
            Left = 8
            Top = 17
            Width = 85
            Height = 13
            Caption = 'ICMS de Entrada:'
          end
          object Label23: TLabel
            Left = 8
            Top = 37
            Width = 73
            Height = 13
            Caption = 'ICMS de Sa'#237'da:'
          end
          object Label24: TLabel
            Left = 8
            Top = 57
            Width = 92
            Height = 13
            Caption = 'Custo Operacional:'
          end
          object Label25: TLabel
            Left = 8
            Top = 77
            Width = 84
            Height = 13
            Caption = 'Outros Impostos:'
          end
          object Label26: TLabel
            Left = 8
            Top = 97
            Width = 49
            Height = 13
            Caption = 'Comiss'#227'o:'
          end
          object Label27: TLabel
            Left = 8
            Top = 117
            Width = 99
            Height = 13
            Caption = 'Lucro sobre o Pre'#231'o:'
          end
          object Bevel2: TBevel
            Left = 0
            Top = 138
            Width = 316
            Height = 2
          end
          object Label28: TLabel
            Left = 8
            Top = 147
            Width = 111
            Height = 13
            Caption = 'Total dos Custos:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label41: TLabel
            Left = 112
            Top = 168
            Width = 105
            Height = 13
            Caption = 'Pre'#231'o de Venda:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label49: TLabel
            Left = 134
            Top = 19
            Width = 15
            Height = 9
            Caption = '(-)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -9
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object Label50: TLabel
            Left = 134
            Top = 39
            Width = 15
            Height = 9
            Caption = '(+)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -9
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object Label51: TLabel
            Left = 134
            Top = 59
            Width = 15
            Height = 9
            Caption = '(+)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -9
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object Label52: TLabel
            Left = 134
            Top = 79
            Width = 15
            Height = 9
            Caption = '(+)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -9
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object Label53: TLabel
            Left = 134
            Top = 99
            Width = 15
            Height = 9
            Caption = '(+)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -9
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object Label54: TLabel
            Left = 134
            Top = 119
            Width = 15
            Height = 9
            Caption = '(+)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -9
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit22: TDBEdit
            Left = 152
            Top = 13
            Width = 62
            Height = 21
            DataField = 'ICMS_ENTRADA_P'
            DataSource = dspreco
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnEnter = DBEdit1Enter
            OnExit = DBEdit22Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit23: TDBEdit
            Left = 152
            Top = 33
            Width = 62
            Height = 21
            DataField = 'ICMS_SAIDA_P'
            DataSource = dspreco
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnEnter = DBEdit1Enter
            OnExit = DBEdit22Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit24: TDBEdit
            Left = 152
            Top = 53
            Width = 62
            Height = 21
            DataField = 'CUSTO_OPERACIONAL_P'
            DataSource = dspreco
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnEnter = DBEdit1Enter
            OnExit = DBEdit22Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit25: TDBEdit
            Left = 152
            Top = 73
            Width = 62
            Height = 21
            DataField = 'OUTROS_IMPOSTOS_P'
            DataSource = dspreco
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnEnter = DBEdit1Enter
            OnExit = DBEdit22Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit26: TDBEdit
            Left = 152
            Top = 93
            Width = 62
            Height = 21
            DataField = 'COMISSAO_P'
            DataSource = dspreco
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnEnter = DBEdit1Enter
            OnExit = DBEdit22Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit27: TDBEdit
            Left = 152
            Top = 113
            Width = 62
            Height = 21
            DataField = 'LUCRO_P'
            DataSource = dspreco
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            OnEnter = DBEdit1Enter
            OnExit = DBEdit22Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit32: TDBEdit
            Left = 228
            Top = 13
            Width = 80
            Height = 21
            DataField = 'ICMS_ENTRADA'
            DataSource = dspreco
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnEnter = DBEdit1Enter
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit33: TDBEdit
            Left = 228
            Top = 33
            Width = 80
            Height = 21
            DataField = 'ICMS_SAIDA'
            DataSource = dspreco
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnEnter = DBEdit1Enter
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit34: TDBEdit
            Left = 228
            Top = 53
            Width = 80
            Height = 21
            DataField = 'CUSTO_OPERACIONAL'
            DataSource = dspreco
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnEnter = DBEdit1Enter
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit35: TDBEdit
            Left = 228
            Top = 73
            Width = 80
            Height = 21
            DataField = 'OUTROS_IMPOSTOS'
            DataSource = dspreco
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnEnter = DBEdit1Enter
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit36: TDBEdit
            Left = 228
            Top = 93
            Width = 80
            Height = 21
            DataField = 'COMISSAO'
            DataSource = dspreco
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            OnEnter = DBEdit1Enter
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit37: TDBEdit
            Left = 228
            Top = 113
            Width = 80
            Height = 21
            DataField = 'LUCRO'
            DataSource = dspreco
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            OnEnter = DBEdit1Enter
            OnExit = DBEdit37Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit38: TDBEdit
            Left = 152
            Top = 143
            Width = 62
            Height = 21
            DataField = 'TOTAL_CUSTO_P'
            DataSource = dspreco
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit38KeyPress
          end
          object DBEdit3: TDBEdit
            Left = 228
            Top = 143
            Width = 80
            Height = 21
            DataField = 'TOTAL_CUSTO'
            DataSource = dspreco
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 13
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit5: TDBEdit
            Left = 228
            Top = 165
            Width = 80
            Height = 21
            DataField = 'PRECO_VENDA'
            DataSource = dspreco
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 14
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
        end
        object FlatPanel9: TFlatPanel
          Left = 386
          Top = 0
          Width = 33
          Height = 13
          ParentColor = True
          ColorHighLight = clBtnFace
          ColorShadow = clBtnFace
          TabOrder = 3
          object Label39: TLabel
            Left = 9
            Top = 0
            Width = 14
            Height = 13
            Caption = '%'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object FlatPanel10: TFlatPanel
          Left = 474
          Top = 0
          Width = 33
          Height = 13
          ParentColor = True
          ColorHighLight = clBtnFace
          ColorShadow = clBtnFace
          TabOrder = 4
          object Label40: TLabel
            Left = 9
            Top = 0
            Width = 16
            Height = 13
            Caption = 'R$'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object bitbtn10: TAdvGlowButton
          Left = 235
          Top = 191
          Width = 318
          Height = 33
          Caption = 'Atualizar Pre'#231'o de Venda'
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
            89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
            6D0000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
            000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
            4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
            6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
            786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
            362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
            2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
            3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
            7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
            626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
            62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
            74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
            6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
            7861702F312E302F73547970652F5265736F75726365526566232220786D703A
            43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
            202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
            702E6969643A3531423845383333453238323131453239393932384331334245
            3437413935302220786D704D4D3A446F63756D656E7449443D22786D702E6469
            643A353142384538333445323832313145323939393238433133424534374139
            3530223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
            7374616E636549443D22786D702E6969643A3531423845383331453238323131
            453239393932384331334245343741393530222073745265663A646F63756D65
            6E7449443D22786D702E6469643A353142384538333245323832313145323939
            3932384331334245343741393530222F3E203C2F7264663A4465736372697074
            696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
            7061636B657420656E643D2272223F3ECBCFC7FB000004B44944415478DAC499
            0B88564514C7EF5E375FBB1A3E327335D7D2C430B5356B15CD554228C396C028
            452B0DD40AD34D30125A162531316B09134534312D455D35B6D228652BCAAC48
            DD141FB1B59A65BAF8E8E103DDFE47FE13C7C3DCEFBD5F077EDCB9F3CD9D7BEE
            993333E7CC9713541D0DD2903CD00F74075D4137108213A09ED4823F527D416E
            8ACF3D041E03C3C06D71DAFE0E6A4015D80CFE4EE645394958B03578118C07BD
            63B46BBCD6AF5F4E8135E00DF07326157C1C54829B54DD15F009F812EC0507C1
            797015B4E1B0DF0D8A68F136EA5969F3325890AE82CDF9C563559D28F326A806
            BF25687D51AE044C070FA8FA6FC013E0682A0AB6075F815EBC17DF990DDE8AE3
            06B7837D31DA8CE10716F2FE12B81F7CED6B1C467422C3B35F29F711E81947B9
            D1F42BB1F017A07344BBADF4E1256A94C410A392B1E03150C0F24A30C9FC2E33
            F83267A5B3DC59B32AAC024FC719FA32B048DDDF010EC7B3E04EA5DC62A35C6B
            5AE77DB009AC677D33CF92D53901DF7CDD7C8458B2552C05A782E12CD7F00BB5
            C8300C51F763F9D5327BCBCD52536E9E2DB42F57965EACFC7E79D410DF084ED3
            1A72BD85C3A8A50FF851DD5FA6A51A783F82D6FF1CD499673B80739E3E036590
            A12C17BB49A32DF81A950B68765F4707B8A6ED6107C54A3991CFB82CD5799E3D
            1D43B980CB8D9377AC053BAAFD721FF75727B3C040B0166C0B9A569682292CDF
            07763B0B96AA462FA9F2B360217792ADC6FFD2951E60B0A97BC5CC87FF867882
            5A5EAA55A362D3C15D1954B0C0D3DF49354AB294E58A826DD5976C320FCC0747
            B8777EAA7D230322136999A77EBB0AE54A7239736E50FE672785EC2637336CCA
            86D4A872FF9081A656282AA6CB96FCA05686AE21A360B769EF570D9BD1370705
            D9975F79ED98CB0539E022FA27CB6DB9A5F5E5FD30FA4C5388EC4617B94A3871
            7AE48726FA75E54E4A3991914D68ADE7C1E4A870D025382EA8747BA5CCDCB7F9
            6592F4AC68420565EF7FC4938C5DB3A428789C372DB8D7EA45BA0B2D793CCB3E
            E822A186D0BCBCAF69D8F03F4C903E2AF7A90FE9FC57587167C443DDB2A8E070
            55AE0D69A53DACB0BE203EB903FCC2C837CCA022B27C3DA336092725BC5E90E8
            C8BDF05D5E7B724971D2456561659ECED291290C4EF3545DBECA20B7807F9C82
            1B4C18EEA48E33F80893F68B1954F005702B38A3EA2AD4282DB111F53A8655CE
            CCBBB23C39DAA949594FE5AFF3A9329327C49227C134158127220322721227AB
            5579922F6992057B8E4A70AA223A7A941F2043F05482CA4D04DF838D11BF4B90
            FC30CB1FF248C59BD5BDCAE30837A3E7793AFB89334CE490F9ED39A6A236D0AD
            650EBD39E283E7B3FC1718172F716FC9FC249FF70B4C1AE072983CCF095523AF
            6B54941E4B2698A1BD077C1B2F71BFC0DCC34514B31949B732C768BEE3B3520E
            FDDC0494AB30CA8DB7CAC53B3C9283C9DDCC67036E8933CD92948ADCCB40A4C8
            9CEB54277378E47C4DF6C50F5492B39EB9EF441E8324230F82F7984F1729DF1C
            14A55C320798333C5BDD193AFD770C6E4FF088AE917EDC81D61AC823B742D367
            2517EB8C9CB0065C3867720D6CE7F9BD5129D822625BBCCA6DB552EDFF1953D0
            EE97A58CB4F3137846DCE2632A772C9997E5A4F937440F26DF054C4D5BAA04EC
            1427D6611E6AA624FF0A300075BC0FB53BF898510000000049454E44AE426082}
          Transparent = True
          TabOrder = 5
          OnClick = bitbtn10Click
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
        object ptampapreco: TFlatPanel
          Left = 688
          Top = 136
          Width = 777
          Height = 229
          ParentColor = True
          ColorHighLight = clBtnFace
          ColorShadow = clBtnFace
          TabOrder = 2
          object Label38: TLabel
            Left = 8
            Top = 16
            Width = 198
            Height = 13
            Caption = 'Produto sem C'#225'lculo de pre'#231'o!'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object bitbtn7: TAdvGlowButton
            Left = 8
            Top = 40
            Width = 201
            Height = 43
            Caption = 'F5 | Criar...'
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
              89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
              6D0000001974455874536F6674776172650041646F626520496D616765526561
              647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
              000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
              4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
              6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
              786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
              362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
              2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
              3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
              7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
              626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
              62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
              74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
              6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
              7861702F312E302F73547970652F5265736F75726365526566232220786D703A
              43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
              202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
              702E6969643A4537304138323844453238323131453242303344424236433142
              3842344633312220786D704D4D3A446F63756D656E7449443D22786D702E6469
              643A453730413832384545323832313145324230334442423643314238423446
              3331223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
              7374616E636549443D22786D702E6969643A4537304138323842453238323131
              453242303344424236433142384234463331222073745265663A646F63756D65
              6E7449443D22786D702E6469643A453730413832384345323832313145324230
              3344424236433142384234463331222F3E203C2F7264663A4465736372697074
              696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
              7061636B657420656E643D2272223F3ECAD1B95E000004984944415478DAB499
              7D904F5518C77FBFDB866435A108B109B52A1B8668C8AA6824A4DA905965A751
              AAF1D68861A6D218BD516A62C51F1BD39651B2BD8CDE8C65F4C2842676D56498
              D192F23686959746DBF731DF639E39737FF79E737FEB3BF3993DF7FECE3DF7B9
              E7E5799E73369DAAD89DCA429783AEA03D680BAE050138006A48353894F40539
              099FBB173C0CFA810E3175FF061B4105580DFEF17951DAA3071B8367C1187043
              44BDBAF3ED86EB30781F2C007BEBD3C051E06D7095BA770EAC053F80EDE03770
              02FC077239ECDD4077F678AE7A56EACC04AF666B60037E7191BA27C6BC05D680
              BF1C7B5F8C2B0413C1DDEAFE4F6034D89DC4C0666013E8C46B993BD3C13BA9EC
              348C1F98C7EBB3E00EB039AC7290A111199E2A65DC57A0A38371F25CBB983A9F
              710E2F52A3241D31C8C7C0EFC1352C9781C1741D719A065E70A827BDF634179D
              D1D7AA43220D5C0FDAB0FC2628F118BE915CE5AE7A038C53D7D293974519F824
              E8CFB2F8AEA91E2F1327DD02348C7143B6DE63479879BF34938157A8397604DC
              E539F9F54A7FD0F359E988EF589611B82DCCC0D7C0252C4BB7FFEBF99211AAFC
              5082D53D5A9597D906CAD08C677907F8DCB37119DEBEEABA9BE7308BF6817759
              96677B6903EF57156724F8FAB085519CA09DE7ADF570C1C062F5156BAC08E0A2
              C743EE8D737CB6A92A1F54A327C9484E0E2BF4E1CD4FAC876F62BCBC9EA9539D
              F5BBC4D446FCDD566BF0333819E22DD24CCFFE604CDEA07EFB060C652A5798C3
              B973A99A7F29CB2FBDC878DC3BC190DD1AF19BE4882F59C619F7665410F04B8C
              7E0D69A8928EFBF554FD491CF4D58C1EB67E0147596E1B70059AF05315D1E873
              E076F07B1686C9900EB0425C98FE34DE255031F738A88D79F047BA80C5098C2B
              63AC5DEF50D7D8D124B0B2DFB4E3CB263045AA75A87B1A0C644C3FEBF951E940
              6529B976A08ED1461579A224EF5897603376BE27E5E1FDBC90209FEFD1C874C7
              0F6AC0D5EAA356FC7B541B28BAD9A391C7B28C349994AFF63E3501B38873BCD1
              C5B111F9901B43EE3F039E08B99FA782419CFAAB7275409FB38537863B3662C7
              D95DDC142D044B68CCCE886C254A856A71559A1054CEBF1DB9198FD33DAA5C0A
              3A5B116113C3E4820CCF64521395577E0A4E19033FB2BC7C9464680B18D81F00
              4F45D49D02EE6312D2D9A450119AADE2F6227BDBF92137E8A69B37647019DF32
              35EFE7E8078D87300EBAAF9AF35A57AA1057637687819576EB7D42A617953221
              ADF5589967382FE731FB09D372552E094BF9C561CF52ABAE22A49153E0E32C62
              F12AA65FB666702A88BEE4914AE8AE6E2E8F23CC8A9E93BAF89279FC32CB62FC
              2371FB621D63A5475FB988C615B357B50F3C1667E069A655B52AA42DF38CD32E
              9A6DCD3B89365B5D8F3E76D0951CE1F5583AE3A27A30AC170DD11BA421E0039F
              B319D11EC6C52F782D59F54A66D86379A0E92339DF59C153ACEE2694819ED646
              2DD101E66430DFFA20992B72A4BB8D874D077844574757D29CBDD583476E7956
              9B72203A29DB034CAD768C0C8FD2A9DAAA530636541B317B17584EE3B63865AC
              094EF94DBC94CDFE9DBC8E53253748E50C7BEE297596FF86B80EDCC2F9D95245
              0949ED0F33D794C5B53DE90BFE1760005B13F0D2052C57FC0000000049454E44
              AE426082}
            Transparent = True
            TabOrder = 0
            OnClick = BitBtn7Click
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
      end
    end
    object PageSheet8: TPageSheet
      Left = 0
      Top = 21
      Width = 845
      Height = 224
      Caption = 'Foto'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 2
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object PFOTO: TPanel
        Left = 0
        Top = 0
        Width = 845
        Height = 224
        Align = alClient
        BevelOuter = bvNone
        Color = 15461355
        ParentBackground = False
        TabOrder = 0
        object Label48: TLabel
          Left = 32
          Top = 96
          Width = 127
          Height = 23
          Caption = 'Sem Imagem'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton1: TSpeedButton
          Left = 211
          Top = 11
          Width = 30
          Height = 24
          Hint = 'Inserir imagem de um arquivo'
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000010000000801000210
            0300031905000521070006280900072F0B00083B0D0009490F000A5411000B60
            13000B6914000B7015000C7616000C7A16000C7D17000C7F17000C8117000C82
            17000C8317000C8317000C8417000C8417000C8417000C8417000C8418000C84
            18000C8418000C8418000C8418000C8318000C8318000C8218000C8118000D80
            18000D7E18000E7C19000F79190010741A00116F1B0014691C0016601E001959
            20001D502200204924002245260025412800283D2A002A392C002D352E003131
            3100323232003333330034343400353535003636360037373700383838003939
            39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
            4100424242004343430044444400454545004646460047474700484848004949
            49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
            5100525252005353530054545400555555005656560057575700585858005959
            59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
            6100626262006363630064646400656565006666660067676700686868006969
            69006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F006F7B8000787E
            9600817FAA009176BF00A566D100C247E400E61EF500F60AFC00FC03FE00FE01
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE01FE00FD02FE00FC03FE00FA05FE00F809FE00F310FD00EC1B
            FB00E12CF800D242F300BE62EC00AD7EE300A48FDB00A296D300A19ECA00A1A6
            BF00A2AEB300ABABAB00AFB0B100B2B6B600B6BBBB00B9BFC000BCC3C400C2CA
            CB00C7D0D100CDDBDD00D0E6E900D3EFF200D4F3F700D5F5FA00D6F6FB00D8F7
            FB00D6F7FC00D4F7FC00D1F7FC00CEF7FC00CAF6FD00C3F6FC00BAF6FC00B6F7
            FD00B1F7FC00ACF7FC00A9F7FC00A5F7FC00A2F7FD009FF6FD009EF4FD009DF3
            FC009BF1FC0099F0FC0095EEFC0092EBFB008FE9FB008CE7FB0089E5FB0086E3
            FB0084E1FA0080DEF9007BDCFA0079DAF90077DAF90074D8F90072D6F8006DD2
            F60066CDF2005EC7EB0058C3E70050BEE1004BBBDD0048B9D90046B8D40046BA
            CB0046BDC10047C0B70047C4AB004BCC980049CD890046CC80003FC679003DC3
            74003BC2740038BF730035BC730030B872002CB27D0028AD8B0022A698001A9D
            AA001396B6000D92B9000A8FBC00088EBD00078DBE00078DBE00078DBE00078D
            BE00078DBE00078DBE00078DBD00078DBD00078DBC00078DBB008AFBFBFBFBFB
            FBFBFBFBFBFBFBFB8A8AFBF1DBD2DADADADADADADADAE0FB8A8AFBDEE0CAD8D8
            D9D8D8D8D8D9DFD3FB8AFBD8FBC3D4D4D4D4D4D4D4D4DFC3FB8AFBD4F2CBCDD1
            D1D1D1D1D1D1DFC2FB8AFBD1DFDCC3CECECECECECE1ADEC1DAFBFBCFD6F1B9BE
            BEBEBEBE1AEC1AB9B8FBFBCCCCF2FBFBFBFBFB1AE7E5E91AFBFBFBC8C7C7C8C7
            C7C81AE7E6E6E5E91A8AFBB9C6C6C6C6C61A1A1A1AE6E71A1A1A8AFBB9C5C5C5
            FFDFDFDF1AE7EC1A8A8A8A8AFBFBFBFB8A8A8A8A1AE81A8A8A8A8A8A8A8A8A8A
            8A8A8A1AEDED1A8A8A8A8A8A8A8A8A8A8A8A8A1AED1A8A8A8A8A8A8A8A8A8A8A
            8A1A1A1A1A8A8A8A8A8A8A8A8A8A8A1A1A1A1A8A8A8A8A8A8A8A}
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Left = 211
          Top = 35
          Width = 30
          Height = 24
          Hint = 'Inserir imagem de uma webcan'
          Glyph.Data = {
            5E040000424D5E04000000000000360000002800000012000000130000000100
            1800000000002804000000000000000000000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FF5A7B9C5A7B
            9C5A7B9C5A7B9C5A7B9C5A7B9C5A7B9C5A7B9C5A7B9C5A7B9C5A7B9C5A7B9CFF
            00FFFF00FFFF00FF0000FF00FFFF00FFFF00FF75B2DE85B9DF8ADEF5BFECF9FF
            FFFFC4EEFA96E3F36CBFEE5AA9EF4E79C25A7B9C5A7B9CFF00FFFF00FFFF00FF
            0000FF00FFFF00FFFF00FFFF00FFF7F0E9B3DBE74BC0ECE3F6FF96E3F36FCBEE
            58A8EF4E79C25374ACDBE7E9FF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF
            FF00FFFF00FFFF00FFDCD6D1A7A7A7A0A0A09C9C9CA0A0A0A6A6A6ADADADF3EC
            E7FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFF1E9E4C7C3
            C0A8A8A8B3B3B3B8B8B8BBBBBBB5B5B5ADADADA5A5A5A8A8A8F1E9E4FF00FFFF
            00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFC8C4C1B9B9B9D1D1D1D4D4D4D6
            D6D6D1D1D1CCCCCCC5C5C5BDBDBDACACACC7C3C0FF00FFFF00FFFF00FFFF00FF
            0000FF00FFFF00FFE7E1DCB7B7B7DADADAE8E8E8EAEAEAECECECEBEBEBE4E4E4
            DADADAC8C8C8BCBCBCA4A4A4DCD6D1FF00FFFF00FFFF00FF0000FF00FFFF00FF
            B9B7B68B8B8B7F7F7FB4B2B1E2E0DFF5F5F5F3F3F3F0F0F0E9E9E9D9D9D9C4C4
            C4ACACACC0BDBAFF00FFFF00FFFF00FF0000FF00FFFF00FF8181819A69549D6E
            5BAC9761B5B2B0FCFCFCFBFBFBF6F6F6F1F1F1E7E7E7D3D3D3B8B8B8A0A0A0FF
            00FFFF00FFFF00FF0000FF00FFFF00FF787878B17813EBB2009D6E5BA4A2A1FF
            FFFFFFFFFFFCFCFCF5F5F5EDEDEDDADADAC2C2C29C9C9CFF00FFFF00FFFF00FF
            0000FF00FFFF00FF767676FFFFFFC39C2A997740B4B1AFFFFFFFFFFFFFFFFFFF
            F7F7F7F0F0F0E2E2E2C3C3C3A1A1A1FF00FFFF00FFFF00FF0000FF00FFFF00FF
            BFBDBB8D8D8D949494B6B4B3E3E1E0FFFFFFFFFFFFFFFFFFF9F9F9F1F1F1E6E6
            E6C1C1C1C0BDBAFF00FFFF00FFFF00FF0000FF00FFFF00FFE9E3DEDADADAFAFA
            FAFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6F6F6EFEFEFE6E6E6B1B1B1DCD6D1FF
            00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFE2DEDBE8E8E8FBFBFBFEFEFEFF
            FFFFFEFEFEF9F9F9F1F1F1EAEAEAC5C5C5C7C3C0FF00FFFF00FFFF00FFFF00FF
            0000FF00FFFF00FFFF00FFF5EDE8E6E2DFE3E3E3ECECECF3F3F3F5F5F5EAEAEA
            D4D4D4B6B6B6C7C3C0F1E9E4FF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF
            FF00FFFF00FFFF00FFEBE5E0DAD7D4CCCBCAC5C5C5C9C8C7CDCAC7DDD7D2FF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            0000}
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton2Click
        end
        object SpeedButton3: TSpeedButton
          Left = 211
          Top = 59
          Width = 30
          Height = 24
          Hint = 'Inserir imagem de uma webcan'
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000000000000000000000010000000100000005F0000005
            F1000005F2000005F2000005F1000005EF000005EC000005E7000005E3000005
            DF000005DC000005D8000005D4000005D0000005CD000005C8000005C1000005
            BA000005B7000005B7000005B7000005B6000005B6000005B6000005B6000005
            B6000005B5000005B5000005B4000005B3000106B0000206AD000307A6000509
            9D00070B94000A0D8B000D10800010137400151766001A1B56001C1E50001F20
            49002223420025263B00292934002D2D2D002E2E2E002F2F2F00303030003131
            3100323232003333330034343400353535003636360037373700383838003939
            39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
            4100424242004343430044444400454545004646460047474700484848004949
            49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
            5100525252005353530054545400555555005656560057575700585858005959
            59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
            6100626262006363630064646400656565006666660067676700686868006969
            69006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F00707070007171
            7100727272007373730074747400757575007676760077777700787878007979
            79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F7F00808080008181
            8100828282008383830084848400858585008686860087878700888888008989
            89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
            9100929292009393930094949400959595009696960097979700989898009999
            99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
            A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
            A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
            B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
            B900BABABA00BBBBBB00BCBCBC00BDBDBD00BEBEBE00BFBFBF00C0C0C000C1C1
            C100C2C2C200C3C3C300C4C4C400C5C5C500C6C6C600C7C7C700C8C8C800C9C9
            C900CACACA00D1B2D100D994D900E46CE400F139F100F917F900FD07FD00FE01
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00E9E9E9E9E9E9
            E9E9E9E9E9E9E9E91212E91212E9E9E9E9E9E9E9E9E9E91212E9E9121212E9E9
            E9E9E9E9E9E91212E9E9E912151212E9E9E9E9E9E91212E9E9E9E9E90B111212
            E9E9E9E91212E9E9E9E9E9E9E9E9121215E9151212E9E9E9E9E9E9E9E9E9E915
            0F0F0E1CE9E9E9E9E9E9E9E9E9E9E9E910100BE9E9E9E9E9E9E9E9E9E9E9E915
            0B0E0B07E9E9E9E9E9E9E9E9E9E9080B0CE9E90805E9E9E9E9E9E9E9E9030B05
            E9E9E9E90303E9E9E9E9E9E9030303E9E9E9E9E9E90303E9E9E9E9030303E9E9
            E9E9E9E9E9E9E903E9E9030303E9E9E9E9E9E9E9E9E9E9E9E9E90303E9E9E9E9
            E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9}
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton3Click
        end
        object Label45: TLabel
          Left = 248
          Top = 16
          Width = 137
          Height = 13
          Caption = 'Inserir atrav'#233' de um arquivo'
        end
        object Label46: TLabel
          Left = 248
          Top = 40
          Width = 134
          Height = 13
          Caption = 'Capturar por uma Web Cam'
        end
        object Label47: TLabel
          Left = 248
          Top = 64
          Width = 31
          Height = 13
          Caption = 'Excluir'
        end
        object Image2: TImage
          Left = 5
          Top = 5
          Width = 190
          Height = 190
          Stretch = True
        end
      end
    end
    object PageSheet1: TPageSheet
      Left = 0
      Top = 21
      Width = 845
      Height = 224
      Caption = 'Observa'#231#245'es'
      Color = 15461355
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 3
      ParentColor = False
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object dbmemo1: TDBRichEdit
        Left = 8
        Top = 8
        Width = 761
        Height = 209
        DataField = 'APLICACAO'
        DataSource = dsproduto2
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
    object PageSheet2: TPageSheet
      Left = 0
      Top = 21
      Width = 845
      Height = 224
      Caption = 'Movimento'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 4
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object graf_venda: TChart
        Left = 0
        Top = 0
        Width = 845
        Height = 118
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Legend.Visible = False
        Title.Text.Strings = (
          'V E N D A S')
        View3D = False
        Align = alTop
        TabOrder = 0
        ColorPaletteIndex = 13
        object Series1: TBarSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Style = smsValue
          Marks.Visible = True
          SeriesColor = clRed
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
        end
      end
      object Chart1: TChart
        Left = 0
        Top = 118
        Width = 845
        Height = 117
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Legend.Visible = False
        Title.Text.Strings = (
          'C O M P R A S')
        View3D = False
        Align = alTop
        TabOrder = 1
        ColorPaletteIndex = 13
        object BarSeries1: TBarSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Style = smsValue
          Marks.Visible = True
          SeriesColor = clRed
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
        end
      end
    end
    object pggrade1: TPageSheet
      Left = 0
      Top = 21
      Width = 845
      Height = 224
      Caption = 'Lote'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 5
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 845
        Height = 224
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Lote'
        Color = 15461355
        ParentBackground = False
        TabOrder = 0
        object wwDBGrid2: TwwDBGrid
          Left = 136
          Top = 6
          Width = 361
          Height = 217
          Selected.Strings = (
            'CODPRODUTO'#9'6'#9'CODPRODUTO'
            'CODIGO'#9'6'#9'CODIGO'
            'ESTOQUE'#9'9'#9'ESTOQUE')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 1
          ShowHorzScrollBar = True
          DataSource = dsgrade_produto
          KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
        end
        object DBCheckBox1: TDBCheckBox
          Left = 16
          Top = 16
          Width = 105
          Height = 17
          Caption = 'Utilizar Lote'
          DataField = 'USA_LOTE'
          DataSource = dsproduto2
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 776
    Top = -8
    Width = 9
    Height = 12
    Caption = 'Panel1'
    TabOrder = 19
    Visible = False
    object blocaliquota: TBitBtn
      Left = 85
      Top = 20
      Width = 25
      Height = 21
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
        9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
        C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
        A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
        E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
        F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
        DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
        F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
        D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
        F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
        DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
        F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
        E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 0
      OnClick = blocaliquotaClick
    end
    object ealiquota: TDBEdit
      Left = 41
      Top = 20
      Width = 43
      Height = 21
      DataField = 'CODALIQUOTA'
      DataSource = dsproduto2
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnEnter = DBEdit1Enter
      OnExit = ealiquotaExit
      OnKeyPress = ealiquotaKeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 464
    Width = 845
    Height = 48
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 20
    object bfornecedor_codigo: TAdvGlowButton
      Left = 713
      Top = 2
      Width = 46
      Height = 43
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
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
        362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
        6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
        7861702F312E302F73547970652F5265736F75726365526566232220786D703A
        43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
        202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
        702E6969643A3144464332423543453238333131453239393630384541364638
        3433363142462220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A314446433242354445323833313145323939363038454136463834333631
        4246223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3144464332423541453238333131
        453239393630384541364638343336314246222073745265663A646F63756D65
        6E7449443D22786D702E6469643A314446433242354245323833313145323939
        3630384541364638343336314246222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3EEDD5B3DF000005104944415478DABC99
        796C555510C6EF7B7D2D8B4005C402B21411942D5628881142404C8D62882248
        0DD5942565492CFF902628C1989A08213624EC04459020824B21B14189845024
        8D10A26193B01B0165B748A1F5B57C43BE8393D3BBBDF70A93FC726FCFBDE7DC
        7967E6CC99398D38DF9D709294C7C10830106483CE24022E823FC11FE037B013
        1C4CE623B104DF6F01C683B7C10B3EEF6581FE56DB7EB009AC037F85FD602481
        192C01B341479767C7C955D000324157D00FA459EFD68055601EA86E0A059F05
        CBC133AAED02D801CAC13E70DAA3AF98BC2F184777E8638DF12ED89C8A823263
        65EAEF4BA094335093844B897BCC0539AA6D2598EED521EA33D8479672A2542F
        B03849E51CCE965862BE6A2B02DF24AAE062FE52873E358E035D739A463E0483
        B8CA455EE34A0F65E2699C2D917FB95AABAC77C4440BB95A33F8231A8FED3871
        8EB11E2C7179A73DD8C5C524F22998E2A7E040860323E2D4475D065E0BDE4922
        A4C55DDAD3C149D0857FCF002BBC4CBC49DDBFE9A19CC83FBCAEA35FF671A137
        28E07B577C14AF03A3D5DFCB406BB7403D0B3CA156D6573E839A9938C3F8E71D
        25FEF7633FF99D3F663DFBACA5DFDF9B41D92116A8403A3DA4D95A073CCF0AA9
        A0C817DC16455E0703B482E24F0FF1FE8304FCEA4AC0F3D3D64C06895E20C5DA
        C41379BD65C53E2F69CEEB10F00A68E6F24EAD0AC8E92115DC4772C104303346
        338C50ABB32EC440B7781D4382B7D4706616590A3EA3FBBC240AE6A987E52107
        29A5926DF961A11D577E3D58CDB60867720BDBC348A5BA1F237150069BAA72BC
        5329EC100DF4CBF629EE3412177B48108FA995F637381BD0B110BCC8142AAACC
        56CFD97438939BD91651F1364E2A184EFCA48A0A7614051F63E3AF1E915ECB58
        12246F04F863908217796D2B0A76B076073F39C6EBFB2AA83A9CD12C15156EF3
        23F5CAF405F4DDE321BE6312D996B18018D5DBDA0E4D362D59CD3965E238FDC6
        9634356B2613EA0E9EB2B63AAFA4341255D3D9CA7AB88C5BD01185D95B9770E0
        FF4803B32047CD70837A5EA7B299026B4C99D1F7AC6F1B5D6ECA0C9E6712D9CF
        8A57E3793DC705D48CA6ABE57D06434D4FD0868B6735FB98D0758A7DCD4CDD66
        D036813D9BAE91CF04D9510BEDAEA562AAC29274A71B1300B3AA1F016F3167F3
        2BA63E06975DB6C0C280BE336829BBCA1B6CEA1631F11ECBE71C6B83CF0870E8
        749784C0DC3F1CD0B7954B5FF1D1274DB5280AFEA01EE625513BA78548B71279
        3E54DD6F8FB22E3029FD54977AE57C12194D4455817E72DDC3EC26546D35B3F3
        25EBDF4C95389A9DE1133A7BCC231B1EE2624E9327967102A21E496F5FDE3FCA
        6B2F95B8C86E54633EBA062CA2B9CAA860059D7C24099243EAFE28FBE49220F9
        91D7CFADCAF2DEAC54B3562DE5463F074C06DBA8747D800FDEE00FD205FF762E
        B07840DF5A6651F2839E63FB4FCC0B1B55751754F2F03CF8D9793092C9306516
        5C27EAD2C837F2D5FD0E06D20721954AB912A39C9B823B695E53481D5095DEFD
        90345AC91CD57DCB0301DFA30F592C1BD4CA145F18761F94CBE62181F1BB83AC
        E6429DCD4C52C71FE21FBBADBD325599C695FEB432716EA2A75B45965273194A
        F213A8D26CC9E36A5FA5120639CD18CEC09CD401E6285659DD549B04DFAF590C
        1DE6C9AAD73E2D59D2AB345F8E559616EB7398548E805B72368BB878ECECF717
        A66537B8F1B760B8CA61C8705CCE804A54E6D42467D4E628A39029D88004CD2B
        3F6023CD7B2C6CA7480AFF8690A3BA97A96867D63619AA16BE4AA52463FE1EEC
        F5F2333FB923C000A73638423EC126BC0000000049454E44AE426082}
      Transparent = True
      TabOrder = 12
      OnClick = bfornecedor_codigoClick
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
    object bincluir: TAdvGlowButton
      Left = 3
      Top = 2
      Width = 79
      Height = 43
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
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
        362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
        6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
        7861702F312E302F73547970652F5265736F75726365526566232220786D703A
        43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
        202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
        702E6969643A4342304246463045453238323131453242383546434630383142
        4335303344322220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A434230424646304645323832313145324238354643463038314243353033
        4432223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A4342304246463043453238323131
        453242383546434630383142433530334432222073745265663A646F63756D65
        6E7449443D22786D702E6469643A434230424646304445323832313145324238
        3546434630383142433530334432222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E08842097000003F24944415478DACC99
        79884D7114C7EF3CCF3EC89691C11031D610118322658929EBC4107FA094B590
        ADA628D4D88A923F2C19593396063519EB64198A88923F64DFF7A5193CDF337D
        6F1DD7DCFDBD9E539FE6BCFBEEFBDD737FBFF33BBF73CEA418850F8D10521774
        03AD413A680922E039784CEE82D7411F100DF8BB116002C8026D5DEE7D092E82
        4270147CF3F3A0141F3358072C0293410787FB6295E3562D6FC05EB0093C8AA7
        8193C016D0545DFB058A4129B80DEE83CF343095CBDE03F4E48CD753BFFD0D96
        8175610DAC010AC038754D8CD90C8AC00B8FB32FC60D0673C15075FD3AC8010F
        8318D8085C01EDF9597C6731D86A8493D17CC10C7E2EA72F5FABEAE688CD20B2
        3C779471A741BB381827729C3EBC4DADD25530CC8F81974173EA3BC170868E78
        89CCDA1C6E3A53CEA8097134F01C68417D239861244E3680E9EAB3B8546D2703
        678341D425762D34122FBB3811A6DFEFB0DB240DC05B508D7F65892B7C3CA833
        4F1291EFE0BC4F4365420650EF4BBFFCEB24594FE30C4E7B85CF07E481B12A46
        FA3DA57278349AB39AA997B80998495D76EF89004BF556E94F03FCFE09D84EBD
        23E8A30DCC56372E09E84B31CB49114456297D96363057BD4591913C79054E52
        9F286E2206D607FD78F188917C39A352B9C111EE9CEACAFF922D1795DE3DC244
        D3947B2106FEA8F48A10E3DC02EFA8A74755EC2A7799C17E9CF65815DFFD049D
        2CD9CB1097DC508ED31F36DF3D63D06E125567EE27F0C5C1C0530CE65E248DB9
        A293B47348B34C3B5223EA0D632E03BE8FB3AFFDF29250475496529F69BD9D34
        8CB381D55C8AB1CA998CAAA85F9311FCBA43A1946A1384CB99CC8E5485D214DE
        1BF92749763F6DD2F8F75DD472631707034B5D6664A432F093071FB4934EAAF6
        792C6F7749F943E7104BA63750F510E30C52FADD08634E192F8CF90F02B569A0
        84A012D33F0AD4D6CF4AA271E2E3E3A91F93BCD234F090BA293F8906E6A94DB5
        4D673352DF1EA0DE1B0C0C30788A8DEE551AAA124312D70BD69A6481D2770778
        409AA56CF52B7B943EA3AAE69104ECE5600D8BEA424B22EB26F94C95626C81F8
        91A560943A528B9D3A0BD7B8CC22ABC1CA04FB9DD43187A97F6576F5C1A92E1E
        A80EEB15606D028DCB55C69921E6835BE12EF1A7BFEAE32DA14FD64EC08ED57E
        276DBD1B5E5B1FD2C1EAA62AB5A9E0818A5161A40F0D59653926F7F9E9CD18CC
        D532551123ED9083E02C0DAEE3D330E9EFEC6741DED33CCAE8EF4541DA6F5AE6
        7397EA17125F9196EE4D66C7CFE916B28B6B81C69CAD5E6CB96558C69486E83C
        F7E0EABD05DC8AB1729A4D6E185306D6B44918E4BBBD34AECC5BF4F7DFE537CF
        CB6CD61D753DFCA68431B280B5B78FE329DCBF21DA80AEF4CF665C5A33817DC3
        5CF301375D20F923C000A422DEAC6EFE30D60000000049454E44AE426082}
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
      Left = 84
      Top = 2
      Width = 81
      Height = 43
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
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
        362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
        6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
        7861702F312E302F73547970652F5265736F75726365526566232220786D703A
        43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
        202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
        702E6969643A3642383743374531453238333131453239303732384137383943
        3137333842442220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A364238374337453245323833313145323930373238413738394331373338
        4244223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3642383743374446453238333131
        453239303732384137383943313733384244222073745265663A646F63756D65
        6E7449443D22786D702E6469643A364238374337453045323833313145323930
        3732384137383943313733384244222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E1034B6250000047A4944415478DABC99
        7768145110C6F78EC46E2C88150D2A362CD8221A4B0C0AD1288868C48A15BB88
        8A0A8A151BFA8F8AC4A020626F68EC2562D758C0AEB1F758A2B18BDDF80D7C0B
        C372656F7793811F79BB77F776F6BDA92F3E23FDA1E1428A8326A035A806CA00
        3FF8085E830BE01278E7F401510E7E5314F400CD412B10077C21BE7F079CA6A2
        FBC1CB481EE68B60052B82816008A81DE0F31FE037C803D17C11ABBC005BC16A
        70D74B0553C0525059DD7B05B24026B80C9E800FE00FB7BA2A680CE2413D505D
        FDF60B9809D2F8628E159407AD023DD5BD1B603938061ED95CFD0AA02D180B12
        D4FDF3A02F78EC44C1BA601B68C86B31F419DCA20F0E6DBE30E80266AB79DF80
        5EE054A01FF8834C241EB95B4D7298CE90E64239919F6027B77DAD5ADDBD8C04
        B61414DBC9508E20069D4C1BF34ABE82C1602AAF63E8E1CDEC28B8522927B636
        1CFC33F2471683091C97029B4189500A8EA58D18DCE2F146FECB522A2A520B2C
        0AE624B1F4D0920CA6627FEF8D8293B3B44D91F6E0A47505A7533983CBEEA572
        352D3134900C037F399E65DDE28A4C5F2207195EBC10512A95E9EE0AE81FE2BB
        5974489144D3D44C054783B21CAFF170E5BA8251CCF9E5C17A6E5F3059A6762E
        592BD8446589BD1E285696797B1357504BFB3085C5258E3B8A67CB9B55022D79
        F30483A91B290DF6B1D26901C630DF4E64D6D864C3599218EA5A4671F5CAA937
        7023120976A91D19CD9A713003FD55702FCC1C875848886E6DA2543A932AE496
        0BE5C4D1F6804696FBB2D539608ACD796E72A5AB8893F93930EB39A7E9AC168B
        D246013ECBE696DB95EFC00CCE45A36833229F1D1602CDB97295027CF6809E7C
        37C23973B58266B99EE740B9A64C8981947BC45071DFC1BCA62E3EB3C1319845
        622298248E1548E5207694E8503943C5E41F7E765F663354CDE60462F8C7E918
        563907DA81670E952BA4DA836F7EBEADC146A7A1CD493A307C5845E268379745
        6D5DB52B6FFD6C78CCF452C7E6245296A55BEE1D009DDDF4C094242E96C81951
        F039B8C81B09617ADC12DC3EF1F8EE2C300DF6295DC2756836A50DFF4AC8CB34
        73F135E5955DC378ADD4690B793D14F4A14D7A21B14C8F06DB8E5C534169863E
        29070826F13487387A9A04D52D1EE46F53C629C73B62ADA837807E1C77664EB4
        4A79E6C81CA6462FA506ABA9623CD39162234F57D4F3C12F8E570439BAC8613B
        E0B572E6338B713CCF0CD67E4B453B5795E8A905D88F4CE6AE896CD4B9DBDAD5
        CD67D2171904E61480727D55572755CCA4707DF1701E0C19ACCB16E5A3720368
        FB064FC652A8644805EF305364F37A2AE35D690F15F373B7D6A9B8DB4FED5ED8
        B3992C06E217BCEECD93A81ECC956E03F151304D95797278B43D92C32383CD4B
        BCD940330DEEE04152775571D83DD5EAC48C739A958EC86D8EB7BB39C094B837
        022CB09463F7F8800CF61A4F59BAE53125CA215403A6CF66966A5BBEB384CE91
        EBE600538B745923B9DDD602F517B3CA67A5A0C4B42296EF7D649191AADA4BC3
        2B05F5D96132CFF312B852E1CAF793AC1365B5AF47F2309FCB7F435465835D9F
        C767D1AA43FCC29E24C346AB1954FE0B3000BD1B0776D96B9729000000004945
        4E44AE426082}
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
      Left = 167
      Top = 2
      Width = 81
      Height = 43
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
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
        362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
        6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
        7861702F312E302F73547970652F5265736F75726365526566232220786D703A
        43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
        202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
        702E6969643A4644343533433243453238323131453242344331443034363931
        3045383637372220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A464434353343324445323832313145324234433144303436393130453836
        3737223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A4644343533433241453238323131
        453242344331443034363931304538363737222073745265663A646F63756D65
        6E7449443D22786D702E6469643A464434353343324245323832313145324234
        4331443034363931304538363737222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E2110B5B80000050D4944415478DABC59
        696C155514BE335D28962AC6052235A0C604A46AEA1F374CDCE3DE1F6A03C6A8
        7157143762503451A3311AF7251A445C7E10A88AC4041AA22422C1A2922A6E18
        431529B860C0584B8B7DBC19BFD37EB73DBDCEBC37336FF4245FEF9DFB66EE7C
        73CEB9F79E73EA99E55D26A31C09CC008E070E058E000E017C6007F003F013D0
        097C047C95E5255E4A826381EB810B813362EF0A8767D7F229F01EB008F8E5BF
        207807300F385831D90C321B8DE76F407F1306BA715D34555EA309C3E92630C7
        E10D4D189FAEE6F91B7812780CE8C983A0987101308DD7BD78EC75638A4BF0F4
        3AE3414D82C0F74C18D49920F04D5D4D3F0602532882B7A8D13B167F5A81AB81
        899CE737E0666059A997FB65C8DD03AC55E41E062683DCAD26AC05B903F1EEFA
        EB4C716F0872017EEB33BEDF6B068A45530843106F8176E5B98DC0FCA167CD9C
        C1FB8C9900BC033C9F55832F00B3D95F07CC1A34E1A008975A68073003CDC62B
        E003FCBE21EF0BE981DE18603DAEBB479C7258F6055EA15645560017A421F822
        D52FF292EA5F3CB4503CD8AE48A255DB416EA743C22E8F09A37DD65401BB8177
        793D9F5611791F38DB25521D41EE6E45E811E03E6E1F1F8C983AA477F8CEB24D
        2C9F001771FE9D54C259007CDB5C554A8347035FB22F0BE3066E2D3D311F5389
        FC0A4CA2196E039EE1F84C6069DC2259C1B693E40CF7BCBCC919AEE619EC3F0B
        B4B1BF186888D2E01CDE28D2086C5713EDCF6D618FE363716D58A61D071CC039
        77296589A5EA8157816B35C15AFA823CF828706FC4175F0634F1256189F3C344
        9E2323638235C0AA88DF2F01DE62FF70E0474B50CCF932FDA186AD2B5D7C280F
        1172E7C4FCD64D0B8A356FB73E7825DB4531E444B65440C8D5EECF25EE7D9CED
        E5B22DF9DC424EE4E073095F388FD14BA71A135F6AE64ED0AFC6E51499C25329
        89BC465F171F3D55089EA7549B34245ACE704AFBD156E00BE06BE02F35BE9ABF
        2D4D3837CE7AB39EFD162178B20A87924A6384E9C638278695C079268958454D
        B326360C2ED34A7FCCAA0D23C6BD14F36E603BC9572B734B0ECE1F25C50CF36E
        B27BB0CF03BDDCCA4A16FC4613CF4270806D833EF1830A359827C15101EBEF2A
        34CACBC49512B4677F9FAF7C6F7206324199A32DCE32E57CD7AE8B1D42709B33
        F87F4839773AC1EECD42F0335E3467D0A09740835E060DDA2CB04B08AE5489F8
        6129BF3A0DA9A404ABD5D1BB52086E06BEE1C04D2927F51390F2539AB8954995
        2461EDF6E137D9DE58E1A69C87896D502171E11E4B70A1DD1855AA9996A097C2
        37C31245822695060CAB7F1723691B72D5279CB426A306E36489CA8D3E77FDE3
        01E6AC7E82D0C80609B5311BB2F6B13AB6BB9DFA8C2B4F30CB332A611B457080
        89B9C8F9C0FD251CBB18B1778E8D20A5C3AC6A27E67317C65DECCF5509DBBFD2
        C9552C79DC023CC4AC6B813D76D47D0B199C5EEA105946ADEEA7C65B8037D4D6
        E16AFE4C65B10F59F92A5BFA90BDF15CF6EF049E064E6121320F3909E860BD67
        31C7BE038E010A49AA5B9206B4B3FF1435B696E533490DF6668C7EFE606AD9C1
        4569C97D4BD285B4F54121760DFBDB5896E8E42291B0FE20FA5B35AFABF8D136
        770EE8DB7F32EFDE87E5E2B7D576D24E3728642D605EC16AD7385E77B08ED296
        527BA7B106D3A2C6E6BA3E97B5043C9155AED9CEAA5EC362932439DF339B0BF9
        3153188034D17C0DEA59F9B807695A9307412B47D10F5B69AAB4FED7C663F5E3
        E4E764B67F4388AF9DCE953E955B8C68793C4F8E1E46EA5BA9D9D52C50F6A67D
        D13F020C00A5DD5A0B7D7954480000000049454E44AE426082}
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
    object DBAdvGlowButton1: TDBAdvGlowButton
      Left = 342
      Top = 3
      Width = 42
      Height = 43
      Hint = 'First record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
        362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
        6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
        7861702F312E302F73547970652F5265736F75726365526566232220786D703A
        43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
        202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
        702E6969643A3931343245463331453238323131453241463535413234313741
        3446453836432220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A393134324546333245323832313145324146353541323431374134464538
        3643223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3931343245463246453238323131
        453241463535413234313741344645383643222073745265663A646F63756D65
        6E7449443D22786D702E6469643A393134324546333045323832313145324146
        3535413234313741344645383643222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E6D15A350000004654944415478DABC99
        7F68565518C7EF7BF7CE39DB14733297BF6618BAA1AE268E12DD86A8A02D956C
        E29414FD2324C14C33A5A0486459623F863F0952C36924EA4C5B2AC29295E44F
        F0C7683116C9CA952E1956560B67DF47BFB79E0EF7BEEFBDEF7BB7073EECDCF3
        9EF7BCCF3DE739CF8FB38855D36C25210F80316028180406031BB48216D2006E
        24FA03D104BF371DCC0113C1C371C6FE0CEA410D38086E07F9A1488015EC0556
        82F960448C7177EFCDEB2E6D6037780F5C0D53C1B9A00AF4577D77C009700A5C
        028DE057D00932B9ED8F8142AE78A6FAAE8C7905BC95AC823DF8C6E5AA4F9479
        1FD4829F7CAEBE28570A9681C9AAFF2CA800CD8928F820F81A3CC267B19DD560
        93959CCCE00BE6F2B9031483D36E836D8F49647BAE28E58E82E1212827F2296D
        788BDA255988A94114FC0AE4B0BD034CA3EB084B64D596F2D039724C2D484C05
        BF0003D97E172CB6BA4EDE018BD4B3AC647A2C05978012B6C577ADB0BA5E7672
        211CBBFFC0EB90F401BF8014FECDE156FC37D65B9E01A9F48116DB43C087014C
        43166402DB8F3B87464792B7A99CC565FFDB971FBD1F2166B87C76046C0EB092
        150C8D22BBC048BDC559E039B62F83C33E26ECCD93EEA6DCF3E029D01E40C11F
        C076B6E59417690567A9816B7C4C369CCAE5BB7C361B6C4DD01E5F33CEC3BF0A
        3EABDEA236CE24258C26838DFEBF983C1C48E2C05C57BB27C948D4E6563DC1CE
        789397D30DA51BFDD7C0A3E0CB104EF57195CA95DA3C39A9CAFEBCE425F0894B
        E6B2877EB33124B753AFDA0551269A8E7C13E38B1B5CFA24A3F911BC4C1F1654
        227CC94A708B7D17C14DCE3728AA6CA983861F34E15D15C2AA6D530A3A26230A
        66D92AE6CA80DFD4A014ABFBC4F4B98E1E19B6112122867D75977845A988AD42
        51A6713A3B7D4CDCA9BC7F3272D7A518BBB792511AB9481AC803673C266955E6
        60DA8F1879B6F20641C5CCCC07F0EF4DADA0C8A8180AE6D3478D33B2A1B52C80
        AA43DAEE3C55FBB4D874AE7794125ED2CEF8F899D19FA22AB530A444B51B6CFA
        9C73EC98E963823266D9A6BCC0DC2E5929E5DF3F419D138BAB551230D1C72492
        65BFEAD2BF50268D514AC4930C55411E027F3813ED33D2703F52C9BAC26D05DA
        7DBEA8296FA897DB6266D47B59A03B3F72D238FE5EBE4AAAB1D78DCF1F02DFF2
        16A2CDA7727D696E165DD71053C11C861891EFC1B010EC29D567666E31CD2A63
        7B0A6F2DFE672BADCAAE7299CA871DC2BC648D52EE734739B7AAAE92D711CE89
        5ED70D61EE69F026DBBF8379F1EAE26215AC6545D777A17292C9EF377C607B3C
        05C5FF8C574AAE6695951EB27272623F52CF72A0CEFBBDFA90CCBA80F5B1C802
        D064DC72252A45544417484F3233F77D3723F21DE3E2113E0F64CA5F47857B05
        544CEE773E66415EE88432C6F6DA44EF071D590E361A2F24B62257BA1778D9D4
        CA2B3AF19D3D413FAED658D6CEB9C69C550C8F711245FF57C0E2385F6438EBEB
        91D3390AA679A45E9D0CAB552AFE87A6A0192FA5D89FC4E77852C7EBB56AD6DE
        0152EDE4FE0D21D16634ED339B5BEB14606DCC359B58E82724FF08300078AEF5
        EED45F4D970000000049454E44AE426082}
      Transparent = True
      TabOrder = 3
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsproduto2
      DBButtonType = dbFirst
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton2: TDBAdvGlowButton
      Left = 385
      Top = 2
      Width = 42
      Height = 43
      Hint = 'Prior record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
        362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
        6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
        7861702F312E302F73547970652F5265736F75726365526566232220786D703A
        43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
        202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
        702E6969643A3636444446363933453238323131453241363446383544464531
        4143424143432220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A363644444636393445323832313145324136344638354446453141434241
        4343223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3636444446363931453238323131
        453241363446383544464531414342414343222073745265663A646F63756D65
        6E7449443D22786D702E6469643A363644444636393245323832313145324136
        3446383544464531414342414343222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3EA5EAF8040000046C4944415478DABC99
        798C4D571CC7EF7BF30683D1D86267340493D61A5B53662248282AB65882B47F
        8890A0B5A682109922B14DAC91D8D24108B58E25922176D52694204288655A86
        4CEC2586EF8FEF955F4FEE7DEFDE77EFCC2FF9E49D7BDEBDE7FDEE39BFF35BCE
        8B58BB6F5A01A41268091A81FAA00188824270975C018F92FD815892CFF50643
        4017F065827BFF0527C06EF03B78E9E787223E66B022980C46806671EE7BFF71
        5C672902BF8165E04E980A0E05B9A0A6EA7B078E82D3E012B8069E811290CE65
        6F03DA72C6D3D5B372CF2F60615005CBF18D07AB3E516639C807FF789C7D512E
        1B4C00DD55FF1F6018B8998C82D5C059D094D7623BD3C10A2B98F4E30B66F0FA
        0DE80ACE39DD1C75194496E7B252EE1068128272227B69C3ABD42AC944F4F4A3
        E0295087ED0DA0175D475822B3369E9BCE96C36A42E22A780CD4637B29F8D12A
        3D59027E50D7329369F1141C0BB2D816DFF5B355FAB2911361DBFD3AB74DF205
        780C52F8294BFCD6E38F0C02A9F48116DB0DC17A1FA62113F22DDB9DEC4DA323
        C9222A6771DADF7AF2A39F22443F87EFF683953E66721843A3C826D05C2F710D
        3086EDBFC13E0F0356E14E77526E1CE80B8A7D28780FAC655B767907AD607F75
        E30C0F8335A172990EDF0D04AB93B4C7D9C67EF8ACE048F516F90906C9623469
        60F4FFC7E46157800DF350AD9E2423B12897AA333B130D3E986E28CDE87F005A
        839321ECEA232A95CB8E72E7A42AFB73932960BB43E6B2857EF35A486EE7846A
        B78A31D1B4E5AACB43F3C02C877EC968EE8369F4617E25C297CC014FD977113C
        E178F563CA96DED0F04D912D3F2A4EC23B3584595BA314B44D4614AC11533157
        6E78AE6E4A614CEE5806D1C4F4B9B61E95A346F61B31EC6B935536E2968147A2
        2A14A51BBBB384FEEC1BF0CA658012E5FD83C87B8762ECE34CC668E422E5410B
        70DEB8F90CFBCF287330ED478CBC96F2067EC5CCCC6BF3F3895650E42B07052D
        163899F451ED8D6C681EBFCF0B69B95BA8DAE76E94CEF51D3B32E33C58CCF878
        C0E84F51955A1892A5DA57A2F43917D8F1BD8701FA30CB36652273BBA092CDCF
        D7A0C08EC5792A09E8E26110C9B2673AF48F9641E3941289A4B2AA20F7C8E6B4
        07DA61A4E15E24877585D30C147B7C5153E6AA975B6566D45B59A0DB3F72DCE3
        A0528DCD317C595D709DA710451EC7A94A73B3E8BA1A9A0AD6618811B90D1A87
        604FA93ECA867DB46F911E3CB5F89FAD142ABBCA602A1F76087393194AB983B6
        724E555D0E8F23EC1D3DBF0CC2DC00F02BDB2FC0F04475715715AC65461794A2
        7292C9EF347C607122055F33FEDA4A4E67D29016B272B26337AB6BD9507F7A3D
        FA90CCBA15EB638BF9E00DE3942B59E940457481F41D3373CF673322B71817F7
        F3BA1E53FE022A5CD1A76272BEB38D05795B3B9431B6E7073DC09C04161B2F24
        B62247BA7F31B12DE4119DA44E154075CE563BD6CE19C698B90C8F810E30B588
        E3FC89E1ACAA4B4E672B58DE25F52A6158CD55F13F3405CD7829C57E375E2792
        021EAFE5B1F6F6916A07FB1B42A2CDD7B4CF5A5C5ABB002B62AE7983857E52F2
        418001005E72FB79D2DD375A0000000049454E44AE426082}
      Transparent = True
      TabOrder = 4
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsproduto2
      DBButtonType = dbPrior
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton3: TDBAdvGlowButton
      Left = 428
      Top = 2
      Width = 42
      Height = 43
      Hint = 'Next record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
        362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
        6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
        7861702F312E302F73547970652F5265736F75726365526566232220786D703A
        43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
        202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
        702E6969643A3730373643394131453238323131453238424631414239324639
        3531323732392220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A373037364339413245323832313145323842463141423932463935313237
        3239223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3730373643393946453238323131
        453238424631414239324639353132373239222073745265663A646F63756D65
        6E7449443D22786D702E6469643A373037364339413045323832313145323842
        4631414239324639353132373239222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E85C699DD000004694944415478DABC99
        7D6855651CC7CFBD5397F992D82A6F6BE83F41D636415BBE4DD9302C16B39AD5
        1F2DDA1688CC22D4105F10054551D0A58822FEA1992ECA556CAB940AC5AD65A5
        942EC531342DA76C922FB8ADE6FBFCFEC6F7C08F67E7DC7BEE3967FBC287FB3C
        E7EDFEEE739EE7F7F2DC8855FD971540D9E069900ED2C0201EBF092E834BE024
        38EFF70B06F8B8E729500C5E02F91EAEEF04874035A862DFB322498CE0F3E043
        1A1775387F07DCEA79A6653DCC4F53D7C16EF031B810A6819B699CD6DFA016FC
        0E8E82AB7CB5B6813130158C07AF8311EADEFBE023B029A881326A9F80E7D4B1
        2F380A0792785362F01BA00CE4A9E3DF82F7C0BF7E0C2C00DFA9FE1FA09CA315
        446FF215A7B32F23FF0238E77471D4E5216F1BC6AD02134230CEE2429195FF29
        FB8F824690E5D54031A452F5DF052BAD70D5054AC07AF6878223E0A14406CA44
        AE53FDD9608FD5775A02D62823EB1319F81918C2F652F0B5D5F75A0E6AD8CE01
        CBDC16C98BE047B5BA0A3D7EC140FAC0A092683386ED2741AB39823B8D79E755
        8F80EFE9178F287E063393784EA96A579823385DCDBD0A3AD164348DAB7E98C3
        B9F7C1368FCF3946DF6BD1D1B7D923384F79783F2BF6272EB0C30EE7B69AF32A
        8E161AFEB2E7150F06AF2A1FD5E9730EDD67F2B0DBE1DC1A630AC5FBA167D92E
        B60DCC57FEE7700893BD94B1DB5419175F22D5A8303B326AC4D9BA905CC77CF0
        0EB8671C7F85D168449C7B4FF33305E44A3E98C10312B09BD485299CA87E7487
        D16834586D788B1C1A3119FCE370EF29D54E170347B2D3665C380AB4041C49B7
        FB631C8C19E017E35C13F3CA543130CA1023FAAF57A6135C19711292C1F497E5
        C63512A73BEC1F2227BA5D1ED06DF58F4A8CC1D0DFDB1D556E65A84308EB6B49
        CA35C9584C62C770B65B650E5E51F14FEB1AD3A188CFD1BCC64A6F814B71268B
        6785C3F14C551DB6C88D17D991C5328EC9A3A89DE9501055D21B985A0436B8DC
        3356B52F0E5006D931B5318457F70C38E8F056446F3162B9294BB9AA8628A387
        BD826786605C2E38E1605C170BA6AA04F717F153DC4FBB187817ECE341C9011F
        0F605C11E369AA833FCCF610A90AB83160D999BCED7FB61B05921F893FFBCA25
        7465AA24209ED6A976B53650E26333DB73D5AFF02289ABDFB8E47CB534AEDDC3
        730AD5FCDB617B179DF24F04BFB2DDC005E3453116DF1754EA1F61FBCB24CA86
        5696A0F7F879C3A970DF6BE7612CAE17F65334A9570352AEA79C1927E7D0C15A
        74B0A5FD605C8532AECE580FBD0CEC62E8B1B5AB8F47712707C2E25E629E979D
        8533DCFBB3B59175C5A0100D8B71F3A9CC8EB9DC09F3BC37F30347F2B62AAA64
        95CF0AC1B80FE8725E560392E992BCBA1A28FA0D3CCB52D062515DC3E2BED0A5
        C474D328AE7409A35BB81D671769996ADE27BD3F686B31586BFC20492AF7735B
        EE3847A083D70C633C96E83185BB163A6990F24236443F0FBA81A9355A154369
        7192DC78997833331C99D7FF7BF9D2888F5D7E793DB2A5FB1ADDC31309AE3FC7
        F8BC8F239E942201FF86788C656B0689B1806F619E29AFFD4F877AC7B31E0830
        00629EF941A5EB70210000000049454E44AE426082}
      Transparent = True
      TabOrder = 5
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsproduto2
      DBButtonType = dbNext
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton4: TDBAdvGlowButton
      Left = 471
      Top = 2
      Width = 42
      Height = 43
      Hint = 'Last record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
        362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
        6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
        7861702F312E302F73547970652F5265736F75726365526566232220786D703A
        43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
        202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
        702E6969643A3841334346444537453238323131453241303338433143424444
        3034363345372220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A384133434644453845323832313145324130333843314342444430343633
        4537223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3841334346444535453238323131
        453241303338433143424444303436334537222073745265663A646F63756D65
        6E7449443D22786D702E6469643A384133434644453645323832313145324130
        3338433143424444303436334537222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3EB28C4A590000045C4944415478DABC99
        7B6856651CC7CFFB5A536BD331A7B9E698FF04669B82358BB270102A93794BFD
        C3896D828817C226614520188B225D4514D11FEAD489CE0B9B5DC4047173CD34
        F21AC950E765CA26E6445D2DB5B6BE3FFB1EFAF178CE79CF79CFD9BEF0E17D9E
        7379DFDF79CEF3FC2ECF1BB36ACF5B2134063C05B2412648E1F1BFC03570159C
        061792FD814792B8670428019341A18FEB3BC101500B76B0EF5BB10023F81C78
        83C6C51DCEDF07771F7CA7653DC64F53374115F8045C8ED2C0CF689CD645B007
        FC028E821B7CB5B68159E025300ECC04E9EADE6EB0127C1AD64019B58DE01975
        6C3B47616F80372506CF066560A23AFE2D5808AE27636011F84EF58F81251CAD
        309AC3579CCDBE8CFC78D0E27471DCE54BE619C6AD01CF46609CC585222B7F13
        FB43C04990EFD74031A45AF51780D556B4EA02AF838FD84F054D604022036522
        D7ABFE6B60B3D57B7A1B5428231B1219B8153CCEF63B60B7D5FB7A0FD4B15D00
        DE755B24AF82FD6A7515FBFC8147E903C34AA2CD48B69F046DE608AE37E69D5F
        0D06FBE8179B143F82491EF7F52844A5EA5CA53982AFA8B95749271A442F73D5
        A7399C5B06BE7431F07F3BFED3CFF4BD161D7DBB3D824B95874F66C51EE2023B
        E870EE0B735E79A8DCF0970F5EF140305DF9A8CE24E7503793872A877315C614
        F27AD0736C97D806162AFF733082C95ECAD86DAA8C8B2F91EA5498CD881B71B6
        3E22D7B102CC07FF18C7A7321AA57BDCFB1B3FFB8109920FE6F08004EC33EAC2
        7E9CA8C9E83EA3512E78DFF01605CA0827FDAADAD96260063BEDC685C3416BC8
        9174BBDFEBC1CF30AFEC2F06C61962447F3C94E984578E4742E216D1244EDFB1
        1F246EF823373FD5DB8AB9FC6E4F5CB995548710D657D28B49EC18C4769BCCC1
        DF55FCD3EA603A144B72343B58E9BD19B038CB53D561ABDC78851D592C63993C
        8A6E331D0AA36A7A03536F818F5DEE795AB5AFC49541764C8D42A35813CF7358
        6C73C15A8F7BF395AB6A8C337AD82B785204C64D00271CA64C170BA61D09EE9F
        C5CFC3F216C5C0BF410D0F4A0E382C8471B3184FFB3BF8C3313E22551137062C
        3B93B7FDCF574681948CA4E2DBE512BAF25412E0A50F55BB561B28F1B199EDC5
        EA29FC48E2EA372E39DF1E1A77DBC7F714ABF9F7B5ED5D74CAFF3CF889EDC600
        0B268BC5F76595FAC7D8DE9920A3B695C2147F087DA27CDE722ADCB7D879188B
        EBF23E72D40D6A4096E82967C6C94574B0161D6C691F1857A98CAB37D6C34306
        8A2B7841F537F4F228AEE74058F49B13FDEC2C9CE5DE9FAD75AC2B5222342C8B
        9B4F6576CCE54E98EFBD991F3892F7545125AB7C5A04C62DA7CB99A2064456FA
        A520068A8E80D12C052D16D5752CEE8B5D4A4C370DE74A97B0FA39B7E3EC222D
        4FCDFBC0FB83B656810F8C0792A4F27B6ECB1DE708DCE135698CC7123D5EE4AE
        854E1AA4BC900DD16D891345FF5BC0B9AA18CAF4F06D5E997833331C99D77FFA
        CB6483EFF2CBEB912DDD19740F4F24B8BE85F1B986231E30D50EF737C45096AD
        39248B057C2BF34C79EDA71CEA1DDFFA578001007948F747DB27E77300000000
        49454E44AE426082}
      Transparent = True
      TabOrder = 6
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsproduto2
      DBButtonType = dbLast
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object bitbtn5: TAdvGlowButton
      Left = 515
      Top = 2
      Width = 96
      Height = 43
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
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
        362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
        6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
        7861702F312E302F73547970652F5265736F75726365526566232220786D703A
        43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
        202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
        702E6969643A4442423443394332453238313131453242394338393942364543
        3838344544452220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A444242344339433345323831313145324239433839394236454338383445
        4445223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A4442423443394330453238313131
        453242394338393942364543383834454445222073745265663A646F63756D65
        6E7449443D22786D702E6469643A444242344339433145323831313145324239
        4338393942364543383834454445222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3EB0957FD5000005934944415478DAB458
        796C944514DF6F7771972A68418A55A828A0126F118D174710242A55A99188C4
        A0A051226852A3A2FC2189670C1210E21545413C62A8578C468D8A94C32ACAA1
        50143CD046C156DBDADA935D7F4F7F93BC0CF35D5D7DC92FFB7DB333F3BD79F3
        DEEFBD192FF1FAEE4401520C9C0C1C0D0C0306B37D1FB013A803B6033FF7F403
        E91E8EBB02A800C6024785F46D04D6006F02AB81A6381FF26258F030A012B806
        38A6870B6B0656028B816FFF4B0567008BA8A416B14C35F035B00D680572C021
        DCF2138151C045406F6BECBDC08242153C18781128576DB5C012E0AD18BE25BE
        7A213007B840B56FE68E6CEF8982A5C046A08CEF5DC05DC0A389C2642AE73852
        B58D06D6BA3A277D2619CE2D33CA7DCCB64295137905380E7846B57D024C8E6A
        C15EA487017C7F0998E6183B1F28017600ED4011ADD200FCC13E296028836A36
        F0BB35C7DDC0FDEA5D28EBAB300B562BE51EF7514EE4626E8B44E37EBA80F4AF
        A1C2ED54482C7625B9D29607809BD4FB7A06982F0FDE069CC5E71AAEDA4F44B1
        0DC067C011C04C06CD3C354EA2FA58E053A0DB679E2781D3A8681F600530C565
        C1C3492586AFC685F8529E1FFF15B81E7896ED39D5A705C870ABF30173DD4C83
        982430C665C145EA7916F0578882B2ADFD80D3ADF63FD573378D20CAFD1032DF
        D5800988E74C32300ACA164DE7F337C0AB8E09FA026703597E70180324C5F11E
        FB9558E33AD8E73AE07BBE6FB41622F21DB7F75A600870BEC48351708AEA38CF
        A1DC74A628DB823B494163022CD3C4452DB1DA672AB730720F1534DB5E6D7CD0
        34FE065459834EA1723F311A2F21DE67646642B6EE5046F46C8EABA0B5840747
        5A7D25C8DE5346CBA64929A3D8B8DAF101132C93AC9434993ED816A26086D65E
        C5E013F9859422696F93D5FF1D6022AD3E3EC9BD3696DCE213AD229D8E3CDD19
        2173E4E89F65563248F88CDFA0893B490737B2CB31C0F057918FF2D900E58AA8
        9C4D31073928C9C82665E94169E658530C6C899153F3E4B9462E2277401AFD37
        E535B3AF1771DE6E72ABB046495A95E96D21D5AE6D0549F81358403CE5503049
        4A91FC7A8E9514F2214AB6184BA7AD95B95669B670AFD5FE323F5C4C453CC782
        52F4BDA7C999461AACB903CF24A6E8EC4DC7EFB0FAD4292ED4E5D6E2024AAE49
        8AD6FC7CF71FB74BABC0E8C5ED5863757E0DF8025848EC67A19065FEF6420E5F
        1E5DA75E9C9E054182F56695CF9881FCAD4F93938C1CEF50B0933CF908B734AB
        F2EF97B4788B8332CA18AD397E7004776B1BA9E44E2ED69633E836227B44C175
        EACF9302B8ACD2F2AFE7811FF9DF7292765EEDC6E7AABF649165CC245B43B6FF
        3CF5BC23CD90167A3915B81C981B3241526588264EF8905230C93A70197DBA51
        A5C38111FC739CA2BD0FCDC74C213098D41145C1149DBC2FD1C69CDB41EE2B66
        0957AB22381932773FD68326E535271565185918231A3354A8CBDAFEFECCEB43
        790D3228E27CF7A9E7C7743D58C7AB897246F244555504317E293FEEF99CDEF6
        B1EE6B88A05C094B2C73B7F3816DF239EA7979C454D7C980C83920117F15179C
        8A30DF2AABA23FA0E4DF4313CFE7F1F15D45A87E915D43C7F7AB6A522CD1C2F2
        F002DE3C887CC45B0BDF73F16646B4F1C7DB1DE7E6563E6F55E55410519772D1
        97026F5BFF4F53D6EB62BFFAA0EBB7D1F4810CB94F14BAD5B2DC5EFADEC89829
        CE2E6E67314F1B19AB95F353B0D91C58A8E45C6EE38DFC4FD8FF4CE6CB7C0CE5
        727423230FF2AE479F51D6C7B93C3A813ED64725F64AC7E129AEC8E29FE0D59C
        910ABFBC1C449CB554D2D0CD001E0BC5B237909CA38A7CE73272E35AA5DC2E2A
        5C55E805E61DC0C38EA2F20D160CEBC8A5ADAAA497059DCB6B8D72EBBA2DC122
        F7168BE40BBA021ECE6099C11CEB92769561FC225B6ECB96BAFCAD500575BE9C
        CA63E77875000A926A9EA35FE099F87FB944F70BA411ACFDFAF3EACCE35637F2
        B0BFDB2ABD62C9DF020C009946633A8EAB94390000000049454E44AE426082}
      Transparent = True
      TabOrder = 7
      OnClick = BitBtn5Click
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
    object LMDButton1: TAdvGlowMenuButton
      Left = 613
      Top = 2
      Width = 99
      Height = 43
      Caption = ' Tabelas'
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
        362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
        6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
        7861702F312E302F73547970652F5265736F75726365526566232220786D703A
        43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
        202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
        702E6969643A4136424136354646453238323131453241413136454245443741
        4239443941312220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A413642413636303045323832313145324141313645424544374142394439
        4131223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A4136424136354644453238323131
        453241413136454245443741423944394131222073745265663A646F63756D65
        6E7449443D22786D702E6469643A413642413635464545323832313145324141
        3136454245443741423944394131222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3ECA8BBD1B000004244944415478DACC99
        7948155114C6E78D969556B45191ED1B4A1BD14251694516EDB497442551527F
        6446190541D042420B128604959210156614ED60A4ED0BB4481B42697B26B699
        ADF6DDF86E1C46E7BD37CFE8CD811F73DF38EFDD6FEE3DF7DE738E1E23B7C8A8
        8585835EA03D88046D81095E82125208DE06DA416880DF1B0B6680A1A0938F67
        5F837C900B8E800A271D791C8C6003B002C483EE5E9EABFAF3BB355B29D80F76
        80A7FF52E02C90065A887B8FC0797011DC010FC117FE2D0CB4037DC918BA82B6
        5F600DD8525B8175F9C6D3C5BD02709CEE710094B31D01EA70F4BE732A2B417D
        309A3E1AC597D5761DCC064581086C0AAE80AEFCAC3A5C09D2F9A3AAE3685E3D
        5EA6FB07B8C697CD04716017E8C067BE8161E0AA9345A256E565D09A9F4F8104
        AECE46E003F80CBAF8E11E26A75EF95F7FFE96F2E1ED6009855FE1289FF157E0
        45216E2FC5690BA12FF601591C59D38BC0AF602618080E8A515BCAA9DDCA7BA7
        4137F0D89740E5F86DD8566F995CC3334FC062B0CCC18E915E437FDB401907C1
        E048468AC556EDCD13410CDBF936E2F48B39D9CF2ABDF8E93E0E84F6FBDD56FF
        D0D618EC64FB1D18E9A3D32A07027F79116870200AD88EA73B5413984AFF52B6
        805BC5FFB4D9A29D6915D81C2C62FB2E3866FC7F7B0632D856AB7C801438593C
        B8DA089EADB3AC87BF02E78AB7381144816FC4ECA96024D4E4C63B8837738CE0
        DB1911CAC52A814378866AFF0BB6E58B766F931BA3B6FB2E10789B9BB7B24893
        51B03E7EEE19EEB0177A7731C599AB02804F2E11A8754498961DDE63B8CB3C3A
        C151D690B19D1B2C5C8FA412F85C84E9512E11D88AD7322950590F17888B12B9
        4F89C928E2276F44BB40608C68179ADC736EF0C62417088C1531649E3E8BB379
        EDC2643C58162132C8A32AB2D6020F59C2F0402D4784EF81D87A11C0A4CB68E6
        15735C65FD2C7EE0AFA9B07D2A13AC38E1D7FE5A139162A89ACE056B449D6CC9
        139C9A1CB9B301148CB2443BA1A6905F6DD86BD9EEC0628F135B25DA83413307
        DF5541F278B64F82737659DD269623F48ADE60932C85B098A46D21A7F8106B38
        792284D387403D9B699F0236B3AD8A01737CE5C5C3383D111CD1504B1A10C684
        BB5804BA718C8AA6D98C50082325EB513AD732B531ACF5781558C929BA449129
        8C781299507F64C29E2A6A2E91AC66A5D8943E0A4401E98158B1320751E9E64D
        27C5A34E14A07D491D8949E030D8C87246A170138F4DAE5CC5E9557F1FC572DC
        6E5EB58DB3CB857C95DFD499B84738B0CE1932D8713147B511A72F84427EB226
        F39E2FD099D709609E3CCAC07C71923916A82D89451ED3129AAB8DF916A7B0DC
        F29D7ACC6DD5484D04C32D7F4FF3A7B6E3A404AC7C6C3947A089CD5456F01A66
        59C5B204924D7137FC8A5803A8F2EBF35225FB23F8D997E5B1BC96CDDCDBFF90
        BA96FF86E8087AB25CD792D3AA13B0522E2C55EFBB136807BF051800D9C1EB29
        2D820FAF0000000049454E44AE426082}
      Transparent = True
      TabOrder = 8
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
      DropDownButton = True
      DropDownSplit = False
      DropDownMenu = popmenu1
    end
    object blocalizar: TAdvGlowButton
      Left = 250
      Top = 2
      Width = 91
      Height = 43
      Caption = 'F6 | Localizar'
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
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
        362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
        6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
        7861702F312E302F73547970652F5265736F75726365526566232220786D703A
        43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
        202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
        702E6969643A3137304439333634453238333131453241314245414242363331
        4535433039302220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A313730443933363545323833313145324131424541424236333145354330
        3930223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3137304439333632453238333131
        453241314245414242363331453543303930222073745265663A646F63756D65
        6E7449443D22786D702E6469643A313730443933363345323833313145324131
        4245414242363331453543303930222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3EA23801B1000004DD4944415478DAB459
        7988555518BFEF3A5663D938E1DE8C8995D2E43A8E9AE08CDA188E51844D2989
        2B262A8626B8842286A4A248E21FE258B845A1B6992146B6A8998A8CB98D239A
        5A4E995B6E38EA34E6F6FBE477E4E374EF7BF7BCF7FAE0C73BE79EED3BE77CEB
        7931EFABE35E92D40AE809E4032D81E6440CF81BF80BF81338006C060E26B348
        8663FF4CE0756028501CA75F13A0ADF5ED17602DF0117036EA823187139C0ABC
        0D340D683B465C02EE0059402EF02C50C7EA5B037C00CC00AAD3C160376009D0
        497D3B037C0FAC0776032742C6CA95E701A5148767AC39C6039FA5C2A09CD842
        553F0FBCC713A84942A4443CA6011DD5B7A5C098B0017E9CC9665BCC09534F03
        8B9264CEE369C94DCC54DF46035FBA32B8883BF52853A59CE8B2971E9A0574A6
        960BF5A7A6476270146543E81AD03DDE0E53A03D3CCD4AD67B01CB12C9603ECD
        812111EAC38E0B3F07F4015AF00044197E00B6F0366CAA0BFC06E4B03E16280B
        63F028F014CB03814F1D182BA558E487B4CB42F3800F03DADAA8833066AADABE
        E2718AB9A58ECC7D027C6E31F72F50ABEA4F52D13605388823C090FB87E6792B
        ED13CCA47B7A981A5ACF81B955F42C86E47A3EE689DDA6C11E48D96EC03EDB80
        A280B9F603ED5996DF0A7382C3C89CD0BB0ECCBDA998BBC8494586B653F6CE51
        A6A7509E0FB16F2135D9A691AA3C419FE0165AFA7F8047793D51E80A509F65D1
        C87D09FA4BDF2A209BF5C6BC394DE5400165B0A14FC7DE938D2B1D98EBA5982B
        8BC09CC745E7A8FAD0803E8BD5664A84C1BEAA71BDC3F5BEA8CACB1CC6494473
        93E5B601ED3FABF24B3EE5416B53546AC4DF5BC0AF0EE3C47B9C66393B2432FA
        9DE5D6E68A3D0AF41F0E0BDD54DEA881630C6A44A336A4CF2EFE3695C91F572A
        7ECB61A17265B78A1DC615A90D9D0AE9631427DB575775C5D1A5AD53E5E90EE3
        26A9F28638CA2454CFE7092443B2CB15CA4BAC8830E61DA01FCB15F4D171E355
        5F1DE72349244D05AA3E9C2E2F3744A1DE07E6AA6F03E2CC6D78B99E418DEAC4
        FC21161271D8D499C6DDDED420BAB59DC0562A520F866CDA7DBE96204A7A8CBF
        9733548695C310A92A027362AB1E0A69AF43A67A04B4555006372558A38BC95B
        7CFA4D43AD130C2C6492643327E6A29D0A6EABE836E5FB49E01B7A8DF611987B
        82E1D73D9B98610D10AFF25D1CF31014965F63E657A9E242A18614990B8C6A5C
        025E43DFFAB4ECBB54741244FD2853768A70818A521930E63C15F0B6A3F28D55
        B7F2B559700D7FB318B86AEA0A6C0C98E81CE5F1B0973ECA53818B648035BE72
        F6C68BCC0DD9912691B10E1114CA95965B99E5FD2BAB56B96A7DE6C4867E0A70
        F65D1990A6934A28CB423F5219FF93349D51C1C30B7CDE107A0B7885C1C4C424
        DC62226AC28DD765BD9939009BC1DEE4DE3CF2E4C57977492755A8D8501EA9E6
        8725EE624626ABA7B6BD2AD3FB3F488CFA0EC5DC3ACD5CD8CBC202FA548F61D1
        EE10AF902AB56442D59D7579E07C35EADBCC60E6B0C6F46CB31427551A45F3D4
        4185F905AEAF5BA32DA6A6D120BFA184D995FAD2EDC9E61F54394A6158741DE5
        01F379C67A2D2C53F3055F130EF165D50B79779128E9655E9F7E17BCC1DCB72C
        D517568FA1D26C9E6A6640F45BCEF0FD2AC3B54C9A8E8E34194199DDD428863E
        E6F8CA2F8B8E60DCD7CEF17A6503AB79BD91B3C0580A7F43E4333716469B336A
        7E8011CC0D5EFB29A6911B19C4D6BA2E72578001003E1420BFB0E5E3D5000000
        0049454E44AE426082}
      Transparent = True
      TabOrder = 9
      OnClick = blocalizarClick
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
    object bfechar: TAdvGlowButton
      Left = 761
      Top = 2
      Width = 75
      Height = 43
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
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
        362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
        6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
        7861702F312E302F73547970652F5265736F75726365526566232220786D703A
        43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
        202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
        702E6969643A3237463942453631453238323131453238383933383533304243
        3643463530362220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A323746394245363245323832313145323838393338353330424336434635
        3036223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3237463942453546453238323131
        453238383933383533304243364346353036222073745265663A646F63756D65
        6E7449443D22786D702E6469643A323746394245363045323832313145323838
        3933383533304243364346353036222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E2C4D6F47000004E44944415478DAB459
        7988575514FECD73CB9A512C2D236B7450D4C8254525D7C12C30C18DDC925113
        9242C952C47112973FC4052C95122B484DC71197B29219B3C0724C5C835C2810
        15975CCAD1B1658C5CBF337D570E9777EF7BEFF7FBF5C1C7DCF77EF7DD77DEB9
        F79EF39D3B39A96D275319E021B023980FB6009F0403F022788E3C0EFE9EEE0B
        EAA6F9DC4BE048B00F5810D1F73258096E033F076B92BC282781071F04A78363
        C1B69E7E776BC70DC715703DB80C3C934D0347832BC066EADE6DF05B702F7804
        FC05FC13BC03E671DA9F05BBD0E379EA59E953022ECED4C0FAFCE211EA9E18B3
        1C2C072FC5F4BE185708BE090E50F70F8263C093E918F830B80F6CC36B593B33
        C1F7539961303FB025AFFF05FB82FBC33A078E41647A8E29E37680ADB3609CE0
        4BAEE1956A96C4112F2631F007F071B6578303193A7C9800AE238745F415AF4D
        E6A633F85A39C41B66BE039F60FB3D705A4CCF0CE3F409FE624889C2BBE0553A
        21454F4A3CBDE1F2E0EB603FB62B131827F84DB5AF25786E0D1D61D6FDC7AE29
        6EACD65815F87CCC173CC7716EA87BD71937BBC71C431CB1876D89B33DC20C5C
        02D661FB55F066C4A0031872F6323857ABDFCC7ADDCF25D335869163547BAD6D
        60537012DB47C1AF2206FB08FC06ECE0C91EC6A3B2640E81F322C63C0F7EC876
        5BE37D63E050D5B13862A032F035756D84403D75AF6188C173C1851163CFB1F6
        C37D038BD457947B0698CFB467F001D89EED26EA7E0BA63389A75BAC8F2F8AD8
        6866F6448CD415031B71A10B3EF33C5C607DE102700A379420D7121682B34C93
        65EAB74FB8215DD8A9A45CA118D85B4DCF51CF832B545BBC3CDBFAFD574AABCB
        2139FA156E28137B6778DE53A9DA9D024E87C1CF8E87E48B07A9EBE9217D8A19
        E0854B437E9F65E563177E62F0AE5D2A0155B0493FC71C0F7556EDC3945636EE
        5082DD66DB4685F26C8708A17BC1449740E5DC3F98A25CE2414BA4747097E1C6
        A095A7AFB12337B0C2814B09374A338DB95E1CB7DCC80954D4CF63FC0A43956A
        3F9A81813A14DD8C28C66A3F28E0EE13345031CDC669D5EE95A671F55538F36D
        484173FEBDAA0D143CE378E00817BFA09D4EE609304A2D95031E7DD95ED53EE7
        02AA08F3F2A71D0FD55016E95C9CAC7AFC4F8C186CF0F4EDA7DAC703C61CB3BB
        86781E2C51ED8E96C151D8ADA6AD8A29D28542FEFD07DC65727129FFB66631EE
        CA9313D5F5781940299A30F4616CEDADEEBD0CDE72F4CF5515E417A2884C55D7
        5CAD09F16637CF4B17B1BAD3D84CB97E9E02249F5335D0EAF706B8CA33F652A5
        E2E5F9DDBAEC2C534A45DCFCBD67A0A93C1D888B1A16559B234290497172A6F3
        94ADA8A75975820FCBB9E3B772ADB8600AA28208E3049FAAF64457E15E421965
        D6C0D018DE1135FE02C34F3E23C229E6EB8A988745C54ACC56F0A8C479B27040
        ADC10521B22ADB18CE9910FC4D7555ED2BDCFBAA9CF90E37C5FF8522659CD918
        D551270BB2A67A2A2367B2CA6A9865E3E65BEB6E2CA55CACA30F51D69D944818
        079EB04EB9D245771AA2CB8741AEEC1278063AC5BCB89DD7A2943731388F5375
        475C484CDCC85AB98B49655CEFE5991E60BEC520AA3FA89AE72F3FF2B0E92277
        AC08D307C047E8ADAE94F82D436A9CA9D93A614D3170BECD14D7C4A1988D810D
        AC3A599705A534EE503C9591FC94DFE44B8991FDAD72D3855D3C5E2B653A4C20
        8332FB37442B8A05599F8F716A4D0176855AF3842A3913E39E000300FC4D1C17
        703A52D50000000049454E44AE426082}
      Transparent = True
      TabOrder = 10
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
    object pgravar: TFlatPanel
      Left = 817
      Top = 29
      Width = 839
      Height = 49
      ParentColor = True
      Visible = False
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      TabOrder = 11
      object bgravar: TAdvGlowButton
        Left = 288
        Top = 1
        Width = 107
        Height = 45
        Caption = 'F2 | Gravar'
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
          89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
          6D0000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
          000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
          4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
          6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
          786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
          362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
          2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
          3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
          7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
          626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
          62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
          74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
          6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
          7861702F312E302F73547970652F5265736F75726365526566232220786D703A
          43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
          202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
          702E6969643A3537454442333839453238323131453241373944433046384342
          3741393241322220786D704D4D3A446F63756D656E7449443D22786D702E6469
          643A353745444233384145323832313145324137394443304638434237413932
          4132223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
          7374616E636549443D22786D702E6969643A3537454442333837453238323131
          453241373944433046384342374139324132222073745265663A646F63756D65
          6E7449443D22786D702E6469643A353745444233383845323832313145324137
          3944433046384342374139324132222F3E203C2F7264663A4465736372697074
          696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
          7061636B657420656E643D2272223F3E1266892C000004254944415478DACC98
          5948555114864FF76A5869831ACD3341DA3C9765448151E04B823D9411114136
          43C38BD0000D46565050F4D0084504511159964403A591428346D86093461615
          94D968FF8AFFD8EAE8D57DCEBD8A0B3EEEBE67FCCFDE7BADBDD66E619D7E6205
          61ADC110D00B74063D41187805CAC00B500CDE7B7D4198C7FBE2410A98048683
          9800D77D020FC115700EDC74FBA2162E7B7026580A267BFCB0076037D81F6A81
          63C12E30CE71FC31C80305E02D7BAC1A44828E1CFE0430C8715F0958034E8742
          A0085BAEFEBF037BC1110A34B16EECFD7430401D178169E0B317817E70154C50
          C736802DE05B108EB51064B197C5CAC178F0BCAE8B7D011E2237DF55E28A394C
          EB83146771FEF503D9FCDF051481816E04DE56371C67BBC80A9DC97C9D0136F2
          7F1B7087A1AAC1307306C4B17D14CC657B04080FA1C87CB00E7C01992002DC02
          7DEA9B837328CAA2678E623B935E174ACB662F8A1D04F3D8DEC350564B602423
          7E4BF0819EF795E70A19906DBBA2E69089553344A5A863BFD96B3FD4B41ACDF6
          30FAC07F43BC95E2C4E62B7162158E176E06975DF6589C43E03BC7F954F08CED
          C31459E324EDC062B61F1904D04E1E86B4471DBDAAAD141C637B28837C8DC054
          75E172A315C8BD99DCB34AB5976881B6A7BE04170DE754635839930AB159A24F
          044681313C78CAF041651E5E5E6A785D2E7FDB8244719244E51C0F0C1FB21A8C
          7431D4BF19474DECBA6A0F0B734C5ED3D5623A690C2B6098EB2009B00C71579E
          F8C1E4B239D81BFEC6F854362C294F65331168C7E0089FC323ABAD66663EB54A
          44D2739A83B5B17BD2A7424678A09CAC89CDAFFCA242BCF8A93A2902AFB978D8
          3670A99EBCF21797AD2C17CF4C606CFE1B3B45E00D3A476B7B817661470C42D3
          2D9702756156205FFE5D05C7149702BB1B5CD3DBE53367A86C27DF1E9A0376DC
          01B35D3A996D116A45F26AFD55CD7D48BFE02CE78BD8761799C817FE5E639D21
          1161A5878FB354366DDB3E7D5115D8C4B6142E0B1C3776ADC7092CAEE7510C53
          0986DB2B1D1D715732F624F5C14F9C374BCDBB8837EEA577DAB5AA88CF00ADC0
          4FF6A85FF5601E93583FD7526D957C5935F1F1C30EF359561D99545AA0A22949
          E583AF0D9D2014765E251F196A346BCD831CF69EBD5D91DB04E2762A71F95A5C
          A0899A4EA162531882A21B499C0CF30A95CD4F36DD5998062EB03D91BB515343
          284CB651EEA952E3059DA4CA54A09D949E643B9A65A67C71AF208445B2BCBD0F
          06AB0435CE0AB00BEB6BE081A9ACF27EAAE2AA943B01C9A0BD81A8704E952C3A
          DE5A756E07772F2A83D91FB497B42C47796AC7CF3C869112551849C889E73237
          CAAABD459CCBAD94C2866B55775BC0F2B2652C09BD2C6B32AF7733AC1816D3DE
          76F963E934C9DCEBEBCE22A715CF4B02F29175EE6306FD1C2BC026657DE67597
          5F328D131CD2BE1CCA58EBDFAE691527FD4B0ABCA9964557F6478001003EE5EB
          1FBCF260370000000049454E44AE426082}
        Transparent = True
        TabOrder = 0
        OnClick = bgravarClick
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
      object bcancelar: TAdvGlowButton
        Left = 413
        Top = 1
        Width = 124
        Height = 45
        Caption = 'ESC | Cancelar'
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
          89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
          6D0000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
          000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
          4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
          6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
          786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
          362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
          2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
          3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
          7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
          626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
          62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
          74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
          6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
          7861702F312E302F73547970652F5265736F75726365526566232220786D703A
          43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
          202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
          702E6969643A3039393945413941453238333131453238343743414236334536
          3745374338342220786D704D4D3A446F63756D656E7449443D22786D702E6469
          643A303939394541394245323833313145323834374341423633453637453743
          3834223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
          7374616E636549443D22786D702E6969643A3039393945413938453238333131
          453238343743414236334536374537433834222073745265663A646F63756D65
          6E7449443D22786D702E6469643A303939394541393945323833313145323834
          3743414236334536374537433834222F3E203C2F7264663A4465736372697074
          696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
          7061636B657420656E643D2272223F3E92C56603000005424944415478DAB459
          096C5645107EFDE9A140550C0A22281EA0B68AB55A3945A336206942288848A2
          522F30468518538F88423882311062D06A0236864304154AAAC12018AD28B14A
          3C209E512CD6563C38022DE5A8DF906FC964B2EFFDEFB53F937C79EFEDEEBF3B
          3B3B333B337F56B0EE97A08374317023500CF407FA1059C01EE00FA001F806D8
          027CD79145B2138E3F1DB81DB81BB825625C2FE04AD3F625B01A7803688EBB60
          5602095602D381DE9EBE6F814D945C3B7001308C4C7631635B80D78067810399
          607030F00A708D6A6B2243EB817AE0376024702DD00AAC04F6F1C80B80F15487
          2BCC1C8F026B3AC3A0486C91FAFE1B984309B4A8F6451C2B923C0BE80714023B
          CD7CA21E4F0345AAED55605A1803A908E6E61AE684A901C062C39CDBC8526010
          8F57689667CE353C89E754DB54E09DA40C2EE64E03EAD4784EB437624396E97F
          23C6CEA63A34F07B1C2D3D16830F5037840E02433D3B1429D5028D6A116D998D
          94E6E3C00C1EB9A5AF28CD1DFCBE89A710C960318FD2D175C036CFE49F03A540
          15F036DBB4B58A0F1C023CC1A3FE8912B3F40F99DCCDEF7BAD3E5A0657ABF73B
          80EF438EE83CEAD16CEA9FD0F9AAFF6A602D5DD219401EF04CC85C47805BD5F7
          CB40BE8FC187814B9565BD15A14387B9B0A663EA5DA4F95F44BFA51F80BB4E7A
          9620A8B60CCA0DB14029FBB4188EDB4ABFDD30739AE9FF2BCD7CCB792D0A9503
          57E945EE01BAF1FDF920F3243A791B0DAB06181E32EE3EF5FE986670129FADC6
          F7658AE4542EA20A950075BC592CD513421381DC142F7637B89A4A9B8EE43873
          4D5B9E0942B40A08632B80CB6860CE627DB4844F3194D132D128D5B93E82A947
          E82A0E928166A38BC78D7E9E637E7FD4BC87050A75EABD4C16BAC158938F36C8
          60E053A02719DCA7AC4EE6D0977A99E7D6C98F69D53F03BF52250666F3889D95
          FD1EF2A3323A5C67406D0C52DD4275667CADF94E1AAC6E2383BDB39583FD3A62
          57ED3420BDFB548205C565F44D307E0F9F3DB4AEEC4F6314DA0872E2049B8676
          2718EBE6EE9AA20E25A5233CE2CB5578752A282BA5C4D93DE68F52B4E40A7AFE
          5D948E040EE7668831C7CB2159EC4F7E14C694A6DCB31318AD94D0872E675B33
          C3B5F4A946349DCDE75EEDCFFAF2B876C538DE8F4CDBC7C093C07C866BDDD3DC
          48C7D3AC51E2F296147D9BA381113B3E1643324F31AC5AC8F4208CDA2252DE0B
          79E39CF089C2E007AA7354048371DDCA3C86FB2B23C6E49AE847D310F5BE31C5
          90DD45CDF7471C6B410225AF62349E17D29FA374DFD2432AE6AC71527993CF33
          19B85A7A1F189B8041A7C73D3D7D2E3059E7E92B50FD9201B63806972A1D9B1F
          221109402F89C9E0609573589AC1E70E4FDF3293599ED4AB032A57CD674E6C25
          E8F2853854CD54B5D5A3CB6369449646AB8D6D7671A1AD2C34A9E0A194E58D40
          05B5AB5834DADC4107FC0930C2E3077BD116725452D6E4CB2BEE54EF352A6271
          7A2A6D1F9AF6B83493CC957AFA3629E62A1D733E06B730977589D47695E9053C
          9EAD8CD7C624606E19C3B50A732A5D389F2BD5BD0BBC90AEB2F022C3F38085A0
          7AEEDCD1704AB29696561871674FA4342A783AD5AABF3F6B864355CC589EA4BA
          25B9F183C601EBE4BB94D62F658D43F4A50DBC218A94DF9434628A89B0E5BE7E
          49F9C93A26EF879396DFE618A676B26D95B91EC5775ECF4BFE28A39BF7B8C956
          73534DA7C5EA6AC6A4CE14306F065E37715F036B322B549A184683A8BBE5A62E
          D8C6DCB72A1325E0AEF48D53693C36FAFD8252DBCF3BB61B5D45914A336D0DA8
          3246E494A846EDFC9528FC64579A48408D540D09C77E8C1D5277E26F8862BA1A
          61B40F739B5C3AE136168F1A99468A3E7EE6338274F4BF000300DD60333ABE03
          1B2E0000000049454E44AE426082}
        Transparent = True
        TabOrder = 1
        OnClick = bcancelarClick
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
  end
  object DBEdit16: TDBEdit
    Left = 782
    Top = 8
    Width = 11
    Height = 21
    DataField = 'CODBARRA'
    DataSource = dsproduto2
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 21
    Visible = False
    OnEnter = DBEdit1Enter
    OnExit = DBEdit16Exit
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit4: TDBEdit
    Left = 85
    Top = 96
    Width = 340
    Height = 21
    CharCase = ecUpperCase
    DataField = 'AUTO_APLICACAO'
    DataSource = dsproduto2
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnEnter = DBEdit1Enter
    OnExit = DBEdit2Exit
    OnKeyPress = DBEdit2KeyPress
  end
  object DBEdit6: TDBEdit
    Left = 221
    Top = 72
    Width = 68
    Height = 21
    CharCase = ecUpperCase
    DataField = 'FARMACIA_APRESENTACAO'
    DataSource = dsproduto2
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnEnter = DBEdit1Enter
    OnExit = DBEdit2Exit
    OnKeyPress = DBEdit2KeyPress
  end
  object GroupBox7: TGroupBox
    Left = 449
    Top = 114
    Width = 163
    Height = 84
    Caption = 'Pre'#231'os'
    TabOrder = 11
    object Label71: TLabel
      Left = 7
      Top = 25
      Width = 40
      Height = 12
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Custo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label72: TLabel
      Left = 7
      Top = 50
      Width = 40
      Height = 12
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Venda:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ecusto: TRzDBNumericEdit
      Left = 49
      Top = 21
      Width = 78
      Height = 21
      DataSource = dsproduto2
      DataField = 'PRECOCUSTO'
      Alignment = taLeftJustify
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      FocusColor = 11075583
      ParentFont = False
      TabOrder = 0
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
      IntegersOnly = False
      DisplayFormat = '###,###,##0.000'
    end
    object evenda: TRzDBNumericEdit
      Left = 49
      Top = 46
      Width = 78
      Height = 21
      DataSource = dsproduto2
      DataField = 'PRECOVENDA'
      Alignment = taLeftJustify
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      FocusColor = 11075583
      ParentFont = False
      TabOrder = 1
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
      IntegersOnly = False
      DisplayFormat = '###,###,##0.000'
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 130
      Top = 20
      Width = 24
      Height = 48
      Hint = 'Calcular pre'#231'o de custo/venda'
      Caption = 'F7'
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
        650041646F626520496D616765526561647971C9653C000003064944415478DA
        62BC7AF5EA7F2060F8F7EF1F03884666036931131393D70C78004000315EBE7C
        F9BF96961686C4F3E7CF195EBE7CC9F0FBF76F317373739C8600041013C82610
        78FAF429C3C58B17191E3F7E0CE64B4A4A32888A8A32303333BF3A7AF4A8282E
        0300028809E45C1078FDFA3583A1A121E3AB57AFCE7DFBF60DEC0D696969B821
        070F1EC46A084000C10D10161666387DFAF44F205F94858585E1ED0F068603CF
        181864656519C4C5C5C186ECDBB70FC310800062817901A4504646860DE867D9
        CFFFD81816DD6164F8F997111898FF181CE5E5C12E7A777FDBAB9BCB663330F3
        E8327C7D739081F1C7D378800062014A7C7FF7EE1DA790901058D1873F2C0C8B
        6E3332F0B2313208B031309C7FCB0434FE1F8305C765066EE6A70C9CBA310CFC
        8A860C1FEEAB33DCD835A70B2080405E70BF73E7CEF7376FDE809CC9F006E8F4
        5FFF181940DA588084003B03C39B273B187E7EBCC420A46ACDF0FDDD7586EF0F
        4E32F0F24930F008CBF103041023C80BC78E1DB3061AB45B55559513146837DF
        FF63D8F490894180838941EAE721066BB63D0C024AEE0C3F9FAF60F8FE9691E1
        D5CD6F0C3F7F31327CFCC76D091040208B18ACACAC8E020D70BD71E3C677602C
        30A80B3231F8C9FF63E078BF9FC18675078380B217C38F67B3191859DF33B0F2
        F032B0FF79CDF05AC896E1B5A0ED73800062840522080043D91AC8DFADA9A9C9
        C9F0FE3403D3F7E30C623A010C3F9E4E676062FDC3F0EBB322C3EB23E7191E89
        0533BCFBC7AF141C1C7C1F2080500C0081DDBB775BFF7D73729FBCF06736755B
        1F865F2F17323032FF62F8F15106ACF981743CC3879F2C4A212121F741EA0102
        88093D5E1FAD4FD69013F8CEF6FB9F14C3F3CB9381E1FF83E1EB3B698657C7AF
        323C908A45D10C020001C4826E009F82DA1C2D9B34869B2B4A186E1D3EC6C02E
        A7CFF0EFF32B861FCAD10C1F7EB1A16806018000C270C1CD3B2FFEFCBABA8541
        51DF96819B5B9DE1E9F95B0C5F142218DEFFE1C2D00C020001841106617642DF
        8D94C459CC341519FEB3FE3CF689D36CD21F11A3D3A1A1A18FB0E50580000300
        B27C5133B8ED443E0000000049454E44AE426082}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = AdvGlowButton1Click
      Appearance.BorderColor = 12179676
      Appearance.BorderColorHot = clHighlight
      Appearance.BorderColorDown = clHighlight
      Appearance.BorderColorChecked = clBlack
      Appearance.ColorTo = 12179676
      Appearance.ColorChecked = 12179676
      Appearance.ColorCheckedTo = 12179676
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 11899524
      Appearance.ColorDownTo = 11899524
      Appearance.ColorHot = 15717318
      Appearance.ColorHotTo = 15717318
      Appearance.ColorMirror = 12179676
      Appearance.ColorMirrorTo = 12179676
      Appearance.ColorMirrorHot = 15717318
      Appearance.ColorMirrorHotTo = 15717318
      Appearance.ColorMirrorDown = 11899524
      Appearance.ColorMirrorDownTo = 11899524
      Appearance.ColorMirrorChecked = 12179676
      Appearance.ColorMirrorCheckedTo = 12179676
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Layout = blGlyphTop
    end
  end
  object GroupBox2: TGroupBox
    Left = 628
    Top = 109
    Width = 141
    Height = 90
    Caption = 'Tributa'#231#227'o'
    TabOrder = 12
    object Label30: TLabel
      Left = 5
      Top = 44
      Width = 44
      Height = 12
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ICMS:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label73: TLabel
      Left = 6
      Top = 20
      Width = 40
      Height = 12
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CST:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label36: TLabel
      Left = 5
      Top = 68
      Width = 44
      Height = 12
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CFOP:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ealiq: TRxDBCalcEdit
      Left = 52
      Top = 41
      Width = 77
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'ALIQUOTA'
      DataSource = dsproduto2
      DecimalPlaces = 15
      DisplayFormat = '#0.00'
      ButtonWidth = 0
      NumGlyphs = 2
      TabOrder = 1
      OnEnter = DBEdit1Enter
      OnExit = ealiqExit
      OnKeyPress = ealiqKeyPress
    end
    object dbedit13: TRzDBButtonEdit
      Left = 52
      Top = 17
      Width = 81
      Height = 21
      DataSource = dsproduto2
      DataField = 'CST'
      FocusColor = 10550008
      TabOrder = 0
      OnKeyPress = DBEdit13KeyPress
      AltBtnWidth = 15
      ButtonWidth = 15
      OnButtonClick = dbedit13ButtonClick
    end
    object RzDBButtonEdit1: TRzDBButtonEdit
      Left = 52
      Top = 64
      Width = 79
      Height = 21
      DataSource = dsproduto2
      DataField = 'IND_CFOP'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      FocusColor = 11075583
      ParentFont = False
      TabOrder = 2
      OnExit = RzDBButtonEdit1Exit
      OnKeyPress = RzDBButtonEdit1KeyPress
      ButtonGlyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
        9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
        C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
        A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
        E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
        F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
        DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
        F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
        D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
        F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
        DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
        F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
        E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ButtonNumGlyphs = 1
      ButtonKind = bkCustom
      ButtonShortCut = 117
      AltBtnWidth = 15
      ButtonWidth = 24
      OnButtonClick = RzDBButtonEdit1ButtonClick
    end
  end
  object GroupBox8: TGroupBox
    Left = 448
    Top = 78
    Width = 233
    Height = 32
    Caption = #218'ltima Compra'
    TabOrder = 22
    object Label74: TLabel
      Left = 6
      Top = 14
      Width = 35
      Height = 12
      AutoSize = False
      Caption = 'Data:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label75: TLabel
      Left = 122
      Top = 14
      Width = 59
      Height = 12
      AutoSize = False
      Caption = 'Nota Fiscal:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ldata_compra: TLabel
      Left = 38
      Top = 14
      Width = 80
      Height = 12
      AutoSize = False
      Caption = '---'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lnf: TLabel
      Left = 183
      Top = 14
      Width = 47
      Height = 12
      AutoSize = False
      Caption = '000000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object GroupBox9: TGroupBox
    Left = 688
    Top = 78
    Width = 81
    Height = 32
    Caption = #218'ltima Venda'
    TabOrder = 23
    object ldata_venda: TLabel
      Left = 4
      Top = 14
      Width = 70
      Height = 12
      Alignment = taCenter
      AutoSize = False
      Caption = '---'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object gestoque: TGroupBox
    Left = 448
    Top = 75
    Width = 321
    Height = 35
    TabOrder = 10
    Visible = False
    object Label11: TLabel
      Left = 6
      Top = 12
      Width = 83
      Height = 12
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Estoque Inicial:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object eest: TRzDBNumericEdit
      Left = 98
      Top = 9
      Width = 79
      Height = 21
      DataSource = dsproduto2
      DataField = 'ESTOQUE'
      Alignment = taLeftJustify
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      FocusColor = 11075583
      ParentFont = False
      TabOrder = 0
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
      IntegersOnly = False
      DisplayFormat = '###,###,##0.000'
    end
  end
  object RzDBCheckBox1: TRzDBCheckBox
    Left = 701
    Top = 10
    Width = 53
    Height = 15
    DataField = 'SITUACAO'
    DataSource = dsproduto2
    ValueChecked = '1'
    ValueUnchecked = '0'
    Caption = 'Inativo'
    TabOrder = 24
  end
  object pexporta: TFlatPanel
    Left = 184
    Top = 168
    Width = 353
    Height = 25
    Caption = 'Exportando produto...'
    ParentColor = True
    Visible = False
    ColorHighLight = clRed
    ColorShadow = clRed
    TabOrder = 26
  end
  object Pop1: TPopupMenu
    Left = 880
    Top = 400
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
    object Servicos1: TMenuItem
      Caption = 'Servicos'
      ShortCut = 115
      OnClick = Servicos1Click
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
      OnClick = BitBtn5Click
    end
    object Regies1: TMenuItem
      Caption = 'Tabelas'
      ShortCut = 119
      OnClick = Regies1Click
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bfecharClick
    end
  end
  object Pop2: TPopupMenu
    Left = 912
    Top = 400
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
    object F31: TMenuItem
      Caption = 'Criar C'#225'lculo de Pre'#231'o'
      ShortCut = 116
      OnClick = BitBtn7Click
    end
    object ClculodePreo1: TMenuItem
      Caption = 'C'#225'lculo de Pre'#231'o'
      ShortCut = 118
    end
  end
  object dsproduto2: TDataSource
    DataSet = qrproduto
    OnDataChange = dsproduto2DataChange
    Left = 744
    Top = 776
  end
  object dsproduto: TDataSource
    Left = 872
    Top = 776
  end
  object dspreco: TDataSource
    DataSet = qrpreco
    Left = 777
    Top = 777
  end
  object dsserial_produto: TDataSource
    DataSet = frmmodulo.qrserial_produto
    Left = 905
    Top = 777
  end
  object dscomposicao_produto: TDataSource
    Left = 809
    Top = 777
  end
  object qrproduto_loc: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 874
    Top = 744
    object StringField3: TStringField
      DisplayWidth = 60
      FieldName = 'PRODUTO'
      Size = 60
    end
    object StringField1: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
  end
  object qrinfnutricional_produto: TDataSource
    DataSet = frmmodulo.qrinfnutricional_produto
    Left = 969
    Top = 777
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 777
    Top = 745
  end
  object query: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 936
    Top = 744
  end
  object qradic: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 968
    Top = 744
  end
  object dsadic: TDataSource
    DataSet = qradic
    Left = 937
    Top = 776
  end
  object qrcodbarra: TZQuery
    Connection = frmmodulo.Conexao
    BeforePost = qrcodbarraBeforePost
    SQL.Strings = (
      'select * from c000055')
    Params = <>
    Left = 792
    Top = 264
  end
  object dscodbarra: TDataSource
    DataSet = qrcodbarra
    Left = 688
    Top = 272
  end
  object qrbarra: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 888
    Top = 240
  end
  object qrentrada: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 809
    Top = 745
  end
  object qrsaida: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 841
    Top = 745
  end
  object qrmov_entrada: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrmov_entradaCalcFields
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 1066
    Top = 744
    object qrmov_entradacliente: TStringField
      DisplayLabel = 'CLIENTE'
      DisplayWidth = 28
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Size = 40
      Lookup = True
    end
    object qrmov_entradaCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrmov_entradaCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 15
    end
    object qrmov_entradaCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrmov_entradaUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object qrmov_entradaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrmov_entradaICMS: TFloatField
      FieldName = 'ICMS'
    end
    object qrmov_entradaIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrmov_entradaCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 6
    end
    object qrmov_entradaDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrmov_entradaNUMERONOTA: TWideStringField
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object qrmov_entradaCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrmov_entradaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrmov_entradaACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qrmov_entradaMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object qrmov_entradaCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrmov_entradaCODGRADE: TWideStringField
      FieldName = 'CODGRADE'
      Size = 6
    end
    object qrmov_entradaSERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrmov_entradaUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object qrmov_entradaQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrmov_entradaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrmov_entradaICMS_REDUZIDO: TFloatField
      FieldName = 'ICMS_REDUZIDO'
    end
    object qrmov_entradaBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object qrmov_entradaVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object qrmov_entradaSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrmov_entradaECF_SERIE: TWideStringField
      FieldName = 'ECF_SERIE'
    end
    object qrmov_entradaECF_CAIXA: TWideStringField
      FieldName = 'ECF_CAIXA'
      Size = 10
    end
    object qrmov_entradaCODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Size = 5
    end
    object qrmov_entradaCUPOM_NUMERO: TWideStringField
      FieldName = 'CUPOM_NUMERO'
      Size = 10
    end
    object qrmov_entradaCUPOM_MODELO: TWideStringField
      FieldName = 'CUPOM_MODELO'
      Size = 5
    end
    object qrmov_entradaCUPOM_ITEM: TWideStringField
      FieldName = 'CUPOM_ITEM'
      Size = 5
    end
    object qrmov_entradaALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrmov_entradaCST: TWideStringField
      FieldName = 'CST'
      Size = 3
    end
    object qrmov_entradaLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
      Size = 10
    end
    object qrmov_entradaMOVIMENTO_ESTOQUE: TFloatField
      FieldName = 'MOVIMENTO_ESTOQUE'
    end
    object qrmov_entradaLANCADO: TIntegerField
      FieldName = 'LANCADO'
    end
    object qrmov_entradaVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
    end
    object qrmov_entradaCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 25
    end
    object qrmov_entradaMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object qrmov_entradaCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
    end
    object qrmov_entradaPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrmov_entradaCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrmov_entradaLOJA: TWideStringField
      FieldName = 'LOJA'
      Size = 6
    end
    object qrmov_entradaCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object qrmov_entradaTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrmov_entradaCODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Size = 6
    end
    object qrmov_entradaORIGEM: TWideStringField
      FieldName = 'ORIGEM'
      Size = 40
    end
    object qrmov_entradaDESTINO: TWideStringField
      FieldName = 'DESTINO'
      Size = 40
    end
    object qrmov_entradaPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 200
    end
    object qrmov_entradaCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
      Size = 6
    end
  end
  object dsmov_entrada: TDataSource
    DataSet = qrmov_entrada
    Left = 1001
    Top = 777
  end
  object qrproduto_mov: TZQuery
    Connection = frmmodulo.Conexao
    BeforePost = qrproduto_movBeforePost
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 1034
    Top = 744
  end
  object qrmov_saida: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrmov_saidaCalcFields
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 1098
    Top = 744
    object StringField14: TStringField
      DisplayLabel = 'CLIENTE'
      DisplayWidth = 28
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = frmmodulo.qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Size = 40
      Lookup = True
    end
    object qrmov_saidaCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrmov_saidaCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 15
    end
    object qrmov_saidaCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrmov_saidaUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object qrmov_saidaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrmov_saidaICMS: TFloatField
      FieldName = 'ICMS'
    end
    object qrmov_saidaIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrmov_saidaCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 6
    end
    object qrmov_saidaDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrmov_saidaNUMERONOTA: TWideStringField
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object qrmov_saidaCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrmov_saidaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrmov_saidaACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qrmov_saidaMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object qrmov_saidaCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrmov_saidaCODGRADE: TWideStringField
      FieldName = 'CODGRADE'
      Size = 6
    end
    object qrmov_saidaSERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrmov_saidaUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object qrmov_saidaQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrmov_saidaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrmov_saidaICMS_REDUZIDO: TFloatField
      FieldName = 'ICMS_REDUZIDO'
    end
    object qrmov_saidaBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object qrmov_saidaVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object qrmov_saidaSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrmov_saidaECF_SERIE: TWideStringField
      FieldName = 'ECF_SERIE'
    end
    object qrmov_saidaECF_CAIXA: TWideStringField
      FieldName = 'ECF_CAIXA'
      Size = 10
    end
    object qrmov_saidaCODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Size = 5
    end
    object qrmov_saidaCUPOM_NUMERO: TWideStringField
      FieldName = 'CUPOM_NUMERO'
      Size = 10
    end
    object qrmov_saidaCUPOM_MODELO: TWideStringField
      FieldName = 'CUPOM_MODELO'
      Size = 5
    end
    object qrmov_saidaCUPOM_ITEM: TWideStringField
      FieldName = 'CUPOM_ITEM'
      Size = 5
    end
    object qrmov_saidaALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrmov_saidaCST: TWideStringField
      FieldName = 'CST'
      Size = 3
    end
    object qrmov_saidaLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
      Size = 10
    end
    object qrmov_saidaMOVIMENTO_ESTOQUE: TFloatField
      FieldName = 'MOVIMENTO_ESTOQUE'
    end
    object qrmov_saidaLANCADO: TIntegerField
      FieldName = 'LANCADO'
    end
    object qrmov_saidaVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
    end
    object qrmov_saidaCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 25
    end
    object qrmov_saidaMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object qrmov_saidaCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
    end
    object qrmov_saidaPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrmov_saidaCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrmov_saidaLOJA: TWideStringField
      FieldName = 'LOJA'
      Size = 6
    end
    object qrmov_saidaCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object qrmov_saidaTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrmov_saidaCODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Size = 6
    end
    object qrmov_saidaORIGEM: TWideStringField
      FieldName = 'ORIGEM'
      Size = 40
    end
    object qrmov_saidaDESTINO: TWideStringField
      FieldName = 'DESTINO'
      Size = 40
    end
    object qrmov_saidaPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 200
    end
    object qrmov_saidaCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
      Size = 6
    end
  end
  object dsmov_saida: TDataSource
    DataSet = qrmov_saida
    Left = 1033
    Top = 777
  end
  object qrestoque: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000100')
    Params = <>
    Left = 746
    Top = 744
  end
  object dsrentabilidade: TDataSource
    DataSet = QRRENTABILIDADE
    Left = 464
    Top = 177
  end
  object QRRENTABILIDADE: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000078')
    Params = <>
    Left = 632
    Top = 200
    object QRRENTABILIDADERENTABILIDADE: TWideStringField
      FieldName = 'RENTABILIDADE'
      Required = True
      Size = 6
    end
    object QRRENTABILIDADECODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object QRRENTABILIDADEPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 40
    end
    object QRRENTABILIDADERENDIMENTO: TFloatField
      FieldName = 'RENDIMENTO'
    end
    object QRRENTABILIDADEQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object QRRENTABILIDADEVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object QRRENTABILIDADECODIGO: TWideStringField
      FieldName = 'CODIGO'
      Size = 6
    end
  end
  object popmenu1: TAdvPopupMenu
    MenuStyler = AdvMenuOfficeStyler1
    Version = '2.5.4.3'
    Left = 520
    Top = 312
    object Inventrio1: TMenuItem
      Caption = 'Invent'#225'rio'
      OnClick = Inventrio1Click
    end
    object ControledeValidades1: TMenuItem
      Caption = 'Controle de Validades'
      OnClick = ControledeValidades1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object MovimentarEstoque1: TMenuItem
      Caption = 'Movimentar Estoque'
      OnClick = MovimentarEstoque1Click
    end
    object BaixanoEstoque1: TMenuItem
      Caption = 'Baixa no Estoque'
      OnClick = BaixanoEstoque1Click
    end
    object Servios1: TMenuItem
      Caption = 'Servi'#231'os'
      ShortCut = 115
      OnClick = Servios1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object GrupoSubgrupo1: TMenuItem
      Caption = 'Grupo / Subgrupo'
      OnClick = GrupoSubgrupo1Click
    end
    object Fornecedor1: TMenuItem
      Caption = 'Fornecedor'
      OnClick = Fornecedor1Click
    end
    object MarcaFabricanteLaboratrio1: TMenuItem
      Caption = 'Laborat'#243'rios'
      OnClick = MarcaFabricanteLaboratrio1Click
    end
    object NaturezadeOperaoCFOP1: TMenuItem
      Caption = 'Natureza de Opera'#231#227'o - CFOP'
      OnClick = NaturezadeOperaoCFOP1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Exportarparaarquivo1: TMenuItem
      Caption = 'Exportar para arquivo'
      OnClick = Exportarparaarquivo1Click
    end
    object ImportardeArquivo1: TMenuItem
      Caption = 'Importar de Arquivo'
      OnClick = ImportardeArquivo1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object otalizarestoque1: TMenuItem
      Caption = 'Totalizar estoque'
      OnClick = otalizarestoque1Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object AtualizaodePreos1: TMenuItem
      Caption = 'Atualiza'#231#227'o de Pre'#231'os'
      OnClick = AtualizaodePreos1Click
    end
    object Atuli1: TMenuItem
      Caption = 'Importa'#231#227'o de Pre'#231'os'
      OnClick = Atuli1Click
    end
  end
  object AdvMenuOfficeStyler1: TAdvMenuOfficeStyler
    AntiAlias = aaNone
    AutoThemeAdapt = False
    Style = osOffice2007Silver
    Background.Position = bpCenter
    Background.Color = 16448250
    Background.ColorTo = 16448250
    ButtonAppearance.DownColor = 13421257
    ButtonAppearance.DownColorTo = 15395047
    ButtonAppearance.HoverColor = 14737117
    ButtonAppearance.HoverColorTo = 16052977
    ButtonAppearance.DownBorderColor = 11906984
    ButtonAppearance.HoverBorderColor = 11906984
    ButtonAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    ButtonAppearance.CaptionFont.Color = clWindowText
    ButtonAppearance.CaptionFont.Height = -11
    ButtonAppearance.CaptionFont.Name = 'Tahoma'
    ButtonAppearance.CaptionFont.Style = []
    IconBar.Color = 15724527
    IconBar.ColorTo = 15724527
    IconBar.CheckBorder = clNavy
    IconBar.RadioBorder = clNavy
    IconBar.SeparatorColor = 12961221
    SelectedItem.Color = 15465983
    SelectedItem.ColorTo = 11267071
    SelectedItem.ColorMirror = 6936319
    SelectedItem.ColorMirrorTo = 9889023
    SelectedItem.BorderColor = 10079963
    SelectedItem.Font.Charset = DEFAULT_CHARSET
    SelectedItem.Font.Color = clWindowText
    SelectedItem.Font.Height = -11
    SelectedItem.Font.Name = 'Tahoma'
    SelectedItem.Font.Style = []
    SelectedItem.NotesFont.Charset = DEFAULT_CHARSET
    SelectedItem.NotesFont.Color = clWindowText
    SelectedItem.NotesFont.Height = -8
    SelectedItem.NotesFont.Name = 'Tahoma'
    SelectedItem.NotesFont.Style = []
    SelectedItem.CheckBorder = clNavy
    SelectedItem.RadioBorder = clNavy
    RootItem.ColorTo = 16249843
    RootItem.Font.Charset = DEFAULT_CHARSET
    RootItem.Font.Color = clMenuText
    RootItem.Font.Height = -11
    RootItem.Font.Name = 'Tahoma'
    RootItem.Font.Style = []
    RootItem.SelectedColor = 7778289
    RootItem.SelectedColorTo = 4296947
    RootItem.SelectedColorMirror = 946929
    RootItem.SelectedColorMirrorTo = 5021693
    RootItem.SelectedBorderColor = 4548219
    RootItem.HoverColor = 15465983
    RootItem.HoverColorTo = 11267071
    RootItem.HoverColorMirror = 6936319
    RootItem.HoverColorMirrorTo = 9889023
    RootItem.HoverBorderColor = 10079963
    Glyphs.SubMenu.Data = {
      5A000000424D5A000000000000003E0000002800000004000000070000000100
      0100000000001C0000000000000000000000020000000200000000000000FFFF
      FF0070000000300000001000000000000000100000003000000070000000}
    Glyphs.Check.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FDFF0000F8FF0000F07F0000F23F
      0000F71F0000FF8F0000FFCF0000FFEF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    Glyphs.Radio.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FC3F0000F81F0000F81F
      0000F81F0000F81F0000FC3F0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    SideBar.Font.Charset = DEFAULT_CHARSET
    SideBar.Font.Color = clWhite
    SideBar.Font.Height = -19
    SideBar.Font.Name = 'Tahoma'
    SideBar.Font.Style = [fsBold, fsItalic]
    SideBar.Image.Position = bpCenter
    SideBar.Background.Position = bpCenter
    SideBar.SplitterColorTo = clBlack
    Separator.Color = 12961221
    Separator.GradientType = gtBoth
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clGray
    NotesFont.Height = -8
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    MenuBorderColor = 8816262
    Left = 888
    Top = 480
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    AfterInsert = qrprodutoAfterInsert
    AfterEdit = qrprodutoAfterEdit
    BeforePost = qrprodutoBeforePost
    AfterPost = qrprodutoAfterPost
    AfterCancel = qrprodutoAfterCancel
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 776
    Top = 144
    object qrprodutogrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'grupo'
      LookupDataSet = frmmodulo.qrgrupo
      LookupKeyFields = 'codigo'
      LookupResultField = 'grupo'
      KeyFields = 'codgrupo'
      Size = 50
      Lookup = True
    end
    object qrprodutosubgrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'subgrupo'
      LookupDataSet = frmmodulo.qrsubgrupo
      LookupKeyFields = 'codigo'
      LookupResultField = 'subgrupo'
      KeyFields = 'codsubgrupo'
      Size = 50
      Lookup = True
    end
    object qrprodutofornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codfornecedor'
      Size = 80
      Lookup = True
    end
    object qrprodutomarca: TStringField
      FieldKind = fkLookup
      FieldName = 'marca'
      LookupDataSet = frmmodulo.qrmarca
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codmarca'
      Size = 80
      Lookup = True
    end
    object qrprodutoreceitas: TStringField
      FieldKind = fkLookup
      FieldName = 'receitas'
      LookupDataSet = frmmodulo.qrreceita
      LookupKeyFields = 'codigo'
      LookupResultField = 'RECEITA'
      KeyFields = 'CODRECEITA'
      Size = 100
      Lookup = True
    end
    object qrprodutoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrprodutoCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrprodutoPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 100
    end
    object qrprodutoUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrprodutoDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object qrprodutoCODGRUPO: TWideStringField
      FieldName = 'CODGRUPO'
      Size = 6
    end
    object qrprodutoCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object qrprodutoCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrprodutoCODMARCA: TWideStringField
      FieldName = 'CODMARCA'
      Size = 6
    end
    object qrprodutoDATA_ULTIMACOMPRA: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qrprodutoNOTAFISCAL: TWideStringField
      FieldName = 'NOTAFISCAL'
      Size = 7
    end
    object qrprodutoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object qrprodutoPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object qrprodutoDATA_ULTIMAVENDA: TDateTimeField
      FieldName = 'DATA_ULTIMAVENDA'
    end
    object qrprodutoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrprodutoESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
    end
    object qrprodutoCODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Size = 5
    end
    object qrprodutoAPLICACAO: TWideMemoField
      FieldName = 'APLICACAO'
      BlobType = ftWideMemo
    end
    object qrprodutoLOCALICAZAO: TWideStringField
      FieldName = 'LOCALICAZAO'
      Size = 50
    end
    object qrprodutoPESO: TFloatField
      FieldName = 'PESO'
    end
    object qrprodutoVALIDADE: TWideStringField
      FieldName = 'VALIDADE'
    end
    object qrprodutoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qrprodutoUSA_BALANCA: TIntegerField
      FieldName = 'USA_BALANCA'
    end
    object qrprodutoUSA_SERIAL: TIntegerField
      FieldName = 'USA_SERIAL'
    end
    object qrprodutoUSA_GRADE: TIntegerField
      FieldName = 'USA_GRADE'
    end
    object qrprodutoCODRECEITA: TWideStringField
      FieldName = 'CODRECEITA'
      Size = 6
    end
    object qrprodutoFOTO: TWideStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA_ANTERIOR'
    end
    object qrprodutoNOTAFISCAL_ANTERIOR: TWideStringField
      FieldName = 'NOTAFISCAL_ANTERIOR'
      Size = 6
    end
    object qrprodutoCODFORNECEDOR_ANTERIOR: TWideStringField
      FieldName = 'CODFORNECEDOR_ANTERIOR'
      Size = 6
    end
    object qrprodutoPRECOCUSTO_ANTERIOR: TFloatField
      FieldName = 'PRECOCUSTO_ANTERIOR'
    end
    object qrprodutoPRECOVENDA_ANTERIOR: TFloatField
      FieldName = 'PRECOVENDA_ANTERIOR'
    end
    object qrprodutoCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
    end
    object qrprodutoAUTO_APLICACAO: TWideStringField
      FieldName = 'AUTO_APLICACAO'
      Size = 60
    end
    object qrprodutoAUTO_COMPLEMENTO: TWideStringField
      FieldName = 'AUTO_COMPLEMENTO'
      Size = 60
    end
    object qrprodutoDATA_REMARCACAO_CUSTO: TDateTimeField
      FieldName = 'DATA_REMARCACAO_CUSTO'
    end
    object qrprodutoDATA_REMARCACAO_VENDA: TDateTimeField
      FieldName = 'DATA_REMARCACAO_VENDA'
    end
    object qrprodutoPRECO_PROMOCAO: TFloatField
      FieldName = 'PRECO_PROMOCAO'
    end
    object qrprodutoDATA_PROMOCAO: TDateTimeField
      FieldName = 'DATA_PROMOCAO'
    end
    object qrprodutoFIM_PROMOCAO: TDateTimeField
      FieldName = 'FIM_PROMOCAO'
    end
    object qrprodutoCST: TWideStringField
      FieldName = 'CST'
      Size = 10
    end
    object qrprodutoCLASSIFICACAO_FISCAL: TWideStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
    end
    object qrprodutoNBM: TWideStringField
      FieldName = 'NBM'
    end
    object qrprodutoNCM: TWideStringField
      FieldName = 'NCM'
    end
    object qrprodutoALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrprodutoIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrprodutoREDUCAO: TFloatField
      FieldName = 'REDUCAO'
    end
    object qrprodutoQTDE_EMBALAGEM: TFloatField
      FieldName = 'QTDE_EMBALAGEM'
    end
    object qrprodutoTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object qrprodutoPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object qrprodutoFARMACIA_CONTROLADO: TWideStringField
      FieldName = 'FARMACIA_CONTROLADO'
      Size = 1
    end
    object qrprodutoFARMACIA_APRESENTACAO: TIntegerField
      FieldName = 'FARMACIA_APRESENTACAO'
    end
    object qrprodutoFARMACIA_REGISTRO_MEDICAMENTO: TWideStringField
      FieldName = 'FARMACIA_REGISTRO_MEDICAMENTO'
    end
    object qrprodutoFARMACIA_PMC: TFloatField
      FieldName = 'FARMACIA_PMC'
    end
    object qrprodutoULTIMA_ALTERACAO: TDateTimeField
      FieldName = 'ULTIMA_ALTERACAO'
    end
    object qrprodutoULTIMA_CARGA: TDateTimeField
      FieldName = 'ULTIMA_CARGA'
    end
    object qrprodutoDATA_INVENTARIO: TDateTimeField
      FieldName = 'DATA_INVENTARIO'
    end
    object qrprodutoCUSTO_INVENTARIO: TFloatField
      FieldName = 'CUSTO_INVENTARIO'
    end
    object qrprodutoESTOQUE_INVENTARIO: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO'
    end
    object qrprodutoESTOQUE_ANTERIOR: TFloatField
      FieldName = 'ESTOQUE_ANTERIOR'
    end
    object qrprodutoPRECOVENDA_NOVO: TFloatField
      FieldName = 'PRECOVENDA_NOVO'
    end
    object qrprodutoUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
    end
    object qrprodutoQUANTIDADE_MINIMA_FAB: TFloatField
      FieldName = 'QUANTIDADE_MINIMA_FAB'
    end
    object qrprodutoAPRESENTACAO: TWideStringField
      FieldName = 'APRESENTACAO'
      Size = 60
    end
    object qrprodutoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrprodutoPRECOVENDA1: TFloatField
      FieldName = 'PRECOVENDA1'
    end
    object qrprodutoPRECOVENDA2: TFloatField
      FieldName = 'PRECOVENDA2'
    end
    object qrprodutoPRECOVENDA3: TFloatField
      FieldName = 'PRECOVENDA3'
    end
    object qrprodutoPRECOVENDA4: TFloatField
      FieldName = 'PRECOVENDA4'
    end
    object qrprodutoPRECOVENDA5: TFloatField
      FieldName = 'PRECOVENDA5'
    end
    object qrprodutoDESCONTO_PRECOVENDA: TFloatField
      FieldName = 'DESCONTO_PRECOVENDA'
    end
    object qrprodutoDATA_INVENTARIO_ATUAL: TDateTimeField
      FieldName = 'DATA_INVENTARIO_ATUAL'
    end
    object qrprodutoCUSTO_INVENTARIO_ATUAL: TFloatField
      FieldName = 'CUSTO_INVENTARIO_ATUAL'
    end
    object qrprodutoESTOQUE_INVENTARIO_ATUAL: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO_ATUAL'
    end
    object qrprodutoMARGEM_MINIMA: TFloatField
      FieldName = 'MARGEM_MINIMA'
    end
    object qrprodutoPISCOFINS: TWideStringField
      FieldName = 'PISCOFINS'
      Size = 1
    end
    object qrprodutoREFERENCIA_FORNECEDOR: TWideStringField
      FieldName = 'REFERENCIA_FORNECEDOR'
      Size = 30
    end
    object qrprodutoCOMISSAO1: TFloatField
      FieldName = 'COMISSAO1'
    end
    object qrprodutoMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object qrprodutoTAMANHO: TWideStringField
      FieldName = 'TAMANHO'
      Size = 6
    end
    object qrprodutoCOR: TWideStringField
      FieldName = 'COR'
      Size = 6
    end
    object qrprodutoINCIDENCIA_PISCOFINS: TWideStringField
      FieldName = 'INCIDENCIA_PISCOFINS'
      Size = 30
    end
    object qrprodutoVEIC_CHASSI: TWideStringField
      FieldName = 'VEIC_CHASSI'
      Size = 50
    end
    object qrprodutoVEIC_SERIE: TWideStringField
      FieldName = 'VEIC_SERIE'
      Size = 50
    end
    object qrprodutoVEIC_POTENCIA: TWideStringField
      FieldName = 'VEIC_POTENCIA'
      Size = 50
    end
    object qrprodutoVEIC_PESO_LIQUIDO: TWideStringField
      FieldName = 'VEIC_PESO_LIQUIDO'
      Size = 15
    end
    object qrprodutoVEIC_PESO_BRUTO: TWideStringField
      FieldName = 'VEIC_PESO_BRUTO'
      Size = 15
    end
    object qrprodutoVEIC_TIPO_COMBUSTIVEL: TWideStringField
      FieldName = 'VEIC_TIPO_COMBUSTIVEL'
    end
    object qrprodutoVEIC_RENAVAM: TWideStringField
      FieldName = 'VEIC_RENAVAM'
      Size = 50
    end
    object qrprodutoVEIC_ANO_FABRICACAO: TIntegerField
      FieldName = 'VEIC_ANO_FABRICACAO'
    end
    object qrprodutoVEIC_ANO_MODELO: TIntegerField
      FieldName = 'VEIC_ANO_MODELO'
    end
    object qrprodutoVEIC_TIPO: TWideStringField
      FieldName = 'VEIC_TIPO'
      Size = 50
    end
    object qrprodutoVEIC_TIPO_PINTURA: TWideStringField
      FieldName = 'VEIC_TIPO_PINTURA'
      Size = 15
    end
    object qrprodutoVEIC_COD_COR: TWideStringField
      FieldName = 'VEIC_COD_COR'
      Size = 15
    end
    object qrprodutoVEIC_COR: TWideStringField
      FieldName = 'VEIC_COR'
      Size = 30
    end
    object qrprodutoVEIC_VIN: TWideStringField
      FieldName = 'VEIC_VIN'
      Size = 10
    end
    object qrprodutoVEIC_NUMERO_MOTOR: TWideStringField
      FieldName = 'VEIC_NUMERO_MOTOR'
      Size = 50
    end
    object qrprodutoVEIC_CMKG: TWideStringField
      FieldName = 'VEIC_CMKG'
      Size = 15
    end
    object qrprodutoVEIC_CM3: TWideStringField
      FieldName = 'VEIC_CM3'
      Size = 15
    end
    object qrprodutoVEIC_DISTANCIA_EIXO: TWideStringField
      FieldName = 'VEIC_DISTANCIA_EIXO'
      Size = 15
    end
    object qrprodutoVEIC_COD_MARCA: TWideStringField
      FieldName = 'VEIC_COD_MARCA'
      Size = 15
    end
    object qrprodutoVEIC_ESPECIE: TWideStringField
      FieldName = 'VEIC_ESPECIE'
      Size = 50
    end
    object qrprodutoVEIC_CONDICAO: TWideStringField
      FieldName = 'VEIC_CONDICAO'
      Size = 50
    end
    object qrprodutoLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
    end
    object qrprodutoLOTE_VALIDADE: TDateTimeField
      FieldName = 'LOTE_VALIDADE'
    end
    object qrprodutoMARGEM_AGREGADA: TFloatField
      FieldName = 'MARGEM_AGREGADA'
    end
    object qrprodutoCODBARRA_NOVARTIS: TWideStringField
      FieldName = 'CODBARRA_NOVARTIS'
      Size = 13
    end
    object qrprodutoFARMACIA_DCB: TWideStringField
      FieldName = 'FARMACIA_DCB'
    end
    object qrprodutoFARMACIA_ABCFARMA: TWideStringField
      FieldName = 'FARMACIA_ABCFARMA'
      Size = 10
    end
    object qrprodutoFARMACIA_APRESENTACAO_CAIXA: TWideStringField
      FieldName = 'FARMACIA_APRESENTACAO_CAIXA'
      Size = 10
    end
    object qrprodutoFARMACIA_PRINCIPIOATIVO: TWideStringField
      FieldName = 'FARMACIA_PRINCIPIOATIVO'
      Size = 30
    end
    object qrprodutoULTIMA_COMPRA: TDateTimeField
      FieldName = 'ULTIMA_COMPRA'
    end
    object qrprodutoFARMACIA_DATAVIGENCIA: TDateTimeField
      FieldName = 'FARMACIA_DATAVIGENCIA'
    end
    object qrprodutoFARMACIA_TIPO: TWideStringField
      FieldName = 'FARMACIA_TIPO'
      Size = 1
    end
    object qrprodutoUSA_COMBUSTIVEL: TWideStringField
      FieldName = 'USA_COMBUSTIVEL'
      Size = 1
    end
    object qrprodutoREFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object qrprodutoPERDA: TFloatField
      FieldName = 'PERDA'
    end
    object qrprodutoCOMPOSICAO1: TWideStringField
      FieldName = 'COMPOSICAO1'
      Size = 30
    end
    object qrprodutoCOMPOSICAO2: TWideStringField
      FieldName = 'COMPOSICAO2'
      Size = 30
    end
    object qrprodutoIAT: TWideStringField
      FieldName = 'IAT'
      Size = 1
    end
    object qrprodutoIPPT: TWideStringField
      FieldName = 'IPPT'
      Size = 1
    end
    object qrprodutoSITUACAO_TRIBUTARIA: TWideStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Size = 1
    end
    object qrprodutoFLAG_SIS: TWideStringField
      FieldName = 'FLAG_SIS'
      Size = 1
    end
    object qrprodutoFLAG_ACEITO: TWideStringField
      FieldName = 'FLAG_ACEITO'
      Size = 3
    end
    object qrprodutoFLAG_EST: TWideStringField
      FieldName = 'FLAG_EST'
      Size = 1
    end
    object qrprodutoCSOSN: TWideStringField
      FieldName = 'CSOSN'
      Size = 60
    end
    object qrprodutoCODORIGINAL: TWideStringField
      FieldName = 'CODORIGINAL'
    end
    object qrprodutoCUSTO_ATACADO: TFloatField
      FieldName = 'CUSTO_ATACADO'
    end
    object qrprodutoUNIDADE_ATACADO: TWideStringField
      FieldName = 'UNIDADE_ATACADO'
      Size = 2
    end
    object qrprodutoQTDE_EMBALAGEMATACADO: TFloatField
      FieldName = 'QTDE_EMBALAGEMATACADO'
    end
    object qrprodutoPMARGEM1: TFloatField
      FieldName = 'PMARGEM1'
    end
    object qrprodutoPMARGEM2: TFloatField
      FieldName = 'PMARGEM2'
    end
    object qrprodutoPMARGEM3: TFloatField
      FieldName = 'PMARGEM3'
    end
    object qrprodutoPMARGEM4: TFloatField
      FieldName = 'PMARGEM4'
    end
    object qrprodutoPMARGEM5: TFloatField
      FieldName = 'PMARGEM5'
    end
    object qrprodutoPMARGEMATACADO1: TFloatField
      FieldName = 'PMARGEMATACADO1'
    end
    object qrprodutoPMARGEMATACADO2: TFloatField
      FieldName = 'PMARGEMATACADO2'
    end
    object qrprodutoPMARGEMATACADO3: TFloatField
      FieldName = 'PMARGEMATACADO3'
    end
    object qrprodutoPMARGEMATACADO4: TFloatField
      FieldName = 'PMARGEMATACADO4'
    end
    object qrprodutoPMARGEMATACADO5: TFloatField
      FieldName = 'PMARGEMATACADO5'
    end
    object qrprodutoPMARGEMATACADO6: TFloatField
      FieldName = 'PMARGEMATACADO6'
    end
    object qrprodutoPRECOATACADO1: TFloatField
      FieldName = 'PRECOATACADO1'
    end
    object qrprodutoPRECOATACADO2: TFloatField
      FieldName = 'PRECOATACADO2'
    end
    object qrprodutoPRECOATACADO3: TFloatField
      FieldName = 'PRECOATACADO3'
    end
    object qrprodutoPRECOATACADO4: TFloatField
      FieldName = 'PRECOATACADO4'
    end
    object qrprodutoPRECOATACADO5: TFloatField
      FieldName = 'PRECOATACADO5'
    end
    object qrprodutoIND_CFOP: TWideStringField
      FieldName = 'IND_CFOP'
      Size = 6
    end
    object qrprodutoCFOP_DESC: TWideStringField
      FieldName = 'CFOP_DESC'
      Size = 30
    end
    object qrprodutoUSA_LOTE: TIntegerField
      FieldName = 'USA_LOTE'
    end
    object qrprodutoIND_CFOP_VENDA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_VENDA_DENTRO'
      Size = 6
    end
    object qrprodutoCODCONTA: TWideStringField
      FieldName = 'CODCONTA'
      Size = 6
    end
    object qrprodutoIND_CFOP_VENDA_FORA: TWideStringField
      FieldName = 'IND_CFOP_VENDA_FORA'
      Size = 6
    end
    object qrprodutoIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_DENTRO'
      Size = 6
    end
    object qrprodutoIND_CFOP_DEVOLUCAO_FORA: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_FORA'
      Size = 6
    end
    object qrprodutoIND_CFOP_GARANTIA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_DENTRO'
      Size = 6
    end
    object qrprodutoIND_CFOP_GARANTIA_FORA: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_FORA'
      Size = 6
    end
    object qrprodutoUSA_TB_PC: TWideStringField
      FieldName = 'USA_TB_PC'
      Size = 4
    end
  end
  object qrpreco: TZQuery
    Connection = frmmodulo.Conexao
    BeforeInsert = qrprecoBeforeInsert
    BeforeEdit = qrprecoBeforeEdit
    SQL.Strings = (
      'select * from c000026')
    Params = <>
    Left = 384
    Top = 192
    object qrprecoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrprecoCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrprecoCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
      Size = 6
    end
    object qrprecoDATA_ALTERACAO: TDateTimeField
      FieldName = 'DATA_ALTERACAO'
    end
    object qrprecoCP_VPRECOCOMPRA: TFloatField
      FieldName = 'CP_VPRECOCOMPRA'
    end
    object qrprecoCP_PIPI: TFloatField
      FieldName = 'CP_PIPI'
    end
    object qrprecoCP_VIPI: TFloatField
      FieldName = 'CP_VIPI'
    end
    object qrprecoCP_PRETENCAO: TFloatField
      FieldName = 'CP_PRETENCAO'
    end
    object qrprecoCP_VRETENCAO: TFloatField
      FieldName = 'CP_VRETENCAO'
    end
    object qrprecoCP_PFRETE: TFloatField
      FieldName = 'CP_PFRETE'
    end
    object qrprecoCP_VFRETE: TFloatField
      FieldName = 'CP_VFRETE'
    end
    object qrprecoCP_PICMS: TFloatField
      FieldName = 'CP_PICMS'
    end
    object qrprecoCP_VICMS: TFloatField
      FieldName = 'CP_VICMS'
    end
    object qrprecoCP_PREDUCAO: TFloatField
      FieldName = 'CP_PREDUCAO'
    end
    object qrprecoCP_VREDUCAO: TFloatField
      FieldName = 'CP_VREDUCAO'
    end
    object qrprecoCP_PPIS: TFloatField
      FieldName = 'CP_PPIS'
    end
    object qrprecoCP_VPIS: TFloatField
      FieldName = 'CP_VPIS'
    end
    object qrprecoCP_PCOFINS: TFloatField
      FieldName = 'CP_PCOFINS'
    end
    object qrprecoCP_VCOFINS: TFloatField
      FieldName = 'CP_VCOFINS'
    end
    object qrprecoCP_PSEGURO: TFloatField
      FieldName = 'CP_PSEGURO'
    end
    object qrprecoCP_VSEGURO: TFloatField
      FieldName = 'CP_VSEGURO'
    end
    object qrprecoCP_POUTROS: TFloatField
      FieldName = 'CP_POUTROS'
    end
    object qrprecoCP_VOUTROS: TFloatField
      FieldName = 'CP_VOUTROS'
    end
    object qrprecoVD_PICMS: TFloatField
      FieldName = 'VD_PICMS'
    end
    object qrprecoVD_VICMS: TFloatField
      FieldName = 'VD_VICMS'
    end
    object qrprecoVD_PREDUCAO: TFloatField
      FieldName = 'VD_PREDUCAO'
    end
    object qrprecoVD_VREDUCAO: TFloatField
      FieldName = 'VD_VREDUCAO'
    end
    object qrprecoVD_PSIMPLES: TFloatField
      FieldName = 'VD_PSIMPLES'
    end
    object qrprecoVD_VSIMPLES: TFloatField
      FieldName = 'VD_VSIMPLES'
    end
    object qrprecoVD_PPIS: TFloatField
      FieldName = 'VD_PPIS'
    end
    object qrprecoVD_VPIS: TFloatField
      FieldName = 'VD_VPIS'
    end
    object qrprecoVD_PCOFINS: TFloatField
      FieldName = 'VD_PCOFINS'
    end
    object qrprecoVD_VCOFINS: TFloatField
      FieldName = 'VD_VCOFINS'
    end
    object qrprecoVD_PIRPJ: TFloatField
      FieldName = 'VD_PIRPJ'
    end
    object qrprecoVD_VIRPJ: TFloatField
      FieldName = 'VD_VIRPJ'
    end
    object qrprecoVD_PCONTSOCIAL: TFloatField
      FieldName = 'VD_PCONTSOCIAL'
    end
    object qrprecoVD_VCONTSOCIAL: TFloatField
      FieldName = 'VD_VCONTSOCIAL'
    end
    object qrprecoVD_PDFIXA: TFloatField
      FieldName = 'VD_PDFIXA'
    end
    object qrprecoVD_VDFIXA: TFloatField
      FieldName = 'VD_VDFIXA'
    end
    object qrprecoVD_PCOMISSAO: TFloatField
      FieldName = 'VD_PCOMISSAO'
    end
    object qrprecoVD_VCOMISSAO: TFloatField
      FieldName = 'VD_VCOMISSAO'
    end
    object qrprecoVD_PDESCMAX: TFloatField
      FieldName = 'VD_PDESCMAX'
    end
    object qrprecoVD_VDESCMAX: TFloatField
      FieldName = 'VD_VDESCMAX'
    end
    object qrprecoPCUSTO_COMPRA: TFloatField
      FieldName = 'PCUSTO_COMPRA'
    end
    object qrprecoVCUSTO_COMPRA: TFloatField
      FieldName = 'VCUSTO_COMPRA'
    end
    object qrprecoPCUSTO_VENDA: TFloatField
      FieldName = 'PCUSTO_VENDA'
    end
    object qrprecoVCUSTO_VENDA: TFloatField
      FieldName = 'VCUSTO_VENDA'
    end
    object qrprecoPRECO_LIQUIDO: TFloatField
      FieldName = 'PRECO_LIQUIDO'
    end
    object qrprecoPRECO_UNITARIO: TFloatField
      FieldName = 'PRECO_UNITARIO'
    end
    object qrprecoFRACAO: TFloatField
      FieldName = 'FRACAO'
    end
    object qrprecoPMARGEM1: TFloatField
      FieldName = 'PMARGEM1'
    end
    object qrprecoPMARGEM2: TFloatField
      FieldName = 'PMARGEM2'
    end
    object qrprecoPMARGEM3: TFloatField
      FieldName = 'PMARGEM3'
    end
    object qrprecoPMARGEM4: TFloatField
      FieldName = 'PMARGEM4'
    end
    object qrprecoPMARGEM5: TFloatField
      FieldName = 'PMARGEM5'
    end
    object qrprecoPRECOVAREJO1: TFloatField
      FieldName = 'PRECOVAREJO1'
    end
    object qrprecoPRECOVAREJO2: TFloatField
      FieldName = 'PRECOVAREJO2'
    end
    object qrprecoPRECOVAREJO3: TFloatField
      FieldName = 'PRECOVAREJO3'
    end
    object qrprecoPRECOVAREJO4: TFloatField
      FieldName = 'PRECOVAREJO4'
    end
    object qrprecoPRECOVAREJO5: TFloatField
      FieldName = 'PRECOVAREJO5'
    end
    object qrprecoPMARGEMATACADO1: TFloatField
      FieldName = 'PMARGEMATACADO1'
    end
    object qrprecoPMARGEMATACADO2: TFloatField
      FieldName = 'PMARGEMATACADO2'
    end
    object qrprecoPMARGEMATACADO3: TFloatField
      FieldName = 'PMARGEMATACADO3'
    end
    object qrprecoPMARGEMATACADO4: TFloatField
      FieldName = 'PMARGEMATACADO4'
    end
    object qrprecoPMARGEMATACADO5: TFloatField
      FieldName = 'PMARGEMATACADO5'
    end
    object qrprecoPRECOATACADO1: TFloatField
      FieldName = 'PRECOATACADO1'
    end
    object qrprecoPRECOATACADO2: TFloatField
      FieldName = 'PRECOATACADO2'
    end
    object qrprecoPRECOATACADO3: TFloatField
      FieldName = 'PRECOATACADO3'
    end
    object qrprecoPRECOATACADO4: TFloatField
      FieldName = 'PRECOATACADO4'
    end
    object qrprecoPRECOATACADO5: TFloatField
      FieldName = 'PRECOATACADO5'
    end
    object qrprecoTIPO_REGIME: TIntegerField
      FieldName = 'TIPO_REGIME'
    end
    object qrprecoTIPO_CALCULO: TIntegerField
      FieldName = 'TIPO_CALCULO'
    end
    object qrprecoVCUSTO_COMPRA_ANT: TFloatField
      FieldName = 'VCUSTO_COMPRA_ANT'
    end
    object qrprecoPRECOVAREJO1_ANT: TFloatField
      FieldName = 'PRECOVAREJO1_ANT'
    end
    object qrprecoCUSTO_COMPRA: TFloatField
      FieldName = 'CUSTO_COMPRA'
    end
    object qrprecoVALOR_ULTIMA_COMPRA: TFloatField
      FieldName = 'VALOR_ULTIMA_COMPRA'
    end
    object qrprecoFRETE_IPI_OUTRAS: TFloatField
      FieldName = 'FRETE_IPI_OUTRAS'
    end
    object qrprecoICMS_ENTRADA: TFloatField
      FieldName = 'ICMS_ENTRADA'
    end
    object qrprecoICMS_SAIDA: TFloatField
      FieldName = 'ICMS_SAIDA'
    end
    object qrprecoCUSTO_OPERACIONAL: TFloatField
      FieldName = 'CUSTO_OPERACIONAL'
    end
    object qrprecoOUTROS_IMPOSTOS: TFloatField
      FieldName = 'OUTROS_IMPOSTOS'
    end
    object qrprecoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qrprecoLUCRO: TFloatField
      FieldName = 'LUCRO'
    end
    object qrprecoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object qrprecoICMS_ENTRADA_P: TFloatField
      FieldName = 'ICMS_ENTRADA_P'
    end
    object qrprecoICMS_SAIDA_P: TFloatField
      FieldName = 'ICMS_SAIDA_P'
    end
    object qrprecoCUSTO_OPERACIONAL_P: TFloatField
      FieldName = 'CUSTO_OPERACIONAL_P'
    end
    object qrprecoOUTROS_IMPOSTOS_P: TFloatField
      FieldName = 'OUTROS_IMPOSTOS_P'
    end
    object qrprecoCOMISSAO_P: TFloatField
      FieldName = 'COMISSAO_P'
    end
    object qrprecoLUCRO_P: TFloatField
      FieldName = 'LUCRO_P'
    end
    object qrprecoTOTAL_CUSTO: TFloatField
      FieldName = 'TOTAL_CUSTO'
    end
    object qrprecoTOTAL_CUSTO_P: TFloatField
      FieldName = 'TOTAL_CUSTO_P'
    end
    object qrprecoPRECO_AUTOMATICO: TIntegerField
      FieldName = 'PRECO_AUTOMATICO'
    end
    object qrprecoALTERA_AUTOMATICO: TIntegerField
      FieldName = 'ALTERA_AUTOMATICO'
    end
    object qrprecoNOVO_PRECO_VENDA: TFloatField
      FieldName = 'NOVO_PRECO_VENDA'
    end
    object qrprecoNOVO_PRECO_CUSTO: TFloatField
      FieldName = 'NOVO_PRECO_CUSTO'
    end
    object qrprecoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrprecoFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object qrprecoSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object qrprecoOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
    end
    object qrprecoIPI_P: TFloatField
      FieldName = 'IPI_P'
    end
    object qrprecoIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrprecoPIS_P: TFloatField
      FieldName = 'PIS_P'
    end
    object qrprecoPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrprecoCOFINS_P: TFloatField
      FieldName = 'COFINS_P'
    end
    object qrprecoCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrprecoCONTRIBUICAO_SOCIAL_P: TFloatField
      FieldName = 'CONTRIBUICAO_SOCIAL_P'
    end
    object qrprecoCONTRIBUICAO_SOCIAL: TFloatField
      FieldName = 'CONTRIBUICAO_SOCIAL'
    end
    object qrprecoPIS_ENTRADA_P: TFloatField
      FieldName = 'PIS_ENTRADA_P'
    end
    object qrprecoPIS_ENTRADA: TFloatField
      FieldName = 'PIS_ENTRADA'
    end
    object qrprecoCOFINS_ENTRADA_P: TFloatField
      FieldName = 'COFINS_ENTRADA_P'
    end
    object qrprecoCOFINS_ENTRADA: TFloatField
      FieldName = 'COFINS_ENTRADA'
    end
    object qrprecoCONTRIBUICAO_SOCIAL_ENTRADA_P: TFloatField
      FieldName = 'CONTRIBUICAO_SOCIAL_ENTRADA_P'
    end
    object qrprecoSUBSTITUICAO_TRIBUTARIA: TFloatField
      FieldName = 'SUBSTITUICAO_TRIBUTARIA'
    end
  end
  object qrduplo: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 528
    Top = 200
  end
  object qrvenda_mes: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select sum(qtde) sum_0, '
      '(select sum(qtde) from c000032) , '
      '(select sum(qtde) from c000032) , '
      '(select sum(qtde) from c000032) , '
      '(select sum(qtde) from c000032) , '
      '(select sum(qtde) from c000032) , '
      '(select sum(qtde) from c000032) , '
      '(select sum(qtde) from c000032) , '
      '(select sum(qtde) from c000032) , '
      '(select sum(qtde) from c000032) , '
      '(select sum(qtde) from c000032) , '
      '(select sum(qtde) from c000032)  '
      ' from c000032')
    Params = <>
    Left = 576
    Top = 160
    object qrvenda_mesCOLUMN_0: TFloatField
      DisplayLabel = 'janeiro'
      DisplayWidth = 9
      FieldName = 'sum_0'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn: TFloatField
      DisplayWidth = 8
      FieldName = 'sum'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_1: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_1'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_2: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_2'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_3: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_3'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_4: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_4'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_5: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_5'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_6: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_6'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_7: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_7'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_8: TFloatField
      DisplayWidth = 9
      FieldName = 'sum_8'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_9: TFloatField
      DisplayWidth = 9
      FieldName = 'sum_9'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_10: TFloatField
      DisplayWidth = 9
      FieldName = 'sum_10'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsgrade_produto: TDataSource
    DataSet = frmmodulo.qrloteproduto
    Left = 645
    Top = 46
  end
  object UCControls1: TUCControls
    GroupName = 'Form.Produto Farmacia'
    UserControl = frmPrincipal.iCloud
    NotAllowed = naDisabled
    Left = 760
    Top = 72
  end
end
