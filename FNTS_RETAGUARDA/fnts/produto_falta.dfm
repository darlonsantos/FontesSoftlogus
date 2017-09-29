object frmproduto_falta: Tfrmproduto_falta
  Left = 558
  Top = 202
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'PRODUTOS | Vendas/Faltas'
  ClientHeight = 450
  ClientWidth = 686
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 0
    Top = 57
    Width = 686
    Height = 3
    Align = alTop
  end
  object Bevel3: TBevel
    Left = 0
    Top = 406
    Width = 686
    Height = 4
    Align = alTop
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 0
    Width = 686
    Height = 57
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alTop
    TabOrder = 0
    object Bevel1: TBevel
      Left = 272
      Top = 3
      Width = 2
      Height = 50
    end
    object GroupBox1: TGroupBox
      Left = 9
      Top = 4
      Width = 256
      Height = 45
      Caption = 'Per'#237'odo de Vendas'
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 19
        Width = 12
        Height = 13
        Caption = 'de'
      end
      object Label2: TLabel
        Left = 128
        Top = 19
        Width = 16
        Height = 13
        Caption = 'at'#233
      end
      object DateEdit1: TDateEdit
        Left = 25
        Top = 16
        Width = 96
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
        ButtonWidth = 20
        NumGlyphs = 1
        TabOrder = 0
        OnKeyPress = DateEdit1KeyPress
      end
      object DateEdit2: TDateEdit
        Left = 152
        Top = 16
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
        ButtonWidth = 20
        NumGlyphs = 1
        TabOrder = 1
        Text = '01/01/2007'
        OnKeyPress = DateEdit1KeyPress
      end
    end
    object GroupBox2: TGroupBox
      Left = 281
      Top = 4
      Width = 176
      Height = 45
      Caption = 'Se'#231#227'o (Subgrupo)'
      TabOrder = 1
      object combo_subgrupo: TComboBox
        Left = 8
        Top = 16
        Width = 161
        Height = 20
        Style = csDropDownList
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = 'TODOS'
        OnChange = combo_subgrupoChange
        OnKeyPress = combo_subgrupoKeyPress
        Items.Strings = (
          'TODOS'
          'SELECIONAR')
      end
    end
    object GroupBox3: TGroupBox
      Left = 464
      Top = 4
      Width = 129
      Height = 45
      Caption = 'Estoque'
      TabOrder = 2
      object combo_estoque: TComboBox
        Left = 8
        Top = 16
        Width = 113
        Height = 20
        Style = csDropDownList
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = 'TODOS'
        OnKeyPress = combo_estoqueKeyPress
        Items.Strings = (
          'TODOS'
          'SEM ESTOQUE'
          'M'#205'NIMO')
      end
    end
    object bfiltrar: TAdvGlowButton
      Left = 601
      Top = 12
      Width = 79
      Height = 37
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
      TabOrder = 3
      OnClick = BFILTRARClick
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
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 60
    Width = 686
    Height = 346
    Selected.Strings = (
      'CODIGO'#9'7'#9'CODIGO'
      'PRODUTO'#9'26'#9'PRODUTO'
      'marca'#9'14'#9'MARCA/LAB.'
      'PRECOCUSTO'#9'8'#9'PR.CUSTO'
      'ESTOQUE_ATUAL'#9'7'#9'ESTOQ'
      'PRECOVENDA'#9'9'#9'PR.VENDA'
      'QTDE'#9'8'#9'VENDA'
      'PESO'#9'7'#9'PEDIR')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 7
    ShowHorzScrollBar = True
    Align = alTop
    DataSource = dsproduto
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -9
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    PaintOptions.AlternatingRowColor = 15265520
    PaintOptions.ActiveRecordColor = clBlack
  end
  object bitbtn2: TAdvGlowButton
    Left = 13
    Top = 413
    Width = 108
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
    OnClick = BitBtn2Click
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
    Left = 128
    Top = 413
    Width = 137
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
  object bitbtn3: TAdvGlowButton
    Left = 568
    Top = 413
    Width = 105
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
    OnClick = BitBtn3Click
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
  object qrdata: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select '
      'pro.codigo,'
      'pro.produto,'
      'pro.precovenda,'
      'pro.precocusto,'
      'est.estoque_atual,'
      'pro.codmarca,'
      'pro.peso,'
      'sum(mov.qtde) qtde'
      'from'
      'c000025 pro,'
      'c000100 est'
      'JOIN'
      'c000032 mov on pro.codigo = mov.codproduto'
      'and pro.codigo = est.codproduto'
      'group by '
      'pro.produto, '
      'pro.codigo,'
      'pro.precovenda,'
      'pro.precocusto,'
      'pro.estoque,'
      'pro.codmarca,'
      'pro.peso,'
      'est.estoque_atual'
      'order by'
      'pro.produto')
    Params = <>
    Left = 208
    Top = 104
    object qrdatamarca: TStringField
      DisplayLabel = 'MARCA/LAB.'
      DisplayWidth = 14
      FieldKind = fkLookup
      FieldName = 'marca'
      LookupDataSet = frmmodulo.qrmarca
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codmarca'
      Size = 40
      Lookup = True
    end
    object qrdataCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrdataPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrdataPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object qrdataPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object qrdataESTOQUE_ATUAL: TFloatField
      FieldName = 'ESTOQUE_ATUAL'
    end
    object qrdataCODMARCA: TWideStringField
      FieldName = 'CODMARCA'
      Size = 6
    end
    object qrdataPESO: TFloatField
      FieldName = 'PESO'
    end
    object qrdataQTDE: TFloatField
      FieldName = 'QTDE'
      ReadOnly = True
    end
  end
  object dsproduto: TDataSource
    DataSet = qrproduto
    Left = 240
    Top = 104
  end
  object PopupMenu1: TPopupMenu
    Left = 448
    Top = 256
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 46
      OnClick = BitBtn2Click
    end
    object Relatrio1: TMenuItem
      Caption = 'Relat'#243'rio'
      ShortCut = 118
      OnClick = BitBtn1Click
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = BitBtn3Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object EditarRelatrio1: TMenuItem
      Caption = 'Editar Relat'#243'rio'
      OnClick = EditarRelatrio1Click
    end
  end
  object fsproduto: TfrxDBDataset
    UserName = 'fsproduto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'PRODUTO=PRODUTO'
      'marca=MARCA'
      'PRECOCUSTO=PRECOCUSTO'
      'PRECOVENDA=PRECOVENDA'
      'ESTOQUE=ESTOQUE'
      'QTDE=QTDE'
      'PESO=PESO'
      'CODMARCA=CODMARCA')
    DataSet = qrproduto
    BCDToCurrency = False
    Left = 104
    Top = 248
  end
  object fxproduto: TfrxReport
    Version = '4.12.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39179.400035798600000000
    ReportOptions.LastChange = 39276.740758275460000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 136
    Top = 248
    Datasets = <
      item
        DataSet = fsproduto
        DataSetName = 'fsproduto'
      end
      item
        DataSet = frmmodulo.fxemitente
        DataSetName = 'fxemitente'
      end
      item
        DataSet = frmmodulo.fxrelatorio
        DataSetName = 'fxrelatorio'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 154.960730000000000000
        Width = 740.409927000000000000
        DataSet = fsproduto
        DataSetName = 'fsproduto'
        RowCount = 0
        object Memo6: TfrxMemoView
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CODIGO'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsproduto."CODIGO"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 68.031540000000000000
          Width = 313.700990000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'PRODUTO'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fsproduto."PRODUTO"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 381.732530000000000000
          Width = 249.448980000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'MARCA'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fsproduto."MARCA"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 631.181510000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'QTDE'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsproduto."QTDE"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo24: TfrxMemoView
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOME'
          DataSet = frmmodulo.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fxemitente."NOME"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 188.976500000000000000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LINHA1'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fxrelatorio."LINHA1"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 623.622450000000000000
          Top = 3.000000000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Com'#233'rcio Plus! 7')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Top = 18.897650000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LINHA2'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA2"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Top = 30.236239999999990000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LINHA3'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA3"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Top = 41.574830000000000000
          Width = 298.582870000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'LINHA4'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA4"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 623.622450000000000000
          Top = 18.897650000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Emiss'#227'o: [Date]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 623.622450000000000000
          Top = 34.015770000000010000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '000#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina: [Page]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Top = 60.472480000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 68.031540000000000000
          Top = 60.472480000000000000
          Width = 313.700990000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 381.732530000000000000
          Top = 60.472480000000000000
          Width = 249.448980000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'MARCA/LABORAT'#211'RIO')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 631.181510000000000000
          Top = 60.472480000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'QTDE.PEDIDO')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 192.756030000000000000
        Width = 740.409927000000000000
        object Line1: TfrxLineView
          Width = 740.787880000000000000
          ShowHint = False
          Diagonal = True
        end
      end
    end
  end
  object frxDesigner1: TfrxDesigner
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
    Left = 168
    Top = 252
  end
  object qrproduto: TVirtualTable
    Active = True
    FieldDefs = <
      item
        Name = 'CODIGO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'PRODUTO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'PRECOCUSTO'
        DataType = ftFloat
      end
      item
        Name = 'ESTOQUE_ATUAL'
        DataType = ftFloat
      end
      item
        Name = 'PRECOVENDA'
        DataType = ftFloat
      end
      item
        Name = 'PESO'
        DataType = ftFloat
      end
      item
        Name = 'CODMARCA'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'QTDE'
        DataType = ftFloat
      end>
    Left = 320
    Top = 96
    Data = {
      030008000600434F4449474F0100060000000000070050524F4455544F01003C
      00000000000A00505245434F435553544F06000000000000000D004553544F51
      55455F415455414C06000000000000000A00505245434F56454E444106000000
      0000000004005045534F06000000000000000800434F444D4152434101000600
      000000000400515444450600000000000000000000000000}
    object qrprodutoCODIGO: TStringField
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrprodutoPRODUTO: TStringField
      DisplayWidth = 26
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrprodutomarca: TStringField
      DisplayLabel = 'MARCA/LAB.'
      DisplayWidth = 14
      FieldKind = fkLookup
      FieldName = 'marca'
      LookupDataSet = frmmodulo.qrmarca
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codmarca'
      Size = 40
      Lookup = True
    end
    object qrprodutoPRECOCUSTO: TFloatField
      DisplayLabel = 'PR.CUSTO'
      DisplayWidth = 8
      FieldName = 'PRECOCUSTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoESTOQUE_ATUAL: TFloatField
      DisplayLabel = 'ESTOQ'
      DisplayWidth = 7
      FieldName = 'ESTOQUE_ATUAL'
    end
    object qrprodutoPRECOVENDA: TFloatField
      DisplayLabel = 'PR.VENDA'
      DisplayWidth = 9
      FieldName = 'PRECOVENDA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoQTDE: TFloatField
      DisplayLabel = 'VENDA'
      DisplayWidth = 8
      FieldName = 'QTDE'
    end
    object qrprodutoPESO: TFloatField
      DisplayLabel = 'PEDIR'
      DisplayWidth = 7
      FieldName = 'PESO'
    end
    object qrprodutoCODMARCA: TStringField
      DisplayWidth = 6
      FieldName = 'CODMARCA'
      Visible = False
      Size = 6
    end
  end
  object UCControls1: TUCControls
    GroupName = 'Form.Produto/Faltas'
    UserControl = frmPrincipal.iCloud
    NotAllowed = naDisabled
    Left = 440
    Top = 432
  end
end
