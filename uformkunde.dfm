object Form1: TForm1
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Form1'
  ClientHeight = 77
  ClientWidth = 196
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 196
    Height = 77
    AutoSize = True
    Color = 15856113
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    ParentBackground = False
    TabOrder = 0
    object lname: TLabel
      Left = 11
      Top = 15
      Width = 28
      Height = 13
      Caption = 'lname'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Button1: TButton
      Left = 11
      Top = 41
      Width = 78
      Height = 25
      Caption = 'speichern'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 107
      Top = 41
      Width = 78
      Height = 25
      Caption = 'abbrechen'
      TabOrder = 1
    end
    object fkundennrn: TfComboBox
      Left = 123
      Top = 11
      Width = 62
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
      TabOrder = 2
      Text = 'fkundennrn'
      TabOnEnter = False
      FontColorOnEnter = 36607
      ColorFocused = 36607
      ColorNotFocused = clBlack
    end
  end
end
