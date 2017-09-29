object frmNotaFiscal_Item2: TfrmNotaFiscal_Item2
  Left = 559
  Top = 305
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'NOTA FISCAL DE SA'#205'DA | Edi'#231#227'o de Item'
  ClientHeight = 496
  ClientWidth = 664
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop2
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 443
    Width = 664
    Height = 2
    Align = alBottom
  end
  object Bevel2: TBevel
    Left = 0
    Top = 97
    Width = 664
    Height = 2
    Align = alTop
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 445
    Width = 664
    Height = 51
    Color = clWhite
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alBottom
    TabOrder = 2
    object Bevel7: TBevel
      Left = 252
      Top = -1
      Width = 2
      Height = 49
    end
    object Label11: TLabel
      Left = 120
      Top = 10
      Width = 62
      Height = 13
      Caption = 'Lan'#231'amento:'
    end
    object bgravar: TAdvGlowButton
      Left = 353
      Top = 9
      Width = 107
      Height = 32
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
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B0000026B494441544889
        D594CF6B134114C7BFCF2C4DCCC1928290F41445055BC8612FC206B684F80321
        1ECCC19B1515B511E2C585A4FF80510C28566284B6C2DC5231979478F112A98B
        A8E4A6112935B74482A6B19844DA663C24BBD9C4D6B62E157CA7613EF3BEDF99
        F786477234F303801D1B442E16A0B1C979535C0060E79C7300202232AE3BE74C
        7101000E0F0F62E686AC25D0E5072FB158FAAEDFC40C1700401E75120C218F3A
        7B04CC70A1B3C739E7C627F62498E1027639DA06D4ED1911D16FF733C1DB06BC
        EF89BC4FC204FF4725DA7583FFAC072D70BC057054375869ACEA0944442B8DD5
        9EFC1DF07522BA74C17F84CDBEF8745037985B58E2730B4B9BCD9AEDF216115D
        C9C5024C640AC7081D02027A93C9E5B023281D405AFD4CA56ABDAFC85B72B81C
        F66BA988FF89C894F576D9F8A2C89411A103313521A1526BC2E771219C54515E
        6E1893313521BDABD49A577D1E97379C54EF97971B16AD032E873D948AF86744
        A63400ECD1F2F2E3F182000041C98D4AAD89EB8F5E2111F22228B991C8167483
        A0E4CE576ACD53175FDF3DFBE6DCAD8741C9BD92C816663BF8662AE27F2C32A5
        06C06610EF8EEBB45A84CF338C44C88BFD8336A4D5A2F1F5E5B45A3C71A7983C
        0ECEA745A64CE7C7E394C8162C00908B05EE894CF90A609F517C6C72FE4C2E16
        C8080050AAD6114EAA5A8D51AAD661E8E1FB54C4FF4D64CF53DA86C8949FF958
        DCDA5997000C19C5E568E634113D05601300D401EC2D55EB48643FE8BF04DD91
        7B4C8E66CEE76FC749648AC60644A67C04F00580B34FFC24806700AC00405DBD
        ED85C1A427B49AF7C78E0D3632D94CFCAF0D8C267F12074C4C538B75C0DA5A5B
        1BDAEADC2FEC698185CDD5A5E80000000049454E44AE426082}
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
    object bretorna: TAdvGlowButton
      Left = 478
      Top = 9
      Width = 131
      Height = 32
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
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B000002E9494441544889
        CD945B6C0C6114C77FDFEE543B5B8968DAD0150915D7A5AE21DA74A984266E91
        BEE285884BB48D884413A94B88F0865825C183274523080F08DDB0B66949088A
        54DB905851EDA2ECAC6ECDF1D0BDCC140F6C88934C3233BF39E77FBEFFF9E653
        DEED97BF002E7E120DFB97AA79D557D2E21AE0121101504A29EB7DFCBBB4B806
        30D63D849395DE44825A7BD84F6BE853B29374B806E0F50C5758C2EB196E2B90
        0ED7E2EF4444AC4BB425A4C335FE72F40BA8D4CC9452EA87FED2E0FD02326089
        32A0441AFC1F59F4D705FEF319DC40782422A2949A2C225E04DD26D063C49209
        4A29D563C46CF57FC205380E70FAC5DE6DBC6061BB0F05EC28B8106CEB316235
        406552A0EE4E9BD4DD69FBD55933909BC0BAA32D7B2E362FA911E570D89A695E
        328312A7D37DCEB3F341CA2250F9435D94178DA63ED0AE42E1C800936DFC44CD
        BDEA8B466FACEB5B6F14891A64E4E401D0DBF50E879E0D99996F0E3DD9351296
        F60BE40F75716443119D1FA39416E653511BE0ED072359DDC2BF9616E6D7BCF2
        F7757DEBEB65CECD67BCBF7E89962DABC0143CB5E7C9F196D1B86022E88ED780
        D200CA8B46D1F931CAA66377F16D2CA6BC6814BEAB2D49010BF79F69DDE7560E
        85F9F90BE17BB7C85DB89C82EA833832B3C8F196D1DD700D331A41CBCEE6FEB2
        59D33480FA4007A5856E7C1B8BC91B92457DA0C3E68F853F662B65A018949BCB
        E335CB1977E00423566E002054778AD6DD55B80AC62752BD1A40281CA1A23690
        F09850388265C6566ECE05677C2CA004F36BCA4A33160365DBE14A0322801E0A
        47F05D7D9ADC45A48E5C2B9F341776F70FB413CFF17A724A16113A7B1287EE62
        C4CAF5640E73D3BA737362F04144E4B7AFA6C5D325583A5E4444BA6E5F13FFA4
        C1E29F3058BA1B1B444424387FAC342D9E2E22F26767919EA18D31447FD9B860
        0266D4887B2E3CAB5A8D43D771EAD964389D530054CA91DF8B272B668F33627D
        CFED3F9A20A690E1744E9B7AA9E9615A0289B8BF6C563150127F0CCEBCDC7CDB
        CABF03DAB5D9F78C9DC2190000000049454E44AE426082}
      Transparent = True
      TabOrder = 1
      OnClick = bretornaClick
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
    object pState: TFlatPanel
      Left = 8
      Top = 8
      Width = 104
      Height = 18
      Caption = 'Inclus'#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Color = clBlue
      ColorHighLight = clBlack
      ColorShadow = clBlack
      TabOrder = 2
    end
    object pcodigo: TFlatPanel
      Left = 187
      Top = 7
      Width = 57
      Height = 18
      Caption = '000001'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = True
      ColorHighLight = clBlack
      ColorShadow = clBlack
      TabOrder = 3
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 664
    Height = 97
    Align = alTop
    BevelOuter = bvNone
    Color = 15574106
    ParentBackground = False
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 12
      Width = 42
      Height = 13
      Caption = 'Produto:'
    end
    object Label3: TLabel
      Left = 8
      Top = 36
      Width = 30
      Height = 13
      Caption = 'Serial:'
    end
    object Label4: TLabel
      Left = 216
      Top = 36
      Width = 58
      Height = 13
      Caption = 'Numera'#231#227'o:'
    end
    object Label5: TLabel
      Left = 344
      Top = 36
      Width = 43
      Height = 13
      Caption = 'Unidade:'
    end
    object Label6: TLabel
      Left = 520
      Top = 36
      Width = 26
      Height = 13
      Caption = 'NCM:'
    end
    object Label23: TLabel
      Left = 344
      Top = 12
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label24: TLabel
      Left = 504
      Top = 12
      Width = 43
      Height = 13
      Caption = 'Estoque:'
    end
    object Label33: TLabel
      Left = 8
      Top = 60
      Width = 69
      Height = 13
      Caption = 'Complemento:'
    end
    object ed_produto: TRzEdit
      Left = 56
      Top = 8
      Width = 281
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FocusColor = 12713983
      ParentFont = False
      TabOrder = 0
      OnKeyPress = ed_produtoKeyPress
    end
    object ed_serial: TRzEdit
      Left = 56
      Top = 32
      Width = 153
      Height = 21
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object ed_grade: TRzEdit
      Left = 280
      Top = 32
      Width = 57
      Height = 21
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object ed_unidade: TRzEdit
      Left = 392
      Top = 32
      Width = 65
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FocusColor = 12713983
      ParentFont = False
      TabOnEnter = True
      TabOrder = 3
    end
    object ed_classific: TRzEdit
      Left = 552
      Top = 32
      Width = 105
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FocusColor = 12713983
      ParentFont = False
      TabOnEnter = True
      TabOrder = 4
    end
    object ed_codigo: TRzEdit
      Left = 392
      Top = 8
      Width = 65
      Height = 21
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnKeyPress = ed_produtoKeyPress
    end
    object ed_estoque: TRzNumericEdit
      Left = 552
      Top = 8
      Width = 105
      Height = 21
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      IntegersOnly = False
      DisplayFormat = '###,###,##0.000'
    end
    object ed_grade_codigo: TRzEdit
      Left = 280
      Top = 32
      Width = 57
      Height = 21
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      Visible = False
    end
    object ed_complemento: TMemo
      Left = 80
      Top = 60
      Width = 577
      Height = 34
      Color = clBtnFace
      Enabled = False
      TabOrder = 8
      OnExit = ed_complementoExit
    end
    object baltera_complemento: TAdvGlowButton
      Left = 8
      Top = 73
      Width = 69
      Height = 19
      Caption = 'Alterar'
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
      Transparent = True
      TabOrder = 9
      OnClick = baltera_complementoClick
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
  object Panel2: TPanel
    Left = 0
    Top = 99
    Width = 664
    Height = 344
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object Bevel3: TBevel
      Left = 252
      Top = 0
      Width = 2
      Height = 344
      Align = alLeft
    end
    object Label12: TLabel
      Left = 270
      Top = 14
      Width = 22
      Height = 11
      Caption = 'CST:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 262
      Top = 37
      Width = 30
      Height = 11
      Caption = 'CFOP:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Bevel4: TBevel
      Left = 256
      Top = 82
      Width = 409
      Height = 2
    end
    object Label14: TLabel
      Left = 264
      Top = 92
      Width = 79
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Al'#237'quota ICMS:'
    end
    object Label15: TLabel
      Left = 440
      Top = 91
      Width = 79
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Redu'#231#227'o:'
    end
    object Label16: TLabel
      Left = 264
      Top = 116
      Width = 79
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Base de C'#225'lculo:'
    end
    object Label17: TLabel
      Left = 440
      Top = 116
      Width = 79
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Valor do ICMS:'
    end
    object Bevel5: TBevel
      Left = 255
      Top = 146
      Width = 409
      Height = 2
    end
    object Label18: TLabel
      Left = 363
      Top = 159
      Width = 79
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Base de C'#225'lculo:'
    end
    object Label19: TLabel
      Left = 528
      Top = 160
      Width = 41
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Valor:'
    end
    object Bevel6: TBevel
      Left = 255
      Top = 186
      Width = 409
      Height = 2
    end
    object Label20: TLabel
      Left = 264
      Top = 198
      Width = 79
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Isentas:'
    end
    object Label21: TLabel
      Left = 264
      Top = 234
      Width = 79
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Al'#237'quota IPI:'
    end
    object Label22: TLabel
      Left = 264
      Top = 256
      Width = 79
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Valor IPI:'
    end
    object Label25: TLabel
      Left = 488
      Top = 234
      Width = 79
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Bruto:'
    end
    object Label26: TLabel
      Left = 488
      Top = 258
      Width = 79
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'L'#237'quido:'
    end
    object Bevel8: TBevel
      Left = 480
      Top = 231
      Width = 2
      Height = 37
    end
    object Bevel9: TBevel
      Left = 255
      Top = 274
      Width = 409
      Height = 2
    end
    object Label27: TLabel
      Left = 438
      Top = 283
      Width = 43
      Height = 13
      Alignment = taRightJustify
      Caption = 'Al'#237'quota:'
    end
    object Label28: TLabel
      Left = 264
      Top = 283
      Width = 79
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Base de C'#225'lculo:'
    end
    object Label29: TLabel
      Left = 544
      Top = 283
      Width = 28
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor:'
    end
    object Bevel10: TBevel
      Left = 250
      Top = 306
      Width = 409
      Height = 2
    end
    object Label30: TLabel
      Left = 438
      Top = 315
      Width = 43
      Height = 13
      Alignment = taRightJustify
      Caption = 'Al'#237'quota:'
    end
    object Label31: TLabel
      Left = 264
      Top = 315
      Width = 79
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Base de C'#225'lculo:'
    end
    object Label32: TLabel
      Left = 544
      Top = 315
      Width = 28
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor:'
    end
    object Bevel11: TBevel
      Left = 258
      Top = 221
      Width = 409
      Height = 2
    end
    object Label34: TLabel
      Left = 488
      Top = 198
      Width = 79
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Outras:'
    end
    object Label36: TLabel
      Left = 255
      Top = 62
      Width = 37
      Height = 11
      Caption = 'CSOSN:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label37: TLabel
      Left = 264
      Top = 159
      Width = 34
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MVA:'
    end
    object ed_cst: TRzButtonEdit
      Left = 296
      Top = 6
      Width = 65
      Height = 21
      FocusColor = 12713983
      TabOrder = 1
      OnKeyPress = ed_cstKeyPress
      AltBtnWidth = 15
      ButtonWidth = 15
      OnButtonClick = ed_cstButtonClick
    end
    object ed_nome_cst: TRzEdit
      Left = 368
      Top = 6
      Width = 289
      Height = 21
      Enabled = False
      TabOrder = 2
    end
    object ed_cfop: TRzButtonEdit
      Left = 296
      Top = 30
      Width = 65
      Height = 21
      FocusColor = 12713983
      TabOrder = 3
      OnExit = ed_cfopExit
      OnKeyPress = ed_cfopKeyPress
      AltBtnWidth = 15
      ButtonWidth = 15
      OnButtonClick = ed_cfopButtonClick
    end
    object ed_nome_cfop: TRzEdit
      Left = 368
      Top = 30
      Width = 289
      Height = 21
      Enabled = False
      TabOrder = 4
    end
    object FlatPanel2: TFlatPanel
      Left = 264
      Top = 74
      Width = 42
      Height = 17
      Caption = 'ICMS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = True
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      TabOrder = 7
    end
    object ed_icms_aliquota: TRzNumericEdit
      Left = 352
      Top = 88
      Width = 81
      Height = 21
      FocusColor = 12713983
      TabOnEnter = True
      TabOrder = 8
      OnExit = ed_icms_aliquotaExit
      IntegersOnly = False
      DisplayFormat = '##0.00%'
    end
    object ed_icms_reducao: TRzNumericEdit
      Left = 528
      Top = 88
      Width = 81
      Height = 21
      FocusColor = 12713983
      TabOnEnter = True
      TabOrder = 10
      OnExit = ed_icms_aliquotaExit
      IntegersOnly = False
      DisplayFormat = '##0.00%'
    end
    object ed_icms_base: TRzNumericEdit
      Left = 352
      Top = 112
      Width = 81
      Height = 21
      FocusColor = 12713983
      TabOnEnter = True
      TabOrder = 9
      IntegersOnly = False
      DisplayFormat = '###,###,##0.00'
    end
    object ed_icms_valor: TRzNumericEdit
      Left = 528
      Top = 112
      Width = 81
      Height = 21
      FocusColor = 12713983
      TabOnEnter = True
      TabOrder = 11
      IntegersOnly = False
      DisplayFormat = '###,###,##0.00'
    end
    object FlatPanel3: TFlatPanel
      Left = 264
      Top = 138
      Width = 137
      Height = 17
      Caption = 'Substitui'#231#227'o Tribut'#225'ria'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = True
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      TabOrder = 12
    end
    object ed_sub_base: TRzNumericEdit
      Left = 451
      Top = 157
      Width = 81
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      FocusColor = 12713983
      ParentFont = False
      TabOnEnter = True
      TabOrder = 14
      IntegersOnly = False
      DisplayFormat = '###,###,##0.00'
    end
    object ed_sub_valor: TRzNumericEdit
      Left = 578
      Top = 157
      Width = 81
      Height = 21
      FocusColor = 12713983
      TabOnEnter = True
      TabOrder = 15
      IntegersOnly = False
      DisplayFormat = '###,###,##0.00'
    end
    object FlatPanel4: TFlatPanel
      Left = 264
      Top = 177
      Width = 57
      Height = 17
      Caption = 'Isentas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = True
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      TabOrder = 28
    end
    object ed_isenta: TRzNumericEdit
      Left = 352
      Top = 195
      Width = 81
      Height = 21
      FocusColor = 12713983
      TabOnEnter = True
      TabOrder = 16
      IntegersOnly = False
      DisplayFormat = '###,###,##0.00'
    end
    object ed_ipi_aliquota: TRzNumericEdit
      Left = 352
      Top = 226
      Width = 81
      Height = 21
      FocusColor = 12713983
      TabOnEnter = True
      TabOrder = 18
      OnExit = ed_ipi_aliquotaExit
      IntegersOnly = False
      DisplayFormat = '##0.00%'
    end
    object ed_ipi_valor: TRzNumericEdit
      Left = 352
      Top = 249
      Width = 81
      Height = 21
      FocusColor = 12713983
      TabOnEnter = True
      TabOrder = 19
      IntegersOnly = False
      DisplayFormat = '##0.00%'
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 252
      Height = 344
      Align = alLeft
      BevelOuter = bvNone
      Color = 2211435
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 32
        Width = 60
        Height = 13
        Caption = 'Quantidade:'
      end
      object Label7: TLabel
        Left = 8
        Top = 64
        Width = 68
        Height = 13
        Caption = 'Valor Unit'#225'rio:'
      end
      object Label8: TLabel
        Left = 8
        Top = 96
        Width = 44
        Height = 13
        Caption = 'Subtotal:'
      end
      object Label9: TLabel
        Left = 8
        Top = 144
        Width = 49
        Height = 13
        Caption = 'Desconto:'
      end
      object Label10: TLabel
        Left = 8
        Top = 195
        Width = 28
        Height = 13
        Caption = 'Total:'
      end
      object ed_qtde: TRzNumericEdit
        Left = 80
        Top = 24
        Width = 161
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        FocusColor = 12713983
        ParentFont = False
        TabOnEnter = True
        TabOrder = 1
        OnExit = ed_qtdeExit
        IntegersOnly = False
        DisplayFormat = '###,###,##0.0000'
      end
      object ed_unitario: TRzNumericEdit
        Left = 80
        Top = 56
        Width = 161
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        FocusColor = 12713983
        ParentFont = False
        TabOnEnter = True
        TabOrder = 2
        OnExit = ed_qtdeExit
        IntegersOnly = False
        DisplayFormat = '###,###,##0.0000'
      end
      object ed_subtotal: TRzNumericEdit
        Left = 80
        Top = 88
        Width = 161
        Height = 24
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        FocusColor = 12713983
        ParentFont = False
        TabOrder = 3
        IntegersOnly = False
        DisplayFormat = '###,###,##0.00'
      end
      object ed_descontop: TRzNumericEdit
        Left = 80
        Top = 136
        Width = 57
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        FocusColor = 12713983
        ParentFont = False
        TabOnEnter = True
        TabOrder = 4
        OnExit = ed_descontopExit
        IntegersOnly = False
        DisplayFormat = '###,###,##0.00%'
      end
      object ed_desconto: TRzNumericEdit
        Left = 144
        Top = 136
        Width = 97
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        FocusColor = 12713983
        ParentFont = False
        TabOnEnter = True
        TabOrder = 5
        OnExit = ed_descontoExit
        IntegersOnly = False
        DisplayFormat = '###,###,##0.00'
      end
      object ed_total: TRzNumericEdit
        Left = 80
        Top = 184
        Width = 161
        Height = 31
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        FocusColor = 12713983
        ParentFont = False
        TabOrder = 6
        OnExit = ed_totalExit
        OnKeyPress = ed_cfopKeyPress
        IntegersOnly = False
        DisplayFormat = '###,###,##0.00'
      end
      object blancar_total: TRzCheckBox
        Left = 8
        Top = 4
        Width = 104
        Height = 15
        Caption = 'Lan'#231'ar pelo total?'
        State = cbUnchecked
        TabOrder = 0
        OnClick = blancar_totalClick
        OnKeyPress = ed_cfopKeyPress
      end
      object rstatus: TRzPanel
        Left = 0
        Top = 311
        Width = 252
        Height = 33
        Align = alBottom
        BorderOuter = fsNone
        Color = clBlack
        TabOrder = 7
        Visible = False
        object Label35: TLabel
          Left = 4
          Top = 4
          Width = 41
          Height = 11
          Caption = 'STATUS'
          Font.Charset = ANSI_CHARSET
          Font.Color = 33023
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lstatus: TLabel
          Left = 4
          Top = 16
          Width = 234
          Height = 11
          Caption = 'Esta sendo usado o pre'#231'o de CUSTO neste PRODUTO.'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8454143
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
      end
    end
    object ed_peso_bruto: TRzNumericEdit
      Left = 576
      Top = 226
      Width = 81
      Height = 21
      FocusColor = 12713983
      TabOnEnter = True
      TabOrder = 20
      IntegersOnly = False
      DisplayFormat = '###,###,##0.000'
    end
    object ed_peso_liquido: TRzNumericEdit
      Left = 576
      Top = 250
      Width = 81
      Height = 21
      FocusColor = 12713983
      TabOnEnter = True
      TabOrder = 21
      IntegersOnly = False
      DisplayFormat = '###,###,##0.000'
    end
    object FlatPanel5: TFlatPanel
      Left = 488
      Top = 213
      Width = 89
      Height = 17
      Caption = 'Peso Unit'#225'rio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = True
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      TabOrder = 29
    end
    object FlatPanel6: TFlatPanel
      Left = 265
      Top = 264
      Width = 33
      Height = 17
      Caption = 'PIS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = True
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      TabOrder = 30
    end
    object ed_pis_aliquota: TRzNumericEdit
      Left = 484
      Top = 280
      Width = 52
      Height = 21
      FocusColor = 12713983
      TabOnEnter = True
      TabOrder = 23
      OnExit = ed_pis_aliquotaExit
      IntegersOnly = False
      DisplayFormat = '##0.00%'
    end
    object ed_Pis_Base: TRzNumericEdit
      Left = 352
      Top = 280
      Width = 81
      Height = 21
      FocusColor = 12713983
      TabOnEnter = True
      TabOrder = 22
      OnEnter = ed_Pis_BaseEnter
      OnExit = ed_Pis_BaseExit
      IntegersOnly = False
      DisplayFormat = '###,###,##0.00'
    end
    object ed_pis_valor: TRzNumericEdit
      Left = 576
      Top = 280
      Width = 81
      Height = 21
      FocusColor = 12713983
      TabOnEnter = True
      TabOrder = 24
      IntegersOnly = False
      DisplayFormat = '###,###,##0.00'
    end
    object ed_cofins_aliquota: TRzNumericEdit
      Left = 484
      Top = 312
      Width = 52
      Height = 21
      FocusColor = 12713983
      TabOnEnter = True
      TabOrder = 26
      OnExit = ed_cofins_aliquotaExit
      IntegersOnly = False
      DisplayFormat = '##0.00%'
    end
    object ed_cofins_base: TRzNumericEdit
      Left = 352
      Top = 312
      Width = 81
      Height = 21
      FocusColor = 12713983
      TabOnEnter = True
      TabOrder = 25
      OnEnter = ed_cofins_baseEnter
      OnExit = ed_cofins_baseExit
      IntegersOnly = False
      DisplayFormat = '###,###,##0.00'
    end
    object ed_cofins_valor: TRzNumericEdit
      Left = 576
      Top = 312
      Width = 81
      Height = 21
      FocusColor = 12713983
      TabOrder = 27
      OnKeyPress = ed_cofins_valorKeyPress
      IntegersOnly = False
      DisplayFormat = '###,###,##0.00'
    end
    object FlatPanel7: TFlatPanel
      Left = 265
      Top = 296
      Width = 48
      Height = 17
      Caption = 'COFINS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = True
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      TabOrder = 31
    end
    object ed_outras: TRzNumericEdit
      Left = 576
      Top = 195
      Width = 81
      Height = 21
      FocusColor = 12713983
      TabOnEnter = True
      TabOrder = 17
      IntegersOnly = False
      DisplayFormat = '###,###,##0.00'
    end
    object FlatPanel8: TFlatPanel
      Left = 488
      Top = 178
      Width = 57
      Height = 17
      Caption = 'Outras'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = True
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      TabOrder = 32
    end
    object FlatPanel9: TFlatPanel
      Left = 264
      Top = 213
      Width = 33
      Height = 17
      Caption = 'IPI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = True
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      TabOrder = 33
    end
    object ed_csosn: TRzButtonEdit
      Left = 296
      Top = 54
      Width = 65
      Height = 21
      FocusColor = 12713983
      TabOrder = 5
      OnKeyPress = ed_csosnKeyPress
      AltBtnWidth = 15
      ButtonWidth = 15
      OnButtonClick = ed_csosnButtonClick
    end
    object ed_nome_csosn: TRzEdit
      Left = 368
      Top = 54
      Width = 289
      Height = 21
      Enabled = False
      TabOrder = 6
    end
    object ed_margem_agregada: TRzNumericEdit
      Left = 304
      Top = 157
      Width = 36
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      FocusColor = 12713983
      ParentFont = False
      TabOnEnter = True
      TabOrder = 13
      IntegersOnly = False
      DisplayFormat = '###,###,##0.00'
    end
  end
  object Pop2: TPopupMenu
    Left = 428
    Top = 66
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 113
      OnClick = bgravarClick
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = bretornaClick
    end
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.econexao2
    Params = <>
    Left = 456
    Top = 64
  end
  object qrserial: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select * from c000022')
    Params = <>
    Left = 488
    Top = 64
  end
  object dsserial: TDataSource
    DataSet = qrgrade
    Left = 520
    Top = 64
  end
  object qrgrade: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select * from c000021')
    Params = <>
    Left = 552
    Top = 64
  end
  object dsgrade: TDataSource
    DataSet = qrgrade
    Left = 584
    Top = 64
  end
  object query1: TZQuery
    Connection = frmmodulo.econexao2
    Params = <>
    Left = 616
    Top = 64
  end
  object qrestoque: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 400
    Top = 64
  end
end
