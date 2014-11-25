inherited framebasenutzer1: Tframebasenutzer1
  Width = 1021
  Height = 706
  inherited gridpanel: TGridPanel
    Width = 1021
    Height = 706
    inherited Panel5: TPanel
      Width = 504
      Height = 698
      ExplicitWidth = 219
      ExplicitHeight = 296
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
        TabOrder = 10
        ExplicitTop = 255
      end
      inherited dtposteingang: tfmaskedit
        TabOrder = 8
      end
      inherited eid: TfEdit
        TabOrder = 1
      end
      inherited eliegenschaft: TfEdit
        TabOrder = 2
      end
      inherited menotizen: TfMemo
        Top = 301
        TabOrder = 6
        ExplicitTop = 301
      end
      inherited bsave: TNxButton
        Top = 474
        TabOrder = 7
        ExplicitTop = 474
      end
      inherited enutzernummer: TfEdit
        TabOrder = 3
      end
      inherited eposteingang: TfEdit
        TabOrder = 0
      end
      inherited eabrechnungsende: TfEdit
        Top = 255
        TabOrder = 4
        ExplicitTop = 255
      end
      inherited pinfo: TPanel
        TabOrder = 9
      end
      object cbvertrag: TfComboBox [18]
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
        TabOrder = 5
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
      inherited UpDown1: TUpDown
        Top = 278
        TabOrder = 11
        ExplicitTop = 278
      end
    end
    inherited rightparent: TPanel
      Left = 514
      Width = 505
      Height = 698
    end
  end
end
