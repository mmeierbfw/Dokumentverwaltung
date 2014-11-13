inherited framereklmont: Tframereklmont
  Width = 1089
  Height = 681
  inherited gridpanel: TGridPanel
    Width = 1089
    Height = 681
    ExplicitWidth = 451
    ExplicitHeight = 304
    inherited Panel5: TPanel
      ExplicitWidth = 538
      ExplicitHeight = 673
      inherited lfiletype: TLabel
        Height = 609
      end
      inherited Label45: TLabel
        Left = 14
        Top = 280
        ExplicitLeft = 14
        ExplicitTop = 280
      end
      inherited Label29: TLabel
        Left = 19
        Top = 399
        ExplicitLeft = 19
        ExplicitTop = 399
      end
      object Label7: TLabel [6]
        Left = 13
        Top = 215
        Width = 80
        Height = 13
        Margins.Left = 14
        Caption = 'Auftragsnummer'
      end
      object Label34: TLabel [7]
        Left = 14
        Top = 239
        Width = 72
        Height = 13
        Margins.Left = 14
        Caption = 'Montagedatum'
      end
      object Label26: TLabel [8]
        Left = 13
        Top = 326
        Width = 31
        Height = 13
        Margins.Left = 14
        Caption = 'Status'
      end
      inherited dtabrechnungsende: tfmaskedit
        Top = 280
        TabOrder = 12
        Visible = False
        ExplicitTop = 280
      end
      inherited dtposteingang: tfmaskedit
        TabOrder = 10
      end
      inherited eliegenschaft: TfEdit
        TabOrder = 2
      end
      inherited menotizen: TfMemo
        Top = 399
        TabOrder = 8
        ExplicitTop = 399
      end
      inherited bsave: TNxButton
        Left = 12
        Top = 572
        TabOrder = 9
        ExplicitLeft = 12
        ExplicitTop = 572
      end
      inherited enutzernummer: TfEdit
        TabOrder = 3
      end
      object eauftragsnummer: TfEdit [17]
        Left = 321
        Top = 210
        Width = 64
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
        TabOrder = 4
        TabOnEnter = True
        FontColorOnEnter = 10252872
        ColorFocused = 10252872
        ColorNotFocused = 6908265
      end
      object dtmontage: tfmaskedit [18]
        Left = 321
        Top = 234
        Width = 63
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
        Visible = False
        TabOnEnter = True
        FontColorOnEnter = 10252872
        ColorFocused = 10252872
        ColorNotFocused = 6908265
      end
      object rgerledigt: TRadioGroup [19]
        Left = 244
        Top = 326
        Width = 141
        Height = 50
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        ItemIndex = 0
        Items.Strings = (
          'nicht erledigt'
          'erledigt')
        TabOrder = 7
      end
      inherited eposteingang: TfEdit
        TabOrder = 1
      end
      inherited eabrechnungsende: TfEdit
        Top = 280
        TabOrder = 6
        ExplicitTop = 280
      end
      object emontage: TfEdit [22]
        Tag = 1
        Left = 321
        Top = 234
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
      inherited pinfo: TPanel
        TabOrder = 13
      end
    end
    inherited rightparent: TPanel
      ExplicitLeft = 229
      ExplicitWidth = 220
      ExplicitHeight = 296
    end
  end
end
