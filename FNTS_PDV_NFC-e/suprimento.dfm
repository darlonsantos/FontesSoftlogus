object frmSuprimento: TfrmSuprimento
  Left = 507
  Top = 248
  BorderStyle = bsDialog
  Caption = 'Suprimento'
  ClientHeight = 312
  ClientWidth = 266
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pop_fechamento
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 259
    Width = 266
    Height = 2
    Align = alBottom
    ExplicitTop = 221
    ExplicitWidth = 252
  end
  object Bevel2: TBevel
    Left = 0
    Top = 32
    Width = 266
    Height = 2
    Align = alTop
    ExplicitWidth = 252
  end
  object Label1: TLabel
    Left = 49
    Top = 179
    Width = 43
    Height = 19
    Caption = 'Valor:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 49
    Top = 47
    Width = 51
    Height = 19
    Caption = 'Forma:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 261
    Width = 266
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 223
    ExplicitWidth = 252
    object bt_ok: TButton
      Left = 49
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Confirmar'
      TabOrder = 0
      OnClick = bt_okClick
    end
    object bt_cancelar: TButton
      Left = 129
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = bt_cancelarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 266
    Height = 32
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Suprimento de Caixa'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
    ExplicitWidth = 252
  end
  object ed_valor: TRzNumericEdit
    Left = 48
    Top = 204
    Width = 169
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOnEnter = True
    TabOrder = 1
    IntegersOnly = False
    DisplayFormat = 'R$ ###,###,##0.00'
  end
  object list_Forma: TListBox
    Left = 51
    Top = 72
    Width = 166
    Height = 101
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyPress = list_FormaKeyPress
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 293
    Width = 266
    Height = 19
    Panels = <>
    ExplicitTop = 255
    ExplicitWidth = 252
  end
  object pop_fechamento: TAdvPopupMenu
    MenuStyler = frmModulo.estilo_menu
    Version = '2.5.4.3'
    Left = 192
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
end
