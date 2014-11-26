inherited framebasenutzer: Tframebasenutzer
  Width = 1117
  Height = 490
  inherited gridpanel: TGridPanel
    Width = 1117
    Height = 490
    inherited Panel5: TPanel
      Width = 552
      Height = 482
      inherited Label45: TLabel
        Top = 205
        ExplicitTop = 205
      end
      inherited Label29: TLabel
        Top = 251
        ExplicitTop = 251
      end
      object Label5: TLabel [6]
        Left = 14
        Top = 159
        Width = 70
        Height = 13
        Margins.Left = 14
        Caption = 'Nutzernummer'
      end
      inherited dtabrechnungsende: tfmaskedit
        Top = 205
        TabOrder = 9
        ExplicitTop = 205
      end
      inherited dtposteingang: tfmaskedit
        TabOrder = 7
      end
      inherited eliegenschaft: TfEdit
        TabOrder = 1
      end
      inherited menotizen: TfMemo
        Top = 251
        ExplicitTop = 251
      end
      inherited bsave: TNxButton
        Top = 424
        ExplicitTop = 424
      end
      object enutzernummer: TfEdit [13]
        Tag = 1
        Left = 321
        Top = 159
        Width = 64
        Height = 25
        AutoSelect = False
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkTile
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6908265
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 3
        NumbersOnly = True
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnExit = enutzerexit
        TabOnEnter = True
        FontColorOnEnter = 10252872
        ColorFocused = 10252872
        ColorNotFocused = 6908265
      end
      inherited eposteingang: TfEdit
        TabOrder = 6
      end
      inherited eabrechnungsende: TfEdit
        Top = 205
        ExplicitTop = 205
      end
      inherited UpDown1: TUpDown
        Top = 228
        TabOrder = 11
        ExplicitTop = 228
      end
      object upd: TUpDown
        Left = 391
        Top = 159
        Width = 58
        Height = 25
        Orientation = udHorizontal
        TabOrder = 12
        Visible = False
        OnClick = updClick
      end
    end
    inherited rightparent: TPanel
      Left = 562
      Width = 553
      Height = 482
    end
  end
end
