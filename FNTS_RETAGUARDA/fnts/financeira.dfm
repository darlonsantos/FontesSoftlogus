object frmFinanceira: TfrmFinanceira
  Left = 2
  Top = 2
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'FINANCEIRA | Movimento'
  ClientHeight = 424
  ClientWidth = 782
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
    Top = 46
    Width = 782
    Height = 0
    Align = alTop
    ExplicitTop = 35
    ExplicitWidth = 772
  end
  object Bevel2: TBevel
    Left = 0
    Top = 44
    Width = 782
    Height = 2
    Align = alTop
    ExplicitTop = 33
    ExplicitWidth = 772
  end
  object Bevel3: TBevel
    Left = 0
    Top = 381
    Width = 782
    Height = 2
    Align = alBottom
    ExplicitTop = 361
    ExplicitWidth = 772
  end
  object Bevel4: TBevel
    Left = 0
    Top = 353
    Width = 782
    Height = 2
    Align = alBottom
    ExplicitTop = 333
    ExplicitWidth = 772
  end
  object Bevel5: TBevel
    Left = 0
    Top = 335
    Width = 782
    Height = 2
    Align = alBottom
    ExplicitTop = 315
    ExplicitWidth = 772
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 44
    Align = alTop
    BevelOuter = bvNone
    Color = 15574106
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 15
      Width = 53
      Height = 13
      Caption = 'Financeira:'
    end
    object Label2: TLabel
      Left = 246
      Top = 15
      Width = 40
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object Label3: TLabel
      Left = 471
      Top = 15
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object Label4: TLabel
      Left = 574
      Top = 15
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
    end
    object ed_cod_financeira: TRzButtonEdit
      Left = 58
      Top = 12
      Width = 51
      Height = 21
      FocusColor = 12713983
      TabOrder = 0
      OnKeyPress = ed_cod_financeiraKeyPress
      AltBtnWidth = 15
      ButtonWidth = 15
      OnButtonClick = ed_cod_financeiraButtonClick
    end
    object ed_financeira: TRzEdit
      Left = 111
      Top = 12
      Width = 128
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object combo_periodo: TComboBox
      Left = 290
      Top = 12
      Width = 81
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 2
      Text = 'Pagamento'
      OnKeyPress = combo_periodoKeyPress
      Items.Strings = (
        'Pagamento'
        'Venda')
    end
    object DateEdit1: TDateEdit
      Left = 378
      Top = 12
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
      Top = 11
      Width = 87
      Height = 21
      NumGlyphs = 2
      TabOrder = 4
      OnEnter = DateEdit2Enter
      OnExit = DateEdit2Exit
      OnKeyPress = DateEdit2KeyPress
    end
    object blocalizar: TAdvGlowButton
      Left = 697
      Top = 6
      Width = 84
      Height = 32
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
      Top = 12
      Width = 71
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 6
      Text = 'Todas'
      OnKeyPress = combo_situacaoKeyPress
      Items.Strings = (
        'Todas'
        'Aberto'
        'Baixada')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 383
    Width = 782
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 382
    object bincluir: TAdvGlowButton
      Left = 10
      Top = 3
      Width = 94
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
      Left = 107
      Top = 3
      Width = 96
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
      Left = 206
      Top = 3
      Width = 96
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
      Left = 431
      Top = 3
      Width = 113
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
      Left = 685
      Top = 3
      Width = 89
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
      Left = 305
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
        F8000000097048597300000EC400000EC401952B0E1B000002A3494441544889
        B5954D68547714C57F67F248553460932614FC689182A622150A8A85195B111A
        78B14A45FC5808AED2951BC199555DB4BC800882EED24DC52E1B2133A8691079
        D97453B3A85989A0D4DA9A8818421241658E8BF9603299371322B99B77DE7BF7
        FECFB9E7FFDEFDCB364991CEE6370347251DB0BD53D2872E15BC00EE4B1AB3FD
        FBF860FFFF496BA811413A9BDF24E927DBC7817649B2EDCAB55A5CBA7F055C93
        F4631C85532D0932B9C2116008E8AC4F6E0F521878F3B6D848EC33E0741C857F
        24126472851F6C5F0152B56A25A99EA0BEA3327E0D9C191FECFF6D09413A9B3F
        2469D876AAA6A05AFCDD9EAD9C3DF439365C1CFE9B5BF79E342230F046D2B771
        14DE0508CACA7B24FD02B495C5563DAEE0BDDBBB694BA5B0CD979F7DC4ED897F
        559F53C6EDC0AF995C61571C85330180ED0B4097241A2842921EFE37CBBEED3D
        003C783A936451056FB69D05B24A67F3DDB61F016B9B1448C0D69EF5148BE69F
        E7F3AD0864FB25F069001C96B4AE912DB5D8C0E3A9B925F625E54BDA08F405C0
        374D5454F189F4360FF4ED906D5F1E99E4C69F8F9BE697F1D701D0CB3242B558
        4ACCAB8BDE00E85A6EF60AA22B00DCC4C79A6F96459E575EB5A875004CDBFEB8
        F230C9538C29FD9806B0BD9C3D980E8049495FAC520793013066FBD42A753016
        0023C02CD0B1648BDE2FA680B1208EC2994CAE30049C6BD6F20A2CBA1247E142
        6516FD0C1C93B425A9E562D1558B8A45B7B2E881EDCBB0785C67248DDA6E6F44
        D0B9E1031FDCBD49B67DF3AF27CC2EBC4E229897B43F8EC27B8B080032B9C2F7
        C07560CD0A7D9F038EC651385AB5AAFEC84C67F35F01D7257D52AFAE5671822D
        27C707FB276AD74B3AF43B249DB73D006C6C41300D5C9574298EC285FAB51A12
        5422932B6C00FA800394866237A5C93D054C027780D1380AE793D67807CBDDDA
        9B67E286520000000049454E44AE426082}
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
    Top = 46
    Width = 782
    Height = 289
    Selected.Strings = (
      'CODBANCO'#9'6'#9'C'#243'digo'#9'F'#9'Financeira'
      'BANCO'#9'28'#9'Nome'#9'F'#9'Financeira'
      'BORDERO'#9'7'#9'Border'#244#9'F'#9'Financeira'
      'PROPOSTA'#9'11'#9'Proposta'#9'F'#9'Financeira'
      'DATA'#9'10'#9'Data'#9'F'#9'Venda'
      'CODVENDA'#9'6'#9'N'#250'mero'#9'F'#9'Venda'
      'NOME'#9'29'#9'Cliente'#9'F'#9'Venda'
      'VALOR'#9'10'#9'VALOR'#9#9
      'DATA_PGTO'#9'9'#9'Pagamento'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsfinanceira
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
    ExplicitHeight = 272
  end
  object Panel3: TPanel
    Left = 0
    Top = 355
    Width = 782
    Height = 26
    Align = alBottom
    BevelOuter = bvNone
    Color = 2211435
    Enabled = False
    ParentBackground = False
    TabOrder = 3
    ExplicitTop = 338
    object Label5: TLabel
      Left = 8
      Top = 5
      Width = 123
      Height = 13
      Caption = 'Quantidade de Registros:'
    end
    object Label6: TLabel
      Left = 616
      Top = 6
      Width = 28
      Height = 13
      Caption = 'Total:'
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
  object Panel4: TPanel
    Left = 0
    Top = 337
    Width = 782
    Height = 16
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    Enabled = False
    TabOrder = 4
    ExplicitTop = 320
    object Label7: TLabel
      Left = 8
      Top = 1
      Width = 62
      Height = 13
      Caption = 'Observa'#231#227'o:'
    end
    object DBText1: TDBText
      Left = 80
      Top = 1
      Width = 665
      Height = 16
      DataField = 'OBS'
      DataSource = dsfinanceira
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object qrfinanceira: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select c000123.*,'
      'c000007.nome,'
      'c000013.banco'
      'from'
      'c000123,'
      'c000007,'
      'c000013'
      'where'
      'c000123.codcliente = c000007.codigo and'
      'c000123.codbanco = c000013.numero'
      'order by'
      'data')
    Params = <>
    Left = 472
    Top = 216
    object qrfinanceiraCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrfinanceiraCODBANCO: TWideStringField
      FieldName = 'CODBANCO'
      Size = 10
    end
    object qrfinanceiraDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrfinanceiraCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 10
    end
    object qrfinanceiraVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qrfinanceiraSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrfinanceiraDATA_PGTO: TDateTimeField
      FieldName = 'DATA_PGTO'
    end
    object qrfinanceiraVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object qrfinanceiraBORDERO: TWideStringField
      FieldName = 'BORDERO'
      Size = 10
    end
    object qrfinanceiraPROPOSTA: TWideStringField
      FieldName = 'PROPOSTA'
    end
    object qrfinanceiraOBS: TWideStringField
      FieldName = 'OBS'
      Size = 100
    end
    object qrfinanceiraCODVENDA: TWideStringField
      FieldName = 'CODVENDA'
      Size = 10
    end
    object qrfinanceiraCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrfinanceiraNOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrfinanceiraBANCO: TWideStringField
      FieldName = 'BANCO'
      Size = 50
    end
    object qrfinanceiraSIT: TStringField
      FieldKind = fkCalculated
      FieldName = 'SIT'
      Calculated = True
    end
  end
  object dsfinanceira: TDataSource
    DataSet = qrfinanceira
    Left = 536
    Top = 168
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
    Top = 104
  end
  object fxfinanceira: TfrxReport
    Version = '4.14'
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
    OnGetValue = fxfinanceiraGetValue
    Left = 392
    Top = 104
    Datasets = <
      item
        DataSet = fxfinanceira.qrbanco
        DataSetName = 'qrbanco'
      end
      item
        DataSet = fxfinanceira.qrcliente
        DataSetName = 'qrcliente'
      end
      item
        DataSet = fxfinanceira.qrfinanceira
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
        Database = fxfinanceira.Conexao
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
        Database = fxfinanceira.Conexao
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
        Database = fxfinanceira.Conexao
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
      Height = 172.000000000000000000
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
        DataSet = fxfinanceira.qrfinanceira
        DataSetName = 'qrfinanceira'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BANCO'
          DataSet = fxfinanceira.qrfinanceira
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
          DataSet = fxfinanceira.qrfinanceira
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
  object fsfinanceira: TfrxDBDataset
    UserName = 'fsfinanceira'
    CloseDataSource = False
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
      'CODVENDEDOR=CODVENDEDOR'
      'NOME=NOME'
      'BANCO=BANCO'
      'SIT=SIT')
    DataSet = qrfinanceira
    BCDToCurrency = False
    Left = 384
    Top = 200
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
    Top = 104
  end
  object fsConexao: TfrxIBXComponents
    Left = 360
    Top = 104
  end
  object fsDialog: TfrxDialogControls
    Left = 328
    Top = 104
  end
  object UCControls1: TUCControls
    GroupName = 'Form.Movimento Financeira'
    UserControl = frmPrincipal.iCloud
    NotAllowed = naDisabled
    Left = 576
    Top = 24
  end
end
