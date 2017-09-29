object FrmContrato: TFrmContrato
  Left = 149
  Top = 140
  Width = 780
  Height = 535
  HorzScrollBar.Position = 1
  VertScrollBar.Position = 229
  Caption = 'Contrato de Compra'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = -1
    Top = -181
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
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      50.000000000000000000
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
      Width = 737
      Height = 115
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
        304.270833333333400000
        1949.979166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape1: TQRShape
        Left = 520
        Top = 0
        Width = 17
        Height = 113
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          298.979166666666700000
          1375.833333333333000000
          0.000000000000000000
          44.979166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel1: TQRLabel
        Left = 32
        Top = 16
        Width = 460
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          84.666666666666680000
          42.333333333333340000
          1217.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CONTRATO DE COMPRA E VENDA COM RESERVA DE DOM'#205'NIO'
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
      object QRDBText1: TQRDBText
        Left = 240
        Top = 40
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          635.000000000000000000
          105.833333333333300000
          169.333333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frmmodulo.qremitente
        DataField = 'FANTASIA'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object lblendereco: TQRLabel
        Left = 240
        Top = 64
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          635.000000000000000000
          169.333333333333300000
          177.270833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lblendereco'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object lblfone: TQRLabel
        Left = 240
        Top = 88
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          635.000000000000000000
          232.833333333333400000
          100.541666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lblfone'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 592
        Top = 16
        Width = 69
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1566.333333333333000000
          42.333333333333340000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'N'#218'MERO'
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
      object QRLabel3: TQRLabel
        Left = 600
        Top = 64
        Width = 40
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1587.500000000000000000
          169.333333333333300000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DATA'
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
      object lblvendanum: TQRLabel
        Left = 600
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
          1587.500000000000000000
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
      object QRDBText10: TQRDBText
        Left = 592
        Top = 88
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
          232.833333333333400000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrVenda
        DataField = 'DATA'
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
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 345
      Width = 737
      Height = 736
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
        1947.333333333334000000
        1949.979166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRShape2: TQRShape
        Left = 0
        Top = 24
        Width = 737
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          63.500000000000000000
          1949.979166666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel18: TQRLabel
        Left = 96
        Top = 8
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          254.000000000000000000
          21.166666666666670000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FATURA'
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
      object QRLabel19: TQRLabel
        Left = 352
        Top = 8
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          931.333333333333500000
          21.166666666666670000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'VALOR'
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
      object QRLabel20: TQRLabel
        Left = 584
        Top = 8
        Width = 86
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1545.166666666667000000
          21.166666666666670000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'VENCIMENTO'
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
      object QRRichText1: TQRRichText
        Left = 80
        Top = 40
        Width = 137
        Height = 137
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          362.479166666666700000
          211.666666666666700000
          105.833333333333300000
          362.479166666666700000)
        Alignment = taLeftJustify
        AutoStretch = False
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
      end
      object QRRichText2: TQRRichText
        Left = 352
        Top = 40
        Width = 108
        Height = 145
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          383.645833333333400000
          931.333333333333500000
          105.833333333333300000
          285.750000000000000000)
        Alignment = taLeftJustify
        AutoStretch = False
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
      end
      object QRRichText3: TQRRichText
        Left = 592
        Top = 40
        Width = 108
        Height = 145
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          383.645833333333400000
          1566.333333333333000000
          105.833333333333300000
          285.750000000000000000)
        Alignment = taLeftJustify
        AutoStretch = False
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
      end
      object QRShape3: TQRShape
        Left = 0
        Top = 192
        Width = 737
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          0.000000000000000000
          508.000000000000000000
          1949.979166666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 0
        Top = 216
        Width = 737
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          0.000000000000000000
          571.500000000000000000
          1949.979166666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel17: TQRLabel
        Left = 424
        Top = 208
        Width = 48
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1121.833333333333000000
          550.333333333333400000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TOTAL:'
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
      object QRDBText14: TQRDBText
        Left = 648
        Top = 208
        Width = 44
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1714.500000000000000000
          550.333333333333400000
          116.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrVenda
        DataField = 'TOTAL'
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
      object QRRichText4: TQRRichText
        Left = 0
        Top = 232
        Width = 713
        Height = 409
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1082.145833333333000000
          0.000000000000000000
          613.833333333333400000
          1886.479166666667000000)
        Alignment = taLeftJustify
        AutoStretch = False
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
      end
      object QRShape5: TQRShape
        Left = 0
        Top = 640
        Width = 737
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          0.000000000000000000
          1693.333333333333000000
          1949.979166666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object lblFinal: TQRLabel
        Left = 432
        Top = 656
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1143.000000000000000000
          1735.666666666667000000
          58.208333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '123'
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
        Left = 104
        Top = 680
        Width = 265
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          275.166666666666700000
          1799.166666666667000000
          701.145833333333400000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel21: TQRLabel
        Left = 8
        Top = 680
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          1799.166666666667000000
          201.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'VENDEDOR(A):'
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
        Left = 8
        Top = 704
        Width = 86
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          1862.666666666667000000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'COMPRADOR(A):'
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
      object QRShape7: TQRShape
        Left = 104
        Top = 704
        Width = 265
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          275.166666666666700000
          1862.666666666667000000
          701.145833333333400000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel23: TQRLabel
        Left = 384
        Top = 680
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1016.000000000000000000
          1799.166666666667000000
          190.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TESTEMUNHA:'
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
      object QRShape8: TQRShape
        Left = 464
        Top = 680
        Width = 265
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1227.666666666667000000
          1799.166666666667000000
          701.145833333333400000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel24: TQRLabel
        Left = 384
        Top = 704
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1016.000000000000000000
          1862.666666666667000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'AVALISTA'
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
      object QRShape9: TQRShape
        Left = 464
        Top = 704
        Width = 265
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1227.666666666667000000
          1862.666666666667000000
          701.145833333333400000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 153
      Width = 737
      Height = 112
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
        296.333333333333400000
        1949.979166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel4: TQRLabel
        Left = 8
        Top = 8
        Width = 128
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
          338.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DADOS DO CLIENTE'
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
      object QRLabel5: TQRLabel
        Left = 8
        Top = 32
        Width = 58
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
          153.458333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CLIENTE:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 520
        Top = 32
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1375.833333333333000000
          84.666666666666680000
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
        Left = 312
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
          825.500000000000100000
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
        Left = 496
        Top = 80
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1312.333333333333000000
          211.666666666666700000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FONE:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 88
        Top = 32
        Width = 52
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
      object QRDBText3: TQRDBText
        Left = 168
        Top = 32
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          444.500000000000000000
          84.666666666666680000
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
      object QRDBText4: TQRDBText
        Left = 600
        Top = 32
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1587.500000000000000000
          84.666666666666680000
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
      object QRDBText5: TQRDBText
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
      object QRDBText6: TQRDBText
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
      object QRDBText7: TQRDBText
        Left = 376
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
          994.833333333333400000
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
      object QRDBText8: TQRDBText
        Left = 544
        Top = 80
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1439.333333333333000000
          211.666666666666700000
          201.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrCliente
        DataField = 'TELEFONE1'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 632
        Top = 80
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1672.166666666667000000
          211.666666666666700000
          201.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrCliente
        DataField = 'TELEFONE2'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object QRBand4: TQRBand
      Left = 38
      Top = 265
      Width = 737
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
        1949.979166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel11: TQRLabel
        Left = 16
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
          42.333333333333340000
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
      object QRLabel12: TQRLabel
        Left = 104
        Top = 8
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          275.166666666666700000
          21.166666666666670000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PRODUTO'
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
      object QRLabel13: TQRLabel
        Left = 488
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
          1291.166666666667000000
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
      object QRLabel14: TQRLabel
        Left = 560
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
          1481.666666666667000000
          21.166666666666670000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'OPER.'
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
      object QRLabel15: TQRLabel
        Left = 640
        Top = 8
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1693.333333333333000000
          21.166666666666670000
          97.895833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QTDE.'
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
    end
    object QRBand5: TQRBand
      Left = 38
      Top = 305
      Width = 737
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
        1949.979166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText11: TQRDBText
        Left = 16
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
          42.333333333333340000
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
      object QRDBText12: TQRDBText
        Left = 104
        Top = 8
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          275.166666666666700000
          21.166666666666670000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrVenda_produtos
        DataField = 'PRODUTO'
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
      object QRLabel16: TQRLabel
        Left = 560
        Top = 8
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1481.666666666667000000
          21.166666666666670000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'VENDA'
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
      object QRDBText13: TQRDBText
        Left = 640
        Top = 8
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1693.333333333333000000
          21.166666666666670000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qrVenda_produtos
        DataField = 'QTDE'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
  end
  object qrVenda: TZQuery
    Connection = frmmodulo.Conexao
    CachedUpdates = False
    SQL.Strings = (
      'select * from c000048')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 7
    Top = 312
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
    end
    object qrVendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrVendaACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qrVendaTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'#13#10
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
    object qrVendaMEIO_CONVENIO: TFloatField
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
    CachedUpdates = False
    SQL.Strings = (
      'select * from c000032')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 7
    Top = 392
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
    end
    object qrVenda_produtosTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrVenda_produtosICMS: TFloatField
      FieldName = 'ICMS'
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
      DisplayFormat = '###,###,##0.00'
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
    object qrVenda_produtosPRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'PRODUTO'
      LookupDataSet = qrProdutos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PRODUTO'
      KeyFields = 'CODPRODUTO'
      Size = 60
      Lookup = True
    end
  end
  object qrCliente: TZQuery
    Connection = frmmodulo.Conexao
    CachedUpdates = False
    SQL.Strings = (
      'select * from c000007')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 7
    Top = 432
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
  object qrProdutos: TZQuery
    Connection = frmmodulo.Conexao
    CachedUpdates = False
    SQL.Strings = (
      'select * from c000025')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 5
    Top = 342
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
  object qrContas_receber: TZQuery
    Connection = frmmodulo.Conexao
    CachedUpdates = False
    SQL.Strings = (
      'select * from c000049')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 7
    Top = 461
  end
end
