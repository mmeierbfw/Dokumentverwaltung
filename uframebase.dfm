object framebase: Tframebase
  Left = 0
  Top = 0
  Width = 1111
  Height = 709
  Align = alClient
  TabOrder = 0
  ExplicitWidth = 451
  ExplicitHeight = 304
  object gridpanel: TGridPanel
    Left = 0
    Top = 0
    Width = 1111
    Height = 709
    HelpType = htKeyword
    Align = alClient
    BevelOuter = bvNone
    Color = 15856113
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = Panel5
        Row = 0
      end
      item
        Column = 1
        Control = rightparent
        Row = 0
      end>
    ParentBackground = False
    RowCollection = <
      item
        Value = 100.000000000000000000
      end>
    TabOrder = 0
    ExplicitWidth = 451
    ExplicitHeight = 304
    object Panel5: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 549
      Height = 701
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 2
      Margins.Bottom = 4
      Align = alClient
      Alignment = taLeftJustify
      BevelEdges = [beBottom]
      BevelOuter = bvNone
      Color = clWhite
      Padding.Bottom = 25
      ParentBackground = False
      TabOrder = 0
      object lfiletype: TLabel
        AlignWithMargins = True
        Left = 13
        Top = 13
        Width = 5
        Height = 618
        Margins.Left = 13
        Margins.Top = 13
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6908265
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitHeight = 19
      end
      object Label45: TLabel
        Left = 13
        Top = 187
        Width = 87
        Height = 13
        Margins.Left = 14
        Caption = 'Abrechnungsende'
      end
      object Label46: TLabel
        Left = 13
        Top = 88
        Width = 59
        Height = 13
        Margins.Left = 14
        Caption = 'Posteingang'
      end
      object Label47: TLabel
        Left = 14
        Top = 135
        Width = 61
        Height = 13
        Margins.Left = 14
        Caption = 'Liegenschaft'
      end
      object Label48: TLabel
        Left = 13
        Top = 64
        Width = 71
        Height = 13
        Margins.Left = 14
        Caption = 'Ablagenummer'
      end
      object Label29: TLabel
        Left = 13
        Top = 237
        Width = 36
        Height = 13
        Margins.Left = 14
        Caption = 'Notizen'
      end
      object dtabrechnungsende: tfmaskedit
        Left = 321
        Top = 187
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
        TabOrder = 7
        Text = '  .  .  '
        TabOnEnter = True
        FontColorOnEnter = 10252872
        ColorFocused = 10252872
        ColorNotFocused = 6908265
      end
      object dtposteingang: tfmaskedit
        Left = 321
        Top = 88
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
        TabOrder = 6
        Text = '  .  .  '
        Visible = False
        OnExit = dtposteingangExit
        TabOnEnter = True
        FontColorOnEnter = 10252872
        ColorFocused = 10252872
        ColorNotFocused = 6908265
      end
      object eid: TfEdit
        Left = 321
        Top = 64
        Width = 64
        Height = 25
        Alignment = taCenter
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
        TabOrder = 0
        TabOnEnter = True
        FontColorOnEnter = 10252872
        ColorFocused = 10252872
        ColorNotFocused = 6908265
      end
      object eliegenschaft: TfEdit
        Tag = 1
        Left = 321
        Top = 135
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
        MaxLength = 7
        NumbersOnly = True
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnExit = eliegenschaftExit
        TabOnEnter = True
        FontColorOnEnter = 10252872
        ColorFocused = 10252872
        ColorNotFocused = 6908265
      end
      object menotizen: TfMemo
        Left = 123
        Top = 237
        Width = 262
        Height = 150
        BevelInner = bvLowered
        BevelKind = bkTile
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6908265
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        FontColorOnEnter = 10252872
        ColorFocused = 10252872
        ColorNotFocused = 6908265
      end
      object bsave: TNxButton
        AlignWithMargins = True
        Left = 13
        Top = 412
        Width = 372
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 2
        Caption = 'speichern'
        Color = 6118749
        ParentColor = False
        TabOrder = 5
      end
      object eposteingang: TfEdit
        Tag = 1
        Left = 321
        Top = 88
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
        TabOrder = 1
        OnExit = dateexit
        OnKeyPress = DATEPRESS
        TabOnEnter = True
        FontColorOnEnter = 10252872
        ColorFocused = 10252872
        ColorNotFocused = 6908265
      end
      object eabrechnungsende: TfEdit
        Tag = 1
        Left = 321
        Top = 187
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
        TabOrder = 3
        OnExit = dateexit
        OnKeyPress = DATEPRESS
        TabOnEnter = True
        FontColorOnEnter = 10252872
        ColorFocused = 10252872
        ColorNotFocused = 6908265
      end
      object pinfo: TPanel
        Left = 400
        Top = 202
        Width = 125
        Height = 26
        Color = 16711384
        Padding.Left = 10
        Padding.Top = 10
        Padding.Right = 10
        Padding.Bottom = 10
        ParentBackground = False
        TabOrder = 8
        Visible = False
        object labelinfo: TLabel
          Left = 19
          Top = 6
          Width = 80
          Height = 13
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Caption = 'Datum als ttmmjj'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6908265
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
      object UpDown1: TUpDown
        Left = 321
        Top = 211
        Width = 64
        Height = 17
        Orientation = udHorizontal
        TabOrder = 9
        OnClick = abrupdown
      end
      object UpDown2: TUpDown
        Left = 391
        Top = 135
        Width = 58
        Height = 25
        Orientation = udHorizontal
        TabOrder = 10
        OnClick = liegenschaftupdown
      end
      object bbearbeiten: TButton
        Left = 14
        Top = 13
        Width = 139
        Height = 25
        Caption = 'bearbeiten aktivieren'
        TabOrder = 11
      end
      object bbaendspeichern: TButton
        Left = 198
        Top = 13
        Width = 139
        Height = 25
        Caption = #196'nderungen speichern'
        TabOrder = 12
      end
    end
    object rightparent: TPanel
      AlignWithMargins = True
      Left = 559
      Top = 4
      Width = 550
      Height = 701
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 2
      Margins.Bottom = 4
      Align = alClient
      Alignment = taLeftJustify
      BevelEdges = [beBottom]
      BevelOuter = bvNone
      Color = clWhite
      Padding.Bottom = 25
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = 229
      ExplicitWidth = 220
      ExplicitHeight = 296
    end
  end
  object NxButton2: TNxButton
    Left = 395
    Top = 92
    Width = 46
    Height = 25
    Caption = 'heute'
    TabOrder = 1
    OnClick = NxButton2Click
  end
end
