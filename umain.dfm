﻿object formmain: Tformmain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Dokumentverwaltung'
  ClientHeight = 767
  ClientWidth = 1984
  Color = 16706255
  Font.Charset = DEFAULT_CHARSET
  Font.Color = 6908265
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  GlassFrame.Left = 10
  GlassFrame.Top = 10
  GlassFrame.Right = 10
  GlassFrame.Bottom = 10
  GlassFrame.SheetOfGlass = True
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object prahmen: TPanel
    Left = 0
    Top = 0
    Width = 1984
    Height = 767
    Margins.Left = 15
    Margins.Top = 15
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alClient
    Caption = 'prahmen'
    Color = 14933977
    ParentBackground = False
    TabOrder = 0
    object pmiddle: TPanel
      AlignWithMargins = True
      Left = 297
      Top = 44
      Width = 1678
      Height = 720
      Margins.Left = 0
      Margins.Top = 2
      Margins.Right = 8
      Margins.Bottom = 2
      Align = alClient
      BevelOuter = bvNone
      Caption = 'pmiddle'
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object pagermain: TNxPageControl
        Left = 0
        Top = 0
        Width = 1678
        Height = 720
        ParentCustomHint = False
        ActivePage = tabanzeige
        ActivePageIndex = 1
        Align = alClient
        Color = clWhite
        ParentColor = False
        TabOrder = 0
        BackgroundColor = clWhite
        Margin = 0
        Options = [pgBoldActiveTab, pgPageBorder, pgTopBorder]
        Spacing = 0
        TabHeight = 17
        object tabspeichern: TNxTabSheet
          Caption = 'Dokumente speichern'
          PageIndex = 0
          ParentTabFont = False
          TabFont.Charset = DEFAULT_CHARSET
          TabFont.Color = 6908265
          TabFont.Height = -13
          TabFont.Name = 'Tahoma'
          TabFont.Style = []
          TabWidth = 455
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 1676
            Height = 698
            Align = alClient
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            object pagerspeicher: TNxPageControl
              Left = 0
              Top = 35
              Width = 1676
              Height = 663
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 2
              Margins.Bottom = 4
              ActivePage = TMontage
              ActivePageIndex = 0
              Align = alClient
              ShowHint = True
              TabOrder = 0
              OnEnter = pagerspeicherEnter
              OnExit = pagerspeicherExit
              OnKeyPress = zdtauszugKeyPress
              OnChanging = pagerspeicherChanging
              BackgroundColor = clWhite
              Indent = 0
              Margin = 0
              Options = []
              ScrollMethod = smSelect
              Spacing = 10
              TabHeight = 23
              TabStyle = tsDexter
              TopIndent = 0
              object TMontage: TNxTabSheet
                ActiveTabColor = clAqua
                Caption = 'Montage'
                PageIndex = 0
                ParentTabFont = False
                TabFont.Charset = DEFAULT_CHARSET
                TabFont.Color = clWindowText
                TabFont.Height = -13
                TabFont.Name = 'Tahoma'
                TabFont.Style = []
                TabWidth = 130
                OnHide = hidecontrol
                OnShow = TMontageShow
                ExplicitTop = 0
                ExplicitHeight = 640
                inline framemontage: Tframereklmont
                  Left = 0
                  Top = 0
                  Width = 1676
                  Height = 639
                  Align = alClient
                  TabOrder = 0
                  ExplicitWidth = 1676
                  ExplicitHeight = 639
                  inherited gridpanel: TGridPanel
                    Width = 1676
                    Height = 639
                    ControlCollection = <
                      item
                        Column = 0
                        Control = framemontage.Panel5
                        Row = 0
                      end
                      item
                        Column = 1
                        Control = framemontage.rightparent
                        Row = 0
                      end>
                    ExplicitWidth = 1676
                    ExplicitHeight = 639
                    inherited Panel5: TPanel
                      Height = 631
                      ExplicitWidth = 832
                      ExplicitHeight = 631
                      inherited lfiletype: TLabel
                        Height = 590
                      end
                      inherited Label45: TLabel
                        Width = 102
                        Height = 16
                        ExplicitWidth = 102
                        ExplicitHeight = 16
                      end
                      inherited Label46: TLabel
                        Width = 69
                        Height = 16
                        ExplicitWidth = 69
                        ExplicitHeight = 16
                      end
                      inherited Label47: TLabel
                        Width = 71
                        Height = 16
                        ExplicitWidth = 71
                        ExplicitHeight = 16
                      end
                      inherited Label48: TLabel
                        Width = 87
                        Height = 16
                        ExplicitWidth = 87
                        ExplicitHeight = 16
                      end
                      inherited Label29: TLabel
                        Width = 42
                        Height = 16
                        ExplicitWidth = 42
                        ExplicitHeight = 16
                      end
                      inherited Label7: TLabel
                        Width = 96
                        Height = 16
                        ExplicitWidth = 96
                        ExplicitHeight = 16
                      end
                      inherited Label34: TLabel
                        Width = 85
                        Height = 16
                        ExplicitWidth = 85
                        ExplicitHeight = 16
                      end
                      inherited Label26: TLabel
                        Width = 36
                        Height = 16
                        ExplicitWidth = 36
                        ExplicitHeight = 16
                      end
                      inherited Label5: TLabel
                        Width = 85
                        Height = 16
                        ExplicitWidth = 85
                        ExplicitHeight = 16
                      end
                      inherited eliegenschaft: TfEdit
                        OnExit = liegenschaftexit
                      end
                      inherited bsave: TNxButton
                        OnClick = ButtonSave
                      end
                      inherited enutzernummer: TfEdit
                        OnExit = Nexit
                      end
                      inherited eposteingang: TfEdit
                        OnExit = nil
                      end
                      inherited emontage: TfEdit
                        OnExit = framemontageemontageExit
                      end
                      inherited pinfo: TPanel
                        inherited labelinfo: TLabel
                          Width = 99
                          Height = 16
                          Font.Height = -13
                          ExplicitWidth = 99
                          ExplicitHeight = 16
                        end
                      end
                      inherited UpDown2: TUpDown
                        OnClick = framemontageUpDown2Click
                      end
                    end
                    inherited rightparent: TPanel
                      Height = 631
                      ExplicitLeft = 842
                      ExplicitWidth = 832
                      ExplicitHeight = 631
                    end
                  end
                end
              end
              object TZwischenablesung: TNxTabSheet
                ActiveTabColor = clAqua
                Caption = 'Zwischenablesung'
                PageIndex = 1
                ParentTabFont = False
                TabFont.Charset = DEFAULT_CHARSET
                TabFont.Color = clWindowText
                TabFont.Height = -13
                TabFont.Name = 'Tahoma'
                TabFont.Style = []
                TabWidth = 130
                OnHide = hidecontrol
                OnPaint = TZwischenablesungPaint
                OnShow = TZwischenablesungShow
                ExplicitTop = 0
                ExplicitHeight = 640
                inline framezwi: Tframezwischen
                  Left = 0
                  Top = 0
                  Width = 1676
                  Height = 639
                  Align = alClient
                  TabOrder = 0
                  ExplicitWidth = 1676
                  ExplicitHeight = 639
                  inherited gridpanel: TGridPanel
                    Width = 1676
                    Height = 639
                    Caption = '^'
                    ControlCollection = <
                      item
                        Column = 1
                        Control = framezwi.rightparent
                        Row = 0
                      end
                      item
                        Column = 0
                        Control = framezwi.Panel5
                        Row = 0
                      end>
                    ExplicitWidth = 1676
                    ExplicitHeight = 639
                    inherited rightparent: TPanel [0]
                      Left = 842
                      Width = 832
                      Height = 631
                      ExplicitLeft = 842
                      ExplicitWidth = 832
                      ExplicitHeight = 631
                    end
                    inherited Panel5: TPanel [1]
                      Width = 832
                      Height = 631
                      ExplicitWidth = 832
                      ExplicitHeight = 631
                      inherited lfiletype: TLabel
                        Height = 590
                      end
                      inherited Label45: TLabel
                        Width = 102
                        Height = 16
                        ExplicitWidth = 102
                        ExplicitHeight = 16
                      end
                      inherited Label46: TLabel
                        Width = 69
                        Height = 16
                        ExplicitWidth = 69
                        ExplicitHeight = 16
                      end
                      inherited Label47: TLabel
                        Width = 71
                        Height = 16
                        ExplicitWidth = 71
                        ExplicitHeight = 16
                      end
                      inherited Label48: TLabel
                        Width = 87
                        Height = 16
                        ExplicitWidth = 87
                        ExplicitHeight = 16
                      end
                      inherited Label29: TLabel
                        Width = 42
                        Height = 16
                        ExplicitWidth = 42
                        ExplicitHeight = 16
                      end
                      inherited Label2: TLabel
                        Width = 69
                        Height = 16
                        ExplicitWidth = 69
                        ExplicitHeight = 16
                      end
                      inherited Label3: TLabel
                        Width = 74
                        Height = 16
                        ExplicitWidth = 74
                        ExplicitHeight = 16
                      end
                      inherited Label4: TLabel
                        Width = 73
                        Height = 16
                        ExplicitWidth = 73
                        ExplicitHeight = 16
                      end
                      inherited Label5: TLabel
                        Width = 85
                        Height = 16
                        ExplicitWidth = 85
                        ExplicitHeight = 16
                      end
                      inherited eliegenschaft: TfEdit
                        OnExit = liegenschaftexit
                      end
                      inherited bsave: TNxButton
                        OnClick = ButtonSave
                      end
                      inherited enutzernummer: TfEdit
                        OnExit = Nexit
                      end
                      inherited enutzername: TfEdit
                        OnExit = zenutzernameExit
                      end
                      inherited eposteingang: TfEdit
                        OnExit = dateexit
                      end
                      inherited eabrechnungsende: TfEdit
                        OnExit = dateexit
                      end
                      inherited pinfo: TPanel
                        inherited labelinfo: TLabel
                          Width = 99
                          Height = 16
                          Font.Height = -13
                          ExplicitWidth = 99
                          ExplicitHeight = 16
                        end
                      end
                      inherited UpDown2: TUpDown
                        OnClick = framezwiUpDown2Click
                      end
                      inherited eauszug: TfEdit
                        OnExit = dateexit
                      end
                      inherited eablesedatum: TfEdit
                        OnExit = dateexit
                      end
                    end
                  end
                end
              end
              object Tangebotsanfragen: TNxTabSheet
                ActiveTabColor = clAqua
                Caption = 'Angebotsanfragen'
                PageIndex = 2
                ParentTabFont = False
                TabFont.Charset = ANSI_CHARSET
                TabFont.Color = clWindowText
                TabFont.Height = -13
                TabFont.Name = 'Verdana'
                TabFont.Style = []
                TabWidth = 130
                OnShow = TangebotsanfragenShow
                ExplicitTop = 0
                ExplicitHeight = 640
                inline frameangebot: Tframebasenutzer
                  Left = 0
                  Top = 0
                  Width = 1676
                  Height = 639
                  Align = alClient
                  TabOrder = 0
                  ExplicitWidth = 1676
                  ExplicitHeight = 639
                  inherited gridpanel: TGridPanel
                    Width = 1676
                    Height = 639
                    ControlCollection = <
                      item
                        Column = 0
                        Control = frameangebot.Panel5
                        Row = 0
                      end
                      item
                        Column = 1
                        Control = frameangebot.rightparent
                        Row = 0
                      end>
                    ExplicitWidth = 1676
                    ExplicitHeight = 639
                    inherited Panel5: TPanel
                      Height = 631
                      ExplicitHeight = 631
                      inherited lfiletype: TLabel
                        Height = 590
                      end
                      inherited Label45: TLabel
                        Width = 102
                        Height = 16
                        ExplicitWidth = 102
                        ExplicitHeight = 16
                      end
                      inherited Label46: TLabel
                        Width = 69
                        Height = 16
                        ExplicitWidth = 69
                        ExplicitHeight = 16
                      end
                      inherited Label47: TLabel
                        Width = 71
                        Height = 16
                        ExplicitWidth = 71
                        ExplicitHeight = 16
                      end
                      inherited Label48: TLabel
                        Width = 87
                        Height = 16
                        ExplicitWidth = 87
                        ExplicitHeight = 16
                      end
                      inherited Label29: TLabel
                        Width = 42
                        Height = 16
                        ExplicitWidth = 42
                        ExplicitHeight = 16
                      end
                      inherited Label5: TLabel
                        Width = 85
                        Height = 16
                        ExplicitWidth = 85
                        ExplicitHeight = 16
                      end
                      inherited eliegenschaft: TfEdit
                        TabOrder = 2
                        OnExit = liegenschaftexit
                      end
                      inherited menotizen: TfMemo
                        TabOrder = 5
                      end
                      inherited bsave: TNxButton
                        TabOrder = 6
                        OnClick = ButtonSave
                      end
                      inherited enutzernummer: TfEdit
                        TabOrder = 3
                        OnClick = Nexit
                        OnExit = Nexit
                      end
                      inherited eposteingang: TfEdit
                        TabOrder = 1
                      end
                      inherited eabrechnungsende: TfEdit
                        TabOrder = 4
                      end
                      inherited pinfo: TPanel
                        inherited labelinfo: TLabel
                          Width = 99
                          Height = 16
                          Font.Height = -13
                          ExplicitWidth = 99
                          ExplicitHeight = 16
                        end
                      end
                      inherited UpDown2: TUpDown
                        OnClick = frameangebotUpDown2Click
                      end
                    end
                    inherited rightparent: TPanel
                      Height = 631
                      ExplicitHeight = 631
                    end
                  end
                end
              end
              object tauftrag: TNxTabSheet
                Caption = 'Auftragsanfrage'
                PageIndex = 3
                ParentTabFont = False
                TabFont.Charset = DEFAULT_CHARSET
                TabFont.Color = 6908265
                TabFont.Height = -13
                TabFont.Name = 'Tahoma'
                TabFont.Style = []
                TabWidth = 130
                OnShow = tauftragShow
                ExplicitTop = 0
                ExplicitHeight = 640
                inline frameauf: Tframeauftrag
                  Left = 0
                  Top = 0
                  Width = 1676
                  Height = 639
                  Align = alClient
                  TabOrder = 0
                  ExplicitWidth = 1676
                  ExplicitHeight = 639
                  inherited gridpanel: TGridPanel
                    Width = 1676
                    Height = 639
                    ControlCollection = <
                      item
                        Column = 0
                        Control = frameauf.Panel5
                        Row = 0
                      end
                      item
                        Column = 1
                        Control = frameauf.rightparent
                        Row = 0
                      end>
                    ExplicitWidth = 1676
                    ExplicitHeight = 639
                    inherited Panel5: TPanel
                      Height = 631
                      ExplicitWidth = 832
                      ExplicitHeight = 631
                      inherited lfiletype: TLabel
                        Height = 590
                      end
                      inherited Label45: TLabel
                        Width = 102
                        Height = 16
                        ExplicitWidth = 102
                        ExplicitHeight = 16
                      end
                      inherited Label46: TLabel
                        Width = 69
                        Height = 16
                        ExplicitWidth = 69
                        ExplicitHeight = 16
                      end
                      inherited Label47: TLabel
                        Width = 71
                        Height = 16
                        ExplicitWidth = 71
                        ExplicitHeight = 16
                      end
                      inherited Label48: TLabel
                        Width = 87
                        Height = 16
                        ExplicitWidth = 87
                        ExplicitHeight = 16
                      end
                      inherited Label29: TLabel
                        Width = 42
                        Height = 16
                        ExplicitWidth = 42
                        ExplicitHeight = 16
                      end
                      inherited Label5: TLabel
                        Width = 85
                        Height = 16
                        ExplicitWidth = 85
                        ExplicitHeight = 16
                      end
                      inherited Label1: TLabel
                        Width = 65
                        Height = 16
                        ExplicitWidth = 65
                        ExplicitHeight = 16
                      end
                      inherited dtabrechnungsende: tfmaskedit
                        TabOrder = 13
                      end
                      inherited dtposteingang: tfmaskedit
                        TabOrder = 15
                      end
                      inherited eliegenschaft: TfEdit
                        TabOrder = 2
                        OnExit = liegenschaftexit
                      end
                      inherited menotizen: TfMemo
                        TabOrder = 6
                      end
                      inherited bsave: TNxButton
                        TabOrder = 7
                        OnClick = ButtonSave
                      end
                      inherited enutzernummer: TfEdit
                        TabOrder = 3
                        OnClick = Nexit
                        OnExit = Nexit
                      end
                      inherited cbselectauftrag: TNxComboBox
                        Left = 244
                        Width = 141
                        Height = 24
                        TabOrder = 5
                        Items.Strings = (
                          'Montage'
                          'Nachablesung'
                          'Ger'#228'tetausch')
                        ExplicitLeft = 244
                        ExplicitWidth = 141
                        ExplicitHeight = 24
                      end
                      inherited NxButton1: TNxButton
                        Left = 244
                        Width = 141
                        Enabled = False
                        TabOrder = 10
                        ExplicitLeft = 244
                        ExplicitWidth = 141
                      end
                      inherited eposteingang: TfEdit
                        TabOrder = 1
                      end
                      inherited eabrechnungsende: TfEdit
                        Left = 320
                        TabOrder = 4
                        ExplicitLeft = 320
                      end
                      inherited pinfo: TPanel
                        inherited labelinfo: TLabel
                          Width = 99
                          Height = 16
                          Font.Height = -13
                          ExplicitWidth = 99
                          ExplicitHeight = 16
                        end
                      end
                      inherited UpDown2: TUpDown
                        OnClick = frameauftragUpDown2Click
                      end
                    end
                    inherited rightparent: TPanel
                      Height = 631
                      ExplicitLeft = 842
                      ExplicitWidth = 832
                      ExplicitHeight = 631
                    end
                  end
                end
              end
              object Tenergieausweis: TNxTabSheet
                ActiveTabColor = clAqua
                Caption = 'Energieausweis'
                PageIndex = 4
                ParentTabFont = False
                TabColor = clCream
                TabFont.Charset = DEFAULT_CHARSET
                TabFont.Color = clWindowText
                TabFont.Height = -13
                TabFont.Name = 'Tahoma'
                TabFont.Style = []
                TabWidth = 130
                OnShow = TenergieausweisShow
                ExplicitTop = 0
                ExplicitHeight = 640
                inline framen: Tframeenergie
                  Left = 0
                  Top = 0
                  Width = 1676
                  Height = 639
                  Align = alClient
                  TabOrder = 0
                  ExplicitWidth = 1676
                  ExplicitHeight = 639
                  inherited gridpanel: TGridPanel
                    Width = 1676
                    Height = 639
                    ControlCollection = <
                      item
                        Column = 0
                        Control = framen.Panel5
                        Row = 0
                      end
                      item
                        Column = 1
                        Control = framen.rightparent
                        Row = 0
                      end>
                    ExplicitWidth = 1676
                    ExplicitHeight = 639
                    inherited Panel5: TPanel
                      Height = 631
                      ExplicitWidth = 832
                      ExplicitHeight = 631
                      inherited lfiletype: TLabel
                        Height = 590
                      end
                      inherited Label45: TLabel
                        Width = 102
                        Height = 16
                        ExplicitWidth = 102
                        ExplicitHeight = 16
                      end
                      inherited Label46: TLabel
                        Width = 69
                        Height = 16
                        ExplicitWidth = 69
                        ExplicitHeight = 16
                      end
                      inherited Label47: TLabel
                        Width = 71
                        Height = 16
                        ExplicitWidth = 71
                        ExplicitHeight = 16
                      end
                      inherited Label48: TLabel
                        Width = 87
                        Height = 16
                        ExplicitWidth = 87
                        ExplicitHeight = 16
                      end
                      inherited Label29: TLabel
                        Width = 42
                        Height = 16
                        ExplicitWidth = 42
                        ExplicitHeight = 16
                      end
                      inherited eliegenschaft: TfEdit
                        OnExit = liegenschaftexit
                      end
                      inherited bsave: TNxButton
                        OnClick = ButtonSave
                      end
                      inherited flipadress: TNxFlipPanel
                        FullHeight = 90
                      end
                    end
                    inherited rightparent: TPanel
                      Height = 631
                      ExplicitLeft = 842
                      ExplicitWidth = 832
                      ExplicitHeight = 631
                    end
                  end
                end
              end
              object TKostenermittlung: TNxTabSheet
                ActiveTabColor = clAqua
                Caption = 'Kosten- /Nutzerermittlung'
                PageIndex = 5
                ParentTabFont = False
                TabFont.Charset = DEFAULT_CHARSET
                TabFont.Color = clWindowText
                TabFont.Height = -13
                TabFont.Name = 'Tahoma'
                TabFont.Style = []
                TabWidth = 130
                OnHide = hidecontrol
                OnShow = TKostenermittlungShow
                ExplicitTop = 0
                ExplicitHeight = 640
                inline framekosten: Tframebase
                  Left = 0
                  Top = 0
                  Width = 1676
                  Height = 639
                  Align = alClient
                  TabOrder = 0
                  ExplicitWidth = 1676
                  ExplicitHeight = 639
                  inherited gridpanel: TGridPanel
                    Width = 1676
                    Height = 639
                    ControlCollection = <
                      item
                        Column = 0
                        Control = framekosten.Panel5
                        Row = 0
                      end
                      item
                        Column = 1
                        Control = framekosten.rightparent
                        Row = 0
                      end>
                    ExplicitWidth = 1676
                    ExplicitHeight = 639
                    inherited Panel5: TPanel
                      Height = 631
                      ExplicitWidth = 832
                      ExplicitHeight = 631
                      inherited lfiletype: TLabel
                        Height = 590
                      end
                      inherited Label45: TLabel
                        Width = 102
                        Height = 16
                        ExplicitWidth = 102
                        ExplicitHeight = 16
                      end
                      inherited Label46: TLabel
                        Width = 69
                        Height = 16
                        ExplicitWidth = 69
                        ExplicitHeight = 16
                      end
                      inherited Label47: TLabel
                        Width = 71
                        Height = 16
                        ExplicitWidth = 71
                        ExplicitHeight = 16
                      end
                      inherited Label48: TLabel
                        Width = 87
                        Height = 16
                        ExplicitWidth = 87
                        ExplicitHeight = 16
                      end
                      inherited Label29: TLabel
                        Width = 42
                        Height = 16
                        ExplicitWidth = 42
                        ExplicitHeight = 16
                      end
                      inherited eliegenschaft: TfEdit
                        OnExit = liegenschaftexit
                      end
                      inherited bsave: TNxButton
                        OnClick = ButtonSave
                      end
                      inherited pinfo: TPanel
                        inherited labelinfo: TLabel
                          Width = 99
                          Height = 16
                          Font.Height = -13
                          ExplicitWidth = 99
                          ExplicitHeight = 16
                        end
                      end
                    end
                    inherited rightparent: TPanel
                      Height = 631
                      ExplicitLeft = 842
                      ExplicitWidth = 832
                      ExplicitHeight = 631
                    end
                  end
                end
              end
              object tNutzerliste: TNxTabSheet
                ActiveTabColor = clAqua
                Caption = 'Nutzerliste'
                PageIndex = 6
                ParentTabFont = False
                TabFont.Charset = DEFAULT_CHARSET
                TabFont.Color = clWindowText
                TabFont.Height = -13
                TabFont.Name = 'Tahoma'
                TabFont.Style = []
                TabWidth = 130
                OnShow = tNutzerlisteShow
                ExplicitTop = 0
                ExplicitHeight = 640
                inline framenutzer: Tframebase
                  Left = 0
                  Top = 0
                  Width = 1676
                  Height = 639
                  Align = alClient
                  TabOrder = 0
                  ExplicitWidth = 1676
                  ExplicitHeight = 639
                  inherited gridpanel: TGridPanel
                    Width = 1676
                    Height = 639
                    ControlCollection = <
                      item
                        Column = 0
                        Control = framenutzer.Panel5
                        Row = 0
                      end
                      item
                        Column = 1
                        Control = framenutzer.rightparent
                        Row = 0
                      end>
                    ExplicitWidth = 1676
                    ExplicitHeight = 639
                    inherited Panel5: TPanel
                      Height = 631
                      ExplicitWidth = 832
                      ExplicitHeight = 631
                      inherited lfiletype: TLabel
                        Height = 590
                      end
                      inherited Label45: TLabel
                        Width = 102
                        Height = 16
                        ExplicitWidth = 102
                        ExplicitHeight = 16
                      end
                      inherited Label46: TLabel
                        Width = 69
                        Height = 16
                        ExplicitWidth = 69
                        ExplicitHeight = 16
                      end
                      inherited Label47: TLabel
                        Width = 71
                        Height = 16
                        ExplicitWidth = 71
                        ExplicitHeight = 16
                      end
                      inherited Label48: TLabel
                        Width = 87
                        Height = 16
                        ExplicitWidth = 87
                        ExplicitHeight = 16
                      end
                      inherited Label29: TLabel
                        Width = 42
                        Height = 16
                        ExplicitWidth = 42
                        ExplicitHeight = 16
                      end
                      inherited eliegenschaft: TfEdit
                        OnExit = liegenschaftexit
                      end
                      inherited bsave: TNxButton
                        Left = 14
                        Top = 409
                        OnClick = ButtonSave
                        ExplicitLeft = 14
                        ExplicitTop = 409
                      end
                      inherited pinfo: TPanel
                        inherited labelinfo: TLabel
                          Width = 99
                          Height = 16
                          Font.Height = -13
                          ExplicitWidth = 99
                          ExplicitHeight = 16
                        end
                      end
                      inherited UpDown2: TUpDown
                        OnClick = framenutzerUpDown2Click
                      end
                    end
                    inherited rightparent: TPanel
                      Height = 631
                      ExplicitLeft = 842
                      ExplicitWidth = 832
                      ExplicitHeight = 631
                    end
                  end
                end
              end
              object treklamaion: TNxTabSheet
                ActiveTabColor = clAqua
                Caption = 'Reklamation'
                PageIndex = 7
                ParentTabFont = False
                TabFont.Charset = DEFAULT_CHARSET
                TabFont.Color = clWindowText
                TabFont.Height = -13
                TabFont.Name = 'Tahoma'
                TabFont.Style = []
                TabWidth = 130
                OnShow = treklamaionShow
                ExplicitTop = 0
                ExplicitHeight = 640
                inline framereklamation: Tframereklmont
                  Left = 0
                  Top = 0
                  Width = 1676
                  Height = 639
                  Align = alClient
                  TabOrder = 0
                  ExplicitWidth = 1676
                  ExplicitHeight = 639
                  inherited gridpanel: TGridPanel
                    Width = 1676
                    Height = 639
                    ControlCollection = <
                      item
                        Column = 0
                        Control = framereklamation.Panel5
                        Row = 0
                      end
                      item
                        Column = 1
                        Control = framereklamation.rightparent
                        Row = 0
                      end>
                    ExplicitWidth = 1676
                    ExplicitHeight = 639
                    inherited Panel5: TPanel
                      Height = 631
                      ExplicitWidth = 832
                      ExplicitHeight = 631
                      inherited lfiletype: TLabel
                        Height = 590
                      end
                      inherited Label45: TLabel
                        Width = 102
                        Height = 16
                        ExplicitWidth = 102
                        ExplicitHeight = 16
                      end
                      inherited Label46: TLabel
                        Width = 69
                        Height = 16
                        ExplicitWidth = 69
                        ExplicitHeight = 16
                      end
                      inherited Label47: TLabel
                        Width = 71
                        Height = 16
                        ExplicitWidth = 71
                        ExplicitHeight = 16
                      end
                      inherited Label48: TLabel
                        Width = 87
                        Height = 16
                        ExplicitWidth = 87
                        ExplicitHeight = 16
                      end
                      inherited Label29: TLabel
                        Width = 42
                        Height = 16
                        ExplicitWidth = 42
                        ExplicitHeight = 16
                      end
                      inherited Label7: TLabel
                        Width = 96
                        Height = 16
                        ExplicitWidth = 96
                        ExplicitHeight = 16
                      end
                      inherited Label34: TLabel
                        Width = 85
                        Height = 16
                        ExplicitWidth = 85
                        ExplicitHeight = 16
                      end
                      inherited Label26: TLabel
                        Width = 36
                        Height = 16
                        ExplicitWidth = 36
                        ExplicitHeight = 16
                      end
                      inherited Label5: TLabel
                        Width = 85
                        Height = 16
                        ExplicitWidth = 85
                        ExplicitHeight = 16
                      end
                      inherited eliegenschaft: TfEdit
                        OnExit = liegenschaftexit
                      end
                      inherited bsave: TNxButton
                        OnClick = ButtonSave
                      end
                      inherited enutzernummer: TfEdit
                        OnClick = Nexit
                        OnExit = Nexit
                      end
                      inherited pinfo: TPanel
                        inherited labelinfo: TLabel
                          Width = 99
                          Height = 16
                          Font.Height = -13
                          ExplicitWidth = 99
                          ExplicitHeight = 16
                        end
                      end
                    end
                    inherited rightparent: TPanel
                      Height = 631
                      ExplicitLeft = 842
                      ExplicitWidth = 832
                      ExplicitHeight = 631
                    end
                  end
                end
                object pdatenrechts: TPanel
                  Left = 0
                  Top = 0
                  Width = 1676
                  Height = 639
                  Margins.Left = 2
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 0
                  Align = alClient
                  BevelOuter = bvNone
                  Color = clWhite
                  ParentBackground = False
                  TabOrder = 1
                  Visible = False
                  object lliegenschaftsdaten: TLabel
                    Left = 67
                    Top = 14
                    Width = 133
                    Height = 19
                    Caption = 'Liegenschaftsdaten'
                    Color = clWhite
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -16
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentColor = False
                    ParentFont = False
                    Transparent = True
                    OnClick = lliegenschaftsdatenClick
                  end
                  object pliedaten: TPanel
                    AlignWithMargins = True
                    Left = 8
                    Top = 64
                    Width = 1660
                    Height = 565
                    Margins.Left = 8
                    Margins.Top = 64
                    Margins.Right = 8
                    Margins.Bottom = 10
                    Align = alClient
                    BevelOuter = bvNone
                    Color = clWhite
                    ParentBackground = False
                    TabOrder = 0
                    Visible = False
                    object estrasse: TLabel
                      Left = 7
                      Top = 0
                      Width = 100
                      Height = 16
                      Caption = 'richardhassler str'
                      Color = clWhite
                      ParentColor = False
                      Transparent = True
                      Layout = tlCenter
                    end
                    object eort: TLabel
                      Left = 52
                      Top = 13
                      Width = 139
                      Height = 16
                      Caption = 'WALLDORF-M'#214'RFELDEN'
                      Color = clWhite
                      ParentColor = False
                      Transparent = True
                      WordWrap = True
                    end
                    object eplz: TLabel
                      Left = 7
                      Top = 13
                      Width = 35
                      Height = 16
                      Caption = '76185'
                      Color = clWhite
                      ParentColor = False
                      Transparent = True
                      Layout = tlCenter
                      WordWrap = True
                    end
                    object shapeverm: TShape
                      Left = 432
                      Top = 9
                      Width = 65
                      Height = 65
                      Brush.Color = 6908265
                      Pen.Color = 6908265
                    end
                    object lname1: TLabel
                      Left = 7
                      Top = 35
                      Width = 4
                      Height = 16
                      Color = clWhite
                      ParentColor = False
                      Transparent = True
                      Layout = tlCenter
                    end
                    object lname2: TLabel
                      Left = 7
                      Top = 57
                      Width = 4
                      Height = 16
                      Color = clWhite
                      ParentColor = False
                      Transparent = True
                      Layout = tlCenter
                    end
                    object vermerke: TMemo
                      AlignWithMargins = True
                      Left = 10
                      Top = 90
                      Width = 1640
                      Height = 465
                      Margins.Left = 10
                      Margins.Top = 90
                      Margins.Right = 10
                      Margins.Bottom = 10
                      TabStop = False
                      Align = alClient
                      BevelInner = bvNone
                      BevelOuter = bvNone
                      BorderStyle = bsNone
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 6908265
                      Font.Height = -13
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      ReadOnly = True
                      ScrollBars = ssVertical
                      TabOrder = 0
                      WantReturns = False
                    end
                  end
                end
              end
              object tsonstiges: TNxTabSheet
                ActiveTabColor = clAqua
                Caption = 'Sonstiges'
                PageIndex = 8
                ParentTabFont = False
                TabFont.Charset = DEFAULT_CHARSET
                TabFont.Color = clWindowText
                TabFont.Height = -13
                TabFont.Name = 'Tahoma'
                TabFont.Style = []
                TabWidth = 130
                OnShow = tsonstigesShow
                ExplicitTop = 0
                ExplicitHeight = 640
                inline framesonstiges: Tframebasenutzer
                  Left = 0
                  Top = 0
                  Width = 1676
                  Height = 639
                  Align = alClient
                  TabOrder = 0
                  ExplicitWidth = 1676
                  ExplicitHeight = 639
                  inherited gridpanel: TGridPanel
                    Width = 1676
                    Height = 639
                    ControlCollection = <
                      item
                        Column = 0
                        Control = framesonstiges.Panel5
                        Row = 0
                      end
                      item
                        Column = 1
                        Control = framesonstiges.rightparent
                        Row = 0
                      end>
                    ExplicitWidth = 1676
                    ExplicitHeight = 639
                    inherited Panel5: TPanel
                      Height = 631
                      ExplicitHeight = 631
                      inherited lfiletype: TLabel
                        Height = 590
                      end
                      inherited Label45: TLabel
                        Width = 102
                        Height = 16
                        ExplicitWidth = 102
                        ExplicitHeight = 16
                      end
                      inherited Label46: TLabel
                        Width = 69
                        Height = 16
                        ExplicitWidth = 69
                        ExplicitHeight = 16
                      end
                      inherited Label47: TLabel
                        Width = 71
                        Height = 16
                        ExplicitWidth = 71
                        ExplicitHeight = 16
                      end
                      inherited Label48: TLabel
                        Width = 87
                        Height = 16
                        ExplicitWidth = 87
                        ExplicitHeight = 16
                      end
                      inherited Label29: TLabel
                        Width = 42
                        Height = 16
                        ExplicitWidth = 42
                        ExplicitHeight = 16
                      end
                      inherited Label5: TLabel
                        Width = 85
                        Height = 16
                        ExplicitWidth = 85
                        ExplicitHeight = 16
                      end
                      inherited eliegenschaft: TfEdit
                        TabOrder = 2
                        OnExit = liegenschaftexit
                      end
                      inherited menotizen: TfMemo
                        TabOrder = 5
                      end
                      inherited bsave: TNxButton
                        TabOrder = 6
                        OnClick = ButtonSave
                      end
                      inherited enutzernummer: TfEdit
                        TabOrder = 3
                        OnClick = Nexit
                        OnExit = Nexit
                      end
                      inherited eposteingang: TfEdit
                        TabOrder = 1
                      end
                      inherited eabrechnungsende: TfEdit
                        TabOrder = 4
                      end
                      inherited pinfo: TPanel
                        inherited labelinfo: TLabel
                          Width = 99
                          Height = 16
                          Font.Height = -13
                          ExplicitWidth = 99
                          ExplicitHeight = 16
                        end
                      end
                      inherited UpDown2: TUpDown
                        OnClick = framesonstigesUpDown2Click
                      end
                    end
                    inherited rightparent: TPanel
                      Height = 631
                      ExplicitHeight = 631
                    end
                  end
                end
              end
              object TVerträge: TNxTabSheet
                ActiveTabColor = clAqua
                Caption = 'Vertr'#228'ge'
                PageIndex = 9
                ParentTabFont = False
                TabFont.Charset = ANSI_CHARSET
                TabFont.Color = clWindowText
                TabFont.Height = -13
                TabFont.Name = 'Verdana'
                TabFont.Style = []
                TabWidth = 130
                OnShow = TVerträgeShow
                inline framevert: Tframebasenutzer1
                  Left = 0
                  Top = 0
                  Width = 1676
                  Height = 639
                  Align = alClient
                  TabOrder = 0
                  ExplicitWidth = 1676
                  ExplicitHeight = 639
                  inherited gridpanel: TGridPanel
                    Width = 1676
                    Height = 639
                    ControlCollection = <
                      item
                        Column = 0
                        Control = framevert.Panel5
                        Row = 0
                      end
                      item
                        Column = 1
                        Control = framevert.rightparent
                        Row = 0
                      end>
                    ExplicitWidth = 1676
                    ExplicitHeight = 639
                    inherited Panel5: TPanel
                      Width = 832
                      Height = 631
                      ExplicitWidth = 832
                      ExplicitHeight = 631
                      inherited lfiletype: TLabel
                        Height = 590
                      end
                      inherited Label45: TLabel
                        Width = 102
                        Height = 16
                        ExplicitWidth = 102
                        ExplicitHeight = 16
                      end
                      inherited Label46: TLabel
                        Width = 69
                        Height = 16
                        ExplicitWidth = 69
                        ExplicitHeight = 16
                      end
                      inherited Label47: TLabel
                        Width = 71
                        Height = 16
                        ExplicitWidth = 71
                        ExplicitHeight = 16
                      end
                      inherited Label48: TLabel
                        Width = 87
                        Height = 16
                        ExplicitWidth = 87
                        ExplicitHeight = 16
                      end
                      inherited Label29: TLabel
                        Width = 42
                        Height = 16
                        ExplicitWidth = 42
                        ExplicitHeight = 16
                      end
                      inherited Label5: TLabel
                        Width = 85
                        Height = 16
                        ExplicitWidth = 85
                        ExplicitHeight = 16
                      end
                      inherited Label1: TLabel
                        Width = 66
                        Height = 16
                        ExplicitWidth = 66
                        ExplicitHeight = 16
                      end
                      inherited eliegenschaft: TfEdit
                        OnExit = liegenschaftexit
                      end
                      inherited bsave: TNxButton
                        OnClick = ButtonSave
                      end
                      inherited enutzernummer: TfEdit
                        OnExit = Nexit
                      end
                      inherited UpDown2: TUpDown
                        OnClick = framevertUpDown2Click
                      end
                    end
                    inherited rightparent: TPanel
                      Left = 842
                      Width = 832
                      Height = 631
                      ExplicitLeft = 842
                      ExplicitWidth = 832
                      ExplicitHeight = 631
                    end
                  end
                end
              end
              object LEER: TNxTabSheet
                Caption = 'NxTabSheet1'
                Color = clWhite
                PageIndex = 10
                ParentColor = False
                ParentTabFont = False
                TabFont.Charset = DEFAULT_CHARSET
                TabFont.Color = 6908265
                TabFont.Height = -13
                TabFont.Name = 'Tahoma'
                TabFont.Style = []
                TabWidth = 15
                ExplicitTop = 0
                ExplicitHeight = 640
              end
            end
            object pspeicherheader: TPanel
              AlignWithMargins = True
              Left = 2
              Top = 2
              Width = 1672
              Height = 33
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 0
              Align = alTop
              BevelEdges = []
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 1
              object ComboBox1: TComboBox
                Left = 1448
                Top = 0
                Width = 224
                Height = 24
                Align = alRight
                AutoCloseUp = True
                BevelEdges = []
                BevelInner = bvNone
                BevelOuter = bvNone
                Style = csDropDownList
                BiDiMode = bdLeftToRight
                CharCase = ecUpperCase
                DropDownCount = 10
                ItemIndex = 0
                ParentBiDiMode = False
                TabOrder = 0
                TabStop = False
                Text = 'ZWISCHENABLESUNG'
                OnClick = ComboBox1Click
                Items.Strings = (
                  'ZWISCHENABLESUNG'
                  'NUTZERLISTE / KOSTENERMITTLUNG'
                  'MONTAGE'
                  'REKLAMATION'
                  'ENERGIEAUSWEIS'
                  'SONSTIGES'
                  'VERTRAG'
                  'ANGEBOTSANFRAGE'
                  'AUFTRAGSANFRAGE')
              end
              object pz: TPanel
                Left = 0
                Top = 0
                Width = 160
                Height = 33
                Align = alLeft
                BevelEdges = [beLeft, beTop, beRight]
                BevelOuter = bvNone
                Caption = 'Zwischenablesung'
                Color = clWhite
                ParentBackground = False
                TabOrder = 1
                OnClick = pzClick
                OnMouseEnter = pzMouseEnter
                OnMouseLeave = pzMouseLeave
              end
              object pk: TPanel
                Left = 160
                Top = 0
                Width = 210
                Height = 33
                Align = alLeft
                BevelEdges = [beLeft, beTop, beRight]
                BevelOuter = bvNone
                Caption = 'Kostenermittlung / Nutzerliste'
                Color = clWhite
                ParentBackground = False
                TabOrder = 2
                OnClick = pzClick
                OnMouseEnter = pzMouseEnter
                OnMouseLeave = pzMouseLeave
              end
              object pm: TPanel
                Left = 370
                Top = 0
                Width = 160
                Height = 33
                Align = alLeft
                BevelEdges = [beLeft, beTop, beRight]
                BevelOuter = bvNone
                Caption = 'Montage'
                Color = clWhite
                ParentBackground = False
                TabOrder = 3
                OnClick = pzClick
                OnMouseEnter = pzMouseEnter
                OnMouseLeave = pzMouseLeave
              end
              object pr: TPanel
                Left = 530
                Top = 0
                Width = 160
                Height = 33
                Align = alLeft
                BevelEdges = [beLeft, beTop, beRight]
                BevelOuter = bvNone
                Color = clWhite
                ParentBackground = False
                TabOrder = 4
                OnClick = pzClick
                OnMouseEnter = pzMouseEnter
                OnMouseLeave = pzMouseLeave
              end
            end
          end
        end
        object tabanzeige: TNxTabSheet
          Caption = 'Dokumente anzeigen'
          PageIndex = 1
          ParentTabFont = False
          TabFont.Charset = DEFAULT_CHARSET
          TabFont.Color = 6908265
          TabFont.Height = -13
          TabFont.Name = 'Tahoma'
          TabFont.Style = []
          TabWidth = 455
          object ptabellen: TNxPageControl
            Left = 0
            Top = 0
            Width = 1676
            Height = 698
            ActivePage = tabenergieausweis
            ActivePageIndex = 3
            Align = alClient
            TabOrder = 0
            OnClick = framezwifilterblöschenClick
            OnChange = ptabellenChange
            Margin = 0
            Options = [pgAlwaysShowTabsRect, pgBoldActiveTab, pgConstantScroll, pgPageBorder, pgScrollButtons, pgTopBorder]
            ScrollMethod = smTab
            Spacing = 2
            TabHeight = 17
            object tabzwischen: TNxTabSheet
              Caption = 'Zwischenablesungen'
              PageIndex = 0
              ParentTabFont = False
              TabFont.Charset = DEFAULT_CHARSET
              TabFont.Color = 6908265
              TabFont.Height = -13
              TabFont.Name = 'Tahoma'
              TabFont.Style = []
              OnShow = tabzwischenShow
              object NxPanel1: TNxPanel
                Left = 0
                Top = 0
                Width = 1674
                Height = 676
                Align = alClient
                BorderPen.Color = 14933977
                Color = clWhite
                UseDockManager = False
                FullRepaint = True
                ParentColor = False
                TabOrder = 0
                object gridzwi: TNextDBGrid
                  Left = 0
                  Top = 113
                  Width = 1674
                  Height = 563
                  Align = alClient
                  AutoScroll = True
                  BiDiMode = bdLeftToRight
                  Caption = ''
                  HeaderSize = 23
                  InactiveSelectionColor = 4227200
                  InputSize = 23
                  Options = [goHeader, goSelectFullRow]
                  RowSize = 25
                  ParentBiDiMode = False
                  SlideSize = 30
                  TabOrder = 0
                  TabStop = True
                  OnApplyCell = gridzwiApplyCell
                  OnCellClick = gridzwiCellClick
                  OnCellColoring = gridzwiCellColoring
                  OnCellDblClick = gridzwiCellDblClick
                  OnClick = gridzwiClick
                  OnCustomDrawCell = gridzwiCustomDrawCell
                  OnHorizontalScroll = gridzwiHorizontalScroll
                  OnSortColumn = gridzwiSortColumn
                  OnVerticalScroll = gridzwiVerticalScroll
                  DataAwareOptions = [doAddColumns, doSetColumnWidth]
                  DataSource = formdb.dszwi
                  SequencedScroll = True
                  OnCellFormating = gridzwiCellFormating
                  object zwidokid: TNxDBTextColumn
                    AutoEdit = True
                    DefaultWidth = 92
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Ablagenr'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    MinWidth = 0
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    Position = 0
                    SortType = stNumeric
                    Width = 90
                    FieldName = 'ablagenr'
                    AutoExecute = True
                  end
                  object zwilg: TNxDBTextColumn
                    DefaultWidth = 119
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Liegenschaft'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    Position = 1
                    SortType = stAlphabetic
                    Width = 119
                    FieldName = 'Liegenschaft'
                  end
                  object zwinutzernummer: TNxDBTextColumn
                    DefaultWidth = 120
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Nutzernummer'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    Position = 2
                    SortType = stAlphabetic
                    Width = 120
                    FieldName = 'Nutzernummer'
                  end
                  object zwidatei: TNxDBMemoColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Dateiname'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    Position = 11
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'Dateiname'
                  end
                  object zwiposteingang: TNxDBTextColumn
                    DefaultWidth = 119
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Posteingang'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    Position = 4
                    Sorted = True
                    SortType = stDate
                    Width = 119
                    FieldName = 'Posteingang'
                  end
                  object zwiabrechnungsende: TNxDBTextColumn
                    DefaultWidth = 119
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Abrechnungsende'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    Position = 5
                    SortType = stDate
                    Width = 119
                    FieldName = 'Abrechnungsende'
                  end
                  object zwiname: TNxDBTextColumn
                    DefaultWidth = 119
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Nutzername'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    Position = 3
                    SortType = stAlphabetic
                    Width = 119
                    FieldName = 'Nutzername'
                  end
                  object NxDBTextColumn24: TNxDBTextColumn
                    DefaultWidth = 239
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Vertragsende'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    Position = 7
                    SortType = stAlphabetic
                    Width = 239
                    WrapKind = wkNone
                    FieldName = 'vertragsende'
                  end
                  object NxDBTextColumn32: TNxDBTextColumn
                    DefaultWidth = 240
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Ablesedatum'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    Position = 8
                    SortType = stAlphabetic
                    Width = 240
                    FieldName = 'ablesedatum'
                  end
                  object zwinotizen: TNxDBMemoColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    Position = 6
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'Notizen'
                  end
                  object NxDBTextColumn11: TNxDBTextColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    Position = 9
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'Ablesedatum'
                  end
                  object NxDBTextColumn12: TNxDBTextColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    Position = 10
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'erledigt'
                  end
                  object NxDBTextColumn33: TNxDBTextColumn
                    DefaultWidth = 119
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Dokumenttyp'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    Position = 12
                    SortType = stAlphabetic
                    Width = 119
                    FieldName = 'typ'
                  end
                  object NxDBTextColumn23: TNxDBTextColumn
                    DefaultWidth = 120
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Erledigt'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    Position = 13
                    SortType = stAlphabetic
                    Width = 120
                    FieldName = 'erledigt'
                  end
                  object zwivollbild: TNxDBImageColumn
                    DefaultValue = '1'
                    DefaultWidth = 119
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Einzelbildanzeige'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    ParentCellColor = True
                    Position = 14
                    SortType = stNumeric
                    Width = 119
                    OnSetCell = zwivollbildSetCell
                    Images = ImageList1
                    Transparent = True
                  end
                  object zwiimage: TNxDBImageColumn
                    DefaultValue = '0'
                    DefaultWidth = 147
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Dokument anzeigen'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    Position = 15
                    SortType = stNumeric
                    Width = 149
                    Images = ImageList1
                    Transparent = True
                  end
                end
                object Panel1: TPanel
                  Left = 0
                  Top = 0
                  Width = 1674
                  Height = 23
                  Align = alTop
                  Color = clWhite
                  ParentBackground = False
                  TabOrder = 1
                  object NxButton1: TNxButton
                    Left = 1
                    Top = 1
                    Width = 138
                    Height = 21
                    Align = alLeft
                    Caption = 'Anzeige verlassen'
                    TabOrder = 0
                    OnClick = banzeigeverlassen
                  end
                end
                inline framezwifilter: Tframebasefilter
                  Left = 0
                  Top = 23
                  Width = 1674
                  Height = 90
                  Align = alTop
                  AutoSize = True
                  TabOrder = 2
                  ExplicitTop = 23
                  ExplicitWidth = 1674
                  inherited flipwerte: TNxFlipPanel
                    Width = 1674
                    Align = alTop
                    ExplicitWidth = 1674
                    FullHeight = 18
                    inherited esellg: TfEdit
                      Left = 145
                      Top = 27
                      OnExit = framezwifilteresellgExit
                      ExplicitLeft = 145
                      ExplicitTop = 27
                    end
                    inherited eselsb: TfEdit
                      OnExit = framezwifiltereselsbExit
                    end
                    inherited eselae: TfEdit
                      OnExit = framezwifiltereselaeExit
                    end
                    inherited eseldi: TfEdit
                      OnExit = framezwifiltereseldiExit
                    end
                    inherited cselae: TfComboBox
                      OnChange = framezwifiltercselaeChange
                    end
                    inherited banwenden: TNxButton
                      OnClick = framezwifilterbanwendenClick
                    end
                    inherited blöschen: TNxButton
                      OnClick = framezwifilterblöschenClick
                    end
                    inherited eselpe: TfEdit
                      Top = 53
                      OnExit = framezwifiltereselpeExit
                      ExplicitTop = 53
                    end
                  end
                end
              end
            end
            object tabmontagen: TNxTabSheet
              Caption = 'Montagen'
              PageIndex = 1
              ParentTabFont = False
              TabFont.Charset = DEFAULT_CHARSET
              TabFont.Color = 6908265
              TabFont.Height = -13
              TabFont.Name = 'Tahoma'
              TabFont.Style = []
              OnShow = tabmontagenShow
              object NxPanel2: TNxPanel
                Left = 0
                Top = 0
                Width = 1674
                Height = 676
                Align = alClient
                BorderPen.Color = 14933977
                Color = clWhite
                UseDockManager = False
                FullRepaint = True
                ParentColor = False
                TabOrder = 0
                object gridmon: TNextDBGrid
                  Left = 0
                  Top = 113
                  Width = 1674
                  Height = 563
                  Align = alClient
                  Caption = ''
                  Options = [goHeader, goSelectFullRow]
                  RowSize = 25
                  TabOrder = 0
                  TabStop = True
                  OnApplyCell = gridzwiApplyCell
                  OnCellClick = gridzwiCellClick
                  OnCellColoring = gridzwiCellColoring
                  OnCellDblClick = gridzwiCellDblClick
                  OnSortColumn = gridzwiSortColumn
                  DataSource = formdb.dsmon
                  SequencedScroll = True
                  object mondokid: TNxDBTextColumn
                    DefaultValue = '0'
                    DefaultWidth = 125
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Ablagenr'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.MultiLine = True
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 0
                    Sorted = True
                    SortKind = skDescending
                    SortType = stNumeric
                    Width = 123
                    FieldName = 'ablagenr'
                  end
                  object monliegenschaft: TNxDBTextColumn
                    DefaultValue = '0'
                    DefaultWidth = 152
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Liegenschaft'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.MultiLine = True
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 1
                    SortType = stAlphabetic
                    Width = 152
                    FieldName = 'Liegenschaft'
                  end
                  object monnutzernummer: TNxDBTextColumn
                    DefaultValue = '0'
                    DefaultWidth = 152
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Nutzernummer'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.MultiLine = True
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 2
                    SortType = stAlphabetic
                    Width = 152
                    FieldName = 'Nutzernummer'
                  end
                  object mondatei: TNxDBMemoColumn
                    DefaultValue = '0'
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.MultiLine = True
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 4
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'Dateiname'
                  end
                  object monposteingang: TNxDBTextColumn
                    DefaultValue = '0'
                    DefaultWidth = 152
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Posteingang'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.MultiLine = True
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 3
                    SortType = stAlphabetic
                    Width = 152
                    FieldName = 'Posteingang'
                  end
                  object monabrechnungsende: TNxDBTextColumn
                    DefaultValue = '0'
                    DefaultWidth = 152
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Abrechnungsende'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.MultiLine = True
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 5
                    SortType = stAlphabetic
                    Width = 152
                    FieldName = 'Abrechnungsende'
                  end
                  object NxDBTextColumn22: TNxDBTextColumn
                    DefaultWidth = 152
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Auftragsnummer'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.MultiLine = True
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 6
                    SortType = stAlphabetic
                    Width = 152
                    FieldName = 'auftragsnr'
                  end
                  object NxDBTextColumn13: TNxDBTextColumn
                    DefaultValue = '0'
                    DefaultWidth = 152
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Montagedatum'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.MultiLine = True
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 7
                    SortType = stAlphabetic
                    Width = 152
                    FieldName = 'Einbaudatum'
                  end
                  object NxDBTextColumn14: TNxDBTextColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.MultiLine = True
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 8
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'erledigt'
                  end
                  object NxDBMemoColumn3: TNxDBMemoColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.MultiLine = True
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 9
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'Notizen'
                  end
                  object NxDBTextColumn25: TNxDBTextColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.MultiLine = True
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 10
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'erledigt'
                  end
                  object NxDBTextColumn34: TNxDBTextColumn
                    DefaultWidth = 152
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Dateityp'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.MultiLine = True
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 11
                    SortType = stAlphabetic
                    Width = 152
                    FieldName = 'typ'
                  end
                  object NxDBTextColumn26: TNxDBTextColumn
                    DefaultWidth = 152
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Erledigt'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.MultiLine = True
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 12
                    SortType = stAlphabetic
                    Width = 152
                  end
                  object NxDBImageColumn3: TNxDBImageColumn
                    DefaultValue = '0'
                    DefaultWidth = 152
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Einzelbildanzeige'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.MultiLine = True
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 13
                    SortType = stNumeric
                    Width = 152
                    Images = ImageList1
                    Transparent = True
                  end
                  object monimage: TNxDBImageColumn
                    DefaultValue = '0'
                    DefaultWidth = 179
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Dokument anzeigen'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.MultiLine = True
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 14
                    SortType = stNumeric
                    Width = 181
                    Images = ImageList1
                    Transparent = True
                  end
                end
                object Panel2: TPanel
                  Left = 0
                  Top = 0
                  Width = 1674
                  Height = 23
                  Align = alTop
                  Color = clWhite
                  ParentBackground = False
                  TabOrder = 1
                  object NxButton2: TNxButton
                    Left = 1
                    Top = 1
                    Width = 138
                    Height = 21
                    Align = alLeft
                    Caption = 'Anzeige verlassen'
                    TabOrder = 0
                    OnClick = banzeigeverlassen
                  end
                end
                inline framemonfilter: Tframebasefilter
                  Left = 0
                  Top = 23
                  Width = 1674
                  Height = 90
                  Align = alTop
                  AutoSize = True
                  TabOrder = 2
                  ExplicitTop = 23
                  ExplicitWidth = 1674
                  inherited flipwerte: TNxFlipPanel
                    Width = 1674
                    Align = alTop
                    ExplicitWidth = 1674
                    FullHeight = 18
                    inherited esellg: TfEdit
                      OnExit = framemonfilteresellgExit
                    end
                    inherited eselsb: TfEdit
                      OnExit = framemonfiltereselsbExit
                    end
                    inherited eselae: TfEdit
                      OnExit = framemonfiltereselaeExit
                    end
                    inherited eseldi: TfEdit
                      OnExit = framemonfiltereseldiExit
                    end
                    inherited banwenden: TNxButton
                      OnClick = framemonfilterbanwendenClick
                    end
                    inherited blöschen: TNxButton
                      OnClick = framezwifilterblöschenClick
                    end
                    inherited eselpe: TfEdit
                      OnExit = framemonfiltereselpeExit
                    end
                  end
                end
              end
            end
            object tabnutzerlisten: TNxTabSheet
              Caption = 'Kostenermittlungen / Nutzerlisten'
              PageIndex = 2
              ParentTabFont = False
              TabFont.Charset = DEFAULT_CHARSET
              TabFont.Color = 6908265
              TabFont.Height = -13
              TabFont.Name = 'Tahoma'
              TabFont.Style = []
              OnShow = tabnutzerlistenShow
              object NxPanel3: TNxPanel
                Left = 0
                Top = 0
                Width = 1674
                Height = 676
                Align = alClient
                BorderPen.Color = 14933977
                Color = clWhite
                UseDockManager = False
                FullRepaint = True
                ParentColor = False
                TabOrder = 0
                object gridnutzerliste: TNextDBGrid
                  Left = 0
                  Top = 113
                  Width = 1674
                  Height = 563
                  Align = alClient
                  Caption = ''
                  Options = [goHeader, goSelectFullRow]
                  RowSize = 25
                  TabOrder = 0
                  TabStop = True
                  OnApplyCell = gridzwiApplyCell
                  OnCellClick = gridzwiCellClick
                  OnCellColoring = gridzwiCellColoring
                  OnCellDblClick = gridzwiCellDblClick
                  OnSortColumn = gridzwiSortColumn
                  DataSource = formdb.dsnuliste
                  object nutdokid: TNxDBTextColumn
                    DefaultWidth = 182
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Ablagenr'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.MultiLine = True
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 0
                    Sorted = True
                    SortKind = skDescending
                    SortType = stNumeric
                    Width = 180
                    FieldName = 'ablagenr'
                  end
                  object nutliegenschaft: TNxDBTextColumn
                    DefaultWidth = 209
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Liegenschaft'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.MultiLine = True
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 1
                    SortType = stAlphabetic
                    Width = 209
                    FieldName = 'Liegenschaft'
                  end
                  object nutdatei: TNxDBMemoColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.MultiLine = True
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 3
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'Dateiname'
                  end
                  object nutposteingang: TNxDBTextColumn
                    DefaultWidth = 209
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Posteingang'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.MultiLine = True
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 2
                    SortType = stAlphabetic
                    Width = 209
                    FieldName = 'Posteingang'
                  end
                  object nutabrechnungsende: TNxDBTextColumn
                    DefaultWidth = 209
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Abrechnungsende'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.MultiLine = True
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 4
                    SortType = stAlphabetic
                    Width = 209
                    FieldName = 'abrechnungsende'
                  end
                  object NxDBMemoColumn6: TNxDBMemoColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.MultiLine = True
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 5
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'Notizen'
                  end
                  object NxDBTextColumn27: TNxDBTextColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.MultiLine = True
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 6
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'erledigt'
                  end
                  object NxDBTextColumn35: TNxDBTextColumn
                    DefaultWidth = 209
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Dateityp'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.MultiLine = True
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 7
                    SortType = stAlphabetic
                    Width = 209
                  end
                  object NxDBTextColumn28: TNxDBTextColumn
                    DefaultWidth = 209
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Erledigt'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.MultiLine = True
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 8
                    SortType = stAlphabetic
                    Width = 209
                  end
                  object NxDBImageColumn6: TNxDBImageColumn
                    DefaultValue = '0'
                    DefaultWidth = 209
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Einzelbildanzeige'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.MultiLine = True
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 9
                    SortType = stNumeric
                    Width = 209
                    Images = ImageList1
                    Transparent = True
                  end
                  object nutimage: TNxDBImageColumn
                    DefaultValue = '0'
                    DefaultWidth = 236
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Dokument anzeigen'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.MultiLine = True
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 10
                    SortType = stNumeric
                    Width = 238
                    Images = ImageList1
                    Transparent = True
                  end
                end
                object Panel3: TPanel
                  Left = 0
                  Top = 0
                  Width = 1674
                  Height = 23
                  Align = alTop
                  Color = clWhite
                  ParentBackground = False
                  TabOrder = 1
                  object NxButton3: TNxButton
                    Left = 1
                    Top = 1
                    Width = 138
                    Height = 21
                    Align = alLeft
                    Caption = 'Anzeige verlassen'
                    TabOrder = 0
                    OnClick = banzeigeverlassen
                  end
                end
                inline framemonnut: Tframebasefilter
                  Left = 0
                  Top = 23
                  Width = 1674
                  Height = 90
                  Align = alTop
                  AutoSize = True
                  TabOrder = 2
                  ExplicitTop = 23
                  ExplicitWidth = 1674
                  inherited flipwerte: TNxFlipPanel
                    Width = 1674
                    Align = alTop
                    ExplicitWidth = 1674
                    FullHeight = 18
                    inherited esellg: TfEdit
                      OnExit = framemonnutesellgExit
                    end
                    inherited eselsb: TfEdit
                      Left = 400
                      OnExit = framemonnuteselsbExit
                      ExplicitLeft = 400
                    end
                    inherited eselae: TfEdit
                      OnExit = framemonnuteselaeExit
                    end
                    inherited eseldi: TfEdit
                      OnExit = framemonnuteseldiExit
                    end
                    inherited banwenden: TNxButton
                      OnClick = framemonnutbanwendenClick
                    end
                    inherited blöschen: TNxButton
                      OnClick = framezwifilterblöschenClick
                    end
                    inherited eselpe: TfEdit
                      OnExit = framemonnuteselpeExit
                    end
                  end
                end
              end
            end
            object tabenergieausweis: TNxTabSheet
              Caption = 'Energieausweise'
              PageIndex = 3
              ParentTabFont = False
              TabFont.Charset = DEFAULT_CHARSET
              TabFont.Color = 6908265
              TabFont.Height = -13
              TabFont.Name = 'Tahoma'
              TabFont.Style = []
              OnShow = tabenergieausweisShow
              object NxPanel4: TNxPanel
                Left = 0
                Top = 0
                Width = 1674
                Height = 676
                Align = alClient
                BorderPen.Color = 14933977
                Color = clWhite
                UseDockManager = False
                FullRepaint = True
                ParentColor = False
                TabOrder = 0
                object gridenergie: TNextDBGrid
                  Left = 0
                  Top = 113
                  Width = 1674
                  Height = 563
                  Align = alClient
                  Caption = ''
                  Options = [goHeader, goSelectFullRow]
                  RowSize = 25
                  TabOrder = 0
                  TabStop = True
                  OnApplyCell = gridzwiApplyCell
                  OnCellClick = gridzwiCellClick
                  OnCellColoring = gridzwiCellColoring
                  OnCellDblClick = gridzwiCellDblClick
                  OnSortColumn = gridzwiSortColumn
                  DataSource = formdb.dsen
                  object NxDBTextColumn1: TNxDBTextColumn
                    DefaultWidth = 182
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Ablagenr'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    MinWidth = 0
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 0
                    SortKind = skDescending
                    SortType = stNumeric
                    Width = 180
                    FieldName = 'ablagenr'
                  end
                  object NxDBTextColumn2: TNxDBTextColumn
                    DefaultWidth = 209
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Liegenschaft'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 1
                    SortType = stAlphabetic
                    Width = 209
                    FieldName = 'Liegenschaft'
                  end
                  object NxDBMemoColumn1: TNxDBMemoColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Dateiname'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 3
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'Dateiname'
                  end
                  object NxDBTextColumn4: TNxDBTextColumn
                    DefaultWidth = 209
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Posteingang'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 2
                    SortType = stAlphabetic
                    Width = 209
                    FieldName = 'Posteingang'
                  end
                  object NxDBTextColumn5: TNxDBTextColumn
                    DefaultWidth = 209
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Abrechnungsende'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 4
                    Sorted = True
                    SortType = stAlphabetic
                    Width = 209
                    FieldName = 'Abrechnungsende'
                  end
                  object NxDBTextColumn15: TNxDBTextColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Strasse'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 5
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'strasse'
                  end
                  object NxDBTextColumn16: TNxDBTextColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Ort'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 6
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'ort'
                  end
                  object NxDBTextColumn17: TNxDBTextColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'PLZ'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 7
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'plz'
                  end
                  object NxDBTextColumn18: TNxDBImageColumn
                    DefaultValue = '0'
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Pseudoliegenschaft'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 8
                    SortType = stNumeric
                    Visible = False
                    Width = 140
                    FieldName = 'pseudoliegenschaft'
                    Images = ImageList1
                    Transparent = True
                  end
                  object NxDBMemoColumn4: TNxDBMemoColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Notizen'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 9
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'Notizen'
                  end
                  object NxDBTextColumn29: TNxDBTextColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'erledigt'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 10
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'erledigt'
                  end
                  object NxDBTextColumn36: TNxDBTextColumn
                    DefaultWidth = 209
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Dateityp'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 11
                    SortType = stAlphabetic
                    Width = 209
                  end
                  object NxDBTextColumn30: TNxDBTextColumn
                    DefaultWidth = 209
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Erledigt'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 12
                    SortType = stAlphabetic
                    Width = 209
                  end
                  object NxDBImageColumn5: TNxDBImageColumn
                    DefaultValue = '0'
                    DefaultWidth = 209
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Einzelbildanzeige'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 13
                    SortType = stNumeric
                    Width = 209
                    Images = ImageList1
                    Transparent = True
                  end
                  object NxDBImageColumn1: TNxDBImageColumn
                    DefaultValue = '0'
                    DefaultWidth = 236
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Dokument anzeigen'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 14
                    SortType = stNumeric
                    Width = 238
                    Images = ImageList1
                    Transparent = True
                  end
                end
                object Panel5: TPanel
                  Left = 0
                  Top = 0
                  Width = 1674
                  Height = 23
                  Align = alTop
                  Color = clWhite
                  ParentBackground = False
                  TabOrder = 1
                  object NxButton4: TNxButton
                    Left = 1
                    Top = 1
                    Width = 138
                    Height = 21
                    Align = alLeft
                    Caption = 'Anzeige verlassen'
                    TabOrder = 0
                    OnClick = banzeigeverlassen
                  end
                end
                inline frameenfilter: Tframebasefilter
                  Left = 0
                  Top = 23
                  Width = 1674
                  Height = 90
                  Align = alTop
                  AutoSize = True
                  TabOrder = 2
                  ExplicitTop = 23
                  ExplicitWidth = 1674
                  inherited flipwerte: TNxFlipPanel
                    Width = 1674
                    Align = alTop
                    ExplicitWidth = 1674
                    FullHeight = 18
                    inherited esellg: TfEdit
                      OnExit = frameenfilteresellgExit
                    end
                    inherited eselsb: TfEdit
                      OnExit = frameenfiltereselsbExit
                    end
                    inherited eselae: TfEdit
                      OnExit = frameenfiltereselaeExit
                    end
                    inherited eseldi: TfEdit
                      OnExit = frameenfiltereseldiExit
                    end
                    inherited banwenden: TNxButton
                      OnClick = frameenfilterbanwendenClick
                    end
                    inherited blöschen: TNxButton
                      OnClick = framezwifilterblöschenClick
                    end
                    inherited eselpe: TfEdit
                      OnExit = frameenfiltereselpeExit
                    end
                  end
                end
              end
            end
            object tabreklamation: TNxTabSheet
              Caption = 'Reklamation'
              PageIndex = 4
              ParentTabFont = False
              TabFont.Charset = DEFAULT_CHARSET
              TabFont.Color = 6908265
              TabFont.Height = -13
              TabFont.Name = 'Tahoma'
              TabFont.Style = []
              OnShow = tabreklamationShow
              object NxPanel5: TNxPanel
                Left = 0
                Top = 0
                Width = 1674
                Height = 676
                Align = alClient
                BorderPen.Color = 14933977
                Color = clWhite
                UseDockManager = False
                FullRepaint = True
                ParentColor = False
                TabOrder = 0
                object gridrek: TNextDBGrid
                  Left = 0
                  Top = 109
                  Width = 1674
                  Height = 567
                  Align = alClient
                  Caption = ''
                  Options = [goHeader, goSelectFullRow]
                  RowSize = 25
                  TabOrder = 0
                  TabStop = True
                  OnApplyCell = gridzwiApplyCell
                  OnCellClick = gridzwiCellClick
                  OnCellColoring = gridzwiCellColoring
                  OnCellDblClick = gridzwiCellDblClick
                  OnSortColumn = gridzwiSortColumn
                  DataSource = formdb.dsrekl
                  SequencedScroll = True
                  object NxDBTextColumn3: TNxDBTextColumn
                    DefaultWidth = 125
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Ablagenr'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coFixedSize, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 0
                    Sorted = True
                    SortKind = skDescending
                    SortType = stNumeric
                    Width = 123
                    FieldName = 'ablagenr'
                  end
                  object NxDBTextColumn6: TNxDBTextColumn
                    DefaultWidth = 152
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Liegenschaft'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coFixedSize, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 1
                    SortType = stAlphabetic
                    Width = 152
                    FieldName = 'Liegenschaft'
                  end
                  object NxDBTextColumn7: TNxDBTextColumn
                    DefaultWidth = 152
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Nutzernummer'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coFixedSize, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 2
                    SortType = stAlphabetic
                    Width = 152
                    FieldName = 'Nutzernummer'
                  end
                  object NxDBTextColumn8: TNxDBTextColumn
                    DefaultWidth = 152
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Posteingang'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coFixedSize, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 3
                    SortType = stAlphabetic
                    Width = 152
                    FieldName = 'Posteingang'
                  end
                  object NxDBTextColumn9: TNxDBTextColumn
                    DefaultWidth = 152
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Abrechnungsende'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coFixedSize, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 4
                    SortType = stAlphabetic
                    Width = 152
                    FieldName = 'Abrechnungsende'
                  end
                  object NxDBTextColumn19: TNxDBTextColumn
                    DefaultWidth = 152
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Auftragsnummer'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coFixedSize, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 5
                    SortType = stAlphabetic
                    Width = 152
                    FieldName = 'auftragsnr'
                  end
                  object NxDBMemoColumn5: TNxDBMemoColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coFixedSize, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 6
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'notizen'
                  end
                  object NxDBTextColumn20: TNxDBTextColumn
                    DefaultWidth = 152
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coFixedSize, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 7
                    SortType = stAlphabetic
                    Width = 152
                    FieldName = 'einbaudatum'
                  end
                  object NxDBTextColumn21: TNxDBTextColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coFixedSize, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 8
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'erledigt'
                  end
                  object NxDBMemoColumn7: TNxDBMemoColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coFixedSize, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 9
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'dateiname'
                  end
                  object NxDBTextColumn37: TNxDBTextColumn
                    DefaultWidth = 152
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Dateityp'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coFixedSize, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 10
                    SortType = stAlphabetic
                    Width = 152
                  end
                  object NxDBTextColumn31: TNxDBTextColumn
                    DefaultWidth = 152
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Erledigt'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coFixedSize, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 11
                    SortType = stAlphabetic
                    Width = 152
                  end
                  object NxDBImageColumn4: TNxDBImageColumn
                    DefaultValue = '0'
                    DefaultWidth = 152
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Einzelbildanzeige'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    InplaceEdit = frameauf.cbselectauftrag
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coFixedSize, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 12
                    SortType = stNumeric
                    Width = 152
                    Images = ImageList1
                    Transparent = True
                  end
                  object NxDBImageColumn2: TNxDBImageColumn
                    DefaultValue = '0'
                    DefaultWidth = 179
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Dokument anzeigen'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coFixedSize, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 13
                    SortType = stNumeric
                    Width = 181
                    Images = ImageList1
                    Transparent = True
                  end
                end
                object Panel6: TPanel
                  Left = 0
                  Top = 0
                  Width = 1674
                  Height = 23
                  Align = alTop
                  Color = clWhite
                  ParentBackground = False
                  TabOrder = 1
                  object NxButton5: TNxButton
                    Left = 1
                    Top = 1
                    Width = 138
                    Height = 21
                    Align = alLeft
                    Caption = 'Anzeige verlassen'
                    TabOrder = 0
                    OnClick = banzeigeverlassen
                  end
                end
                inline framefilterreklamation: Tframebasefilter
                  Left = 0
                  Top = 23
                  Width = 1674
                  Height = 86
                  Align = alTop
                  AutoSize = True
                  TabOrder = 2
                  ExplicitTop = 23
                  ExplicitWidth = 1674
                  ExplicitHeight = 86
                  inherited flipwerte: TNxFlipPanel
                    Left = 2
                    Width = 1687
                    Height = 86
                    ExplicitLeft = 2
                    ExplicitWidth = 1687
                    ExplicitHeight = 86
                    FullHeight = 150
                    inherited esellg: TfEdit
                      OnExit = framefilterreklamationesellgExit
                    end
                    inherited eselsb: TfEdit
                      OnExit = framefilterreklamationeselsbExit
                    end
                    inherited eselae: TfEdit
                      OnExit = framefilterreklamationeselaeExit
                    end
                    inherited eseldi: TfEdit
                      OnExit = framefilterreklamationeseldiExit
                    end
                    inherited banwenden: TNxButton
                      OnClick = framefilterreklamationbanwendenClick
                    end
                    inherited blöschen: TNxButton
                      OnClick = framezwifilterblöschenClick
                    end
                    inherited eselpe: TfEdit
                      OnExit = framefilterreklamationeselpeExit
                    end
                  end
                end
              end
            end
            object tabvertrag: TNxTabSheet
              Caption = 'Vertr'#228'ge'
              PageIndex = 5
              ParentTabFont = False
              TabFont.Charset = DEFAULT_CHARSET
              TabFont.Color = 6908265
              TabFont.Height = -13
              TabFont.Name = 'Tahoma'
              TabFont.Style = []
              OnShow = tabvertragShow
              object NxPanel9: TNxPanel
                Left = 0
                Top = 0
                Width = 1674
                Height = 676
                Align = alClient
                Caption = 'NxPanel9'
                UseDockManager = False
                TabOrder = 0
                object gridverträge: TNextDBGrid
                  Left = 0
                  Top = 90
                  Width = 1674
                  Height = 586
                  Align = alClient
                  AutoScroll = True
                  BiDiMode = bdLeftToRight
                  Caption = ''
                  HeaderSize = 23
                  InactiveSelectionColor = 4227200
                  InputSize = 23
                  Options = [goHeader, goSelectFullRow]
                  RowSize = 25
                  ParentBiDiMode = False
                  SlideSize = 30
                  TabOrder = 0
                  TabStop = True
                  OnApplyCell = gridzwiApplyCell
                  OnCellClick = gridzwiCellClick
                  OnCellColoring = gridzwiCellColoring
                  OnCellDblClick = gridzwiCellDblClick
                  OnClick = gridzwiClick
                  OnCustomDrawCell = gridzwiCustomDrawCell
                  OnHorizontalScroll = gridzwiHorizontalScroll
                  OnSortColumn = gridzwiSortColumn
                  OnVerticalScroll = gridzwiVerticalScroll
                  DataAwareOptions = [doAddColumns, doSetColumnWidth]
                  DataSource = formdb.dsvert
                  SequencedScroll = True
                  OnCellFormating = gridzwiCellFormating
                  object NxDBTextColumn10: TNxDBTextColumn
                    AutoEdit = True
                    DefaultWidth = 101
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Ablagenr'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    MinWidth = 0
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    Position = 0
                    SortType = stNumeric
                    Width = 99
                    FieldName = 'ablagenr'
                    AutoExecute = True
                  end
                  object NxDBTextColumn38: TNxDBTextColumn
                    DefaultWidth = 129
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Liegenschaft'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    Position = 1
                    SortType = stAlphabetic
                    Width = 129
                    FieldName = 'Liegenschaft'
                  end
                  object NxDBMemoColumn2: TNxDBMemoColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Dateiname'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    Position = 3
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'Dateiname'
                  end
                  object NxDBTextColumn40: TNxDBTextColumn
                    DefaultWidth = 128
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Posteingang'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    Position = 2
                    Sorted = True
                    SortType = stDate
                    Width = 128
                    FieldName = 'Posteingang'
                  end
                  object NxDBTextColumn41: TNxDBTextColumn
                    DefaultWidth = 171
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Abrechnungsende'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    Position = 5
                    SortType = stDate
                    Width = 171
                    FieldName = 'Abrechnungsende'
                  end
                  object NxDBTextColumn43: TNxDBTextColumn
                    DefaultWidth = 172
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Vertragsende'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    Position = 6
                    SortType = stAlphabetic
                    Width = 172
                    WrapKind = wkNone
                    FieldName = 'vertragsende'
                  end
                  object NxDBTextColumn44: TNxDBTextColumn
                    DefaultWidth = 172
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Ablesedatum'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    Position = 7
                    SortType = stAlphabetic
                    Width = 172
                    FieldName = 'ablesedatum'
                  end
                  object NxDBMemoColumn8: TNxDBMemoColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    Position = 4
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'Notizen'
                  end
                  object NxDBTextColumn45: TNxDBTextColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    Position = 8
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'Ablesedatum'
                  end
                  object NxDBTextColumn46: TNxDBTextColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    Position = 9
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'erledigt'
                  end
                  object NxDBTextColumn39: TNxDBTextColumn
                    DefaultWidth = 128
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    Position = 10
                    SortType = stAlphabetic
                    Width = 128
                    FieldName = 'nutzernummer'
                  end
                  object NxDBTextColumn59: TNxDBTextColumn
                    DefaultWidth = 129
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    Position = 11
                    SortType = stAlphabetic
                    Width = 129
                    FieldName = 'vertragstyp'
                  end
                  object NxDBTextColumn48: TNxDBTextColumn
                    DefaultWidth = 129
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Dokumenttyp'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    Position = 12
                    SortType = stAlphabetic
                    Width = 129
                    FieldName = 'typ'
                  end
                  object NxDBTextColumn47: TNxDBTextColumn
                    DefaultWidth = 128
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Erledigt'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    Position = 13
                    SortType = stAlphabetic
                    Width = 128
                    FieldName = 'erledigt'
                  end
                  object NxDBImageColumn9: TNxDBImageColumn
                    DefaultValue = '1'
                    DefaultWidth = 129
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Einzelbildanzeige'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    ParentCellColor = True
                    Position = 14
                    SortType = stNumeric
                    Width = 129
                    OnSetCell = zwivollbildSetCell
                    Images = ImageList1
                    Transparent = True
                  end
                  object NxDBImageColumn8: TNxDBImageColumn
                    DefaultValue = '0'
                    DefaultWidth = 156
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Dokument anzeigen'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing]
                    ParentFont = False
                    Position = 15
                    SortType = stNumeric
                    Width = 158
                    Images = ImageList1
                    Transparent = True
                  end
                end
                inline framebasefilter1: Tframebasefilter
                  Left = 0
                  Top = 0
                  Width = 1674
                  Height = 90
                  Align = alTop
                  AutoSize = True
                  TabOrder = 1
                  ExplicitWidth = 1674
                  inherited flipwerte: TNxFlipPanel
                    Width = 1674
                    Align = alTop
                    ExplicitWidth = 1674
                    FullHeight = 18
                    inherited esellg: TfEdit
                      OnExit = framebasefilter1esellgExit
                    end
                    inherited eselsb: TfEdit
                      OnExit = framebasefilter1eselsbExit
                    end
                    inherited eselae: TfEdit
                      OnExit = framebasefilter1eselaeExit
                    end
                    inherited eseldi: TfEdit
                      OnExit = framebasefilter1eseldiExit
                    end
                    inherited blöschen: TNxButton
                      OnClick = framezwifilterblöschenClick
                    end
                    inherited eselpe: TfEdit
                      OnExit = framebasefilter1eselpeExit
                    end
                  end
                end
              end
            end
            object tabsonstiges: TNxTabSheet
              Caption = 'Sonstiges'
              PageIndex = 6
              ParentTabFont = False
              TabFont.Charset = DEFAULT_CHARSET
              TabFont.Color = 6908265
              TabFont.Height = -13
              TabFont.Name = 'Tahoma'
              TabFont.Style = []
              OnShow = tabsonstigesShow
              object NxPanel6: TNxPanel
                Left = 0
                Top = 0
                Width = 1674
                Height = 676
                Align = alClient
                BorderPen.Color = 14933977
                Color = clWhite
                UseDockManager = False
                FullRepaint = True
                ParentColor = False
                TabOrder = 0
                object gridsonstiges: TNextDBGrid
                  Left = 0
                  Top = 113
                  Width = 1674
                  Height = 563
                  Align = alClient
                  Caption = ''
                  Options = [goHeader, goSelectFullRow]
                  RowSize = 25
                  TabOrder = 0
                  TabStop = True
                  OnApplyCell = gridzwiApplyCell
                  OnCellClick = gridzwiCellClick
                  OnCellColoring = gridzwiCellColoring
                  OnCellDblClick = gridzwiCellDblClick
                  OnSortColumn = gridzwiSortColumn
                  DataSource = formdb.dssonstige
                  object NxDBTextColumn42: TNxDBTextColumn
                    DefaultWidth = 157
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Ablagenr'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    MinWidth = 0
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 0
                    SortKind = skDescending
                    SortType = stNumeric
                    Width = 155
                    FieldName = 'ablagenr'
                  end
                  object NxDBTextColumn49: TNxDBTextColumn
                    DefaultWidth = 184
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Liegenschaft'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 1
                    SortType = stAlphabetic
                    Width = 184
                    FieldName = 'Liegenschaft'
                  end
                  object NxDBMemoColumn9: TNxDBMemoColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 4
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'Dateiname'
                  end
                  object NxDBTextColumn58: TNxDBTextColumn
                    DefaultWidth = 199
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 3
                    SortType = stAlphabetic
                    Width = 199
                    FieldName = 'nutzernummer'
                  end
                  object NxDBTextColumn50: TNxDBTextColumn
                    DefaultWidth = 184
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Posteingang'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 2
                    SortType = stAlphabetic
                    Width = 184
                    FieldName = 'Posteingang'
                  end
                  object NxDBTextColumn51: TNxDBTextColumn
                    DefaultWidth = 184
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Abrechnungsende'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 5
                    Sorted = True
                    SortType = stAlphabetic
                    Width = 184
                    FieldName = 'Abrechnungsende'
                  end
                  object NxDBTextColumn52: TNxDBTextColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 6
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'Strasse'
                  end
                  object NxDBTextColumn53: TNxDBTextColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 7
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'Ort'
                  end
                  object NxDBTextColumn54: TNxDBTextColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 8
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'PLZ'
                  end
                  object NxDBImageColumn10: TNxDBImageColumn
                    DefaultValue = '0'
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 9
                    SortType = stNumeric
                    Visible = False
                    Width = 140
                    FieldName = 'pseudoliegenschaft'
                    Images = ImageList1
                    Transparent = True
                  end
                  object NxDBMemoColumn10: TNxDBMemoColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 10
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'Notizen'
                  end
                  object NxDBTextColumn55: TNxDBTextColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 11
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'erledigt'
                  end
                  object NxDBTextColumn57: TNxDBTextColumn
                    DefaultWidth = 184
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Dateityp'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 12
                    SortType = stAlphabetic
                    Width = 184
                  end
                  object NxDBTextColumn56: TNxDBTextColumn
                    DefaultWidth = 184
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Erledigt'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 13
                    SortType = stAlphabetic
                    Width = 184
                  end
                  object NxDBImageColumn12: TNxDBImageColumn
                    DefaultValue = '0'
                    DefaultWidth = 184
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Einzelbildanzeige'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 14
                    SortType = stNumeric
                    Width = 184
                    Images = ImageList1
                    Transparent = True
                  end
                  object NxDBImageColumn11: TNxDBImageColumn
                    DefaultValue = '0'
                    DefaultWidth = 212
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Dokument anzeigen'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 15
                    SortType = stNumeric
                    Width = 214
                    Images = ImageList1
                    Transparent = True
                  end
                end
                object Panel7: TPanel
                  Left = 0
                  Top = 0
                  Width = 1674
                  Height = 23
                  Align = alTop
                  Color = clWhite
                  ParentBackground = False
                  TabOrder = 1
                  object NxButton6: TNxButton
                    Left = 1
                    Top = 1
                    Width = 138
                    Height = 21
                    Align = alLeft
                    Caption = 'Anzeige verlassen'
                    TabOrder = 0
                    OnClick = banzeigeverlassen
                  end
                end
                inline filtersonstiges: Tframebasefilter
                  Left = 0
                  Top = 23
                  Width = 1674
                  Height = 90
                  Align = alTop
                  AutoSize = True
                  TabOrder = 2
                  ExplicitTop = 23
                  ExplicitWidth = 1674
                  inherited flipwerte: TNxFlipPanel
                    Width = 1674
                    Align = alTop
                    ExplicitWidth = 1674
                    FullHeight = 18
                    inherited esellg: TfEdit
                      OnExit = filtersonstigesesellgExit
                    end
                    inherited eselsb: TfEdit
                      OnExit = filtersonstigeseselsbExit
                    end
                    inherited eselae: TfEdit
                      OnExit = filtersonstigeseselaeExit
                    end
                    inherited eseldi: TfEdit
                      OnExit = filtersonstigeseseldiExit
                    end
                    inherited blöschen: TNxButton
                      OnClick = framezwifilterblöschenClick
                    end
                    inherited eselpe: TfEdit
                      OnExit = filtersonstigeseselpeExit
                    end
                  end
                end
              end
            end
            object tabauftragsanforderung: TNxTabSheet
              Caption = 'Auftragsanforderungen'
              PageIndex = 7
              ParentTabFont = False
              TabFont.Charset = DEFAULT_CHARSET
              TabFont.Color = 6908265
              TabFont.Height = -13
              TabFont.Name = 'Tahoma'
              TabFont.Style = []
              OnShow = tabauftragsanforderungShow
              object NxPanel7: TNxPanel
                Left = 0
                Top = 0
                Width = 1674
                Height = 676
                Align = alClient
                BorderPen.Color = 14933977
                Color = clWhite
                UseDockManager = False
                FullRepaint = True
                ParentColor = False
                TabOrder = 0
                object gridanforderungen: TNextDBGrid
                  Left = 0
                  Top = 113
                  Width = 1674
                  Height = 563
                  Align = alClient
                  Caption = ''
                  Options = [goHeader, goSelectFullRow]
                  RowSize = 25
                  TabOrder = 0
                  TabStop = True
                  OnApplyCell = gridzwiApplyCell
                  OnCellClick = gridzwiCellClick
                  OnCellColoring = gridzwiCellColoring
                  OnCellDblClick = gridzwiCellDblClick
                  OnSortColumn = gridzwiSortColumn
                  DataSource = formdb.dsanforderungen
                  object NxDBTextColumn60: TNxDBTextColumn
                    DefaultWidth = 139
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Ablagenr'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    MinWidth = 0
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 0
                    SortKind = skDescending
                    SortType = stNumeric
                    Width = 137
                    FieldName = 'ablagenr'
                  end
                  object NxDBTextColumn61: TNxDBTextColumn
                    DefaultWidth = 166
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Liegenschaft'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 1
                    SortType = stAlphabetic
                    Width = 166
                    FieldName = 'Liegenschaft'
                  end
                  object NxDBMemoColumn11: TNxDBMemoColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 4
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'Dateiname'
                  end
                  object NxDBTextColumn62: TNxDBTextColumn
                    DefaultWidth = 174
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 3
                    SortType = stAlphabetic
                    Width = 174
                    FieldName = 'nutzernummer'
                  end
                  object NxDBTextColumn63: TNxDBTextColumn
                    DefaultWidth = 167
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Posteingang'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 2
                    SortType = stAlphabetic
                    Width = 167
                    FieldName = 'Posteingang'
                  end
                  object NxDBTextColumn64: TNxDBTextColumn
                    DefaultWidth = 168
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Abrechnungsende'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 5
                    Sorted = True
                    SortType = stAlphabetic
                    Width = 168
                    FieldName = 'Abrechnungsende'
                  end
                  object NxDBTextColumn65: TNxDBTextColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 6
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'Strasse'
                  end
                  object NxDBTextColumn66: TNxDBTextColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 7
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'Ort'
                  end
                  object NxDBTextColumn67: TNxDBTextColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 8
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'PLZ'
                  end
                  object NxDBImageColumn13: TNxDBImageColumn
                    DefaultValue = '0'
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 9
                    SortType = stNumeric
                    Visible = False
                    Width = 140
                    FieldName = 'pseudoliegenschaft'
                    Images = ImageList1
                    Transparent = False
                  end
                  object NxDBMemoColumn12: TNxDBMemoColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 10
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'Notizen'
                  end
                  object NxDBTextColumn68: TNxDBTextColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 11
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'erledigt'
                  end
                  object NxDBTextColumn82: TNxDBTextColumn
                    DefaultWidth = 165
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Auftragstyp'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 12
                    SortType = stAlphabetic
                    Width = 165
                    FieldName = 'auftragstyp'
                  end
                  object NxDBTextColumn70: TNxDBTextColumn
                    DefaultWidth = 166
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Dateityp'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 13
                    SortType = stAlphabetic
                    Width = 166
                  end
                  object NxDBTextColumn69: TNxDBTextColumn
                    DefaultWidth = 167
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Erledigt'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 14
                    SortType = stAlphabetic
                    Width = 167
                  end
                  object NxDBImageColumn14: TNxDBImageColumn
                    DefaultValue = '0'
                    DefaultWidth = 166
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Einzelbildanzeige'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 15
                    SortType = stNumeric
                    Width = 166
                    Images = ImageList1
                    Transparent = True
                  end
                  object NxDBImageColumn15: TNxDBImageColumn
                    DefaultValue = '0'
                    DefaultWidth = 194
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Dokument anzeigen'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 16
                    SortType = stNumeric
                    Width = 196
                    Images = ImageList1
                    Transparent = True
                  end
                end
                object Panel8: TPanel
                  Left = 0
                  Top = 0
                  Width = 1674
                  Height = 23
                  Align = alTop
                  Color = clWhite
                  ParentBackground = False
                  TabOrder = 1
                  OnClick = Panel8Click
                  object NxButton7: TNxButton
                    Left = 1
                    Top = 1
                    Width = 138
                    Height = 21
                    Align = alLeft
                    Caption = 'Anzeige verlassen'
                    TabOrder = 0
                    OnClick = banzeigeverlassen
                  end
                end
                inline filterauftragsanf: Tframebasefilter
                  Left = 0
                  Top = 23
                  Width = 1674
                  Height = 90
                  Align = alTop
                  AutoSize = True
                  TabOrder = 2
                  ExplicitTop = 23
                  ExplicitWidth = 1674
                  inherited flipwerte: TNxFlipPanel
                    Width = 1674
                    Align = alTop
                    ExplicitWidth = 1674
                    FullHeight = 18
                    inherited esellg: TfEdit
                      OnExit = frameauftragsanfesellgExit
                    end
                    inherited eselsb: TfEdit
                      OnExit = frameauftragsanfeselsbExit
                    end
                    inherited eselae: TfEdit
                      OnExit = frameauftragsanfeselaeExit
                    end
                    inherited eseldi: TfEdit
                      OnExit = frameauftragsanfeseldiExit
                    end
                    inherited blöschen: TNxButton
                      OnClick = framezwifilterblöschenClick
                    end
                    inherited eselpe: TfEdit
                      OnExit = frameauftragsanfeselpeExit
                    end
                  end
                end
              end
            end
            object tabangebotsanfrage: TNxTabSheet
              Caption = 'Angebotsanfragen'
              PageIndex = 8
              ParentTabFont = False
              TabFont.Charset = DEFAULT_CHARSET
              TabFont.Color = 6908265
              TabFont.Height = -13
              TabFont.Name = 'Tahoma'
              TabFont.Style = []
              OnShow = tabangebotsanfrageShow
              object NxPanel8: TNxPanel
                Left = 0
                Top = 0
                Width = 1674
                Height = 676
                Align = alClient
                BorderPen.Color = 14933977
                Color = clWhite
                UseDockManager = False
                FullRepaint = True
                ParentColor = False
                TabOrder = 0
                object gridangebote: TNextDBGrid
                  Left = 0
                  Top = 113
                  Width = 1674
                  Height = 563
                  Align = alClient
                  Caption = ''
                  Options = [goHeader, goSelectFullRow]
                  RowSize = 25
                  TabOrder = 0
                  TabStop = True
                  OnApplyCell = gridzwiApplyCell
                  OnCellClick = gridzwiCellClick
                  OnCellColoring = gridzwiCellColoring
                  OnCellDblClick = gridzwiCellDblClick
                  OnSortColumn = gridzwiSortColumn
                  DataSource = formdb.dsangebote
                  object NxDBTextColumn71: TNxDBTextColumn
                    DefaultWidth = 157
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Ablagenr'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.MultiLine = True
                    MinWidth = 0
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 0
                    SortKind = skDescending
                    SortType = stNumeric
                    Width = 155
                    FieldName = 'ablagenr'
                  end
                  object NxDBTextColumn72: TNxDBTextColumn
                    DefaultWidth = 184
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Liegenschaft'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.MultiLine = True
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 1
                    SortType = stAlphabetic
                    Width = 184
                    FieldName = 'Liegenschaft'
                  end
                  object NxDBMemoColumn13: TNxDBMemoColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.MultiLine = True
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 4
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'Dateiname'
                  end
                  object NxDBTextColumn73: TNxDBTextColumn
                    DefaultWidth = 199
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 3
                    SortType = stAlphabetic
                    Width = 199
                    FieldName = 'nutzernummer'
                  end
                  object NxDBTextColumn74: TNxDBTextColumn
                    DefaultWidth = 184
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Posteingang'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.MultiLine = True
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 2
                    SortType = stAlphabetic
                    Width = 184
                    FieldName = 'Posteingang'
                  end
                  object NxDBTextColumn75: TNxDBTextColumn
                    DefaultWidth = 184
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Abrechnungsende'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.HideArrow = False
                    Header.MultiLine = True
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 5
                    Sorted = True
                    SortType = stAlphabetic
                    Width = 184
                    FieldName = 'Abrechnungsende'
                  end
                  object NxDBTextColumn76: TNxDBTextColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 6
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'Strasse'
                  end
                  object NxDBTextColumn77: TNxDBTextColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 7
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'Ort'
                  end
                  object NxDBTextColumn78: TNxDBTextColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 8
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'PLZ'
                  end
                  object NxDBImageColumn16: TNxDBImageColumn
                    DefaultValue = '0'
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 9
                    SortType = stNumeric
                    Visible = False
                    Width = 140
                    FieldName = 'pseudoliegenschaft'
                    Images = ImageList1
                    Transparent = False
                  end
                  object NxDBMemoColumn14: TNxDBMemoColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 10
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'Notizen'
                  end
                  object NxDBTextColumn79: TNxDBTextColumn
                    DefaultWidth = 140
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 11
                    SortType = stAlphabetic
                    Visible = False
                    Width = 140
                    FieldName = 'erledigt'
                  end
                  object NxDBTextColumn81: TNxDBTextColumn
                    DefaultWidth = 184
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Dateityp'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 12
                    SortType = stAlphabetic
                    Width = 184
                  end
                  object NxDBTextColumn80: TNxDBTextColumn
                    DefaultWidth = 184
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Erledigt'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 13
                    SortType = stAlphabetic
                    Width = 184
                  end
                  object NxDBImageColumn17: TNxDBImageColumn
                    DefaultValue = '0'
                    DefaultWidth = 184
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Einzelbildanzeige'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 14
                    SortType = stNumeric
                    Width = 184
                    Images = ImageList1
                    Transparent = True
                  end
                  object NxDBImageColumn18: TNxDBImageColumn
                    DefaultValue = '0'
                    DefaultWidth = 212
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 6908265
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Color = clWhite
                    Header.Caption = 'Dokument anzeigen'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWindowText
                    Header.Font.Height = -11
                    Header.Font.Name = 'Tahoma'
                    Header.Font.Style = []
                    Header.MultiLine = True
                    Options = [coAutoSize, coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 15
                    SortType = stNumeric
                    Width = 214
                    Images = ImageList1
                    Transparent = True
                  end
                end
                object Panel10: TPanel
                  Left = 0
                  Top = 0
                  Width = 1674
                  Height = 23
                  Align = alTop
                  Color = clWhite
                  ParentBackground = False
                  TabOrder = 1
                  OnClick = Panel8Click
                  object NxButton8: TNxButton
                    Left = 1
                    Top = 1
                    Width = 138
                    Height = 21
                    Align = alLeft
                    Caption = 'Anzeige verlassen'
                    TabOrder = 0
                    OnClick = banzeigeverlassen
                  end
                end
                inline filterangebot: Tframebasefilter
                  Left = 0
                  Top = 23
                  Width = 1674
                  Height = 90
                  Align = alTop
                  AutoSize = True
                  TabOrder = 2
                  ExplicitTop = 23
                  ExplicitWidth = 1674
                  inherited flipwerte: TNxFlipPanel
                    Width = 1674
                    Align = alTop
                    ExplicitWidth = 1674
                    FullHeight = 18
                    inherited esellg: TfEdit
                      OnExit = filterangebotesellgExit
                    end
                    inherited eselsb: TfEdit
                      OnExit = filterangeboteselsbExit
                    end
                    inherited eselae: TfEdit
                      OnExit = filterangeboteselaeExit
                    end
                    inherited eseldi: TfEdit
                      OnExit = filterangeboteseldiExit
                    end
                    inherited blöschen: TNxButton
                      OnClick = framezwifilterblöschenClick
                    end
                    inherited eselpe: TfEdit
                      OnExit = filterangeboteselpeExit
                    end
                  end
                end
              end
            end
            object leer2: TNxTabSheet
              Caption = ''
              PageIndex = 9
              ParentTabFont = False
              TabFont.Charset = DEFAULT_CHARSET
              TabFont.Color = 6908265
              TabFont.Height = -13
              TabFont.Name = 'Tahoma'
              TabFont.Style = []
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 1676
              ExplicitHeight = 677
            end
          end
        end
        object tabvollbild: TNxTabSheet
          Caption = 'Volbild'
          PageIndex = 2
          ParentTabFont = False
          TabFont.Charset = DEFAULT_CHARSET
          TabFont.Color = 6908265
          TabFont.Height = -13
          TabFont.Name = 'Tahoma'
          TabFont.Style = []
          object Panel9: TPanel
            Left = 0
            Top = 0
            Width = 1676
            Height = 41
            Align = alTop
            TabOrder = 0
            object NxGlyphButton1: TNxGlyphButton
              Left = 11
              Top = 12
              Width = 75
              Height = 23
              Caption = 'zur'#252'ck'
              Margin = 2
              Visible = False
              OnClick = NxGlyphButton1Click
            end
            object NxGlyphButton2: TNxGlyphButton
              Left = 92
              Top = 12
              Width = 75
              Height = 23
              Caption = 'vor'
              Margin = 2
              Visible = False
              OnClick = NxGlyphButton2Click
            end
            object NxGlyphButton3: TNxGlyphButton
              Left = 497
              Top = 12
              Width = 200
              Height = 23
              Caption = 'zur Listenansicht zur'#252'ckkehren'
              Margin = 2
              OnClick = NxGlyphButton3Click
            end
            object UpDown1: TUpDown
              Left = 14
              Top = 18
              Width = 270
              Height = 17
              Orientation = udHorizontal
              TabOrder = 3
              OnClick = UpDown1Click
            end
          end
          object pvollbilder: TNxPageControl
            Left = 0
            Top = 41
            Width = 1676
            Height = 657
            ActivePage = tabvollangebot
            ActivePageIndex = 8
            Align = alClient
            TabOrder = 1
            Margin = 0
            Spacing = 0
            TabHeight = 17
            object tabvollzwischen: TNxTabSheet
              Caption = 'Vollbild Zwischenablesung'
              PageIndex = 0
              ParentTabFont = False
              TabFont.Charset = DEFAULT_CHARSET
              TabFont.Color = 6908265
              TabFont.Height = -13
              TabFont.Name = 'Tahoma'
              TabFont.Style = []
              ExplicitTop = 0
              inline vollzwischen: Tframezwischen
                Left = 0
                Top = 0
                Width = 1676
                Height = 636
                Align = alClient
                TabOrder = 0
                ExplicitWidth = 1676
                ExplicitHeight = 636
                inherited gridpanel: TGridPanel
                  Width = 1676
                  Height = 636
                  ColumnCollection = <
                    item
                      Value = 49.992977960806520000
                    end
                    item
                      Value = 50.007022039193480000
                    end>
                  ControlCollection = <
                    item
                      Column = 0
                      Control = vollzwischen.Panel5
                      Row = 0
                    end
                    item
                      Column = 1
                      Control = vollzwischen.rightparent
                      Row = 0
                    end>
                  ExplicitWidth = 1676
                  ExplicitHeight = 636
                  inherited Panel5: TPanel
                    ExplicitWidth = 831
                    ExplicitHeight = 628
                    inherited lfiletype: TLabel
                      Height = 587
                    end
                    inherited Label45: TLabel
                      Width = 102
                      Height = 16
                      ExplicitWidth = 102
                      ExplicitHeight = 16
                    end
                    inherited Label46: TLabel
                      Width = 69
                      Height = 16
                      ExplicitWidth = 69
                      ExplicitHeight = 16
                    end
                    inherited Label47: TLabel
                      Width = 71
                      Height = 16
                      ExplicitWidth = 71
                      ExplicitHeight = 16
                    end
                    inherited Label48: TLabel
                      Width = 87
                      Height = 16
                      ExplicitWidth = 87
                      ExplicitHeight = 16
                    end
                    inherited Label29: TLabel
                      Width = 42
                      Height = 16
                      ExplicitWidth = 42
                      ExplicitHeight = 16
                    end
                    inherited Label2: TLabel
                      Width = 69
                      Height = 16
                      ExplicitWidth = 69
                      ExplicitHeight = 16
                    end
                    inherited Label3: TLabel
                      Width = 74
                      Height = 16
                      ExplicitWidth = 74
                      ExplicitHeight = 16
                    end
                    inherited Label4: TLabel
                      Width = 73
                      Height = 16
                      ExplicitWidth = 73
                      ExplicitHeight = 16
                    end
                    inherited Label5: TLabel
                      Width = 85
                      Height = 16
                      ExplicitWidth = 85
                      ExplicitHeight = 16
                    end
                    inherited bsave: TNxButton
                      Caption = 'Dokument anzeigen'
                      OnClick = vollzwischenbsaveClick
                    end
                    inherited pinfo: TPanel
                      inherited labelinfo: TLabel
                        Width = 99
                        Height = 16
                        Font.Height = -13
                        ExplicitWidth = 99
                        ExplicitHeight = 16
                      end
                    end
                  end
                  inherited rightparent: TPanel
                    ExplicitLeft = 841
                    ExplicitWidth = 833
                    ExplicitHeight = 628
                  end
                end
                inherited NxButton2: TNxButton
                  Visible = False
                end
              end
            end
            object tabvollmontage: TNxTabSheet
              Caption = 'Vollbild Montage'
              PageIndex = 1
              ParentTabFont = False
              TabFont.Charset = DEFAULT_CHARSET
              TabFont.Color = 6908265
              TabFont.Height = -13
              TabFont.Name = 'Tahoma'
              TabFont.Style = []
              ExplicitTop = 0
              inline vollmont: Tframereklmont
                Left = 0
                Top = 0
                Width = 1676
                Height = 636
                Align = alClient
                TabOrder = 0
                ExplicitWidth = 1676
                ExplicitHeight = 636
                inherited gridpanel: TGridPanel
                  Width = 1676
                  Height = 636
                  ControlCollection = <
                    item
                      Column = 0
                      Control = vollmont.Panel5
                      Row = 0
                    end
                    item
                      Column = 1
                      Control = vollmont.rightparent
                      Row = 0
                    end>
                  ExplicitWidth = 1676
                  ExplicitHeight = 636
                  inherited Panel5: TPanel
                    ExplicitWidth = 832
                    ExplicitHeight = 628
                    inherited lfiletype: TLabel
                      Height = 587
                    end
                    inherited Label45: TLabel
                      Width = 102
                      Height = 16
                      ExplicitWidth = 102
                      ExplicitHeight = 16
                    end
                    inherited Label46: TLabel
                      Width = 69
                      Height = 16
                      ExplicitWidth = 69
                      ExplicitHeight = 16
                    end
                    inherited Label47: TLabel
                      Width = 71
                      Height = 16
                      ExplicitWidth = 71
                      ExplicitHeight = 16
                    end
                    inherited Label48: TLabel
                      Width = 87
                      Height = 16
                      ExplicitWidth = 87
                      ExplicitHeight = 16
                    end
                    inherited Label29: TLabel
                      Width = 42
                      Height = 16
                      ExplicitWidth = 42
                      ExplicitHeight = 16
                    end
                    inherited Label7: TLabel
                      Width = 96
                      Height = 16
                      ExplicitWidth = 96
                      ExplicitHeight = 16
                    end
                    inherited Label34: TLabel
                      Width = 85
                      Height = 16
                      ExplicitWidth = 85
                      ExplicitHeight = 16
                    end
                    inherited Label26: TLabel
                      Width = 36
                      Height = 16
                      ExplicitWidth = 36
                      ExplicitHeight = 16
                    end
                    inherited Label5: TLabel
                      Width = 85
                      Height = 16
                      ExplicitWidth = 85
                      ExplicitHeight = 16
                    end
                    inherited bsave: TNxButton
                      Caption = 'Dokument anzeigen'
                      OnClick = vollzwischenbsaveClick
                    end
                    inherited pinfo: TPanel
                      inherited labelinfo: TLabel
                        Width = 99
                        Height = 16
                        Font.Height = -13
                        ExplicitWidth = 99
                        ExplicitHeight = 16
                      end
                    end
                  end
                  inherited rightparent: TPanel
                    ExplicitLeft = 842
                    ExplicitWidth = 832
                    ExplicitHeight = 628
                  end
                end
                inherited NxButton2: TNxButton
                  Visible = False
                end
              end
            end
            object tabvollenergie: TNxTabSheet
              Caption = 'Vollbild Energieausweis'
              PageIndex = 2
              ParentTabFont = False
              TabFont.Charset = DEFAULT_CHARSET
              TabFont.Color = 6908265
              TabFont.Height = -13
              TabFont.Name = 'Tahoma'
              TabFont.Style = []
              ExplicitTop = 0
              inline vollenergie: Tframeenergie
                Left = 0
                Top = 0
                Width = 1676
                Height = 636
                Align = alClient
                TabOrder = 0
                ExplicitWidth = 1676
                ExplicitHeight = 636
                inherited gridpanel: TGridPanel
                  Width = 1676
                  Height = 636
                  ControlCollection = <
                    item
                      Column = 0
                      Control = vollenergie.Panel5
                      Row = 0
                    end
                    item
                      Column = 1
                      Control = vollenergie.rightparent
                      Row = 0
                    end>
                  ExplicitWidth = 1676
                  ExplicitHeight = 636
                  inherited Panel5: TPanel
                    ExplicitWidth = 832
                    ExplicitHeight = 628
                    inherited lfiletype: TLabel
                      Height = 587
                    end
                    inherited Label45: TLabel
                      Width = 102
                      Height = 16
                      ExplicitWidth = 102
                      ExplicitHeight = 16
                    end
                    inherited Label46: TLabel
                      Width = 69
                      Height = 16
                      ExplicitWidth = 69
                      ExplicitHeight = 16
                    end
                    inherited Label47: TLabel
                      Width = 71
                      Height = 16
                      ExplicitWidth = 71
                      ExplicitHeight = 16
                    end
                    inherited Label48: TLabel
                      Width = 87
                      Height = 16
                      ExplicitWidth = 87
                      ExplicitHeight = 16
                    end
                    inherited Label29: TLabel
                      Width = 42
                      Height = 16
                      ExplicitWidth = 42
                      ExplicitHeight = 16
                    end
                    inherited bsave: TNxButton
                      Caption = 'Dokument anzeigen'
                      OnClick = vollzwischenbsaveClick
                    end
                    inherited flipadress: TNxFlipPanel
                      FullHeight = 90
                    end
                  end
                  inherited rightparent: TPanel
                    ExplicitLeft = 842
                    ExplicitWidth = 832
                    ExplicitHeight = 628
                  end
                end
              end
            end
            object tabvollvertrag: TNxTabSheet
              Caption = 'Vollbild Vertrag'
              PageIndex = 3
              ParentTabFont = False
              TabFont.Charset = DEFAULT_CHARSET
              TabFont.Color = 6908265
              TabFont.Height = -13
              TabFont.Name = 'Tahoma'
              TabFont.Style = []
              inline vollvertrag: Tframebasenutzer1
                Left = 0
                Top = 0
                Width = 1676
                Height = 636
                Align = alClient
                TabOrder = 0
                ExplicitWidth = 1676
                ExplicitHeight = 636
                inherited gridpanel: TGridPanel
                  Width = 1676
                  Height = 636
                  ControlCollection = <
                    item
                      Column = 0
                      Control = vollvertrag.Panel5
                      Row = 0
                    end
                    item
                      Column = 1
                      Control = vollvertrag.rightparent
                      Row = 0
                    end>
                  ExplicitWidth = 1676
                  ExplicitHeight = 636
                  inherited Panel5: TPanel
                    Width = 832
                    Height = 628
                    ExplicitWidth = 832
                    ExplicitHeight = 628
                    inherited lfiletype: TLabel
                      Height = 587
                    end
                    inherited Label45: TLabel
                      Width = 102
                      Height = 16
                      ExplicitWidth = 102
                      ExplicitHeight = 16
                    end
                    inherited Label46: TLabel
                      Width = 69
                      Height = 16
                      ExplicitWidth = 69
                      ExplicitHeight = 16
                    end
                    inherited Label47: TLabel
                      Width = 71
                      Height = 16
                      ExplicitWidth = 71
                      ExplicitHeight = 16
                    end
                    inherited Label48: TLabel
                      Width = 87
                      Height = 16
                      ExplicitWidth = 87
                      ExplicitHeight = 16
                    end
                    inherited Label29: TLabel
                      Width = 42
                      Height = 16
                      ExplicitWidth = 42
                      ExplicitHeight = 16
                    end
                    inherited Label5: TLabel
                      Width = 85
                      Height = 16
                      ExplicitWidth = 85
                      ExplicitHeight = 16
                    end
                    inherited Label1: TLabel
                      Width = 66
                      Height = 16
                      ExplicitWidth = 66
                      ExplicitHeight = 16
                    end
                    inherited bsave: TNxButton
                      Caption = 'Dokument anzeigen'
                      OnClick = vollzwischenbsaveClick
                    end
                  end
                  inherited rightparent: TPanel
                    Left = 842
                    Width = 832
                    Height = 628
                    ExplicitLeft = 842
                    ExplicitWidth = 832
                    ExplicitHeight = 628
                  end
                end
              end
            end
            object tabvollreklamation: TNxTabSheet
              Caption = 'Vollbild Reklamation'
              PageIndex = 4
              ParentTabFont = False
              TabFont.Charset = DEFAULT_CHARSET
              TabFont.Color = 6908265
              TabFont.Height = -13
              TabFont.Name = 'Tahoma'
              TabFont.Style = []
              ExplicitTop = 0
              inline vollrekl: Tframereklmont
                Left = 0
                Top = 0
                Width = 1676
                Height = 636
                Align = alClient
                TabOrder = 0
                ExplicitWidth = 1676
                ExplicitHeight = 636
                inherited gridpanel: TGridPanel
                  Width = 1676
                  Height = 636
                  ControlCollection = <
                    item
                      Column = 0
                      Control = vollrekl.Panel5
                      Row = 0
                    end
                    item
                      Column = 1
                      Control = vollrekl.rightparent
                      Row = 0
                    end>
                  ExplicitWidth = 1676
                  ExplicitHeight = 636
                  inherited Panel5: TPanel
                    ExplicitWidth = 832
                    ExplicitHeight = 628
                    inherited lfiletype: TLabel
                      Height = 587
                    end
                    inherited Label45: TLabel
                      Width = 102
                      Height = 16
                      ExplicitWidth = 102
                      ExplicitHeight = 16
                    end
                    inherited Label46: TLabel
                      Width = 69
                      Height = 16
                      ExplicitWidth = 69
                      ExplicitHeight = 16
                    end
                    inherited Label47: TLabel
                      Width = 71
                      Height = 16
                      ExplicitWidth = 71
                      ExplicitHeight = 16
                    end
                    inherited Label48: TLabel
                      Width = 87
                      Height = 16
                      ExplicitWidth = 87
                      ExplicitHeight = 16
                    end
                    inherited Label29: TLabel
                      Width = 42
                      Height = 16
                      ExplicitWidth = 42
                      ExplicitHeight = 16
                    end
                    inherited Label7: TLabel
                      Width = 96
                      Height = 16
                      ExplicitWidth = 96
                      ExplicitHeight = 16
                    end
                    inherited Label34: TLabel
                      Width = 85
                      Height = 16
                      ExplicitWidth = 85
                      ExplicitHeight = 16
                    end
                    inherited Label26: TLabel
                      Width = 36
                      Height = 16
                      ExplicitWidth = 36
                      ExplicitHeight = 16
                    end
                    inherited Label5: TLabel
                      Width = 85
                      Height = 16
                      ExplicitWidth = 85
                      ExplicitHeight = 16
                    end
                    inherited bsave: TNxButton
                      Caption = 'Dokument anzeigen'
                      OnClick = vollzwischenbsaveClick
                    end
                    inherited pinfo: TPanel
                      inherited labelinfo: TLabel
                        Width = 99
                        Height = 16
                        Font.Height = -13
                        ExplicitWidth = 99
                        ExplicitHeight = 16
                      end
                    end
                  end
                  inherited rightparent: TPanel
                    ExplicitLeft = 842
                    ExplicitWidth = 832
                    ExplicitHeight = 628
                  end
                end
                inherited NxButton2: TNxButton
                  Visible = False
                end
              end
            end
            object tabvollnutzer: TNxTabSheet
              Caption = 'Vollbild Nutzerlisten'
              PageIndex = 5
              ParentTabFont = False
              TabFont.Charset = DEFAULT_CHARSET
              TabFont.Color = 6908265
              TabFont.Height = -13
              TabFont.Name = 'Tahoma'
              TabFont.Style = []
              ExplicitTop = 0
              inline vollnutzer: Tframebase
                Left = 0
                Top = 0
                Width = 1676
                Height = 636
                Align = alClient
                TabOrder = 0
                ExplicitWidth = 1676
                ExplicitHeight = 636
                inherited gridpanel: TGridPanel
                  Width = 1676
                  Height = 636
                  ControlCollection = <
                    item
                      Column = 0
                      Control = vollnutzer.Panel5
                      Row = 0
                    end
                    item
                      Column = 1
                      Control = vollnutzer.rightparent
                      Row = 0
                    end>
                  ExplicitWidth = 1676
                  ExplicitHeight = 636
                  inherited Panel5: TPanel
                    ExplicitWidth = 832
                    ExplicitHeight = 628
                    inherited lfiletype: TLabel
                      Height = 587
                    end
                    inherited Label45: TLabel
                      Width = 102
                      Height = 16
                      ExplicitWidth = 102
                      ExplicitHeight = 16
                    end
                    inherited Label46: TLabel
                      Width = 69
                      Height = 16
                      ExplicitWidth = 69
                      ExplicitHeight = 16
                    end
                    inherited Label47: TLabel
                      Width = 71
                      Height = 16
                      ExplicitWidth = 71
                      ExplicitHeight = 16
                    end
                    inherited Label48: TLabel
                      Width = 87
                      Height = 16
                      ExplicitWidth = 87
                      ExplicitHeight = 16
                    end
                    inherited Label29: TLabel
                      Width = 42
                      Height = 16
                      ExplicitWidth = 42
                      ExplicitHeight = 16
                    end
                    inherited pinfo: TPanel
                      inherited labelinfo: TLabel
                        Width = 99
                        Height = 16
                        Font.Height = -13
                        ExplicitWidth = 99
                        ExplicitHeight = 16
                      end
                    end
                  end
                  inherited rightparent: TPanel
                    ExplicitLeft = 842
                    ExplicitWidth = 832
                    ExplicitHeight = 628
                  end
                end
                inherited NxButton2: TNxButton
                  Visible = False
                end
              end
            end
            object tabvollsonstiges: TNxTabSheet
              Caption = 'Vollbild Sonstiges'
              PageIndex = 6
              ParentTabFont = False
              TabFont.Charset = DEFAULT_CHARSET
              TabFont.Color = 6908265
              TabFont.Height = -13
              TabFont.Name = 'Tahoma'
              TabFont.Style = []
              ExplicitTop = 0
              inline vollsonstiges: Tframebasenutzer
                Left = 0
                Top = 0
                Width = 1676
                Height = 636
                Align = alClient
                TabOrder = 0
                ExplicitWidth = 1676
                ExplicitHeight = 636
                inherited gridpanel: TGridPanel
                  Width = 1676
                  Height = 636
                  ControlCollection = <
                    item
                      Column = 0
                      Control = vollsonstiges.Panel5
                      Row = 0
                    end
                    item
                      Column = 1
                      Control = vollsonstiges.rightparent
                      Row = 0
                    end>
                  ExplicitWidth = 1676
                  ExplicitHeight = 636
                  inherited Panel5: TPanel
                    inherited lfiletype: TLabel
                      Height = 587
                    end
                    inherited Label45: TLabel
                      Width = 102
                      Height = 16
                      ExplicitWidth = 102
                      ExplicitHeight = 16
                    end
                    inherited Label46: TLabel
                      Width = 69
                      Height = 16
                      ExplicitWidth = 69
                      ExplicitHeight = 16
                    end
                    inherited Label47: TLabel
                      Width = 71
                      Height = 16
                      ExplicitWidth = 71
                      ExplicitHeight = 16
                    end
                    inherited Label48: TLabel
                      Width = 87
                      Height = 16
                      ExplicitWidth = 87
                      ExplicitHeight = 16
                    end
                    inherited Label29: TLabel
                      Width = 42
                      Height = 16
                      ExplicitWidth = 42
                      ExplicitHeight = 16
                    end
                    inherited Label5: TLabel
                      Width = 85
                      Height = 16
                      ExplicitWidth = 85
                      ExplicitHeight = 16
                    end
                    inherited bsave: TNxButton
                      Caption = 'Dokument anzeigen'
                    end
                    inherited UpDown1: TUpDown
                      Top = 229
                      ExplicitTop = 229
                    end
                  end
                end
              end
            end
            object tabvollauf: TNxTabSheet
              Caption = 'Vollbild Anforderungen'
              PageIndex = 7
              ParentTabFont = False
              TabFont.Charset = DEFAULT_CHARSET
              TabFont.Color = 6908265
              TabFont.Height = -13
              TabFont.Name = 'Tahoma'
              TabFont.Style = []
              ExplicitTop = 0
              inline vollauftrag: Tframeauftrag
                Left = 0
                Top = 0
                Width = 1676
                Height = 636
                Align = alClient
                TabOrder = 0
                ExplicitWidth = 1676
                ExplicitHeight = 636
                inherited gridpanel: TGridPanel
                  Width = 1676
                  Height = 636
                  ControlCollection = <
                    item
                      Column = 0
                      Control = vollauftrag.Panel5
                      Row = 0
                    end
                    item
                      Column = 1
                      Control = vollauftrag.rightparent
                      Row = 0
                    end>
                  ExplicitWidth = 1676
                  ExplicitHeight = 636
                  inherited Panel5: TPanel
                    ExplicitWidth = 832
                    ExplicitHeight = 628
                    inherited lfiletype: TLabel
                      Height = 587
                    end
                    inherited Label45: TLabel
                      Width = 102
                      Height = 16
                      ExplicitWidth = 102
                      ExplicitHeight = 16
                    end
                    inherited Label46: TLabel
                      Width = 69
                      Height = 16
                      ExplicitWidth = 69
                      ExplicitHeight = 16
                    end
                    inherited Label47: TLabel
                      Width = 71
                      Height = 16
                      ExplicitWidth = 71
                      ExplicitHeight = 16
                    end
                    inherited Label48: TLabel
                      Width = 87
                      Height = 16
                      ExplicitWidth = 87
                      ExplicitHeight = 16
                    end
                    inherited Label29: TLabel
                      Width = 42
                      Height = 16
                      ExplicitWidth = 42
                      ExplicitHeight = 16
                    end
                    inherited Label5: TLabel
                      Width = 85
                      Height = 16
                      ExplicitWidth = 85
                      ExplicitHeight = 16
                    end
                    inherited Label1: TLabel
                      Width = 65
                      Height = 16
                      ExplicitWidth = 65
                      ExplicitHeight = 16
                    end
                    inherited bsave: TNxButton
                      Caption = 'Dokument anzeigen'
                      OnClick = vollzwischenbsaveClick
                    end
                    inherited cbselectauftrag: TNxComboBox
                      Left = 244
                      Width = 141
                      Height = 24
                      ExplicitLeft = 244
                      ExplicitWidth = 141
                      ExplicitHeight = 24
                    end
                    inherited NxButton1: TNxButton
                      Left = 244
                      Width = 141
                      ExplicitLeft = 244
                      ExplicitWidth = 141
                    end
                  end
                  inherited rightparent: TPanel
                    ExplicitLeft = 842
                    ExplicitWidth = 832
                    ExplicitHeight = 628
                  end
                end
              end
            end
            object tabvollangebot: TNxTabSheet
              Caption = 'Vollbild Angebote'
              PageIndex = 8
              ParentTabFont = False
              TabFont.Charset = DEFAULT_CHARSET
              TabFont.Color = 6908265
              TabFont.Height = -13
              TabFont.Name = 'Tahoma'
              TabFont.Style = []
              ExplicitTop = 0
              inline vollangebot: Tframebasenutzer
                Left = 0
                Top = 0
                Width = 1676
                Height = 636
                Align = alClient
                TabOrder = 0
                ExplicitWidth = 1676
                ExplicitHeight = 636
                inherited gridpanel: TGridPanel
                  Width = 1676
                  Height = 636
                  ControlCollection = <
                    item
                      Column = 0
                      Control = vollangebot.Panel5
                      Row = 0
                    end
                    item
                      Column = 1
                      Control = vollangebot.rightparent
                      Row = 0
                    end>
                  ExplicitWidth = 1676
                  ExplicitHeight = 636
                  inherited Panel5: TPanel
                    inherited lfiletype: TLabel
                      Height = 587
                    end
                    inherited Label45: TLabel
                      Width = 102
                      Height = 16
                      ExplicitWidth = 102
                      ExplicitHeight = 16
                    end
                    inherited Label46: TLabel
                      Width = 69
                      Height = 16
                      ExplicitWidth = 69
                      ExplicitHeight = 16
                    end
                    inherited Label47: TLabel
                      Width = 71
                      Height = 16
                      ExplicitWidth = 71
                      ExplicitHeight = 16
                    end
                    inherited Label48: TLabel
                      Width = 87
                      Height = 16
                      ExplicitWidth = 87
                      ExplicitHeight = 16
                    end
                    inherited Label29: TLabel
                      Width = 42
                      Height = 16
                      ExplicitWidth = 42
                      ExplicitHeight = 16
                    end
                    inherited Label5: TLabel
                      Width = 85
                      Height = 16
                      ExplicitWidth = 85
                      ExplicitHeight = 16
                    end
                    inherited bsave: TNxButton
                      Caption = 'Dokument anzeigen'
                      OnClick = vollzwischenbsaveClick
                    end
                    inherited UpDown1: TUpDown
                      Top = 228
                      ExplicitTop = 228
                    end
                  end
                end
              end
            end
          end
        end
        object tabanzeigeformular: TNxTabSheet
          Caption = 'tabanzeigeformular'
          PageIndex = 3
          ParentTabFont = False
          TabFont.Charset = DEFAULT_CHARSET
          TabFont.Color = 6908265
          TabFont.Height = -13
          TabFont.Name = 'Tahoma'
          TabFont.Style = []
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 1678
          ExplicitHeight = 699
          object parent: TPanel
            Left = 0
            Top = 0
            Width = 1676
            Height = 698
            Align = alClient
            Caption = 'parent'
            TabOrder = 0
          end
        end
      end
    end
    object pleft: TPanel
      AlignWithMargins = True
      Left = 1
      Top = 44
      Width = 296
      Height = 720
      Margins.Left = 0
      Margins.Top = 2
      Margins.Right = 0
      Margins.Bottom = 2
      Align = alLeft
      BevelOuter = bvNone
      Color = 6118749
      ParentBackground = False
      TabOrder = 1
      object pfilebox: TFlowPanel
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 286
        Height = 452
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 2
        Align = alTop
        AutoSize = True
        BevelOuter = bvNone
        Color = 14933977
        Padding.Left = 10
        Padding.Top = 10
        Padding.Right = 10
        Padding.Bottom = 10
        ParentBackground = False
        TabOrder = 0
        object lsammelverzeichnis: TLabel
          AlignWithMargins = True
          Left = 15
          Top = 12
          Width = 149
          Height = 19
          Margins.Left = 5
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 10
          Align = alTop
          Caption = 'Sammelverzeichnisse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6908265
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Panel21: TPanel
          AlignWithMargins = True
          Left = 13
          Top = 44
          Width = 261
          Height = 49
          Margins.Bottom = 25
          Align = alBottom
          BevelOuter = bvNone
          Color = 10252872
          Padding.Left = 3
          Padding.Top = 3
          Padding.Right = 3
          Padding.Bottom = 3
          ParentBackground = False
          TabOrder = 2
          object Label8: TLabel
            Left = 3
            Top = 3
            Width = 255
            Height = 13
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alTop
            Caption = '  Telefoneingang  / Memo'
            Color = 6908265
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
            ExplicitWidth = 121
          end
          object bentfernen: TNxButton
            Left = 3
            Top = 23
            Width = 255
            Hint = 'eine dokumentlose Notiz aus einem Telefonat erstellen'
            Align = alBottom
            Caption = 'Notiz erstellen'
            Color = 6118749
            EnableDblClick = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6908265
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TabStop = False
            Transparent = True
            OnClick = BentfernenClick
          end
        end
        object peing: TPanel
          AlignWithMargins = True
          Left = 13
          Top = 121
          Width = 261
          Height = 145
          Hint = 'Sammelordner f'#252'r alle Dokumenteing'#228'nge. Per Doppelklick '#228'nderbar'
          Margins.Bottom = 25
          BevelOuter = bvNone
          Color = 10252872
          ParentBackground = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          object leingangsordner: TLabel
            Left = 10
            Top = 5
            Width = 75
            Height = 13
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Caption = 'Eingangsordner'
            Color = 6908265
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
            OnDblClick = leingangsordnerDblClick
          end
          object lbeingang: TListBox
            AlignWithMargins = True
            Left = 3
            Top = 26
            Width = 255
            Height = 116
            Align = alBottom
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            DoubleBuffered = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6908265
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 13
            MultiSelect = True
            ParentDoubleBuffered = False
            ParentFont = False
            TabOrder = 0
            OnClick = lbeingangClick
            OnDblClick = lbeingangDblClick
            OnMouseDown = lbausgangMouseDown
          end
        end
        object pausg: TPanel
          AlignWithMargins = True
          Left = 13
          Top = 294
          Width = 261
          Height = 145
          Hint = 'Sammelordner f'#252'r alle Dokumentausg'#228'nge. Per Doppelklick '#228'nderbar'
          Align = alBottom
          BevelOuter = bvNone
          Color = 10252872
          ParentBackground = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object lausgangsordner: TLabel
            Left = 10
            Top = 5
            Width = 79
            Height = 13
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Caption = 'Ausgangsordner'
            Color = 6908265
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
            OnDblClick = leingangsordnerDblClick
          end
          object lbausgang: TListBox
            AlignWithMargins = True
            Left = 3
            Top = 26
            Width = 255
            Height = 116
            Align = alBottom
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            DoubleBuffered = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6908265
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 13
            MultiSelect = True
            ParentDoubleBuffered = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = lbeingangClick
            OnDblClick = lbeingangDblClick
            OnMouseDown = lbausgangMouseDown
          end
        end
      end
      object psonstiges: TPanel
        AlignWithMargins = True
        Left = 5
        Top = 590
        Width = 286
        Height = 120
        Margins.Left = 5
        Margins.Top = 2
        Margins.Right = 5
        Margins.Bottom = 10
        Align = alBottom
        AutoSize = True
        BevelOuter = bvNone
        Color = 14933977
        Locked = True
        Padding.Left = 10
        Padding.Top = 10
        Padding.Right = 10
        Padding.Bottom = 10
        ParentBackground = False
        TabOrder = 1
        object lsonstiges: TLabel
          AlignWithMargins = True
          Left = 15
          Top = 12
          Width = 259
          Height = 19
          Margins.Left = 5
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 10
          Align = alTop
          Caption = 'Sonstiges'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6908265
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 67
        end
        object Button9: TButton
          Left = 10
          Top = 41
          Width = 266
          Height = 23
          Align = alTop
          Caption = 'Updates pr'#252'fen'
          TabOrder = 0
          TabStop = False
          OnClick = Button9Click
        end
        object Button10: TButton
          Left = 10
          Top = 64
          Width = 266
          Height = 23
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alTop
          Caption = 'Dokumente speichern'
          TabOrder = 1
          TabStop = False
          OnClick = dokanzeigeClick
        end
        object Button1: TButton
          Left = 10
          Top = 87
          Width = 266
          Height = 23
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alTop
          Caption = 'Dokumente anzeigen'
          TabOrder = 2
          TabStop = False
          OnClick = dokumenteanzeigenclick
        end
      end
      object pverarbeitungsstatus: TPanel
        AlignWithMargins = True
        Left = 5
        Top = 532
        Width = 286
        Height = 76
        Margins.Left = 5
        Margins.Top = 2
        Margins.Right = 5
        Margins.Bottom = 2
        Align = alTop
        BevelOuter = bvNone
        Color = 14933977
        Padding.Left = 10
        Padding.Top = 5
        Padding.Right = 10
        Padding.Bottom = 10
        ParentBackground = False
        TabOrder = 2
        Visible = False
        object Gauge1: TGauge
          Left = 10
          Top = 21
          Width = 266
          Height = 31
          Align = alTop
          BackColor = 15856113
          BorderStyle = bsNone
          ForeColor = 10252872
          Progress = 0
          ExplicitTop = 10
          ExplicitWidth = 263
        end
        object lpverarbeitungsart: TLabel
          Left = 10
          Top = 5
          Width = 266
          Height = 16
          Align = alTop
          Caption = 'Datei zu'
          ExplicitWidth = 46
        end
        object lhochruntergeladen: TLabel
          Left = 10
          Top = 50
          Width = 266
          Height = 16
          Align = alBottom
          Caption = 'hochgeladen'
          ExplicitWidth = 72
        end
      end
      object pimage: TPanel
        AlignWithMargins = True
        Left = 5
        Top = 463
        Width = 286
        Height = 65
        Margins.Left = 5
        Margins.Top = 4
        Margins.Right = 5
        Margins.Bottom = 2
        Align = alTop
        BevelOuter = bvNone
        Caption = 'erfolgreich gespeichert'
        Color = 14933977
        ParentBackground = False
        TabOrder = 3
        VerticalAlignment = taAlignBottom
        Visible = False
        object IStatusok: TImage
          Left = 0
          Top = 0
          Width = 286
          Height = 65
          Align = alClient
          Center = True
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
            00200806000000737A7AF4000005B94944415478DAED94696C146518C7FFEFCC
            EECCEEB6DB9BEEDA7697B250B93A2A2857D9441139D4A6A951306008311A8588
            31C6A08944317ED01045620A28D08302211CA2F100031E4008C6767B406D971D
            A02DD0B22DB5EDF6D8736676C6B75B6D34452828F085E7FDF666667EBFE71AA2
            691AEE6490BB02B743C0BC8170FDAF6BD21D11482826B650350EDA27581634BE
            D6DE765B05CC25C4A66F36546E5EB6CDBAB57C5BB433B57546DD1B8DD5B745C0
            5C4A6CBA26DE55FA72B9E54C95072A17C581930714B1D73D33B8491B92B82502
            146E679BF8CAD297CB2CA72AEBD0AFF4212C8750D352057783284BAA342BB27B
            50E27F1730D39EB3CDBCAB644599A5B6EA14FC4A3FC24A0847CFFE848BBE1664
            24A623D82249BE2B3D332307B5DAFF55C0BC85C22FF2AEE295A596DADADA4178
            3484E3178FE2426F0B180EB0A68C4242AD150DE71B721883DA785581CC7D6686
            16477779719F3462F867C4C65CD4BB4A566DB7D43454C31FA5702D8C135E0A0F
            B442CF033C6780B52A1B13D327E47E5F7DD0D3FF9D141D2660DD633406ABD5DD
            2A51B3121ED23FEB5D1C6CBA1E3C910E9C7696C25F2DB5D43456C1AFFA11A1F0
            931DC77129D80A8E6761D499103DA24306C9CCF5F679C5B6BD5DCAB019482E63
            8C817A6D8F7BAD5860608C18BFCEEE36DCCBE6772D539AFF0D3E6A376793CF12
            D7B61525969A4B5508440390B4082ABA7EC1E5500B0C3C1F83777F1142D0EBCF
            251C11FDDF2ACA5FEF0F09247D4A0CE126EC3DB1E6D702BFBF07718C19494929
            10D64D749B7375F99DCFC9C32432BF88B7453CAAEBF397B6594E7B6B63705995
            50D55381F6F065F08641B8775737FA5AFA04709A27F49DA6FCFD1B3101CB4726
            634AD73D7B8A566E2C9024895E32082801E85816D6A40C3C5AE47427DD6FCAF7
            2E0A0C49647F9D6C0B9F89566E7E718BB5AEFD3442EA40E6124EF555E38AD406
            9E666E600C682A6E476F872F97612006BFF9273C2610FF1ED17397E2F795BDB9
            BD90E73810C2A047F641D6642890A9840E71FA782C2F5BEA4E9D9290DF54D0D5
            9C7328DD16742BAEA2E73759DC9DF5141EA44FCAF8CD5F8B0EF94AACEC3C6D61
            4351337A83DD02CBC113D8311C1E13885B43128D6D0927562C7949381A3A8C67
            1C4B303ADE115B219966A4D0A363F548D1A7E185F265F563A7677F281FD36D7C
            6FF53BC9EEEE7A84D5500CEE0ED5A153F99D4E3ACD9C35A0A648840F9D029748
            3C7D1FA85785C7044C6F81C94AC89C99ECCD389033DF6EAD644F62C13D4F627A
            EAAC58152274A054128D55228D58F17EC5BBEAC78F6D60AA7B2B62C336001723
            6E7445FF84EB0CA8F8B41EBEB80E81B340F4AD52E56B6DD0D0108E5F6B779A7D
            29E56979898EB68C0B181737010FA7CE459C2E9EEE73080AA19520B41DAA19ED
            6C2B347A1422E39CE441B7DA3594F9C9CDA7D06FEE16B8D19AD8B638744DF8B0
            35CC5C9D3C5BE9C24EC73CDB18FD64022331627AC26C64F1364864B01D842583
            ADA1F026E51C7AD00D4E37083F565C09292520986C7A519CDF7E5DF83081D83A
            BEAD734A1DDA8E07F28531E9539220452538F81C8C338C07CBB09029384AAB71
            416D442FED324FE11CCBE3C7F25F40B2A2424A7A9CF8EB0CCF88E057158849AC
            679C91F3A4FCC179531C63E76421A40491C826219B1B071363C225AD197DA427
            06D7D31FFCA1D263304C64858CD434F1F0A48A11C3FF556020D2CAF4CEA00BE5
            D3173EE898FCF838449430741466A4EB253111BA663473F0F8B2E47B240A2621
            3B2B53DC9F79E486E0D7141808FB5709B37D3FCB3BA73D3175CC8CC7EFC3C09F
            81010B133DBC66C08E92FDB04E4B15721C7671AB79DF0DC3AF2B3010937FC872
            B61EEA2E7716CE72CC7F784EEC4EAFF1D8525A86DCBC49C2A48963CFAFC1BAF0
            CDC04724301079AE494ECF81961D8FCC7964CCA23985F8645711A6E64D11164E
            9877EE292C8DDC2C7CC40203B1A061A6B36E6FE32EBBD53EDA323745787A7CE1
            B9E578E53FC16F4860A1388B184DA63C86E87CD919B6A6F54CF14D97FDA6046E
            55DC15B8E3027F002001C730A1EBF65B0000000049454E44AE426082}
          Transparent = True
          ExplicitWidth = 219
        end
        object iSTAtusfalse: TImage
          Left = 0
          Top = 0
          Width = 286
          Height = 65
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alClient
          Center = True
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
            00200806000000737A7AF4000009A04944415478DAAD570B7015E515FEFE7DDF
            DC57124824800C096208460C090F1152DBFAA074A440511461B048A1508AA830
            024579348A637DA11D65E8A87500B1141F03222828858E03B4C2F02A81109250
            2001022437F7B5F7EEEEDDEDF9F75EC2435AA1D3CD6CF6EEEEF9CFF9FEF3F8CE
            59E6380E6EF4788F497E054A8E28CA7ED07ACB366326CC96C71D2B7CA3BAD8F5
            025825FA8A3BF7E831AC73DFBE3F0CDCDCB944F36879A2AA78008759B1B81E6B
            3E77AEA5FE78CD999AA3DBCE9E6EDAF8989338FC7F01F081122C2BA9E8FB5451
            E5A091C1B23E01765B6F20AE030DC781649234B0F4290884C5462A1CC6B9C335
            91DA6DDFAC3F565DFDFA4427B1E77F02F01653945EDD8BE6F61D76FFECDC5B6F
            2157D34351023A76481B6E6E064C8B34B86AD2570E84CBA80A1CD3C4A97DFBE3
            7B366D7EBDB1E5FCF3D31D2371DD0096312D7F4045C53BA5F7DC3D5CCDCA02A2
            713266A65FCA72FA9AB290B17EE5415E709F2B2497E541E4420B767DBE69734D
            7DDDC4DF3846D3F702788B697983CBCB3F2DA9BC73B06AA6807014B053975CED
            AE122EB37D1908FE5314099C9D06C8C3E2CD42DC49E16F5BB67E7BA4AE6EE493
            5781B802C06B4C55FBF7E8B9B6BC72E0706F2C099BE26993EF4532CC2ECAB920
            D855B6E9077F4F3B467636E508798CD63AA93470E6F32124326CDEBAFDAB53E7
            CE8D78DA49C6AF09E0E3EC82794306F75F7213814F86423049AF4CBBD063717C
            4DF77E92F9515E4708924CF6EC760C5C83C07F7934FC3DA4E3422C864A9F0CBF
            E681417202D950FC7ED4A792F872C7EE25D3926DF3BF03E00FA2B7E407BD8B77
            F6CEC90D9ACD17D046886572759276B2D3E341D9AA77116D3C8DD3D366A092EE
            054DC5C5B502DFA561607B5B04F96FBC869C925BB167FC44DCD5D6066F300893
            E45412F56407F155F3697D7FFDBF2A9FC954473B808F0279CB2B7B164E093487
            D04431B3C9B81909E3506E070CFCE4CFE856D6C7953BB07E034E4EF825860864
            5455D3BB300D7C9348226FF9DBE837EE61F7D9A94387B163D443283B73065981
            002C32D38174868259F8B4FEF8874FE8E147DB01BCCC3C8503F272F6F453BC39
            A7296BCFCB2214CB4063F722DCB16625BADD7E1B158199290219073FDB88938F
            8CC3C064C2DDFD4E0A53A73FBD87F247C750655A6E3E70B9C6C335D8FBF03814
            D5D6C09434A8949C057E1FBE30A2B1DA50BCDFB38E7EC405F026F34CADEC185C
            9617317184F223C563EF245030E5D72859FE162C4A26C7B6DB73852B3FB46113
            8E8F7E100EB9BEEBEAD5281BFB50BBF1745C04C85411753367A3F9CD57918206
            BE856E9282268D616B34317BA19378D505F086A0AD19120C8C09B7C551E718E0
            95AE516AC9B4ACD7BCF9E8BDA48AF8DE4E6775A6126449C2A18FD7C1D2E3B863
            FC585864FC6238191997C8F8B1DFBD80DA850BC8B00083929433512E44E42A22
            BE308D0D8B6C63387B0E9A272039FF18A866951E8BE96822A33CB2545050A808
            45BAEF47206E5FF23C0CCB4CD778E69028077815989C192F1E645C210F1D595C
            857D8B16C022E3FC4C6400F015A5C4965B1DB336658B156C3EB44E4119FBFB89
            5AFE81441CE7C9A88784B80734BA722F48F48C8328261049AA71A79D822F6740
            7A248950BD5ED42DAAC2DEC50B6895E0EE9EC3E3A7EE962D4385206117ACD6B8
            2D96B339507B2655B6F76E41F5EE2677C6485376C6031E1731C5DCF5848D8A39
            F390376D6A9A70AEA6705E8A04ACF9ED6538F84255BB7123639C9FF10C5F940A
            220EB0941E4D8903D86C0210D7B0F75EC1E35D170F93071CE491502E9D1C889F
            AE59DCDDE44893FE97AF5881CE43EF418ABBFD32102285E3EC8E5DD83DE611F8
            AC0401902EDBB9431B63206EA43F86DE8C0008B6AEA4C4FE6C16B482A8EAEC1B
            2965E57F1E0BA39E967A699197047D2E00EE090A0BB5FEF2575E41E1E811A0FE
            8F6B1D12F1FEC94D5B7060E64CD8A4CBA0FDC6494F94CCF249A595AE2A3DBB9B
            42B09BA542DE94D49703F0B44AF6B7A33DDEDBF645A2F827ED94C7FE52086C68
            8A86012FBE84EEA37F06331C71A997A7807D31EBB9FB3394AC04FC38F5C557D8
            FDD4D3D0F5880B42CFB89FAFCCA7FBFEA28CED8E551BB0A50AB70C1F13E4353F
            F5FBC758111D3B1CBE04EEEEB97149D6505655859B473C40CC1869DF2D2FCBFC
            82024A7A01671B9B200A97B25226DE6FDCF2356AE63E072BDE8A36D713A03000
            C5944D1D89E8B65AD686F76D73B80B601253A6F6F269CB0651956D4DC65CC11C
            42EB0D764097D9B3D0F981A1B022B1CC1ED3C60B0A0B612F5B4E8967429C3903
            8D0D0D9032ED9A3B46CD0E40AA3E8EC88B4B517D601B4E1108CE22770A32EAA8
            63579BF6EC771D234D44D399DADD56D8DE491E5FF6516A203C0F7C740E9AFE24
            B2E63C8DC643875C62718D130F74E9790B3C2B3FC0D1C50B5D48C554A2C6E449
            3871B416127982EB1429D38B87DC05B67C25B63CF92B9C70135B401F59C55F52
            468C73C0DB4EA2A6BD194D60F21FEF0DFA27F7D14DEC3674CA5E1B1D8301F47B
            7D29CE96F7C5D9BA7A6238866EC5C5C859B3160D649CA59B3049DA282410E15F
            4C40C3E1C370AC14F28B8AD0B5BE01FBA74CC6E99616978C4A69F74D32C3A6A4
            B97A85638EBBA21B4E666A09B1EBAE69FE6020126AC371C7725507550DA554DB
            27CACBA09240A78F3EC109322E64FE1C3730B67B76FBEDB3681E3716512AD1C2
            DA3A544F7A9C06AA08952FC59DA0E6691ADE379271DD1606BFE324F67D672021
            2F3C53EAD55E1A2BAA38196E438BABDC82974AB0D71B4B613535E154D562AA70
            6A34A454CCE4042767D3954CA10B91954C5E3A3AE309446361970F7CF4AEABEA
            C17AC7C47EC35EBCC231165D73229AC434D940EAC3FB82FED1C36C8626CAFA56
            973C381D3B6E93F29059AF5BA6CCBDE72148650827E6128EE5763DD305C68D33
            1410496D670E36278C8D32849FD3EE93D704C08F894CCDA67164CDB0ECC0FD3F
            2105D1B6105A684031328C98C3092AD370444A4CCE00360DADBC15EB34888648
            5F5B06583697F56491711B9BE2899D36D8C8F79D64F3150C7EADB17C0281A098
            BE33C8EF1B3D8A146447633467EA6E5352A99F2B34FB09BC1F286A7A48A52EE9
            2412D49A1330E934C81312BD0B93DC4633896FE289CFC8F8E4154EF2ECD5B6FE
            E387C978A68A94DDB3BAC9F2DCFB82C19C0A1A44796F001FC3B871EA7AEE6F0E
            804F4B3AF11D0DA32000719A1BF61826BE8C46C20DA6F13255CBEF573949E35A
            76BEF7D3EC61A694D077CECC22457DF08E60B043AFDC5CDC9493035F4167E206
            AA021ACB2C02A0138D9F0BB5A2B62584BDADAD176A13FA3AEAFF4BD738C6C1FF
            A6FFBA3F4E1F644A774AC4A101B01F7710A4DEF9DE407E9628785314FFB865C5
            42A6D17CDE34ABDB90FAAB05B679AD63D45F8FDEEB0670F9318AF1AF629B47C4
            97F952A126C1429F3A867EA3BAFE0D68E472B51A8674C70000000049454E44AE
            426082}
          Visible = False
          ExplicitLeft = 5
        end
        object lprogress: TLabel
          Left = 3
          Top = 28
          Width = 4
          Height = 16
        end
      end
      object piupdate: TPanel
        AlignWithMargins = True
        Left = 5
        Top = 534
        Width = 286
        Height = 52
        Margins.Left = 5
        Margins.Top = 2
        Margins.Right = 5
        Margins.Bottom = 2
        Align = alBottom
        AutoSize = True
        BevelOuter = bvNone
        Caption = 'Update gefunden'
        Color = 14933977
        Padding.Left = 10
        Padding.Top = 10
        Padding.Right = 10
        Padding.Bottom = 10
        ParentBackground = False
        TabOrder = 4
        VerticalAlignment = taAlignTop
        Visible = False
        object iupdate: TImage
          Left = 10
          Top = 10
          Width = 266
          Height = 32
          Hint = 'neue Version verf'#252'gbar'
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alBottom
          AutoSize = True
          Center = True
          ParentShowHint = False
          Picture.Data = {
            055449636F6E0000010004001010000001002000680400004600000018180000
            0100200088090000AE0400002020000001002000A8100000360E000030300000
            01002000A8250000DE1E00002800000010000000200000000100200000000000
            4004000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            1E82D6351E82D611000000000000000000000000000000000000000000000000
            1E82D62F1E82D61500000000000000000000000000000000000000001E82D635
            227FDCFF1F81D8FF1E82D67D0000000000000000000000001E82D6131E82D67D
            227FDBFF2081D8FF1E82D615000000000000000000000000000000001E82D639
            2882DCFF4683F1FF2A82DEFF1E82D6971E82D6251E82D65F1F82D6FF3482E4FF
            4583F0FF1E82D6DD00000000000000000000000000000000000000001E82D605
            1F82D6FF6195F4FF509EF8FF468DE8FF2183D7FF2785DAFF5692EFFF43A2F9FF
            488EE9FF1E82D699000000000000000000000000000000000000000000000000
            1E82D6A7609CECFF3DB2FBFF53AFFAFF73A3F2FF7FA8F6FF48B0FAFF5DAEF9FF
            4290E2FF1E82D65D000000000000000000000000000000000000000000000000
            1E82D669539BE4FF6CBEFAFF19BCFBFF30BDFBFF1FBCFBFF1BBCFBFFA1BFFAFF
            2786D9FF1E82D61500000000000000000000000000000000000000001E82D617
            1E82D695569EE3FF88CEFBFF1BC1FAFF1BC1FAFF1BC1FAFF2FC3FAFFAECAF7FF
            2686D8FF1E82D671000000000000000000000000000000001E82D6531E82D6BD
            7CB4E9FFDAE6FDFF4DCFFAFF1EC7F9FF1EC7F9FF1EC7F9FF1EC7F9FF85D8FBFF
            BFD8F7FF3B91DCFF1E82D68B00000000000000001E82D61B328DDAFFB9D7F3FF
            9CE5FCFF4BD5FAFF32D0F9FF21CDF9FF21CDF9FF21CDF9FF21CDF9FF21CDF9FF
            7CDFFBFFE8F1FCFF66AAE4FF1E82D665000000002686D7FF90C1EBFFCFE5F6FF
            D2E6F7FFD2E6F7FFECF5FCFFA5EDFCFF24D3F8FF50DCF9FFAAEEFCFFFFFFFFFF
            D5E7F7FFD2E6F7FFD2E6F7FF70B0E5FF1E82D65F1E82D6191E82D6831E82D6CB
            1E82D6CF1E82D6CF1E82D6EDDAEAF8FF4ADEF8FFABF0FCFF75B3E6FF1E82D6FF
            1E82D6D11E82D6CF1E82D6CF1E82D66500000000000000000000000000000000
            00000000000000001E82D67785BBE9FF9DF0FBFFF7FBFEFF2988D8FF1E82D60F
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000001E82D61D368FDAFFFCFEFFFFAAD0F0FF1E82D6A100000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000001E82D6BDC2DDF4FF58A2E1FF1E82D64500000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000001E82D653539FE0FF1E82D6530000000000000000
            0000000000000000000000000000000000000000FFFF0000E7E70000C3830000
            C0070000C0070000E0070000E0070000C0070000800300000001000000000000
            00010000F81F0000F83F0000FC3F0000FC7F0000280000001800000030000000
            0100200000000000600900000000000000000000000000000000000000000000
            000000000000000000000000000000001B7FD5013F9EE40556BBF90559BEF905
            58B1EC052C8BDA04197DD501197ED4012E8DDB0458B2EC0556BCFA0555BBF805
            409DE205187DD401000000000000000000000000000000000000000000000000
            000000000000000000000000000000001D81D51750AEED2959BBF72942A1E529
            1F83D71E197ED5050000000000000000197ED5082184D71D42A2E6295DBFF629
            49A9EA291E81D614000000000000000000000000000000000000000000000000
            0000000000000001000000050C3457112171AF503E91C4622B83C7541A78CA27
            1C80D504000000000000000000000000000000000E3F6904166BB22C2B80BF5E
            3C8EC0631F6CA9510A3052120000000300000001000000000000000000000000
            00000000000000020000000908345A270E5D9EA10D5D9FAD0E508B3E00000005
            0000000000000000000000000000000000000000000000040000000D0853946F
            095BA0C71261A1A20D395E260000000700000001000000000000000000000000
            000000000000000100000004004F935A2B87C8DC2E8BCBDD055AA1BE00549C5D
            00559E040000000000000000000000000000000000549C3900549C861973B6CC
            42A1DEEE01539994000000090000000200000000000000000000000000000000
            00000000000000000000000000559E3C247DBFCF47B0F1FF58B4ECF82D86C7D4
            01579FB900559E4F0000000000559E2600559E73136BB0C448A3DFEA4CB2F2FF
            4BA6E1ED00559E8A000000000000000000000000000000000000000000000000
            00000000000000000000000000559E181066ABC05FBBF3FF27A2F1FF48B1F2FF
            5BB2E9F3287FBFCF00559E9A1066ABC0479ED9E35BB9F3FF3AAAF2FF3CABF2FF
            4198D4DF00559E67000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000559EAB6CBDEFF922A1F1FF1B9EF1FF
            33A8F2FF57B8F3FF64B5E9F270C1F2FC44B0F2FF1B9EF1FF1B9EF1FF54B7F3FF
            3185C3D100559E43000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000559E8864B0E3EC38ADF2FF1DA2F1FF
            1DA2F1FF1DA2F1FF2EA9F2FF20A3F1FF1DA2F1FF1DA2F1FF1DA2F1FF70C3F4FF
            196CAFC300559E1E000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000559E63559FD4DE53B9F4FF20A6F2FF
            20A6F2FF20A6F2FF20A6F2FF20A6F2FF20A6F2FF20A6F2FF25A8F2FF87CCF3FC
            02579FB900559E04000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000559E453D88C2CF72C7F5FF24AAF2FF
            24AAF2FF24AAF2FF24AAF2FF24AAF2FF24AAF2FF24AAF2FF40B4F3FF7DBDE7EE
            00559E8E00000000000000000000000000000000000000000000000000000000
            00000000000000000000000000559E4A0D5FA5BC88C2E9EF47BAF4FF27AFF3FF
            27AFF3FF27AFF3FF27AFF3FF27AFF3FF27AFF3FF27AFF3FF2AB0F3FFA1D8F7FD
            3E87C0CE00559E6C000000000000000000000000000000000000000000000000
            000000000000000000559E4F1364A8BE94CAECF26FCAF6FF2AB3F3FF2AB3F3FF
            2AB3F3FF2AB3F3FF2AB3F3FF2AB3F3FF2AB3F3FF2AB3F3FF2AB3F3FF4FBFF5FF
            ACDDF8FE4A90C5D100559E6C0000000000000000000000000000000000000000
            0000000000559E561969ABC0A0D0EEF373CDF7FF2EB8F4FF2EB8F4FF2EB8F4FF
            2EB8F4FF2EB8F4FF2EB8F4FF2EB8F4FF2EB8F4FF2EB8F4FF2EB8F4FF2EB8F4FF
            4EC1F5FFB5E0F8FE5496C9D400559E6D00559E04000000000000000000000000
            00559E5A1D6BACC0ACD7F1F675D1F7FF31BDF4FF31BDF4FF31BDF4FF31BDF4FF
            31BDF4FF31BDF4FF31BDF4FF31BDF4FF31BDF4FF31BDF4FF31BDF4FF31BDF4FF
            31BDF4FF4DC5F5FF88D6F8FF609DCDD600559E6D00559E0E0000000000559E1E
            2772B0C3B8DDF4F7AAE1FAFF99DDF9FF8DD9F9FF74D3F8FF6DD1F7FF49C8F6FF
            34C1F5FF34C1F5FF34C1F5FF34C1F5FF34C1F5FF3DC3F5FF61CEF7FF6FD2F7FF
            84D7F8FF8DD9F9FFA9E1FAFFB0E3FAFF71A8D3DA00559E5A0000000000000000
            00559E5A1363A7BD357CB6C65190C2CF649DCBD485B5DAE08EBCDEE3BADCF1F5
            88DBF8FF38C7F5FF38C7F5FF38C7F5FF4CCCF6FFC8E6F7FB9EC8E5E98CBADDE3
            6FA6D0D9649DCBD4387EB7C72C75B2C400559E6D00559E0E0000000000000000
            0000000000559E0F00559E2600559E3C00559E4C00559E6A00559E731161A5BC
            D1EAF9FC42CDF6FF3BCBF6FF3BCBF6FF90DEF9FF74A7D1D900559E8100559E70
            00559E5600559E4C00559E2900559E2000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000559E67
            8CB7DADF8ADFF9FF3ECFF6FF47D1F6FFD6EBF9FB0E5FA4BB00559E0B00000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000559E1B
            236EADC0E3F3FCFD45D4F7FF93E4FAFF8BB6D8DE00559E630000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00559E77A6C8E2E58BE4FAFFE9F5FDFD1D69AABF00559E160000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00559E2B3378B2C4D7F5FDFFA3C4DFE300559E70000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000559E84BED6E9EA3176B1C300559E23000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000559E381B67A9BE00559E3800000000000000000000000000000000
            00000000000000000000000000000000000000000000000000000000F8001F00
            F8181F00C03C0300C07C0300C03C0700F0101F00F0001F00F8001F00F8001F00
            F8001F00F8003F00F0001F00E0000F00C0000300800001000000010080000100
            C0000700FF00FF00FF01FF00FF81FF00FF83FF00FFC3FF00FFC7FF0028000000
            2000000040000000010020000000000080100000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            1D81D60F51ADEA1550B7F81558BAF6155BB6EF152B8DDB151D81D60C1D81D601
            00000000000000001D81D60A2386D81551ADEA1559BAF6154CB6F91561BBF115
            1E82D61500000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000001D81D603
            2184D8345CBAF13456B9F53445A5E7342084D7341D81D6170000000000000000
            0000000000000000000000001D81D6101D81D625399BE2345CBBF13458B9F434
            2F92DE341D81D60F000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000001D81D620
            3195E05854B6EF583093DF581D81D6371D81D612000000000000000000000000
            000000000000000000000000000000001D81D6021D81D632278BDB584EB0ED58
            3FA2E6581D81D635000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000010000000300000007186BB142
            2E87C9871F77BD88186BB14E0000000700000002000000000000000000000000
            000000000000000000000000000000010000000200000007186BB1421B73BD88
            3086C4891A71B88906192A0F0000000600000002000000010000000000000000
            0000000000000000000000000000000000000001000000060000000E02366232
            0756999F064275580000001B0000000E00000004000000010000000000000000
            00000000000000000000000000000001000000050000000D0000001405437851
            07569AB205417554000000180000000D00000004000000010000000000000000
            000000000000000000000000000000000000000100000002000000060050946D
            3190D0E0166FB2CC0050957B004A892E00000002000000000000000000000000
            0000000000000000000000000000000100000002003C6F11005197690C62A8C4
            3898D8E701559CBD00182D0E0000000500000001000000010000000000000000
            0000000000000000000000000000000000000000000000000000000000559E5D
            328ECEDB48B0F1FF3C9AD8E40A60A7BE00559E6300559E040000000000000000
            0000000000000000000000000000000000559E520358A1BA308CCCD954B5EEFC
            45A4E0ED00559E8A000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000559E32
            1E76B9CA4BB2F1FF3AAAF1FF5AB7EEFB2F89C9D601579FB900559E4A00000000
            000000000000000000559E3000559E7D1F78BACB53AFE9F43FACF1FF3AA9F1FF
            3791D0DC00559E5F000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000559E0B
            065CA3BB64BDF2FE199BF1FF25A1F1FF44AFF2FF56AFE7F21C73B6C800559E74
            00559E2800559E641065ABC04AA2DDE850B5F2FF30A6F2FF189BF1FF4FB4F2FF
            237ABCCC00559E36000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00559E955CB1E6F12BA5F1FF1A9EF1FF1A9EF1FF38ABF2FF5ABAF3FF4CA1DAE4
            1064AAC03C91CDD969BEF0FC41AFF2FF1A9EF1FF1A9EF1FF1B9EF1FF6CC1F2FE
            095EA5BC00559E0C000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00559E6A4C9DD6E043B0F2FF1CA0F1FF1CA0F1FF1CA0F1FF1CA0F1FF47B2F2FF
            6CC1F4FF4CB4F3FF27A4F1FF1CA0F1FF1CA0F1FF1CA0F1FF2DA7F2FF65B5E8F2
            00559E9700000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00559E403586C2D05EBCF4FF1EA3F2FF1EA3F2FF1EA3F2FF1EA3F2FF1EA3F2FF
            1EA3F2FF1EA3F2FF1EA3F2FF1EA3F2FF1EA3F2FF1EA3F2FF46B3F3FF54A2D8E2
            00559E6E00000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00559E151366AAC07ECAF5FF21A7F2FF21A7F2FF21A7F2FF21A7F2FF21A7F2FF
            21A7F2FF21A7F2FF21A7F2FF21A7F2FF21A7F2FF21A7F2FF63BFF4FF3C8AC4D2
            00559E4500000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000559EA284C5EDF631AFF3FF23AAF2FF23AAF2FF23AAF2FF23AAF2FF
            23AAF2FF23AAF2FF23AAF2FF23AAF2FF23AAF2FF23AAF2FF84CDF5FF186AADC1
            00559E1900000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00559E2B00559E9181BFE8EF40B6F4FF26ADF3FF26ADF3FF26ADF3FF26ADF3FF
            26ADF3FF26ADF3FF26ADF3FF26ADF3FF26ADF3FF2AAEF3FF98D3F5FC0A5DA4BB
            00559E4D00000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000559E40
            0559A1BA73B2DEE571CAF6FF28B1F3FF28B1F3FF28B1F3FF28B1F3FF28B1F3FF
            28B1F3FF28B1F3FF28B1F3FF28B1F3FF28B1F3FF28B1F3FF6BC8F6FF8EC8ECF2
            1668ABC000559E57000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000559E521062A6BD
            8BC3E7ED73CCF6FF2BB4F3FF2BB4F3FF2BB4F3FF2BB4F3FF2BB4F3FF2BB4F3FF
            2BB4F3FF2BB4F3FF2BB4F3FF2BB4F3FF2BB4F3FF2BB4F3FF2BB4F3FF69C8F5FF
            9BD1F0F72674B2C500559E640000000000000000000000000000000000000000
            000000000000000000000000000000000000000000559E5C1B6AACC09ECFEFF4
            72CDF7FF2EB8F4FF2EB8F4FF2EB8F4FF2EB8F4FF2EB8F4FF2EB8F4FF2EB8F4FF
            2EB8F4FF2EB8F4FF2EB8F4FF2EB8F4FF2EB8F4FF2EB8F4FF2EB8F4FF2EB8F4FF
            64C9F6FFACDAF6FC3E85BECC00559E6900000000000000000000000000000000
            0000000000000000000000000000000000559E67317BB6C7ADD9F3F870CEF6FF
            30BBF4FF30BBF4FF30BBF4FF30BBF4FF30BBF4FF30BBF4FF30BBF4FF30BBF4FF
            30BBF4FF30BBF4FF30BBF4FF30BBF4FF30BBF4FF30BBF4FF30BBF4FF30BBF4FF
            30BBF4FF5AC8F6FFB6E0F8FD5495C8D300559E6D00559E160000000000000000
            000000000000000000559E0400559E6C4A8DC2CFBAE2F8FC68CEF7FF33BFF5FF
            33BFF5FF33BFF5FF33BFF5FF33BFF5FF33BFF5FF33BFF5FF33BFF5FF33BFF5FF
            33BFF5FF33BFF5FF33BFF5FF33BFF5FF33BFF5FF33BFF5FF33BFF5FF33BFF5FF
            33BFF5FF33BFF5FF51C8F6FF8AD7F8FF74ACD6DE00559E7900559E2C00000000
            000000000000000000559E50649FCED6C4E7FAFE9FDEF9FF8CD9F9FF8AD9F9FF
            6FD2F7FF6FD2F7FF57CCF6FF52CAF6FF41C5F5FF35C2F5FF35C2F5FF35C2F5FF
            35C2F5FF35C2F5FF35C2F5FF35C2F5FF3AC3F5FF52CAF6FF52CAF6FF6CD1F7FF
            6FD2F7FF82D7F8FF8CD9F9FF98DCF9FFA9E1FAFF8EBEE1E6065AA1BA00559E06
            000000000000000000559E181F6CACC0347BB6C64587BDCB629CCBD4649ECCD5
            89B9DDE389B9DDE3A7CFEAEEADD3EDF1C0E1F6F986DAF8FF38C7F5FF38C7F5FF
            38C7F5FF38C7F5FF38C7F5FF6AD3F7FFC8E7F9FCADD3EDF1ADD3EDF18EBCDFE4
            89B9DDE370A7D2D9629CCBD44F8FC2CF347BB6C62B75B2C400559E2C00000000
            00000000000000000000000000559E1800559E2600559E3300559E4C00559E4D
            00559E7000559E7000559E8E00559E951161A5BCCCE8F9FC41CCF6FF3ACAF6FF
            3ACAF6FF3ACAF6FF3ACAF6FFACE4FBFF4184BBCA00559E9500559E9500559E74
            00559E7000559E5900559E4C00559E3C00559E2600559E200000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000559E6C8DB9DCE180DCF9FF3DCDF6FF
            3DCDF6FF3DCDF6FF5AD3F7FFBEDCF1F300559E9B000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000559E1F2B74B1C3C5EDFCFF3FD0F6FF
            3FD0F6FF3FD0F6FF9EE4FAFF6AA0CCD400559E4F000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000559E85B1D1E8EB71DDF9FF
            41D3F7FF4BD5F7FFDAEDF9FB0B5CA2BB00559E08000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000559E39548FC0CDB7EDFBFF
            43D6F7FF8FE5FAFF90B9DADE00559E6600000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000559E0404589FB9D4E7F4F5
            5FDDF8FFEBF7FDFE2871AEC100559E1900000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000559E537CAAD0D7
            A7EDFBFFB7D3E7E900559E810000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000559E0C1362A5BC
            EDF5FBFC4F8BBDCA00559E350000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000559E64
            7AA8CED500559E64000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00559E4D00000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000FE0180FFFC07C07FFC0FE07FE00FC007E007C007E00FC007FC07E07F
            FC03807FFC00007FFE00007FFE0000FFFE0000FFFE0000FFFF0000FFFE0000FF
            FC00007FF800003FF000001FE0000007800000038000000180000003C0000007
            FFE00FFFFFE00FFFFFF00FFFFFF01FFFFFF01FFFFFF83FFFFFF83FFFFFFC7FFF
            FFFEFFFF28000000300000006000000001002000000000008025000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000197ED4022286D706419EE309
            53B3F00955BBF90952BAFA095CBEF8095FBBF20951AAE8093A96DF092586D907
            197ED504197ED5011C80D601197ED4021A7FD5042788D9083B98DF0953ADE909
            5DBBF30957BBF9094EB9FB094FB7F80960BAF1093E9AE109177CD3071C80D601
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000187CD40B2588D8194EAAE81C
            58B9F51C51B8F91C57B8F51C59B5EF1C49A6E71C298BDA1A197ED513197ED509
            1D81D6010000000000000000000000001B80D6031A7ED50D177CD4172F90DC1A
            4BA8E81B55B3F01C52B8F71C53B9F91C64C1F61C44A1E51C1B7FD5191D81D606
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000187CD5172789DA2D54B2EC2E
            61C1F82E57BAF62E4FAFED2E3899E12E2386D82E1F82D71D1D81D60B1D81D602
            000000000000000000000000000000001D81D6011D81D6041C81D60F1D81D61B
            2689D928389AE22E52B2ED2E61C0F52E5EBFF72E44A6E92E2689DA2A1F83D711
            1B7FD50300000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000001D81D6011C80D50A1F83D82E3295E04759BAF047
            57B8F1473EA1E7473193DE402184D732187DD4231B80D50F1D81D60100000000
            0000000000000000000000000000000000000000000000001D81D603197ED50D
            1A7FD51B2286D8333295DE4545A7E74756B8F2474DB0EE473496E0432084D828
            1A7ED50C00000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000001
            0000000200000004000000060B2D4B0E135A972A2073B5543085BF6C3F92C56C
            3488C36A1F77BE5C1770BB3C166CB71E1767AA05000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000001
            08203504166CB6231670BD4A2179C062378DC86B3C90C36D3082BB6C1B6AAB5D
            115189300000000D000000080000000500000002000000010000000100000000
            0000000000000000000000000000000000000000000000000000000000000001
            0000000200000006000000090A2A46151357923A2170AE6E2B7CB6872373B087
            1C6CAD7A1662A34C114A7A1A0C33550A0A2A4603000000000000000000000000
            0000000000000000000000000000000000000000000000000000000100000002
            000000040C31510D135891291869AD591C6FB3852979B5872D7CB4881B69A988
            13589352000000140000000E0000000800000004000000010000000100000000
            0000000000000000000000000000000000000000000000000000000000000001
            00000003000000070000000B051626160E3F6A2E17609B661D67A2821459936E
            114F84520D3C652C0000000F0000000800000002000000010000000000000000
            0000000000000000000000000000000000000000000000000000000100000002
            000000050000000A05132113114B7C331257935A1963A07C1E69A488145B9574
            1044724100000019000000120000000A00000005000000010000000100000000
            0000000000000000000000000000000000000000000000000000000000000001
            0000000200000005000000080000000E0015271803579EC703559AAF03488360
            00000018000000120000000B0000000600000002000000000000000000000000
            0000000000000000000000000000000000000000000000000000000100000002
            00000004000000070000000B00000010000000140753947804569CBA03569CC4
            0013231B000000120000000D0000000700000003000000010000000100000000
            0000000000000000000000000000000000000000000000000000000000000001
            00000001000000030000000500000008003C70230D64A9C63EA2E1F0156EB2CD
            0051968B00498841000000070000000300000001000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000001
            000000020000000400000007004D904C005299961B77BAD141A6E4F302569DBF
            001A32130000000A000000070000000400000002000000010000000100000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000559EAF4DB2EDFB43AFF1FF
            3EA0DEEA136BB1C500559E7700559E2B00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000559E3800559E841671B5C843A5E3EF3FACF1FF46A9E6F200559E9A
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000559E8E45A6E2EE249EF0FF
            2FA4F0FF4AB2F1FF3C9BD9E51067ADC200559E6E00559E220000000000000000
            0000000000000000000000000000000000000000000000000000000000559E2B
            00559E77146DB2C541A1DEEA47B0F1FF2CA2F0FF2CA2F0FF3D9CDAE600559E79
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000559E6E3B97D6E232A6F1FF
            1698F0FF1698F0FF34A7F1FF58B7F1FD3B97D6E20B62A8BF00559E6700559E16
            000000000000000000000000000000000000000000559E2200559E6E1167ADC2
            3F9CDAE54CB3F2FF31A5F1FF1698F0FF1698F0FF3AAAF1FF2F8BCCD900559E56
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000559E4C2D86C7D442ADF1FF
            1799F0FF1799F0FF1799F0FF199AF0FF3AAAF1FF5CB9F0FC3993D1DE075DA5BC
            00559E6300559E0C0000000000559E1900559E670C62A8BF3E99D6E25DBAF1FE
            37A8F1FF1799F0FF1799F0FF1799F0FF1799F0FF4BB2F1FF1F78BACB00559E33
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000559E291A71B4C753B7F2FF
            189BF1FF189BF1FF189BF1FF189BF1FF189BF1FF1C9DF1FF40AEF2FF5FB9EEFB
            368FCDD9055AA2BB00559E6C085DA5BC3D96D3DE61BCF0FC3DACF1FF199BF1FF
            189BF1FF189BF1FF189BF1FF189BF1FF189BF1FF5CBBF2FF0D62A8BF00559E13
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000559E0B075CA3BB68BFF2FE
            1A9DF1FF199DF1FF199DF1FF199DF1FF199DF1FF199DF1FF199DF1FF22A1F1FF
            45B0F2FF62B9EDF8449BD6E164BBEFFB43B0F2FF1D9FF1FF199DF1FF199DF1FF
            199DF1FF199DF1FF199DF1FF199DF1FF20A0F1FF63BAEEF900559EAB00000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000559E9F63B6EAF5
            27A3F1FF1B9EF1FF1B9EF1FF1B9EF1FF1B9EF1FF1B9EF1FF1B9EF1FF1B9EF1FF
            1B9EF1FF23A1F1FF3FADF2FF20A0F1FF1B9EF1FF1B9EF1FF1B9EF1FF1B9EF1FF
            1B9EF1FF1B9EF1FF1B9EF1FF1B9EF1FF32A8F2FF57ABE1EC00559E8800000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000559E7D56A8DEE8
            39ACF2FF1CA0F1FF1CA0F1FF1CA0F1FF1CA0F1FF1CA0F1FF1CA0F1FF1CA0F1FF
            1CA0F1FF1CA0F1FF1CA0F1FF1CA0F1FF1CA0F1FF1CA0F1FF1CA0F1FF1CA0F1FF
            1CA0F1FF1CA0F1FF1CA0F1FF1CA0F1FF44B1F2FF4A9CD5DF00559E6700000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000559E5D4697D0DB
            4DB5F3FF1EA2F1FF1EA2F1FF1EA2F1FF1EA2F1FF1EA2F1FF1EA2F1FF1EA2F1FF
            1EA2F1FF1EA2F1FF1EA2F1FF1EA2F1FF1EA2F1FF1EA2F1FF1EA2F1FF1EA2F1FF
            1EA2F1FF1EA2F1FF1EA2F1FF1EA2F1FF59BAF3FF3688C4D200559E4500000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000559E3A3082BFCE
            63BEF4FF1FA4F2FF1FA4F2FF1FA4F2FF1FA4F2FF1FA4F2FF1FA4F2FF1FA4F2FF
            1FA4F2FF1FA4F2FF1FA4F2FF1FA4F2FF1FA4F2FF1FA4F2FF1FA4F2FF1FA4F2FF
            1FA4F2FF1FA4F2FF1FA4F2FF1FA4F2FF6FC3F4FF1F71B3C500559E2500000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000559E181468ABC0
            7BCAF5FF21A7F2FF21A7F2FF21A7F2FF21A7F2FF21A7F2FF21A7F2FF21A7F2FF
            21A7F2FF21A7F2FF21A7F2FF21A7F2FF21A7F2FF21A7F2FF21A7F2FF21A7F2FF
            21A7F2FF21A7F2FF21A7F2FF23A8F2FF85CCF4FD0459A1BA00559E0600000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000559EAF
            88CBF2FB28ABF2FF22A9F2FF22A9F2FF22A9F2FF22A9F2FF22A9F2FF22A9F2FF
            22A9F2FF22A9F2FF22A9F2FF22A9F2FF22A9F2FF22A9F2FF22A9F2FF22A9F2FF
            22A9F2FF22A9F2FF22A9F2FF35B0F3FF7BBFEAF200559E9A0000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000559E8E
            7ABBE6EE3FB4F3FF24ABF2FF24ABF2FF24ABF2FF24ABF2FF24ABF2FF24ABF2FF
            24ABF2FF24ABF2FF24ABF2FF24ABF2FF24ABF2FF24ABF2FF24ABF2FF24ABF2FF
            24ABF2FF24ABF2FF24ABF2FF4DB9F3FF69ADDCE500559E770000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000559E6C3E89C2CF
            99D4F6FD29AEF3FF26ADF3FF26ADF3FF26ADF3FF26ADF3FF26ADF3FF26ADF3FF
            26ADF3FF26ADF3FF26ADF3FF26ADF3FF26ADF3FF26ADF3FF26ADF3FF26ADF3FF
            26ADF3FF26ADF3FF26ADF3FF2DAFF3FF94D0F3FB2D7BB8C900559E6700000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000559E6C458EC4D1A1D8F7FE
            47BAF4FF27B0F3FF27B0F3FF27B0F3FF27B0F3FF27B0F3FF27B0F3FF27B0F3FF
            27B0F3FF27B0F3FF27B0F3FF27B0F3FF27B0F3FF27B0F3FF27B0F3FF27B0F3FF
            27B0F3FF27B0F3FF27B0F3FF27B0F3FF52BEF5FF9ED6F6FC3480BBCA00559E67
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000559E6D4B92C7D3A5DAF7FE46BBF4FF
            29B2F3FF29B2F3FF29B2F3FF29B2F3FF29B2F3FF29B2F3FF29B2F3FF29B2F3FF
            29B2F3FF29B2F3FF29B2F3FF29B2F3FF29B2F3FF29B2F3FF29B2F3FF29B2F3FF
            29B2F3FF29B2F3FF29B2F3FF29B2F3FF29B2F3FF52BFF5FFA2D8F6FC3A84BDCC
            00559E6900000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000559E0400559E6D5296CAD47BCEF6FF46BCF4FF2BB4F3FF
            2BB4F3FF2BB4F3FF2BB4F3FF2BB4F3FF2BB4F3FF2BB4F3FF2BB4F3FF2BB4F3FF
            2BB4F3FF2BB4F3FF2BB4F3FF2BB4F3FF2BB4F3FF2BB4F3FF2BB4F3FF2BB4F3FF
            2BB4F3FF2BB4F3FF2BB4F3FF2BB4F3FF2BB4F3FF2BB4F3FF52C0F5FFA8DBF7FD
            4088C0CE00559E69000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000559E0E00559E6D599ACDD67CCFF7FF46BEF5FF2DB7F4FF2DB7F4FF
            2DB7F4FF2DB7F4FF2DB7F4FF2DB7F4FF2DB7F4FF2DB7F4FF2DB7F4FF2DB7F4FF
            2DB7F4FF2DB7F4FF2DB7F4FF2DB7F4FF2DB7F4FF2DB7F4FF2DB7F4FF2DB7F4FF
            2DB7F4FF2DB7F4FF2DB7F4FF2DB7F4FF2DB7F4FF2DB7F4FF2DB7F4FF52C2F5FF
            ADDCF8FD468CC2CF00559E6C0000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00559E1500559E6D65A3D2DA7DD0F7FF44BFF5FF2EB9F4FF2EB9F4FF2EB9F4FF
            2EB9F4FF2EB9F4FF2EB9F4FF2EB9F4FF2EB9F4FF2EB9F4FF2EB9F4FF2EB9F4FF
            2EB9F4FF2EB9F4FF2EB9F4FF2EB9F4FF2EB9F4FF2EB9F4FF2EB9F4FF2EB9F4FF
            2EB9F4FF2EB9F4FF2EB9F4FF2EB9F4FF2EB9F4FF2EB9F4FF2EB9F4FF2EB9F4FF
            51C3F5FFB3DFF8FE4D91C5D100559E6C00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000559E19
            00559E6D6EA8D5DD81D2F7FF3FBFF5FF30BBF4FF30BBF4FF30BBF4FF30BBF4FF
            30BBF4FF30BBF4FF30BBF4FF30BBF4FF30BBF4FF30BBF4FF30BBF4FF30BBF4FF
            30BBF4FF30BBF4FF30BBF4FF30BBF4FF30BBF4FF30BBF4FF30BBF4FF30BBF4FF
            30BBF4FF30BBF4FF30BBF4FF30BBF4FF30BBF4FF30BBF4FF30BBF4FF30BBF4FF
            30BBF4FF50C4F5FFB8E1F8FE5696C9D400559E6D00559E040000000000000000
            00000000000000000000000000000000000000000000000000559E1F00559E6D
            75AED8DE84D5F8FF3CC1F5FF32BEF5FF32BEF5FF32BEF5FF32BEF5FF32BEF5FF
            32BEF5FF32BEF5FF32BEF5FF32BEF5FF32BEF5FF32BEF5FF32BEF5FF32BEF5FF
            32BEF5FF32BEF5FF32BEF5FF32BEF5FF32BEF5FF32BEF5FF32BEF5FF32BEF5FF
            32BEF5FF32BEF5FF32BEF5FF32BEF5FF32BEF5FF32BEF5FF32BEF5FF32BEF5FF
            32BEF5FF32BEF5FF4EC5F6FF87D6F8FF5F9DCDD600559E6D00559E0900000000
            000000000000000000000000000000000000000000559E2300559E707FB3DBE1
            88D7F8FF3BC2F5FF34C0F5FF34C0F5FF34C0F5FF34C0F5FF34C0F5FF34C0F5FF
            34C0F5FF34C0F5FF34C0F5FF34C0F5FF34C0F5FF34C0F5FF34C0F5FF34C0F5FF
            34C0F5FF34C0F5FF34C0F5FF34C0F5FF34C0F5FF34C0F5FF34C0F5FF34C0F5FF
            34C0F5FF34C0F5FF34C0F5FF34C0F5FF34C0F5FF34C0F5FF34C0F5FF34C0F5FF
            34C0F5FF34C0F5FF34C0F5FF4BC7F6FF88D7F8FF68A2D0D900559E6D00559E0E
            000000000000000000000000000000000000000000559E7085B7DDE3A9E1FAFF
            9ADDF9FF8CD9F9FF71D2F7FF63CFF7FF52CAF6FF38C3F5FF35C2F5FF35C2F5FF
            35C2F5FF35C2F5FF35C2F5FF35C2F5FF35C2F5FF35C2F5FF35C2F5FF35C2F5FF
            35C2F5FF35C2F5FF35C2F5FF35C2F5FF35C2F5FF35C2F5FF35C2F5FF35C2F5FF
            35C2F5FF35C2F5FF35C2F5FF35C2F5FF35C2F5FF35C2F5FF35C2F5FF3EC4F5FF
            52CAF6FF66D0F7FF74D3F8FF8CD9F9FF9DDEF9FFABE1FAFF6FA7D3DA00559E5A
            000000000000000000000000000000000000000000559E2303579FB9347BB6C6
            4C8DC1CE619CCBD486B7DCE297C4E4E8ABD3EDF1C8E8FAFDC1E8FBFFADE3FAFF
            96DDF9FF8ADAF8FF72D4F7FF5FD0F7FF3EC8F5FF37C5F5FF37C5F5FF37C5F5FF
            37C5F5FF37C5F5FF37C5F5FF37C5F5FF37C5F5FF37C5F5FF37C5F5FF37C5F5FF
            41C9F5FF62D1F7FF72D4F7FF8DDBF9FF9ADEF9FFADE3FAFFC5E9FBFFC1E4F7FB
            ABD3EDF192C0E2E782B4DAE0619CCBD44789BECC3079B4C500559E6D00559E0E
            00000000000000000000000000000000000000000000000000559E0400559E26
            00559E3A00559E4C00559E6E00559E8000559E9500559EB51061A5BC357CB6C6
            5995C7D16BA2CFD78BBADDE3A3CBE8ECC9E6F8FC49CCF7FF39C8F6FF39C8F6FF
            39C8F6FF39C8F6FF39C8F6FF39C8F6FF39C8F6FF39C8F6FF39C8F6FF5CD0F7FF
            C4E3F6FA9FC9E6EA8BBADDE3669FCCD55391C3CF357CB6C60A5CA2BB00559EAF
            00559E9500559E7B00559E6A00559E4C00559E3600559E250000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000559E0C00559E26
            00559E4300559E5200559E7000559E8877AAD4DA8BDDF9FF3ACAF6FF3ACAF6FF
            3ACAF6FF3ACAF6FF3ACAF6FF3ACAF6FF3ACAF6FF3ACAF6FF3ACAF6FF9DE1FAFF
            5A96C7D100559E8400559E7000559E4D00559E3F00559E2600559E0800000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000559E0E1161A5BCCFE8F8FB45CEF6FF3CCCF6FF
            3CCCF6FF3CCCF6FF3CCCF6FF3CCCF6FF3CCCF6FF3CCCF6FF59D3F7FFC2E0F3F6
            03579FB900559E04000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000559E6385B3D8DE8DDFF9FF3DCEF6FF
            3DCEF6FF3DCEF6FF3DCEF6FF3DCEF6FF3DCEF6FF3DCEF6FF9CE2FAFF699FCCD4
            00559E5600000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000559E161766A8BEDAEEFBFC45D1F6FF
            3FD0F6FF3FD0F6FF3FD0F6FF3FD0F6FF3FD0F6FF55D5F7FFCEE6F6F7075AA1BA
            00559E0600000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000559E6A91BBDBE08EE2FAFF
            40D2F7FF40D2F7FF40D2F7FF40D2F7FF40D2F7FF9AE5FAFF77A9D1D800559E5A
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000559E1E1F6BABC0E2F3FCFD
            46D5F7FF42D4F7FF42D4F7FF42D4F7FF51D7F8FFD8ECF7F90E5FA4BB00559E0B
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000559E73A0C3E0E3
            8DE4FAFF43D6F7FF43D6F7FF43D6F7FF9BE7FAFF86B1D5DB00559E5F00000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000559E262B73B0C2
            EBF7FDFE46D8F7FF44D8F7FF4EDAF7FFE3F1FAFB1362A5BC00559E1100000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000559E79
            ABCBE3E68BE6FAFF45D9F7FF9BE9FBFF91B8D9DE00559E630000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000559E2C
            367AB4C5D5F5FDFF4CDCF8FFEDF6FCFC1A67A8BE00559E160000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00559E81B9D4E7E998EBFBFF9DBFDCE000559E6A000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00559E354282B8C7F4F9FDFD266FADC000559E1E000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000559E696E9FCAD200559E6900000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000559E450000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000FFC0000007FF0000FFC0038007FF0000FFC00780
            03FF0000FF000FE003FF0000F0003FF0000F0000F0003FE0000F0000F0001FE0
            000F0000F0003FE0000F0000F0003FF0000F0000FFC07FFC07FF0000FFC01FF0
            07FF0000FFC007C007FF0000FFC0010007FF0000FFC0000007FF0000FFC00000
            0FFF0000FFE000000FFF0000FFE000000FFF0000FFE000000FFF0000FFE00000
            0FFF0000FFE000000FFF0000FFF000001FFF0000FFF000001FFF0000FFE00000
            0FFF0000FFC0000007FF0000FF80000003FF0000FE00000001FF0000FC000000
            00FF0000F8000000007F0000F0000000001F0000E0000000000F0000C0000000
            00070000C000000000070000C000000000070000E0000000001F0000FFE00000
            0FFF0000FFFF0001FFFF0000FFFF8003FFFF0000FFFF8003FFFF0000FFFFC007
            FFFF0000FFFFC007FFFF0000FFFFE00FFFFF0000FFFFE00FFFFF0000FFFFF01F
            FFFF0000FFFFF01FFFFF0000FFFFF83FFFFF0000FFFFF83FFFFF0000FFFFFC7F
            FFFF0000FFFFFEFFFFFF0000}
          ShowHint = True
          OnClick = iupdateClick
          ExplicitWidth = 32
        end
      end
    end
    object Panel11: TPanel
      Left = 1
      Top = 1
      Width = 1982
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Color = 14933977
      ParentBackground = False
      TabOrder = 2
      object ieinstellungen: TImage
        AlignWithMargins = True
        Left = 1942
        Top = 5
        Width = 30
        Height = 31
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 10
        Margins.Bottom = 5
        Align = alRight
        Anchors = [akLeft, akTop, akBottom]
        Center = True
        Picture.Data = {
          055449636F6E0000010004003030000001002000A82500004600000020200000
          01002000A8100000EE2500001818000001002000880900009636000010100000
          01002000680400001E4000002800000030000000600000000100200000000000
          8025000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          868686048686860F8686861C8686862286868622868686208686861D86868618
          868686118686860B868686068686860100000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000008383830780808015828282218383831F8484840F00000000
          8484840D8484842C8A8A8A379696963B9A9A9A3A8E8E8E398A8A8A3888888835
          878787318686862D8484842A8383832684848419868686090000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000008686860186868604
          86868608868686118A8A8A218C8C8C368C8C8C4A8A8A8A478787872C86868608
          848484228B8B8B4D9999994DB4B4B44DBDBDBD4DA1A1A14D9696964D9595954D
          9292924D8E8E8E4D8B8B8B4D8888884D8787873E868686208686860500000000
          8686860186868605868686040000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000848484058282821A
          828282308383833F9E9E9E45B4B4B449AFAFAF4DA1A1A14C8F8F8F448282822C
          878787389A9A9A4DABABAB4DC7C7C74DCDCDCD4DB1B1B14DA8A8A84DA7A7A74D
          A4A4A44DA1A1A14D9D9D9D4D9999994D8C8C8C4B8383833B8686860D00000000
          868686068686861F838383188282820200000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000008484840D848484208686862B8E8E8E3A
          97979749A0A0A04DBEBEBE4DD1D1D14DC3C3C34DB4B4B44DA5A5A54D96969646
          9B9B9B49AEAEAE4DB8B8B84DCBCBCB4DD0D0D04DAFAFAF4DA5A5A54DA7A7A74D
          A7A7A74DA8A8A84DA7A7A74DA2A2A24D9595954D88888849848484268383831B
          868686298888883E93939339979797298787871E828282128484840500000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000086868601848484248A8A8A499595954DA5A5A54D
          B7B7B74DC0C0C04DD1D1D14DD6D6D64DC0C0C04DBBBBBB4DBBBBBB4DAFAFAF4D
          B4B4B44DBABABA4DB4B4B44DC3C3C34DCACACA4DABABAB4DA1A1A14DA4A4A44D
          A2A2A24DA2A2A24DA1A1A14DA0A0A04D9B9B9B4D9292924B8888884184848442
          8888884B8E8E8E4DABABAB4DB7B7B74D8F8F8F46838383328787871C8686860B
          8686860300000000000000000000000000000000000000000000000000000000
          000000000000000000000000838383098787872F9797974DB4B4B44DC3C3C34D
          C3C3C34DC0C0C04DCACACA4DCBCBCB4DB7B7B74DB8B8B84DC1C1C14DBBBBBB4D
          BDBDBD4DB8B8B84DA5A5A54DB5B5B54DC8C8C84DB5B5B54DB1B1B14DAFAFAF4D
          A4A4A44D9696964D9090904D9696964D9D9D9D4D9D9D9D4D9393934B9090904B
          9393934D9595954DB5B5B54DC7C7C74DA0A0A04C929292488E8E8E4187878734
          8484841500000000000000000000000000000000000000000000000000000000
          000000000000000086868604878787128F8F8F36A2A2A24DC1C1C14DC3C3C34D
          B2B2B24DA7A7A74DBBBBBB4DCDCDCD4DAFAFAF4D9D9D9D50A8A8A84DB2B2B24D
          B2B2B24D5B5B5B844A4A4AA1484848B1484848B9545454A15656569E69696984
          6A6A6A81878787699A9A9A5AA4A4A44D9B9B9B4D9E9E9E4D9B9B9B4D9A9A9A4D
          9999994D9999994DB8B8B84DCDCDCD4DABABAB4DA0A0A04D9999994D87878746
          8383831D00000000000000000000000000000000000000000000000086868603
          8686860D84848412888888178F8F8F229999993CA7A7A74DB7B7B74DB2B2B24D
          A8A8A84DA0A0A04DAFAFAF537171717E484848AF3C3C3CD36D6D6D6BAAAAAA4D
          74747469505050E0828282EF9D9D9DF5BABABAF9808080EF7B7B7BEE676767E8
          626262E7505050E0464646DC3F3F3FCC444444B47A7A7A5C9D9D9D4D9D9D9D4D
          9999994D9696964DB4B4B44DCACACA4DABABAB4DA4A4A44DA1A1A14B8B8B8B43
          8484841C00000000000000000000000000000000000000000000000084848412
          7E7E7E358282823F8E8E8E4095959543A2A2A249AAAAAA4DA2A2A24DB2B2B24D
          8686866B535353A44A4A4AD57F7F7FEA969696F48A8A8AF0414141C99797975C
          484848A8868686F0B5B5B5FFC0C0C0FFD4D4D4FFB1B1B1FFAEAEAEFFAAAAAAFF
          A7A7A7FFA2A2A2FFA1A1A1FF969696FC6D6D6DEC444444A79696964D9696964D
          8E8E8E4D8888884DAAAAAA4DC4C4C44DAAAAAA4DA2A2A24DA2A2A24D9A9A9A4B
          8C8C8C2000000000000000000000000000000000868686038383831488888833
          9E9E9E4DA8A8A84DABABAB4DB1B1B14DAAAAAA4DA8A8A84D63636381454545BD
          575757E08E8E8EF0C3C3C3FDD9D9D9FFC0C0C0FFBEBEBEFF7D7D7DEC464646BC
          3F3F3FD6B7B7B7FEB7B7B7FFC0C0C0FFD4D4D4FFB2B2B2FFAFAFAFFFACACACFF
          AAAAAAFFA7A7A7FFA4A4A4FFA2A2A2FFA0A0A0FF545454E366666674A4A4A44D
          686868743D3D3DCE4E4E4EA2868686689B9B9B4D9999994DA1A1A14D9A9A9A4D
          8C8C8C29838383078686860886868604000000008686860B7F7F7F2D9292924D
          D1D1D14DDCDCDC4DCDCDCD4DD0D0D04D69696974404040C16D6D6DE7A7A7A7F7
          C3C3C3FFC3C3C3FFCBCBCBFFDADADAFFC1C1C1FFC0C0C0FFC0C0C0FFA2A2A2F7
          B8B8B8FEBABABAFFB8B8B8FFC1C1C1FFD4D4D4FFB2B2B2FFAFAFAFFFAEAEAEFF
          ABABABFFAAAAAAFFA8A8A8FFA5A5A5FFA4A4A4FF808080F3414141C570707077
          3F3F3FD37F7F7FF38F8F8FF2888888EA424242B75A5A5A7D969696509393934D
          8B8B8B378686861F868686218686860F0000000082828210838383319D9D9D4D
          DDDDDD4DE5E5E54DD0D0D04DD4D4D44D424242BC9A9A9AF3C7C7C7FFC4C4C4FF
          C4C4C4FFC4C4C4FFCDCDCDFFDDDDDDFFC3C3C3FFC1C1C1FFC0C0C0FFBEBEBEFF
          BDBDBDFFBBBBBBFFB8B8B8FFB4B4B4FFB4B4B4FF828282FF828282FF828282FF
          8C8C8CFF9A9A9AFFA8A8A8FFA8A8A8FFA8A8A8FFA5A5A5FF868686F45A5A5AE4
          838383F4A0A0A0FFB7B7B7FFCBCBCBFF8C8C8CF55F5F5FE53C3C3CCC4D4D4D95
          8C8C8C4D8F8F8F41878787408484841C00000000909090158E8E8E33A2A2A24D
          DCDCDC4DD7D7D74DB8B8B84DB8B8B84D3D3D3DD4C0C0C0FDC7C7C7FFC7C7C7FF
          C7C7C7FFC8C8C8FFCDCDCDFFCDCDCDFFBEBEBEFFC1C1C1FFC1C1C1FFBEBEBEFF
          BDBDBDFFBBBBBBFF9B9B9BFF7D7D7DFFD7D7D7FFBDBDBDFFBDBDBDFFB8B8B8FF
          9D9D9DFF808080FF696969FF7E7E7EFFAAAAAAFFA7A7A7FFA7A7A7FFA4A4A4FF
          A2A2A2FFA2A2A2FFB7B7B7FFCBCBCBFFA7A7A7FFACACACFFA8A8A8FC4E4E4EDF
          76767665A7A7A74D8B8B8B4D8383832500000000AAAAAA1A9A9A9A369E9E9E4D
          D4D4D44DCACACA4DA7A7A74D8E8E8E57434343DBC8C8C8FFC8C8C8FFCACACAFF
          C0C0C0FF979797FF838383FFBEBEBEFF737373FF8C8C8CFFAEAEAEFFBEBEBEFF
          BDBDBDFF9A9A9AFF6F6F6FFFD9D9D9FFF9F9F9FFF4F4F4FFF4F4F4FFF4F4F4FF
          F9F9F9FFFDFDFDFFFFFFFFFF959595FF848484FFA8A8A8FFA8A8A8FFA7A7A7FF
          A5A5A5FFA5A5A5FFB8B8B8FFCDCDCDFFA8A8A8FFACACACFFB2B2B2FF4E4E4EDF
          8282826ABEBEBE4D9090904D8383832500000000B5B5B51E9D9D9D389797974D
          5252529F464646BC464646B74D4D4DA87D7D7DEBCBCBCBFFB8B8B8FF909090FF
          787878FFAFAFAFFFF3F3F3FFFDFDFDFFF6F6F6FFBEBEBEFF868686FF797979FF
          969696FF737373FFDDDDDDFFF6F6F6FFE2E2E2FFE3E3E3FFE0E0E0FFDFDFDFFF
          DCDCDCFFDCDCDCFFE2E2E2FFEDEDEDFF6A6A6AFF9B9B9BFFA8A8A8FFA8A8A8FF
          A8A8A8FFA8A8A8FFBBBBBBFFCECECEFFA8A8A8FFACACACFFB1B1B1FF4E4E4EDF
          9A9A9A7FC7C7C74D9393934D8686862600000000BABABA219B9B9B3A484848A1
          747474E8AEAEAEF7A8A8A8F6999999F2CDCDCDFFA2A2A2FF838383FFC0C0C0FF
          FAFAFAFFFAFAFAFFEDEDEDFFE8E8E8FFEBEBEBFFF7F7F7FFFDFDFDFFDFDFDFFF
          A5A5A5FFE5E5E5FFF6F6F6FFE5E5E5FFE3E3E3FFE3E3E3FFE0E0E0FFE0E0E0FF
          DDDDDDFFDCDCDCFFDADADAFFF0F0F0FFBABABAFF7E7E7EFFA5A5A5FF999999FF
          8A8A8AFF808080FF939393FFC0C0C0FFAAAAAAFFACACACFFB1B1B1FF474747DD
          AEAEAE78CACACA4D9393934D8484842600000000B2B2B2234747478E717171E8
          E3E3E3FFDADADAFFCECECEFFCDCDCDFFCECECEFF7E7E7EFFE5E5E5FFF7F7F7FF
          EBEBEBFFE9E9E9FFE9E9E9FFE8E8E8FFE9E9E9FFE8E8E8FFE8E8E8FFF0F0F0FF
          FAFAFAFFEEEEEEFFE6E6E6FFE5E5E5FFE3E3E3FFE3E3E3FFE2E2E2FFE0E0E0FF
          DFDFDFFFDDDDDDFFDCDCDCFFDADADAFFFDFDFDFF7D7D7DFF696969FF7E7E7EFF
          9B9B9BFFB2B2B2FFD0D0D0FF9A9A9AFF7E7E7EFF9E9E9EFFB2B2B2FF5B5B5BE3
          8484848C878787659090904D8282822700000000A1A1A12C3D3D3DC4BABABAFA
          E3E3E3FFDADADAFFCECECEFFCECECEFFD0D0D0FF7F7F7FFFE5E5E5FFEDEDEDFF
          EBEBEBFFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE8E8E8FF
          E8E8E8FFE6E6E6FFE6E6E6FFE5E5E5FFE3E3E3FFE3E3E3FFE2E2E2FFE2E2E2FF
          DFDFDFFFDFDFDFFFDDDDDDFFDDDDDDFFE9E9E9FFFDFDFDFFFFFFFFFFFDFDFDFF
          F7F7F7FFF1F1F1FFE8E8E8FFFAFAFAFFBEBEBEFF6B6B6BFF959595FF909090F4
          5E5E5EE34F4F4FDF3A3A3AD84747475D00000000AAAAAA29464646D0BABABAFA
          E3E3E3FFDCDCDCFFCECECEFFD0D0D0FFD0D0D0FF828282FFE0E0E0FFEEEEEEFF
          EBEBEBFFE9E9E9FFEBEBEBFFE9E9E9FFEBEBEBFFE9E9E9FFE9E9E9FFE8E8E8FF
          E8E8E8FFEBEBEBFFEDEDEDFFF0F0F0FFF3F3F3FFF1F1F1FFEEEEEEFFE9E9E9FF
          E5E5E5FFE0E0E0FFDFDFDFFFDDDDDDFFDCDCDCFFDCDCDCFFD9D9D9FFD7D7D7FF
          D4D4D4FFD3D3D3FFD0D0D0FFD0D0D0FFF1F1F1FFDADADAFF6E6E6EFF979797FF
          BDBDBDFFC3C3C3FF676767E6484848648A8A8A04CBCBCB1B4B4B4BD5BABABAFA
          E3E3E3FFDCDCDCFFCECECEFFBABABAFFB1B1B1FF848484FFDCDCDCFFF0F0F0FF
          EBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFF4F4F4FFF9F9F9FF
          FFFFFFFFE5E5E5FFD6D6D6FFBEBEBEFFA8A8A8FFABABABFFBDBDBDFFD6D6D6FF
          E3E3E3FFFFFFFFFFF6F6F6FFEBEBEBFFDFDFDFFFDCDCDCFFDADADAFFD9D9D9FF
          D4D4D4FFD3D3D3FFD1D1D1FFD0D0D0FFD0D0D0FFEDEDEDFFDFDFDFFF6F6F6FFF
          BABABAFFC7C7C7FF6A6A6AE77A7A7A978A8A8A0EF1F1F1164C4C4CD5BABABAFA
          C7C7C7FF979797FF717171FF8B8B8BFF999999FFA5A5A5FFF1F1F1FFEDEDEDFF
          EDEDEDFFEBEBEBFFEDEDEDFFEEEEEEFFF7F7F7FFF3F3F3FFB5B5B5FF8A8A8AFF
          6A6A6AFF757575FF7B7B7BFF848484FF8F8F8FFF8B8B8BFF828282FF757575FF
          6F6F6FFF666666FF8C8C8CFFBEBEBEFFF9F9F9FFEEEEEEFFDDDDDDFFDADADAFF
          D6D6D6FFD4D4D4FFD1D1D1FFD0D0D0FFD0D0D0FFD1D1D1FFF4F4F4FF6B6B6BFF
          BEBEBEFFD3D3D3FF707070E87878789F88888817FFFFFF0C4B4B4BD3909090FB
          C8C8C8FFF6F6F6FFFFFFFFFFFFFFFFFFFDFDFDFFFCFCFCFFF3F3F3FFEDEDEDFF
          EDEDEDFFEDEDEDFFF6F6F6FFF6F6F6FFA5A5A5FF717171FF909090FFA8A8A8FF
          BBBBBBFFAAAAAAFF979797FF8E8E8EFF848484FF828282FF8C8C8CFF939393FF
          A1A1A1FFABABABFF969696FF7D7D7DFF6F6F6FFFB5B5B5FFFAFAFAFFE9E9E9FF
          D7D7D7FFD6D6D6FFD1D1D1FFD1D1D1FFD0D0D0FFDFDFDFFFC7C7C7FF828282FF
          C1C1C1FFD3D3D3FF717171E87B7B7BA38A8A8A1C00000000494949D26B6B6BFD
          EEEEEEFFF3F3F3FFEEEEEEFFEEEEEEFFEDEDEDFFEDEDEDFFEEEEEEFFEEEEEEFF
          EEEEEEFFF7F7F7FFD0D0D0FE7A7A7AFF959595FFBEBEBEFFAEAEAEFF8E8E8EFF
          717171FF838383FF9E9E9EFFABABABFFBEBEBEFFBDBDBDFFA7A7A7FF969696FF
          7A7A7AFF6A6A6AFF828282FFA0A0A0FF9E9E9EFF7F7F7FFF7A7A7AFFE2E2E2FE
          EDEDEDFFD7D7D7FFD3D3D3FFD1D1D1FFD1D1D1FFF1F1F1FF8F8F8FFFA0A0A0FF
          C1C1C1FFD3D3D3FF7A7A7AEA767676AC9090901A00000000454545DA9A9A9AFE
          FAFAFAFFEEEEEEFFEEEEEEFFEEEEEEFFEDEDEDFFEEEEEEFFEEEEEEFFEEEEEEFF
          F7F7F7FFB5B5B5F8626262FBAAAAAAFFAFAFAFFF888888FF838383FFB7B7B7FF
          EEEEEEFFFDFDFDFFFCFCFCFFF9F9F9FFF4F4F4FFF4F4F4FFF9F9F9FFFCFCFCFF
          FFFFFFFFEDEDEDFFB4B4B4FF767676FF7E7E7EFF9B9B9BFF8A8A8AFF616161FB
          D0D0D0FBEEEEEEFFD4D4D4FFD3D3D3FFD3D3D3FFFCFCFCFF767676FF7F7F7FFF
          A7A7A7FFD1D1D1FF797979EA757575AAAEAEAE0F7E7E7E06414141E4C0C0C0FB
          F4F4F4FFEEEEEEFFEEEEEEFFEEEEEEFFEDEDEDFFEEEEEEFFF0F0F0FFF6F6F6FF
          DADADAED474747ED959595F79B9B9BFF747474FFC7C7C7FFFDFDFDFFF7F7F7FF
          EBEBEBFFE5E5E5FFE9E9E9FFEBEBEBFFEEEEEEFFEEEEEEFFE9E9E9FFE6E6E6FF
          DFDFDFFFE5E5E5FFF4F4F4FFFFFFFFFFBABABAFF6A6A6AFF888888FF797979F8
          4A4A4AEEE5E5E5F1E6E6E6FFD4D4D4FFD1D1D1FFE6E6E6FFFDFDFDFFCECECEFF
          979797FF757575FF676767F1717171AFBEBEBE038A8A8A0DA4A4A4E9AAAAAAFC
          F9F9F9FFF1F1F1FFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFF0F0F0FFFAFAFAFF
          636363B9545454DF7F7F7FF9878787FFEBEBEBFFF7F7F7FFE8E8E8FFE6E6E6FF
          F0F0F0FFF9F9F9FFEBEBEBFDD3D3D3FCAFAFAFF9A7A7A7F8C3C3C3FAE2E2E2FD
          FAFAFAFFEDEDEDFFDCDCDCFFDCDCDCFFF4F4F4FFE6E6E6FF767676FF717171F8
          505050E0616161C0FCFCFCFFD6D6D6FFD3D3D3FFD0D0D0FFCECECEFFE8E8E8FF
          FAFAFAFFF4F4F4FF767676F8636363B60000000083838305F6F6F6E7B2B2B2FF
          B4B4B4FEF7F7F7FFF0F0F0FFEEEEEEFFEEEEEEFFEEEEEEFFF6F6F6FFA8A8A8F7
          5454548E565656DC6F6F6FFBF3F3F3FFF3F3F3FFE6E6E6FFE8E8E8FFF4F4F4FF
          D4D4D4FC8B8B8BFB8C8C8CFF9D9D9DFFB1B1B1FFB1B1B1FF939393FC737373F9
          6D6D6DF7B1B1B1FAF4F4F4FFE5E5E5FFD9D9D9FFEDEDEDFFEBEBEBFE636363FB
          545454DB424242BCB7B7B7FBE5E5E5FFD4D4D4FFD0D0D0FFD0D0D0FFCECECEFF
          CECECEFFE8E8E8FFA2A2A2FA555555C20000000000000000DDDDDD41A4A4A48C
          424242DF9A9A9AFAF7F7F7FFEEEEEEFFEEEEEEFFEEEEEEFFFAFAFAFF7D7D7DF9
          444444B94C4C4CE5C0C0C0FDF4F4F4FFE8E8E8FFE6E6E6FFF4F4F4FFBEBEBEFF
          838383FFD1D1D1FFFDFDFDEEF6F6F6BCF9F9F9D3FDFDFDF5FFFFFFFFFFFFFFFF
          E6E6E6FFB1B1B1FFA2A2A2FFF7F7F7FFE2E2E2FFD9D9D9FFEEEEEEFFB5B5B5FA
          464646E63D3D3DD6717171F8F6F6F6FFD4D4D4FFD0D0D0FFD0D0D0FFCECECEFF
          CECECEFFE2E2E2FFB2B2B2FA535353C70000000000000000747474233C3C3CCC
          7F7F7FF1868686FFD6D6D6FFF3F3F3FFEDEDEDFFEEEEEEFFFDFDFDFF7D7D7DFF
          828282EF5A5A5AEEF7F7F7FFE9E9E9FFE8E8E8FFEEEEEEFFD4D4D4FFA5A5A5F9
          E8E8E8C0FFFFFF7FFDFDFD4DFDFDFD4DFCFCFC4DFCFCFC4DFDFDFD64FFFFFF86
          FFFFFFA9FDFDFDCBB5B5B5F2A5A5A5FFF3F3F3FFD7D7D7FFD6D6D6FFFDFDFDFF
          535353EF8E8E8EF8525252F6FAFAFAFED6D6D6FFD0D0D0FFD0D0D0FFCECECEFF
          CECECEFFE0E0E0FFAEAEAEF7868686B900000000000000005B5B5B123D3D3DD6
          717171FFC7C7C7FFFAFAFAFFEEEEEEFFEDEDEDFFEEEEEEFFFDFDFDFF787878FF
          AEAEAEFD5E5E5EF1FAFAFAFFE8E8E8FFE6E6E6FFF9F9F9FF8A8A8AD78484846D
          B7B7B74DBEBEBE4DCECECE4DDCDCDC4DE2E2E24DE3E3E34DE0E0E04DD7D7D74D
          C7C7C74DB8B8B84DAAAAAA4D545454A7E5E5E5F5DFDFDFFFD6D6D6FFF1F1F1FF
          848484F9909090FF555555F7F0F0F0FDD7D7D7FFD0D0D0FFD0D0D0FFCECECEFF
          DDDDDDFFF1F1F1FFACACACFCA8A8A8AC0000000000000000BBBBBB1C3E3E3EE7
          D4D4D4FFFAFAFAFFEEEEEEFFEEEEEEFFEDEDEDFFEEEEEEFFFCFCFCFF848484FF
          B5B5B5FF878787FEFAFAFAFFE8E8E8FFE6E6E6FFFAFAFAFF676767D164646474
          8F8F8F4D8F8F8F4D9E9E9E4DABABAB4DB2B2B24DB2B2B24DAEAEAE4DA2A2A24D
          9090904D8888884D7171715D464646AEBDBDBDF1E5E5E5FFD6D6D6FFEEEEEEFF
          9D9D9DFF8E8E8EFF555555F9FAFAFAFED4D4D4FFD0D0D0FFD1D1D1FFE9E9E9FF
          E6E6E6FD8A8A8AF8ACACACEDCBCBCB1B000000000000000050505047848484F2
          FAFAFAFFEEEEEEFFEEEEEEFFEEEEEEFFEDEDEDFFEEEEEEFFF9F9F9FFAAAAAAFF
          A1A1A1FF747474FFF9F9F9FFE9E9E9FFE6E6E6FFF4F4F4FF909090F9454545E7
          3A3A3AD8414141BD414141BC414141BC484848A7464646AB414141BC404040BC
          3E3E3EC63A3A3AD8454545DE494949F2E2E2E2FEDDDDDDFFD6D6D6FFF4F4F4FF
          888888FF959595FF6D6D6DFAF7F7F7FFD3D3D3FFD0D0D0FFFDFDFDFFA5A5A5F9
          595959F1C1C1C1FBFFFFFF330000000000000000000000003939390C888888FF
          F9F9F9FFF0F0F0FFEEEEEEFFEEEEEEFFEDEDEDFFEEEEEEFFF1F1F1FFE9E9E9FF
          717171FF939393FFBEBEBEFFF4F4F4FFE6E6E6FFE9E9E9FFF4F4F4FF7D7D7DFF
          939393FFA1A1A1F89D9D9DF79B9B9BF7888888F18A8A8AF3979797F7969696F7
          9D9D9DFAA7A7A7FF7F7F7FFFA2A2A2FFF1F1F1FFD7D7D7FFE0E0E0FFEDEDEDFF
          636363FF7F7F7FFFA7A7A7FCE8E8E8FFD1D1D1FFD0D0D0FFFCFCFCFF686868F1
          C3C3C3FEFFFFFF600000000000000000000000000000000000000000AFAFAFEA
          C1C1C1FFF7F7F7FFEEEEEEFFEEEEEEFFEDEDEDFFEDEDEDFFEEEEEEFFFAFAFAFF
          A2A2A2FF939393FF737373FFDFDFDFFFF4F4F4FFE5E5E5FFF1F1F1FFEBEBEBFF
          888888FF808080FF9D9D9DFFB2B2B2FFB4B4B4FFB2B2B2FFAFAFAFFFA8A8A8FF
          8E8E8EFF717171FFA4A4A4FFFAFAFAFFDDDDDDFFDDDDDDFFF1F1F1FF909090FF
          7F7F7FFF6E6E6EFFF6F6F6FFD6D6D6FFD1D1D1FFCECECEFFE0E0E0FFE9E9E9FF
          6E6E6ECF3939390A00000000000000000000000000000000000000005F5F5F17
          636363BCDCDCDCFAFDFDFDFFFAFAFAFFF3F3F3FFEEEEEEFFEEEEEEFFF0F0F0FF
          FCFCFCFF969696FF909090FF767676FFE9E9E9FFF4F4F4FFE8E8E8FFF0F0F0FF
          FDFDFDFFCDCDCDFF939393FF6D6D6DFF686868FF717171FF666666FF707070FF
          9E9E9EFFDCDCDCFFF7F7F7FFE0E0E0FFE6E6E6FFF6F6F6FFA1A1A1FF787878FF
          606060FFCDCDCDFFE9E9E9FFD3D3D3FFD1D1D1FFCECECEFFCECECEFFEDEDEDFF
          A8A8A8C539393945000000000000000000000000000000000000000000000000
          3939392E393939685F5F5FB3A1A1A1ECD0D0D0FFF3F3F3FFF7F7F7FFEDEDEDFF
          F1F1F1FFF7F7F7FF7F7F7FFD8F8F8FFF717171FFB8B8B8FFFDFDFDFFF1F1F1FF
          E8E8E8FFF3F3F3FFFCFCFCFFFFFFFFFFFFFFFFFFE3E3E3FFFFFFFFFFFFFFFFFF
          F9F9F9FFEBEBEBFFDFDFDFFFF0F0F0FFE9E9E9FF828282FF767676FF5F5F5FFF
          BABABAFFF3F3F3FFD3D3D3FFD1D1D1FFD1D1D1FFCECECEFFDADADAFFFAFAFAFB
          5F5F5F9F39393919000000000000000000000000000000000000000000000000
          0000000000000000393939093939392E5E5E5E7A707070D5FFFFFFFFEBEBEBFF
          EDEDEDFFF3F3F3FFF7F7F7FE9A9A9AF8616161FA8A8A8AFF7F7F7FFFBEBEBEFF
          F1F1F1FFF9F9F9FFF4F4F4FFF0F0F0FFEEEEEEFFEEEEEEFFEEEEEEFFEDEDEDFF
          F3F3F3FFF9F9F9FFF0F0F0FFA8A8A8FF646464FF7A7A7AFF686868FECBCBCBFD
          F4F4F4FFD6D6D6FFD3D3D3FFD1D1D1FFD1D1D1FFD9D9D9FFEEEEEEFF8C8C8CB5
          3939394F00000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000003939390946464693FDFDFDFFEBEBEBFF
          EBEBEBFFEBEBEBFFEDEDEDFFFAFAFAFFE3E3E3FC6F6F6FF25A5A5AF6848484FF
          6D6D6DFF888888FFA1A1A1FFBEBEBEFFC0C0C0FFD9D9D9FFBDBDBDFFB8B8B8FF
          9B9B9BFF7A7A7AFF636363FE616161F7525252F5888888F6F3F3F3FEF1F1F1FF
          D6D6D6FFE5E5E5FFEDEDEDFFF4F4F4FFF6F6F6FFFDFDFDFE929292B739393953
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000003939390F4F4F4F97FDFDFDFFEBEBEBFF
          EBEBEBFFE9E9E9FFE9E9E9FFE9E9E9FFF3F3F3FFFDFDFDFFEBEBEBFDA0A0A0F7
          767676F8676767FE747474FF787878FF838383FF757575FF747474FA5A5A5AF4
          4C4C4CEC454545EC737373F0C3C3C3FAFAFAFAFFF9F9F9FFE0E0E0FFD7D7D7FF
          E8E8E8FFCDCDCDFFAEAEAEF27B7B7BBB666666A23939398C3939395200000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000393939053F3F3F8FBDBDBDD0FCFCFCFC
          F4F4F4FFE9E9E9FFE9E9E9FFE8E8E8FFE9E9E9FFEDEDEDFFEDEDEDFFF9F9F9FF
          FDFDFDFFF7F7F7FED9D9D9FDD3D3D3FCACACACF9A8A8A8F6ABABABF7D6D6D6FB
          DDDDDDFDFAFAFAFFFAFAFAFFF0F0F0FFDDDDDDFFDADADAFFD7D7D7FFD6D6D6FF
          FAFAFAFF5F5F5FA73939393A393939203939391C000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000003939391A393939545A5A5A9C
          CACACAD6FCFCFCFFFAFAFAFFFDFDFDFFFDFDFDFEE3E3E3EEF6F6F6FDF1F1F1FF
          E6E6E6FFE9E9E9FFF0F0F0FFF0F0F0FFF4F4F4FFF4F4F4FFF4F4F4FFEDEDEDFF
          EDEDEDFFE2E2E2FFDDDDDDFFDCDCDCFFD9D9D9FFD9D9D9FFD6D6D6FFE3E3E3FF
          E6E6E6EB39393975000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000039393921
          3939395C5A5A5A9C686868A3494949943939398C39393972626262A0F4F4F4F7
          F0F0F0FFE5E5E5FFE5E5E5FFE5E5E5FFE3E3E3FFE3E3E3FFEEEEEEFFFAFAFAFE
          D6D6D6EBF9F9F9FBF4F4F4FFE6E6E6FFE3E3E3FFF0F0F0FFFDFDFDFED4D4D4DD
          797979AB3939393B000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000393939153939391D3939390C0000000000000000393939486B6B6BA4
          FAFAFAFBF4F4F4FFF4F4F4FFF0F0F0FFEEEEEEFFF3F3F3FFE0E0E0E75D5D5D9E
          3939396441414190828282AFCACACAD6D4D4D4DF939393B94949499439393964
          3939392A00000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000003939394F
          626262A0979797BA979797BAB4B4B4CAC0C0C0D1A1A1A1BF3B3B3B8D39393935
          00000000393939063939392C3939395C39393966393939373939390C00000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          3939391A3939393A3939393A3939394D39393955393939403939390600000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000FFFFFFFFFFFF0000FFFFE001
          FFFF0000FFF820007FFF0000FF80000023FF0000FF80000021FF0000FE000000
          003F0000FC000000000F0000FC000000000F0000F8000000000F0000C0000000
          000F0000C0000000000F00000000000000010000000000000001000000000000
          0001000000000000000100000000000000010000000000000001000000000000
          0001000000000000000100000000000000010000000000000000000000000000
          0000000000000000000000000000000000000000800000000000000080000000
          0000000000000000000000000000000000010000000000000001000080000000
          0001000080000000000100008000000000010000800000000001000080000000
          000300008000000000070000C000000000070000C000000000070000E0000000
          00070000F8000000000F0000FE000000001F0000FE000000003F0000FE000000
          00FF0000FF00000007FF0000FFC0000007FF0000FFF180000FFF0000FFFFC010
          3FFF0000FFFFE03FFFFF0000FFFFFFFFFFFF0000280000002000000040000000
          0100200000000000801000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000008686860C8686861F868686228686861F
          868686198686860F868686070000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000008686860B
          86868628868686458686862D86868601868686409999994DB7B7B74D9696964D
          9292924D8C8C8C4D8888884D8686864886868621000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000086868612868686358E8E8E4D
          BDBDBD4DB4B4B44D9A9A9A4D868686359A9A9A4DB7B7B74DD1D1D14DAFAFAF4D
          ABABAB4DA7A7A74DA2A2A24D9A9A9A4D8686864A8686860B868686098686862B
          8686860E00000000000000000000000000000000000000000000000000000000
          000000000000000000000000868686058686863D9393934DACACAC4DC0C0C04D
          D7D7D74DBBBBBB4DBBBBBB4DAAAAAA4DB8B8B84DB7B7B74DCDCDCD4DA4A4A44D
          A2A2A24DA2A2A24DA4A4A44DA0A0A04D9292924D8686863A868686449090904D
          B4B4B44D8686863B8686861B8686860200000000000000000000000000000000
          000000000000000000000000868686159696964DC3C3C34DC3C3C34DBBBBBB4D
          CBCBCB4DB2B2B24DBDBDBD4DBBBBBB4D88888862595959846060608960606084
          6969697B757575697E7E7E5A9999994DA0A0A04D9696964D9696964D9A9A9A4D
          CBCBCB4D9E9E9E4D9595954D8686863800000000000000000000000000000000
          000000008686860A8686860F90909023A0A0A04DBABABA4DA8A8A84D7A7A7A60
          5A5A5A953F3F3FC94949499FA4A4A44F404040C1696969E89A9A9AF0696969E8
          606060E5515151E0464646DC3E3E3ECE535353879E9E9E4D9A9A9A4D9B9B9B4D
          CBCBCB4DA5A5A54DA4A4A44D8686863B00000000000000000000000000000000
          868686148686864A9393934DA0A0A04DAAAAAA4D6F6F6F6E4C4C4CAE4E4E4EDE
          A4A4A4F2ACACACFB6F6F6FE94A4A4AAE6D6D6DE9B7B7B7FFD1D1D1FFAFAFAFFF
          AAAAAAFFA7A7A7FFA2A2A2FF8E8E8EF93B3B3BD3767676607878785D4949499C
          86868668A1A1A14DA4A4A44D9A9A9A480000000000000000000000008686860A
          8686864AD7D7D74DCBCBCB4DABABAB57414141BA5A5A5AE1929292F1C0C0C0FF
          D7D7D7FFBBBBBBFFBBBBBBFF929292F3B8B8B8FFB7B7B7FFC3C3C3FF909090FF
          8C8C8CFF969696FFA1A1A1FFA0A0A0FF6F6F6FEE464646B6414141C86D6D6DED
          8C8C8CEB414141B75D5D5D7E8A8A8A4E8686861F8686861B0000000086868612
          9696964DE5E5E54DCBCBCB4D787878725B5B5BE3C3C3C3FFC3C3C3FFB5B5B5FF
          BBBBBBFFA5A5A5FFBDBDBDFFBBBBBBFFBABABAFF878787FFB2B2B2FF9D9D9DFF
          9D9D9DFF848484FF6A6A6AFF7A7A7AFFA0A0A0FF848484F58E8E8EFA9A9A9AFF
          CBCBCBFF8C8C8CF6606060E6444444B39B9B9B4D8686864400000000A7A7A71A
          9696964DA4A4A45F757575696060608E6F6F6FE8AFAFAFFF8B8B8BFF797979FF
          C7C7C7FF8E8E8EFF747474FF929292FF888888FF9D9D9DFFFDFDFDFFFAFAFAFF
          FAFAFAFFFDFDFDFFFFFFFFFF939393FF808080FF9E9E9EFF9A9A9AFF9B9B9BFF
          CBCBCBFFA5A5A5FF929292F6424242B8C1C1C14D8888884A00000000B8B8B820
          606060713F3F3FD3565656E0737373E8888888FA838383FFC4C4C4FFFCFCFCFF
          FAFAFAFFFDFDFDFFEBEBEBFFABABABFFABABABFFFCFCFCFFEBEBEBFFE2E2E2FF
          E0E0E0FFDDDDDDFFE3E3E3FFEDEDEDFF676767FF848484FF767676FF6E6E6EFF
          B2B2B2FF969696FF929292F6595959D6CBCBCB4D8B8B8B4C000000006F6F6F39
          3B3B3BD3CACACAF8CBCBCBFFCACACAFF767676FFEDEDEDFFF7F7F7FFE9E9E9FF
          E8E8E8FFE8E8E8FFEEEEEEFFF9F9F9FFF9F9F9FFEBEBEBFFF0F0F0FFEDEDEDFF
          E6E6E6FFE2E2E2FFDCDCDCFFF0F0F0FFBEBEBEFF9A9A9AFFB7B7B7FFD0D0D0FF
          C3C3C3FF676767FF848484FB4C4C4CD8646464845454547E000000005D5D5D53
          595959E1E5E5E5FFCBCBCBFFCACACAFF787878FFEDEDEDFFEEEEEEFFE9E9E9FF
          E8E8E8FFEEEEEEFFF6F6F6FFFDFDFDFFE8E8E8FFDDDDDDFFBEBEBEFFC1C1C1FF
          DDDDDDFFF0F0F0FFFCFCFCFFEEEEEEFFF0F0F0FFF9F9F9FFF1F1F1FFE8E8E8FF
          F3F3F3FFDADADAFF717171FF7E7E7EFA6A6A6AE83C3C3CC8000000007E7E7E5C
          585858E1D1D1D1FF8C8C8CFF7E7E7EFF707070FFE3E3E3FFEEEEEEFFF1F1F1FF
          F9F9F9FFDCDCDCFFA1A1A1FF717171FF747474FF787878FF848484FF808080FF
          717171FF6A6A6AFF737373FFAAAAAAFFEDEDEDFFEEEEEEFFDCDCDCFFD4D4D4FF
          D3D3D3FFEDEDEDFFEBEBEBFF6D6D6DFFBDBDBDFD3F3F3FD38A8A8A0E93939369
          4E4E4EEACBCBCBFFCACACAFFE0E0E0FFF9F9F9FFF9F9F9FFF6F6F6FFF4F4F4FF
          6B6B6BF37A7A7AFE9B9B9BFFB8B8B8FFBBBBBBFFB7B7B7FFA4A4A4FFA4A4A4FF
          AEAEAEFFAEAEAEFFA4A4A4FF848484FF696969FF8E8E8EF8FDFDFDFFE3E3E3FF
          D3D3D3FFDADADAFFE2E2E2FF737373FFC7C7C7FD444444D98A8A8A197F7F7F63
          4D4D4DF2F7F7F7FFF9F9F9FFF6F6F6FFEEEEEEFFF6F6F6FFE2E2E2FD8A8A8AF0
          404040E5BBBBBBFDC1C1C1FF999999FF767676FF696969FF808080FF7D7D7DFF
          666666FF717171FF8E8E8EFFABABABFFA5A5A5FF3A3A3AE59D9D9DFDF0F0F0FE
          E5E5E5FFE9E9E9FFAAAAAAFF8C8C8CFFC7C7C7FF3E3E3ED89292921A61616180
          7F7F7FF6FAFAFAFFF0F0F0FFF0F0F0FFEEEEEEFFF7F7F7FE8E8E8EFD8B8B8B95
          414141D9A0A0A0FD808080FFA1A1A1FFE2E2E2FFFFFFFFFFFDFDFDFFFFFFFFFF
          FFFFFFFFDDDDDDFF999999FF767676FF939393FF3A3A3AD8848484A58A8A8AFA
          FAFAFAFFDDDDDDFFDCDCDCFF9E9E9EFF7D7D7DFF3A3A3AE4BDBDBD07ABABAB5A
          8B8B8BFCF4F4F4FFF6F6F6FFF0F0F0FFF6F6F6FFA4A4A4F8888888D0C7C7C74D
          424242DD6E6E6EFED0D0D0FEFCFCFCFFF7F7F7FFE8E8E8FEBABABAFBB1B1B1FA
          D3D3D3FBF9F9F9FFFAFAFAFFC7C7C7FD606060FA3A3A3ADD8F8F8F4D7F7F7FB8
          B2B2B2F7E6E6E6FFE3E3E3FFF7F7F7FFF9F9F9FF585858EF38383823FFFFFF3C
          B1B1B1FD686868F5F4F4F4FFF1F1F1FFFAFAFAFF7B7B7BF9474747BBAFAFAF4D
          3F3F3FE5A7A7A7F9F7F7F7FFFAFAFAFFA5A5A5FE8F8F8FFFB1B1B1FFB1B1B1FF
          9A9A9AFF959595FDEEEEEEFEF3F3F3FFB7B7B7FA3E3E3EE77E7E7E556F6F6FA1
          797979ECF6F6F6FFD3D3D3FFD1D1D1FFEEEEEEFF7B7B7BF03838383E00000000
          484848B7606060F2C1C1C1FFF6F6F6FFFCFCFCFF808080FF6E6E6EEA464646A8
          525252F1F6F6F6FFF3F3F3FFC0C0C0FFB2B2B2F8FFFFFFB4FFFFFFA1FFFFFFC6
          FFFFFFECBEBEBEFFA4A4A4FFF4F4F4FFFDFDFDFF808080FD414141B96B6B6B93
          5D5D5DE2FDFDFDFFD3D3D3FFD3D3D3FFEDEDEDFF979797F74646464239393905
          3D3D3DCDBDBDBDFCFCFCFCFFF0F0F0FFFAFAFAFF909090FFAEAEAEFF979797F2
          3D3D3DEEF6F6F6FFF6F6F6FFA4A4A4E46969697EACACAC4DBDBDBD4DBDBDBD4D
          B5B5B54D9D9D9D6A6A6A6AD1FCFCFCFFFCFCFCFF4B4B4BF0606060E9808080AB
          646464DFFAFAFAFFE0E0E0FFF3F3F3FFB5B5B5F9888888FF9B9B9B153939391F
          787878E7FDFDFDFFF0F0F0FFF0F0F0FFF6F6F6FFBBBBBBFF929292FFC7C7C7FF
          888888FEB8B8B8FCF4F4F4FFD9D9D9FC3F3F3FEE3F3F3FCC404040C0414141BD
          3E3E3ECC3A3A3AE8929292F6EEEEEEFFDFDFDFFE686868FE636363E8717171C3
          909090E5F0F0F0FFFDFDFDFF6E6E6EF1A7A7A7FDCECECE900000000000000000
          888888D0DFDFDFFFF6F6F6FFF1F1F1FFF0F0F0FFF7F7F7FF7D7D7DFF9A9A9AFF
          AFAFAFFF737373FFE3E3E3FFF6F6F6FFE5E5E5FF8F8F8FFC6A6A6AFB5D5D5DFB
          848484FDD4D4D4FFF7F7F7FFF7F7F7FF797979FF808080FF5D5D5DEA555555DD
          E5E5E5F7DFDFDFFFEBEBEBFFB1B1B1FDA8A8A8CAFFFFFF030000000000000000
          A8A8A886909090F9D3D3D3FFF4F4F4FFFAFAFAFFF7F7F7FFE2E2E2FD666666F9
          999999FF999999FF6F6F6FFFB5B5B5FFF6F6F6FFFDFDFDFFFFFFFFFFFFFFFFFF
          FDFDFDFFFDFDFDFFCACACAFF717171FF797979FF8B8B8BFF676767FBAEAEAEFA
          F0F0F0FFD4D4D4FFDCDCDCFFF7F7F7FE44444496393939050000000000000000
          00000000606060317F7F7FA6848484F29D9D9DFFFAFAFAFFF7F7F7FFDFDFDFFD
          606060F1626262F1A7A7A7FD8B8B8BFF6A6A6AFF878787FF9E9E9EFF9D9D9DFF
          939393FF6D6D6DFF747474FF8B8B8BFF737373FB575757F8B5B5B5FAF4F4F4FF
          DCDCDCFFDDDDDDFFEEEEEEFF939393C03939394B000000000000000000000000
          0000000000000000000000005E5E5E0C646464B9FDFDFDFFEDEDEDFFF4F4F4FF
          FDFDFDFFB5B5B5F9545454EC525252F47F7F7FFD939393FF939393FF8F8F8FFF
          767676F7626262ED4A4A4AEB444444EE7D7D7DF3EBEBEBFEF3F3F3FFFAFAFAFF
          E9E9E9F9E2E2E2E8939393B93939395300000000000000000000000000000000
          0000000000000000000000003939390641414190E5E5E5E9F9F9F9FFF0F0F0FF
          EEEEEEFFF7F7F7FFFDFDFDFFE9E9E9FDA4A4A4F6878787F67B7B7BF35A5A5AED
          878787F4979797F7CECECEFCFCFCFCFFFAFAFAFFE5E5E5FFFAFAFAFF8F8F8FFF
          707070B839393972393939370000000000000000000000000000000000000000
          0000000000000000000000000000000039393939393939738C8C8CB5DDDDDDE4
          DDDDDDE8C8C8C8EDD7D7D7FEF6F6F6FFF6F6F6FFFAFAFAFFFCFCFCFFFDFDFDFF
          FAFAFAFFFCFCFCFFF4F4F4FFE5E5E5FFE8E8E8FFF3F3F3FFE6E6E6F24343437F
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000393939333939396C
          3939396C393939554848486FC7C7C7E8FAFAFAFFF7F7F7FFF4F4F4FFFDFDFDFF
          BDBDBDF2848484D6AFAFAFD8DCDCDCE6C7C7C7D5828282AF3F3F3F8F3939393B
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000003939391B3B3B3B8D6A6A6AA68F8F8FC99E9E9ECA686868A4
          393939523939391A393939453939396B3939395B3939392C3939390500000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000393939033939391D3939392A3939393A3939391D
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000FFFFFFFF
          FFF80FFFFF0003FFFC00003FF0000007F0000007C00000078000000700000001
          0000000100000001000000010000000100000001000000000000000000000000
          0000000000000000000000008000000000000000000000018000000180000001
          C0000003F0000007F000000FF800007FFE00007FFFE000FFFFF07FFF28000000
          1800000030000000010020000000000060090000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          8282820A84848407868686028686861F8C8C8C2B878787288686861F84848415
          8484840B86868601000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000828282128A8A8A2B
          9B9B9B478E8E8E3E838383249999994DC0C0C04DA7A7A74D9B9B9B4D9595954D
          8B8B8B4B84848419000000008383830B00000000000000000000000000000000
          000000000000000000000000000000008484840B888888359A9A9A48BBBBBB4D
          CDCDCD4DB1B1B14DA2A2A24CB7B7B74DCACACA4DABABAB4DA4A4A44DA7A7A74D
          9B9B9B4D8888883D838383309595954496969634828282150000000000000000
          0000000000000000000000000000000087878721AAAAAA4DC0C0C04DC0C0C04D
          BEBEBE4DB4B4B44DBABABA4DACACAC4DC3C3C34DC4C4C44DBABABA4DA4A4A44D
          9B9B9B4D9A9A9A4D9292924DA8A8A84DB7B7B74D9292924B8686862800000000
          00000000000000008282820F8383832196969637AAAAAA4DB1B1B14DC7C7C74D
          7D7D7D746A6A6A7799999953464646B65B5B5BC3484848BC515151AB5A5A5A9F
          616161848C8C8C509393934DA1A1A14DBABABA4DA1A1A14D8C8C8C3000000000
          000000008383830E99999944B7B7B74DAFAFAF4DA0A0A0556666668D4B4B4BCE
          717171E73F3F3FD5535353A4717171EAB7B7B7F9979797F7848484F3767676EF
          616161E85252529299999955676767809E9E9E539A9A9A4D9292923B8383830C
          8686860383838320BEBEBE4DDFDFDF4D6F6F6F723F3F3FD2787878EAB5B5B5FA
          C1C1C1FFB5B5B5FE878787F0ABABABFFA5A5A5FF717171FF7D7D7DFF7A7A7AFF
          8B8B8BFB3F3F3FD5474747C0707070E9636363DA4E4E4E9C7575755E8E8E8E45
          8484840FA0A0A026B7B7B74DC0C0C04D525252927A7A7AEB999999FF808080FF
          8F8F8FFF7F7F7FFF9E9E9EFF696969FFC7C7C7FFDDDDDDFFBBBBBBFFB2B2B2FF
          696969FF878787FE878787F8A7A7A7FFB1B1B1FD7A7A7AEE4D4D4D9FA5A5A54D
          86868612A7A7A72A52525298484848BC464646D16D6D6DFDA2A2A2FFE8E8E8FF
          FFFFFFFFCECECEFF909090FFC8C8C8FFF9F9F9FFEDEDEDFFF3F3F3FFF6F6F6FF
          C0C0C0FF717171FF717171FF787878FF9D9D9DFF7B7B7BEF575757A9ABABAB4D
          84848413535353668A8A8AEBB7B7B7F8969696FCA5A5A5FFFCFCFCFFF1F1F1FF
          E9E9E9FFF4F4F4FFFDFDFDFFF9F9F9FFFAFAFAFFF9F9F9FFF3F3F3FFEDEDEDFF
          F6F6F6FFAFAFAFFFBDBDBDFFDCDCDCFF9D9D9DFF747474FB4B4B4BD64A4A4A9C
          5D5D5D204E4E4E6D8E8E8EEEA7A7A7FF8F8F8FFFA1A1A1FFF7F7F7FFF1F1F1FF
          FAFAFAFFE6E6E6FFACACACFFA0A0A0FF828282FF838383FF9D9D9DFFAFAFAFFF
          EEEEEEFFF7F7F7FFEEEEEEFFE3E3E3FFF7F7F7FFB8B8B8FF636363FC545454E0
          5252523C6E6E6E997D7D7DF7BABABAFFC1C1C1FFE5E5E5FFF6F6F6FFE8E8E8FE
          757575F8767676FF909090FF969696FF969696FF959595FF8E8E8EFF828282FF
          636363FF868686FAF4F4F4FEE8E8E8FFD9D9D9FFEBEBEBFF6E6E6EFF676767E4
          6E6E6E535A5A5AB7ABABABFAFCFCFCFFF9F9F9FFF7F7F7FFD9D9D9FD787878F8
          4F4F4FE9A5A5A5FF808080FF7B7B7BFF939393FC979797FF7A7A7AFF6E6E6EFF
          878787FF494949EA808080FCE5E5E5FEE6E6E6FFBDBDBDFF7E7E7EFF626262EA
          838383665B5B5BC0D9D9D9FDF7F7F7FFF0F0F0FFFAFAFAFF7E7E7EFB878787BF
          4D4D4DEA7E7E7EFDC4C4C4FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDFD
          717171FB484848EA848484CD8B8B8BFDFCFCFCFFF4F4F4FFD7D7D7FF757575F5
          66666678A1A1A1907A7A7AFBE3E3E3FDF4F4F4FFCDCDCDFD4B4B4BE384848497
          595959F3F6F6F6FEEEEEEEFEA0A0A0FE828282FF828282FE929292FBE5E5E5FE
          F7F7F7FF555555F1767676996D6D6DC4C4C4C4FBDFDFDFFFE6E6E6FFC7C7C7FA
          4E4E4EA1B4B4B455393939DFB8B8B8FDF6F6F6FFC3C3C3FF6E6E6EF6454545D2
          A4A4A4FBF7F7F7FFACACACFFBEBEBEFEFCFCFCE2F9F9F9FFC7C7C7FF969696FF
          F9F9F9FFBDBDBDFE464646D0626262AEA4A4A4F8E6E6E6FFE9E9E9FFCECECEFB
          5B5B5B903939394F9D9D9DF3FCFCFCFFF3F3F3FFDCDCDCFF7E7E7EFF8A8A8AF9
          797979F4F7F7F7FF969696F04D4D4DB25454548F5E5E5E8A5B5B5BB8646464E7
          F9F9F9FF929292F64D4D4DEB5F5F5FB4BABABAFAE3E3E3FFB1B1B1F8828282FD
          939393694B4B4B35A1A1A1FCFAFAFAFFF4F4F4FFFCFCFCFF848484FD959595FF
          6D6D6DFFD3D3D3FEFDFDFDFF999999FA616161F74A4A4AF5808080F9E6E6E6FE
          E5E5E5FE666666FF505050E8626262D6F6F6F6FEF3F3F3FF959595FBD1D1D1CC
          FFFFFF0600000000B1B1B1FBB4B4B4FFD9D9D9FFFDFDFDFFE9E9E9FD5D5D5DF5
          797979F86B6B6BFFA7A7A7FFE8E8E8FFFFFFFFFFFFFFFFFFF0F0F0FF9D9D9DFF
          646464FF7D7D7DFF595959FACACACAFBE9E9E9FFE9E9E9FFD3D3D3FB4949496B
          0000000000000000E5E5E51BA8A8A8A69E9E9EF6C1C1C1FFF6F6F6FFF6F6F6FF
          8E8E8EF4454545EE6D6D6DF5717171FF676767FF646464FF5A5A5AFA5B5B5BEF
          464646EF5B5B5BEFE5E5E5FDF7F7F7FFFAFAFAFFE9E9E9FA5D5D5DAB39393924
          000000000000000000000000000000004B4B4B44A5A5A5D9FCFCFCFFF4F4F4FF
          FAFAFAFFF0F0F0FEA8A8A8F7828282F4646464F2575757ED7A7A7AF2A2A2A2F8
          E2E2E2FEFDFDFDFFF6F6F6FFA1A1A1FF636363B2393939763939393C00000000
          000000000000000000000000000000000000000039393953686868A4C1C1C1E1
          BDBDBDF4BBBBBBFFFCFCFCFFFCFCFCFFFDFDFDFFFDFDFDFFF3F3F3FFFDFDFDFF
          F6F6F6FFFCFCFCFFD3D3D3F67E7E7EA77D7D7D1A000000000000000000000000
          0000000000000000000000000000000000000000000000003939391D39393954
          3939394A6F6F6F7B9E9E9EE8D0D0D0FFE5E5E5FFC4C4C4FE7A7A7AE4747474CD
          939393C95252529B3939395F3939392500000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000003939392E59595976585858923939394F393939143939390D
          393939303939390F000000000000000000000000000000000000000000000000
          00000000FE007F00F8005F00E0000700E0000300800003000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000008000010080000100E0000300F0000F00F8001F00
          FF807F0028000000100000002000000001002000000000004004000000000000
          0000000000000000000000000000000000000000000000000000000086868611
          868686198484841596969634909090328A8A8A2A868686190000000000000000
          00000000000000000000000000000000000000008484840F92929233B2B2B24B
          AEAEAE4D9E9E9E47BEBEBE4DAAAAAA4D9D9D9D4D9292924B868686269292922E
          888888158484840100000000000000008080800592929234B4B4B44DC4C4C44D
          B8B8B84DA0A0A052868686698C8C8C69C7C7C74DA0A0A04D8F8F8F4DACACAC4D
          A1A1A14C868686190000000086868615A4A4A442ABABAB4B7B7B7B715E5E5EB0
          444444C5525252A46E6E6EE64E4E4EE43F3F3FD8444444C1929292557F7F7F69
          A4A4A44D8C8C8C2B8484840499999931CECECE4D52525295585858E6838383F8
          808080FB6F6F6FF4868686FF7F7F7FFF626262FF565656F1434343C9717171E6
          464646BA6E6E6E6788888820888888405454549E3F3F3FD77E7E7EFDCACACAFF
          B1B1B1FF888888FFE9E9E9FFFDFDFDFFFFFFFFFF888888FF666666FD868686FF
          5B5B5BED5D5D5D848E8E8E27464646978F8F8FF26A6A6AFDF6F6F6FFF7F7F7FF
          FCFCFCFFFFFFFFFFE0E0E0FFE3E3E3FFFFFFFFFFEEEEEEFFD0D0D0FEDADADAFF
          7A7A7AFD404040DA4F4F4F58414141BB9E9E9EFCA4A4A4FFFAFAFAFFDDDDDDFC
          848484FB686868FF757575FF6E6E6EFF636363FF8A8A8AFDE2E2E2FDF1F1F1FF
          F1F1F1FF5B5B5BF74949497F595959E6FDFDFDFFFCFCFCFFCECECEFC616161F6
          5F5F5FF16F6F6FF9A2A2A2F7A7A7A7F97A7A7AF9585858F3606060F6D7D7D7FD
          DDDDDDFE686868F8515151BA737373DFD1D1D1FCFCFCFCFF696969F56A6A6AE1
          9E9E9EF7E3E3E3FDA0A0A0FC979797FBD9D9D9FDABABABF9646464E8808080FA
          F9F9F9FFFFFFFFFF5D5D5DDB707070CCAAAAAAF9FDFDFDFF6D6D6DFB3F3F3FE9
          F6F6F6FF999999FEC7C7C7FFCECECEFF888888FEFFFFFFFF464646EA5B5B5BE3
          FDFDFDFFEBEBEBFD6F6F6FCE4646469FF3F3F3FDF7F7F7FF929292FA737373F8
          AEAEAEFAC1C1C1FA515151EF434343EE9E9E9EF8C3C3C3FB4D4D4DF1828282E2
          FCFCFCFF838383F99E9E9EA8868686899A9A9AFFBEBEBEFEF9F9F9FF6B6B6BF2
          545454EF909090FDBBBBBBFFC1C1C1FF8C8C8CFC525252F2585858F2EDEDEDFC
          F3F3F3FFA4A4A4F975757547FFFFFF18D4D4D4A8828282FCF9F9F9FFFDFDFDFF
          CECECEFC797979F25F5F5FF15A5A5AEE747474F2BABABAFBFCFCFCFFA8A8A8D6
          A0A0A0EF717171820000000000000000000000004F4F4F5B717171CCAFAFAFFA
          A4A4A4FFF1F1F1FFFDFDFDFFEEEEEEFFD4D4D4FFE9E9E9FFBEBEBEFFA7A7A7D4
          3939392A00000000000000000000000000000000000000003939390C46464641
          92929292868686F0999999FF848484F8979797D46F6F6FB6626262643939390E
          000000000000000000000000F01F0000C0010000800100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00010000C0030000E0070000}
        OnClick = ieinstellungenClick
        ExplicitLeft = 155
        ExplicitTop = 0
        ExplicitHeight = 30
      end
      object iueber: TImage
        AlignWithMargins = True
        Left = 1902
        Top = 5
        Width = 30
        Height = 31
        Hint = 'aktuelle Versionsnummer und Programm'#228'nderungen / Neuerungen'
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alRight
        Anchors = [akLeft, akTop, akBottom]
        Center = True
        ParentShowHint = False
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF4000006CC4944415478DAB5960B6C53D719C7FFE73E
          6C27711C93409C3494903624AC833EA48AA232CAD6115A092A119289494945A9
          36ADADD276AB0455509BB663508AD40A69EA04D526B2564008988C6D5D51BA22
          0D754C433C46C2233CF2701E26C189ED3C706C5FFB9C7EE7DAC0FA0A76951EEB
          DC737D8EEFF7FDCEFFFBCE77CD841048A7455B990B020F83A19CA928322705FA
          E8DA41FD94BE5CF8D2B1C75205087FCC9642C1CB70DC53A1CC58E688C5C710F2
          B9014585422654B2A37111D4E2A2958076589F14FF991680D05FD94C32F81E2B
          58F2B47E6F3D14E7A3E454078F7811BC508DD88D7630C50AD30C5D54CE6135B8
          B044F99FE97643E65362F83B03DC686125D0F423DA82DF95594A3690EA1C3C3A
          006EF820E221727E16377A1BE87E922C2990B64C7B528D28872D14BB0C433C99
          5529BAD306183FC0EE122A3EB32D3930DFE2AA86888D90E3617216048F0568A4
          CE27618C7D8EC848133DA1998E6F0270924D3108C21FBD421015D93F139EB400
          46F7B256FDE1FA8ACCB2ADE4D89BDCF518F511EAE304114C4284608C7E8278B8
          CB841082033C01223F4A28068B2FF239DD3EE658FB7567DF0810FC905562F6BC
          438E1F1F076293E4CC0745CB07D367221E3A096382F28B4F804B008211C6208C
          D0299A8B277281826FDA95A384F047A0FA8C679D4F8BDD7704F0EF660EC1D09C
          F1F8E627328A9E432C7C852435A0DB7F44AB0A29314092EF24C7FE4438E2A389
          D1B866C2404680279D931A82461871285DA113888ACADCF5C23B25C0F0076C19
          72D062FFE9CE19BA7D19E2D14E33F9F4EC0A33E63CE645C4BF33190A190602E0
          0413BB410E63893CE049C732145215FAB09E908111A326EF97E2C09400BE9DAC
          9E1559B6AAA5B36173D640CDF881D494149000247BAC17D1E007C9F807131004
          964840FE15001AE3320CD4AF85217A27B7CDFA95A89F1260E87DB65B2DB53FA3
          CCB6D0228796B9101AC96F75AE23A30192DA83E8582319270538C55F44130F26
          1DC3945DFC1F40DC04E0D7A3885F1E6F743D2FD64F0930B883EDD0CAEC2F6BA5
          D9605CFEC28062C9876DD65B643C420A7422163A44F761531912D7747AEB08F2
          2400394E005058D46CC4BD0118E7FD7F2A7851FC624A8081EDAC529F6DDB675D
          9467056760AA4A35862A5CC64354000B291FDBC9EE1018A373CF9048BAC4E5F6
          AE6FEE9C9C339607E85988B49F83D131F1DA5D1BC4962901FADF664E6661CD59
          2B0A2A143B8581329FA90A1D006E8E4CD1CC6E7A4F02DCDCFD6DD90D33F64C29
          A4E70A20A21E8CB79EED8B07F89ABB37899377AC03BD9BD963FA9CCC7FD97FE2
          A21D286687269590007294CE196E4B90CC76DAB11C21287C4A31F55C5ABA8EF1
          E3C7106E1FAB2B6E10EFA75C09BB5F67F519F739B63A1E2F20835201855E7CAA
          394A1EDCF29F945FD8E8924353F9343983D66C04741DC1A37F27E7FEDFCFFDAD
          78E99BFC4CF932BABA896DB73F32738373A92B0121D5D034027112888344B0D2
          AFACE68E41C543089D9C525A925AF1891EF83FFD1B426DBECDA5DB44C3B7F9B8
          E3EBF8E2ABCA1B593F74BE99BFF26E2856197B9913D9043187C6FBE97B06C91E
          4D9661AA78BA8E90E718065B3E09C4AE875F98FF8E689ACA7E4A7F48DA5F51D7
          6696E77C58545D6CD12831E5238A4A09A7E613CE4AFA2E21E8B8EA3604FFF70F
          780F359F156156B9607BBCFB4EB653FE47D4F61BB6422B741C28595FEAD09DD6
          6432D219E773687525A961C5C8895678F7EFFE98A2547BDF3B542653682903C8
          F6DFE7D8ABF3EB4AB6E52CA01CE08AF9778C5E9766FC010BBAFFF06FFFA9B38E
          7BAA770D8CA66A3365804D0D9B9F5998E3FF75C983990FD87233110E47303636
          86E191118C064620CBE6E8E5C9709BD7E50EC1DAF097E68FBAA61560D7AE5D2D
          553FAF5D6D5533CC521BA34AE7E9F1E0CA95CBF0F4F662707010BDFD1E844301
          D8B33257ECDBB7EFD36905D8BF7FBFBBBABA7A8D2A6B41B2757575E1D2A54BE8
          EFEF472F415CB87001131313C8CBCB5BBE77EFDECFA615A0B9B9D95D5555F525
          808B172F9A5D02F4F5F5E1DCB973884422282C2C5CBE67CF9EE905686C6C6CA9
          ADAD5DAD69DAADB93367CEA0A3A303030303E8E9E9415B5B1BBD0A388A8B8B2B
          08E09FD30AB065CB9677CBCBCBD7BB5CAE19656565E6DCD1A347D1D9D9099FCF
          674244A3D1495DD7AF592C96B594032753B19BD631DCB87163D5AA55AB0ECE9B
          370F814000A74F9F467777B719028FC783ACACACE36EB77B49CA06D305903950
          5757E726894D87E7CF9F3701E4BD0C415151D1F1C3870F7F7F009595954B172D
          5A748C4030343484AB57AF9AD92F4F834CC2DCDC5CF7C18307ABBF3700D96A6A
          6AD6CD9D3BF78F8B172FD664ECBD5EAFA9001DBF33B42CCFFF703AF6D20690ED
          C891232BE8543C4B4792929E2B64834A21DE686A6A4ACBB96C5F0097DE17FD39
          C9234A0000000049454E44AE426082}
        ShowHint = True
        OnClick = iueberClick
        ExplicitLeft = 1885
        ExplicitTop = -1
        ExplicitHeight = 39
      end
      object lkundennummer: TLabel
        Left = 138
        Top = 13
        Width = 95
        Height = 16
        Hint = 
          'mit einem Doppelklick auf dieses Element kann die Nummer abge'#228'nd' +
          'ert werden'
        Caption = 'Kundennummer:'
        Color = 14933977
        ParentColor = False
        ParentShowHint = False
        ShowHint = True
        Transparent = True
        OnDblClick = lkundennummerDblClick
      end
      object lsachbearbeiter: TLabel
        Left = 13
        Top = 13
        Width = 96
        Height = 16
        Hint = 
          'mit einem Doppelklick auf dieses Element kann die Nummer abge'#228'nd' +
          'ert werden'
        Caption = 'Sachbearbeiter: '
        Color = 14933977
        ParentColor = False
        ParentShowHint = False
        ShowHint = True
        Transparent = True
        OnDblClick = lkundennummerChange
      end
      object cbid: TCheckBox
        Left = 301
        Top = 12
        Width = 165
        Height = 17
        Caption = 'Ablagenummer anzeigen'
        TabOrder = 0
        OnClick = cbidClick
      end
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 80
    Top = 632
  end
  object Timer2: TTimer
    Interval = 20000
    OnTimer = Timer2Timer
    Left = 232
    Top = 672
  end
  object npc: TFNpipeClient
    PipeName = 'listpipe'
    PipeServer = '.'
    SendTimeout = 20000
    OnError = npcError
    Left = 48
    Top = 616
  end
  object Timer3: TTimer
    Interval = 60000
    OnTimer = Timer3Timer
    Left = 176
    Top = 648
  end
  object TrayIcon1: TTrayIcon
    OnDblClick = TrayIcon1DblClick
    Left = 128
    Top = 632
  end
  object ImageList1: TImageList
    Tag = 1
    BlendColor = clWhite
    BkColor = 16711384
    ShareImages = True
    Left = 728
    Top = 688
    Bitmap = {
      494C010106007400F80110001000D8FEFE00FF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      000000000000000000000000000000000000504E4EFF504E4EFF504E4EFF2928
      2883000000000000000000000000000000000000000000000000000000000000
      000029282883504E4EFF504E4EFF504E4EFFFEFED800FEFED800FEFED800FEFE
      D800FEFED800FEFED800FEFED800FEFED800FEFED800FEFED800FEFED800FEFE
      D800FEFED800FEFED800FEFED800FEFED8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000504E4EFF504E4EFF494747E80706
      0615000000000000000000000000000000000000000000000000000000000000
      000007070716494747E9504E4EFF504E4EFFFEFED800FEFED800FEFED800FEFE
      D800FEFED800FEFED800FEFED800FEFED800FEFED800FEFED800FEFED800FEFE
      D800FEFED800FEFED800FEFED800FEFED8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000504E4EFF494747E8504E4EFF4241
      41D3070707160000000000000000000000000000000000000000000000000707
      0717434141D4504E4EFF494747E8504E4EFFFEFED800FEFED800949799001414
      140068686800FEFED800FEFED800FEFED800FEFED800FEFED800FEFED800FEFE
      D800FEFED800FEFED800FEFED800FEFED8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002625257907060615424040D1504E
      4EFF434141D40707071700000000000000000000000000000000070707174341
      41D5504E4EFF424040D1060606142625257AFEFED80024242400BFC2C4001313
      130013131300181818001D1D1D0042424200FEFED800FEFED800FEFED800FEFE
      D800FEFED800FEFED800FEFED800FEFED8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000060606144140
      40D0504E4EFF3B3A3ABD000000000000000000000000000000003C3A3ABE504E
      4EFF413F3FCF060606140000000000000000FEFED8002A2B2B00C9CCCF001A1A
      1A001F1F1F0020202000232323002A2A2A002F2F2F003131310033333300FEFE
      D800FEFED800FEFED800FEFED800FEFED8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000606
      0613393737B50D0C0C28000000000000000000000000000000000D0C0C283937
      37B506060613000000000000000000000000FEFED8002B2C2C00D3D6D9001313
      14001A1A1A001E1E1E002C2C2C00404040003D3D3D003B3B3B00383838003636
      3600313131002626260082828200FEFED8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFED8002D2D2E00DCDFE2001717
      170020202000272727002D2D2D003333330033333300353535004D4D4D004646
      46003B3B3B003333330027272700FEFED8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFED8002E2E2E00E3E6E9001B1B
      1B00292929002F2F2F00373737004141410042424300404040003C3C3C003939
      3900313131003838380037373700FEFED8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFED8002E2F3000E8EBEF001D1D
      1D00333333003C3C3C00444444004D4D4E00494961004C4D5900363A63004444
      44003A3A3A003030300028282800FEFED8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFED8002F303000E8ECF0002121
      21003D3D3D00414141004F4F4F0059595A004D4D820001089D00081092004F4F
      4F0042424200383838002B2B2B00FEFED8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000808
      08193D3C3CC40E0E0E2D000000000000000000000000000000000E0E0E2D3D3C
      3CC408070718000000000000000000000000FEFED80030313100F3F4F6005B5C
      5C003A3A3A004A4A4A005A5A5A0066666700585790000000BD000911A5005757
      5700494949003E3E3E0030303000FEFED8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000070707174341
      41D6504E4EFF3C3A3ABE000000000000000000000000000000003C3A3ABF504E
      4EFF434141D6070707170000000000000000FEFED8001A1A1A00D5D8DA00E0E4
      E700DDE0E300CBCED1006A6A6C0051515200616195000000C9000A11BF005F5F
      5F004D4D4D004040400033333300FEFED8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002928288307070716434141D4504E
      4EFF434141D40707071700000000000000000000000000000000070707174341
      41D5504E4EFF434141D40707071629282884FEFED800262626003C3C3C003838
      3800353535007A7B7C00D2D4D700D8DADD00D2D4D8007D7FAF004A527C004949
      49004C4C4C003E3E3E0031313100FEFED8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000504E4EFF494747E9504E4EFF4241
      41D3070707160000000000000000000000000000000000000000000000000707
      0717434141D4504E4EFF494747E9504E4EFFFEFED8008C8C8C003D3D3D005A5A
      5A00646464006B6B6B00737373005454540049494900898A8B00CCCED100CDD0
      D300CBCDD0008A8C8E00FEFED800FEFED8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000504E4EFF504E4EFF494747E90706
      0615000000000000000000000000000000000000000000000000000000000000
      000007070716494747E9504E4EFF504E4EFFFEFED800FEFED800FEFED800FEFE
      D800FEFED800FEFED800FEFED800FEFED800FEFED800FEFED800FEFED8002727
      27004D4D4D00FEFED800FEFED800FEFED8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000504E4EFF504E4EFF504E4EFF2A29
      2985000000000000000000000000000000000000000000000000000000000000
      00002A292986504E4EFF504E4EFF504E4EFFFEFED800FEFED800FEFED800FEFE
      D800FEFED800FEFED800FEFED800FEFED800FEFED800FEFED800FEFED800FEFE
      D800FEFED800FEFED800FEFED800FEFED8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FCFCFC03FAFAFA05FCFCFC03FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01F4F4F4117E7E7EBF505050FF505050FF9393939FFFFFFF01BEBEBE5FB1B1
      B171F4F4F40FFFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01424241CD9B9B99B1F8F8F807FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01B4B4B471606060FF929292FF939393FF505050FF6F6F6FD3505050FF5454
      54FF565656F3DEDEDE2FFFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FBFEFC05FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01B4B4B4FFB4B4B4FFB4B4B4FFB4B4
      B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4
      B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFFFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01414141CF7B7A7AFFFFFFFFDDFCFCFC19F4F4F411888888BF5C5C5CFF5D5D
      5DFF797979CF898989FFAFAFAFFFAAAAAAFF6C6C6CFF4D4D4DFF999999FF9090
      90FF636363FF838383B1FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01478749BF4A984ECDFBFFFB09FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01B4B4B4FFFBF9F9FFFBF9F9FFFBF9
      F9FFFBF9F9FFFBF9F9FFFBF9F9FFFBF9F9FFFBF9F9FFFBF9F9FFFBF9F9FFFBF9
      F9FFFBF9F9FFFBF9F9FFFBF9F9FFB4B4B4FFFFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF014343
      41D16F6F6DFFF3F2F0E7FDFDFD09FFFFFF019F9F9F9F808080FFC5C5C5FFACAC
      ACFF575757FF777777FFB1B1B1FFAFAFAFFF717171FF828282FF9D9D9DFF9F9F
      9FFF7A7A7AFF787878C3FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01468449BB52CC5AF977EE81FF3D863FDDF9FEFA09FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01B4B4B4FFFBF9F9FF2A4340FF4268
      63FF789A9AFF709296FF547E78FF517164FF415751FF485851FF8AA79FFF6A8F
      83FF35554EFF42534FFFFBF9F9FFB4B4B4FFFFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01444444C75F5D
      5DFFE1DFDEEDFEFEFE0BFFFFFF01FFFFFF018D8D8DBFB5B5B5FFC8C8C8FFC2C2
      C2FFB0B0B0FF515151FFB9B9B9FFBABABAFF4E4E4EFFBBBBBBFFA4A4A4FF9F9F
      9FFF525252FF9595959BF6F6F60DFFFFFF01FFFFFF01FFFFFF01FFFFFF014280
      44BD3AC044F960FE6FFF69FF78FF58F065FF318435DDF8FDF809FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01B4B4B4FFFBF9F9FF846056FF553F
      38FF281B1FFF321C12FF51373FFF737685FF50474DFF362231FF2C2334FF6750
      74FF3F313AFF5D4D62FFFBF9F9FFB4B4B4FFFFFFFF01FFFFFF01FFFFFF01FFFF
      FF01F6F6F609DEDEDE21F0F0F00FFCFCFC03FFFFFF01474747BB504F4DFFDCDA
      D9DFFFFFFF1FFFFFFF01FFFFFF01FFFFFF01ACACAC8F8D8D8DFFCECECEFFC6C6
      C6FFC4C4C4FF898989FF7A7A7AFF949494FF696969FFCDCDCDFFABABABFF5555
      55FF646464FF585858FF717171CFFFFFFF01FFFFFF01FFFFFF01447D45BB29B2
      34F94FE95EFF78EF84FF79F284FF58F567FF4AE756FF2D7F2FDDF6FCF709FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01B4B4B4FFFBF9F9FFFFEFC3FFFFF1
      BEFF9392A6FF606580FF56504EFF2B3840FF000000FF211702FF6F675EFF534E
      73FF585989FF40456BFFFBF9F9FFB4B4B4FFFFFFFF01FFFFFF01DEDEDE217B7A
      7AB98C8079FDA28880FF97857DFF999595CB505050AF5B5B5AFFE7E5E4BFFEFE
      FE11FFFFFF01FFFFFF01FFFFFF01FFFFFF01DBDBDB3F696969FF6D6D6DFF9B9B
      9BFFC6C6C6FFC6C6C6FF595959FF878787FF4B4B4BFF8E8E8EFF4E4E4EFF8E8E
      8EFFA6A6A6FF8E8E8EFF515151FFFFFFFF01FFFFFF01477C47BD29A334F953D7
      5FFF88E491FF8EE596FF9FEAA5FF71E77CFF4AE759FF3FD64CFF28762BDDF6FB
      F609FFFFFF01FFFFFF01FFFFFF01FFFFFF01B4B4B4FFFBF9F9FFFEC593FFFFD7
      9DFFFFE0A3FF707195FF7487BBFF886563FFFFD995FFFFF6BCFFFFFBB9FFFFD6
      99FFB69A76FF4C443AFFFBF9F9FFB4B4B4FFFFFFFF01E6E6E619A39996E1FFFD
      EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4DFFF958C88FFACADAD81FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01797979F1A5A5A5FFBEBEBEFF9F9F
      9FFF6E6E6EFF606060FFF7F7F7FFF2F2F2FFB1B1B1FF464646FFC0C0C0FFB2B2
      B2FFA9A9A9FF9A9A9AFF585858FFFFFFFF015D8F5EA55DB466FF6FD179FF9DDF
      A3FF98DF9FFF2B8730F5388B3CE399E5A0FF69DB74FF39D849FF31C23DFF246D
      27DDF6F9F609FFFFFF01FFFFFF01FFFFFF01B4B4B4FFFBF9F9FFF8BA84FFF8BB
      87FFFFCA87FFF6C091FF47537DFFE0A071FFFFE3A2FFFFC28DFFFDBE8CFFFFCD
      95FFFFE09FFFFFDE98FFFBF9F9FFB4B4B4FFFCFCFC037E7D7D9DFFF9E7F5FFFF
      FFF1FFFFEBDFFFFFFDCDFFFFFFF3FFFFFFEFFFE2C8E5958F8DCBFCFCFC03FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01919191FFE7E7E7FFDADADAFFDCDC
      DCFFD2D2D2FF696969FFF0F0F0FFFCFCFCFFCDCDCDFF4A4A4AFF8D8D8DFF8686
      86FF898989FF636363FF8A8A8AB5FFFFFF01E8F3E917519655EDB5DDBAFFA9DA
      AEFF35923BF7C3EAC73DF8FCF807409B46D1A5E2AAFF60D06AFF28C937FF22B0
      2FFF246326DDF6F8F609FFFFFF01FFFFFF01B4B4B4FFFBF9F9FFF0AC73FFF0B2
      79FFF0B078FFFFBA79FFFFBD7BFFFFBD81FFF1AF78FFF2B37DFFEFB47EFFF2B4
      7EFFF3B47FFFF6B27AFFFBF9F9FFB4B4B4FFF4F4F40BA09490C9FFFFFFE3FFFF
      FCC1FFFFEEADFFFFFF9DFFFFFDE1FFFFFF63FFFFFFCDA79790D9E9E9E91BFFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01868686F1E7E7E7FFE4E4E4FFAAAA
      AAFF676767FFCDCDCDFF959595FFBABABAFF7F7F7FFFC1C1C1FF9E9E9EFF6868
      68FF585858FF848484BFFFFFFF01FFFFFF01FFFFFF01EAF6EA15429647ED4394
      48F9BEE6C041FFFFFF01FFFFFF01F2FAF30D3B9642D1B3E3B7FF55C460FF15B7
      25FF13A320FF256328DBF6F8F609FFFFFF01B4B4B4FFFBF9F9FFE79E67FFEAA4
      6BFFEAA46DFFE9A36CFFF0A86EFFEAA46DFFEAA46FFFEAA66DFFECA971FFECA7
      72FFEDAB71FFECA56BFFFBF9F9FFB4B4B4FFDEDEDE21AEA09CB3FFFFFFC5FFFF
      FF9DFFFFFF9DFFFFFBA7FFFFFF9DFFFFFF9DFFFFFFB7A4958FB5DDDCDC2BFFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01CDCDCD5F797979F5696969FF7A7A
      7AFFD9D9D9FFDCDCDCFF8C8C8CFFBCBCBCFF717171FFB5B5B5FFCECECEFFBDBD
      BDFFA7A7A7FF656565FFABABAB85FFFFFF01FFFFFF01FFFFFF01ECF8ED13CBEC
      CE35FFFFFF01FFFFFF01FFFFFF01FFFFFF01F4FAF40B398F3ED1B4DCB7FF51B2
      5AFF069E14FF0B9517FF2F6931DDEEF2EE11B4B4B4FFFBF9F9FFDD925DFFE097
      64FFE19762FFDF9764FFDF9763FFDF9765FFDF9966FFE09865FFE19967FFE29A
      66FFE49D68FFE09562FFFBF9F9FFB4B4B4FFF4F4F40B8E8785A7FFFFFFC9FFFF
      FF8FFFFFFD91FFFFFF9DFFFFFFC5FFFFFFB5FFFFFF978F847FB1EEEEEE15FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01E8E8E82B838383FFE8E8
      E8FFDFDFDFFFDBDBDBFF6D6D6DFFE4E4E4FFC8C8C8FF727272FFD0D0D0FFC1C1
      C1FFBEBEBEFF888888FF818181CDFFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01F4FAF40B3B8F40D1B6D7
      B9FF529F5AFF3A9941FF499351FF4C7C4CB3B4B4B4FFFBF9F9FFFBF9F9FFFBF9
      F9FFFBF9F9FFFBF9F9FFFBF9F9FFFBF9F9FFFBF9F9FFFBF9F9FFFBF9F9FFFBF9
      F9FFFBF9F9FFFBF9F9FFFBF9F9FFB4B4B4FFFCFCFC039B9B9B7FF0E9E79FFFFF
      FFD1FFFFFF8FFFFFFF9DFFFFFFA7FFFFFF99FFFFFFB1838080B9FCFCFC03FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01BCBCBC81AEAEAEFFF0F0
      F0FFE1E1E1FFC5C5C5FF8D8D8DFFDFDFDFFFD5D5D5FF858585FF8F8F8FFFCACA
      CAFFBFBFBFFF797979FF9C9C9CA5FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01F4FAF40B3B90
      40D1BAD7BDFF569E5DFF4A804BB5FFFFFF01B4B4B4FFB4B4B4FFB4B4B4FFB4B4
      B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4
      B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFFFFFFF01F6F6F60D8F8D8F97FFFF
      FFEBFFFFFFEDFFFFFF9DFFFFFFB5FFFFFFB3847F7F9FDCDCDC35FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01EEEEEE21828282FFDADA
      DAFFDEDEDEFF7D7D7DFFABABABFFDFDFDFFFD9D9D9FFA4A4A4FF6B6B6BFF7C7C
      7CFF7B7B7BFF7F7F7FDBF6F6F60FFFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01F4FA
      F40B409045CD528A54B7FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01F0EFEF19A9A8
      A88384838387918F8E878F8D8D878B8B8C99DDDCDB39FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01D5D5D5518B8B
      8BE37B7B7BFFA1A1A1AF8C8C8CFFE9E9E9FFE5E5E5FF979797FFB1B1B18DEEEE
      EE1DD9D9D941FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FAFCFA05FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FDFD
      FD03F4F4F40FE2E2E225F0F0F013FAFAFA07FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01ACACAC9F858585FF848484FF8D8D8DD3F6F6F60FFFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF000000FFFF000000000000FFFF00000000
      0000C7FF00000000000080FF000000000000801F000000000000800100000000
      0000800100000000000080010000000000008001000000000000800100000000
      0000800100000000000080010000000000008001000000000000800300000000
      0000FFE7000000000000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object Timer4: TTimer
    Enabled = False
    OnTimer = Timer4Timer
    Left = 248
    Top = 632
  end
end
