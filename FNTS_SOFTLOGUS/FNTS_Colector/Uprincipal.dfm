object Form1: TForm1
  Left = 367
  Top = 141
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = ' Colector  - Softlogus'
  ClientHeight = 447
  ClientWidth = 687
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnsalvar: TSpeedButton
    Left = 24
    Top = 96
    Width = 289
    Height = 43
    Caption = 'Salvar Arquivo'
    OnClick = btnsalvarClick
  end
  object lblnome: TLabel
    Left = 24
    Top = 157
    Width = 85
    Height = 16
    Caption = 'Salvar Como:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 24
    Top = 12
    Width = 172
    Height = 24
    Caption = 'C'#243'digo de Barras'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 341
    Top = 12
    Width = 48
    Height = 24
    Caption = 'Qtde'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 453
    Top = 12
    Width = 174
    Height = 24
    Caption = 'Lista de Produtos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnnovo: TsSpeedButton
    Left = 319
    Top = 96
    Width = 99
    Height = 43
    Caption = 'Novo'
    OnClick = btnnovoClick
    SkinData.SkinSection = 'SPEEDBUTTON'
  end
  object edtcodbarra: TEdit
    Left = 24
    Top = 42
    Width = 289
    Height = 48
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -33
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnKeyDown = edtcodbarraKeyDown
  end
  object edtnomearquivo: TEdit
    Left = 104
    Top = 154
    Width = 209
    Height = 24
    TabStop = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object lstcodbarras2: TListBox
    Left = 424
    Top = 42
    Width = 233
    Height = 383
    TabStop = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 24
    ParentFont = False
    TabOrder = 2
    OnDblClick = lstcodbarras2DblClick
  end
  object edtqtd: TEdit
    Left = 319
    Top = 42
    Width = 99
    Height = 48
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -33
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Text = '1'
  end
end
