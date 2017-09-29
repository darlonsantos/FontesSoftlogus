object frmentrega: Tfrmentrega
  Left = 693
  Top = 140
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Controle de Entrega de Mercadorias'
  ClientHeight = 497
  ClientWidth = 670
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
  object Bevel1: TBevel
    Left = 0
    Top = 450
    Width = 670
    Height = 2
    Align = alBottom
    ExplicitTop = 432
    ExplicitWidth = 660
  end
  object Bevel3: TBevel
    Left = 0
    Top = 35
    Width = 670
    Height = 2
    Align = alTop
    ExplicitWidth = 660
  end
  object Bevel5: TBevel
    Left = 0
    Top = 335
    Width = 670
    Height = 2
    Align = alBottom
    ExplicitTop = 317
    ExplicitWidth = 660
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 670
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Color = 15574106
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 12
      Width = 37
      Height = 13
      Caption = 'Cliente:'
    end
    object Bevel2: TBevel
      Left = 426
      Top = 4
      Width = 2
      Height = 27
    end
    object RadioButton1: TRadioButton
      Left = 440
      Top = 8
      Width = 81
      Height = 17
      Caption = 'A Entregar'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 520
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Todas as Notas'
      TabOrder = 2
      OnClick = RadioButton2Click
    end
    object ecliente: TRzButtonEdit
      Left = 48
      Top = 7
      Width = 297
      Height = 21
      CharCase = ecUpperCase
      FocusColor = 11465460
      TabOrder = 0
      OnKeyPress = eclienteKeyPress
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
      AltBtnWidth = 15
      ButtonWidth = 22
      OnButtonClick = eclienteButtonClick
    end
    object ed_codigo: TRzEdit
      Left = 352
      Top = 8
      Width = 65
      Height = 21
      Enabled = False
      TabOrder = 3
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 452
    Width = 670
    Height = 45
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 451
    object bfechar: TAdvGlowButton
      Left = 560
      Top = 3
      Width = 107
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
      TabOrder = 0
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
    object bincluir: TAdvGlowButton
      Left = 10
      Top = 3
      Width = 135
      Height = 32
      Caption = 'F2 | Nova Entrega'
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
      PopupMenu = PopupMenu1
      Transparent = True
      TabOrder = 1
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
    object bgravar: TAdvGlowButton
      Left = 151
      Top = 3
      Width = 154
      Height = 32
      Caption = 'F7 | Imprimir Produtos'
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
      TabOrder = 2
      OnClick = bgravarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
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
    object AdvGlowButton1: TAdvGlowButton
      Left = 310
      Top = 3
      Width = 224
      Height = 32
      Caption = 'Relat'#243'rio de Produtos a Entregar'
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
      TabOrder = 3
      OnClick = AdvGlowButton1Click
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
  object Panel4: TPanel
    Left = 0
    Top = 37
    Width = 670
    Height = 298
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitHeight = 283
    object Panel5: TPanel
      Left = 0
      Top = 0
      Width = 670
      Height = 298
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitHeight = 283
      object Bevel7: TBevel
        Left = 0
        Top = 14
        Width = 670
        Height = 2
        Align = alTop
        ExplicitWidth = 660
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 670
        Height = 14
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Produtos Vendidos'
        Color = 2211435
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 16
        Width = 670
        Height = 282
        Selected.Strings = (
          'CODVENDA'#9'7'#9'Venda'#9#9
          'DATA_VENDA'#9'10'#9'Data'#9#9
          'CODPRODUTO'#9'6'#9'C'#243'digo'#9#9
          'PRODUTO'#9'44'#9'Produto'#9#9
          'UNIDADE'#9'2'#9'Un.'#9#9
          'VENDIDO'#9'9'#9'Vendido'#9#9
          'QTDE_ENTREGUE'#9'8'#9'Entregue'#9#9
          'QTDE_SALDO'#9'8'#9'A Entregar'#9#9)
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = dsprodutos
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        ExplicitHeight = 267
      end
      object bfiltrar: TButton
        Left = 424
        Top = 112
        Width = 129
        Height = 25
        Caption = 'Filtrar Produtos'
        TabOrder = 2
        Visible = False
        OnClick = bfiltrarClick
      end
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 337
    Width = 670
    Height = 113
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitTop = 322
    object Bevel6: TBevel
      Left = 0
      Top = 16
      Width = 2
      Height = 97
      Align = alLeft
    end
    object Bevel4: TBevel
      Left = 0
      Top = 14
      Width = 670
      Height = 2
      Align = alTop
      ExplicitWidth = 660
    end
    object wwDBGrid3: TwwDBGrid
      Left = 2
      Top = 16
      Width = 668
      Height = 97
      Selected.Strings = (
        'DATA_ENTREGA'#9'14'#9'Data'
        'QTDE_ENTREGUE'#9'17'#9'Quantidade Entregue')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      DataSource = dsentrega
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 670
      Height = 14
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Entregas Realizadas do Produto Selecionado'
      Color = 2211435
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
    end
  end
  object qrprodutos: TZQuery
    Connection = frmmodulo.Conexao
    AfterScroll = qrprodutosAfterScroll
    SQL.Strings = (
      'select '
      'ven.codnota codvenda,'
      'ven.codproduto,'
      'pro.produto,'
      'pro.unidade,'
      'ven.data data_venda,'
      'sum(ven.qtde) vendido,'
      'sum(ent.qtde_entregue) qtde_entregue,'
      '(sum(ven.qtde)- sum(ent.qtde_entregue)) qtde_saldo'
      'from '
      'c000032 ven,'
      'c000025 pro,'
      'c000115 ent'
      'where'
      'ven.codproduto = ent.codproduto and'
      'ven.codproduto = pro.codigo'
      'group by'
      'ven.codnota, '
      'ven.codproduto,'
      'pro.produto,'
      'pro.unidade,'
      'ven.qtde,'
      'ven.data'
      'having'
      '(sum(ven.qtde)- sum(ent.qtde_entregue)) > 0')
    Params = <>
    Left = 144
    Top = 173
  end
  object dsprodutos: TDataSource
    DataSet = qrprodutos
    Left = 176
    Top = 173
  end
  object qrcliente2: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 208
    Top = 176
    object qrcliente2CODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrcliente2NOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrcliente2APELIDO: TWideStringField
      FieldName = 'APELIDO'
      Size = 50
    end
    object qrcliente2ENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qrcliente2BAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrcliente2CIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qrcliente2UF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrcliente2CEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qrcliente2COMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Size = 80
    end
    object qrcliente2MORADIA: TIntegerField
      FieldName = 'MORADIA'
    end
    object qrcliente2TIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrcliente2SITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrcliente2TELEFONE1: TWideStringField
      FieldName = 'TELEFONE1'
    end
    object qrcliente2TELEFONE2: TWideStringField
      FieldName = 'TELEFONE2'
    end
    object qrcliente2TELEFONE3: TWideStringField
      FieldName = 'TELEFONE3'
    end
    object qrcliente2CELULAR: TWideStringField
      FieldName = 'CELULAR'
    end
    object qrcliente2EMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qrcliente2RG: TWideStringField
      FieldName = 'RG'
      Size = 25
    end
    object qrcliente2CPF: TWideStringField
      FieldName = 'CPF'
      Size = 18
    end
    object qrcliente2FILIACAO: TWideStringField
      FieldName = 'FILIACAO'
      Size = 80
    end
    object qrcliente2ESTADOCIVIL: TWideStringField
      FieldName = 'ESTADOCIVIL'
      Size = 15
    end
    object qrcliente2CONJUGE: TWideStringField
      FieldName = 'CONJUGE'
      Size = 60
    end
    object qrcliente2PROFISSAO: TWideStringField
      FieldName = 'PROFISSAO'
      Size = 30
    end
    object qrcliente2EMPRESA: TWideStringField
      FieldName = 'EMPRESA'
      Size = 40
    end
    object qrcliente2RENDA: TFloatField
      FieldName = 'RENDA'
    end
    object qrcliente2LIMITE: TFloatField
      FieldName = 'LIMITE'
    end
    object qrcliente2REF1: TWideStringField
      FieldName = 'REF1'
      Size = 50
    end
    object qrcliente2REF2: TWideStringField
      FieldName = 'REF2'
      Size = 50
    end
    object qrcliente2CODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrcliente2DATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object qrcliente2DATA_ULTIMACOMPRA: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qrcliente2OBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrcliente2OBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrcliente2OBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrcliente2OBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object qrcliente2OBS5: TWideStringField
      FieldName = 'OBS5'
      Size = 80
    end
    object qrcliente2OBS6: TWideStringField
      FieldName = 'OBS6'
      Size = 80
    end
    object qrcliente2NASCIMENTO: TWideStringField
      FieldName = 'NASCIMENTO'
      Size = 10
    end
    object qrcliente2CODREGIAO: TWideStringField
      FieldName = 'CODREGIAO'
      Size = 6
    end
    object qrcliente2CODCONVENIO: TWideStringField
      FieldName = 'CODCONVENIO'
      Size = 6
    end
    object qrcliente2CODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Size = 6
    end
    object qrcliente2NUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrcliente2RG_ORGAO: TWideStringField
      FieldName = 'RG_ORGAO'
      Size = 5
    end
    object qrcliente2RG_ESTADO: TWideStringField
      FieldName = 'RG_ESTADO'
      Size = 2
    end
    object qrcliente2RG_EMISSAO: TDateTimeField
      FieldName = 'RG_EMISSAO'
    end
    object qrcliente2SEXO: TWideStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object qrcliente2HISTORICO: TBlobField
      FieldName = 'HISTORICO'
    end
    object qrcliente2PREVISAO: TDateTimeField
      FieldName = 'PREVISAO'
    end
    object qrcliente2CNAE: TWideStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object qrcliente2COD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrcliente2IBGE: TWideStringField
      FieldName = 'IBGE'
      Size = 5
    end
    object qrcliente2TAMANHO_CALCA: TWideStringField
      FieldName = 'TAMANHO_CALCA'
      Size = 5
    end
    object qrcliente2TAMANHO_BLUSA: TWideStringField
      FieldName = 'TAMANHO_BLUSA'
      Size = 5
    end
    object qrcliente2TAMANHO_SAPATO: TWideStringField
      FieldName = 'TAMANHO_SAPATO'
      Size = 5
    end
    object qrcliente2CORRESP_ENDERECO: TWideStringField
      FieldName = 'CORRESP_ENDERECO'
      Size = 80
    end
    object qrcliente2CORRESP_BAIRRO: TWideStringField
      FieldName = 'CORRESP_BAIRRO'
      Size = 30
    end
    object qrcliente2CORRESP_CIDADE: TWideStringField
      FieldName = 'CORRESP_CIDADE'
      Size = 40
    end
    object qrcliente2CORRESP_UF: TWideStringField
      FieldName = 'CORRESP_UF'
      Size = 2
    end
    object qrcliente2CORRESP_CEP: TWideStringField
      FieldName = 'CORRESP_CEP'
      Size = 10
    end
    object qrcliente2CORRESP_COMPLEMENTO: TWideStringField
      FieldName = 'CORRESP_COMPLEMENTO'
      Size = 40
    end
    object qrcliente2RG_PRODUTOR: TWideStringField
      FieldName = 'RG_PRODUTOR'
      Size = 30
    end
    object qrcliente2RESP1_NOME: TWideStringField
      FieldName = 'RESP1_NOME'
      Size = 80
    end
    object qrcliente2RESP1_CPF: TWideStringField
      FieldName = 'RESP1_CPF'
      Size = 25
    end
    object qrcliente2RESP1_RG: TWideStringField
      FieldName = 'RESP1_RG'
      Size = 25
    end
    object qrcliente2RESP1_PROFISSAO: TWideStringField
      FieldName = 'RESP1_PROFISSAO'
      Size = 50
    end
    object qrcliente2RESP1_ESTADO_CIVIL: TWideStringField
      FieldName = 'RESP1_ESTADO_CIVIL'
      Size = 30
    end
    object qrcliente2RESP1_ENDERECO: TWideStringField
      FieldName = 'RESP1_ENDERECO'
      Size = 80
    end
    object qrcliente2RESP1_BAIRRO: TWideStringField
      FieldName = 'RESP1_BAIRRO'
      Size = 40
    end
    object qrcliente2RESP1_CIDADE: TWideStringField
      FieldName = 'RESP1_CIDADE'
      Size = 40
    end
    object qrcliente2RESP1_UF: TWideStringField
      FieldName = 'RESP1_UF'
      Size = 2
    end
    object qrcliente2RESP1_CEP: TWideStringField
      FieldName = 'RESP1_CEP'
      Size = 15
    end
    object qrcliente2RESP2_NOME: TWideStringField
      FieldName = 'RESP2_NOME'
      Size = 80
    end
    object qrcliente2RESP2_CPF: TWideStringField
      FieldName = 'RESP2_CPF'
      Size = 25
    end
    object qrcliente2RESP2_RG: TWideStringField
      FieldName = 'RESP2_RG'
      Size = 25
    end
    object qrcliente2RESP2_PROFISSAO: TWideStringField
      FieldName = 'RESP2_PROFISSAO'
      Size = 50
    end
    object qrcliente2RESP2_ESTADO_CIVIL: TWideStringField
      FieldName = 'RESP2_ESTADO_CIVIL'
      Size = 30
    end
    object qrcliente2RESP2_ENDERECO: TWideStringField
      FieldName = 'RESP2_ENDERECO'
      Size = 80
    end
    object qrcliente2RESP2_BAIRRO: TWideStringField
      FieldName = 'RESP2_BAIRRO'
      Size = 40
    end
    object qrcliente2RESP2_CIDADE: TWideStringField
      FieldName = 'RESP2_CIDADE'
      Size = 40
    end
    object qrcliente2RESP2_UF: TWideStringField
      FieldName = 'RESP2_UF'
      Size = 2
    end
    object qrcliente2RESP2_CEP: TWideStringField
      FieldName = 'RESP2_CEP'
      Size = 15
    end
    object qrcliente2FOTO: TWideStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object qrcliente2CONDPGTO: TWideStringField
      FieldName = 'CONDPGTO'
      Size = 100
    end
  end
  object qrentrega: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000115')
    Params = <>
    Left = 248
    Top = 176
  end
  object dsentrega: TDataSource
    DataSet = qrentrega
    Left = 280
    Top = 181
  end
  object qrvenda: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000115')
    Params = <>
    Left = 344
    Top = 200
  end
  object dsvenda: TDataSource
    DataSet = qrvenda
    Left = 376
    Top = 205
  end
  object PopupMenu1: TPopupMenu
    Left = 520
    Top = 213
    object NovaEntrega1: TMenuItem
      Caption = 'Nova Entrega'
      ShortCut = 113
      OnClick = bincluirClick
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = bfecharClick
    end
  end
  object fxdesenhar: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 88
    Top = 264
  end
  object rel_entrega: TfrxReport
    Version = '4.12.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39188.758111979200000000
    ReportOptions.LastChange = 40127.747116203710000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      ''
      'BEGIN'
      'END.            ')
    Left = 120
    Top = 264
    Datasets = <
      item
        DataSet = fscliente
        DataSetName = 'fscliente'
      end
      item
        DataSet = fsentr
        DataSetName = 'fsentr'
      end
      item
        DataSet = frmmodulo.fxemitente
        DataSetName = 'fxemitente'
      end
      item
        DataSet = frmmodulo.fxrelatorio
        DataSetName = 'fxrelatorio'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page2: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      PaperWidth = 210.000000000000000000
      PaperHeight = 148.500000000000000000
      PaperSize = 256
      LeftMargin = 7.800000000000000000
      RightMargin = 8.200000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      Frame.Width = 0.500000000000000000
      OnAfterPrint = 'Page2OnAfterPrint'
      object PageHeader1: TfrxPageHeader
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 733.228820000000000000
        object Shape11: TfrxShapeView
          Top = 41.252010000000000000
          Width = 733.228820000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
        end
        object Memo34: TfrxMemoView
          Left = 5.559060000000000000
          Top = 43.031540000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSet = fsentr
          DataSetName = 'fsentr'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 64.252010000000000000
          Top = 43.031540000000000000
          Width = 336.378170000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSet = fsentr
          DataSetName = 'fsentr'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 589.606680000000000000
          Top = 43.031540000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSet = fsentr
          DataSetName = 'fsentr'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'UNID.')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 646.299630000000000000
          Top = 43.031540000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSet = fsentr
          DataSetName = 'fsentr'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'QTDE.')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 268.346630000000000000
          Width = 464.882190000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14211288
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'PRODUTOS A ENTREGAR    [Date]')
          ParentFont = False
        end
        object Line17: TfrxLineView
          Left = 589.606680000000000000
          Top = 42.464552280000000000
          Height = 457.322839530000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line18: TfrxLineView
          Left = 642.520100000000000000
          Top = 42.464552280000000000
          Height = 457.322839530000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          Left = 1.133858270000000000
          Top = 14.118120000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Top = 36.795300000000000000
          Width = 733.228820000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo87: TfrxMemoView
          Left = 0.755905510000000000
          Top = 21.677180000000000000
          Width = 404.409710000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'NOME'
          DataSet = fscliente
          DataSetName = 'fscliente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fscliente."NOME"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 1.000000000000000000
          Width = 268.346630000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14211288
          DataField = 'FANTASIA'
          DataSet = frmmodulo.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fxemitente."FANTASIA"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 56.692950000000000000
          Top = 41.574830000000000000
          Height = 457.322839530000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          Left = 408.189240000000000000
          Top = 13.984251968503900000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 408.189240000000000000
          Top = 21.543307090000000000
          Width = 423.307360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fscliente
          DataSetName = 'fscliente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              '[fscliente."ENDERECO"] [fscliente."BAIRRO"] [fscliente."CIDADE"]' +
              ' [fscliente."COMPLEMENTO"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 136.063080000000000000
        Width = 733.228820000000000000
        DataSet = fsentr
        DataSetName = 'fsentr'
        RowCount = 0
        object Memo22: TfrxMemoView
          Left = 5.779530000000000000
          Top = 1.779529999999990000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'CODPRODUTO'
          DataSet = fsentr
          DataSetName = 'fsentr'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fsentr."CODPRODUTO"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 64.472480000000000000
          Top = 1.779529999999990000
          Width = 514.016080000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'PRODUTO'
          DataSet = fsentr
          DataSetName = 'fsentr'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fsentr."PRODUTO"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 589.827150000000000000
          Top = 1.779529999999990000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'Unidade'
          DataSet = fsentr
          DataSetName = 'fsentr'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsentr."Unidade"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 646.520100000000000000
          Top = 1.779529999999990000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'qtde_saldo'
          DataSet = fsentr
          DataSetName = 'fsentr'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsentr."qtde_saldo"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 211.653680000000000000
        Width = 733.228820000000000000
        object Shape1: TfrxShapeView
          Width = 733.228820000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = clWhite
          Frame.Width = 0.500000000000000000
        end
        object Memo2: TfrxMemoView
          Left = 593.386210000000000000
          Top = 8.779529999999990000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSet = fsentr
          DataSetName = 'fsentr'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'TOTAL:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 646.299630000000000000
          Top = 8.559059999999990000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSet = fsentr
          DataSetName = 'fsentr'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<fsentr."qtde_saldo">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object fsentr: TfrxDBDataset
    UserName = 'fsentr'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODVENDA=CODVENDA'
      'DATA_VENDA=DATA_VENDA'
      'CODPRODUTO=CODPRODUTO'
      'PRODUTO=PRODUTO'
      'UNIDADE=Unidade'
      'VENDIDO=VENDIDO'
      'QTDE_ENTREGUE=qtde_entregue'
      'QTDE_SALDO=qtde_saldo')
    DataSet = qrprodutos
    BCDToCurrency = False
    Left = 56
    Top = 264
  end
  object fscliente: TfrxDBDataset
    UserName = 'fscliente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'NOME=NOME'
      'APELIDO=APELIDO'
      'ENDERECO=ENDERECO'
      'BAIRRO=BAIRRO'
      'CIDADE=CIDADE'
      'UF=UF'
      'CEP=CEP'
      'COMPLEMENTO=COMPLEMENTO'
      'MORADIA=MORADIA'
      'TIPO=TIPO'
      'SITUACAO=SITUACAO'
      'TELEFONE1=TELEFONE1'
      'TELEFONE2=TELEFONE2'
      'TELEFONE3=TELEFONE3'
      'CELULAR=CELULAR'
      'EMAIL=EMAIL'
      'RG=RG'
      'CPF=CPF'
      'FILIACAO=FILIACAO'
      'ESTADOCIVIL=ESTADOCIVIL'
      'CONJUGE=CONJUGE'
      'PROFISSAO=PROFISSAO'
      'EMPRESA=EMPRESA'
      'RENDA=RENDA'
      'LIMITE=LIMITE'
      'REF1=REF1'
      'REF2=REF2'
      'CODVENDEDOR=CODVENDEDOR'
      'DATA_CADASTRO=DATA_CADASTRO'
      'DATA_ULTIMACOMPRA=DATA_ULTIMACOMPRA'
      'OBS1=OBS1'
      'OBS2=OBS2'
      'OBS3=OBS3'
      'OBS4=OBS4'
      'OBS5=OBS5'
      'OBS6=OBS6'
      'NASCIMENTO=NASCIMENTO'
      'CODREGIAO=CODREGIAO'
      'CODCONVENIO=CODCONVENIO'
      'CODUSUARIO=CODUSUARIO')
    DataSet = qrcliente2
    BCDToCurrency = False
    Left = 152
    Top = 264
  end
  object query: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select'
      'ent.codproduto,'
      'pro.produto,'
      'pro.unidade,'
      'ent.codvenda,'
      'ent.data_venda,'
      'ent.codcliente,'
      'cli.nome,'
      'sum(ent.qtde_vendida) vendido,'
      'sum(ent.qtde_entregue) qtde_entregue,'
      '(sum(ent.qtde_vendida)- sum(ent.qtde_entregue)) qtde_saldo'
      'from'
      'c000025 pro,'
      'c000115 ent,'
      'c000007 cli'
      'where'
      'ent.codproduto = pro.codigo'
      'and ent.codcliente = cli.codigo'
      'group by'
      'ent.codproduto,'
      'pro.produto,'
      'pro.unidade,'
      'ent.codvenda,'
      'ent.data_venda,'
      'ent.codcliente,'
      'cli.nome'
      'having'
      
        'sum(ent.qtde_vendida) > 0 and (sum(ent.qtde_vendida)- sum(ent.qt' +
        'de_entregue)) > 0')
    Params = <>
    Left = 344
    Top = 253
  end
  object fsent_todos: TfrxDBDataset
    UserName = 'fsent_todos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODPRODUTO=CODPRODUTO'
      'PRODUTO=PRODUTO'
      'UNIDADE=UNIDADE'
      'CODVENDA=CODVENDA'
      'DATA_VENDA=DATA_VENDA'
      'CODCLIENTE=CODCLIENTE'
      'NOME=NOME'
      'VENDIDO=VENDIDO'
      'QTDE_ENTREGUE=QTDE_ENTREGUE'
      'QTDE_SALDO=QTDE_SALDO')
    DataSet = query
    BCDToCurrency = False
    Left = 376
    Top = 256
  end
  object UCControls1: TUCControls
    GroupName = 'Form.Controle de Entregas'
    UserControl = frmPrincipal.iCloud
    NotAllowed = naDisabled
    Left = 560
    Top = 32
  end
end
