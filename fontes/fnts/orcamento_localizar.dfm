object frmOrcamento_localizar: TfrmOrcamento_localizar
  Left = 226
  Top = 169
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Venda - Localizar'
  ClientHeight = 376
  ClientWidth = 551
  Color = clSilver
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 373
    Width = 551
    Height = 3
    Align = alBottom
    Visible = False
    ExplicitTop = 327
    ExplicitWidth = 526
  end
  object wwDBGrid1: TwwDBGrid
    Left = 8
    Top = 97
    Width = 536
    Height = 271
    Selected.Strings = (
      'CODIGO'#9'7'#9'N'#250'mero'
      'DATA'#9'10'#9'Data'
      'cliente'#9'50'#9'Cliente'
      'TOTAL'#9'12'#9'Valor-R$')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clWhite
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dsorcamento
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = wwDBGrid1DblClick
    OnKeyPress = wwDBGrid1KeyPress
    PaintOptions.AlternatingRowColor = 16053492
    PaintOptions.ActiveRecordColor = clBlack
  end
  object Panel2: TPanel
    Left = 8
    Top = 8
    Width = 536
    Height = 83
    BevelOuter = bvNone
    Color = clSilver
    ParentBackground = False
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 121
      Height = 57
      Caption = 'Localizar por'
      Ctl3D = True
      DoubleBuffered = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 0
      object RadioButton1: TRadioButton
        Left = 8
        Top = 15
        Width = 105
        Height = 17
        Caption = 'F2 - N'#250'mero'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnClick = RadioButton1Click
      end
      object RadioButton2: TRadioButton
        Left = 8
        Top = 32
        Width = 105
        Height = 17
        Caption = 'F3 - Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = RadioButton2Click
      end
    end
    object GroupBox2: TGroupBox
      Left = 136
      Top = 2
      Width = 377
      Height = 79
      Caption = 'Informe o n'#250'mero da Venda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Edit1: TEdit
        Left = 16
        Top = 22
        Width = 233
        Height = 21
        TabOrder = 0
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyPress = Edit1KeyPress
      end
      object combocliente: TwwDBLookupCombo
        Left = 16
        Top = 23
        Width = 233
        Height = 21
        DropDownAlignment = taLeftJustify
        LookupTable = frmmodulo.qrcliente
        LookupField = 'NOME'
        TabOrder = 1
        Visible = False
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = comboclienteEnter
        OnExit = comboclienteExit
        OnKeyPress = comboclienteKeyPress
      end
      object BITBTN1: TAdvGlowButton
        Left = 268
        Top = 12
        Width = 97
        Height = 63
        Caption = 'Localizar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 49
        FocusType = ftHot
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
          6D000000097048597300000EC300000EC301C76FA864000000206348524D0000
          7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
          1F9000000A3A4944415478DAB4D95950545702C6F15395CA5465AAA66A2A999A
          D749661EB2CC4BAA9C444D46E5B6FBD20D74DFDBDDEC08888E884A40228A8AA0
          46C724337162C5252A1A40C505318AF402B48A02D20B8B224151147771EB6E50
          40F9CF43038A62EC18F3F03DD045DDFBEBEF9C7BEFB9A7052C1103932978982E
          7A9CB2E054A8E07484C0290B1AA3042E83A0DE28702A02A7FC7E8F5349C0A96C
          C6A594E0902FE290DD38643776F90A358623B8949C1EA792824BFE10A72C7A5C
          B2C061109C8AF01DBBD6E83B9E5D2BE8982F609978DA23FC02BA6441D35481CB
          F826354A1A4EE5340E99FED8750CF8DB2143B576E0E74EF91C4E79390EC3DB34
          440A1AC25E01B0214CD0182970C8AF531FB212877277508CBFB1CB6097BBA931
          AEA3CEF816752182932F0B74F537A8A62AF82CD5DA97870DD6EE09DD6D6A8DD1
          9C340A1C3F0B5CFA54960B58227AEA0C826A6D66FF3777FC06B1CBE0D0ADC529
          0BBA160AF8E2198FE0D1A2A79221E85C20A8D1E75019CCAF1A527F72420BD53A
          0BDE54C1A3CC673C82E688DE840B5AA204CD91028792FBD22774CAE0D2F9E2FC
          456D1EE64C84E042B4CFD2EB12B427F7669EA0234550AB2CE5B8E6970D935307
          4D81D0A2863381D018E4CB598DEFB3C6205E38558E07824397873B49D0FE79BF
          4BD012EF4B6B82E0C2F400EC3AFF86B5EF64CD1A38ABA1A9389CBD1BA7F3FD7F
          12F866E56CD6AC9ACDE66F1238B0259ECB65A13EE84F8150AD3CE7783ADFC573
          2E2E9AD6847E97A03946706E9AA021E235CAD537B1FB313476056A75D0A2A6A5
          2C94952BE6A08B59C418E31254CA7C54BA1454BA1446EBD3181B9281313E9DB5
          5FCFE24E951ECEAB7FA64D1D94ABE154F85B9C9F26688E1182EB89821B4982A6
          C8955406FAD75CAD165AD458F362098A5AC284D00C3421FF2228248EE973D248
          5EB09CCFD296119B908AC61043606822638D9984C6A7535F140117D4CF2FA132
          101A2376703D49703D51086A8C0297E10DAA75DD7E4D6AA70C17D498B74D4365
          C842179D8A5A896261E66ACA2B1D9CBB709996D66BB4B45EE3ECF9562C65E5CC
          4E5D825A894213B980C9E14BA9FB31022EAA7D2331D8F1ABB4E054FE4EAD51F4
          3E13F5697ECDBB6A055AD4341E8C647C5826DAA864828CB1EC3D60A6FD7E17E7
          5B6F603B5E4391B582432595949FA8E7F2F53BB8BD1DACDF9287461F8D267221
          869885B41DD14273F0E048BB0E6A94EF38152A044E83C0A1B4FA75C5D66BE154
          3029A9F39818964E90218683661B0007CCC75997BD97EC1D07C9D9554CCEAE62
          B66C3FC0BAEC026CC76B00D890BD03B512C5B8F065AC4C9F01F5E3A0DEF09CF3
          29F7701A5E17D4C87FF5FB96D2A2A63C379671A14BD1E863F87AED260076ED2F
          E5FB9C42F20B4BD8B9CF3A308556D66F2DC072D84E67770F0B96AE26282C015D
          CC629AB64F80FAF1501B32F8F95CB246F438F573FCC2B964680A62F5F2B98C35
          2C243C6E364DCD1770D69F65C3B682C171BDC92F2CE1BB2D7BB974ED36472BED
          A8F553191FB18C1FBE8A826343785811087583209DCA4681CB90E3D7FCABD382
          5326757E0A6374B358F1E55A6EDC76935F5842DE1ED373717DD9BAB308B3AD9A
          96D6AB24A62C669C318D2F96CC02DB27749846F0B042331069D781536F13D418
          0EFBB5526908C67BCCC88C39F319AB9DCE86ECED5CB971871FF20FB1A3C0F242
          E0F6BDBEFFB978E5262BBE5ACB78FD6C929253F09846F3B0E4533C8746D25D19
          08B5C6C74097D22470C897FC1AE286606E1F31322D713EE374F16CFE219F4BD7
          6EB17567113BF7BD18B8A3C04ADE1E33E75BAFF1EF6FD633513F8B84B9A9B415
          8D01DB083CC5A3701F1AE96BB2D6D8779F6C1338E40EBF802783E9AED2332739
          9531C13358B32E9BEBB7DCE4EE36F9D560EE6E13054587B974B58DF4AC2F1967
          48263D6D2E5D250174978EC26B9606227DC3EDF51F58A3837A2D198B3F63AC92
          4C525A16576FDCE65069155B771C24BFD0FAB317C9A69CFD38EACE70B2F12CA1
          B1898C0DCBE07F2BE2A16218ED1609AF591A88AC0C84BA10AFC0AEBBEAF7B2E8
          BC86AD6B6632DA9881C630158BED1837EF785997BDB77F8E0D86CBDD5DCCA69C
          FD3CE8869CFC4226E9A298129D45E9263D540DEDC73D83ACD0DC16D4198F71C2
          CFE57C5320574B42D1C72D22387C0EB109F3B875D7C34FCD9759BB790FDBF20F
          3D03DCB2FD00EBB7EEA3ED4E3B0D4DE7304627A0895C40FCECF9B45B241ED946
          3C03EC437A4D01CD821AC30EBFDF37ECBEE77049DE4C7471CB50EBE34859B89C
          DBF7BCDCB8E5A6B0B89CCDB93FB229773F9B72F7B339EF00A6B213B8DB3B6969
          BD42ECCC790487CE606CC44A8AD787F8DA33498302BD668976B3542E70289FFB
          BF3095E14E30B6AD5A261853999992C964398619490BA9AC7671BDED2E97AFDF
          E1CCF92B9C6DB9CAD59B77B976E336E6D2A384C5CD461B369D3111ABF86AE94C
          A8184667E9483CCFC1794C121D56D536814BF9C02F9C4B86369923390A1F7CAC
          61F86885C9E10BD04F5F812E22118D7E2AF3335691BBAB90C2220BFB0E5AC8CE
          DBCD9CD40CA628D1E8A2921913BE8A658B13E939F24F7A8E7C8ADBA47A6E7B1E
          B3C403AB14227A9C8AC021B7F9833B9C2BF3EE3F64DE1FAAE76F43B46CC99AC0
          9E757104C6643121228B4921494C92E398A2C432458961A23C8D49A1F3181FB1
          1C5D5C0639FF8D86639FC0D14F70173F1FD79BAE76ABEAF7829321821A65F5A0
          8FBB279BEBC5BD3754E1ED2146D6674C8193C3A06A18B53B357CFB453CB39252
          31C42F26282683A0980CC2A6A7939492CCE62F63682E98085543E9B18D7821CE
          639268B7A8F2EE978EE95D6ED9953F71423BF82AF79ACCD13C9977873CC66D58
          3A19EA47D0659368370540C530A818C6BD6215753B341CCD9629CF9669DC3585
          0E6B00540E8563C369374B784C2F6C0E8F59A2AB44FAB8BB3440082ECD125C9E
          2B381DB191AAA796FCE7646C3932EF7DF42CAEDB1680BBF8C96F2CF1A86C041C
          1BDE0B1E0AE59FF0B074E40B414FC66D92E8B048666CA30465A384E0F20CC1E5
          04C199A97FE0786067FF50BB646895090B91117FD6F39721216CCCECC51D7E8C
          7BD5F19824BA4BA5771ED924F1A84C128286084143B86FF7EA74A4D1B72BD5F7
          4A2963FA5E66B814CCA6CC89503B724073AF3AF74C2A3AAD525A5F7BBE06DD49
          BE7892059ECF0435FA0DFD6F777619CEE8C13905CA3FE5BE75945F73E865E236
          4BB45BA4B23ED863E0B9C8C7B9182D680A1354055B1FAFA415386DE051851A77
          D1083CA680DFAABDD35DA5D26BD8463E05EC4C7B9CAE0582AE74813755E0524A
          A9EADD3C722A501742F77135EE43235F29D2E3CBA9EED2803FF6D806B6E70392
          F5443205AC1090E9DB7E3B119C336007A00FF9AA9A3449782DAA435E8BEA773D
          A5A304830307DBC05C247A5C8A6FF7B3213C8E2A6D17D5BDF7C95780EC7BFE76
          58A4F9F74B54C26B51894725BF14E894050DA1829FA20476F91DEA8C9BFB9BAC
          35FE2A64BB592AB86F557DF8C02A89FB5695F0BC34F05448EF26BA2238132D70
          193EC2A9ACC1A95C7B09A4DB6B96363EB006489D56493CB0AAC47DCBAB023A65
          5F93FD3F43C86FE054D4D4877CDB7D5C6DF598A5D35EB374A317E1F69AA5B676
          B3D4E4354B87BD166983D72219DB2DAA37BD169578600D109DBDCDF903FCFF00
          2ADC84EE2664A1DC0000000049454E44AE426082}
        Transparent = True
        TabOrder = 2
        OnClick = BITBTN1Click
        Appearance.BorderColor = 12631218
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = clBlack
        Appearance.Color = 14671574
        Appearance.ColorTo = 15000283
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 14144974
        Appearance.ColorMirrorTo = 15197664
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
        Layout = blGlyphTop
      end
    end
  end
  object qrorcamento: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000056')
    Params = <>
    Left = 147
    Top = 163
    object qrorcamentocliente: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = frmmodulo.qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codcliente'
      Size = 50
      Lookup = True
    end
    object qrorcamentoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object dtfldDATA: TDateField
      FieldName = 'DATA'
    end
    object qrorcamentoCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrorcamentoCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrorcamentoSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
    end
    object qrorcamentoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrorcamentoACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qrorcamentoTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrorcamentoOBS1: TWideStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrorcamentoOBS2: TWideStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrorcamentoOBS3: TWideStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrorcamentoOBS4: TWideStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object qrorcamentoCODNF: TWideStringField
      FieldName = 'CODNF'
      Size = 6
    end
    object qrorcamentoCODVENDA: TWideStringField
      FieldName = 'CODVENDA'
      Size = 6
    end
    object qrorcamentoGERA_NF: TIntegerField
      FieldName = 'GERA_NF'
    end
    object qrorcamentoQTDE_MESES: TIntegerField
      FieldName = 'QTDE_MESES'
    end
    object qrorcamentoCONDPAGTOCLIENTE: TWideStringField
      FieldName = 'CONDPAGTOCLIENTE'
      Size = 100
    end
    object qrorcamentoPEND_ENTRADA: TIntegerField
      FieldName = 'PEND_ENTRADA'
    end
    object qrorcamentoPEND_CHEQUE: TIntegerField
      FieldName = 'PEND_CHEQUE'
    end
    object qrorcamentoPEND_CARTAO: TIntegerField
      FieldName = 'PEND_CARTAO'
    end
    object qrorcamentoNOME_VENDEDOR: TWideStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 50
    end
  end
  object dsorcamento: TDataSource
    DataSet = qrorcamento
    Left = 219
    Top = 163
  end
  object PopupMenu1: TPopupMenu
    Left = 123
    Top = 283
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object LocalizarporNmero1: TMenuItem
      Caption = 'Localizar por N'#250'mero'
      ShortCut = 113
      OnClick = LocalizarporNmero1Click
    end
    object LocalizarporCliente1: TMenuItem
      Caption = 'Localizar por Cliente'
      ShortCut = 114
      OnClick = LocalizarporCliente1Click
    end
  end
end
