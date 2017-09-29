object frmModulo: TfrmModulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 741
  Width = 1058
  object conexao: TIBCConnection
    Database = 'C:\Softlogus\PDV\BD\DATPDV.FDB'
    ClientLibrary = 'gds32.dll'
    Port = '3050'
    Username = 'SYSDBA'
    Server = 'localhost'
    Connected = True
    LoginPrompt = False
    Left = 140
    Top = 592
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object query: TIBCQuery
    Connection = conexao
    Left = 856
    Top = 68
  end
  object estilo_menu: TAdvMenuOfficeStyler
    AntiAlias = aaNone
    AutoThemeAdapt = False
    Style = osOffice2007Obsidian
    Background.Position = bpCenter
    Background.Color = 16185078
    Background.ColorTo = 16185078
    ButtonAppearance.DownColor = 13421257
    ButtonAppearance.DownColorTo = 15395047
    ButtonAppearance.HoverColor = 14737117
    ButtonAppearance.HoverColorTo = 16052977
    ButtonAppearance.DownBorderColor = 11906984
    ButtonAppearance.HoverBorderColor = 11906984
    ButtonAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    ButtonAppearance.CaptionFont.Color = clWindowText
    ButtonAppearance.CaptionFont.Height = -11
    ButtonAppearance.CaptionFont.Name = 'Tahoma'
    ButtonAppearance.CaptionFont.Style = []
    IconBar.Color = 15658729
    IconBar.ColorTo = 15658729
    IconBar.CheckBorder = clNavy
    IconBar.RadioBorder = clNavy
    IconBar.SeparatorColor = 12961221
    IconBar.Size = 16
    SelectedItem.Color = 15465983
    SelectedItem.ColorTo = 11267071
    SelectedItem.ColorMirror = 6936319
    SelectedItem.ColorMirrorTo = 9889023
    SelectedItem.BorderColor = 10079963
    SelectedItem.Font.Charset = DEFAULT_CHARSET
    SelectedItem.Font.Color = clWindowText
    SelectedItem.Font.Height = -12
    SelectedItem.Font.Name = 'Segoe UI'
    SelectedItem.Font.Style = []
    SelectedItem.NotesFont.Charset = DEFAULT_CHARSET
    SelectedItem.NotesFont.Color = clWindowText
    SelectedItem.NotesFont.Height = -8
    SelectedItem.NotesFont.Name = 'Tahoma'
    SelectedItem.NotesFont.Style = []
    SelectedItem.CheckBorder = clNavy
    SelectedItem.RadioBorder = clNavy
    RootItem.Color = 12105910
    RootItem.ColorTo = 10526878
    RootItem.GradientDirection = gdVertical
    RootItem.Font.Charset = DEFAULT_CHARSET
    RootItem.Font.Color = clMenuText
    RootItem.Font.Height = -12
    RootItem.Font.Name = 'Segoe UI'
    RootItem.Font.Style = []
    RootItem.SelectedColor = 7778289
    RootItem.SelectedColorTo = 4296947
    RootItem.SelectedColorMirror = 946929
    RootItem.SelectedColorMirrorTo = 5021693
    RootItem.SelectedBorderColor = 4548219
    RootItem.HoverColor = 15465983
    RootItem.HoverColorTo = 11267071
    RootItem.HoverColorMirror = 6936319
    RootItem.HoverColorMirrorTo = 9889023
    RootItem.HoverBorderColor = 10079963
    Glyphs.SubMenu.Data = {
      5A000000424D5A000000000000003E0000002800000004000000070000000100
      0100000000001C0000000000000000000000020000000200000000000000FFFF
      FF0070000000300000001000000000000000100000003000000070000000}
    Glyphs.Check.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FDFF0000F8FF0000F07F0000F23F
      0000F71F0000FF8F0000FFCF0000FFEF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    Glyphs.Radio.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FC3F0000F81F0000F81F
      0000F81F0000F81F0000FC3F0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    SideBar.Font.Charset = DEFAULT_CHARSET
    SideBar.Font.Color = clWhite
    SideBar.Font.Height = -19
    SideBar.Font.Name = 'Tahoma'
    SideBar.Font.Style = [fsBold, fsItalic]
    SideBar.Image.Position = bpCenter
    SideBar.Background.Position = bpCenter
    SideBar.SplitterColorTo = clBlack
    Separator.Color = 12961221
    Separator.GradientType = gtBoth
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clGray
    NotesFont.Height = -8
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    MenuBorderColor = clSilver
    Left = 356
    Top = 16
  end
  object spCupom: TIBCStoredProc
    StoredProcName = 'ST_CUPOM_INSERT'
    Connection = conexao
    SQL.Strings = (
      
        'EXECUTE PROCEDURE ST_CUPOM_INSERT(:CODIGO, :NUMERO, :CCF, :ECF, ' +
        ':DATA, :HORA, :QTDE_ITEM, :VALOR_PRODUTO, :VALOR_DESCONTO, :VALO' +
        'R_ACRESCIMO, :VALOR_TOTAL, :VALOR_PAGO, :VALOR_TROCO, :COD_CLIEN' +
        'TE, :CANCELADO, :CPF_CONSUMIDOR, :NOME_CONSUMIDOR, :COD_VENDEDOR' +
        ', :COD_CAIXA, :ECF_CAIXA)')
    Left = 736
    Top = 152
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NUMERO'
        ParamType = ptInput
        Size = 12
      end
      item
        DataType = ftString
        Name = 'CCF'
        ParamType = ptInput
        Size = 12
      end
      item
        DataType = ftString
        Name = 'ECF'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftTime
        Name = 'HORA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'QTDE_ITEM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_ACRESCIMO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_TOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_PAGO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_TROCO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CANCELADO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CPF_CONSUMIDOR'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'NOME_CONSUMIDOR'
        ParamType = ptInput
        Size = 40
      end
      item
        DataType = ftInteger
        Name = 'COD_VENDEDOR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_CAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ECF_CAIXA'
        ParamType = ptInput
        Size = 3
      end>
    CommandStoredProcName = 'ST_CUPOM_INSERT'
  end
  object spCupom_Crediario: TIBCStoredProc
    StoredProcName = 'ST_CUPOM_CREDIARIO_INSERT'
    Connection = conexao
    Left = 432
    Top = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COD_CUPOM'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftTime
        Name = 'HORA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'VENCIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DESCRICAO'
        ParamType = ptInput
        Size = 30
      end>
  end
  object spCupom_Forma: TIBCStoredProc
    StoredProcName = 'ST_CUPOM_FORMA_INSERT'
    Connection = conexao
    SQL.Strings = (
      
        'EXECUTE PROCEDURE ST_CUPOM_FORMA_INSERT(:CODIGO, :COD_CUPOM, :FO' +
        'RMA, :VALOR, :PRESTACAO, :TIPO)')
    Left = 16
    Top = 220
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COD_CUPOM'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'FORMA'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftFloat
        Name = 'VALOR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PRESTACAO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
        Size = 30
      end>
    CommandStoredProcName = 'ST_CUPOM_FORMA_INSERT'
  end
  object spCupom_Consumidor: TIBCStoredProc
    StoredProcName = 'ST_CUPOM_CONSUMIDOR_INSERT'
    Connection = conexao
    Left = 424
    Top = 152
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ENDERECO'
        ParamType = ptInput
        Size = 80
      end
      item
        DataType = ftString
        Name = 'BAIRRO'
        ParamType = ptInput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'CIDADE'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'UF'
        ParamType = ptInput
        Size = 2
      end
      item
        DataType = ftString
        Name = 'CEP'
        ParamType = ptInput
        Size = 9
      end
      item
        DataType = ftString
        Name = 'CPF'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'RG'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'PLACA'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'KM'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'VENDEDOR'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'INFO_ADICIONAL1'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'INFO_ADICIONAL2'
        ParamType = ptInput
        Size = 50
      end>
  end
  object spCodigo_Global: TIBCStoredProc
    StoredProcName = 'ST_CODIGO_GLOBAL'
    Connection = conexao
    Left = 84
    Top = 220
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptOutput
        Value = 5
      end>
  end
  object docValidador: TACBrValidador
    IgnorarChar = './-'
    Left = 8
    Top = 424
  end
  object tbForma_Pgto: TVirtualTable
    IndexFieldNames = 'id'
    FieldDefs = <
      item
        Name = 'Nome'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Valor_Acumulado'
        DataType = ftFloat
      end
      item
        Name = 'Valor_Ultimo_Cupom'
        DataType = ftFloat
      end
      item
        Name = 'id'
        DataType = ftInteger
      end>
    Left = 580
    Top = 252
    Data = {
      0300040004004E6F6D6501001400000000000F0056616C6F725F4163756D756C
      61646F0600000000000000120056616C6F725F556C74696D6F5F4375706F6D06
      00000000000000020069640300000000000000000000000000}
    object tbForma_PgtoNome: TStringField
      FieldName = 'Nome'
    end
    object tbForma_PgtoValor_Acumulado: TFloatField
      FieldName = 'Valor_Acumulado'
    end
    object tbForma_PgtoValor_Ultimo_Cupom: TFloatField
      FieldName = 'Valor_Ultimo_Cupom'
    end
    object tbForma_Pgtoid: TIntegerField
      FieldName = 'id'
    end
  end
  object spNao_Fiscal: TIBCStoredProc
    StoredProcName = 'ST_NAO_FISCAL'
    Connection = conexao
    Left = 728
    Top = 476
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ECF'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INDICE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DESCRICAO'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftFloat
        Name = 'VALOR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COO'
        ParamType = ptInput
        Size = 6
      end
      item
        DataType = ftString
        Name = 'GNF'
        ParamType = ptInput
        Size = 6
      end
      item
        DataType = ftString
        Name = 'GRG'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CDC'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DENOMINACAO'
        ParamType = ptInput
      end
      item
        DataType = ftTime
        Name = 'HORA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODVENDEDOR'
        ParamType = ptInput
      end>
  end
  object spReducaoZ: TIBCStoredProc
    StoredProcName = 'ST_REDUCAOZ'
    Connection = conexao
    Left = 716
    Top = 404
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ECF'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'USUARIO'
        ParamType = ptInput
        Size = 2
      end
      item
        DataType = ftString
        Name = 'CRZ'
        ParamType = ptInput
        Size = 6
      end
      item
        DataType = ftString
        Name = 'COO'
        ParamType = ptInput
        Size = 6
      end
      item
        DataType = ftString
        Name = 'CRO'
        ParamType = ptInput
        Size = 6
      end
      item
        DataType = ftDate
        Name = 'DATA_MOVIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_EMISSAO'
        ParamType = ptInput
      end
      item
        DataType = ftTime
        Name = 'HORA_EMISSAO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOTALIZADOR_GERAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VENDA_BRUTA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CANCELAMENTO_ICMS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DESCONTO_ICMS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOTAL_ISS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CANCELAMENTO_ISS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DESCONTO_ISS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VENDA_LIQUIDA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACRESCIMO_ICMS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACRESCIMO_ISS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ECF_CAIXA'
        ParamType = ptInput
        Size = 3
      end>
  end
  object spReducaoZ_Total_Parcial: TIBCStoredProc
    StoredProcName = 'ST_REDUCAOZ_TOTAL_PARCIAL'
    Connection = conexao
    Left = 828
    Top = 452
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COD_REDUCAOZ'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'TOTALIZADOR'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftFloat
        Name = 'VALOR'
        ParamType = ptInput
      end>
  end
  object tbAliquota: TVirtualTable
    IndexFieldNames = 'codigo'
    FieldDefs = <
      item
        Name = 'Codigo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Aliquota'
        DataType = ftFloat
      end>
    Left = 664
    Top = 220
    Data = {
      030002000600436F6469676F01001400000000000800416C6971756F74610600
      000000000000000000000000}
    object tbAliquotaCodigo: TStringField
      FieldName = 'Codigo'
    end
    object tbAliquotaAliquota: TFloatField
      FieldName = 'Aliquota'
    end
  end
  object Conexao_Servidor: TIBCConnection
    Database = 'C:\Softlogus\server\bd\BASE.FDB'
    SQLDialect = 1
    ClientLibrary = 'gds32.dll'
    Port = '3050'
    Username = 'SYSDBA'
    Server = 'localhost'
    LoginPrompt = False
    Left = 40
    Top = 296
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object query_servidor: TIBCQuery
    Connection = Conexao_Servidor
    Left = 288
    Top = 456
  end
  object spCupom_Temp: TIBCStoredProc
    StoredProcName = 'ST_CUPOM_TEMP_INSERT'
    Connection = conexao
    Left = 228
    Top = 220
    ParamData = <
      item
        DataType = ftString
        Name = 'NUMERO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCF'
        ParamType = ptInput
        Size = 12
      end
      item
        DataType = ftString
        Name = 'ECF'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftTime
        Name = 'HORA'
        ParamType = ptInput
      end>
  end
  object spCupom_Temp_delete: TIBCStoredProc
    StoredProcName = 'ST_CUPOM_TEMP_DELETE'
    Connection = conexao
    Left = 152
    Top = 220
  end
  object spCupom_Temp_Edit: TIBCStoredProc
    StoredProcName = 'ST_CUPOM_TEMP_EDIT'
    Connection = conexao
    Left = 296
    Top = 220
    ParamData = <
      item
        DataType = ftString
        Name = 'PROCEDIMENTO'
        ParamType = ptInput
      end>
  end
  object qrtotalizador: TIBCQuery
    Connection = conexao
    Left = 68
    Top = 120
  end
  object qrMestre: TIBCQuery
    Connection = Conexao_Servidor
    Left = 908
    Top = 76
  end
  object Dlg_arquivo: TOpenDialog
    Filter = 'Arquivo Texto|*.txt'
    Left = 184
    Top = 620
  end
  object qrcliente: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000007')
    Left = 288
    Top = 152
  end
  object qrcontasreceber: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000049')
    Left = 136
    Top = 152
  end
  object qrconfig: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000001')
    Left = 220
    Top = 152
  end
  object qrcaixa_operador: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000045')
    Left = 860
    Top = 8
  end
  object qrcaixa_mov: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000044')
    Left = 752
    Top = 16
  end
  object qrbanco: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000013')
    Left = 16
    Top = 28
  end
  object qrcontacorrente: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000041')
    Left = 168
    Top = 20
    object qrcontacorrenteCONTA: TStringField
      DisplayLabel = 'Conta'
      DisplayWidth = 15
      FieldName = 'CONTA'
      Size = 15
    end
    object qrcontacorrentebanco: TStringField
      DisplayLabel = 'Banco'
      DisplayWidth = 19
      FieldKind = fkLookup
      FieldName = 'banco'
      LookupDataSet = qrbanco
      LookupKeyFields = 'numero'
      LookupResultField = 'BANCO'
      KeyFields = 'codbanco'
      Size = 40
      Lookup = True
    end
    object qrcontacorrenteAGENCIA: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      DisplayWidth = 6
      FieldName = 'AGENCIA'
      Size = 10
    end
    object qrcontacorrenteTITULAR: TStringField
      DisplayLabel = 'Titular'
      DisplayWidth = 31
      FieldName = 'TITULAR'
      Size = 30
    end
    object qrcontacorrenteCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrcontacorrenteCODBANCO: TStringField
      DisplayWidth = 3
      FieldName = 'CODBANCO'
      Visible = False
      Size = 3
    end
    object qrcontacorrenteSALDO: TFloatField
      DisplayWidth = 10
      FieldName = 'SALDO'
      Visible = False
    end
    object qrcontacorrenteNOME_AGENCIA: TStringField
      DisplayWidth = 30
      FieldName = 'NOME_AGENCIA'
      Visible = False
      Size = 30
    end
  end
  object qrlancamento_conta: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000042')
    Left = 84
    Top = 28
  end
  object spDav_Codigo: TIBCStoredProc
    StoredProcName = 'SPCODIGO_DAV'
    Connection = Conexao_Servidor
    Left = 68
    Top = 532
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptOutput
      end>
  end
  object spDAV: TIBCStoredProc
    StoredProcName = 'ST_DAV'
    Connection = conexao
    Left = 368
    Top = 220
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ECF'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'COO'
        ParamType = ptInput
        Size = 6
      end
      item
        DataType = ftString
        Name = 'NUMERO'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TITULO'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftFloat
        Name = 'VALOR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COO_CUPOM_FISCAL'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'CCF'
        ParamType = ptInput
        Size = 6
      end>
  end
  object query_servidor2: TIBCQuery
    Connection = Conexao_Servidor
    Left = 396
    Top = 448
  end
  object qrfilial: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000004')
    Left = 448
    Top = 24
  end
  object qrtransportador: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000010')
    Left = 560
    Top = 8
  end
  object qrcfop: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000030')
    Left = 652
    Top = 16
  end
  object qrfiscal_modelo: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000082')
    Left = 580
    Top = 76
  end
  object qrgrupo: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000017')
    Left = 496
    Top = 84
  end
  object qrsubgrupo: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000018')
    Left = 764
    Top = 84
  end
  object qrmarca: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000019')
    Left = 696
    Top = 84
  end
  object qrfornecedor: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000009')
    Left = 428
    Top = 76
  end
  object qrproduto: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000025')
    Left = 288
    Top = 28
  end
  object qrproduto_mov: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000032')
    Left = 228
    Top = 36
  end
  object qrgrade_produto: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000032')
    Left = 336
    Top = 76
  end
  object St_Abastecimento_codigo: TIBCStoredProc
    StoredProcName = 'ST_ABASTECIMENTO_CODIGO'
    Connection = conexao
    Left = 568
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptOutput
      end>
  end
  object St_Abastecimento: TIBCStoredProc
    StoredProcName = 'ST_ABASTECIMENTO_INSERT'
    Connection = conexao
    Left = 652
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BOMBA'
        ParamType = ptInput
        Size = 5
      end
      item
        DataType = ftString
        Name = 'BICO'
        ParamType = ptInput
        Size = 5
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'HORA'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftInteger
        Name = 'COD_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'QTDE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'UNITARIO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EI'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EF'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SITUACAO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TANQUE'
        ParamType = ptInput
        Size = 5
      end
      item
        DataType = ftString
        Name = 'NUMERO_ABASTECIMENTO'
        ParamType = ptInput
        Size = 6
      end>
  end
  object st_bico_movimento: TIBCStoredProc
    StoredProcName = 'ST_BICO_MOVIMENTO'
    Connection = conexao
    Left = 492
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'COD_BICO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VOLUME'
        ParamType = ptInput
      end>
  end
  object spCupom_Item_Temp: TIBCStoredProc
    StoredProcName = 'ST_CUPOM_ITEM_TEMP_INSERT'
    Connection = conexao
    Left = 388
    Top = 192
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'COD_CUPOM'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'UNIDADE'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftFloat
        Name = 'QTDE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_UNITARIO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_SUBTOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_ACRESCIMO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_TOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CST'
        ParamType = ptInput
        Size = 3
      end
      item
        DataType = ftFloat
        Name = 'ALIQUOTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CANCELADO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COD_TOTALIZADOR'
        ParamType = ptInput
        Size = 7
      end
      item
        DataType = ftFixedChar
        Name = 'TAMANHO'
        ParamType = ptInput
        Size = 5
      end
      item
        DataType = ftFixedChar
        Name = 'COR'
        ParamType = ptInput
        Size = 5
      end>
  end
  object spCupom_Item: TIBCStoredProc
    StoredProcName = 'ST_CUPOM_ITEM_INSERT'
    Connection = conexao
    Left = 812
    Top = 152
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'COD_CUPOM'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'UNIDADE'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftFloat
        Name = 'QTDE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_UNITARIO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_SUBTOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_ACRESCIMO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_TOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CST'
        ParamType = ptInput
        Size = 3
      end
      item
        DataType = ftFloat
        Name = 'ALIQUOTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CANCELADO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COD_TOTALIZADOR'
        ParamType = ptInput
        Size = 7
      end
      item
        DataType = ftFixedChar
        Name = 'TAMANHO'
        ParamType = ptInput
        Size = 5
      end
      item
        DataType = ftFixedChar
        Name = 'COR'
        ParamType = ptInput
        Size = 5
      end>
  end
  object Qremitente: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c999999')
    Left = 164
    Top = 68
    object QremitenteCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object QremitenteNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object QremitenteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 80
    end
    object QremitenteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object QremitenteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object QremitenteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object QremitenteUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object QremitenteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object QremitenteTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
    object QremitenteCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object QremitenteIE: TStringField
      FieldName = 'IE'
    end
    object QremitenteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object QremitenteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 80
    end
    object QremitenteRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 50
    end
    object QremitenteCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object QremitenteLOGO: TBlobField
      FieldName = 'LOGO'
    end
    object QremitenteFAX: TStringField
      FieldName = 'FAX'
    end
    object QremitenteNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object QremitenteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object QremitenteCONTRIBUINTE_IPI: TStringField
      FieldName = 'CONTRIBUINTE_IPI'
      Size = 4
    end
    object QremitenteSUBSTITUTO_TRIBUTARIO: TStringField
      FieldName = 'SUBSTITUTO_TRIBUTARIO'
      Size = 4
    end
    object QremitenteCOMENTARIOS: TStringField
      FieldName = 'COMENTARIOS'
      Size = 50
    end
    object QremitenteDATAHORA_INICIAL: TDateTimeField
      FieldName = 'DATAHORA_INICIAL'
    end
    object QremitenteDATAHORA_FINAL: TDateTimeField
      FieldName = 'DATAHORA_FINAL'
    end
    object QremitenteDATA_INVENTARIO: TDateTimeField
      FieldName = 'DATA_INVENTARIO'
    end
    object QremitenteESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object QremitenteVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object QremitenteCONHECIMENTO: TIntegerField
      FieldName = 'CONHECIMENTO'
    end
    object QremitenteCPF: TStringField
      FieldName = 'CPF'
    end
    object QremitenteRG: TStringField
      FieldName = 'RG'
    end
    object QremitenteDIA_VENCIMENTO_CHAVE: TStringField
      FieldName = 'DIA_VENCIMENTO_CHAVE'
      Size = 2
    end
    object QremitenteINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
    end
    object QremitenteDATA_ABERTURA: TDateTimeField
      FieldName = 'DATA_ABERTURA'
    end
    object QremitenteCOD_MUNICIPIO_IBGE: TStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object QremitenteIBGE: TStringField
      FieldName = 'IBGE'
      Size = 10
    end
  end
  object ACBRNFCe: TACBrNFe
    Configuracoes.Geral.Salvar = True
    Configuracoes.Geral.PathSalvar = 'C:\Softlogus\PDV\xml\'
    Configuracoes.Geral.ExibirErroSchema = True
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.RetirarAcentos = True
    Configuracoes.Geral.ModeloDF = moNFCe
    Configuracoes.Geral.VersaoDF = ve310
    Configuracoes.Geral.ValidarDigest = False
    Configuracoes.WebServices.Visualizar = True
    Configuracoes.WebServices.UF = 'DF'
    Configuracoes.WebServices.AguardarConsultaRet = 15000
    Configuracoes.WebServices.IntervaloTentativas = 1000
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    DANFE = ACBRDANFENFCe
    Left = 200
    Top = 568
  end
  object ACBRDANFENFCe: TACBrNFeDANFEFR
    ACBrNFe = ACBRNFCe
    Logo = 'C:\Softlogus\PDV\Img\logo-nfce.jpg'
    PathPDF = 'C:\Softlogus\PDV\xml\'
    MostrarPreview = False
    MostrarStatus = True
    TipoDANFE = tiNFCe
    NumCopias = 1
    ImprimirDescPorc = True
    ImprimirTotalLiquido = True
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    CasasDecimais._qCom = 2
    CasasDecimais._vUnCom = 2
    ExibirResumoCanhoto = False
    FormularioContinuo = False
    TamanhoFonte_DemaisCampos = 10
    ProdutosPorPagina = 0
    ImprimirDetalhamentoEspecifico = False
    NFeCancelada = False
    LocalImpCanhoto = 0
    ImprimeItens = True
    ViaConsumidor = True
    EspessuraBorda = 1
    ExibirTotalTributosItem = False
    ExibeCampoFatura = True
    TributosFonte = 'IBPT'
    TributosPercentual = ptValorProdutos
    ImprimirUnQtVlComercial = True
    Detalhado = False
    DescricaoViaEstabelec = 'Via do Consumidor'
    ExpandirDadosAdicionaisAuto = False
    ImprimirDadosArma = True
    Left = 132
    Top = 528
  end
  object ACBrEAD1: TACBrEAD
    Left = 180
    Top = 464
  end
  object conBASE: TZConnection
    ControlsCodePage = cCP_UTF16
    UTF8StringsAsWideField = True
    AutoCommit = False
    HostName = 'localhost'
    Port = 0
    Database = 'C:\Softlogus\Server\bd\BASE.FDB'
    User = 'sysdba'
    Password = 'masterkey'
    Protocol = 'firebird-2.5'
    Left = 476
    Top = 364
  end
  object qradic_mestre: TZQuery
    Connection = conBASE
    SQL.Strings = (
      'select * from C000000')
    Params = <>
    Left = 376
    Top = 368
  end
  object spNFCE_Insert: TIBCStoredProc
    StoredProcName = 'NFCE_INSERT'
    Connection = Conexao_Servidor
    SQL.Strings = (
      
        'EXECUTE PROCEDURE NFCE_INSERT(:PNUMERO, :PDATA, :PTOTAL, :PCLIEN' +
        'TE, :PCHAVE, :PXML, :PSITUACAO, :PTROCO)')
    CachedUpdates = True
    Left = 500
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Precision = 10
        Name = 'PNUMERO'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'PDATA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PTOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PCLIENTE'
        ParamType = ptInput
        Size = 255
      end
      item
        DataType = ftString
        Name = 'PCHAVE'
        ParamType = ptInput
        Size = 255
      end
      item
        DataType = ftString
        Name = 'PXML'
        ParamType = ptInput
        Size = 255
      end
      item
        DataType = ftInteger
        Precision = 10
        Name = 'PSITUACAO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PTROCO'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'NFCE_INSERT'
  end
  object ACBrBAL1: TACBrBAL
    Porta = 'COM1'
    MonitorarBalanca = True
    OnLePeso = ACBrBAL1LePeso
    Left = 96
    Top = 360
  end
  object query_carga: TIBCQuery
    Connection = conexao
    SQL.Strings = (
      'SELECT'
      'CARGA_DATA,'
      'CARGA_HORA'
      ' FROM config;')
    Left = 280
    Top = 368
  end
end
