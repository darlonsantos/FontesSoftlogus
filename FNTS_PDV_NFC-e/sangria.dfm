object frmSangria: TfrmSangria
  Left = 493
  Top = 319
  BorderStyle = bsDialog
  Caption = 'Retirada'
  ClientHeight = 164
  ClientWidth = 261
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
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 130
    Width = 261
    Height = 2
    Align = alBottom
    ExplicitTop = 111
  end
  object Bevel2: TBevel
    Left = 0
    Top = 32
    Width = 261
    Height = 2
    Align = alTop
  end
  object Label1: TLabel
    Left = 27
    Top = 60
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
  object Panel1: TPanel
    Left = 0
    Top = 132
    Width = 261
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    Color = 15830313
    TabOrder = 1
    ExplicitTop = 113
    object bt_ok: TButton
      Left = 53
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Confirmar'
      TabOrder = 0
      OnClick = bt_okClick
    end
    object bt_cancelar: TButton
      Left = 133
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
    Width = 261
    Height = 32
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Sangria de Caixa'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
  end
  object ed_valor: TRzNumericEdit
    Left = 80
    Top = 57
    Width = 156
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOnEnter = True
    TabOrder = 0
    IntegersOnly = False
    DisplayFormat = 'R$ ###,###,##0.00'
  end
  object pop_fechamento: TAdvPopupMenu
    MenuStyler = frmModulo.estilo_menu
    Version = '2.5.4.3'
    Left = 168
    Top = 80
    object MenuFiscal1: TMenuItem
      Caption = 'Menu Fiscal'
      ShortCut = 119
      OnClick = MenuFiscal1Click
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = Cancelar1Click
    end
  end
  object XPManifest1: TXPManifest
    Left = 160
    Top = 16
  end
end
