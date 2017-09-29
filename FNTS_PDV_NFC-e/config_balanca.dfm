object frmconfig_balanca: Tfrmconfig_balanca
  Left = 630
  Top = 293
  BorderStyle = bsDialog
  Caption = 'Balan'#231'a PDV'
  ClientHeight = 271
  ClientWidth = 237
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox6: TGroupBox
    Left = 13
    Top = 10
    Width = 212
    Height = 206
    Caption = 'Balan'#231'a PDV'
    TabOrder = 0
    object Label27: TLabel
      Left = 58
      Top = 55
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'Porta:'
    end
    object Label28: TLabel
      Left = 8
      Top = 30
      Width = 80
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Modelo:'
    end
    object Label29: TLabel
      Left = 8
      Top = 106
      Width = 80
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'BaudRate:'
    end
    object Label30: TLabel
      Left = 8
      Top = 81
      Width = 80
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DataBits:'
    end
    object Label38: TLabel
      Left = 8
      Top = 130
      Width = 80
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'StopBits:'
    end
    object Label39: TLabel
      Left = 8
      Top = 180
      Width = 80
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Time-Out:'
    end
    object Label40: TLabel
      Left = 8
      Top = 154
      Width = 80
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Parity:'
    end
    object cb_bal_time_out: TEdit
      Left = 94
      Top = 177
      Width = 113
      Height = 21
      TabOrder = 6
      Text = '5000'
    end
    object edtModelo: TEdit
      Left = 94
      Top = 27
      Width = 113
      Height = 21
      TabOrder = 0
      Text = 'Toledo'
    end
    object edtPorta: TEdit
      Left = 94
      Top = 54
      Width = 113
      Height = 21
      TabOrder = 1
      Text = 'COM1'
    end
    object edtDataBits: TEdit
      Left = 94
      Top = 80
      Width = 113
      Height = 21
      TabOrder = 2
      Text = '8'
    end
    object edtBaudRate: TEdit
      Left = 94
      Top = 103
      Width = 113
      Height = 21
      TabOrder = 3
      Text = '2400'
    end
    object edtStopBits: TEdit
      Left = 94
      Top = 130
      Width = 113
      Height = 21
      TabOrder = 4
      Text = '0'
    end
    object edtParity: TEdit
      Left = 94
      Top = 154
      Width = 113
      Height = 21
      TabOrder = 5
      Text = 'none'
    end
  end
  object BitBtn1: TBitBtn
    Left = 13
    Top = 226
    Width = 100
    Height = 25
    Caption = 'Gravar'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 125
    Top = 226
    Width = 100
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
end
