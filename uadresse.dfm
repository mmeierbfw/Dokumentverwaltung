object formpseudo: Tformpseudo
  Left = 0
  Top = 0
  Caption = 'Adresse'
  ClientHeight = 115
  ClientWidth = 685
  Color = 16706255
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  Padding.Left = 10
  Padding.Top = 10
  Padding.Right = 10
  Padding.Bottom = 10
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object pouter: TPanel
    AlignWithMargins = True
    Left = 20
    Top = 17
    Width = 645
    Height = 82
    Margins.Left = 20
    Margins.Top = 20
    Margins.Right = 20
    Margins.Bottom = 20
    AutoSize = True
    Color = 6908265
    ParentBackground = False
    TabOrder = 0
    object Panel1: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 636
      Height = 73
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 5
      Margins.Bottom = 5
      AutoSize = True
      BevelOuter = bvNone
      Color = 14474460
      ParentBackground = False
      TabOrder = 0
      object Label44: TLabel
        Left = 0
        Top = 2
        Width = 83
        Height = 26
        Margins.Left = 18
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Strasse'
        Font.Charset = ANSI_CHARSET
        Font.Color = 10180866
        Font.Height = -22
        Font.Name = 'Verdana'
        Font.Style = []
        Font.Quality = fqClearTypeNatural
        ParentFont = False
      end
      object Label1: TLabel
        Left = 0
        Top = 36
        Width = 40
        Height = 26
        Margins.Left = 18
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'PLZ'
        Font.Charset = ANSI_CHARSET
        Font.Color = 10180866
        Font.Height = -22
        Font.Name = 'Verdana'
        Font.Style = []
        Font.Quality = fqClearTypeNatural
        ParentFont = False
      end
      object Label2: TLabel
        Left = 56
        Top = 36
        Width = 35
        Height = 26
        Margins.Left = 18
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Ort'
        Font.Charset = ANSI_CHARSET
        Font.Color = 10180866
        Font.Height = -22
        Font.Name = 'Verdana'
        Font.Style = []
        Font.Quality = fqClearTypeNatural
        ParentFont = False
      end
      object eeid: TfEdit
        Left = 203
        Top = 0
        Width = 433
        Height = 37
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        AutoSelect = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 10180866
        Font.Height = -22
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 4
        ParentFont = False
        TabOrder = 0
        Text = '1234'
        TabOnEnter = False
        FontColorOnEnter = 36607
        ColorFocused = 36607
        ColorNotFocused = clBlack
      end
      object fEdit1: TfEdit
        Left = 203
        Top = 36
        Width = 81
        Height = 37
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        AutoSelect = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 10180866
        Font.Height = -22
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 4
        ParentFont = False
        TabOrder = 1
        Text = '84097'
        TabOnEnter = False
        FontColorOnEnter = 36607
        ColorFocused = 36607
        ColorNotFocused = clBlack
      end
      object fEdit2: TfEdit
        Left = 283
        Top = 36
        Width = 353
        Height = 37
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        AutoSelect = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 10180866
        Font.Height = -22
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 4
        ParentFont = False
        TabOrder = 2
        Text = '1234'
        TabOnEnter = False
        FontColorOnEnter = 36607
        ColorFocused = 36607
        ColorNotFocused = clBlack
      end
    end
  end
end
