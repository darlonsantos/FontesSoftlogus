object DMBanco: TDMBanco
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 150
  Width = 170
  object IBTClie: TIBTable
    Database = IBDB
    Transaction = IBT
    AfterPost = IBTClieAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'TELEFONE'
        Attributes = [faFixed]
        DataType = ftString
        Size = 13
      end>
    IndexDefs = <
      item
        Name = 'PK_CLIENTE'
        Fields = 'CODIGO'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'CLIENTE'
    UpdateObject = IBUClie
    UniDirectional = False
    Left = 8
    Top = 8
    object IBTClieCODIGO: TIntegerField
      DisplayWidth = 5
      FieldName = 'CODIGO'
    end
    object IBTClieNOME: TIBStringField
      DisplayWidth = 35
      FieldName = 'NOME'
      Size = 60
    end
    object IBTClieENDERECO: TIBStringField
      DisplayWidth = 35
      FieldName = 'ENDERECO'
      Size = 100
    end
    object IBTClieTELEFONE: TIBStringField
      DisplayWidth = 13
      FieldName = 'TELEFONE'
      Size = 13
    end
  end
  object IBDB: TIBDatabase
    DatabaseName = 'DADOS.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    DefaultTransaction = IBT
    ServerType = 'IBServer'
    Left = 88
    Top = 64
  end
  object IBT: TIBTransaction
    DefaultDatabase = IBDB
    Left = 40
    Top = 64
  end
  object DSClie: TDataSource
    DataSet = IBTClie
    Left = 64
    Top = 8
  end
  object IBUClie: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  RDB$DB_KEY as IBX_INTERNAL_DBKEY, '
      '  CODIGO,'
      '  NOME,'
      '  ENDERECO,'
      '  TELEFONE'
      'from CLIENTE '
      'where'
      '  CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update CLIENTE'
      'set'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  ENDERECO = :ENDERECO,'
      '  TELEFONE = :TELEFONE'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into CLIENTE'
      '  (CODIGO, NOME, ENDERECO, TELEFONE)'
      'values'
      '  (:CODIGO, :NOME, :ENDERECO, :TELEFONE)')
    DeleteSQL.Strings = (
      'delete from CLIENTE'
      'where'
      '  CODIGO = :OLD_CODIGO')
    Left = 120
    Top = 8
  end
end
