object framebasefilter: Tframebasefilter
  Left = 0
  Top = 0
  Width = 986
  Height = 90
  AutoSize = True
  TabOrder = 0
  object flipwerte: TNxFlipPanel
    Left = 0
    Top = 0
    Width = 986
    Height = 90
    Caption = 'Filter'
    CaptionCollapsed = 'Filter'
    CollapseGlyph.Data = {
      7A010000424D7A01000000000000360000002800000009000000090000000100
      2000000000004401000000000000000000000000000000000000604830406048
      30FF604830FF604830FF604830FF604830FF604830FF604830FF60483040C0A8
      90FFFFF0E0FFE0D0C0FFE0C8B0FFE0C0B0FFD0B8A0FFD0B8A0FFD0B8A0FF6048
      30FFC0A890FFFFF8F0FFFFF0E0FFF0E0E0FFF0D8D0FFF0D8C0FFF0D0C0FFD0B8
      A0FF604830FFC0A890FFFFF8FFFFFFF8F0FFFFF0E0FFF0E0E0FFF0D8D0FFF0D0
      C0FFD0B8A0FF604830FFC0A8A0FFFFFFFFFF604830FF604830FF604830FF6048
      30FF604830FFE0C0B0FF604830FFC0A8A0FFFFFFFFFFFFFFFFFFFFF8FFFFFFF0
      F0FFFFF0E0FFF0E8E0FFE0C0B0FF604830FFC0B0A0FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFF8FFFFFFF0F0FFFFF0E0FFE0D0C0FF604830FFC0B0A0FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFF8FFFFFFF0F0FFF0F0E0FF604830FFC0B0A040C0B0
      A0FFC0B0A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A890FFC0A090FF60483040}
    ExpandGlyph.Data = {
      7A010000424D7A01000000000000360000002800000009000000090000000100
      2000000000004401000000000000000000000000000000000000604830406048
      30FF604830FF604830FF604830FF604830FF604830FF604830FF60483040C0A8
      90FFFFF0E0FFE0D0C0FFE0C8B0FFE0C0B0FFD0B8A0FFD0B8A0FFD0B8A0FF6048
      30FFC0A890FFFFF8F0FFFFF0E0FFF0E0E0FF604830FFF0D8C0FFF0D0C0FFD0B8
      A0FF604830FFC0A890FFFFF8FFFFFFF8F0FFFFF0E0FF604830FFF0D8D0FFF0D0
      C0FFD0B8A0FF604830FFC0A8A0FFFFFFFFFF604830FF604830FF604830FF6048
      30FF604830FFE0C0B0FF604830FFC0A8A0FFFFFFFFFFFFFFFFFFFFF8FFFF6048
      30FFFFF0E0FFF0E8E0FFE0C0B0FF604830FFC0B0A0FFFFFFFFFFFFFFFFFFFFFF
      FFFF604830FFFFF0F0FFFFF0E0FFE0D0C0FF604830FFC0B0A0FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFF8FFFFFFF0F0FFF0F0E0FF604830FFC0B0A040C0B0
      A0FFC0B0A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A890FFC0A090FF60483040}
    HeaderColor = 16711384
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = 6908265
    HeaderFont.Height = -13
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    HeaderStyle = hsTransparent
    ParentHeaderFont = False
    FullHeight = 90
    object lliegenschaft: TLabel
      AlignWithMargins = True
      Left = 14
      Top = 31
      Width = 71
      Height = 16
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Caption = 'Liegenschaft'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object labrechnungsende: TLabel
      AlignWithMargins = True
      Left = 526
      Top = 31
      Width = 102
      Height = 16
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Caption = 'Abrechnungsende'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      AlignWithMargins = True
      Left = 262
      Top = 31
      Width = 87
      Height = 16
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Caption = 'Sachbearbeiter'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 273
      Top = 60
      Width = 69
      Height = 16
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Caption = 'Posteingang'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 557
      Top = 60
      Width = 67
      Height = 16
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Caption = 'Dokumentid'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object esellg: TfEdit
      Left = 143
      Top = 26
      Width = 106
      Height = 23
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkTile
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = esellgExit
      TabOnEnter = False
      FontColorOnEnter = 10252872
      ColorFocused = 10252872
      ColorNotFocused = 6908265
    end
    object eselsb: TfEdit
      Left = 398
      Top = 26
      Width = 121
      Height = 23
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkTile
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnExit = eselsbExit
      TabOnEnter = False
      FontColorOnEnter = 10252872
      ColorFocused = 10252872
      ColorNotFocused = 6908265
    end
    object eselae: TfEdit
      Left = 677
      Top = 26
      Width = 121
      Height = 23
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkTile
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnExit = eselaeExit
      TabOnEnter = False
      FontColorOnEnter = 10252872
      ColorFocused = 10252872
      ColorNotFocused = 6908265
    end
    object csellg: TfComboBox
      Left = 98
      Top = 26
      Width = 39
      Height = 24
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Text = '='
      Items.Strings = (
        '=')
      TabOnEnter = False
      FontColorOnEnter = 10252872
      ColorFocused = 10252872
      ColorNotFocused = 6908265
      HintList.Strings = (
        'ist gleich'
        'alle au'#223'er'
        'alle '#228'hnlich (10 '#228'hnlich 10000)'
        ''
        ''
        ''
        ''
        ''
        ''
        '')
    end
    object eseldi: TfEdit
      Left = 677
      Top = 55
      Width = 121
      Height = 23
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkTile
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnExit = eseldiExit
      TabOnEnter = False
      FontColorOnEnter = 10252872
      ColorFocused = 10252872
      ColorNotFocused = 6908265
    end
    object cselsb: TfComboBox
      Left = 353
      Top = 26
      Width = 39
      Height = 24
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Text = '='
      Items.Strings = (
        '=')
      TabOnEnter = False
      FontColorOnEnter = 36607
      ColorFocused = 36607
      ColorNotFocused = clBlack
      HintList.Strings = (
        'ist gleich'
        'alle au'#223'er'
        'alle '#228'hnlich (10 '#228'hnlich 10000)'
        ''
        ''
        ''
        ''
        ''
        ''
        '')
    end
    object cselpe: TfComboBox
      Left = 353
      Top = 55
      Width = 39
      Height = 24
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Text = '='
      Visible = False
      Items.Strings = (
        '='
        '<'
        '<='
        '>'
        '>=')
      TabOnEnter = False
      FontColorOnEnter = 10252872
      ColorFocused = 10252872
      ColorNotFocused = 6908265
      HintList.Strings = (
        'ist gleich'
        'alle au'#223'er'
        'alle '#228'hnlich (10 '#228'hnlich 10000)'
        ''
        ''
        ''
        ''
        ''
        ''
        '')
    end
    object cselae: TfComboBox
      Left = 634
      Top = 26
      Width = 39
      Height = 24
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      Text = '='
      Items.Strings = (
        '='
        '<'
        '<='
        '>'
        '>=')
      TabOnEnter = False
      FontColorOnEnter = 10252872
      ColorFocused = 10252872
      ColorNotFocused = 6908265
      HintList.Strings = (
        'ist gleich'
        'alle au'#223'er'
        'alle '#228'hnlich (10 '#228'hnlich 10000)'
        ''
        ''
        ''
        ''
        ''
        ''
        '')
    end
    object cseldi: TfComboBox
      Left = 634
      Top = 55
      Width = 39
      Height = 24
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      Text = '='
      Items.Strings = (
        '='
        '<'
        '<='
        '>'
        '>=')
      TabOnEnter = False
      FontColorOnEnter = 10252872
      ColorFocused = 10252872
      ColorNotFocused = 6908265
      HintList.Strings = (
        'ist gleich'
        'alle au'#223'er'
        'alle kleiner als'
        'alle kleiner gleich'
        'alle gr'#246#223'er als'
        'alle gr'#246#223'er gleich'
        ''
        ''
        ''
        ''
        ''
        ''
        ''
        '')
    end
    object banwenden: TNxButton
      Left = 806
      Top = 26
      Width = 91
      Caption = 'anwenden'
      TabOrder = 9
      OnClick = banwendenClick
    end
    object blöschen: TNxButton
      Left = 806
      Top = 55
      Width = 91
      Caption = 'Filter l'#246'schen'
      TabOrder = 10
      OnClick = blöschenClick
    end
    object eselpe: TfEdit
      Left = 398
      Top = 55
      Width = 121
      Height = 23
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkTile
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      Visible = False
      OnExit = eselpeExit
      TabOnEnter = False
      FontColorOnEnter = 10252872
      ColorFocused = 10252872
      ColorNotFocused = 6908265
    end
  end
end
