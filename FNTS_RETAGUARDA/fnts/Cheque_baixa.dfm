object frmcheque_baixa: Tfrmcheque_baixa
  Left = 333
  Top = 448
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'CHEQUE | Baixa'
  ClientHeight = 250
  ClientWidth = 591
  Color = 15574106
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop2
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel10: TBevel
    Left = 0
    Top = 201
    Width = 591
    Height = 3
    Align = alBottom
    ExplicitTop = 195
  end
  object GroupBox1: TGroupBox
    Left = 7
    Top = 4
    Width = 145
    Height = 188
    Caption = 'Motivo da Baixa'
    Color = 15574106
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object rdesfazer: TRadioButton
      Left = 12
      Top = 15
      Width = 130
      Height = 17
      Caption = '&0 - DESFAZER - Baixa'
      TabOrder = 0
      OnClick = rdesfazerClick
    end
    object r1dev: TRadioButton
      Left = 12
      Top = 91
      Width = 130
      Height = 17
      Caption = '&4 - 1'#170' Devolu'#231#227'o'
      TabOrder = 4
      OnClick = r1devClick
    end
    object r2dev: TRadioButton
      Left = 12
      Top = 109
      Width = 130
      Height = 17
      Caption = '&5 - 2'#170' Devolu'#231#227'o'
      TabOrder = 5
      OnClick = r2devClick
    end
    object r1dep: TRadioButton
      Left = 12
      Top = 33
      Width = 130
      Height = 17
      Caption = '&1 - 1'#186' Deposito'
      TabOrder = 1
      OnClick = r1depClick
    end
    object r2dep: TRadioButton
      Left = 12
      Top = 52
      Width = 130
      Height = 17
      Caption = '&2 - 2'#186' Dep'#243'sito'
      TabOrder = 2
      OnClick = r2depClick
    end
    object rrep: TRadioButton
      Left = 12
      Top = 127
      Width = 130
      Height = 17
      Caption = '&6 - Repassado'
      TabOrder = 6
      OnClick = rrepClick
    end
    object rdesc: TRadioButton
      Left = 12
      Top = 71
      Width = 130
      Height = 17
      Caption = '&3 - Descontado'
      TabOrder = 3
      OnClick = rdescClick
    end
    object rsust: TRadioButton
      Left = 12
      Top = 146
      Width = 130
      Height = 17
      Caption = '&7 - Sustado'
      TabOrder = 7
      OnClick = rsustClick
    end
    object rout: TRadioButton
      Left = 12
      Top = 165
      Width = 130
      Height = 17
      Caption = '&8 - Outros'
      TabOrder = 8
      OnClick = routClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 155
    Top = 4
    Width = 429
    Height = 188
    Color = clWhite
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    Visible = False
    object Label1: TLabel
      Left = 61
      Top = 16
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data:'
    end
    object Label2: TLabel
      Left = 48
      Top = 48
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = 'Destino:'
    end
    object Label3: TLabel
      Left = 45
      Top = 87
      Width = 43
      Height = 13
      Alignment = taRightJustify
      Caption = 'Observ.:'
    end
    object Label7: TLabel
      Left = 48
      Top = 127
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = 'Destino:'
    end
    object DBDateEdit3: TDBDateEdit
      Left = 94
      Top = 12
      Width = 106
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'DATA_BAIXA'
      DataSource = dscheque2
      GlyphKind = gkCustom
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
        8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
        F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
        D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
        BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
        F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
        8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
        CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
        F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
        95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
        E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
        F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
        A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
        FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
        FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
        B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
        FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
        FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
        F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
        F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
        7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ButtonWidth = 18
      NumGlyphs = 1
      TabOrder = 0
      OnEnter = DBDateEdit3Enter
      OnExit = DBDateEdit3Exit
      OnKeyPress = DBDateEdit3KeyPress
    end
    object DBEdit1: TDBEdit
      Left = 95
      Top = 44
      Width = 325
      Height = 21
      DataField = 'DESTINO'
      DataSource = dscheque2
      TabOrder = 2
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBDateEdit3KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 95
      Top = 76
      Width = 322
      Height = 21
      DataField = 'OBS1'
      DataSource = dscheque2
      TabOrder = 3
      OnEnter = DBEdit2Enter
      OnExit = DBEdit2Exit
      OnKeyPress = DBDateEdit3KeyPress
    end
    object DBEdit3: TDBEdit
      Left = 95
      Top = 100
      Width = 322
      Height = 21
      DataField = 'OBS2'
      DataSource = dscheque2
      TabOrder = 4
      OnEnter = DBEdit3Enter
      OnExit = DBEdit3Exit
      OnKeyPress = DBEdit3KeyPress
    end
    object PCONTA: TFlatPanel
      Left = 5
      Top = 40
      Width = 416
      Height = 34
      ParentColor = True
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      TabOrder = 1
      object Label4: TLabel
        Left = 4
        Top = 8
        Width = 79
        Height = 13
        Caption = 'Conta Corrente:'
      end
      object econta: TDBEdit
        Left = 88
        Top = 4
        Width = 95
        Height = 21
        DataField = 'CODCONTA'
        DataSource = dscheque2
        TabOrder = 0
        OnEnter = econtaEnter
        OnExit = econtaExit
        OnKeyPress = econtaKeyPress
      end
      object blocconta: TBitBtn
        Left = 184
        Top = 4
        Width = 25
        Height = 21
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
          9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
          C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
          A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
          E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
          F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
          DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
          F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
          D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
          F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
          DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
          F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
          E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        TabOrder = 1
        OnClick = bloccontaClick
      end
      object Edit1: TEdit
        Left = 208
        Top = 4
        Width = 204
        Height = 21
        TabOrder = 2
      end
    end
    object pdesconto: TFlatPanel
      Left = 2
      Top = 152
      Width = 425
      Height = 34
      ParentColor = True
      Visible = False
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      Align = alBottom
      TabOrder = 6
      object Label5: TLabel
        Left = 39
        Top = 12
        Width = 49
        Height = 13
        Alignment = taRightJustify
        Caption = 'Desconto:'
      end
      object Label6: TLabel
        Left = 205
        Top = 12
        Width = 37
        Height = 13
        Caption = 'L'#237'quido:'
      end
      object DBEdit4: TDBEdit
        Left = 92
        Top = 6
        Width = 106
        Height = 21
        DataField = 'DESCONTO'
        DataSource = dscheque2
        TabOrder = 0
        OnEnter = DBEdit2Enter
        OnExit = DBEdit4Exit
        OnKeyPress = DBEdit4KeyPress
      end
      object DBEdit5: TDBEdit
        Left = 252
        Top = 6
        Width = 106
        Height = 21
        DataField = 'LIQUIDO'
        DataSource = dscheque2
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnEnter = DBEdit2Enter
        OnExit = DBEdit2Exit
        OnKeyPress = DBEdit5KeyPress
      end
    end
    object DBEdit6: TDBEdit
      Left = 95
      Top = 124
      Width = 322
      Height = 21
      DataField = 'DESTINO'
      DataSource = dscheque2
      TabOrder = 5
      OnEnter = DBEdit3Enter
      OnExit = DBEdit3Exit
      OnKeyPress = DBEdit6KeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 204
    Width = 591
    Height = 46
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 205
    object bgravar: TAdvGlowButton
      Left = 175
      Top = 6
      Width = 122
      Height = 32
      Caption = 'F2 | Gravar'
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
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B0000026B494441544889
        D594CF6B134114C7BFCF2C4DCCC1928290F41445055BC8612FC206B684F80321
        1ECCC19B1515B511E2C585A4FF80510C28566284B6C2DC5231979478F112A98B
        A8E4A6112935B74482A6B19844DA663C24BBD9C4D6B62E157CA7613EF3BEDF99
        F786477234F303801D1B442E16A0B1C979535C0060E79C7300202232AE3BE74C
        7101000E0F0F62E686AC25D0E5072FB158FAAEDFC40C1700401E75120C218F3A
        7B04CC70A1B3C739E7C627F62498E1027639DA06D4ED1911D16FF733C1DB06BC
        EF89BC4FC204FF4725DA7583FFAC072D70BC057054375869ACEA0944442B8DD5
        9EFC1DF07522BA74C17F84CDBEF8745037985B58E2730B4B9BCD9AEDF216115D
        C9C5024C640AC7081D02027A93C9E5B023281D405AFD4CA56ABDAFC85B72B81C
        F66BA988FF89C894F576D9F8A2C89411A103313521A1526BC2E771219C54515E
        6E1893313521BDABD49A577D1E97379C54EF97971B16AD032E873D948AF86744
        A63400ECD1F2F2E3F182000041C98D4AAD89EB8F5E2111F22228B991C8167483
        A0E4CE576ACD53175FDF3DFBE6DCAD8741C9BD92C816663BF8662AE27F2C32A5
        06C06610EF8EEBB45A84CF338C44C88BFD8336A4D5A2F1F5E5B45A3C71A7983C
        0ECEA745A64CE7C7E394C8162C00908B05EE894CF90A609F517C6C72FE4C2E16
        C8080050AAD6114EAA5A8D51AAD661E8E1FB54C4FF4D64CF53DA86C8949FF958
        DCDA5997000C19C5E568E634113D05601300D401EC2D55EB48643FE8BF04DD91
        7B4C8E66CEE76FC749648AC60644A67C04F00580B34FFC24806700AC00405DBD
        ED85C1A427B49AF7C78E0D3632D94CFCAF0D8C267F12074C4C538B75C0DA5A5B
        1BDAEADC2FEC698185CDD5A5E80000000049454E44AE426082}
      Transparent = True
      TabOrder = 0
      OnClick = bgravarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
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
    end
    object bcancelar: TAdvGlowButton
      Left = 300
      Top = 6
      Width = 123
      Height = 32
      Caption = 'ESC | Cancelar'
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
        89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
        F8000000097048597300000EC400000EC401952B0E1B00000271494441544889
        B595CF4B545118869FD7B92B2504A145FE03D524D44C08416D74220C6A716F3F
        74D92A5C39D3A6949432312910E6EEDA15B472D10C41A510D63FA0F79242919B
        76B92842B268A3F3B5F028379D9944C7B339DC7BBEFBBCE73BF73BEF2733A3D6
        C816CA69A017C801278056B7B4022C02B3C05454F43FD762A89A40265F4A4B7A
        6466178126493233934432DEBD5F035E49BA1315FDA5FF0A64F2A57E605252B3
        FBF88DA49299CD4B5A76F1ED40A7A4C0CC7ADC267E9BD9401C064F6B0A640BE5
        5160C43DCE00856ABB4A0E778C21701EA800C351D19FD82190C9976E4A7A6266
        156054D27854F42BF5E089AC53921E98D92080A41B51D17FBE2590C9978E02F3
        EE58EEC56130B61B7015A187C0A0A455333B1587C117CF293E065A806949E37B
        813BCE087006E8923401F429932FA5CD6C0130491DF54A6E97599C941499D93A
        70CC03AE034DC0EBFDC201E230F8902D94DF03DDC0350FC8491250DE2F3C31CA
        927240B7071CB78D529A6BA0C09C63A63DA0CD65F0B58102CB8E79D803B07A86
        B4C7B1C9F4801F401B1BD7FF7B83F847DCFCCD033E0167812CB0D02081D36EFE
        E801B392CE015780670D1208DC3F7877E0176DD38B5E029725CD98D9A5380C2A
        890F0EC561B05A0D962D945351D15F4FC4A680B792BACC6C2A0E83BE4D2FBACD
        46D7EA917417D832BB5A708024DC71C6802EE0A7A421A86DD7F79D5DEFAA7C33
        F95293B3EB2127F4AF5D27521E35B31117346D66B7E230584AACB798D99F6D47
        980642493957FBC37118EC6C3809483F300934036BC034F0029807965D583BD0
        095C052E0029E017301015FDDA2D33B9AB036BFADB85805E49DD66D621A9D5C5
        AF008B92665DB5D42CEDBFC465552860CF4DD40000000049454E44AE426082}
      Transparent = True
      TabOrder = 1
      OnClick = bcancelarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
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
    end
  end
  object dscheque2: TDataSource
    DataSet = frmcheque_menu.qrcheque
    Left = 536
    Top = 16
  end
  object Pop2: TPopupMenu
    Left = 12
    Top = 213
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 113
      OnClick = bgravarClick
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
  end
end
