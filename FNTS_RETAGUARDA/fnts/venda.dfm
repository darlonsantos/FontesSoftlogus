object frmvenda: Tfrmvenda
  Left = 468
  Top = 181
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Pedido de Venda'
  ClientHeight = 424
  ClientWidth = 804
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pficha: TPanel
    Left = 0
    Top = 0
    Width = 804
    Height = 424
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object Bevel4: TBevel
      Left = 0
      Top = 66
      Width = 804
      Height = 3
      Align = alTop
      ExplicitWidth = 794
    end
    object Bevel10: TBevel
      Left = 0
      Top = 317
      Width = 804
      Height = 5
      Align = alBottom
      ExplicitTop = 314
      ExplicitWidth = 794
    end
    object FlatPanel57: TFlatPanel
      Left = 0
      Top = 322
      Width = 804
      Height = 102
      ParentColor = True
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      Align = alBottom
      TabOrder = 0
      object Bevel2: TBevel
        Left = 1
        Top = 50
        Width = 802
        Height = 3
        Align = alTop
        ExplicitWidth = 792
      end
      object Panel3: TPanel
        Left = 1
        Top = 53
        Width = 802
        Height = 48
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object bfinalizar: TAdvGlowButton
          Left = 271
          Top = 1
          Width = 107
          Height = 32
          Caption = 'F5 | Concluir'
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
          OnClick = bfinalizarClick
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
          Left = 389
          Top = -1
          Width = 108
          Height = 32
          Caption = 'F9 | Cancelar'
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
        object AdvGlowButton1: TAdvGlowButton
          Left = 2
          Top = 1
          Width = 124
          Height = 32
          Caption = 'F6 | Or'#231'amentos'
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
            F8000000097048597300000EC400000EC401952B0E1B000001A9494441544889
            D595B14AC3501885BF2B15D1A13E40377D00E3240E2D42715008682D4E790097
            A4A37D84AC4D26F72E428D62D7648983E0E2F5115CDC44DC9CFA3B68AA6D6C9B
            C43A78207093CB7FCEF9FF93E42A1101A0D6EE7F2CE680D83555B22ECD8B7412
            4A00BEEF0F62D7268A2200EAF57A21B25ABBFFB3C05FA20460DBF6429241EC9A
            C3CD6EB79B89C4B2ACE902450AB32295411445C30CFE4F0773CEE0252590B130
            0BEE81DD9440DE0C26083F007BB16B3E1BAD400074A7A110113CCF1B88888461
            2861184A01DC8BC8AA88905C1BCE856C38175F0FAAA7D7523DBDFE157942FA5D
            646A061942D6C08E6559AFC958008C5620BAD350BAD3504A44F07D7F60DBB6CA
            F92FD2C00E30423EDCEC3414CC788BA674F0A3F3717200357E1E7CFF0E8A382F
            2F2F5662D77C4AEEF37630D5797979B102DC00EB231D64CC60D6CC2BB576FF06
            582B72A23D02FBC0ABE1F40E500B29F24FE76BE385A90C26E02876CDC0707AB7
            DA6B6E7F8A5CC2C85886E4793BB803AE3EECA82DA31588F69ACA707A87E595A5
            BB49CE531DCCC2662B3817E4187843446BAFB99DA52ECF995C45E44C7BCD931C
            35BC03D4D16F3DA52913E70000000049454E44AE426082}
          Transparent = True
          TabOrder = 2
          OnClick = O1Click
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
        Left = 1
        Top = 1
        Width = 802
        Height = 49
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object Bevel1: TBevel
          Left = 384
          Top = 2
          Width = 2
          Height = 44
        end
        object bincluir: TAdvGlowButton
          Left = 2
          Top = -1
          Width = 124
          Height = 48
          Caption = 'F2 | Incluir Item'
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
        object bitbtn1: TAdvGlowButton
          Left = 132
          Top = -1
          Width = 124
          Height = 48
          Caption = 'F3 | Devolu'#231#227'o'
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
            F8000000097048597300000EC400000EC401952B0E1B00000209494441544889
            D595BF6B136118C7BF0FBCA4F18AA61D0A4DA78AD8A5D8ED9644534A05151C62
            401C3BB818210EC1A57F810E2583C299A5FF429AA174D241C11B3CB7822E8205
            87572C7A26C1BBA6913E0EDE7BF7DE25A25C8CE0B3DCC3F3799FE7FBFEB8F779
            8999B1BAB9FB0D808111F6FCC1751A878BE06B303303001191EE8FCB9500CE2F
            E4B07DAFA412E8F6A3177827BB18978702A5E5798266A5E5F95881B45C683166
            667D89B184B45C60C21609507466444443F34BC923014E2C91132552F27FB845
            1317F8EFCFA0E70F548243441737D6978E37D697149EEBF9832C800F6A863D7F
            10ABAFE5C73805CD8E83CBE110D165AFFFBDAB271B53E20C333F0560267B4DD0
            EC588F8DEC45005ECF4C67AE49D78F15771A655ADDDC7D05C0CCCF1AA814CEA2
            65BF27E97A48188DE24AC09999CE5C95AEFF59DF55634AE402DFCCCF1A787CA7
            80C3CE11D656F2A8356D7CFCEA87837FC505009C9CF015E9FA5FF4E9DCBF7121
            7BEBD2B963E067CF57F19B0F9F9DB6AAC56EA5B0086BEF6D38BE5258C461E708
            779FBC84552D427161D6DB0240AC38006CEDECF7B776F69361388D327DEAF868
            D907B178CB3EC0DACA02AC6A1173B96CC80580C15095DF58AD6943BA1EA2F706
            90AE875AD356671072E134CA64D6DB7D00993F1590AEC781AB143C00A7A4EBC1
            DA7B13FE450088946FD6DBAC17711AE5E45D4D6514894D4624263009912181BF
            2DF203ECD06859D42A91450000000049454E44AE426082}
          Transparent = True
          TabOrder = 1
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
        object bexcluir: TAdvGlowButton
          Left = 260
          Top = -1
          Width = 122
          Height = 48
          Caption = 'F4 | Excluir Item'
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
        object Panel4: TPanel
          Left = 409
          Top = 0
          Width = 393
          Height = 49
          Align = alRight
          BevelOuter = bvNone
          Color = clWhite
          Enabled = False
          ParentBackground = False
          TabOrder = 3
          object Label25: TLabel
            Left = -4
            Top = 3
            Width = 125
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Quantidade de Itens:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label26: TLabel
            Left = -4
            Top = 27
            Width = 125
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Quantidade de Produtos:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label24: TLabel
            Left = 263
            Top = 1
            Width = 106
            Height = 13
            Caption = 'Total dos Produtos'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Bevel3: TBevel
            Left = 223
            Top = 2
            Width = 2
            Height = 44
          end
          object ritem: TRxCalcEdit
            Left = 129
            Top = 1
            Width = 80
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            AutoSize = False
            DisplayFormat = '###,###,##0'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ButtonWidth = 0
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 0
          end
          object rqtde: TRxCalcEdit
            Left = 129
            Top = 24
            Width = 80
            Height = 21
            Margins.Left = 5
            Margins.Top = 1
            AutoSize = False
            DisplayFormat = '###,###,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ButtonWidth = 0
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 1
          end
          object rtotal: TRxCalcEdit
            Left = 235
            Top = 15
            Width = 150
            Height = 29
            Margins.Left = 7
            Margins.Top = 1
            AutoSize = False
            DisplayFormat = '###,###,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = []
            ButtonWidth = 0
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 2
          end
        end
      end
    end
    object wwDBGrid1: TwwDBGrid
      Left = 0
      Top = 69
      Width = 804
      Height = 248
      Selected.Strings = (
        'ITEM'#9'4'#9'Item'#9#9
        'CODPRODUTO'#9'6'#9'C'#243'digo'#9#9
        'PRODUTO'#9'36'#9'Produto'#9#9
        'CST'#9'4'#9'CST'#9#9
        'NUMERACAO'#9'4'#9'Un.'#9#9
        'SERIAL'#9'20'#9'N'#250'mero de S'#233'rie'#9#9
        'QTDE'#9'10'#9'Quantidade'#9#9
        'UNITARIO'#9'9'#9'Unit'#225'rio'#9#9
        'TOTAL'#9'10'#9'Total'#9#9
        'ALIQUOTA'#9'8'#9'ICMS'#9#9
        'mix'#9'6'#9'MIX'#9#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = clWhite
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      BorderStyle = bsNone
      Color = clWhite
      Ctl3D = True
      DataSource = dsvenda_produto
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentCtl3D = False
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
      OnDblClick = wwDBGrid1DblClick
      PaintOptions.AlternatingRowColor = 16316664
      PaintOptions.ActiveRecordColor = clBlack
    end
    object Panel5: TPanel
      Left = 0
      Top = 0
      Width = 804
      Height = 66
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object Bevel6: TBevel
        Left = 112
        Top = 5
        Width = 65
        Height = 24
      end
      object Label4: TLabel
        Left = 64
        Top = 9
        Width = 41
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Venda:'
      end
      object lvenda_codigo: TLabel
        Left = 112
        Top = 9
        Width = 65
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 184
        Top = 9
        Width = 35
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Data:'
      end
      object Bevel7: TBevel
        Left = 224
        Top = 5
        Width = 77
        Height = 24
      end
      object lvenda_data: TLabel
        Left = 226
        Top = 10
        Width = 73
        Height = 18
        Alignment = taCenter
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 296
        Top = 9
        Width = 42
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Caixa:'
        Transparent = True
      end
      object Label6: TLabel
        Left = 176
        Top = 37
        Width = 57
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vendedor:'
        Transparent = True
      end
      object Bevel8: TBevel
        Left = 344
        Top = 5
        Width = 57
        Height = 24
      end
      object lcaixa_codigo: TLabel
        Left = 346
        Top = 9
        Width = 53
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = '000099'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Bevel9: TBevel
        Left = 240
        Top = 33
        Width = 161
        Height = 24
      end
      object lvendedor_codigo: TLabel
        Left = 253
        Top = 38
        Width = 40
        Height = 13
        AutoSize = False
        Caption = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lvendedor_nome: TLabel
        Left = 296
        Top = 38
        Width = 97
        Height = 13
        AutoSize = False
        Caption = 'NOME DO VENDEDOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Bevel11: TBevel
        Left = 408
        Top = 3
        Width = 2
        Height = 59
      end
      object Label2: TLabel
        Left = 446
        Top = 9
        Width = 55
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Cliente:'
      end
      object Bevel12: TBevel
        Left = 504
        Top = 5
        Width = 277
        Height = 20
      end
      object lcliente_codigo: TLabel
        Left = 503
        Top = 8
        Width = 53
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Caption = '000099'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lcliente_nome: TLabel
        Left = 560
        Top = 8
        Width = 218
        Height = 15
        AutoSize = False
        Caption = 'ANT'#212'NIO CARLOS DA CUNHA DE OLIVEIRA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 445
        Top = 28
        Width = 55
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Retirado:'
      end
      object Bevel13: TBevel
        Left = 504
        Top = 28
        Width = 277
        Height = 16
      end
      object Label7: TLabel
        Left = 445
        Top = 47
        Width = 55
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CPF/CNPJ:'
      end
      object Bevel14: TBevel
        Left = 504
        Top = 46
        Width = 145
        Height = 16
      end
      object Label8: TLabel
        Left = 653
        Top = 47
        Width = 44
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Limite:'
      end
      object Bevel15: TBevel
        Left = 704
        Top = 46
        Width = 77
        Height = 16
      end
      object lcliente_limite: TLabel
        Left = 708
        Top = 47
        Width = 69
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '10.000,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lcliente_cpf: TLabel
        Left = 509
        Top = 47
        Width = 128
        Height = 18
        AutoSize = False
        Caption = '00.000.000/0001-00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object LRETIRADO: TLabel
        Left = 509
        Top = 29
        Width = 212
        Height = 13
        AutoSize = False
        Caption = 'NOME DO VENDEDOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label10: TLabel
        Left = 64
        Top = 37
        Width = 41
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Cupom:'
      end
      object Bevel16: TBevel
        Left = 112
        Top = 33
        Width = 65
        Height = 24
      end
      object lvenda_cupom: TLabel
        Left = 112
        Top = 37
        Width = 65
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object AdvShapeButton1: TAdvShapeButton
        Left = 0
        Top = 0
        Width = 65
        Height = 65
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Picture.Data = {
          89504E470D0A1A0A0000000D4948445200000040000000400806000000AA6971
          DE0000153449444154789CED9A6B6C5CE779E77FE77ECE5C0F6738A44891E648
          9614EB3E56642B561630B5FD50A14551177BF996465A6057401AC436361BC141
          02BB085CC0C83A6D92058C045954D974B1D94DDBC8ED2251ECC6A6EBAB12CBA2
          65CBB26C511A89770E873343CEED5CDFFD7086B22851B2ECCACE87D5030C867C
          E79CF3BEFFDFFB3CCF7B392FDCB6DB76DB6EDB6DBB6DFFDF9AF4BB6EC0E38F3F
          3E2CCB32B22C170F1F3E5C9CFDEA57ECD0710A61AB5D5CFBA31F173FE9FA7F27
          00BEF18D6FD88944E2D11D3B763C74E1C2056AB5DAE5DFFEB43753CDE4D7D961
          A34ED876108E331A2C2E5685085F70CF8F55836A6D54785E71F0273F2DDE8AB6
          7CEA000E1F3E5C48A7D327F7EFDFCFF9F3E78B333333472B954A2D994C92C964
          EEBFFB2FBF336C0E0CA0AFE945EF5B83DEDB8B9ACDA0A452C89605421054AB04
          8B8B882018F52627AA61BD3EEACFCDD544108C00D5C19FFC74F466DBF3A90278
          F8E1870BB95CEEE43DF7DCC3EBAFBFFEF0238F3CF257575FF33FA0624A926D29
          0AA6A6615916662A8599C9A0F7E430D6F4A2F5F5A1AFE945CD6651D229E4580C
          49D308E64BF8F3653CE1F2DBFFF5B3E2C4C8CB7F72086E08E35303F0E52F7FB9
          D0DFDF7F72FBF6ED8C8C8C1C7CF2C9278F5CEFDA1F4001C84B5090614885BC02
          C33A602A0A96AA625A16563289D9D51581E9ED45EFEF431B1AE4D2F40473892C
          4BC964B1118F174BA5D2681886178510A38F3CF2C8C895757D2A000E1D3A5418
          1A1A3AB975EB567EFDEB5F1FFCDEF7BE77E4E33CE7079027FA0CCB30A444600A
          1AD8862C63290AD6403FEEB62D94BAD790FAFDDFE7EDF3E72FDFBF7BF76E4647
          478BAD56EBEE471F7DB40A9F028065F19B376FE699679E39F8D4534F1DB9D575
          FC006C22AF2900438981FE427D62AA0A1C2CFFC55F14C230CC0B21F2F178FC8B
          7D7D7DF9B367CFEE7BECB1C746E01306F0A52F7DA93030307072F3E6CDFCF297
          BF3CF8C31FFEF0C82759DF8DEC9BDFFCA60D3CAF695AC1F3BC75DFFAD6B78A00
          F22755E1430F3D5418181838B965CB169E79E6991B8A9F3CB627FF49B503E0EB
          5FFFBABD65CB96E72DCB2AB4DBED83CBE2E113F280AF7DED6B05DBB64F6EDBB6
          8D679F7DF6E0F7BFFFFD2357FE3E796C4F0178107840562D3B0CA15A6AD0AA87
          45A04894B96BC00850DD7DE8C44D0F6B57DBE1C387ED9D3B773E5F2C160BB55A
          EDE0134F3CB1A22DB71CC0A38F3E5A300CE3E4CE9D3B79EEB9E75664FBC9637B
          0E000F1A998D85F8D03ECC5437044BA0A741B168569608DC16F5A9F7F0DD26AD
          F238CDF90902B70911942AF042E77B1428EE3E74A278BDB67CF5AB5FB50B85C2
          F3972E5D2A542A9583DFFEF6B78F5C7DCD2D05F0C4134F14822038B96BD72E5E
          7CF1C5838F3FFEF8918E7B1F90B5D88366CF0E3B99DF87D29E84D95F4250012B
          05BDF78096E8B4480529099209B2095202248DA5D93902A749AB3C81B3348F5B
          2FB334F5DE72D5231D286F127950F1ADF9A1A232F8C0CF2726260AF3F3F307BF
          F39DEF5C23FE9600E8087C707C697DFEB9F7B73F70EFBDF772FCF8F183073EFB
          0F45E08B8A953D9018DA8795DD885C3A0EE5DF8068810A2812BE12839ECFA226
          321F5E99648264819C8840C95D04AE4BB352C55D2AE32E956996C7A957AB9C6D
          DEC7D8B4CB3AF9E5EAC6AE99A3C0453A5EB4FBD089915B0260F2D89EBCACC54E
          B6ECFDF64F7F15B077EF5EDC899F8C6CED7E1BB367E77062681FBA04EED8B384
          F36FD26EBB8484B8AE8F1FFAF8418899B1A1FB4E504DC2C0C76D36009015153D
          165F519F6A98A886B9A2CC4CA63B4A22284E90E585E316A74F5FE0FEBD36DB37
          D9B4E6C709DC164BD367099C16CDF238449E72F05F0AE0AFBBEF79E8C07BEF7A
          B418C068BD4E567F1D337737C1EC38FEC5D7F11B25F498866A28A8A68A1ED790
          351933AD83225D1B02AB98EFB4F15D674559E8FBB8ADC68AB2562BE0C5373732
          76A9CD3D9FB9C8B6759DDFE57427B40C90342439CEDCA9177117E7AAFF220073
          AFFCBB4A3AFF47F6E29B4FA36EDC4BF5D57F20661B688D12A606462C128B2C81
          42E713FDDD683978AEC7CCB48339B0753CD5DF33589D9CC74CE7C6EDFEF4A066
          98F85E80954ADE545B9AAD905F8DD8BC7B7681E1BD2DEEBB7795FB2495B02660
          E25D16631B197BF17FA37E54D193C7F6D8C003C08366CF76DB993E831ECFC0F9
          57C868153457418D29A8BA8224AFE41B048276B3CD7CA58D16D3E8E98F915363
          24EFBA734C89D983F5990A13274E8DA4D7ECFD42A35CE2C4CF9E61D3EF0DBF92
          CCE87BDBF516BE23CFA57AD33D563A896A1848B20240AB15F2C2AB6B78F7ECD4
          EAE22595A0D2C43FF75BC2F2799C96CB42FD37807AF30096939DACC50EC487F6
          D966763BCDF75FA37DEE9F91DA0BA89A82AAADFE38D7F369D71D666B1EDD3983
          AE3529244546D56520001856340DCD34B17B53E7E3991C64C0EE4E8DA473C96A
          2C63B338759AA933977EB5ED0FEEFB42A35CE2F4B197B0EF58F77676C3DA6DE3
          F5FD8C9E7A8BFB0A0BCEEEED09E3CABA432749E3D44B34C6DEC069B9788E4F32
          6D61682AB8370160F2D89E61A2B1FB01ABFF73285A2FD537FE91F9FFFBDF5135
          194555503565D57BDB2D974AD3A129606DCE24138B118F492083E30362E5F54B
          337324D7F400D0AC540148F5ADB10124592691D6DF48E4D67C01C0345EA3EF9E
          3D7F377671CBB67F1A798B9EE0C43FEFBAEB8E3D8D728999B145BA87B6E15F1C
          A5F6CEAB788E4F2265904C5B24D2268A2253754D986BAC0EA0E3E6078007636B
          3F978F0FED6369EC0C53BFF89FF8E5228AA6A0AAAB8B0E8210CFF5192F07CE60
          5235529918BAAC60C6241A2D11895E167EE5DF573FC775018ACE527DD8482668
          2D54C9AECFDBCB7062D941A62EA61EFCA791D37CC63ACEB6756E985ABBCB582A
          39E8FECB8CFFED77892723D1B1A481A248284A34F3F71C9FB9F91AA01E5901A0
          E3E68F2A56F703B1B57B6C35B999CAA917B9F8F457C06B46BDADAEBE7CF0DC80
          C50047F67CA32B6592EE4DBC6AE9F2B09024DAA12822C85F237C15F17A3CD601
          E0015C540D230FE0341A6CDAB1B58AB6112D6ED2DDEF93CCBBF6BF7F40A096FA
          88F76E1E7EEFE9BFC7BBF416F1B84CDF1D5D288A8C7C451EF21C9F46DBA5580E
          10666C64CF9F9D38A876841F00BE6864360E5BFD9FC36B99CCFEF618F36FFC57
          14454651E5CBF4AEB430040FD9711B9EA10702B5DF1E4DC6E27B2CA0294B0521
          3A6A05F60AF1CB26AE2590BD731D00AD280486145D03C0AD37C0D865BB4B2EC7
          9F3DC97BEF8C73FFCE29121B06A82F4C53796B045D15582915F9AAB67A8E4FDB
          F5911028A60E9689A2C83F0650278FEDF96B35B9FE40FAAE7F4BE5BDD39CFBE1
          93B8D5D988DE757A3B94241A5E885B6E610D769F4DE6CC1D66DB25D430442808
          858880095065F084B01112AACCAAEE2F2991C866A542E5E2F8FD5D4383CB302E
          46E555801124EDFED997FF861FFCACCABD9FDF4763E628E1CC9BC85E0B4596B9
          7A5EE7393E6DC727A64BC49206F194C5DC12C84A50058E02C88A953DD073DF9F
          3137FA1A33AFFD02BF555F553480EB0454161C5AB1DE97B4AE1829DB20619292
          0D65340C042214855062340C050851F404C802C28E58F91A0F88BEB4840D40E0
          7A97577DCD850AAAAEA7A3721720EF3B5EBEF6FE6FF8F3FF78279F6DFF18BD79
          119CE635EDF45C9FE6521BCFF5502D835CBF4DAA2F87A2C8CCD74380A3BB0F9D
          A802A841AB0CEE1906EFCB31F8F93F05C9C277A0313D436B6692C09571CA9750
          BAD3D427A650E72689EB8B037A3A46BBDA2074FDBCA2C646C23044F243423D4A
          846A280AA12240482BC47A814093A4EBE581EA72EF07AE871633F300811F67D3
          1FFDE7FCE2FB2709DB0D5A27FF8E2E45BAA6C77D37C0F103ACFE3558AD2A9816
          DD69155937A0DDA4DA0C717D01F0E3E57B568E02611DA8A3AA901E54480FDE11
          95CB775DB108498064E5DDEA34EDA971426781404C17FCA5F7C05B2450E57CD8
          0CA33008A922615FEEF92BBC211457C0B9C29AE54A2196ED02C0B0D7E7317611
          34DF60F2574FE22D965624B50F7A3C444EC6099B551229836CBE1FA61C165D99
          301448422001E5BA8068093D721980961C40040ED28D26C51D3004A5CB45BA05
          FAC6044839903F6B737702240BB73A6D4BB53954B782573B67E32CA0B5CA0461
          A7AB3B00FCABE6019DAC4FE07B3672177DF77E01676EA270EABFFD17BCC51292
          2C215FD548DF0B68354354193277A4D00D1FABAF9FA0348324409604229410B2
          86E378549B21C077AF7C86EA2D4D54EBA57376B2A7FF06043E1A18E209346908
          4BDE0A5282AC6411D6A6315A65684C22352790AA13203E58E0B4AA55B29BEE1B
          D6ED3D4CBCFA1AF3A3BFC6AD95906590AE12EE7901BE1B12483289A4869DD249
          D809BC761539DD8577610E27948919201495B05567FE83D476740500605FF5F4
          6B7FB9F07E7A383DB401599150CD389A69A159B18F0EE53A606413F45802BA37
          81BC8B4C144A64E5048455F4AE36EA85E739F5D42304ED2692B49AF010DF0DC0
          34889B324A2A4E520B912489D07511A140B82E424423AC24A211490A61E183E4
          575C0160EDFEE3A393C7F6FC49D85EA868B1188B1363BCFBF31770DB3277FF87
          3F24745BD42E2E90593F44B2BF0745D36F2918BFD562E1DC7916CEBC47F5C225
          1021D70C675E8866DB38B365ACB84666D33AC2D2049E2C218440EBE9A33D3B8D
          6A1884AE4B180A841008218111A7BA50C50D0078FAEA26C9006BF71FAF6A9A7C
          54111EBD9BEF6660470ECDA991C8F662A5D3944F9D64F447FF87C64289D2FB6F
          F3DBA77EC4999F3F4D75E222B5E94B2C4D4FE2B59A8830F87860AE63BE1FE20A
          9576C3C34AC5B1B316767F164D06210489BE4D112F2110A140CBF5E2CCCDE005
          A0C902CC18416D816A0B8876828EAC0AA0634FB7E7A7903583AE0DEB01A88D5D
          22B5763DB98D594CD5C73492F46DDD8565B834C6CEA1E81A4EADCCF95F3CCD3B
          3FFB1B4A6367997BFF34132FBF40E5EC199A95F2C702E3FB21F52517299122B7
          E54ED2598BEE0D792459424D24699566100274CB450881A4E991AB6B3A81E3A0
          750D2209018A86E3C352946A8EAE56D795008EB6CB5300C4FB8688E512CCBFF5
          0E9224935E9F470841ED7C114951B1F37DD072D114E8DEB095AE350972F9ECA8
          29EB247BFAC1AF112C2ED02C4D51BE788EE2737FCBF42BFF48A578967A6986FA
          DCD4AA603C37A0BEE8111F1A44D564BA7A6CA4560B598256691E210446264BE0
          38E85D199CF9A82C701C84A0F32D104E548E04C9B88AA54B10ED095E1FC0DAFD
          C7ABA1EF1D6997A730ECB5A4066D2A63173A4006316C93EAF9220089A13B10A1
          A039338BACEA68C90492900A66570A2BDD45AA378D215DC2EEB15973D70EE271
          414CA9A14A1EBEE330FBC6B32CBCF2534AA75EA27C698CA599B358F125420914
          55A2BB5B261ED7918583F0DB08015A3219897423B17A364BBB5C46EBCAE294CB
          28B1387EBD0EAA8E08C1B00C8CA089A248D83109E0FE0FF300580E0355A76BD3
          9DF8AD36A5B7CF60A47A897527289F3E038069E750933AF5C90900ACBE3574F7
          0E2279D158232420F4089B1500F4541A2BA113B324EC8121B20339327D69D2D9
          34993BD693E94BD2B72E4EAE3F4E2CAE617747C92DD12523FC16024150B914F5
          76BD127D37973A894E74DC3E02A1C763589A40554084E16A9AAF0F60EDFEE347
          DBE5E92A80BD7E235A5CA77AEE026A2C4D2A9F4308A89D2FA2253224FB6C929D
          8D102DDE4565F614ADD218008A955A59896AE1360202AF33F39135023740D1A3
          114535341459BADC6011469322429FC0F1B052264EBDE3099A1F2D22BD062204
          99C823E4D612C96C0A2D74083D97F00AF1417CE0E6004475BA479BB31731BAFA
          490D76517A3BEA757BC39D0821A88F4FA01809BA37AFC50FE7F016E751E35D20
          2984CE52F45023725777612612A459784E4018448D926415DFFDE07F1146F3F8
          A84721F4C2682C0F031A55075905DFF591558956B581100259E90C75812099EB
          02AF8DDF6AE17BDE0A3D7E08D5D97188DE287D380096C340D1E9DAB881F64285
          FAE43446AA87C21FDE4DC68E1297B01238AD459C8549B4581A1495A0BE00806A
          26692E86B80D1F00C54810B8015EAD1CDD8B84EF858820F208214404208C7EAD
          CD466EAFEAD1925A33659A55072BA5E1343C8CA44EABDA229649118BC7F09696
          F0DBEE3542E61B8233D301AE2F8E00D79C46591540140653D5D0F7E8D9B185DE
          7C376AAB869EEA65D15B60EADDE300E8E95E2445C55F2C216B16E8315A351FB7
          3A8F62C6093C41736632AA44D5F1BD10BFD58E044B32C10A0F10045E88E8AC17
          C22004018A16E502498E568FAA21E3343CAC5486785796D075A8CF57AE115577
          25C6CA12338B8C0421FB761F3A717079F9FBA1003A76341A0DFAC96DC930F3CE
          4BC89A89998BD60BEDD2387A228BA469B4CBF30068C96EDA351F6F6911458F83
          1EC539806226099108FC4E0828CB21B0EC01578540074CB3E22000A7E1452054
          9BEEF583B42B15EA337384FECA61B41D484C3754A61B72D10B39B8FBD0897D57
          AEFC56B3EBEE0AABB1B548FA20D6D67F83F3EE719054CCEC004BDABB34A6CE91
          D97E3F9EAF533F37456EAF8396CC229068CF97880FAE47D6E3F86E8DF6DC244A
          CC24F003DCCE713859D1AFF50037B8C20322109E138080AEF51B30BB9A38E532
          41BB8DAC4828CA07D3651F89455FA3192A55E0BBBB0F9D78EC46A26F06409EB0
          02814AB22F4EB2FF0F40B288F7DD8BF6AF77A2C67348AA4B327F37B211E22D35
          D1623692A6D09C9B250B68299BC01D4784A05A4950149C6AE48592AAE1BB0141
          BBB31A5CCE019D41220223E8BA7303A1566371B24CB314ED05445B5F9DDB9068
          A2D10C748862FCCFAFE7EA1F15C04A136D106D64054C1B601642C86CB99FCCB6
          E89D5EE8CCD1F77B5FE92C667CD45812215B34A6C6B1D6ACBDECE610ED01066E
          40BB3CD7D1BF9C042302811423B7751D8B732E4B97269065095959B9406A2B26
          AEA223908E020FDFE89CC0C701F0427DE2DC70DA88A3983758F98595E803C80A
          C47374768D2C92EB3F8FBDFD3F45AFC2FD1912EBFF15B215E50B090934F5724E
          102151080841E6331B49F47433F5EAF1D53741341D4FB710923C42D4E3231F47
          F8B25D771F68F2D89EC7803F56CC58418BDB68091BC3EE468DDBC8AAF6116BE9
          1C7A506C103EEE5209BFA9133A35120349AA6747307277513E739699E3BF2170
          1C6459BA0C409625244327346384AA5624EAF15517371FD53EF4ED70E72D5101
          18067602052D61E7B5781A2D61A3A7BB2FEFEA7E6493BBF09A0DAAE7DF67E6F5
          E3D4272791240949E20300AA0AC91442D3AA443DBEEA78FE71ED63BD1EEFBC41
          5A3E97773F306CD839D40E14239DBB71E85C61EE529DB953A7991D7D0B7771E9
          03009A8A9C4C80695589F6F1FEEAA326B89BB15B7646A873F26B19484156B542
          E421B91B86CE350014192591408EC741968E10F57AF156B5F36AFB440F4A76DE
          2C0FD3091DC58CE5B5B88D61E7D01269F474EE3280B9536FE3FB014A2A09B23C
          4214E71FFB78DCCDDAA77A5ABC934F86B9C2532459B503DF67B112D2AA874789
          2632239F66BB7EE7D60173DB6EDB6DBB6DB7EDB67DCAF6FF00F0B22941B4491B
          A80000000049454E44AE426082}
        ParentFont = False
        TabOrder = 1
        Version = '6.0.0.1'
      end
      object AdvShapeButton2: TAdvShapeButton
        Left = 411
        Top = 5
        Width = 34
        Height = 53
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Picture.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000000097048597300000B1300000B1301009A9C1800000A4D694343505068
          6F746F73686F70204943432070726F66696C65000078DA9D53775893F7163EDF
          F7650F5642D8F0B1976C81002223AC08C81059A21092006184101240C585880A
          561415119C4855C482D50A489D88E2A028B867418A885A8B555C38EE1FDCA7B5
          7D7AEFEDEDFBD7FBBCE79CE7FCCE79CF0F8011122691E6A26A003952853C3AD8
          1F8F4F48C4C9BD80021548E0042010E6CBC26705C50000F00379787E74B03FFC
          01AF6F00020070D52E2412C7E1FF83BA50265700209100E02212E70B01905200
          C82E54C81400C81800B053B3640A009400006C797C422200AA0D00ECF4493E05
          00D8A993DC1700D8A21CA908008D0100992847240240BB00605581522C02C0C2
          00A0AC40222E04C0AE018059B632470280BD0500768E58900F4060008099422C
          CC0020380200431E13CD03204C03A030D2BFE0A95F7085B8480100C0CB95CD97
          4BD23314B895D01A77F2F0E0E221E2C26CB142611729106609E4229C979B2313
          48E7034CCE0C00001AF9D1C1FE383F90E7E6E4E1E666E76CEFF4C5A2FE6BF06F
          223E21F1DFFEBC8C020400104ECFEFDA5FE5E5D60370C701B075BF6BA95B00DA
          560068DFF95D33DB09A05A0AD07AF98B7938FC401E9EA150C83C1D1C0A0B0BED
          2562A1BD30E38B3EFF33E16FE08B7EF6FC401EFEDB7AF000719A4099ADC0A383
          FD71616E76AE528EE7CB0442316EF7E723FEC7857FFD8E29D1E234B15C2C158A
          F15889B850224DC779B952914421C995E212E97F32F11F96FD0993770D00AC86
          4FC04EB607B5CB6CC07EEE01028B0E58D27600407EF32D8C1A0B910010673432
          79F7000093BFF98F402B0100CD97A4E30000BCE8185CA894174CC608000044A0
          812AB041070CC114ACC00E9CC11DBCC01702610644400C24C03C104206E4801C
          0AA11896411954C03AD804B5B0031AA0119AE110B4C131380DE7E0125C81EB70
          170660189EC218BC86090441C8081361213A8811628ED822CE0817998E042261
          48349280A420E988145122C5C872A402A9426A915D4823F22D7214398D5C40FA
          90DBC820328AFC8ABC47319481B25103D4027540B9A81F1A8AC6A073D174340F
          5D8096A26BD11AB41E3D80B6A2A7D14BE87574007D8A8E6380D1310E668CD961
          5C8C87456089581A26C71663E55835568F35631D583776151BC09E61EF082402
          8B8013EC085E8410C26C82909047584C5843A825EC23B412BA085709838431C2
          272293A84FB4257A12F9C478623AB1905846AC26EE211E219E255E270E135F93
          48240EC992E44E0A21259032490B496B48DB482DA453A43ED210699C4C26EB90
          6DC9DEE408B280AC209791B7900F904F92FBC9C3E4B7143AC588E24C09A22452
          A494124A35653FE504A59F324299A0AA51CDA99ED408AA883A9F5A496DA07650
          2F5387A91334759A25CD9B1643CBA42DA3D5D09A696769F7682FE974BA09DD83
          1E4597D097D26BE807E9E7E983F4770C0D860D83C7486228196B197B19A718B7
          192F994CA605D39799C85430D7321B9967980F986F55582AF62A7C1591CA1295
          3A9556957E95E7AA545573553FD579AA0B54AB550FAB5E567DA64655B350E3A9
          09D416ABD5A91D55BBA936AECE5277528F50CF515FA3BE5FFD82FA630DB28685
          46A08648A35463B7C6198D2116C63265F15842D6725603EB2C6B984D625BB2F9
          EC4C7605FB1B762F7B4C534373AA66AC6691669DE671CD010EC6B1E0F039D99C
          4ACE21CE0DCE7B2D032D3F2DB1D66AAD66AD7EAD37DA7ADABEDA62ED72ED16ED
          EBDAEF75709D409D2C9DF53A6D3AF77509BA36BA51BA85BADB75CFEA3ED363EB
          79E909F5CAF50EE9DDD147F56DF4A3F517EAEFD6EFD11F373034083690196C31
          3863F0CC9063E86B9869B8D1F084E1A811CB68BA91C468A3D149A327B826EE87
          67E33578173E66AC6F1C62AC34DE65DC6B3C61626932DBA4C4A4C5E4BE29CD94
          6B9A66BAD1B4D374CCCCC82CDCACD8ACC9EC8E39D59C6B9E61BED9BCDBFC8D85
          A5459CC54A8B368BC796DA967CCB05964D96F7AC98563E567956F556D7AC49D6
          5CEB2CEB6DD6576C501B579B0C9B3A9BCBB6A8AD9BADC4769B6DDF14E2148F29
          D229F5536EDA31ECFCEC0AEC9AEC06ED39F661F625F66DF6CF1DCC1C121DD63B
          743B7C727475CC766C70BCEBA4E134C3A9C4A9C3E957671B67A1739DF33517A6
          4B90CB1297769717536DA78AA76E9F7ACB95E51AEEBAD2B5D3F5A39BBB9BDCAD
          D96DD4DDCC3DC57DABFB4D2E9B1BC95DC33DEF41F4F0F758E271CCE39DA79BA7
          C2F390E72F5E765E595EFBBD1E4FB39C269ED6306DC8DBC45BE0BDCB7B603A3E
          3D65FACEE9033EC63E029F7A9F87BEA6BE22DF3DBE237ED67E997E07FC9EFB3B
          FACBFD8FF8BFE179F216F14E056001C101E501BD811A81B3036B031F049904A5
          0735058D05BB062F0C3E15420C090D591F72936FC017F21BF96333DC672C9AD1
          15CA089D155A1BFA30CC264C1ED6118E86CF08DF107E6FA6F94CE9CCB60888E0
          476C88B81F69199917F97D14292A32AA2EEA51B453747174F72CD6ACE459FB67
          BD8EF18FA98CB93BDB6AB6727667AC6A6C526C63EC9BB880B8AAB8817887F845
          F1971274132409ED89E4C4D8C43D89E37302E76C9A339CE49A54967463AEE5DC
          A2B917E6E9CECB9E773C593559907C3885981297B23FE5832042502F184FE5A7
          6E4D1D13F2849B854F45BEA28DA251B1B7B84A3C92E69D5695F638DD3B7D43FA
          68864F4675C633094F522B79911992B923F34D5644D6DEACCFD971D92D39949C
          949CA3520D6996B42BD730B728B74F662B2B930DE479E66DCA1B9387CAF7E423
          F973F3DB156C854CD1A3B452AE500E164C2FA82B785B185B78B848BD485AD433
          DF66FEEAF9230B82167CBD90B050B8B0B3D8B87859F1E022BF45BB16238B5317
          772E315D52BA647869F0D27DCB68CBB296FD50E2585255F26A79DCF28E5283D2
          A5A5432B82573495A994C9CB6EAEF45AB9631561956455EF6A97D55B567F2A17
          955FAC70ACA8AEF8B046B8E6E2574E5FD57CF5796DDADADE4AB7CAEDEB48EBA4
          EB6EACF759BFAF4ABD6A41D5D086F00DAD1BF18DE51B5F6D4ADE74A17A6AF58E
          CDB4CDCACD03356135ED5BCCB6ACDBF2A136A3F67A9D7F5DCB56FDADABB7BED9
          26DAD6BFDD777BF30E831D153BDEEF94ECBCB52B78576BBD457DF56ED2EE82DD
          8F1A621BBABFE67EDDB847774FC59E8F7BA57B07F645EFEB6A746F6CDCAFBFBF
          B2096D52368D1E483A70E59B806FDA9BED9A77B5705A2A0EC241E5C127DFA67C
          7BE350E8A1CEC3DCC3CDDF997FB7F508EB48792BD23ABF75AC2DA36DA03DA1BD
          EFE88CA39D1D5E1D47BEB7FF7EEF31E36375C7358F579EA09D283DF1F9E48293
          E3A764A79E9D4E3F3DD499DC79F74CFC996B5D515DBD6743CF9E3F1774EE4CB7
          5FF7C9F3DEE78F5DF0BC70F422F762DB25B74BAD3DAE3D477E70FDE148AF5B6F
          EB65F7CBED573CAE74F44DEB3BD1EFD37FFA6AC0D573D7F8D72E5D9F79BDEFC6
          EC1BB76E26DD1CB825BAF5F876F6ED17770AEE4CDC5D7A8F78AFFCBEDAFDEA07
          FA0FEA7FB4FEB165C06DE0F860C060CFC3590FEF0E09879EFE94FFD387E1D247
          CC47D52346238D8F9D1F1F1B0D1ABDF264CE93E1A7B2A713CFCA7E56FF79EB73
          ABE7DFFDE2FB4BCF58FCD8F00BF98BCFBFAE79A9F372EFABA9AF3AC723C71FBC
          CE793DF1A6FCADCEDB7DEFB8EFBADFC7BD1F9928FC40FE50F3D1FA63C7A7D04F
          F73EE77CFEFC2FF784F3FB25D29F330000000467414D410000B18E7CFB519300
          0000206348524D00007A25000080830000F9FF000080E9000075300000EA6000
          003A980000176F925FC546000006D74944415478DA9C975B6C14E715C77FDF5C
          7676BDBBDE5DE3F5DA061B0CB6096023C046692D9A42E9035129296D2E12E185
          A8954AA496547295BEB40FE5813C2055559387903669A53C24542814A9424829
          A229948B120C310E76F0E25B7D597C61EDBDEFECCCD78719576E826DCC91463B
          D27EFACE6FCE77CEF9FE474829791CDB2E8417D804340031C0E3FE550272401E
          7808DCED927290C734B11CC07621C2C0410D7E14808E32881880065880EDFE16
          813987E40BE063E09D2E29EFAC184008F1BFF76DB0D707BFAB81D61A2004E84B
          6C9605A6800120090F8063B7E083AFAE5BE87351806D50570B57B7C0EA325666
          25A01B188649E0E95B0ED3230194C5365903CF3F8973DCE369018210055E5A6A
          EDA20011F8E693389F371DA8735E5FDEE624EDCA000CA85C18D222B05CBD4820
          E33E00B54019AC61C15E8F8AD6A3B3D3859B047A8100E005FCCEF17C8DBCE0AE
          4B0135155036E378D5413CD11194DC0F1906FC1E78FDE4467EF36E3B5B7F18A1
          D78DC8BC4D01D770287FFDE6CB1C7FFF283901A61315DB5EC2CFA211B0215972
          BFE8E9ADB0BEB912A11A1C3EFA2DEA9B8778FF8DDBAC76CA8D3EA07D4B806327
          5E656D7335763EC9BA56487D0E12B28525AA7751001326926EA359D718064505
          21404A763FBB9548651567DEFB8472140E6FDFC8E15F1CC21FF0629B596C6911
          A92A6794395290292C53318FB411B89887D736D4A2D46F88327F943612C536D9
          D1D1C8CE3D6D281E3F8A6280A2609B196429876D668836C598F9784E4E43CF08
          8CAF182005979EFB0E998E1F7404ABAA7D084538276A99D84A01616511A682B4
          2D6C55771B8C892CE5B0CC2C3B9FA967BCEF9E7DF62267DD26B932805B90F9F9
          2AA66275C160281CC6CA2791B2849416B6554014D248DB42D58A209C6D6CDB44
          5A05A499C532A7292BC704A697AA606D99D2BE37393AD01089EE425A456C338B
          9416D236B100455A482BE7004809B6859426F9EC2CA3F13B8C3F24E1B685D28A
          CBD0B50B13FD5F624B15D508A1E86508A182940E5029876566B08A292C338565
          A6B1CC2C73C94946FA4BA54F7AB9EE5ED1C52705383F33CA7F86FA3E45F50450
          8D10AA1140681E84509D685825A455741EDB44968AC47BBE606C9AE4BF125C72
          01AC1501482905C02B7FE56EA6C03BBD97BB484E8DA37A42289E109A278CAA07
          50351F42F520540DA1EA08CD6068A09FF138F2836B5CF27ABD832D2D2DE9CECE
          4EB1220021849B3407F6FEECDC9183E70703F2EAD9334C2786D08C089AB702C5
          1B41F555A0792BD0BC95689E30C3F17EFAAE8EF14FED19D1A31E6ACBE763BE78
          3C5E1C18185059A4252FA2070EE8A0FD9470EB715A9B43745DE1A5A6BF70606B
          86756DEB59B3A18D5024060A98850C338961867B6F70FF768A3FDDD9CA8DAA1F
          D3B07B3303A73E4C91F8F74FA0E75C676767E1E4C993F6630A9203AF106C7D8B
          7DFBBC4C3F808BFF000CD63675F1EA8E9B84ED39B09CC407D0FD70A127CCB9FE
          23E453CD503E46E0B5EF919ECBC29BA73294AE1C82910BEE9DB51CC0736D10FB
          88832FD45115850B976170CAB907FD127263BC71E2297EF5FA5100A2D1282F1E
          FA3D6F9DBA0F4A3D64BD2047A1BD0C9EFF367475C3877F98802BDF07EB36602E
          A7888EB0B6A98EFA286A8580CC3450ED48145383702537BB7DB4B7B703F0DBE3
          27F8E3993BB03A04C1342873E0F7427C0CA62D68DD0C0D7BAA61D32F81555FCD
          854701EC21B68A40A54E4BAD4660FF4E8825C0B0A168802FC0E9D33741A906E0
          FA8D090A49137401B200659360DD878D75309984A20A3B3601FA5E57D27B9701
          90D54A5D39FB1B55BE51A7B16BD77AA287F640640AB459A7A9D6D4F0E98D3800
          7F7EF734442B9C7B333305E6146C6B846019CC3D84AC090DF540240CAC77A4E2
          920056309A4DB23D2AA8F74343C866CDBA0A78711F4414984A80E10576B9EB5B
          40D76160084A79D8DE048606B204A60579137C0140575C9516580620FB2071FE
          0A173EFA8C74BA84E151280F68181103F67F17AA22707F0862B5400778ABA07F
          00BC3A6C5A0752802D9CA32E16A1370EEFFDCD5516942D98A816AB822DBBC1F7
          36AC6E66F566FC1DAD781A1B48EAE5C8C9128C27E0F36E181C04BBE0388AC520
          1A024D07AFD749B3D9340C4D40660CB85F82BE1E98791BF8BB947278A93EA03B
          C9527B0CEA5F80C82A58AF505503D5958E032C4825E1EE6750D504613FE40A90
          C939022C3F074C4A183121350A5F5E032E03D7815E296566B9C948032A80A720
          FA2CA27E3732BB0142E5E0D7C150405D20C6014C09690B920590B3901A80916E
          A0078803F78031202717385D6A3614CE78401867C2A906EA0DBF511B08062A75
          430FAA42F54850F2B99C9DCD640BF9747ED615C953AEA21F0712AE28C9CCDF8A
          8F351BFEFF88800AF8DC24F2BB99EC730720C50D83E5B6DAF9D924ED4AB1AFCD
          340B7DFE77008FE4D64D2186FEB00000000049454E44AE426082}
        ParentFont = False
        TabOrder = 2
        Version = '6.0.0.1'
      end
      object FlatPanel6: TFlatPanel
        Left = 856
        Top = 17
        Width = 353
        Height = 28
        ParentColor = True
        ColorHighLight = clBtnFace
        ColorShadow = clBtnFace
        TabOrder = 0
        object Label15: TLabel
          Left = 168
          Top = 0
          Width = 74
          Height = 24
          Caption = 'LIMITE'#13#10'DISPON'#205'VEL:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object FlatPanel9: TFlatPanel
          Left = 13
          Top = 4
          Width = 143
          Height = 20
          Color = clWindow
          TabOrder = 0
        end
        object FlatPanel10: TFlatPanel
          Left = 245
          Top = 4
          Width = 98
          Height = 20
          Color = clWindow
          TabOrder = 1
        end
      end
    end
    object pveiculo: TFlatPanel
      Left = 325
      Top = 86
      Width = 417
      Height = 225
      ParentColor = True
      Visible = False
      TabOrder = 3
      object Label9: TLabel
        Left = 11
        Top = 195
        Width = 50
        Height = 13
        Caption = 'Aliena'#231#227'o:'
      end
      object FlatPanel2: TFlatPanel
        Left = 2
        Top = 2
        Width = 413
        Height = 17
        Caption = 'Venda de Ve'#237'culo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ColorHighLight = clBlue
        ColorShadow = clBlue
        TabOrder = 0
      end
      object Memo1: TMemo
        Left = 8
        Top = 24
        Width = 401
        Height = 161
        Lines.Strings = (
          'Memo1')
        TabOrder = 1
      end
      object Edit1: TEdit
        Left = 72
        Top = 192
        Width = 337
        Height = 21
        TabOrder = 2
        Text = 'COM ALIENA'#199#195'O FIDUCI'#193'RIA PARA '
      end
    end
  end
  object dsvenda_produto: TDataSource
    DataSet = qrvenda_produto
    Left = 172
    Top = 120
  end
  object PopupMenu1: TPopupMenu
    Left = 604
    Top = 152
    object IncluirItem1: TMenuItem
      Caption = 'Incluir Item'
      ShortCut = 113
      OnClick = bincluirClick
    end
    object ExcluirItem1: TMenuItem
      Caption = 'Excluir Item'
      ShortCut = 115
      OnClick = bexcluirClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object EfetuarTroca1: TMenuItem
      Caption = 'Efetuar Troca'
      ShortCut = 114
      OnClick = BitBtn1Click
    end
    object FinalizarVenda1: TMenuItem
      Caption = 'Finalizar Venda'
      ShortCut = 116
      OnClick = bfinalizarClick
    end
    object CancelarVenda1: TMenuItem
      Caption = 'Cancelar Venda'
      ShortCut = 120
      OnClick = bcancelarClick
    end
    object O1: TMenuItem
      Caption = 'Or'#231'amentos'
      ShortCut = 117
      OnClick = O1Click
    end
  end
  object qrproduto_serial: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000022')
    Params = <>
    Left = 520
    Top = 128
    object qrproduto_serialCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrproduto_serialCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrproduto_serialSERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrproduto_serialESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrproduto_serialCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrproduto_serialPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object qrproduto_serialPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object qrproduto_serialDATAVENDA: TDateTimeField
      FieldName = 'DATAVENDA'
    end
    object qrproduto_serialSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrproduto_serialCLIENTE: TWideStringField
      FieldName = 'CLIENTE'
      Size = 80
    end
    object qrproduto_serialCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 6
    end
    object qrproduto_serialCODITEM: TWideStringField
      FieldName = 'CODITEM'
      Size = 6
    end
    object qrproduto_serialDATACOMPRA: TDateTimeField
      FieldName = 'DATACOMPRA'
    end
    object qrproduto_serialNUMERONOTA: TWideStringField
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object qrproduto_serialCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrproduto_serialCODVENDA_ITEM: TWideStringField
      FieldName = 'CODVENDA_ITEM'
      Size = 6
    end
    object qrproduto_serialFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qrproduto_serialCODVENDA: TWideStringField
      FieldName = 'CODVENDA'
      Size = 6
    end
  end
  object qrproduto_grade: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000021')
    Params = <>
    Left = 356
    Top = 144
    object qrproduto_gradeCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrproduto_gradeCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrproduto_gradeNUMERACAO: TWideStringField
      FieldName = 'NUMERACAO'
      Size = 10
    end
    object qrproduto_gradeCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrproduto_gradeESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrproduto_gradeCOR: TWideStringField
      FieldName = 'COR'
      Size = 15
    end
  end
  object qrapoio: TZQuery
    Connection = frmmodulo.ConexaoLocal
    BeforePost = qrapoioBeforePost
    SQL.Strings = (
      'select * from cl00004')
    Params = <>
    Left = 248
    Top = 144
  end
  object qrcliente: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 136
    Top = 88
  end
  object qrvenda_produto1: TZQuery
    Connection = frmmodulo.econexao2
    OnCalcFields = qrvenda_produto1CalcFields
    SQL.Strings = (
      'select * from CL00001')
    Params = <>
    Left = 128
    Top = 248
    object qrvenda_produto1ITEM: TWideStringField
      FieldName = 'ITEM'
      Size = 3
    end
    object qrvenda_produto1CODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrvenda_produto1PRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 80
    end
    object qrvenda_produto1CODBARRAS: TWideStringField
      FieldName = 'CODBARRAS'
      Size = 13
    end
    object qrvenda_produto1SERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrvenda_produto1NUMERACAO: TWideStringField
      FieldName = 'NUMERACAO'
      Size = 10
    end
    object qrvenda_produto1QTDE: TFloatField
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_produto1UNITARIO: TFloatField
      FieldName = 'UNITARIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_produto1TOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_produto1DESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_produto1ACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_produto1CODGRADE: TWideStringField
      FieldName = 'CODGRADE'
      Size = 6
    end
    object qrvenda_produto1TIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrvenda_produto1ALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_produto1CST: TWideStringField
      FieldName = 'CST'
      Size = 3
    end
    object qrvenda_produto1TERMINAL: TWideStringField
      FieldName = 'TERMINAL'
      Size = 4
    end
    object qrvenda_produto1CODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object qrvenda_produto1PISCOFINS: TWideStringField
      FieldName = 'PISCOFINS'
      Size = 1
    end
    object qrvenda_produto1SERIAL_CODINT: TWideStringField
      FieldName = 'SERIAL_CODINT'
      Size = 6
    end
    object qrvenda_produto1GRADE_CODINT: TWideStringField
      FieldName = 'GRADE_CODINT'
      Size = 6
    end
  end
  object qrvenda_contasreceber: TZQuery
    Connection = frmmodulo.econexao2
    BeforeInsert = qrvenda_contasreceberBeforeInsert
    BeforeEdit = qrvenda_contasreceberBeforeEdit
    BeforePost = qrvenda_contasreceberBeforePost
    AfterPost = qrvenda_contasreceberAfterPost
    SQL.Strings = (
      'select * from cL00002')
    Params = <>
    Left = 128
    Top = 184
    object qrvenda_contasreceberPRESTACAO: TIntegerField
      DisplayLabel = '.'
      DisplayWidth = 1
      FieldName = 'PRESTACAO'
    end
    object qrvenda_contasreceberVENCIMENTO: TDateTimeField
      DisplayLabel = 'Vencimento'
      DisplayWidth = 15
      FieldName = 'VENCIMENTO'
    end
    object qrvenda_contasreceberVALOR: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 13
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_contasreceberDOCUMENTO: TWideStringField
      DisplayLabel = 'Documento'
      DisplayWidth = 10
      FieldName = 'DOCUMENTO'
    end
    object qrvenda_contasreceberTIPO: TWideStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 23
      FieldName = 'TIPO'
    end
    object qrvenda_contasreceberTERMINAL: TWideStringField
      DisplayWidth = 4
      FieldName = 'TERMINAL'
      Visible = False
      Size = 4
    end
  end
  object qrvenda_produto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from CL00001')
    Params = <>
    Left = 232
    Top = 80
    object qrvenda_produtoITEM: TWideStringField
      DisplayLabel = 'Item'
      DisplayWidth = 4
      FieldName = 'ITEM'
      Size = 3
    end
    object qrvenda_produtoCODPRODUTO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrvenda_produtoPRODUTO: TWideStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 36
      FieldName = 'PRODUTO'
      Size = 80
    end
    object qrvenda_produtoCST: TWideStringField
      DisplayWidth = 4
      FieldName = 'CST'
      Size = 3
    end
    object qrvenda_produtoNUMERACAO: TWideStringField
      DisplayLabel = 'Un.'
      DisplayWidth = 4
      FieldName = 'NUMERACAO'
      Size = 10
    end
    object qrvenda_produtoSERIAL: TWideStringField
      DisplayLabel = 'N'#250'mero de S'#233'rie'
      DisplayWidth = 20
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrvenda_produtoQTDE: TFloatField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 10
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_produtoUNITARIO: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      DisplayWidth = 9
      FieldName = 'UNITARIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_produtoTOTAL: TFloatField
      DisplayLabel = 'Total'
      DisplayWidth = 10
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_produtoALIQUOTA: TFloatField
      DisplayLabel = 'ICMS'
      DisplayWidth = 8
      FieldName = 'ALIQUOTA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_produtomix: TFloatField
      DisplayLabel = 'MIX'
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'mix'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qrvenda_produtoCODBARRAS: TWideStringField
      FieldName = 'CODBARRAS'
      Visible = False
      Size = 13
    end
    object qrvenda_produtoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_produtoACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_produtoCODGRADE: TWideStringField
      FieldName = 'CODGRADE'
      Visible = False
      Size = 6
    end
    object qrvenda_produtoTIPO: TIntegerField
      FieldName = 'TIPO'
      Visible = False
    end
    object qrvenda_produtoTERMINAL: TWideStringField
      FieldName = 'TERMINAL'
      Visible = False
      Size = 4
    end
    object qrvenda_produtoCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
      Visible = False
      Size = 6
    end
    object qrvenda_produtoPISCOFINS: TWideStringField
      FieldName = 'PISCOFINS'
      Visible = False
      Size = 1
    end
    object qrvenda_produtoSERIAL_CODINT: TWideStringField
      FieldName = 'SERIAL_CODINT'
      Visible = False
      Size = 6
    end
    object qrvenda_produtoGRADE_CODINT: TWideStringField
      FieldName = 'GRADE_CODINT'
      Visible = False
      Size = 6
    end
  end
  object QRORC: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'SELECT * FROM C000130')
    Params = <>
    Left = 456
    Top = 104
    object QRORCCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object QRORCCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object QRORCLOTE: TWideStringField
      FieldName = 'LOTE'
      Size = 13
    end
    object QRORCCODORCAMENTO: TWideStringField
      FieldName = 'CODORCAMENTO'
      Size = 6
    end
    object QRORCQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object QRORCCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 6
    end
    object QRORCCODVENDA: TWideStringField
      FieldName = 'CODVENDA'
      Size = 6
    end
  end
  object qrapoio2: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 248
    Top = 216
  end
end
