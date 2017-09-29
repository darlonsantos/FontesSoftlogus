object DmSPED: TDmSPED
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 285
  Top = 141
  Height = 422
  Width = 531
  object QryEmpresa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCdEmp'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select empresa.cd_empresa,empresa.ds_empresa,empresa.fantasia,'
      'empresa.registro_1,empresa.registro_2,empresa.endereco,'
      'empresa.numero,empresa.bairro,empresa.cidade,empresa.cep,'
      'empresa.uf,empresa.tel_1,empresa.tel_2,cidade.codigo_ibge,'
      'empresa.cod_suframa,empresa.insc_municipal,empresa.e_mail,'
      'empresa.CD_ESCCONTABIL from empresa'
      'left outer join cidade on empresa.cd_cidade = cidade.cd_cidade'
      'where empresa.cd_empresa = :pCdEmp')
    SQLConnection = DmConexao.ConexaoDBX
    Left = 24
    Top = 24
    object QryEmpresaCD_EMPRESA: TIntegerField
      FieldName = 'CD_EMPRESA'
      Required = True
    end
    object QryEmpresaDS_EMPRESA: TStringField
      FieldName = 'DS_EMPRESA'
      Size = 50
    end
    object QryEmpresaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 25
    end
    object QryEmpresaREGISTRO_1: TStringField
      FieldName = 'REGISTRO_1'
    end
    object QryEmpresaREGISTRO_2: TStringField
      FieldName = 'REGISTRO_2'
    end
    object QryEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 70
    end
    object QryEmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object QryEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
    end
    object QryEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
    end
    object QryEmpresaCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object QryEmpresaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object QryEmpresaTEL_1: TStringField
      FieldName = 'TEL_1'
      Size = 25
    end
    object QryEmpresaTEL_2: TStringField
      FieldName = 'TEL_2'
      Size = 25
    end
    object QryEmpresaCODIGO_IBGE: TStringField
      FieldName = 'CODIGO_IBGE'
      Size = 10
    end
    object QryEmpresaCOD_SUFRAMA: TStringField
      FieldName = 'COD_SUFRAMA'
      Size = 9
    end
    object QryEmpresaINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
    end
    object QryEmpresaE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 40
    end
    object QryEmpresaCD_ESCCONTABIL: TIntegerField
      FieldName = 'CD_ESCCONTABIL'
    end
  end
  object DspEmpresa: TDataSetProvider
    DataSet = QryEmpresa
    UpdateMode = upWhereKeyOnly
    Left = 24
    Top = 80
  end
  object CdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCdEmp'
        ParamType = ptInput
      end>
    ProviderName = 'DspEmpresa'
    Left = 24
    Top = 128
    object CdsEmpresaCD_EMPRESA: TIntegerField
      FieldName = 'CD_EMPRESA'
      Required = True
    end
    object CdsEmpresaDS_EMPRESA: TStringField
      FieldName = 'DS_EMPRESA'
      Size = 50
    end
    object CdsEmpresaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 25
    end
    object CdsEmpresaREGISTRO_1: TStringField
      FieldName = 'REGISTRO_1'
    end
    object CdsEmpresaREGISTRO_2: TStringField
      FieldName = 'REGISTRO_2'
    end
    object CdsEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 70
    end
    object CdsEmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object CdsEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
    end
    object CdsEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
    end
    object CdsEmpresaCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object CdsEmpresaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object CdsEmpresaTEL_1: TStringField
      FieldName = 'TEL_1'
      Size = 25
    end
    object CdsEmpresaTEL_2: TStringField
      FieldName = 'TEL_2'
      Size = 25
    end
    object CdsEmpresaCODIGO_IBGE: TStringField
      FieldName = 'CODIGO_IBGE'
      Size = 10
    end
    object CdsEmpresaCOD_SUFRAMA: TStringField
      FieldName = 'COD_SUFRAMA'
      Size = 9
    end
    object CdsEmpresaINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
    end
    object CdsEmpresaE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 40
    end
    object CdsEmpresaCD_ESCCONTABIL: TIntegerField
      FieldName = 'CD_ESCCONTABIL'
    end
  end
  object QryContador: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCodigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select esccontabil.ds_contador,esccontabil.cpf_contador,'
      'esccontabil.crc_contador,esccontabil.registro_1,'
      'esccontabil.cep,esccontabil.endereco,esccontabil.numero,'
      'esccontabil.bairro,esccontabil.tel_1,esccontabil.tel_2,'
      'esccontabil.e_mail,cidade.codigo_ibge from esccontabil'
      
        'left outer join cidade on esccontabil.cd_cidade = cidade.cd_cida' +
        'de'
      'where esccontabil.cd_esccontabil = :pCodigo')
    SQLConnection = DmConexao.ConexaoDBX
    Left = 96
    Top = 24
    object QryContadorDS_CONTADOR: TStringField
      FieldName = 'DS_CONTADOR'
      Size = 50
    end
    object QryContadorCPF_CONTADOR: TStringField
      FieldName = 'CPF_CONTADOR'
    end
    object QryContadorCRC_CONTADOR: TStringField
      FieldName = 'CRC_CONTADOR'
      Size = 15
    end
    object QryContadorREGISTRO_1: TStringField
      FieldName = 'REGISTRO_1'
    end
    object QryContadorCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object QryContadorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 70
    end
    object QryContadorNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object QryContadorBAIRRO: TStringField
      FieldName = 'BAIRRO'
    end
    object QryContadorTEL_1: TStringField
      FieldName = 'TEL_1'
      Size = 25
    end
    object QryContadorTEL_2: TStringField
      FieldName = 'TEL_2'
      Size = 25
    end
    object QryContadorE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 40
    end
    object QryContadorCODIGO_IBGE: TStringField
      FieldName = 'CODIGO_IBGE'
      Size = 10
    end
  end
  object DspContador: TDataSetProvider
    DataSet = QryContador
    UpdateMode = upWhereKeyOnly
    Left = 96
    Top = 80
  end
  object CdsContabil: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCodigo'
        ParamType = ptInput
      end>
    ProviderName = 'DspContador'
    Left = 96
    Top = 128
    object CdsContabilDS_CONTADOR: TStringField
      FieldName = 'DS_CONTADOR'
      Size = 50
    end
    object CdsContabilCPF_CONTADOR: TStringField
      FieldName = 'CPF_CONTADOR'
    end
    object CdsContabilCRC_CONTADOR: TStringField
      FieldName = 'CRC_CONTADOR'
      Size = 15
    end
    object CdsContabilREGISTRO_1: TStringField
      FieldName = 'REGISTRO_1'
    end
    object CdsContabilCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object CdsContabilENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 70
    end
    object CdsContabilNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object CdsContabilBAIRRO: TStringField
      FieldName = 'BAIRRO'
    end
    object CdsContabilTEL_1: TStringField
      FieldName = 'TEL_1'
      Size = 25
    end
    object CdsContabilTEL_2: TStringField
      FieldName = 'TEL_2'
      Size = 25
    end
    object CdsContabilE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 40
    end
    object CdsContabilCODIGO_IBGE: TStringField
      FieldName = 'CODIGO_IBGE'
      Size = 10
    end
  end
  object QryClientes: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'pDatai'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'pDataf'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pEmpresa'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select cliente.cd_cliente,cliente.ds_cliente,cliente.pais,'
      'cliente.registro_1,cliente.categoria,cliente.registro_2,'
      'cidade.codigo_ibge,cliente.endereco,cliente.numero,'
      
        'cliente.bairro,cliente.uf,nfemsg.STATUS_NFE,cliente.codigo_pais ' +
        'from notasai'
      
        'left outer join cliente on cliente.cd_cliente = notasai.cd_clien' +
        'te'
      'left outer join cidade on cliente.cd_cidade = cidade.cd_cidade'
      'left outer join nfemsg on nfemsg.cd_saida = notasai.cd_saida'
      
        'left outer join natureza on notasai.cd_natureza = natureza.cd_na' +
        'tureza'
      'where notasai.dt_saida between :pDatai and :pDataf'
      'and (nfemsg.STATUS_NFE = '#39'100'#39' or nfemsg.STATUS_NFE is null )'
      'and notasai.nota_cancelada = 0'
      'and notasai.cd_empresa = :pEmpresa'
      'and notasai.num_doc is not null'
      'and natureza.tributar_icms = -1'
      'group by cliente.cd_cliente,cliente.ds_cliente,cliente.pais,'
      'cliente.registro_1,cliente.categoria,cliente.registro_2,'
      'cidade.codigo_ibge,cliente.endereco,cliente.numero,'
      'cliente.bairro,cliente.uf,nfemsg.STATUS_NFE,cliente.codigo_pais')
    SQLConnection = DmConexao.ConexaoDBX
    Left = 168
    Top = 24
    object QryClientesCD_CLIENTE: TIntegerField
      FieldName = 'CD_CLIENTE'
      Required = True
    end
    object QryClientesDS_CLIENTE: TStringField
      FieldName = 'DS_CLIENTE'
      Size = 50
    end
    object QryClientesPAIS: TStringField
      FieldName = 'PAIS'
    end
    object QryClientesREGISTRO_1: TStringField
      FieldName = 'REGISTRO_1'
    end
    object QryClientesCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      FixedChar = True
      Size = 1
    end
    object QryClientesREGISTRO_2: TStringField
      FieldName = 'REGISTRO_2'
    end
    object QryClientesCODIGO_IBGE: TStringField
      FieldName = 'CODIGO_IBGE'
      Size = 10
    end
    object QryClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 70
    end
    object QryClientesNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object QryClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
    end
    object QryClientesUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object QryClientesSTATUS_NFE: TStringField
      FieldName = 'STATUS_NFE'
      Size = 5
    end
    object QryClientesCODIGO_PAIS: TStringField
      FieldName = 'CODIGO_PAIS'
      Size = 10
    end
  end
  object DspClientes: TDataSetProvider
    DataSet = QryClientes
    UpdateMode = upWhereKeyOnly
    Left = 168
    Top = 88
  end
  object CdsClientes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'pDatai'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'pDataf'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pEmpresa'
        ParamType = ptInput
      end>
    ProviderName = 'DspClientes'
    Left = 168
    Top = 136
    object CdsClientesCD_CLIENTE: TIntegerField
      FieldName = 'CD_CLIENTE'
      Required = True
    end
    object CdsClientesDS_CLIENTE: TStringField
      FieldName = 'DS_CLIENTE'
      Size = 50
    end
    object CdsClientesPAIS: TStringField
      FieldName = 'PAIS'
    end
    object CdsClientesREGISTRO_1: TStringField
      FieldName = 'REGISTRO_1'
    end
    object CdsClientesCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      FixedChar = True
      Size = 1
    end
    object CdsClientesREGISTRO_2: TStringField
      FieldName = 'REGISTRO_2'
    end
    object CdsClientesCODIGO_IBGE: TStringField
      FieldName = 'CODIGO_IBGE'
      Size = 10
    end
    object CdsClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 70
    end
    object CdsClientesNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object CdsClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
    end
    object CdsClientesUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object CdsClientesSTATUS_NFE: TStringField
      FieldName = 'STATUS_NFE'
      Size = 5
    end
    object CdsClientesCODIGO_PAIS: TStringField
      FieldName = 'CODIGO_PAIS'
      Size = 10
    end
  end
  object QryFornecedor: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'pDatai'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'pDataf'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pEmpresa'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select fornec.cd_fornec,fornec.ds_fornec,fornec.pais,'
      'fornec.registro_1,fornec.categoria,fornec.registro_2,'
      'cidade.codigo_ibge,fornec.endereco,fornec.numero,'
      
        'fornec.bairro,fornec.uf,nfemsg.STATUS_NFE,fornec.codigo_pais fro' +
        'm notaent'
      'left outer join fornec on fornec.cd_fornec = notaent.cd_fornec'
      'left outer join cidade on fornec.cd_cidade = cidade.cd_cidade'
      'left outer join nfemsg on nfemsg.cd_entrada = notaent.cd_entrada'
      
        'left outer join natureza on notaent.cd_natureza = natureza.cd_na' +
        'tureza'
      'where notaent.dt_entrada between :pDatai and :pDataf'
      'and (nfemsg.STATUS_NFE = '#39'100'#39' or nfemsg.STATUS_NFE is null )'
      'and notaent.nota_cancelada = 0'
      'and notaent.cd_empresa = :pEmpresa'
      'and (notaent.num_ref is not null or'
      '        notaent.num_doc is not null)'
      'and natureza.tributar_icms = -1'
      'group by fornec.cd_fornec,fornec.ds_fornec,fornec.pais,'
      'fornec.registro_1,fornec.categoria,fornec.registro_2,'
      'cidade.codigo_ibge,fornec.endereco,fornec.numero,'
      'fornec.bairro,fornec.uf,nfemsg.STATUS_NFE,fornec.codigo_pais')
    SQLConnection = DmConexao.ConexaoDBX
    Left = 240
    Top = 24
    object QryFornecedorCD_FORNEC: TIntegerField
      FieldName = 'CD_FORNEC'
      Required = True
    end
    object QryFornecedorDS_FORNEC: TStringField
      FieldName = 'DS_FORNEC'
      Size = 50
    end
    object QryFornecedorPAIS: TStringField
      FieldName = 'PAIS'
    end
    object QryFornecedorREGISTRO_1: TStringField
      FieldName = 'REGISTRO_1'
    end
    object QryFornecedorCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      FixedChar = True
      Size = 1
    end
    object QryFornecedorREGISTRO_2: TStringField
      FieldName = 'REGISTRO_2'
    end
    object QryFornecedorCODIGO_IBGE: TStringField
      FieldName = 'CODIGO_IBGE'
      Size = 10
    end
    object QryFornecedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 70
    end
    object QryFornecedorNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object QryFornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
    end
    object QryFornecedorUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object QryFornecedorSTATUS_NFE: TStringField
      FieldName = 'STATUS_NFE'
      Size = 5
    end
    object QryFornecedorCODIGO_PAIS: TStringField
      FieldName = 'CODIGO_PAIS'
      Size = 10
    end
  end
  object DspFornecedor: TDataSetProvider
    DataSet = QryFornecedor
    UpdateMode = upWhereKeyOnly
    Left = 240
    Top = 88
  end
  object CdsFornecedor: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'pDatai'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'pDataf'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pEmpresa'
        ParamType = ptInput
      end>
    ProviderName = 'DspFornecedor'
    Left = 240
    Top = 136
    object CdsFornecedorCD_FORNEC: TIntegerField
      FieldName = 'CD_FORNEC'
      Required = True
    end
    object CdsFornecedorDS_FORNEC: TStringField
      FieldName = 'DS_FORNEC'
      Size = 50
    end
    object CdsFornecedorPAIS: TStringField
      FieldName = 'PAIS'
    end
    object CdsFornecedorREGISTRO_1: TStringField
      FieldName = 'REGISTRO_1'
    end
    object CdsFornecedorCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      FixedChar = True
      Size = 1
    end
    object CdsFornecedorREGISTRO_2: TStringField
      FieldName = 'REGISTRO_2'
    end
    object CdsFornecedorCODIGO_IBGE: TStringField
      FieldName = 'CODIGO_IBGE'
      Size = 10
    end
    object CdsFornecedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 70
    end
    object CdsFornecedorNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object CdsFornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
    end
    object CdsFornecedorUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object CdsFornecedorSTATUS_NFE: TStringField
      FieldName = 'STATUS_NFE'
      Size = 5
    end
    object CdsFornecedorCODIGO_PAIS: TStringField
      FieldName = 'CODIGO_PAIS'
      Size = 10
    end
  end
end
