object frmOrcamento_localizar: TfrmOrcamento_localizar
  Left = 226
  Top = 169
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Venda - Localizar'
  ClientHeight = 395
  ClientWidth = 536
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
    Top = 347
    Width = 536
    Height = 3
    Align = alBottom
    ExplicitTop = 327
    ExplicitWidth = 526
  end
  object Bevel2: TBevel
    Left = 0
    Top = 73
    Width = 536
    Height = 3
    Align = alTop
    ExplicitWidth = 526
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 76
    Width = 536
    Height = 271
    Selected.Strings = (
      'CODIGO'#9'7'#9'N'#250'mero'
      'DATA'#9'10'#9'Data'
      'cliente'#9'50'#9'Cliente'
      'TOTAL'#9'12'#9'Valor-R$')
    IniAttributes.Delimiter = ';;'
    TitleColor = clWhite
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsorcamento
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = wwDBGrid1DblClick
    OnKeyPress = wwDBGrid1KeyPress
    PaintOptions.AlternatingRowColor = 16053492
    PaintOptions.ActiveRecordColor = clBlack
  end
  object Panel1: TPanel
    Left = 0
    Top = 350
    Width = 536
    Height = 45
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object bfechar: TAdvGlowButton
      Left = 193
      Top = 4
      Width = 132
      Height = 35
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 121
      Height = 57
      Caption = 'Localizar por'
      TabOrder = 0
      object RadioButton1: TRadioButton
        Left = 8
        Top = 16
        Width = 105
        Height = 17
        Caption = 'F2 - N'#250'mero'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = RadioButton1Click
      end
      object RadioButton2: TRadioButton
        Left = 8
        Top = 32
        Width = 105
        Height = 17
        Caption = 'F3 - Cliente'
        TabOrder = 1
        OnClick = RadioButton2Click
      end
    end
    object GroupBox2: TGroupBox
      Left = 136
      Top = 8
      Width = 377
      Height = 57
      Caption = 'Informe o n'#250'mero da Venda'
      TabOrder = 1
      object Edit1: TEdit
        Left = 16
        Top = 22
        Width = 233
        Height = 21
        TabOrder = 0
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyPress = Edit1KeyPress
      end
      object combocliente: TwwDBLookupCombo
        Left = 16
        Top = 22
        Width = 233
        Height = 21
        DropDownAlignment = taLeftJustify
        LookupTable = frmmodulo.qrcliente
        LookupField = 'NOME'
        TabOrder = 1
        Visible = False
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = comboclienteEnter
        OnExit = comboclienteExit
        OnKeyPress = comboclienteKeyPress
      end
      object BITBTN1: TAdvGlowButton
        Left = 265
        Top = 9
        Width = 109
        Height = 45
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
        TabOrder = 2
        OnClick = BITBTN1Click
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
  object qrorcamento: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from c000056')
    Params = <>
    Left = 136
    Top = 120
    object qrorcamentoCODIGO: TWideStringField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrorcamentoDATA: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'DATA'
    end
    object qrorcamentocliente: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = frmmodulo.qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codcliente'
      Size = 50
      Lookup = True
    end
    object qrorcamentoTOTAL: TFloatField
      DisplayLabel = 'Valor-R$'
      DisplayWidth = 12
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrorcamentoCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrorcamentoCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Visible = False
      Size = 6
    end
    object qrorcamentoSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrorcamentoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrorcamentoACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrorcamentoOBS1: TWideStringField
      FieldName = 'OBS1'
      Visible = False
      Size = 80
    end
    object qrorcamentoOBS2: TWideStringField
      FieldName = 'OBS2'
      Visible = False
      Size = 80
    end
    object qrorcamentoOBS3: TWideStringField
      FieldName = 'OBS3'
      Visible = False
      Size = 80
    end
    object qrorcamentoOBS4: TWideStringField
      FieldName = 'OBS4'
      Visible = False
      Size = 80
    end
    object qrorcamentoCODNF: TWideStringField
      FieldName = 'CODNF'
      Visible = False
      Size = 6
    end
    object qrorcamentoCODVENDA: TWideStringField
      FieldName = 'CODVENDA'
      Visible = False
      Size = 6
    end
    object qrorcamentoGERA_NF: TIntegerField
      FieldName = 'GERA_NF'
      Visible = False
    end
    object qrorcamentoQTDE_MESES: TIntegerField
      FieldName = 'QTDE_MESES'
      Visible = False
    end
    object qrorcamentoCONDPAGTOCLIENTE: TWideStringField
      FieldName = 'CONDPAGTOCLIENTE'
      Visible = False
      Size = 100
    end
    object qrorcamentoPEND_ENTRADA: TIntegerField
      FieldName = 'PEND_ENTRADA'
      Visible = False
    end
    object qrorcamentoPEND_CHEQUE: TIntegerField
      FieldName = 'PEND_CHEQUE'
      Visible = False
    end
    object qrorcamentoPEND_CARTAO: TIntegerField
      FieldName = 'PEND_CARTAO'
      Visible = False
    end
  end
  object dsorcamento: TDataSource
    DataSet = qrorcamento
    Left = 208
    Top = 120
  end
  object PopupMenu1: TPopupMenu
    Left = 112
    Top = 240
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object LocalizarporNmero1: TMenuItem
      Caption = 'Localizar por N'#250'mero'
      ShortCut = 113
      OnClick = LocalizarporNmero1Click
    end
    object LocalizarporCliente1: TMenuItem
      Caption = 'Localizar por Cliente'
      ShortCut = 114
      OnClick = LocalizarporCliente1Click
    end
  end
end
