object frmproduto_consultapreco: Tfrmproduto_consultapreco
  Left = 438
  Top = 182
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'PRODUTO | Consulta de Pre'#231'o e Estoque'
  ClientHeight = 532
  ClientWidth = 916
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
  object Bevel7: TBevel
    Left = 0
    Top = 529
    Width = 916
    Height = 3
    Align = alBottom
    ExplicitTop = 399
    ExplicitWidth = 776
  end
  object Bevel8: TBevel
    Left = 0
    Top = 0
    Width = 916
    Height = 3
    Align = alTop
    ExplicitTop = 44
    ExplicitWidth = 776
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 64
    Width = 776
    Height = 44
    Color = 15461355
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    TabOrder = 0
    object Label12: TLabel
      Left = 638
      Top = 21
      Width = 58
      Height = 12
      Caption = '* | TODOS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
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
      Text = 'NOME'
      Items.Strings = (
        'NOME'
        'CODIGO'
        'C'#211'D.BARRAS'
        'FORNECEDOR'
        'MARCA')
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
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
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
    Top = 111
    Width = 776
    Height = 339
    Selected.Strings = (
      'CODIGO'#9'7'#9'C'#243'digo'#9#9
      'CODBARRA'#9'13'#9'C'#243'd.Barras'#9#9
      'PRODUTO'#9'41'#9'Produto'#9'F'#9
      'UNIDADE'#9'2'#9'Un.'#9#9
      'MARCA'#9'19'#9'Marca'#9#9
      'ESTOQUE_ATUAL'#9'10'#9'Estoque'#9#9
      'PRECOVENDA'#9'10'#9'Pre'#231'o-R$'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    OnRowChanged = GRIDRowChanged
    FixedCols = 0
    ShowHorzScrollBar = True
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
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnEnter = GRIDEnter
    OnExit = GRIDExit
    PaintOptions.AlternatingRowColor = 15066597
    PaintOptions.ActiveRecordColor = clBlack
  end
  object FlatPanel2: TFlatPanel
    Left = 0
    Top = 453
    Width = 776
    Height = 76
    Color = clWhite
    Enabled = False
    ColorHighLight = clBtnFace
    ColorShadow = clBlack
    TabOrder = 2
    object Bevel3: TBevel
      Left = 72
      Top = 4
      Width = 472
      Height = 18
    end
    object Label8: TLabel
      Left = 8
      Top = 7
      Width = 60
      Height = 13
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
    object DBText1: TDBText
      Left = 75
      Top = 7
      Width = 358
      Height = 14
      DataField = 'fornecedor'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel6: TBevel
      Left = 72
      Top = 26
      Width = 472
      Height = 18
    end
    object Label13: TLabel
      Left = 8
      Top = 29
      Width = 60
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Localiza'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 75
      Top = 29
      Width = 358
      Height = 14
      DataField = 'LOCALICAZAO'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel4: TBevel
      Left = 552
      Top = 4
      Width = 2
      Height = 65
    end
    object Label9: TLabel
      Left = 556
      Top = 14
      Width = 76
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Pre'#231'o - R$:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 558
      Top = 46
      Width = 62
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Estoque:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel5: TBevel
      Left = 72
      Top = 48
      Width = 137
      Height = 18
    end
    object Label10: TLabel
      Left = 8
      Top = 51
      Width = 60
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'C'#243'd.Barras:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 75
      Top = 51
      Width = 126
      Height = 14
      DataField = 'CODBARRA'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel9: TBevel
      Left = 264
      Top = 48
      Width = 280
      Height = 18
    end
    object Label15: TLabel
      Left = 208
      Top = 51
      Width = 49
      Height = 13
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
    object DBText3: TDBText
      Left = 267
      Top = 51
      Width = 273
      Height = 14
      DataField = 'subgrupo'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RxCalcEdit1: TRxDBCalcEdit
      Left = 632
      Top = 4
      Width = 135
      Height = 31
      Margins.Left = 6
      Margins.Top = 1
      DataField = 'PRECOVENDA'
      DataSource = ds
      Color = clBlack
      DecimalPlaces = 15
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
    object RxCalcEdit2: TRxDBCalcEdit
      Left = 632
      Top = 36
      Width = 135
      Height = 31
      Margins.Left = 6
      Margins.Top = 1
      DataField = 'ESTOQUE_ATUAL'
      DataSource = ds
      Color = clBlack
      DecimalPlaces = 15
      DisplayFormat = '###,###,##0.000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clAqua
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnChange = RxCalcEdit2Change
    end
  end
  object PPROCURA: TFlatPanel
    Left = 264
    Top = 109
    Width = 369
    Height = 257
    Color = clWindow
    Visible = False
    ColorHighLight = clWindow
    ColorShadow = clWindow
    TabOrder = 3
    object wwDBGrid1: TwwDBGrid
      Left = 0
      Top = 33
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
  object BFOTO: TAdvGlowButton
    Left = 655
    Top = 396
    Width = 50
    Height = 46
    Hint = 'Foto do Produto'
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
      702E6969643A3445314336323135453238333131453239463545443731433135
      4535413538362220786D704D4D3A446F63756D656E7449443D22786D702E6469
      643A344531433632313645323833313145323946354544373143313545354135
      3836223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
      7374616E636549443D22786D702E6969643A3445314336323133453238333131
      453239463545443731433135453541353836222073745265663A646F63756D65
      6E7449443D22786D702E6469643A344531433632313445323833313145323946
      3545443731433135453541353836222F3E203C2F7264663A4465736372697074
      696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
      7061636B657420656E643D2272223F3E73B8C44A000004954944415478DABC99
      096C15551486E74D91A250C48201A4B2088214D94AD8050A110960D484CD4284
      081A68208218043441300645831512C040A260D8044122A4AC6151164124915A
      25211049A148804A502C22B4FCA7F96F727A33F3DECCBCB67FF265EE6CF79DB9
      CB39E7DE1773B69D7392505DD009B40019E071E082CBA0881482AB517FA056C4
      F78681D1A01F7822C1B357C00F601BF816FC1BE68762215AF021F0161807DAC5
      79AEBCA25E6F5D036BC167E042551AF832580A1E55D7EE817DE028380DCE80BF
      41194863B77705596CF134F5AE3CF30E5894AC81A9FCE291EA9A18B304E4833F
      03B6BE18970DDE00CFAAEB3F811C702E8A81E9E03868C373193B6F83654E727A
      811FD892E77738964F783DECFA5422DDF3AB326E17CBC91A27FA8E637839CF6B
      B3219E0B63E011D094E52FC150BA8EAA92B4DA544E3AA3DDE0C920061E04CD58
      CE03139DEAD3A7E05575FE2378309E8153C00096C577CD74AA5FABD91066DCAF
      F29B240F83EB208547E9E2FF03FE88B4722FBE5BC6E36DB0117C1FB00E699067
      58EEC5715929927CCC8A1D367B50E3E683F77CEEE58221604F807A72181A456B
      C053BA051BA97829B3B763882E2A4F70FF37D021605D9F83C92CF714D7635AF0
      25F5D06C9F975F035DAC71DB3AC08F668295E0AEBA564AD7B5D77A769E32508E
      274C0B1E02FDC1456624B6D681B1D5304126812FAC6BDBC1F3E0166820AD511F
      F4E6CDAD1E956459C61507E8D6A0FAC4C393EC56A95CB6CB99F3002F167854D2
      4C9537F37C7E1519589BD8B3D9A8B3CB44D3E8778F4AFE53E5C740731547B524
      B3194317318DD94D22DDF6E88D5F4009CB19B5D498BBC3191C4F7D7DF2B85798
      F588EAD08749DC5E41E71F56C574DA8D5C15736F827F22549647E372990F9632
      7DEACA6B3F47A8D3D851CFB5B2DF5884CA241CB66576528FD76419704A4599A8
      8AB92A4B49B3037500FDA1228697DA32C18DB218AB684931F092CA9EDB87AC28
      9DC7633EF7AF46F86851131E4BB481A2A74356243E7420D8044E5AF7A4CBFF02
      0B42D699A9D63E45328B0F730194C29B61B5855FDC9D01BF13B3E6638C4EB342
      D63740950B5DFA1CF3F52FFA38D3787A049C654B6E007369DCEB0CA1891C75CC
      C740F1BF075C156B1DAE3BFA592F9404F86A71DEFBE9AA8AD8232B03BC9742FF
      6B245E6014CBB2C82F755508D369B863A5E1FB432C2F33E2AC756CBDCF04D768
      817A77B99D516F64A872B886B5BB67119D6FAA556958A5D0A16F67FEA7878AE9
      AD22F64A25039B32C418FFD6CAA95999344B3498B1BD525788C37E97E596DCEC
      A929CD51C6ED34C679ADEA16723BC2CCE80F6AC0B811E043966FD989B1D760EE
      AF82B5B4E847D5689C6441DF582EE64622032547EBC3AF316B94351143563CC9
      8CFD4A9D8FF3CA7CFCDC410123C2759E8FA7331E550586F5A021F3D4B5E1607D
      98BD19D179260F3B54EABF893E713C3734C348F677BE66329B65421943647EB2
      1B9833C062EB836ED0DB9FE266D3656ED19533AB6EC8D6EAC62D377B99201BA2
      D393DDC0B4C3D99B60029DAAD702DE1898AA16625A650CAB4B3DB29FA40DB4E3
      A52CF607A92C3A9E0E7039B98E6BEFE02975927F43B4E236898CCFC6EC5AB300
      BBC65CF36CC4ACBA42F7051800D5990593E217255B0000000049454E44AE4260
      82}
    Transparent = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    Visible = False
    OnClick = BFOTOClick
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
    Layout = blGlyphTop
  end
  object AdvGlowButton1: TAdvGlowButton
    Left = 707
    Top = 396
    Width = 51
    Height = 46
    Hint = 'Servi'#231'os - Consulta de Pre'#231'o'
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
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    Visible = False
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
    Layout = blGlyphTop
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 3
    Width = 916
    Height = 57
    Align = alTop
    BorderOuter = fsNone
    BorderColor = clGradientActiveCaption
    BorderWidth = 2
    Caption = 'CONSULTA DE PRE'#199'OS'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object RzPanel2: TRzPanel
    Left = 774
    Top = 60
    Width = 142
    Height = 469
    Align = alRight
    BorderOuter = fsNone
    BorderColor = clWhite
    BorderWidth = 2
    Color = clGradientActiveCaption
    TabOrder = 7
    object AdvGlowButton2: TAdvGlowButton
      Left = 8
      Top = 28
      Width = 121
      Height = 69
      Caption = 'FOTO DO PRODUTO'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B00000360494441544889
        CD954F685C5514C67FE7DE37933799B4139D2413681B993445060B899188FF48
        2B22140C6E2C08A20B41B484BA5041A72858414871275875E14617E2A2A89050
        8A1B89D816A352C1D220355062629B9830DA4C5F66E6CDBDD7C5FC619A646022
        04FC36EFBCFBEE3DDFFBBE730E579C73EC24BC1DCDBE1D824327A67CE7DCEB22
        F28E6B902D22527BAFC66F8BC8A9E989B1D2B6085A4CEE8093401C7803401A6B
        70E8C4D46D05999E1893EAFA71E7DCAB22926E8100115976CEBD0B2CC86876F2
        3430DEAA9246EC8A4508CB9642689A6DB11E30DEE42FEAB173CE8665A38A6578
        24D3638E1DB99BCCBEA4561AF241C97C7BF9BAFE706A961BB9C0C4E3112DC61A
        D15A0322A3D949E79C637A620C11C139878800309A9D04C0942D4A8979FFC507
        F4F0404FCD225B7DAA5A7CEACC25F5E5C56B12D1CA69A5800D45AED9DB480210
        8486D3C71ED2C3033D00F6462ECFCCD515BDF24F917BF6769AC1FD49ED473DB2
        47EF35D773EBFAC29525DBEE6B0D5053E0AAAEB09545E9D42EF9F495C306E0FC
        EC927AF3B31F98FF2BB0B1A82608CBEAC9913EFBD6D3F7D19DF031C6EA91D7BE
        361D7E446D54E000610B3C7378008095B522273FFF899BEB21FBBAE3CA39483A
        C7D48F0B6AA037C1F81319ABB5E6E05D77726D696DB345CD70B0EF0E00E61673
        FAEA9F374D5F57253915A974ED8EDA6F7E5950CF3D7680CEB86678FF06026930
        7CABD8F72A055B2B84784A1025348C8F554A745030C6D8CA62D453F5B31EB0A5
        EF8DF11FAB79492662F4A712F86D9AB06CF1B4AA09201F843C3894221EAD1832
        BF9CAFE76C49C1B99F1718EAEF26DDDBC14B8F67F8E0EC15E2314D4429F2EB65
        D5D5E99B671F3DA0FC36CF025CFC6D1911D5BA82AF66E625FBD420A29479E148
        46ED4DB5737666D1E68222993D0975F4E13483FD490B70E6FC1C7FDF0A49B447
        2B791ADAB429C17AB12C83FD493E797914C000E40BA1B6C6D11655A62DE26980
        CBF3ABE6F8471774C938E329517582E6FD5381738EA05032E954A77EEFF91193
        EEDD5D9F5EAA93FCC577BFF3F1B9590A25A3234A8CD29B07ADA9022B22628D29
        951DC592517BBA620CA5BBE88845585C0DB834B7C2ADA2A13DA2ACF63C2D620C
        A84D83D6141A4069ED47C18F7AE40B96EF6797EBDF3D4F93A8B8A4AB27746317
        CD88C8FDB5CDCD3A6ABBA89EFDF5B60B6727F0FFB9F4FF2BFE05FCC8BEDF545A
        13FE0000000049454E44AE426082}
      TabOrder = 0
      OnClick = BFOTOClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Layout = blGlyphTop
    end
    object AdvGlowButton3: TAdvGlowButton
      Left = 157
      Top = 82
      Width = 100
      Height = 41
      Caption = 'AdvGlowButton3'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B00000323494441544889
        959641681D551486BFF919A91B176913DB46EAC22C1A2DD1976917625C685CA6
        9B61BAB21A4AA120145E0624822E446BA9A05D0CB3D0452904B5AE7C6F16B54B
        7515379A71425BD2625D48A106A215C480E9E28C0BEF2B937933B1BD9B3BF7DC
        73FEFF3FE730F75EAF2C4BDA46A7DBDB039C9274D4CC9E2FD2C807985EE8FF55
        96E5554997CDEC4291467FB461F82DC02392FAC04BCE740FC807FB6559DE048E
        002F001F76BABD6F251DCB93F0CF3A9657CF2088B3E3C0176EF925F06E9E84BF
        340909E26C023803BCEA4CAFE54978A9952088B38FCC6C11D890D4C993F04E13
        7043C6E3920A331B03CE1769B43844D0E9F6DE90F4A999DD2CD268F241801B88
        6E0007259DCE93F013A8F440D208B0D9041EC4D91C700238E44CD781A53C09AF
        54FD8A349A0CE2EC57E0EFA10C5A148D02AB92C6CD0C4998D9FD7D4977CCECB9
        228D7E6FC3F0A617FA7BCDEC6760B648A31F2BAA47CD6CC30161662649566170
        6B80B12A491067B366F60DB0D7074E4A7A0CD8AC91AF4AAAAA5575AED8015681
        272AE675673FE94D2FF497CDEC7091468F564A3327E9EB81DA81F2960CCC7D1E
        ADF6A4D3EDFD03ACF8C06160B9A67EBEB1A06E789EE795C3CD9B07AA4D5FF63C
        6FC6077601B76BCECFEE44D000DE1473BB2CCB5D3E80A46D01833257EBBD430F
        B6ADEB183EB065664F5637CDEC9AA4C987ECC1B51AC60160CB075624CDD4D897
        80630F99C152CD3E03AC78D30BFDB7CDEC1CF04C91466B038720CE7E33B37D80
        FD4F0600EB451AEDAFC44E9AD91AF08E0F5C04CE028F03F7098029600368AC71
        6D4CD5D64FB9F9E28E47451067A3C055605F8BCB3A30952761FB5151394D4F4B
        FA204FC2DD0D4473667642D2215792EBC052914657EABE9D6EEF96A4C53C0933
        D87EA30918E9747B6B451A3D5D0D727FE8105803F80D600238309481537A1E78
        93FF6AFFC0174E1067E340018C011FE749F856238153F13AF0993B412F01EF15
        6974AB0578C2CCDE078E3BFFF9228D3EAFFA3436B9D3EDED96F49599BD0C20E9
        9E99FD24E9953C09373BDDDEF7C011498FB89E7CE72EFDBB75ACC65745914677
        81D920CEF600A78039492F025B8EF020F0037059D2853C095B9F2DFF02EECF87
        065D5253150000000049454E44AE426082}
      TabOrder = 1
      Visible = False
      OnClick = AdvGlowButton1Click
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 14144974
      Appearance.ColorMirrorTo = 15197664
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
  object PopupMenu1: TPopupMenu
    Left = 552
    Top = 320
    object Cadastrarnovoprodutos1: TMenuItem
      Caption = 'Cadastrar novo produtos'
      ShortCut = 113
    end
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
    object AlterarProduto1: TMenuItem
      Caption = 'Editar Produto'
      ShortCut = 117
    end
    object FotodoProduto1: TMenuItem
      Caption = 'Foto do Produto'
      ShortCut = 119
      OnClick = FotodoProduto1Click
    end
    object ConsultaServio1: TMenuItem
      Caption = 'Consulta Servi'#231'o'
      ShortCut = 120
      OnClick = ConsultaServio1Click
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
    Top = 264
  end
  object query: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      
        'select prod.*, estq.* from c000025 prod, c000100 estq where prod' +
        '.codigo = estq.codproduto')
    Params = <>
    Left = 464
    Top = 296
    object queryCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object queryCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object queryPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object queryUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object queryDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object queryCODGRUPO: TWideStringField
      FieldName = 'CODGRUPO'
      Size = 6
    end
    object queryCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object queryCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object queryCODMARCA: TWideStringField
      FieldName = 'CODMARCA'
      Size = 6
    end
    object queryDATA_ULTIMACOMPRA: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object queryNOTAFISCAL: TWideStringField
      FieldName = 'NOTAFISCAL'
      Size = 7
    end
    object queryPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object queryPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object queryDATA_ULTIMAVENDA: TDateTimeField
      FieldName = 'DATA_ULTIMAVENDA'
    end
    object queryESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object queryESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
    end
    object queryCODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Size = 5
    end
    object queryLOCALICAZAO: TWideStringField
      FieldName = 'LOCALICAZAO'
      Size = 50
    end
    object queryPESO: TFloatField
      FieldName = 'PESO'
    end
    object queryVALIDADE: TWideStringField
      FieldName = 'VALIDADE'
    end
    object queryCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object queryUSA_BALANCA: TIntegerField
      FieldName = 'USA_BALANCA'
    end
    object queryUSA_SERIAL: TIntegerField
      FieldName = 'USA_SERIAL'
    end
    object queryUSA_GRADE: TIntegerField
      FieldName = 'USA_GRADE'
    end
    object queryCODRECEITA: TWideStringField
      FieldName = 'CODRECEITA'
      Size = 6
    end
    object queryFOTO: TWideStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object queryDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA_ANTERIOR'
    end
    object queryNOTAFISCAL_ANTERIOR: TWideStringField
      FieldName = 'NOTAFISCAL_ANTERIOR'
      Size = 6
    end
    object queryCODFORNECEDOR_ANTERIOR: TWideStringField
      FieldName = 'CODFORNECEDOR_ANTERIOR'
      Size = 6
    end
    object queryPRECOCUSTO_ANTERIOR: TFloatField
      FieldName = 'PRECOCUSTO_ANTERIOR'
    end
    object queryPRECOVENDA_ANTERIOR: TFloatField
      FieldName = 'PRECOVENDA_ANTERIOR'
    end
    object queryCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
    end
    object queryAUTO_APLICACAO: TWideStringField
      FieldName = 'AUTO_APLICACAO'
      Size = 60
    end
    object queryAUTO_COMPLEMENTO: TWideStringField
      FieldName = 'AUTO_COMPLEMENTO'
      Size = 60
    end
    object queryDATA_REMARCACAO_CUSTO: TDateTimeField
      FieldName = 'DATA_REMARCACAO_CUSTO'
    end
    object queryDATA_REMARCACAO_VENDA: TDateTimeField
      FieldName = 'DATA_REMARCACAO_VENDA'
    end
    object queryPRECO_PROMOCAO: TFloatField
      FieldName = 'PRECO_PROMOCAO'
    end
    object queryDATA_PROMOCAO: TDateTimeField
      FieldName = 'DATA_PROMOCAO'
    end
    object queryFIM_PROMOCAO: TDateTimeField
      FieldName = 'FIM_PROMOCAO'
    end
    object queryCST: TWideStringField
      FieldName = 'CST'
      Size = 10
    end
    object queryCLASSIFICACAO_FISCAL: TWideStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
    end
    object queryNBM: TWideStringField
      FieldName = 'NBM'
    end
    object queryNCM: TWideStringField
      FieldName = 'NCM'
    end
    object queryALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object queryIPI: TFloatField
      FieldName = 'IPI'
    end
    object queryREDUCAO: TFloatField
      FieldName = 'REDUCAO'
    end
    object queryQTDE_EMBALAGEM: TFloatField
      FieldName = 'QTDE_EMBALAGEM'
    end
    object queryTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object queryPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object queryFARMACIA_CONTROLADO: TWideStringField
      FieldName = 'FARMACIA_CONTROLADO'
      Size = 1
    end
    object queryFARMACIA_APRESENTACAO: TIntegerField
      FieldName = 'FARMACIA_APRESENTACAO'
    end
    object queryFARMACIA_REGISTRO_MEDICAMENTO: TWideStringField
      FieldName = 'FARMACIA_REGISTRO_MEDICAMENTO'
    end
    object queryFARMACIA_PMC: TFloatField
      FieldName = 'FARMACIA_PMC'
    end
    object queryULTIMA_ALTERACAO: TDateTimeField
      FieldName = 'ULTIMA_ALTERACAO'
    end
    object queryULTIMA_CARGA: TDateTimeField
      FieldName = 'ULTIMA_CARGA'
    end
    object queryDATA_INVENTARIO: TDateTimeField
      FieldName = 'DATA_INVENTARIO'
    end
    object queryCUSTO_INVENTARIO: TFloatField
      FieldName = 'CUSTO_INVENTARIO'
    end
    object queryESTOQUE_INVENTARIO: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO'
    end
    object queryESTOQUE_ANTERIOR: TFloatField
      FieldName = 'ESTOQUE_ANTERIOR'
    end
    object queryPRECOVENDA_NOVO: TFloatField
      FieldName = 'PRECOVENDA_NOVO'
    end
    object queryUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
    end
    object queryQUANTIDADE_MINIMA_FAB: TFloatField
      FieldName = 'QUANTIDADE_MINIMA_FAB'
    end
    object queryAPRESENTACAO: TWideStringField
      FieldName = 'APRESENTACAO'
      Size = 60
    end
    object querySITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object queryPRECOVENDA1: TFloatField
      FieldName = 'PRECOVENDA1'
    end
    object queryPRECOVENDA2: TFloatField
      FieldName = 'PRECOVENDA2'
    end
    object queryPRECOVENDA3: TFloatField
      FieldName = 'PRECOVENDA3'
    end
    object queryPRECOVENDA4: TFloatField
      FieldName = 'PRECOVENDA4'
    end
    object queryPRECOVENDA5: TFloatField
      FieldName = 'PRECOVENDA5'
    end
    object queryDESCONTO_PRECOVENDA: TFloatField
      FieldName = 'DESCONTO_PRECOVENDA'
    end
    object queryDATA_INVENTARIO_ATUAL: TDateTimeField
      FieldName = 'DATA_INVENTARIO_ATUAL'
    end
    object queryCUSTO_INVENTARIO_ATUAL: TFloatField
      FieldName = 'CUSTO_INVENTARIO_ATUAL'
    end
    object queryESTOQUE_INVENTARIO_ATUAL: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO_ATUAL'
    end
    object queryMARGEM_MINIMA: TFloatField
      FieldName = 'MARGEM_MINIMA'
    end
    object queryPISCOFINS: TWideStringField
      FieldName = 'PISCOFINS'
      Size = 1
    end
    object queryREFERENCIA_FORNECEDOR: TWideStringField
      FieldName = 'REFERENCIA_FORNECEDOR'
      Size = 30
    end
    object queryCOMISSAO1: TFloatField
      FieldName = 'COMISSAO1'
    end
    object queryMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object queryTAMANHO: TWideStringField
      FieldName = 'TAMANHO'
      Size = 6
    end
    object queryCOR: TWideStringField
      FieldName = 'COR'
      Size = 6
    end
    object queryINCIDENCIA_PISCOFINS: TWideStringField
      FieldName = 'INCIDENCIA_PISCOFINS'
      Size = 30
    end
    object queryVEIC_CHASSI: TWideStringField
      FieldName = 'VEIC_CHASSI'
      Size = 50
    end
    object queryVEIC_SERIE: TWideStringField
      FieldName = 'VEIC_SERIE'
      Size = 50
    end
    object queryVEIC_POTENCIA: TWideStringField
      FieldName = 'VEIC_POTENCIA'
      Size = 50
    end
    object queryVEIC_PESO_LIQUIDO: TWideStringField
      FieldName = 'VEIC_PESO_LIQUIDO'
      Size = 15
    end
    object queryVEIC_PESO_BRUTO: TWideStringField
      FieldName = 'VEIC_PESO_BRUTO'
      Size = 15
    end
    object queryVEIC_TIPO_COMBUSTIVEL: TWideStringField
      FieldName = 'VEIC_TIPO_COMBUSTIVEL'
    end
    object queryVEIC_RENAVAM: TWideStringField
      FieldName = 'VEIC_RENAVAM'
      Size = 50
    end
    object queryVEIC_ANO_FABRICACAO: TIntegerField
      FieldName = 'VEIC_ANO_FABRICACAO'
    end
    object queryVEIC_ANO_MODELO: TIntegerField
      FieldName = 'VEIC_ANO_MODELO'
    end
    object queryVEIC_TIPO: TWideStringField
      FieldName = 'VEIC_TIPO'
      Size = 50
    end
    object queryVEIC_TIPO_PINTURA: TWideStringField
      FieldName = 'VEIC_TIPO_PINTURA'
      Size = 15
    end
    object queryVEIC_COD_COR: TWideStringField
      FieldName = 'VEIC_COD_COR'
      Size = 15
    end
    object queryVEIC_COR: TWideStringField
      FieldName = 'VEIC_COR'
      Size = 30
    end
    object queryVEIC_VIN: TWideStringField
      FieldName = 'VEIC_VIN'
      Size = 10
    end
    object queryVEIC_NUMERO_MOTOR: TWideStringField
      FieldName = 'VEIC_NUMERO_MOTOR'
      Size = 50
    end
    object queryVEIC_CMKG: TWideStringField
      FieldName = 'VEIC_CMKG'
      Size = 15
    end
    object queryVEIC_CM3: TWideStringField
      FieldName = 'VEIC_CM3'
      Size = 15
    end
    object queryVEIC_DISTANCIA_EIXO: TWideStringField
      FieldName = 'VEIC_DISTANCIA_EIXO'
      Size = 15
    end
    object queryVEIC_COD_MARCA: TWideStringField
      FieldName = 'VEIC_COD_MARCA'
      Size = 15
    end
    object queryVEIC_ESPECIE: TWideStringField
      FieldName = 'VEIC_ESPECIE'
      Size = 50
    end
    object queryVEIC_CONDICAO: TWideStringField
      FieldName = 'VEIC_CONDICAO'
      Size = 50
    end
    object queryLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
    end
    object queryLOTE_VALIDADE: TDateTimeField
      FieldName = 'LOTE_VALIDADE'
    end
    object queryMARGEM_AGREGADA: TFloatField
      FieldName = 'MARGEM_AGREGADA'
    end
    object queryCODBARRA_NOVARTIS: TWideStringField
      FieldName = 'CODBARRA_NOVARTIS'
      Size = 13
    end
    object queryFARMACIA_DCB: TWideStringField
      FieldName = 'FARMACIA_DCB'
    end
    object queryFARMACIA_ABCFARMA: TWideStringField
      FieldName = 'FARMACIA_ABCFARMA'
      Size = 10
    end
    object queryFARMACIA_APRESENTACAO_CAIXA: TWideStringField
      FieldName = 'FARMACIA_APRESENTACAO_CAIXA'
      Size = 10
    end
    object queryFARMACIA_PRINCIPIOATIVO: TWideStringField
      FieldName = 'FARMACIA_PRINCIPIOATIVO'
      Size = 30
    end
    object queryULTIMA_COMPRA: TDateTimeField
      FieldName = 'ULTIMA_COMPRA'
    end
    object queryFARMACIA_DATAVIGENCIA: TDateTimeField
      FieldName = 'FARMACIA_DATAVIGENCIA'
    end
    object queryFARMACIA_TIPO: TWideStringField
      FieldName = 'FARMACIA_TIPO'
      Size = 1
    end
    object queryUSA_COMBUSTIVEL: TWideStringField
      FieldName = 'USA_COMBUSTIVEL'
      Size = 1
    end
    object queryREFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object queryPERDA: TFloatField
      FieldName = 'PERDA'
    end
    object queryCOMPOSICAO1: TWideStringField
      FieldName = 'COMPOSICAO1'
      Size = 30
    end
    object queryCOMPOSICAO2: TWideStringField
      FieldName = 'COMPOSICAO2'
      Size = 30
    end
    object queryIAT: TWideStringField
      FieldName = 'IAT'
      Size = 1
    end
    object queryIPPT: TWideStringField
      FieldName = 'IPPT'
      Size = 1
    end
    object querySITUACAO_TRIBUTARIA: TWideStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Size = 1
    end
    object queryFLAG_SIS: TWideStringField
      FieldName = 'FLAG_SIS'
      Size = 1
    end
    object queryFLAG_ACEITO: TWideStringField
      FieldName = 'FLAG_ACEITO'
      Size = 3
    end
    object queryFLAG_EST: TWideStringField
      FieldName = 'FLAG_EST'
      Size = 1
    end
    object queryCSOSN: TWideStringField
      FieldName = 'CSOSN'
      Size = 60
    end
    object queryCODORIGINAL: TWideStringField
      FieldName = 'CODORIGINAL'
    end
    object queryCUSTO_ATACADO: TFloatField
      FieldName = 'CUSTO_ATACADO'
    end
    object queryUNIDADE_ATACADO: TWideStringField
      FieldName = 'UNIDADE_ATACADO'
      Size = 2
    end
    object queryQTDE_EMBALAGEMATACADO: TFloatField
      FieldName = 'QTDE_EMBALAGEMATACADO'
    end
    object queryPMARGEM1: TFloatField
      FieldName = 'PMARGEM1'
    end
    object queryPMARGEM2: TFloatField
      FieldName = 'PMARGEM2'
    end
    object queryPMARGEM3: TFloatField
      FieldName = 'PMARGEM3'
    end
    object queryPMARGEM4: TFloatField
      FieldName = 'PMARGEM4'
    end
    object queryPMARGEM5: TFloatField
      FieldName = 'PMARGEM5'
    end
    object queryPMARGEMATACADO1: TFloatField
      FieldName = 'PMARGEMATACADO1'
    end
    object queryPMARGEMATACADO2: TFloatField
      FieldName = 'PMARGEMATACADO2'
    end
    object queryPMARGEMATACADO3: TFloatField
      FieldName = 'PMARGEMATACADO3'
    end
    object queryPMARGEMATACADO4: TFloatField
      FieldName = 'PMARGEMATACADO4'
    end
    object queryPMARGEMATACADO5: TFloatField
      FieldName = 'PMARGEMATACADO5'
    end
    object queryPMARGEMATACADO6: TFloatField
      FieldName = 'PMARGEMATACADO6'
    end
    object queryPRECOATACADO1: TFloatField
      FieldName = 'PRECOATACADO1'
    end
    object queryPRECOATACADO2: TFloatField
      FieldName = 'PRECOATACADO2'
    end
    object queryPRECOATACADO3: TFloatField
      FieldName = 'PRECOATACADO3'
    end
    object queryPRECOATACADO4: TFloatField
      FieldName = 'PRECOATACADO4'
    end
    object queryPRECOATACADO5: TFloatField
      FieldName = 'PRECOATACADO5'
    end
    object queryIND_CFOP: TWideStringField
      FieldName = 'IND_CFOP'
      Size = 6
    end
    object queryCFOP_DESC: TWideStringField
      FieldName = 'CFOP_DESC'
      Size = 30
    end
    object queryUSA_LOTE: TIntegerField
      FieldName = 'USA_LOTE'
    end
    object queryIND_CFOP_VENDA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_VENDA_DENTRO'
      Size = 6
    end
    object queryIND_CFOP_VENDA_FORA: TWideStringField
      FieldName = 'IND_CFOP_VENDA_FORA'
      Size = 6
    end
    object queryIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_DENTRO'
      Size = 6
    end
    object queryIND_CFOP_DEVOLUCAO_FORA: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_FORA'
      Size = 6
    end
    object queryIND_CFOP_GARANTIA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_DENTRO'
      Size = 6
    end
    object queryIND_CFOP_GARANTIA_FORA: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_FORA'
      Size = 6
    end
    object queryCODCONTA: TWideStringField
      FieldName = 'CODCONTA'
      Size = 6
    end
    object queryCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 10
    end
    object queryCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
      Size = 10
    end
    object queryESTOQUE_INICIAL: TFloatField
      FieldName = 'ESTOQUE_INICIAL'
    end
    object queryENTRADAS: TFloatField
      FieldName = 'ENTRADAS'
    end
    object querySAIDAS: TFloatField
      FieldName = 'SAIDAS'
    end
    object queryESTOQUE_ATUAL: TFloatField
      FieldName = 'ESTOQUE_ATUAL'
    end
    object queryULTIMA_ENTRADA: TDateTimeField
      FieldName = 'ULTIMA_ENTRADA'
    end
    object queryULTIMA_SAIDA: TDateTimeField
      FieldName = 'ULTIMA_SAIDA'
    end
    object queryNOTA_FISCAL: TWideStringField
      FieldName = 'NOTA_FISCAL'
      Size = 10
    end
    object querysubgrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'subgrupo'
      LookupDataSet = frmmodulo.qrgrupo
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'GRUPO'
      KeyFields = 'CODSUBGRUPO'
      Size = 30
      Lookup = True
    end
    object queryfornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODFORNECEDOR'
      Size = 50
      Lookup = True
    end
    object queryAPLICACAO: TWideMemoField
      FieldName = 'APLICACAO'
      BlobType = ftWideMemo
    end
    object queryUSA_TB_PC: TWideStringField
      FieldName = 'USA_TB_PC'
      Size = 4
    end
  end
  object QUERY2: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000009')
    Params = <>
    Left = 568
    Top = 216
  end
  object DS2: TDataSource
    DataSet = QUERY2
    Left = 560
    Top = 248
  end
end
