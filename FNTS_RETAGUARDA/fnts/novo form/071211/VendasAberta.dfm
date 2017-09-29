object frmVendas_Abertas: TfrmVendas_Abertas
  Left = 207
  Top = 149
  Width = 624
  Height = 359
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Vendas em aberta'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBAdvGrid1: TDBAdvGrid
    Left = 0
    Top = 0
    Width = 617
    Height = 295
    Cursor = crDefault
    Align = alCustom
    ColCount = 7
    RowCount = 2
    FixedRows = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
    OnDblClick = DBAdvGrid1DblClick
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ControlLook.FixedGradientHoverFrom = clGray
    ControlLook.FixedGradientHoverTo = clWhite
    ControlLook.FixedGradientDownFrom = clGray
    ControlLook.FixedGradientDownTo = clSilver
    ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
    ControlLook.DropDownHeader.Font.Color = clWindowText
    ControlLook.DropDownHeader.Font.Height = -11
    ControlLook.DropDownHeader.Font.Name = 'Tahoma'
    ControlLook.DropDownHeader.Font.Style = []
    ControlLook.DropDownHeader.Visible = True
    ControlLook.DropDownHeader.Buttons = <>
    ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
    ControlLook.DropDownFooter.Font.Color = clWindowText
    ControlLook.DropDownFooter.Font.Height = -11
    ControlLook.DropDownFooter.Font.Name = 'MS Sans Serif'
    ControlLook.DropDownFooter.Font.Style = []
    ControlLook.DropDownFooter.Visible = True
    ControlLook.DropDownFooter.Buttons = <>
    Filter = <>
    FilterDropDown.Font.Charset = DEFAULT_CHARSET
    FilterDropDown.Font.Color = clWindowText
    FilterDropDown.Font.Height = -11
    FilterDropDown.Font.Name = 'MS Sans Serif'
    FilterDropDown.Font.Style = []
    FilterDropDownClear = '(All)'
    FixedColWidth = 20
    FixedRowHeight = 22
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = [fsBold]
    FloatFormat = '%.2f'
    PrintSettings.DateFormat = 'dd/mm/yyyy'
    PrintSettings.Font.Charset = DEFAULT_CHARSET
    PrintSettings.Font.Color = clWindowText
    PrintSettings.Font.Height = -11
    PrintSettings.Font.Name = 'MS Sans Serif'
    PrintSettings.Font.Style = []
    PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
    PrintSettings.FixedFont.Color = clWindowText
    PrintSettings.FixedFont.Height = -11
    PrintSettings.FixedFont.Name = 'MS Sans Serif'
    PrintSettings.FixedFont.Style = []
    PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
    PrintSettings.HeaderFont.Color = clWindowText
    PrintSettings.HeaderFont.Height = -11
    PrintSettings.HeaderFont.Name = 'MS Sans Serif'
    PrintSettings.HeaderFont.Style = []
    PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
    PrintSettings.FooterFont.Color = clWindowText
    PrintSettings.FooterFont.Height = -11
    PrintSettings.FooterFont.Name = 'MS Sans Serif'
    PrintSettings.FooterFont.Style = []
    PrintSettings.PageNumSep = '/'
    SearchFooter.FindNextCaption = 'Find &next'
    SearchFooter.FindPrevCaption = 'Find &previous'
    SearchFooter.Font.Charset = DEFAULT_CHARSET
    SearchFooter.Font.Color = clWindowText
    SearchFooter.Font.Height = -11
    SearchFooter.Font.Name = 'MS Sans Serif'
    SearchFooter.Font.Style = []
    SearchFooter.HighLightCaption = 'Highlight'
    SearchFooter.HintClose = 'Close'
    SearchFooter.HintFindNext = 'Find next occurence'
    SearchFooter.HintFindPrev = 'Find previous occurence'
    SearchFooter.HintHighlight = 'Highlight occurences'
    SearchFooter.MatchCaseCaption = 'Match case'
    Version = '2.1.14.2'
    AutoCreateColumns = True
    AutoRemoveColumns = True
    Columns = <
      item
        Borders = []
        BorderPen.Color = clSilver
        CheckFalse = 'N'
        CheckTrue = 'Y'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'MS Sans Serif'
        HeaderFont.Style = []
        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
        PrintFont.Charset = DEFAULT_CHARSET
        PrintFont.Color = clWindowText
        PrintFont.Height = -11
        PrintFont.Name = 'MS Sans Serif'
        PrintFont.Style = []
        Width = 20
      end
      item
        Alignment = taCenter
        Borders = []
        BorderPen.Color = clSilver
        CheckFalse = 'N'
        CheckTrue = 'Y'
        Color = clWindow
        EditLength = 10
        FieldName = 'CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'MS Sans Serif'
        HeaderFont.Style = [fsBold]
        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
        PrintFont.Charset = DEFAULT_CHARSET
        PrintFont.Color = clWindowText
        PrintFont.Height = -11
        PrintFont.Name = 'MS Sans Serif'
        PrintFont.Style = []
        Width = 73
      end
      item
        Alignment = taCenter
        Borders = []
        BorderPen.Color = clSilver
        CheckFalse = 'N'
        CheckTrue = 'Y'
        Color = clWindow
        EditLength = 6
        FieldName = 'CODVENDEDOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'MS Sans Serif'
        HeaderFont.Style = [fsBold]
        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
        PrintFont.Charset = DEFAULT_CHARSET
        PrintFont.Color = clWindowText
        PrintFont.Height = -11
        PrintFont.Name = 'MS Sans Serif'
        PrintFont.Style = []
        Width = 76
      end
      item
        Alignment = taCenter
        Borders = []
        BorderPen.Color = clSilver
        CheckFalse = 'N'
        CheckTrue = 'Y'
        Color = clWindow
        FieldName = 'DATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'MS Sans Serif'
        HeaderFont.Style = [fsBold]
        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
        PrintFont.Charset = DEFAULT_CHARSET
        PrintFont.Color = clWindowText
        PrintFont.Height = -11
        PrintFont.Name = 'MS Sans Serif'
        PrintFont.Style = []
        Width = 64
      end
      item
        Alignment = taCenter
        Borders = []
        BorderPen.Color = clSilver
        CheckFalse = 'N'
        CheckTrue = 'Y'
        Color = clWindow
        EditLength = 6
        FieldName = 'CODCLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'MS Sans Serif'
        HeaderFont.Style = [fsBold]
        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
        PrintFont.Charset = DEFAULT_CHARSET
        PrintFont.Color = clWindowText
        PrintFont.Height = -11
        PrintFont.Name = 'MS Sans Serif'
        PrintFont.Style = []
        Width = 59
      end
      item
        Alignment = taRightJustify
        Borders = []
        BorderPen.Color = clSilver
        CheckFalse = 'N'
        CheckTrue = 'Y'
        Color = clWindow
        FieldName = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'MS Sans Serif'
        HeaderFont.Style = [fsBold]
        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
        PrintFont.Charset = DEFAULT_CHARSET
        PrintFont.Color = clWindowText
        PrintFont.Height = -11
        PrintFont.Name = 'MS Sans Serif'
        PrintFont.Style = []
        Width = 64
      end
      item
        Borders = []
        BorderPen.Color = clSilver
        CheckFalse = 'N'
        CheckTrue = 'Y'
        Color = clWindow
        EditLength = 60
        FieldName = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'MS Sans Serif'
        HeaderFont.Style = [fsBold]
        PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
        PrintFont.Charset = DEFAULT_CHARSET
        PrintFont.Color = clWindowText
        PrintFont.Height = -11
        PrintFont.Name = 'MS Sans Serif'
        PrintFont.Style = []
        Width = 252
      end>
    DataSource = dsVendasAbertas
    InvalidPicture.Data = {
      055449636F6E0000010001002020040000000000E80200001600000028000000
      2000000040000000010004000000000000020000000000000000000000000000
      0000000000000000000080000080000000808000800000008000800080800000
      80808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
      FFFFFF0000000000000000000000000000000000000000000001111111100000
      0000000000000000011111111111100000000000000000011111111111111110
      0000000000000111111111111111111110000000000011111111111111111111
      1100000000011111111111111111111111100000001111117711111111117111
      1110000000111111FF7111111117FF111111000001111118FFF91111117FFFF1
      1111100001111178FFFF711117FFFFF711111000911111178FFFF9117FFFF871
      111110001111199178FFFF97FFFF87111111110011119999178FFFFFFFFF7191
      11111100111999999178FFFFFFF7199911111100119999999997FFFFFF899999
      91111100199999999997FFFFFF9999999911110099999999999FFFFFFFF99999
      999111009999999999FFFFFFFFFF999999911100999999999FFFFF778FFFF999
      99911100999999998FFF879978FFFF999999910099999978FFF87999978FFFF7
      9999910009999978FF8799999978FF8799999000099999978879999999978879
      9999100000999999779999999999779999990000009999977799999999999999
      9991000000099997888879999999999999100000000099978888888888779999
      9900000000000999788888888887999990000000000000999788888888799991
      0000000000000000999788888799991000000000000000000099999999999000
      00000000FF8000FFFF00007FFE00001FF800000FF0000007F0000007E0000003
      C0000001C0000001800000018000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000180000001
      80000003C0000003C0000007E000000FF000001FF800003FFC0000FFFF0001FF
      FFC007FF}
    ShowUnicode = False
    ColWidths = (
      20
      73
      76
      64
      59
      64
      252)
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 296
    Width = 616
    Height = 29
    ParentColor = True
    Align = alBottom
    TabOrder = 1
    UseDockManager = True
    object advFechar: TAdvGlowButton
      Left = 511
      Top = 1
      Width = 100
      Height = 26
      Caption = '&Sair'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = advFecharClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
  end
  object dsVendasAbertas: TDataSource
    DataSet = qrVendasAbertas
    Left = 392
    Top = 112
  end
  object qrClientes: TZQuery
    Connection = frmmodulo.Conexao
    CachedUpdates = False
    Active = True
    SQL.Strings = (
      'select * from c000007')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 424
    Top = 64
    object qrClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrClientesNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrClientesAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 50
    end
    object qrClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qrClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrClientesCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qrClientesUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrClientesCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qrClientesCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 80
    end
    object qrClientesMORADIA: TIntegerField
      FieldName = 'MORADIA'
    end
    object qrClientesTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrClientesSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrClientesTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
    end
    object qrClientesTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
    end
    object qrClientesTELEFONE3: TStringField
      FieldName = 'TELEFONE3'
    end
    object qrClientesCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object qrClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qrClientesRG: TStringField
      FieldName = 'RG'
      Size = 25
    end
    object qrClientesCPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object qrClientesFILIACAO: TStringField
      FieldName = 'FILIACAO'
      Size = 80
    end
    object qrClientesESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Size = 15
    end
    object qrClientesCONJUGE: TStringField
      FieldName = 'CONJUGE'
      Size = 60
    end
    object qrClientesPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 30
    end
    object qrClientesEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 40
    end
    object qrClientesRENDA: TFloatField
      FieldName = 'RENDA'
    end
    object qrClientesLIMITE: TFloatField
      FieldName = 'LIMITE'
    end
    object qrClientesREF1: TStringField
      FieldName = 'REF1'
      Size = 50
    end
    object qrClientesREF2: TStringField
      FieldName = 'REF2'
      Size = 50
    end
    object qrClientesCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrClientesDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object qrClientesDATA_ULTIMACOMPRA: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qrClientesOBS1: TStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrClientesOBS2: TStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrClientesOBS3: TStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrClientesOBS4: TStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object qrClientesOBS5: TStringField
      FieldName = 'OBS5'
      Size = 80
    end
    object qrClientesOBS6: TStringField
      FieldName = 'OBS6'
      Size = 80
    end
    object qrClientesNASCIMENTO: TStringField
      FieldName = 'NASCIMENTO'
      Size = 10
    end
    object qrClientesCODREGIAO: TStringField
      FieldName = 'CODREGIAO'
      Size = 6
    end
    object qrClientesCODCONVENIO: TStringField
      FieldName = 'CODCONVENIO'
      Size = 6
    end
    object qrClientesCODUSUARIO: TStringField
      FieldName = 'CODUSUARIO'
      Size = 6
    end
    object qrClientesNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrClientesRG_ORGAO: TStringField
      FieldName = 'RG_ORGAO'
      Size = 5
    end
    object qrClientesRG_ESTADO: TStringField
      FieldName = 'RG_ESTADO'
      Size = 2
    end
    object qrClientesRG_EMISSAO: TDateTimeField
      FieldName = 'RG_EMISSAO'
    end
    object qrClientesSEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object qrClientesHISTORICO: TBlobField
      FieldName = 'HISTORICO'
    end
    object qrClientesPREVISAO: TDateTimeField
      FieldName = 'PREVISAO'
    end
    object qrClientesCNAE: TStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object qrClientesCOD_MUNICIPIO_IBGE: TStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrClientesIBGE: TStringField
      FieldName = 'IBGE'
      Size = 5
    end
    object qrClientesTAMANHO_CALCA: TStringField
      FieldName = 'TAMANHO_CALCA'
      Size = 5
    end
    object qrClientesTAMANHO_BLUSA: TStringField
      FieldName = 'TAMANHO_BLUSA'
      Size = 5
    end
    object qrClientesTAMANHO_SAPATO: TStringField
      FieldName = 'TAMANHO_SAPATO'
      Size = 5
    end
    object qrClientesCORRESP_ENDERECO: TStringField
      FieldName = 'CORRESP_ENDERECO'
      Size = 80
    end
    object qrClientesCORRESP_BAIRRO: TStringField
      FieldName = 'CORRESP_BAIRRO'
      Size = 30
    end
    object qrClientesCORRESP_CIDADE: TStringField
      FieldName = 'CORRESP_CIDADE'
      Size = 40
    end
    object qrClientesCORRESP_UF: TStringField
      FieldName = 'CORRESP_UF'
      Size = 2
    end
    object qrClientesCORRESP_CEP: TStringField
      FieldName = 'CORRESP_CEP'
      Size = 10
    end
    object qrClientesCORRESP_COMPLEMENTO: TStringField
      FieldName = 'CORRESP_COMPLEMENTO'
      Size = 40
    end
    object qrClientesRG_PRODUTOR: TStringField
      FieldName = 'RG_PRODUTOR'
      Size = 30
    end
    object qrClientesRESP1_NOME: TStringField
      FieldName = 'RESP1_NOME'
      Size = 80
    end
    object qrClientesRESP1_CPF: TStringField
      FieldName = 'RESP1_CPF'
      Size = 25
    end
    object qrClientesRESP1_RG: TStringField
      FieldName = 'RESP1_RG'
      Size = 25
    end
    object qrClientesRESP1_PROFISSAO: TStringField
      FieldName = 'RESP1_PROFISSAO'
      Size = 50
    end
    object qrClientesRESP1_ESTADO_CIVIL: TStringField
      FieldName = 'RESP1_ESTADO_CIVIL'
      Size = 30
    end
    object qrClientesRESP1_ENDERECO: TStringField
      FieldName = 'RESP1_ENDERECO'
      Size = 80
    end
    object qrClientesRESP1_BAIRRO: TStringField
      FieldName = 'RESP1_BAIRRO'
      Size = 40
    end
    object qrClientesRESP1_CIDADE: TStringField
      FieldName = 'RESP1_CIDADE'
      Size = 40
    end
    object qrClientesRESP1_UF: TStringField
      FieldName = 'RESP1_UF'
      Size = 2
    end
    object qrClientesRESP1_CEP: TStringField
      FieldName = 'RESP1_CEP'
      Size = 15
    end
    object qrClientesRESP2_NOME: TStringField
      FieldName = 'RESP2_NOME'
      Size = 80
    end
    object qrClientesRESP2_CPF: TStringField
      FieldName = 'RESP2_CPF'
      Size = 25
    end
    object qrClientesRESP2_RG: TStringField
      FieldName = 'RESP2_RG'
      Size = 25
    end
    object qrClientesRESP2_PROFISSAO: TStringField
      FieldName = 'RESP2_PROFISSAO'
      Size = 50
    end
    object qrClientesRESP2_ESTADO_CIVIL: TStringField
      FieldName = 'RESP2_ESTADO_CIVIL'
      Size = 30
    end
    object qrClientesRESP2_ENDERECO: TStringField
      FieldName = 'RESP2_ENDERECO'
      Size = 80
    end
    object qrClientesRESP2_BAIRRO: TStringField
      FieldName = 'RESP2_BAIRRO'
      Size = 40
    end
    object qrClientesRESP2_CIDADE: TStringField
      FieldName = 'RESP2_CIDADE'
      Size = 40
    end
    object qrClientesRESP2_UF: TStringField
      FieldName = 'RESP2_UF'
      Size = 2
    end
    object qrClientesRESP2_CEP: TStringField
      FieldName = 'RESP2_CEP'
      Size = 15
    end
    object qrClientesFOTO: TStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object qrClientesPAI: TStringField
      FieldName = 'PAI'
      Size = 80
    end
    object qrClientesMAE: TStringField
      FieldName = 'MAE'
      Size = 80
    end
    object qrClientesTIPO_MORADIA: TStringField
      FieldName = 'TIPO_MORADIA'
    end
  end
  object qrVendasAbertas: TZQuery
    Connection = frmmodulo.Conexao
    CachedUpdates = False
    SQL.Strings = (
      'select * from TEMPVENDA')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 392
    Top = 160
    object qrVendasAbertasCODIGO: TStringField
      Alignment = taCenter
      DisplayLabel = 'VENDA NR'
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrVendasAbertasCODVENDEDOR: TStringField
      Alignment = taCenter
      DisplayLabel = 'VENDEDOR'
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrVendasAbertasDATA: TDateTimeField
      Alignment = taCenter
      FieldName = 'DATA'
    end
    object qrVendasAbertasCODCLIENTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'CLIENTE'
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrVendasAbertasTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrVendasAbertasCLIENTE: TStringField
      DisplayLabel = 'NOME'
      FieldKind = fkLookup
      FieldName = 'CLIENTE'
      LookupDataSet = qrClientes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Size = 60
      Lookup = True
    end
    object qrVendasAbertasVENDEDOR: TStringField
      FieldKind = fkLookup
      FieldName = 'VENDEDOR'
      LookupDataSet = qrVendedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODVENDEDOR'
      Visible = False
      Size = 80
      Lookup = True
    end
    object qrVendasAbertasCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      Visible = False
      Size = 1
    end
    object qrVendasAbertasEMALTERACAO: TStringField
      FieldName = 'EMALTERACAO'
      Visible = False
      Size = 1
    end
  end
  object qrVendedor: TZQuery
    Connection = frmmodulo.Conexao
    CachedUpdates = False
    Active = True
    SQL.Strings = (
      'select * from c000008')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 496
    Top = 112
    object qrVendedorCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrVendedorNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrVendedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qrVendedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrVendedorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qrVendedorUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrVendedorCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qrVendedorTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
    object qrVendedorCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object qrVendedorEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qrVendedorCPF: TStringField
      FieldName = 'CPF'
      Size = 15
    end
    object qrVendedorRG: TStringField
      FieldName = 'RG'
      Size = 25
    end
    object qrVendedorCTPS: TStringField
      FieldName = 'CTPS'
      Size = 25
    end
    object qrVendedorFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 30
    end
    object qrVendedorDATA_ADMISSAO: TDateTimeField
      FieldName = 'DATA_ADMISSAO'
    end
    object qrVendedorDATA_DEMISSAO: TDateTimeField
      FieldName = 'DATA_DEMISSAO'
    end
    object qrVendedorSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrVendedorSALARIO: TFloatField
      FieldName = 'SALARIO'
    end
    object qrVendedorCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qrVendedorOBS1: TStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrVendedorOBS2: TStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrVendedorOBS3: TStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrVendedorNASCIMENTO: TDateTimeField
      FieldName = 'NASCIMENTO'
    end
    object qrVendedorF_CAIXA: TIntegerField
      FieldName = 'F_CAIXA'
    end
    object qrVendedorF_VENDEDOR: TIntegerField
      FieldName = 'F_VENDEDOR'
    end
    object qrVendedorF_TECNICO: TIntegerField
      FieldName = 'F_TECNICO'
    end
    object qrVendedorNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
  end
end
