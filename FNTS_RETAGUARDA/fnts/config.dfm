object frmconfig: Tfrmconfig
  Left = 440
  Top = 218
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'CONFIGURA'#199#213'ES | Painel'
  ClientHeight = 469
  ClientWidth = 695
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pop1
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 423
    Width = 695
    Height = 3
    Align = alTop
  end
  object PageView3: TPageView
    Left = 0
    Top = 0
    Width = 695
    Height = 423
    ActivePage = PageSheet7
    ActivePageIndex = 0
    AdaptiveColors = True
    Align = alTop
    BackgroundColor = clBtnFace
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
    object PageSheet7: TPageSheet
      Left = 0
      Top = 21
      Width = 695
      Height = 402
      Caption = 'Geral'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 0
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object GroupBox10: TGroupBox
        Left = 208
        Top = 8
        Width = 193
        Height = 89
        Caption = 'Quantidade de Casas Decimais'
        TabOrder = 1
        object Label31: TLabel
          Left = 16
          Top = 29
          Width = 94
          Height = 13
          Caption = 'para a Quantidade:'
        end
        object Label32: TLabel
          Left = 16
          Top = 56
          Width = 62
          Height = 13
          Caption = 'para o Valor:'
        end
        object wwDBSpinEdit1: TwwDBSpinEdit
          Left = 136
          Top = 24
          Width = 41
          Height = 21
          Increment = 1.000000000000000000
          MaxValue = 7.000000000000000000
          MinValue = 1.000000000000000000
          Value = 2.000000000000000000
          DataField = 'CASAS_DECIMAIS_QTDE'
          DataSource = dsconfig
          TabOrder = 0
          UnboundDataType = wwDefault
        end
        object wwDBSpinEdit2: TwwDBSpinEdit
          Left = 136
          Top = 48
          Width = 41
          Height = 21
          Increment = 1.000000000000000000
          MaxValue = 7.000000000000000000
          MinValue = 1.000000000000000000
          Value = 2.000000000000000000
          DataField = 'CASAS_DECIMAIS_VALOR'
          DataSource = dsconfig
          TabOrder = 1
          UnboundDataType = wwDefault
        end
      end
      object GroupBox12: TGroupBox
        Left = 8
        Top = 8
        Width = 193
        Height = 102
        Caption = 'Atividade Diferenciada'
        TabOrder = 0
        object Rramo_padrao: TRadioButton
          Left = 8
          Top = 16
          Width = 113
          Height = 17
          Caption = 'Padr'#227'o'
          TabOrder = 0
        end
        object rramo_supermercado: TRadioButton
          Left = 8
          Top = 32
          Width = 113
          Height = 17
          Caption = 'Supermercado'
          TabOrder = 1
        end
        object rramo_auto: TRadioButton
          Left = 8
          Top = 48
          Width = 113
          Height = 17
          Caption = 'Auto Pe'#231'as'
          TabOrder = 2
        end
        object rramo_farmacia: TRadioButton
          Left = 8
          Top = 64
          Width = 113
          Height = 17
          Caption = 'Farm'#225'cia'
          TabOrder = 3
        end
        object rramo_metal: TRadioButton
          Left = 8
          Top = 81
          Width = 113
          Height = 17
          Caption = 'Metal'#250'rciga'
          TabOrder = 4
        end
      end
      object GroupBox13: TGroupBox
        Left = 8
        Top = 112
        Width = 313
        Height = 107
        Caption = 'Cadastro de Produtos'
        TabOrder = 2
        object DBComboBox12: TDBComboBox
          Left = 8
          Top = 20
          Width = 169
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          DataField = 'CADASTRO_PRODUTO'
          DataSource = dsconfig
          Items.Strings = (
            'NORMAL'
            'LIGHT'
            'PECAS'
            'FARMA')
          TabOrder = 0
        end
        object DBCheckBox24: TDBCheckBox
          Left = 8
          Top = 48
          Width = 286
          Height = 18
          Caption = 'Permitir Nome Repetido'
          DataField = 'VERIFICA_NOME_PRODUTO'
          DataSource = dsconfig
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox25: TDBCheckBox
          Left = 8
          Top = 64
          Width = 286
          Height = 18
          Caption = 'Permitir C'#243'digo de Barras repedito'
          DataField = 'VERIFICA_COD_BARRA'
          DataSource = dsconfig
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox9: TDBCheckBox
          Left = 8
          Top = 80
          Width = 122
          Height = 18
          Caption = 'Usa Rentabilidade'
          DataField = 'USA_RENTABILIDADE'
          DataSource = dsconfig
          TabOrder = 3
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
      object AdvGlowButton1: TAdvGlowButton
        Left = 448
        Top = 50
        Width = 161
        Height = 40
        Caption = 'Boletos de Cobran'#231'a'
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
          702E6969643A4245313033443332453238313131453242384538413344423533
          3546434634322220786D704D4D3A446F63756D656E7449443D22786D702E6469
          643A424531303344333345323831313145324238453841334442353335464346
          3432223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
          7374616E636549443D22786D702E6969643A4245313033443330453238313131
          453242384538413344423533354643463432222073745265663A646F63756D65
          6E7449443D22786D702E6469643A424531303344333145323831313145324238
          4538413344423533354643463432222F3E203C2F7264663A4465736372697074
          696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
          7061636B657420656E643D2272223F3ECF6BF2CD000005364944415478DAC499
          796C15451CC7B76B0191DA5004045B5150286041240183B6B588E01F8443AADC
          08424984009A6008064CC4188D314A6AC493CB023E0E6B380C5AE52A67395410
          291EB404848052B520AF9460C0EF98EF909F93997D67E32FF9E4CDEEECECCCCE
          FCAE9997E2ADADF212900CD00DDC01EE06B7F3FE6FE047701A548253F176901A
          67BBC74021280099119EAD05E5603D2805E763E9282586196C0E668231A07D9C
          1F76012C03C5E0E7640E700298CF414A5133B3131C018741185C05695CF27B40
          2FF028686AB47D11CC4B7480CDC0C760B0B8F703780B6C8841B794AE3E02A683
          3C71FF2057A4329E01B60515A01DAFAF80D9E04D2F3119C177DC26EEE5831DB6
          877DC74B3A72C9F4E0B6F15EA28353B20A74028BC4BDED6050B4036C0476815B
          781D027DC1092F79A274B508CC11F79495E7443340A5F4AD587E178C36965DE9
          CCFD8E8E1F32F455CA0D6000C816F75E014F8BEBDD3430E7009F05BD59DE07A6
          8ABA5C701C2CA76EBE6CB4FD90AAB00E1C151FA955A61A94D1C89E1175EF83F7
          58BE1994B88CA4253827FC959AAD3AE1D0CFF019295DD8E1202E9194356038CB
          CA0D7575B4D5B2574C4E015DD87F6670BE281789C129B9D13238251DF89B67A9
          EB2ECA5D2DF5DD8CEB51A2BCD45CE236602CCB3FF1EBA55C045F583AA9E06F89
          A5EE13512E73E8BA946AF19E3BA952D707384C3CF8BC43C90BB98C61BA20356B
          7FB0EE7BF014F81D5C6647730DDF57CEF2391AD2194B1FD2AAA7481DACA065AA
          C6ADA388C9B58EBAA68C3E358EFA4C7E447DC0FBCB68EDEA990C9FD6D68B95A5
          51F8B0DA80BA4B0183F3987ED54778FFE742EFFBF95C6BBDD487A218A0EF35AC
          EC9186E4D340B41C0B68A8BE68057567B3E1703D2ECB7EA651332CED9553FE0E
          AC36E2B0295FD3CD29C94AA513D5C940D00C6E64C853F2305FD486169E63586A
          31D3AEB779FD117852B8973EFCC03A4B3F7F83B3205DD9832FD2F44B01D96E86
          189C4CC57AB23CD9D2661C7F1B8BC169C9D26EC42117755BFF5F4B9691C52E75
          0EE53E2D2285ABEE2A5D932967BD2815FE94E1226C72998EFC9AB8F73AA81271
          B85CD4D53077D44B66CEF042EAA34B6ED26A972A0CA311F5A3DCD1A894F9611E
          63E8B7A2EE1AE36721D52164CC5A88FA3D9089C4671126EE56FDA1A98647CF0E
          18A0C7D90E05D407F9D1CAA0D45E484F7EA492933E93532D39DEFF2F0F8AF251
          9FCAAADDCBD0088D95AF7BC188DD5A9A8049CC21DB5AEAEF0313E9A282A4AF70
          7B5B745458C65FE572FA3B1ACEA5AF7B894BB95CD4A5D19295F22FA05E4B473E
          1E7CC37DC866FA499BB4E0A1800E791774B29029ACF9B091CBE904E14FCB0BB3
          999ECDB164D82ADD7A8211286C0991BAAD94777416C389DAE40B9FB55E78FA01
          46C3C611DC4196A5AEB5F00E7E80A5CAE7A788B39D4D66E09F2ECA4B8CC6AAC1
          4AE3DE41CEB627429A9405FCFD0B7C6AD45531C597B2C2C8E8B9D31A797DFF72
          9E7B8F7C6E5EFA187A56CA0F4AE1C668389DB04E42BF0477815FC1734C0AB4AC
          A6EB48E71EF87123ACCE63C2AB64AB4C5C6D270B6A66EE65F90D76D690325ACC
          DE15663A3541B95D3E439BC7D3ACE2061C5C91B1B40566C2EB3B8EC872C52067
          50FFD2933CB85719C3B54CE2C63DAAECF800E84105D79B9E6322854A4472B9C9
          9A6D6CC816C79ABEAB84A03395DFE3DEA584DBC5C931CEA8EA67080D6D07CF0D
          75069F6BB1F2980F306781D72C49E53A6635BBE84BC3C26FAA0F7A802B31D892
          E67F00A6D130927204DC91672A1302F2C67A11975DC96F887E7377B2CFA865BC
          1CC1F3987E0151C63C45F88A7EB53A96CE5212FC1BA2330F81DAF13C318D3317
          E6FEF917468D03F176F08F000300738F37A3223655CA0000000049454E44AE42
          6082}
        Transparent = True
        TabOrder = 5
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
        Layout = blGlyphLeftAdjusted
      end
      object AdvGlowButton2: TAdvGlowButton
        Left = 448
        Top = 7
        Width = 173
        Height = 40
        Caption = 'Transfer'#234'ncia de Dados'
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
          702E6969643A3433384531453735453238323131453239453939383435423344
          3532464433362220786D704D4D3A446F63756D656E7449443D22786D702E6469
          643A343338453145373645323832313145323945393938343542334435324644
          3336223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
          7374616E636549443D22786D702E6969643A3433384531453733453238323131
          453239453939383435423344353246443336222073745265663A646F63756D65
          6E7449443D22786D702E6469643A343338453145373445323832313145323945
          3939383435423344353246443336222F3E203C2F7264663A4465736372697074
          696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
          7061636B657420656E643D2272223F3EB3CF7EBF000004DB4944415478DABC99
          7B6C4E671CC74FEBD45E14DBAC96BACCA59B8545C622D12C337625143316A218
          D98265461762D125241244828D2DCDFA07B1D18D4DCC652386B86C82AD8B5135
          9DFB6553D5990D75ABF2FDCDF7243F4F9E73E9FBBEFC924FDE739EF39CF3FCCE
          737EB7E779539C55479C04E461D011B4024F824CB65F04A5E04FF03B381AEF00
          6E9CF70D04AF831EA05948DFCB601B5807BE06E76A33504A2D66F0213011E482
          D601FD6A40AACFB56B6029F804EC4DA682A3C047A0B16ABB0936831D601F2803
          FF51C186FCEC9DC133A037DBB4CCE30B27A4603AF812F4556DA2CC7C7EB2F288
          B3DF90E6301EBCACDA0F83E160573C0A8AC1EF062D795E053E009F3A89493FBE
          A036139980EF6C9DFD6CE50950A294DBC0B644951359438F2F506D6BC188A80A
          A6D1AE9AF07C31E805FE729227D7C1BB860D7E0E9E8DA2E08F2083C71FD34192
          21B69036CF78FE4F6A6CAB8262C45D792CB3F87E12676D2828B4B42F6684B8E3
          138EB3CCCF49242B54B2D37906E06B11076FCE70920D627CCE4E500C2EB14F2E
          63A038C824506DF972CF29475A6B2AB8484D777F1A73987400F91CDC26FF822F
          401E680FF6B33DCB92FE5A80533CAE008FEA4FDC54297720A27213996F7303FA
          48607F0FFC01A684D8FE696502A2CFABBA637FD5313F827232D81C4BBBA4AF15
          0CE65AB28C17B9EEF3DCA9EA78AC5670B89ADAD521CABD08661A6DD3411BD009
          BC019EA62D8FA33D9B72D3E7D9159EED41722493B9FC0CD96C5C1921547C65B4
          0D00ABD4F918563AC79997ABAD19CC5F7E60669178FC924BCF49E3C592086556
          53753EC9504E643B98E1D9501CB2433BA1CB10E1C989909BDF31CEE75AFA4881
          FA0828623EFF075C2555FCBD1030C61EDE23E55D3357E55BAFBA089219CA392E
          84F4CD4D20A89753C10C5795E90E350F928DCEFD912AFEC6520D838DDDC341EB
          D462A95147773CA32E3C064E06DCF838EDCBE543D288BCE8F701F7497A1BC2B4
          17E342EB7C48A1FCFF4CBA5C7979D2961545D040BD7DAE1D03DD8CE7E922C4CB
          10274394ABAF1CB732D5786056C8D4D758CECB39335221CF5621CB9365C6F9E4
          903124ECD5E3F1A954CE9817D97B86DCFC80C598F3B9E690670D0337784D0659
          0E06ABFE656C0B926C755CEA72BA8B590776E54C1CF7B9F986C5560A5809AF61
          AA92B2AD3B18E95524946A56E6613288BF122FB778DE54A40AD5690155747D55
          4635569EFF36F11389992F04BCB8FEBC1D792C35C115AF58F846751A6996DD16
          1B2DE4808722CCC812D00EFC16A1EF67EAB8405733E586312FF27980D72E0BAA
          AD1C78080B883D3497630CE8B358A48E88B8DD21F6FB94E71CCCE97755D499C6
          CAED2D1F45BFA5530DB25CAB1B50EB0549265FCC73C257C026B3B29580FDA13A
          5FC8AD0BC7525E8D0F584EC6233F2BE5D67BCAD94A6F29447F51E7BBE891A624
          6B8DDC80E3B5503B6143C3D6C5CFAB95585DDADAE07B909BB3E8385D545B77B3
          4AB229789571ED92910D6491FD6092941B0D0E32B7EBF2ECD7A87B33255C57FC
          ADDA64112F1E352181AA27879FB4D0A868FA7017ADD6DB6F19F4E41CA3FD2C77
          A336321C9CF1B9BF111DAD17D3A8E974A58CBBC5896E60E6B1BCB7CDF82DC6AD
          32A5683A63604B553A99B2805F23293BAC5EAD289FF94D96E3F1480DD3EA82A0
          598B57415D20C8DAF735AE91D323DCB3857B8C45DC41882C2909FE0DD186C9BD
          392B97980AD895AC350F59761A22CB6D010600366217C325081BDD0000000049
          454E44AE426082}
        Transparent = True
        TabOrder = 6
        OnClick = AdvGlowButton2Click
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
        Layout = blGlyphLeftAdjusted
      end
      object retiqueta07: TRzDBRadioGroup
        Left = 328
        Top = 104
        Width = 185
        Height = 88
        DataField = 'ETIQUETA_07'
        DataSource = dsconfig
        Items.Strings = (
          'Nenhum'
          'C'#243'digo'
          'Localiza'#231#227'o')
        Values.Strings = (
          '0'
          '1'
          '2')
        Caption = 'Etiqueta de Confec'#231#227'o | 07'
        TabOrder = 7
      end
      object RzDBRadioGroup1: TRzDBRadioGroup
        Left = 328
        Top = 195
        Width = 185
        Height = 61
        DataField = 'ETIQUETA_07_1'
        DataSource = dsconfig
        Items.Strings = (
          'C'#243'digo do Produto'
          'C'#243'digo de Barras')
        Values.Strings = (
          '0'
          '1'
          '2')
        Caption = 'Etiqueta de Confec'#231#227'o | 07'
        TabOrder = 8
      end
      object RzDBRadioGroup2: TRzDBRadioGroup
        Left = 328
        Top = 260
        Width = 185
        Height = 61
        DataField = 'ETIQUETA_07_2'
        DataSource = dsconfig
        Items.Strings = (
          '5,0 cm x 7,5 cm'
          '4,0 cm x 5,5 cm')
        Values.Strings = (
          '0'
          '1'
          '2')
        Caption = 'Etiqueta de Confec'#231#227'o | 07'
        TabOrder = 9
      end
      object RzGroupBox1: TRzGroupBox
        Left = 8
        Top = 276
        Width = 196
        Height = 45
        Caption = 'Invent'#225'rio'
        TabOrder = 4
        object DBCheckBox18: TDBCheckBox
          Left = 8
          Top = 20
          Width = 155
          Height = 17
          Caption = 'Gerar Automaticamente'
          DataField = 'INVENTARIO_AUTOMATICO'
          DataSource = dsconfig
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
      object RzGroupBox2: TRzGroupBox
        Left = 8
        Top = 218
        Width = 196
        Height = 50
        Caption = 'Clientes'
        TabOrder = 3
        object DBCheckBox12: TDBCheckBox
          Left = 8
          Top = 24
          Width = 185
          Height = 17
          Caption = 'Solicitar CPF no in'#237'cio do Cadastro'
          DataField = 'CLIENTE_PEDE_CPF'
          DataSource = dsconfig
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
    end
    object PageSheet10: TPageSheet
      Left = 0
      Top = 21
      Width = 695
      Height = 402
      Caption = 'Faturamento'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 1
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object GroupBox1: TGroupBox
        Left = 12
        Top = 8
        Width = 385
        Height = 190
        Caption = 'Impress'#227'o'
        TabOrder = 0
        object Label2: TLabel
          Left = 8
          Top = 17
          Width = 34
          Height = 13
          Caption = 'Venda:'
        end
        object Label3: TLabel
          Left = 304
          Top = 17
          Width = 23
          Height = 13
          Caption = 'Vias:'
        end
        object Label4: TLabel
          Left = 8
          Top = 41
          Width = 22
          Height = 13
          Caption = 'O.S.'
        end
        object Label5: TLabel
          Left = 304
          Top = 41
          Width = 23
          Height = 13
          Caption = 'Vias:'
        end
        object Label40: TLabel
          Left = 8
          Top = 65
          Width = 57
          Height = 13
          Caption = 'Or'#231'amento:'
        end
        object Label41: TLabel
          Left = 304
          Top = 65
          Width = 23
          Height = 13
          Caption = 'Vias:'
        end
        object DBEdit1: TDBEdit
          Left = 344
          Top = 14
          Width = 33
          Height = 21
          DataField = 'VENDA_QTDE_VIAS_NOTA'
          DataSource = dsconfig
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 344
          Top = 38
          Width = 33
          Height = 21
          DataField = 'OS_QTDE_VIAS_NOTA'
          DataSource = dsconfig
          TabOrder = 1
        end
        object GroupBox4: TGroupBox
          Left = 8
          Top = 117
          Width = 371
          Height = 53
          Caption = 'Impressora Matricial'
          TabOrder = 2
          object Label22: TLabel
            Left = 128
            Top = 8
            Width = 41
            Height = 13
            Caption = 'Caminho'
          end
          object Label38: TLabel
            Left = 288
            Top = 8
            Width = 65
            Height = 13
            Caption = 'Avan'#231'o Papel'
          end
          object RadioButton1: TRadioButton
            Left = 8
            Top = 16
            Width = 113
            Height = 17
            Caption = 'Local'
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object RadioButton2: TRadioButton
            Left = 8
            Top = 32
            Width = 113
            Height = 17
            Caption = 'Em Rede - Local:'
            TabOrder = 1
          end
          object DBEdit17: TDBEdit
            Left = 129
            Top = 24
            Width = 152
            Height = 21
            CharCase = ecUpperCase
            DataField = 'VENDA_PORTA_IMPRESSORA'
            DataSource = dsconfig
            TabOrder = 2
          end
          object DBEdit19: TDBEdit
            Left = 288
            Top = 24
            Width = 73
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Bobina_subirpapel'
            DataSource = dsconfig
            TabOrder = 3
          end
        end
        object combo_os: TComboBox
          Left = 57
          Top = 37
          Width = 241
          Height = 20
          Style = csDropDownList
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Items.Strings = (
            '01 - CUPOM FISCAL'
            '02 - NOTA FISCAL'
            '03 - FORMUL'#193'RIO CONT'#205'NUO - RAZ'#195'O'
            '04 - CONT'#205'NUO (AUTO-PE'#199'AS)'
            '05 - ------------------------------------------'
            '06 - PR'#201'-IMPRESSO (PERSONALIZADO)'
            '07 - A4'
            '08 - RAZ'#195'O (LASER)'
            '09 - FORMUL'#193'RIO CONT'#205'NUO - CARTA'
            '10 - -----------------------------------------'
            '11 - RAZ'#195'O (AUTO-PE'#199'AS)'
            '12 - FORMUL'#193'RIO CONT'#205'NUO - CARTA (PERSONALIZADO)'
            '13 - CUPOM FISCAL + NOTA FISCAL')
        end
        object combo_venda: TComboBox
          Left = 57
          Top = 13
          Width = 241
          Height = 20
          Style = csDropDownList
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 4
          Text = '01 - CUPOM FISCAL'
          Items.Strings = (
            '01 - CUPOM FISCAL'
            '02 - NOTA FISCAL'
            '03 - BOBINA'
            '04 - FORMUL'#193'RIO CONT'#205'NUO - RAZ'#195'O'
            '05 - FORMUL'#193'RIO CONT'#205'NUO - CARTA'
            '06 - PR'#201'-IMPRESSO (PERSONALIZADO)'
            '07 - CONTRATO/GUIA DE ENTREGA/CARN'#202
            '08 - PERSONALIZADO'
            '09 - PAPEL A4 - LASER / TINTA'
            '10 - PAPEL RAZ'#195'O - LASER / TINTA'
            '11 - FORMUL'#193'RIO CONT'#205'NUO - RAZ'#195'O 2 '
            '12 - CONTRATO/GUIA DE ENTREGA/CARN'#202'+CAPA'
            '13 - BOBINA SEM FORMATA'#199#195'O'
            '14 - PEDIDO + CARN'#202
            '15 - CONTRATO/CARN'#202
            '16 - PEDIDO + CARN'#202' COM C'#211'DIGO DE BARRAS')
        end
        object DBEdit42: TDBEdit
          Left = 344
          Top = 62
          Width = 33
          Height = 21
          DataField = 'ORCAMENTO_QTDE_VIAS_NOTA'
          DataSource = dsconfig
          TabOrder = 5
        end
        object combo_orcamento: TComboBox
          Left = 80
          Top = 61
          Width = 218
          Height = 20
          Style = csDropDownList
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Items.Strings = (
            '01 - PAPEL A4'
            '03 - FORMUL'#193'RIO CONT'#205'NUO - RAZ'#195'O'
            '04 - FORMUL'#193'RIO CONT'#205'NUO - CARTA'
            '05 - BOBINA')
        end
      end
      object GroupBox2: TGroupBox
        Left = 404
        Top = 8
        Width = 253
        Height = 274
        Caption = 'Op'#231#245'es'
        TabOrder = 1
        object DBCheckBox1: TDBCheckBox
          Left = 8
          Top = 17
          Width = 137
          Height = 17
          Caption = 'Vender Sem Estoque'
          DataField = 'ESTOQUE_NEGATIVO'
          DataSource = dsconfig
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox4: TDBCheckBox
          Left = 8
          Top = 32
          Width = 137
          Height = 17
          Caption = 'Cadastrar Cheque'
          DataField = 'VENDA_CADASTRO_CHEQUE'
          DataSource = dsconfig
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox5: TDBCheckBox
          Left = 8
          Top = 47
          Width = 137
          Height = 17
          Caption = 'Cadastrar Cart'#227'o'
          DataField = 'VENDA_CADASTRO_CARTAO'
          DataSource = dsconfig
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox7: TDBCheckBox
          Left = 8
          Top = 62
          Width = 137
          Height = 17
          Caption = 'Fechar venda no Caixa'
          DataField = 'VENDA_FECHAMENTO_CAIXA'
          DataSource = dsconfig
          TabOrder = 3
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox8: TDBCheckBox
          Left = 8
          Top = 77
          Width = 146
          Height = 17
          Caption = 'Imprime Duplicatas'
          DataField = 'IMPRIME_DUPLICATA'
          DataSource = dsconfig
          TabOrder = 4
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox11: TDBCheckBox
          Left = 8
          Top = 92
          Width = 209
          Height = 17
          Caption = 'Verificar Limite e Cadastro na Venda'
          DataField = 'VENDA_LIMITE_CLIENTE'
          DataSource = dsconfig
          TabOrder = 5
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox13: TDBCheckBox
          Left = 8
          Top = 107
          Width = 201
          Height = 17
          Caption = 'N'#227'o permitir alterar o pre'#231'o unit'#225'rio'
          DataField = 'ALTERAR_UNITARIO'
          DataSource = dsconfig
          TabOrder = 6
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox17: TDBCheckBox
          Left = 8
          Top = 122
          Width = 217
          Height = 17
          Caption = 'Baixar Estoque na Nota Fiscal de Sa'#237'da'
          DataField = 'BAIXAR_ESTOQUE_NOTA_SAIDA'
          DataSource = dsconfig
          TabOrder = 7
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox26: TDBCheckBox
          Left = 8
          Top = 137
          Width = 240
          Height = 17
          Hint = 
            'Verifica na Inclus'#227'o de um item na Nota Fiscal de Sa'#237'da '#13#10'se o u' +
            'su'#225'rio vai baixar serial ou n'#227'o.'
          Caption = 'Mostra Composi'#231#227'o Produto Industria'
          DataField = 'IND_MOSTRA_COMPOSICAO'
          DataSource = dsconfig
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox14: TDBCheckBox
          Left = 8
          Top = 153
          Width = 240
          Height = 17
          Hint = 
            'Imprimi direto sem dialogo de impress'#227'o na impressora n'#227'o fiscal' +
            ' 40 Colunas.'
          Caption = 'Imprimir Venda Simples Automaticamente'
          DataField = 'IMPRIMI_ORCAMENTO_AUTO'
          DataSource = dsconfig
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox15: TDBCheckBox
          Left = 8
          Top = 169
          Width = 240
          Height = 17
          Hint = 
            'Se marcada n'#227'o deixa trocar a forma de pagamento padrao do clien' +
            'te'#13#10'em transa'#231#245'es do sistema, exemplo em vendas e or'#231'amentos.'
          Caption = 'Fixa Forma de Pagamento para Cliente'
          DataField = 'FIXA_FORMA_PGTO_CLIENTE'
          DataSource = dsconfig
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox16: TDBCheckBox
          Left = 8
          Top = 185
          Width = 241
          Height = 17
          Caption = 'Usar caixa padr'#227'o do usu'#225'rio autenticado'
          DataField = 'USA_CAIXA_PADRAO_USUARIO'
          DataSource = dsconfig
          TabOrder = 11
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
      object GroupBox3: TGroupBox
        Left = 12
        Top = 208
        Width = 185
        Height = 105
        Caption = 'Desconto M'#225'ximo Permitido'
        TabOrder = 2
        object Label1: TLabel
          Left = 8
          Top = 21
          Width = 61
          Height = 13
          Caption = 'Por Produto:'
        end
        object Label6: TLabel
          Left = 8
          Top = 45
          Width = 58
          Height = 13
          Caption = 'Por Servi'#231'o:'
        end
        object Label7: TLabel
          Left = 8
          Top = 68
          Width = 69
          Height = 13
          Caption = 'Total da Nota:'
        end
      end
      object GroupBox25: TGroupBox
        Left = 204
        Top = 208
        Width = 193
        Height = 73
        Caption = 'Tipo Duplicata'
        TabOrder = 3
        object DBComboBox1: TDBComboBox
          Left = 16
          Top = 32
          Width = 161
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          DataField = 'TIPO_DUPLICATA'
          DataSource = dsconfig
          Items.Strings = (
            ''
            'MATRICIAL'
            'LASER')
          TabOrder = 0
        end
      end
      object GroupBox27: TGroupBox
        Left = 404
        Top = 293
        Width = 253
        Height = 105
        Caption = 'Controle de Entrega'
        TabOrder = 4
        object Label50: TLabel
          Left = 7
          Top = 45
          Width = 38
          Height = 13
          Caption = 'Modelo:'
        end
        object Label54: TLabel
          Left = 6
          Top = 73
          Width = 23
          Height = 13
          Caption = 'Vias:'
        end
        object DBCheckBox10: TDBCheckBox
          Left = 6
          Top = 16
          Width = 182
          Height = 17
          Caption = 'Utiliza controle de Entrega'
          DataField = 'CONTROLA_ENTREGA'
          DataSource = dsconfig
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object combo_entrega: TComboBox
          Left = 48
          Top = 44
          Width = 177
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          TabOrder = 1
          Items.Strings = (
            '1 - BOBINA'
            '2 - RAZ'#195'O MATRICIAL'
            '4 - CARTA MATRICIAL'
            '3 - RAZ'#195'O LASER/TINTA')
        end
        object DBEdit49: TDBEdit
          Left = 47
          Top = 70
          Width = 33
          Height = 21
          DataField = 'ENTREGA_VIAS'
          DataSource = dsconfig
          TabOrder = 2
        end
      end
    end
    object PageSheet11: TPageSheet
      Left = 0
      Top = 21
      Width = 695
      Height = 402
      Caption = 'Financeiro'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 2
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object GroupBox9: TGroupBox
        Left = 8
        Top = 8
        Width = 225
        Height = 51
        Caption = 'Alertas ao Entrar no Sistema'
        TabOrder = 0
        object DBCheckBox2: TDBCheckBox
          Left = 8
          Top = 13
          Width = 193
          Height = 17
          Caption = 'Contas a Pagar Vencidas'
          DataField = 'AVISO_CONTAS_PAGAR'
          DataSource = dsconfig
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox3: TDBCheckBox
          Left = 8
          Top = 29
          Width = 193
          Height = 17
          Caption = 'Cheques de Clientes Vencidos'
          DataField = 'AVISO_CHEQUE'
          DataSource = dsconfig
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
      object GroupBox11: TGroupBox
        Left = 8
        Top = 69
        Width = 225
        Height = 165
        Caption = 'Contas a Receber'
        TabOrder = 1
        object Label33: TLabel
          Left = 7
          Top = 21
          Width = 72
          Height = 13
          Caption = 'Taxa de Juros:'
        end
        object Label34: TLabel
          Left = 7
          Top = 47
          Width = 65
          Height = 13
          Caption = 'Multa Atrazo:'
        end
        object Label35: TLabel
          Left = 7
          Top = 70
          Width = 46
          Height = 13
          Caption = 'Car'#234'ncia:'
        end
        object Label36: TLabel
          Left = 7
          Top = 139
          Width = 88
          Height = 13
          Caption = 'Desconto M'#225'ximo:'
        end
        object Label57: TLabel
          Left = 7
          Top = 93
          Width = 92
          Height = 13
          Caption = 'Presta'#231#227'o Vencida:'
        end
        object DBCheckBox6: TDBCheckBox
          Left = 7
          Top = 119
          Width = 209
          Height = 17
          Caption = 'Permitir Desconto'
          DataField = 'CONTASRECEBER_DESCONTO_PERMITIR'
          DataSource = dsconfig
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
      object GroupBox14: TGroupBox
        Left = 248
        Top = 8
        Width = 161
        Height = 50
        Caption = 'Boleto - Forma de Pgto.'
        TabOrder = 2
        object wwDBLookupCombo1: TwwDBLookupCombo
          Left = 8
          Top = 15
          Width = 145
          Height = 21
          CharCase = ecUpperCase
          DropDownAlignment = taLeftJustify
          DataField = 'BOLETO_FORMAPGTO'
          DataSource = dsconfig
          LookupTable = frmmodulo.qrformapgto
          LookupField = 'FORMAPGTO'
          Style = csDropDownList
          TabOrder = 0
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
        end
      end
      object GroupBox15: TGroupBox
        Left = 248
        Top = 80
        Width = 161
        Height = 57
        Caption = 'Extrato - Impress'#227'o'
        TabOrder = 3
        object combo_extrato: TComboBox
          Left = 8
          Top = 21
          Width = 145
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          TabOrder = 0
          Items.Strings = (
            '01 - BOBINA'
            '02 - PAPEL A4 - LASER / TINTA')
        end
      end
      object GroupBox24: TGroupBox
        Left = 248
        Top = 152
        Width = 161
        Height = 81
        Caption = 'M'#243'dulo PDV '
        TabOrder = 4
        object Label47: TLabel
          Left = 8
          Top = 25
          Width = 66
          Height = 13
          Caption = 'Desc. '#224' Vista:'
        end
        object Label48: TLabel
          Left = 8
          Top = 44
          Width = 35
          Height = 26
          Caption = 'Tipo de'#13#10'Venda:'
        end
        object DBEdit46: TDBEdit
          Left = 104
          Top = 20
          Width = 49
          Height = 21
          DataField = 'DESCONTO_AVISTA'
          DataSource = dsconfig
          TabOrder = 0
        end
        object wwDBComboBox1: TwwDBComboBox
          Left = 64
          Top = 48
          Width = 89
          Height = 20
          ShowButton = True
          Style = csDropDown
          MapList = False
          AllowClearKey = False
          CharCase = ecUpperCase
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ItemHeight = 0
          Items.Strings = (
            'NORMAL'
            'PRE-VENDA')
          ParentFont = False
          Sorted = False
          TabOrder = 1
          UnboundDataType = wwDefault
        end
      end
      object AdvGlowButton3: TAdvGlowButton
        Left = 472
        Top = 8
        Width = 177
        Height = 48
        Caption = 'Corrigir contas a receber'
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
          702E6969643A3535374642384139453238333131453238433430383042393746
          3836434632412220786D704D4D3A446F63756D656E7449443D22786D702E6469
          643A353537464238414145323833313145323843343038304239374638364346
          3241223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
          7374616E636549443D22786D702E6969643A3535374642384137453238333131
          453238433430383042393746383643463241222073745265663A646F63756D65
          6E7449443D22786D702E6469643A353537464238413845323833313145323843
          3430383042393746383643463241222F3E203C2F7264663A4465736372697074
          696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
          7061636B657420656E643D2272223F3E1D72244A0000054A4944415478DAB498
          0B6C9D6318C74F8F76BA2A2BB51BB5D89222B3886975A56CE2D22548884BB2AD
          8C204863248C1173CB8829B11089CDE67E8F4B662E654DB69AACE8562CEB5CA6
          AE9D9929A55D2FDBDAD5FF91DF274F3E3DE7F45CFA24BF7CE7BB9CEF7DBEE77D
          DEE7F26645567E174943C68B327192281223B9DE23B68B06B141FC92EA00D929
          FC67A23847CC1493C5A404CFFF28BE12ABC53BA22599C1B292B0E071E26A71A1
          1817BAD72BFEC472112C7988C80D3DF7BB7853AC101B33A5608E982F6E1285EE
          BA59E543D124EC256D6217F70E10A3B1768938850F0CA4432C1135A23B1D058F
          164F8A0A77ED5DF104FED53644EB1F2CA6896BC4F9EEBAF9E715A2391505CBC5
          AB6202E79F8B07C46B625F1A0BCB14BC8DC565B243CC6236FE27D138CABDEE94
          7B4E54A2703ACA99AC1467310B11FCD9DE7BDA50153C56BC250EE77CA1B82C89
          E91C8A7430DD37F2C163593C25891434E77E4A8CE17C81B82F327CB28490D58F
          9F3ECB31661C5CE47C6339ABCC87993CB1270545B2C47E84A29FDD3B2AB0A619
          E22166EF7E71ED608BC4FC6E0D31AC119FB0B876205F5A35485C4B562C0CCD11
          6F737C9E599C27A630ED7BF1F7FAB005E7BB5475B30BBAB78A2BF9FD93181167
          710D260358D0A6EE3D949BCB0CFDCD751BF7768C902F6E09140C2C7882F81485
          5F1497B8A9F94C1C2F1E64CAF767BA929128FFFB465C878FEFC528F564A73EB1
          142BDAC239D5626D60C1392867371E0FBDBC8B634B0656F2CBC4BC2A2CB74A5C
          857211C69E8B45EDD81065CA66F04003F8E9E973D9201D79459C8E316A487F97
          8ADDEE994D621DBFED7E7E949533998B7528155E819141AE2723E677D3C5E5C4
          BE9DC4D7C1A4CEA5D9A9D9E4C83C6251D330C4BAF719CC72EE23629B3823CEF3
          4D54471631CACD82C770A38D559A29B12AE803512CAAC562D14A601E1BA716B5
          38F91BBF8B4DC1024E2C88FE9121E52C23AD255D5E8FE56CD033C9548B9C6F87
          E52FA7474194E90D82684F06942BC08FFA50E4196AC799F8DD6CF16B9CFFF790
          5DFE2D7CA3A1C5104D53B92282710F15D052CAA8F3B87F812B1612A5C6FF0268
          B79B9674539905F34329D59611E72EE25E908B230902BDC5C083F8DD6D8EDACE
          49216C4FF45531C4D2532DCA198F9163C3692F9114F29126ED66C12D9CD8C523
          13E4546FF91C773E9A6ADBB24429BE372FC55998E0CABDAD512A972E062D8BF3
          C75EB2CED92851EEBABBC51CED03378B3BD3709312F2B695641F67B3C29A09D8
          56E6DC132304B4E3A7178B4E5ED04FBF3B9E22E0E9045D5AD61014AC745DE3A6
          6CAA8A352878A238D9E543FF523B4EC5D18330D148C9349B633CD91727F60552
          4A15134187EE209ABF44DF3B024BAC73BE96EBBAB16A3E2615F185C7C818CF54
          A3833DF7822F589B695A663185954CDD802BB14AC9A739283DC0CB8622BDB8C7
          749756C352413111F4DE8DE192BF84A06A2FFA0253EF62CA57857615D291B594
          5C3BDCB55C0AD7697C8CA5C4F5E192BF89DE632115F4320ACB06D2947DDD2816
          47B2A55794B1BE24BB84FDF551948BD02FAF8FB5B33082A90D0AD87BC51D91E1
          95052E4C6DA4A8ED8CD517EFC1CF5A5DD35E338CCADDE594DBC92C7526DA59F8
          9E9AADC575786FB86D904CC83822C7DD9C6FA3A0D832D4BD99CD541E5B5D1552
          4783934E419143335447EC34F981F77F92CCE651A064250580C951F4B2AB19A4
          2809C50E2384D5B2BD3185EBF58CB121DD1DD61B08E447B86BD61E7CC4EA6FA1
          0AEE20E3E4139626D173CF60333310CB440F1335FA33B5053C910554151ACC97
          EA5D2898E75A092FADB49F2B9CFB646C8F3A9031C4C57369B88AE3A42EEB79BF
          155FD3DDD5C6A93733A6A09751F4D565F8682E16DC8D851A5999EDA90EF08F00
          03009DBF4E99D363247F0000000049454E44AE426082}
        Transparent = True
        TabOrder = 5
        OnClick = AdvGlowButton3Click
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
        Layout = blGlyphLeftAdjusted
      end
      object GroupBox29: TGroupBox
        Left = 248
        Top = 241
        Width = 161
        Height = 48
        Caption = 'Recibo - Impress'#227'o'
        TabOrder = 6
        object combo_recibo: TComboBox
          Left = 8
          Top = 17
          Width = 145
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          TabOrder = 0
          Items.Strings = (
            '01 - ECF'
            '02 - BOBINA'
            '03 - PAPEL A4 - LASER / TINTA'
            '')
        end
      end
    end
    object PageSheet12: TPageSheet
      Left = 0
      Top = 21
      Width = 695
      Height = 402
      Caption = 'Nota Fiscal'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 3
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object PageView2: TPageView
        Left = 0
        Top = 0
        Width = 668
        Height = 345
        ActivePage = PageSheet17
        ActivePageIndex = 2
        AdaptiveColors = True
        BackgroundColor = clBtnFace
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
        OnChange = PageView2Change
        object PageSheet5: TPageSheet
          Left = 0
          Top = 21
          Width = 668
          Height = 324
          Caption = 'Nota Fiscal'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 0
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object BitBtn19: TBitBtn
            Left = 465
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
          end
          object GroupBox23: TGroupBox
            Left = 12
            Top = 4
            Width = 589
            Height = 149
            Caption = 'Nota Fiscal'
            TabOrder = 1
            object Label42: TLabel
              Left = 8
              Top = 25
              Width = 24
              Height = 13
              Caption = 'Tipo:'
            end
            object Label45: TLabel
              Left = 8
              Top = 49
              Width = 83
              Height = 13
              Caption = 'Itens por P'#225'gina:'
            end
            object Label43: TLabel
              Left = 216
              Top = 49
              Width = 158
              Height = 13
              Caption = 'Linha do "Transporte de P'#225'gina":'
            end
            object Label44: TLabel
              Left = 8
              Top = 73
              Width = 210
              Height = 13
              Caption = 'Qtde. de Linhas para outra pr'#243'xima p'#225'gina:'
            end
            object Label46: TLabel
              Left = 8
              Top = 97
              Width = 58
              Height = 13
              Caption = 'Impressora:'
            end
            object Label51: TLabel
              Left = 288
              Top = 73
              Width = 87
              Height = 13
              Caption = 'Linha do Subtotal:'
            end
            object DBEdit44: TDBEdit
              Left = 112
              Top = 46
              Width = 41
              Height = 21
              DataField = 'NF_ITENS_PAGINA'
              DataSource = dsconfig
              TabOrder = 1
            end
            object combo_nf: TComboBox
              Left = 57
              Top = 21
              Width = 368
              Height = 21
              Style = csDropDownList
              CharCase = ecUpperCase
              TabOrder = 0
              Items.Strings = (
                '01 - FONTE DO WINDOWS'
                '02 - FONTE DO MS-DOS'
                '03 - PERSONALIZADO')
            end
            object DBEdit43: TDBEdit
              Left = 384
              Top = 46
              Width = 41
              Height = 21
              DataField = 'NF_LINHA_TRANSPORTE'
              DataSource = dsconfig
              TabOrder = 2
            end
            object DBEdit47: TDBEdit
              Left = 224
              Top = 70
              Width = 41
              Height = 21
              DataField = 'NF_SALTO_PAGINA'
              DataSource = dsconfig
              TabOrder = 3
            end
            object DBEdit45: TDBEdit
              Left = 72
              Top = 94
              Width = 353
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NF_IMPRESSORA'
              DataSource = dsconfig
              TabOrder = 4
            end
            object Button1: TButton
              Left = 490
              Top = 94
              Width = 57
              Height = 20
              Caption = 'Padr'#227'o'
              TabOrder = 5
              OnClick = Button1Click
            end
            object DBEdit50: TDBEdit
              Left = 384
              Top = 70
              Width = 41
              Height = 21
              DataField = 'NF_LINHA_SUBTOTAL'
              DataSource = dsconfig
              TabOrder = 6
            end
            object check_prestacao: TDBCheckBox
              Left = 7
              Top = 124
              Width = 205
              Height = 17
              Caption = 'Lan'#231'ar presta'#231#245'es no contas a receber'
              DataField = 'NF_GERAR_RECEBER'
              DataSource = dsconfig
              TabOrder = 7
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object check_gerar: TDBCheckBox
              Left = 223
              Top = 124
              Width = 209
              Height = 17
              Caption = 'Gerar duplicata mercantil'
              DataField = 'NF_GERAR_DUPLICATA'
              DataSource = dsconfig
              TabOrder = 8
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object GroupBox32: TGroupBox
              Left = 430
              Top = 16
              Width = 117
              Height = 72
              Caption = 'Mapa Resumo - ECF'
              TabOrder = 9
              object Label61: TLabel
                Left = 8
                Top = 19
                Width = 96
                Height = 13
                Caption = 'N'#250'mero de Controle'
              end
              object DBEdit54: TDBEdit
                Left = 8
                Top = 35
                Width = 97
                Height = 21
                DataField = 'NR_CONTROLE_ECF'
                DataSource = dsconfig
                TabOrder = 0
              end
            end
          end
          object GroupBox28: TGroupBox
            Left = 12
            Top = 157
            Width = 589
            Height = 167
            Caption = 'Configura'#231#227'o CFOP'
            TabOrder = 2
            object Label52: TLabel
              Left = 8
              Top = 24
              Width = 136
              Height = 13
              Caption = 'CFOP Venda Dentro Estado:'
            end
            object Label53: TLabel
              Left = 8
              Top = 48
              Width = 125
              Height = 13
              Caption = 'CFOP Venda Fora Estado:'
            end
            object Label78: TLabel
              Left = 8
              Top = 71
              Width = 156
              Height = 13
              Caption = 'CFOP Devolu'#231#227'o Dentro Estado:'
            end
            object Label79: TLabel
              Left = 8
              Top = 96
              Width = 145
              Height = 13
              Caption = 'CFOP Devolu'#231#227'o Fora Estado:'
            end
            object Label80: TLabel
              Left = 8
              Top = 121
              Width = 141
              Height = 13
              Caption = 'CFOP Servi'#231'o Dentro Estado:'
            end
            object Label81: TLabel
              Left = 9
              Top = 143
              Width = 130
              Height = 13
              Caption = 'CFOP Servi'#231'o Fora Estado:'
            end
            object RzDBButtonEdit1: TRzDBButtonEdit
              Left = 166
              Top = 20
              Width = 73
              Height = 21
              DataSource = dsconfig
              DataField = 'IND_CFOP_VENDA_DENTRO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = 11075583
              ParentFont = False
              TabOrder = 0
              OnExit = RzDBButtonEdit1Exit
              OnKeyPress = eCliente_EntradaKeyPress
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
            object DBEdit58: TDBEdit
              Left = 238
              Top = 20
              Width = 347
              Height = 21
              Color = clBtnFace
              DataField = 'CFOP_VENDA_DENTRO_DESC'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 1
            end
            object RzDBButtonEdit2: TRzDBButtonEdit
              Left = 166
              Top = 44
              Width = 73
              Height = 21
              DataSource = dsconfig
              DataField = 'IND_CFOP_VENDA_FORA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = 11075583
              ParentFont = False
              TabOrder = 2
              OnExit = RzDBButtonEdit2Exit
              OnKeyPress = eCliente_EntradaKeyPress
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
              OnButtonClick = RzDBButtonEdit2ButtonClick
            end
            object DBEdit59: TDBEdit
              Left = 238
              Top = 44
              Width = 347
              Height = 21
              Color = clBtnFace
              DataField = 'CFOP_VENDA_FORA_DESC'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 3
            end
            object RzDBButtonEdit3: TRzDBButtonEdit
              Left = 166
              Top = 68
              Width = 73
              Height = 21
              DataSource = dsconfig
              DataField = 'IND_CFOP_DEVOLUCAO_DENTRO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = 11075583
              ParentFont = False
              TabOrder = 4
              OnExit = RzDBButtonEdit3Exit
              OnKeyPress = eCliente_EntradaKeyPress
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
              OnButtonClick = RzDBButtonEdit3ButtonClick
            end
            object DBEdit60: TDBEdit
              Left = 238
              Top = 68
              Width = 347
              Height = 21
              Color = clBtnFace
              DataField = 'CFOP_DEVOLUCAO_DENTRO_DESC'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 5
            end
            object RzDBButtonEdit4: TRzDBButtonEdit
              Left = 166
              Top = 92
              Width = 73
              Height = 21
              DataSource = dsconfig
              DataField = 'IND_CFOP_DEVOLUCAO_FORA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = 11075583
              ParentFont = False
              TabOrder = 6
              OnExit = RzDBButtonEdit4Exit
              OnKeyPress = eCliente_EntradaKeyPress
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
              OnButtonClick = RzDBButtonEdit4ButtonClick
            end
            object DBEdit61: TDBEdit
              Left = 238
              Top = 92
              Width = 347
              Height = 21
              Color = clBtnFace
              DataField = 'CFOP_DEVOLUCAO_FORA_DESC'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 7
            end
            object RzDBButtonEdit5: TRzDBButtonEdit
              Left = 166
              Top = 116
              Width = 73
              Height = 21
              DataSource = dsconfig
              DataField = 'IND_CFOP_SERVICO_DENTRO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = 11075583
              ParentFont = False
              TabOrder = 8
              OnExit = RzDBButtonEdit5Exit
              OnKeyPress = eCliente_EntradaKeyPress
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
              OnButtonClick = RzDBButtonEdit5ButtonClick
            end
            object DBEdit62: TDBEdit
              Left = 238
              Top = 116
              Width = 347
              Height = 21
              Color = clBtnFace
              DataField = 'CFOP_SERVICO_DENTRO_DESC'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 9
            end
            object DBEdit63: TDBEdit
              Left = 238
              Top = 140
              Width = 347
              Height = 21
              Color = clBtnFace
              DataField = 'CFOP_SERVICO_FORA_DESC'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 11
            end
            object RzDBButtonEdit6: TRzDBButtonEdit
              Left = 166
              Top = 140
              Width = 73
              Height = 21
              DataSource = dsconfig
              DataField = 'IND_CFOP_SERVICO_FORA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = 11075583
              ParentFont = False
              TabOrder = 10
              OnExit = RzDBButtonEdit6Exit
              OnKeyPress = eCliente_EntradaKeyPress
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
              OnButtonClick = RzDBButtonEdit6ButtonClick
            end
          end
        end
        object PageSheet15: TPageSheet
          Left = 0
          Top = 21
          Width = 668
          Height = 324
          Caption = 'Industrializa'#231#227'o'
          Color = clBtnFace
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 1
          ParentColor = False
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object RzGroupBox7: TRzGroupBox
            Left = 8
            Top = 4
            Width = 649
            Height = 74
            Caption = 'Nota de Entrada'
            TabOrder = 0
            object Label72: TLabel
              Left = 8
              Top = 21
              Width = 37
              Height = 13
              Caption = 'Cliente:'
            end
            object Label73: TLabel
              Left = 8
              Top = 45
              Width = 31
              Height = 13
              Caption = 'CFOP:'
            end
            object eCliente_Entrada: TRzDBButtonEdit
              Left = 56
              Top = 19
              Width = 73
              Height = 21
              DataSource = dsconfig
              DataField = 'IND_CLIE_ENTRADA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = 11075583
              ParentFont = False
              TabOrder = 0
              OnExit = eCliente_EntradaExit
              OnKeyPress = eCliente_EntradaKeyPress
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
              OnButtonClick = eCliente_EntradaButtonClick
            end
            object enome_cliente_entrada: TDBEdit
              Left = 131
              Top = 19
              Width = 502
              Height = 21
              CharCase = ecUpperCase
              Color = clBtnFace
              DataField = 'IND_CLIE_ENTRADA_DESC'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 2
            end
            object enome_cfop_entrada: TDBEdit
              Left = 131
              Top = 42
              Width = 502
              Height = 21
              Color = clBtnFace
              DataField = 'IND_CFOP_ENTRADA_DESC'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 3
            end
            object eCfop_Entrada: TRzDBButtonEdit
              Left = 56
              Top = 42
              Width = 73
              Height = 21
              DataSource = dsconfig
              DataField = 'IND_CFOP_ENTRADA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = 11075583
              ParentFont = False
              TabOrder = 1
              OnExit = eCfop_EntradaExit
              OnKeyPress = eCliente_EntradaKeyPress
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
              OnButtonClick = eCfop_EntradaButtonClick
            end
          end
          object RzGroupBox6: TRzGroupBox
            Left = 8
            Top = 84
            Width = 649
            Height = 74
            Caption = 'Nota de Sa'#237'da'
            TabOrder = 1
            object Label74: TLabel
              Left = 8
              Top = 21
              Width = 37
              Height = 13
              Caption = 'Cliente:'
            end
            object Label75: TLabel
              Left = 8
              Top = 45
              Width = 31
              Height = 13
              Caption = 'CFOP:'
            end
            object eCliente_Saida: TRzDBButtonEdit
              Left = 56
              Top = 19
              Width = 73
              Height = 21
              DataSource = dsconfig
              DataField = 'IND_CLIE_SAIDA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = 11075583
              ParentFont = False
              TabOrder = 0
              OnExit = eCliente_SaidaExit
              OnKeyPress = eCliente_EntradaKeyPress
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
              OnButtonClick = eCliente_SaidaButtonClick
            end
            object enome_cliente_saida: TDBEdit
              Left = 131
              Top = 19
              Width = 502
              Height = 21
              CharCase = ecUpperCase
              Color = clBtnFace
              DataField = 'IND_CLIE_SAIDA_DESC'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 2
            end
            object enome_cfop_saida: TDBEdit
              Left = 131
              Top = 42
              Width = 502
              Height = 21
              Color = clBtnFace
              DataField = 'IND_CFOP_SAIDA_DESC'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 3
            end
            object eCfop_Saida: TRzDBButtonEdit
              Left = 56
              Top = 42
              Width = 73
              Height = 21
              DataSource = dsconfig
              DataField = 'IND_CFOP_SAIDA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = 11075583
              ParentFont = False
              TabOrder = 1
              OnExit = eCfop_SaidaExit
              OnKeyPress = eCliente_EntradaKeyPress
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
              OnButtonClick = eCfop_SaidaButtonClick
            end
          end
          object RzGroupBox9: TRzGroupBox
            Left = 8
            Top = 164
            Width = 649
            Height = 74
            Caption = 'Perda'
            TabOrder = 2
            object Label76: TLabel
              Left = 8
              Top = 21
              Width = 37
              Height = 13
              Caption = 'Cliente:'
            end
            object Label77: TLabel
              Left = 8
              Top = 45
              Width = 31
              Height = 13
              Caption = 'CFOP:'
            end
            object eCliente_Perda: TRzDBButtonEdit
              Left = 56
              Top = 19
              Width = 73
              Height = 21
              DataSource = dsconfig
              DataField = 'IND_CLIE_PERDA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = 11075583
              ParentFont = False
              TabOrder = 0
              OnExit = eCliente_PerdaExit
              OnKeyPress = eCliente_EntradaKeyPress
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
              OnButtonClick = eCliente_PerdaButtonClick
            end
            object DBEdit9: TDBEdit
              Left = 131
              Top = 19
              Width = 502
              Height = 21
              CharCase = ecUpperCase
              Color = clBtnFace
              DataField = 'IND_CLIE_PERDA_DESC'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 2
            end
            object DBEdit57: TDBEdit
              Left = 131
              Top = 42
              Width = 502
              Height = 21
              Color = clBtnFace
              DataField = 'IND_CFOP_PERDA_DESC'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 3
            end
            object eCfop_Perda: TRzDBButtonEdit
              Left = 56
              Top = 42
              Width = 73
              Height = 21
              DataSource = dsconfig
              DataField = 'IND_CFOP_PERDA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FocusColor = 11075583
              ParentFont = False
              TabOrder = 1
              OnExit = eCfop_PerdaExit
              OnKeyPress = eCliente_EntradaKeyPress
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
              OnButtonClick = eCfop_PerdaButtonClick
            end
          end
        end
        object PageSheet17: TPageSheet
          Left = 0
          Top = 21
          Width = 668
          Height = 324
          Caption = 'Config.Extras NF'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 2
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object GBTPNF: TGroupBox
            Left = 1
            Top = 9
            Width = 668
            Height = 80
            Caption = 'Tipo de Nota Fiscal'
            TabOrder = 0
            object rnffc: TRadioButton
              Left = 8
              Top = 21
              Width = 297
              Height = 17
              Caption = 'NFFC (Nota Fiscal de Formul'#225'rio Cont'#237'nuo).'
              TabOrder = 0
            end
            object rnfm: TRadioButton
              Left = 8
              Top = 37
              Width = 289
              Height = 17
              Caption = 'NFM (Nota Fiscal Manual).'
              TabOrder = 1
            end
            object rnfs: TRadioButton
              Left = 8
              Top = 54
              Width = 345
              Height = 17
              Caption = 'NFS (Nota Fiscal Simples - s/emiss'#227'o de NF).'
              TabOrder = 2
            end
          end
          object GroupBox31: TGroupBox
            Left = 0
            Top = 108
            Width = 668
            Height = 117
            Caption = 'Texto Padrao para Natureza da Oper'#231#227'o da NFe'
            TabOrder = 1
            object Label83: TLabel
              Left = 8
              Top = 33
              Width = 81
              Height = 13
              Caption = 'Natureza Venda:'
            end
            object Label85: TLabel
              Left = 8
              Top = 57
              Width = 101
              Height = 13
              Caption = 'Natureza Devolu'#231#227'o:'
            end
            object Label86: TLabel
              Left = 8
              Top = 81
              Width = 92
              Height = 13
              Caption = 'Natureza Garantia:'
            end
            object DBEdit65: TDBEdit
              Left = 114
              Top = 30
              Width = 543
              Height = 21
              CharCase = ecUpperCase
              DataField = 'TEXTO_PADRAO_VENDA'
              DataSource = dsconfig
              TabOrder = 0
            end
            object DBEdit66: TDBEdit
              Left = 114
              Top = 54
              Width = 543
              Height = 21
              CharCase = ecUpperCase
              DataField = 'TEXTO_PADRAO_DEVOLUCAO'
              DataSource = dsconfig
              TabOrder = 1
            end
            object DBEdit67: TDBEdit
              Left = 114
              Top = 78
              Width = 543
              Height = 21
              CharCase = ecUpperCase
              DataField = 'TEXTO_PADRAO_GARANTIA'
              DataSource = dsconfig
              TabOrder = 2
            end
          end
        end
      end
    end
    object PageSheet13: TPageSheet
      Left = 0
      Top = 21
      Width = 695
      Height = 402
      Caption = 'Emitente'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 4
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object pemitente2: TPanel
        Left = 8
        Top = 8
        Width = 414
        Height = 337
        BevelOuter = bvNone
        Enabled = False
        TabOrder = 0
        object Label8: TLabel
          Left = 10
          Top = 16
          Width = 37
          Height = 13
          Caption = 'C'#243'digo:'
        end
        object Label9: TLabel
          Left = 10
          Top = 40
          Width = 64
          Height = 13
          Caption = 'Raz'#227'o Social:'
        end
        object Label10: TLabel
          Left = 10
          Top = 64
          Width = 56
          Height = 13
          Caption = 'N.Fantasia:'
        end
        object Label11: TLabel
          Left = 10
          Top = 88
          Width = 49
          Height = 13
          Caption = 'Endere'#231'o:'
        end
        object Label12: TLabel
          Left = 10
          Top = 112
          Width = 32
          Height = 13
          Caption = 'Bairro:'
        end
        object Label13: TLabel
          Left = 10
          Top = 136
          Width = 37
          Height = 13
          Caption = 'Cidade:'
        end
        object Label14: TLabel
          Left = 152
          Top = 160
          Width = 17
          Height = 13
          Caption = 'UF:'
        end
        object Label15: TLabel
          Left = 233
          Top = 160
          Width = 23
          Height = 13
          Caption = 'CEP:'
        end
        object Label16: TLabel
          Left = 10
          Top = 184
          Width = 29
          Height = 13
          Caption = 'CNPJ:'
        end
        object Label17: TLabel
          Left = 258
          Top = 184
          Width = 14
          Height = 13
          Caption = 'IE:'
        end
        object Label18: TLabel
          Left = 194
          Top = 208
          Width = 28
          Height = 13
          Caption = 'Email:'
        end
        object Label19: TLabel
          Left = 10
          Top = 232
          Width = 59
          Height = 13
          Caption = 'Home-Page:'
        end
        object Label20: TLabel
          Left = 10
          Top = 256
          Width = 65
          Height = 13
          Caption = 'Respons'#225'vel:'
        end
        object Label21: TLabel
          Left = 10
          Top = 283
          Width = 37
          Height = 13
          Caption = 'Celular:'
        end
        object Label37: TLabel
          Left = 268
          Top = 112
          Width = 28
          Height = 13
          Caption = 'Fone:'
        end
        object Label55: TLabel
          Left = 308
          Top = 283
          Width = 59
          Height = 13
          Caption = 'Vencimento:'
        end
        object Label23: TLabel
          Left = 254
          Top = 136
          Width = 84
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'C'#243'd.Municipio:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 10
          Top = 160
          Width = 35
          Height = 13
          AutoSize = False
          Caption = 'IBGE:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 10
          Top = 208
          Width = 33
          Height = 13
          AutoSize = False
          Caption = 'IM:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label82: TLabel
          Left = 10
          Top = 305
          Width = 80
          Height = 13
          Caption = 'Email Financeiro:'
        end
        object DBEdit3: TDBEdit
          Left = 90
          Top = 12
          Width = 50
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CODIGO'
          DataSource = dsemitente
          Enabled = False
          TabOrder = 0
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object enome: TDBEdit
          Left = 90
          Top = 36
          Width = 313
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = dsemitente
          TabOrder = 1
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object DBEdit5: TDBEdit
          Left = 90
          Top = 60
          Width = 313
          Height = 21
          CharCase = ecUpperCase
          DataField = 'FANTASIA'
          DataSource = dsemitente
          TabOrder = 2
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object DBEdit6: TDBEdit
          Left = 90
          Top = 84
          Width = 313
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ENDERECO'
          DataSource = dsemitente
          TabOrder = 3
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object DBEdit7: TDBEdit
          Left = 90
          Top = 108
          Width = 175
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BAIRRO'
          DataSource = dsemitente
          TabOrder = 4
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object DBEdit8: TDBEdit
          Left = 125
          Top = 132
          Width = 140
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CIDADE'
          DataSource = dsemitente
          TabOrder = 6
          OnExit = DBEdit8Exit
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object DBEdit10: TDBEdit
          Left = 259
          Top = 156
          Width = 89
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CEP'
          DataSource = dsemitente
          TabOrder = 10
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object DBEdit11: TDBEdit
          Left = 90
          Top = 180
          Width = 145
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CNPJ'
          DataSource = dsemitente
          MaxLength = 18
          TabOrder = 11
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object DBEdit12: TDBEdit
          Left = 274
          Top = 180
          Width = 129
          Height = 21
          CharCase = ecUpperCase
          DataField = 'IE'
          DataSource = dsemitente
          TabOrder = 12
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object DBEdit13: TDBEdit
          Left = 224
          Top = 204
          Width = 180
          Height = 21
          CharCase = ecUpperCase
          DataField = 'EMAIL'
          DataSource = dsemitente
          TabOrder = 14
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object DBEdit14: TDBEdit
          Left = 90
          Top = 228
          Width = 314
          Height = 21
          CharCase = ecUpperCase
          DataField = 'HOMEPAGE'
          DataSource = dsemitente
          TabOrder = 15
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object DBEdit15: TDBEdit
          Left = 90
          Top = 252
          Width = 314
          Height = 21
          CharCase = ecUpperCase
          DataField = 'RESPONSAVEL'
          DataSource = dsemitente
          TabOrder = 16
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object DBEdit16: TDBEdit
          Left = 90
          Top = 276
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CELULAR'
          DataSource = dsemitente
          TabOrder = 17
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object DBEdit18: TDBEdit
          Left = 306
          Top = 108
          Width = 97
          Height = 21
          CharCase = ecUpperCase
          DataField = 'TELEFONE'
          DataSource = dsemitente
          MaxLength = 13
          TabOrder = 5
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object DBEdit53: TDBEdit
          Left = 372
          Top = 276
          Width = 32
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DIA_VENCIMENTO_CHAVE'
          DataSource = dsemitente
          Enabled = False
          TabOrder = 18
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object euf: TwwDBComboBox
          Left = 172
          Top = 156
          Width = 49
          Height = 21
          ShowButton = True
          Style = csDropDown
          MapList = False
          AllowClearKey = False
          CharCase = ecUpperCase
          DataField = 'UF'
          DataSource = dsemitente
          DropDownCount = 8
          ItemHeight = 0
          Items.Strings = (
            'AC'
            'AL'
            'AP'
            'AM'
            'BA'
            'CE'
            'DF'
            'ES'
            'EX'
            'GO'
            'MA'
            'MT'
            'MS'
            'MG'
            'PA'
            'PB'
            'PR'
            'PE'
            'PI'
            'RR'
            'RO'
            'RJ'
            'RN'
            'RS'
            'SC'
            'SP'
            'SE'
            'TO')
          ItemIndex = 6
          Sorted = False
          TabOrder = 9
          UnboundDataType = wwDefault
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object AdvGlowButton5: TAdvGlowButton
          Left = 88
          Top = 130
          Width = 35
          Height = 24
          Hint = 'Pesquisa o Municipio,IBGE'
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
            89504E470D0A1A0A0000000D494844520000001E0000001B08060000006BFD3F
            11000000097048597300000B1300000B1301009A9C180000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000006C74944415478DA62FCFFFF
            3FC3400080006262182000104003663140000D98C500013460160304D080590C
            10402CD8041F3C79059164616678F0F815FBDD872F5CD8D8584C801900230B30
            323230FCFDFBEF3D273BDB3E2E4EB67B9FBFFE08FDF3F79F2250F81F3717C727
            A019FF7FFCF875EECDFB4FB724C4045EC9488880D433000410568BBF7EFB0924
            FF33B0B2B2307CFBFED318E89059CCCC4C528C0C8C186AFFFEFBC7C0C6CAB259
            5B5576E1874FDF5C6FDF7F3E17A8166CEE3F5056056146C64FEC6CAC7B850579
            2B9999986E8284000208ABC5EF3F7E01AA65046BBCFBE845342B0BB314131366
            ACFCFBF71F64E9115303D57C1E4EF64F8F2EBF8902590AC46079668452BE5FBF
            7E07BE7BFFE5D95BFECFB9C010F90F10402CF8E20158B8887DFEF25D1FE4084C
            4BFF313031319E06FA340318CCF7AFDE7A2C040C1D2B6C0E042726A0F8F71FBF
            4C9FBD7CC70274F06F8000C2AAEAD79F3FE0207CF4F4B5DE9F3FFFACD12D06C5
            11C8206D35B91C692991ABEF3F7C61F8F9EB0F231323D3070686FFB83CC1C0CE
            CEFA5C4488EF8FA8301F03400061B5F8F7EF3F20CCF8EDC72F3758910AA2FFFC
            FDCBF0EBD71F067E5E2E06171B7D900F026EDD7B5A0B8C1A5D61419E77ACACCC
            CB7E031D0D8A02907A640C12E3E4605B25252EF49F878B83012080B00635D097
            0C1F3F7D137AF5FA833BC8DABF40CB80863208F2F330A8294A319819A8325CBF
            F384E1F683E795FF80BE077AD51D985AD38D7494D75FBC7EBF1D9438415101D2
            CB040C2D5080313333BF11E0E3BEF2FAED4786E72FDF33000410568BF979B941
            AED3FAF9EBB70C1F3727030F0F278394B82083B48430031F0F1758CD959B8FC0
            BE00A57C60D05B7FFAF26D8E9EA6FC7D3D4D3986CF5F7E00F13706602A07E68A
            1F0C3F7EFDF90FCC6A7DF2D2A2976EDE7BC6000C15268000C26A315013F3EF3F
            7F9579B93985988029F4D7EFBF0C8F9FBD6578FAE23D030F370783A6B234032F
            907E0AF2D57F26A0C57F198049D902E8580B506A78F1FA03C3C3676F189EBD78
            07CC9A3F80FAFF7C55969738FC9EE72BB86C00266A1E8000C26A31308B889EBF
            7AAF08A8001C4CE06806C715246F02F3EA6B6539F1A4771FBE047CFEFADD8F83
            9DEB9B9589BAE49D072FD88E9DBD0EB618940099A1291C68D90BA0E577418950
            495E9C71EBDE33CC000184C3C7DF9D80966A00F32FD6D4F9F4C55B163E5ECE93
            065A8A3B9EBE7CD7A9A624F50C1877974F5EB8ADF8E7CF5F06903E66561678B6
            039660AB80C1FC02E48BCB371EB2EC3F7E85052080B0A6EAD7EF3E59333331B2
            62936304271646AE078F5EAB007DF2474B45E6F6ED7BCF5C8F9DBD29CE08092D
            06E4EC0774E7375161DE8B9FBE7CFFFFF9F33786376F3FF1DFBAFB8C07208098
            B01BCEF015E4585CF91168F06721419E8FC00284E1D6FDE741D76E3F5E008C63
            2EF4FC0E8A1AA09A87922282DB39D859199EBC78CBB461E7295066FB09104058
            2D0626A04DC0A0FE012A44FE61C98F405F6D959312B971E1DA03F5ABB71EF502
            B30A3FA8E040CFBB7F80795A5880F7280707DB67A0C31864A544788145F04FA0
            196F0002086B1CAB2B499FFAF8F97BE18F9FBFC2818A5480F1048F6CA0BDEF79
            B8D85703A343ECEBD7EF71C05AEB3FD0574F215E84945B607F83F32E1383B4A4
            F02271510150AA673878E2EA576061F35F889F9B0D2080B05A0CCC77BF4485F9
            67898BF02F7BF5E6031F30E5B2018BC8FF205F000B042660283CFEF8F92BAF90
            20EF6260E8CE018A43A385115C60804A38A083198196FD979716790ACD520C9F
            3E7FFDAB2023FE9F8B83ED2F400061B518986A8196FF06168FBFBF7CFEF6E30B
            A85C06590AB4089C373555644035D87B60B6790F8A577636166891C8CAA0AFA9
            C870F3DE5370360417BDC0542E2D21C000CA4A06DA8AFF9FBD7A0FCA8EBF0002
            880957CA056503A04F195EBDF9083498155C09B0B2B03002F32E83A49820C872
            C60F1FBF00F157783E07FA8A1918E78C4202DC204BC0E6DCBAFB14AC1F182560
            6C6DA2C16066A8CA00104038AAC5FFCCC0A2105483FF03662B7E6041F00B5856
            FF7CF6FCED7F60826102D6A7FF1E3F7BCDC4C6C60A0C59C63FE04407D4C4CBC9
            FEF7EBB7EF8C4F5FFE0515B9C0907B072EE980A99EE1FFBFFF4C40DF339EBA78
            E72F073B0B03400031E128B9D881F1F01FE4E20F9FBEFE04169BBFE5A5C5FE7D
            F8FCF5BFA498F0BFDBF79F31DE7DF8F23FA87A03D6C5209FFD070529C8A2FB8F
            5F830A20C68327AF3102132013304533DF7BF81228FE8AE1FBCF9FFF81C530A7
            86B22C2B4000BAEA2505401806C2B0A3AE7DA094EC2C8AF7BF5EA452FCD3BD37
            089319BEBFA895B6A575D49FE2D0F772482391E976EE453456F1FB11B5AE6CBA
            B3855C3D02C5BC15429D87695FA70A1EA233A437544BB378953E010600C1D442
            6D06AD16470000000049454E44AE426082}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 19
          OnClick = AdvGlowButton5Click
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
        end
        object ecodmunicipio: TDBEdit
          Left = 342
          Top = 132
          Width = 61
          Height = 21
          DataField = 'COD_MUNICIPIO_IBGE'
          DataSource = dsemitente
          TabOrder = 7
        end
        object DBEdit51: TDBEdit
          Left = 90
          Top = 156
          Width = 51
          Height = 21
          CharCase = ecUpperCase
          DataField = 'IBGE'
          DataSource = dsemitente
          TabOrder = 8
        end
        object DBEdit52: TDBEdit
          Left = 90
          Top = 204
          Width = 94
          Height = 21
          DataField = 'INSC_MUNICIPAL'
          DataSource = dsemitente
          TabOrder = 13
        end
        object DBEdit64: TDBEdit
          Left = 90
          Top = 301
          Width = 314
          Height = 21
          CharCase = ecUpperCase
          DataField = 'RESPONSAVEL'
          DataSource = dsemitente
          TabOrder = 20
          OnKeyPress = enovadata_inventarioKeyPress
        end
      end
      object BitBtn4: TBitBtn
        Left = 119
        Top = 347
        Width = 105
        Height = 23
        Caption = 'Alterar'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0EEE08FBF913A8C3E24
          79282476283A843E8FB991E0EBE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFB5D9B6308E34419F5186C9999AD2AA9AD1AA82C6953C964B307B33B4D0
          B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5DBBA248E296CBD82A7DAB486CB9765
          BB7C63B97B85CA97A4D8B365B67C237126B4D0B6FFFFFFFFFFFFFFFFFFE1F2E4
          32A04371C186A7DAB15FBB765BB97258B76F58B46E57B46E5AB673A4D8B268B7
          7E307F34E0ECE1FFFFFFFFFFFF8FD29F4BAF63A9DCB363C0785EBD7074C484D3
          EBD889CC9855B56B57B46D5BB673A5D9B3409A4D8EBB90FFFFFFFFFFFF3EB45C
          90D19E8CD39963C27378C886F1F9F3FEFEFEFCFDFC85CA9556B66C5AB87184CB
          9686C6993A8A3EFFFFFFFFFFFF26AF48A5DBAE6FC97E72C97FEFF8F0FEFEFEEA
          F6ECFEFEFEFAFCFB87CC955AB87066BD7C9FD6AE227E25FFFFFFFFFFFF2DB650
          A6DCB071CB7F65C672AFE0B6D1EDD562C06FB7E2BEFEFEFEFAFCFB8BCF9868C0
          7DA0D6AD228325FFFFFFFFFFFF4AC46B94D6A090D69A68C87563C56E60C36D60
          C26E60C16EB8E3BFFEFEFEE2F3E58AD0988ACD9C3B983FFFFFFFFFFFFF9ADEAC
          56BE6FAEE0B66CCB7967C77164C66F62C46D61C36D62C370B5E2BD6EC67DABDE
          B447A85D8EC793FFFFFFFFFFFFE4F7E948C4657ECD8FADE0B46CCB7969C97567
          C77167C77367C7746AC878ABDEB375C38832A042E1F1E3FFFFFFFFFFFFFFFFFF
          BFECCA3CC25B7ECD8FAEE0B691D79C76CD8276CD8291D79CADE0B477C78A26A0
          3AB5DFBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0ECCB49C76858C17395D6A2A4
          DBADA4DBAD94D5A04FB86934B254B6E3C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFE5F7E99EE2B054CA713ABF5B36BD5948C26A97DBAAE1F5E7FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        TabOrder = 1
        OnClick = BitBtn4Click
      end
      object BitBtn5: TBitBtn
        Left = 231
        Top = 347
        Width = 98
        Height = 23
        Caption = 'Cancelar'
        Enabled = False
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9BCF0676DDF4048D643
          4BD74048D7353ED55960DCAFB2EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBABDF05760DF8A96F599A6FB93A0F8909EF6929FF67F8BED404AD9AEB1
          EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBEF15F67E0919DF6657CFE3D58FE3B
          57FE3752FD2F4BF85269F6808CF03F48D9ABAFEDFFFFFFFFFFFFFFFFFFC0C3F1
          6970E298A5F76F87FE4260FE3E5CFE3956FE3552FE304DFE2B49FE556CFA828F
          F3404AD9ADB0EEFFFFFFFFFFFF8186E59EACF87891FE4E6DFE6D86FE8EA0FE40
          5EFE3B5AFE8195FE647AFE2C4BFE566DFE828FF5585FDCFFFFFFFFFFFF6B70DF
          AFBFFD5D7EFE5675FE95A8FEFEFEFEAAB8FE9AABFEFEFEFE9AAAFE3352FE3351
          FE96A5FD3840D5FFFFFFFFFFFF767BE1B0BFFC6788FE5D7EFE5D7EFEAEBEFEFE
          FEFEFEFEFEB8C4FE4867FE3A5AFE3C5BFE96A4FB444DD8FFFFFFFFFFFF7A7FE3
          B3C4FC6E91FE6387FE5F83FEA7B9FEFEFEFEFEFEFEAFBFFE4A6BFE4162FE4363
          FE99A8FB4950D9FFFFFFFFFFFF797EE3BACBFD7196FE6A8FFE9EB5FEFEFEFEC1
          CEFEB4C4FEFEFEFE92A8FE486AFE4668FE9FB0FD464ED8FFFFFFFFFFFF9499E8
          AFC0F893B2FE7098FE8FADFEB0C4FE678DFE5E84FE9BB1FE7694FE4F73FE718D
          FE92A2F66D73E0FFFFFFFFFFFFCDCFF4868FE7B0C1F895B6FE739CFE6F98FE6A
          92FE658DFE6188FE5B82FE7B99FE99A9F76069E0BCBEF1FFFFFFFFFFFFFFFFFF
          CECFF4878FE7B1C2F896B8FE78A2FE76A0FE729BFE6B94FE84A3FEA0B0F76871
          E2BEC0F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFD1F58891E8B1C3F8BDD2FDB9
          CDFCB7CAFCB7CAFDA6B7F7727BE4C2C4F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCFD1F5989DE97E83E38084E47C82E3747AE18C91E6C7CAF3FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        TabOrder = 2
        OnClick = BitBtn5Click
      end
      object BitBtn9: TBitBtn
        Left = 458
        Top = 215
        Width = 75
        Height = 25
        Caption = 'Incluir'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F0E79FC8A5559B5E3F
          8E483B8C444C955297C19BE1EDE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFC3DDC8569F6340984F7CC18E95CFA595CEA577BD88358C41408C47B9D5
          BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6DFCB549F6363B377A7DAB486CB9765
          BB7C63B97B85CA97A4D8B357A96A34853CB9D5BBFFFFFFFFFFFFFFFFFFE9F3EB
          66AB7569B87CA7DAB15FBB765BB97258B76F58B46E57B46E5AB673A4D8B259A9
          6B418E48E2EEE3FFFFFFFFFFFFAED4B852AA67A9DCB363C0785EBD705FBB76FE
          FEFEFEFEFE58B76F57B46D5BB673A5D9B3378E4296C19AFFFFFFFFFFFF76B788
          89CB9788D2956AC57962C06F54AA64FEFEFEFEFEFE58B76F58B76F5AB87184CB
          967ABD8C4C9554FFFFFFFFFFFF69B17EA8DCB27CCE8974CB80FEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFE58B76F66BD7C9BD3AA3A8B43FFFFFFFFFFFF6DB482
          B5E1BD8AD49679C885FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE58B76F68C0
          7D9CD3A93E8E48FFFFFFFFFFFF81BF94ABDCB5A5DEAE80CA8B7BC8856DBC78FE
          FEFEFEFEFE5AAB695FBB765BB9728AD0987FC491579D60FFFFFFFFFFFFB8DBC3
          84C696D1EDD694D89F89D2937EC788FEFEFEFEFEFE78CC846AC27B6EC67DABDE
          B4449D56A0C8A6FFFFFFFFFFFFECF6EF7EBE92A9D9B6D7F0DB91D79C87CC9283
          CB8D8AD39589D39482D18DAEDFB66AB87C5AA266E6F1E8FFFFFFFFFFFFFFFFFF
          D1E9D975BA8BAEDBBADBF1DFB5E3BC9ADAA495D89FA4DEAEBFE7C478C18957A1
          65C4DEC9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1E9D97EBE9293CDA3C2E5CACE
          EAD3C8E8CDAEDCB76CB87E67AD77C7E0CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFECF6EFB9DCC482BF9570B6856DB48178B989B1D5BAE8F3EBFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        TabOrder = 3
        OnClick = BitBtn9Click
      end
      object BitBtn10: TBitBtn
        Left = 538
        Top = 215
        Width = 75
        Height = 25
        Caption = 'Excluir'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E7F79EA9E1536AC63E
          58BF3953BE4B66C197A7DBE1E6F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFC2C8ED5465CB3B51CB7479E78E91ED8E91ED7077E3324CC03F5BBDB9C4
          E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C9EE505FCC5B64DFA0A5F47D85EE5A
          62E8585CE67C83ED9D9FF3505CD63351B9B9C4E7FFFFFFFFFFFFFFFFFFE8EAF9
          6470D3606AE2A0ABF4535EEB4F5BE94C58E84D58E54B55E54F55E59DA1F3535F
          D53F5CBEE2E7F5FFFFFFFFFFFFACB0E94A55DAA1AAF55563EF5165ED4C58E84C
          58E84C58E84C58E84B57E55159E59EA2F4334FC395A5DBFFFFFFFFFFFF7277DC
          808BED7D90F65C72F24C58E84C58E84C58E84C58E84C58E84C58E84E5AE87A82
          EF747AE14B64C3FFFFFFFFFFFF6468DAA0AAF66F85F76781F5FEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFE4C58E85B65E9959BF03855BDFFFFFFFFFFFF696DDB
          AEB8F87E92F96F84EFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE4C58E85D69
          ED959CF03C54BFFFFFFFFFFFFF7C7EE2A4AEF49CAAF9768BEF535EEB535EEB53
          5EEB535EEB535EEB535EEB6276F1808DF3777EE8556AC8FFFFFFFFFFFFB5B4EF
          7C82E9CCD3FB8A9CF97D92F67489ED6B83F56B83F56B83F56B83F56278F2A3AE
          F73D4ECF9FAAE0FFFFFFFFFFFFEBEBFB7877E2A2A6F2D3DAFC8699F97E90EF79
          8DF07E93F77D91F8758BF7A7B5F7626DE25767CCE6E8F7FFFFFFFFFFFFFFFFFF
          CFCFF66F6FE0A9ACF1D7DBFCADB9F990A2F98A9CF99BA8FAB9C6FB6F7AE85361
          CDC3C8EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFF67878E18D92ECBDC2F7CB
          D2F8C3CAF8A9B3F3656FE1636DD5C6CAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFEBEBFBB6B5F07C7EE1696ADD676ADB7378DEAEB2EAE8E9F9FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        TabOrder = 4
        OnClick = BitBtn10Click
      end
      object DBImage1: TDBImage
        Left = 424
        Top = 41
        Width = 233
        Height = 160
        DataField = 'LOGO'
        DataSource = dsemitente
        Stretch = True
        TabOrder = 5
      end
    end
    object PageSheet14: TPageSheet
      Left = 0
      Top = 21
      Width = 695
      Height = 402
      Caption = 'Equipamentos'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 5
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object GroupBox5: TGroupBox
        Left = 8
        Top = 208
        Width = 409
        Height = 129
        Caption = 'Balan'#231'a Retaguarda (A'#231'ougue/Horti-fruti...)'
        TabOrder = 0
        object Label39: TLabel
          Left = 8
          Top = 41
          Width = 274
          Height = 13
          Caption = 'Pasta de arquivos de Expota'#231#227'o: (Formato: c:\xxx\xxx\)'
        end
        object Label49: TLabel
          Left = 8
          Top = 81
          Width = 152
          Height = 13
          Caption = 'Programa da Balan'#231'a - Caminho'
        end
        object DBComboBox6: TDBComboBox
          Left = 8
          Top = 19
          Width = 385
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          DataField = 'BALANCA_MODELO'
          DataSource = dsconfig
          Items.Strings = (
            '(NENHUM)'
            'FILIZOLA'
            'TOLEDO'
            'URANO')
          TabOrder = 0
        end
        object DBEdit41: TDBEdit
          Left = 8
          Top = 57
          Width = 385
          Height = 21
          DataField = 'BALANCA_CAMINHO'
          DataSource = dsconfig
          TabOrder = 1
        end
        object DBEdit48: TDBEdit
          Left = 8
          Top = 97
          Width = 385
          Height = 21
          DataField = 'BALANCA_PROGRAMA'
          DataSource = dsconfig
          TabOrder = 2
        end
      end
      object GroupBox6: TGroupBox
        Left = 8
        Top = 8
        Width = 409
        Height = 67
        Caption = 'Balan'#231'a Check-Out'
        TabOrder = 1
        object Label26: TLabel
          Left = 8
          Top = 24
          Width = 38
          Height = 13
          Caption = 'Modelo:'
        end
        object Label27: TLabel
          Left = 8
          Top = 46
          Width = 30
          Height = 13
          Caption = 'Porta:'
        end
        object DBComboBox7: TDBComboBox
          Left = 64
          Top = 19
          Width = 329
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          DataField = 'BALANCAPDV_MODELO'
          DataSource = dsconfig
          Items.Strings = (
            '(NENHUM)'
            'FILIZOLA'
            'TOLEDO'
            'URANO')
          TabOrder = 0
        end
        object DBComboBox8: TDBComboBox
          Left = 64
          Top = 41
          Width = 113
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          DataField = 'BALANCAPDV_PORTA'
          DataSource = dsconfig
          Items.Strings = (
            '(NENHUM)'
            'COM1'
            'COM2'
            'COM3'
            'COM4'
            'COM5'
            'COM6'
            'COM7'
            'COM8'
            'COM9')
          TabOrder = 1
        end
      end
      object GroupBox7: TGroupBox
        Left = 8
        Top = 80
        Width = 409
        Height = 66
        Caption = 'Impressora de Cheque'
        TabOrder = 2
        object Label28: TLabel
          Left = 8
          Top = 24
          Width = 38
          Height = 13
          Caption = 'Modelo:'
        end
        object Label29: TLabel
          Left = 8
          Top = 46
          Width = 30
          Height = 13
          Caption = 'Porta:'
        end
        object DBComboBox9: TDBComboBox
          Left = 64
          Top = 19
          Width = 329
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          DataField = 'IMPRESSORACHEQUE_MODELO'
          DataSource = dsconfig
          Items.Strings = (
            '(NENHUM)'
            'BEMATECH')
          TabOrder = 0
        end
        object DBComboBox10: TDBComboBox
          Left = 64
          Top = 41
          Width = 113
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          DataField = 'IMPRESSORACHEQUE_PORTA'
          DataSource = dsconfig
          Items.Strings = (
            '(NENHUM)'
            'COM1'
            'COM2'
            'COM3'
            'COM4'
            'COM5'
            'COM6'
            'COM7'
            'COM8'
            'COM9')
          TabOrder = 1
        end
      end
      object GroupBox8: TGroupBox
        Left = 8
        Top = 152
        Width = 409
        Height = 47
        Caption = 'Impressora de C'#243'digo de Barras'
        TabOrder = 3
        object Label30: TLabel
          Left = 8
          Top = 24
          Width = 38
          Height = 13
          Caption = 'Modelo:'
        end
        object DBComboBox11: TDBComboBox
          Left = 64
          Top = 19
          Width = 329
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          DataField = 'IMPRESSORABARRAS_MODELO'
          DataSource = dsconfig
          Items.Strings = (
            '(NENHUM)'
            'ARGOX'
            'ZEBRA')
          TabOrder = 0
        end
      end
    end
    object PageSheet16: TPageSheet
      Left = 0
      Top = 21
      Width = 695
      Height = 402
      Caption = 'Plano de Contas'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 6
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object PageView1: TPageView
        Left = 0
        Top = 0
        Width = 695
        Height = 201
        ActivePage = PageSheet1
        ActivePageIndex = 0
        AdaptiveColors = True
        Align = alTop
        BackgroundColor = clBtnFace
        BackgroundKind = bkSolid
        Indent = 2
        Margin = 0
        Options = [pgBoldActiveTab]
        ShowTabs = True
        Spacing = 0
        TabHeight = 16
        TabOrder = 0
        TabStyle = tsWhidbey
        TopIndent = 3
        object PageSheet1: TPageSheet
          Left = 0
          Top = 20
          Width = 695
          Height = 181
          Caption = 'Vendas'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 0
          TabColor = 15653559
          TabWidth = 0
          TransparentColor = clNone
          object GroupBox16: TGroupBox
            Left = 0
            Top = 0
            Width = 695
            Height = 46
            Align = alTop
            Caption = 'VENDA '#192' VISTA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object DBEdit28: TDBEdit
              Left = 8
              Top = 16
              Width = 64
              Height = 20
              DataField = 'PLANO_VENDA_AV'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 0
            end
            object blocregiao: TBitBtn
              Left = 72
              Top = 16
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
              TabOrder = 1
              OnClick = blocregiaoClick
            end
            object DBEdit30: TDBEdit
              Left = 97
              Top = 16
              Width = 91
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA1'
              DataSource = dsconfig
              TabOrder = 2
            end
            object DBEdit20: TDBEdit
              Left = 190
              Top = 16
              Width = 217
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA10'
              DataSource = dsconfig
              TabOrder = 3
            end
          end
          object GroupBox17: TGroupBox
            Left = 0
            Top = 92
            Width = 695
            Height = 46
            Align = alTop
            Caption = 'DUPLICATAS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object DBEdit21: TDBEdit
              Left = 8
              Top = 16
              Width = 64
              Height = 20
              DataField = 'PLANO_DUPLICATA_NFE'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 0
            end
            object BitBtn13: TBitBtn
              Left = 72
              Top = 16
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
              TabOrder = 1
              OnClick = BitBtn13Click
            end
            object DBEdit22: TDBEdit
              Left = 97
              Top = 16
              Width = 91
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA8'
              DataSource = dsconfig
              TabOrder = 2
            end
            object DBEdit23: TDBEdit
              Left = 190
              Top = 16
              Width = 217
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA80'
              DataSource = dsconfig
              TabOrder = 3
            end
          end
          object GroupBox30: TGroupBox
            Left = 0
            Top = 46
            Width = 695
            Height = 46
            Align = alTop
            Caption = 'VENDAS '#192' PRAZO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object DBEdit4: TDBEdit
              Left = 8
              Top = 16
              Width = 64
              Height = 20
              DataField = 'PLANO_VENDA_AP'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 0
            end
            object BitBtn1: TBitBtn
              Left = 72
              Top = 16
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
              TabOrder = 1
              OnClick = BitBtn1Click
            end
            object DBEdit55: TDBEdit
              Left = 97
              Top = 16
              Width = 91
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA2'
              DataSource = dsconfig
              TabOrder = 2
            end
            object DBEdit56: TDBEdit
              Left = 190
              Top = 16
              Width = 217
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA20'
              DataSource = dsconfig
              TabOrder = 3
            end
          end
        end
        object PageSheet2: TPageSheet
          Left = 0
          Top = 20
          Width = 695
          Height = 181
          Caption = 'Ordem de Servi'#231'o'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 1
          TabColor = 13035201
          TabWidth = 0
          TransparentColor = clNone
          object GroupBox18: TGroupBox
            Left = 0
            Top = 0
            Width = 695
            Height = 46
            Align = alTop
            Caption = 'O.S. '#192' VISTA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object DBEdit24: TDBEdit
              Left = 8
              Top = 16
              Width = 64
              Height = 20
              DataField = 'PLANO_OS_AV'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 0
            end
            object BitBtn14: TBitBtn
              Left = 72
              Top = 16
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
              TabOrder = 1
              OnClick = BitBtn14Click
            end
            object DBEdit25: TDBEdit
              Left = 97
              Top = 16
              Width = 91
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA3'
              DataSource = dsconfig
              TabOrder = 2
            end
            object DBEdit26: TDBEdit
              Left = 190
              Top = 16
              Width = 217
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA30'
              DataSource = dsconfig
              TabOrder = 3
            end
          end
          object GroupBox19: TGroupBox
            Left = 0
            Top = 46
            Width = 695
            Height = 46
            Align = alTop
            Caption = 'O.S. '#192' PRAZO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object DBEdit27: TDBEdit
              Left = 8
              Top = 16
              Width = 64
              Height = 20
              DataField = 'PLANO_OS_AP'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 0
            end
            object BitBtn15: TBitBtn
              Left = 72
              Top = 16
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
              TabOrder = 1
              OnClick = BitBtn15Click
            end
            object DBEdit29: TDBEdit
              Left = 97
              Top = 16
              Width = 91
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA4'
              DataSource = dsconfig
              TabOrder = 2
            end
            object DBEdit31: TDBEdit
              Left = 190
              Top = 16
              Width = 217
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA40'
              DataSource = dsconfig
              TabOrder = 3
            end
          end
        end
        object PageSheet3: TPageSheet
          Left = 0
          Top = 20
          Width = 695
          Height = 181
          Caption = 'Entradas'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 2
          TabColor = 9106937
          TabWidth = 0
          TransparentColor = clNone
          object GroupBox20: TGroupBox
            Left = 0
            Top = 46
            Width = 695
            Height = 46
            Align = alTop
            Caption = 'ENTRADAS DIVERSAS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object DBEdit32: TDBEdit
              Left = 8
              Top = 16
              Width = 64
              Height = 20
              DataField = 'PLANO_OUTRAS_ENTRADAS'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 0
            end
            object BitBtn16: TBitBtn
              Left = 72
              Top = 16
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
              TabOrder = 1
              OnClick = BitBtn16Click
            end
            object DBEdit33: TDBEdit
              Left = 97
              Top = 16
              Width = 91
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA6'
              DataSource = dsconfig
              TabOrder = 2
            end
            object DBEdit34: TDBEdit
              Left = 190
              Top = 16
              Width = 217
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA60'
              DataSource = dsconfig
              TabOrder = 3
            end
          end
          object GroupBox22: TGroupBox
            Left = 0
            Top = 0
            Width = 695
            Height = 46
            Align = alTop
            Caption = 'RECEBIMENTO DE CREDI'#193'RIO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object DBEdit38: TDBEdit
              Left = 8
              Top = 16
              Width = 64
              Height = 20
              DataField = 'PLANO_RECEBTO_CREDIARIO'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 0
            end
            object BitBtn18: TBitBtn
              Left = 72
              Top = 16
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
              TabOrder = 1
              OnClick = BitBtn18Click
            end
            object DBEdit39: TDBEdit
              Left = 97
              Top = 16
              Width = 91
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA5'
              DataSource = dsconfig
              TabOrder = 2
            end
            object DBEdit40: TDBEdit
              Left = 190
              Top = 16
              Width = 217
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA50'
              DataSource = dsconfig
              TabOrder = 3
            end
          end
        end
        object PageSheet4: TPageSheet
          Left = 0
          Top = 20
          Width = 695
          Height = 181
          Caption = 'Sa'#237'das'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 3
          TabColor = 11184895
          TabWidth = 0
          TransparentColor = clNone
          object GroupBox21: TGroupBox
            Left = 0
            Top = 0
            Width = 695
            Height = 46
            Align = alTop
            Caption = 'SA'#205'DAS DIVERSAS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object DBEdit35: TDBEdit
              Left = 8
              Top = 16
              Width = 64
              Height = 20
              DataField = 'PLANO_OUTRAS_SAIDAS'
              DataSource = dsconfig
              Enabled = False
              TabOrder = 0
            end
            object BitBtn17: TBitBtn
              Left = 72
              Top = 16
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
              TabOrder = 1
              OnClick = BitBtn17Click
            end
            object DBEdit36: TDBEdit
              Left = 97
              Top = 16
              Width = 91
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA7'
              DataSource = dsconfig
              TabOrder = 2
            end
            object DBEdit37: TDBEdit
              Left = 190
              Top = 16
              Width = 217
              Height = 20
              Color = clBtnFace
              DataField = 'PLANO_CONTA70'
              DataSource = dsconfig
              TabOrder = 3
            end
          end
        end
      end
    end
    object PageSheet8: TPageSheet
      Left = 0
      Top = 21
      Width = 695
      Height = 402
      Caption = 'Estoque'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 7
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object AdvGlowButton4: TAdvGlowButton
        Left = 16
        Top = 16
        Width = 161
        Height = 44
        Caption = 'Zerar Estoque...'
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
        TabOrder = 0
        OnClick = AdvGlowButton4Click
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
        Layout = blGlyphLeftAdjusted
      end
      object btARRUMACODPRODUTO: TAdvGlowButton
        Left = 16
        Top = 71
        Width = 161
        Height = 45
        Caption = 'Corrigir CODPRODUTO'
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
          702E6969643A4245313033443332453238313131453242384538413344423533
          3546434634322220786D704D4D3A446F63756D656E7449443D22786D702E6469
          643A424531303344333345323831313145324238453841334442353335464346
          3432223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
          7374616E636549443D22786D702E6969643A4245313033443330453238313131
          453242384538413344423533354643463432222073745265663A646F63756D65
          6E7449443D22786D702E6469643A424531303344333145323831313145324238
          4538413344423533354643463432222F3E203C2F7264663A4465736372697074
          696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
          7061636B657420656E643D2272223F3ECF6BF2CD000005364944415478DAC499
          796C15451CC7B76B0191DA5004045B5150286041240183B6B588E01F8443AADC
          08424984009A6008064CC4188D314A6AC493CB023E0E6B380C5AE52A67395410
          291EB404848052B520AF9460C0EF98EF909F93997D67E32FF9E4CDEEECECCCCE
          FCAE9997E2ADADF212900CD00DDC01EE06B7F3FE6FE047701A548253F176901A
          67BBC74021280099119EAD05E5603D2805E763E9282586196C0E668231A07D9C
          1F76012C03C5E0E7640E700298CF414A5133B3131C018741185C05695CF27B40
          2FF028686AB47D11CC4B7480CDC0C760B0B8F703780B6C8841B794AE3E02A683
          3C71FF2057A4329E01B60515A01DAFAF80D9E04D2F3119C177DC26EEE5831DB6
          877DC74B3A72C9F4E0B6F15EA28353B20A74028BC4BDED6050B4036C0476815B
          781D027DC1092F79A274B508CC11F79495E7443340A5F4AD587E178C36965DE9
          CCFD8E8E1F32F455CA0D6000C816F75E014F8BEBDD3430E7009F05BD59DE07A6
          8ABA5C701C2CA76EBE6CB4FD90AAB00E1C151FA955A61A94D1C89E1175EF83F7
          58BE1994B88CA4253827FC959AAD3AE1D0CFF019295DD8E1202E9194356038CB
          CA0D7575B4D5B2574C4E015DD87F6670BE281789C129B9D13238251DF89B67A9
          EB2ECA5D2DF5DD8CEB51A2BCD45CE236602CCB3FF1EBA55C045F583AA9E06F89
          A5EE13512E73E8BA946AF19E3BA952D707384C3CF8BC43C90BB98C61BA20356B
          7FB0EE7BF014F81D5C6647730DDF57CEF2391AD2194B1FD2AAA7481DACA065AA
          C6ADA388C9B58EBAA68C3E358EFA4C7E447DC0FBCB68EDEA990C9FD6D68B95A5
          51F8B0DA80BA4B0183F3987ED54778FFE742EFFBF95C6BBDD487A218A0EF35AC
          EC9186E4D340B41C0B68A8BE68057567B3E1703D2ECB7EA651332CED9553FE0E
          AC36E2B0295FD3CD29C94AA513D5C940D00C6E64C853F2305FD486169E63586A
          31D3AEB779FD117852B8973EFCC03A4B3F7F83B3205DD9832FD2F44B01D96E86
          189C4CC57AB23CD9D2661C7F1B8BC169C9D26EC42117755BFF5F4B9691C52E75
          0EE53E2D2285ABEE2A5D932967BD2815FE94E1226C72998EFC9AB8F73AA81271
          B85CD4D53077D44B66CEF042EAA34B6ED26A972A0CA311F5A3DCD1A894F9611E
          63E8B7A2EE1AE36721D52164CC5A88FA3D9089C4671126EE56FDA1A98647CF0E
          18A0C7D90E05D407F9D1CAA0D45E484F7EA492933E93532D39DEFF2F0F8AF251
          9FCAAADDCBD0088D95AF7BC188DD5A9A8049CC21DB5AEAEF0313E9A282A4AF70
          7B5B745458C65FE572FA3B1ACEA5AF7B894BB95CD4A5D19295F22FA05E4B473E
          1E7CC37DC866FA499BB4E0A1800E791774B29029ACF9B091CBE904E14FCB0BB3
          999ECDB164D82ADD7A8211286C0991BAAD94777416C389DAE40B9FB55E78FA01
          46C3C611DC4196A5AEB5F00E7E80A5CAE7A788B39D4D66E09F2ECA4B8CC6AAC1
          4AE3DE41CEB627429A9405FCFD0B7C6AD45531C597B2C2C8E8B9D31A797DFF72
          9E7B8F7C6E5EFA187A56CA0F4AE1C668389DB04E42BF0477815FC1734C0AB4AC
          A6EB48E71EF87123ACCE63C2AB64AB4C5C6D270B6A66EE65F90D76D690325ACC
          DE15663A3541B95D3E439BC7D3ACE2061C5C91B1B40566C2EB3B8EC872C52067
          50FFD2933CB85719C3B54CE2C63DAAECF800E84105D79B9E6322854A4472B9C9
          9A6D6CC816C79ABEAB84A03395DFE3DEA584DBC5C931CEA8EA67080D6D07CF0D
          75069F6BB1F2980F306781D72C49E53A6635BBE84BC3C26FAA0F7A802B31D892
          E67F00A6D130927204DC91672A1302F2C67A11975DC96F887E7377B2CFA865BC
          1CC1F3987E0151C63C45F88A7EB53A96CE5212FC1BA2330F81DAF13C318D3317
          E6FEF917468D03F176F08F000300738F37A3223655CA0000000049454E44AE42
          6082}
        Transparent = True
        TabOrder = 1
        OnClick = btARRUMACODPRODUTOClick
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
        Layout = blGlyphLeftAdjusted
      end
    end
    object PageSheet6: TPageSheet
      Left = 0
      Top = 21
      Width = 695
      Height = 402
      Caption = 'Cor/Logo'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 8
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object rTabelaCor: TRzColorPicker
        Left = 209
        Top = 13
        Width = 144
        Height = 137
        ButtonColor = 9229030
        CustomColorCaption = 'Mais Cores...'
        DefaultColor = 16381943
        DefaultColorCaption = 'Cor Padr'#227'o'
        ShowCustomColor = True
        ShowDefaultColor = True
        BorderOuter = fsFlat
        FlatColor = 11775403
        TabOrder = 4
      end
      object GroupBox26: TGroupBox
        Left = 8
        Top = 8
        Width = 197
        Height = 101
        Caption = 'Ramo de Atividade'
        TabOrder = 0
        object rCorComercio: TRadioButton
          Left = 8
          Top = 16
          Width = 113
          Height = 17
          Caption = 'Padr'#227'o'
          TabOrder = 0
        end
        object rCorMercado: TRadioButton
          Left = 8
          Top = 32
          Width = 113
          Height = 17
          Caption = 'Supermercado'
          TabOrder = 1
        end
        object rCorAuto: TRadioButton
          Left = 8
          Top = 48
          Width = 113
          Height = 17
          Caption = 'Auto Pe'#231'as'
          TabOrder = 2
        end
        object rCorFarmacia: TRadioButton
          Left = 8
          Top = 64
          Width = 113
          Height = 17
          Caption = 'Farm'#225'cia'
          TabOrder = 3
        end
        object rCorPosto: TRadioButton
          Left = 8
          Top = 81
          Width = 137
          Height = 17
          Caption = 'Posto de Combust'#237'vel'
          TabOrder = 4
        end
      end
      object bPadrao: TAdvGlowButton
        Left = 8
        Top = 127
        Width = 197
        Height = 48
        Caption = 'Cor e Logomarca Padr'#227'o'
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
        OfficeHint.Picture.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000467414D410000AFC837058AE90000001974455874536F6674776172
          650041646F626520496D616765526561647971C9653C000002B64944415478DA
          62FCFFFF3F030CB8D61D4AE0E4638F6662647006721981F007C37F4686BF7FFF
          B0BF7FFB7FDA914EEB1C06340010408CC80678B51FFDB538C798950968024C18
          44BFFEF28B61D9990F0CCFEEFFF87EFBD62DC18353BC7FC2F400041013B269CC
          CC4C7F58999918EEBF676178F08199E1F65B46866BAF18181445B919024CA418
          1455393859F8B8E723EB0108201403FE839C0D1564626484E3E7EFBE33C8F3FC
          6648B514666066650E45D603104070039A9A9A38814630819CCCC20CC28C0CCC
          40AF80E83B40979C7CF487819D9599819185F15F626222274C1F400031413527
          03A95740EBD9405E67616402BB8215A89905E802763666060E20FE0F1405BA88
          EDE7CF9FAF424242407A1800028809A8D9555252728EB7B7370F131313C33F50
          C83242BCC0088C019021AC2C4C0C6CCCCC603926266686ACAC2C1E4545C5391E
          1E1EAE0001C40214EBB5B0B06010131363D0FF34956142E736065C6017101B03
          B1AA6A3643404000C3A3478FA6030410C800752D2D2DB0023F3F3F0675757506
          7CE0CA952B0C22222260BC66CD1A25800062F9FBF72F1B1083251F3C78009678
          F3E60D56CD20B9BB77EF32181B1B83F91F3F7E64040820963F7FFE30DCBB770F
          2C00D2080C20862F5FBE603580878787E1F5EBD770F5201A2080587EFFFECDF0
          E4C913B0C0B76FDF184006FEFAF50BAB0120B9AF5FBFC2D5830C030820B00130
          0D1C1C1C0C6BD7AE05B37FFCF80156FCF9F3679053C11894EC757474E0EA417A
          01028805C8F9F7E9D327263E3E3EB01734B5F5188445C4B0BAE0F5AB170C2D4D
          F50CEEEEEE0CCF9E3D63F8F7EF1F034000B100FD3C67DBB66D9640D374396DF3
          194ABD8D18BEFD02276B867F401BFFFEFDCFF01B18C87F818A2D2D4C1976BE92
          62C8CF8F05B9E61250C94A800042C98D49D34EFE656106A6A6FF28F9034E3202
          13D79F3FFFFECDCB366786C90304180072C1114B15D29D760000000049454E44
          AE426082}
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
          702E6969643A3535374642384139453238333131453238433430383042393746
          3836434632412220786D704D4D3A446F63756D656E7449443D22786D702E6469
          643A353537464238414145323833313145323843343038304239374638364346
          3241223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
          7374616E636549443D22786D702E6969643A3535374642384137453238333131
          453238433430383042393746383643463241222073745265663A646F63756D65
          6E7449443D22786D702E6469643A353537464238413845323833313145323843
          3430383042393746383643463241222F3E203C2F7264663A4465736372697074
          696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
          7061636B657420656E643D2272223F3E1D72244A0000054A4944415478DAB498
          0B6C9D6318C74F8F76BA2A2BB51BB5D89222B3886975A56CE2D22548884BB2AD
          8C204863248C1173CB8829B11089CDE67E8F4B662E654DB69AACE8562CEB5CA6
          AE9D9929A55D2FDBDAD5FF91DF274F3E3DE7F45CFA24BF7CE7BB9CEF7DBEE77D
          DEE7F26645567E174943C68B327192281223B9DE23B68B06B141FC92EA00D929
          FC67A23847CC1493C5A404CFFF28BE12ABC53BA22599C1B292B0E071E26A71A1
          1817BAD72BFEC472112C7988C80D3DF7BB7853AC101B33A5608E982F6E1285EE
          BA59E543D124EC256D6217F70E10A3B1768938850F0CA4432C1135A23B1D058F
          164F8A0A77ED5DF104FED53644EB1F2CA6896BC4F9EEBAF9E715A2391505CBC5
          AB6202E79F8B07C46B625F1A0BCB14BC8DC565B243CC6236FE27D138CABDEE94
          7B4E54A2703ACA99AC1467310B11FCD9DE7BDA50153C56BC250EE77CA1B82C89
          E91C8A7430DD37F2C163593C25891434E77E4A8CE17C81B82F327CB28490D58F
          9F3ECB31661C5CE47C6339ABCC87993CB1270545B2C47E84A29FDD3B2AB0A619
          E22166EF7E71ED608BC4FC6E0D31AC119FB0B876205F5A35485C4B562C0CCD11
          6F737C9E599C27A630ED7BF1F7FAB005E7BB5475B30BBAB78A2BF9FD93181167
          710D260358D0A6EE3D949BCB0CFDCD751BF7768C902F6E09140C2C7882F81485
          5F1497B8A9F94C1C2F1E64CAF767BA929128FFFB465C878FEFC528F564A73EB1
          142BDAC239D5626D60C1392867371E0FBDBC8B634B0656F2CBC4BC2A2CB74A5C
          857211C69E8B45EDD81065CA66F04003F8E9E973D9201D79459C8E316A487F97
          8ADDEE994D621DBFED7E7E949533998B7528155E819141AE2723E677D3C5E5C4
          BE9DC4D7C1A4CEA5D9A9D9E4C83C6251D330C4BAF719CC72EE23629B3823CEF3
          4D54471631CACD82C770A38D559A29B12AE803512CAAC562D14A601E1BA716B5
          38F91BBF8B4DC1024E2C88FE9121E52C23AD255D5E8FE56CD033C9548B9C6F87
          E52FA7474194E90D82684F06942BC08FFA50E4196AC799F8DD6CF16B9CFFF790
          5DFE2D7CA3A1C5104D53B92282710F15D052CAA8F3B87F812B1612A5C6FF0268
          B79B9674539905F34329D59611E72EE25E908B230902BDC5C083F8DD6D8EDACE
          49216C4FF45531C4D2532DCA198F9163C3692F9114F29126ED66C12D9CD8C523
          13E4546FF91C773E9A6ADBB24429BE372FC55998E0CABDAD512A972E062D8BF3
          C75EB2CED92851EEBABBC51CED03378B3BD3709312F2B695641F67B3C29A09D8
          56E6DC132304B4E3A7178B4E5ED04FBF3B9E22E0E9045D5AD61014AC745DE3A6
          6CAA8A352878A238D9E543FF523B4EC5D18330D148C9349B633CD91727F60552
          4A15134187EE209ABF44DF3B024BAC73BE96EBBAB16A3E2615F185C7C818CF54
          A3833DF7822F589B695A663185954CDD802BB14AC9A739283DC0CB8622BDB8C7
          749756C352413111F4DE8DE192BF84A06A2FFA0253EF62CA57857615D291B594
          5C3BDCB55C0AD7697C8CA5C4F5E192BF89DE632115F4320ACB06D2947DDD2816
          47B2A55794B1BE24BB84FDF551948BD02FAF8FB5B33082A90D0AD87BC51D91E1
          95052E4C6DA4A8ED8CD517EFC1CF5A5DD35E338CCADDE594DBC92C7526DA59F8
          9E9AADC575786FB86D904CC83822C7DD9C6FA3A0D832D4BD99CD541E5B5D1552
          4783934E419143335447EC34F981F77F92CCE651A064250580C951F4B2AB19A4
          2809C50E2384D5B2BD3185EBF58CB121DD1DD61B08E447B86BD61E7CC4EA6FA1
          0AEE20E3E4139626D173CF60333310CB440F1335FA33B5053C910554151ACC97
          EA5D2898E75A092FADB49F2B9CFB646C8F3A9031C4C57369B88AE3A42EEB79BF
          155FD3DDD5C6A93733A6A09751F4D565F8682E16DC8D851A5999EDA90EF08F00
          03009DBF4E99D363247F0000000049454E44AE426082}
        Transparent = True
        TabOrder = 1
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
      object RzGroupBox8: TRzGroupBox
        Left = 366
        Top = 10
        Width = 296
        Height = 337
        Caption = 'Imagem |  Formato 350 X 285'
        TabOrder = 3
        object pImagemLogo: TImage
          Left = 5
          Top = 15
          Width = 285
          Height = 275
          Align = alCustom
        end
        object RzPanel1: TRzPanel
          Left = 1
          Top = 295
          Width = 294
          Height = 41
          Align = alBottom
          BorderOuter = fsNone
          Color = clWhite
          TabOrder = 0
          VisualStyle = vsGradient
          object bincluir: TAdvGlowButton
            Left = 62
            Top = 2
            Width = 87
            Height = 39
            Caption = '| Incluir'
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
          object bexcluir: TAdvGlowButton
            Left = 155
            Top = 1
            Width = 90
            Height = 40
            Caption = '| Excluir'
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
            TabOrder = 1
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
        end
      end
      object DBCheckBox23: TDBCheckBox
        Left = 8
        Top = 109
        Width = 196
        Height = 17
        Caption = 'Visualiza Mensagem p/ o Cliente'
        DataField = 'VISUALIZA_MENSAGEM'
        DataSource = dsconfig
        ParentShowHint = False
        ShowHint = False
        TabOrder = 2
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
    object PageSheet9: TPageSheet
      Left = 0
      Top = 21
      Width = 695
      Height = 402
      Caption = 'FTP'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 9
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object RzGroupBox3: TRzGroupBox
        Left = 8
        Top = 6
        Width = 653
        Height = 179
        Caption = 'Conex'#227'o'
        TabOrder = 0
        object Label56: TLabel
          Left = 8
          Top = 19
          Width = 22
          Height = 13
          Caption = 'FTP:'
        end
        object Label58: TLabel
          Left = 7
          Top = 69
          Width = 40
          Height = 13
          Caption = 'Usu'#225'rio:'
        end
        object Label59: TLabel
          Left = 8
          Top = 92
          Width = 34
          Height = 13
          Caption = 'Senha:'
        end
        object Label60: TLabel
          Left = 204
          Top = 67
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'Atualiza'#231#227'o :'
        end
        object Label62: TLabel
          Left = 8
          Top = 139
          Width = 55
          Height = 13
          Caption = 'Mensagem:'
        end
        object Label68: TLabel
          Left = 8
          Top = 44
          Width = 30
          Height = 13
          Caption = 'Porta:'
        end
        object Label69: TLabel
          Left = 223
          Top = 43
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Caption = 'Passivo :'
        end
        object Label70: TLabel
          Left = 228
          Top = 92
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Chave :'
        end
        object Label71: TLabel
          Left = 216
          Top = 116
          Width = 50
          Height = 13
          Alignment = taRightJustify
          Caption = 'Farmacia :'
        end
        object eftp: TRzEdit
          Left = 68
          Top = 16
          Width = 576
          Height = 21
          CharCase = ecLowerCase
          TabOrder = 0
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object eusuario: TRzEdit
          Left = 68
          Top = 64
          Width = 130
          Height = 21
          CharCase = ecLowerCase
          TabOrder = 3
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object esenha: TRzEdit
          Left = 68
          Top = 88
          Width = 72
          Height = 21
          Text = '**********'
          Enabled = False
          TabOrder = 4
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object emensagem: TRzEdit
          Left = 68
          Top = 136
          Width = 577
          Height = 21
          TabOrder = 8
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object eporta: TRzEdit
          Left = 68
          Top = 40
          Width = 43
          Height = 21
          TabOrder = 1
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object epassivo: TRzComboBox
          Left = 268
          Top = 40
          Width = 45
          Height = 21
          TabOrder = 2
          OnKeyPress = enovadata_inventarioKeyPress
          Items.Strings = (
            'S'
            'N')
          Values.Strings = (
            'S'
            'N')
        end
        object esalvars: TDirectoryEdit
          Left = 268
          Top = 64
          Width = 377
          Height = 21
          CharCase = ecUpperCase
          NumGlyphs = 1
          TabOrder = 5
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object esalvarc: TDirectoryEdit
          Left = 268
          Top = 88
          Width = 377
          Height = 21
          CharCase = ecUpperCase
          NumGlyphs = 1
          TabOrder = 6
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object esalvarf: TDirectoryEdit
          Left = 268
          Top = 112
          Width = 377
          Height = 21
          CharCase = ecUpperCase
          NumGlyphs = 1
          TabOrder = 7
          OnKeyPress = enovadata_inventarioKeyPress
        end
      end
      object RzGroupBox4: TRzGroupBox
        Left = 8
        Top = 189
        Width = 313
        Height = 149
        Caption = 'Configura'#231#227'o do Servidor Proxy'
        TabOrder = 1
        object Label63: TLabel
          Left = 7
          Top = 19
          Width = 26
          Height = 13
          Caption = 'Host:'
        end
        object Label64: TLabel
          Left = 8
          Top = 44
          Width = 50
          Height = 13
          Caption = 'Password:'
        end
        object Label65: TLabel
          Left = 8
          Top = 68
          Width = 53
          Height = 13
          Caption = 'UserName:'
        end
        object Label66: TLabel
          Left = 8
          Top = 93
          Width = 24
          Height = 13
          Caption = 'Port:'
        end
        object Label67: TLabel
          Left = 8
          Top = 115
          Width = 56
          Height = 13
          Caption = 'ProxyType:'
        end
        object eproxy_host: TRzEdit
          Left = 68
          Top = 16
          Width = 128
          Height = 21
          TabOrder = 0
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object eproxy_Password: TRzEdit
          Left = 68
          Top = 40
          Width = 128
          Height = 21
          TabOrder = 1
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object eproxy_username: TRzEdit
          Left = 68
          Top = 64
          Width = 128
          Height = 21
          TabOrder = 2
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object eproxy_port: TRzEdit
          Left = 68
          Top = 88
          Width = 61
          Height = 21
          TabOrder = 3
          OnKeyPress = enovadata_inventarioKeyPress
        end
        object eproxy_tipo: TRzComboBox
          Left = 68
          Top = 112
          Width = 237
          Height = 21
          TabOrder = 4
          OnExit = eproxy_tipoExit
          OnKeyPress = enovadata_inventarioKeyPress
          Items.Strings = (
            'fpcmNone'
            'fpcmHttpProxyWithFtp'#13#10#10
            'fpcmOpen'
            'fpcmSite'
            'fpcmTransparent'
            'fpcmUserPass'
            'fpcmUserSite')
          Values.Strings = (
            'fpcmNone'
            'fpcmHttpProxyWithFtp'#13#10#10
            'fpcmOpen'
            'fpcmSite'
            'fpcmTransparent'
            'fpcmUserPass'
            'fpcmUserSite')
        end
      end
      object RzGroupBox5: TRzGroupBox
        Left = 327
        Top = 189
        Width = 334
        Height = 149
        Caption = 'Observa'#231#245'es'
        TabOrder = 2
        object RichEdit1: TRichEdit
          Left = 1
          Top = 14
          Width = 332
          Height = 134
          Align = alClient
          BorderStyle = bsNone
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Lines.Strings = (
            '  Em todo  o  cliente  que usa  banda  larga provavelmente '
            '  existir'#225' um servidor proxy.'
            '  Para configura-lo basta abrir o navegador, v'#225'  no  menu'
            '  Op'#231#245'es - Op'#231#245'es da Internet - Conex'#245'es - Configura'#231#227'o'
            '  de  rede.  Se estiver preenchido, anote a numera'#231#227'o e a'
            '  porta e coloque aqui ou contacte o administrador de sua '
            '  rede.')
          ParentFont = False
          TabOrder = 0
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 426
    Width = 695
    Height = 43
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object bcancelar: TAdvGlowButton
      Left = 229
      Top = 8
      Width = 124
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
      TabOrder = 0
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
    object baplicar: TAdvGlowButton
      Left = 118
      Top = 8
      Width = 107
      Height = 32
      Caption = 'F4 | Aplicar'
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
        F8000000097048597300000EC400000EC401952B0E1B00000398494441544889
        95955F6C537514C73FE7D7DB966DBA819411D8A63302710BF8E214D882307991
        B45117C7BA0189894F1A5F7CC0B0B8A4B5439C7F6262449F7C73E056993CDDC5
        E034A8D942E2DC1283D1646EC148647F0888E2186CED3D3E346D2E5DEF3ACE4B
        6FCF3DE7FB3DDF737EF7FC4455F1B2705FA206681523FBD5D1ED62E401755481
        6BC0453132A48E7E39D8119FF6C2904204E1BE44B518794B1D6D07026244D451
        CDFEE69233FF1780CFC448DC8EC6668B124492DD2DC0A7C07A4F69856D0678D1
        8EC6BEF6248824BB5F51474F02C65D6D1105EE9845E0A5C18EF8E96504E1BEC4
        B362E4AC3A6A3C925743A0C0921879C68EC6CEE70822C9EE8DC04560C33DB6C5
        CB2E038FD9D1D80D0B401D7D130889110A54545481DFB2280F94CAB55BFF66E3
        6BD4D14EA053C2FD894A75F41250E221794502BFF169E7EE56AACB43D2F55DAF
        5E9DFF271BFF37F0B0053C2F464ADD492B3DBB7D7EE3A3B3F1A0ECACDA06C0F1
        7D47A4EB7C2FD76FDF448CAC030E58C0D32B55EDA5206059BCD1D8260D9BB7A8
        AA2222B2B1AC421FAAD8C0F5DB37B371CD16509F3F219FCF10D9D2C05753E32C
        A652CB2618B4FC7436B6F244D556B2A77031BDC43B23038C4F4F212627B2DE02
        42EE64CBE7E3B5279FA3B97607DB2B6B79EFC259524E3AF73E605919F0CD5B73
        BE9493A66764801FFF9AC8AF256401EAEEEBAB0D6169AEDD014063759D1CDBDD
        CABB1706489116BFF1D1D5D4260D2EF0C5744A7A46CEF0D3CC64A199A905CCA9
        A39BB2CE6F2EFDAC4D35F594F983A2AABAAB6A1BAFEF6A918F466D3DBAB3451E
        DF94E9B90B5C47AFFCEE35BF3909F7277A81236E5D75A11A124F1DA2D41FCCF9
        6EDC99676DB0CC5D392786938CCD4C2D9B91CB3EB1802175F4B09BF9D7B93F89
        FFF0B9C4F7B46B997F0D222215815225F3E56B06FC0BC667A7563C75C09084FB
        136BD5D13F80F2FCA0BA508DC6F7B4735FA0445455454416528BDA337C86B1E9
        C962C77A067824BB8BDE078E16D2F8E8FA6A127B0F53E60FB2944E717C38C9F8
        CA6DC95A971D8DBD9DDD4527803631F2607E45BF5DBD4CECFBD3D2D574504F8E
        DA327665B2D836458C4CA8A31FC2DDEB7AAF1839A78E060A259758415D48DD59
        CDBA9E1723FBEC686CEC2E028048B2FB05E014B066353D2860FF01AD7634762E
        5744FE9519EE4B3401A7C448ED3D5E3813EAE8A1C18EF8B81BCFEBD22F1723C7
        D4D19781754508E6808FC5C8077634762B1FAB2041D622C9EEFB8103C07E324B
        B112506016F805F81638674763F35E18FF030C7C3FBBFB7D363F000000004945
        4E44AE426082}
      Transparent = True
      TabOrder = 1
      OnClick = baplicarClick
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
      Left = 5
      Top = 8
      Width = 107
      Height = 32
      Caption = 'F3 | Gravar'
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
      TabOrder = 2
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
  end
  object dsemitente: TDataSource
    DataSet = frmmodulo.qremitente
    Left = 116
    Top = 711
  end
  object dsconfig: TDataSource
    DataSet = frmmodulo.qrconfig
    Left = 620
    Top = 311
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 145
    Top = 713
  end
  object pop1: TPopupMenu
    Left = 348
    Top = 371
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 114
      OnClick = Gravar1Click
    end
    object Aplicar1: TMenuItem
      Caption = 'Aplicar'
      ShortCut = 115
      OnClick = Aplicar1Click
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = Cancelar1Click
    end
  end
  object QUERY: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 464
    Top = 376
  end
  object qrreceber: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 520
    Top = 373
  end
  object qrvenda: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 424
    Top = 373
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 584
    Top = 373
  end
  object qrmov: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 544
    Top = 285
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 272
    Top = 368
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.PathSalvar = 'C:\icloud\SERVER\nfe\'
    Configuracoes.Geral.ExibirErroSchema = True
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.RetirarAcentos = True
    Configuracoes.Geral.ValidarDigest = False
    Configuracoes.WebServices.UF = 'AL'
    Configuracoes.WebServices.AguardarConsultaRet = 15000
    Configuracoes.WebServices.IntervaloTentativas = 1000
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    Configuracoes.Arquivos.Salvar = True
    Configuracoes.Arquivos.PastaMensal = True
    Configuracoes.Arquivos.AdicionarLiteral = True
    Configuracoes.Arquivos.EmissaoPathNFe = True
    Configuracoes.Arquivos.PathNFe = 'C:\icloud\SERVER\nfe'
    Configuracoes.Arquivos.PathCan = 'C:\icloud\SERVER\nfe'
    Configuracoes.Arquivos.PathInu = 'C:\icloud\SERVER\nfe'
    Configuracoes.Arquivos.PathDPEC = 'C:\icloud\SERVER\nfe'
    Left = 363
    Top = 265
  end
  object qrestoque: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 456
    Top = 285
  end
end
