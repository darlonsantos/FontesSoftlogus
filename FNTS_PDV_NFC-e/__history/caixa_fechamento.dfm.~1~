object frmCaixa_Fechamento: TfrmCaixa_Fechamento
  Left = 225
  Top = 56
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Caixa - Fechamento'
  ClientHeight = 492
  ClientWidth = 615
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pop_fechamento
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 0
    Top = 95
    Width = 615
    Height = 2
    Align = alTop
    ExplicitWidth = 652
  end
  object Panel1: TPanel
    Left = 0
    Top = 441
    Width = 615
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object bt_ok: TButton
      Left = 200
      Top = 2
      Width = 90
      Height = 27
      Caption = '&Fechar Caixa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = bt_okClick
    end
    object bt_cancelar: TButton
      Left = 296
      Top = 2
      Width = 90
      Height = 27
      Caption = 'Esc|Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = bt_cancelarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 42
    Width = 615
    Height = 53
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    Enabled = False
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      Left = 0
      Top = 7
      Width = 105
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Data do Movimento:'
    end
    object Label2: TLabel
      Left = 200
      Top = 7
      Width = 57
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Operador:'
    end
    object Label3: TLabel
      Left = 0
      Top = 31
      Width = 105
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'N'#250'mero do ECF:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ed_operador: TRzEdit
      Left = 264
      Top = 4
      Width = 169
      Height = 21
      TabOrder = 0
    end
    object ed_data: TDateEdit
      Left = 112
      Top = 4
      Width = 81
      Height = 21
      ButtonWidth = 0
      NumGlyphs = 2
      TabOrder = 1
    end
    object ed_ecf: TRzEdit
      Left = 112
      Top = 28
      Width = 321
      Height = 21
      TabOrder = 2
    end
    object bt_cupom_encerrante: TButton
      Left = 644
      Top = 22
      Width = 75
      Height = 25
      Caption = 'Cp Encerrante'
      TabOrder = 3
      Visible = False
      OnClick = bt_cupom_encerranteClick
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 97
    Width = 615
    Height = 344
    ActivePage = TabSheet1
    Align = alClient
    MultiLine = True
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Resumo'
      object grid_resumo: TNextGrid
        Left = 0
        Top = 0
        Width = 607
        Height = 316
        Align = alClient
        HideScrollBar = False
        Options = [goGrid, goHeader, goSelectFullRow]
        TabOrder = 0
        TabStop = True
        OnCellFormating = grid_resumoCellFormating
        object NxNumberColumn2: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'ID'
          ParentFont = False
          Position = 0
          SortType = stNumeric
          Width = 24
          FormatMask = '0#'
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxTextColumn1: TNxTextColumn
          DefaultWidth = 389
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Descri'#231#227'o'
          ParentFont = False
          Position = 1
          SortType = stAlphabetic
          Width = 389
        end
        object NxNumberColumn1: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 83
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Valor-R$'
          ParentFont = False
          Position = 2
          SortType = stNumeric
          Width = 83
          FormatMask = '###,###,##0.00'
          Increment = 1.000000000000000000
          Precision = 0
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Formas Pagto.'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 763
      ExplicitHeight = 0
      object grid_forma: TNextGrid
        Left = 0
        Top = 0
        Width = 607
        Height = 316
        Align = alClient
        HideScrollBar = False
        Options = [goGrid, goHeader, goSelectFullRow]
        TabOrder = 0
        TabStop = True
        ExplicitWidth = 763
        object NxNumberColumn3: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'ID'
          ParentFont = False
          Position = 0
          SortType = stNumeric
          Width = 24
          FormatMask = '0#'
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxTextColumn2: TNxTextColumn
          DefaultWidth = 385
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Descri'#231#227'o'
          ParentFont = False
          Position = 1
          SortType = stAlphabetic
          Width = 385
        end
        object NxNumberColumn4: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 83
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Valor-R$'
          ParentFont = False
          Position = 2
          SortType = stNumeric
          Width = 83
          FormatMask = '###,###,##0.00'
          Increment = 1.000000000000000000
          Precision = 0
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Al'#237'quotas'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 763
      ExplicitHeight = 0
      object grid_aliquota: TNextGrid
        Left = 0
        Top = 0
        Width = 607
        Height = 316
        Align = alClient
        HideScrollBar = False
        Options = [goGrid, goHeader, goSelectFullRow]
        TabOrder = 0
        TabStop = True
        ExplicitWidth = 763
        object NxNumberColumn5: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'ID'
          ParentFont = False
          Position = 0
          SortType = stNumeric
          Width = 24
          FormatMask = '0#'
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxTextColumn3: TNxTextColumn
          DefaultWidth = 386
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Descri'#231#227'o'
          ParentFont = False
          Position = 1
          SortType = stAlphabetic
          Width = 386
        end
        object NxNumberColumn6: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 83
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Valor-R$'
          ParentFont = False
          Position = 2
          SortType = stNumeric
          Width = 83
          FormatMask = '###,###,##0.00'
          Increment = 1.000000000000000000
          Precision = 0
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Outros'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 763
      ExplicitHeight = 0
      object grid_outros: TNextGrid
        Left = 0
        Top = 0
        Width = 607
        Height = 316
        Align = alClient
        HideScrollBar = False
        Options = [goGrid, goHeader, goSelectFullRow]
        TabOrder = 0
        TabStop = True
        ExplicitWidth = 763
        object NxNumberColumn7: TNxTextColumn
          Alignment = taRightJustify
          DefaultValue = '0'
          DefaultWidth = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'ID'
          Options = [coCanClick, coCanInput, coCanSort, coPublicUsing]
          ParentFont = False
          Position = 0
          SortType = stAlphabetic
          Width = 24
        end
        object NxTextColumn4: TNxTextColumn
          DefaultWidth = 385
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Descri'#231#227'o'
          ParentFont = False
          Position = 1
          SortType = stAlphabetic
          Width = 385
        end
        object NxNumberColumn8: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 83
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Valor-R$'
          ParentFont = False
          Position = 2
          SortType = stNumeric
          Width = 83
          FormatMask = '###,###,##0.00'
          Increment = 1.000000000000000000
          Precision = 0
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Pr'#233'-vendas'
      ImageIndex = 4
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 763
      ExplicitHeight = 0
      object grid_venda: TNextGrid
        Left = 0
        Top = 64
        Width = 763
        Height = 316
        HideScrollBar = False
        Options = [goGrid, goHeader, goSelectFullRow]
        TabOrder = 0
        TabStop = True
        object NxTextColumn8: TNxTextColumn
          DefaultWidth = 43
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'C'#243'digo'
          ParentFont = False
          Position = 0
          SortType = stAlphabetic
          Width = 43
        end
        object NxDateColumn2: TNxDateColumn
          DefaultValue = '16/06/2009'
          DefaultWidth = 71
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Data'
          ParentFont = False
          Position = 1
          SortType = stDate
          Width = 71
          NoneCaption = 'None'
          TodayCaption = 'Today'
        end
        object NxTextColumn9: TNxTextColumn
          DefaultWidth = 221
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Cliente'
          ParentFont = False
          Position = 2
          SortType = stAlphabetic
          Width = 221
        end
        object NxNumberColumn14: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 64
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Valor'
          ParentFont = False
          Position = 3
          SortType = stNumeric
          Width = 64
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxTextColumn10: TNxTextColumn
          DefaultWidth = 93
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Vendedor'
          ParentFont = False
          Position = 4
          SortType = stAlphabetic
          Width = 93
        end
        object NxNumberColumn15: TNxNumberColumn
          Alignment = taLeftJustify
          DefaultValue = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'cod_cliente'
          ParentFont = False
          Position = 5
          SortType = stNumeric
          Visible = False
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn16: TNxNumberColumn
          Alignment = taLeftJustify
          DefaultValue = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'cod_vendedor'
          ParentFont = False
          Position = 6
          SortType = stNumeric
          Visible = False
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn17: TNxNumberColumn
          Alignment = taLeftJustify
          DefaultValue = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'desconto'
          ParentFont = False
          Position = 7
          SortType = stNumeric
          Visible = False
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn18: TNxNumberColumn
          Alignment = taLeftJustify
          DefaultValue = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'acrescimo'
          ParentFont = False
          Position = 8
          SortType = stNumeric
          Visible = False
          Increment = 1.000000000000000000
          Precision = 0
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'DAVs'
      ImageIndex = 5
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 763
      ExplicitHeight = 0
      object grid_dav: TNextGrid
        Left = -3
        Top = 72
        Width = 763
        Height = 316
        HideScrollBar = False
        Options = [goGrid, goHeader, goSelectFullRow]
        TabOrder = 0
        TabStop = True
        object NxTextColumn5: TNxTextColumn
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'COO'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 0
          SortType = stAlphabetic
        end
        object NxTextColumn12: TNxTextColumn
          DefaultWidth = 111
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'N'#250'mero'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 1
          SortType = stAlphabetic
          Width = 111
        end
        object NxTextColumn7: TNxTextColumn
          DefaultWidth = 209
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'T'#237'tulo'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 2
          SortType = stAlphabetic
          Width = 209
        end
        object NxTextColumn11: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 93
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Valor-R$'
          Header.Alignment = taCenter
          Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
          ParentFont = False
          Position = 3
          SortType = stNumeric
          Width = 93
          FormatMask = '###,###,##0.00'
          Increment = 1.000000000000000000
          Precision = 0
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Abast.Pendentes'
      ImageIndex = 6
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 763
      ExplicitHeight = 0
      object grid_abastecimento: TNextGrid
        Left = 3
        Top = 56
        Width = 763
        Height = 275
        AppearanceOptions = [aoHighlightSlideCells]
        HideScrollBar = False
        Options = [goGrid, goHeader, goSelectFullRow]
        TabOrder = 0
        TabStop = True
        object NxDateColumn1: TNxDateColumn
          DefaultValue = '19/08/2009'
          DefaultWidth = 66
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Data'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 0
          SortType = stDate
          Width = 66
          NoneCaption = 'None'
          TodayCaption = 'Today'
        end
        object NxTextColumn6: TNxTextColumn
          DefaultWidth = 36
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Hora'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 1
          SortType = stAlphabetic
          Width = 36
        end
        object NxTextColumn13: TNxTextColumn
          DefaultWidth = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'N'#186
          Header.Alignment = taCenter
          ParentFont = False
          Position = 2
          SortType = stAlphabetic
          Width = 23
        end
        object NxTextColumn14: TNxTextColumn
          DefaultWidth = 27
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Bico'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 3
          SortType = stAlphabetic
          Width = 27
        end
        object NxTextColumn15: TNxTextColumn
          DefaultWidth = 100
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Produto'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 4
          SortType = stAlphabetic
          Width = 100
        end
        object NxNumberColumn20: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 44
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Qtde.'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 5
          SortType = stNumeric
          Width = 44
          FormatMask = '###,###,##0.000'
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn21: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 44
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Unit'#225'rio'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 6
          SortType = stNumeric
          Width = 44
          FormatMask = '###,###,##0.000'
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn22: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 54
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Total-R$'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 7
          SortType = stNumeric
          Width = 54
          FormatMask = '###,###,##0.00'
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn23: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 51
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'E.I.'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 8
          SortType = stNumeric
          Width = 51
          FormatMask = '###,###,##0.000'
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn24: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 52
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'E.F.'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 9
          SortType = stNumeric
          Width = 52
          FormatMask = '###,###,##0.000'
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxNumberColumn25: TNxNumberColumn
          DefaultValue = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Codigo'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 10
          SortType = stNumeric
          Visible = False
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxTextColumn17: TNxTextColumn
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Tanque'
          ParentFont = False
          Position = 11
          SortType = stAlphabetic
          Visible = False
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 275
        Width = 607
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitWidth = 763
        object Button1: TButton
          Left = 176
          Top = 8
          Width = 161
          Height = 25
          Caption = 'Finalizar Todos'
          TabOrder = 0
          OnClick = Button1Click
        end
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Mesas Abert.'
      ImageIndex = 7
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 763
      ExplicitHeight = 0
      object grid_mesa: TNextGrid
        Left = 0
        Top = 64
        Width = 763
        Height = 316
        AppearanceOptions = [aoHighlightSlideCells]
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HideScrollBar = False
        Options = [goGrid, goHeader, goSelectFullRow]
        ParentFont = False
        TabOrder = 0
        TabStop = True
        object NxNumberColumn9: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 78
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'N'#250'mero'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 0
          SortType = stNumeric
          Width = 78
          Increment = 1.000000000000000000
          Precision = 0
        end
        object NxDateColumn3: TNxDateColumn
          DefaultValue = '26/08/2009'
          DefaultWidth = 102
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Data'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 1
          SortType = stDate
          Width = 102
          NoneCaption = 'None'
          TodayCaption = 'Today'
        end
        object NxTextColumn16: TNxTextColumn
          DefaultWidth = 98
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Hora'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 2
          SortType = stAlphabetic
          Width = 98
        end
        object NxNumberColumn10: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 105
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Consumo'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 3
          SortType = stNumeric
          Width = 105
          FormatMask = '###,###,##0.00'
          Increment = 1.000000000000000000
          Precision = 0
        end
      end
    end
    object TabFechamento: TTabSheet
      Caption = 'Fechamento'
      ImageIndex = 8
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 763
      ExplicitHeight = 0
      object GridFechamento: TNextGrid
        Left = 0
        Top = 0
        Width = 607
        Height = 316
        Align = alClient
        AppearanceOptions = [aoHighlightSlideCells]
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        GridLinesStyle = lsActiveRows
        HideScrollBar = False
        Options = [goHeader, goSelectFullRow]
        ParentFont = False
        TabOrder = 0
        TabStop = True
        ExplicitWidth = 763
        object NxNumberColumn11: TNxTextColumn
          Alignment = taRightJustify
          DefaultValue = '0'
          DefaultWidth = 29
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'C'#243'd'
          Options = [coCanClick, coCanInput, coCanSort, coPublicUsing]
          ParentFont = False
          Position = 0
          SortType = stAlphabetic
          Width = 29
        end
        object NxTextColumn18: TNxTextColumn
          DefaultWidth = 172
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Operador'
          ParentFont = False
          Position = 1
          SortType = stAlphabetic
          Width = 172
        end
        object NxTextColumn19: TNxTextColumn
          DefaultWidth = 207
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Forma'
          ParentFont = False
          Position = 2
          SortType = stAlphabetic
          Width = 207
        end
        object NxNumberColumn12: TNxTextColumn
          Alignment = taRightJustify
          DefaultValue = '0'
          DefaultWidth = 110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Valor'
          Options = [coCanClick, coCanInput, coCanSort, coPublicUsing]
          ParentFont = False
          Position = 3
          SortType = stAlphabetic
          Width = 110
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 473
    Width = 615
    Height = 19
    Panels = <>
  end
  object pnTitulo: TPanel
    Left = 0
    Top = 0
    Width = 615
    Height = 42
    Align = alTop
    Caption = 'Fechamento do CAIXA'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 4
    object Image5: TImage
      Left = 1
      Top = 1
      Width = 48
      Height = 40
      Align = alLeft
      AutoSize = True
      Center = True
      Proportional = True
    end
  end
  object query: TIBCQuery
    Connection = frmModulo.conexao
    Left = 49
    Top = 217
  end
  object pop_fechamento: TAdvPopupMenu
    MenuStyler = frmModulo.estilo_menu
    Version = '2.5.4.3'
    Left = 121
    Top = 137
    object InformaesdoECF1: TMenuItem
      Caption = 'Informa'#231#245'es do ECF'
      object VendaBruta1: TMenuItem
        Caption = 'Venda Bruta '
        OnClick = VendaBruta1Click
      end
      object otalizadorGeral1: TMenuItem
        Caption = 'Totalizador Geral'
        OnClick = otalizadorGeral1Click
      end
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object MenuFiscal1: TMenuItem
      Caption = 'Menu Fiscal'
      ShortCut = 119
      Visible = False
      OnClick = MenuFiscal1Click
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = Cancelar1Click
    end
  end
  object qrPre_Venda: TIBCQuery
    Connection = frmModulo.Conexao_Servidor
    SQL.Strings = (
      'select '
      '  c000074.*,'
      '  c000007.Nome Cliente,'
      '  c000008.Nome Vendedor'
      'from '
      '  c000074, c000007, c000008'
      'where'
      '  c000074.codcliente = c000007.codigo and'
      '  c000074.codvendedor = c000008.codigo')
    Left = 9
    Top = 217
  end
  object ibcqryArquivo: TIBCQuery
    Left = 17
    Top = 297
  end
  object qrDAV: TIBCQuery
    Connection = frmModulo.conexao
    Left = 81
    Top = 217
  end
  object qrAbastecimento: TIBCQuery
    Connection = frmModulo.conexao
    Left = 17
    Top = 353
  end
  object ibcqryMesa_OLD: TIBCQuery
    SQL.Strings = (
      'select '
      '  c000074.*,'
      '  c000007.Nome Cliente,'
      '  c000008.Nome Vendedor'
      'from '
      '  c000074, c000007, c000008'
      'where'
      '  c000074.codcliente = c000007.codigo and'
      '  c000074.codvendedor = c000008.codigo')
    Left = 353
    Top = 257
  end
  object qrEncerrante: TIBCQuery
    Connection = frmModulo.conexao
    Left = 121
    Top = 217
  end
  object qrFechamento: TIBCQuery
    Connection = frmModulo.conexao
    Left = 45
    Top = 145
  end
end
