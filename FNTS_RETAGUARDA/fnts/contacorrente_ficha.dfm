object frmcontacorrente_ficha: Tfrmcontacorrente_ficha
  Left = 505
  Top = 197
  BorderStyle = bsToolWindow
  Caption = 'CONTA CORRENTE | Ficha de Cadastro'
  ClientHeight = 401
  ClientWidth = 435
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop2
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 30
    Top = 11
    Width = 37
    Height = 13
    Alignment = taRightJustify
    Caption = 'C'#243'digo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 34
    Top = 34
    Width = 33
    Height = 13
    Alignment = taRightJustify
    Caption = 'Banco:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 6
    Top = 58
    Width = 61
    Height = 13
    Alignment = taRightJustify
    Caption = 'Ag'#234'ncia/Dig:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 15
    Top = 82
    Width = 52
    Height = 13
    Alignment = taRightJustify
    Caption = 'Conta/Dig:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 29
    Top = 105
    Width = 34
    Height = 13
    Alignment = taRightJustify
    Caption = 'Titular:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel2: TBevel
    Left = 0
    Top = 355
    Width = 435
    Height = 3
    Align = alBottom
    ExplicitTop = 131
    ExplicitWidth = 423
  end
  object Label6: TLabel
    Left = 132
    Top = 57
    Width = 10
    Height = 16
    Alignment = taCenter
    AutoSize = False
    Caption = '-'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label7: TLabel
    Left = 183
    Top = 82
    Width = 10
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = '-'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object DBEdit1: TDBEdit
    Left = 69
    Top = 6
    Width = 65
    Height = 21
    DataField = 'CODIGO'
    DataSource = dscontacorrente
    Enabled = False
    TabOrder = 0
  end
  object EBANCO: TDBEdit
    Left = 69
    Top = 30
    Width = 64
    Height = 21
    DataField = 'CODBANCO'
    DataSource = dscontacorrente
    TabOrder = 1
    OnEnter = EBANCOEnter
    OnExit = EBANCOExit
    OnKeyPress = EBANCOKeyPress
  end
  object bLOCBANCO: TBitBtn
    Left = 133
    Top = 30
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
    TabOrder = 8
    OnClick = bLOCBANCOClick
  end
  object DBEdit30: TDBEdit
    Left = 159
    Top = 30
    Width = 256
    Height = 21
    Color = clBtnFace
    DataField = 'banco'
    DataSource = dscontacorrente
    TabOrder = 9
  end
  object DBEdit2: TDBEdit
    Left = 69
    Top = 54
    Width = 65
    Height = 21
    DataField = 'AGENCIA'
    DataSource = dscontacorrente
    TabOrder = 2
    OnEnter = EBANCOEnter
    OnExit = DBEdit2Exit
    OnKeyPress = EBANCOKeyPress
  end
  object DBEdit3: TDBEdit
    Left = 165
    Top = 54
    Width = 250
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME_AGENCIA'
    DataSource = dscontacorrente
    TabOrder = 4
    OnEnter = EBANCOEnter
    OnExit = DBEdit2Exit
    OnKeyPress = EBANCOKeyPress
  end
  object DBEdit4: TDBEdit
    Left = 69
    Top = 78
    Width = 116
    Height = 21
    DataField = 'CONTA'
    DataSource = dscontacorrente
    TabOrder = 5
    OnEnter = EBANCOEnter
    OnExit = DBEdit2Exit
    OnKeyPress = EBANCOKeyPress
  end
  object DBEdit5: TDBEdit
    Left = 69
    Top = 102
    Width = 346
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TITULAR'
    DataSource = dscontacorrente
    TabOrder = 7
    OnEnter = EBANCOEnter
    OnExit = DBEdit2Exit
    OnKeyPress = DBEdit5KeyPress
  end
  object pgravar: TPanel
    Left = 0
    Top = 358
    Width = 435
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 10
    ExplicitTop = 369
    object bgravar: TAdvGlowButton
      Left = 99
      Top = 6
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
    object bcancelar: TAdvGlowButton
      Left = 212
      Top = 4
      Width = 121
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
  object DBEdit6: TDBEdit
    Left = 140
    Top = 54
    Width = 25
    Height = 21
    CharCase = ecUpperCase
    DataField = 'AGENCIADIG'
    DataSource = dscontacorrente
    MaxLength = 1
    TabOrder = 3
    OnEnter = EBANCOEnter
    OnExit = DBEdit2Exit
    OnKeyPress = EBANCOKeyPress
  end
  object DBEdit7: TDBEdit
    Left = 191
    Top = 78
    Width = 28
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CONTADIG'
    DataSource = dscontacorrente
    MaxLength = 1
    TabOrder = 6
    OnEnter = EBANCOEnter
    OnExit = DBEdit2Exit
    OnKeyPress = EBANCOKeyPress
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 129
    Width = 419
    Height = 224
    Caption = 'Boleto de Cobran'#231'a'
    Color = 15574106
    ParentBackground = False
    ParentColor = False
    TabOrder = 11
    object Label21: TLabel
      Left = 38
      Top = 36
      Width = 38
      Height = 13
      Caption = 'Pessoa:'
    end
    object Label8: TLabel
      Left = 9
      Top = 63
      Width = 67
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'd Cedente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 21
      Top = 114
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = 'Instru'#231#245'es:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lcnpj: TLabel
      Left = 225
      Top = 36
      Width = 29
      Height = 13
      Caption = 'CNPJ:'
    end
    object Label10: TLabel
      Left = 26
      Top = 88
      Width = 54
      Height = 13
      Caption = 'Impress'#227'o:'
    end
    object Label11: TLabel
      Left = 204
      Top = 88
      Width = 50
      Height = 13
      Caption = 'Cobran'#231'a:'
    end
    object Label12: TLabel
      Left = 206
      Top = 63
      Width = 48
      Height = 13
      Caption = 'Nosso N'#186':'
    end
    object DBEdit8: TDBEdit
      Left = 82
      Top = 58
      Width = 116
      Height = 21
      DataField = 'CODCEDENTE'
      DataSource = dscontacorrente
      TabOrder = 0
      OnEnter = EBANCOEnter
      OnExit = DBEdit2Exit
      OnKeyPress = EBANCOKeyPress
    end
    object DBEdit9: TDBEdit
      Left = 82
      Top = 109
      Width = 303
      Height = 21
      DataField = 'INSTRUCOES1'
      DataSource = dscontacorrente
      TabOrder = 1
      OnEnter = EBANCOEnter
      OnExit = DBEdit2Exit
      OnKeyPress = EBANCOKeyPress
    end
    object DBEdit10: TDBEdit
      Left = 82
      Top = 136
      Width = 303
      Height = 21
      DataField = 'INSTRUCOES2'
      DataSource = dscontacorrente
      TabOrder = 2
      OnEnter = EBANCOEnter
      OnExit = DBEdit2Exit
      OnKeyPress = EBANCOKeyPress
    end
    object DBEdit11: TDBEdit
      Left = 82
      Top = 163
      Width = 303
      Height = 21
      DataField = 'INSTRUCOES3'
      DataSource = dscontacorrente
      TabOrder = 3
      OnEnter = EBANCOEnter
      OnExit = DBEdit2Exit
      OnKeyPress = EBANCOKeyPress
    end
    object DBEdit12: TDBEdit
      Left = 260
      Top = 31
      Width = 125
      Height = 21
      DataField = 'CPFCNPJ'
      DataSource = dscontacorrente
      TabOrder = 4
      OnEnter = EBANCOEnter
      OnExit = DBEdit2Exit
      OnKeyPress = EBANCOKeyPress
    end
    object DBEdit13: TDBEdit
      Left = 260
      Top = 58
      Width = 125
      Height = 21
      DataField = 'NOSSONUM'
      DataSource = dscontacorrente
      TabOrder = 5
      OnEnter = EBANCOEnter
      OnExit = DBEdit2Exit
      OnKeyPress = EBANCOKeyPress
    end
    object impressao: TRxDBComboBox
      Left = 82
      Top = 82
      Width = 116
      Height = 21
      DataField = 'LAYOUT'
      DataSource = dscontacorrente
      Items.Strings = (
        'CARNE'
        'FATURA'
        'PADRAO'
        'PADRAO ENTREGA')
      TabOrder = 6
      Values.Strings = (
        '0'
        '1'
        '2'
        '3')
    end
    object cobranca: TRxDBComboBox
      Left = 260
      Top = 82
      Width = 125
      Height = 21
      DataField = 'TIPO'
      DataSource = dscontacorrente
      Items.Strings = (
        'CAUCIONADA'
        'DESCONTADA'
        'SIMPLES'
        'VENDOR'
        'VINCULADA')
      TabOrder = 7
      Values.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4')
    end
  end
  object pessoa: TDBComboBox
    Left = 90
    Top = 160
    Width = 116
    Height = 21
    DataField = 'FISICAJURIDICA'
    DataSource = dscontacorrente
    Items.Strings = (
      'JURIDICA'
      'FISICA')
    TabOrder = 12
  end
  object dscontacorrente: TwwDataSource
    DataSet = frmmodulo.qrcontacorrente
    Left = 365
    Top = 65534
  end
  object Pop2: TPopupMenu
    Left = 292
    Top = 65533
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
  end
end
