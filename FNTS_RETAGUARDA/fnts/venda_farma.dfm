object frmvenda_farma: Tfrmvenda_farma
  Left = 401
  Top = 134
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'PEDIDO DE VENDA | Farm'#225'cia'
  ClientHeight = 530
  ClientWidth = 797
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 456
    Width = 797
    Height = 3
    Align = alBottom
    ExplicitTop = 462
    ExplicitWidth = 779
  end
  object Bevel2: TBevel
    Left = 0
    Top = 49
    Width = 797
    Height = 2
    Align = alTop
    ExplicitWidth = 779
  end
  object Bevel3: TBevel
    Left = 0
    Top = 493
    Width = 797
    Height = 3
    Align = alBottom
    ExplicitTop = 499
    ExplicitWidth = 779
  end
  object FlatPanel10: TFlatPanel
    Left = 0
    Top = 0
    Width = 797
    Height = 49
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alTop
    TabOrder = 0
    object Bevel6: TBevel
      Left = 112
      Top = 12
      Width = 97
      Height = 24
    end
    object Bevel5: TBevel
      Left = 56
      Top = 4
      Width = 2
      Height = 44
    end
    object Label7: TLabel
      Left = 64
      Top = 16
      Width = 41
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'N'#250'mero:'
    end
    object lvenda_codigo: TLabel
      Left = 112
      Top = 12
      Width = 100
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = '000000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 208
      Top = 16
      Width = 41
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Data:'
      Transparent = True
    end
    object Bevel7: TBevel
      Left = 256
      Top = 12
      Width = 97
      Height = 24
    end
    object lvenda_data: TLabel
      Left = 257
      Top = 14
      Width = 96
      Height = 18
      Alignment = taCenter
      AutoSize = False
      Caption = '00/00/0000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 352
      Top = 16
      Width = 49
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Caixa:'
      Transparent = True
    end
    object Label12: TLabel
      Left = 496
      Top = 16
      Width = 57
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Vendedor:'
      Transparent = True
    end
    object Bevel8: TBevel
      Left = 408
      Top = 12
      Width = 81
      Height = 24
    end
    object lcaixa_codigo: TLabel
      Left = 409
      Top = 16
      Width = 80
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = '000099'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Bevel9: TBevel
      Left = 560
      Top = 12
      Width = 201
      Height = 24
    end
    object lvendedor_codigo: TLabel
      Left = 565
      Top = 17
      Width = 40
      Height = 13
      AutoSize = False
      Caption = '000000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lvendedor_nome: TLabel
      Left = 608
      Top = 17
      Width = 145
      Height = 13
      AutoSize = False
      Caption = 'NOME DO VENDEDOR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object AdvShapeButton2: TAdvShapeButton
      Left = 0
      Top = -8
      Width = 57
      Height = 65
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
        870000000473424954080808087C086488000000097048597300000AF000000A
        F00142AC34980000001F74455874536F667477617265004D6163726F6D656469
        612046697265776F726B732038B568D27800000C92494441546881D59A797055
        D77DC73FE76E6FD59384246CB10823109B050641E285C48CC724D8C9A49094DA
        4CC9329371A78DCBD849D37632938E9BB8F6346D9C94284D9C18DB498A9BB80E
        F630E3186A1B63C0804D2C3518B149EC8BAC5D7AEFE949EFBEBB9DFE71EF9514
        102004B8D3DFCC1B49F79EE5FBFD9DDFEF7B7EE73C092925FF9F4DB99AC677DE
        7D7F62EFBE86A5C0178055C03C207523808DD5B4B136AC9DBF64D1F7BFFF2F9B
        E7CE9A5575ECC429CCC13CD168CC8BC5636712C9784B329138AA6BEA11A00538
        0DB403F91B847BC8C64CA0F2E68A059D9D9D55BBDED9DDB3607EEDA64C36A7F5
        F665E6819CA12A6285AA6B2B74DD206A44302286198B464EC5E2F1E644227E24
        168D1C018E0367814EC0FEC809689AD6D7D3D383616885E9D3AB364E9F5EB527
        781503269D3CD5569D4EF7D464FB73F3BC8C370F296B10AC52356595A6EA18BA
        4E246AF44723D113C5A52547814399BE4CE32DB74C690C48DD5802A6991F5054
        152451A06CC4AB3C70A27A7AE509A87C73C4731D9874F66C47756F5FCF6CB350
        98971B18A89552CE6A397662E194A995B4341F2FF4F6753D5CB768D1AF00F786
        12F03CD7B44C13CB2A288C2DF96DE04C55D54D67AAAA6E7A7BE49CBB76FF4FF5
        CB9B5EFEAF682CBE30D79FADAE5BB468DC523866151ACC9B7955D3505455058C
        F14E0838777FA2AEA5A3BDEB8DC1C101F488EE00DE78071B3301DBB60B8EE3E0
        B8AECE55ACDCA54CA86A346A4489E8C63529D5980938B653701CC7751D57715D
        F7AAF68FD1CD8BBBD20370AE65943103E9EEEEC8ABAAEA288AA20C0E0E5E4B08
        85134BE9495CCF1B57F28E18676C56285885826559B6656B96655D7308211447
        2802CF75AFA99619339074BAD706F2208BF279F372FDE27D1B377E5595D28857
        551DD6EAEA4E924A9DE3825DD9965EC1735C3C10E3C40E5C5D325A802754857C
        7E501FAD41DF6F7FBBB663F3E6EFB46ED932D3761C8AA64E253171A28C5754B4
        EBB1D8C968717173A4BCFCD08489E50726C66365966DD3D0933EF1E04744C0B1
        6D3B6FDB2E178690B967CFDDAD2FBEF844FBEF7EF7C9AED3A7C9011990EA9123
        4239724444A03202950958AA03C540E5C7EFE0EC9A3FA7EED99F3FDEFDC22F56
        515D7D283A67CEE1E4CA95C7B8F5D6F340E17A13B01530150179DBF1E3369399
        7E76FDFAC7DB5F7BED8BEDEFBF4F1E7FFB8DF83F85822FF005C004D2C14006D0
        7DFE3CD192123A1ADF5FF8012CD4F7EC2109C41F7BCC8B9695B546274E6C894C
        9E7C50AFADFD7DF2A9A75E05FAAF898094926F7FFB3BF99C6922F54871E69967
        9E3CB969D3236D6FBE99CC82ABFAA0550D901026A60854A20DE802E600860A48
        4F62BB0E6955E3B4EBE0046022AEABC43B3BA71675764E8D1F3C786FC9EBAF53
        BC71E3A9586DEDD2B2B7DE6A1B370180B67C3E397FF61CF4677EF6AD86677E6E
        749B26125C1D54153F1B5568F3E0E60BBAEE7A48CA35CF0A7107F00EA061E651
        852A5155A1B90E12BF181A0072F865EB04908B410E76764EB7B76FBFA5CC77C4
        1FD95865B47857FD8F9F5A3B79F2AC194F3C2E8FD5FF48ED304D4B012F04AF40
        5AC0970C5817FC3D525D0C7C82A7095647D8169A99A7EDCEA53F506035F08A12
        38C10566009F300C1105251868703460575A8192F6A79FFE5AA6A9699DB673E7
        A4F4E1C34E5B00DA0023ACEA14784FC0839F93F2EC3621EE532F96462BF056C4
        05C503304DA46589DC9CB93D5FDAF1D6CBCF09D16BC3171460512CC6947C1ED3
        B210FE7CFF108B460F5F0D81E2D6FAFA87732D2D8FF4EEDB777367430303600B
        101130C43070144085939F95F22CFEEFB6167872C40E35ED3921661AE0B82139
        D7C1D00D629E5709D0064635705B3249229763103020A3C367A64AB9F7521EBE
        908071BEBE7EDDC0B1637F93696A9ADCB5732719B03DBFA1A606491910F89102
        0B54B8478185E1000AC8301F5C866274A184C682BF990DF1D20D1DC530CA003E
        BF78F102BDB11191CB61020920B96C5963E98E1D9704FF47047A366D5ADDF3DE
        7BFF943D7C784EF7EEDDA4FBFB6DC707A3EAA006DE96020EA9F0CD9552BEB145
        887F14708F0A55DB84285B2E658F0A9D928B62E835E09BC083C0F70054A0ADA3
        9D68516AC9B939737E166F6EFE4B2BE857944C12AFAB43358CA6CB811F22B06B
        D1A2EFEA89C46383A74FD3D5DAEA167C595434D00365091526ABC2B2CF49D91B
        78FB40402C0994033DC0231A17A9837848CA33FF21C4060B9EF4FCD5A4A86232
        ABB6BE3A6BB0B979560846AFA8203E650A8A940829FF704502BF10C2D0E00109
        18E0A614C5B33C4F3741C861F0FB5548283013A801F6055E6C12E0A9A028F0C0
        6E21EE1550A5F8F932B2DC10002EA45CFCFAF9B6921266AEFF5764F361DC609E
        531515724A71B1289512541555D70F5E8980A2FA32A505B1A4BA9EA717A552A2
        72F264262693941AC6B37F2AE5221B9EC4CF811561E74F49795C851341227F43
        C07FC66085EAE319691EC05EC8EB20972493CC4AA7B103F009389059BEFC898C
        A2A0AB2AC23010BA9E168671EC8A04BE2CA5A9C1F32AF40BFC4DA42B9BA5A7B5
        152B97239A4C7EFA83BBEE7A69EEF2E5B7A6001DEE093BBF2DC46D0A1405BABF
        6DA9941B80823EACDDA119007FBB76EDECDB1309A53C97A3E08F9536A0213E7D
        7A93BB6C5993AEAA42E83A6A2482AA69C7629B3767AF4440035823E53F6F15E2
        F902DC6BC02F2DD03D7CC928F4F656F5BDFB6E550C8847A3A4CACA6E3FFFE8A3
        5F4BBFFEBAA1C3D73DB082FC980D500C8BBBF14FF40ABE124958F16E79F9AEC9
        BDBD0B06A554DDE0F97EF8FD9DB04581FB74CB8A4B554589C550741DA969574C
        E0210200F74BD901FCBA61C992BF2BB4B72FCCB4B6A2E317616A0028639AE45A
        5B63B9FAFA9F4681D299334F6A8AD269B6B4547930E90F426CE881AF9E0EDABB
        F8F78E739349A3B8A7E79339DFEBB84023D00ECE7D2014C3700AE5E5F6D49A1A
        2646A348DB4668DAFEAB223064AEFBB6DDD6B6B0A4B4142D12C16A6FB7157851
        811A05EE08F57D00308F1FAF8E40755451485454943B8EF3D0402643C4714802
        15C924531D0791CB110A8217F41F046270D741A8F97855D5898FE5F3F7E55C17
        D2694459198AA21C181701B7AF6F9BED79DF2899368DEEFDFB31408BC056CFDF
        8012C03401A9505A014CCFC3ECE8C0C02F378946512C0B258875153F1C0F02B5
        403C78360825369478ADAD33CFBDF08248EBBA37AFAC4CD134CD548B8B0F8D85
        C045C55CF39933EF6990C3B2C23816C00B4036018B15680D92160DBFD677F1CF
        005A00D4344D0A9E37045E004D4006FF1E92A0DDFC588C25B367D3DAD1210EB8
        AE172D2A221A8D528066F1FCF35921C415ABE58B087C59CADED2D9B31BAC0F3F
        6444CDA328B0E56352DA0AB486E584817FCA68029A81EE8044B891A923267046
        90D4807BA64D63413249A6B919339542370CE5E6584CB13DAFE7EB3B76D40375
        C06221C47C21C42421C4A867E751CBE9444DCD0E3B9D1EF25E00E6E97D42AC51
        E1D691BB73043FAE7B81933014EB23766F64D0C60BFE2E056267CEF06A571705
        C3C0320C8AE3716CDB3EFB275BB6ACDBD0D77704FFFEB5025F072C79896F6246
        25E065B3DB5D8613C4004A62B16971F88D0A95A167C3550881320264B8021A7E
        88E5F16BFC22FCDA7A67F0BC64C204547F058EDCB97DFBBAFF8673C004FCE83C
        0AEC9352768F86F39204068E1E6D94D01596CB36E0E5F388A2226223C005C748
        C2CB4D270015120807578165A91435F8B2EC04634E004ACACB51A2D17DCB76EE
        7CF414648112FCE3678394F2B894F2B23777A312A8EBE81814B0370419C177CB
        EEFE7E5AF0BD1AD6FB296066224102DFB3798673200CDA3240C966D911BCB3F1
        657412707A60E08DDA77DEF9FB823F9C0E1C0EC087770097B54B66B90A6F0958
        290220797CEFA6F1BD1DDE2D0A60C6C000B5A914B9540ACE9F1F0AA330C4CEE1
        874C25FE954A7B00BE2B127969E9A953F5F8CADA0BB4482947BD7DB86A020ABC
        1DDC302082893B03124E306340940F002B9BA52A9BA592E17C50F05DDA1B902E
        0D269C188BF181AA6E5893CBFD2A68DE0C9C1DCF37A6973CD477C2C156784E06
        93A6183E6585E545A84271FC83404380C4603807C23E040414E0CD7CFE075FC9
        E59EC357E14629E5B8C05F96C04A29F93C3CBC113E731C7E03644B8277398613
        55E06FCF4A40C61A3170387878E195026B3D3CF615F825BEC70F482907C6853C
        B0CBEE74524A0BD80A6CBD5D88B97F01AB4BE0011D6AC3441E4940307C1F182A
        95C44FDA1930F063F8D64FE015A0474A39A6ABC32B99B8DAA51342A4BE079F5A
        0C6BA7C0A78B21D10FBC11002E0296337C1C5380A3D0F56BF8AB7F87D7AE17F0
        71131869F70A31FFAF61F52CF8B31E98FB21BE90DF8F4F440132D0FC4358BB5E
        CAC6EB03F90293525EF30748BD04ABF71AC62BDB61E01CC80CC8F3B0ED41B8E9
        7ACC71A9CF35ADC068F66F42CCFA2C7CB104DC9BE0BB37FA9F49AE3B818FDAAE
        C3B78DFFB7F6BFBB1C5FB2B72551940000000049454E44AE426082}
      ParentFont = False
      TabOrder = 0
      Version = '5.4.0.4'
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 51
    Width = 797
    Height = 405
    ControlType.Strings = (
      'PRODUTO;CustomEdit;EPRODUTO;F'
      'QTDE;CustomEdit;EQTDE;F'
      'UNITARIO;CustomEdit;EUNITARIO;F')
    Selected.Strings = (
      'PRODUTO'#9'55'#9'Produto'
      'CODBARRAS'#9'16'#9'C'#243'd. Barras'
      'NUMERACAO'#9'4'#9'Un.'
      'QTDE'#9'11'#9'Quantidade'
      'UNITARIO'#9'13'#9'Unit'#225'rio'
      'TOTAL'#9'13'#9'Total'
      'CST'#9'3'#9'CST'
      'ALIQUOTA'#9'6'#9'ICMS')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    BorderStyle = bsNone
    Ctl3D = True
    DataSource = dsvenda_produto
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    PaintOptions.AlternatingRowColor = 16053492
  end
  object EPRODUTO: TwwDBEdit
    Left = 16
    Top = 322
    Width = 337
    Height = 21
    CharCase = ecUpperCase
    DataField = 'PRODUTO'
    DataSource = dsvenda_produto
    TabOrder = 2
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
    OnEnter = EPRODUTOEnter
    OnExit = EPRODUTOExit
  end
  object EQTDE: TwwDBEdit
    Left = 16
    Top = 298
    Width = 73
    Height = 21
    DataField = 'QTDE'
    DataSource = dsvenda_produto
    TabOrder = 3
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
    OnEnter = EQTDEEnter
    OnExit = EQTDEExit
  end
  object EUNITARIO: TwwDBEdit
    Left = 96
    Top = 298
    Width = 73
    Height = 21
    DataField = 'UNITARIO'
    DataSource = dsvenda_produto
    TabOrder = 4
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
    OnEnter = EQTDEEnter
    OnExit = EQTDEExit
    OnKeyPress = EUNITARIOKeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 459
    Width = 797
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 5
    object Bevel4: TBevel
      Left = 648
      Top = 3
      Width = 122
      Height = 28
    end
    object Bevel10: TBevel
      Left = 453
      Top = 7
      Width = 73
      Height = 19
    end
    object litens: TLabel
      Left = 462
      Top = 11
      Width = 51
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object ltotal: TLabel
      Left = 653
      Top = 5
      Width = 112
      Height = 26
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 535
      Top = 10
      Width = 105
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Total dos Produtos:'
    end
    object Label2: TLabel
      Left = 392
      Top = 10
      Width = 56
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Itens:'
    end
    object bexcluir: TAdvGlowButton
      Left = 10
      Top = 3
      Width = 127
      Height = 24
      Caption = 'F7 | Excluir Item'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000002E04944415478DA
        62FCFFFF3F032500208058D0051EE7E529FFFFFB2FEA0FC3DFB8FFBF7E4BFC63
        F8C7F0FFFF9F177F19FE2DFAF7FFEF32EDB9CBEF22AB0708204664173CC9CD0B
        FEF3EFEF643E4D15496E03030646013E06861F3F187EBF7CC6F06ECF1E86F7EF
        DE3EFFFBFF6FAEE1A2F56B617A0002086E0048F3DFBF7F170AB9387073EBEB31
        FCBD778D81E1E56306865FBF181879041918E5E418DE6ED9C6F0F8C19DAFFFFE
        FE89375DBE1D6C084000810D78949BAB0474F661613B4B292E134386BFFB3733
        7CFBFE8381F1EF6F0676365606C67FFF19FEFFFAC1C0A065C4F07AC76E86272F
        1F3DFBF7FF8FADD5CA7DF700028809640A50730C9794B014A7AE16C3DF43DB19
        FEFEFCCEF0EFE73706D66F9F18FE7D78CBF0F7D33B867F3FBE31FC3EBC9B41D4
        D19181F3C74FA9BFFFFEC680F40204103810FF31FE8DE5D6D160F877FD02C3B7
        F76F18FE5C8684D337B4006693E067F873FF2E83A48115C3872B876281424D00
        010436001830D22C5C5C0C0CB76E3130FCFCC920BC6035D6287B15E5C7C0FAF9
        370387B105C3BF0B7FA44162000104F1C2AFDF0CFF3E019DFBF92303DBDF1F78
        E3FDCF9F7F400D2057FF01F3010208E682A7DF1F3E50E1E4E663F8FBE82DD826
        AC808989814D569EE1E3FDFB0CFF7EFF790A12020820B00BFEFEFBB3F8EDA953
        0CFFA55418FE7EFCC9C0CACB8AA1F72F30B6FEFE6766605550617874753F0330
        161683C40102086C0090B3E40B37C7B3B707F633B07A780363808981919919A2
        918191E1EF5F909B5918F83C7C181EEEDDCAF0E5D7B7677F19FF2F01C9030410
        3C219D8BF60B061AB4509447985BD4D195E1D783BB0CBFEEDE65F8F7EB1F03BB
        BA0A039B8C22C3E3BD9B191EBCBDF5F51FE3BF78AF2DD7C0090920805092F2C9
        48F760602A9BCCF6F797A48C862530DAA420D1F9EC11C3DDAB8718BEFDFDF11C
        A83917A61904000288113D371E097550FEFFE777D41FE67F71FFFFFD9500C510
        90FD02C85EF4EFCF9F655EDB6FA06426800062A4343B03041800C3755C60AB63
        B7520000000049454E44AE426082}
      TabOrder = 0
      OnClick = bexcluirClick
      Appearance.BorderColor = 12179676
      Appearance.BorderColorHot = clHighlight
      Appearance.BorderColorDown = clHighlight
      Appearance.BorderColorChecked = clBlack
      Appearance.ColorTo = 12179676
      Appearance.ColorChecked = 12179676
      Appearance.ColorCheckedTo = 12179676
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 11899524
      Appearance.ColorDownTo = 11899524
      Appearance.ColorHot = 15717318
      Appearance.ColorHotTo = 15717318
      Appearance.ColorMirror = 12179676
      Appearance.ColorMirrorTo = 12179676
      Appearance.ColorMirrorHot = 15717318
      Appearance.ColorMirrorHotTo = 15717318
      Appearance.ColorMirrorDown = 11899524
      Appearance.ColorMirrorDownTo = 11899524
      Appearance.ColorMirrorChecked = 12179676
      Appearance.ColorMirrorCheckedTo = 12179676
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 496
    Width = 797
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 6
    object bfinaliza: TAdvGlowButton
      Left = 264
      Top = 3
      Width = 126
      Height = 26
      Caption = 'F2 | Finalizar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000003274944415478DA
        62FCFFFF3F032500208058D005924F392AFFF9F33BEAEFDF7F713F7FFF90F8F7
        EF0F03C3BF7F2F18FE312CFAF3F7EFB28DDED7EF22AB070820466417249EB00B
        FEF9FBE764690665497D515B066E567EB0F8E75F1F184E3EDECD70E3D3F9E740
        8372F7863D580BD30310407003E28FD9047FFFFD73A1359F37B7BAB001C3B3EF
        8F199E7D7B0A9693E2926690E09461B8F6FC14C3F2AB4BBF029D1D7F32E911D8
        108000021B107BD84AE9E79FDF87AD05BCA55485F5198EBEDECFF0E7DF5F20FE
        C7C0045204F22B233383B59823C3D5A7A718965C5AF60CE812DB4BD98FEF0104
        10489EE1EF9FDF31D28CCA52209B419A7FFCF9CDF0EBEF6F863F40FCEBCF2F06
        609830B84A79339C7A71984147DA8CC1505847EAE76F8618905E8000021BF0FB
        EFCF5843093B8627DF1E0135FD61F80B0CB87F409A11E802C67FFF19FC15C218
        1C653C1932744B189E7CBACF60AFEACCF0EB27432C482F4000810DF8FEF3A7B4
        009B10C3D3AF0F819AFF327848FB306468150235333104288633D84BBB810DDD
        7C6725C3D30FF7180439C518FE7DFF2F0DD20B10402C500318FE01C3E23FD046
        5E665E062B0907063E367E865AB30E06210E11B0E659177A196EBFB9CCC0C3CA
        030C1360C0FF86C4024000815DC0F00768F0B7D70CD25CB20C5F7E7E649876A1
        93E1EBEFCF60CDFFFEFF639875AE9BE1FAABF3E0C094E2936378FDE139D0750C
        E0280208204818FCFEBFF8E8BDDD0C529CB20CACFF18185E7D7DC630F17433C3
        ADB75719E69CEF65B8F6FA02500323031310CBF229326CB9B28B01E888C520BD
        00010436E0E7F7FF4B4E3FBBF0ECF2D3130C96522E0C6C4085EFBE3E67987EA6
        95E1DA8BF30CCCFF9918D8989819EC953C194EDF3BCC70E1DACD670CBF189680
        F40204103C21E94C920DFEFAF3FFC26493206E23596B86C71FEF03FD751F1C2E
        32824A0C327CF20C27EF1D6458B075CB572656C6F8077D4FC0090920805092B2
        52B76CF0BF9FFF271BCBAA4B7A68B902435B04E45486D75F5F306CBBB08BE1D2
        F5BBCF199918731FF43F81276580006244CF8D0A4DB2CA0C7FFF47010336EEFF
        CFFF120C7F81299191F105506A1130E4973D98FC04253301041023A5D91920C0
        00B9755E16835EC02B0000000049454E44AE426082}
      TabOrder = 0
      OnClick = bfinalizaClick
      Appearance.BorderColor = 12179676
      Appearance.BorderColorHot = clHighlight
      Appearance.BorderColorDown = clHighlight
      Appearance.BorderColorChecked = clBlack
      Appearance.ColorTo = 12179676
      Appearance.ColorChecked = 12179676
      Appearance.ColorCheckedTo = 12179676
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 11899524
      Appearance.ColorDownTo = 11899524
      Appearance.ColorHot = 15717318
      Appearance.ColorHotTo = 15717318
      Appearance.ColorMirror = 12179676
      Appearance.ColorMirrorTo = 12179676
      Appearance.ColorMirrorHot = 15717318
      Appearance.ColorMirrorHotTo = 15717318
      Appearance.ColorMirrorDown = 11899524
      Appearance.ColorMirrorDownTo = 11899524
      Appearance.ColorMirrorChecked = 12179676
      Appearance.ColorMirrorCheckedTo = 12179676
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object bcancelar: TAdvGlowButton
      Left = 395
      Top = 3
      Width = 126
      Height = 26
      Caption = 'F9 | Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000002E74944415478DA
        62FCFFFF3F032500208058D0059EB636C431FCFB9BF9FFEF3F7D86BF7FBFFFFF
        FB87E1FFDFBF9C407C91E1CF9FE9F213A62D42560F10408CC82E006A8E67E5E3
        5A2060A4C9C0CACFC3F0FFF71F0686BFFF18188172BFDEBE67787BE40CC3CF57
        6F9214672E980FD303104070039EB6D427B2F072CD1334D66260FBF69481E1D5
        2306867FFF18184086FCFCC9C0C02FC9F0935786E1F5C1130C3F5FBF4D565EB4
        721E481F4000810D78DA5C97C8C207D46C04D4FC15A8F9D93D06A07381D6FE06
        1AF01B62C8AF5F0C0CE20A0C3F05E4185E1E380E7249A2EAEA4D0B0002880964
        0AD09F9982869A0C6C1F1F33303CBACDC02028C3C0A0E308D4F89781E13BD076
        4D2B0606216906865B5718D89FDC6010B334027AEF5726482F40004102F1CF5F
        3D566E6E06866B409B7F026DE2E06760B0F26360E0126460F8F619C8F6626058
        3505287F8981E1F6550676653DA001BFF5415A0102086CC0FF3FBFBFFDFFF993
        9D1164E30FA08DE70E3230B0703230B8864342EAE0460686C33B20728C4C0CFF
        7EFC0219F00D240510406003FE81FC0B73EEF75F104DACEC88B862051AF6E71F
        DC00A08B419682A5000208E282DFBFB9191980B1F1ED1BC410637B0606870006
        865D6B18183E7F6060084E01062C305656CC640029636204E9F9C30DD20B1040
        9030F8FDFBF2EFB7EF8DD984810175E71A03C3BD1B0C0C8B263030ECDB04B40D
        68D3ABE7C0787E0C894E252D861FAFDE805C7019A4152080A05EF83DFDD591D3
        73444DF519D8BF7D6760B80994BB7611128D20EFED580F36E88FB216C34F251D
        8667BBF7010DF83B1DA4172080E009E96E4C680A2B2FCF6C313323068EFB5780
        2E01BAE2FF3F706AFCFDF307C33F3965865FC0D07FB9673F300DBC4ED5397365
        0E481F4000A124E55BC13E89ECFCBCF3C4CC8C19D804F819FE0213CFBF7F7FC1
        01F7FDCD5B8637FB0F32FC7CFE3249E7EC55785206082046F4DC78D3CB29EEFF
        9F3FC0CCF4571F487F674064A64B403C5DF7ECB585C8EA01028891D2EC0C1060
        008C5756165E6F8C750000000049454E44AE426082}
      TabOrder = 1
      OnClick = bcancelarClick
      Appearance.BorderColor = 12179676
      Appearance.BorderColorHot = clHighlight
      Appearance.BorderColorDown = clHighlight
      Appearance.BorderColorChecked = clBlack
      Appearance.ColorTo = 12179676
      Appearance.ColorChecked = 12179676
      Appearance.ColorCheckedTo = 12179676
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 11899524
      Appearance.ColorDownTo = 11899524
      Appearance.ColorHot = 15717318
      Appearance.ColorHotTo = 15717318
      Appearance.ColorMirror = 12179676
      Appearance.ColorMirrorTo = 12179676
      Appearance.ColorMirrorHot = 15717318
      Appearance.ColorMirrorHotTo = 15717318
      Appearance.ColorMirrorDown = 11899524
      Appearance.ColorMirrorDownTo = 11899524
      Appearance.ColorMirrorChecked = 12179676
      Appearance.ColorMirrorCheckedTo = 12179676
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object bvidalink: TAdvGlowButton
      Left = 624
      Top = 3
      Width = 145
      Height = 26
      Caption = 'F3 | Conv'#234'nios On-line'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000003194944415478DA
        625C7CE87DDDFFFF0CA97FFFFF93F9F7EF1FC3DF7F0C0C7F40F45F10FB3FC31F
        208DC07F19FEFEF90F14FF77BA3546D58C0108000288E5DFFFFFB9C166BC220C
        2480869577F4606C800062019A06D6BCF1DE42A0CD7F80B6FC61F80DA47FFFFD
        0DA6A578641844B8C41884394518763CDCC490AD5BC5F0FBF75F7698010001C4
        0272260844692513B479CBDDB50CD3CF7732FCFEE30F1703082016905F4160F9
        915770417101360636DE270C67DFEF60B8FFF106C39F3F7F19FEFCFECB20CD2D
        C3F0F5CF67864F5C8B80AA7AC06A010288E90FD4001088B411636066FCCF202F
        F78AE1D4FB8D0C3CCC9C0CCE521E0C2EB21E0C6E8A1E0C1A229A0C9AE25A0C12
        C23F19FC67B8DF01E901082096DF40038001C9C0C2CCC0B0F6F82B0666662686
        3DF78E327001A128BB18C3C597E719EEBDB9CBF0FBD76F06193E59A06BFE30DC
        BEFF976163EE4E1590010001C404F202281458981919822DC518589818189E7D
        BB06D6B8F9D606865F3F9818E605AC60581CB696E1FBD79F0CFFBE3333B07D89
        6570EAB0E604190010406017FC07FA02A471CBD9D74017303024283431F07030
        3330323230BCFBFC8BE1CEF36FE074C0C920C250E85AC9907DE73CC3BE8AA3DF
        4106000410D3EF3F4003805E60056AF4311665E06061645014E36410E5636310
        E165631006E2D5977A1934647818DA839B1998189918B8D959E0E10610402CA0
        540702CC4C8C0C7B2EBE01B36F3FFFCAC00B74202B132B43DBAE72860F5F3E30
        DC028A8140D7C65C862B2FCE30E817FCF9FFE7F79F870001C4040A14701800BD
        E0A22F020E4C55496E0609016E86FE03350C3FFE7D626066FDCB9034CB912176
        8A2DC357860F0C51C1A10CA64646C080FDB3132080206100F4828E1C0FC3F377
        DF1994C53919EEBFF8C250B5399E4180978F415F4D1798F6FF32E8A86931FCFD
        FF1718637F81B1708FE1E0A1A367FFFEF9BB1C2080188BE65D3B024C2406BFFE
        FEE3FE0D4C3020FC17182E20835979E73330737E0027A4AB37AE33FCF9F5079C
        A09818A4DE7CFFF120F4FEC247070002086C3B3E6C5CAA7B402F5FF3122E7980
        00622294FE7FFDFCED0CF4EB0D5CF2000106009F787D83D25435030000000049
        454E44AE426082}
      TabOrder = 2
      OnClick = bvidalinkClick
      Appearance.BorderColor = 12179676
      Appearance.BorderColorHot = clHighlight
      Appearance.BorderColorDown = clHighlight
      Appearance.BorderColorChecked = clBlack
      Appearance.ColorTo = 12179676
      Appearance.ColorChecked = 12179676
      Appearance.ColorCheckedTo = 12179676
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 11899524
      Appearance.ColorDownTo = 11899524
      Appearance.ColorHot = 15717318
      Appearance.ColorHotTo = 15717318
      Appearance.ColorMirror = 12179676
      Appearance.ColorMirrorTo = 12179676
      Appearance.ColorMirrorHot = 15717318
      Appearance.ColorMirrorHotTo = 15717318
      Appearance.ColorMirrorDown = 11899524
      Appearance.ColorMirrorDownTo = 11899524
      Appearance.ColorMirrorChecked = 12179676
      Appearance.ColorMirrorCheckedTo = 12179676
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
  end
  object dsvenda_produto: TDataSource
    DataSet = qrvenda_produto
    Left = 536
    Top = 352
  end
  object qrvenda_contasreceber: TZQuery
    Connection = frmmodulo.ConexaoLocal
    SQL.Strings = (
      'select * from cL00002')
    Params = <>
    Left = 192
    Top = 160
    object qrvenda_contasreceberPRESTACAO: TIntegerField
      FieldName = 'PRESTACAO'
    end
    object qrvenda_contasreceberVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
    end
    object qrvenda_contasreceberVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qrvenda_contasreceberDOCUMENTO: TWideStringField
      FieldName = 'DOCUMENTO'
    end
    object qrvenda_contasreceberTIPO: TWideStringField
      FieldName = 'TIPO'
    end
    object qrvenda_contasreceberTERMINAL: TWideStringField
      FieldName = 'TERMINAL'
      Size = 4
    end
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select pro.*, lab.nome from c000025 pro, c000019 lab ')
    Params = <>
    Left = 272
    Top = 88
    object qrprodutoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrprodutoCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrprodutoPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 100
    end
    object qrprodutoUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrprodutoDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object qrprodutoCODGRUPO: TWideStringField
      FieldName = 'CODGRUPO'
      Size = 6
    end
    object qrprodutoCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object qrprodutoCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrprodutoCODMARCA: TWideStringField
      FieldName = 'CODMARCA'
      Size = 6
    end
    object qrprodutoDATA_ULTIMACOMPRA: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qrprodutoNOTAFISCAL: TWideStringField
      FieldName = 'NOTAFISCAL'
      Size = 7
    end
    object qrprodutoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object qrprodutoPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object qrprodutoDATA_ULTIMAVENDA: TDateTimeField
      FieldName = 'DATA_ULTIMAVENDA'
    end
    object qrprodutoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrprodutoESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
    end
    object qrprodutoCODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Size = 5
    end
    object qrprodutoAPLICACAO: TWideMemoField
      FieldName = 'APLICACAO'
      BlobType = ftWideMemo
    end
    object qrprodutoLOCALICAZAO: TWideStringField
      FieldName = 'LOCALICAZAO'
      Size = 50
    end
    object qrprodutoPESO: TFloatField
      FieldName = 'PESO'
    end
    object qrprodutoVALIDADE: TWideStringField
      FieldName = 'VALIDADE'
    end
    object qrprodutoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qrprodutoUSA_BALANCA: TIntegerField
      FieldName = 'USA_BALANCA'
    end
    object qrprodutoUSA_SERIAL: TIntegerField
      FieldName = 'USA_SERIAL'
    end
    object qrprodutoUSA_GRADE: TIntegerField
      FieldName = 'USA_GRADE'
    end
    object qrprodutoCODRECEITA: TWideStringField
      FieldName = 'CODRECEITA'
      Size = 6
    end
    object qrprodutoFOTO: TWideStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA_ANTERIOR'
    end
    object qrprodutoNOTAFISCAL_ANTERIOR: TWideStringField
      FieldName = 'NOTAFISCAL_ANTERIOR'
      Size = 6
    end
    object qrprodutoCODFORNECEDOR_ANTERIOR: TWideStringField
      FieldName = 'CODFORNECEDOR_ANTERIOR'
      Size = 6
    end
    object qrprodutoPRECOCUSTO_ANTERIOR: TFloatField
      FieldName = 'PRECOCUSTO_ANTERIOR'
    end
    object qrprodutoPRECOVENDA_ANTERIOR: TFloatField
      FieldName = 'PRECOVENDA_ANTERIOR'
    end
    object qrprodutoCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
    end
    object qrprodutoAUTO_APLICACAO: TWideStringField
      FieldName = 'AUTO_APLICACAO'
      Size = 60
    end
    object qrprodutoAUTO_COMPLEMENTO: TWideStringField
      FieldName = 'AUTO_COMPLEMENTO'
      Size = 60
    end
    object qrprodutoDATA_REMARCACAO_CUSTO: TDateTimeField
      FieldName = 'DATA_REMARCACAO_CUSTO'
    end
    object qrprodutoDATA_REMARCACAO_VENDA: TDateTimeField
      FieldName = 'DATA_REMARCACAO_VENDA'
    end
    object qrprodutoPRECO_PROMOCAO: TFloatField
      FieldName = 'PRECO_PROMOCAO'
    end
    object qrprodutoDATA_PROMOCAO: TDateTimeField
      FieldName = 'DATA_PROMOCAO'
    end
    object qrprodutoFIM_PROMOCAO: TDateTimeField
      FieldName = 'FIM_PROMOCAO'
    end
    object qrprodutoCST: TWideStringField
      FieldName = 'CST'
      Size = 10
    end
    object qrprodutoCLASSIFICACAO_FISCAL: TWideStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
    end
    object qrprodutoNBM: TWideStringField
      FieldName = 'NBM'
    end
    object qrprodutoNCM: TWideStringField
      FieldName = 'NCM'
    end
    object qrprodutoALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrprodutoIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrprodutoREDUCAO: TFloatField
      FieldName = 'REDUCAO'
    end
    object qrprodutoQTDE_EMBALAGEM: TFloatField
      FieldName = 'QTDE_EMBALAGEM'
    end
    object qrprodutoTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object qrprodutoPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object qrprodutoFARMACIA_CONTROLADO: TWideStringField
      FieldName = 'FARMACIA_CONTROLADO'
      Size = 1
    end
    object qrprodutoFARMACIA_APRESENTACAO: TIntegerField
      FieldName = 'FARMACIA_APRESENTACAO'
    end
    object qrprodutoFARMACIA_REGISTRO_MEDICAMENTO: TWideStringField
      FieldName = 'FARMACIA_REGISTRO_MEDICAMENTO'
    end
    object qrprodutoFARMACIA_PMC: TFloatField
      FieldName = 'FARMACIA_PMC'
    end
    object qrprodutoULTIMA_ALTERACAO: TDateTimeField
      FieldName = 'ULTIMA_ALTERACAO'
    end
    object qrprodutoULTIMA_CARGA: TDateTimeField
      FieldName = 'ULTIMA_CARGA'
    end
    object qrprodutoDATA_INVENTARIO: TDateTimeField
      FieldName = 'DATA_INVENTARIO'
    end
    object qrprodutoCUSTO_INVENTARIO: TFloatField
      FieldName = 'CUSTO_INVENTARIO'
    end
    object qrprodutoESTOQUE_INVENTARIO: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO'
    end
    object qrprodutoESTOQUE_ANTERIOR: TFloatField
      FieldName = 'ESTOQUE_ANTERIOR'
    end
    object qrprodutoPRECOVENDA_NOVO: TFloatField
      FieldName = 'PRECOVENDA_NOVO'
    end
    object qrprodutoUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
    end
    object qrprodutoQUANTIDADE_MINIMA_FAB: TFloatField
      FieldName = 'QUANTIDADE_MINIMA_FAB'
    end
    object qrprodutoAPRESENTACAO: TWideStringField
      FieldName = 'APRESENTACAO'
      Size = 60
    end
    object qrprodutoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrprodutoPRECOVENDA1: TFloatField
      FieldName = 'PRECOVENDA1'
    end
    object qrprodutoPRECOVENDA2: TFloatField
      FieldName = 'PRECOVENDA2'
    end
    object qrprodutoPRECOVENDA3: TFloatField
      FieldName = 'PRECOVENDA3'
    end
    object qrprodutoPRECOVENDA4: TFloatField
      FieldName = 'PRECOVENDA4'
    end
    object qrprodutoPRECOVENDA5: TFloatField
      FieldName = 'PRECOVENDA5'
    end
    object qrprodutoDESCONTO_PRECOVENDA: TFloatField
      FieldName = 'DESCONTO_PRECOVENDA'
    end
    object qrprodutoDATA_INVENTARIO_ATUAL: TDateTimeField
      FieldName = 'DATA_INVENTARIO_ATUAL'
    end
    object qrprodutoCUSTO_INVENTARIO_ATUAL: TFloatField
      FieldName = 'CUSTO_INVENTARIO_ATUAL'
    end
    object qrprodutoESTOQUE_INVENTARIO_ATUAL: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO_ATUAL'
    end
    object qrprodutoMARGEM_MINIMA: TFloatField
      FieldName = 'MARGEM_MINIMA'
    end
    object qrprodutoPISCOFINS: TWideStringField
      FieldName = 'PISCOFINS'
      Size = 1
    end
    object qrprodutoREFERENCIA_FORNECEDOR: TWideStringField
      FieldName = 'REFERENCIA_FORNECEDOR'
      Size = 30
    end
    object qrprodutoCOMISSAO1: TFloatField
      FieldName = 'COMISSAO1'
    end
    object qrprodutoMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object qrprodutoTAMANHO: TWideStringField
      FieldName = 'TAMANHO'
      Size = 6
    end
    object qrprodutoCOR: TWideStringField
      FieldName = 'COR'
      Size = 6
    end
    object qrprodutoINCIDENCIA_PISCOFINS: TWideStringField
      FieldName = 'INCIDENCIA_PISCOFINS'
      Size = 30
    end
    object qrprodutoVEIC_CHASSI: TWideStringField
      FieldName = 'VEIC_CHASSI'
      Size = 50
    end
    object qrprodutoVEIC_SERIE: TWideStringField
      FieldName = 'VEIC_SERIE'
      Size = 50
    end
    object qrprodutoVEIC_POTENCIA: TWideStringField
      FieldName = 'VEIC_POTENCIA'
      Size = 50
    end
    object qrprodutoVEIC_PESO_LIQUIDO: TWideStringField
      FieldName = 'VEIC_PESO_LIQUIDO'
      Size = 15
    end
    object qrprodutoVEIC_PESO_BRUTO: TWideStringField
      FieldName = 'VEIC_PESO_BRUTO'
      Size = 15
    end
    object qrprodutoVEIC_TIPO_COMBUSTIVEL: TWideStringField
      FieldName = 'VEIC_TIPO_COMBUSTIVEL'
    end
    object qrprodutoVEIC_RENAVAM: TWideStringField
      FieldName = 'VEIC_RENAVAM'
      Size = 50
    end
    object qrprodutoVEIC_ANO_FABRICACAO: TIntegerField
      FieldName = 'VEIC_ANO_FABRICACAO'
    end
    object qrprodutoVEIC_ANO_MODELO: TIntegerField
      FieldName = 'VEIC_ANO_MODELO'
    end
    object qrprodutoVEIC_TIPO: TWideStringField
      FieldName = 'VEIC_TIPO'
      Size = 50
    end
    object qrprodutoVEIC_TIPO_PINTURA: TWideStringField
      FieldName = 'VEIC_TIPO_PINTURA'
      Size = 15
    end
    object qrprodutoVEIC_COD_COR: TWideStringField
      FieldName = 'VEIC_COD_COR'
      Size = 15
    end
    object qrprodutoVEIC_COR: TWideStringField
      FieldName = 'VEIC_COR'
      Size = 30
    end
    object qrprodutoVEIC_VIN: TWideStringField
      FieldName = 'VEIC_VIN'
      Size = 10
    end
    object qrprodutoVEIC_NUMERO_MOTOR: TWideStringField
      FieldName = 'VEIC_NUMERO_MOTOR'
      Size = 50
    end
    object qrprodutoVEIC_CMKG: TWideStringField
      FieldName = 'VEIC_CMKG'
      Size = 15
    end
    object qrprodutoVEIC_CM3: TWideStringField
      FieldName = 'VEIC_CM3'
      Size = 15
    end
    object qrprodutoVEIC_DISTANCIA_EIXO: TWideStringField
      FieldName = 'VEIC_DISTANCIA_EIXO'
      Size = 15
    end
    object qrprodutoVEIC_COD_MARCA: TWideStringField
      FieldName = 'VEIC_COD_MARCA'
      Size = 15
    end
    object qrprodutoVEIC_ESPECIE: TWideStringField
      FieldName = 'VEIC_ESPECIE'
      Size = 50
    end
    object qrprodutoVEIC_CONDICAO: TWideStringField
      FieldName = 'VEIC_CONDICAO'
      Size = 50
    end
    object qrprodutoLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
    end
    object qrprodutoLOTE_VALIDADE: TDateTimeField
      FieldName = 'LOTE_VALIDADE'
    end
    object qrprodutoMARGEM_AGREGADA: TFloatField
      FieldName = 'MARGEM_AGREGADA'
    end
    object qrprodutoCODBARRA_NOVARTIS: TWideStringField
      FieldName = 'CODBARRA_NOVARTIS'
      Size = 13
    end
    object qrprodutoFARMACIA_DCB: TWideStringField
      FieldName = 'FARMACIA_DCB'
    end
    object qrprodutoFARMACIA_ABCFARMA: TWideStringField
      FieldName = 'FARMACIA_ABCFARMA'
      Size = 10
    end
    object qrprodutoFARMACIA_APRESENTACAO_CAIXA: TWideStringField
      FieldName = 'FARMACIA_APRESENTACAO_CAIXA'
      Size = 10
    end
    object qrprodutoFARMACIA_PRINCIPIOATIVO: TWideStringField
      FieldName = 'FARMACIA_PRINCIPIOATIVO'
      Size = 30
    end
    object qrprodutoULTIMA_COMPRA: TDateTimeField
      FieldName = 'ULTIMA_COMPRA'
    end
    object qrprodutoFARMACIA_DATAVIGENCIA: TDateTimeField
      FieldName = 'FARMACIA_DATAVIGENCIA'
    end
    object qrprodutoFARMACIA_TIPO: TWideStringField
      FieldName = 'FARMACIA_TIPO'
      Size = 1
    end
    object qrprodutoUSA_COMBUSTIVEL: TWideStringField
      FieldName = 'USA_COMBUSTIVEL'
      Size = 1
    end
    object qrprodutoREFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object qrprodutoPERDA: TFloatField
      FieldName = 'PERDA'
    end
    object qrprodutoCOMPOSICAO1: TWideStringField
      FieldName = 'COMPOSICAO1'
      Size = 30
    end
    object qrprodutoCOMPOSICAO2: TWideStringField
      FieldName = 'COMPOSICAO2'
      Size = 30
    end
    object qrprodutoIAT: TWideStringField
      FieldName = 'IAT'
      Size = 1
    end
    object qrprodutoIPPT: TWideStringField
      FieldName = 'IPPT'
      Size = 1
    end
    object qrprodutoSITUACAO_TRIBUTARIA: TWideStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Size = 1
    end
    object qrprodutoFLAG_SIS: TWideStringField
      FieldName = 'FLAG_SIS'
      Size = 1
    end
    object qrprodutoFLAG_ACEITO: TWideStringField
      FieldName = 'FLAG_ACEITO'
      Size = 3
    end
    object qrprodutoFLAG_EST: TWideStringField
      FieldName = 'FLAG_EST'
      Size = 1
    end
    object qrprodutoCSOSN: TWideStringField
      FieldName = 'CSOSN'
      Size = 60
    end
    object qrprodutoCODORIGINAL: TWideStringField
      FieldName = 'CODORIGINAL'
    end
    object qrprodutoCUSTO_ATACADO: TFloatField
      FieldName = 'CUSTO_ATACADO'
    end
    object qrprodutoUNIDADE_ATACADO: TWideStringField
      FieldName = 'UNIDADE_ATACADO'
      Size = 2
    end
    object qrprodutoQTDE_EMBALAGEMATACADO: TFloatField
      FieldName = 'QTDE_EMBALAGEMATACADO'
    end
    object qrprodutoPMARGEM1: TFloatField
      FieldName = 'PMARGEM1'
    end
    object qrprodutoPMARGEM2: TFloatField
      FieldName = 'PMARGEM2'
    end
    object qrprodutoPMARGEM3: TFloatField
      FieldName = 'PMARGEM3'
    end
    object qrprodutoPMARGEM4: TFloatField
      FieldName = 'PMARGEM4'
    end
    object qrprodutoPMARGEM5: TFloatField
      FieldName = 'PMARGEM5'
    end
    object qrprodutoPMARGEMATACADO1: TFloatField
      FieldName = 'PMARGEMATACADO1'
    end
    object qrprodutoPMARGEMATACADO2: TFloatField
      FieldName = 'PMARGEMATACADO2'
    end
    object qrprodutoPMARGEMATACADO3: TFloatField
      FieldName = 'PMARGEMATACADO3'
    end
    object qrprodutoPMARGEMATACADO4: TFloatField
      FieldName = 'PMARGEMATACADO4'
    end
    object qrprodutoPMARGEMATACADO5: TFloatField
      FieldName = 'PMARGEMATACADO5'
    end
    object qrprodutoPMARGEMATACADO6: TFloatField
      FieldName = 'PMARGEMATACADO6'
    end
    object qrprodutoPRECOATACADO1: TFloatField
      FieldName = 'PRECOATACADO1'
    end
    object qrprodutoPRECOATACADO2: TFloatField
      FieldName = 'PRECOATACADO2'
    end
    object qrprodutoPRECOATACADO3: TFloatField
      FieldName = 'PRECOATACADO3'
    end
    object qrprodutoPRECOATACADO4: TFloatField
      FieldName = 'PRECOATACADO4'
    end
    object qrprodutoPRECOATACADO5: TFloatField
      FieldName = 'PRECOATACADO5'
    end
    object qrprodutoIND_CFOP: TWideStringField
      FieldName = 'IND_CFOP'
      Size = 6
    end
    object qrprodutoCFOP_DESC: TWideStringField
      FieldName = 'CFOP_DESC'
      Size = 30
    end
    object qrprodutoUSA_LOTE: TIntegerField
      FieldName = 'USA_LOTE'
    end
    object qrprodutoIND_CFOP_VENDA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_VENDA_DENTRO'
      Size = 6
    end
    object qrprodutoCODCONTA: TWideStringField
      FieldName = 'CODCONTA'
      Size = 6
    end
    object qrprodutoIND_CFOP_VENDA_FORA: TWideStringField
      FieldName = 'IND_CFOP_VENDA_FORA'
      Size = 6
    end
    object qrprodutoIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_DENTRO'
      Size = 6
    end
    object qrprodutoIND_CFOP_DEVOLUCAO_FORA: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_FORA'
      Size = 6
    end
    object qrprodutoIND_CFOP_GARANTIA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_DENTRO'
      Size = 6
    end
    object qrprodutoIND_CFOP_GARANTIA_FORA: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_FORA'
      Size = 6
    end
    object qrprodutoUSA_TB_PC: TWideStringField
      FieldName = 'USA_TB_PC'
      Size = 4
    end
    object qrprodutoNOME: TWideStringField
      FieldName = 'NOME'
      Size = 80
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 418
    Top = 246
    object FinalizarEdio1: TMenuItem
      Caption = 'Finalizar Edi'#231#227'o'
      ShortCut = 113
      OnClick = bfinalizaClick
    end
    object ExcluirProduto1: TMenuItem
      Caption = 'Excluir Produto'
      ShortCut = 118
      OnClick = bexcluirClick
    end
    object CancelarVenda1: TMenuItem
      Caption = 'Cancelar Venda'
      ShortCut = 120
      OnClick = bcancelarClick
    end
    object Vidalink1: TMenuItem
      Caption = 'Vidalink'
      ShortCut = 114
      OnClick = Vidalink1Click
    end
    object Retorna1: TMenuItem
      Caption = 'Retorna'
      ShortCut = 27
      OnClick = Retorna1Click
    end
  end
  object query1: TZQuery
    Connection = frmmodulo.ConexaoLocal
    AfterInsert = qrvenda_produtoAfterInsert
    AfterEdit = qrvenda_produtoAfterEdit
    BeforePost = qrvenda_produtoBeforePost
    AfterPost = qrvenda_produtoAfterPost
    BeforeDelete = qrvenda_produtoBeforeDelete
    SQL.Strings = (
      'select * from CL00001')
    Params = <>
    Left = 280
    Top = 240
  end
  object MainMenu1: TMainMenu
    Left = 440
    Top = 384
    object menuoculto1: TMenuItem
      Caption = 'menu oculto'
      Visible = False
      object CancelarSaida1: TMenuItem
        Caption = 'Cancelar Saida'
        ShortCut = 32883
        OnClick = bcancelarClick
      end
    end
  end
  object QUERY: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select pro.*, lab.nome from c000025 pro, c000019 lab ')
    Params = <>
    Left = 240
    Top = 240
  end
  object qrestoque: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000100')
    Params = <>
    Left = 88
    Top = 176
  end
  object qrvendido: TZQuery
    Connection = frmmodulo.ConexaoLocal
    Params = <>
    Left = 128
    Top = 152
  end
  object qrvenda_produto: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'PRODUTO'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'CODBARRAS'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'NUMERACAO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'QTDE'
        DataType = ftFloat
      end
      item
        Name = 'UNITARIO'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'CST'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'ALIQUOTA'
        DataType = ftFloat
      end
      item
        Name = 'CODPRODUTO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'SERIAL'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ITEM'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CODGRADE'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'DESCONTO'
        DataType = ftFloat
      end
      item
        Name = 'ACRESCIMO'
        DataType = ftFloat
      end
      item
        Name = 'TIPO'
        DataType = ftInteger
      end
      item
        Name = 'TERMINAL'
        DataType = ftString
        Size = 4
      end>
    BeforeInsert = qrvenda_produtoBeforeInsert
    AfterInsert = qrvenda_produtoAfterInsert
    BeforeEdit = qrvenda_produtoBeforeEdit
    AfterEdit = qrvenda_produtoAfterEdit
    BeforePost = qrvenda_produtoBeforePost
    AfterPost = qrvenda_produtoAfterPost
    BeforeDelete = qrvenda_produtoBeforeDelete
    Left = 448
    Top = 240
    object qrvenda_produtoPRODUTO: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 55
      FieldName = 'PRODUTO'
      Size = 80
    end
    object qrvenda_produtoCODBARRAS: TStringField
      DisplayLabel = 'C'#243'd. Barras'
      DisplayWidth = 16
      FieldName = 'CODBARRAS'
      Size = 13
    end
    object qrvenda_produtoNUMERACAO: TStringField
      DisplayLabel = 'Un.'
      DisplayWidth = 4
      FieldName = 'NUMERACAO'
      Size = 10
    end
    object qrvenda_produtoQTDE: TFloatField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 11
      FieldName = 'QTDE'
      DisplayFormat = '########0.00'
    end
    object qrvenda_produtoUNITARIO: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      DisplayWidth = 13
      FieldName = 'UNITARIO'
      DisplayFormat = '########0.00'
    end
    object qrvenda_produtoTOTAL: TFloatField
      DisplayLabel = 'Total'
      DisplayWidth = 13
      FieldName = 'TOTAL'
      DisplayFormat = '########0.00'
    end
    object qrvenda_produtoCST: TStringField
      DisplayWidth = 3
      FieldName = 'CST'
      Size = 3
    end
    object qrvenda_produtoALIQUOTA: TFloatField
      DisplayLabel = 'ICMS'
      DisplayWidth = 6
      FieldName = 'ALIQUOTA'
    end
    object qrvenda_produtoCODPRODUTO: TStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 15
      FieldName = 'CODPRODUTO'
      Visible = False
      Size = 6
    end
    object qrvenda_produtoSERIAL: TStringField
      DisplayLabel = ' '
      DisplayWidth = 1
      FieldName = 'SERIAL'
      Visible = False
      Size = 30
    end
    object qrvenda_produtoITEM: TStringField
      DisplayWidth = 3
      FieldName = 'ITEM'
      Visible = False
      Size = 3
    end
    object qrvenda_produtoMIX: TFloatField
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'MIX'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qrvenda_produtoCODGRADE: TStringField
      DisplayWidth = 6
      FieldName = 'CODGRADE'
      Visible = False
      Size = 6
    end
    object qrvenda_produtoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_produtoACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_produtoTIPO: TIntegerField
      DisplayWidth = 10
      FieldName = 'TIPO'
      Visible = False
    end
    object qrvenda_produtoTERMINAL: TStringField
      FieldName = 'TERMINAL'
      Visible = False
      Size = 4
    end
  end
end
