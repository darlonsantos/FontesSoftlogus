object balanco: Tbalanco
  Left = 332
  Top = 100
  Caption = 'Softlogus | Balan'#231'o'
  ClientHeight = 538
  ClientWidth = 811
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 27
    Width = 811
    Height = 2
    Align = alTop
    ExplicitWidth = 776
  end
  object Bevel2: TBevel
    Left = 0
    Top = 495
    Width = 811
    Height = 2
    Align = alBottom
    ExplicitTop = 494
    ExplicitWidth = 776
  end
  object Bevel3: TBevel
    Left = 0
    Top = 73
    Width = 811
    Height = 3
    Align = alTop
    ExplicitWidth = 776
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 811
    Height = 27
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 44
      Height = 13
      Caption = 'Servidor:'
    end
    object lservidor: TLabel
      Left = 56
      Top = 8
      Width = 145
      Height = 13
      AutoSize = False
      Caption = 'Localhost'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 208
      Top = 8
      Width = 27
      Height = 13
      Caption = 'Base:'
    end
    object lbase: TLabel
      Left = 240
      Top = 8
      Width = 337
      Height = 13
      AutoSize = False
      Caption = 'Localhost'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 600
      Top = 8
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
    end
    object lsituacao: TLabel
      Left = 648
      Top = 8
      Width = 89
      Height = 13
      AutoSize = False
      Caption = 'Desconectado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 745
      Top = 5
      Width = 25
      Height = 17
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 29
    Width = 811
    Height = 44
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 16
      Width = 45
      Height = 13
      Caption = 'Localizar:'
    end
    object Label6: TLabel
      Left = 432
      Top = 16
      Width = 32
      Height = 13
      Caption = 'Filtrar:'
    end
    object ComboBox1: TComboBox
      Left = 58
      Top = 12
      Width = 111
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Text = 'Produto'
      Items.Strings = (
        'Produto'
        'C'#243'digo'
        'C'#243'digo de Barras')
    end
    object loc: TRzEdit
      Left = 176
      Top = 12
      Width = 249
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnChange = locChange
    end
    object GroupBox1: TGroupBox
      Left = 632
      Top = 1
      Width = 121
      Height = 35
      Caption = 'Situa'#231#227'o'
      TabOrder = 2
      object Label4: TLabel
        Left = 8
        Top = 16
        Width = 103
        Height = 13
        Caption = '0 - Ativo    1 - Inativo'
      end
    end
    object efiltro: TRzEdit
      Left = 472
      Top = 12
      Width = 145
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnChange = efiltroChange
    end
  end
  object grid: TwwDBGrid
    Left = 0
    Top = 76
    Width = 811
    Height = 402
    Selected.Strings = (
      'CODIGO'#9'8'#9'C'#243'digo'
      'CODBARRA'#9'14'#9'C'#243'd. de Barras'
      'PRODUTO'#9'65'#9'Produto'#9'F'
      'UNIDADE'#9'3'#9'Un.'
      'PRECOVENDA'#9'10'#9'Pre'#231'o'
      'SITUACAO'#9'3'#9'Sit.'
      'ESTOQUE'#9'15'#9'Estoque')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 6
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsproduto
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = True
    OnTitleButtonClick = gridTitleButtonClick
  end
  object Panel3: TPanel
    Left = 0
    Top = 497
    Width = 811
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object BitBtn1: TBitBtn
      Left = 16
      Top = 8
      Width = 121
      Height = 25
      Caption = 'Gerar Estoque'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 160
      Top = 8
      Width = 121
      Height = 25
      Caption = 'Zerar Estoque'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 632
      Top = 8
      Width = 121
      Height = 25
      Caption = 'Fechar'
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object Button3: TButton
      Left = 304
      Top = 8
      Width = 145
      Height = 25
      Caption = 'Ativar/Inativar Produto'
      TabOrder = 3
      OnClick = Button3Click
    end
    object Button2: TButton
      Left = 472
      Top = 8
      Width = 129
      Height = 25
      Caption = 'Fazer Backup'
      TabOrder = 4
      Visible = False
      OnClick = Button2Click
    end
  end
  object barra: TProgressBar
    Left = 0
    Top = 478
    Width = 811
    Height = 17
    Align = alBottom
    TabOrder = 4
  end
  object ListBox1: TListBox
    Left = 440
    Top = 264
    Width = 297
    Height = 201
    ItemHeight = 13
    TabOrder = 5
    Visible = False
  end
  object config: TIBCConnectDialog
    SavePassword = True
    Caption = 'Configurar Banco de Dados'
    ConnectButton = 'Ok'
    CancelButton = 'Cancelar'
    Server.Caption = 'Servidor:'
    Server.Visible = True
    Server.Order = 0
    UserName.Caption = 'Usu'#225'rio'
    UserName.Visible = True
    UserName.Order = 3
    Password.Caption = 'Senha'
    Password.Visible = True
    Password.Order = 4
    Database.Caption = 'Base de dados'
    Database.Visible = True
    Database.Order = 2
    Protocol.Caption = 'Protocolo'
    Protocol.Visible = True
    Protocol.Order = 7
    Port.Caption = 'Port'
    Port.Visible = False
    Port.Order = 1
    Role.Caption = 'Role'
    Role.Visible = False
    Role.Order = 5
    ClientLibrary.Caption = 'Client Library'
    ClientLibrary.Visible = False
    ClientLibrary.Order = 6
    TrustedAuthentication.Caption = 'Authentication'
    TrustedAuthentication.Visible = False
    TrustedAuthentication.Order = 8
    LabelSet = lsCustom
    Left = 408
    Top = 80
  end
  object eConexao: TIBCConnection
    Database = 'c:\Athenas\server\bd\base.fdb'
    SQLDialect = 1
    ClientLibrary = 'gds32.dll'
    Port = '3050'
    Username = 'SYSDBA'
    ConnectDialog = config
    LoginPrompt = False
    AfterConnect = eConexaoAfterConnect
    AfterDisconnect = eConexaoAfterDisconnect
    Left = 328
    Top = 80
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object qrproduto: TIBCQuery
    Connection = eConexao
    SQL.Strings = (
      
        'select situacao, codigo, codbarra, produto, unidade, estoque, pr' +
        'ecovenda'
      'from c000025'
      'order by produto')
    Left = 440
    object qrprodutoCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 8
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrprodutoCODBARRA: TStringField
      DisplayLabel = 'C'#243'd. de Barras'
      DisplayWidth = 14
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrprodutoPRODUTO: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 65
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrprodutoUNIDADE: TStringField
      DisplayLabel = 'Un.'
      DisplayWidth = 3
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrprodutoPRECOVENDA: TFloatField
      DisplayLabel = 'Pre'#231'o'
      DisplayWidth = 10
      FieldName = 'PRECOVENDA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoSITUACAO: TIntegerField
      DisplayLabel = 'Sit.'
      DisplayWidth = 3
      FieldName = 'SITUACAO'
    end
    object qrprodutoESTOQUE: TFloatField
      DisplayLabel = 'Estoque'
      DisplayWidth = 15
      FieldName = 'ESTOQUE'
    end
  end
  object dsproduto: TIBCDataSource
    DataSet = qrproduto
    Left = 472
  end
  object query: TIBCQuery
    Connection = eConexao
    Left = 504
  end
  object query2: TIBCQuery
    Connection = eConexao
    Left = 536
  end
  object query3: TIBCQuery
    Connection = eConexao
    Left = 568
  end
  object Backup: TIBBackupService
    ServerName = 'localhost'
    Protocol = TCP
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    TraceFlags = []
    ServerType = 'IBServer'
    Verbose = True
    BlockingFactor = 0
    Options = [NoGarbageCollection]
    Left = 131
    Top = 323
  end
end
