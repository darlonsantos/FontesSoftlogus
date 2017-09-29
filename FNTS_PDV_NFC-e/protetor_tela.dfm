object frmProtetor_tela: TfrmProtetor_tela
  Left = 3
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmProtetor_tela'
  ClientHeight = 532
  ClientWidth = 790
  Color = clBlack
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnKeyPress = FormKeyPress
  DesignSize = (
    790
    532)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 120
    Top = 272
    Width = 594
    Height = 77
    Alignment = taCenter
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Caixa Indispon'#237'vel'
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -64
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 488
    Top = 136
  end
end
