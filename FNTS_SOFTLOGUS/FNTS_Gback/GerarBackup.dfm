object FGerarBackup: TFGerarBackup
  Left = 281
  Top = 85
  HelpContext = 2
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Backup'
  ClientHeight = 486
  ClientWidth = 609
  Color = clCaptionText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    609
    486)
  PixelsPerInch = 96
  TextHeight = 13
  object BTGeraBack: TButton
    Left = 353
    Top = 447
    Width = 121
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Gerar backup'
    Default = True
    TabOrder = 0
    OnClick = BTGeraBackClick
    ExplicitLeft = 351
    ExplicitTop = 445
  end
  object Button2: TButton
    Left = 481
    Top = 447
    Width = 121
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Sair'
    TabOrder = 1
    OnClick = Button2Click
    ExplicitLeft = 479
    ExplicitTop = 445
  end
  object Memo1: TMemo
    Left = 8
    Top = 64
    Width = 594
    Height = 376
    Anchors = [akLeft, akTop, akRight, akBottom]
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 2
    WordWrap = False
    ExplicitWidth = 592
    ExplicitHeight = 374
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 11
    Width = 594
    Height = 46
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Configura'#231#245'es'
    TabOrder = 3
    ExplicitWidth = 592
    object CBRecoLixo: TCheckBox
      Left = 8
      Top = 19
      Width = 81
      Height = 17
      Caption = 'Recolher lixo'
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object CBIgnoChec: TCheckBox
      Left = 184
      Top = 19
      Width = 145
      Height = 17
      Caption = 'Ignorar erros de checksum'
      Enabled = False
      TabOrder = 1
    end
    object CBIgnoLimb: TCheckBox
      Left = 336
      Top = 19
      Width = 153
      Height = 17
      Caption = 'Ignorar transa'#231#245'es em limbo'
      TabOrder = 2
    end
    object CBTran: TCheckBox
      Left = 96
      Top = 19
      Width = 89
      Height = 17
      Caption = 'Transport'#225'vel'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object CBDetalhes: TCheckBox
      Left = 496
      Top = 19
      Width = 89
      Height = 17
      Caption = 'Detalhamento'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
  end
  object IBBackupService1: TIBBackupService
    ServerName = 'LocalHost'
    Protocol = TCP
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    TraceFlags = []
    ServerType = 'IBServer'
    Verbose = True
    BlockingFactor = 0
    DatabaseName = 'DADOS.fdb'
    Options = []
    Left = 152
    Top = 136
  end
  object IBConfigService1: TIBConfigService
    TraceFlags = []
    ServerType = 'IBServer'
    Left = 184
    Top = 136
  end
  object SDArquBack: TSaveDialog
    DefaultExt = 'FBK'
    FileName = 'DADOS.FBK'
    Filter = 'Backup do Firebird(*.fbk)|*.fbk|Todos os arquivos(*.*)|*.*'
    FilterIndex = 0
    Options = [ofOverwritePrompt, ofHideReadOnly, ofShowHelp, ofExtensionDifferent, ofPathMustExist, ofEnableSizing]
    Left = 216
    Top = 139
  end
end
