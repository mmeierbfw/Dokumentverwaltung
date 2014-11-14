inherited framezwischen: Tframezwischen
  Width = 1244
  Height = 715
  ExplicitWidth = 451
  ExplicitHeight = 304
  inherited gridpanel: TGridPanel
    Width = 1244
    Height = 715
    ExplicitWidth = 451
    ExplicitHeight = 304
    inherited Panel5: TPanel
      ExplicitWidth = 616
      ExplicitHeight = 707
      inherited lfiletype: TLabel
        Height = 609
      end
      inherited Label45: TLabel
        Top = 301
        ExplicitTop = 301
      end
      inherited Label47: TLabel
        Left = 13
        ExplicitLeft = 13
      end
      inherited Label29: TLabel
        Top = 347
        ExplicitTop = 347
      end
      object Label2: TLabel [6]
        Left = 13
        Top = 209
        Width = 57
        Height = 13
        Margins.Left = 14
        Caption = 'Auszug zum'
      end
      object Label3: TLabel [7]
        Left = 13
        Top = 232
        Width = 62
        Height = 13
        Margins.Left = 14
        Caption = 'Ablesedatum'
      end
      object Label4: TLabel [8]
        Left = 13
        Top = 255
        Width = 61
        Height = 13
        Margins.Left = 14
        Caption = 'neuer Mieter'
      end
      inherited Label5: TLabel
        Left = 13
        ExplicitLeft = 13
      end
      inherited dtabrechnungsende: tfmaskedit
        Top = 301
        TabOrder = 13
        ExplicitTop = 301
      end
      inherited dtposteingang: tfmaskedit
        TabOrder = 12
      end
      inherited eliegenschaft: TfEdit
        TabOrder = 2
      end
      inherited menotizen: TfMemo
        Left = 121
        Top = 347
        TabOrder = 14
        ExplicitLeft = 121
        ExplicitTop = 347
      end
      inherited bsave: TNxButton
        Left = 12
        Top = 520
        TabOrder = 9
        ExplicitLeft = 12
        ExplicitTop = 520
      end
      inherited enutzernummer: TfEdit
        TabOrder = 3
      end
      object dtauszug: tfmaskedit [17]
        Left = 321
        Top = 209
        Width = 64
        Height = 25
        AutoSelect = False
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkTile
        EditMask = '!99/99/00;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6908265
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        TabOrder = 10
        Text = '  .  .  '
        TabOnEnter = True
        FontColorOnEnter = 10252872
        ColorFocused = 10252872
        ColorNotFocused = 6908265
      end
      object dtablesedatum: tfmaskedit [18]
        Left = 321
        Top = 232
        Width = 64
        Height = 25
        AutoSelect = False
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkTile
        EditMask = '!99/99/00;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6908265
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        TabOrder = 11
        Text = '  .  .  '
        TabOnEnter = True
        FontColorOnEnter = 10252872
        ColorFocused = 10252872
        ColorNotFocused = 6908265
      end
      object enutzername: TfEdit [19]
        Tag = 1
        Left = 122
        Top = 255
        Width = 263
        Height = 25
        AutoSelect = False
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkTile
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6908265
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnKeyPress = enutzernameKeyPress
        TabOnEnter = True
        FontColorOnEnter = 10252872
        ColorFocused = 10252872
        ColorNotFocused = 6908265
      end
      inherited eposteingang: TfEdit
        TabOrder = 1
      end
      inherited eabrechnungsende: TfEdit
        Top = 301
        TabOrder = 7
        ExplicitTop = 301
      end
      object eauszug: TfEdit
        Tag = 1
        Left = 321
        Top = 207
        Width = 64
        Height = 25
        Hint = 'ttmmjj'
        AutoSelect = False
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkTile
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6908265
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnExit = dateexit
        OnKeyPress = DATEPRESS
        TabOnEnter = True
        FontColorOnEnter = 10252872
        ColorFocused = 10252872
        ColorNotFocused = 6908265
      end
      object eablesedatum: TfEdit
        Tag = 1
        Left = 321
        Top = 231
        Width = 64
        Height = 25
        Hint = 'ttmmjj'
        AutoSelect = False
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkTile
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6908265
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnExit = dateexit
        OnKeyPress = DATEPRESS
        TabOnEnter = True
        FontColorOnEnter = 10252872
        ColorFocused = 10252872
        ColorNotFocused = 6908265
      end
    end
    inherited rightparent: TPanel
      ExplicitLeft = 229
      ExplicitWidth = 220
      ExplicitHeight = 296
    end
  end
end
