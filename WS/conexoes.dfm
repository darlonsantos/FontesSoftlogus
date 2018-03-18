object dm: Tdm
  OldCreateOrder = False
  Height = 224
  Width = 573
  object conn: TUniConnection
    ProviderName = 'Oracle'
    SpecificOptions.Strings = (
      'Oracle.Direct=True')
    DefaultTransaction = trans
    Username = 'ITATICO'
    Server = '192.168.0.1/WINT'
    LoginPrompt = False
    Left = 12
    Top = 4
    EncryptedPassword = '96FF8BFF9EFF8BFF96FF9CFF90FF'
  end
  object qryVendas: TUniQuery
    Connection = conn
    SQL.Strings = (
      'SELECT'
      '  PCPEDC.CODSUPERVISOR,'
      '  NVL(PCSUPERV.NOME, '#39'* NAO VINCULADO *'#39') NOME,'
      '  COUNT(PCPEDC.NUMPED) QTPED,'
      '  COUNT(DISTINCT(PCPEDC.CODUSUR)) QTRCAS, 0 AS  QTD_MIX_VENDIDO,'
      '  AVG(NVL(PCPEDC.NUMITENS,0)) MEDIAQTITENS,'
      
        '  SUM(DECODE(PCPEDC.CONDVENDA,5, 0 ,6, 0, 11, 0, 12, 0 ,PCPEDC.V' +
        'LATEND  )) VLVENDA,'
      
        '  SUM((NVL(DECODE(PCPEDC.CONDVENDA,5, 0 ,6, 0, 11, 0, 12, 0 ,PCP' +
        'EDC.VLATEND),0)))  - SUM((SELECT SUM(NVL(I.VLCUSTOFIN,0) *'
      
        'NVL(I.QT,0)) FROM PCPEDI I WHERE I.NUMPED = PCPEDC.NUMPED ) ) VL' +
        'LUCRO,'
      
        '  SUM(DECODE(PCPEDC.CONDVENDA,5, 0 ,6, 0, 11, 0, 12, 0 ,PCPEDC.V' +
        'LTABELA - NVL(PCPEDC.VLBONIFIC,0)  )) VLTABELA,'
      
        '  SUM(DECODE(PCPEDC.CONDVENDA, 5,NVL(PCPEDC.VLBONIFIC ,PCPEDC.VL' +
        'TABELA )'
      
        '                             , 6,NVL(PCPEDC.VLBONIFIC ,PCPEDC.VL' +
        'TABELA )'
      
        '                             ,11,NVL(PCPEDC.VLBONIFIC ,PCPEDC.VL' +
        'TABELA )'
      '                             ,1, NVL(PCPEDC.VLBONIFIC , 0)'
      
        '                             ,12,NVL(PCPEDC.VLBONIFIC ,PCPEDC.VL' +
        'TABELA ),0)) VLBONIF,'
      
        ' SUM((SELECT SUM(NVL(I.VLCUSTOREAL,0) * NVL(I.QT,0)) FROM PCPEDI' +
        ' I WHERE I.NUMPED = PCPEDC.NUMPED ) ) VLCUSTOREAL,'
      
        ' SUM((SELECT SUM(NVL(I.VLCUSTOFIN,0) * NVL(I.QT,0)) FROM PCPEDI ' +
        'I WHERE I.NUMPED = PCPEDC.NUMPED ) ) VLCUSTOFIN,'
      
        '  SUM((NVL(DECODE(PCPEDC.CONDVENDA,5, 0 ,6, 0, 11, 0, 12, 0 ,PCP' +
        'EDC.VLATEND),0)'
      
        ')*PCPEDC.PRAZOMEDIO)/DECODE(SUM(NVL(NVL(DECODE(PCPEDC.CONDVENDA,' +
        '5, 0 ,6, 0, 11, 0, 12, 0 ,PCPEDC.VLATEND),0) ,0)),0,1,'
      
        '  SUM(NVL(NVL(DECODE(PCPEDC.CONDVENDA,5, 0 ,6, 0, 11, 0, 12, 0 ,' +
        'PCPEDC.VLATEND),0) ,0)) ) clNUMDIAS,'
      '  COUNT(DISTINCT PCPEDC.CODCLI) QTMIXCLI,'
      '  SUM(NVL((PCPEDC.NUMITENS), 0)) QTITENS,'
      
        '  MAX(NVL((SELECT SUM(NVL(PCMETASUP.VLVENDAPREV,0)) FROM PCMETAS' +
        'UP  WHERE 0 = 0'
      
        '  AND PCMETASUP.DATA BETWEEN TO_DATE(:DTINCIO) AND TO_DATE(:DTFI' +
        'M)'
      
        '  AND PCMETASUP.CODFILIAL IN ('#39'1'#39','#39'11'#39','#39'2'#39','#39'3'#39','#39'4'#39','#39'5'#39','#39'6'#39','#39'7'#39','#39 +
        '8'#39','#39'97'#39','#39'98'#39')'
      
        '  AND PCMETASUP.CODSUPERVISOR(+) = PCPEDC.CODSUPERVISOR),0) ) VL' +
        'VENDAPREV,'
      '  SUM(NVL(PCPEDC.TOTPESO,0)) TOTPESO'
      'FROM  PCSUPERV, PCUSUARI, PCPLPAG, PCPEDC'
      'WHERE PCPEDC.CODPLPAG = PCPLPAG.CODPLPAG'
      '  AND PCPEDC.CODUSUR = PCUSUARI.CODUSUR'
      '  AND PCPEDC.CODSUPERVISOR = PCSUPERV.CODSUPERVISOR(+)'
      '  AND PCPEDC.CONDVENDA NOT IN (4, 8, 10, 13, 20, 98, 99)'
      '  AND PCPEDC.DTCANCEL IS NULL'
      '  AND PCPEDC.DATA BETWEEN TO_DATE(:DTINCIO) AND TO_DATE(:DTFIM)'
      
        '  AND PCPEDC.CODFILIAL IN ('#39'1'#39','#39'11'#39','#39'2'#39','#39'3'#39','#39'4'#39','#39'5'#39','#39'6'#39','#39'7'#39','#39'8'#39',' +
        #39'97'#39','#39'98'#39')'
      
        'GROUP BY PCPEDC.CODSUPERVISOR, NVL(PCSUPERV.NOME, '#39'* NAO VINCULA' +
        'DO *'#39') --, MIX_SUPERV.QTDE'
      'ORDER BY VLVENDA DESC')
    Left = 108
    Top = 4
    ParamData = <
      item
        DataType = ftDate
        Name = 'DTINCIO'
        Value = 43176d
      end
      item
        DataType = ftDate
        Name = 'DTFIM'
        Value = 43176d
      end>
  end
  object qryFilial: TUniQuery
    Connection = conn
    SQL.Strings = (
      'SELECT'
      '   CODIGO,'
      '  CASE CODIGO WHEN '#39'2'#39' THEN '#39'AGUAS LINDAS'#39
      '   WHEN '#39'3'#39' THEN '#39'SAMAMBAIA SUL'#39
      '   WHEN '#39'4'#39' THEN '#39'SANTA MARIA'#39
      '   WHEN '#39'5'#39' THEN '#39'RECANTO DAS EMAS'#39
      '   WHEN '#39'6'#39' THEN '#39'SAMAMBAIA NORTE'#39
      '   WHEN '#39'99'#39' THEN '#39'TODAS FILIAS'#39' END FILIAS'
      'FROM PCFILIAL FILIAL  WHERE  CODIGO IN ('#39'2'#39','#39'3'#39','#39'5'#39','#39'6'#39','#39'99'#39');')
    Left = 164
    Top = 4
    object qryFilialCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 2
    end
    object qryFilialFILIAS: TStringField
      FieldName = 'FILIAS'
      ReadOnly = True
      Size = 16
    end
  end
  object qryVendaGeral: TUniQuery
    Connection = conn
    Left = 232
    Top = 8
  end
  object trans: TUniTransaction
    DefaultConnection = conn
    Left = 60
    Top = 8
  end
  object provider: TOracleUniProvider
    Left = 304
    Top = 8
  end
end
