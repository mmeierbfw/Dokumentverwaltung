inherited frameenergie: Tframeenergie
  Width = 1111
  Height = 652
  inherited gridpanel: TGridPanel
    Width = 1111
    Height = 652
    inherited Panel5: TPanel
      Width = 549
      Height = 644
      ExplicitWidth = 219
      ExplicitHeight = 296
      inherited Label45: TLabel
        Left = 14
        Top = 318
        ExplicitLeft = 14
        ExplicitTop = 318
      end
      inherited Label29: TLabel
        Top = 364
        ExplicitTop = 364
      end
      inherited dtabrechnungsende: tfmaskedit
        Left = 322
        Top = 318
        ExplicitLeft = 322
        ExplicitTop = 318
      end
      inherited dtposteingang: tfmaskedit
        TabOrder = 9
      end
      inherited menotizen: TfMemo
        Top = 364
        TabOrder = 5
        ExplicitTop = 364
      end
      inherited bsave: TNxButton
        Top = 537
        TabOrder = 6
        ExplicitTop = 537
      end
      object cbpseudo: TNxCheckBox [12]
        Left = 321
        Top = 159
        Width = 64
        Height = 23
        TabOrder = 3
        Text = 'Pseudo'
        Caption = ''
        OnChange = cbpseudoChange
      end
      object flipadress: TNxFlipPanel [13]
        Left = 13
        Top = 205
        Width = 396
        Height = 90
        Caption = 'Adresse'
        CaptionCollapsed = 'Adresse'
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6908265
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = 6908265
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        ParentFont = False
        ParentHeaderFont = False
        FullHeight = 90
        object Label1: TLabel
          Left = 0
          Top = 45
          Width = 32
          Height = 13
          Margins.Left = 14
          Caption = 'Stra'#223'e'
        end
        object Label2: TLabel
          Left = 0
          Top = 68
          Width = 17
          Height = 13
          Margins.Left = 14
          Caption = 'PLZ'
        end
        object Label3: TLabel
          Left = 32
          Top = 68
          Width = 16
          Height = 13
          Margins.Left = 14
          Caption = 'Ort'
        end
        object eestrasse: TfEdit
          Left = 111
          Top = 40
          Width = 261
          Height = 23
          AutoSize = False
          BevelInner = bvLowered
          BevelKind = bkTile
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabOnEnter = False
          FontColorOnEnter = 10252872
          ColorFocused = 10252872
          ColorNotFocused = 6908265
        end
        object eeort: TfEdit
          Left = 160
          Top = 62
          Width = 212
          Height = 23
          AutoSize = False
          BevelInner = bvLowered
          BevelKind = bkTile
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnExit = eeortExit
          TabOnEnter = False
          FontColorOnEnter = 10252872
          ColorFocused = 10252872
          ColorNotFocused = 6908265
        end
        object eeplz: TfEdit
          Left = 111
          Top = 62
          Width = 49
          Height = 23
          AutoSize = False
          BevelInner = bvLowered
          BevelKind = bkTile
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 5
          NumbersOnly = True
          ParentFont = False
          TabOrder = 1
          TabOnEnter = False
          FontColorOnEnter = 10252872
          ColorFocused = 10252872
          ColorNotFocused = 6908265
        end
      end
      inherited eabrechnungsende: TfEdit
        Left = 322
        Top = 318
        TabOrder = 4
        ExplicitLeft = 322
        ExplicitTop = 318
      end
      inherited UpDown1: TUpDown
        Left = 322
        Top = 342
        TabOrder = 11
        ExplicitLeft = 322
        ExplicitTop = 342
      end
    end
    inherited rightparent: TPanel
      Left = 559
      Width = 550
      Height = 644
    end
  end
end
