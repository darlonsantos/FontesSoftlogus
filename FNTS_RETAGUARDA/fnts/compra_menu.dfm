object frmcompra_menu: Tfrmcompra_menu
  Left = 435
  Top = 150
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'NOTAS FISCAIS DE ENTRADA | Rela'#231#227'o'
  ClientHeight = 578
  ClientWidth = 812
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pop
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel7: TBevel
    Left = 0
    Top = 537
    Width = 812
    Height = 3
    Align = alBottom
    ExplicitTop = 515
    ExplicitWidth = 802
  end
  object Bevel1: TBevel
    Left = 0
    Top = 38
    Width = 812
    Height = 3
    Align = alTop
    ExplicitTop = 33
    ExplicitWidth = 802
  end
  object Panel2: TPanel
    Left = 0
    Top = 540
    Width = 812
    Height = 38
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object Bevel3: TBevel
      Left = 319
      Top = -6
      Width = 2
      Height = 71
    end
    object bincluir: TAdvGlowButton
      Left = 10
      Top = 3
      Width = 93
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
      Left = 105
      Top = 3
      Width = 95
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
      Left = 203
      Top = 3
      Width = 99
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
    object brelatorio: TAdvGlowButton
      Left = 323
      Top = 3
      Width = 112
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
      TabOrder = 3
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
    object btabela: TAdvGlowMenuButton
      Left = 844
      Top = 1
      Width = 138
      Height = 32
      Caption = 'Menu'
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B0000017D494441544889
        CD94314BC3401886DF2F1C42A4496D848EBA7449210EFE03F137B839B84A3B6A
        115741C4AE05FF80B8F81BF4273858700841B063C15C7B410A2EE7D26BD3A469
        2E9688EFF4F2DDE5DEF07D770F9D5C3D3CBF7F5907C851D31A0DEE2E8F7701A0
        D7EBDD562A951611994444524A0900314F0010455197E91C0E006FD1D68EF296
        65B55CD7351DC7C9DC1F86217CDF3F67AAF07871887AD54C6D1C8E2738BA795A
        A811D1A6E33868341AB3527C190082200011611650AF9A78F994A980FDED74E8
        54524A89552D02300F284BEB0410112D9A845F37E09FB568389E2C1DE8703CC9
        FA36757396F87940F22AE6290C43AD75E6D95CF445CDCE3BB0698D06CA0B21BA
        BEEF9F1986A1FE58DD6FE5090038E75D9ACEA734953FE422E06AB7DB1D0038BD
        BEFF88B3294B9ECD052B022E001D60117CABD417359B150157523A805433D07A
        9549E900F2CF5EB216B8D609F8558B8A0494A6598B62B54C7025A5034806E883
        2B291D40B222E0521FEDD9FCFB55D436F20EF76C2E7E00180CCDB4D28DAEFE00
        00000049454E44AE426082}
      Transparent = True
      TabOrder = 4
      Visible = False
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
      DropDownMenu = menu_tabelas_fiscais
    end
    object bfechar: TAdvGlowButton
      Left = 714
      Top = 3
      Width = 91
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
      TabOrder = 5
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
    object AdvGlowButton1: TAdvGlowButton
      Left = 445
      Top = 3
      Width = 128
      Height = 32
      Caption = 'Importar XML'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B00000107494441544889
        ED96316E84301444C7E0DE1C257D1C8932773048F4D88D0F42C31D10051C0265
        536FCA5C0329A5E1A742828D5960374D941DC985BFEC791ED996CD880800A0B5
        3EF77DFFE49CC35E71CE2184F8628CBD9665F9EE1D4444202228A5E8A89224A1
        AEEB28CF73D25A3F4F5EF3C627D0300CBB573EC9390729258220405DD727638C
        BC4CC2D7261F919412CE39344DF3668C799943BC80A228AE1A5A6B7FD4E23806
        11B1B66D4F00D85580CF604D4AA9459FF3A5E55D09AAAA5AD4C771449665DB80
        2309B67453029FACB5608CE1F21EFDAD04BB018F049B807B4ED12EC0AD097603
        FEEF1EEC063C1278016118FE8EE1DA831345D1479AA687BE2D3E7321C4E7BCF6
        0D6D35B520EA9879BB0000000049454E44AE426082}
      Transparent = True
      TabOrder = 6
      OnClick = AdvGlowButton1Click
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
  end
  object Panel1: TPanel
    Left = 0
    Top = 509
    Width = 812
    Height = 28
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    Enabled = False
    ParentBackground = False
    TabOrder = 1
    object Label22: TLabel
      Left = 603
      Top = 6
      Width = 28
      Height = 13
      Caption = 'Total:'
      Transparent = True
    end
    object Label5: TLabel
      Left = 351
      Top = 6
      Width = 171
      Height = 13
      Caption = 'Quantidade de Documentos Fiscais:'
      Transparent = True
    end
    object Bevel2: TBevel
      Left = 342
      Top = 3
      Width = 2
      Height = 22
    end
    object Label6: TLabel
      Left = 7
      Top = 6
      Width = 45
      Height = 13
      Caption = 'Empresa:'
      Transparent = True
    end
    object rtotal: TRzNumericEdit
      Left = 640
      Top = 2
      Width = 122
      Height = 24
      DisabledColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FocusColor = 16774120
      FrameHotTrack = True
      FrameStyle = fsLowered
      FrameVisible = True
      ParentFont = False
      ReadOnly = True
      ReadOnlyColor = clWindow
      TabOrder = 0
      DisplayFormat = ',0.00;(,0.00)'
    end
    object rqde: TRzNumericEdit
      Left = 526
      Top = 2
      Width = 67
      Height = 24
      Ctl3D = True
      DisabledColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FocusColor = 16774120
      FrameHotTrack = True
      FrameStyle = fsLowered
      FrameVisible = True
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      ReadOnlyColor = clWindow
      TabOrder = 1
      DisplayFormat = ',0;(,0)'
    end
    object RzDBEdit1: TRzDBEdit
      Left = 56
      Top = 3
      Width = 281
      Height = 21
      DataSource = dsnota
      DataField = 'empresa'
      TabOrder = 2
    end
  end
  object grid: TwwDBGrid
    Left = 0
    Top = 41
    Width = 812
    Height = 468
    ControlType.Strings = (
      'SITUACAO;ImageIndex;Original Size')
    Selected.Strings = (
      'OBS7'#9'6'#9'Seq.'#9'F'
      'NUMERO'#9'7'#9'N'#250'mero'#9'F'
      'DATA_EMISSAO'#9'9'#9'Emiss'#227'o'#9'F'#9'Data'
      'DATA_LANCAMENTO'#9'9'#9'Lan'#231'amento'#9'F'#9'Data'
      'fornecedor'#9'22'#9'Emitente '#9'F'
      'MODELO'#9'3'#9'Mod'#9'F'#9'Documento'
      'ESPECIE'#9'5'#9'Esp.'#9'F'#9'Documento'
      'SERIE'#9'2'#9'S'#233'r'#9'F'#9'Documento'
      'CFOP'#9'4'#9'CFOP'
      'TOTAL_NOTA'#9'10'#9'Total-R$'#9'F'
      'BASE_ICMS'#9'9'#9'B.C'#225'lculo'#9'F'#9'ICMS'
      'VALOR_ICMS'#9'8'#9'Valor'#9'F'#9'ICMS'
      'ICMS_ISENTO'#9'9'#9'ISENTO'#9'F'
      'ICMS_OUTRAS'#9'10'#9'OUTRAS'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    OnRowChanged = gridRowChanged
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsnota
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    RowHeightPercent = 113
    TabOrder = 2
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = True
    UseTFields = False
    OnTitleButtonClick = gridTitleButtonClick
    PaintOptions.AlternatingRowColor = 15724527
    PaintOptions.ActiveRecordColor = clBlack
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 812
    Height = 38
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    object Label8: TLabel
      Left = 31
      Top = 10
      Width = 46
      Height = 13
      Caption = 'Emitente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clInfoText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 576
      Top = 10
      Width = 6
      Height = 13
      Caption = 'a'
      Font.Charset = ANSI_CHARSET
      Font.Color = clInfoText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 7
      Top = 10
      Width = 19
      Height = 13
      Caption = 'F6 |'
      Font.Charset = ANSI_CHARSET
      Font.Color = clInfoText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 295
      Top = 11
      Width = 41
      Height = 13
      Caption = 'N'#250'mero:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clInfoText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 407
      Top = 11
      Width = 62
      Height = 13
      Caption = 'Lan'#231'amento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clInfoText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object efornecedor: TRzButtonEdit
      Left = 80
      Top = 7
      Width = 209
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnEnter = efornecedorEnter
      OnExit = DateEdit1Exit
      OnKeyPress = efornecedorKeyPress
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
      OnButtonClick = efornecedorButtonClick
    end
    object DateEdit1: TDateEdit
      Left = 476
      Top = 7
      Width = 97
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
      TabOrder = 2
      OnEnter = ENUMEROEnter
      OnExit = DateEdit1Exit
      OnKeyPress = ENUMEROKeyPress
    end
    object DateEdit2: TDateEdit
      Left = 586
      Top = 7
      Width = 97
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
      OnEnter = ENUMEROEnter
      OnExit = DateEdit1Exit
      OnKeyPress = DateEdit2KeyPress
    end
    object ENUMERO: TEdit
      Left = 341
      Top = 7
      Width = 49
      Height = 21
      TabOrder = 1
      Text = '000000'
      OnEnter = ENUMEROEnter
      OnExit = ENUMEROExit
      OnKeyPress = ENUMEROKeyPress
    end
    object bfiltrar: TAdvGlowButton
      Left = 706
      Top = 1
      Width = 90
      Height = 42
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
      TabOrder = 4
      OnClick = BfiltrarClick
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
  object btotaliza_nota: TButton
    Left = 272
    Top = 352
    Width = 100
    Height = 25
    Caption = 'btotaliza_nota'
    TabOrder = 5
    Visible = False
    OnClick = btotaliza_notaClick
  end
  object AdvMenuOfficeStyler1: TAdvMenuOfficeStyler
    AntiAlias = aaNone
    AutoThemeAdapt = False
    Style = osOffice2003Blue
    Background.Position = bpCenter
    Background.Color = 16185078
    Background.ColorTo = 16185078
    ButtonAppearance.DownColor = 5149182
    ButtonAppearance.DownColorTo = 9556991
    ButtonAppearance.HoverColor = 13432063
    ButtonAppearance.HoverColorTo = 9556223
    ButtonAppearance.DownBorderColor = clNavy
    ButtonAppearance.HoverBorderColor = clNavy
    ButtonAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    ButtonAppearance.CaptionFont.Color = clWindowText
    ButtonAppearance.CaptionFont.Height = -11
    ButtonAppearance.CaptionFont.Name = 'Tahoma'
    ButtonAppearance.CaptionFont.Style = []
    IconBar.Color = 16773091
    IconBar.ColorTo = 14986631
    IconBar.CheckBorder = clNavy
    IconBar.RadioBorder = clNavy
    SelectedItem.BorderColor = clNavy
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
    RootItem.Color = 16105118
    RootItem.ColorTo = 16240050
    RootItem.Font.Charset = DEFAULT_CHARSET
    RootItem.Font.Color = clMenuText
    RootItem.Font.Height = -11
    RootItem.Font.Name = 'Tahoma'
    RootItem.Font.Style = []
    RootItem.SelectedColor = 16773091
    RootItem.SelectedColorTo = 15185299
    RootItem.SelectedBorderColor = 9841920
    RootItem.HoverColor = 13432063
    RootItem.HoverColorTo = 10147583
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
    Separator.Color = 13339754
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
    MenuBorderColor = 9841920
    Left = 696
    Top = 352
  end
  object qrnota: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000087')
    Params = <>
    Left = 24
    Top = 352
    object qrnotafornecedor: TStringField
      DisplayLabel = 'Emitente '
      DisplayWidth = 33
      FieldKind = fkLookup
      FieldName = 'FORNECEDOR'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codfornecedor'
      Size = 50
      Lookup = True
    end
    object qrnotaempresa: TStringField
      DisplayLabel = 'EMPRESA'
      DisplayWidth = 17
      FieldKind = fkLookup
      FieldName = 'empresa'
      LookupDataSet = frmmodulo.qrFilial
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'FILIAL'
      KeyFields = 'codempresa'
      Size = 30
      Lookup = True
    end
    object qrnotaCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrnotaNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrnotaCODEMPRESA: TWideStringField
      FieldName = 'CODEMPRESA'
      Size = 10
    end
    object qrnotaCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 10
    end
    object qrnotaMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 10
    end
    object qrnotaESPECIE: TWideStringField
      FieldName = 'ESPECIE'
      Size = 10
    end
    object qrnotaSERIE: TWideStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object qrnotaCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object qrnotaDATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
    end
    object qrnotaDATA_LANCAMENTO: TDateTimeField
      FieldName = 'DATA_LANCAMENTO'
    end
    object qrnotaCONF_BASEICMS: TFloatField
      FieldName = 'CONF_BASEICMS'
    end
    object qrnotaCONF_VALORICMS: TFloatField
      FieldName = 'CONF_VALORICMS'
    end
    object qrnotaCONF_BASESUB: TFloatField
      FieldName = 'CONF_BASESUB'
    end
    object qrnotaCONF_VALORSUB: TFloatField
      FieldName = 'CONF_VALORSUB'
    end
    object qrnotaCONF_FRETE: TFloatField
      FieldName = 'CONF_FRETE'
    end
    object qrnotaCONF_SEGURO: TFloatField
      FieldName = 'CONF_SEGURO'
    end
    object qrnotaCONF_OUTRAS: TFloatField
      FieldName = 'CONF_OUTRAS'
    end
    object qrnotaCONF_IPI: TFloatField
      FieldName = 'CONF_IPI'
    end
    object qrnotaCONF_DESCONTO: TFloatField
      FieldName = 'CONF_DESCONTO'
    end
    object qrnotaCONF_TOTALPRODUTOS: TFloatField
      FieldName = 'CONF_TOTALPRODUTOS'
    end
    object qrnotaCONF_TOTALNOTA: TFloatField
      FieldName = 'CONF_TOTALNOTA'
    end
    object qrnotaCONF_ICMSRETIDO: TFloatField
      FieldName = 'CONF_ICMSRETIDO'
    end
    object qrnotaCONF_ICMSREDITO_PERC: TFloatField
      FieldName = 'CONF_ICMSREDITO_PERC'
    end
    object qrnotaBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object qrnotaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrnotaBASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
    end
    object qrnotaVALOR_SUB: TFloatField
      FieldName = 'VALOR_SUB'
    end
    object qrnotaFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object qrnotaSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object qrnotaOUTRAS: TFloatField
      FieldName = 'OUTRAS'
    end
    object qrnotaIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrnotaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrnotaTOTAL_PRODUTOS: TFloatField
      FieldName = 'TOTAL_PRODUTOS'
    end
    object qrnotaTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
    end
    object qrnotaTRANSP_NOME: TWideStringField
      FieldName = 'TRANSP_NOME'
      Size = 60
    end
    object qrnotaTRANSP_FRETE: TWideStringField
      FieldName = 'TRANSP_FRETE'
    end
    object qrnotaTRANSP_PLACA: TWideStringField
      FieldName = 'TRANSP_PLACA'
      Size = 10
    end
    object qrnotaTRANSP_PLACAUF: TWideStringField
      FieldName = 'TRANSP_PLACAUF'
      Size = 2
    end
    object qrnotaTRANSP_IE: TWideStringField
      FieldName = 'TRANSP_IE'
      Size = 25
    end
    object qrnotaTRANSP_CNPJ: TWideStringField
      FieldName = 'TRANSP_CNPJ'
      Size = 25
    end
    object qrnotaTRANSP_ENDERECO: TWideStringField
      FieldName = 'TRANSP_ENDERECO'
      Size = 40
    end
    object qrnotaTRANSP_CIDADE: TWideStringField
      FieldName = 'TRANSP_CIDADE'
      Size = 30
    end
    object qrnotaTRANSP_UF: TWideStringField
      FieldName = 'TRANSP_UF'
      Size = 2
    end
    object qrnotaTRANSP_QTDE: TFloatField
      FieldName = 'TRANSP_QTDE'
    end
    object qrnotaTRANSP_ESPECIE: TWideStringField
      FieldName = 'TRANSP_ESPECIE'
    end
    object qrnotaTRANSP_MARCA: TWideStringField
      FieldName = 'TRANSP_MARCA'
    end
    object qrnotaTRANSP_NUMERO: TWideStringField
      FieldName = 'TRANSP_NUMERO'
    end
    object qrnotaTRANSP_PESOBRUTO: TFloatField
      FieldName = 'TRANSP_PESOBRUTO'
    end
    object qrnotaTRANSP_PESOLIQUIDO: TFloatField
      FieldName = 'TRANSP_PESOLIQUIDO'
    end
    object qrnotaOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 60
    end
    object qrnotaOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 60
    end
    object qrnotaOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 60
    end
    object qrnotaOBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 60
    end
    object qrnotaOBS5: TWideStringField
      FieldName = 'OBS5'
      Size = 60
    end
    object qrnotaOBS6: TWideStringField
      FieldName = 'OBS6'
      Size = 60
    end
    object qrnotaOBS7: TWideStringField
      FieldName = 'OBS7'
      Size = 60
    end
    object qrnotaSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrnotaITENS: TIntegerField
      FieldName = 'ITENS'
    end
    object qrnotaTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object qrnotaNOTA_FISCAL: TWideStringField
      FieldName = 'NOTA_FISCAL'
      Size = 6
    end
    object qrnotaVALOR_MERCADORIAS: TFloatField
      FieldName = 'VALOR_MERCADORIAS'
    end
    object qrnotaCODREMETENTE: TWideStringField
      FieldName = 'CODREMETENTE'
      Size = 6
    end
    object qrnotaICMS_ISENTO: TFloatField
      FieldName = 'ICMS_ISENTO'
    end
    object qrnotaICMS_OUTRAS: TFloatField
      FieldName = 'ICMS_OUTRAS'
    end
    object qrnotaDESCONTO_INCIDENTE: TIntegerField
      FieldName = 'DESCONTO_INCIDENTE'
    end
    object qrnotaITEM_FRETE_VALOR: TFloatField
      FieldName = 'ITEM_FRETE_VALOR'
    end
    object qrnotaITEM_FRETE_BASE: TFloatField
      FieldName = 'ITEM_FRETE_BASE'
    end
    object qrnotaITEM_FRETE_ALIQUOTA: TFloatField
      FieldName = 'ITEM_FRETE_ALIQUOTA'
    end
    object qrnotaITEM_FRETE_ICMS: TFloatField
      FieldName = 'ITEM_FRETE_ICMS'
    end
    object qrnotaITEM_SEGURO_VALOR: TFloatField
      FieldName = 'ITEM_SEGURO_VALOR'
    end
    object qrnotaITEM_SEGURO_BASE: TFloatField
      FieldName = 'ITEM_SEGURO_BASE'
    end
    object qrnotaITEM_SEGURO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_SEGURO_ALIQUOTA'
    end
    object qrnotaITEM_SEGURO_ICMS: TFloatField
      FieldName = 'ITEM_SEGURO_ICMS'
    end
    object qrnotaITEM_PIS_VALOR: TFloatField
      FieldName = 'ITEM_PIS_VALOR'
    end
    object qrnotaITEM_PIS_BASE: TFloatField
      FieldName = 'ITEM_PIS_BASE'
    end
    object qrnotaITEM_PIS_ALIQUOTA: TFloatField
      FieldName = 'ITEM_PIS_ALIQUOTA'
    end
    object qrnotaITEM_PIS_ICMS: TFloatField
      FieldName = 'ITEM_PIS_ICMS'
    end
    object qrnotaITEM_COMPLEMENTO_VALOR: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_VALOR'
    end
    object qrnotaITEM_COMPLEMENTO_BASE: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_BASE'
    end
    object qrnotaITEM_COMPLEMENTO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_ALIQUOTA'
    end
    object qrnotaITEM_COMPLEMENTO_ICMS: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_ICMS'
    end
    object qrnotaITEM_SERVICO_VALOR: TFloatField
      FieldName = 'ITEM_SERVICO_VALOR'
    end
    object qrnotaITEM_SERVICO_BASE: TFloatField
      FieldName = 'ITEM_SERVICO_BASE'
    end
    object qrnotaITEM_SERVICO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_SERVICO_ALIQUOTA'
    end
    object qrnotaITEM_SERVICO_ICMS: TFloatField
      FieldName = 'ITEM_SERVICO_ICMS'
    end
    object qrnotaITEM_OUTRAS_VALOR: TFloatField
      FieldName = 'ITEM_OUTRAS_VALOR'
    end
    object qrnotaITEM_OUTRAS_BASE: TFloatField
      FieldName = 'ITEM_OUTRAS_BASE'
    end
    object qrnotaITEM_OUTRAS_ALIQUOTA: TFloatField
      FieldName = 'ITEM_OUTRAS_ALIQUOTA'
    end
    object qrnotaITEM_OUTRAS_ICMS: TFloatField
      FieldName = 'ITEM_OUTRAS_ICMS'
    end
    object qrnotaITEM_ESPECIAL_TOTAL: TFloatField
      FieldName = 'ITEM_ESPECIAL_TOTAL'
    end
    object qrnotaITEM_ESPECIAL_VALOR: TFloatField
      FieldName = 'ITEM_ESPECIAL_VALOR'
    end
    object qrnotaBASEICMS_PRODUTOS: TIntegerField
      FieldName = 'BASEICMS_PRODUTOS'
    end
    object qrnotaCONF_ITEM_ESPECIAL: TFloatField
      FieldName = 'CONF_ITEM_ESPECIAL'
    end
    object qrnotaOBS8: TWideStringField
      FieldName = 'OBS8'
      Size = 60
    end
    object qrnotaCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
    end
    object qrnotaPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrnotaCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrnotaOPERACAO: TWideStringField
      FieldName = 'OPERACAO'
      Size = 1
    end
    object qrnotaINTEGRACAO: TIntegerField
      FieldName = 'INTEGRACAO'
    end
    object qrnotaAPROVEITA_CREDITO_ICMS: TWideStringField
      FieldName = 'APROVEITA_CREDITO_ICMS'
      Size = 1
    end
    object qrnotaCHAVE: TWideStringField
      FieldName = 'CHAVE'
      Size = 50
    end
    object qrnotaconta: TStringField
      FieldKind = fkLookup
      FieldName = 'conta'
      LookupDataSet = frmmodulo.qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CONTA'
      KeyFields = 'OBS5'
      Size = 30
      Lookup = True
    end
    object qrnotaREMETENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'REMETENTE'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODFORNECEDOR'
      Size = 30
      Lookup = True
    end
  end
  object dsnota: TDataSource
    DataSet = qrnota
    Left = 73
    Top = 158
  end
  object qrempresa: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000004')
    Params = <>
    Left = 368
    Top = 128
    object qrempresaCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrempresaFILIAL: TWideStringField
      FieldName = 'FILIAL'
      Size = 50
    end
    object qrempresaNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object qrempresaENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object qrempresaCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object qrempresaUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrempresaCEP: TWideStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qrempresaTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      Size = 25
    end
    object qrempresaCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object qrempresaIE: TWideStringField
      FieldName = 'IE'
      Size = 14
    end
    object qrempresaSEQNF: TIntegerField
      FieldName = 'SEQNF'
    end
    object qrempresaFAX: TWideStringField
      FieldName = 'FAX'
      Size = 25
    end
    object qrempresaOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 100
    end
    object qrempresaOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 100
    end
    object qrempresaCONTRIBUINTE_IPI: TWideStringField
      FieldName = 'CONTRIBUINTE_IPI'
      Size = 1
    end
    object qrempresaSUBSTITUTO_TRIBUTARIO: TWideStringField
      FieldName = 'SUBSTITUTO_TRIBUTARIO'
      Size = 1
    end
    object qrempresaEMPRESA_ESTADUAL: TWideStringField
      FieldName = 'EMPRESA_ESTADUAL'
      Size = 1
    end
    object qrempresaOPTANTE_SIMPLES: TWideStringField
      FieldName = 'OPTANTE_SIMPLES'
      Size = 1
    end
    object qrempresaOPTANTE_SUPER_SIMPLES: TWideStringField
      FieldName = 'OPTANTE_SUPER_SIMPLES'
      Size = 1
    end
    object qrempresaECF: TWideStringField
      FieldName = 'ECF'
      Size = 1
    end
    object qrempresaTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrempresaIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrempresaISS: TFloatField
      FieldName = 'ISS'
    end
    object qrempresaNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrempresaRESPONSAVEL: TWideStringField
      FieldName = 'RESPONSAVEL'
      Size = 50
    end
    object qrempresaCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object qrempresaBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrempresaFARMACIA_RESP_TECNICO: TWideStringField
      FieldName = 'FARMACIA_RESP_TECNICO'
      Size = 50
    end
    object qrempresaFARMACIA_CRF: TWideStringField
      FieldName = 'FARMACIA_CRF'
      Size = 10
    end
    object qrempresaFARMACIA_CPF: TWideStringField
      FieldName = 'FARMACIA_CPF'
      Size = 14
    end
    object qrempresaFARMCIA_DATA: TDateTimeField
      FieldName = 'FARMCIA_DATA'
    end
    object qrempresaFARMACIA_UF: TWideStringField
      FieldName = 'FARMACIA_UF'
      Size = 2
    end
    object qrempresaFARMACIA_SENHA: TWideStringField
      FieldName = 'FARMACIA_SENHA'
      Size = 10
    end
    object qrempresaFARMACIA_EMAIL: TWideStringField
      FieldName = 'FARMACIA_EMAIL'
      Size = 10
    end
    object qrempresaFARMACIA_LOGIN: TWideStringField
      FieldName = 'FARMACIA_LOGIN'
    end
    object qrempresaFARMACIA_ENVIO: TWideStringField
      FieldName = 'FARMACIA_ENVIO'
      Size = 100
    end
    object qrempresaCONHECIMENTO: TIntegerField
      FieldName = 'CONHECIMENTO'
    end
    object qrempresaINDUSTRIA: TWideStringField
      FieldName = 'INDUSTRIA'
      Size = 1
    end
    object qrempresaFARMACIA_NUMEROLICENCA: TWideStringField
      FieldName = 'FARMACIA_NUMEROLICENCA'
    end
    object qrempresaCOD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrempresaIBGE: TWideStringField
      FieldName = 'IBGE'
      Size = 10
    end
    object qrempresaPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrempresaCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrempresaEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object qrempresaATIVIDADE: TWideStringField
      FieldName = 'ATIVIDADE'
      Size = 40
    end
    object qrempresaCONTADOR_COD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'CONTADOR_COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrempresaCONTADOR_NOME: TWideStringField
      FieldName = 'CONTADOR_NOME'
      Size = 60
    end
    object qrempresaCONTADOR_CPF: TWideStringField
      FieldName = 'CONTADOR_CPF'
    end
    object qrempresaCONTADOR_CRC: TWideStringField
      FieldName = 'CONTADOR_CRC'
      Size = 15
    end
    object qrempresaCONTADOR_CNPJ: TWideStringField
      FieldName = 'CONTADOR_CNPJ'
      Size = 25
    end
    object qrempresaCONTADOR_CEP: TWideStringField
      FieldName = 'CONTADOR_CEP'
      Size = 10
    end
    object qrempresaCONTADOR_ENDERECO: TWideStringField
      FieldName = 'CONTADOR_ENDERECO'
      Size = 60
    end
    object qrempresaCONTADOR_NUMERO: TWideStringField
      FieldName = 'CONTADOR_NUMERO'
      Size = 5
    end
    object qrempresaCONTADOR_COMPLEMENTO: TWideStringField
      FieldName = 'CONTADOR_COMPLEMENTO'
      Size = 60
    end
    object qrempresaCONTADOR_BAIRRO: TWideStringField
      FieldName = 'CONTADOR_BAIRRO'
      Size = 60
    end
    object qrempresaCONTADOR_FONE: TWideStringField
      FieldName = 'CONTADOR_FONE'
      Size = 15
    end
    object qrempresaCONTADOR_FAX: TWideStringField
      FieldName = 'CONTADOR_FAX'
      Size = 15
    end
    object qrempresaCONTADOR_EMAIL: TWideStringField
      FieldName = 'CONTADOR_EMAIL'
      Size = 60
    end
    object qrempresaINSC_MUNICIPAL: TWideStringField
      FieldName = 'INSC_MUNICIPAL'
    end
    object qrempresaDATA_ABERTURA: TDateTimeField
      FieldName = 'DATA_ABERTURA'
    end
    object qrempresaCNAE: TWideStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object qrempresaCRT: TWideStringField
      FieldName = 'CRT'
      Size = 1
    end
    object qrempresaCONTADOR_CIDADE: TWideStringField
      FieldName = 'CONTADOR_CIDADE'
      Size = 30
    end
    object qrempresaCONTADOR_COD_MUNICIPIO: TWideStringField
      FieldName = 'CONTADOR_COD_MUNICIPIO'
      Size = 30
    end
    object qrempresaCONTADOR_UF: TWideStringField
      FieldName = 'CONTADOR_UF'
      Size = 2
    end
    object qrempresaPERMITE_CREDITO: TIntegerField
      FieldName = 'PERMITE_CREDITO'
    end
    object qrempresaFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Size = 60
    end
    object qrempresaDFIXAS: TFloatField
      FieldName = 'DFIXAS'
    end
    object qrempresaTIPOCALCULO: TIntegerField
      FieldName = 'TIPOCALCULO'
    end
  end
  object qrmodelo: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000082')
    Params = <>
    Left = 440
    Top = 192
    object qrmodeloCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object qrmodeloMODELO: TWideStringField
      FieldName = 'MODELO'
      Size = 100
    end
    object qrmodeloSIGLA: TWideStringField
      FieldName = 'SIGLA'
      Size = 5
    end
    object qrmodeloSINTEGRA: TWideStringField
      FieldName = 'SINTEGRA'
      Size = 2
    end
    object qrmodeloTIPO_REGISTRO: TWideStringField
      FieldName = 'TIPO_REGISTRO'
      Size = 10
    end
    object qrmodeloSEQUENCIANF: TIntegerField
      FieldName = 'SEQUENCIANF'
    end
  end
  object qrfornecedor: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000009')
    Params = <>
    Left = 440
    Top = 128
    object qrfornecedorCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrfornecedorNOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrfornecedorFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Size = 50
    end
    object qrfornecedorENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qrfornecedorBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrfornecedorCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qrfornecedorUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrfornecedorCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qrfornecedorCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Size = 40
    end
    object qrfornecedorTELEFONE1: TWideStringField
      FieldName = 'TELEFONE1'
    end
    object qrfornecedorTELEFONE2: TWideStringField
      FieldName = 'TELEFONE2'
    end
    object qrfornecedorFAX: TWideStringField
      FieldName = 'FAX'
    end
    object qrfornecedorCONTATO1: TWideStringField
      FieldName = 'CONTATO1'
      Size = 40
    end
    object qrfornecedorCONTATO2: TWideStringField
      FieldName = 'CONTATO2'
      Size = 40
    end
    object qrfornecedorCELULAR1: TWideStringField
      FieldName = 'CELULAR1'
    end
    object qrfornecedorCELULAR2: TWideStringField
      FieldName = 'CELULAR2'
    end
    object qrfornecedorEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrfornecedorHOMEPAGE: TWideStringField
      FieldName = 'HOMEPAGE'
      Size = 80
    end
    object qrfornecedorCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object qrfornecedorIE: TWideStringField
      FieldName = 'IE'
      Size = 25
    end
    object qrfornecedorBANCO: TWideStringField
      FieldName = 'BANCO'
      Size = 30
    end
    object qrfornecedorAGENCIA: TWideStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object qrfornecedorCONTA: TWideStringField
      FieldName = 'CONTA'
    end
    object qrfornecedorOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrfornecedorOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrfornecedorOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrfornecedorDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrfornecedorTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrfornecedorASSISTENCIA_TECNICA: TIntegerField
      FieldName = 'ASSISTENCIA_TECNICA'
    end
    object qrfornecedorNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrfornecedorIM: TWideStringField
      FieldName = 'IM'
      Size = 25
    end
    object qrfornecedorREP_NOME: TWideStringField
      FieldName = 'REP_NOME'
      Size = 80
    end
    object qrfornecedorREP_TELEFONE: TWideStringField
      FieldName = 'REP_TELEFONE'
    end
    object qrfornecedorREP_ENDERECO: TWideStringField
      FieldName = 'REP_ENDERECO'
      Size = 60
    end
    object qrfornecedorREP_BAIRRO: TWideStringField
      FieldName = 'REP_BAIRRO'
      Size = 40
    end
    object qrfornecedorREP_COMPLEMENTO: TWideStringField
      FieldName = 'REP_COMPLEMENTO'
      Size = 50
    end
    object qrfornecedorREP_CIDADE: TWideStringField
      FieldName = 'REP_CIDADE'
      Size = 40
    end
    object qrfornecedorREP_UF: TWideStringField
      FieldName = 'REP_UF'
      Size = 2
    end
    object qrfornecedorREP_CEP: TWideStringField
      FieldName = 'REP_CEP'
      Size = 15
    end
    object qrfornecedorREP_TELEFONE1: TWideStringField
      FieldName = 'REP_TELEFONE1'
    end
    object qrfornecedorREP_TELEFONE2: TWideStringField
      FieldName = 'REP_TELEFONE2'
    end
    object qrfornecedorREP_TELEFONE3: TWideStringField
      FieldName = 'REP_TELEFONE3'
    end
    object qrfornecedorREP_FAX: TWideStringField
      FieldName = 'REP_FAX'
    end
    object qrfornecedorREP_CNPJ: TWideStringField
      FieldName = 'REP_CNPJ'
      Size = 25
    end
    object qrfornecedorREP_IE: TWideStringField
      FieldName = 'REP_IE'
      Size = 25
    end
    object qrfornecedorREP_HOME_PAGE: TWideStringField
      FieldName = 'REP_HOME_PAGE'
      Size = 100
    end
    object qrfornecedorREP_EMAIL: TWideStringField
      FieldName = 'REP_EMAIL'
      Size = 100
    end
    object qrfornecedorCNAE: TWideStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object qrfornecedorCOD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrfornecedorIBGE: TWideStringField
      FieldName = 'IBGE'
      Size = 5
    end
  end
  object menu_tabelas_fiscais: TAdvPopupMenu
    MenuStyler = AdvMenuOfficeStyler1
    Version = '2.5.4.3'
    Left = 696
    Top = 296
    object ModelosdeNotasFiscais1: TMenuItem
      Caption = 'Modelos de Notas Fiscais'
      ImageIndex = 89
      OnClick = ModelosdeNotasFiscais1Click
    end
    object CFOP1: TMenuItem
      Caption = 'CFOP'
      ImageIndex = 105
      OnClick = CFOP1Click
    end
    object ClassesdeRecolhimento1: TMenuItem
      Caption = 'CST'
      ImageIndex = 33
      OnClick = ClassesdeRecolhimento1Click
    end
    object N1: TMenuItem
      Caption = '-'
      Visible = False
    end
    object ImportaNotaFiscalEletrnica1: TMenuItem
      Caption = 'Importa Nota Fiscal Eletr'#244'nica'
      Visible = False
      OnClick = ImportaNotaFiscalEletrnica1Click
    end
  end
  object pop: TAdvPopupMenu
    MenuStyler = AdvMenuOfficeStyler1
    Version = '2.5.4.3'
    Left = 712
    Top = 408
    object Incluir2: TMenuItem
      Caption = 'Incluir'
      ShortCut = 113
      OnClick = bincluirClick
    end
    object Alterar2: TMenuItem
      Caption = 'Alterar'
      ShortCut = 114
      OnClick = Alterar2Click
    end
    object Excluir2: TMenuItem
      Caption = 'Excluir'
      ShortCut = 46
      OnClick = bexcluirClick
    end
    object LocalizarFiltro2: TMenuItem
      Caption = 'Localizar / Filtro'
      ShortCut = 117
      OnClick = b
    end
    object Relatrios2: TMenuItem
      Caption = 'Relat'#243'rios'
      ShortCut = 118
      OnClick = brelatorioClick
    end
    object Sair2: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = bfecharClick
    end
  end
  object qrfornecedor2: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000009')
    Params = <>
    Left = 368
    Top = 192
    object qrfornecedor2CODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrfornecedor2NOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrfornecedor2FANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Size = 50
    end
    object qrfornecedor2ENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qrfornecedor2BAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrfornecedor2CIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qrfornecedor2UF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrfornecedor2CEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qrfornecedor2COMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Size = 40
    end
    object qrfornecedor2TELEFONE1: TWideStringField
      FieldName = 'TELEFONE1'
    end
    object qrfornecedor2TELEFONE2: TWideStringField
      FieldName = 'TELEFONE2'
    end
    object qrfornecedor2FAX: TWideStringField
      FieldName = 'FAX'
    end
    object qrfornecedor2CONTATO1: TWideStringField
      FieldName = 'CONTATO1'
      Size = 40
    end
    object qrfornecedor2CONTATO2: TWideStringField
      FieldName = 'CONTATO2'
      Size = 40
    end
    object qrfornecedor2CELULAR1: TWideStringField
      FieldName = 'CELULAR1'
    end
    object qrfornecedor2CELULAR2: TWideStringField
      FieldName = 'CELULAR2'
    end
    object qrfornecedor2EMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrfornecedor2HOMEPAGE: TWideStringField
      FieldName = 'HOMEPAGE'
      Size = 80
    end
    object qrfornecedor2CNPJ: TWideStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object qrfornecedor2IE: TWideStringField
      FieldName = 'IE'
      Size = 25
    end
    object qrfornecedor2BANCO: TWideStringField
      FieldName = 'BANCO'
      Size = 30
    end
    object qrfornecedor2AGENCIA: TWideStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object qrfornecedor2CONTA: TWideStringField
      FieldName = 'CONTA'
    end
    object qrfornecedor2OBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrfornecedor2OBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrfornecedor2OBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrfornecedor2DATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrfornecedor2TIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrfornecedor2ASSISTENCIA_TECNICA: TIntegerField
      FieldName = 'ASSISTENCIA_TECNICA'
    end
    object qrfornecedor2NUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrfornecedor2IM: TWideStringField
      FieldName = 'IM'
      Size = 25
    end
    object qrfornecedor2REP_NOME: TWideStringField
      FieldName = 'REP_NOME'
      Size = 80
    end
    object qrfornecedor2REP_TELEFONE: TWideStringField
      FieldName = 'REP_TELEFONE'
    end
    object qrfornecedor2REP_ENDERECO: TWideStringField
      FieldName = 'REP_ENDERECO'
      Size = 60
    end
    object qrfornecedor2REP_BAIRRO: TWideStringField
      FieldName = 'REP_BAIRRO'
      Size = 40
    end
    object qrfornecedor2REP_COMPLEMENTO: TWideStringField
      FieldName = 'REP_COMPLEMENTO'
      Size = 50
    end
    object qrfornecedor2REP_CIDADE: TWideStringField
      FieldName = 'REP_CIDADE'
      Size = 40
    end
    object qrfornecedor2REP_UF: TWideStringField
      FieldName = 'REP_UF'
      Size = 2
    end
    object qrfornecedor2REP_CEP: TWideStringField
      FieldName = 'REP_CEP'
      Size = 15
    end
    object qrfornecedor2REP_TELEFONE1: TWideStringField
      FieldName = 'REP_TELEFONE1'
    end
    object qrfornecedor2REP_TELEFONE2: TWideStringField
      FieldName = 'REP_TELEFONE2'
    end
    object qrfornecedor2REP_TELEFONE3: TWideStringField
      FieldName = 'REP_TELEFONE3'
    end
    object qrfornecedor2REP_FAX: TWideStringField
      FieldName = 'REP_FAX'
    end
    object qrfornecedor2REP_CNPJ: TWideStringField
      FieldName = 'REP_CNPJ'
      Size = 25
    end
    object qrfornecedor2REP_IE: TWideStringField
      FieldName = 'REP_IE'
      Size = 25
    end
    object qrfornecedor2REP_HOME_PAGE: TWideStringField
      FieldName = 'REP_HOME_PAGE'
      Size = 100
    end
    object qrfornecedor2REP_EMAIL: TWideStringField
      FieldName = 'REP_EMAIL'
      Size = 100
    end
    object qrfornecedor2CNAE: TWideStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object qrfornecedor2COD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrfornecedor2IBGE: TWideStringField
      FieldName = 'IBGE'
      Size = 5
    end
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 296
    Top = 128
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
      Size = 60
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
    object qrprodutoAPLICACAO: TMemoField
      FieldName = 'APLICACAO'
      BlobType = ftMemo
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
    object qrprodutoCODCONTA: TWideStringField
      FieldName = 'CODCONTA'
      Size = 6
    end
  end
  object qrnota_item: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000088')
    Params = <>
    Left = 24
    Top = 448
  end
  object qrgrade_entrada: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000033')
    Params = <>
    Left = 536
    Top = 128
  end
  object qrnota_antes: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select sum(valor_contabil) total_geral,'
      'sum(valor_mercadorias) total_mercadorias,'
      
        'sum(base_icms) base_icms,sum(valor_icms_creditado) valor_icms_cr' +
        'editado,'
      
        'sum(base_substituicao) base_substituicao,sum(valor_substituicao)' +
        ' valor_substituicao,'
      'sum(valor_icms_outras) valor_icms_outras,'
      'sum(valor_frete) valor_frete,'
      'sum(valor_despesas) valor_despesas,'
      'sum(valor_seguro) valor_seguro,'
      'sum(valor_ipi_creditado) valor_ipi_creditado,'
      'data,'
      'CODIGO,'
      'notafiscal,'
      'modelo_nf,'
      'valor_contabil,'
      'obs2'
      'from c000086'
      'group by '
      'obs1,'
      'data,'
      'CODIGO,'
      'notafiscal,'
      'modelo_nf,'
      'valor_contabil,'
      'obs2'
      'order by data')
    Params = <>
    Left = 680
    Top = 184
  end
  object qritem_antes: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000085')
    Params = <>
    Left = 616
    Top = 128
  end
  object qrnota_total: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 604
    Top = 186
  end
  object qrpagar: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 672
    Top = 128
  end
  object UCControls1: TUCControls
    GroupName = 'Form.Menu NF Entrada'
    UserControl = frmPrincipal.iCloud
    NotAllowed = naDisabled
    Left = 312
    Top = 440
  end
end
