object frmplano: Tfrmplano
  Left = 288
  Top = 196
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'PLANO DE CONTAS | Ficha de Cadastro'
  ClientHeight = 240
  ClientWidth = 768
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 0
    Top = 196
    Width = 768
    Height = 3
    Align = alBottom
    ExplicitTop = 215
    ExplicitWidth = 756
  end
  object PageView1: TPageView
    Left = 168
    Top = 2
    Width = 728
    Height = 215
    ActivePage = PageSheet1
    ActivePageIndex = 0
    AdaptiveColors = True
    BackgroundColor = 14150380
    BackgroundKind = bkSolid
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Indent = 2
    Margin = 0
    Options = [pgBoldActiveTab]
    ParentFont = False
    ShowTabs = False
    Spacing = 0
    TabHeight = 17
    TabOrder = 0
    TabStyle = tsWhidbey
    TopIndent = 3
    OnChange = PageView1Change
    object PageSheet1: TPageSheet
      Left = 0
      Top = 0
      Width = 728
      Height = 215
      Caption = ' F10 | Ficha de Cadastro'
      DisplayMode = tdTextOnly
      ImageIndex = 0
      Margin = 0
      PageIndex = 0
      TabColor = 15653559
      TabWidth = 0
      TransparentColor = clNone
      ExplicitTop = 21
      ExplicitHeight = 194
      object pficha: TFlatPanel
        Left = 0
        Top = 0
        Width = 728
        Height = 215
        Color = 15461355
        ColorHighLight = clBtnFace
        ColorShadow = clBtnFace
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 194
        object Label1: TLabel
          Left = 5
          Top = 16
          Width = 92
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'C'#243'digo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 5
          Top = 112
          Width = 92
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Descri'#231#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 5
          Top = 40
          Width = 92
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Grupo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 5
          Top = 64
          Width = 92
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Subgrupo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 5
          Top = 88
          Width = 92
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Classifica'#231#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 111
          Top = 12
          Width = 73
          Height = 21
          DataField = 'CODIGO'
          DataSource = dsplano2
          TabOrder = 0
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit2: TDBEdit
          Left = 111
          Top = 108
          Width = 481
          Height = 21
          DataField = 'CONTA'
          DataSource = dsplano2
          TabOrder = 5
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit2KeyPress
        end
        object COMBOGRUPO: TwwDBComboBox
          Left = 111
          Top = 36
          Width = 97
          Height = 21
          ShowButton = True
          Style = csDropDownList
          MapList = False
          AllowClearKey = False
          DropDownCount = 8
          ItemHeight = 0
          Items.Strings = (
            'DESPESA'
            'RECEITA')
          ItemIndex = 0
          Sorted = False
          TabOrder = 1
          UnboundDataType = wwDefault
          OnEnter = COMBOGRUPOEnter
          OnExit = COMBOGRUPOExit
          OnKeyPress = enomeKeyPress
        end
        object DBEdit3: TDBEdit
          Left = 111
          Top = 84
          Width = 105
          Height = 21
          DataField = 'CLASSIFICACAO'
          DataSource = dsplano2
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit28: TDBEdit
          Left = 111
          Top = 60
          Width = 64
          Height = 21
          DataField = 'CODGRUPO'
          DataSource = dsplano2
          Enabled = False
          TabOrder = 3
          OnEnter = DBEdit1Enter
          OnExit = DBEdit28Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object bloc: TBitBtn
          Left = 225
          Top = 80
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
          TabOrder = 2
          OnClick = blocClick
        end
        object DBEdit30: TDBEdit
          Left = 202
          Top = 60
          Width = 392
          Height = 21
          Color = clBtnFace
          DataField = 'grupo'
          DataSource = dsplano2
          TabOrder = 6
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
      end
    end
    object PageSheet2: TPageSheet
      Left = 0
      Top = 0
      Width = 728
      Height = 215
      Caption = 'F11 | Visualiza'#231#227'o em '#193'rvore'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 1
      TabColor = 11184895
      TabWidth = 0
      TransparentColor = clNone
      ExplicitTop = 21
      ExplicitHeight = 194
      object arvore: TTreeView
        Left = 0
        Top = 0
        Width = 728
        Height = 215
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Images = ImageList1
        Indent = 19
        ParentFont = False
        ReadOnly = True
        RowSelect = True
        TabOrder = 0
        ExplicitHeight = 194
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 199
    Width = 768
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 1
    ExplicitTop = 238
    object bincluir: TAdvGlowButton
      Left = 24
      Top = 3
      Width = 83
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
      Left = 109
      Top = 3
      Width = 85
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
      Left = 196
      Top = 3
      Width = 89
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
    object blocalizar: TAdvGlowButton
      Left = 287
      Top = 3
      Width = 92
      Height = 32
      Caption = 'F6 | Localizar'
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
      TabOrder = 3
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
    object DBAdvGlowButton1: TDBAdvGlowButton
      Left = 381
      Top = 3
      Width = 42
      Height = 32
      Hint = 'First record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B0000033E494441544889
        8D95C18B1C4514C67FDFA43D444583E061BDE9218B2B314E6FE2450FEA5E82D9
        83DDA241C583202222994E0E4A349B109218D643B65B4444041121829A690F4A
        F660CC1FB0D84D4232620E7A5B0F8210317871E7F390EA75323B339B7729AAEA
        BDEFABEFD57B55B2CD386B77BA0F487ACEF653C00C70AF246CFF21A967FB47E0
        EBBA487F1D87A151047156DE6FFB14904ABACD034E9264DBCD08FC2BA96BFB50
        5DA4BF6D4A1067E5CBC087C05D401FB80074819F80DF83DB14B00B4880278116
        F017F06695275F8C256877BA878013925AB62F0007EA22BD384E7E88D92969C9
        F61380251DAEF2E4D40682382B5FB1FD6948C3A2ED85BA48D726810FA8DE62FB
        38F076B8A357EB22FD6C9D20CECAED21057700EF557972F8568047109D04DE01
        FE0666AB3CB91A01D85E9474A7ED1FEA225D07DF7DF05B03AC9C7E464369E907
        A5B24D5DA40A3847243D6A7B0E580492A8DDE94E03F3C01AD0D9EC940D78005C
        0707A88B742DCECA0E7009988FB3723A92B40F8880737591F63649415F5273DA
        9BC01BABF2A41767E532B017D817053996F4CD66271FA87D8D021F50D6059E96
        3417013BC2FACA24F0C179DFBCB8737FF78561BF8B1FA45F0E61ED88806D61B2
        DAEE745B7591F6870387AD25CE0084925C1F818660358CDBA2905242C056E0FA
        30A0069C9ACA9964839891ED6BC0DD92A6AA3CB93C2AA0798B9A3BE89B97C206
        378DFFFB4F05FF6B91A4CBC0E3C02C3092A02ED2569C95EB242D7C66D2254B9A
        05045C89C293FB98A46781CFC7055579A2382BDDA86977BA1E47623BE546659E
        D723FBCFCE009782FA87EA22BDDA388EEAE4A18ADA50AE71566EB77D25887D38
        AA8BB41767E539605ED212371A64AC0DA66B58499C952D20971401DF5579D293
        6DDA9DEE8CA415DB5B812375919E984432CEDA9DEE82A463B6FF0176D745DA1B
        7CAE5FB7FD11D00F4E276FA5279A93DB7E17381AFE9237EA22FD18863E9C382B
        8F010B61BA0C1CA8F2E4974DC0A78125604F583A5EE5C9D1667F43D3B43BDDD7
        249DB67D3BB02669D9F659A0025643D7DE276997ED04D82329B27D1D385817E9
        278378E33EFD69DBEF037B256DD9E4D3EF4BFADEF65B75916E503BB1EDE3AC9C
        019E07E68007817BC2D69FC0CFC079E0AB2A4FC63EF3FF018B09C93EC7530589
        0000000049454E44AE426082}
      Transparent = True
      TabOrder = 4
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsplano2
      DBButtonType = dbFirst
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton2: TDBAdvGlowButton
      Left = 424
      Top = 3
      Width = 42
      Height = 32
      Hint = 'Prior record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B00000340494441544889
        9595CF6B5C551CC53F27792EAC9A14A10BB3D385C569A99DA15DB850B411AC48
        C5F750BB722188884867EAC2506C2CFD114A5CD879202222BA70A7E40D82962E
        8CFD0324F3B0D1885DE8CE2E44DBFAA35998CC7131F70D332F9964FA36F7BDFB
        BEF79CF33DF77BBF57B619F6D41AAD0AF022300D3C04DC1B7EFD09FC042C029F
        B79BF1CA300C6D46506BB476DB7E177846D2B8FB8224C9B68B11E848FADAF65B
        799AFCBC2D41B59EBD2AE93DDB3B807549976C2F006DE03749D89E9274C0760C
        1C9614D9FE1778334F938F8612D41AADD3C06CF8BC041C6F37E30DAACAD90217
        80C361EA6CBB199FDA40506BB45EB3FD4148F9B4EDB93C4D3A5B81F7918CD97E
        1B382569CCF6EB799A7CD823A8D6B38AA4EF6CDF09BC93A7C9B9926D11300910
        2C42D26ABB19DF2AC5CD0671ABC0C13C4D56A2B0681ED821E9223057527737F0
        B7A401D5ED663C38D1C599031E91F434300F1CD1FE630B15E04A288A3D799A5C
        ED533401DC04FA2B41799A6C00EF13F4A0ED1FBB7CDA1701478131E0AB12F83D
        C0CDC29251C0436657ABF5EC227004381A493A040858E85331518087D4659BED
        C07B2AA40C7816988E6CEF052C692928DF095C071C36B33850AAD6B3CE2607AD
        1793A7C918DD854B01734F246932105FAB355A7701D78372F5292ACAB9982B8F
        E5F86BE175322AFC0D5EAF861FEE9BEF65308A3D61710F33026E003B81A93C4D
        FEA8D6B3C8F61A839573BBCF54186F44C032F028701058CED364BDD6688DDB5E
        2F938CBAC9010B603992B4083C063C0F7C02D06EC69D5AA3D5CB446153AAF5CC
        A390484AE85ABAA8FDC71676033F04AFF7E569D2EBEDA145FCC7ED1DB48AED2B
        41D8DEA217B5243D67FB1BE0A9FE261732E9916C7526AAF56C3CB4F769E0CB3C
        4DE2A217CD004F4A9A06CE00278B45ED66BCC6881524E94CC0F9079881C176FD
        B2ED8F43E0BCEDD93C4DD647010E4571169809E5FE4A9E269F0E1084144F00E7
        424FBF0C1CCFD3E4FBADC0ABF5EC6149176C3F4ED7F793ED667CBE9755F9CAAC
        355A2F01EF03134007B80C64C012509CD0FB8003400C3C41B759FE05BCD16EC6
        9F0DD836E4D2BFDFF679209174C73697FE9AA4CCF6893C4D7E2D636D4AD097FE
        03925EB07D08A800BB82C7BF4B5AB1FD2DF0459E26BF0CC3F81F2CDECA019C51
        98710000000049454E44AE426082}
      Transparent = True
      TabOrder = 5
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsplano2
      DBButtonType = dbPrior
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton3: TDBAdvGlowButton
      Left = 468
      Top = 3
      Width = 42
      Height = 32
      Hint = 'Next record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B0000033A494441544889
        9D95316C1C451486BFDFDE14108843040574A188852141B72E90A04A4CE18029
        7623E82890104208E936148982935896035128C89E8410424808D101BA2D4820
        0509F4843D113941A4802E1408241B42C3D93FC5CD1ECBE5EE1C31CDEEBC79F3
        BFF7BF79F38F6C336A349AED078167251DB03D23E9BEE0FF2B704DD225DB9F76
        5AE94FA330342C40A3D9DE2DE9B4ED148824C9B6AB6F7F736FFE37D09674ACCC
        939FB70C1067C5F3C03BC00E6013F81A2880CBC02FC1ED7E60164881FDC004B0
        0EBC5AE6C9C72303C45971CCF6A990DC37B60F775AE9F7A3E807B68F026725ED
        B7BD091CEFB4D2D3B7046834DB2F48FA20CCCF483A51E6C9C638F05A9049492B
        B68FD2CBEEC5324F3EEC0788B3620FF01D7017F06699278BB7033C38E2AC3805
        BC0EDC0466CB3CB91E01D83E036C97F495ED9323B2B4246A872C49DBCA3CE956
        3E61EF63929E0C98891ACDF6B4EDD5B0615F9927D7C694C240BD2B046CEBB4D2
        6ECD6746D29590C8236A34DB278165E07C99270B5B95A162F26FD296A4A87E5E
        71567C011C049622602E446B6F050ED069A5AA98A817C9B6BB71564C9679B219
        DC3EB33D0FCC45C0DE60FC7630CBAADCD57FDD36306C7BA3D16C479D56BA51C3
        DA1B013BC3E4C6ED301835C225EF8696ADB076465586FF0350F56FCD7E471D33
        02D66C4FD1BBFEBF053FD3EB907E4B0ED8866993807BCA3CB91967C5EE605E8B
        80AB929EA0A72DAB009D563A312EFB70467D06E17CA6CA3C590F2EB3617D3502
        2EDA7E9C9E707DB45569AA0E0AA095D4EC28F3E48F9ADBA1C0EC921ACDF68CED
        2BF4DAEEE1324FAE6F055E330998EAB4D2F59ACF1E49576D0BD85769D1E7C002
        F025B050EBE7C1B2F4E781C1DD659EFC59D9E2AC10700E780A3857E6C9339516
        1D050E489AB7BD08ACD4C1E3ACB813B8B7020E63ADAE43616D113828E9AFBEB2
        D6E4FA6549EF064D5F96F4C63026234A372169D1F6123021E995324FDEFB4F80
        90E93270224C2F0087CB3CF9711C789C15D3C059603E9856CA3C59AAD66F7932
        1BCDF64BC0DB92B6DBEE02172415B62F4BBA11FC1F0062498782E64C86B2BCD6
        69A5EFD7F1463DFAD392DEB2FD74A03CEED1DF00CE4B3A328CEDD00035FA33C0
        73C01CF010B02B2CFD0EFC005C043E19F786FC03BD8CC929AE4BAB2900000000
        49454E44AE426082}
      Transparent = True
      TabOrder = 6
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsplano2
      DBButtonType = dbNext
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton4: TDBAdvGlowButton
      Left = 511
      Top = 3
      Width = 42
      Height = 32
      Hint = 'Last record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B0000033A494441544889
        8D9541881C451486BF7FB62F12D12078D05B3CECE2620CD38B087A4AD6C34673
        B0266830E041101111A7938321EE26216C34C443B646444404118912956E0F06
        8398E83DB196C83A620E7A4B0EA210215E4CE67998AAB1333B339B7769AAEBD5
        FFBFFF55D55F3233C645B35D3E003C23698799CD4ABA37E6FF0174259D37B32F
        563BADDFC661681441B35D6E9174DCCC5A4026496666E93B58DC1FFF0B94920E
        06EF7EDF90202FAAE7817781BB801EF03D50011781AB31ED3E600E6801DB8106
        F037F06AF0EE93B10479511D34B363B1B81FCC6CDF6AA775699CFCA8761BB022
        69BB99F580A5D54EEBF83A8266BB7C41D287717C42D2A1E0DDCD49E035922949
        CB6676807E752F06EF3E1A10E445350DFC08DC09BC15BC5BBC1DE0E1C88BEA18
        F006701D980BDE5DCE00CCEC04B049D2776676B8569949226DEC6AA7D5A8033E
        B2FF2B03B870F2690104EF969AEDF251494F444CA766BB9C31B3B5BE323D1CBC
        EB0EC93760B05175926182983F2BE9A758D44319B04752069C19068F804A4A62
        1B7AC1BBC6705E2DBF9B17D5B79276027B32603EB2951316292991A466BBEC0D
        B76B28BE34B305603E03B6C69F17D2ECB6D7CAE7462CDADB10A7D2A0D92E7BD9
        D4588E84B5350336C7C19534DB109FC6CD257D638CF795FF891B9212D6E60C20
        F577A3504CD4840592EEA86366C03533BB9BFEF5FF13A067EC25555DBBE90DEC
        D4AD7EB49E2878773D2FAA2D31E55A06FC2CE971FADEB20670E99DD66723A40F
        4E922405EF948EE988988B2AD732E09C993D46DFB83E1E959D4E50DC1305EF36
        EAE9EEA8F27C069C06168127F3A29A0EDE5D1E055E6BC144F066BB9C8E77A007
        9CCE8277DDBCA8BE0176013E2FAA5DC1BB5E024FFB7A3BE0009256E8BF215F07
        EFBAC98B0E003B242D98D922B00CFD0B3609AC6E11B1A02560A7A47F06CE5AB3
        EB9725BD173DFDA8A43793928D229EFD45333B023424BD12BC7BFF160280BCA8
        8E0287E2F02CB02F78F7EB24F0BCA86680156021FE5A0EDE1D49F3EB9ECC66BB
        7C093829699399DD00CE4AAACCECA2A42B31FF7E2097B43B7ACE546CCBFED54E
        EB833ADEB8477F46D2DB66F654943CE9D1BF099C91F4FA28B523096AF2678167
        8179E041E09E38F517F00B700EF87C94CDA7F80FC741A7152023101900000000
        49454E44AE426082}
      Transparent = True
      TabOrder = 7
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
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsplano2
      DBButtonType = dbLast
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object bitbtn5: TAdvGlowButton
      Left = 555
      Top = 3
      Width = 98
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
      TabOrder = 8
      OnClick = BitBtn5Click
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
      Left = 655
      Top = 3
      Width = 88
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
      TabOrder = 9
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
    object pgravar: TFlatPanel
      Left = 2
      Top = 33
      Width = 764
      Height = 41
      ParentColor = True
      Visible = False
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      TabOrder = 10
      object bgravar: TAdvGlowButton
        Left = 254
        Top = 4
        Width = 108
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
        Left = 379
        Top = 4
        Width = 114
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
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 167
    Height = 196
    Align = alLeft
    BorderOuter = fsNone
    BorderColor = clGradientActiveCaption
    BorderWidth = 2
    Color = clWhite
    TabOrder = 2
    ExplicitTop = -134
    ExplicitHeight = 412
    object RzPanel2: TRzPanel
      Left = 4
      Top = 19
      Width = 159
      Height = 26
      BorderOuter = fsNone
      BorderColor = clGradientActiveCaption
      BorderWidth = 1
      Color = clWhite
      TabOrder = 0
      object Image4: TImage
        Left = 4
        Top = 6
        Width = 16
        Height = 16
        AutoSize = True
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
          0000001008060000001FF3FF61000000017352474200AECE1CE9000000046741
          4D410000B18F0BFC6105000000206348524D00007A26000080840000FA000000
          80E8000075300000EA6000003A98000017709CBA513C00000009704859730000
          0EC400000EC401952B0E1B0000009F49444154384F63FCFFFF3F436565E55E06
          060627202605EC6D6F6F7761A8A8A860AEAAAA029A0301FFFEFDC38B61EA8096
          FE07EA65423160F6ECD92041BC78F1E2C56033300C00D90CD28C0FFCFAF5EB7F
          4D4D0D71064CDF76ED7F60EBAEFF21EDBBFF83D82040920131BDFBFF8775EC01
          6310FBD7EFBFA41980CD2B785D00D2301A8814A6038A0391ECBC00CA8DC024BC
          97501EC022BF07A4970144508201AF1FD5E2718E57C50000000049454E44AE42
          6082}
        Transparent = True
      end
      object W7ActiveLabel1: TW7ActiveLabel
        Left = 26
        Top = 7
        Width = 87
        Height = 13
        MouseInColor = 15026695
        MouseOutColor = 5577749
        MouseInCursor = crHandPoint
        MouseOutCursor = crDefault
        Caption = 'Ficha de Cadastro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5577749
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = W7ActiveLabel1Click
      end
    end
    object RzPanel3: TRzPanel
      Left = 4
      Top = 48
      Width = 159
      Height = 26
      BorderOuter = fsNone
      BorderColor = clGradientActiveCaption
      BorderWidth = 1
      Color = clWhite
      TabOrder = 1
      object Image1: TImage
        Left = 4
        Top = 6
        Width = 16
        Height = 16
        AutoSize = True
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
          00000010080200000090916836000000017352474200AECE1CE9000000046741
          4D410000B18F0BFC6105000000206348524D00007A26000080840000FA000000
          80E8000075300000EA6000003A98000017709CBA513C00000009704859730000
          0EC400000EC401952B0E1B0000004B49444154384F630C5DD3C14012006A2009
          3190A41AE41C9235646666FEFDFBF73F7100A8980188FFFDFB479CFAFF281A12
          9000443FA6C8A80DB40F2562E20E140F191919408A4800540C00FAB30A830D9B
          57670000000049454E44AE426082}
        Transparent = True
      end
      object W7ActiveLabel2: TW7ActiveLabel
        Left = 26
        Top = 7
        Width = 110
        Height = 13
        MouseInColor = 15026695
        MouseOutColor = 5577749
        MouseInCursor = crHandPoint
        MouseOutCursor = crDefault
        Caption = 'Visualiza'#231#227'o em '#193'rvore'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5577749
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = W7ActiveLabel2Click
      end
    end
  end
  object Pop1: TPopupMenu
    Left = 528
    Top = 24
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
      ShortCut = 46
      OnClick = bexcluirClick
    end
    object Localizar1: TMenuItem
      Caption = 'Localizar'
      ShortCut = 117
      OnClick = blocalizarClick
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      ShortCut = 118
      OnClick = BitBtn5Click
    end
    object Regies1: TMenuItem
      Caption = 'Grupos'
      ShortCut = 119
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bfecharClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object FichadeCadastro1: TMenuItem
      Caption = 'Ficha de Cadastro'
      ShortCut = 121
      OnClick = FichadeCadastro1Click
    end
    object Visualizaoemrvore1: TMenuItem
      Caption = 'Visualiza'#231#227'o em '#225'rvore'
      ShortCut = 122
      OnClick = Visualizaoemrvore1Click
    end
  end
  object Pop2: TPopupMenu
    Left = 496
    Top = 24
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
  object dsplano2: TDataSource
    DataSet = frmmodulo.qrplano
    Left = 560
    Top = 24
  end
  object query1: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000035 order by codigo desc')
    Params = <>
    Left = 464
    Top = 24
  end
  object ImageList1: TImageList
    Left = 424
    Top = 5
    Bitmap = {
      494C010107000900080010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E2E2E200CBCBCB00C9C9
      C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C9007792C6001B55
      BA000442BB001852BA007796CE000000000000000000E2E2E200CBCBCB00C9C9
      C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C9006B967A00216F
      3D00186A3600216F3D0076A18600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CBCBCB00F8F8F800FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB008AA8DE002765C9002076
      E5000478E9000063DC00054DBC0086A6DD0000000000CBCBCB00F8F8F800FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB0085B09500278B520063B9
      8C0094D1B10063B98C00278B520080AD91000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB001D58BF00629CF300177E
      FE000075F7000075ED000267E0001D58C000FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB0021703E0061B98A005FB9
      8600FEFEFE005FB8860066BB8E001F6F3C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FAFAFA00FAFAFA000442BB00ADCCFD00FEFE
      FE00FEFEFE00FEFEFE00177EEE000442BB00FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FAFAFA00FAFAFA00307A4B009BD3B500FEFE
      FE00FEFEFE00FEFEFE0094D1B100186A36000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FAFAFA00FAFAFA00F9F9F900235BC1008CB4F5004C91
      FE001076FE002085FE003F89EA00235BC100FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FAFAFA00FAFAFA00F9F9F900498A61008FD2B00091D5
      B000FEFEFE0064BB8B0066BB8E001F6F3C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E5E5FB00807FE6002D2ACC002E2AC100847FCD00E6E5F2000000
      000000000000000000000000000000000000FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FAFAFA00FAFAFA00FAFAFA0092ADE0003C75D1008CB4
      F600B7D5FD0071A7F4002E6BC90092ADE000FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FAFAFA00FAFAFA00FAFAFA00A4C3B00060AA800094D3
      B300B9E5CF0069BA8E002C8E560080AD91000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F80F1007B7BED008F92F4008487F2007877E300847FCF000000
      000000000000000000000000000000000000FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FAFAFA0091ACDF002960
      C6000442BB001E59C0006B8AC000FEFEFE00FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FAFAFA00AAC7B5005F98
      74004E8D6500498960007DA18A00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002A2BF200A8ABF7006F76F400666BF3008587F2002E2AC6000000
      000000000000000000000000000000000000FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00F9F9F900F8F8F800F5F5
      F500F5F5F500FBFBFB00C9C9C900FEFEFE00FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00F9F9F900F8F8F800F5F5
      F500F5F5F500FBFBFB00C9C9C900FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002A2DF900B7BBFA007D85F7006D73F4009093F4002C2AD2000000
      000000000000000000000000000000000000FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FAFAFA00F7F7F700F5F5F500F2F2
      F200F1F1F100FBFBFB00C9C9C900FEFEFE00FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FAFAFA00F7F7F700F5F5F500F2F2
      F200F1F1F100FBFBFB00C9C9C900FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F81FE007F80FC00B8BBFA00B0B4F9007C7CEF007F7FEA000000
      000000000000000000000000000000000000FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FAFAFA00F7F7F700F4F4F400F1F1F100EEEE
      EE00ECECEC00FBFBFB00C9C9C900FEFEFE00FEFEFE00C9C9C900FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FAFAFA00F7F7F700F4F4F400F1F1F100EEEE
      EE00ECECEC00FBFBFB00C9C9C900FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E5E5FF007F81FE002A2DFB002A2CF6007F80F500E5E5FC000000
      000000000000000000000000000000000000FEFEFE00C9C9C900FBFBFB00FAFA
      FA00FBFBFB00FBFBFB00FAFAFA00F7F7F700F4F4F400F0F0F000EBEBEB00E9E9
      E900E5E5E500FBFBFB00C9C9C900FEFEFE00FEFEFE00C9C9C900FBFBFB00FAFA
      FA00FBFBFB00FBFBFB00FAFAFA00F7F7F700F4F4F400F0F0F000EBEBEB00E9E9
      E900E5E5E500FBFBFB00C9C9C900FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00C9C9C900FBFBFB00F8F8
      F800F8F8F800F8F8F800F6F6F600F5F5F500F1F1F100EAEAEA00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00C9C9C900FEFEFE00FEFEFE00C9C9C900FBFBFB00F8F8
      F800F8F8F800F8F8F800F6F6F600F5F5F500F1F1F100EAEAEA00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00C9C9C900FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00C9C9C900FBFBFB00F6F6
      F600F8F8F800F6F6F600F6F6F600F2F2F200EFEFEF00E9E9E900FBFBFB00F5F5
      F500F3F3F300C4C4C400DFDFDF0000000000FEFEFE00C9C9C900FBFBFB00F6F6
      F600F8F8F800F6F6F600F6F6F600F2F2F200EFEFEF00E9E9E900FBFBFB00F5F5
      F500F3F3F300C4C4C400DFDFDF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C9C9C900FAFAFA00F3F3
      F300F4F4F400F4F4F400F4F4F400F0F0F000EEEEEE00E8E8E800FBFBFB00E6E6
      E600C2C2C200DFDFDF00FDFDFD000000000000000000C9C9C900FAFAFA00F3F3
      F300F4F4F400F4F4F400F4F4F400F0F0F000EEEEEE00E8E8E800FBFBFB00E6E6
      E600C2C2C200DFDFDF00FDFDFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCCC00F7F7F700FAFA
      FA00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00F7F7F700C2C2
      C200DFDFDF00FDFDFD00000000000000000000000000CCCCCC00F7F7F700FAFA
      FA00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00F7F7F700C2C2
      C200DFDFDF00FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E3E3E300CCCCCC00C9C9
      C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900DFDF
      DF00FDFDFD0000000000000000000000000000000000E3E3E300CCCCCC00C9C9
      C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900DFDF
      DF00FDFDFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000369DD9FF3199D8FF2C94
      D7FF2890D6FF238CD5FF1E88D4FF1A84D3FF1580D2FF117CD1FF0E79D1FF0A76
      D0FF0773CFFF0470CFFF016ECEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003DA3DAFFBCEBFAFFBCEB
      FCFFBFEEFEFFC6F4FFFFCEF8FFFFD3FAFFFFD0F8FFFFC7F2FFFFBAE9FCFFB3E4
      F9FFB0E2F8FFB0E2F8FF0571CFFF000000000000000000000000000000000000
      0000E5F0E7009FC8A500559B5E003F8E48003B8C44004C95520097C19B00E1ED
      E200000000000000000000000000000000000000000000000000000000000000
      0000E5E7F7009EA9E100536AC6003E58BF003953BE004B66C10097A7DB00E1E6
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000043A8DBFFBFECFBFF59CF
      F5FF41B0ECFF4EBAEFFF5AC2EFFF60C6EFFF5CC4EFFF4CB6EFFF37A5E6FF2A9A
      E1FF38B8EEFFB1E3F8FF0975D0FF00000000000000000000000000000000C3DD
      C800569F630040984F007CC18E0095CFA50095CEA50077BD8800358C4100408C
      4700B9D5BB00000000000000000000000000000000000000000000000000C2C8
      ED005465CB003B51CB007479E7008E91ED008E91ED007077E300324CC0003F5B
      BD00B9C4E7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000049ADDCFFC1EEFBFF5FD3
      F7FF6CDBFCFF7FE5FFFF8FEDFFFF97F2FFFF93EDFFFF7CDFFFFF5BCCF8FF46BE
      EFFF3CBAEEFFB3E3F9FF0E79D1FF000000000000000000000000C6DFCB00549F
      630063B37700A7DAB40086CB970065BB7C0063B97B0085CA9700A4D8B30057A9
      6A0034853C00B9D5BB0000000000000000000000000000000000C5C9EE00505F
      CC005B64DF00A0A5F4007D85EE005A62E800585CE6007C83ED009D9FF300505C
      D6003351B900B9C4E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004EB2DDFFC3EFFBFF65D6
      F8FF4CB6ECFF5ABDEFFF95EBFFFF3097DDFF4D82ABFF84E1FFFF41A9E9FF329F
      E1FF42BEEFFFB4E5F9FF137ED2FF0000000000000000E9F3EB0066AB750069B8
      7C00A7DAB1005FBB76005BB9720058B76F0058B46E0057B46E005AB67300A4D8
      B20059A96B00418E4800E2EEE3000000000000000000E8EAF9006470D300606A
      E200A0ABF400535EEB004F5BE9004C58E8004D58E5004B55E5004F55E5009DA1
      F300535FD5003F5CBE00E2E7F500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000053B7DEFFC6F0FCFF6AD9
      F8FF7CE2FDFF90E8FFFF99E9FFFF329FDFFF548BB2FF8AE2FFFF6AD0F9FF50C5
      F1FF46C1F0FFB6E7F9FF1883D3FF0000000000000000AED4B80052AA6700A9DC
      B30063C078005EBD70005FBB7600FEFEFE00FEFEFE0058B76F0057B46D005BB6
      7300A5D9B300378E420096C19A000000000000000000ACB0E9004A55DA00A1AA
      F5005563EF005165ED004C58E8004C58E8004C58E8004C58E8004B57E5005159
      E5009EA2F400334FC30095A5DB00000000000000000000000000000000000000
      000000000000EAF5EB0096CA9B004EA055004B98530090B89500E8EFE9000000
      0000000000000000000000000000000000000000000058BBDFFFC7F1FCFF6FDC
      F9FF56BBEDFF61BDEFFF9BE7FFFF35A6E2FF4BA4E1FF90E2FFFF49ADE9FF38A4
      E3FF49C4F0FFB8E8F9FF1E88D4FF000000000000000076B7880089CB970088D2
      95006AC5790062C06F0054AA6400FEFEFE00FEFEFE0058B76F0058B76F005AB8
      710084CB96007ABD8C004C95540000000000000000007277DC00808BED007D90
      F6005C72F2004C58E8004C58E8004C58E8004C58E8004C58E8004C58E8004E5A
      E8007A82EF00747AE1004B64C300000000000000000000000000000000000000
      00000000000099D29C0090CA9400A0D3A20098CF9A008BC18F0091BA96000000
      000000000000000000000000000000000000000000005CBFE0FFC8F3FCFF75DF
      F9FF89E6FDFF95E7FFFF9AE5FFFFAAEEFFFFA8EDFFFF99E3FFFF74D5F9FF59CC
      F3FF4FC8F1FFBBE9FAFF248DD5FF000000000000000069B17E00A8DCB2007CCE
      890074CB8000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE0058B7
      6F0066BD7C009BD3AA003A8B430000000000000000006468DA00A0AAF6006F85
      F7006781F500FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE004C58
      E8005B65E900959BF0003855BD00000000000000000000000000000000000000
      00000000000057BC5D00B3DBB40089CB8A0082C9840099CF9C004D9C55000000
      0000000000000000000000000000000000000000000060C2E1FFC9F3FCFFCBF3
      FDFFD4F6FEFFD7F6FFFFD8F4FFFFE0F8FFFFDFF8FFFFDAF5FFFFCDF1FCFFC2ED
      FAFFBDEBFAFFBDEBFAFF2B93D6FF00000000000000006DB48200B5E1BD008AD4
      960079C88500FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE0058B7
      6F0068C07D009CD3A9003E8E48000000000000000000696DDB00AEB8F8007E92
      F9006F84EF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE004C58
      E8005D69ED00959CF0003C54BF00000000000000000000000000000000000000
      00000000000059C15E00BFE0BF0094D1940087CB8800A1D3A30050A557000000
      0000000000000000000000000000000000000000000061C3E1FF88A0A8FF9191
      91FF8E8E8EFF5AB9DCFF55B8DFFF51B5DEFF4DB1DDFF49ADDCFF46A8D7FF7878
      78FF767676FF657E8DFF3199D8FF000000000000000081BF9400ABDCB500A5DE
      AE0080CA8B007BC885006DBC7800FEFEFE00FEFEFE005AAB69005FBB76005BB9
      72008AD098007FC49100579D600000000000000000007C7EE200A4AEF4009CAA
      F900768BEF00535EEB00535EEB00535EEB00535EEB00535EEB00535EEB006276
      F100808DF300777EE800556AC800000000000000000000000000000000000000
      0000000000009CDC9F0096D59A00C0E1C100B9DEBA0091CB940097CD9B000000
      0000000000000000000000000000000000000000000000000000999999C3C6C6
      C6FF949494FF8F8F8F08000000000000000000000000000000007E7E7E087D7D
      7DFFABABABFF767676C3000000000000000000000000B8DBC30084C69600D1ED
      D60094D89F0089D293007EC78800FEFEFE00FEFEFE0078CC84006AC27B006EC6
      7D00ABDEB400449D5600A0C8A6000000000000000000B5B4EF007C82E900CCD3
      FB008A9CF9007D92F6007489ED006B83F5006B83F5006B83F5006B83F5006278
      F200A3AEF7003D4ECF009FAAE000000000000000000000000000000000000000
      000000000000EBF8EB009CDC9F0059C25E0058BF5E009AD59D00EAF6EB000000
      00000000000000000000000000000000000000000000000000009D9D9DAEC4C4
      C4FFA1A1A1FF9393932900000000000000000000000000000000828282298989
      89FFA9A9A9FF797979AE000000000000000000000000ECF6EF007EBE9200A9D9
      B600D7F0DB0091D79C0087CC920083CB8D008AD3950089D3940082D18D00AEDF
      B6006AB87C005AA26600E6F1E8000000000000000000EBEBFB007877E200A2A6
      F200D3DAFC008699F9007E90EF00798DF0007E93F7007D91F800758BF700A7B5
      F700626DE2005767CC00E6E8F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A1A1A175BABA
      BAFFBFBFBFFF989898DD9494941F919191058E8E8E058A8A8A1F878787E5A8A8
      A8FF9E9E9EFF7D7D7D7500000000000000000000000000000000D1E9D90075BA
      8B00AEDBBA00DBF1DF00B5E3BC009ADAA40095D89F00A4DEAE00BFE7C40078C1
      890057A16500C4DEC90000000000000000000000000000000000CFCFF6006F6F
      E000A9ACF100D7DBFC00ADB9F90090A2F9008A9CF9009BA8FA00B9C6FB006F7A
      E8005361CD00C3C8ED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A4A4A40CA1A1
      A1DBC4C4C4FFBEBEBEFFA1A1A1FF969696FF939393FF979797FFAEAEAEFFAEAE
      AEFF848484DB818181090000000000000000000000000000000000000000D1E9
      D9007EBE920093CDA300C2E5CA00CEEAD300C8E8CD00AEDCB7006CB87E0067AD
      7700C7E0CD00000000000000000000000000000000000000000000000000CFCF
      F6007878E1008D92EC00BDC2F700CBD2F800C3CAF800A9B3F300656FE100636D
      D500C6CAEF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A4A4
      A430A2A2A2DEBCBCBCFFCACACAFFCCCCCCFFCACACAFFC2C2C2FFADADADFF8C8C
      8CDE898989300000000000000000000000000000000000000000000000000000
      0000ECF6EF00B9DCC40082BF950070B685006DB4810078B98900B1D5BA00E8F3
      EB00000000000000000000000000000000000000000000000000000000000000
      0000EBEBFB00B6B5F0007C7EE100696ADD00676ADB007378DE00AEB2EA00E8E9
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5A5A50CA3A3A381A0A0A0BA9D9D9DCC9A9A9ACC979797BA949494819090
      900C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFF800180010000FFFF800080000000
      FFFF000000000000FFFF000000000000FFFF000000000000F81F000000000000
      F81F000000000000F81F000000000000F81F000000000000F81F000000000000
      F81F000000000000FFFF000000000000FFFF000100010000FFFF800180010000
      FFFF800380030000FFFF8007800700008001FFFFFFFFFFFF8001F00FF00FFFFF
      8001E007E007FFFF8001C003C003FFFF800180018001FFFF800180018001F81F
      800180018001F81F800180018001F81F800180018001F81F800180018001F81F
      C3C380018001F81FC3C380018001FFFFC003C003C003FFFFC003E007E007FFFF
      E007F00FF00FFFFFF00FFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object UCControls1: TUCControls
    GroupName = 'Form.Plano de Contas'
    UserControl = frmPrincipal.iCloud
    NotAllowed = naDisabled
    Left = 672
    Top = 48
  end
end
