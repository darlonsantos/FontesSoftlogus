object Dm: TDm
  OldCreateOrder = False
  Height = 486
  Width = 877
  object Conexao: TZConnection
    ControlsCodePage = cCP_UTF16
    UTF8StringsAsWideField = True
    ReadOnly = True
    HostName = 'localhost'
    Port = 0
    Database = 'C:\Softlogus\Server\BD\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    Protocol = 'firebirdd-2.1'
    Left = 20
    Top = 16
  end
  object ACBrSPEDFiscal1: TACBrSPEDFiscal
    Path = 'C:\Softlogus\Server\efd\'
    Arquivo = 'EFD.txt'
    Delimitador = '|'
    TrimString = True
    CurMascara = '#0.00'
    Left = 472
    Top = 16
  end
  object qrEmpresa: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000004')
    Params = <>
    Left = 24
    Top = 80
    object qrEmpresaCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrEmpresaFILIAL: TWideStringField
      FieldName = 'FILIAL'
      Size = 50
    end
    object qrEmpresaNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object qrEmpresaENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object qrEmpresaCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object qrEmpresaUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrEmpresaCEP: TWideStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qrEmpresaTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      Size = 25
    end
    object qrEmpresaCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object qrEmpresaIE: TWideStringField
      FieldName = 'IE'
      Size = 14
    end
    object qrEmpresaSEQNF: TIntegerField
      FieldName = 'SEQNF'
    end
    object qrEmpresaFAX: TWideStringField
      FieldName = 'FAX'
      Size = 25
    end
    object qrEmpresaOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 100
    end
    object qrEmpresaOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 100
    end
    object qrEmpresaCONTRIBUINTE_IPI: TWideStringField
      FieldName = 'CONTRIBUINTE_IPI'
      Size = 1
    end
    object qrEmpresaSUBSTITUTO_TRIBUTARIO: TWideStringField
      FieldName = 'SUBSTITUTO_TRIBUTARIO'
      Size = 1
    end
    object qrEmpresaEMPRESA_ESTADUAL: TWideStringField
      FieldName = 'EMPRESA_ESTADUAL'
      Size = 1
    end
    object qrEmpresaOPTANTE_SIMPLES: TWideStringField
      FieldName = 'OPTANTE_SIMPLES'
      Size = 1
    end
    object qrEmpresaOPTANTE_SUPER_SIMPLES: TWideStringField
      FieldName = 'OPTANTE_SUPER_SIMPLES'
      Size = 1
    end
    object qrEmpresaECF: TWideStringField
      FieldName = 'ECF'
      Size = 1
    end
    object qrEmpresaTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrEmpresaIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrEmpresaISS: TFloatField
      FieldName = 'ISS'
    end
    object qrEmpresaNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrEmpresaRESPONSAVEL: TWideStringField
      FieldName = 'RESPONSAVEL'
      Size = 50
    end
    object qrEmpresaCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object qrEmpresaBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrEmpresaFARMACIA_RESP_TECNICO: TWideStringField
      FieldName = 'FARMACIA_RESP_TECNICO'
      Size = 50
    end
    object qrEmpresaFARMACIA_CRF: TWideStringField
      FieldName = 'FARMACIA_CRF'
      Size = 10
    end
    object qrEmpresaFARMACIA_CPF: TWideStringField
      FieldName = 'FARMACIA_CPF'
      Size = 14
    end
    object qrEmpresaFARMCIA_DATA: TDateTimeField
      FieldName = 'FARMCIA_DATA'
    end
    object qrEmpresaFARMACIA_UF: TWideStringField
      FieldName = 'FARMACIA_UF'
      Size = 2
    end
    object qrEmpresaFARMACIA_SENHA: TWideStringField
      FieldName = 'FARMACIA_SENHA'
      Size = 10
    end
    object qrEmpresaFARMACIA_EMAIL: TWideStringField
      FieldName = 'FARMACIA_EMAIL'
      Size = 10
    end
    object qrEmpresaFARMACIA_LOGIN: TWideStringField
      FieldName = 'FARMACIA_LOGIN'
    end
    object qrEmpresaFARMACIA_ENVIO: TWideStringField
      FieldName = 'FARMACIA_ENVIO'
      Size = 100
    end
    object qrEmpresaCONHECIMENTO: TIntegerField
      FieldName = 'CONHECIMENTO'
    end
    object qrEmpresaINDUSTRIA: TWideStringField
      FieldName = 'INDUSTRIA'
      Size = 1
    end
    object qrEmpresaFARMACIA_NUMEROLICENCA: TWideStringField
      FieldName = 'FARMACIA_NUMEROLICENCA'
    end
    object qrEmpresaCOD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrEmpresaIBGE: TWideStringField
      FieldName = 'IBGE'
      Size = 10
    end
    object qrEmpresaPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrEmpresaCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrEmpresaEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object qrEmpresaATIVIDADE: TWideStringField
      FieldName = 'ATIVIDADE'
      Size = 40
    end
    object qrEmpresaCONTADOR_COD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'CONTADOR_COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrEmpresaCONTADOR_NOME: TWideStringField
      FieldName = 'CONTADOR_NOME'
      Size = 60
    end
    object qrEmpresaCONTADOR_CPF: TWideStringField
      FieldName = 'CONTADOR_CPF'
    end
    object qrEmpresaCONTADOR_CRC: TWideStringField
      FieldName = 'CONTADOR_CRC'
      Size = 15
    end
    object qrEmpresaCONTADOR_CNPJ: TWideStringField
      FieldName = 'CONTADOR_CNPJ'
      Size = 25
    end
    object qrEmpresaCONTADOR_CEP: TWideStringField
      FieldName = 'CONTADOR_CEP'
      Size = 10
    end
    object qrEmpresaCONTADOR_ENDERECO: TWideStringField
      FieldName = 'CONTADOR_ENDERECO'
      Size = 60
    end
    object qrEmpresaCONTADOR_NUMERO: TWideStringField
      FieldName = 'CONTADOR_NUMERO'
      Size = 5
    end
    object qrEmpresaCONTADOR_COMPLEMENTO: TWideStringField
      FieldName = 'CONTADOR_COMPLEMENTO'
      Size = 60
    end
    object qrEmpresaCONTADOR_BAIRRO: TWideStringField
      FieldName = 'CONTADOR_BAIRRO'
      Size = 60
    end
    object qrEmpresaCONTADOR_FONE: TWideStringField
      FieldName = 'CONTADOR_FONE'
      Size = 15
    end
    object qrEmpresaCONTADOR_FAX: TWideStringField
      FieldName = 'CONTADOR_FAX'
      Size = 15
    end
    object qrEmpresaCONTADOR_EMAIL: TWideStringField
      FieldName = 'CONTADOR_EMAIL'
      Size = 60
    end
    object qrEmpresaINSC_MUNICIPAL: TWideStringField
      FieldName = 'INSC_MUNICIPAL'
    end
    object qrEmpresaDATA_ABERTURA: TDateTimeField
      FieldName = 'DATA_ABERTURA'
    end
    object qrEmpresaCNAE: TWideStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object qrEmpresaCRT: TWideStringField
      FieldName = 'CRT'
      Size = 1
    end
    object qrEmpresaCONTADOR_CIDADE: TWideStringField
      FieldName = 'CONTADOR_CIDADE'
      Size = 30
    end
    object qrEmpresaCONTADOR_COD_MUNICIPIO: TWideStringField
      FieldName = 'CONTADOR_COD_MUNICIPIO'
      Size = 30
    end
    object qrEmpresaCONTADOR_UF: TWideStringField
      FieldName = 'CONTADOR_UF'
      Size = 2
    end
    object qrEmpresaPERMITE_CREDITO: TIntegerField
      FieldName = 'PERMITE_CREDITO'
    end
    object qrEmpresaFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Size = 60
    end
    object qrEmpresaDFIXAS: TFloatField
      FieldName = 'DFIXAS'
    end
    object qrEmpresaTIPOCALCULO: TIntegerField
      FieldName = 'TIPOCALCULO'
    end
  end
  object qrClientes_: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 108
    Top = 20
    object qrClientes_CODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrClientes_NOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrClientes_APELIDO: TWideStringField
      FieldName = 'APELIDO'
      Size = 50
    end
    object qrClientes_ENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qrClientes_BAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrClientes_CIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qrClientes_UF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrClientes_CEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qrClientes_COMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Size = 80
    end
    object qrClientes_MORADIA: TIntegerField
      FieldName = 'MORADIA'
    end
    object qrClientes_TIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrClientes_SITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrClientes_TELEFONE1: TWideStringField
      FieldName = 'TELEFONE1'
    end
    object qrClientes_TELEFONE2: TWideStringField
      FieldName = 'TELEFONE2'
    end
    object qrClientes_TELEFONE3: TWideStringField
      FieldName = 'TELEFONE3'
    end
    object qrClientes_CELULAR: TWideStringField
      FieldName = 'CELULAR'
    end
    object qrClientes_EMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qrClientes_RG: TWideStringField
      FieldName = 'RG'
      Size = 25
    end
    object qrClientes_CPF: TWideStringField
      FieldName = 'CPF'
      Size = 18
    end
    object qrClientes_FILIACAO: TWideStringField
      FieldName = 'FILIACAO'
      Size = 80
    end
    object qrClientes_ESTADOCIVIL: TWideStringField
      FieldName = 'ESTADOCIVIL'
      Size = 15
    end
    object qrClientes_CONJUGE: TWideStringField
      FieldName = 'CONJUGE'
      Size = 60
    end
    object qrClientes_PROFISSAO: TWideStringField
      FieldName = 'PROFISSAO'
      Size = 30
    end
    object qrClientes_EMPRESA: TWideStringField
      FieldName = 'EMPRESA'
      Size = 40
    end
    object qrClientes_RENDA: TFloatField
      FieldName = 'RENDA'
    end
    object qrClientes_LIMITE: TFloatField
      FieldName = 'LIMITE'
    end
    object qrClientes_REF1: TWideStringField
      FieldName = 'REF1'
      Size = 50
    end
    object qrClientes_REF2: TWideStringField
      FieldName = 'REF2'
      Size = 50
    end
    object qrClientes_CODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrClientes_DATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object qrClientes_DATA_ULTIMACOMPRA: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qrClientes_OBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrClientes_OBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrClientes_OBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrClientes_OBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object qrClientes_OBS5: TWideStringField
      FieldName = 'OBS5'
      Size = 80
    end
    object qrClientes_OBS6: TWideStringField
      FieldName = 'OBS6'
      Size = 80
    end
    object qrClientes_NASCIMENTO: TWideStringField
      FieldName = 'NASCIMENTO'
      Size = 10
    end
    object qrClientes_CODREGIAO: TWideStringField
      FieldName = 'CODREGIAO'
      Size = 6
    end
    object qrClientes_CODCONVENIO: TWideStringField
      FieldName = 'CODCONVENIO'
      Size = 6
    end
    object qrClientes_CODUSUARIO: TWideStringField
      FieldName = 'CODUSUARIO'
      Size = 6
    end
    object qrClientes_NUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrClientes_RG_ORGAO: TWideStringField
      FieldName = 'RG_ORGAO'
      Size = 5
    end
    object qrClientes_RG_ESTADO: TWideStringField
      FieldName = 'RG_ESTADO'
      Size = 2
    end
    object qrClientes_RG_EMISSAO: TDateTimeField
      FieldName = 'RG_EMISSAO'
    end
    object qrClientes_SEXO: TWideStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object qrClientes_HISTORICO: TBlobField
      FieldName = 'HISTORICO'
    end
    object qrClientes_PREVISAO: TDateTimeField
      FieldName = 'PREVISAO'
    end
    object qrClientes_CNAE: TWideStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object qrClientes_COD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrClientes_IBGE: TWideStringField
      FieldName = 'IBGE'
      Size = 5
    end
    object qrClientes_TAMANHO_CALCA: TWideStringField
      FieldName = 'TAMANHO_CALCA'
      Size = 5
    end
    object qrClientes_TAMANHO_BLUSA: TWideStringField
      FieldName = 'TAMANHO_BLUSA'
      Size = 5
    end
    object qrClientes_TAMANHO_SAPATO: TWideStringField
      FieldName = 'TAMANHO_SAPATO'
      Size = 5
    end
    object qrClientes_CORRESP_ENDERECO: TWideStringField
      FieldName = 'CORRESP_ENDERECO'
      Size = 80
    end
    object qrClientes_CORRESP_BAIRRO: TWideStringField
      FieldName = 'CORRESP_BAIRRO'
      Size = 30
    end
    object qrClientes_CORRESP_CIDADE: TWideStringField
      FieldName = 'CORRESP_CIDADE'
      Size = 40
    end
    object qrClientes_CORRESP_UF: TWideStringField
      FieldName = 'CORRESP_UF'
      Size = 2
    end
    object qrClientes_CORRESP_CEP: TWideStringField
      FieldName = 'CORRESP_CEP'
      Size = 10
    end
    object qrClientes_CORRESP_COMPLEMENTO: TWideStringField
      FieldName = 'CORRESP_COMPLEMENTO'
      Size = 40
    end
    object qrClientes_RG_PRODUTOR: TWideStringField
      FieldName = 'RG_PRODUTOR'
      Size = 30
    end
    object qrClientes_RESP1_NOME: TWideStringField
      FieldName = 'RESP1_NOME'
      Size = 80
    end
    object qrClientes_RESP1_CPF: TWideStringField
      FieldName = 'RESP1_CPF'
      Size = 25
    end
    object qrClientes_RESP1_RG: TWideStringField
      FieldName = 'RESP1_RG'
      Size = 25
    end
    object qrClientes_RESP1_PROFISSAO: TWideStringField
      FieldName = 'RESP1_PROFISSAO'
      Size = 50
    end
    object qrClientes_RESP1_ESTADO_CIVIL: TWideStringField
      FieldName = 'RESP1_ESTADO_CIVIL'
      Size = 30
    end
    object qrClientes_RESP1_ENDERECO: TWideStringField
      FieldName = 'RESP1_ENDERECO'
      Size = 80
    end
    object qrClientes_RESP1_BAIRRO: TWideStringField
      FieldName = 'RESP1_BAIRRO'
      Size = 40
    end
    object qrClientes_RESP1_CIDADE: TWideStringField
      FieldName = 'RESP1_CIDADE'
      Size = 40
    end
    object qrClientes_RESP1_UF: TWideStringField
      FieldName = 'RESP1_UF'
      Size = 2
    end
    object qrClientes_RESP1_CEP: TWideStringField
      FieldName = 'RESP1_CEP'
      Size = 15
    end
    object qrClientes_RESP2_NOME: TWideStringField
      FieldName = 'RESP2_NOME'
      Size = 80
    end
    object qrClientes_RESP2_CPF: TWideStringField
      FieldName = 'RESP2_CPF'
      Size = 25
    end
    object qrClientes_RESP2_RG: TWideStringField
      FieldName = 'RESP2_RG'
      Size = 25
    end
    object qrClientes_RESP2_PROFISSAO: TWideStringField
      FieldName = 'RESP2_PROFISSAO'
      Size = 50
    end
    object qrClientes_RESP2_ESTADO_CIVIL: TWideStringField
      FieldName = 'RESP2_ESTADO_CIVIL'
      Size = 30
    end
    object qrClientes_RESP2_ENDERECO: TWideStringField
      FieldName = 'RESP2_ENDERECO'
      Size = 80
    end
    object qrClientes_RESP2_BAIRRO: TWideStringField
      FieldName = 'RESP2_BAIRRO'
      Size = 40
    end
    object qrClientes_RESP2_CIDADE: TWideStringField
      FieldName = 'RESP2_CIDADE'
      Size = 40
    end
    object qrClientes_RESP2_UF: TWideStringField
      FieldName = 'RESP2_UF'
      Size = 2
    end
    object qrClientes_RESP2_CEP: TWideStringField
      FieldName = 'RESP2_CEP'
      Size = 15
    end
    object qrClientes_FOTO: TWideStringField
      FieldName = 'FOTO'
      Size = 80
    end
  end
  object qrFornecedores_: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000009')
    Params = <>
    Left = 192
    Top = 20
    object qrFornecedores_CODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrFornecedores_NOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrFornecedores_FANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Size = 50
    end
    object qrFornecedores_ENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qrFornecedores_BAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrFornecedores_CIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qrFornecedores_UF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrFornecedores_CEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qrFornecedores_COMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Size = 40
    end
    object qrFornecedores_TELEFONE1: TWideStringField
      FieldName = 'TELEFONE1'
    end
    object qrFornecedores_TELEFONE2: TWideStringField
      FieldName = 'TELEFONE2'
    end
    object qrFornecedores_FAX: TWideStringField
      FieldName = 'FAX'
    end
    object qrFornecedores_CONTATO1: TWideStringField
      FieldName = 'CONTATO1'
      Size = 40
    end
    object qrFornecedores_CONTATO2: TWideStringField
      FieldName = 'CONTATO2'
      Size = 40
    end
    object qrFornecedores_CELULAR1: TWideStringField
      FieldName = 'CELULAR1'
    end
    object qrFornecedores_CELULAR2: TWideStringField
      FieldName = 'CELULAR2'
    end
    object qrFornecedores_EMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrFornecedores_HOMEPAGE: TWideStringField
      FieldName = 'HOMEPAGE'
      Size = 80
    end
    object qrFornecedores_CNPJ: TWideStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object qrFornecedores_IE: TWideStringField
      FieldName = 'IE'
      Size = 25
    end
    object qrFornecedores_BANCO: TWideStringField
      FieldName = 'BANCO'
      Size = 30
    end
    object qrFornecedores_AGENCIA: TWideStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object qrFornecedores_CONTA: TWideStringField
      FieldName = 'CONTA'
    end
    object qrFornecedores_OBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrFornecedores_OBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrFornecedores_OBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrFornecedores_DATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrFornecedores_TIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrFornecedores_ASSISTENCIA_TECNICA: TIntegerField
      FieldName = 'ASSISTENCIA_TECNICA'
    end
    object qrFornecedores_NUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrFornecedores_IM: TWideStringField
      FieldName = 'IM'
      Size = 25
    end
    object qrFornecedores_REP_NOME: TWideStringField
      FieldName = 'REP_NOME'
      Size = 80
    end
    object qrFornecedores_REP_TELEFONE: TWideStringField
      FieldName = 'REP_TELEFONE'
    end
    object qrFornecedores_REP_ENDERECO: TWideStringField
      FieldName = 'REP_ENDERECO'
      Size = 60
    end
    object qrFornecedores_REP_BAIRRO: TWideStringField
      FieldName = 'REP_BAIRRO'
      Size = 40
    end
    object qrFornecedores_REP_COMPLEMENTO: TWideStringField
      FieldName = 'REP_COMPLEMENTO'
      Size = 50
    end
    object qrFornecedores_REP_CIDADE: TWideStringField
      FieldName = 'REP_CIDADE'
      Size = 40
    end
    object qrFornecedores_REP_UF: TWideStringField
      FieldName = 'REP_UF'
      Size = 2
    end
    object qrFornecedores_REP_CEP: TWideStringField
      FieldName = 'REP_CEP'
      Size = 15
    end
    object qrFornecedores_REP_TELEFONE1: TWideStringField
      FieldName = 'REP_TELEFONE1'
    end
    object qrFornecedores_REP_TELEFONE2: TWideStringField
      FieldName = 'REP_TELEFONE2'
    end
    object qrFornecedores_REP_TELEFONE3: TWideStringField
      FieldName = 'REP_TELEFONE3'
    end
    object qrFornecedores_REP_FAX: TWideStringField
      FieldName = 'REP_FAX'
    end
    object qrFornecedores_REP_CNPJ: TWideStringField
      FieldName = 'REP_CNPJ'
      Size = 25
    end
    object qrFornecedores_REP_IE: TWideStringField
      FieldName = 'REP_IE'
      Size = 25
    end
    object qrFornecedores_REP_HOME_PAGE: TWideStringField
      FieldName = 'REP_HOME_PAGE'
      Size = 100
    end
    object qrFornecedores_REP_EMAIL: TWideStringField
      FieldName = 'REP_EMAIL'
      Size = 100
    end
    object qrFornecedores_CNAE: TWideStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object qrFornecedores_COD_MUNICIPIO_IBGE: TWideStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrFornecedores_IBGE: TWideStringField
      FieldName = 'IBGE'
      Size = 5
    end
  end
  object qrUnidades: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from SPED_0190'
      'Where DT_INI >= :DT_INI and DT_FIM <= :DT_FIM')
    Params = <
      item
        DataType = ftUnknown
        Name = 'DT_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DT_FIM'
        ParamType = ptUnknown
      end>
    Left = 16
    Top = 140
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DT_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DT_FIM'
        ParamType = ptUnknown
      end>
    object qrUnidadesCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object qrUnidadesDT_INI: TDateTimeField
      FieldName = 'DT_INI'
    end
    object qrUnidadesDT_FIM: TDateTimeField
      FieldName = 'DT_FIM'
    end
    object qrUnidadesUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object qrUnidadesDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
    end
  end
  object qrProdutos: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from SPED_0200'
      'Where DT_INI >= :DT_INI and DT_FIM <= :DT_FIM')
    Params = <
      item
        DataType = ftUnknown
        Name = 'DT_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DT_FIM'
        ParamType = ptUnknown
      end>
    Left = 96
    Top = 140
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DT_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DT_FIM'
        ParamType = ptUnknown
      end>
    object qrProdutosCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object qrProdutosDT_INI: TDateTimeField
      FieldName = 'DT_INI'
    end
    object qrProdutosDT_FIM: TDateTimeField
      FieldName = 'DT_FIM'
    end
    object qrProdutosREG: TWideStringField
      FieldName = 'REG'
      Size = 4
    end
    object qrProdutosCOD_ITEM: TWideStringField
      FieldName = 'COD_ITEM'
      Size = 60
    end
    object qrProdutosDESCR_ITEM: TWideStringField
      FieldName = 'DESCR_ITEM'
      Size = 250
    end
    object qrProdutosCOD_BARRA: TWideStringField
      FieldName = 'COD_BARRA'
    end
    object qrProdutosCOD_ANT_ITEM: TWideStringField
      FieldName = 'COD_ANT_ITEM'
      Size = 60
    end
    object qrProdutosUNID_INV: TWideStringField
      FieldName = 'UNID_INV'
      Size = 6
    end
    object qrProdutosTIPO_ITEM: TIntegerField
      FieldName = 'TIPO_ITEM'
    end
    object qrProdutosCOD_NCM: TWideStringField
      FieldName = 'COD_NCM'
      Size = 8
    end
    object qrProdutosEX_IPI: TWideStringField
      FieldName = 'EX_IPI'
      Size = 3
    end
    object qrProdutosCOD_GEN: TIntegerField
      FieldName = 'COD_GEN'
    end
    object qrProdutosCOD_LST: TIntegerField
      FieldName = 'COD_LST'
    end
    object qrProdutosALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
    end
  end
  object qrContaContabil: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from SPED_0500')
    Params = <>
    Left = 180
    Top = 140
    object qrContaContabilCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object qrContaContabilCONTA: TWideStringField
      FieldName = 'CONTA'
      Size = 30
    end
    object qrContaContabilDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Size = 150
    end
    object qrContaContabilNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object qrContaContabilCTAANALITICA: TIntegerField
      FieldName = 'CTAANALITICA'
    end
    object qrContaContabilCODCTASUP: TIntegerField
      FieldName = 'CODCTASUP'
    end
    object qrContaContabilGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
  end
  object qrNotasEntradaSaida: TZQuery
    Connection = Conexao
    SQL.Strings = (
      
        'SELECT TIPO, STATUS, CODIGO, NUMERO, CODFORNECEDOR, CODCLIENTE, ' +
        'MODELO, SERIE, CFOP, DATA_EMISSAO, CHAVE, VALOR_NOTA, DESCONTO, ' +
        'TOTAL_PRODUTOS, FRETE_CONTA, FRETE, SEGURO, OUTRAS, BASE_ICMS, V' +
        'ALOR_ICMS, BASE_SUB, VALOR_SUB, IPI, PAGAMENTO   FROM'
      ''
      
        '( SELECT '#39'E'#39' AS TIPO, '#39'6'#39' AS STATUS, CODIGO, NUMERO, CODFORNECED' +
        'OR, '#39#39' AS CODCLIENTE, MODELO, SERIE, CFOP, DATA_EMISSAO, CHAVE, ' +
        'TOTAL_NOTA AS VALOR_NOTA, DESCONTO, TOTAL_PRODUTOS, TRANSP_FRETE' +
        ' AS FRETE_CONTA, FRETE, SEGURO, OUTRAS, BASE_ICMS, VALOR_ICMS, B' +
        'ASE_SUB, VALOR_SUB, IPI, OPERACAO AS PAGAMENTO  FROM C000087'
      ''
      '   WHERE DATA_EMISSAO >= :DATAi AND DATA_EMISSAO <= :DATAf'
      ''
      'UNION'
      ''
      
        ' SELECT '#39'S'#39' AS TIPO,NFE_SITUACAO AS STATUS, CODIGO, NUMERO, '#39#39' A' +
        'S CODFORNECEDOR, CODCLIENTE, MODELO_NF AS MODELO, SERIE_NF AS SE' +
        'RIE, CFOP, DATA_SAIDA AS DATA_EMISSAO, CHAVE, TOTAL_NOTA AS VALO' +
        'R_NOTA, DESCONTO, VALOR_PRODUTOS AS TOTAL_PRODUTOS, FRETE_CONTA,' +
        ' FRETE, SEGURO, OUTRAS_DESPESAS AS OUTRAS, BASE_CALCULO AS BASE_' +
        'ICMS, VALOR_ICMS, BASE_SUB, ICMS_SUB AS VALOR_SUB, VALOR_TOTAL_I' +
        'PI AS IPI, '#39'V'#39' AS PAGAMENTO  FROM C000061'
      ''
      '   WHERE DATA_SAIDA >= :DATAi AND DATA_SAIDA <= :DATAf'
      ' )'
      ''
      ''
      ''
      '   ')
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'DATAi'
        ParamType = ptUnknown
      end
      item
        DataType = ftTimeStamp
        Name = 'DATAf'
        ParamType = ptUnknown
      end>
    Left = 280
    Top = 92
    ParamData = <
      item
        DataType = ftTimeStamp
        Name = 'DATAi'
        ParamType = ptUnknown
      end
      item
        DataType = ftTimeStamp
        Name = 'DATAf'
        ParamType = ptUnknown
      end>
    object qrNotasEntradaSaidaTIPO: TWideStringField
      FieldName = 'TIPO'
      ReadOnly = True
      Size = 1
    end
    object qrNotasEntradaSaidaCODIGO: TWideStringField
      FieldName = 'CODIGO'
      ReadOnly = True
      Size = 10
    end
    object qrNotasEntradaSaidaNUMERO: TWideStringField
      FieldName = 'NUMERO'
      ReadOnly = True
      Size = 10
    end
    object qrNotasEntradaSaidaCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      ReadOnly = True
      Size = 10
    end
    object qrNotasEntradaSaidaCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      ReadOnly = True
      Size = 6
    end
    object qrNotasEntradaSaidaMODELO: TWideStringField
      FieldName = 'MODELO'
      ReadOnly = True
      Size = 10
    end
    object qrNotasEntradaSaidaSERIE: TWideStringField
      FieldName = 'SERIE'
      ReadOnly = True
      Size = 10
    end
    object qrNotasEntradaSaidaCFOP: TWideStringField
      FieldName = 'CFOP'
      ReadOnly = True
      Size = 10
    end
    object qrNotasEntradaSaidaDATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
      ReadOnly = True
    end
    object qrNotasEntradaSaidaCHAVE: TWideStringField
      FieldName = 'CHAVE'
      ReadOnly = True
      Size = 50
    end
    object qrNotasEntradaSaidaSTATUS: TWideStringField
      FieldName = 'STATUS'
      ReadOnly = True
      Size = 7
    end
    object qrNotasEntradaSaidaVALOR_NOTA: TFloatField
      FieldName = 'VALOR_NOTA'
      ReadOnly = True
    end
    object qrNotasEntradaSaidaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ReadOnly = True
    end
    object qrNotasEntradaSaidaTOTAL_PRODUTOS: TFloatField
      FieldName = 'TOTAL_PRODUTOS'
      ReadOnly = True
    end
    object qrNotasEntradaSaidaFRETE_CONTA: TWideStringField
      FieldName = 'FRETE_CONTA'
      ReadOnly = True
    end
    object qrNotasEntradaSaidaFRETE: TFloatField
      FieldName = 'FRETE'
      ReadOnly = True
    end
    object qrNotasEntradaSaidaSEGURO: TFloatField
      FieldName = 'SEGURO'
      ReadOnly = True
    end
    object qrNotasEntradaSaidaOUTRAS: TFloatField
      FieldName = 'OUTRAS'
      ReadOnly = True
    end
    object qrNotasEntradaSaidaBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      ReadOnly = True
    end
    object qrNotasEntradaSaidaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ReadOnly = True
    end
    object qrNotasEntradaSaidaBASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
      ReadOnly = True
    end
    object qrNotasEntradaSaidaVALOR_SUB: TFloatField
      FieldName = 'VALOR_SUB'
      ReadOnly = True
    end
    object qrNotasEntradaSaidaIPI: TFloatField
      FieldName = 'IPI'
      ReadOnly = True
    end
    object qrNotasEntradaSaidaPAGAMENTO: TWideStringField
      FieldName = 'PAGAMENTO'
      ReadOnly = True
      Size = 1
    end
  end
  object qrItensNotas: TZQuery
    Connection = Conexao
    SQL.Strings = (
      ''
      ''
      
        'select TIPO, NUM_ITEM, COD_ITEM, CBARRA, QTD, UNID, VL_ITEM, VL_' +
        'DESC,'
      'CST_ICMS, CFOP, VL_BC_ICMS, ALIQ_ICMS, VL_ICMS, VL_BC_ICMS_ST,'
      'ALIQ_ST, VL_ICMS_ST, CST_IPI, VL_BC_IPI, ALIQ_IPI,'
      'VL_IPI from'
      ''
      '('
      ''
      'select '#39'E'#39' AS TIPO, ITEM AS NUM_ITEM, CODPRODUTO AS COD_ITEM,'
      
        '(select CODBARRA from c000025 where codigo = C000088.CODPRODUTO)' +
        ' AS CBARRA,'
      
        ' QTDE AS QTD, UN_COMPRA AS UNID, UNITARIO AS VL_ITEM, DESCONTO A' +
        'S VL_DESC,'
      
        'CST AS CST_ICMS, CFOP, ICMS_BASE AS VL_BC_ICMS, ICMS_ALIQUOTA AS' +
        ' ALIQ_ICMS, ICMS_VALOR AS VL_ICMS, SUB_BASE AS VL_BC_ICMS_ST,'
      
        #39'0'#39' AS ALIQ_ST, SUB_VALOR AS VL_ICMS_ST, IPI_TIPO AS CST_IPI, '#39'0' +
        #39' AS VL_BC_IPI, IPI_ALIQUOTA AS ALIQ_IPI,'
      'IPI_VALOR AS VL_IPI FROM C000088'
      'WHERE CODNOTA = :CODNOTA'
      ''
      'UNION'
      ''
      'select '#39'S'#39' AS TIPO, ITEM AS NUM_ITEM, CODPRODUTO AS COD_ITEM,'
      
        '(select CODBARRA from c000025 where codigo = C000062.CODPRODUTO)' +
        ' AS CBARRA,'
      'QTDE AS QTD,'
      
        '(SELECT UNIDADE FROM C000025 WHERE CODIGO = C000062.CODPRODUTO) ' +
        'AS UNID,'
      'UNITARIO AS VL_ITEM, DESCONTO AS VL_DESC,'
      
        'CST AS CST_ICMS, CFOP, BASE_CALCULO AS VL_BC_ICMS, ICMS AS ALIQ_' +
        'ICMS, VALOR_ICMS AS VL_ICMS, BASE_SUB AS VL_BC_ICMS_ST,'
      
        #39'0'#39' AS ALIQ_ST, ICMS_SUB AS VL_ICMS_ST, '#39#39' AS CST_IPI, '#39#39' AS VL_' +
        'BC_IPI, IPI AS ALIQ_IPI,'
      'VALOR_IPI AS VL_IPI FROM C000062'
      'WHERE CODNOTA = :CODNOTA'
      ''
      ''
      ')')
    Params = <
      item
        DataType = ftString
        Name = 'CODNOTA'
        ParamType = ptUnknown
        Value = '000002'
      end>
    Left = 280
    Top = 144
    ParamData = <
      item
        DataType = ftString
        Name = 'CODNOTA'
        ParamType = ptUnknown
        Value = '000002'
      end>
    object qrItensNotasTIPO: TWideStringField
      FieldName = 'TIPO'
      ReadOnly = True
      Size = 1
    end
    object qrItensNotasNUM_ITEM: TWideStringField
      FieldName = 'NUM_ITEM'
      ReadOnly = True
      Size = 11
    end
    object qrItensNotasCOD_ITEM: TWideStringField
      FieldName = 'COD_ITEM'
      ReadOnly = True
      Size = 13
    end
    object qrItensNotasCBARRA: TWideStringField
      FieldName = 'CBARRA'
      ReadOnly = True
      Size = 13
    end
    object qrItensNotasQTD: TFloatField
      FieldName = 'QTD'
      ReadOnly = True
    end
    object qrItensNotasUNID: TWideStringField
      FieldName = 'UNID'
      ReadOnly = True
      Size = 5
    end
    object qrItensNotasVL_ITEM: TFloatField
      FieldName = 'VL_ITEM'
      ReadOnly = True
    end
    object qrItensNotasVL_DESC: TFloatField
      FieldName = 'VL_DESC'
      ReadOnly = True
    end
    object qrItensNotasCST_ICMS: TWideStringField
      FieldName = 'CST_ICMS'
      ReadOnly = True
      Size = 5
    end
    object qrItensNotasCFOP: TWideStringField
      FieldName = 'CFOP'
      ReadOnly = True
      Size = 10
    end
    object qrItensNotasVL_BC_ICMS: TFloatField
      FieldName = 'VL_BC_ICMS'
      ReadOnly = True
    end
    object qrItensNotasALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
      ReadOnly = True
    end
    object qrItensNotasVL_ICMS: TFloatField
      FieldName = 'VL_ICMS'
      ReadOnly = True
    end
    object qrItensNotasVL_BC_ICMS_ST: TFloatField
      FieldName = 'VL_BC_ICMS_ST'
      ReadOnly = True
    end
    object qrItensNotasALIQ_ST: TWideStringField
      FieldName = 'ALIQ_ST'
      ReadOnly = True
      Size = 1
    end
    object qrItensNotasVL_ICMS_ST: TFloatField
      FieldName = 'VL_ICMS_ST'
      ReadOnly = True
    end
    object qrItensNotasCST_IPI: TWideStringField
      FieldName = 'CST_IPI'
      ReadOnly = True
      Size = 25
    end
    object qrItensNotasVL_BC_IPI: TWideStringField
      FieldName = 'VL_BC_IPI'
      ReadOnly = True
      Size = 1
    end
    object qrItensNotasALIQ_IPI: TFloatField
      FieldName = 'ALIQ_IPI'
      ReadOnly = True
    end
    object qrItensNotasVL_IPI: TFloatField
      FieldName = 'VL_IPI'
      ReadOnly = True
    end
  end
  object qrC400_ECF: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from Sped_c400'
      'Where DT_INI >= :DT_INI and DT_FIM <= :DT_FIM')
    Params = <
      item
        DataType = ftUnknown
        Name = 'DT_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DT_FIM'
        ParamType = ptUnknown
      end>
    Left = 44
    Top = 284
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DT_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DT_FIM'
        ParamType = ptUnknown
      end>
    object qrC400_ECFCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object qrC400_ECFREG: TWideStringField
      FieldName = 'REG'
      Size = 4
    end
    object qrC400_ECFCOD_MOD: TWideStringField
      FieldName = 'COD_MOD'
      Size = 2
    end
    object qrC400_ECFECF_MOD: TWideStringField
      FieldName = 'ECF_MOD'
    end
    object qrC400_ECFECF_FAB_SN: TWideStringField
      FieldName = 'ECF_FAB_SN'
    end
    object qrC400_ECFECF_CX: TIntegerField
      FieldName = 'ECF_CX'
    end
    object qrC400_ECFDT_INI: TDateTimeField
      FieldName = 'DT_INI'
      Required = True
    end
    object qrC400_ECFDT_FIM: TDateTimeField
      FieldName = 'DT_FIM'
      Required = True
    end
  end
  object qrProdutosAlterados: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from SPED_0205'
      'Where DT_INI >= :DT_INI and DT_FIM <= :DT_FIM and ENVIADO = 0'
      '')
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'DT_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftTimeStamp
        Name = 'DT_FIM'
        ParamType = ptUnknown
      end>
    Left = 96
    Top = 188
    ParamData = <
      item
        DataType = ftTimeStamp
        Name = 'DT_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftTimeStamp
        Name = 'DT_FIM'
        ParamType = ptUnknown
      end>
    object qrProdutosAlteradosCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object qrProdutosAlteradosDESCR_ANT_ITEM: TWideStringField
      FieldName = 'DESCR_ANT_ITEM'
      Size = 60
    end
    object qrProdutosAlteradosDT_INI: TDateTimeField
      FieldName = 'DT_INI'
    end
    object qrProdutosAlteradosDT_FIM: TDateTimeField
      FieldName = 'DT_FIM'
    end
    object qrProdutosAlteradosCOD_ANT_ITEM: TWideStringField
      FieldName = 'COD_ANT_ITEM'
      Size = 60
    end
    object qrProdutosAlteradosENVIADO: TIntegerField
      FieldName = 'ENVIADO'
    end
  end
  object qrC405_REDUCOES: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from Sped_c405'
      
        'where CODECF = :CODECF AND DT_DOC >= :DT_INI AND  DT_DOC <= :DT_' +
        'FIM'
      'order by dt_doc')
    Params = <
      item
        DataType = ftUnknown
        Name = 'CODECF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DT_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DT_FIM'
        ParamType = ptUnknown
      end>
    Left = 160
    Top = 284
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODECF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DT_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DT_FIM'
        ParamType = ptUnknown
      end>
    object qrC405_REDUCOESCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object qrC405_REDUCOESCODECF: TWideStringField
      FieldName = 'CODECF'
      Size = 6
    end
    object qrC405_REDUCOESREG: TWideStringField
      FieldName = 'REG'
      Size = 4
    end
    object qrC405_REDUCOESDT_DOC: TDateTimeField
      FieldName = 'DT_DOC'
    end
    object qrC405_REDUCOESCRO: TIntegerField
      FieldName = 'CRO'
    end
    object qrC405_REDUCOESCRZ: TIntegerField
      FieldName = 'CRZ'
    end
    object qrC405_REDUCOESNUM_COO_FIN: TIntegerField
      FieldName = 'NUM_COO_FIN'
    end
    object qrC405_REDUCOESGT_FFIN: TFloatField
      FieldName = 'GT_FFIN'
    end
    object qrC405_REDUCOESVL_BRT: TFloatField
      FieldName = 'VL_BRT'
    end
  end
  object qrC420_TOTAISRED: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from Sped_c420'
      'Where CODC405 = :CODC405')
    Params = <
      item
        DataType = ftString
        Name = 'CODC405'
        ParamType = ptUnknown
        Value = '0'
      end>
    Left = 160
    Top = 336
    ParamData = <
      item
        DataType = ftString
        Name = 'CODC405'
        ParamType = ptUnknown
        Value = '0'
      end>
    object qrC420_TOTAISREDCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object qrC420_TOTAISREDCODC405: TWideStringField
      FieldName = 'CODC405'
      Size = 6
    end
    object qrC420_TOTAISREDREG: TWideStringField
      FieldName = 'REG'
      Size = 4
    end
    object qrC420_TOTAISREDCOD_TOT_PAR: TWideStringField
      FieldName = 'COD_TOT_PAR'
      Size = 7
    end
    object qrC420_TOTAISREDVLR_ACUM_TOT: TFloatField
      FieldName = 'VLR_ACUM_TOT'
    end
    object qrC420_TOTAISREDNR_TOT: TIntegerField
      FieldName = 'NR_TOT'
    end
    object qrC420_TOTAISREDDESCR_NR_TOT: TWideStringField
      FieldName = 'DESCR_NR_TOT'
      Size = 100
    end
  end
  object qrC460_CUPONS: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from Sped_c460'
      'Where CODC405 = :CODC405'
      'order by dt_doc')
    Params = <
      item
        DataType = ftUnknown
        Name = 'CODC405'
        ParamType = ptUnknown
      end>
    Left = 40
    Top = 340
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODC405'
        ParamType = ptUnknown
      end>
    object qrC460_CUPONSCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object qrC460_CUPONSCODC405: TWideStringField
      FieldName = 'CODC405'
      Size = 6
    end
    object qrC460_CUPONSREG: TWideStringField
      FieldName = 'REG'
      Size = 4
    end
    object qrC460_CUPONSCOD_MOD: TWideStringField
      FieldName = 'COD_MOD'
      Size = 2
    end
    object qrC460_CUPONSCOD_SIT: TIntegerField
      FieldName = 'COD_SIT'
    end
    object qrC460_CUPONSNUM_DOC: TIntegerField
      FieldName = 'NUM_DOC'
    end
    object qrC460_CUPONSDT_DOC: TDateTimeField
      FieldName = 'DT_DOC'
    end
    object qrC460_CUPONSVL_DOC: TFloatField
      FieldName = 'VL_DOC'
    end
    object qrC460_CUPONSVL_PIS: TFloatField
      FieldName = 'VL_PIS'
    end
    object qrC460_CUPONSVL_COFINS: TFloatField
      FieldName = 'VL_COFINS'
    end
    object qrC460_CUPONSCPF_CNPJ: TWideStringField
      FieldName = 'CPF_CNPJ'
      Size = 14
    end
    object qrC460_CUPONSNOM_ADQ: TWideStringField
      FieldName = 'NOM_ADQ'
      Size = 60
    end
  end
  object qrC470_ITENSCUPOM: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from Sped_c470'
      'Where CODC460 = :CODC460')
    Params = <
      item
        DataType = ftString
        Name = 'CODC460'
        ParamType = ptUnknown
      end>
    Left = 48
    Top = 400
    ParamData = <
      item
        DataType = ftString
        Name = 'CODC460'
        ParamType = ptUnknown
      end>
    object qrC470_ITENSCUPOMCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object qrC470_ITENSCUPOMCODC460: TWideStringField
      FieldName = 'CODC460'
      Size = 6
    end
    object qrC470_ITENSCUPOMREG: TWideStringField
      FieldName = 'REG'
      Size = 4
    end
    object qrC470_ITENSCUPOMCOD_ITEM: TWideStringField
      FieldName = 'COD_ITEM'
      Size = 60
    end
    object qrC470_ITENSCUPOMQTD: TFloatField
      FieldName = 'QTD'
    end
    object qrC470_ITENSCUPOMQTD_CANC: TFloatField
      FieldName = 'QTD_CANC'
    end
    object qrC470_ITENSCUPOMUNID: TWideStringField
      FieldName = 'UNID'
      Size = 6
    end
    object qrC470_ITENSCUPOMVL_ITEM: TFloatField
      FieldName = 'VL_ITEM'
    end
    object qrC470_ITENSCUPOMCST_ICMS: TIntegerField
      FieldName = 'CST_ICMS'
    end
    object qrC470_ITENSCUPOMCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object qrC470_ITENSCUPOMALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
    end
    object qrC470_ITENSCUPOMVL_PIS: TFloatField
      FieldName = 'VL_PIS'
    end
    object qrC470_ITENSCUPOMVL_COFINS: TFloatField
      FieldName = 'VL_COFINS'
    end
  end
  object qrC490_ECFMOVDIA: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from Sped_C490'
      'Where CODC405 = :CODC405')
    Params = <
      item
        DataType = ftUnknown
        Name = 'CODC405'
        ParamType = ptUnknown
      end>
    Left = 164
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODC405'
        ParamType = ptUnknown
      end>
    object qrC490_ECFMOVDIACODIGO: TWideStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object qrC490_ECFMOVDIACODC405: TWideStringField
      FieldName = 'CODC405'
      Size = 6
    end
    object qrC490_ECFMOVDIAREG: TWideStringField
      FieldName = 'REG'
      Size = 4
    end
    object qrC490_ECFMOVDIACST_ICMS: TWideStringField
      FieldName = 'CST_ICMS'
      Size = 3
    end
    object qrC490_ECFMOVDIACFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object qrC490_ECFMOVDIAALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
    end
    object qrC490_ECFMOVDIAVL_OPR: TFloatField
      FieldName = 'VL_OPR'
    end
    object qrC490_ECFMOVDIAVL_BC_ICMS: TFloatField
      FieldName = 'VL_BC_ICMS'
    end
    object qrC490_ECFMOVDIAVL_ICMS: TFloatField
      FieldName = 'VL_ICMS'
    end
    object qrC490_ECFMOVDIACOD_OBS: TWideStringField
      FieldName = 'COD_OBS'
      Size = 6
    end
  end
  object qrCMD: TZQuery
    Connection = Conexao
    Params = <>
    Left = 280
    Top = 220
  end
  object qrItensMov: TZQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select TIPO, COD_ITEM, DESC_ITEM, COD_BARRA, UNID_INV, COD_NCM, ' +
        'ALIQ_ICMS'
      'from'
      '( select'
      #39'E'#39' AS TIPO,'
      'CODPRODUTO AS COD_ITEM,'
      
        '(select produto from C000025 WHERE CODIGO = ENT.CODPRODUTO) AS D' +
        'ESC_ITEM,'
      
        '(select CODBARRA from C000025 WHERE CODIGO = ENT.CODPRODUTO) AS ' +
        'COD_BARRA,'
      'UN_COMPRA AS UNID_INV,'
      
        '(select NCM from C000025 WHERE CODIGO = ENT.CODPRODUTO) AS COD_N' +
        'CM,'
      'ENT.ICMS_ALIQUOTA AS ALIQ_ICMS'
      'FROM C000088 ENT'
      
        ' WHERE ENT.CODNOTA = (SELECT CODIGO FROM C000087 TENT WHERE TENT' +
        '.DATA_EMISSAO >= :DATAi AND TENT.DATA_EMISSAO <= :DATAf and tent' +
        '.CODIGO = ent.CODNOTA )'
      'UNION'
      ''
      'select'
      #39'S'#39' AS TIPO,'
      'CODPRODUTO AS COD_ITEM,'
      
        '(select produto from C000025 WHERE CODIGO = SAI.CODPRODUTO) AS D' +
        'ESC_ITEM,'
      
        '(select CODBARRA from C000025 WHERE CODIGO = SAI.CODPRODUTO) AS ' +
        'COD_BARRA,'
      
        '(SELECT UNIDADE FROM C000025 WHERE CODIGO = SAI.CODPRODUTO) AS U' +
        'NID_INV,'
      
        '(select NCM from C000025 WHERE CODIGO = SAI.CODPRODUTO) AS COD_N' +
        'CM,'
      'SAI.ICMS AS ALIQ_ICMS'
      'FROM C000062 SAI'
      
        ' WHERE SAI.CODNOTA = (SELECT CODIGO FROM C000061 TSAI WHERE TSAI' +
        '.DATA_SAIDA >= :DATAi AND TSAI.DATA_SAIDA <= :DATAf and sai.CODN' +
        'OTA = tsai.CODIGO )'
      ')')
    Params = <
      item
        DataType = ftUnknown
        Name = 'DATAi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATAf'
        ParamType = ptUnknown
      end>
    Left = 276
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DATAi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATAf'
        ParamType = ptUnknown
      end>
    object qrItensMovTIPO: TWideStringField
      FieldName = 'TIPO'
      ReadOnly = True
      Size = 1
    end
    object qrItensMovCOD_ITEM: TWideStringField
      FieldName = 'COD_ITEM'
      ReadOnly = True
      Size = 13
    end
    object qrItensMovDESC_ITEM: TWideStringField
      FieldName = 'DESC_ITEM'
      ReadOnly = True
      Size = 60
    end
    object qrItensMovCOD_BARRA: TWideStringField
      FieldName = 'COD_BARRA'
      ReadOnly = True
      Size = 13
    end
    object qrItensMovUNID_INV: TWideStringField
      FieldName = 'UNID_INV'
      ReadOnly = True
      Size = 5
    end
    object qrItensMovCOD_NCM: TWideStringField
      FieldName = 'COD_NCM'
      ReadOnly = True
    end
    object qrItensMovALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
      ReadOnly = True
    end
  end
  object qrParticipantes: TZQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select  TIPO, COD_PART, NOME, COD_PAIS, CNPJ, CPF, IE, COD_MUN, ' +
        'SUFRAMA, sEND, NUM, COMPL, BAIRRO  FROM'
      '('
      'SELECT'
      ''
      #39'F'#39' AS TIPO,'
      'CODFORNECEDOR AS COD_PART,'
      
        '(Select NOME FROM C000009 WHERE CODIGO = C000087.CODFORNECEDOR) ' +
        'AS NOME,'
      #39'1058'#39' AS COD_PAIS,'
      
        '(Select CNPJ FROM C000009 WHERE CODIGO = C000087.CODFORNECEDOR) ' +
        'AS CNPJ,'
      
        '(Select CNPJ FROM C000009 WHERE CODIGO = C000087.CODFORNECEDOR) ' +
        'AS CPF,'
      
        '(Select IE FROM C000009 WHERE CODIGO = C000087.CODFORNECEDOR) AS' +
        ' IE,'
      
        '(Select COD_MUNICIPIO_IBGE  FROM C000009 WHERE CODIGO = C000087.' +
        'CODFORNECEDOR) AS COD_MUN, '#39#39' AS SUFRAMA,'
      
        '(Select ENDERECO FROM C000009 WHERE CODIGO = C000087.CODFORNECED' +
        'OR) AS sEND,'
      
        '(Select NUMERO FROM C000009 WHERE CODIGO = C000087.CODFORNECEDOR' +
        ') AS NUM,'
      
        '(Select COMPLEMENTO FROM C000009 WHERE CODIGO = C000087.CODFORNE' +
        'CEDOR) AS COMPL,'
      
        '(Select BAIRRO FROM C000009 WHERE CODIGO = C000087.CODFORNECEDOR' +
        ') AS BAIRRO'
      'FROM C000087'
      'WHERE DATA_EMISSAO >= :DATAi AND DATA_EMISSAO <= :DATAf'
      ''
      'UNION'
      ''
      'SELECT'
      #39'C'#39' AS TIPO, CODCLIENTE AS COD_PART,'
      
        '(Select NOME FROM C000007 WHERE CODIGO = C000061.CODCLIENTE) AS ' +
        'NOME,'
      #39'1058'#39' AS COD_PAIS,'
      
        '(Select CPF FROM C000007 WHERE CODIGO = C000061.CODCLIENTE) AS C' +
        'NPJ,'
      
        '(Select CPF FROM C000007 WHERE CODIGO = C000061.CODCLIENTE) AS C' +
        'PF,'
      
        '(Select RG FROM C000007 WHERE CODIGO = C000061.CODCLIENTE) AS IE' +
        ','
      
        '(Select COD_MUNICIPIO_IBGE  FROM C000007 WHERE CODIGO = C000061.' +
        'CODCLIENTE) AS COD_MUN, '#39#39' AS SUFRAMA,'
      
        '(Select ENDERECO FROM C000007 WHERE CODIGO = C000061.CODCLIENTE)' +
        ' AS sEND,'
      
        '(Select NUMERO FROM C000007 WHERE CODIGO = C000061.CODCLIENTE) A' +
        'S NUM,'
      
        '(Select COMPLEMENTO FROM C000009 WHERE CODIGO = C000061.CODCLIEN' +
        'TE) AS COMPL,'
      
        '(Select BAIRRO FROM C000007 WHERE CODIGO = C000061.CODCLIENTE) A' +
        'S BAIRRO'
      'FROM C000061'
      'WHERE DATA >= :DATAi AND DATA <= :DATAf'
      ')')
    Params = <
      item
        DataType = ftUnknown
        Name = 'DATAi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATAf'
        ParamType = ptUnknown
      end>
    Left = 100
    Top = 84
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DATAi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATAf'
        ParamType = ptUnknown
      end>
    object qrParticipantesTIPO: TWideStringField
      FieldName = 'TIPO'
      ReadOnly = True
      Size = 1
    end
    object qrParticipantesCOD_PART: TWideStringField
      FieldName = 'COD_PART'
      ReadOnly = True
      Size = 10
    end
    object qrParticipantesNOME: TWideStringField
      FieldName = 'NOME'
      ReadOnly = True
      Size = 80
    end
    object qrParticipantesCOD_PAIS: TWideStringField
      FieldName = 'COD_PAIS'
      ReadOnly = True
      Size = 4
    end
    object qrParticipantesCNPJ: TWideStringField
      FieldName = 'CNPJ'
      ReadOnly = True
      Size = 25
    end
    object qrParticipantesCPF: TWideStringField
      FieldName = 'CPF'
      ReadOnly = True
      Size = 25
    end
    object qrParticipantesIE: TWideStringField
      FieldName = 'IE'
      ReadOnly = True
      Size = 25
    end
    object qrParticipantesCOD_MUN: TWideStringField
      FieldName = 'COD_MUN'
      ReadOnly = True
      Size = 10
    end
    object qrParticipantesSUFRAMA: TWideStringField
      FieldName = 'SUFRAMA'
      ReadOnly = True
      Size = 0
    end
    object qrParticipantesSEND: TWideStringField
      FieldName = 'SEND'
      ReadOnly = True
      Size = 80
    end
    object qrParticipantesNUM: TWideStringField
      FieldName = 'NUM'
      ReadOnly = True
      Size = 10
    end
    object qrParticipantesCOMPL: TWideStringField
      FieldName = 'COMPL'
      ReadOnly = True
      Size = 40
    end
    object qrParticipantesBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      ReadOnly = True
      Size = 30
    end
  end
  object qrC190_Analitico: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select '#39'E'#39' AS TIPO,'
      'ent.cst, ent.CFOP,'
      'ent.ICMS_ALIQUOTA,'
      'sum(ent.ICMS_BASE) as VL_BC_ICMS,'
      'sum(ent.ICMS_VALOR) as VL_ICMS,'
      'sum(ent.SUB_BASE) as VL_BC_ICMS_ST,'
      'sum(ent.SUB_VALOR) as VL_ICMS_ST,'
      'sum(ent.ICMS_REDUCAO) as VL_RED_BC,'
      'sum(ent.IPI_VALOR) as VL_IPI'
      'FROM C000088 ent'
      
        'WHERE (select DATA_EMISSAO from c000087 where CODIGO = ent.CODNO' +
        'TA) >= :DT_INI and'
      
        '(select DATA_EMISSAO from c000087 where CODIGO = ent.CODNOTA)  <' +
        '= :DT_FIM'
      'and ent.CODNOTA = :CODIGO'
      'group by TIPO, ent.cst, ent.CFOP, ent.ICMS_ALIQUOTA'
      ''
      'UNION'
      ''
      'select '#39'S'#39' AS TIPO,'
      'sai.CST,'
      'sai.CFOP,'
      'sai.ICMS,'
      'sum(sai.BASE_CALCULO) as VL_BC_ICMS,'
      'sum(sai.VALOR_ICMS) as VL_ICMS,'
      'sum(sai.BASE_SUB) as VL_BC_ICMS_ST,'
      'sum(sai.ICMS_SUB) as VL_ICMS_ST,'
      'sum(sai.ICMS_REDUZIDO) as VL_RED_BC,'
      'sum(sai.VALOR_IPI) as VL_IPI'
      'FROM C000062 sai'
      
        'WHERE (select DATA_SAIDA from c000061 where CODIGO = sai.CODNOTA' +
        ') >= :DT_INI and'
      
        '(select DATA_SAIDA from c000061 where CODIGO = sai.CODNOTA)  <= ' +
        ':DT_FIM'
      'and sai.codnota = :CODIGO'
      'group by TIPO, sai.cst, sai.CFOP, sai.ICMS')
    Params = <
      item
        DataType = ftUnknown
        Name = 'DT_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DT_FIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    Left = 396
    Top = 228
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DT_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DT_FIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object qrC190_AnaliticoTIPO: TWideStringField
      FieldName = 'TIPO'
      ReadOnly = True
      Size = 1
    end
    object qrC190_AnaliticoCST: TWideStringField
      FieldName = 'CST'
      Size = 5
    end
    object qrC190_AnaliticoCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object qrC190_AnaliticoICMS_ALIQUOTA: TFloatField
      FieldName = 'ICMS_ALIQUOTA'
    end
    object qrC190_AnaliticoVL_BC_ICMS: TFloatField
      FieldName = 'VL_BC_ICMS'
      ReadOnly = True
    end
    object qrC190_AnaliticoVL_ICMS: TFloatField
      FieldName = 'VL_ICMS'
      ReadOnly = True
    end
    object qrC190_AnaliticoVL_BC_ICMS_ST: TFloatField
      FieldName = 'VL_BC_ICMS_ST'
      ReadOnly = True
    end
    object qrC190_AnaliticoVL_ICMS_ST: TFloatField
      FieldName = 'VL_ICMS_ST'
      ReadOnly = True
    end
    object qrC190_AnaliticoVL_RED_BC: TFloatField
      FieldName = 'VL_RED_BC'
      ReadOnly = True
    end
    object qrC190_AnaliticoVL_IPI: TFloatField
      FieldName = 'VL_IPI'
      ReadOnly = True
    end
  end
  object qrInventario: TZQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select CODIGO, CODBARRA,PRODUTO, UNIDADE, NCM, ESTOQUE, PRECOVEN' +
        'DA, (ESTOQUE * PRECOVENDA) AS VL_ITEM, ALIQUOTA, CODFORNECEDOR f' +
        'rom c000025'
      'where estoque > 0')
    Params = <>
    Left = 284
    Top = 28
    object qrInventarioCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrInventarioPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrInventarioCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrInventarioUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrInventarioNCM: TWideStringField
      FieldName = 'NCM'
    end
    object qrInventarioESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrInventarioPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object qrInventarioVL_ITEM: TFloatField
      FieldName = 'VL_ITEM'
      ReadOnly = True
    end
    object qrInventarioCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrInventarioALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
  end
  object qrInventarioTotal: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select sum((ESTOQUE * PRECOVENDA)) AS VALOR_ESTOQUE from c000025'
      'where estoque > 0')
    Params = <>
    Left = 368
    Top = 28
    object qrInventarioTotalVALOR_ESTOQUE: TFloatField
      FieldName = 'VALOR_ESTOQUE'
      ReadOnly = True
    end
  end
end
