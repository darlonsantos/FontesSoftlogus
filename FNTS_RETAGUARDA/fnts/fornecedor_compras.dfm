object frmfornecedor_compras: Tfrmfornecedor_compras
  Left = 194
  Top = 130
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Fornecedores | Compras'
  ClientHeight = 412
  ClientWidth = 784
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
    Left = 0
    Top = 369
    Width = 784
    Height = 3
    Align = alBottom
    ExplicitTop = 384
  end
  object Bevel2: TBevel
    Left = 0
    Top = 25
    Width = 784
    Height = 3
    Align = alTop
  end
  object Bevel3: TBevel
    Left = 0
    Top = 66
    Width = 784
    Height = 3
    Align = alTop
    ExplicitTop = 61
  end
  object Panel1: TPanel
    Left = 0
    Top = 372
    Width = 784
    Height = 40
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 371
    object Label5: TLabel
      Left = 591
      Top = 13
      Width = 60
      Height = 13
      Caption = 'Quantidade:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object bfechar: TAdvGlowButton
      Left = 10
      Top = 3
      Width = 106
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
      TabOrder = 0
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
    object rqde: TRzNumericEdit
      Left = 663
      Top = 8
      Width = 78
      Height = 21
      Ctl3D = True
      DisabledColor = clWhite
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FocusColor = 16774120
      FrameHotTrack = True
      FrameHotStyle = fsLowered
      FrameStyle = fsLowered
      FrameVisible = True
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      DisplayFormat = ',0;(,0)'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 28
    Width = 784
    Height = 38
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object Label56: TLabel
      Left = 11
      Top = 14
      Width = 57
      Height = 13
      Caption = 'Data Inicial:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label18: TLabel
      Left = 187
      Top = 14
      Width = 52
      Height = 13
      Caption = 'Data Final:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 373
      Top = 14
      Width = 78
      Height = 13
      Caption = 'F6 | Nota Fiscal:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object edata_inicio: TDateEdit
      Left = 74
      Top = 11
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
      TabOrder = 0
      OnEnter = edata_inicioEnter
      OnExit = edata_inicioExit
      OnKeyPress = edata_inicioKeyPress
    end
    object edata_final: TDateEdit
      Left = 251
      Top = 11
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
      TabOrder = 1
      OnEnter = edata_inicioEnter
      OnExit = edata_inicioExit
      OnKeyPress = edata_inicioKeyPress
    end
    object ENUMERO: TEdit
      Left = 456
      Top = 8
      Width = 68
      Height = 26
      Font.Charset = OEM_CHARSET
      Font.Color = clInfoText
      Font.Height = -19
      Font.Name = 'Terminal'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 2
      OnEnter = edata_inicioEnter
      OnExit = ENUMEROExit
      OnKeyPress = ENUMEROKeyPress
    end
    object bfiltrar: TAdvGlowButton
      Left = 552
      Top = 3
      Width = 100
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
      TabOrder = 3
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
  object GRID: TwwDBGrid
    Left = 0
    Top = 69
    Width = 784
    Height = 300
    Selected.Strings = (
      'CODPRODUTO'#9'8'#9'C'#243'digo'#9'F'#9'Informa'#231#245'es do Produto'
      'PRODUTO'#9'40'#9'Nome'#9'F'#9'Informa'#231#245'es do Produto'
      'UNIDADE'#9'3'#9'Un.'#9'F'#9'Informa'#231#245'es do Produto'
      'NOTAFISCAL'#9'6'#9'NF'#9'F'#9'Informa'#231#245'es da Nota'
      'DATA'#9'10'#9'Lan'#231'amento'#9'F'#9'Informa'#231#245'es da Nota'
      'QTDE'#9'10'#9'Quantidade'#9'F'#9'Informa'#231#245'es da Nota'
      'UNITARIO'#9'9'#9'Unit'#225'rio'#9'F'#9'Informa'#231#245'es da Nota'
      'ESTOQUE'#9'9'#9'Estoque'#9'F'#9'Informa'#231#245'es do Produto'
      'PRECOCUSTO'#9'11'#9'Custo'#9'F'#9'Informa'#231#245'es do Produto'
      'PRECOVENDA'#9'10'#9'Venda'#9'F'#9'Informa'#231#245'es do Produto')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsnota
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
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
    PaintOptions.AlternatingRowColor = 16053492
    PaintOptions.ActiveRecordColor = clBlack
    ExplicitTop = 78
    ExplicitHeight = 279
  end
  object btotaliza_nota: TButton
    Left = 24
    Top = 280
    Width = 100
    Height = 25
    Caption = 'btotaliza_nota'
    TabOrder = 3
    Visible = False
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    Color = 11647157
    ParentBackground = False
    TabOrder = 4
    object DBText1: TDBText
      Left = 82
      Top = 6
      Width = 50
      Height = 17
      DataField = 'CODIGO'
      DataSource = dsfornecedor
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText2: TDBText
      Left = 135
      Top = 6
      Width = 466
      Height = 17
      DataField = 'NOME'
      DataSource = dsfornecedor
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 11
      Top = 6
      Width = 59
      Height = 13
      Caption = 'Fornecedor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object Pop2: TPopupMenu
    Left = 452
    Top = 181
    object Pesquisa1: TMenuItem
      Caption = 'Pesquisa'
      ShortCut = 117
      OnClick = Pesquisa1Click
    end
    object imprimir1: TMenuItem
      Caption = 'imprimir'
      ShortCut = 118
      OnClick = imprimir1Click
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = Cancelar1Click
    end
  end
  object dsnota: TDataSource
    DataSet = qrcompras
    Left = 489
    Top = 182
  end
  object dsfornecedor: TDataSource
    DataSet = frmmodulo.qrfornecedor
    Left = 521
    Top = 174
  end
  object qrcompras: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select i.*,p.* from c000088 i,c000025 p'
      'where   i.codproduto = p.codigo')
    Params = <>
    Left = 420
    Top = 178
    object qrcomprasCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object qrcomprasITEM: TWideStringField
      FieldName = 'ITEM'
      Size = 3
    end
    object qrcomprasCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 10
    end
    object qrcomprasCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 13
    end
    object qrcomprasCODLANCAMENTO: TWideStringField
      FieldName = 'CODLANCAMENTO'
    end
    object qrcomprasUN_COMPRA: TWideStringField
      FieldName = 'UN_COMPRA'
      Size = 5
    end
    object qrcomprasUN_FRACAO: TWideStringField
      FieldName = 'UN_FRACAO'
      Size = 5
    end
    object qrcomprasFRACAO: TFloatField
      FieldName = 'FRACAO'
    end
    object qrcomprasCST: TWideStringField
      FieldName = 'CST'
      Size = 5
    end
    object qrcomprasCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 6
    end
    object qrcomprasQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrcomprasUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object qrcomprasSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
    end
    object qrcomprasDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrcomprasTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrcomprasDESCONTO_P: TFloatField
      FieldName = 'DESCONTO_P'
    end
    object qrcomprasICMS_RETIDO: TWideStringField
      FieldName = 'ICMS_RETIDO'
      Size = 1
    end
    object qrcomprasICMS_ALIQUOTA: TFloatField
      FieldName = 'ICMS_ALIQUOTA'
    end
    object qrcomprasICMS_REDUCAO: TFloatField
      FieldName = 'ICMS_REDUCAO'
    end
    object qrcomprasICMS_BASE: TFloatField
      FieldName = 'ICMS_BASE'
    end
    object qrcomprasICMS_VALOR: TFloatField
      FieldName = 'ICMS_VALOR'
    end
    object qrcomprasICMS_VALORRETIDO: TFloatField
      FieldName = 'ICMS_VALORRETIDO'
    end
    object qrcomprasICMS_ISENTO: TFloatField
      FieldName = 'ICMS_ISENTO'
    end
    object qrcomprasICMS_NAOTRIBUTADO: TFloatField
      FieldName = 'ICMS_NAOTRIBUTADO'
    end
    object qrcomprasSUB_MARGEM: TFloatField
      FieldName = 'SUB_MARGEM'
    end
    object qrcomprasSUB_BASE: TFloatField
      FieldName = 'SUB_BASE'
    end
    object qrcomprasSUB_VALOR: TFloatField
      FieldName = 'SUB_VALOR'
    end
    object qrcomprasIPI_TIPO: TWideStringField
      FieldName = 'IPI_TIPO'
      Size = 25
    end
    object qrcomprasIPI_ALIQUOTA: TFloatField
      FieldName = 'IPI_ALIQUOTA'
    end
    object qrcomprasIPI_BASE: TFloatField
      FieldName = 'IPI_BASE'
    end
    object qrcomprasIPI_VALOR: TFloatField
      FieldName = 'IPI_VALOR'
    end
    object qrcomprasDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrcomprasTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrcomprasNOTAFISCAL: TWideStringField
      FieldName = 'NOTAFISCAL'
      Size = 10
    end
    object qrcomprasFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object qrcomprasOUTRAS: TFloatField
      FieldName = 'OUTRAS'
    end
    object qrcomprasSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object qrcomprasCLASSIFICACAO_FISCAL: TWideStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
      Size = 25
    end
    object qrcomprasSUB_PRODUTOS: TFloatField
      FieldName = 'SUB_PRODUTOS'
    end
    object qrcomprasCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 10
    end
    object qrcomprasITEM_ESPECIAL_VALOR: TFloatField
      FieldName = 'ITEM_ESPECIAL_VALOR'
    end
    object qrcomprasICMS_OUTRAS: TFloatField
      FieldName = 'ICMS_OUTRAS'
    end
    object qrcomprasALTERA_ITEM: TIntegerField
      FieldName = 'ALTERA_ITEM'
    end
    object qrcomprasCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
    end
    object qrcomprasCREDITO_ICMS_BASE: TFloatField
      FieldName = 'CREDITO_ICMS_BASE'
    end
    object qrcomprasPIS_BASE: TFloatField
      FieldName = 'PIS_BASE'
    end
    object qrcomprasPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrcomprasCOFINS_BASE: TFloatField
      FieldName = 'COFINS_BASE'
    end
    object qrcomprasCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrcomprasLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
      Size = 15
    end
    object qrcomprasLOTE_VALIDADE: TDateTimeField
      FieldName = 'LOTE_VALIDADE'
    end
    object qrcomprasLOTE_FABRICACAO_DATA: TDateTimeField
      FieldName = 'LOTE_FABRICACAO_DATA'
    end
    object qrcomprasCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrcomprasPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrcomprasPMARGEM: TFloatField
      FieldName = 'PMARGEM'
    end
    object qrcomprasPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object qrcomprasPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object qrcomprasCODIGO_1: TWideStringField
      FieldName = 'CODIGO_1'
      Required = True
      Size = 6
    end
    object qrcomprasCODBARRA_1: TWideStringField
      FieldName = 'CODBARRA_1'
      Size = 13
    end
    object qrcomprasPRODUTO_1: TWideStringField
      FieldName = 'PRODUTO_1'
      Size = 60
    end
    object qrcomprasUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrcomprasDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object qrcomprasCODGRUPO: TWideStringField
      FieldName = 'CODGRUPO'
      Size = 6
    end
    object qrcomprasCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object qrcomprasCODFORNECEDOR_1: TWideStringField
      FieldName = 'CODFORNECEDOR_1'
      Size = 6
    end
    object qrcomprasCODMARCA: TWideStringField
      FieldName = 'CODMARCA'
      Size = 6
    end
    object qrcomprasDATA_ULTIMACOMPRA: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qrcomprasNOTAFISCAL_1: TWideStringField
      FieldName = 'NOTAFISCAL_1'
      Size = 7
    end
    object qrcomprasPRECOCUSTO_1: TFloatField
      FieldName = 'PRECOCUSTO_1'
    end
    object qrcomprasPRECOVENDA_1: TFloatField
      FieldName = 'PRECOVENDA_1'
    end
    object qrcomprasDATA_ULTIMAVENDA: TDateTimeField
      FieldName = 'DATA_ULTIMAVENDA'
    end
    object qrcomprasESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrcomprasESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
    end
    object qrcomprasCODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Size = 5
    end
    object qrcomprasLOCALICAZAO: TWideStringField
      FieldName = 'LOCALICAZAO'
      Size = 50
    end
    object qrcomprasPESO: TFloatField
      FieldName = 'PESO'
    end
    object qrcomprasVALIDADE: TWideStringField
      FieldName = 'VALIDADE'
    end
    object qrcomprasCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qrcomprasUSA_BALANCA: TIntegerField
      FieldName = 'USA_BALANCA'
    end
    object qrcomprasUSA_SERIAL: TIntegerField
      FieldName = 'USA_SERIAL'
    end
    object qrcomprasUSA_GRADE: TIntegerField
      FieldName = 'USA_GRADE'
    end
    object qrcomprasCODRECEITA: TWideStringField
      FieldName = 'CODRECEITA'
      Size = 6
    end
    object qrcomprasFOTO: TWideStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object qrcomprasDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA_ANTERIOR'
    end
    object qrcomprasNOTAFISCAL_ANTERIOR: TWideStringField
      FieldName = 'NOTAFISCAL_ANTERIOR'
      Size = 6
    end
    object qrcomprasCODFORNECEDOR_ANTERIOR: TWideStringField
      FieldName = 'CODFORNECEDOR_ANTERIOR'
      Size = 6
    end
    object qrcomprasPRECOCUSTO_ANTERIOR: TFloatField
      FieldName = 'PRECOCUSTO_ANTERIOR'
    end
    object qrcomprasPRECOVENDA_ANTERIOR: TFloatField
      FieldName = 'PRECOVENDA_ANTERIOR'
    end
    object qrcomprasCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
    end
    object qrcomprasAUTO_APLICACAO: TWideStringField
      FieldName = 'AUTO_APLICACAO'
      Size = 60
    end
    object qrcomprasAUTO_COMPLEMENTO: TWideStringField
      FieldName = 'AUTO_COMPLEMENTO'
      Size = 60
    end
    object qrcomprasDATA_REMARCACAO_CUSTO: TDateTimeField
      FieldName = 'DATA_REMARCACAO_CUSTO'
    end
    object qrcomprasDATA_REMARCACAO_VENDA: TDateTimeField
      FieldName = 'DATA_REMARCACAO_VENDA'
    end
    object qrcomprasPRECO_PROMOCAO: TFloatField
      FieldName = 'PRECO_PROMOCAO'
    end
    object qrcomprasDATA_PROMOCAO: TDateTimeField
      FieldName = 'DATA_PROMOCAO'
    end
    object qrcomprasFIM_PROMOCAO: TDateTimeField
      FieldName = 'FIM_PROMOCAO'
    end
    object qrcomprasCST_1: TWideStringField
      FieldName = 'CST_1'
      Size = 10
    end
    object qrcomprasCLASSIFICACAO_FISCAL_1: TWideStringField
      FieldName = 'CLASSIFICACAO_FISCAL_1'
    end
    object qrcomprasNBM: TWideStringField
      FieldName = 'NBM'
    end
    object qrcomprasNCM: TWideStringField
      FieldName = 'NCM'
    end
    object qrcomprasALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrcomprasIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrcomprasREDUCAO: TFloatField
      FieldName = 'REDUCAO'
    end
    object qrcomprasQTDE_EMBALAGEM: TFloatField
      FieldName = 'QTDE_EMBALAGEM'
    end
    object qrcomprasTIPO_1: TWideStringField
      FieldName = 'TIPO_1'
      Size = 30
    end
    object qrcomprasPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object qrcomprasFARMACIA_CONTROLADO: TWideStringField
      FieldName = 'FARMACIA_CONTROLADO'
      Size = 1
    end
    object qrcomprasFARMACIA_APRESENTACAO: TIntegerField
      FieldName = 'FARMACIA_APRESENTACAO'
    end
    object qrcomprasFARMACIA_REGISTRO_MEDICAMENTO: TWideStringField
      FieldName = 'FARMACIA_REGISTRO_MEDICAMENTO'
    end
    object qrcomprasFARMACIA_PMC: TFloatField
      FieldName = 'FARMACIA_PMC'
    end
    object qrcomprasULTIMA_ALTERACAO: TDateTimeField
      FieldName = 'ULTIMA_ALTERACAO'
    end
    object qrcomprasULTIMA_CARGA: TDateTimeField
      FieldName = 'ULTIMA_CARGA'
    end
    object qrcomprasDATA_INVENTARIO: TDateTimeField
      FieldName = 'DATA_INVENTARIO'
    end
    object qrcomprasCUSTO_INVENTARIO: TFloatField
      FieldName = 'CUSTO_INVENTARIO'
    end
    object qrcomprasESTOQUE_INVENTARIO: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO'
    end
    object qrcomprasESTOQUE_ANTERIOR: TFloatField
      FieldName = 'ESTOQUE_ANTERIOR'
    end
    object qrcomprasPRECOVENDA_NOVO: TFloatField
      FieldName = 'PRECOVENDA_NOVO'
    end
    object qrcomprasUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
    end
    object qrcomprasQUANTIDADE_MINIMA_FAB: TFloatField
      FieldName = 'QUANTIDADE_MINIMA_FAB'
    end
    object qrcomprasAPRESENTACAO: TWideStringField
      FieldName = 'APRESENTACAO'
      Size = 60
    end
    object qrcomprasSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrcomprasPRECOVENDA1: TFloatField
      FieldName = 'PRECOVENDA1'
    end
    object qrcomprasPRECOVENDA2: TFloatField
      FieldName = 'PRECOVENDA2'
    end
    object qrcomprasPRECOVENDA3: TFloatField
      FieldName = 'PRECOVENDA3'
    end
    object qrcomprasPRECOVENDA4: TFloatField
      FieldName = 'PRECOVENDA4'
    end
    object qrcomprasPRECOVENDA5: TFloatField
      FieldName = 'PRECOVENDA5'
    end
    object qrcomprasDESCONTO_PRECOVENDA: TFloatField
      FieldName = 'DESCONTO_PRECOVENDA'
    end
    object qrcomprasDATA_INVENTARIO_ATUAL: TDateTimeField
      FieldName = 'DATA_INVENTARIO_ATUAL'
    end
    object qrcomprasCUSTO_INVENTARIO_ATUAL: TFloatField
      FieldName = 'CUSTO_INVENTARIO_ATUAL'
    end
    object qrcomprasESTOQUE_INVENTARIO_ATUAL: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO_ATUAL'
    end
    object qrcomprasMARGEM_MINIMA: TFloatField
      FieldName = 'MARGEM_MINIMA'
    end
    object qrcomprasPISCOFINS: TWideStringField
      FieldName = 'PISCOFINS'
      Size = 1
    end
    object qrcomprasREFERENCIA_FORNECEDOR: TWideStringField
      FieldName = 'REFERENCIA_FORNECEDOR'
      Size = 30
    end
    object qrcomprasCOMISSAO1: TFloatField
      FieldName = 'COMISSAO1'
    end
    object qrcomprasMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object qrcomprasTAMANHO: TWideStringField
      FieldName = 'TAMANHO'
      Size = 6
    end
    object qrcomprasCOR: TWideStringField
      FieldName = 'COR'
      Size = 6
    end
    object qrcomprasINCIDENCIA_PISCOFINS: TWideStringField
      FieldName = 'INCIDENCIA_PISCOFINS'
      Size = 30
    end
    object qrcomprasVEIC_CHASSI: TWideStringField
      FieldName = 'VEIC_CHASSI'
      Size = 50
    end
    object qrcomprasVEIC_SERIE: TWideStringField
      FieldName = 'VEIC_SERIE'
      Size = 50
    end
    object qrcomprasVEIC_POTENCIA: TWideStringField
      FieldName = 'VEIC_POTENCIA'
      Size = 50
    end
    object qrcomprasVEIC_PESO_LIQUIDO: TWideStringField
      FieldName = 'VEIC_PESO_LIQUIDO'
      Size = 15
    end
    object qrcomprasVEIC_PESO_BRUTO: TWideStringField
      FieldName = 'VEIC_PESO_BRUTO'
      Size = 15
    end
    object qrcomprasVEIC_TIPO_COMBUSTIVEL: TWideStringField
      FieldName = 'VEIC_TIPO_COMBUSTIVEL'
    end
    object qrcomprasVEIC_RENAVAM: TWideStringField
      FieldName = 'VEIC_RENAVAM'
      Size = 50
    end
    object qrcomprasVEIC_ANO_FABRICACAO: TIntegerField
      FieldName = 'VEIC_ANO_FABRICACAO'
    end
    object qrcomprasVEIC_ANO_MODELO: TIntegerField
      FieldName = 'VEIC_ANO_MODELO'
    end
    object qrcomprasVEIC_TIPO: TWideStringField
      FieldName = 'VEIC_TIPO'
      Size = 50
    end
    object qrcomprasVEIC_TIPO_PINTURA: TWideStringField
      FieldName = 'VEIC_TIPO_PINTURA'
      Size = 15
    end
    object qrcomprasVEIC_COD_COR: TWideStringField
      FieldName = 'VEIC_COD_COR'
      Size = 15
    end
    object qrcomprasVEIC_COR: TWideStringField
      FieldName = 'VEIC_COR'
      Size = 30
    end
    object qrcomprasVEIC_VIN: TWideStringField
      FieldName = 'VEIC_VIN'
      Size = 10
    end
    object qrcomprasVEIC_NUMERO_MOTOR: TWideStringField
      FieldName = 'VEIC_NUMERO_MOTOR'
      Size = 50
    end
    object qrcomprasVEIC_CMKG: TWideStringField
      FieldName = 'VEIC_CMKG'
      Size = 15
    end
    object qrcomprasVEIC_CM3: TWideStringField
      FieldName = 'VEIC_CM3'
      Size = 15
    end
    object qrcomprasVEIC_DISTANCIA_EIXO: TWideStringField
      FieldName = 'VEIC_DISTANCIA_EIXO'
      Size = 15
    end
    object qrcomprasVEIC_COD_MARCA: TWideStringField
      FieldName = 'VEIC_COD_MARCA'
      Size = 15
    end
    object qrcomprasVEIC_ESPECIE: TWideStringField
      FieldName = 'VEIC_ESPECIE'
      Size = 50
    end
    object qrcomprasVEIC_CONDICAO: TWideStringField
      FieldName = 'VEIC_CONDICAO'
      Size = 50
    end
    object qrcomprasLOTE_FABRICACAO_1: TWideStringField
      FieldName = 'LOTE_FABRICACAO_1'
    end
    object qrcomprasLOTE_VALIDADE_1: TDateTimeField
      FieldName = 'LOTE_VALIDADE_1'
    end
    object qrcomprasMARGEM_AGREGADA: TFloatField
      FieldName = 'MARGEM_AGREGADA'
    end
    object qrcomprasCODBARRA_NOVARTIS: TWideStringField
      FieldName = 'CODBARRA_NOVARTIS'
      Size = 13
    end
    object qrcomprasFARMACIA_DCB: TWideStringField
      FieldName = 'FARMACIA_DCB'
    end
    object qrcomprasFARMACIA_ABCFARMA: TWideStringField
      FieldName = 'FARMACIA_ABCFARMA'
      Size = 10
    end
    object qrcomprasFARMACIA_APRESENTACAO_CAIXA: TWideStringField
      FieldName = 'FARMACIA_APRESENTACAO_CAIXA'
      Size = 10
    end
    object qrcomprasFARMACIA_PRINCIPIOATIVO: TWideStringField
      FieldName = 'FARMACIA_PRINCIPIOATIVO'
      Size = 30
    end
    object qrcomprasULTIMA_COMPRA: TDateTimeField
      FieldName = 'ULTIMA_COMPRA'
    end
    object qrcomprasFARMACIA_DATAVIGENCIA: TDateTimeField
      FieldName = 'FARMACIA_DATAVIGENCIA'
    end
    object qrcomprasFARMACIA_TIPO: TWideStringField
      FieldName = 'FARMACIA_TIPO'
      Size = 1
    end
    object qrcomprasUSA_COMBUSTIVEL: TWideStringField
      FieldName = 'USA_COMBUSTIVEL'
      Size = 1
    end
    object qrcomprasREFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object qrcomprasPERDA: TFloatField
      FieldName = 'PERDA'
    end
    object qrcomprasCOMPOSICAO1: TWideStringField
      FieldName = 'COMPOSICAO1'
      Size = 30
    end
    object qrcomprasCOMPOSICAO2: TWideStringField
      FieldName = 'COMPOSICAO2'
      Size = 30
    end
    object qrcomprasIAT: TWideStringField
      FieldName = 'IAT'
      Size = 1
    end
    object qrcomprasIPPT: TWideStringField
      FieldName = 'IPPT'
      Size = 1
    end
    object qrcomprasSITUACAO_TRIBUTARIA: TWideStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Size = 1
    end
    object qrcomprasFLAG_SIS: TWideStringField
      FieldName = 'FLAG_SIS'
      Size = 1
    end
    object qrcomprasFLAG_ACEITO: TWideStringField
      FieldName = 'FLAG_ACEITO'
      Size = 3
    end
    object qrcomprasFLAG_EST: TWideStringField
      FieldName = 'FLAG_EST'
      Size = 1
    end
    object qrcomprasCSOSN: TWideStringField
      FieldName = 'CSOSN'
      Size = 60
    end
    object qrcomprasCODORIGINAL: TWideStringField
      FieldName = 'CODORIGINAL'
    end
    object qrcomprasCUSTO_ATACADO: TFloatField
      FieldName = 'CUSTO_ATACADO'
    end
    object qrcomprasUNIDADE_ATACADO: TWideStringField
      FieldName = 'UNIDADE_ATACADO'
      Size = 2
    end
    object qrcomprasQTDE_EMBALAGEMATACADO: TFloatField
      FieldName = 'QTDE_EMBALAGEMATACADO'
    end
    object qrcomprasPMARGEM1: TFloatField
      FieldName = 'PMARGEM1'
    end
    object qrcomprasPMARGEM2: TFloatField
      FieldName = 'PMARGEM2'
    end
    object qrcomprasPMARGEM3: TFloatField
      FieldName = 'PMARGEM3'
    end
    object qrcomprasPMARGEM4: TFloatField
      FieldName = 'PMARGEM4'
    end
    object qrcomprasPMARGEM5: TFloatField
      FieldName = 'PMARGEM5'
    end
    object qrcomprasPMARGEMATACADO1: TFloatField
      FieldName = 'PMARGEMATACADO1'
    end
    object qrcomprasPMARGEMATACADO2: TFloatField
      FieldName = 'PMARGEMATACADO2'
    end
    object qrcomprasPMARGEMATACADO3: TFloatField
      FieldName = 'PMARGEMATACADO3'
    end
    object qrcomprasPMARGEMATACADO4: TFloatField
      FieldName = 'PMARGEMATACADO4'
    end
    object qrcomprasPMARGEMATACADO5: TFloatField
      FieldName = 'PMARGEMATACADO5'
    end
    object qrcomprasPMARGEMATACADO6: TFloatField
      FieldName = 'PMARGEMATACADO6'
    end
    object qrcomprasPRECOATACADO1: TFloatField
      FieldName = 'PRECOATACADO1'
    end
    object qrcomprasPRECOATACADO2: TFloatField
      FieldName = 'PRECOATACADO2'
    end
    object qrcomprasPRECOATACADO3: TFloatField
      FieldName = 'PRECOATACADO3'
    end
    object qrcomprasPRECOATACADO4: TFloatField
      FieldName = 'PRECOATACADO4'
    end
    object qrcomprasPRECOATACADO5: TFloatField
      FieldName = 'PRECOATACADO5'
    end
    object qrcomprasIND_CFOP: TWideStringField
      FieldName = 'IND_CFOP'
      Size = 6
    end
    object qrcomprasCFOP_DESC: TWideStringField
      FieldName = 'CFOP_DESC'
      Size = 30
    end
    object qrcomprasUSA_LOTE: TIntegerField
      FieldName = 'USA_LOTE'
    end
    object qrcomprasIND_CFOP_VENDA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_VENDA_DENTRO'
      Size = 6
    end
    object qrcomprasIND_CFOP_VENDA_FORA: TWideStringField
      FieldName = 'IND_CFOP_VENDA_FORA'
      Size = 6
    end
    object qrcomprasIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_DENTRO'
      Size = 6
    end
    object qrcomprasIND_CFOP_DEVOLUCAO_FORA: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_FORA'
      Size = 6
    end
    object qrcomprasIND_CFOP_GARANTIA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_DENTRO'
      Size = 6
    end
    object qrcomprasIND_CFOP_GARANTIA_FORA: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_FORA'
      Size = 6
    end
    object qrcomprasCODCONTA: TWideStringField
      FieldName = 'CODCONTA'
      Size = 6
    end
    object qrcomprasAPLICACAO: TWideMemoField
      FieldName = 'APLICACAO'
      BlobType = ftWideMemo
    end
    object qrcomprasUSA_TB_PC: TWideStringField
      FieldName = 'USA_TB_PC'
      Size = 4
    end
  end
end
