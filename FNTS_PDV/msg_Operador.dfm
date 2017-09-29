object frmMsg_Operador: TfrmMsg_Operador
  Left = 438
  Top = 447
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Mensagem ao Operador'
  ClientHeight = 112
  ClientWidth = 349
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesktopCenter
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 349
    Height = 112
    Align = alClient
  end
  object lb_msg: TLabel
    Left = 72
    Top = 15
    Width = 265
    Height = 81
    Align = alCustom
    Alignment = taCenter
    AutoSize = False
    Caption = 'Aguarde'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
    Layout = tlCenter
    WordWrap = True
  end
  object Image2: TImage
    Left = 22
    Top = 30
    Width = 51
    Height = 51
    Center = True
  end
end
