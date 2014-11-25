inherited frameauftrag: Tframeauftrag
  Width = 951
  Height = 588
  inherited gridpanel: TGridPanel
    Width = 951
    Height = 588
    inherited Panel5: TPanel
      Width = 469
      Height = 580
      ExplicitWidth = 219
      ExplicitHeight = 296
      inherited Label29: TLabel
        Top = 343
        ExplicitTop = 343
      end
      object Label1: TLabel [7]
        Left = 13
        Top = 251
        Width = 58
        Height = 13
        Margins.Left = 14
        Caption = 'Auftragstyp'
      end
      inherited menotizen: TfMemo
        Top = 343
        ExplicitTop = 343
      end
      inherited bsave: TNxButton
        Top = 516
        ExplicitTop = 516
      end
      object cbselectauftrag: TNxComboBox [15]
        Left = 264
        Top = 251
        Width = 121
        Height = 21
        TabOrder = 3
        HideFocus = False
        AutoCompleteDelay = 0
      end
      object NxButton1: TNxButton [16]
        Left = 264
        Top = 297
        Width = 121
        Caption = 'Auftragstypen anlegen'
        TabOrder = 6
      end
      inherited eposteingang: TfEdit
        TabOrder = 11
      end
      inherited eabrechnungsende: TfEdit
        TabOrder = 10
      end
      inherited UpDown1: TUpDown
        Top = 229
        TabOrder = 12
        ExplicitTop = 229
      end
    end
    inherited rightparent: TPanel
      Left = 479
      Width = 470
      Height = 580
    end
  end
end
