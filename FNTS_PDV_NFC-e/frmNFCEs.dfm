object frmNotasconsumidor: TfrmNotasconsumidor
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Notas Fiscais de Consumidor Final'
  ClientHeight = 568
  ClientWidth = 824
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 824
    Height = 73
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 168
    ExplicitWidth = 929
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 74
      Height = 16
      Caption = 'Data Inicio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 192
      Top = 9
      Width = 49
      Height = 16
      Caption = 'N'#186' Nota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btn_buscar: TsSpeedButton
      Left = 311
      Top = 24
      Width = 98
      Height = 28
      Caption = 'Localizar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btn_buscarClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      ImageIndex = 4
      Images = ImageList2
    end
    object Label2: TLabel
      Left = 100
      Top = 12
      Width = 60
      Height = 16
      Caption = 'Data Fim:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edt_Numero: TEdit
      Left = 192
      Top = 31
      Width = 113
      Height = 21
      TabOrder = 0
    end
    object dataini: TsDateEdit
      Left = 8
      Top = 34
      Width = 86
      Height = 21
      AutoSize = False
      Color = clWhite
      EditMask = '!99/99/9999;1; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      Text = '  /  /    '
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'EDIT'
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
    end
    object datafin: TsDateEdit
      Left = 100
      Top = 31
      Width = 86
      Height = 21
      AutoSize = False
      Color = clWhite
      EditMask = '!99/99/9999;1; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 2
      Text = '  /  /    '
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'EDIT'
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 520
    Width = 824
    Height = 48
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 929
    object btn_imprimir: TsSpeedButton
      Left = 225
      Top = 6
      Width = 137
      Height = 33
      Caption = 'Imprimir'
      Enabled = False
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = btn_imprimirClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      ImageIndex = 3
      Images = ImageList2
    end
    object btn_Consultar: TsSpeedButton
      Left = 368
      Top = 6
      Width = 137
      Height = 33
      Caption = 'Consultar'
      Enabled = False
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btn_ConsultarClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      ImageIndex = 0
      Images = ImageList2
    end
    object btn_cancelar: TsSpeedButton
      Left = 511
      Top = 6
      Width = 137
      Height = 33
      Caption = 'Cancelar'
      Enabled = False
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btn_cancelarClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      ImageIndex = 1
      Images = ImageList2
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 73
    Width = 824
    Height = 447
    ControlType.Strings = (
      'SITUACAO;ImageIndex;Original Size')
    Selected.Strings = (
      'NUMERO'#9'5'#9'NUMERO'#9#9
      'TOTAL'#9'10'#9'TOTAL'#9#9
      'DATA'#9'10'#9'DATA'#9#9
      'CLIENTE'#9'30'#9'CLIENTE'#9#9
      'CHAVE'#9'50'#9'CHAVE'#9#9
      'SITUACAO'#9'2'#9'X'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = ds_nfce
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 2
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
    ImageList = ImageList2
    ExplicitWidth = 929
  end
  object qrNFCE_old: TZQuery
    Connection = frmModulo.conBASE
    SQL.Strings = (
      'select * from NFCE order by data,numero')
    Params = <>
    Left = 496
    Top = 232
    object qrNFCE_oldNUMERO: TIntegerField
      Alignment = taCenter
      DisplayWidth = 5
      FieldName = 'NUMERO'
    end
    object qrNFCE_oldTOTAL: TFloatField
      Alignment = taCenter
      DisplayWidth = 10
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,###0.00'
    end
    object qrNFCE_oldDATA: TDateTimeField
      Alignment = taCenter
      DisplayWidth = 10
      FieldName = 'DATA'
    end
    object qrNFCE_oldCLIENTE: TWideStringField
      Alignment = taCenter
      DisplayWidth = 30
      FieldName = 'CLIENTE'
      Size = 200
    end
    object qrNFCE_oldCHAVE: TWideStringField
      Alignment = taCenter
      DisplayWidth = 50
      FieldName = 'CHAVE'
      Size = 250
    end
    object qrNFCE_oldSITUACAO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'X'
      DisplayWidth = 2
      FieldName = 'SITUACAO'
    end
    object qrNFCE_oldXML: TWideStringField
      Alignment = taCenter
      FieldName = 'XML'
      Visible = False
      Size = 250
    end
    object qrNFCE_oldTROCO: TFloatField
      FieldName = 'TROCO'
      Visible = False
    end
  end
  object ds_nfce: TDataSource
    DataSet = qrNFCE
    Left = 488
    Top = 304
  end
  object ImageList2: TImageList
    Left = 480
    Top = 392
    Bitmap = {
      494C010105001400140010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD2AB6B00E8D6B800FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFB8790E00B8790E00B8790E00B8790E00B8790E0082550A008A5A0A00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFB879
      0E00B8790E00B8790E00B8790E00B8790E00764D09007C51090083560A008B5B
      0A0093600B00FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFB8790E00B879
      0E00B8790E00B8790E00B8790E006C460800714A0800784E09007E5209008557
      0A008C5C0A00FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFB8790E00B879
      0E00B8790E00B8790E0067440800694508006C470800997C4D00FFFFFF00FBFA
      F80086570A008E5D0A00FFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFB8790E00B8790E00B879
      0E00B8790E00FFFFFF00FFFFFF00FFFFFF00F8F8F800FFFFFF00B9A58300794F
      090080540900B8790E00FFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFB8790E00B8790E00B879
      0E00FFFFFF00FFFFFF00957C5300957C5300FFFFFF00846735006E480800744C
      0900B8790E00B8790E00FFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFB8790E00B8790E00B879
      0E00FFFFFF00957C5300957C5300957C5300957C5300FFFFFF006A460800B879
      0E00B8790E00B8790E00FFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFB8790E00B8790E00B879
      0E00FFFFFF00957C5300957C5300957C5300957C5300FFFFFF00B8790E00B879
      0E00B8790E00B8790E00FFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFB8790E00B879
      0E00C4903800FFFFFF00957C530098805800FFFFFF00B8790E00B8790E00B879
      0E00B8790E00B8790E00FFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFB8790E00B879
      0E00B8790E00B8790E00FFFFFF00FFFFFF00B8790E00B8790E00B8790E00B879
      0E00B8790E00B97D1800FFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFB879
      0E00B8790E00B8790E00B8790E00B8790E00B8790E00B8790E00B8790E00B879
      0E00B8790E00FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFB8790E00B8790E00B8790E00B8790E00B8790E00B8790E00B8790E00B879
      0E00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB8790E00B8790E00B8790E00B8790E00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF87A2170085A016006C7E11006C7E11006C7E11006D7F1000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00A4C0430083A9000083A9000083A9000083A90000A4C04300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF86A2
      160085A0160085A016006C7E11006C7E11006C7E11006C7E11006C7E11006C7E
      11006C7F1100FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      000000CC00000066000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0083A9000083A9000083A9000083A9000083A9000083A9000083A9000083A9
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFF85A0160085A0
      160086A216006C7E11006C7E11006C7E11006C7E11006C7E11006C7E11006C7E
      11006C7E11006C7E1100FFFFFFFFFFFFFFFF00000000000000000000000000CC
      0000009900000099000000660000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000099000000
      99000000990000000000000000000000000000000000000000000000FF000000
      990000009900000099000000000000000000FFFFFF00FFFFFF00FFFFFF0083A9
      000083A900006D8C000083A9000083A9000083A900006987000083A9000083A9
      000083A90000FFFFFF00FFFFFF00FFFFFF00FFFFFFFF86A1160085A0160085A0
      1600F2F2F100F2F2F100F2F2F100F2F2F100F2F2F100F2F2F100F2F2F100D8D8
      D2006C7E11006C7E11006D7F1100FFFFFFFF000000000000000000CC00000099
      0000009900000099000000990000006600000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000CC000000
      CC000000CC00000099000000000000000000000000000000FF000000CC000000
      CC000000CC00000099000000000000000000FFFFFF00FFFFFF0083A9000083A9
      0000ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC0083A9
      000083A9000083A90000FFFFFF00FFFFFF00FFFFFFFF85A0160085A0160085A0
      1600F2F2F1009F999600F2F2F100A3A29100A3A29100F2F2F100F2F2F100F3F3
      F2006C7E11006C7E11006C7E1100FFFFFFFF0000000000CC0000009900000099
      0000009900000099000000990000009900000066000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      CC000000CC000000CC0000009900000000000000FF000000CC000000CC000000
      CC0000009900000000000000000000000000FFFFFF0083A9000083A9000083A9
      0000ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC0083A9
      000083A9000083A9000083A90000FFFFFF0089A4160085A0160085A0160085A0
      1600F7F4F700F7F4F700F2F2F100ACAB9C00ACAB9C00ACAB9C00ACAB9C00F3F3
      F2006C7E11006C7E11006C7E11006D7F10000000000000CC0000009900000099
      00000066000000CC000000990000009900000099000000660000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000CC000000CC000000CC00000099000000CC000000CC000000CC000000
      990000000000000000000000000000000000FFFFFF0083A9000083A9000083A9
      0000ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC0083A9
      000083A9000083A9000083A90000FFFFFF0085A0160085A0160085A0160085A0
      1600F2F2F100F2F2F100F2F2F100F2F2F100F2F2F100F2F2F100F2F2F100F3F3
      F2006C7E11006C7E11006C7E11006C7E11000000000000CC0000009900000066
      0000000000000000000000CC0000009900000099000000990000006600000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000CC000000CC000000CC000000CC000000CC00000099000000
      000000000000000000000000000000000000FFFFFF0083A9000083A9000083A9
      0000ECECEC00AEAEAE00AEAEAE00AEAEAE00AEAEAE00AEAEAE00ECECEC0083A9
      000083A9000083A9000083A90000FFFFFF0085A0160085A0160085A0160085A0
      1600F3F3F20060AE2700F2F2F100F5F5F500F5F5F500F5F5F500F5F5F500F3F3
      F2006C7E11006C7E11006C7E11006C7E11000000000000CC0000006600000000
      000000000000000000000000000000CC00000099000000990000009900000066
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000CC000000CC000000CC0000009900000000000000
      000000000000000000000000000000000000FFFFFF0083A9000083A9000083A9
      0000ECECEC00AEAEAE00AEAEAE00AEAEAE00AEAEAE00AEAEAE00ECECEC0083A9
      000083A9000083A9000083A90000FFFFFF0085A0160085A0160085A0160085A0
      1600F2F2F100DADAD600F2F2F100A6A59500A6A59500A6A59500A6A59500F3F3
      F2006C7E11006C7E11006C7E11006C7E11000000000000000000000000000000
      00000000000000000000000000000000000000CC000000990000009900000099
      0000006600000000000000000000000000000000000000000000000000000000
      00000000FF000000CC000000CC000000CC000000CC000000CC00000099000000
      000000000000000000000000000000000000FFFFFF0083A9000083A9000083A9
      0000ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC0083A9
      000083A9000083A9000083A90000FFFFFF0085A0160085A0160085A0160085A0
      1600F2F2F100F8F8F800F2F2F100A2A18F00A2A18F00A2A18F00F2F2F100F3F3
      F2006C7E11006C7E11006C7E110085A016000000000000000000000000000000
      0000000000000000000000000000000000000000000000CC0000009900000099
      0000009900000066000000000000000000000000000000000000000000000000
      FF000000CC000000CC000000CC00000099000000CC000000CC000000CC000000
      990000000000000000000000000000000000FFFFFF0083A9000083A9000083A9
      0000ECECEC00ECECEC0084A90000ECECEC00AEAEAE00AEAEAE00ECECEC0083A9
      000083A9000083A9000083A90000FFFFFF0088A4170085A0160085A0160085A0
      1600F7F4F900FBF6FD00F2F2F100BFBEB300BFBEB300BFBEB300BFBEB300F3F3
      F2006C7E11006C7E110085A0160087A316000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000CC00000099
      00000099000000660000000000000000000000000000000000000000FF000000
      CC000000CC000000CC0000009900000000000000FF000000CC000000CC000000
      CC0000009900000000000000000000000000FFFFFF00FFFFFF0083A9000083A9
      0000ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00C8C4
      C30083A9000083A90000FFFFFF00FFFFFF00FFFFFFFF85A0160085A0160085A0
      1600F2F2F100F2F2F100F2F2F100F2F2F100F2F2F100F2F2F100F2F2F100F3F3
      F2006C7E110085A1160085A01600FFFFFFFF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000CC
      000000990000006600000000000000000000000000000000FF000000CC000000
      CC000000CC00000099000000000000000000000000000000FF000000CC000000
      CC000000CC00000099000000000000000000FFFFFF00FFFFFF0083A9000083A9
      000083A9000083A9000083A9000083A9000083A9000083A9000083A9000083A9
      000083A9000083A90000FFFFFF00FFFFFF00FFFFFFFF86A1160085A0160085A0
      16003C4CE7003E4BC1003C4CE7003B49E2003C4CE7003C4CE7002A2CB7003C4D
      E90085A0160085A0160086A11600FFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000CC0000006600000000000000000000000000000000FF000000FF000000
      FF000000FF0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000000000000000FFFFFF00FFFFFF00FFFFFF0083A9
      000083A9000083A9000083A9000083A9000083A9000083A9000083A9000083A9
      000083A90000FFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFF85A0160085A0
      160085A0160085A0160085A0160085A0160085A0160085A0160085A0160085A0
      160085A0160085A01600FFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0083A9000083A9000083A9000083A9000083A9000083A90000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF86A1
      160085A0160085A0160085A0160085A0160085A0160085A0160085A0160085A0
      160086A11600FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF89A4170085A0160085A0160085A0160085A0160089A41600FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFF00000000FFFFFFFF00000000
      F3FFFFFF00000000E1FF87C300000000C0FF838300000000807FC10700000000
      803FE00F000000008C1FF01F000000009E0FF83F00000000FF07F01F00000000
      FF83E00F00000000FFC3C10700000000FFE3838300000000FFF387C300000000
      FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object qrNFCE: TIBCQuery
    Connection = frmModulo.conexao
    SQL.Strings = (
      'select * from NFCE order by data,numero')
    Left = 248
    Top = 368
    object qrNFCENUMERO: TIntegerField
      FieldName = 'NUMERO'
      Required = True
    end
    object qrNFCEDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrNFCETOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrNFCECLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 255
    end
    object qrNFCECHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 255
    end
    object qrNFCEXML: TStringField
      FieldName = 'XML'
      Size = 255
    end
    object qrNFCESITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrNFCETROCO: TFloatField
      FieldName = 'TROCO'
    end
  end
end
