object frmproduto_pedido_item: Tfrmproduto_pedido_item
  Left = 19
  Top = 245
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'PEDIDO DE COMPRA | Edi'#231#227'o de Itens'
  ClientHeight = 295
  ClientWidth = 765
  Color = clBtnFace
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
  object Bevel1: TBevel
    Left = 385
    Top = 0
    Width = 3
    Height = 237
    Align = alLeft
    ExplicitHeight = 241
  end
  object pgravar: TFlatPanel
    Left = 0
    Top = 243
    Width = 765
    Height = 52
    Color = clWhite
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alBottom
    TabOrder = 0
    object Label11: TLabel
      Left = 475
      Top = 21
      Width = 51
      Height = 13
      Caption = 'ESTOQUE:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 612
      Top = 21
      Width = 43
      Height = 13
      Caption = 'VENDAS:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 543
      Top = 21
      Width = 65
      Height = 17
      DataField = 'ESTOQUE_ATUAL'
      DataSource = dssugestao
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 673
      Top = 21
      Width = 65
      Height = 17
      DataField = 'vendas'
      DataSource = dssugestao
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 475
      Top = 4
      Width = 357
      Height = 17
      DataField = 'fornecedor'
      DataSource = frmproduto_pedido.dspedido_produto2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object bgravar: TAdvGlowButton
      Left = 71
      Top = 10
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
      Left = 188
      Top = 10
      Width = 133
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
  object bar: TProgressBar
    Left = 0
    Top = 237
    Width = 765
    Height = 6
    Align = alBottom
    TabOrder = 1
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 385
    Height = 237
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 2
    object Bevel2: TBevel
      Left = 0
      Top = 49
      Width = 385
      Height = 3
      Align = alTop
    end
    object Bevel3: TBevel
      Left = 0
      Top = 195
      Width = 385
      Height = 3
      Align = alBottom
      ExplicitTop = 199
    end
    object Panel1: TPanel
      Left = 0
      Top = 52
      Width = 385
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 11
        Width = 42
        Height = 13
        Caption = 'Produto:'
      end
      object Label2: TLabel
        Left = 8
        Top = 35
        Width = 43
        Height = 13
        Caption = 'Unidade:'
      end
      object DBEdit30: TDBEdit
        Left = 195
        Top = 6
        Width = 185
        Height = 21
        Color = clBtnFace
        DataField = 'produto'
        DataSource = dspedido_item
        TabOrder = 1
      end
      object DBEdit1: TDBEdit
        Left = 88
        Top = 31
        Width = 64
        Height = 21
        Color = clBtnFace
        DataField = 'unidade'
        DataSource = dspedido_item
        TabOrder = 2
      end
      object eproduto: TRzButtonEdit
        Left = 88
        Top = 6
        Width = 105
        Height = 21
        Text = '8888888888889'
        FocusColor = 10550008
        TabOrder = 0
        OnExit = eprodutoExit
        OnKeyPress = eprodutoKeyPress
        AltBtnWidth = 15
        ButtonWidth = 15
        OnButtonClick = eprodutoButtonClick
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 198
      Width = 385
      Height = 39
      Align = alBottom
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object Label6: TLabel
        Left = 8
        Top = 11
        Width = 48
        Height = 13
        Caption = 'Recebido:'
      end
      object Label7: TLabel
        Left = 208
        Top = 11
        Width = 28
        Height = 13
        Caption = 'Falta:'
      end
      object DBEdit5: TDBEdit
        Left = 88
        Top = 7
        Width = 89
        Height = 21
        DataField = 'RECEBIDO'
        DataSource = dspedido_item
        TabOrder = 0
        OnExit = DBEdit5Exit
        OnKeyPress = DBEdit5KeyPress
      end
      object DBEdit6: TDBEdit
        Left = 256
        Top = 7
        Width = 89
        Height = 21
        DataField = 'FALTA'
        DataSource = dspedido_item
        TabOrder = 1
        OnExit = DBEdit2Exit
        OnKeyPress = eprodutoKeyPress
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 109
      Width = 422
      Height = 90
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 2
      object Label3: TLabel
        Left = 8
        Top = 7
        Width = 60
        Height = 13
        Caption = 'Quantidade:'
      end
      object Label4: TLabel
        Left = 8
        Top = 35
        Width = 58
        Height = 13
        Caption = 'Unit'#225'rio-R$:'
      end
      object Label5: TLabel
        Left = 8
        Top = 60
        Width = 45
        Height = 13
        Caption = 'Total-R$:'
      end
      object lponto: TLabel
        Left = 181
        Top = -1
        Width = 13
        Height = 25
        Cursor = crHelp
        Hint = 
          'Este produto n'#227'o pode ser alterado,'#13#10'devido ele possuir uma grad' +
          'e de pre'#231'os'#13#10'ou um controle de Seriais, neste caso'#13#10'ser'#225' necess'#225 +
          'rio excluir o item para que'#13#10'o sistema possa refazer a grade/ser' +
          'iais'#13#10'atribuidos a ele.'
        Caption = '?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -21
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Transparent = True
        Visible = False
      end
      object DBEdit2: TDBEdit
        Left = 88
        Top = 3
        Width = 89
        Height = 21
        DataField = 'QTDE'
        DataSource = dspedido_item
        TabOrder = 0
        OnExit = DBEdit2Exit
        OnKeyPress = eprodutoKeyPress
      end
      object DBEdit3: TDBEdit
        Left = 88
        Top = 31
        Width = 89
        Height = 21
        DataField = 'UNITARIO'
        DataSource = dspedido_item
        TabOrder = 1
        OnExit = DBEdit3Exit
        OnKeyPress = DBEdit3KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 88
        Top = 56
        Width = 89
        Height = 21
        DataField = 'TOTAL'
        DataSource = dspedido_item
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnKeyPress = DBEdit4KeyPress
      end
      object bgrade: TBitBtn
        Left = 183
        Top = 28
        Width = 178
        Height = 25
        Caption = 'Pedir pela Grade de N'#250'meros'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000C40E0000C40E00000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A97151A9C38E
          68FFC08B66FFBE8864FFBB8561FFB9835FFFB47E5CFFB27C5AFFB17B58FFAE79
          57FFAD7656FFAB7554FFA97353FFA97151FFA97151A9FFFFFF00C8926CFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA97251FFFFFFFF00CA946EFFFFFF
          FFFFEBB060FFFFFFFFFFB2B2B2FFAEAEAEFFA5A5A5FFFEFAF7FFA2A2A2FFFEFA
          F7FF989898FF959595FF919191FFFFFFFFFFAA7353FFFFFFFF00CC976FFFFFFF
          FFFFFEFDFBFFFEFCFBFFFEFBF9FFFEFBF9FFFEFAF7FFFEFAF7FFFEFAF7FFFEFA
          F7FFFDF8F4FFFCF6F3FFFCF6F3FFFFFFFFFFAC7554FFFFFFFF00D19C73FFFFFF
          FFFFEFB462FFFFFFFFFFB5B5B5FFB3B3B3FFABABABFFFEFAF7FFA8A8A8FFFDF8
          F5FFA2A2A2FF9E9E9EFF9B9B9BFFFFFFFFFFB07A58FFFFFFFF00D49E75FFFFFF
          FFFFFEFCFAFFFEFBF9FFFEFAF8FFFEFAF8FFFEFAF6FFFEFAF7FFFCF7F4FFFCF7
          F2FFFCF6F0FFFCF5EFFFFCF4EEFFFFFFFFFFB27C5AFFFFFFFF00D5A076FFFFFF
          FFFFF3B663FFFFFFFFFFBABABAFFB8B8B8FFB2B2B2FFFEFAF7FFAFAFAFFFFCF6
          F0FFA9A9A9FFA7A7A7FFA5A5A5FFFFFFFFFFB57E5CFFFFFFFF00D8A279FFFFFF
          FFFFFEFAF8FFFEFAF7FFFEFAF6FFFDF8F6FFFCF7F2FFFEFAF7FFFCF6F0FFFCF5
          EFFFFBF3ECFFFAF1EAFFFAF0E8FFFFFFFFFFB7815EFFFFFFFF00D9A379FFFFFF
          FFFFF6B965FFFFFFFFFFBDBDBDFFBBBBBBFFB7B7B7FFFEFAF7FFB5B5B5FFFCF3
          EDFFB1B1B1FFB0B0B0FFADADADFFFFFFFFFFBA8560FFFFFFFF00DBA47AFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD8763FFFFFFFF00DCA77BFFDCA7
          7BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA7
          7BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFC08B66FFFFFFFF00DDAC85FDE8B9
          92FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B9
          92FFE8B992FFE8B992FFE8B992FFE8B992FFC1906FFDFFFFFF00A971516BDDB1
          8DF4DCA77BFFDCA67AFFDAA47AFFD8A279FFD5A076FFD49E75FFD29D73FFCF9A
          72FFCE9970FFCB966FFFC9946CFFC49A7AF4A971516BFFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        TabOrder = 3
        Visible = False
        OnClick = bgradeClick
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 385
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 3
      object linicio_remarcado: TLabel
        Left = 171
        Top = 20
        Width = 29
        Height = 13
        Caption = 'In'#237'cio:'
        Visible = False
      end
      object lfim_remarcado: TLabel
        Left = 121
        Top = 4
        Width = 20
        Height = 13
        Caption = 'Fim:'
      end
      object Label8: TLabel
        Left = 11
        Top = 4
        Width = 29
        Height = 13
        Caption = 'In'#237'cio:'
      end
      object Label9: TLabel
        Left = 234
        Top = 8
        Width = 96
        Height = 13
        Caption = 'Per'#237'odo de Vendas :'
      end
      object ldias: TLabel
        Left = 254
        Top = 22
        Width = 31
        Height = 16
        Caption = '...    '
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 284
        Top = 24
        Width = 20
        Height = 13
        Caption = 'Dias'
      end
      object ldataini_remarcado: TDateEdit
        Left = 10
        Top = 20
        Width = 100
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
        TabOrder = 0
        Text = '01/01/2001'
        OnExit = ldataini_remarcadoExit
        OnKeyPress = eprodutoKeyPress
      end
      object ldatafim_remarcado: TDateEdit
        Left = 120
        Top = 20
        Width = 104
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
        ReadOnly = True
        TabOrder = 1
        Text = '31/12/2099'
        OnExit = ldataini_remarcadoExit
        OnKeyPress = eprodutoKeyPress
      end
    end
  end
  object Panel6: TPanel
    Left = 388
    Top = 0
    Width = 377
    Height = 237
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 3
    object GRID5: TwwDBGrid
      Left = 0
      Top = 17
      Width = 377
      Height = 220
      ControlType.Strings = (
        'produto;CustomEdit;COMBOPRODUTO;F'
        'SITUACAO;ImageIndex;Original Size')
      Selected.Strings = (
        'CODIGO'#9'6'#9'C'#243'digo'#9'F'
        'CODBARRA'#9'13'#9'C'#243'd.Barra'#9'F'
        'produto'#9'32'#9'Produto'#9'F'
        'UNIDADE'#9'2'#9'UN'#9'F'
        'sugestao'#9'9'#9'Sugest'#227'o'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      DataSource = dssugestao
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      UseTFields = False
      OnDblClick = GRID5DblClick
      OnKeyPress = GRID5KeyPress
      PaintOptions.AlternatingRowColor = 16053492
      PaintOptions.ActiveRecordColor = clBlack
    end
    object Panel7: TPanel
      Left = 0
      Top = 0
      Width = 377
      Height = 17
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Sugest'#227'o de Compra'
      Color = clWhite
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
  object Pop2: TPopupMenu
    Left = 372
    Top = 61
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
  object dspedido_item: TDataSource
    DataSet = frmproduto_pedido.qrpedido_item
    Left = 336
    Top = 61
  end
  object qrgrade_pedido: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000039')
    Params = <>
    Left = 304
    Top = 48
  end
  object qrsugestao: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrsugestaoCalcFields
    SQL.Strings = (
      'select pro.*, est.* from c000025 pro,'
      'c000100 est'
      ' where'
      'pro.codigo = est.codproduto')
    Params = <>
    Left = 400
    Top = 112
    object qrsugestaosugestao: TFloatField
      FieldKind = fkCalculated
      FieldName = 'sugestao'
      DisplayFormat = '###,###,###0.000'
      Calculated = True
    end
    object TFloatField
      FieldKind = fkCalculated
      FieldName = 'vendas'
      DisplayFormat = '###,###,###0.000'
      Calculated = True
    end
    object qrsugestaoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrsugestaoCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrsugestaoPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrsugestaoUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrsugestaoDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object qrsugestaoCODGRUPO: TWideStringField
      FieldName = 'CODGRUPO'
      Size = 6
    end
    object qrsugestaoCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object qrsugestaoCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrsugestaoCODMARCA: TWideStringField
      FieldName = 'CODMARCA'
      Size = 6
    end
    object qrsugestaoDATA_ULTIMACOMPRA: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qrsugestaoNOTAFISCAL: TWideStringField
      FieldName = 'NOTAFISCAL'
      Size = 7
    end
    object qrsugestaoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object qrsugestaoPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object qrsugestaoDATA_ULTIMAVENDA: TDateTimeField
      FieldName = 'DATA_ULTIMAVENDA'
    end
    object qrsugestaoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrsugestaoESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
    end
    object qrsugestaoCODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Size = 5
    end
    object qrsugestaoLOCALICAZAO: TWideStringField
      FieldName = 'LOCALICAZAO'
      Size = 50
    end
    object qrsugestaoPESO: TFloatField
      FieldName = 'PESO'
    end
    object qrsugestaoVALIDADE: TWideStringField
      FieldName = 'VALIDADE'
    end
    object qrsugestaoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qrsugestaoUSA_BALANCA: TIntegerField
      FieldName = 'USA_BALANCA'
    end
    object qrsugestaoUSA_SERIAL: TIntegerField
      FieldName = 'USA_SERIAL'
    end
    object qrsugestaoUSA_GRADE: TIntegerField
      FieldName = 'USA_GRADE'
    end
    object qrsugestaoCODRECEITA: TWideStringField
      FieldName = 'CODRECEITA'
      Size = 6
    end
    object qrsugestaoFOTO: TWideStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object qrsugestaoDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA_ANTERIOR'
    end
    object qrsugestaoNOTAFISCAL_ANTERIOR: TWideStringField
      FieldName = 'NOTAFISCAL_ANTERIOR'
      Size = 6
    end
    object qrsugestaoCODFORNECEDOR_ANTERIOR: TWideStringField
      FieldName = 'CODFORNECEDOR_ANTERIOR'
      Size = 6
    end
    object qrsugestaoPRECOCUSTO_ANTERIOR: TFloatField
      FieldName = 'PRECOCUSTO_ANTERIOR'
    end
    object qrsugestaoPRECOVENDA_ANTERIOR: TFloatField
      FieldName = 'PRECOVENDA_ANTERIOR'
    end
    object qrsugestaoCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
    end
    object qrsugestaoAUTO_APLICACAO: TWideStringField
      FieldName = 'AUTO_APLICACAO'
      Size = 60
    end
    object qrsugestaoAUTO_COMPLEMENTO: TWideStringField
      FieldName = 'AUTO_COMPLEMENTO'
      Size = 60
    end
    object qrsugestaoDATA_REMARCACAO_CUSTO: TDateTimeField
      FieldName = 'DATA_REMARCACAO_CUSTO'
    end
    object qrsugestaoDATA_REMARCACAO_VENDA: TDateTimeField
      FieldName = 'DATA_REMARCACAO_VENDA'
    end
    object qrsugestaoPRECO_PROMOCAO: TFloatField
      FieldName = 'PRECO_PROMOCAO'
    end
    object qrsugestaoDATA_PROMOCAO: TDateTimeField
      FieldName = 'DATA_PROMOCAO'
    end
    object qrsugestaoFIM_PROMOCAO: TDateTimeField
      FieldName = 'FIM_PROMOCAO'
    end
    object qrsugestaoCST: TWideStringField
      FieldName = 'CST'
      Size = 10
    end
    object qrsugestaoCLASSIFICACAO_FISCAL: TWideStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
    end
    object qrsugestaoNBM: TWideStringField
      FieldName = 'NBM'
    end
    object qrsugestaoNCM: TWideStringField
      FieldName = 'NCM'
    end
    object qrsugestaoALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrsugestaoIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrsugestaoREDUCAO: TFloatField
      FieldName = 'REDUCAO'
    end
    object qrsugestaoQTDE_EMBALAGEM: TFloatField
      FieldName = 'QTDE_EMBALAGEM'
    end
    object qrsugestaoTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object qrsugestaoPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object qrsugestaoFARMACIA_CONTROLADO: TWideStringField
      FieldName = 'FARMACIA_CONTROLADO'
      Size = 1
    end
    object qrsugestaoFARMACIA_APRESENTACAO: TIntegerField
      FieldName = 'FARMACIA_APRESENTACAO'
    end
    object qrsugestaoFARMACIA_REGISTRO_MEDICAMENTO: TWideStringField
      FieldName = 'FARMACIA_REGISTRO_MEDICAMENTO'
    end
    object qrsugestaoFARMACIA_PMC: TFloatField
      FieldName = 'FARMACIA_PMC'
    end
    object qrsugestaoULTIMA_ALTERACAO: TDateTimeField
      FieldName = 'ULTIMA_ALTERACAO'
    end
    object qrsugestaoULTIMA_CARGA: TDateTimeField
      FieldName = 'ULTIMA_CARGA'
    end
    object qrsugestaoDATA_INVENTARIO: TDateTimeField
      FieldName = 'DATA_INVENTARIO'
    end
    object qrsugestaoCUSTO_INVENTARIO: TFloatField
      FieldName = 'CUSTO_INVENTARIO'
    end
    object qrsugestaoESTOQUE_INVENTARIO: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO'
    end
    object qrsugestaoESTOQUE_ANTERIOR: TFloatField
      FieldName = 'ESTOQUE_ANTERIOR'
    end
    object qrsugestaoPRECOVENDA_NOVO: TFloatField
      FieldName = 'PRECOVENDA_NOVO'
    end
    object qrsugestaoUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
    end
    object qrsugestaoQUANTIDADE_MINIMA_FAB: TFloatField
      FieldName = 'QUANTIDADE_MINIMA_FAB'
    end
    object qrsugestaoAPRESENTACAO: TWideStringField
      FieldName = 'APRESENTACAO'
      Size = 60
    end
    object qrsugestaoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrsugestaoPRECOVENDA1: TFloatField
      FieldName = 'PRECOVENDA1'
    end
    object qrsugestaoPRECOVENDA2: TFloatField
      FieldName = 'PRECOVENDA2'
    end
    object qrsugestaoPRECOVENDA3: TFloatField
      FieldName = 'PRECOVENDA3'
    end
    object qrsugestaoPRECOVENDA4: TFloatField
      FieldName = 'PRECOVENDA4'
    end
    object qrsugestaoPRECOVENDA5: TFloatField
      FieldName = 'PRECOVENDA5'
    end
    object qrsugestaoDESCONTO_PRECOVENDA: TFloatField
      FieldName = 'DESCONTO_PRECOVENDA'
    end
    object qrsugestaoDATA_INVENTARIO_ATUAL: TDateTimeField
      FieldName = 'DATA_INVENTARIO_ATUAL'
    end
    object qrsugestaoCUSTO_INVENTARIO_ATUAL: TFloatField
      FieldName = 'CUSTO_INVENTARIO_ATUAL'
    end
    object qrsugestaoESTOQUE_INVENTARIO_ATUAL: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO_ATUAL'
    end
    object qrsugestaoMARGEM_MINIMA: TFloatField
      FieldName = 'MARGEM_MINIMA'
    end
    object qrsugestaoPISCOFINS: TWideStringField
      FieldName = 'PISCOFINS'
      Size = 1
    end
    object qrsugestaoREFERENCIA_FORNECEDOR: TWideStringField
      FieldName = 'REFERENCIA_FORNECEDOR'
      Size = 30
    end
    object qrsugestaoCOMISSAO1: TFloatField
      FieldName = 'COMISSAO1'
    end
    object qrsugestaoMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object qrsugestaoTAMANHO: TWideStringField
      FieldName = 'TAMANHO'
      Size = 6
    end
    object qrsugestaoCOR: TWideStringField
      FieldName = 'COR'
      Size = 6
    end
    object qrsugestaoINCIDENCIA_PISCOFINS: TWideStringField
      FieldName = 'INCIDENCIA_PISCOFINS'
      Size = 30
    end
    object qrsugestaoVEIC_CHASSI: TWideStringField
      FieldName = 'VEIC_CHASSI'
      Size = 50
    end
    object qrsugestaoVEIC_SERIE: TWideStringField
      FieldName = 'VEIC_SERIE'
      Size = 50
    end
    object qrsugestaoVEIC_POTENCIA: TWideStringField
      FieldName = 'VEIC_POTENCIA'
      Size = 50
    end
    object qrsugestaoVEIC_PESO_LIQUIDO: TWideStringField
      FieldName = 'VEIC_PESO_LIQUIDO'
      Size = 15
    end
    object qrsugestaoVEIC_PESO_BRUTO: TWideStringField
      FieldName = 'VEIC_PESO_BRUTO'
      Size = 15
    end
    object qrsugestaoVEIC_TIPO_COMBUSTIVEL: TWideStringField
      FieldName = 'VEIC_TIPO_COMBUSTIVEL'
    end
    object qrsugestaoVEIC_RENAVAM: TWideStringField
      FieldName = 'VEIC_RENAVAM'
      Size = 50
    end
    object qrsugestaoVEIC_ANO_FABRICACAO: TIntegerField
      FieldName = 'VEIC_ANO_FABRICACAO'
    end
    object qrsugestaoVEIC_ANO_MODELO: TIntegerField
      FieldName = 'VEIC_ANO_MODELO'
    end
    object qrsugestaoVEIC_TIPO: TWideStringField
      FieldName = 'VEIC_TIPO'
      Size = 50
    end
    object qrsugestaoVEIC_TIPO_PINTURA: TWideStringField
      FieldName = 'VEIC_TIPO_PINTURA'
      Size = 15
    end
    object qrsugestaoVEIC_COD_COR: TWideStringField
      FieldName = 'VEIC_COD_COR'
      Size = 15
    end
    object qrsugestaoVEIC_COR: TWideStringField
      FieldName = 'VEIC_COR'
      Size = 30
    end
    object qrsugestaoVEIC_VIN: TWideStringField
      FieldName = 'VEIC_VIN'
      Size = 10
    end
    object qrsugestaoVEIC_NUMERO_MOTOR: TWideStringField
      FieldName = 'VEIC_NUMERO_MOTOR'
      Size = 50
    end
    object qrsugestaoVEIC_CMKG: TWideStringField
      FieldName = 'VEIC_CMKG'
      Size = 15
    end
    object qrsugestaoVEIC_CM3: TWideStringField
      FieldName = 'VEIC_CM3'
      Size = 15
    end
    object qrsugestaoVEIC_DISTANCIA_EIXO: TWideStringField
      FieldName = 'VEIC_DISTANCIA_EIXO'
      Size = 15
    end
    object qrsugestaoVEIC_COD_MARCA: TWideStringField
      FieldName = 'VEIC_COD_MARCA'
      Size = 15
    end
    object qrsugestaoVEIC_ESPECIE: TWideStringField
      FieldName = 'VEIC_ESPECIE'
      Size = 50
    end
    object qrsugestaoVEIC_CONDICAO: TWideStringField
      FieldName = 'VEIC_CONDICAO'
      Size = 50
    end
    object qrsugestaoLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
    end
    object qrsugestaoLOTE_VALIDADE: TDateTimeField
      FieldName = 'LOTE_VALIDADE'
    end
    object qrsugestaoMARGEM_AGREGADA: TFloatField
      FieldName = 'MARGEM_AGREGADA'
    end
    object qrsugestaoCODBARRA_NOVARTIS: TWideStringField
      FieldName = 'CODBARRA_NOVARTIS'
      Size = 13
    end
    object qrsugestaoFARMACIA_DCB: TWideStringField
      FieldName = 'FARMACIA_DCB'
    end
    object qrsugestaoFARMACIA_ABCFARMA: TWideStringField
      FieldName = 'FARMACIA_ABCFARMA'
      Size = 10
    end
    object qrsugestaoFARMACIA_APRESENTACAO_CAIXA: TWideStringField
      FieldName = 'FARMACIA_APRESENTACAO_CAIXA'
      Size = 10
    end
    object qrsugestaoFARMACIA_PRINCIPIOATIVO: TWideStringField
      FieldName = 'FARMACIA_PRINCIPIOATIVO'
      Size = 30
    end
    object qrsugestaoULTIMA_COMPRA: TDateTimeField
      FieldName = 'ULTIMA_COMPRA'
    end
    object qrsugestaoFARMACIA_DATAVIGENCIA: TDateTimeField
      FieldName = 'FARMACIA_DATAVIGENCIA'
    end
    object qrsugestaoFARMACIA_TIPO: TWideStringField
      FieldName = 'FARMACIA_TIPO'
      Size = 1
    end
    object qrsugestaoUSA_COMBUSTIVEL: TWideStringField
      FieldName = 'USA_COMBUSTIVEL'
      Size = 1
    end
    object qrsugestaoREFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object qrsugestaoPERDA: TFloatField
      FieldName = 'PERDA'
    end
    object qrsugestaoCOMPOSICAO1: TWideStringField
      FieldName = 'COMPOSICAO1'
      Size = 30
    end
    object qrsugestaoCOMPOSICAO2: TWideStringField
      FieldName = 'COMPOSICAO2'
      Size = 30
    end
    object qrsugestaoIAT: TWideStringField
      FieldName = 'IAT'
      Size = 1
    end
    object qrsugestaoIPPT: TWideStringField
      FieldName = 'IPPT'
      Size = 1
    end
    object qrsugestaoSITUACAO_TRIBUTARIA: TWideStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Size = 1
    end
    object qrsugestaoFLAG_SIS: TWideStringField
      FieldName = 'FLAG_SIS'
      Size = 1
    end
    object qrsugestaoFLAG_ACEITO: TWideStringField
      FieldName = 'FLAG_ACEITO'
      Size = 3
    end
    object qrsugestaoFLAG_EST: TWideStringField
      FieldName = 'FLAG_EST'
      Size = 1
    end
    object qrsugestaoCSOSN: TWideStringField
      FieldName = 'CSOSN'
      Size = 60
    end
    object qrsugestaoCODORIGINAL: TWideStringField
      FieldName = 'CODORIGINAL'
    end
    object qrsugestaoCUSTO_ATACADO: TFloatField
      FieldName = 'CUSTO_ATACADO'
    end
    object qrsugestaoUNIDADE_ATACADO: TWideStringField
      FieldName = 'UNIDADE_ATACADO'
      Size = 2
    end
    object qrsugestaoQTDE_EMBALAGEMATACADO: TFloatField
      FieldName = 'QTDE_EMBALAGEMATACADO'
    end
    object qrsugestaoPMARGEM1: TFloatField
      FieldName = 'PMARGEM1'
    end
    object qrsugestaoPMARGEM2: TFloatField
      FieldName = 'PMARGEM2'
    end
    object qrsugestaoPMARGEM3: TFloatField
      FieldName = 'PMARGEM3'
    end
    object qrsugestaoPMARGEM4: TFloatField
      FieldName = 'PMARGEM4'
    end
    object qrsugestaoPMARGEM5: TFloatField
      FieldName = 'PMARGEM5'
    end
    object qrsugestaoPMARGEMATACADO1: TFloatField
      FieldName = 'PMARGEMATACADO1'
    end
    object qrsugestaoPMARGEMATACADO2: TFloatField
      FieldName = 'PMARGEMATACADO2'
    end
    object qrsugestaoPMARGEMATACADO3: TFloatField
      FieldName = 'PMARGEMATACADO3'
    end
    object qrsugestaoPMARGEMATACADO4: TFloatField
      FieldName = 'PMARGEMATACADO4'
    end
    object qrsugestaoPMARGEMATACADO5: TFloatField
      FieldName = 'PMARGEMATACADO5'
    end
    object qrsugestaoPMARGEMATACADO6: TFloatField
      FieldName = 'PMARGEMATACADO6'
    end
    object qrsugestaoPRECOATACADO1: TFloatField
      FieldName = 'PRECOATACADO1'
    end
    object qrsugestaoPRECOATACADO2: TFloatField
      FieldName = 'PRECOATACADO2'
    end
    object qrsugestaoPRECOATACADO3: TFloatField
      FieldName = 'PRECOATACADO3'
    end
    object qrsugestaoPRECOATACADO4: TFloatField
      FieldName = 'PRECOATACADO4'
    end
    object qrsugestaoPRECOATACADO5: TFloatField
      FieldName = 'PRECOATACADO5'
    end
    object qrsugestaoIND_CFOP: TWideStringField
      FieldName = 'IND_CFOP'
      Size = 6
    end
    object qrsugestaoCFOP_DESC: TWideStringField
      FieldName = 'CFOP_DESC'
      Size = 30
    end
    object qrsugestaoUSA_LOTE: TIntegerField
      FieldName = 'USA_LOTE'
    end
    object qrsugestaoIND_CFOP_VENDA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_VENDA_DENTRO'
      Size = 6
    end
    object qrsugestaoIND_CFOP_VENDA_FORA: TWideStringField
      FieldName = 'IND_CFOP_VENDA_FORA'
      Size = 6
    end
    object qrsugestaoIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_DENTRO'
      Size = 6
    end
    object qrsugestaoIND_CFOP_DEVOLUCAO_FORA: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_FORA'
      Size = 6
    end
    object qrsugestaoIND_CFOP_GARANTIA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_DENTRO'
      Size = 6
    end
    object qrsugestaoIND_CFOP_GARANTIA_FORA: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_FORA'
      Size = 6
    end
    object qrsugestaoCODCONTA: TWideStringField
      FieldName = 'CODCONTA'
      Size = 6
    end
    object qrsugestaoCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 10
    end
    object qrsugestaoCODFILIAL: TWideStringField
      FieldName = 'CODFILIAL'
      Size = 10
    end
    object qrsugestaoESTOQUE_INICIAL: TFloatField
      FieldName = 'ESTOQUE_INICIAL'
    end
    object qrsugestaoENTRADAS: TFloatField
      FieldName = 'ENTRADAS'
    end
    object qrsugestaoSAIDAS: TFloatField
      FieldName = 'SAIDAS'
    end
    object qrsugestaoESTOQUE_ATUAL: TFloatField
      FieldName = 'ESTOQUE_ATUAL'
    end
    object qrsugestaoULTIMA_ENTRADA: TDateTimeField
      FieldName = 'ULTIMA_ENTRADA'
    end
    object qrsugestaoULTIMA_SAIDA: TDateTimeField
      FieldName = 'ULTIMA_SAIDA'
    end
    object qrsugestaoNOTA_FISCAL: TWideStringField
      FieldName = 'NOTA_FISCAL'
      Size = 10
    end
    object qrsugestaoAPLICACAO: TWideMemoField
      FieldName = 'APLICACAO'
      BlobType = ftWideMemo
    end
    object qrsugestaoUSA_TB_PC: TWideStringField
      FieldName = 'USA_TB_PC'
      Size = 4
    end
  end
  object dssugestao: TDataSource
    DataSet = qrsugestao
    Left = 400
    Top = 149
  end
  object QUERY: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 432
    Top = 112
  end
  object qrloc: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 240
    Top = 100
  end
end
