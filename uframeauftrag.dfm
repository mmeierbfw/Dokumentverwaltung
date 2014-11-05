inherited frameauftrag: Tframeauftrag
  Width = 981
  Height = 651
  inherited gridpanel: TGridPanel
    Width = 981
    Height = 651
    inherited Panel5: TPanel
      Width = 484
      Height = 643
      ExplicitWidth = 484
      ExplicitHeight = 643
      inherited lfiletype: TLabel
        Height = 622
      end
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
      inherited dtabrechnungsende: tfmaskedit
        TabOrder = 9
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
        TabOrder = 8
      end
      inherited eabrechnungsende: TfEdit
        TabOrder = 10
      end
    end
    inherited rightparent: TPanel
      Left = 494
      Width = 485
      Height = 643
    end
  end
end
