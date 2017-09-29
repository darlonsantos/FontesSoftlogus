object frmRelLmc: TfrmRelLmc
  Left = 98
  Top = 115
  Caption = 'LMC '
  ClientHeight = 495
  ClientWidth = 818
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
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    BeforePrint = QuickRep1BeforePrint
    DataSet = qrLMC
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
    Page.Continuous = False
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
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object QRLabel1: TQRLabel
      Left = 232
      Top = 56
      Width = 355
      Height = 20
      Size.Values = (
        52.916666666666660000
        613.833333333333400000
        148.166666666666700000
        939.270833333333400000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Livro de Movimenta'#231#227'o de Combust'#237'veis(LMC)'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 12
    end
    object QRLabel2: TQRLabel
      Left = 656
      Top = 40
      Width = 37
      Height = 17
      Size.Values = (
        44.979166666666670000
        1735.666666666667000000
        105.833333333333300000
        97.895833333333340000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Folha:'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRShape1: TQRShape
      Left = 48
      Top = 80
      Width = 697
      Height = 1001
      Size.Values = (
        2648.479166666667000000
        127.000000000000000000
        211.666666666666700000
        1844.145833333333000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape2: TQRShape
      Left = 48
      Top = 80
      Width = 697
      Height = 33
      Size.Values = (
        87.312500000000000000
        127.000000000000000000
        211.666666666666700000
        1844.145833333333000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel3: TQRLabel
      Left = 56
      Top = 88
      Width = 50
      Height = 17
      Size.Values = (
        44.979166666666670000
        148.166666666666700000
        232.833333333333400000
        132.291666666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Produto:'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel4: TQRLabel
      Left = 536
      Top = 88
      Width = 32
      Height = 17
      Size.Values = (
        44.979166666666670000
        1418.166666666667000000
        232.833333333333400000
        84.666666666666680000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Data:'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRShape3: TQRShape
      Left = 520
      Top = 80
      Width = 17
      Height = 33
      Size.Values = (
        87.312500000000000000
        1375.833333333333000000
        211.666666666666700000
        44.979166666666670000)
      XLColumn = 0
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRShape4: TQRShape
      Left = 48
      Top = 112
      Width = 697
      Height = 33
      Size.Values = (
        87.312500000000000000
        127.000000000000000000
        296.333333333333400000
        1844.145833333333000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel5: TQRLabel
      Left = 56
      Top = 120
      Width = 336
      Height = 17
      Size.Values = (
        44.979166666666670000
        148.166666666666700000
        317.500000000000000000
        889.000000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Estoque de Abertura(Medi'#231#227'o F'#237'sica no '#236'nicio do dia)'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRShape5: TQRShape
      Left = 48
      Top = 144
      Width = 697
      Height = 66
      Size.Values = (
        174.625000000000000000
        127.000000000000000000
        381.000000000000000000
        1844.145833333333000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape6: TQRShape
      Left = 48
      Top = 168
      Width = 697
      Height = 17
      Size.Values = (
        44.979166666666670000
        127.000000000000000000
        444.500000000000000000
        1844.145833333333000000)
      XLColumn = 0
      Shape = qrsHorLine
      VertAdjust = 0
    end
    object QRLabel6: TQRLabel
      Left = 56
      Top = 152
      Width = 54
      Height = 17
      Size.Values = (
        44.979166666666670000
        148.166666666666700000
        402.166666666666600000
        142.875000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Tanque 1'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRShape7: TQRShape
      Left = 120
      Top = 144
      Width = 17
      Size.Values = (
        171.979166666666700000
        317.500000000000000000
        381.000000000000000000
        44.979166666666670000)
      XLColumn = 0
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRLabel7: TQRLabel
      Left = 136
      Top = 152
      Width = 54
      Height = 17
      Size.Values = (
        44.979166666666670000
        359.833333333333400000
        402.166666666666600000
        142.875000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Tanque 2'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel8: TQRLabel
      Left = 216
      Top = 152
      Width = 54
      Height = 17
      Size.Values = (
        44.979166666666670000
        571.500000000000000000
        402.166666666666600000
        142.875000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Tanque 3'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel9: TQRLabel
      Left = 296
      Top = 152
      Width = 54
      Height = 17
      Size.Values = (
        44.979166666666670000
        783.166666666666800000
        402.166666666666600000
        142.875000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Tanque 4'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel10: TQRLabel
      Left = 376
      Top = 152
      Width = 54
      Height = 17
      Size.Values = (
        44.979166666666670000
        994.833333333333400000
        402.166666666666600000
        142.875000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Tanque 5'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel11: TQRLabel
      Left = 456
      Top = 152
      Width = 54
      Height = 17
      Size.Values = (
        44.979166666666670000
        1206.500000000000000000
        402.166666666666600000
        142.875000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Tanque 6'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRShape8: TQRShape
      Left = 200
      Top = 144
      Width = 17
      Size.Values = (
        171.979166666666700000
        529.166666666666800000
        381.000000000000000000
        44.979166666666670000)
      XLColumn = 0
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRShape9: TQRShape
      Left = 280
      Top = 144
      Width = 17
      Size.Values = (
        171.979166666666700000
        740.833333333333400000
        381.000000000000000000
        44.979166666666670000)
      XLColumn = 0
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRShape10: TQRShape
      Left = 360
      Top = 144
      Width = 17
      Size.Values = (
        171.979166666666700000
        952.500000000000000000
        381.000000000000000000
        44.979166666666670000)
      XLColumn = 0
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRShape11: TQRShape
      Left = 440
      Top = 144
      Width = 17
      Size.Values = (
        171.979166666666700000
        1164.166666666667000000
        381.000000000000000000
        44.979166666666670000)
      XLColumn = 0
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRShape12: TQRShape
      Left = 520
      Top = 144
      Width = 17
      Size.Values = (
        171.979166666666700000
        1375.833333333333000000
        381.000000000000000000
        44.979166666666670000)
      XLColumn = 0
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRLabel13: TQRLabel
      Left = 544
      Top = 152
      Width = 102
      Height = 17
      Size.Values = (
        44.979166666666670000
        1439.333333333333000000
        402.166666666666600000
        269.875000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Estoque Abertura'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRShape13: TQRShape
      Left = 48
      Top = 208
      Width = 697
      Height = 25
      Size.Values = (
        66.145833333333340000
        127.000000000000000000
        550.333333333333400000
        1844.145833333333000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape14: TQRShape
      Left = 48
      Top = 232
      Width = 697
      Height = 25
      Size.Values = (
        66.145833333333340000
        127.000000000000000000
        613.833333333333400000
        1844.145833333333000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel14: TQRLabel
      Left = 55
      Top = 212
      Width = 225
      Height = 17
      Size.Values = (
        44.979166666666670000
        145.520833333333300000
        560.916666666666800000
        595.312500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Volume Recebido no dia (em litros)'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel15: TQRLabel
      Left = 57
      Top = 236
      Width = 83
      Height = 17
      Size.Values = (
        44.979166666666670000
        150.812500000000000000
        624.416666666666800000
        219.604166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Nota Fiscal n'#186
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel19: TQRLabel
      Left = 392
      Top = 214
      Width = 98
      Height = 17
      Size.Values = (
        44.979166666666670000
        1037.166666666667000000
        566.208333333333400000
        259.291666666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Nr. TQ Descarga'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel20: TQRLabel
      Left = 544
      Top = 213
      Width = 103
      Height = 17
      Size.Values = (
        44.979166666666670000
        1439.333333333333000000
        563.562500000000000000
        272.520833333333400000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Volume Recebido'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRShape20: TQRShape
      Left = 48
      Top = 328
      Width = 697
      Height = 25
      Size.Values = (
        66.145833333333340000
        127.000000000000000000
        867.833333333333500000
        1844.145833333333000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel21: TQRLabel
      Left = 386
      Top = 334
      Width = 97
      Height = 17
      Size.Values = (
        44.979166666666670000
        1021.291666666667000000
        883.708333333333400000
        256.645833333333400000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Total Recebido'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRShape21: TQRShape
      Left = 48
      Top = 352
      Width = 697
      Height = 25
      Size.Values = (
        66.145833333333340000
        127.000000000000000000
        931.333333333333500000
        1844.145833333333000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel22: TQRLabel
      Left = 55
      Top = 357
      Width = 218
      Height = 17
      Size.Values = (
        44.979166666666670000
        145.520833333333300000
        944.562500000000000000
        576.791666666666800000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Volume Vendido no dia (em litros)'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel23: TQRLabel
      Left = 386
      Top = 358
      Width = 107
      Height = 17
      Size.Values = (
        44.979166666666670000
        1021.291666666667000000
        947.208333333333400000
        283.104166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Volume Dispon'#237'vel'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRShape26: TQRShape
      Left = 48
      Top = 376
      Width = 697
      Height = 25
      Size.Values = (
        66.145833333333340000
        127.000000000000000000
        994.833333333333400000
        1844.145833333333000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape27: TQRShape
      Left = 48
      Top = 400
      Width = 697
      Height = 25
      Size.Values = (
        66.145833333333340000
        127.000000000000000000
        1058.333333333333000000
        1844.145833333333000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape28: TQRShape
      Left = 48
      Top = 448
      Width = 697
      Height = 25
      Size.Values = (
        66.145833333333340000
        127.000000000000000000
        1185.333333333333000000
        1844.145833333333000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape29: TQRShape
      Left = 48
      Top = 424
      Width = 697
      Height = 25
      Size.Values = (
        66.145833333333340000
        127.000000000000000000
        1121.833333333333000000
        1844.145833333333000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape30: TQRShape
      Left = 48
      Top = 472
      Width = 697
      Height = 25
      Size.Values = (
        66.145833333333340000
        127.000000000000000000
        1248.833333333333000000
        1844.145833333333000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape31: TQRShape
      Left = 48
      Top = 496
      Width = 697
      Height = 25
      Size.Values = (
        66.145833333333340000
        127.000000000000000000
        1312.333333333333000000
        1844.145833333333000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape33: TQRShape
      Left = 48
      Top = 544
      Width = 697
      Height = 25
      Size.Values = (
        66.145833333333340000
        127.000000000000000000
        1439.333333333333000000
        1844.145833333333000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape34: TQRShape
      Left = 48
      Top = 568
      Width = 697
      Height = 25
      Size.Values = (
        66.145833333333340000
        127.000000000000000000
        1502.833333333333000000
        1844.145833333333000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape15: TQRShape
      Left = 48
      Top = 256
      Width = 697
      Height = 25
      Size.Values = (
        66.145833333333340000
        127.000000000000000000
        677.333333333333400000
        1844.145833333333000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape16: TQRShape
      Left = 48
      Top = 280
      Width = 697
      Height = 25
      Size.Values = (
        66.145833333333340000
        127.000000000000000000
        740.833333333333400000
        1844.145833333333000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape17: TQRShape
      Left = 48
      Top = 304
      Width = 697
      Height = 25
      Size.Values = (
        66.145833333333340000
        127.000000000000000000
        804.333333333333200000
        1844.145833333333000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel16: TQRLabel
      Left = 57
      Top = 260
      Width = 83
      Height = 17
      Size.Values = (
        44.979166666666670000
        150.812500000000000000
        687.916666666666800000
        219.604166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Nota Fiscal n'#186
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel17: TQRLabel
      Left = 57
      Top = 284
      Width = 83
      Height = 17
      Size.Values = (
        44.979166666666670000
        150.812500000000000000
        751.416666666666800000
        219.604166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Nota Fiscal n'#186
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel18: TQRLabel
      Left = 57
      Top = 308
      Width = 83
      Height = 17
      Size.Values = (
        44.979166666666670000
        150.812500000000000000
        814.916666666666800000
        219.604166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Nota Fiscal n'#186
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRShape18: TQRShape
      Left = 328
      Top = 208
      Width = 33
      Height = 169
      Size.Values = (
        447.145833333333400000
        867.833333333333500000
        550.333333333333400000
        87.312500000000000000)
      XLColumn = 0
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRShape19: TQRShape
      Left = 512
      Top = 208
      Width = 33
      Height = 169
      Size.Values = (
        447.145833333333400000
        1354.666666666667000000
        550.333333333333400000
        87.312500000000000000)
      XLColumn = 0
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRLabel24: TQRLabel
      Left = 57
      Top = 380
      Width = 18
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        150.812500000000000000
        1005.416666666667000000
        47.625000000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Caption = 'TQ'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel25: TQRLabel
      Left = 105
      Top = 380
      Width = 27
      Height = 17
      Size.Values = (
        44.979166666666670000
        277.812500000000000000
        1005.416666666667000000
        71.437500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Bico'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel26: TQRLabel
      Left = 161
      Top = 380
      Width = 73
      Height = 17
      Size.Values = (
        44.979166666666670000
        425.979166666666700000
        1005.416666666667000000
        193.145833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Fechamento'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel27: TQRLabel
      Left = 273
      Top = 380
      Width = 50
      Height = 17
      Size.Values = (
        44.979166666666670000
        722.312500000000000000
        1005.416666666667000000
        132.291666666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Abertura'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel28: TQRLabel
      Left = 401
      Top = 380
      Width = 55
      Height = 17
      Size.Values = (
        44.979166666666670000
        1060.979166666667000000
        1005.416666666667000000
        145.520833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Aferi'#231#245'es'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel29: TQRLabel
      Left = 601
      Top = 380
      Width = 93
      Height = 17
      Size.Values = (
        44.979166666666670000
        1590.145833333333000000
        1005.416666666667000000
        246.062500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Vendas no Bico'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRShape22: TQRShape
      Left = 80
      Top = 376
      Width = 17
      Height = 217
      Size.Values = (
        574.145833333333400000
        211.666666666666700000
        994.833333333333400000
        44.979166666666670000)
      XLColumn = 0
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRShape23: TQRShape
      Left = 136
      Top = 376
      Width = 17
      Height = 217
      Size.Values = (
        574.145833333333400000
        359.833333333333400000
        994.833333333333400000
        44.979166666666670000)
      XLColumn = 0
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRShape24: TQRShape
      Left = 240
      Top = 376
      Width = 17
      Height = 217
      Size.Values = (
        574.145833333333400000
        635.000000000000000000
        994.833333333333400000
        44.979166666666670000)
      XLColumn = 0
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRShape25: TQRShape
      Left = 336
      Top = 376
      Width = 17
      Height = 217
      Size.Values = (
        574.145833333333400000
        889.000000000000000000
        994.833333333333400000
        44.979166666666670000)
      XLColumn = 0
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRShape35: TQRShape
      Left = 520
      Top = 376
      Width = 17
      Height = 217
      Size.Values = (
        574.145833333333400000
        1375.833333333333000000
        994.833333333333400000
        44.979166666666670000)
      XLColumn = 0
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRShape36: TQRShape
      Left = 48
      Top = 592
      Width = 337
      Height = 393
      Size.Values = (
        1039.812500000000000000
        127.000000000000000000
        1566.333333333333000000
        891.645833333333200000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape37: TQRShape
      Left = 48
      Top = 592
      Width = 201
      Height = 25
      Size.Values = (
        66.145833333333340000
        127.000000000000000000
        1566.333333333333000000
        531.812500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel30: TQRLabel
      Left = 65
      Top = 596
      Width = 104
      Height = 17
      Size.Values = (
        44.979166666666670000
        171.979166666666700000
        1576.916666666667000000
        275.166666666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Valor das Vendas'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel31: TQRLabel
      Left = 65
      Top = 628
      Width = 143
      Height = 17
      Size.Values = (
        44.979166666666670000
        171.979166666666700000
        1661.583333333333000000
        378.354166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Valor das Vendas do dia'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRShape38: TQRShape
      Left = 224
      Top = 624
      Width = 153
      Height = 25
      Size.Values = (
        66.145833333333340000
        592.666666666666800000
        1651.000000000000000000
        404.812500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel32: TQRLabel
      Left = 233
      Top = 628
      Width = 17
      Height = 17
      Size.Values = (
        44.979166666666670000
        616.479166666666800000
        1661.583333333333000000
        44.979166666666670000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'R$'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRShape39: TQRShape
      Left = 48
      Top = 656
      Width = 337
      Height = 17
      Size.Values = (
        44.979166666666670000
        127.000000000000000000
        1735.666666666667000000
        891.645833333333200000)
      XLColumn = 0
      Shape = qrsHorLine
      VertAdjust = 0
    end
    object QRLabel33: TQRLabel
      Left = 65
      Top = 676
      Width = 147
      Height = 17
      Size.Values = (
        44.979166666666670000
        171.979166666666700000
        1788.583333333333000000
        388.937500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Valor Acumulado no m'#234's'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRShape40: TQRShape
      Left = 224
      Top = 672
      Width = 153
      Height = 25
      Size.Values = (
        66.145833333333340000
        592.666666666666800000
        1778.000000000000000000
        404.812500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel34: TQRLabel
      Left = 233
      Top = 676
      Width = 17
      Height = 17
      Size.Values = (
        44.979166666666670000
        616.479166666666800000
        1788.583333333333000000
        44.979166666666670000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'R$'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRShape41: TQRShape
      Left = 48
      Top = 704
      Width = 337
      Height = 17
      Size.Values = (
        44.979166666666670000
        127.000000000000000000
        1862.666666666667000000
        891.645833333333200000)
      XLColumn = 0
      Shape = qrsHorLine
      VertAdjust = 0
    end
    object QRShape42: TQRShape
      Left = 48
      Top = 712
      Width = 193
      Height = 25
      Size.Values = (
        66.145833333333340000
        127.000000000000000000
        1883.833333333333000000
        510.645833333333300000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel35: TQRLabel
      Left = 57
      Top = 716
      Width = 142
      Height = 17
      Size.Values = (
        44.979166666666670000
        150.812500000000000000
        1894.416666666667000000
        375.708333333333400000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Para uso do Revendedor'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRShape43: TQRShape
      Left = 48
      Top = 760
      Width = 337
      Height = 17
      Size.Values = (
        44.979166666666670000
        127.000000000000000000
        2010.833333333333000000
        891.645833333333200000)
      XLColumn = 0
      Shape = qrsHorLine
      VertAdjust = 0
    end
    object QRShape44: TQRShape
      Left = 48
      Top = 768
      Width = 193
      Height = 25
      Size.Values = (
        66.145833333333340000
        127.000000000000000000
        2032.000000000000000000
        510.645833333333300000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel36: TQRLabel
      Left = 57
      Top = 772
      Width = 76
      Height = 17
      Size.Values = (
        44.979166666666670000
        150.812500000000000000
        2042.583333333333000000
        201.083333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Observa'#231#245'es'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 3
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        7.937500000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
    end
    object QRShape45: TQRShape
      Left = 384
      Top = 592
      Width = 361
      Height = 25
      Size.Values = (
        66.145833333333340000
        1016.000000000000000000
        1566.333333333333000000
        955.145833333333500000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel12: TQRLabel
      Left = 409
      Top = 596
      Width = 84
      Height = 17
      Size.Values = (
        44.979166666666670000
        1082.145833333333000000
        1576.916666666667000000
        222.250000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Vendas no dia'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRShape46: TQRShape
      Left = 384
      Top = 616
      Width = 361
      Height = 25
      Size.Values = (
        66.145833333333340000
        1016.000000000000000000
        1629.833333333333000000
        955.145833333333500000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape47: TQRShape
      Left = 384
      Top = 640
      Width = 361
      Height = 25
      Size.Values = (
        66.145833333333340000
        1016.000000000000000000
        1693.333333333333000000
        955.145833333333500000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape48: TQRShape
      Left = 384
      Top = 664
      Width = 361
      Height = 25
      Size.Values = (
        66.145833333333340000
        1016.000000000000000000
        1756.833333333333000000
        955.145833333333500000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel37: TQRLabel
      Left = 401
      Top = 620
      Width = 108
      Height = 17
      Size.Values = (
        44.979166666666670000
        1060.979166666667000000
        1640.416666666667000000
        285.750000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Estoque Escritural'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel38: TQRLabel
      Left = 387
      Top = 644
      Width = 143
      Height = 17
      Size.Values = (
        44.979166666666670000
        1023.937500000000000000
        1703.916666666667000000
        378.354166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Estoque de Fechamento'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel39: TQRLabel
      Left = 409
      Top = 668
      Width = 95
      Height = 17
      Size.Values = (
        44.979166666666670000
        1082.145833333333000000
        1767.416666666667000000
        251.354166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Perdas - Sobras'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRShape49: TQRShape
      Left = 520
      Top = 592
      Width = 17
      Height = 97
      Size.Values = (
        256.645833333333400000
        1375.833333333333000000
        1566.333333333333000000
        44.979166666666670000)
      XLColumn = 0
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRShape50: TQRShape
      Left = 392
      Top = 712
      Width = 353
      Height = 273
      Size.Values = (
        722.312500000000000000
        1037.166666666667000000
        1883.833333333333000000
        933.979166666666600000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape51: TQRShape
      Left = 392
      Top = 712
      Width = 353
      Height = 25
      Size.Values = (
        66.145833333333340000
        1037.166666666667000000
        1883.833333333333000000
        933.979166666666600000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel40: TQRLabel
      Left = 401
      Top = 716
      Width = 147
      Height = 17
      Size.Values = (
        44.979166666666670000
        1060.979166666667000000
        1894.416666666667000000
        388.937500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Destinado a Fiscaliza'#231#227'o'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel41: TQRLabel
      Left = 401
      Top = 740
      Width = 48
      Height = 17
      Size.Values = (
        44.979166666666670000
        1060.979166666667000000
        1957.916666666667000000
        127.000000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'A. N. P.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRShape52: TQRShape
      Left = 384
      Top = 864
      Width = 361
      Height = 17
      Size.Values = (
        44.979166666666670000
        1016.000000000000000000
        2286.000000000000000000
        955.145833333333500000)
      XLColumn = 0
      Shape = qrsHorLine
      VertAdjust = 0
    end
    object QRLabel42: TQRLabel
      Left = 401
      Top = 884
      Width = 138
      Height = 17
      Size.Values = (
        44.979166666666670000
        1060.979166666667000000
        2338.916666666667000000
        365.125000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Outros Org'#227'os Fiscais'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel43: TQRLabel
      Left = 320
      Top = 992
      Width = 138
      Height = 17
      Size.Values = (
        44.979166666666670000
        846.666666666666600000
        2624.666666666667000000
        365.125000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Concilia'#231#227'o do Estoque'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRShape53: TQRShape
      Left = 48
      Top = 1016
      Width = 697
      Height = 25
      Size.Values = (
        66.145833333333340000
        127.000000000000000000
        2688.166666666667000000
        1844.145833333333000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape54: TQRShape
      Left = 48
      Top = 1040
      Width = 697
      Height = 25
      Size.Values = (
        66.145833333333340000
        127.000000000000000000
        2751.666666666667000000
        1844.145833333333000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel44: TQRLabel
      Left = 135
      Top = 1020
      Width = 54
      Height = 17
      Size.Values = (
        44.979166666666670000
        357.187500000000000000
        2698.750000000000000000
        142.875000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Tanque 1'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel45: TQRLabel
      Left = 239
      Top = 1020
      Width = 54
      Height = 17
      Size.Values = (
        44.979166666666670000
        632.354166666666800000
        2698.750000000000000000
        142.875000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Tanque 2'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel46: TQRLabel
      Left = 343
      Top = 1020
      Width = 54
      Height = 17
      Size.Values = (
        44.979166666666670000
        907.520833333333400000
        2698.750000000000000000
        142.875000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Tanque 3'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel47: TQRLabel
      Left = 447
      Top = 1020
      Width = 54
      Height = 17
      Size.Values = (
        44.979166666666670000
        1182.687500000000000000
        2698.750000000000000000
        142.875000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Tanque 4'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel48: TQRLabel
      Left = 559
      Top = 1020
      Width = 54
      Height = 17
      Size.Values = (
        44.979166666666670000
        1479.020833333333000000
        2698.750000000000000000
        142.875000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Tanque 5'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel49: TQRLabel
      Left = 655
      Top = 1020
      Width = 54
      Height = 17
      Size.Values = (
        44.979166666666670000
        1733.020833333333000000
        2698.750000000000000000
        142.875000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Tanque 6'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel50: TQRLabel
      Left = 55
      Top = 1041
      Width = 74
      Height = 16
      Size.Values = (
        42.333333333333340000
        145.520833333333300000
        2754.312500000000000000
        195.791666666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = 'Fechamento F'#237'sico'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 6
    end
    object QRShape55: TQRShape
      Left = 208
      Top = 1016
      Width = 17
      Height = 49
      Size.Values = (
        129.645833333333300000
        550.333333333333400000
        2688.166666666667000000
        44.979166666666670000)
      XLColumn = 0
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRShape56: TQRShape
      Left = 312
      Top = 1016
      Width = 17
      Height = 49
      Size.Values = (
        129.645833333333300000
        825.500000000000100000
        2688.166666666667000000
        44.979166666666670000)
      XLColumn = 0
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRShape57: TQRShape
      Left = 416
      Top = 1016
      Width = 17
      Height = 49
      Size.Values = (
        129.645833333333300000
        1100.666666666667000000
        2688.166666666667000000
        44.979166666666670000)
      XLColumn = 0
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRShape58: TQRShape
      Left = 520
      Top = 1016
      Width = 17
      Height = 49
      Size.Values = (
        129.645833333333300000
        1375.833333333333000000
        2688.166666666667000000
        44.979166666666670000)
      XLColumn = 0
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRShape59: TQRShape
      Left = 624
      Top = 1016
      Width = 17
      Height = 49
      Size.Values = (
        129.645833333333300000
        1651.000000000000000000
        2688.166666666667000000
        44.979166666666670000)
      XLColumn = 0
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRShape60: TQRShape
      Left = 120
      Top = 1016
      Width = 17
      Height = 49
      Size.Values = (
        129.645833333333300000
        317.500000000000000000
        2688.166666666667000000
        44.979166666666670000)
      XLColumn = 0
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRDBText1: TQRDBText
      Left = 128
      Top = 88
      Width = 139
      Height = 17
      Size.Values = (
        44.979166666666670000
        338.666666666666700000
        232.833333333333400000
        367.770833333333400000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'NOME_COMBUSTIVEL'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText2: TQRDBText
      Left = 584
      Top = 88
      Width = 35
      Height = 17
      Size.Values = (
        44.979166666666670000
        1545.166666666667000000
        232.833333333333400000
        92.604166666666680000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'DATA'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText3: TQRDBText
      Left = 56
      Top = 184
      Width = 57
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        148.166666666666700000
        486.833333333333400000
        150.812500000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ESTOQ_ABERTURA'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText4: TQRDBText
      Left = 137
      Top = 184
      Width = 56
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        362.479166666666700000
        486.833333333333400000
        148.166666666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ESTOQ_ABERTURA'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText5: TQRDBText
      Left = 216
      Top = 184
      Width = 54
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        571.500000000000000000
        486.833333333333400000
        142.875000000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ESTOQ_ABERTURA'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText6: TQRDBText
      Left = 296
      Top = 184
      Width = 65
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        783.166666666666800000
        486.833333333333400000
        171.979166666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ESTOQ_ABERTURA'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText7: TQRDBText
      Left = 376
      Top = 184
      Width = 57
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        994.833333333333400000
        486.833333333333400000
        150.812500000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ESTOQ_ABERTURA'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText8: TQRDBText
      Left = 456
      Top = 184
      Width = 57
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        1206.500000000000000000
        486.833333333333400000
        150.812500000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ESTOQ_ABERTURA'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText9: TQRDBText
      Left = 157
      Top = 235
      Width = 88
      Height = 17
      Size.Values = (
        44.979166666666670000
        415.395833333333400000
        621.770833333333400000
        232.833333333333400000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'NOTAFISCAL1'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText10: TQRDBText
      Left = 156
      Top = 262
      Width = 88
      Height = 17
      Size.Values = (
        44.979166666666670000
        412.750000000000100000
        693.208333333333400000
        232.833333333333400000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'NOTAFISCAL2'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText11: TQRDBText
      Left = 156
      Top = 284
      Width = 88
      Height = 17
      Size.Values = (
        44.979166666666670000
        412.750000000000100000
        751.416666666666800000
        232.833333333333400000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'NOTAFISCAL3'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText12: TQRDBText
      Left = 156
      Top = 309
      Width = 88
      Height = 17
      Size.Values = (
        44.979166666666670000
        412.750000000000100000
        817.562500000000000000
        232.833333333333400000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'NOTAFISCAL4'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText13: TQRDBText
      Left = 616
      Top = 184
      Width = 123
      Height = 17
      Size.Values = (
        44.979166666666670000
        1629.833333333333000000
        486.833333333333400000
        325.437500000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ESTOQ_ABERTURA'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText14: TQRDBText
      Left = 668
      Top = 236
      Width = 69
      Height = 17
      Size.Values = (
        44.979166666666670000
        1767.416666666667000000
        624.416666666666800000
        182.562500000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'QUANTNF1'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText15: TQRDBText
      Left = 669
      Top = 261
      Width = 69
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        1770.062500000000000000
        690.562500000000000000
        182.562500000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'QUANTNF2'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText16: TQRDBText
      Left = 671
      Top = 284
      Width = 69
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        1775.354166666667000000
        751.416666666666800000
        182.562500000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'QUANTNF3'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText17: TQRDBText
      Left = 671
      Top = 308
      Width = 69
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        1775.354166666667000000
        814.916666666666800000
        182.562500000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'QUANTNF4'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText18: TQRDBText
      Left = 400
      Top = 233
      Width = 54
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        1058.333333333333000000
        616.479166666666800000
        142.875000000000000000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'TANQUE'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText19: TQRDBText
      Left = 401
      Top = 258
      Width = 54
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        1060.979166666667000000
        682.625000000000000000
        142.875000000000000000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'TANQUE'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText20: TQRDBText
      Left = 402
      Top = 283
      Width = 54
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        1063.625000000000000000
        748.770833333333400000
        142.875000000000000000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'TANQUE'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText21: TQRDBText
      Left = 402
      Top = 308
      Width = 54
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        1063.625000000000000000
        814.916666666666800000
        142.875000000000000000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'TANQUE'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText22: TQRDBText
      Left = 608
      Top = 620
      Width = 133
      Height = 17
      Size.Values = (
        44.979166666666670000
        1608.666666666667000000
        1640.416666666667000000
        351.895833333333400000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ESTOQ_ESCRITURAL'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText23: TQRDBText
      Left = 600
      Top = 644
      Width = 143
      Height = 17
      Size.Values = (
        44.979166666666670000
        1587.500000000000000000
        1703.916666666667000000
        378.354166666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ESTOQ_FECHAMENTO'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText24: TQRDBText
      Left = 642
      Top = 668
      Width = 99
      Height = 17
      Size.Values = (
        44.979166666666670000
        1698.625000000000000000
        1767.416666666667000000
        261.937500000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'PERDA_SOBRA'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText25: TQRDBText
      Left = 138
      Top = 1043
      Width = 63
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        365.125000000000000000
        2759.604166666667000000
        166.687500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ESTOQ_FECHAMENTO'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText26: TQRDBText
      Left = 235
      Top = 1044
      Width = 70
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        621.770833333333400000
        2762.250000000000000000
        185.208333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ESTOQ_FECHAMENTO'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText27: TQRDBText
      Left = 338
      Top = 1044
      Width = 77
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        894.291666666666800000
        2762.250000000000000000
        203.729166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ESTOQ_FECHAMENTO'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText28: TQRDBText
      Left = 443
      Top = 1045
      Width = 77
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        1172.104166666667000000
        2764.895833333333000000
        203.729166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ESTOQ_FECHAMENTO'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText29: TQRDBText
      Left = 545
      Top = 1043
      Width = 77
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        1441.979166666667000000
        2759.604166666667000000
        203.729166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ESTOQ_FECHAMENTO'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText30: TQRDBText
      Left = 648
      Top = 1043
      Width = 77
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        1714.500000000000000000
        2759.604166666667000000
        203.729166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ESTOQ_FECHAMENTO'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText31: TQRDBText
      Left = 704
      Top = 40
      Width = 41
      Height = 17
      Size.Values = (
        44.979166666666670000
        1862.666666666667000000
        105.833333333333300000
        108.479166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'PAGINA'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText32: TQRDBText
      Left = 101
      Top = 405
      Width = 25
      Height = 17
      Size.Values = (
        44.979166666666670000
        267.229166666666700000
        1071.562500000000000000
        66.145833333333340000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'BICO1'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText33: TQRDBText
      Left = 101
      Top = 427
      Width = 25
      Height = 17
      Size.Values = (
        44.979166666666670000
        267.229166666666700000
        1129.770833333333000000
        66.145833333333340000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'BICO2'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText34: TQRDBText
      Left = 101
      Top = 452
      Width = 25
      Height = 17
      Size.Values = (
        44.979166666666670000
        267.229166666666700000
        1195.916666666667000000
        66.145833333333340000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'BICO3'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText35: TQRDBText
      Left = 101
      Top = 476
      Width = 25
      Height = 17
      Size.Values = (
        44.979166666666670000
        267.229166666666700000
        1259.416666666667000000
        66.145833333333340000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'BICO4'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText36: TQRDBText
      Left = 101
      Top = 501
      Width = 25
      Height = 17
      Size.Values = (
        44.979166666666670000
        267.229166666666700000
        1325.562500000000000000
        66.145833333333340000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'BICO5'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText37: TQRDBText
      Left = 100
      Top = 524
      Width = 25
      Height = 17
      Size.Values = (
        44.979166666666670000
        264.583333333333400000
        1386.416666666667000000
        66.145833333333340000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'BICO6'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText38: TQRDBText
      Left = 101
      Top = 546
      Width = 25
      Height = 17
      Size.Values = (
        44.979166666666670000
        267.229166666666700000
        1444.625000000000000000
        66.145833333333340000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'BICO7'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText39: TQRDBText
      Left = 101
      Top = 573
      Width = 25
      Height = 17
      Size.Values = (
        44.979166666666670000
        267.229166666666700000
        1516.062500000000000000
        66.145833333333340000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'BICO8'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText40: TQRDBText
      Left = 53
      Top = 405
      Width = 25
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        140.229166666666700000
        1071.562500000000000000
        66.145833333333340000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'TANQUE'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText41: TQRDBText
      Left = 53
      Top = 427
      Width = 25
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        140.229166666666700000
        1129.770833333333000000
        66.145833333333340000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'TANQUE'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText42: TQRDBText
      Left = 53
      Top = 452
      Width = 25
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        140.229166666666700000
        1195.916666666667000000
        66.145833333333340000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'TANQUE'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText43: TQRDBText
      Left = 53
      Top = 476
      Width = 25
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        140.229166666666700000
        1259.416666666667000000
        66.145833333333340000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'TANQUE'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText44: TQRDBText
      Left = 53
      Top = 501
      Width = 25
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        140.229166666666700000
        1325.562500000000000000
        66.145833333333340000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'TANQUE'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText45: TQRDBText
      Left = 53
      Top = 524
      Width = 25
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        140.229166666666700000
        1386.416666666667000000
        66.145833333333340000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'TANQUE'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText46: TQRDBText
      Left = 53
      Top = 546
      Width = 25
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        140.229166666666700000
        1444.625000000000000000
        66.145833333333340000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'TANQUE'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText47: TQRDBText
      Left = 53
      Top = 573
      Width = 25
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        140.229166666666700000
        1516.062500000000000000
        66.145833333333340000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'TANQUE'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText48: TQRDBText
      Left = 160
      Top = 405
      Width = 77
      Height = 17
      Size.Values = (
        44.979166666666670000
        423.333333333333300000
        1071.562500000000000000
        203.729166666666700000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ENC_BICO1'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText49: TQRDBText
      Left = 160
      Top = 427
      Width = 77
      Height = 17
      Size.Values = (
        44.979166666666670000
        423.333333333333300000
        1129.770833333333000000
        203.729166666666700000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ENC_BICO2'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText50: TQRDBText
      Left = 160
      Top = 452
      Width = 77
      Height = 17
      Size.Values = (
        44.979166666666670000
        423.333333333333300000
        1195.916666666667000000
        203.729166666666700000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ENC_BICO3'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText51: TQRDBText
      Left = 160
      Top = 476
      Width = 77
      Height = 17
      Size.Values = (
        44.979166666666670000
        423.333333333333300000
        1259.416666666667000000
        203.729166666666700000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ENC_BICO4'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText52: TQRDBText
      Left = 160
      Top = 501
      Width = 73
      Height = 17
      Size.Values = (
        44.979166666666670000
        423.333333333333300000
        1325.562500000000000000
        193.145833333333300000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ENC_BICO5'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText53: TQRDBText
      Left = 160
      Top = 524
      Width = 73
      Height = 17
      Size.Values = (
        44.979166666666670000
        423.333333333333300000
        1386.416666666667000000
        193.145833333333300000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ENC_BICO6'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText54: TQRDBText
      Left = 160
      Top = 546
      Width = 73
      Height = 17
      Size.Values = (
        44.979166666666670000
        423.333333333333300000
        1444.625000000000000000
        193.145833333333300000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ENC_BICO7'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText55: TQRDBText
      Left = 160
      Top = 573
      Width = 73
      Height = 17
      Size.Values = (
        44.979166666666670000
        423.333333333333300000
        1516.062500000000000000
        193.145833333333300000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ENC_BICO8'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText56: TQRDBText
      Left = 256
      Top = 405
      Width = 82
      Height = 17
      Size.Values = (
        44.979166666666670000
        677.333333333333400000
        1071.562500000000000000
        216.958333333333400000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ABER_BICO1'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText57: TQRDBText
      Left = 256
      Top = 427
      Width = 82
      Height = 17
      Size.Values = (
        44.979166666666670000
        677.333333333333400000
        1129.770833333333000000
        216.958333333333400000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ABER_BICO2'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText58: TQRDBText
      Left = 256
      Top = 452
      Width = 82
      Height = 17
      Size.Values = (
        44.979166666666670000
        677.333333333333400000
        1195.916666666667000000
        216.958333333333400000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ABER_BICO3'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText59: TQRDBText
      Left = 256
      Top = 476
      Width = 82
      Height = 17
      Size.Values = (
        44.979166666666670000
        677.333333333333400000
        1259.416666666667000000
        216.958333333333400000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ABER_BICO4'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText60: TQRDBText
      Left = 256
      Top = 501
      Width = 82
      Height = 17
      Size.Values = (
        44.979166666666670000
        677.333333333333400000
        1325.562500000000000000
        216.958333333333400000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ABER_BICO5'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText61: TQRDBText
      Left = 256
      Top = 524
      Width = 82
      Height = 17
      Size.Values = (
        44.979166666666670000
        677.333333333333400000
        1386.416666666667000000
        216.958333333333400000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ABER_BICO6'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText62: TQRDBText
      Left = 256
      Top = 546
      Width = 82
      Height = 17
      Size.Values = (
        44.979166666666670000
        677.333333333333400000
        1444.625000000000000000
        216.958333333333400000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ABER_BICO7'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText63: TQRDBText
      Left = 256
      Top = 573
      Width = 82
      Height = 17
      Size.Values = (
        44.979166666666670000
        677.333333333333400000
        1516.062500000000000000
        216.958333333333400000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ABER_BICO8'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText64: TQRDBText
      Left = 392
      Top = 405
      Width = 81
      Height = 17
      Size.Values = (
        44.979166666666670000
        1037.166666666667000000
        1071.562500000000000000
        214.312500000000000000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'AFER_BICO1'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText65: TQRDBText
      Left = 392
      Top = 427
      Width = 81
      Height = 17
      Size.Values = (
        44.979166666666670000
        1037.166666666667000000
        1129.770833333333000000
        214.312500000000000000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'AFER_BICO2'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText66: TQRDBText
      Left = 392
      Top = 452
      Width = 82
      Height = 17
      Size.Values = (
        44.979166666666670000
        1037.166666666667000000
        1195.916666666667000000
        216.958333333333400000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ABER_BICO3'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText67: TQRDBText
      Left = 392
      Top = 476
      Width = 81
      Height = 17
      Size.Values = (
        44.979166666666670000
        1037.166666666667000000
        1259.416666666667000000
        214.312500000000000000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'AFER_BICO4'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText68: TQRDBText
      Left = 392
      Top = 501
      Width = 81
      Height = 17
      Size.Values = (
        44.979166666666670000
        1037.166666666667000000
        1325.562500000000000000
        214.312500000000000000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'AFER_BICO5'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText69: TQRDBText
      Left = 392
      Top = 524
      Width = 81
      Height = 17
      Size.Values = (
        44.979166666666670000
        1037.166666666667000000
        1386.416666666667000000
        214.312500000000000000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'AFER_BICO6'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText70: TQRDBText
      Left = 392
      Top = 546
      Width = 81
      Height = 17
      Size.Values = (
        44.979166666666670000
        1037.166666666667000000
        1444.625000000000000000
        214.312500000000000000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'AFER_BICO7'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText71: TQRDBText
      Left = 392
      Top = 573
      Width = 82
      Height = 17
      Size.Values = (
        44.979166666666670000
        1037.166666666667000000
        1516.062500000000000000
        216.958333333333400000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'ABER_BICO8'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText72: TQRDBText
      Left = 608
      Top = 405
      Width = 77
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        1608.666666666667000000
        1071.562500000000000000
        203.729166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'QTEVEND_1'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText73: TQRDBText
      Left = 608
      Top = 427
      Width = 77
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        1608.666666666667000000
        1129.770833333333000000
        203.729166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'QTEVEND_2'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText74: TQRDBText
      Left = 608
      Top = 452
      Width = 77
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        1608.666666666667000000
        1195.916666666667000000
        203.729166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'QTEVEND_3'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText75: TQRDBText
      Left = 608
      Top = 476
      Width = 77
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        1608.666666666667000000
        1259.416666666667000000
        203.729166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'QTEVEND_4'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText76: TQRDBText
      Left = 608
      Top = 501
      Width = 77
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        1608.666666666667000000
        1325.562500000000000000
        203.729166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'QTEVEND_5'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText77: TQRDBText
      Left = 608
      Top = 524
      Width = 77
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        1608.666666666667000000
        1386.416666666667000000
        203.729166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'QTEVEND_6'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText78: TQRDBText
      Left = 608
      Top = 546
      Width = 77
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        1608.666666666667000000
        1444.625000000000000000
        203.729166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'QTEVEND_7'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText79: TQRDBText
      Left = 608
      Top = 573
      Width = 77
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        1608.666666666667000000
        1516.062500000000000000
        203.729166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qrLMC
      DataField = 'QTEVEND_8'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRLabel51: TQRLabel
      Left = 79
      Top = 1067
      Width = 472
      Height = 12
      Size.Values = (
        31.750000000000000000
        209.020833333333300000
        2823.104166666667000000
        1248.833333333333000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 
        '(*) ATEN'#199#195'O: Se o resultado for negativo pode estar havendo vaza' +
        'mento do produto para meio ambient'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 7
    end
    object lbrecebido: TQRLabel
      Left = 680
      Top = 332
      Width = 60
      Height = 17
      Size.Values = (
        44.979166666666670000
        1799.166666666667000000
        878.416666666666800000
        158.750000000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Caption = 'lbrecebido'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object lbvendasdia: TQRLabel
      Left = 674
      Top = 595
      Width = 68
      Height = 17
      Size.Values = (
        44.979166666666670000
        1783.291666666667000000
        1574.270833333333000000
        179.916666666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Caption = 'lbvendasdia'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object lbdisponivel: TQRLabel
      Left = 674
      Top = 355
      Width = 67
      Height = 17
      Size.Values = (
        44.979166666666670000
        1783.291666666667000000
        939.270833333333400000
        177.270833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Caption = 'lbdisponivel'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object vrvendasdia: TQRLabel
      Left = 297
      Top = 628
      Width = 67
      Height = 17
      Size.Values = (
        44.979166666666670000
        785.812500000000000000
        1661.583333333333000000
        177.270833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Caption = 'vrvendasdia'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object lbvracumuladomes: TQRLabel
      Left = 258
      Top = 676
      Width = 108
      Height = 17
      Size.Values = (
        44.979166666666670000
        682.625000000000000000
        1788.583333333333000000
        285.750000000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Caption = 'lbvracumuladomes'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
  end
  object qrLMC: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from LMC')
    Params = <>
    Left = 8
    Top = 248
    object qrLMCCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qrLMCTANQUE: TIntegerField
      FieldName = 'TANQUE'
    end
    object qrLMCBOMBA: TIntegerField
      FieldName = 'BOMBA'
    end
    object qrLMCBICO: TIntegerField
      FieldName = 'BICO'
    end
    object qrLMCABERTURA: TIntegerField
      FieldName = 'ABERTURA'
    end
    object qrLMCENCERRANTE: TIntegerField
      FieldName = 'ENCERRANTE'
    end
    object qrLMCCOMBUSTIVEL: TIntegerField
      FieldName = 'COMBUSTIVEL'
    end
    object qrLMCDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrLMCPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object qrLMCQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object qrLMCTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrLMCSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrLMCNR_NOTA: TIntegerField
      FieldName = 'NR_NOTA'
    end
    object qrLMCNOTAFISCAL1: TWideStringField
      FieldName = 'NOTAFISCAL1'
      Size = 10
    end
    object qrLMCNOTAFISCAL2: TWideStringField
      FieldName = 'NOTAFISCAL2'
      Size = 10
    end
    object qrLMCNOTAFISCAL3: TWideStringField
      FieldName = 'NOTAFISCAL3'
      Size = 10
    end
    object qrLMCNOTAFISCAL4: TWideStringField
      FieldName = 'NOTAFISCAL4'
      Size = 10
    end
    object qrLMCQUANTNF1: TIntegerField
      FieldName = 'QUANTNF1'
    end
    object qrLMCQUANTNF2: TIntegerField
      FieldName = 'QUANTNF2'
    end
    object qrLMCQUANTNF3: TIntegerField
      FieldName = 'QUANTNF3'
    end
    object qrLMCQUANTNF4: TIntegerField
      FieldName = 'QUANTNF4'
    end
    object qrLMCBICO1: TIntegerField
      FieldName = 'BICO1'
    end
    object qrLMCBICO2: TIntegerField
      FieldName = 'BICO2'
    end
    object qrLMCBICO3: TIntegerField
      FieldName = 'BICO3'
    end
    object qrLMCBICO4: TIntegerField
      FieldName = 'BICO4'
    end
    object qrLMCBICO5: TIntegerField
      FieldName = 'BICO5'
    end
    object qrLMCBICO6: TIntegerField
      FieldName = 'BICO6'
    end
    object qrLMCBICO7: TIntegerField
      FieldName = 'BICO7'
    end
    object qrLMCBICO8: TIntegerField
      FieldName = 'BICO8'
    end
    object qrLMCABER_BICO1: TIntegerField
      FieldName = 'ABER_BICO1'
    end
    object qrLMCABER_BICO2: TIntegerField
      FieldName = 'ABER_BICO2'
    end
    object qrLMCABER_BICO3: TIntegerField
      FieldName = 'ABER_BICO3'
    end
    object qrLMCABER_BICO4: TIntegerField
      FieldName = 'ABER_BICO4'
    end
    object qrLMCABER_BICO5: TIntegerField
      FieldName = 'ABER_BICO5'
    end
    object qrLMCABER_BICO6: TIntegerField
      FieldName = 'ABER_BICO6'
    end
    object qrLMCABER_BICO7: TIntegerField
      FieldName = 'ABER_BICO7'
    end
    object qrLMCABER_BICO8: TIntegerField
      FieldName = 'ABER_BICO8'
    end
    object qrLMCENC_BICO1: TIntegerField
      FieldName = 'ENC_BICO1'
    end
    object qrLMCENC_BICO2: TIntegerField
      FieldName = 'ENC_BICO2'
    end
    object qrLMCENC_BICO3: TIntegerField
      FieldName = 'ENC_BICO3'
    end
    object qrLMCENC_BICO4: TIntegerField
      FieldName = 'ENC_BICO4'
    end
    object qrLMCENC_BICO5: TIntegerField
      FieldName = 'ENC_BICO5'
    end
    object qrLMCENC_BICO6: TIntegerField
      FieldName = 'ENC_BICO6'
    end
    object qrLMCENC_BICO7: TIntegerField
      FieldName = 'ENC_BICO7'
    end
    object qrLMCENC_BICO8: TIntegerField
      FieldName = 'ENC_BICO8'
    end
    object qrLMCAFER_BICO1: TIntegerField
      FieldName = 'AFER_BICO1'
    end
    object qrLMCAFER_BICO2: TIntegerField
      FieldName = 'AFER_BICO2'
    end
    object qrLMCAFER_BICO3: TIntegerField
      FieldName = 'AFER_BICO3'
    end
    object qrLMCAFER_BICO4: TIntegerField
      FieldName = 'AFER_BICO4'
    end
    object qrLMCAFER_BICO5: TIntegerField
      FieldName = 'AFER_BICO5'
    end
    object qrLMCAFER_BICO6: TIntegerField
      FieldName = 'AFER_BICO6'
    end
    object qrLMCAFER_BICO7: TIntegerField
      FieldName = 'AFER_BICO7'
    end
    object qrLMCAFER_BICO8: TIntegerField
      FieldName = 'AFER_BICO8'
    end
    object qrLMCQTEVEND_1: TIntegerField
      FieldName = 'QTEVEND_1'
    end
    object qrLMCQTEVEND_2: TIntegerField
      FieldName = 'QTEVEND_2'
    end
    object qrLMCQTEVEND_3: TIntegerField
      FieldName = 'QTEVEND_3'
    end
    object qrLMCQTEVEND_4: TIntegerField
      FieldName = 'QTEVEND_4'
    end
    object qrLMCQTEVEND_5: TIntegerField
      FieldName = 'QTEVEND_5'
    end
    object qrLMCQTEVEND_6: TIntegerField
      FieldName = 'QTEVEND_6'
    end
    object qrLMCQTEVEND_7: TIntegerField
      FieldName = 'QTEVEND_7'
    end
    object qrLMCQTEVEND_8: TIntegerField
      FieldName = 'QTEVEND_8'
    end
    object qrLMCTOTALVEND_1: TFloatField
      FieldName = 'TOTALVEND_1'
    end
    object qrLMCTOTALVEND_2: TFloatField
      FieldName = 'TOTALVEND_2'
    end
    object qrLMCTOTALVEND_3: TFloatField
      FieldName = 'TOTALVEND_3'
    end
    object qrLMCTOTALVEND_4: TFloatField
      FieldName = 'TOTALVEND_4'
    end
    object qrLMCTOTALVEND_5: TFloatField
      FieldName = 'TOTALVEND_5'
    end
    object qrLMCTOTALVEND_6: TFloatField
      FieldName = 'TOTALVEND_6'
    end
    object qrLMCTOTALVEND_7: TFloatField
      FieldName = 'TOTALVEND_7'
    end
    object qrLMCTOTALVEND_8: TFloatField
      FieldName = 'TOTALVEND_8'
    end
    object qrLMCESTOQ_ABERTURA: TIntegerField
      FieldName = 'ESTOQ_ABERTURA'
    end
    object qrLMCESTOQ_ESCRITURAL: TIntegerField
      FieldName = 'ESTOQ_ESCRITURAL'
    end
    object qrLMCESTOQ_FECHAMENTO: TIntegerField
      FieldName = 'ESTOQ_FECHAMENTO'
    end
    object qrLMCPERDA_SOBRA: TIntegerField
      FieldName = 'PERDA_SOBRA'
    end
    object qrLMCOBSERVACAO: TWideStringField
      FieldName = 'OBSERVACAO'
      Size = 255
    end
    object qrLMCPAGINA: TIntegerField
      FieldName = 'PAGINA'
    end
  end
  object frxReport1: TfrxReport
    Version = '4.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40290.575864421300000000
    ReportOptions.LastChange = 40456.743238564800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      '  '
      'end.')
    Left = 8
    Top = 96
    Datasets = <
      item
        DataSetName = 'frxDbEmpresa'
      end
      item
        DataSetName = 'frxDbMaster'
      end
      item
        DataSetName = 'frxDbRecebido'
      end
      item
        DataSetName = 'frxDbTanque'
      end
      item
        DataSetName = 'frxDbTotais'
      end
      item
        DataSetName = 'frxDbVendido'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object pgAbertura: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData4: TfrxMasterData
        Height = 1026.693570000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSetName = 'frxDbEmpresa'
        RowCount = 0
        object Memo57: TfrxMemoView
          Align = baWidth
          Top = 120.472480000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Livro de Movimenta'#231#227'o de Combust'#237'veis (L.M.C.)')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          Align = baWidth
          Top = 147.913420000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '(Portaria n.'#186' 26, 13/11/1992 do Departamento Nacional de Combust' +
              #237'veis)')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          Left = 287.244280000000000000
          Top = 193.740260000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'N.'#186' de Ordem:')
          ParentFont = False
        end
        object Memo113: TfrxMemoView
          Align = baWidth
          Top = 241.535560000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Termo de Abertura')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          Align = baWidth
          Top = 303.921460000000000000
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            
              '           Cont'#233'm este livro [qtd_pag] ([ext_qtd_pag]) folhas nu' +
              'meradas eletronicamente, do n.'#186' 1 ao n.'#186' [qtd_pag] e serviu para' +
              ' o lan'#231'amento das opera'#231#245'es do estabelecimento do contribuinte a' +
              'baixo identifica:')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          Top = 355.527830000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nome:')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          Top = 376.764070000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          Top = 397.779840000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Bairro:')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          Top = 418.779840000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cidade:')
          ParentFont = False
        end
        object Memo119: TfrxMemoView
          Top = 439.457020000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Estado:')
          ParentFont = False
        end
        object Memo120: TfrxMemoView
          Top = 461.134200000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Inscri'#231#227'o Estadual:')
          ParentFont = False
        end
        object Memo121: TfrxMemoView
          Top = 482.149970000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          Top = 503.165740000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Inscri'#231#227'o Municipal:')
          ParentFont = False
        end
        object Memo123: TfrxMemoView
          Top = 523.858690000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Distribuidora com a qual opera:')
          ParentFont = False
        end
        object Memo124: TfrxMemoView
          Top = 564.772110000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Capacidade nominal de armazenamento:')
          ParentFont = False
        end
        object Memo125: TfrxMemoView
          Top = 780.362710000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Registrado na junta comercial sob n.'#186)
          ParentFont = False
        end
        object Memo126: TfrxMemoView
          Align = baWidth
          Top = 832.953310000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DSC_DAT_INI_CC'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDbEmpresa."DSC_DAT_INI_CC"]')
          ParentFont = False
        end
        object Line52: TfrxLineView
          Align = baCenter
          Left = 230.551330000000000000
          Top = 912.528140000000000000
          Width = 257.008040000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo127: TfrxMemoView
          Align = baWidth
          Top = 912.528140000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'NOM_RSP'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDbEmpresa."NOM_RSP"]')
          ParentFont = False
        end
        object Memo128: TfrxMemoView
          Align = baWidth
          Top = 927.646260000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CPF_RSP'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDbEmpresa."CPF_RSP"]')
          ParentFont = False
        end
        object Line53: TfrxLineView
          Align = baCenter
          Left = 230.551330000000000000
          Top = 988.677800000000000000
          Width = 257.008040000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo129: TfrxMemoView
          Align = baWidth
          Top = 988.677800000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'NOM_CTD'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDbEmpresa."NOM_CTD"]')
          ParentFont = False
        end
        object Memo130: TfrxMemoView
          Align = baWidth
          Top = 1003.795920000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CRC_CTD'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDbEmpresa."CRC_CTD"]')
          ParentFont = False
        end
        object Memo131: TfrxMemoView
          Left = 48.133890000000000000
          Top = 355.393700790000000000
          Width = 532.913730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOM_EMP'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbEmpresa."NOM_EMP"]')
          ParentFont = False
        end
        object Memo132: TfrxMemoView
          Left = 67.165430000000000000
          Top = 376.692913390000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'END_EMP'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbEmpresa."END_EMP"]')
          ParentFont = False
        end
        object Memo133: TfrxMemoView
          Left = 45.165430000000000000
          Top = 397.614173230000000000
          Width = 347.716760000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BAI_EMP'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbEmpresa."BAI_EMP"]')
          ParentFont = False
        end
        object Memo134: TfrxMemoView
          Left = 52.165430000000000000
          Top = 418.913385830000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CID_EMP'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbEmpresa."CID_EMP"]')
          ParentFont = False
        end
        object Memo135: TfrxMemoView
          Left = 52.165430000000000000
          Top = 439.456692910000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'UF_EMP'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbEmpresa."UF_EMP"]')
          ParentFont = False
        end
        object Memo136: TfrxMemoView
          Left = 119.944960000000000000
          Top = 461.133858270000000000
          Width = 461.102660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NUM_IE'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbEmpresa."NUM_IE"]')
          ParentFont = False
        end
        object Memo137: TfrxMemoView
          Left = 45.133890000000000000
          Top = 482.055118110000000000
          Width = 536.693260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NUM_CNPJ'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbEmpresa."NUM_CNPJ"]')
          ParentFont = False
        end
        object Memo138: TfrxMemoView
          Left = 123.740260000000000000
          Top = 503.354330710000000000
          Width = 457.323130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NUM_IM'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbEmpresa."NUM_IM"]')
          ParentFont = False
        end
        object Memo139: TfrxMemoView
          Left = 191.653680000000000000
          Top = 523.897637800000000000
          Width = 389.291590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'PETROBRAS')
          ParentFont = False
        end
        object Memo140: TfrxMemoView
          Left = 400.630180000000000000
          Top = 397.780076770000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo141: TfrxMemoView
          Left = 445.795610000000000000
          Top = 397.614410000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CEP_EMP'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbEmpresa."CEP_EMP"]')
          ParentFont = False
        end
        object Memo142: TfrxMemoView
          Left = 234.330860000000000000
          Top = 780.472433620000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NUM_JUN_COM'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbEmpresa."NUM_JUN_COM"]')
          ParentFont = False
        end
        object Memo143: TfrxMemoView
          Left = 561.259840080000000000
          Top = 68.031488740000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Folha n'#186)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line54: TfrxLineView
          Align = baWidth
          Top = 97.708720000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Picture2: TfrxPictureView
          Left = 3.779527560000000000
          Top = 3.779530000000001000
          Width = 226.771800000000000000
          Height = 90.708720000000000000
          ShowHint = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object sRepTanqueABT: TfrxSubreport
          Align = baWidth
          Top = 586.960629920000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Page = frxReport1.Page2
        end
        object SysMemo1: TfrxSysMemoView
          Left = 615.307086610000000000
          Top = 68.031496060000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PAGE#]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 385.512060000000000000
          Top = 193.889763780000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NUM_ORD'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbEmpresa."NUM_ORD"]')
          ParentFont = False
        end
      end
    end
    object pgLMC: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 20.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        Height = 1027.275707720000000000
        Top = 18.897650000000000000
        Width = 680.315400000000000000
        DataSetName = 'frxDbMaster'
        RowCount = 0
        object Line7: TfrxLineView
          Align = baWidth
          Top = 152.960730000000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          Left = 1.889763780000000000
          Top = 133.283550000000000000
          Width = 54.047244090000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Produto: ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 57.590600000000000000
          Top = 133.283550000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOM_PRD'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbMaster."NOM_PRD"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line9: TfrxLineView
          Left = 441.425480000000000000
          Top = 133.283550000000000000
          Height = 19.653543310000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line10: TfrxLineView
          Left = 561.370440000000000000
          Top = 133.283550000000000000
          Height = 19.653543310000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Memo7: TfrxMemoView
          Left = 565.149970000000000000
          Top = 133.283550000000000000
          Width = 35.149606300000000000
          Height = 18.897637800000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data: ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 604.724800000000000000
          Top = 133.283550000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DAT_LMC'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbMaster."DAT_LMC"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 445.205010000000000000
          Top = 133.283550000000000000
          Width = 52.157480310000000000
          Height = 18.897637800000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Unidade:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 503.457020000000000000
          Top = 133.283550000000000000
          Width = 54.047256300000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'UND_PRD'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbMaster."UND_PRD"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line11: TfrxLineView
          Align = baWidth
          Top = 172.590636610000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo11: TfrxMemoView
          Align = baWidth
          Top = 153.519790000000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Estoque de Abertura (medi'#231#227'o no in'#237'cio do dia)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line12: TfrxLineView
          Align = baWidth
          Top = 192.244179920000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line13: TfrxLineView
          Left = 561.259842520000000000
          Top = 134.795336610000000000
          Height = 533.669315750000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Memo12: TfrxMemoView
          Left = 564.149970000000000000
          Top = 173.078850000000000000
          Width = 103.181146300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Estoque abertura')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line14: TfrxLineView
          Left = 80.125984250000000000
          Top = 172.590636610000000000
          Height = 39.307086610000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line15: TfrxLineView
          Left = 160.251968500000000000
          Top = 172.590636610000000000
          Height = 39.307086610000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line16: TfrxLineView
          Left = 240.377952760000000000
          Top = 172.590636610000000000
          Height = 39.307086610000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line17: TfrxLineView
          Left = 320.503937010000000000
          Top = 172.590636610000000000
          Height = 39.307086610000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line18: TfrxLineView
          Left = 400.629921260000000000
          Top = 172.590636610000000000
          Height = 39.307086610000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line19: TfrxLineView
          Left = 480.755905510000000000
          Top = 172.590636610000000000
          Height = 39.307086610000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Memo13: TfrxMemoView
          Left = 1.889763780000000000
          Top = 172.968589370000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 83.149660000000000000
          Top = 172.968589370000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 162.519790000000000000
          Top = 172.968589370000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 242.669450000000000000
          Top = 172.968589370000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 324.039580000000000000
          Top = 172.968589370000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 404.409710000000000000
          Top = 172.968589370000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 483.779840000000000000
          Top = 172.968589370000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line20: TfrxLineView
          Align = baWidth
          Top = 211.897723230000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo20: TfrxMemoView
          Left = 51.692950000000000000
          Top = 172.968589370000000000
          Width = 24.566914490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'COD_TAN_01'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDbMaster."COD_TAN_01"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 133.063080000000000000
          Top = 172.968589370000000000
          Width = 22.677165350000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'COD_TAN_02'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDbMaster."COD_TAN_02"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 214.212740000000000000
          Top = 172.968589370000000000
          Width = 22.677165350000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'COD_TAN_03'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDbMaster."COD_TAN_03"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 294.023810000000000000
          Top = 172.968589370000000000
          Width = 24.566914490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'COD_TAN_04'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDbMaster."COD_TAN_04"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 373.953000000000000000
          Top = 172.968589370000000000
          Width = 22.677165350000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'COD_TAN_05'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDbMaster."COD_TAN_05"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 456.102660000000000000
          Top = 172.968589370000000000
          Width = 22.677165350000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'COD_TAN_06'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDbMaster."COD_TAN_06"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 534.913730000000000000
          Top = 172.968589370000000000
          Width = 22.677165350000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'COD_TAN_07'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDbMaster."COD_TAN_07"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 1.889763780000000000
          Top = 192.622132680000000000
          Width = 74.456702680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'EST_ABT_TAN_01'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbMaster."EST_ABT_TAN_01"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 83.149660000000000000
          Top = 192.622132680000000000
          Width = 74.456702680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'EST_ABT_TAN_02'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbMaster."EST_ABT_TAN_02"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 162.519790000000000000
          Top = 192.622132680000000000
          Width = 74.456702680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'EST_ABT_TAN_03'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbMaster."EST_ABT_TAN_03"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 242.645669290000000000
          Top = 192.622132680000000000
          Width = 74.456702680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'EST_ABT_TAN_04'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbMaster."EST_ABT_TAN_04"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 323.905511810000000000
          Top = 192.622132680000000000
          Width = 74.456702680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'EST_ABT_TAN_05'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbMaster."EST_ABT_TAN_05"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 404.409710000000000000
          Top = 192.622132680000000000
          Width = 74.456702680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'EST_ABT_TAN_06'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbMaster."EST_ABT_TAN_06"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 483.779527560000000000
          Top = 192.622132680000000000
          Width = 74.456702680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'EST_ABT_TAN_07'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbMaster."EST_ABT_TAN_07"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line21: TfrxLineView
          Align = baWidth
          Top = 231.551266540000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo34: TfrxMemoView
          Left = 1.889763780000000000
          Top = 212.275675980000000000
          Width = 201.448926300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Volume recebido no dia (em litros)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line22: TfrxLineView
          Left = 441.448818900000000000
          Top = 212.031496060000000000
          Height = 378.330708661417000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Memo35: TfrxMemoView
          Left = 444.205010000000000000
          Top = 212.275675980000000000
          Width = 103.181146300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tanque descarga')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 563.929500000000000000
          Top = 212.275675980000000000
          Width = 103.181146300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Volume recebido')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line23: TfrxLineView
          Align = baWidth
          Top = 363.834880000000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo37: TfrxMemoView
          Left = 567.149970000000000000
          Top = 192.622132680000000000
          Width = 108.472472680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'EST_ABT_TAN_TOT'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbMaster."EST_ABT_TAN_TOT"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line24: TfrxLineView
          Left = 441.448818900000000000
          Top = 344.181175590551000000
          Width = 238.866141730000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo41: TfrxMemoView
          Left = 443.984540000000000000
          Top = 344.559128350000000000
          Width = 103.181146300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total recebido')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 566.929500000000000000
          Top = 344.559128350000000000
          Width = 108.472472680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'QTD_LTR_REC'
          DataSetName = 'frxDbTotais'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbTotais."QTD_LTR_REC"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line25: TfrxLineView
          Align = baWidth
          Top = 383.488262200001000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo43: TfrxMemoView
          Left = 1.889763780000000000
          Top = 363.834880000000000000
          Width = 201.448926300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Volume vendido no dia (em litros)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 444.094488190000000000
          Top = 363.834880000000000000
          Width = 110.740206300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Volume Dispon'#237'vel')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 566.929500000000000000
          Top = 363.834718900000000000
          Width = 108.472472680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'QTD_LTR_DIS'
          DataSetName = 'frxDbTotais'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbTotais."QTD_LTR_DIS"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line26: TfrxLineView
          Align = baWidth
          Top = 403.141805510001000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line27: TfrxLineView
          Left = 50.669274250000000000
          Top = 383.488262200000000000
          Height = 206.740157480000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line28: TfrxLineView
          Left = 96.897608500000000000
          Top = 383.488262200000000000
          Height = 206.740174570000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line29: TfrxLineView
          Left = 300.582870000000000000
          Top = 383.488262200000000000
          Height = 206.740157480000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Memo46: TfrxMemoView
          Left = 1.889763780000000000
          Top = 383.866214960000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 50.252010000000000000
          Top = 383.866214960000000000
          Width = 45.354330710000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Bomba')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 139.944960000000000000
          Top = 383.866214960000000000
          Width = 158.740157480000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Encerrante de Fechamento')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 302.362400000000000000
          Top = 383.866214960000000000
          Width = 137.952814490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Encerrante de abertura')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 443.984540000000000000
          Top = 383.866214960001000000
          Width = 66.141744490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Aferi'#231#245'es')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 563.149970000000000000
          Top = 383.866214960001000000
          Width = 100.157514490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vendas no bico')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line30: TfrxLineView
          Align = baWidth
          Top = 590.606680000000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line31: TfrxLineView
          Align = baWidth
          Top = 610.259915750000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line32: TfrxLineView
          Align = baWidth
          Top = 629.913459060000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line33: TfrxLineView
          Align = baWidth
          Top = 649.567002360000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo64: TfrxMemoView
          Left = 1.889763780000000000
          Top = 590.984325200000000000
          Width = 201.448926300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Valor das vendas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line34: TfrxLineView
          Left = 374.173470000000000000
          Top = 590.606680000000000000
          Height = 311.433070866142000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Memo65: TfrxMemoView
          Left = 1.889763780000000000
          Top = 610.637868500000000000
          Width = 201.448926300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Valor das vendas do dia')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 1.889763780000000000
          Top = 630.291411810001000000
          Width = 201.448926300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Valor das vendas do m'#234's')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 1.889763780000000000
          Top = 649.944955120000000000
          Width = 201.448926300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Para uso do revendedor')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 377.952755910000000000
          Top = 590.984325200000000000
          Width = 167.433156300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vendas no dia')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 377.952755910000000000
          Top = 610.637868500000000000
          Width = 167.433156300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Estoque escritural')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 377.952755910000000000
          Top = 630.291411810001000000
          Width = 167.433156300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Estoque de fechamento')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line35: TfrxLineView
          Left = 280.440944880000000000
          Top = 610.259915750000000000
          Height = 39.307086610000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Memo71: TfrxMemoView
          Left = 377.953000000000000000
          Top = 649.944955120000000000
          Width = 167.433156300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '(-) Perdas / (+) Sobras')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line36: TfrxLineView
          Left = 374.173228350000000000
          Top = 669.220545670000000000
          Width = 305.763779530000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line37: TfrxLineView
          Align = baWidth
          Top = 902.748610000000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line38: TfrxLineView
          Align = baWidth
          Top = 922.401657800000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line39: TfrxLineView
          Align = baWidth
          Top = 942.055201100000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line40: TfrxLineView
          Top = 741.787880000000000000
          Width = 374.173228350000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo72: TfrxMemoView
          Left = 1.889763780000000000
          Top = 742.165427560000000000
          Width = 201.448926300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Observa'#231#245'es')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line41: TfrxLineView
          Left = 374.173470000000000000
          Top = 772.024120000000000000
          Width = 305.763779530000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo73: TfrxMemoView
          Left = 377.953000000000000000
          Top = 669.598498430000000000
          Width = 182.551276300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Destinado a fiscaliza'#231#227'o (ANP)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 377.953000000000000000
          Top = 772.401640710000000000
          Width = 167.433156300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Outros '#243'rg'#227'os fiscais')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Align = baWidth
          Top = 902.748610000000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Concilia'#231#227'o dos estoques (fechamento f'#237'sico)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line42: TfrxLineView
          Left = 551.370078740000000000
          Top = 922.401657800000000000
          Height = 39.307086610000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Memo76: TfrxMemoView
          Left = 553.819266220000000000
          Top = 922.779610550000000000
          Width = 122.078796300000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Estoque fechamento')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line43: TfrxLineView
          Left = 77.795280470000000000
          Top = 922.401657800000000000
          Height = 39.307086610000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line44: TfrxLineView
          Left = 154.921264720000000000
          Top = 922.401657800000000000
          Height = 39.307086610000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line45: TfrxLineView
          Left = 234.267718980000000000
          Top = 922.401657800000000000
          Height = 39.307086610000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line46: TfrxLineView
          Left = 315.173233230000000000
          Top = 922.401657800000000000
          Height = 39.307086610000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line47: TfrxLineView
          Left = 391.740157480000000000
          Top = 922.401657800000000000
          Height = 39.307086610000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line48: TfrxLineView
          Left = 470.866141730000000000
          Top = 922.401657800000000000
          Height = 39.307086610000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Memo77: TfrxMemoView
          Left = 1.559060000000000000
          Top = 922.779610550000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Left = 80.818956220000000000
          Top = 922.779610550000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 157.409556220000000000
          Top = 922.779610550000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Left = 235.779686220000000000
          Top = 922.779610550000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 317.149816220000000000
          Top = 922.779610550000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Left = 393.740416220000000000
          Top = 922.779610550000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Left = 474.110546220000000000
          Top = 922.779610550000000000
          Width = 47.244094490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tanque')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Left = 51.362246220000000000
          Top = 922.779610550000000000
          Width = 24.566914490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'COD_TAN_01'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDbMaster."COD_TAN_01"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 130.732376220000000000
          Top = 922.779610550000000000
          Width = 22.677165350000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'COD_TAN_02'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDbMaster."COD_TAN_02"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 209.102506220000000000
          Top = 922.779610550000000000
          Width = 22.677165350000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'COD_TAN_03'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDbMaster."COD_TAN_03"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Left = 287.134046220000000000
          Top = 922.779610550000000000
          Width = 24.566914490000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'COD_TAN_04'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDbMaster."COD_TAN_04"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Left = 367.063236220000000000
          Top = 922.779610550000000000
          Width = 22.677165350000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'COD_TAN_05'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDbMaster."COD_TAN_05"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Left = 445.433366220000000000
          Top = 922.779610550000000000
          Width = 22.677165350000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'COD_TAN_06'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDbMaster."COD_TAN_06"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          Left = 525.244436220000000000
          Top = 922.779610550000000000
          Width = 22.677165350000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'COD_TAN_07'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDbMaster."COD_TAN_07"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line49: TfrxLineView
          Align = baWidth
          Top = 961.708744410000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo91: TfrxMemoView
          Left = 1.779530000000000000
          Top = 942.323440000000000000
          Width = 74.456702680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'EST_FCT_TAN_01'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbMaster."EST_FCT_TAN_01"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Left = 81.039426220000000000
          Top = 942.323440000000000000
          Width = 70.677172680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'EST_FCT_TAN_02'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbMaster."EST_FCT_TAN_02"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Left = 157.630026220000000000
          Top = 942.323440000000000000
          Width = 74.456702680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'EST_FCT_TAN_03'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbMaster."EST_FCT_TAN_03"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          Left = 235.976375510000000000
          Top = 942.323440000000000000
          Width = 74.456702680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'EST_FCT_TAN_04'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbMaster."EST_FCT_TAN_04"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          Left = 317.236218030000000000
          Top = 942.323440000000000000
          Width = 70.677172680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'EST_FCT_TAN_05'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbMaster."EST_FCT_TAN_05"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          Left = 393.960886220000000000
          Top = 942.323440000000000000
          Width = 74.456702680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'EST_FCT_TAN_06'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbMaster."EST_FCT_TAN_06"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          Left = 474.330703780000000000
          Top = 942.323440000000000000
          Width = 72.566929130000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'EST_FCT_TAN_07'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbMaster."EST_FCT_TAN_07"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          Left = 555.701146220000000000
          Top = 942.323440000000000000
          Width = 119.811062680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'EST_FCT_TAN_TOT'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbMaster."EST_FCT_TAN_TOT"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line50: TfrxLineView
          Align = baWidth
          Top = 981.362287720000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo99: TfrxMemoView
          Align = baWidth
          Top = 961.708744410000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              '(*) Aten'#231#227'o - Se o resultado for negativo, pode estar havendo va' +
              'zamento de produto para o meio-ambiente')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line51: TfrxLineView
          Align = baRight
          Left = 680.315400000000000000
          Top = 107.338582680000000000
          Height = 873.826771653543000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          Top = 107.338582680000000000
          Height = 873.826771653543000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Memo100: TfrxMemoView
          Left = 566.929500000000000000
          Top = 590.984325200000000000
          Width = 108.472472680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'QTD_LTR_DIA'
          DataSetName = 'frxDbTotais'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbTotais."QTD_LTR_DIA"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          Left = 566.929500000000000000
          Top = 610.637868500000000000
          Width = 108.472472680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'QTD_LTR_ESC'
          DataSetName = 'frxDbTotais'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbTotais."QTD_LTR_ESC"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          Left = 566.929500000000000000
          Top = 630.291411810000000000
          Width = 108.472472680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'EST_FCT_TAN_TOT'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbMaster."EST_FCT_TAN_TOT"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          Left = 566.929500000000000000
          Top = 649.944955120000000000
          Width = 108.472472680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'VLR_VAR'
          DataSetName = 'frxDbTotais'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbTotais."VLR_VAR"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          Left = 283.464750000000000000
          Top = 610.637868500000000000
          Width = 85.795292680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'VLR_VEN_DIA'
          DataSetName = 'frxDbTotais'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbTotais."VLR_VEN_DIA"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          Left = 283.464750000000000000
          Top = 630.291411810000000000
          Width = 85.795292680000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'VLR_VEN_MES'
          DataSetName = 'frxDbTotais'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbTotais."VLR_VEN_MES"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 107.488250000000000000
          Width = 680.315400000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Left = 1.889763780000000000
          Top = 110.488250000000000000
          Width = 555.590910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Livro de Movimenta'#231#227'o de Combust'#237'veis (LMC)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 133.504020000000000000
          Width = 680.315400000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          Left = 561.259842520000000000
          Top = 107.582696690000000000
          Height = 25.322834650000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo3: TfrxMemoView
          Left = 565.039370080000000000
          Top = 110.606318740000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Folha n'#186)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line6: TfrxLineView
          Align = baWidth
          Top = 102.488250000000000000
          Width = 680.315400000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Top = 4.779530000000001000
          Width = 226.771800000000000000
          Height = 90.708720000000000000
          ShowHint = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Line4: TfrxLineView
          Align = baWidth
          Top = 985.898270000000000000
          Width = 680.315400000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Top = 987.898270000000000000
          Width = 269.480454090000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'NOM_EMP'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbEmpresa."NOM_EMP"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 42.370130000000000000
          Top = 1000.575450000000000000
          Width = 235.464684090000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'NUM_CNPJ'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbEmpresa."NUM_CNPJ"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 7.559060000000000000
          Top = 1013.252630000000000000
          Width = 79.370078740157500000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Inscri'#231#227'o Estadual n'#186)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 389.291590000000000000
          Top = 988.055159610000000000
          Width = 280.819044090000000000
          Height = 11.338582680000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'END_EMP_CC'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbEmpresa."END_EMP_CC"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo109: TfrxMemoView
          Left = 389.291590000000000000
          Top = 1000.417364330000000000
          Width = 280.819044090000000000
          Height = 11.338582680000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'CID_EMP_CC'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbEmpresa."CID_EMP_CC"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo110: TfrxMemoView
          Left = 389.291590000000000000
          Top = 1013.157521810000000000
          Width = 280.819044090000000000
          Height = 11.338582680000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'TEL_EMP'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbEmpresa."TEL_EMP"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object sRepVenda: TfrxSubreport
          Align = baWidth
          Top = 404.787401570000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Page = frxReport1.Page3
        end
        object Memo52: TfrxMemoView
          Left = 7.559060000000000000
          Top = 1000.551181100000000000
          Width = 34.015748031496100000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ n'#186)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 87.724490000000000000
          Top = 1013.291338580000000000
          Width = 190.110324090000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'NUM_IE'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbEmpresa."NUM_IE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 1.889763780000000000
          Top = 766.024120000000000000
          Width = 366.614410000000000000
          Height = 120.944960000000000000
          ShowHint = False
          DataField = 'OBS_LMC'
          DataSetName = 'frxDbMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbMaster."OBS_LMC"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 98.267780000000000000
          Top = 384.000000000000000000
          Width = 37.795270710000000000
          Height = 18.897637800000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Bico')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line5: TfrxLineView
          Left = 138.063080000000000000
          Top = 383.622047240000000000
          Height = 206.740174570000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object sRepRecebimento: TfrxSubreport
          Align = baWidth
          Top = 233.330860000000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Page = frxReport1.Page1
        end
        object SysMemo2: TfrxSysMemoView
          Left = 616.063390000000000000
          Top = 110.740157480000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PAGE#]')
          ParentFont = False
        end
      end
    end
    object pgFechamento: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData5: TfrxMasterData
        Height = 1026.693570000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSetName = 'frxDbEmpresa'
        RowCount = 0
        object Memo145: TfrxMemoView
          Align = baWidth
          Top = 120.472480000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Livro de Movimenta'#231#227'o de Combust'#237'veis (L.M.C.)')
          ParentFont = False
        end
        object Memo146: TfrxMemoView
          Align = baWidth
          Top = 147.913420000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '(Portaria n.'#186' 26, 13/11/1992 do Departamento Nacional de Combust' +
              #237'veis)')
          ParentFont = False
        end
        object Memo148: TfrxMemoView
          Align = baWidth
          Top = 241.535560000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Termo de Encerramento')
          ParentFont = False
        end
        object Memo149: TfrxMemoView
          Align = baWidth
          Top = 303.921460000000000000
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            
              '           Cont'#233'm este livro [qtd_pag] ([ext_qtd_pag]) folhas nu' +
              'meradas eletronicamente, do n.'#186' 1 ao n.'#186' [qtd_pag] e serviu para' +
              ' o lan'#231'amento das opera'#231#245'es do estabelecimento do contribuinte a' +
              'baixo identifica:')
          ParentFont = False
        end
        object Memo150: TfrxMemoView
          Top = 355.527830000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nome:')
          ParentFont = False
        end
        object Memo151: TfrxMemoView
          Top = 376.764070000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Memo152: TfrxMemoView
          Top = 397.779840000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Bairro:')
          ParentFont = False
        end
        object Memo153: TfrxMemoView
          Top = 418.779840000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cidade:')
          ParentFont = False
        end
        object Memo154: TfrxMemoView
          Top = 439.457020000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Estado:')
          ParentFont = False
        end
        object Memo155: TfrxMemoView
          Top = 461.134200000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Inscri'#231#227'o Estadual:')
          ParentFont = False
        end
        object Memo156: TfrxMemoView
          Top = 482.149970000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo157: TfrxMemoView
          Top = 503.165740000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Inscri'#231#227'o Municipal:')
          ParentFont = False
        end
        object Memo158: TfrxMemoView
          Top = 523.858690000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Distribuidora com a qual opera:')
          ParentFont = False
        end
        object Memo159: TfrxMemoView
          Top = 564.772110000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Capacidade nominal de armazenamento:')
          ParentFont = False
        end
        object Memo160: TfrxMemoView
          Top = 780.362710000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Registrado na junta comercial sob n.'#186)
          ParentFont = False
        end
        object Memo161: TfrxMemoView
          Align = baWidth
          Top = 832.953310000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DSC_DAT_FIM_CC'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDbEmpresa."DSC_DAT_FIM_CC"]')
          ParentFont = False
        end
        object Line55: TfrxLineView
          Align = baCenter
          Left = 230.551330000000000000
          Top = 912.528140000000000000
          Width = 257.008040000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo162: TfrxMemoView
          Align = baWidth
          Top = 912.528140000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'NOM_RSP'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDbEmpresa."NOM_RSP"]')
          ParentFont = False
        end
        object Memo163: TfrxMemoView
          Align = baWidth
          Top = 927.646260000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CPF_RSP'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDbEmpresa."CPF_RSP"]')
          ParentFont = False
        end
        object Line56: TfrxLineView
          Align = baCenter
          Left = 230.551330000000000000
          Top = 988.677800000000000000
          Width = 257.008040000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo164: TfrxMemoView
          Align = baWidth
          Top = 988.677800000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'NOM_CTD'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDbEmpresa."NOM_CTD"]')
          ParentFont = False
        end
        object Memo165: TfrxMemoView
          Align = baWidth
          Top = 1003.795920000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CRC_CTD'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDbEmpresa."CRC_CTD"]')
          ParentFont = False
        end
        object Memo166: TfrxMemoView
          Left = 48.133890000000000000
          Top = 355.393700790000000000
          Width = 532.913730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOM_EMP'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbEmpresa."NOM_EMP"]')
          ParentFont = False
        end
        object Memo167: TfrxMemoView
          Left = 67.165430000000000000
          Top = 376.692913390000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'END_EMP'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbEmpresa."END_EMP"]')
          ParentFont = False
        end
        object Memo168: TfrxMemoView
          Left = 45.165430000000000000
          Top = 397.614173230000000000
          Width = 347.716760000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BAI_EMP'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbEmpresa."BAI_EMP"]')
          ParentFont = False
        end
        object Memo169: TfrxMemoView
          Left = 52.165430000000000000
          Top = 418.913385830000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CID_EMP'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbEmpresa."CID_EMP"]')
          ParentFont = False
        end
        object Memo170: TfrxMemoView
          Left = 52.165430000000000000
          Top = 439.456692910000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'UF_EMP'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbEmpresa."UF_EMP"]')
          ParentFont = False
        end
        object Memo171: TfrxMemoView
          Left = 119.944960000000000000
          Top = 461.133858270000000000
          Width = 461.102660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NUM_IE'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbEmpresa."NUM_IE"]')
          ParentFont = False
        end
        object Memo172: TfrxMemoView
          Left = 45.133890000000000000
          Top = 482.055118110000000000
          Width = 536.693260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NUM_CNPJ'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbEmpresa."NUM_CNPJ"]')
          ParentFont = False
        end
        object Memo173: TfrxMemoView
          Left = 123.740260000000000000
          Top = 503.354330710000000000
          Width = 457.323130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NUM_IM'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbEmpresa."NUM_IM"]')
          ParentFont = False
        end
        object Memo174: TfrxMemoView
          Left = 191.653680000000000000
          Top = 523.897637800000000000
          Width = 389.291590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'PETROBRAS')
          ParentFont = False
        end
        object Memo175: TfrxMemoView
          Left = 400.630180000000000000
          Top = 397.780076770000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo176: TfrxMemoView
          Left = 445.795610000000000000
          Top = 397.614410000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CEP_EMP'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbEmpresa."CEP_EMP"]')
          ParentFont = False
        end
        object Memo177: TfrxMemoView
          Left = 234.330860000000000000
          Top = 780.472433620000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NUM_JUN_COM'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbEmpresa."NUM_JUN_COM"]')
          ParentFont = False
        end
        object Memo178: TfrxMemoView
          Left = 561.259840080000000000
          Top = 68.031488740000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Folha n'#186)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line57: TfrxLineView
          Align = baWidth
          Top = 97.708720000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Picture3: TfrxPictureView
          Left = 3.779527560000000000
          Top = 3.779530000000000000
          Width = 226.771800000000000000
          Height = 90.708720000000000000
          ShowHint = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object sRepTanqueFCT: TfrxSubreport
          Align = baWidth
          Top = 586.960629920000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Page = frxReport1.Page4
        end
        object SysMemo3: TfrxSysMemoView
          Left = 615.307086610000000000
          Top = 68.031540000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PAGE#]')
          ParentFont = False
        end
        object Memo144: TfrxMemoView
          Left = 287.244094488189000000
          Top = 193.889763780000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'N.'#186' de Ordem:')
          ParentFont = False
        end
        object Memo147: TfrxMemoView
          Left = 385.511811023622000000
          Top = 193.889763780000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NUM_ORD'
          DataSetName = 'frxDbEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbEmpresa."NUM_ORD"]')
          ParentFont = False
        end
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData3: TfrxMasterData
        Height = 17.007874020000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSetName = 'frxDbVendido'
        RowCount = 0
        object Memo58: TfrxMemoView
          Left = 1.889763780000000000
          Width = 47.244094490000000000
          Height = 17.007874020000000000
          ShowHint = False
          DataField = 'COD_TAN'
          DataSetName = 'frxDbVendido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDbVendido."COD_TAN"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 51.267716540000000000
          Width = 45.354330710000000000
          Height = 17.007874020000000000
          ShowHint = False
          DataField = 'COD_BOM'
          DataSetName = 'frxDbVendido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDbVendido."COD_BOM"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 139.842519685039000000
          Width = 158.740157480315000000
          Height = 17.007874020000000000
          ShowHint = False
          DataField = 'VLR_ENC_FCT'
          DataSetName = 'frxDbVendido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbVendido."VLR_ENC_FCT"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 302.362204724409000000
          Width = 137.952755905512000000
          Height = 17.007874020000000000
          ShowHint = False
          DataField = 'VLR_ENC_ABT'
          DataSetName = 'frxDbVendido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbVendido."VLR_ENC_ABT"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 447.874015750000000000
          Width = 108.472472680000000000
          Height = 17.007874015748000000
          ShowHint = False
          DataField = 'VLR_AFR'
          DataSetName = 'frxDbVendido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbVendido."VLR_AFR"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 566.929133860000000000
          Width = 108.472472680000000000
          Height = 17.007874015748000000
          ShowHint = False
          DataField = 'VLR_VEN_BIC'
          DataSetName = 'frxDbVendido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbVendido."VLR_VEN_BIC"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 99.267716535433100000
          Width = 37.795275590551200000
          Height = 17.007874020000000000
          ShowHint = False
          DataField = 'COD_BIC'
          DataSetName = 'frxDbVendido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDbVendido."COD_BIC"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
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
      object MasterData2: TfrxMasterData
        Height = 17.141732290000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSetName = 'frxDbRecebido'
        RowCount = 0
        object Memo106: TfrxMemoView
          Left = 568.819266220000000000
          Width = 106.582677170000000000
          Height = 17.007874015748000000
          ShowHint = False
          DataField = 'QTD_LTR'
          DataSetName = 'frxDbRecebido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDbRecebido."QTD_LTR"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          Left = 445.984254410000000000
          Top = 0.133858270000001000
          Width = 106.582677170000000000
          Height = 17.007874015748000000
          ShowHint = False
          DataField = 'COD_TAN'
          DataSetName = 'frxDbRecebido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDbRecebido."COD_TAN"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          Left = 1.889763780000000000
          Top = 0.133858270000001000
          Width = 428.598637560000000000
          Height = 17.007874020000000000
          OnBeforePrint = 'Memo40OnBeforePrint'
          ShowHint = False
          DataField = 'DSC_OBS'
          DataSetName = 'frxDbRecebido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbRecebido."DSC_OBS"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData6: TfrxMasterData
        Height = 18.897650000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSetName = 'frxDbTanque'
        RowCount = 0
        object Memo180: TfrxMemoView
          Left = 7.559060000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOM_PRD'
          DataSetName = 'frxDbTanque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbTanque."NOM_PRD"]')
          ParentFont = False
        end
        object Memo181: TfrxMemoView
          Left = 434.645950000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CAP_MAX'
          DataSetName = 'frxDbTanque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbTanque."CAP_MAX"]')
          ParentFont = False
        end
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData7: TfrxMasterData
        Height = 18.897650000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSetName = 'frxDbTanque'
        RowCount = 0
        object Memo182: TfrxMemoView
          Left = 7.559060000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOM_PRD'
          DataSetName = 'frxDbTanque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbTanque."NOM_PRD"]')
          ParentFont = False
        end
        object Memo183: TfrxMemoView
          Left = 434.645950000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CAP_MAX'
          DataSetName = 'frxDbTanque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbTanque."CAP_MAX"]')
          ParentFont = False
        end
      end
    end
  end
  object qrCombustivel: TZQuery
    Connection = frmmodulo.Conexao
    CachedUpdates = True
    SQL.Strings = (
      'select * from CADCOMBUSTIVEL')
    Params = <>
    Left = 8
    Top = 208
    object qrCombustivelNOME: TWideStringField
      FieldName = 'NOME'
      Size = 30
    end
    object qrCombustivelPR_COMPRA: TFloatField
      FieldName = 'PR_COMPRA'
    end
    object qrCombustivelPR_CUSTO: TFloatField
      FieldName = 'PR_CUSTO'
    end
    object qrCombustivelPR_VENDA: TFloatField
      FieldName = 'PR_VENDA'
    end
    object qrCombustivelCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
  end
  object qrApoio: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 8
    Top = 320
  end
end
