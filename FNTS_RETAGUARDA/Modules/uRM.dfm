object RM: TRM
  OldCreateOrder = False
  Height = 384
  Width = 568
  object RvProj: TRvProject
    Engine = RvSystem1
    ProjectFile = 'E:\Comercial\Bin\relatorio.rav'
    Left = 120
    Top = 56
  end
  object RvSystem1: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemSetups = [ssAllowCopies, ssAllowCollate, ssAllowDuplex, ssAllowDestPreview, ssAllowDestPrinter, ssAllowDestFile, ssAllowPrinterSetup, ssAllowPreviewSetup]
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.FormState = wsMaximized
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'Rave Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 192
    Top = 56
  end
  object RvDsVendas: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = CdsVendas
    Left = 400
    Top = 176
  end
  object sdsVendas: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from VW_VENDAS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.DBAcesso
    Left = 80
    Top = 176
  end
  object dspVendas: TDataSetProvider
    DataSet = sdsVendas
    Left = 152
    Top = 176
  end
  object CdsVendas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVendas'
    Left = 216
    Top = 176
  end
end
