object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 264
  Width = 320
  object dsPFilial: TDataSetProvider
    DataSet = dm.qryFilial
    Left = 20
    Top = 12
  end
  object dsPVendaGeral: TDataSetProvider
    DataSet = dm.qryVendaGeral
    Left = 100
    Top = 12
  end
  object dsPVendas: TDataSetProvider
    DataSet = dm.qryVendas
    Left = 196
    Top = 12
  end
end
