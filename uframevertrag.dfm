inherited framebasenutzer1: Tframebasenutzer1
  Width = 1079
  Height = 648
  ExplicitWidth = 451
  ExplicitHeight = 304
  inherited gridpanel: TGridPanel
    Width = 1079
    Height = 648
    ExplicitWidth = 451
    ExplicitHeight = 304
    inherited Panel5: TPanel
      ExplicitWidth = 219
      ExplicitHeight = 296
      inherited lfiletype: TLabel
        Height = 599
      end
      inherited Label45: TLabel
        Top = 255
        ExplicitTop = 255
      end
      inherited Label29: TLabel
        Top = 301
        ExplicitTop = 301
      end
      object Label1: TLabel [7]
        Left = 14
        Top = 209
        Width = 57
        Height = 13
        Margins.Left = 14
        Caption = 'Vertragstyp'
      end
      inherited dtabrechnungsende: tfmaskedit
        Top = 255
        ExplicitTop = 255
      end
      inherited menotizen: TfMemo
        Top = 301
        ExplicitTop = 301
      end
      inherited bsave: TNxButton
        Top = 474
        ExplicitTop = 474
      end
      inherited eabrechnungsende: TfEdit
        Top = 255
        ExplicitTop = 255
      end
      object cbvertrag: TfComboBox
        Left = 240
        Top = 209
        Width = 145
        Height = 24
        BevelInner = bvLowered
        BevelKind = bkTile
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6908265
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        Text = 'Vertragstyp'
        Items.Strings = (
          'Mietservice'
          'Wartungsservice'
          'Dienstleistungsvertrag')
        TabOnEnter = False
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
