object frmProduto_consultaserial: TfrmProduto_consultaserial
  Left = 494
  Top = 482
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'PRODUTO | Consulta Serial'
  ClientHeight = 268
  ClientWidth = 477
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
    Top = 41
    Width = 477
    Height = 2
    Align = alTop
  end
  object Bevel2: TBevel
    Left = 0
    Top = 224
    Width = 477
    Height = 2
    Align = alBottom
    ExplicitTop = 262
  end
  object Label2: TLabel
    Left = 8
    Top = 54
    Width = 42
    Height = 13
    Caption = 'Produto:'
  end
  object Bevel3: TBevel
    Left = 54
    Top = 54
    Width = 50
    Height = 15
  end
  object Bevel4: TBevel
    Left = 111
    Top = 54
    Width = 355
    Height = 15
  end
  object lcodigo: TLabel
    Left = 60
    Top = 55
    Width = 42
    Height = 13
    AutoSize = False
    Caption = '000000'
    Transparent = True
  end
  object lproduto: TLabel
    Left = 116
    Top = 55
    Width = 338
    Height = 13
    AutoSize = False
    Caption = '000000'
    Transparent = True
  end
  object Label5: TLabel
    Left = 8
    Top = 73
    Width = 43
    Height = 13
    Caption = 'Unidade:'
  end
  object Bevel5: TBevel
    Left = 54
    Top = 73
    Width = 50
    Height = 15
  end
  object lun: TLabel
    Left = 57
    Top = 74
    Width = 42
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'UN'
    Transparent = True
  end
  object Label7: TLabel
    Left = 112
    Top = 73
    Width = 33
    Height = 13
    Caption = 'Marca:'
  end
  object Bevel6: TBevel
    Left = 162
    Top = 73
    Width = 304
    Height = 15
  end
  object lmarca: TLabel
    Left = 167
    Top = 74
    Width = 291
    Height = 13
    AutoSize = False
    Caption = 'UN'
    Transparent = True
  end
  object Label9: TLabel
    Left = 8
    Top = 105
    Width = 82
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data da Compra:'
  end
  object Bevel7: TBevel
    Left = 94
    Top = 105
    Width = 80
    Height = 15
  end
  object lcompra: TLabel
    Left = 97
    Top = 106
    Width = 74
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = '01/01/0001'
    Transparent = True
  end
  object Label11: TLabel
    Left = 198
    Top = 105
    Width = 56
    Height = 13
    Caption = 'Nota Fiscal:'
  end
  object Bevel8: TBevel
    Left = 260
    Top = 105
    Width = 59
    Height = 15
  end
  object lnf: TLabel
    Left = 263
    Top = 106
    Width = 56
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = '000001'
    Transparent = True
  end
  object Label13: TLabel
    Left = 336
    Top = 105
    Width = 62
    Height = 13
    Caption = 'Pre'#231'o Custo:'
    Visible = False
  end
  object Bevel9: TBevel
    Left = 400
    Top = 105
    Width = 65
    Height = 15
    Visible = False
  end
  object lcusto: TLabel
    Left = 396
    Top = 106
    Width = 65
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '1.000,00'
    Transparent = True
    Visible = False
  end
  object Label15: TLabel
    Left = 31
    Top = 124
    Width = 59
    Height = 13
    Alignment = taRightJustify
    Caption = 'Fornecedor:'
  end
  object Bevel10: TBevel
    Left = 94
    Top = 124
    Width = 371
    Height = 15
  end
  object lfornecedor: TLabel
    Left = 99
    Top = 125
    Width = 363
    Height = 13
    AutoSize = False
    Caption = '01/01/0001'
    Transparent = True
  end
  object Label17: TLabel
    Left = 45
    Top = 154
    Width = 45
    Height = 13
    Alignment = taRightJustify
    Caption = 'Situa'#231#227'o:'
  end
  object Bevel11: TBevel
    Left = 94
    Top = 153
    Width = 131
    Height = 15
  end
  object lestoque: TLabel
    Left = 97
    Top = 154
    Width = 120
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'EM ESTOQUE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label19: TLabel
    Left = 15
    Top = 177
    Width = 75
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data da Venda:'
  end
  object Bevel12: TBevel
    Left = 94
    Top = 177
    Width = 80
    Height = 15
  end
  object lvenda: TLabel
    Left = 97
    Top = 178
    Width = 74
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = '01/01/0001'
    Transparent = True
  end
  object Label21: TLabel
    Left = 219
    Top = 177
    Width = 41
    Height = 13
    Caption = 'N'#250'mero:'
  end
  object Bevel13: TBevel
    Left = 260
    Top = 177
    Width = 61
    Height = 15
  end
  object lnumero: TLabel
    Left = 263
    Top = 178
    Width = 58
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = '000001'
    Transparent = True
  end
  object Label23: TLabel
    Left = 368
    Top = 177
    Width = 28
    Height = 13
    Caption = 'Valor:'
  end
  object Bevel14: TBevel
    Left = 400
    Top = 177
    Width = 65
    Height = 15
  end
  object lvalor: TLabel
    Left = 396
    Top = 178
    Width = 65
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '1.000,00'
    Transparent = True
  end
  object Label25: TLabel
    Left = 53
    Top = 196
    Width = 37
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cliente:'
  end
  object Bevel15: TBevel
    Left = 94
    Top = 196
    Width = 371
    Height = 15
  end
  object lcliente: TLabel
    Left = 99
    Top = 197
    Width = 363
    Height = 13
    AutoSize = False
    Caption = '01/01/0001'
    Transparent = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 226
    Width = 477
    Height = 42
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    ExplicitTop = 272
    object bfechar: TAdvGlowButton
      Left = 181
      Top = 3
      Width = 114
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 477
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = 15461355
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 133
      Height = 13
      Caption = 'Informe o N'#250'mero de S'#233'rie:'
    end
    object eloc: TRzEdit
      Left = 160
      Top = 13
      Width = 305
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FocusColor = 10550008
      ParentFont = False
      TabOrder = 0
      OnKeyPress = elocKeyPress
    end
  end
  object ptampa: TFlatPanel
    Left = 448
    Top = 275
    Width = 477
    Height = 179
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    TabOrder = 2
  end
  object PopupMenu1: TPopupMenu
    Left = 400
    Top = 216
    object Sair1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = Sair1Click
    end
  end
  object qrserial_produto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select seria.*, produt.produto, produt.codmarca, produt.unidade,'
      'produt.precovenda prv from c000022 seria, c000025 produt'
      'where seria.codproduto = produt.codigo')
    Params = <>
    Left = 312
    Top = 88
    object qrserial_produtomarca: TStringField
      FieldKind = fkLookup
      FieldName = 'marca'
      LookupDataSet = frmmodulo.qrmarca
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codmarca'
      Size = 50
      Lookup = True
    end
    object qrserial_produtoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrserial_produtoCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrserial_produtoSERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrserial_produtoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrserial_produtoCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrserial_produtoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object qrserial_produtoPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object qrserial_produtoDATAVENDA: TDateTimeField
      FieldName = 'DATAVENDA'
    end
    object qrserial_produtoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrserial_produtoCLIENTE: TWideStringField
      FieldName = 'CLIENTE'
      Size = 80
    end
    object qrserial_produtoCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Size = 6
    end
    object qrserial_produtoCODITEM: TWideStringField
      FieldName = 'CODITEM'
      Size = 6
    end
    object qrserial_produtoDATACOMPRA: TDateTimeField
      FieldName = 'DATACOMPRA'
    end
    object qrserial_produtoNUMERONOTA: TWideStringField
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object qrserial_produtoCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrserial_produtoCODVENDA_ITEM: TWideStringField
      FieldName = 'CODVENDA_ITEM'
      Size = 6
    end
    object qrserial_produtoFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qrserial_produtoCODVENDA: TWideStringField
      FieldName = 'CODVENDA'
      Size = 6
    end
    object qrserial_produtoPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrserial_produtoCODMARCA: TWideStringField
      FieldName = 'CODMARCA'
      Size = 6
    end
    object qrserial_produtoUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrserial_produtoPRV: TFloatField
      FieldName = 'PRV'
    end
  end
end
