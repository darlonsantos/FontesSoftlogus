object frmSPEDFISCAL: TfrmSPEDFISCAL
  Left = 203
  Top = 158
  Width = 655
  Height = 573
  BorderIcons = [biSystemMenu]
  Caption = 'Gerador SPED FISCAL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 8
    Top = 23
    Width = 71
    Height = 13
    Caption = 'Per'#237'odo Inicial:'
  end
  object Label4: TLabel
    Left = 184
    Top = 23
    Width = 25
    Height = 13
    Caption = 'Final:'
  end
  object ed_data_ini: TDateEdit
    Left = 80
    Top = 21
    Width = 97
    Height = 21
    NumGlyphs = 2
    TabOrder = 0
    Text = '00/00/0000'
    OnEnter = ed_data_iniEnter
    OnExit = ed_data_iniExit
  end
  object ed_data_fim: TDateEdit
    Left = 212
    Top = 21
    Width = 97
    Height = 21
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    NumGlyphs = 2
    TabOrder = 1
    Text = '00/00/0000'
    OnEnter = ed_data_fimEnter
    OnExit = ed_data_fimExit
    OnKeyPress = ed_data_fimKeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 516
    Width = 647
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object bt_ok: TButton
      Left = 244
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Gerar'
      TabOrder = 0
      OnClick = bt_okClick
    end
    object bt_cancelar: TButton
      Left = 324
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 1
      OnClick = bt_cancelarClick
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 245
    Width = 647
    Height = 271
    ActivePage = TabSPED
    Align = alBottom
    TabOrder = 3
    object TabSPED: TTabSheet
      Caption = 'SPED Fiscal'
      object progressbar1: TRzProgressBar
        Left = 0
        Top = 231
        Width = 639
        Height = 12
        Align = alBottom
        BackColor = clBtnFace
        BackColorStop = clWindow
        BarColor = 12582847
        BarColorStop = 59904
        BarStyle = bsGradient
        BorderOuter = fsFlat
        BorderWidth = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = 12582847
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        InteriorOffset = 0
        ParentFont = False
        PartsComplete = 0
        Percent = 0
        ShowPercent = False
        ThemeAware = False
        TotalParts = 100
        Visible = False
      end
      object rchSped: TRichEdit
        Left = 0
        Top = 0
        Width = 639
        Height = 231
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 172
        Width = 425
        Height = 49
        Caption = 'Layout'
        TabOrder = 1
        Visible = False
        object rb_sintegra: TRadioButton
          Left = 16
          Top = 16
          Width = 209
          Height = 17
          Caption = 'Sintegra - Conv'#234'nio 57/95'
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object rb_efd: TRadioButton
          Left = 192
          Top = 16
          Width = 217
          Height = 17
          Caption = 'EFD - Ato COTEPE/ICMS  09/08'
          TabOrder = 1
        end
      end
      object bt_sped: TButton
        Left = 519
        Top = 202
        Width = 120
        Height = 25
        Caption = 'Sped'
        TabOrder = 2
        Visible = False
        OnClick = bt_spedClick
      end
      object BT_SAIDA: TButton
        Left = 519
        Top = 170
        Width = 120
        Height = 25
        Caption = 'Tabela de Saida'
        TabOrder = 3
        Visible = False
        OnClick = BT_SAIDAClick
      end
    end
    object TabSintegra: TTabSheet
      Caption = 'Sintegra'
      ImageIndex = 1
      TabVisible = False
      object rchSintegra: TRichEdit
        Left = 0
        Top = 0
        Width = 639
        Height = 243
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object PageControl2: TPageControl
    Left = 8
    Top = 55
    Width = 409
    Height = 178
    ActivePage = PaginaSped
    TabOrder = 4
    object PaginaSped: TTabSheet
      Caption = 'Informa'#231#245'es SPED Fiscal'
      ImageIndex = 1
      object Label6: TLabel
        Left = 6
        Top = 5
        Width = 90
        Height = 13
        Caption = 'Vers'#227'o do Leiaute:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 6
        Top = 52
        Width = 107
        Height = 13
        Caption = 'Finalidade do Arquivo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 6
        Top = 99
        Width = 168
        Height = 13
        Caption = 'Perfil de Apresenta'#231#227'o do Arquivo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ComboBoxVersaoLeiauteSped: TComboBox
        Left = 6
        Top = 22
        Width = 379
        Height = 22
        Style = csOwnerDrawFixed
        ItemHeight = 16
        ItemIndex = 5
        TabOrder = 0
        Text = '006 - Versao 105  Ato COTEPE 01/07/2012'
        Items.Strings = (
          '001 - Vers'#227'o 100 Ato COTEPE 01/01/2008'
          '002 - Vers'#227'o 101 Ato COTEPE 01/01/2009'
          '003 - Vers'#227'o 102 Ato COTEPE 01/01/2010'
          '004 - Vers'#227'o 103 Ato COTEPE 01/01/2011'
          '005 - Versao 104  Ato COTEPE 01/01/2012'
          '006 - Versao 105  Ato COTEPE 01/07/2012')
      end
      object ComboBoxFinalidadeArquivoSped: TComboBox
        Left = 6
        Top = 68
        Width = 379
        Height = 22
        Style = csOwnerDrawFixed
        ItemHeight = 16
        ItemIndex = 0
        TabOrder = 1
        Text = '0 - Remessa do arquivo original'
        Items.Strings = (
          '0 - Remessa do arquivo original'
          '1 - Remessa do arquivo substituto')
      end
      object ComboBoxPerfilSped: TComboBox
        Left = 6
        Top = 115
        Width = 379
        Height = 22
        Style = csOwnerDrawFixed
        ItemHeight = 16
        ItemIndex = 0
        TabOrder = 2
        Text = 'A '#8211' Perfil A'
        Items.Strings = (
          'A '#8211' Perfil A'
          'B '#8211' Perfil B'
          'C '#8211' Perfil C')
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 496
    Top = 72
    Width = 137
    Height = 161
    Caption = 'Gerar Blocos Individuais'
    TabOrder = 5
    object Button1: TButton
      Left = 30
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Bloco C'
      Enabled = False
      TabOrder = 0
    end
    object Button2: TButton
      Left = 30
      Top = 88
      Width = 75
      Height = 25
      Caption = 'Bloco E'
      Enabled = False
      TabOrder = 1
    end
    object Button3: TButton
      Left = 30
      Top = 120
      Width = 75
      Height = 25
      Caption = 'Bloco 1'
      Enabled = False
      TabOrder = 2
    end
    object Button4: TButton
      Left = 32
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Bloco 0'
      TabOrder = 3
    end
  end
  object ACBrSPEDFiscal1: TACBrSPEDFiscal
    Path = 'C:\'
    Arquivo = 'SPED.TXT'
    Delimitador = '|'
    TrimString = True
    CurMascara = '#0.00'
    Left = 584
    Top = 8
  end
  object query: TIBCQuery
    Connection = frmModuloSped.Conexao_Servidor
    Left = 464
    Top = 96
  end
  object qrreg_150: TIBCQuery
    Connection = frmModuloSped.Conexao_Servidor
    SQL.Strings = (
      'select * from reg_150')
    Left = 496
    Top = 96
    object qrreg_150CODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 8
    end
    object qrreg_150NOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrreg_150CNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object qrreg_150CPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object qrreg_150IE: TStringField
      FieldName = 'IE'
      Size = 14
    end
    object qrreg_150COD_MUNICIPIO_IBGE: TStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 7
    end
    object qrreg_150SUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object qrreg_150ENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object qrreg_150NUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrreg_150COMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 60
    end
    object qrreg_150BAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object qrreg_150CODIGO_PAR: TStringField
      FieldName = 'CODIGO_PAR'
      Size = 10
    end
  end
  object qrApoio: TIBCQuery
    Connection = frmModuloSped.Conexao_Servidor
    Left = 576
    Top = 64
  end
  object query2: TIBCQuery
    Connection = frmModuloSped.Conexao_Servidor
    Left = 456
    Top = 64
  end
  object query3: TIBCQuery
    Connection = frmModuloSped.Conexao_Servidor
    Left = 496
    Top = 64
  end
  object qrECF: TIBCQuery
    Connection = frmModuloSped.Conexao_Servidor
    Left = 456
    Top = 32
  end
  object qrreducao: TIBCQuery
    Connection = frmModuloSped.Conexao_Servidor
    Left = 496
    Top = 32
  end
  object qrPISCOFINS: TIBCQuery
    Connection = frmModuloSped.Conexao_Servidor
    Left = 536
    Top = 32
  end
  object qrCupom: TIBCQuery
    Connection = frmModuloSped.Conexao_Servidor
    Left = 456
  end
  object qrcupom_item: TIBCQuery
    Connection = frmModuloSped.Conexao_Servidor
    Left = 496
  end
  object qrUnidade: TIBCQuery
    Connection = frmModuloSped.Conexao_Servidor
    Left = 536
  end
  object query4: TIBCQuery
    Connection = frmModuloSped.Conexao_Servidor
    Left = 528
    Top = 64
  end
  object query5: TIBCQuery
    Connection = frmModuloSped.Conexao_Servidor
    Left = 568
    Top = 32
  end
  object qr1300: TIBCQuery
    Connection = frmModuloSped.Conexao_Servidor
    Left = 384
    Top = 32
  end
  object qrLMC: TIBCQuery
    Connection = frmModuloSped.Conexao_Servidor
    Left = 344
    Top = 32
  end
  object qrconfig: TIBCQuery
    Connection = frmModuloSped.Conexao_Servidor
    Left = 344
  end
  object qrBombas: TIBCQuery
    Connection = frmModuloSped.Conexao_Servidor
    Left = 384
  end
  object qrBicos: TIBCQuery
    Connection = frmModuloSped.Conexao_Servidor
    Left = 424
    Top = 8
  end
end
