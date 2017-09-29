object frmxloc_cliente: Tfrmxloc_cliente
  Left = 0
  Top = 115
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = ' CLIENTE | Localizar'
  ClientHeight = 457
  ClientWidth = 856
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
  object Bevel3: TBevel
    Left = 0
    Top = 331
    Width = 856
    Height = 3
    Align = alBottom
    ExplicitTop = 335
    ExplicitWidth = 792
  end
  object Bevel5: TBevel
    Left = 0
    Top = 44
    Width = 856
    Height = 3
    Align = alTop
    ExplicitWidth = 792
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 0
    Width = 856
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
      Left = 672
      Top = 4
      Width = 2
      Height = 37
    end
    object Label7: TLabel
      Left = 816
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
      Left = 804
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
    object Bevel4: TBevel
      Left = 795
      Top = 4
      Width = 2
      Height = 37
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
      Text = 'NOME'
      Items.Strings = (
        'NOME'
        'CODIGO'
        'CPF/CNPJ'
        'RG/IE'
        'FANTASIA')
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
      Width = 401
      Height = 20
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnEnter = locEnter
      OnExit = locExit
      OnKeyDown = locKeyDown
      OnKeyPress = locKeyPress
    end
    object bitbtn1: TAdvGlowButton
      Left = 675
      Top = 7
      Width = 114
      Height = 32
      Caption = 'F2 | Cadastrar '
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
      TabOrder = 3
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
  object GRID: TwwDBGrid
    Left = 0
    Top = 47
    Width = 856
    Height = 284
    Selected.Strings = (
      'CODIGO'#9'6'#9'CODIGO'
      'NOME'#9'50'#9'NOME'
      'APELIDO'#9'50'#9'FANTASIA'
      'CIDADE'#9'30'#9'CIDADE'
      'BAIRRO'#9'17'#9'BAIRRO'#9'F'
      'TELEFONE1'#9'20'#9'TELEFONE1'
      'TELEFONE2'#9'20'#9'TELEFONE2'
      'CPF'#9'18'#9'CPF/CNPJ')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = GRIDDblClick
    OnEnter = GRIDEnter
    OnExit = GRIDExit
    OnKeyPress = GRIDKeyPress
    PaintOptions.AlternatingRowColor = 16316664
    PaintOptions.ActiveRecordColor = clBlack
  end
  object pinformacoes: TRzSizePanel
    Left = 0
    Top = 334
    Width = 856
    Height = 123
    Align = alBottom
    HotSpotColor = cl3DLight
    HotSpotDotColor = 7879740
    HotSpotHighlight = 11855600
    HotSpotVisible = True
    SizeBarWidth = 8
    TabOrder = 2
    VisualStyle = vsGradient
    object Label10: TLabel
      Left = 3
      Top = 20
      Width = 72
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Endere'#231'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 161
      Top = 44
      Width = 72
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Bairro:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 482
      Top = 92
      Width = 23
      Height = 13
      Caption = 'CEP:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 3
      Top = 68
      Width = 72
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Complemento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label14: TLabel
      Left = 3
      Top = 92
      Width = 72
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Cidade:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label15: TLabel
      Left = 394
      Top = 92
      Width = 30
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'UF:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label56: TLabel
      Left = 3
      Top = 44
      Width = 72
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'N'#250'mero:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label16: TLabel
      Left = 591
      Top = 91
      Width = 31
      Height = 13
      Caption = 'Limite:'
      Transparent = True
    end
    object eendereco: TDBEdit
      Left = 80
      Top = 16
      Width = 641
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ENDERECO'
      DataSource = ds
      Enabled = False
      TabOrder = 0
    end
    object ebairro: TDBEdit
      Left = 239
      Top = 40
      Width = 482
      Height = 21
      CharCase = ecUpperCase
      DataField = 'BAIRRO'
      DataSource = ds
      Enabled = False
      TabOrder = 1
    end
    object ecidade: TDBEdit
      Left = 80
      Top = 88
      Width = 321
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CIDADE'
      DataSource = ds
      Enabled = False
      TabOrder = 2
    end
    object ecep: TDBEdit
      Left = 510
      Top = 88
      Width = 73
      Height = 21
      DataField = 'CEP'
      DataSource = ds
      Enabled = False
      TabOrder = 3
    end
    object ecomplemento: TDBEdit
      Left = 80
      Top = 64
      Width = 641
      Height = 21
      CharCase = ecUpperCase
      DataField = 'COMPLEMENTO'
      DataSource = ds
      Enabled = False
      TabOrder = 4
    end
    object euf: TwwDBComboBox
      Left = 428
      Top = 88
      Width = 49
      Height = 21
      ShowButton = True
      Style = csDropDown
      MapList = False
      AllowClearKey = False
      CharCase = ecUpperCase
      DataField = 'UF'
      DataSource = ds
      DropDownCount = 8
      Enabled = False
      ItemHeight = 0
      Items.Strings = (
        'SP'
        'MG'
        'RJ'
        'RS'
        'SC'
        'PR'
        'ES'
        'DF'
        'MT'
        'MS'
        'GO'
        'TO'
        'BA'
        'SE'
        'AL'
        'PB'
        'PE'
        'MA'
        'RN'
        'CE'
        'PI'
        'PA'
        'AM'
        'AP'
        'FN'
        'AC'
        'RR'
        'RO'
        'EX')
      ItemIndex = 6
      Sorted = False
      TabOrder = 5
      UnboundDataType = wwDefault
    end
    object enumero: TDBEdit
      Left = 80
      Top = 40
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NUMERO'
      DataSource = ds
      Enabled = False
      TabOrder = 6
    end
    object RzGroupBox1: TRzGroupBox
      Left = 735
      Top = 12
      Width = 111
      Height = 95
      Caption = 'Telefones'
      TabOrder = 7
      Transparent = True
      VisualStyle = vsGradient
      object RzDBEdit4: TRzDBEdit
        Left = 8
        Top = 16
        Width = 97
        Height = 21
        DataSource = ds
        DataField = 'TELEFONE1'
        DisabledColor = clWindow
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object RzDBEdit5: TRzDBEdit
        Left = 8
        Top = 39
        Width = 97
        Height = 21
        DataSource = ds
        DataField = 'TELEFONE2'
        DisabledColor = clWindow
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object RzDBEdit6: TRzDBEdit
        Left = 8
        Top = 62
        Width = 97
        Height = 21
        DataSource = ds
        DataField = 'CELULAR'
        DisabledColor = clWindow
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
    object RzDBNumericEdit2: TRzDBNumericEdit
      Left = 626
      Top = 88
      Width = 95
      Height = 21
      DataSource = ds
      DataField = 'LIMITE'
      Alignment = taLeftJustify
      DisabledColor = clWindow
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      IntegersOnly = False
      DisplayFormat = '###,###,##0.00'
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
    object N2: TMenuItem
      Caption = '-'
    end
    object CadastrarCliente1: TMenuItem
      Caption = 'Cadastrar Cliente'
      ShortCut = 113
      OnClick = CadastrarCliente1Click
    end
  end
  object ds: TDataSource
    DataSet = query
    Left = 432
    Top = 224
  end
  object query: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 464
    Top = 232
  end
end
