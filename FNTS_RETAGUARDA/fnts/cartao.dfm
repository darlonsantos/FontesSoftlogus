object frmCartao: TfrmCartao
  Left = 202
  Top = 133
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'CART'#195'O | Movimento'
  ClientHeight = 466
  ClientWidth = 806
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
    Top = 53
    Width = 806
    Height = 0
    Align = alTop
    ExplicitWidth = 796
  end
  object Bevel2: TBevel
    Left = 0
    Top = 51
    Width = 806
    Height = 2
    Align = alTop
    ExplicitWidth = 796
  end
  object Bevel3: TBevel
    Left = 0
    Top = 427
    Width = 806
    Height = 2
    Align = alBottom
    ExplicitTop = 409
    ExplicitWidth = 796
  end
  object Bevel4: TBevel
    Left = 0
    Top = 399
    Width = 806
    Height = 2
    Align = alBottom
    ExplicitTop = 381
    ExplicitWidth = 796
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 806
    Height = 51
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 18
      Width = 46
      Height = 13
      Caption = 'Bandeira:'
    end
    object Label2: TLabel
      Left = 246
      Top = 18
      Width = 40
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object Label3: TLabel
      Left = 471
      Top = 18
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object Label4: TLabel
      Left = 574
      Top = 18
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
    end
    object ed_cod_cartao: TRzButtonEdit
      Left = 58
      Top = 15
      Width = 51
      Height = 21
      FocusColor = 12713983
      TabOrder = 0
      OnKeyPress = ed_cod_cartaoKeyPress
      AltBtnWidth = 15
      ButtonWidth = 15
      OnButtonClick = ed_cod_cartaoButtonClick
    end
    object ed_cartao: TRzEdit
      Left = 111
      Top = 15
      Width = 128
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object combo_periodo: TComboBox
      Left = 290
      Top = 15
      Width = 81
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 2
      Text = 'Recebto.'
      OnKeyPress = combo_periodoKeyPress
      Items.Strings = (
        'Recebto.'
        'Venda'
        'Baixa')
    end
    object DateEdit1: TDateEdit
      Left = 378
      Top = 15
      Width = 87
      Height = 21
      NumGlyphs = 2
      TabOrder = 3
      Text = '01/01/2000'
      OnEnter = DateEdit1Enter
      OnExit = DateEdit1Exit
      OnKeyPress = DateEdit1KeyPress
    end
    object DateEdit2: TDateEdit
      Left = 482
      Top = 14
      Width = 87
      Height = 21
      NumGlyphs = 2
      TabOrder = 4
      OnEnter = DateEdit2Enter
      OnExit = DateEdit2Exit
      OnKeyPress = DateEdit2KeyPress
    end
    object blocalizar: TAdvGlowButton
      Left = 702
      Top = 1
      Width = 89
      Height = 48
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
      TabOrder = 5
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
    object combo_situacao: TComboBox
      Left = 624
      Top = 15
      Width = 71
      Height = 21
      Style = csDropDownList
      ItemIndex = 1
      TabOrder = 6
      Text = 'Aberto'
      OnKeyPress = combo_situacaoKeyPress
      Items.Strings = (
        'Todas'
        'Aberto'
        'Baixada')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 429
    Width = 806
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object bincluir: TAdvGlowButton
      Left = 7
      Top = 3
      Width = 111
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
      Left = 123
      Top = 3
      Width = 111
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
      Left = 236
      Top = 3
      Width = 108
      Height = 32
      Caption = 'F4 | Excluir'
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
    object bitbtn5: TAdvGlowButton
      Left = 474
      Top = 3
      Width = 124
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
      OnClick = bitbtn5Click
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
      Left = 678
      Top = 3
      Width = 98
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
      TabOrder = 4
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
    object bliquidar: TAdvGlowButton
      Left = 347
      Top = 3
      Width = 124
      Height = 32
      Caption = 'F5 | Baixar'
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
        ED954F6B136110C67F33EF6ED348A2688C82C53F07416F82E041C18307F118BC
        79F06CB58A474F7E0C5BE807A822A2A482E8D97AF3A2F4A0C5A2826869624593
        B4316D76C643D368EB362234E0C1E7B203FBCCFBCCCC33BBAFB83B69181919B9
        E5EE57CD0C1149E5B83BAA4AAD561B9D9898B896C6895233577175ED59AFD7B3
        C562B1FBA25AAD0290CBE59AC06887FBB70282B9333E3E3ED6A308862F5F1985
        F40E7B0AECCAC74F077AF5D7C15021F374717079F33237F360AB10559F0CF74D
        C1CC7A9ABC25F82FF00F0848EE20C9C2B411326888D51C03505535330320F9AE
        A219230405CCDBCBB8278438DBE574F96E088992B4880E95DECB978FAF9C6C01
        FB344532F70C9A15D0182420A2587B899DA76E325038BAAEB2C5D9472CCEDC43
        34C6DDC0DBE086EC384CD87B8AB0E704567BFF41E61F5E74B2458B86CE10F69D
        565B6999579F932CBC54FF366B1265299E1BD352A9443E9F07A0D168502E976D
        FEFE7995ED072CEC3882148F69281C376B55B14F539ACC4D19ED258D24DE062B
        756DBF7D407BF62E92DBAFBAE704D1E10B48FEA0CA4A0D807C3EDF15E87CFD3A
        70F6362AA2F6F535567D41EBCD1DA5F50D428C48A444D95593CD312442E301B5
        66C5ECDD43E45D59F1C4C2EE6370F286A6F867CB53D7155B32086888D451230C
        76FD50114DD922055544154BDAD8E21C00F57AA3CBA8373A71BB0171AE93A6D0
        D989755BB4B601DDE37F8D43A4D6FCCCF7CA349393E5F526CF4CAA441964B3DC
        D52E90CAE34BFEDBAA6D88C55AEA8E21AA80E1098E12E2C154FE2F71DA887E87
        4459DC0C55C1CC81B8C715F313AAFA8711A5C4AAA21B0EE939A2BEFF2AFA7FA3
        F5F574E007B9EF1F374A12B8850000000049454E44AE426082}
      Transparent = True
      TabOrder = 5
      OnClick = bliquidarClick
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
  object grid: TwwDBGrid
    Left = 0
    Top = 53
    Width = 806
    Height = 346
    Selected.Strings = (
      'BANDEIRA'#9'16'#9'Bandeira'#9'F'#9'Cart'#227'o'
      'TIPO'#9'8'#9'Tipo'#9'F'#9'Cart'#227'o'
      'NOME'#9'22'#9'Cliente'#9'F'#9'Venda'
      'COD_VENDA'#9'8'#9'N'#250'mero'#9'F'#9'Venda'
      'DATA_VENDA'#9'10'#9'Data'#9'F'#9'Venda'
      'VALOR_TOTAL'#9'10'#9'Total-R$'#9'F'#9'Venda'
      'PARCELA'#9'4'#9'N'#186#9'F'#9'Parcela do Cart'#227'o'
      'VALOR'#9'10'#9'Valor'#9'F'#9'Parcela do Cart'#227'o'
      'DATA_RECEBIMENTO'#9'10'#9'Data Receb'#9'F'#9'Recebimento'
      'LIQUIDO'#9'10'#9'Valor-R$'#9'F'#9'Recebimento'
      'SITUACAO'#9'8'#9'Situa'#231#227'o'#9'F'#9'Recebimento')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dscartap
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 2
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    UseTFields = False
    ImageList = ImageList1
  end
  object Panel3: TPanel
    Left = 0
    Top = 401
    Width = 806
    Height = 26
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    Enabled = False
    ParentBackground = False
    TabOrder = 3
    object Label5: TLabel
      Left = 8
      Top = 5
      Width = 123
      Height = 13
      Caption = 'Quantidade de Registros:'
    end
    object Label6: TLabel
      Left = 528
      Top = 6
      Width = 110
      Height = 13
      Caption = 'Total l'#237'quido a receber:'
    end
    object rqtde: TRzNumericEdit
      Left = 135
      Top = 2
      Width = 56
      Height = 21
      TabOrder = 0
      DisplayFormat = ',0;(,0)'
    end
    object rtotal: TRzNumericEdit
      Left = 647
      Top = 2
      Width = 122
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      IntegersOnly = False
      DisplayFormat = '###,###,##0.00'
    end
  end
  object qrcartao: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select c000124.*,'
      'c000007.nome,'
      'c000013.banco bandeira'
      'from'
      'c000124,'
      'c000007,'
      'c000013'
      'where'
      'c000124.cod_cliente = c000007.codigo and'
      'c000124.banco = c000013.numero'
      'order by'
      'data_venda')
    Params = <>
    Left = 488
    Top = 296
    object qrcartaoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrcartaoCOD_VENDA: TWideStringField
      FieldName = 'COD_VENDA'
      Size = 10
    end
    object qrcartaoBANCO: TWideStringField
      FieldName = 'BANCO'
      Size = 10
    end
    object qrcartaoCOD_CLIENTE: TWideStringField
      FieldName = 'COD_CLIENTE'
      Size = 10
    end
    object qrcartaoDATA_VENDA: TDateTimeField
      FieldName = 'DATA_VENDA'
    end
    object qrcartaoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qrcartaoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qrcartaoLIQUIDO: TFloatField
      FieldName = 'LIQUIDO'
    end
    object qrcartaoDATA_RECEBIMENTO: TDateTimeField
      FieldName = 'DATA_RECEBIMENTO'
    end
    object qrcartaoDATA_BAIXA: TDateTimeField
      FieldName = 'DATA_BAIXA'
    end
    object qrcartaoSITUACAO: TWideStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
    object qrcartaoTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object qrcartaoPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object qrcartaoVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
    end
    object qrcartaoNOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrcartaoBANDEIRA: TWideStringField
      FieldName = 'BANDEIRA'
      Size = 50
    end
  end
  object dscartap: TDataSource
    DataSet = qrcartao
    Left = 520
    Top = 296
  end
  object PopupMenu1: TPopupMenu
    Left = 392
    Top = 296
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
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 115
      OnClick = bexcluirClick
    end
    object Baixar1: TMenuItem
      Caption = 'Baixar'
      ShortCut = 116
      OnClick = bliquidarClick
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      ShortCut = 118
      OnClick = bitbtn5Click
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = bfecharClick
    end
  end
  object query: TZQuery
    Connection = frmmodulo.econexao2
    Params = <>
    Left = 552
    Top = 296
  end
  object fxcartao: TfrxReport
    Version = '4.12.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39758.671900127300000000
    ReportOptions.LastChange = 39758.751544768520000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure frmListaOnShow(Sender: TfrxComponent);'
      'begin'
      '  conexao.Connected := true;'
      '  qrbanco.open;'
      '  combo_banco.Clear;'
      
        '  combo_banco.items.add('#39'Todas'#39');                               ' +
        '                                             '
      '  qrbanco.first;'
      '  while not qrbanco.eof do'
      '  begin'
      
        '     combo_banco.Items.add(qrbanco.fieldbyname('#39'banco'#39').asstring' +
        ');'
      '     qrbanco.next;                                   '
      '  end;'
      '  combo_banco.itemindex := 0;'
      ''
      '  eddata1.text := '#39'01/01/1900'#39';'
      
        '  eddata2.text := '#39'31/12/2100'#39';                                 ' +
        '                                     '
      'end;'
      ''
      ''
      ''
      'procedure ComboBox1OnChange(Sender: TfrxComponent);'
      'begin'
      '  qrcliente.close;'
      '  qrcliente.sql.clear;'
      '  qrcliente.sql.add('#39'select * from c000007'#39');'
      
        '  qrcliente.sql.add('#39'where nome like "'#39'+combo_cliente.text+'#39'%" O' +
        'RDER BY NOME'#39');'
      '  qrcliente.open;'
      '  qrcliente.first;'
      '  while not qrcliente.eof do'
      '  begin'
      
        '    combo_cliente.items.add(qrcliente.fieldbyname('#39'nome'#39').asstri' +
        'ng);'
      
        '    qrcliente.next;                                             ' +
        '         '
      '  end;'
      'end;'
      ''
      'procedure combo_clienteOnExit(Sender: TfrxComponent);'
      'begin'
      
        '   if combo_cliente.text = '#39#39' then combo_cliente.text := '#39'TODOS'#39 +
        ';'
      'end;'
      ''
      
        'procedure combo_clienteOnKeyPress(Sender: TfrxComponent; var Key' +
        ': Char);'
      'begin'
      
        '  if key = #13 then combo_periodo.setfocus;                     ' +
        '                                                                ' +
        '                                                                ' +
        '    '
      'end;'
      ''
      
        'procedure MaskEdit1OnKeyPress(Sender: TfrxComponent; var Key: Ch' +
        'ar);'
      'begin'
      
        '  if key = #13 then edData2.setfocus;                           ' +
        '                                                              '
      'end;'
      ''
      
        'procedure Combo_PeriodoOnKeyPress(Sender: TfrxComponent; var Key' +
        ': Char);'
      'begin'
      '  if key = #13 then edData1.setfocus;'
      'end;'
      ''
      
        'procedure edData2OnKeyPress(Sender: TfrxComponent; var Key: Char' +
        ');'
      'begin'
      '  if key = #13 then bOk.setfocus;'
      'end;'
      ''
      
        'procedure combo_situacaoOnKeyPress(Sender: TfrxComponent; var Ke' +
        'y: Char);'
      'begin'
      '  if key = #13 then combo_cliente.setfocus;'
      'end;'
      ''
      
        'procedure combo_bancoOnKeyPress(Sender: TfrxComponent; var Key: ' +
        'Char);'
      'begin'
      '  if key = #13 then combo_situacao.setfocus;'
      'end;'
      ''
      '(**************************************************************)'
      
        '(*******************  BLOCO DE ALTER'#199#195'O ***********************)' +
        '    '
      'procedure BitBtn1OnClick(Sender: TfrxComponent);'
      
        'var banco, cliente, situacao, periodo : string;                 ' +
        '                                                                ' +
        '                         '
      'begin'
      '  if combo_banco.itemIndex = 0 then'
      '     banco := '#39#39
      '  else'
      '     banco := '#39' and c000013.banco = "'#39'+combo_banco.text+'#39'"'#39';'
      '  '
      ''
      '  if combo_cliente.itemIndex = 0 then'
      '     cliente := '#39#39
      '  else'
      '     cliente := '#39' and c000007.nome = "'#39'+combo_cliente.text+'#39'"'#39';'
      '  '
      '  if combo_situacao.itemIndex = 0 then situacao := '#39#39';'
      
        '  if combo_situacao.itemIndex = 1 then situacao := '#39' and c000123' +
        '.situacao = 1'#39';'
      
        '  if combo_situacao.itemIndex = 2 then situacao := '#39' and c000123' +
        '.situacao = 2'#39';'
      ''
      
        '  if combo_periodo.itemIndex = 0 then periodo := '#39' and data betw' +
        'een :datai and :dataf'#39';'
      
        '  if combo_periodo.itemIndex = 1 then periodo := '#39' and data_pgto' +
        ' between :datai and :dataf'#39';'
      ''
      '  qrfinanceira.close;'
      '  qrfinanceira.sql.clear;'
      '  qrfinanceira.sql.add('#39'select'#39');      '
      '  qrfinanceira.sql.add('#39'c000123.*,'#39');  '
      '  qrfinanceira.sql.add('#39'c000007.nome,'#39');  '
      '  qrfinanceira.sql.add('#39'c000013.banco'#39');  '
      '  qrfinanceira.sql.add('#39'from'#39');  '
      '  qrfinanceira.sql.add('#39'c000123,'#39');  '
      '  qrfinanceira.sql.add('#39'c000007,'#39');  '
      '  qrfinanceira.sql.add('#39'c000013'#39');  '
      '  qrfinanceira.sql.add('#39'where'#39');  '
      
        '  qrfinanceira.sql.add('#39'c000123.codcliente = c000007.codigo and'#39 +
        ');           '
      '  qrfinanceira.sql.add('#39'c000123.codbanco   = c000013.numero'#39');'
      
        '  qrfinanceira.sql.add(banco+cliente+situacao+periodo);         ' +
        '                                                             '
      '  qrfinanceira.sql.add('#39'order by'#39');'
      '  qrfinanceira.sql.add('#39'c000123.data'#39');'
      
        '  qrfinanceira.ParamByName('#39'datai'#39').Value := strtodate(edData1.t' +
        'ext);'
      
        '  qrfinanceira.ParamByName('#39'dataf'#39').value := strtodate(edData2.t' +
        'ext);'
      '  qrfinanceira.open;'
      ''
      
        '                                                                ' +
        '                                                      '
      '    '
      'end;'
      '  '
      ''
      
        '(**************************************************************)' +
        '      '
      ''
      'begin'
      ''
      'end.')
    OnBeforeConnect = fxcartaoBeforeConnect
    OnGetValue = fxcartaoGetValue
    Left = 392
    Top = 296
    Datasets = <
      item
        DataSet = fxcartao.qrbanco
        DataSetName = 'qrbanco'
      end
      item
        DataSet = fxcartao.qrcliente
        DataSetName = 'qrcliente'
      end
      item
        DataSet = fxcartao.qrfinanceira
        DataSetName = 'qrfinanceira'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object Conexao: TfrxIBXDatabase
        DatabaseName = 'C:\Arquivos de programas\CIA\bd\BASE.FDB'
        LoginPrompt = False
        Params.Strings = (
          'user_name=SYSDBA'
          'password=masterkey')
        SQLDialect = 1
        pLeft = 24
        pTop = 16
      end
      object qrbanco: TfrxIBXQuery
        UserName = 'qrbanco'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <>
        SQL.Strings = (
          'select numero, banco from c000013'
          'where financeira = 1'
          'order by banco                                        ')
        Database = fxcartao.Conexao
        pLeft = 84
        pTop = 16
        Parameters = <>
      end
      object qrcliente: TfrxIBXQuery
        UserName = 'qrcliente'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <>
        SQL.Strings = (
          'select numero, banco from c000013'
          'where financeira = 1'
          'order by banco                                        ')
        Database = fxcartao.Conexao
        pLeft = 136
        pTop = 16
        Parameters = <>
      end
      object qrfinanceira: TfrxIBXQuery
        UserName = 'qrfinanceira'
        CloseDataSource = True
        FieldAliases.Strings = (
          'CODIGO=CODIGO'
          'CODBANCO=CODBANCO'
          'DATA=DATA'
          'CODCLIENTE=CODCLIENTE'
          'VALOR=VALOR'
          'SITUACAO=SITUACAO'
          'DATA_PGTO=DATA_PGTO'
          'VALOR_PAGO=VALOR_PAGO'
          'BORDERO=BORDERO'
          'PROPOSTA=PROPOSTA'
          'OBS=OBS'
          'CODVENDA=CODVENDA'
          'NOME=NOME'
          'BANCO=BANCO')
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <>
        SQL.Strings = (
          'select'
          'c000123.*,'
          'c000007.nome,'
          'c000013.banco'
          'from'
          'c000123,'
          'c000007,'
          'c000013'
          'where'
          'c000123.codcliente = c000007.codigo and         '
          'c000123.codbanco   = c000013.numero'
          'order by'
          'data                                                           ')
        Database = fxcartao.Conexao
        pLeft = 192
        pTop = 16
        Parameters = <>
      end
    end
    object frmLista: TfrxDialogPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      BorderStyle = bsToolWindow
      Caption = 'Financeira | Relat'#243'rio'
      Height = 165.000000000000000000
      ClientHeight = 138.000000000000000000
      Left = 479.000000000000000000
      Top = 154.000000000000000000
      Width = 429.000000000000000000
      ClientWidth = 421.000000000000000000
      OnShow = 'frmListaOnShow'
      object Label1: TfrxLabelControl
        Left = 8.000000000000000000
        Top = 12.000000000000000000
        Width = 85.000000000000000000
        Height = 13.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Financeira:'
        Color = clBtnFace
      end
      object combo_banco: TfrxComboBoxControl
        Left = 96.000000000000000000
        Top = 8.000000000000000000
        Width = 313.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        Color = clWindow
        Style = csDropDownList
        ItemIndex = -1
        OnKeyPress = 'combo_bancoOnKeyPress'
      end
      object Label2: TfrxLabelControl
        Left = 8.000000000000000000
        Top = 36.000000000000000000
        Width = 85.000000000000000000
        Height = 13.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Situa'#231#227'o:'
        Color = clBtnFace
      end
      object combo_situacao: TfrxComboBoxControl
        Left = 96.000000000000000000
        Top = 32.000000000000000000
        Width = 313.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        Color = clWindow
        Items.Strings = (
          'Todas'
          'Aberto'
          'Baixadas')
        Style = csDropDownList
        Text = 'Todas'
        ItemIndex = 0
        OnKeyPress = 'combo_situacaoOnKeyPress'
      end
      object Panel1: TfrxPanelControl
        Top = 112.000000000000000000
        Width = 433.000000000000000000
        Height = 41.000000000000000000
        ShowHint = True
        BevelOuter = bvNone
        Color = clBtnFace
        object Bok: TfrxBitBtnControl
          Left = 112.000000000000000000
          Top = 4.000000000000000000
          Width = 95.000000000000000000
          Height = 25.000000000000000000
          ShowHint = True
          Caption = 'Ok'
          ModalResult = 1
          OnClick = 'BitBtn1OnClick'
        end
        object Bevel1: TfrxBevelControl
          Width = 574.000000000000000000
          Height = 2.000000000000000000
          ShowHint = True
        end
        object BCancelar: TfrxBitBtnControl
          Left = 216.000000000000000000
          Top = 4.000000000000000000
          Width = 95.000000000000000000
          Height = 25.000000000000000000
          ShowHint = True
          Caption = 'Cancelar'
          ModalResult = 2
        end
      end
      object Label3: TfrxLabelControl
        Left = 8.000000000000000000
        Top = 60.000000000000000000
        Width = 85.000000000000000000
        Height = 13.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Cliente:'
        Color = clBtnFace
      end
      object combo_cliente: TfrxComboBoxControl
        Left = 96.000000000000000000
        Top = 56.000000000000000000
        Width = 313.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        Color = clWindow
        Items.Strings = (
          'Todos')
        Text = 'Todos'
        ItemIndex = 0
        OnChange = 'ComboBox1OnChange'
        OnExit = 'combo_clienteOnExit'
        OnKeyPress = 'combo_clienteOnKeyPress'
      end
      object Label4: TfrxLabelControl
        Left = 8.000000000000000000
        Top = 84.000000000000000000
        Width = 85.000000000000000000
        Height = 13.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Per'#237'odo:'
        Color = clBtnFace
      end
      object Combo_Periodo: TfrxComboBoxControl
        Left = 96.000000000000000000
        Top = 80.000000000000000000
        Width = 89.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        Color = clWindow
        Items.Strings = (
          'Venda'
          'Pagamento')
        Style = csDropDownList
        Text = 'Pagamento'
        ItemIndex = 1
        OnKeyPress = 'Combo_PeriodoOnKeyPress'
      end
      object edData1: TfrxMaskEditControl
        Left = 216.000000000000000000
        Top = 80.000000000000000000
        Width = 81.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        Color = clWindow
        EditMask = '##/##/####'
        MaxLength = 10
        Text = '01/01/1900'
        OnKeyPress = 'MaskEdit1OnKeyPress'
      end
      object Label5: TfrxLabelControl
        Left = 308.000000000000000000
        Top = 84.000000000000000000
        Width = 9.000000000000000000
        Height = 13.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        Alignment = taCenter
        AutoSize = False
        Caption = 'a'
        Color = clBtnFace
      end
      object edData2: TfrxMaskEditControl
        Left = 328.000000000000000000
        Top = 80.000000000000000000
        Width = 81.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        Color = clWindow
        EditMask = '##/##/####'
        MaxLength = 10
        Text = '01/01/1900'
        OnKeyPress = 'edData2OnKeyPress'
      end
      object Label6: TfrxLabelControl
        Left = 192.000000000000000000
        Top = 84.000000000000000000
        Width = 13.000000000000000000
        Height = 13.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        Alignment = taCenter
        AutoSize = False
        Caption = 'de'
        Color = clBtnFace
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 16.000000000000000000
        Width = 718.110700000000000000
        DataSet = fxcartao.qrfinanceira
        DataSetName = 'qrfinanceira'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BANCO'
          DataSet = fxcartao.qrfinanceira
          DataSetName = 'qrfinanceira'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[qrfinanceira."BANCO"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 222.992270000000000000
          Top = 3.779530000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOME'
          DataSet = fxcartao.qrfinanceira
          DataSetName = 'qrfinanceira'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[qrfinanceira."NOME"]')
          ParentFont = False
        end
      end
    end
  end
  object fscartao: TfrxDBDataset
    UserName = 'fscartao'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODBANCO=CODBANCO'
      'BANCO=BANCO'
      'DATA=DATA'
      'CODCLIENTE=CODCLIENTE'
      'VALOR=VALOR'
      'SITUACAO=SITUACAO'
      'DATA_PGTO=DATA_PGTO'
      'VALOR_PAGO=VALOR_PAGO'
      'BORDERO=BORDERO'
      'PROPOSTA=PROPOSTA'
      'OBS=OBS'
      'CODVENDA=CODVENDA'
      'NOME=NOME'
      'CODIGO=CODIGO')
    DataSet = qrcartao
    BCDToCurrency = False
    Left = 424
    Top = 296
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
    Left = 456
    Top = 296
  end
  object fsConexao: TfrxIBXComponents
    Left = 360
    Top = 296
  end
  object fsDialog: TfrxDialogControls
    Left = 328
    Top = 296
  end
  object ImageList1: TImageList
    DrawingStyle = dsTransparent
    Height = 15
    Width = 15
    Left = 200
    Top = 296
    Bitmap = {
      494C01010600080008000F000F00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000003C0000001E0000000100200000000000201C
      0000000000000000000000000000000000007AC8EC002CA6DF002AA3DE0028A0
      DC00269DDB00249AD9002297D8001F92D5001A8BD2001584CE00107DCB000C76
      C8000870C500056BC2000267C000000000006AAE6E0565AA69AF60A665FD6BAE
      6FFF4C9750FB529C56344E995222000000001A57C3802564C9FB2177E6FF0579
      EAFF0164DDFF044DBDFC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000047B5E500BDE2F400F3FBFD00EEFAFD00EDFAFD00EDFAFD00EEFBFD00EEFB
      FD00EEFAFD00EDFAFD00ECFAFD00ECFAFD00EBFAFD00F1FBFD00AACDEA000000
      00006FB274277CBB81FCB7DEBBFF67AC6CFF75B67AFF4E9851FE539C57B84F99
      537A0345B9E3639DF4FF187FFFFF0076F8FF0076EEFF0368E1FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3E7F70061BEE700F3FBFD00B4EE
      F90057D9F40057D9F40056D7F20057D6F10057D5F10056D8F30050D7F4004DD6
      F30061D9F500E9FAFD004392D1000000000075B67A9B9CCDA0FF6FB273FF8DC7
      92FFAADCAFFF76B67BFF519B55FF77B77BFF0442BCFFAECDFEFFFFFFFFFFFFFF
      FFFFFFFFFFFF187FEFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005DC0EA009CD6F000E6F8FC008AE4F70059DAF5005AD9F3003CA0
      D4003CA0D40053D5F10051D7F4004FD5F300D7F5FB0087BEE40054A0D8007FBE
      84197BBB80FF77B77CFF91CB97FFABDEB1FF9CD7A2FFAADDB0FF77B77CFF60AC
      65FF1A58B8FF8DB5F6FF4D92FFFF1177FFFF2186FFFF408AEBFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E2F4FB0036B1E400F2FA
      FD00C2F1FA005BDBF5005BD9F30063DEF50056CAEA0054D5F10053D8F40093E6
      F700E2F3FA001B89D000DEEDF8007FBD84A07FBD84FF97CE9CFFADDFB3FF6FB3
      74FF96D59DFF9DD8A3FFAADDB0FF78B87CFF4B8C9AFF3B76D1FF8DB5F7FFB8D6
      FEFF72A8F5FF2D6BCAFD00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000078CCEE008BD1EF00E9FAFD0093E5F7005BD9F30046B0
      DC003CA0D40055D6F1005BDAF400DDF7FC007CBFE60087C3E800000000007BBB
      80FF8EC893FFAFDFB5FFA1DAA7FF98D79FFF97D69EFF7EC083FF82C187FFABDD
      B0FF79B97DFF438693FF235FC1FF0543BCFF1857BAFF2B7283FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F6FCFE0044B9
      E700C7E9F600E5F9FC005CD9F3003CA0D4003CA0D40056D6F100C6F2FB00BFE2
      F3003AA3DC00F5FAFD00000000008DC9937D7DBB82FF8FC894FFB0E0B6FFA2DA
      A8FF7FC185FFA4D0A7FFDDEEDFFF80B883FFABDEB1FF7AB97FFF569F5AFFC4E7
      C8FF78B87CFF4E99528400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B8E5F70070C7EC00F8FDFE005DDBF3003DA1
      D4003DA1D4005BD8F300ECFAFD0067BAE400B2DCF20000000000000000000000
      00008EC993257DBC82FA90C995FFB0E0B6FF85C28AFFF7FCF8FF95C297FFDDEE
      DFFF82C287FFABDEB1FF7BBA7FFF58A05CFF59A15DFF539C5704000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000059C2EB00A8DEF300ECF8FC003DA2D5003DA2D500D3F4FB00A1D6F0005CB8
      E5000000000000000000000000000000000000000000000000007EBD83F691CA
      96FFB1E0B6FFD9F3DDFFF7FCF8FFA4D0A7FF7EC084FF9FD9A5FFACDEB2FF7BBB
      80FF569F5AFB0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DAF2FB0039B7E700F8FCFE0093E8
      F8009DEAF900EBF9FD0030A9E000D7EEF9000000000000000000000000000000
      00000000000000000000000000007FBE85F592CB97FFB1E1B6FF85C38AFF80C1
      85FF99D7A0FF98D79FFF9FD9A5FFACDFB2FF7DBB81FF58A05CF6000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000073CDEF0093D7F100F2FBFD00E6F9FD008ED2EF0085CEEE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000081BF86F593CC98FFB1E1B7FFA3DBA9FF9BD8A2FF73B477FFAFDFB4FF87C3
      8CFF65AA69FF5DA4610E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1FAFE0043BDE900F0F9
      FC00D4EEF90042B7E700F1F9FD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000082C087F594CC99FFB2E2
      B7FFA3DCAAFFB0E0B6FF8CC692FF6EB173FF66AB6B0E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008CD7F30084D3F00081D0EF00ACE0F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000083C188F594CD9AFFB3E2B7FF93CB98FF77B77CFF70B2
      740E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFEFF005CC6
      EE0068C9EE00FDFEFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000084C2
      8AF596CD9BFF80BE85FF79B97E0E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000086C38BF582C0870E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1E7E300CAAA9B00A16A50008F573D008D56
      3D0099685100C5A99B00EEE7E300000000000000000000000000000000000000
      00000000000000000000E0EEE0008FBF91003A8C3E0024792800247628003A84
      3E008FB99100E0EBE00000000000000000000000000000000000000000000000
      000000000000E3E6F7009AA6E3004C61CB00354EC400334CC200455CC60094A1
      DE00E1E4F500000000000000000000000000A97151A9C38E68FFC08B66FFBE88
      64FFBB8561FFB9835FFFB47E5CFFB27C5AFFB17B58FFAE7957FFAD7656FFAB75
      54FFA97353FFA97151FFA97151A9000000000000000000000000DFC8BD00A265
      4700B17F5600D4B69200DAC2A500D9C2A500D1B38F00AA795100915F4700D8C6
      BD000000000000000000000000000000000000000000B5D9B600308E3400419F
      510086C999009AD2AA009AD1AA0082C695003C964B00307B3300B4D0B6000000
      000000000000000000000000000000000000BFC7EF004B62D0005163D300838F
      E600949FED00949EEC00828DE4004B5CCD003C53C300B8C0E900000000000000
      0000C8926CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA97251FF0000
      000000000000E2CCBD00A25B3B00CAA67C00D7BA9E00C29B7600B5896100B385
      5F00BD957100D0B29600C4A2760088563D00D8C6BD0000000000000000000000
      0000B5DBBA00248E29006CBD8200A7DAB40086CB970065BB7C0063B97B0085CA
      9700A4D8B30065B67C0023712600B4D0B600000000000000000000000000C1CA
      F100465FD4007483E200A0ABF3007E8AEB005B66E3005A65E2007C86E9009EA7
      F0006E7BDC00314AC100B8C1E90000000000CA946EFFFFFFFFFFFFFFFFFFFFFF
      FEFFFFFFFDFFFEFEFDFFFEFEFCFFFEFEFCFFFEFEFCFFFEFEFCFFFEFEFAFFFEFE
      FAFFFCFCF9FFFFFFFFFFAA7353FF00000000F4ECE400B3774900CEA98000D9BB
      A100BD906500B98B6100B6885E00B2835D00B0825C00AF825B00CCA98C00C5A4
      780094614800EFE8E40000000000E1F2E40032A0430071C18600A7DAB1005FBB
      76005BB9720058B76F0058B46E0057B46E005AB67300A4D8B20068B77E00307F
      3400E0ECE10000000000E7EAFA00586FDD007787E500A2AFF4005666E6005564
      E5008891EC008791EB00525EE100515CE0009EA8F1006E7CDC004056C600E2E6
      F600CC976FFFFFFFFFFFFFFFFCFFFFFFFDFFFEFEFCFFFEFEFCFFFEFEFBFFFDFD
      FAFFFDFDFAFFFDFDFAFFFDFDFAFFFCFCF7FFFBFBF6FFFFFFFFFFAC7554FF0000
      0000DBBC9B00BE905D00DFC1A700C4956B00C1906800E0CAB700FDFCFB00FEFE
      FD00E9DBCF00B3845D00B2845D00D3B49800AD7A5500C7A99B00000000008FD2
      9F004BAF6300A9DCB30063C078005EBD700074C48400D3EBD80089CC980055B5
      6B0057B46D005BB67300A5D9B300409A4D008EBB900000000000A7B4F0005F72
      DF00A3B2F600596DEA00586BE9005768E700FEFEFE00FEFEFE005461E4005360
      E200525EE1009EA8F1004F60D00097A3E000D19C73FFFFFFFFFFFEFEFCFFFEFE
      FCFFFEFEFCFFFDFDFBFFFDFDFBFFFDFDFAFFFDFDF8FFFBFBF9FFFBFAF7FFFBFA
      F6FFFBF8F4FFFFFFFFFFB07A58FF00000000C58F5100DABB9B00D4AC8800C697
      6B00C2946800C0926600ECDED200F9F6F300BA8A6200B8896200B7896100C49C
      7700D1B792009F695100000000003EB45C0090D19E008CD3990063C2730078C8
      8600F1F9F300FEFEFE00FCFDFC0085CA950056B66C005AB8710084CB960086C6
      99003A8A3E00000000006A81E8008D9EEF008398F3005B72ED005A6FEB00596D
      EA008F9CF000A5AEF2005666E6005564E5005461E4007C88EA008490E6004D63
      CD00D49E75FFFFFFFFFFFEFEFCFFFDFDFBFFFDFDFCFFFDFDFBFFFDFDF9FFFCFC
      F8FFFBF9F7FFFBF9F5FFFBF8F4FFFBF7F2FFFBF5F2FFFFFFFFFFB27C5AFF0000
      0000C0823B00E2C6AE00CFA17500C4986A00C3966900C3956800EDDFD300FAF6
      F300BE8F6500BD8E6400BD8E6300BD916800DEC5A90095553A000000000026AF
      4800A5DBAE006FC97E0072C97F00EFF8F000FEFEFE00EAF6EC00FEFEFE00FAFC
      FB0087CC95005AB8700066BD7C009FD6AE00227E2500000000005C75E9009FB2
      F600647FF1005E77EF005C75EE005B72ED00D2D8F900FEFEFE00586BE9005768
      E7005666E6005C6BE60098A4F0003B54CB00D5A076FFFFFFFFFFFDFDFCFFFDFD
      FBFFFDFDFAFFFCFCF9FFFCFBF7FFFBF9F5FFFBF8F4FFFBF7F3FFFBF5F2FFFAF3
      EFFFF8F2ECFFFFFFFFFFB57E5CFF00000000C6884100E3C8AF00CFA27900CB9C
      7000C6996B00C4976A00FEFEFE00FEFEFD00C2956800C0936700C1936700C297
      6C00DEC4AA0098583A00000000002DB65000A6DCB00071CB7F0065C67200AFE0
      B600D1EDD50062C06F00B7E2BE00FEFEFE00FAFCFB008BCF980068C07D00A0D6
      AD002283250000000000607AED00A0B5F7006683F3005F7BF2005E79F0005E77
      EF00FEFEFE00FEFEFE005A6FEB00596DEA00586BE9005E6EE8009AA7F0004058
      CF00D8A279FFFFFFFFFFFDFDFAFFFCFCFAFFFCFBF9FFFBFAF6FFFBF8F5FFFBF7
      F4FFFBF6F1FFF8F4EEFFF7F2EBFFF7F0EAFFF6ECE8FFFFFFFFFFB7815EFF0000
      0000D19D5B00DFBB9E00DAB29200CE9F7400CC9D7100CA9B7000DCBEA200DCBE
      A100C4986A00C4986A00C3976A00D0AA8400D7B99600AB6D5100000000004AC4
      6B0094D6A00090D69A0068C8750063C56E0060C36D0060C26E0060C16E00B8E3
      BF00FEFEFE00E2F3E5008AD098008ACD9C003B983F0000000000758CF20090A5
      F20087A0F700617FF300607DF2005F7BF200FEFEFE00FEFEFE005C75EE005B72
      ED005A6FEB008192F0008897EB00586FD700D9A379FFFFFFFFFFFCFBF9FFFCFB
      F8FFFBF9F7FFFBF7F4FFFAF7F2FFF9F5F0FFF7F3EDFFF6EFEAFFF5EBE7FFF3EA
      E4FFF2E7DEFFFFFFFFFFBA8560FF00000000E6C8A400CC9B6700E6CAB300D3A4
      7900CF9F7600CE9D7300FAF7F400FAF7F400CA9D7000CA9C7000CCA07600DEBF
      A400B8895A00D2AE9A00000000009ADEAC0056BE6F00AEE0B6006CCB790067C7
      710064C66F0062C46D0061C36D0062C37000B5E2BD006EC67D00ABDEB40047A8
      5D008EC7930000000000B1BFFA006B80EB00A8BCFA006281F4006180F400617F
      F300FEFEFE00FEFEFE005E79F0005E77EF005C75EE00A4B4F7005C6FDC00A2AE
      EB00DBA47AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD8763FF0000
      0000F9F0E700D2995900D8B18B00E5C9B200D5A87C00D0A47800E1C3A700E0C2
      A700CFA17500D0A37600DCBCA100CFAB8400B3754900F3EAE40000000000E4F7
      E90048C465007ECD8F00ADE0B4006CCB790069C9750067C7710067C7730067C7
      74006AC87800ABDEB30075C3880032A04200E1F1E30000000000EBEEFE00748B
      F6008296EF00A8BCFA006281F4006281F400FEFEFE00FEFEFE00607DF2005F7B
      F200A5B8F8007A8CE9005C73E000E6EAFA00DCA77BFFDCA77BFFDCA77BFFDCA7
      7BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA7
      7BFFDCA77BFFDCA77BFFC08B66FF0000000000000000F1DCC500D0914E00D8B1
      8B00E5CCB700DFB99C00D6AA8400D5A88100D8B29000E0C1AA00D3AD8500B370
      3D00E5D0BD00000000000000000000000000BFECCA003CC25B007ECD8F00AEE0
      B60091D79C0076CD820076CD820091D79C00ADE0B40077C78A0026A03A00B5DF
      BD00000000000000000000000000CED6FD006C85F7008396F000A8BCFA0089A2
      F7006A88F5006A88F50088A1F700A7BBF9007E91EB005971E400C5CEF5000000
      0000DDAC85FDE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B9
      92FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFC1906FFD0000
      00000000000000000000F1DDC500D59B5A00CF9F6900DFBE9F00E2C4AD00E2C4
      AD00DEBB9E00C7966100C3894800E9D5BD000000000000000000000000000000
      000000000000C0ECCB0049C7680058C1730095D6A200A4DBAD00A4DBAD0094D5
      A0004FB8690034B25400B6E3C100000000000000000000000000000000000000
      0000CED7FD00768DF9006D82ED0091A5F3009FB3F7009FB3F70090A5F200677C
      E8006880EC00C8D0F8000000000000000000A971516BDDB18DF4DCA77BFFDCA6
      7AFFDAA47AFFD8A279FFD5A076FFD49E75FFD29D73FFCF9A72FFCE9970FFCB96
      6FFFC9946CFFC49A7AF4A971516B00000000000000000000000000000000FAF1
      E700E9CBA700D7A16400CE904D00CC904900D09B5A00E3C6A100F7EEE4000000
      0000000000000000000000000000000000000000000000000000E5F7E9009EE2
      B00054CA71003ABF5B0036BD590048C26A0097DBAA00E1F5E700000000000000
      00000000000000000000000000000000000000000000EAEEFE00B5C2FC007C93
      F9006B85F6006983F500768EF400B0BDF800E9ECFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      280000003C0000001E0000000100010000000000F00000000000000000000000
      000000000000000000000000FFFFFF0000010100000000000001000000000000
      000100000000000080000000000000008000000000000000C002000000000000
      C002000000000000E007000000000000F00FC00400000000F00FE00000000000
      F81FF00000000000F81FF80400000000FC3FFC0C00000000FC3FFE1C00000000
      FFFFFF3C00000000FFFFE01FC03F80700001C00F801F003000018007000E0010
      0001000200040000000100020004000000010002000400000001000200040000
      0001000200040000000100020004000000010002000400000001000200040000
      00018007000E00100001C00F801F00300001E01FC03F8070FFFFFFFFFFFFFFF0
      00000000000000000000000000000000000000000000}
  end
  object UCControls1: TUCControls
    GroupName = 'Form.Movimento Cartao de Credito'
    UserControl = frmPrincipal.iCloud
    NotAllowed = naDisabled
    Left = 632
    Top = 232
  end
end
