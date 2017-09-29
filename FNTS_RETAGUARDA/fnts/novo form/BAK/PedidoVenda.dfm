object frmPedidoVenda: TfrmPedidoVenda
  Left = 200
  Top = 130
  Width = 696
  Height = 480
  VertScrollBar.Position = 435
  Caption = 'Pedido de Venda'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 0
    Top = -435
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QuickRep1BeforePrint
    DataSet = qrVenda_produtos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE'
      'QRLOOPBAND1')
    Functions.DATA = (
      '0'
      '0'
      #39#39
      '0')
    Options = [FirstPageHeader]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    ReportTitle = 'Pedido de Venda'
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 123
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        325.437500000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape1: TQRShape
        Left = 0
        Top = 0
        Width = 225
        Height = 121
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          320.145833333333400000
          0.000000000000000000
          0.000000000000000000
          595.312500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRImage1: TQRImage
        Left = 8
        Top = 8
        Width = 209
        Height = 105
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          277.812500000000000000
          21.166666666666670000
          21.166666666666670000
          552.979166666666800000)
        Stretch = True
      end
      object QRShape2: TQRShape
        Left = 224
        Top = 0
        Width = 305
        Height = 121
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          320.145833333333400000
          592.666666666666800000
          0.000000000000000000
          806.979166666666800000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object dbEmitente: TQRDBText
        Left = 337
        Top = 3
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          891.645833333333200000
          7.937500000000000000
          105.833333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frmmodulo.qremitente
        DataField = 'NOME'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object lblEndereco: TQRLabel
        Left = 324
        Top = 24
        Width = 78
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          857.250000000000000000
          63.500000000000000000
          206.375000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lblEndereco'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object lblbairro: TQRLabel
        Left = 330
        Top = 48
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          873.124999999999900000
          127.000000000000000000
          121.708333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lblbairro'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object lblcidade: TQRLabel
        Left = 327
        Top = 72
        Width = 52
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          865.187500000000000000
          190.500000000000000000
          137.583333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lblcidade'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 232
        Top = 96
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          613.833333333333400000
          254.000000000000000000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CNPJ: -'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 392
        Top = 96
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1037.166666666667000000
          254.000000000000000000
          179.916666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'INSC. EST.'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText1: TQRDBText
        Left = 280
        Top = 96
        Width = 26
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          740.833333333333400000
          254.000000000000000000
          68.791666666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frmmodulo.qremitente
        DataField = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Left = 464
        Top = 96
        Width = 9
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1227.666666666667000000
          254.000000000000000000
          23.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frmmodulo.qremitente
        DataField = 'IE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRShape3: TQRShape
        Left = 528
        Top = 0
        Width = 189
        Height = 121
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          320.145833333333400000
          1397.000000000000000000
          0.000000000000000000
          500.062500000000100000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel3: TQRLabel
        Left = 584
        Top = 16
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1545.166666666667000000
          42.333333333333340000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'N'#218'MERO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 592
        Top = 72
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1566.333333333333000000
          190.500000000000000000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DATA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object lblvendanum: TQRLabel
        Left = 576
        Top = 40
        Width = 92
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1524.000000000000000000
          105.833333333333300000
          243.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lblvendanum'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRDBText3: TQRDBText
        Left = 584
        Top = 96
        Width = 40
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1545.166666666667000000
          254.000000000000000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrVenda
        DataField = 'DATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 161
      Width = 718
      Height = 296
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        783.166666666666800000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel5: TQRLabel
        Left = 8
        Top = 8
        Width = 124
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          21.166666666666670000
          328.083333333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NOME DO CLIENTE:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 8
        Top = 32
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          84.666666666666680000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'APELIDO:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 8
        Top = 56
        Width = 78
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          148.166666666666700000
          206.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ENDERE'#199'O:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 8
        Top = 80
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          211.666666666666700000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'BAIRRO:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 296
        Top = 80
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          783.166666666666800000
          211.666666666666700000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CIDADE:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 536
        Top = 80
        Width = 32
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1418.166666666667000000
          211.666666666666700000
          84.666666666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CEP:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 504
        Top = 56
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1333.500000000000000000
          148.166666666666700000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'No.:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 8
        Top = 104
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          275.166666666666700000
          179.916666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CPF/CNPJ:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 240
        Top = 104
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          635.000000000000000000
          275.166666666666700000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'RG/CGF:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 8
        Top = 128
        Width = 84
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          338.666666666666700000
          222.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PONTO REF.:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel15: TQRLabel
        Left = 8
        Top = 152
        Width = 83
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          402.166666666666600000
          219.604166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DATA NASC.:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 8
        Top = 176
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          465.666666666666800000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NOME PAI:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 376
        Top = 176
        Width = 77
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          994.833333333333400000
          465.666666666666800000
          203.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NOME M'#195'E:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Left = 8
        Top = 200
        Width = 70
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          529.166666666666800000
          185.208333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FONE/CEL:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel19: TQRLabel
        Left = 8
        Top = 224
        Width = 78
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          592.666666666666800000
          206.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'VENDEDOR:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel20: TQRLabel
        Left = 208
        Top = 224
        Width = 160
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          550.333333333333400000
          592.666666666666800000
          423.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PREVIS'#195'O DE ENTREGA:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel24: TQRLabel
        Left = 8
        Top = 248
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          656.166666666666800000
          97.895833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'OBS.:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 144
        Top = 8
        Width = 52
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          381.000000000000000000
          21.166666666666670000
          137.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrCliente
        DataField = 'CODIGO'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 224
        Top = 8
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          592.666666666666800000
          21.166666666666670000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrCliente
        DataField = 'NOME'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 88
        Top = 32
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          232.833333333333400000
          84.666666666666680000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrCliente
        DataField = 'APELIDO'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 96
        Top = 56
        Width = 74
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          254.000000000000000000
          148.166666666666700000
          195.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrCliente
        DataField = 'ENDERECO'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 544
        Top = 56
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1439.333333333333000000
          148.166666666666700000
          153.458333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrCliente
        DataField = 'NUMERO'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 80
        Top = 80
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          211.666666666666700000
          211.666666666666700000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrCliente
        DataField = 'BAIRRO'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 360
        Top = 80
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          952.500000000000000000
          211.666666666666700000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrCliente
        DataField = 'CIDADE'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 584
        Top = 80
        Width = 28
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1545.166666666667000000
          211.666666666666700000
          74.083333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrCliente
        DataField = 'CEP'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 96
        Top = 104
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          254.000000000000000000
          275.166666666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrCliente
        DataField = 'CPF'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText13: TQRDBText
        Left = 320
        Top = 104
        Width = 20
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          846.666666666666600000
          275.166666666666700000
          52.916666666666660000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrCliente
        DataField = 'RG'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText14: TQRDBText
        Left = 104
        Top = 128
        Width = 102
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          275.166666666666700000
          338.666666666666700000
          269.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrCliente
        DataField = 'COMPLEMENTO'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText15: TQRDBText
        Left = 104
        Top = 152
        Width = 86
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          275.166666666666700000
          402.166666666666600000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrCliente
        DataField = 'NASCIMENTO'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText16: TQRDBText
        Left = 96
        Top = 176
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          254.000000000000000000
          465.666666666666800000
          58.208333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrCliente
        DataField = 'PAI'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText17: TQRDBText
        Left = 464
        Top = 176
        Width = 30
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1227.666666666667000000
          465.666666666666800000
          79.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrCliente
        DataField = 'MAE'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText18: TQRDBText
        Left = 96
        Top = 224
        Width = 102
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          254.000000000000000000
          592.666666666666800000
          269.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrVenda
        DataField = 'CODVENDEDOR'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText25: TQRDBText
        Left = 56
        Top = 248
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          148.166666666666700000
          656.166666666666800000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrVenda
        DataField = 'OBS1'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText26: TQRDBText
        Left = 56
        Top = 272
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          148.166666666666700000
          719.666666666666800000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrVenda
        DataField = 'OBS2'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object QRBand4: TQRBand
      Left = 38
      Top = 457
      Width = 718
      Height = 32
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        84.666666666666680000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel21: TQRLabel
        Left = 8
        Top = 8
        Width = 28
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          21.166666666666670000
          74.083333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QTDE'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel22: TQRLabel
        Left = 48
        Top = 8
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          127.000000000000000000
          21.166666666666670000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C'#211'DIGO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel23: TQRLabel
        Left = 128
        Top = 8
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          338.666666666666700000
          21.166666666666670000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PRODUTO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel25: TQRLabel
        Left = 416
        Top = 8
        Width = 28
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1100.666666666667000000
          21.166666666666670000
          74.083333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'COR'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel26: TQRLabel
        Left = 464
        Top = 8
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1227.666666666667000000
          21.166666666666670000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PR'#199'. UNIT'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel27: TQRLabel
        Left = 528
        Top = 8
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1397.000000000000000000
          21.166666666666670000
          166.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'VLR. BRUTO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel28: TQRLabel
        Left = 592
        Top = 16
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1566.333333333333000000
          42.333333333333340000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'VLR. DESC'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel29: TQRLabel
        Left = 664
        Top = 8
        Width = 47
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1756.833333333333000000
          21.166666666666670000
          124.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'VLR. LIQ.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 489
      Width = 718
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText19: TQRDBText
        Left = 8
        Top = 8
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          21.166666666666670000
          89.958333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrVenda_produtos
        DataField = 'QTDE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText20: TQRDBText
        Left = 48
        Top = 8
        Width = 88
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          127.000000000000000000
          21.166666666666670000
          232.833333333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrVenda_produtos
        DataField = 'CODPRODUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText21: TQRDBText
        Left = 128
        Top = 8
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          338.666666666666700000
          21.166666666666670000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrVenda_produtos
        DataField = 'PRODUTOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText22: TQRDBText
        Left = 464
        Top = 8
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1227.666666666667000000
          21.166666666666670000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrVenda_produtos
        DataField = 'UNITARIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRMBDBText1: TQRMBDBText
        Left = 528
        Top = 8
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1397.000000000000000000
          21.166666666666670000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrVenda_produtos
        DataField = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText23: TQRDBText
        Left = 592
        Top = 8
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1566.333333333333000000
          21.166666666666670000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrVenda_produtos
        DataField = 'DESCONTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRDBText24: TQRDBText
        Left = 664
        Top = 8
        Width = 96
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1756.833333333333000000
          21.166666666666670000
          254.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrVenda_produtos
        DataField = 'VALOR_LIQUIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 529
      Width = 718
      Height = 296
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        783.166666666666800000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel32: TQRLabel
        Left = 8
        Top = 8
        Width = 486
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          21.166666666666670000
          1285.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          '"Autorizo a cess'#227'o parcial ou integral do cr'#233'dito nas vendas '#225' p' +
          'razo . O cr'#233'dito ser'#225' sujeito a aprova'#231#227'o financeira."'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 7
      end
      object QRLabel33: TQRLabel
        Left = 3
        Top = 31
        Width = 401
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          7.937500000000000000
          82.020833333333340000
          1060.979166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '* N'#195'O ACEITAMOS DEVOLU'#199#195'O NEM TROCA DE PRODUTO SOB ENCOMENDA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel34: TQRLabel
        Left = 3
        Top = 48
        Width = 508
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          7.937500000000000000
          127.000000000000000000
          1344.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          '** N'#195'O NOS RESPONSABILIZAMOS COM O ENVIO DE PRODUTO COM DEFEITO ' +
          'PARA O CONSERTO.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRShape4: TQRShape
        Left = 0
        Top = 93
        Width = 716
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          0.000000000000000000
          246.062500000000000000
          1894.416666666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 527
        Top = 2
        Width = 27
        Height = 92
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          243.416666666666700000
          1394.354166666667000000
          5.291666666666667000
          71.437500000000000000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel35: TQRLabel
        Left = 544
        Top = 9
        Width = 62
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1439.333333333333000000
          23.812500000000000000
          164.041666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SUB. TOTAL'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel36: TQRLabel
        Left = 549
        Top = 32
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1452.562500000000000000
          84.666666666666680000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DESCONTO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel37: TQRLabel
        Left = 560
        Top = 56
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1481.666666666667000000
          148.166666666666700000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ACR'#201'SC.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel38: TQRLabel
        Left = 568
        Top = 80
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1502.833333333333000000
          211.666666666666700000
          92.604166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TOTAL'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRDBText27: TQRDBText
        Left = 648
        Top = 8
        Width = 59
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1714.500000000000000000
          21.166666666666670000
          156.104166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrVenda
        DataField = 'SUBTOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRDBText28: TQRDBText
        Left = 652
        Top = 32
        Width = 59
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1725.083333333334000000
          84.666666666666680000
          156.104166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrVenda
        DataField = 'DESCONTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRDBText29: TQRDBText
        Left = 652
        Top = 56
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1725.083333333334000000
          148.166666666666700000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrVenda
        DataField = 'ACRESCIMO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRDBText30: TQRDBText
        Left = 648
        Top = 80
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1714.500000000000000000
          211.666666666666700000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrVenda
        DataField = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel39: TQRLabel
        Left = 24
        Top = 112
        Width = 30
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          296.333333333333400000
          79.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel40: TQRLabel
        Left = 152
        Top = 112
        Width = 139
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          402.166666666666600000
          296.333333333333400000
          367.770833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Forma de Pagamento'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel41: TQRLabel
        Left = 416
        Top = 112
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1100.666666666667000000
          296.333333333333400000
          201.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Vlr. Parcela'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape6: TQRShape
        Left = 0
        Top = 133
        Width = 721
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          0.000000000000000000
          351.895833333333400000
          1907.645833333333000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
    end
    object QRBand5: TQRBand
      Left = 38
      Top = 825
      Width = 718
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSubDetail
    end
  end
  object qrCliente: TZQuery
    Connection = frmmodulo.Conexao
    CachedUpdates = False
    Active = True
    SQL.Strings = (
      'select * from c000007')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 338
    Top = 348
    object qrClienteCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrClienteAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 50
    end
    object qrClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qrClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qrClienteUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrClienteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qrClienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 80
    end
    object qrClienteMORADIA: TIntegerField
      FieldName = 'MORADIA'
    end
    object qrClienteTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrClienteSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrClienteTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
    end
    object qrClienteTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
    end
    object qrClienteTELEFONE3: TStringField
      FieldName = 'TELEFONE3'
    end
    object qrClienteCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object qrClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qrClienteRG: TStringField
      FieldName = 'RG'
      Size = 25
    end
    object qrClienteCPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object qrClienteFILIACAO: TStringField
      FieldName = 'FILIACAO'
      Size = 80
    end
    object qrClienteESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Size = 15
    end
    object qrClienteCONJUGE: TStringField
      FieldName = 'CONJUGE'
      Size = 60
    end
    object qrClientePROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 30
    end
    object qrClienteEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 40
    end
    object qrClienteRENDA: TFloatField
      FieldName = 'RENDA'
    end
    object qrClienteLIMITE: TFloatField
      FieldName = 'LIMITE'
    end
    object qrClienteREF1: TStringField
      FieldName = 'REF1'
      Size = 50
    end
    object qrClienteREF2: TStringField
      FieldName = 'REF2'
      Size = 50
    end
    object qrClienteCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrClienteDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object qrClienteDATA_ULTIMACOMPRA: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qrClienteOBS1: TStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrClienteOBS2: TStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrClienteOBS3: TStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrClienteOBS4: TStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object qrClienteOBS5: TStringField
      FieldName = 'OBS5'
      Size = 80
    end
    object qrClienteOBS6: TStringField
      FieldName = 'OBS6'
      Size = 80
    end
    object qrClienteNASCIMENTO: TStringField
      FieldName = 'NASCIMENTO'
      Size = 10
    end
    object qrClienteCODREGIAO: TStringField
      FieldName = 'CODREGIAO'
      Size = 6
    end
    object qrClienteCODCONVENIO: TStringField
      FieldName = 'CODCONVENIO'
      Size = 6
    end
    object qrClienteCODUSUARIO: TStringField
      FieldName = 'CODUSUARIO'
      Size = 6
    end
    object qrClienteNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrClienteRG_ORGAO: TStringField
      FieldName = 'RG_ORGAO'
      Size = 5
    end
    object qrClienteRG_ESTADO: TStringField
      FieldName = 'RG_ESTADO'
      Size = 2
    end
    object qrClienteRG_EMISSAO: TDateTimeField
      FieldName = 'RG_EMISSAO'
    end
    object qrClienteSEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object qrClienteHISTORICO: TBlobField
      FieldName = 'HISTORICO'
    end
    object qrClientePREVISAO: TDateTimeField
      FieldName = 'PREVISAO'
    end
    object qrClienteCNAE: TStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object qrClienteCOD_MUNICIPIO_IBGE: TStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrClienteIBGE: TStringField
      FieldName = 'IBGE'
      Size = 5
    end
    object qrClienteTAMANHO_CALCA: TStringField
      FieldName = 'TAMANHO_CALCA'
      Size = 5
    end
    object qrClienteTAMANHO_BLUSA: TStringField
      FieldName = 'TAMANHO_BLUSA'
      Size = 5
    end
    object qrClienteTAMANHO_SAPATO: TStringField
      FieldName = 'TAMANHO_SAPATO'
      Size = 5
    end
    object qrClienteCORRESP_ENDERECO: TStringField
      FieldName = 'CORRESP_ENDERECO'
      Size = 80
    end
    object qrClienteCORRESP_BAIRRO: TStringField
      FieldName = 'CORRESP_BAIRRO'
      Size = 30
    end
    object qrClienteCORRESP_CIDADE: TStringField
      FieldName = 'CORRESP_CIDADE'
      Size = 40
    end
    object qrClienteCORRESP_UF: TStringField
      FieldName = 'CORRESP_UF'
      Size = 2
    end
    object qrClienteCORRESP_CEP: TStringField
      FieldName = 'CORRESP_CEP'
      Size = 10
    end
    object qrClienteCORRESP_COMPLEMENTO: TStringField
      FieldName = 'CORRESP_COMPLEMENTO'
      Size = 40
    end
    object qrClienteRG_PRODUTOR: TStringField
      FieldName = 'RG_PRODUTOR'
      Size = 30
    end
    object qrClienteRESP1_NOME: TStringField
      FieldName = 'RESP1_NOME'
      Size = 80
    end
    object qrClienteRESP1_CPF: TStringField
      FieldName = 'RESP1_CPF'
      Size = 25
    end
    object qrClienteRESP1_RG: TStringField
      FieldName = 'RESP1_RG'
      Size = 25
    end
    object qrClienteRESP1_PROFISSAO: TStringField
      FieldName = 'RESP1_PROFISSAO'
      Size = 50
    end
    object qrClienteRESP1_ESTADO_CIVIL: TStringField
      FieldName = 'RESP1_ESTADO_CIVIL'
      Size = 30
    end
    object qrClienteRESP1_ENDERECO: TStringField
      FieldName = 'RESP1_ENDERECO'
      Size = 80
    end
    object qrClienteRESP1_BAIRRO: TStringField
      FieldName = 'RESP1_BAIRRO'
      Size = 40
    end
    object qrClienteRESP1_CIDADE: TStringField
      FieldName = 'RESP1_CIDADE'
      Size = 40
    end
    object qrClienteRESP1_UF: TStringField
      FieldName = 'RESP1_UF'
      Size = 2
    end
    object qrClienteRESP1_CEP: TStringField
      FieldName = 'RESP1_CEP'
      Size = 15
    end
    object qrClienteRESP2_NOME: TStringField
      FieldName = 'RESP2_NOME'
      Size = 80
    end
    object qrClienteRESP2_CPF: TStringField
      FieldName = 'RESP2_CPF'
      Size = 25
    end
    object qrClienteRESP2_RG: TStringField
      FieldName = 'RESP2_RG'
      Size = 25
    end
    object qrClienteRESP2_PROFISSAO: TStringField
      FieldName = 'RESP2_PROFISSAO'
      Size = 50
    end
    object qrClienteRESP2_ESTADO_CIVIL: TStringField
      FieldName = 'RESP2_ESTADO_CIVIL'
      Size = 30
    end
    object qrClienteRESP2_ENDERECO: TStringField
      FieldName = 'RESP2_ENDERECO'
      Size = 80
    end
    object qrClienteRESP2_BAIRRO: TStringField
      FieldName = 'RESP2_BAIRRO'
      Size = 40
    end
    object qrClienteRESP2_CIDADE: TStringField
      FieldName = 'RESP2_CIDADE'
      Size = 40
    end
    object qrClienteRESP2_UF: TStringField
      FieldName = 'RESP2_UF'
      Size = 2
    end
    object qrClienteRESP2_CEP: TStringField
      FieldName = 'RESP2_CEP'
      Size = 15
    end
    object qrClienteFOTO: TStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object qrClientePAI: TStringField
      FieldName = 'PAI'
      Size = 80
    end
    object qrClienteMAE: TStringField
      FieldName = 'MAE'
      Size = 80
    end
  end
  object dsEmitente: TDataSource
    DataSet = frmmodulo.qremitente
    Left = 370
    Top = 348
  end
  object qrVenda: TZQuery
    Connection = frmmodulo.Conexao
    CachedUpdates = False
    Active = True
    SQL.Strings = (
      'select * from c000048')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 275
    Top = 350
    object qrVendaCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrVendaCODCAIXA: TStringField
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object qrVendaCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrVendaDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrVendaCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrVendaOBS: TStringField
      FieldName = 'OBS'
      Size = 50
    end
    object qrVendaMEIO_DINHEIRO: TFloatField
      FieldName = 'MEIO_DINHEIRO'
    end
    object qrVendaMEIO_CHEQUEAV: TFloatField
      FieldName = 'MEIO_CHEQUEAV'
    end
    object qrVendaMEIO_CHEQUEAP: TFloatField
      FieldName = 'MEIO_CHEQUEAP'
    end
    object qrVendaMEIO_CARTAOCRED: TFloatField
      FieldName = 'MEIO_CARTAOCRED'
    end
    object qrVendaMEIO_CARTAODEB: TFloatField
      FieldName = 'MEIO_CARTAODEB'
    end
    object qrVendaMEIO_CREDIARIO: TFloatField
      FieldName = 'MEIO_CREDIARIO'
    end
    object qrVendaSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrVendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrVendaACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrVendaTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrVendaCUPOM_FISCAL: TIntegerField
      FieldName = 'CUPOM_FISCAL'
    end
    object qrVendaNUMERO_CUPOM_FISCAL: TStringField
      FieldName = 'NUMERO_CUPOM_FISCAL'
      Size = 10
    end
    object qrVendaRETIRADO: TStringField
      FieldName = 'RETIRADO'
      Size = 50
    end
    object t: TFloatField
      FieldName = 'MEIO_CONVENIO'
    end
    object qrVendaP5: TFloatField
      FieldName = 'P5'
    end
    object qrVendaP3: TFloatField
      FieldName = 'P3'
    end
    object qrVendaMEIO_FINANCEIRA: TFloatField
      FieldName = 'MEIO_FINANCEIRA'
    end
    object qrVendaCOD_FINANCEIRA: TStringField
      FieldName = 'COD_FINANCEIRA'
      Size = 10
    end
    object qrVendaCOD_FINANCEIRA_LANCTO: TStringField
      FieldName = 'COD_FINANCEIRA_LANCTO'
      Size = 10
    end
    object qrVendaCOD_FINANCEIRA_LACTO: TStringField
      FieldName = 'COD_FINANCEIRA_LACTO'
      Size = 10
    end
    object qrVendaCODCONVENIO: TStringField
      FieldName = 'CODCONVENIO'
      Size = 10
    end
    object qrVendaSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrVendaCODTRANSPORTADOR: TStringField
      FieldName = 'CODTRANSPORTADOR'
      Size = 10
    end
    object qrVendaCODVEICULO: TStringField
      FieldName = 'CODVEICULO'
      Size = 10
    end
    object qrVendaFRETE_VALOR: TFloatField
      FieldName = 'FRETE_VALOR'
    end
    object qrVendaFRETE_OBS: TStringField
      FieldName = 'FRETE_OBS'
      Size = 80
    end
    object qrVendaFRETE_LANCAR: TIntegerField
      FieldName = 'FRETE_LANCAR'
    end
    object qrVendaECF_SERIAL: TStringField
      FieldName = 'ECF_SERIAL'
      Size = 30
    end
    object qrVendaCODNFSAIDA: TStringField
      FieldName = 'CODNFSAIDA'
      Size = 10
    end
    object qrVendaATACADO_VAREJO: TSmallintField
      FieldName = 'ATACADO_VAREJO'
      Required = True
    end
    object qrVendaOBS1: TStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrVendaOBS2: TStringField
      FieldName = 'OBS2'
      Size = 80
    end
  end
  object qrVenda_produtos: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrVenda_produtosCalcFields
    CachedUpdates = False
    SQL.Strings = (
      '')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 307
    Top = 348
    object qrVenda_produtosCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrVenda_produtosCODNOTA: TStringField
      FieldName = 'CODNOTA'
      Size = 15
    end
    object qrVenda_produtosCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrVenda_produtosUNITARIO: TFloatField
      FieldName = 'UNITARIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrVenda_produtosTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrVenda_produtosICMS: TFloatField
      FieldName = 'ICMS'
      DisplayFormat = 'd'
    end
    object qrVenda_produtosIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrVenda_produtosCFOP: TStringField
      FieldName = 'CFOP'
      Size = 6
    end
    object qrVenda_produtosDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrVenda_produtosNUMERONOTA: TStringField
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object qrVenda_produtosCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrVenda_produtosDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrVenda_produtosACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qrVenda_produtosMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object qrVenda_produtosCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrVenda_produtosCODGRADE: TStringField
      FieldName = 'CODGRADE'
      Size = 6
    end
    object qrVenda_produtosSERIAL: TStringField
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrVenda_produtosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object qrVenda_produtosQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrVenda_produtosVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrVenda_produtosICMS_REDUZIDO: TFloatField
      FieldName = 'ICMS_REDUZIDO'
    end
    object qrVenda_produtosBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object qrVenda_produtosVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object qrVenda_produtosSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrVenda_produtosECF_SERIE: TStringField
      FieldName = 'ECF_SERIE'
    end
    object qrVenda_produtosECF_CAIXA: TStringField
      FieldName = 'ECF_CAIXA'
      Size = 10
    end
    object qrVenda_produtosCODALIQUOTA: TStringField
      FieldName = 'CODALIQUOTA'
      Size = 5
    end
    object qrVenda_produtosCUPOM_NUMERO: TStringField
      FieldName = 'CUPOM_NUMERO'
      Size = 10
    end
    object qrVenda_produtosCUPOM_MODELO: TStringField
      FieldName = 'CUPOM_MODELO'
      Size = 5
    end
    object qrVenda_produtosCUPOM_ITEM: TStringField
      FieldName = 'CUPOM_ITEM'
      Size = 5
    end
    object qrVenda_produtosALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrVenda_produtosCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object qrVenda_produtosLOTE_FABRICACAO: TStringField
      FieldName = 'LOTE_FABRICACAO'
      Size = 10
    end
    object qrVenda_produtosMOVIMENTO_ESTOQUE: TFloatField
      FieldName = 'MOVIMENTO_ESTOQUE'
    end
    object qrVenda_produtosLANCADO: TIntegerField
      FieldName = 'LANCADO'
    end
    object qrVenda_produtosVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
    end
    object qrVenda_produtosCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 25
    end
    object qrVenda_produtosMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object qrVenda_produtosCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
    end
    object qrVenda_produtosPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrVenda_produtosCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrVenda_produtosLOJA: TStringField
      FieldName = 'LOJA'
      Size = 6
    end
    object qrVenda_produtosCODSUBGRUPO: TStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object qrVenda_produtosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrVenda_produtosCODUSUARIO: TStringField
      FieldName = 'CODUSUARIO'
      Size = 6
    end
    object qrVenda_produtosORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 40
    end
    object qrVenda_produtosDESTINO: TStringField
      FieldName = 'DESTINO'
      Size = 40
    end
    object qrVenda_produtosPRODUTOS: TStringField
      FieldKind = fkLookup
      FieldName = 'PRODUTOS'
      LookupDataSet = qrProdutos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PRODUTO'
      KeyFields = 'CODPRODUTO'
      Size = 60
      Lookup = True
    end
    object qrVenda_produtosVALOR_LIQUIDO: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'VALOR_LIQUIDO'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
  end
  object qrProdutos: TZQuery
    Connection = frmmodulo.Conexao
    CachedUpdates = False
    Active = True
    SQL.Strings = (
      'select * from c000025')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 403
    Top = 348
    object qrProdutosCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrProdutosCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrProdutosPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrProdutosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrProdutosDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object qrProdutosCODGRUPO: TStringField
      FieldName = 'CODGRUPO'
      Size = 6
    end
    object qrProdutosCODSUBGRUPO: TStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object qrProdutosCODFORNECEDOR: TStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrProdutosCODMARCA: TStringField
      FieldName = 'CODMARCA'
      Size = 6
    end
    object qrProdutosDATA_ULTIMACOMPRA: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qrProdutosNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Size = 7
    end
    object qrProdutosPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object qrProdutosPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object qrProdutosDATA_ULTIMAVENDA: TDateTimeField
      FieldName = 'DATA_ULTIMAVENDA'
    end
    object qrProdutosESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrProdutosESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
    end
    object qrProdutosCODALIQUOTA: TStringField
      FieldName = 'CODALIQUOTA'
      Size = 5
    end
    object qrProdutosAPLICACAO: TMemoField
      FieldName = 'APLICACAO'
      BlobType = ftMemo
    end
    object qrProdutosLOCALICAZAO: TStringField
      FieldName = 'LOCALICAZAO'
      Size = 50
    end
    object qrProdutosPESO: TFloatField
      FieldName = 'PESO'
    end
    object qrProdutosVALIDADE: TStringField
      FieldName = 'VALIDADE'
    end
    object qrProdutosCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qrProdutosUSA_BALANCA: TIntegerField
      FieldName = 'USA_BALANCA'
    end
    object qrProdutosUSA_SERIAL: TIntegerField
      FieldName = 'USA_SERIAL'
    end
    object qrProdutosUSA_GRADE: TIntegerField
      FieldName = 'USA_GRADE'
    end
    object qrProdutosCODRECEITA: TStringField
      FieldName = 'CODRECEITA'
      Size = 6
    end
    object qrProdutosFOTO: TStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object qrProdutosDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA_ANTERIOR'
    end
    object qrProdutosNOTAFISCAL_ANTERIOR: TStringField
      FieldName = 'NOTAFISCAL_ANTERIOR'
      Size = 6
    end
    object qrProdutosCODFORNECEDOR_ANTERIOR: TStringField
      FieldName = 'CODFORNECEDOR_ANTERIOR'
      Size = 6
    end
    object qrProdutosPRECOCUSTO_ANTERIOR: TFloatField
      FieldName = 'PRECOCUSTO_ANTERIOR'
    end
    object qrProdutosPRECOVENDA_ANTERIOR: TFloatField
      FieldName = 'PRECOVENDA_ANTERIOR'
    end
    object qrProdutosCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
    end
    object qrProdutosAUTO_APLICACAO: TStringField
      FieldName = 'AUTO_APLICACAO'
      Size = 60
    end
    object qrProdutosAUTO_COMPLEMENTO: TStringField
      FieldName = 'AUTO_COMPLEMENTO'
      Size = 60
    end
    object qrProdutosDATA_REMARCACAO_CUSTO: TDateTimeField
      FieldName = 'DATA_REMARCACAO_CUSTO'
    end
    object qrProdutosDATA_REMARCACAO_VENDA: TDateTimeField
      FieldName = 'DATA_REMARCACAO_VENDA'
    end
    object qrProdutosPRECO_PROMOCAO: TFloatField
      FieldName = 'PRECO_PROMOCAO'
    end
    object qrProdutosDATA_PROMOCAO: TDateTimeField
      FieldName = 'DATA_PROMOCAO'
    end
    object qrProdutosFIM_PROMOCAO: TDateTimeField
      FieldName = 'FIM_PROMOCAO'
    end
    object qrProdutosCST: TStringField
      FieldName = 'CST'
      Size = 10
    end
    object qrProdutosCLASSIFICACAO_FISCAL: TStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
    end
    object qrProdutosNBM: TStringField
      FieldName = 'NBM'
    end
    object qrProdutosNCM: TStringField
      FieldName = 'NCM'
    end
    object qrProdutosALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrProdutosIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrProdutosREDUCAO: TFloatField
      FieldName = 'REDUCAO'
    end
    object qrProdutosQTDE_EMBALAGEM: TFloatField
      FieldName = 'QTDE_EMBALAGEM'
    end
    object qrProdutosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object qrProdutosPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object qrProdutosFARMACIA_CONTROLADO: TStringField
      FieldName = 'FARMACIA_CONTROLADO'
      Size = 1
    end
    object qrProdutosFARMACIA_APRESENTACAO: TIntegerField
      FieldName = 'FARMACIA_APRESENTACAO'
    end
    object qrProdutosFARMACIA_REGISTRO_MEDICAMENTO: TStringField
      FieldName = 'FARMACIA_REGISTRO_MEDICAMENTO'
    end
    object qrProdutosFARMACIA_PMC: TFloatField
      FieldName = 'FARMACIA_PMC'
    end
    object qrProdutosULTIMA_ALTERACAO: TDateTimeField
      FieldName = 'ULTIMA_ALTERACAO'
    end
    object qrProdutosULTIMA_CARGA: TDateTimeField
      FieldName = 'ULTIMA_CARGA'
    end
    object qrProdutosDATA_INVENTARIO: TDateTimeField
      FieldName = 'DATA_INVENTARIO'
    end
    object qrProdutosCUSTO_INVENTARIO: TFloatField
      FieldName = 'CUSTO_INVENTARIO'
    end
    object qrProdutosESTOQUE_INVENTARIO: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO'
    end
    object qrProdutosESTOQUE_ANTERIOR: TFloatField
      FieldName = 'ESTOQUE_ANTERIOR'
    end
    object qrProdutosPRECOVENDA_NOVO: TFloatField
      FieldName = 'PRECOVENDA_NOVO'
    end
    object qrProdutosUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
    end
    object qrProdutosQUANTIDADE_MINIMA_FAB: TFloatField
      FieldName = 'QUANTIDADE_MINIMA_FAB'
    end
    object qrProdutosAPRESENTACAO: TStringField
      FieldName = 'APRESENTACAO'
      Size = 60
    end
    object qrProdutosSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrProdutosPRECOVENDA1: TFloatField
      FieldName = 'PRECOVENDA1'
    end
    object qrProdutosPRECOVENDA2: TFloatField
      FieldName = 'PRECOVENDA2'
    end
    object qrProdutosPRECOVENDA3: TFloatField
      FieldName = 'PRECOVENDA3'
    end
    object qrProdutosPRECOVENDA4: TFloatField
      FieldName = 'PRECOVENDA4'
    end
    object qrProdutosPRECOVENDA5: TFloatField
      FieldName = 'PRECOVENDA5'
    end
    object qrProdutosDESCONTO_PRECOVENDA: TFloatField
      FieldName = 'DESCONTO_PRECOVENDA'
    end
    object qrProdutosDATA_INVENTARIO_ATUAL: TDateTimeField
      FieldName = 'DATA_INVENTARIO_ATUAL'
    end
    object qrProdutosCUSTO_INVENTARIO_ATUAL: TFloatField
      FieldName = 'CUSTO_INVENTARIO_ATUAL'
    end
    object qrProdutosESTOQUE_INVENTARIO_ATUAL: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO_ATUAL'
    end
    object qrProdutosMARGEM_MINIMA: TFloatField
      FieldName = 'MARGEM_MINIMA'
    end
    object qrProdutosPISCOFINS: TStringField
      FieldName = 'PISCOFINS'
      Size = 1
    end
    object qrProdutosREFERENCIA_FORNECEDOR: TStringField
      FieldName = 'REFERENCIA_FORNECEDOR'
      Size = 30
    end
    object qrProdutosCOMISSAO1: TFloatField
      FieldName = 'COMISSAO1'
    end
    object qrProdutosMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object qrProdutosTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 6
    end
    object qrProdutosCOR: TStringField
      FieldName = 'COR'
      Size = 6
    end
    object qrProdutosINCIDENCIA_PISCOFINS: TStringField
      FieldName = 'INCIDENCIA_PISCOFINS'
      Size = 30
    end
    object qrProdutosVEIC_CHASSI: TStringField
      FieldName = 'VEIC_CHASSI'
      Size = 50
    end
    object qrProdutosVEIC_SERIE: TStringField
      FieldName = 'VEIC_SERIE'
      Size = 50
    end
    object qrProdutosVEIC_POTENCIA: TStringField
      FieldName = 'VEIC_POTENCIA'
      Size = 50
    end
    object qrProdutosVEIC_PESO_LIQUIDO: TStringField
      FieldName = 'VEIC_PESO_LIQUIDO'
      Size = 15
    end
    object qrProdutosVEIC_PESO_BRUTO: TStringField
      FieldName = 'VEIC_PESO_BRUTO'
      Size = 15
    end
    object qrProdutosVEIC_TIPO_COMBUSTIVEL: TStringField
      FieldName = 'VEIC_TIPO_COMBUSTIVEL'
    end
    object qrProdutosVEIC_RENAVAM: TStringField
      FieldName = 'VEIC_RENAVAM'
      Size = 50
    end
    object qrProdutosVEIC_ANO_FABRICACAO: TIntegerField
      FieldName = 'VEIC_ANO_FABRICACAO'
    end
    object qrProdutosVEIC_ANO_MODELO: TIntegerField
      FieldName = 'VEIC_ANO_MODELO'
    end
    object qrProdutosVEIC_TIPO: TStringField
      FieldName = 'VEIC_TIPO'
      Size = 50
    end
    object qrProdutosVEIC_TIPO_PINTURA: TStringField
      FieldName = 'VEIC_TIPO_PINTURA'
      Size = 15
    end
    object qrProdutosVEIC_COD_COR: TStringField
      FieldName = 'VEIC_COD_COR'
      Size = 15
    end
    object qrProdutosVEIC_COR: TStringField
      FieldName = 'VEIC_COR'
      Size = 30
    end
    object qrProdutosVEIC_VIN: TStringField
      FieldName = 'VEIC_VIN'
      Size = 10
    end
    object qrProdutosVEIC_NUMERO_MOTOR: TStringField
      FieldName = 'VEIC_NUMERO_MOTOR'
      Size = 50
    end
    object qrProdutosVEIC_CMKG: TStringField
      FieldName = 'VEIC_CMKG'
      Size = 15
    end
    object qrProdutosVEIC_CM3: TStringField
      FieldName = 'VEIC_CM3'
      Size = 15
    end
    object qrProdutosVEIC_DISTANCIA_EIXO: TStringField
      FieldName = 'VEIC_DISTANCIA_EIXO'
      Size = 15
    end
    object qrProdutosVEIC_COD_MARCA: TStringField
      FieldName = 'VEIC_COD_MARCA'
      Size = 15
    end
    object qrProdutosVEIC_ESPECIE: TStringField
      FieldName = 'VEIC_ESPECIE'
      Size = 50
    end
    object qrProdutosVEIC_CONDICAO: TStringField
      FieldName = 'VEIC_CONDICAO'
      Size = 50
    end
    object qrProdutosLOTE_FABRICACAO: TStringField
      FieldName = 'LOTE_FABRICACAO'
    end
    object qrProdutosLOTE_VALIDADE: TDateTimeField
      FieldName = 'LOTE_VALIDADE'
    end
    object qrProdutosMARGEM_AGREGADA: TFloatField
      FieldName = 'MARGEM_AGREGADA'
    end
    object qrProdutosCODBARRA_NOVARTIS: TStringField
      FieldName = 'CODBARRA_NOVARTIS'
      Size = 13
    end
    object qrProdutosFARMACIA_DCB: TStringField
      FieldName = 'FARMACIA_DCB'
    end
    object qrProdutosFARMACIA_ABCFARMA: TStringField
      FieldName = 'FARMACIA_ABCFARMA'
      Size = 10
    end
    object qrProdutosFARMACIA_APRESENTACAO_CAIXA: TStringField
      FieldName = 'FARMACIA_APRESENTACAO_CAIXA'
      Size = 10
    end
    object qrProdutosFARMACIA_PRINCIPIOATIVO: TStringField
      FieldName = 'FARMACIA_PRINCIPIOATIVO'
      Size = 30
    end
    object qrProdutosULTIMA_COMPRA: TDateTimeField
      FieldName = 'ULTIMA_COMPRA'
    end
    object qrProdutosFARMACIA_DATAVIGENCIA: TDateTimeField
      FieldName = 'FARMACIA_DATAVIGENCIA'
    end
    object qrProdutosFARMACIA_TIPO: TStringField
      FieldName = 'FARMACIA_TIPO'
      Size = 1
    end
    object qrProdutosUSA_COMBUSTIVEL: TStringField
      FieldName = 'USA_COMBUSTIVEL'
      Size = 1
    end
    object qrProdutosREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object qrProdutosPERDA: TFloatField
      FieldName = 'PERDA'
    end
    object qrProdutosCOMPOSICAO1: TStringField
      FieldName = 'COMPOSICAO1'
      Size = 30
    end
    object qrProdutosCOMPOSICAO2: TStringField
      FieldName = 'COMPOSICAO2'
      Size = 30
    end
    object qrProdutosIAT: TStringField
      FieldName = 'IAT'
      Size = 1
    end
    object qrProdutosIPPT: TStringField
      FieldName = 'IPPT'
      Size = 1
    end
    object qrProdutosSITUACAO_TRIBUTARIA: TStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Size = 1
    end
    object qrProdutosFLAG_SIS: TStringField
      FieldName = 'FLAG_SIS'
      Size = 1
    end
    object qrProdutosFLAG_ACEITO: TStringField
      FieldName = 'FLAG_ACEITO'
      Size = 3
    end
    object qrProdutosFLAG_EST: TStringField
      FieldName = 'FLAG_EST'
      Size = 1
    end
    object qrProdutosCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 60
    end
  end
  object qrcontas_receber: TZQuery
    Connection = frmmodulo.Conexao
    CachedUpdates = False
    SQL.Strings = (
      'select * from c000049')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    Properties.Strings = (
      'select * from c000049')
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 439
    Top = 346
    object qrcontas_receberCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 12
    end
  end
end
