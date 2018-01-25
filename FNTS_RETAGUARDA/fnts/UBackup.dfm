object frmbackupBase: TfrmbackupBase
  Left = 0
  Top = 0
  Caption = 'Backup do banco de dados'
  ClientHeight = 290
  ClientWidth = 500
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object IBCBackupService1: TIBCBackupService
    Port = '3050'
    Left = 472
    Top = 8
  end
end
