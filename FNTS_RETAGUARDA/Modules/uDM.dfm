object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 527
  Width = 619
  object sdsCliente: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from CLIENTES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBAcesso
    Left = 96
    Top = 16
  end
  object DspCliente: TDataSetProvider
    DataSet = sdsCliente
    UpdateMode = upWhereKeyOnly
    Left = 135
    Top = 16
  end
  object cdsClientes: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    PacketRecords = 100
    Params = <>
    ProviderName = 'DspCliente'
    Left = 175
    Top = 16
    object cdsClientesCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
      Required = True
    end
    object cdsClientesNOME: TStringField
      FieldName = 'NOME'
      Size = 75
    end
    object cdsClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 75
    end
    object cdsClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
    end
    object cdsClientesCIDADE: TStringField
      FieldName = 'CIDADE'
    end
    object cdsClientesCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsClientesUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 75
    end
    object cdsClientesTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
  end
  object sdsProduto: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from PRODUTOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBAcesso
    Left = 96
    Top = 48
  end
  object DspProduto: TDataSetProvider
    DataSet = sdsProduto
    UpdateMode = upWhereKeyOnly
    Left = 135
    Top = 48
  end
  object cdsProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspProduto'
    Left = 175
    Top = 48
    object cdsProdutosPRODUTOID: TIntegerField
      FieldName = 'PRODUTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 75
    end
    object cdsProdutosESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object cdsProdutosPRECO: TFloatField
      FieldName = 'PRECO'
      currency = True
    end
    object cdsProdutosFABRICANTE: TIntegerField
      FieldName = 'FABRICANTE'
      Required = True
    end
    object cdsProdutosCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
      Required = True
    end
    object cdsProdutosDESCCATEGORIA: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCCATEGORIA'
      LookupDataSet = cdsCategoria
      LookupKeyFields = 'CATEGORIAID'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CATEGORIA'
      Size = 50
      Lookup = True
    end
    object cdsProdutosDESCFABRICANTE: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCFABRICANTE'
      LookupDataSet = cdsFabricante
      LookupKeyFields = 'FABRICANTEID'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'FABRICANTE'
      Size = 50
      Lookup = True
    end
  end
  object sdsUsuario: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from USUARIOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBAcesso
    Left = 96
    Top = 84
  end
  object dspUsuario: TDataSetProvider
    DataSet = sdsUsuario
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 135
    Top = 84
  end
  object cdsUsuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUsuario'
    Left = 175
    Top = 84
    object cdsUsuariosUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsUsuariosPERFILID: TIntegerField
      FieldName = 'PERFILID'
      Required = True
    end
    object cdsUsuariosNOME: TStringField
      FieldName = 'NOME'
      Size = 75
    end
    object cdsUsuariosEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 75
    end
    object cdsUsuariosLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 10
    end
    object cdsUsuariosSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object cdsUsuariosVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 1
    end
    object cdsUsuariosPerfil: TStringField
      FieldKind = fkLookup
      FieldName = 'Perfil'
      LookupDataSet = cdsPerfil
      LookupKeyFields = 'PERFILID'
      LookupResultField = 'NOME'
      KeyFields = 'PERFILID'
      Size = 50
      Lookup = True
    end
  end
  object sdsPerfil: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from PERFIL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBAcesso
    Left = 96
    Top = 176
  end
  object DspPerfil: TDataSetProvider
    DataSet = sdsPerfil
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 135
    Top = 176
  end
  object cdsPerfil: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPerfil'
    Left = 175
    Top = 176
    object cdsPerfilPERFILID: TIntegerField
      FieldName = 'PERFILID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPerfilNOME: TStringField
      FieldName = 'NOME'
    end
    object cdsPerfilDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 75
    end
    object cdsPerfilsdsPerfilConf: TDataSetField
      FieldName = 'sdsPerfilConf'
    end
  end
  object sdsVendas: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from VENDAS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBAcesso
    Left = 320
    Top = 176
  end
  object DspVendas: TDataSetProvider
    DataSet = sdsVendas
    Left = 359
    Top = 176
  end
  object cdsVendas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspVendas'
    Left = 399
    Top = 176
    object cdsVendasVENDAID: TIntegerField
      FieldName = 'VENDAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsVendasCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
    end
    object cdsVendasUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
    end
    object cdsVendasDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsVendassdsItens: TDataSetField
      FieldName = 'sdsItens'
    end
  end
  object sdsPerfilConf: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from PERFIL_CONF WHERE PERFILID = :PERFILID'
    DataSource = DsPerfil_PerfilConf
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PERFILID'
        ParamType = ptInput
      end>
    SQLConnection = DBAcesso
    Left = 96
    Top = 232
  end
  object DsPerfil_PerfilConf: TDataSource
    DataSet = sdsPerfil
    Left = 48
    Top = 208
  end
  object cdsPerfilConf: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPerfilsdsPerfilConf
    Params = <>
    Left = 176
    Top = 232
    object cdsPerfilConfNAME: TStringField
      DisplayWidth = 75
      FieldName = 'NAME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 75
    end
    object cdsPerfilConfCAPTION: TStringField
      FieldName = 'CAPTION'
      Size = 75
    end
    object cdsPerfilConfPREMISSAO: TStringField
      FieldName = 'PREMISSAO'
      Size = 1
    end
    object cdsPerfilConfPERFILID: TIntegerField
      FieldName = 'PERFILID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sdsItens: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from VENDAITEM WHERE VENDAID = :VENDAID'
    DataSource = DsVenda_Itens
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'VENDAID'
        ParamType = ptInput
      end>
    SQLConnection = DBAcesso
    Left = 320
    Top = 232
  end
  object DsVenda_Itens: TDataSource
    DataSet = sdsVendas
    Left = 272
    Top = 208
  end
  object cdsItens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsVendassdsItens
    Params = <>
    Left = 400
    Top = 232
  end
  object sdsAcesso: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from ACESSOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBAcesso
    Left = 96
    Top = 124
  end
  object DspAcesso: TDataSetProvider
    DataSet = sdsAcesso
    UpdateMode = upWhereKeyOnly
    Left = 135
    Top = 124
  end
  object cdsAcesso: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspAcesso'
    Left = 175
    Top = 124
    object cdsAcessoUSUARIOID: TIntegerField
      FieldName = 'USUARIOID'
      Required = True
    end
    object cdsAcessoFORMULARIO: TStringField
      FieldName = 'FORMULARIO'
      Required = True
      Size = 75
    end
    object cdsAcessoINCLUIR: TStringField
      FieldName = 'INCLUIR'
      Size = 1
    end
    object cdsAcessoEXCLUIR: TStringField
      FieldName = 'EXCLUIR'
      Size = 1
    end
    object cdsAcessoALTERAR: TStringField
      FieldName = 'ALTERAR'
      Size = 1
    end
    object cdsAcessoCONSULTAR: TStringField
      FieldName = 'CONSULTAR'
      Size = 1
    end
    object cdsAcessoIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      Size = 1
    end
    object cdsAcessoUSUARIO: TStringField
      FieldKind = fkLookup
      FieldName = 'USUARIO'
      LookupDataSet = cdsUsuarios
      LookupKeyFields = 'USUARIOID'
      LookupResultField = 'NOME'
      KeyFields = 'USUARIOID'
      Size = 75
      Lookup = True
    end
  end
  object sdsCategoria: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from CATEGORIA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBAcesso
    Left = 320
    Top = 16
    object sdsCategoriaCATEGORIAID: TIntegerField
      FieldName = 'CATEGORIAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsCategoriaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 75
    end
  end
  object sdsFabricante: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from FABRICANTE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBAcesso
    Left = 320
    Top = 64
    object sdsFabricanteFABRICANTEID: TIntegerField
      FieldName = 'FABRICANTEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsFabricanteDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 75
    end
  end
  object DspCategoria: TDataSetProvider
    DataSet = sdsCategoria
    UpdateMode = upWhereKeyOnly
    Left = 376
    Top = 16
  end
  object DspFabricante: TDataSetProvider
    DataSet = sdsFabricante
    UpdateMode = upWhereKeyOnly
    Left = 376
    Top = 64
  end
  object cdsCategoria: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCategoria'
    Left = 432
    Top = 16
    object cdsCategoriaCATEGORIAID: TIntegerField
      FieldName = 'CATEGORIAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCategoriaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 75
    end
  end
  object cdsFabricante: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspFabricante'
    Left = 432
    Top = 64
    object cdsFabricanteFABRICANTEID: TIntegerField
      FieldName = 'FABRICANTEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsFabricanteDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 75
    end
  end
  object sdsConsulta: TSQLDataSet
    SchemaName = 'sysdba'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBAcesso
    Left = 48
    Top = 328
  end
  object DspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 116
    Top = 328
  end
  object LocalConnection1: TLocalConnection
    Left = 192
    Top = 328
  end
  object DBAcesso: TSQLConnection
    ConnectionName = 'DBVENDAS'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver180.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=18.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver180.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=18.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      
        'Database=C:\Documents and Settings\Administrador\Meus documentos' +
        '\Comercial\DB\DBVENDAS.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False')
    Connected = True
    Left = 24
    Top = 24
  end
end
